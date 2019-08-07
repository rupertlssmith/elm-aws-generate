module AWS.Rekognition
    exposing
        ( service
        , compareFaces
        , CompareFacesOptions
        , createCollection
        , createStreamProcessor
        , deleteCollection
        , deleteFaces
        , deleteStreamProcessor
        , describeCollection
        , describeStreamProcessor
        , detectFaces
        , DetectFacesOptions
        , detectLabels
        , DetectLabelsOptions
        , detectModerationLabels
        , DetectModerationLabelsOptions
        , detectText
        , getCelebrityInfo
        , getCelebrityRecognition
        , GetCelebrityRecognitionOptions
        , getContentModeration
        , GetContentModerationOptions
        , getFaceDetection
        , GetFaceDetectionOptions
        , getFaceSearch
        , GetFaceSearchOptions
        , getLabelDetection
        , GetLabelDetectionOptions
        , getPersonTracking
        , GetPersonTrackingOptions
        , indexFaces
        , IndexFacesOptions
        , listCollections
        , ListCollectionsOptions
        , listFaces
        , ListFacesOptions
        , listStreamProcessors
        , ListStreamProcessorsOptions
        , recognizeCelebrities
        , searchFaces
        , SearchFacesOptions
        , searchFacesByImage
        , SearchFacesByImageOptions
        , startCelebrityRecognition
        , StartCelebrityRecognitionOptions
        , startContentModeration
        , StartContentModerationOptions
        , startFaceDetection
        , StartFaceDetectionOptions
        , startFaceSearch
        , StartFaceSearchOptions
        , startLabelDetection
        , StartLabelDetectionOptions
        , startPersonTracking
        , StartPersonTrackingOptions
        , startStreamProcessor
        , stopStreamProcessor
        , AgeRange
        , Attribute(..)
        , Beard
        , BoundingBox
        , Celebrity
        , CelebrityDetail
        , CelebrityRecognition
        , CelebrityRecognitionSortBy(..)
        , CompareFacesMatch
        , CompareFacesResponse
        , ComparedFace
        , ComparedSourceImageFace
        , ContentModerationDetection
        , ContentModerationSortBy(..)
        , CreateCollectionResponse
        , CreateStreamProcessorResponse
        , DeleteCollectionResponse
        , DeleteFacesResponse
        , DeleteStreamProcessorResponse
        , DescribeCollectionResponse
        , DescribeStreamProcessorResponse
        , DetectFacesResponse
        , DetectLabelsResponse
        , DetectModerationLabelsResponse
        , DetectTextResponse
        , Emotion
        , EmotionName(..)
        , EyeOpen
        , Eyeglasses
        , Face
        , FaceAttributes(..)
        , FaceDetail
        , FaceDetection
        , FaceMatch
        , FaceRecord
        , FaceSearchSettings
        , FaceSearchSortBy(..)
        , Gender
        , GenderType(..)
        , Geometry
        , GetCelebrityInfoResponse
        , GetCelebrityRecognitionResponse
        , GetContentModerationResponse
        , GetFaceDetectionResponse
        , GetFaceSearchResponse
        , GetLabelDetectionResponse
        , GetPersonTrackingResponse
        , Image
        , ImageQuality
        , IndexFacesResponse
        , Instance
        , KinesisDataStream
        , KinesisVideoStream
        , Label
        , LabelDetection
        , LabelDetectionSortBy(..)
        , Landmark
        , LandmarkType(..)
        , ListCollectionsResponse
        , ListFacesResponse
        , ListStreamProcessorsResponse
        , ModerationLabel
        , MouthOpen
        , Mustache
        , NotificationChannel
        , OrientationCorrection(..)
        , Parent
        , PersonDetail
        , PersonDetection
        , PersonMatch
        , PersonTrackingSortBy(..)
        , Point
        , Pose
        , QualityFilter(..)
        , Reason(..)
        , RecognizeCelebritiesResponse
        , S3Object
        , SearchFacesByImageResponse
        , SearchFacesResponse
        , Smile
        , StartCelebrityRecognitionResponse
        , StartContentModerationResponse
        , StartFaceDetectionResponse
        , StartFaceSearchResponse
        , StartLabelDetectionResponse
        , StartPersonTrackingResponse
        , StartStreamProcessorResponse
        , StopStreamProcessorResponse
        , StreamProcessor
        , StreamProcessorInput
        , StreamProcessorOutput
        , StreamProcessorSettings
        , StreamProcessorStatus(..)
        , Sunglasses
        , TextDetection
        , TextTypes(..)
        , UnindexedFace
        , Video
        , VideoJobStatus(..)
        , VideoMetadata
        )

{-| <p>This is the Amazon Rekognition API reference.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [compareFaces](#compareFaces)
* [CompareFacesOptions](#CompareFacesOptions)
* [createCollection](#createCollection)
* [createStreamProcessor](#createStreamProcessor)
* [deleteCollection](#deleteCollection)
* [deleteFaces](#deleteFaces)
* [deleteStreamProcessor](#deleteStreamProcessor)
* [describeCollection](#describeCollection)
* [describeStreamProcessor](#describeStreamProcessor)
* [detectFaces](#detectFaces)
* [DetectFacesOptions](#DetectFacesOptions)
* [detectLabels](#detectLabels)
* [DetectLabelsOptions](#DetectLabelsOptions)
* [detectModerationLabels](#detectModerationLabels)
* [DetectModerationLabelsOptions](#DetectModerationLabelsOptions)
* [detectText](#detectText)
* [getCelebrityInfo](#getCelebrityInfo)
* [getCelebrityRecognition](#getCelebrityRecognition)
* [GetCelebrityRecognitionOptions](#GetCelebrityRecognitionOptions)
* [getContentModeration](#getContentModeration)
* [GetContentModerationOptions](#GetContentModerationOptions)
* [getFaceDetection](#getFaceDetection)
* [GetFaceDetectionOptions](#GetFaceDetectionOptions)
* [getFaceSearch](#getFaceSearch)
* [GetFaceSearchOptions](#GetFaceSearchOptions)
* [getLabelDetection](#getLabelDetection)
* [GetLabelDetectionOptions](#GetLabelDetectionOptions)
* [getPersonTracking](#getPersonTracking)
* [GetPersonTrackingOptions](#GetPersonTrackingOptions)
* [indexFaces](#indexFaces)
* [IndexFacesOptions](#IndexFacesOptions)
* [listCollections](#listCollections)
* [ListCollectionsOptions](#ListCollectionsOptions)
* [listFaces](#listFaces)
* [ListFacesOptions](#ListFacesOptions)
* [listStreamProcessors](#listStreamProcessors)
* [ListStreamProcessorsOptions](#ListStreamProcessorsOptions)
* [recognizeCelebrities](#recognizeCelebrities)
* [searchFaces](#searchFaces)
* [SearchFacesOptions](#SearchFacesOptions)
* [searchFacesByImage](#searchFacesByImage)
* [SearchFacesByImageOptions](#SearchFacesByImageOptions)
* [startCelebrityRecognition](#startCelebrityRecognition)
* [StartCelebrityRecognitionOptions](#StartCelebrityRecognitionOptions)
* [startContentModeration](#startContentModeration)
* [StartContentModerationOptions](#StartContentModerationOptions)
* [startFaceDetection](#startFaceDetection)
* [StartFaceDetectionOptions](#StartFaceDetectionOptions)
* [startFaceSearch](#startFaceSearch)
* [StartFaceSearchOptions](#StartFaceSearchOptions)
* [startLabelDetection](#startLabelDetection)
* [StartLabelDetectionOptions](#StartLabelDetectionOptions)
* [startPersonTracking](#startPersonTracking)
* [StartPersonTrackingOptions](#StartPersonTrackingOptions)
* [startStreamProcessor](#startStreamProcessor)
* [stopStreamProcessor](#stopStreamProcessor)


@docs compareFaces,CompareFacesOptions,createCollection,createStreamProcessor,deleteCollection,deleteFaces,deleteStreamProcessor,describeCollection,describeStreamProcessor,detectFaces,DetectFacesOptions,detectLabels,DetectLabelsOptions,detectModerationLabels,DetectModerationLabelsOptions,detectText,getCelebrityInfo,getCelebrityRecognition,GetCelebrityRecognitionOptions,getContentModeration,GetContentModerationOptions,getFaceDetection,GetFaceDetectionOptions,getFaceSearch,GetFaceSearchOptions,getLabelDetection,GetLabelDetectionOptions,getPersonTracking,GetPersonTrackingOptions,indexFaces,IndexFacesOptions,listCollections,ListCollectionsOptions,listFaces,ListFacesOptions,listStreamProcessors,ListStreamProcessorsOptions,recognizeCelebrities,searchFaces,SearchFacesOptions,searchFacesByImage,SearchFacesByImageOptions,startCelebrityRecognition,StartCelebrityRecognitionOptions,startContentModeration,StartContentModerationOptions,startFaceDetection,StartFaceDetectionOptions,startFaceSearch,StartFaceSearchOptions,startLabelDetection,StartLabelDetectionOptions,startPersonTracking,StartPersonTrackingOptions,startStreamProcessor,stopStreamProcessor

## Responses

* [CompareFacesResponse](#CompareFacesResponse)
* [CreateCollectionResponse](#CreateCollectionResponse)
* [CreateStreamProcessorResponse](#CreateStreamProcessorResponse)
* [DeleteCollectionResponse](#DeleteCollectionResponse)
* [DeleteFacesResponse](#DeleteFacesResponse)
* [DeleteStreamProcessorResponse](#DeleteStreamProcessorResponse)
* [DescribeCollectionResponse](#DescribeCollectionResponse)
* [DescribeStreamProcessorResponse](#DescribeStreamProcessorResponse)
* [DetectFacesResponse](#DetectFacesResponse)
* [DetectLabelsResponse](#DetectLabelsResponse)
* [DetectModerationLabelsResponse](#DetectModerationLabelsResponse)
* [DetectTextResponse](#DetectTextResponse)
* [GetCelebrityInfoResponse](#GetCelebrityInfoResponse)
* [GetCelebrityRecognitionResponse](#GetCelebrityRecognitionResponse)
* [GetContentModerationResponse](#GetContentModerationResponse)
* [GetFaceDetectionResponse](#GetFaceDetectionResponse)
* [GetFaceSearchResponse](#GetFaceSearchResponse)
* [GetLabelDetectionResponse](#GetLabelDetectionResponse)
* [GetPersonTrackingResponse](#GetPersonTrackingResponse)
* [IndexFacesResponse](#IndexFacesResponse)
* [ListCollectionsResponse](#ListCollectionsResponse)
* [ListFacesResponse](#ListFacesResponse)
* [ListStreamProcessorsResponse](#ListStreamProcessorsResponse)
* [RecognizeCelebritiesResponse](#RecognizeCelebritiesResponse)
* [SearchFacesByImageResponse](#SearchFacesByImageResponse)
* [SearchFacesResponse](#SearchFacesResponse)
* [StartCelebrityRecognitionResponse](#StartCelebrityRecognitionResponse)
* [StartContentModerationResponse](#StartContentModerationResponse)
* [StartFaceDetectionResponse](#StartFaceDetectionResponse)
* [StartFaceSearchResponse](#StartFaceSearchResponse)
* [StartLabelDetectionResponse](#StartLabelDetectionResponse)
* [StartPersonTrackingResponse](#StartPersonTrackingResponse)
* [StartStreamProcessorResponse](#StartStreamProcessorResponse)
* [StopStreamProcessorResponse](#StopStreamProcessorResponse)


@docs CompareFacesResponse,CreateCollectionResponse,CreateStreamProcessorResponse,DeleteCollectionResponse,DeleteFacesResponse,DeleteStreamProcessorResponse,DescribeCollectionResponse,DescribeStreamProcessorResponse,DetectFacesResponse,DetectLabelsResponse,DetectModerationLabelsResponse,DetectTextResponse,GetCelebrityInfoResponse,GetCelebrityRecognitionResponse,GetContentModerationResponse,GetFaceDetectionResponse,GetFaceSearchResponse,GetLabelDetectionResponse,GetPersonTrackingResponse,IndexFacesResponse,ListCollectionsResponse,ListFacesResponse,ListStreamProcessorsResponse,RecognizeCelebritiesResponse,SearchFacesByImageResponse,SearchFacesResponse,StartCelebrityRecognitionResponse,StartContentModerationResponse,StartFaceDetectionResponse,StartFaceSearchResponse,StartLabelDetectionResponse,StartPersonTrackingResponse,StartStreamProcessorResponse,StopStreamProcessorResponse

## Records

* [AgeRange](#AgeRange)
* [Beard](#Beard)
* [BoundingBox](#BoundingBox)
* [Celebrity](#Celebrity)
* [CelebrityDetail](#CelebrityDetail)
* [CelebrityRecognition](#CelebrityRecognition)
* [CompareFacesMatch](#CompareFacesMatch)
* [ComparedFace](#ComparedFace)
* [ComparedSourceImageFace](#ComparedSourceImageFace)
* [ContentModerationDetection](#ContentModerationDetection)
* [Emotion](#Emotion)
* [EyeOpen](#EyeOpen)
* [Eyeglasses](#Eyeglasses)
* [Face](#Face)
* [FaceDetail](#FaceDetail)
* [FaceDetection](#FaceDetection)
* [FaceMatch](#FaceMatch)
* [FaceRecord](#FaceRecord)
* [FaceSearchSettings](#FaceSearchSettings)
* [Gender](#Gender)
* [Geometry](#Geometry)
* [Image](#Image)
* [ImageQuality](#ImageQuality)
* [Instance](#Instance)
* [KinesisDataStream](#KinesisDataStream)
* [KinesisVideoStream](#KinesisVideoStream)
* [Label](#Label)
* [LabelDetection](#LabelDetection)
* [Landmark](#Landmark)
* [ModerationLabel](#ModerationLabel)
* [MouthOpen](#MouthOpen)
* [Mustache](#Mustache)
* [NotificationChannel](#NotificationChannel)
* [Parent](#Parent)
* [PersonDetail](#PersonDetail)
* [PersonDetection](#PersonDetection)
* [PersonMatch](#PersonMatch)
* [Point](#Point)
* [Pose](#Pose)
* [S3Object](#S3Object)
* [Smile](#Smile)
* [StreamProcessor](#StreamProcessor)
* [StreamProcessorInput](#StreamProcessorInput)
* [StreamProcessorOutput](#StreamProcessorOutput)
* [StreamProcessorSettings](#StreamProcessorSettings)
* [Sunglasses](#Sunglasses)
* [TextDetection](#TextDetection)
* [UnindexedFace](#UnindexedFace)
* [Video](#Video)
* [VideoMetadata](#VideoMetadata)


@docs AgeRange,Beard,BoundingBox,Celebrity,CelebrityDetail,CelebrityRecognition,CompareFacesMatch,ComparedFace,ComparedSourceImageFace,ContentModerationDetection,Emotion,EyeOpen,Eyeglasses,Face,FaceDetail,FaceDetection,FaceMatch,FaceRecord,FaceSearchSettings,Gender,Geometry,Image,ImageQuality,Instance,KinesisDataStream,KinesisVideoStream,Label,LabelDetection,Landmark,ModerationLabel,MouthOpen,Mustache,NotificationChannel,Parent,PersonDetail,PersonDetection,PersonMatch,Point,Pose,S3Object,Smile,StreamProcessor,StreamProcessorInput,StreamProcessorOutput,StreamProcessorSettings,Sunglasses,TextDetection,UnindexedFace,Video,VideoMetadata

## Unions

* [Attribute](#Attribute)
* [CelebrityRecognitionSortBy](#CelebrityRecognitionSortBy)
* [ContentModerationSortBy](#ContentModerationSortBy)
* [EmotionName](#EmotionName)
* [FaceAttributes](#FaceAttributes)
* [FaceSearchSortBy](#FaceSearchSortBy)
* [GenderType](#GenderType)
* [LabelDetectionSortBy](#LabelDetectionSortBy)
* [LandmarkType](#LandmarkType)
* [OrientationCorrection](#OrientationCorrection)
* [PersonTrackingSortBy](#PersonTrackingSortBy)
* [QualityFilter](#QualityFilter)
* [Reason](#Reason)
* [StreamProcessorStatus](#StreamProcessorStatus)
* [TextTypes](#TextTypes)
* [VideoJobStatus](#VideoJobStatus)


@docs Attribute,CelebrityRecognitionSortBy,ContentModerationSortBy,EmotionName,FaceAttributes,FaceSearchSortBy,GenderType,LabelDetectionSortBy,LandmarkType,OrientationCorrection,PersonTrackingSortBy,QualityFilter,Reason,StreamProcessorStatus,TextTypes,VideoJobStatus

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
        "rekognition"
        "2016-06-27"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "RekognitionService")



-- OPERATIONS

{-| <p>Compares a face in the <i>source</i> input image with each of the 100 largest faces detected in the <i>target</i> input image. </p> <note> <p> If the source image contains multiple faces, the service detects the largest face and compares it with each face detected in the target image. </p> </note> <p>You pass the input and target images either as base64-encoded image bytes or as references to images in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, passing image bytes isn't supported. The image must be formatted as a PNG or JPEG file. </p> <p>In response, the operation returns an array of face matches ordered by similarity score in descending order. For each face match, the response provides a bounding box of the face, facial landmarks, pose details (pitch, role, and yaw), quality (brightness and sharpness), and confidence value (indicating the level of confidence that the bounding box contains a face). The response also provides a similarity score, which indicates how closely the faces match. </p> <note> <p>By default, only faces with a similarity score of greater than or equal to 80% are returned in the response. You can change this value by specifying the <code>SimilarityThreshold</code> parameter.</p> </note> <p> <code>CompareFaces</code> also returns an array of faces that don't match the source image. For each face, it returns a bounding box, confidence value, landmarks, pose details, and quality. The response also returns information about the face in the source image, including the bounding box of the face and confidence value.</p> <p>If the image doesn't contain Exif metadata, <code>CompareFaces</code> returns orientation information for the source and target images. Use these values to display the images with the correct image orientation.</p> <p>If no faces are detected in the source or target images, <code>CompareFaces</code> returns an <code>InvalidParameterException</code> error. </p> <note> <p> This is a stateless API operation. That is, data returned by this operation doesn't persist.</p> </note> <p>For an example, see Comparing Faces in Images in the Amazon Rekognition Developer Guide.</p> <p>This operation requires permissions to perform the <code>rekognition:CompareFaces</code> action.</p>

__Required Parameters__

* `sourceImage` __:__ `Image`
* `targetImage` __:__ `Image`


-}

compareFaces :
  
    Image ->
  
    Image ->
  
  
    ( CompareFacesOptions -> CompareFacesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CompareFacesResponse)

compareFaces sourceImage targetImage setOptions =
    
    let
        requestInput = CompareFacesRequest
            
            sourceImage
            
            targetImage
            
            options.similarityThreshold
            
        
        options = setOptions (CompareFacesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> compareFacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CompareFaces"
                
                (AWS.Core.Decode.ResultDecoder "CompareFacesResponse" compareFacesResponseDecoder)
                
            )



{-| Options for a compareFaces request
-}
type alias CompareFacesOptions =
    {
    similarityThreshold : Maybe Float
    }



{-| <p>Creates a collection in an AWS Region. You can add faces to the collection using the <a>IndexFaces</a> operation. </p> <p>For example, you might create collections, one for each of your application users. A user can then index faces using the <code>IndexFaces</code> operation and persist results in a specific collection. Then, a user can search the collection for faces in the user-specific container. </p> <p>When you create a collection, it is associated with the latest version of the face model version.</p> <note> <p>Collection names are case-sensitive.</p> </note> <p>This operation requires permissions to perform the <code>rekognition:CreateCollection</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`


-}

createCollection :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateCollectionResponse)

createCollection collectionId =
    
    let
        requestInput = CreateCollectionRequest
            
            collectionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createCollectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateCollection"
                
                (AWS.Core.Decode.ResultDecoder "CreateCollectionResponse" createCollectionResponseDecoder)
                
            )





{-| <p>Creates an Amazon Rekognition stream processor that you can use to detect and recognize faces in a streaming video.</p> <p>Amazon Rekognition Video is a consumer of live video from Amazon Kinesis Video Streams. Amazon Rekognition Video sends analysis results to Amazon Kinesis Data Streams.</p> <p>You provide as input a Kinesis video stream (<code>Input</code>) and a Kinesis data stream (<code>Output</code>) stream. You also specify the face recognition criteria in <code>Settings</code>. For example, the collection containing faces that you want to recognize. Use <code>Name</code> to assign an identifier for the stream processor. You use <code>Name</code> to manage the stream processor. For example, you can start processing the source video by calling <a>StartStreamProcessor</a> with the <code>Name</code> field. </p> <p>After you have finished analyzing a streaming video, use <a>StopStreamProcessor</a> to stop processing. You can delete the stream processor by calling <a>DeleteStreamProcessor</a>.</p>

__Required Parameters__

* `input` __:__ `StreamProcessorInput`
* `output` __:__ `StreamProcessorOutput`
* `name` __:__ `String`
* `settings` __:__ `StreamProcessorSettings`
* `roleArn` __:__ `String`


-}

createStreamProcessor :
  
    StreamProcessorInput ->
  
    StreamProcessorOutput ->
  
    String ->
  
    StreamProcessorSettings ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStreamProcessorResponse)

createStreamProcessor input output name settings roleArn =
    
    let
        requestInput = CreateStreamProcessorRequest
            
            input
            
            output
            
            name
            
            settings
            
            roleArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createStreamProcessorRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateStreamProcessor"
                
                (AWS.Core.Decode.ResultDecoder "CreateStreamProcessorResponse" createStreamProcessorResponseDecoder)
                
            )





{-| <p>Deletes the specified collection. Note that this operation removes all faces in the collection. For an example, see <a>delete-collection-procedure</a>.</p> <p>This operation requires permissions to perform the <code>rekognition:DeleteCollection</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`


-}

deleteCollection :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteCollectionResponse)

deleteCollection collectionId =
    
    let
        requestInput = DeleteCollectionRequest
            
            collectionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteCollectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteCollection"
                
                (AWS.Core.Decode.ResultDecoder "DeleteCollectionResponse" deleteCollectionResponseDecoder)
                
            )





{-| <p>Deletes faces from a collection. You specify a collection ID and an array of face IDs to remove from the collection.</p> <p>This operation requires permissions to perform the <code>rekognition:DeleteFaces</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`
* `faceIds` __:__ `(List String)`


-}

deleteFaces :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteFacesResponse)

deleteFaces collectionId faceIds =
    
    let
        requestInput = DeleteFacesRequest
            
            collectionId
            
            faceIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteFacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteFaces"
                
                (AWS.Core.Decode.ResultDecoder "DeleteFacesResponse" deleteFacesResponseDecoder)
                
            )





{-| <p>Deletes the stream processor identified by <code>Name</code>. You assign the value for <code>Name</code> when you create the stream processor with <a>CreateStreamProcessor</a>. You might not be able to use the same name for a stream processor for a few seconds after calling <code>DeleteStreamProcessor</code>.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteStreamProcessor :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteStreamProcessorResponse)

deleteStreamProcessor name =
    
    let
        requestInput = DeleteStreamProcessorRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteStreamProcessorRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteStreamProcessor"
                
                (AWS.Core.Decode.ResultDecoder "DeleteStreamProcessorResponse" deleteStreamProcessorResponseDecoder)
                
            )





{-| <p>Describes the specified collection. You can use <code>DescribeCollection</code> to get information, such as the number of faces indexed into a collection and the version of the model used by the collection for face detection.</p> <p>For more information, see Describing a Collection in the Amazon Rekognition Developer Guide.</p>

__Required Parameters__

* `collectionId` __:__ `String`


-}

describeCollection :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeCollectionResponse)

describeCollection collectionId =
    
    let
        requestInput = DescribeCollectionRequest
            
            collectionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeCollectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeCollection"
                
                (AWS.Core.Decode.ResultDecoder "DescribeCollectionResponse" describeCollectionResponseDecoder)
                
            )





{-| <p>Provides information about a stream processor created by <a>CreateStreamProcessor</a>. You can get information about the input and output streams, the input parameters for the face recognition being performed, and the current status of the stream processor.</p>

__Required Parameters__

* `name` __:__ `String`


-}

describeStreamProcessor :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStreamProcessorResponse)

describeStreamProcessor name =
    
    let
        requestInput = DescribeStreamProcessorRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeStreamProcessorRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStreamProcessor"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStreamProcessorResponse" describeStreamProcessorResponseDecoder)
                
            )





{-| <p>Detects faces within an image that is provided as input.</p> <p> <code>DetectFaces</code> detects the 100 largest faces in the image. For each face detected, the operation returns face details. These details include a bounding box of the face, a confidence value (that the bounding box contains a face), and a fixed set of attributes such as facial landmarks (for example, coordinates of eye and mouth), gender, presence of beard, sunglasses, and so on. </p> <p>The face-detection algorithm is most effective on frontal faces. For non-frontal or obscured faces, the algorithm might not detect the faces or might detect faces with lower confidence. </p> <p>You pass the input image either as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file. </p> <note> <p>This is a stateless API operation. That is, the operation does not persist any data.</p> </note> <p>This operation requires permissions to perform the <code>rekognition:DetectFaces</code> action. </p>

__Required Parameters__

* `image` __:__ `Image`


-}

detectFaces :
  
    Image ->
  
  
    ( DetectFacesOptions -> DetectFacesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetectFacesResponse)

detectFaces image setOptions =
    
    let
        requestInput = DetectFacesRequest
            
            image
            
            options.attributes
            
        
        options = setOptions (DetectFacesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> detectFacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DetectFaces"
                
                (AWS.Core.Decode.ResultDecoder "DetectFacesResponse" detectFacesResponseDecoder)
                
            )



{-| Options for a detectFaces request
-}
type alias DetectFacesOptions =
    {
    attributes : Maybe (List Attribute)
    }



{-| <p>Detects instances of real-world entities within an image (JPEG or PNG) provided as input. This includes objects like flower, tree, and table; events like wedding, graduation, and birthday party; and concepts like landscape, evening, and nature. </p> <p>For an example, see Analyzing Images Stored in an Amazon S3 Bucket in the Amazon Rekognition Developer Guide.</p> <note> <p> <code>DetectLabels</code> does not support the detection of activities. However, activity detection is supported for label detection in videos. For more information, see StartLabelDetection in the Amazon Rekognition Developer Guide.</p> </note> <p>You pass the input image as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file. </p> <p> For each object, scene, and concept the API returns one or more labels. Each label provides the object name, and the level of confidence that the image contains the object. For example, suppose the input image has a lighthouse, the sea, and a rock. The response includes all three labels, one for each object. </p> <p> <code>{Name: lighthouse, Confidence: 98.4629}</code> </p> <p> <code>{Name: rock,Confidence: 79.2097}</code> </p> <p> <code> {Name: sea,Confidence: 75.061}</code> </p> <p>In the preceding example, the operation returns one label for each of the three objects. The operation can also return multiple labels for the same object in the image. For example, if the input image shows a flower (for example, a tulip), the operation might return the following three labels. </p> <p> <code>{Name: flower,Confidence: 99.0562}</code> </p> <p> <code>{Name: plant,Confidence: 99.0562}</code> </p> <p> <code>{Name: tulip,Confidence: 99.0562}</code> </p> <p>In this example, the detection algorithm more precisely identifies the flower as a tulip.</p> <p>In response, the API returns an array of labels. In addition, the response also includes the orientation correction. Optionally, you can specify <code>MinConfidence</code> to control the confidence threshold for the labels returned. The default is 55%. You can also add the <code>MaxLabels</code> parameter to limit the number of labels returned. </p> <note> <p>If the object detected is a person, the operation doesn't provide the same facial details that the <a>DetectFaces</a> operation provides.</p> </note> <p> <code>DetectLabels</code> returns bounding boxes for instances of common object labels in an array of <a>Instance</a> objects. An <code>Instance</code> object contains a <a>BoundingBox</a> object, for the location of the label on the image. It also includes the confidence by which the bounding box was detected.</p> <p> <code>DetectLabels</code> also returns a hierarchical taxonomy of detected labels. For example, a detected car might be assigned the label <i>car</i>. The label <i>car</i> has two parent labels: <i>Vehicle</i> (its parent) and <i>Transportation</i> (its grandparent). The response returns the entire list of ancestors for a label. Each ancestor is a unique label in the response. In the previous example, <i>Car</i>, <i>Vehicle</i>, and <i>Transportation</i> are returned as unique labels in the response. </p> <p>This is a stateless API operation. That is, the operation does not persist any data.</p> <p>This operation requires permissions to perform the <code>rekognition:DetectLabels</code> action. </p>

__Required Parameters__

* `image` __:__ `Image`


-}

detectLabels :
  
    Image ->
  
  
    ( DetectLabelsOptions -> DetectLabelsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetectLabelsResponse)

detectLabels image setOptions =
    
    let
        requestInput = DetectLabelsRequest
            
            image
            
            options.maxLabels
            
            options.minConfidence
            
        
        options = setOptions (DetectLabelsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> detectLabelsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DetectLabels"
                
                (AWS.Core.Decode.ResultDecoder "DetectLabelsResponse" detectLabelsResponseDecoder)
                
            )



{-| Options for a detectLabels request
-}
type alias DetectLabelsOptions =
    {
    maxLabels : Maybe Int,minConfidence : Maybe Float
    }



{-| <p>Detects explicit or suggestive adult content in a specified JPEG or PNG format image. Use <code>DetectModerationLabels</code> to moderate images depending on your requirements. For example, you might want to filter images that contain nudity, but not images containing suggestive content.</p> <p>To filter images, use the labels returned by <code>DetectModerationLabels</code> to determine which types of content are appropriate.</p> <p>For information about moderation labels, see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.</p> <p>You pass the input image either as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file. </p>

__Required Parameters__

* `image` __:__ `Image`


-}

detectModerationLabels :
  
    Image ->
  
  
    ( DetectModerationLabelsOptions -> DetectModerationLabelsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetectModerationLabelsResponse)

detectModerationLabels image setOptions =
    
    let
        requestInput = DetectModerationLabelsRequest
            
            image
            
            options.minConfidence
            
        
        options = setOptions (DetectModerationLabelsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> detectModerationLabelsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DetectModerationLabels"
                
                (AWS.Core.Decode.ResultDecoder "DetectModerationLabelsResponse" detectModerationLabelsResponseDecoder)
                
            )



{-| Options for a detectModerationLabels request
-}
type alias DetectModerationLabelsOptions =
    {
    minConfidence : Maybe Float
    }



{-| <p>Detects text in the input image and converts it into machine-readable text.</p> <p>Pass the input image as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, you must pass it as a reference to an image in an Amazon S3 bucket. For the AWS CLI, passing image bytes is not supported. The image must be either a .png or .jpeg formatted file. </p> <p>The <code>DetectText</code> operation returns text in an array of <a>TextDetection</a> elements, <code>TextDetections</code>. Each <code>TextDetection</code> element provides information about a single word or line of text that was detected in the image. </p> <p>A word is one or more ISO basic latin script characters that are not separated by spaces. <code>DetectText</code> can detect up to 50 words in an image.</p> <p>A line is a string of equally spaced words. A line isn't necessarily a complete sentence. For example, a driver's license number is detected as a line. A line ends when there is no aligned text after it. Also, a line ends when there is a large gap between words, relative to the length of the words. This means, depending on the gap between words, Amazon Rekognition may detect multiple lines in text aligned in the same direction. Periods don't represent the end of a line. If a sentence spans multiple lines, the <code>DetectText</code> operation returns multiple lines.</p> <p>To determine whether a <code>TextDetection</code> element is a line of text or a word, use the <code>TextDetection</code> object <code>Type</code> field. </p> <p>To be detected, text must be within +/- 90 degrees orientation of the horizontal axis.</p> <p>For more information, see DetectText in the Amazon Rekognition Developer Guide.</p>

__Required Parameters__

* `image` __:__ `Image`


-}

detectText :
  
    Image ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetectTextResponse)

detectText image =
    
    let
        requestInput = DetectTextRequest
            
            image
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> detectTextRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DetectText"
                
                (AWS.Core.Decode.ResultDecoder "DetectTextResponse" detectTextResponseDecoder)
                
            )





{-| <p>Gets the name and additional information about a celebrity based on his or her Amazon Rekognition ID. The additional information is returned as an array of URLs. If there is no additional information about the celebrity, this list is empty.</p> <p>For more information, see Recognizing Celebrities in an Image in the Amazon Rekognition Developer Guide.</p> <p>This operation requires permissions to perform the <code>rekognition:GetCelebrityInfo</code> action. </p>

__Required Parameters__

* `id` __:__ `String`


-}

getCelebrityInfo :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCelebrityInfoResponse)

getCelebrityInfo id =
    
    let
        requestInput = GetCelebrityInfoRequest
            
            id
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCelebrityInfoRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetCelebrityInfo"
                
                (AWS.Core.Decode.ResultDecoder "GetCelebrityInfoResponse" getCelebrityInfoResponseDecoder)
                
            )





{-| <p>Gets the celebrity recognition results for a Amazon Rekognition Video analysis started by <a>StartCelebrityRecognition</a>.</p> <p>Celebrity recognition in a video is an asynchronous operation. Analysis is started by a call to <a>StartCelebrityRecognition</a> which returns a job identifier (<code>JobId</code>). When the celebrity recognition operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to <code>StartCelebrityRecognition</code>. To get the results of the celebrity recognition analysis, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <code>GetCelebrityDetection</code> and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartCelebrityDetection</code>. </p> <p>For more information, see Working With Stored Videos in the Amazon Rekognition Developer Guide.</p> <p> <code>GetCelebrityRecognition</code> returns detected celebrities and the time(s) they are detected in an array (<code>Celebrities</code>) of <a>CelebrityRecognition</a> objects. Each <code>CelebrityRecognition</code> contains information about the celebrity in a <a>CelebrityDetail</a> object and the time, <code>Timestamp</code>, the celebrity was detected. </p> <note> <p> <code>GetCelebrityRecognition</code> only returns the default facial attributes (<code>BoundingBox</code>, <code>Confidence</code>, <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>). The other facial attributes listed in the <code>Face</code> object of the following response syntax are not returned. For more information, see FaceDetail in the Amazon Rekognition Developer Guide. </p> </note> <p>By default, the <code>Celebrities</code> array is sorted by time (milliseconds from the start of the video). You can also sort the array by celebrity by specifying the value <code>ID</code> in the <code>SortBy</code> input parameter.</p> <p>The <code>CelebrityDetail</code> object includes the celebrity identifer and additional information urls. If you don't store the additional information urls, you can get them later by calling <a>GetCelebrityInfo</a> with the celebrity identifer.</p> <p>No information is returned for faces not recognized as celebrities.</p> <p>Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call <code>GetCelebrityDetection</code> and populate the <code>NextToken</code> request parameter with the token value returned from the previous call to <code>GetCelebrityRecognition</code>.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}

getCelebrityRecognition :
  
    String ->
  
  
    ( GetCelebrityRecognitionOptions -> GetCelebrityRecognitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCelebrityRecognitionResponse)

getCelebrityRecognition jobId setOptions =
    
    let
        requestInput = GetCelebrityRecognitionRequest
            
            jobId
            
            options.maxResults
            
            options.nextToken
            
            options.sortBy
            
        
        options = setOptions (GetCelebrityRecognitionOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCelebrityRecognitionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetCelebrityRecognition"
                
                (AWS.Core.Decode.ResultDecoder "GetCelebrityRecognitionResponse" getCelebrityRecognitionResponseDecoder)
                
            )



{-| Options for a getCelebrityRecognition request
-}
type alias GetCelebrityRecognitionOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String,sortBy : Maybe CelebrityRecognitionSortBy
    }



{-| <p>Gets the content moderation analysis results for a Amazon Rekognition Video analysis started by <a>StartContentModeration</a>.</p> <p>Content moderation analysis of a video is an asynchronous operation. You start analysis by calling <a>StartContentModeration</a> which returns a job identifier (<code>JobId</code>). When analysis finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to <code>StartContentModeration</code>. To get the results of the content moderation analysis, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <code>GetContentModeration</code> and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartContentModeration</code>. </p> <p>For more information, see Working with Stored Videos in the Amazon Rekognition Devlopers Guide.</p> <p> <code>GetContentModeration</code> returns detected content moderation labels, and the time they are detected, in an array, <code>ModerationLabels</code>, of <a>ContentModerationDetection</a> objects. </p> <p>By default, the moderated labels are returned sorted by time, in milliseconds from the start of the video. You can also sort them by moderated label by specifying <code>NAME</code> for the <code>SortBy</code> input parameter. </p> <p>Since video analysis can return a large number of results, use the <code>MaxResults</code> parameter to limit the number of labels returned in a single call to <code>GetContentModeration</code>. If there are more results than specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call <code>GetContentModeration</code> and populate the <code>NextToken</code> request parameter with the value of <code>NextToken</code> returned from the previous call to <code>GetContentModeration</code>.</p> <p>For more information, see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}

getContentModeration :
  
    String ->
  
  
    ( GetContentModerationOptions -> GetContentModerationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetContentModerationResponse)

getContentModeration jobId setOptions =
    
    let
        requestInput = GetContentModerationRequest
            
            jobId
            
            options.maxResults
            
            options.nextToken
            
            options.sortBy
            
        
        options = setOptions (GetContentModerationOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getContentModerationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetContentModeration"
                
                (AWS.Core.Decode.ResultDecoder "GetContentModerationResponse" getContentModerationResponseDecoder)
                
            )



{-| Options for a getContentModeration request
-}
type alias GetContentModerationOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String,sortBy : Maybe ContentModerationSortBy
    }



{-| <p>Gets face detection results for a Amazon Rekognition Video analysis started by <a>StartFaceDetection</a>.</p> <p>Face detection with Amazon Rekognition Video is an asynchronous operation. You start face detection by calling <a>StartFaceDetection</a> which returns a job identifier (<code>JobId</code>). When the face detection operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to <code>StartFaceDetection</code>. To get the results of the face detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetFaceDetection</a> and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartFaceDetection</code>.</p> <p> <code>GetFaceDetection</code> returns an array of detected faces (<code>Faces</code>) sorted by the time the faces were detected. </p> <p>Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call <code>GetFaceDetection</code> and populate the <code>NextToken</code> request parameter with the token value returned from the previous call to <code>GetFaceDetection</code>.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}

getFaceDetection :
  
    String ->
  
  
    ( GetFaceDetectionOptions -> GetFaceDetectionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetFaceDetectionResponse)

getFaceDetection jobId setOptions =
    
    let
        requestInput = GetFaceDetectionRequest
            
            jobId
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (GetFaceDetectionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getFaceDetectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetFaceDetection"
                
                (AWS.Core.Decode.ResultDecoder "GetFaceDetectionResponse" getFaceDetectionResponseDecoder)
                
            )



{-| Options for a getFaceDetection request
-}
type alias GetFaceDetectionOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Gets the face search results for Amazon Rekognition Video face search started by <a>StartFaceSearch</a>. The search returns faces in a collection that match the faces of persons detected in a video. It also includes the time(s) that faces are matched in the video.</p> <p>Face search in a video is an asynchronous operation. You start face search by calling to <a>StartFaceSearch</a> which returns a job identifier (<code>JobId</code>). When the search operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to <code>StartFaceSearch</code>. To get the search results, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <code>GetFaceSearch</code> and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartFaceSearch</code>.</p> <p>For more information, see Searching Faces in a Collection in the Amazon Rekognition Developer Guide.</p> <p>The search results are retured in an array, <code>Persons</code>, of <a>PersonMatch</a> objects. Each<code>PersonMatch</code> element contains details about the matching faces in the input collection, person information (facial attributes, bounding boxes, and person identifer) for the matched person, and the time the person was matched in the video.</p> <note> <p> <code>GetFaceSearch</code> only returns the default facial attributes (<code>BoundingBox</code>, <code>Confidence</code>, <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>). The other facial attributes listed in the <code>Face</code> object of the following response syntax are not returned. For more information, see FaceDetail in the Amazon Rekognition Developer Guide. </p> </note> <p>By default, the <code>Persons</code> array is sorted by the time, in milliseconds from the start of the video, persons are matched. You can also sort by persons by specifying <code>INDEX</code> for the <code>SORTBY</code> input parameter.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}

getFaceSearch :
  
    String ->
  
  
    ( GetFaceSearchOptions -> GetFaceSearchOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetFaceSearchResponse)

getFaceSearch jobId setOptions =
    
    let
        requestInput = GetFaceSearchRequest
            
            jobId
            
            options.maxResults
            
            options.nextToken
            
            options.sortBy
            
        
        options = setOptions (GetFaceSearchOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getFaceSearchRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetFaceSearch"
                
                (AWS.Core.Decode.ResultDecoder "GetFaceSearchResponse" getFaceSearchResponseDecoder)
                
            )



{-| Options for a getFaceSearch request
-}
type alias GetFaceSearchOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String,sortBy : Maybe FaceSearchSortBy
    }



{-| <p>Gets the label detection results of a Amazon Rekognition Video analysis started by <a>StartLabelDetection</a>. </p> <p>The label detection operation is started by a call to <a>StartLabelDetection</a> which returns a job identifier (<code>JobId</code>). When the label detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to <code>StartlabelDetection</code>. To get the results of the label detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetLabelDetection</a> and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartLabelDetection</code>.</p> <p> <code>GetLabelDetection</code> returns an array of detected labels (<code>Labels</code>) sorted by the time the labels were detected. You can also sort by the label name by specifying <code>NAME</code> for the <code>SortBy</code> input parameter.</p> <p>The labels returned include the label name, the percentage confidence in the accuracy of the detected label, and the time the label was detected in the video.</p> <p>The returned labels also include bounding box information for common objects, a hierarchical taxonomy of detected labels, and the version of the label model used for detection.</p> <p>Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call <code>GetlabelDetection</code> and populate the <code>NextToken</code> request parameter with the token value returned from the previous call to <code>GetLabelDetection</code>.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}

getLabelDetection :
  
    String ->
  
  
    ( GetLabelDetectionOptions -> GetLabelDetectionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLabelDetectionResponse)

getLabelDetection jobId setOptions =
    
    let
        requestInput = GetLabelDetectionRequest
            
            jobId
            
            options.maxResults
            
            options.nextToken
            
            options.sortBy
            
        
        options = setOptions (GetLabelDetectionOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getLabelDetectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetLabelDetection"
                
                (AWS.Core.Decode.ResultDecoder "GetLabelDetectionResponse" getLabelDetectionResponseDecoder)
                
            )



{-| Options for a getLabelDetection request
-}
type alias GetLabelDetectionOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String,sortBy : Maybe LabelDetectionSortBy
    }



{-| <p>Gets the path tracking results of a Amazon Rekognition Video analysis started by <a>StartPersonTracking</a>.</p> <p>The person path tracking operation is started by a call to <code>StartPersonTracking</code> which returns a job identifier (<code>JobId</code>). When the operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to <code>StartPersonTracking</code>.</p> <p>To get the results of the person path tracking operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetPersonTracking</a> and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartPersonTracking</code>.</p> <p> <code>GetPersonTracking</code> returns an array, <code>Persons</code>, of tracked persons and the time(s) their paths were tracked in the video. </p> <note> <p> <code>GetPersonTracking</code> only returns the default facial attributes (<code>BoundingBox</code>, <code>Confidence</code>, <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>). The other facial attributes listed in the <code>Face</code> object of the following response syntax are not returned. </p> <p>For more information, see FaceDetail in the Amazon Rekognition Developer Guide.</p> </note> <p>By default, the array is sorted by the time(s) a person's path is tracked in the video. You can sort by tracked persons by specifying <code>INDEX</code> for the <code>SortBy</code> input parameter.</p> <p>Use the <code>MaxResults</code> parameter to limit the number of items returned. If there are more results than specified in <code>MaxResults</code>, the value of <code>NextToken</code> in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call <code>GetPersonTracking</code> and populate the <code>NextToken</code> request parameter with the token value returned from the previous call to <code>GetPersonTracking</code>.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}

getPersonTracking :
  
    String ->
  
  
    ( GetPersonTrackingOptions -> GetPersonTrackingOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPersonTrackingResponse)

getPersonTracking jobId setOptions =
    
    let
        requestInput = GetPersonTrackingRequest
            
            jobId
            
            options.maxResults
            
            options.nextToken
            
            options.sortBy
            
        
        options = setOptions (GetPersonTrackingOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getPersonTrackingRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetPersonTracking"
                
                (AWS.Core.Decode.ResultDecoder "GetPersonTrackingResponse" getPersonTrackingResponseDecoder)
                
            )



{-| Options for a getPersonTracking request
-}
type alias GetPersonTrackingOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String,sortBy : Maybe PersonTrackingSortBy
    }



{-| <p>Detects faces in the input image and adds them to the specified collection. </p> <p>Amazon Rekognition doesn't save the actual faces that are detected. Instead, the underlying detection algorithm first detects the faces in the input image. For each face, the algorithm extracts facial features into a feature vector, and stores it in the backend database. Amazon Rekognition uses feature vectors when it performs face match and search operations using the <a>SearchFaces</a> and <a>SearchFacesByImage</a> operations.</p> <p>For more information, see Adding Faces to a Collection in the Amazon Rekognition Developer Guide.</p> <p>To get the number of faces in a collection, call <a>DescribeCollection</a>. </p> <p>If you're using version 1.0 of the face detection model, <code>IndexFaces</code> indexes the 15 largest faces in the input image. Later versions of the face detection model index the 100 largest faces in the input image. </p> <p>If you're using version 4 or later of the face model, image orientation information is not returned in the <code>OrientationCorrection</code> field. </p> <p>To determine which version of the model you're using, call <a>DescribeCollection</a> and supply the collection ID. You can also get the model version from the value of <code>FaceModelVersion</code> in the response from <code>IndexFaces</code> </p> <p>For more information, see Model Versioning in the Amazon Rekognition Developer Guide.</p> <p>If you provide the optional <code>ExternalImageID</code> for the input image you provided, Amazon Rekognition associates this ID with all faces that it detects. When you call the <a>ListFaces</a> operation, the response returns the external ID. You can use this external image ID to create a client-side index to associate the faces with each image. You can then use the index to find all faces in an image.</p> <p>You can specify the maximum number of faces to index with the <code>MaxFaces</code> input parameter. This is useful when you want to index the largest faces in an image and don't want to index smaller faces, such as those belonging to people standing in the background.</p> <p>The <code>QualityFilter</code> input parameter allows you to filter out detected faces that don’t meet the required quality bar chosen by Amazon Rekognition. The quality bar is based on a variety of common use cases. By default, <code>IndexFaces</code> filters detected faces. You can also explicitly filter detected faces by specifying <code>AUTO</code> for the value of <code>QualityFilter</code>. If you do not want to filter detected faces, specify <code>NONE</code>. </p> <note> <p>To use quality filtering, you need a collection associated with version 3 of the face model. To get the version of the face model associated with a collection, call <a>DescribeCollection</a>. </p> </note> <p>Information about faces detected in an image, but not indexed, is returned in an array of <a>UnindexedFace</a> objects, <code>UnindexedFaces</code>. Faces aren't indexed for reasons such as:</p> <ul> <li> <p>The number of faces detected exceeds the value of the <code>MaxFaces</code> request parameter.</p> </li> <li> <p>The face is too small compared to the image dimensions.</p> </li> <li> <p>The face is too blurry.</p> </li> <li> <p>The image is too dark.</p> </li> <li> <p>The face has an extreme pose.</p> </li> </ul> <p>In response, the <code>IndexFaces</code> operation returns an array of metadata for all detected faces, <code>FaceRecords</code>. This includes: </p> <ul> <li> <p>The bounding box, <code>BoundingBox</code>, of the detected face. </p> </li> <li> <p>A confidence value, <code>Confidence</code>, which indicates the confidence that the bounding box contains a face.</p> </li> <li> <p>A face ID, <code>FaceId</code>, assigned by the service for each face that's detected and stored.</p> </li> <li> <p>An image ID, <code>ImageId</code>, assigned by the service for the input image.</p> </li> </ul> <p>If you request all facial attributes (by using the <code>detectionAttributes</code> parameter), Amazon Rekognition returns detailed facial attributes, such as facial landmarks (for example, location of eye and mouth) and other facial attributes like gender. If you provide the same image, specify the same collection, and use the same external ID in the <code>IndexFaces</code> operation, Amazon Rekognition doesn't save duplicate face metadata.</p> <p/> <p>The input image is passed either as base64-encoded image bytes, or as a reference to an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, passing image bytes isn't supported. The image must be formatted as a PNG or JPEG file. </p> <p>This operation requires permissions to perform the <code>rekognition:IndexFaces</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`
* `image` __:__ `Image`


-}

indexFaces :
  
    String ->
  
    Image ->
  
  
    ( IndexFacesOptions -> IndexFacesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IndexFacesResponse)

indexFaces collectionId image setOptions =
    
    let
        requestInput = IndexFacesRequest
            
            collectionId
            
            image
            
            options.externalImageId
            
            options.detectionAttributes
            
            options.maxFaces
            
            options.qualityFilter
            
        
        options = setOptions (IndexFacesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> indexFacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "IndexFaces"
                
                (AWS.Core.Decode.ResultDecoder "IndexFacesResponse" indexFacesResponseDecoder)
                
            )



{-| Options for a indexFaces request
-}
type alias IndexFacesOptions =
    {
    externalImageId : Maybe String,detectionAttributes : Maybe (List Attribute),maxFaces : Maybe Int,qualityFilter : Maybe QualityFilter
    }



{-| <p>Returns list of collection IDs in your account. If the result is truncated, the response also provides a <code>NextToken</code> that you can use in the subsequent request to fetch the next set of collection IDs.</p> <p>For an example, see Listing Collections in the Amazon Rekognition Developer Guide.</p> <p>This operation requires permissions to perform the <code>rekognition:ListCollections</code> action.</p>

__Required Parameters__



-}

listCollections :
  
  
    ( ListCollectionsOptions -> ListCollectionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListCollectionsResponse)

listCollections setOptions =
    
    let
        requestInput = ListCollectionsRequest
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListCollectionsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listCollectionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListCollections"
                
                (AWS.Core.Decode.ResultDecoder "ListCollectionsResponse" listCollectionsResponseDecoder)
                
            )



{-| Options for a listCollections request
-}
type alias ListCollectionsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Returns metadata for faces in the specified collection. This metadata includes information such as the bounding box coordinates, the confidence (that the bounding box contains a face), and face ID. For an example, see Listing Faces in a Collection in the Amazon Rekognition Developer Guide.</p> <p>This operation requires permissions to perform the <code>rekognition:ListFaces</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`


-}

listFaces :
  
    String ->
  
  
    ( ListFacesOptions -> ListFacesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListFacesResponse)

listFaces collectionId setOptions =
    
    let
        requestInput = ListFacesRequest
            
            collectionId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListFacesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listFacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListFaces"
                
                (AWS.Core.Decode.ResultDecoder "ListFacesResponse" listFacesResponseDecoder)
                
            )



{-| Options for a listFaces request
-}
type alias ListFacesOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Gets a list of stream processors that you have created with <a>CreateStreamProcessor</a>. </p>

__Required Parameters__



-}

listStreamProcessors :
  
  
    ( ListStreamProcessorsOptions -> ListStreamProcessorsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStreamProcessorsResponse)

listStreamProcessors setOptions =
    
    let
        requestInput = ListStreamProcessorsRequest
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListStreamProcessorsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listStreamProcessorsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListStreamProcessors"
                
                (AWS.Core.Decode.ResultDecoder "ListStreamProcessorsResponse" listStreamProcessorsResponseDecoder)
                
            )



{-| Options for a listStreamProcessors request
-}
type alias ListStreamProcessorsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Returns an array of celebrities recognized in the input image. For more information, see Recognizing Celebrities in the Amazon Rekognition Developer Guide. </p> <p> <code>RecognizeCelebrities</code> returns the 100 largest faces in the image. It lists recognized celebrities in the <code>CelebrityFaces</code> array and unrecognized faces in the <code>UnrecognizedFaces</code> array. <code>RecognizeCelebrities</code> doesn't return celebrities whose faces aren't among the largest 100 faces in the image.</p> <p>For each celebrity recognized, <code>RecognizeCelebrities</code> returns a <code>Celebrity</code> object. The <code>Celebrity</code> object contains the celebrity name, ID, URL links to additional information, match confidence, and a <code>ComparedFace</code> object that you can use to locate the celebrity's face on the image.</p> <p>Amazon Rekognition doesn't retain information about which images a celebrity has been recognized in. Your application must store this information and use the <code>Celebrity</code> ID property as a unique identifier for the celebrity. If you don't store the celebrity name or additional information URLs returned by <code>RecognizeCelebrities</code>, you will need the ID to identify the celebrity in a call to the <a>GetCelebrityInfo</a> operation.</p> <p>You pass the input image either as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file. </p> <p>For an example, see Recognizing Celebrities in an Image in the Amazon Rekognition Developer Guide.</p> <p>This operation requires permissions to perform the <code>rekognition:RecognizeCelebrities</code> operation.</p>

__Required Parameters__

* `image` __:__ `Image`


-}

recognizeCelebrities :
  
    Image ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RecognizeCelebritiesResponse)

recognizeCelebrities image =
    
    let
        requestInput = RecognizeCelebritiesRequest
            
            image
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> recognizeCelebritiesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RecognizeCelebrities"
                
                (AWS.Core.Decode.ResultDecoder "RecognizeCelebritiesResponse" recognizeCelebritiesResponseDecoder)
                
            )





{-| <p>For a given input face ID, searches for matching faces in the collection the face belongs to. You get a face ID when you add a face to the collection using the <a>IndexFaces</a> operation. The operation compares the features of the input face with faces in the specified collection. </p> <note> <p>You can also search faces without indexing faces by using the <code>SearchFacesByImage</code> operation.</p> </note> <p> The operation response returns an array of faces that match, ordered by similarity score with the highest similarity first. More specifically, it is an array of metadata for each face match that is found. Along with the metadata, the response also includes a <code>confidence</code> value for each face match, indicating the confidence that the specific face matches the input face. </p> <p>For an example, see Searching for a Face Using Its Face ID in the Amazon Rekognition Developer Guide.</p> <p>This operation requires permissions to perform the <code>rekognition:SearchFaces</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`
* `faceId` __:__ `String`


-}

searchFaces :
  
    String ->
  
    String ->
  
  
    ( SearchFacesOptions -> SearchFacesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SearchFacesResponse)

searchFaces collectionId faceId setOptions =
    
    let
        requestInput = SearchFacesRequest
            
            collectionId
            
            faceId
            
            options.maxFaces
            
            options.faceMatchThreshold
            
        
        options = setOptions (SearchFacesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> searchFacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SearchFaces"
                
                (AWS.Core.Decode.ResultDecoder "SearchFacesResponse" searchFacesResponseDecoder)
                
            )



{-| Options for a searchFaces request
-}
type alias SearchFacesOptions =
    {
    maxFaces : Maybe Int,faceMatchThreshold : Maybe Float
    }



{-| <p>For a given input image, first detects the largest face in the image, and then searches the specified collection for matching faces. The operation compares the features of the input face with faces in the specified collection. </p> <note> <p>To search for all faces in an input image, you might first call the <a>IndexFaces</a> operation, and then use the face IDs returned in subsequent calls to the <a>SearchFaces</a> operation. </p> <p> You can also call the <code>DetectFaces</code> operation and use the bounding boxes in the response to make face crops, which then you can pass in to the <code>SearchFacesByImage</code> operation. </p> </note> <p>You pass the input image either as base64-encoded image bytes or as a reference to an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon Rekognition operations, passing image bytes is not supported. The image must be either a PNG or JPEG formatted file. </p> <p> The response returns an array of faces that match, ordered by similarity score with the highest similarity first. More specifically, it is an array of metadata for each face match found. Along with the metadata, the response also includes a <code>similarity</code> indicating how similar the face is to the input face. In the response, the operation also returns the bounding box (and a confidence level that the bounding box contains a face) of the face that Amazon Rekognition used for the input image. </p> <p>For an example, Searching for a Face Using an Image in the Amazon Rekognition Developer Guide.</p> <p>This operation requires permissions to perform the <code>rekognition:SearchFacesByImage</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`
* `image` __:__ `Image`


-}

searchFacesByImage :
  
    String ->
  
    Image ->
  
  
    ( SearchFacesByImageOptions -> SearchFacesByImageOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SearchFacesByImageResponse)

searchFacesByImage collectionId image setOptions =
    
    let
        requestInput = SearchFacesByImageRequest
            
            collectionId
            
            image
            
            options.maxFaces
            
            options.faceMatchThreshold
            
        
        options = setOptions (SearchFacesByImageOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> searchFacesByImageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SearchFacesByImage"
                
                (AWS.Core.Decode.ResultDecoder "SearchFacesByImageResponse" searchFacesByImageResponseDecoder)
                
            )



{-| Options for a searchFacesByImage request
-}
type alias SearchFacesByImageOptions =
    {
    maxFaces : Maybe Int,faceMatchThreshold : Maybe Float
    }



{-| <p>Starts asynchronous recognition of celebrities in a stored video.</p> <p>Amazon Rekognition Video can detect celebrities in a video must be stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and the filename of the video. <code>StartCelebrityRecognition</code> returns a job identifier (<code>JobId</code>) which you use to get the results of the analysis. When celebrity recognition analysis is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>. To get the results of the celebrity recognition analysis, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetCelebrityRecognition</a> and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartCelebrityRecognition</code>. </p> <p>For more information, see Recognizing Celebrities in the Amazon Rekognition Developer Guide.</p>

__Required Parameters__

* `video` __:__ `Video`


-}

startCelebrityRecognition :
  
    Video ->
  
  
    ( StartCelebrityRecognitionOptions -> StartCelebrityRecognitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartCelebrityRecognitionResponse)

startCelebrityRecognition video setOptions =
    
    let
        requestInput = StartCelebrityRecognitionRequest
            
            video
            
            options.clientRequestToken
            
            options.notificationChannel
            
            options.jobTag
            
        
        options = setOptions (StartCelebrityRecognitionOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startCelebrityRecognitionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartCelebrityRecognition"
                
                (AWS.Core.Decode.ResultDecoder "StartCelebrityRecognitionResponse" startCelebrityRecognitionResponseDecoder)
                
            )



{-| Options for a startCelebrityRecognition request
-}
type alias StartCelebrityRecognitionOptions =
    {
    clientRequestToken : Maybe String,notificationChannel : Maybe NotificationChannel,jobTag : Maybe String
    }



{-| <p> Starts asynchronous detection of explicit or suggestive adult content in a stored video.</p> <p>Amazon Rekognition Video can moderate content in a video stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and the filename of the video. <code>StartContentModeration</code> returns a job identifier (<code>JobId</code>) which you use to get the results of the analysis. When content moderation analysis is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>.</p> <p>To get the results of the content moderation analysis, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetContentModeration</a> and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartContentModeration</code>. </p> <p>For more information, see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.</p>

__Required Parameters__

* `video` __:__ `Video`


-}

startContentModeration :
  
    Video ->
  
  
    ( StartContentModerationOptions -> StartContentModerationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartContentModerationResponse)

startContentModeration video setOptions =
    
    let
        requestInput = StartContentModerationRequest
            
            video
            
            options.minConfidence
            
            options.clientRequestToken
            
            options.notificationChannel
            
            options.jobTag
            
        
        options = setOptions (StartContentModerationOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startContentModerationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartContentModeration"
                
                (AWS.Core.Decode.ResultDecoder "StartContentModerationResponse" startContentModerationResponseDecoder)
                
            )



{-| Options for a startContentModeration request
-}
type alias StartContentModerationOptions =
    {
    minConfidence : Maybe Float,clientRequestToken : Maybe String,notificationChannel : Maybe NotificationChannel,jobTag : Maybe String
    }



{-| <p>Starts asynchronous detection of faces in a stored video.</p> <p>Amazon Rekognition Video can detect faces in a video stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and the filename of the video. <code>StartFaceDetection</code> returns a job identifier (<code>JobId</code>) that you use to get the results of the operation. When face detection is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>. To get the results of the face detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetFaceDetection</a> and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartFaceDetection</code>.</p> <p>For more information, see Detecting Faces in a Stored Video in the Amazon Rekognition Developer Guide.</p>

__Required Parameters__

* `video` __:__ `Video`


-}

startFaceDetection :
  
    Video ->
  
  
    ( StartFaceDetectionOptions -> StartFaceDetectionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartFaceDetectionResponse)

startFaceDetection video setOptions =
    
    let
        requestInput = StartFaceDetectionRequest
            
            video
            
            options.clientRequestToken
            
            options.notificationChannel
            
            options.faceAttributes
            
            options.jobTag
            
        
        options = setOptions (StartFaceDetectionOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startFaceDetectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartFaceDetection"
                
                (AWS.Core.Decode.ResultDecoder "StartFaceDetectionResponse" startFaceDetectionResponseDecoder)
                
            )



{-| Options for a startFaceDetection request
-}
type alias StartFaceDetectionOptions =
    {
    clientRequestToken : Maybe String,notificationChannel : Maybe NotificationChannel,faceAttributes : Maybe FaceAttributes,jobTag : Maybe String
    }



{-| <p>Starts the asynchronous search for faces in a collection that match the faces of persons detected in a stored video.</p> <p>The video must be stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and the filename of the video. <code>StartFaceSearch</code> returns a job identifier (<code>JobId</code>) which you use to get the search results once the search has completed. When searching is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>. To get the search results, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetFaceSearch</a> and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartFaceSearch</code>. For more information, see <a>procedure-person-search-videos</a>.</p>

__Required Parameters__

* `video` __:__ `Video`
* `collectionId` __:__ `String`


-}

startFaceSearch :
  
    Video ->
  
    String ->
  
  
    ( StartFaceSearchOptions -> StartFaceSearchOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartFaceSearchResponse)

startFaceSearch video collectionId setOptions =
    
    let
        requestInput = StartFaceSearchRequest
            
            video
            
            options.clientRequestToken
            
            options.faceMatchThreshold
            
            collectionId
            
            options.notificationChannel
            
            options.jobTag
            
        
        options = setOptions (StartFaceSearchOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startFaceSearchRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartFaceSearch"
                
                (AWS.Core.Decode.ResultDecoder "StartFaceSearchResponse" startFaceSearchResponseDecoder)
                
            )



{-| Options for a startFaceSearch request
-}
type alias StartFaceSearchOptions =
    {
    clientRequestToken : Maybe String,faceMatchThreshold : Maybe Float,notificationChannel : Maybe NotificationChannel,jobTag : Maybe String
    }



{-| <p>Starts asynchronous detection of labels in a stored video.</p> <p>Amazon Rekognition Video can detect labels in a video. Labels are instances of real-world entities. This includes objects like flower, tree, and table; events like wedding, graduation, and birthday party; concepts like landscape, evening, and nature; and activities like a person getting out of a car or a person skiing.</p> <p>The video must be stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and the filename of the video. <code>StartLabelDetection</code> returns a job identifier (<code>JobId</code>) which you use to get the results of the operation. When label detection is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>.</p> <p>To get the results of the label detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetLabelDetection</a> and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartLabelDetection</code>.</p> <p/>

__Required Parameters__

* `video` __:__ `Video`


-}

startLabelDetection :
  
    Video ->
  
  
    ( StartLabelDetectionOptions -> StartLabelDetectionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartLabelDetectionResponse)

startLabelDetection video setOptions =
    
    let
        requestInput = StartLabelDetectionRequest
            
            video
            
            options.clientRequestToken
            
            options.minConfidence
            
            options.notificationChannel
            
            options.jobTag
            
        
        options = setOptions (StartLabelDetectionOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startLabelDetectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartLabelDetection"
                
                (AWS.Core.Decode.ResultDecoder "StartLabelDetectionResponse" startLabelDetectionResponseDecoder)
                
            )



{-| Options for a startLabelDetection request
-}
type alias StartLabelDetectionOptions =
    {
    clientRequestToken : Maybe String,minConfidence : Maybe Float,notificationChannel : Maybe NotificationChannel,jobTag : Maybe String
    }



{-| <p>Starts the asynchronous tracking of a person's path in a stored video.</p> <p>Amazon Rekognition Video can track the path of people in a video stored in an Amazon S3 bucket. Use <a>Video</a> to specify the bucket name and the filename of the video. <code>StartPersonTracking</code> returns a job identifier (<code>JobId</code>) which you use to get the results of the operation. When label detection is finished, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic that you specify in <code>NotificationChannel</code>. </p> <p>To get the results of the person detection operation, first check that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetPersonTracking</a> and pass the job identifier (<code>JobId</code>) from the initial call to <code>StartPersonTracking</code>.</p>

__Required Parameters__

* `video` __:__ `Video`


-}

startPersonTracking :
  
    Video ->
  
  
    ( StartPersonTrackingOptions -> StartPersonTrackingOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartPersonTrackingResponse)

startPersonTracking video setOptions =
    
    let
        requestInput = StartPersonTrackingRequest
            
            video
            
            options.clientRequestToken
            
            options.notificationChannel
            
            options.jobTag
            
        
        options = setOptions (StartPersonTrackingOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startPersonTrackingRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartPersonTracking"
                
                (AWS.Core.Decode.ResultDecoder "StartPersonTrackingResponse" startPersonTrackingResponseDecoder)
                
            )



{-| Options for a startPersonTracking request
-}
type alias StartPersonTrackingOptions =
    {
    clientRequestToken : Maybe String,notificationChannel : Maybe NotificationChannel,jobTag : Maybe String
    }



{-| <p>Starts processing a stream processor. You create a stream processor by calling <a>CreateStreamProcessor</a>. To tell <code>StartStreamProcessor</code> which stream processor to start, use the value of the <code>Name</code> field specified in the call to <code>CreateStreamProcessor</code>.</p>

__Required Parameters__

* `name` __:__ `String`


-}

startStreamProcessor :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartStreamProcessorResponse)

startStreamProcessor name =
    
    let
        requestInput = StartStreamProcessorRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startStreamProcessorRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartStreamProcessor"
                
                (AWS.Core.Decode.ResultDecoder "StartStreamProcessorResponse" startStreamProcessorResponseDecoder)
                
            )





{-| <p>Stops a running stream processor that was created by <a>CreateStreamProcessor</a>.</p>

__Required Parameters__

* `name` __:__ `String`


-}

stopStreamProcessor :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopStreamProcessorResponse)

stopStreamProcessor name =
    
    let
        requestInput = StopStreamProcessorRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopStreamProcessorRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopStreamProcessor"
                
                (AWS.Core.Decode.ResultDecoder "StopStreamProcessorResponse" stopStreamProcessorResponseDecoder)
                
            )






{-| <p>Structure containing the estimated age range, in years, for a face.</p> <p>Amazon Rekognition estimates an age range for faces detected in the input image. Estimated age ranges can overlap. A face of a 5-year-old might have an estimated range of 4-6, while the face of a 6-year-old might have an estimated range of 4-8.</p>
-}
type alias AgeRange =
    { low : Maybe Int
    , high : Maybe Int
    }



ageRangeDecoder : JD.Decoder AgeRange
ageRangeDecoder =
    JD.succeed AgeRange
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Low", "low"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["High", "high"]
            JD.int
        )
        




ageRangeToString : AgeRange -> String -- List (String, String)
ageRangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "low" "" -- val.low
        
    --     |> Dict.insert
    --         "high" "" -- val.high
        
    --     |> Dict.toList
    ""



{-| One of

* `Attribute_DEFAULT`
* `Attribute_ALL`

-}
type Attribute
    = Attribute_DEFAULT
    | Attribute_ALL



attributeDecoder : JD.Decoder Attribute
attributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEFAULT" ->
                        JD.succeed Attribute_DEFAULT

                    "ALL" ->
                        JD.succeed Attribute_ALL


                    _ ->
                        JD.fail "bad thing"
            )




attributeToString : Attribute -> String
attributeToString val =
    case val of
        Attribute_DEFAULT ->
            "DEFAULT"

        Attribute_ALL ->
            "ALL"




{-| <p>Indicates whether or not the face has a beard, and the confidence level in the determination.</p>
-}
type alias Beard =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



beardDecoder : JD.Decoder Beard
beardDecoder =
    JD.succeed Beard
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




beardToString : Beard -> String -- List (String, String)
beardToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| <p>Identifies the bounding box around the label, face, or text. The <code>left</code> (x-coordinate) and <code>top</code> (y-coordinate) are coordinates representing the top and left sides of the bounding box. Note that the upper-left corner of the image is the origin (0,0). </p> <p>The <code>top</code> and <code>left</code> values returned are ratios of the overall image size. For example, if the input image is 700x200 pixels, and the top-left coordinate of the bounding box is 350x50 pixels, the API returns a <code>left</code> value of 0.5 (350/700) and a <code>top</code> value of 0.25 (50/200).</p> <p>The <code>width</code> and <code>height</code> values represent the dimensions of the bounding box as a ratio of the overall image dimension. For example, if the input image is 700x200 pixels, and the bounding box width is 70 pixels, the width returned is 0.1. </p> <note> <p> The bounding box coordinates can have negative values. For example, if Amazon Rekognition is able to detect a face that is at the image edge and is only partially visible, the service can return coordinates that are outside the image bounds and, depending on the image edge, you might get negative values or values greater than 1 for the <code>left</code> or <code>top</code> values. </p> </note>
-}
type alias BoundingBox =
    { width : Maybe Float
    , height : Maybe Float
    , left : Maybe Float
    , top : Maybe Float
    }



boundingBoxDecoder : JD.Decoder BoundingBox
boundingBoxDecoder =
    JD.succeed BoundingBox
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Width", "width"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Height", "height"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Left", "left"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Top", "top"]
            JD.float
        )
        




boundingBoxToString : BoundingBox -> String -- List (String, String)
boundingBoxToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "width" "" -- val.width
        
    --     |> Dict.insert
    --         "height" "" -- val.height
        
    --     |> Dict.insert
    --         "left" "" -- val.left
        
    --     |> Dict.insert
    --         "top" "" -- val.top
        
    --     |> Dict.toList
    ""



{-| <p>Provides information about a celebrity recognized by the <a>RecognizeCelebrities</a> operation.</p>
-}
type alias Celebrity =
    { urls : Maybe (List String)
    , name : Maybe String
    , id : Maybe String
    , face : Maybe ComparedFace
    , matchConfidence : Maybe Float
    }



celebrityDecoder : JD.Decoder Celebrity
celebrityDecoder =
    JD.succeed Celebrity
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Urls", "urls"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Face", "face"]
            comparedFaceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MatchConfidence", "matchConfidence"]
            JD.float
        )
        




celebrityToString : Celebrity -> String -- List (String, String)
celebrityToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "urls" "" -- val.urls
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "face" "" -- val.face
        
    --     |> Dict.insert
    --         "matchConfidence" "" -- val.matchConfidence
        
    --     |> Dict.toList
    ""



{-| <p>Information about a recognized celebrity.</p>
-}
type alias CelebrityDetail =
    { urls : Maybe (List String)
    , name : Maybe String
    , id : Maybe String
    , confidence : Maybe Float
    , boundingBox : Maybe BoundingBox
    , face : Maybe FaceDetail
    }



celebrityDetailDecoder : JD.Decoder CelebrityDetail
celebrityDetailDecoder =
    JD.succeed CelebrityDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Urls", "urls"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BoundingBox", "boundingBox"]
            boundingBoxDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Face", "face"]
            faceDetailDecoder
        )
        




celebrityDetailToString : CelebrityDetail -> String -- List (String, String)
celebrityDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "urls" "" -- val.urls
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.insert
    --         "boundingBox" "" -- val.boundingBox
        
    --     |> Dict.insert
    --         "face" "" -- val.face
        
    --     |> Dict.toList
    ""



{-| <p>Information about a detected celebrity and the time the celebrity was detected in a stored video. For more information, see GetCelebrityRecognition in the Amazon Rekognition Developer Guide.</p>
-}
type alias CelebrityRecognition =
    { timestamp : Maybe Int
    , celebrity : Maybe CelebrityDetail
    }



celebrityRecognitionDecoder : JD.Decoder CelebrityRecognition
celebrityRecognitionDecoder =
    JD.succeed CelebrityRecognition
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timestamp", "timestamp"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Celebrity", "celebrity"]
            celebrityDetailDecoder
        )
        




celebrityRecognitionToString : CelebrityRecognition -> String -- List (String, String)
celebrityRecognitionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "celebrity" "" -- val.celebrity
        
    --     |> Dict.toList
    ""



{-| One of

* `CelebrityRecognitionSortBy_ID`
* `CelebrityRecognitionSortBy_TIMESTAMP`

-}
type CelebrityRecognitionSortBy
    = CelebrityRecognitionSortBy_ID
    | CelebrityRecognitionSortBy_TIMESTAMP



celebrityRecognitionSortByDecoder : JD.Decoder CelebrityRecognitionSortBy
celebrityRecognitionSortByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ID" ->
                        JD.succeed CelebrityRecognitionSortBy_ID

                    "TIMESTAMP" ->
                        JD.succeed CelebrityRecognitionSortBy_TIMESTAMP


                    _ ->
                        JD.fail "bad thing"
            )




celebrityRecognitionSortByToString : CelebrityRecognitionSortBy -> String
celebrityRecognitionSortByToString val =
    case val of
        CelebrityRecognitionSortBy_ID ->
            "ID"

        CelebrityRecognitionSortBy_TIMESTAMP ->
            "TIMESTAMP"




{-| <p>Provides information about a face in a target image that matches the source image face analyzed by <code>CompareFaces</code>. The <code>Face</code> property contains the bounding box of the face in the target image. The <code>Similarity</code> property is the confidence that the source image face matches the face in the bounding box.</p>
-}
type alias CompareFacesMatch =
    { similarity : Maybe Float
    , face : Maybe ComparedFace
    }



compareFacesMatchDecoder : JD.Decoder CompareFacesMatch
compareFacesMatchDecoder =
    JD.succeed CompareFacesMatch
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Similarity", "similarity"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Face", "face"]
            comparedFaceDecoder
        )
        




compareFacesMatchToString : CompareFacesMatch -> String -- List (String, String)
compareFacesMatchToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "similarity" "" -- val.similarity
        
    --     |> Dict.insert
    --         "face" "" -- val.face
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from compareFaces
-}
type alias CompareFacesResponse =
    { sourceImageFace : Maybe ComparedSourceImageFace
    , faceMatches : Maybe (List CompareFacesMatch)
    , unmatchedFaces : Maybe (List ComparedFace)
    , sourceImageOrientationCorrection : Maybe OrientationCorrection
    , targetImageOrientationCorrection : Maybe OrientationCorrection
    }



compareFacesResponseDecoder : JD.Decoder CompareFacesResponse
compareFacesResponseDecoder =
    JD.succeed CompareFacesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceImageFace", "sourceImageFace"]
            comparedSourceImageFaceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceMatches", "faceMatches"]
            (JD.list compareFacesMatchDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UnmatchedFaces", "unmatchedFaces"]
            (JD.list comparedFaceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceImageOrientationCorrection", "sourceImageOrientationCorrection"]
            orientationCorrectionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetImageOrientationCorrection", "targetImageOrientationCorrection"]
            orientationCorrectionDecoder
        )
        




compareFacesResponseToString : CompareFacesResponse -> String -- List (String, String)
compareFacesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceImageFace" "" -- val.sourceImageFace
        
    --     |> Dict.insert
    --         "faceMatches" "" -- val.faceMatches
        
    --     |> Dict.insert
    --         "unmatchedFaces" "" -- val.unmatchedFaces
        
    --     |> Dict.insert
    --         "sourceImageOrientationCorrection" "" -- val.sourceImageOrientationCorrection
        
    --     |> Dict.insert
    --         "targetImageOrientationCorrection" "" -- val.targetImageOrientationCorrection
        
    --     |> Dict.toList
    ""



{-| <p>Provides face metadata for target image faces that are analyzed by <code>CompareFaces</code> and <code>RecognizeCelebrities</code>.</p>
-}
type alias ComparedFace =
    { boundingBox : Maybe BoundingBox
    , confidence : Maybe Float
    , landmarks : Maybe (List Landmark)
    , pose : Maybe Pose
    , quality : Maybe ImageQuality
    }



comparedFaceDecoder : JD.Decoder ComparedFace
comparedFaceDecoder =
    JD.succeed ComparedFace
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BoundingBox", "boundingBox"]
            boundingBoxDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Landmarks", "landmarks"]
            (JD.list landmarkDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Pose", "pose"]
            poseDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Quality", "quality"]
            imageQualityDecoder
        )
        




comparedFaceToString : ComparedFace -> String -- List (String, String)
comparedFaceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "boundingBox" "" -- val.boundingBox
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.insert
    --         "landmarks" "" -- val.landmarks
        
    --     |> Dict.insert
    --         "pose" "" -- val.pose
        
    --     |> Dict.insert
    --         "quality" "" -- val.quality
        
    --     |> Dict.toList
    ""



{-| <p>Type that describes the face Amazon Rekognition chose to compare with the faces in the target. This contains a bounding box for the selected face and confidence level that the bounding box contains a face. Note that Amazon Rekognition selects the largest face in the source image for this comparison. </p>
-}
type alias ComparedSourceImageFace =
    { boundingBox : Maybe BoundingBox
    , confidence : Maybe Float
    }



comparedSourceImageFaceDecoder : JD.Decoder ComparedSourceImageFace
comparedSourceImageFaceDecoder =
    JD.succeed ComparedSourceImageFace
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BoundingBox", "boundingBox"]
            boundingBoxDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




comparedSourceImageFaceToString : ComparedSourceImageFace -> String -- List (String, String)
comparedSourceImageFaceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "boundingBox" "" -- val.boundingBox
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| <p>Information about a moderation label detection in a stored video.</p>
-}
type alias ContentModerationDetection =
    { timestamp : Maybe Int
    , moderationLabel : Maybe ModerationLabel
    }



contentModerationDetectionDecoder : JD.Decoder ContentModerationDetection
contentModerationDetectionDecoder =
    JD.succeed ContentModerationDetection
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timestamp", "timestamp"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ModerationLabel", "moderationLabel"]
            moderationLabelDecoder
        )
        




contentModerationDetectionToString : ContentModerationDetection -> String -- List (String, String)
contentModerationDetectionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "moderationLabel" "" -- val.moderationLabel
        
    --     |> Dict.toList
    ""



{-| One of

* `ContentModerationSortBy_NAME`
* `ContentModerationSortBy_TIMESTAMP`

-}
type ContentModerationSortBy
    = ContentModerationSortBy_NAME
    | ContentModerationSortBy_TIMESTAMP



contentModerationSortByDecoder : JD.Decoder ContentModerationSortBy
contentModerationSortByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NAME" ->
                        JD.succeed ContentModerationSortBy_NAME

                    "TIMESTAMP" ->
                        JD.succeed ContentModerationSortBy_TIMESTAMP


                    _ ->
                        JD.fail "bad thing"
            )




contentModerationSortByToString : ContentModerationSortBy -> String
contentModerationSortByToString val =
    case val of
        ContentModerationSortBy_NAME ->
            "NAME"

        ContentModerationSortBy_TIMESTAMP ->
            "TIMESTAMP"




{-| Type of HTTP response from createCollection
-}
type alias CreateCollectionResponse =
    { statusCode : Maybe Int
    , collectionArn : Maybe String
    , faceModelVersion : Maybe String
    }



createCollectionResponseDecoder : JD.Decoder CreateCollectionResponse
createCollectionResponseDecoder =
    JD.succeed CreateCollectionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusCode", "statusCode"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CollectionArn", "collectionArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceModelVersion", "faceModelVersion"]
            JD.string
        )
        




createCollectionResponseToString : CreateCollectionResponse -> String -- List (String, String)
createCollectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "statusCode" "" -- val.statusCode
        
    --     |> Dict.insert
    --         "collectionArn" "" -- val.collectionArn
        
    --     |> Dict.insert
    --         "faceModelVersion" "" -- val.faceModelVersion
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createStreamProcessor
-}
type alias CreateStreamProcessorResponse =
    { streamProcessorArn : Maybe String
    }



createStreamProcessorResponseDecoder : JD.Decoder CreateStreamProcessorResponse
createStreamProcessorResponseDecoder =
    JD.succeed CreateStreamProcessorResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StreamProcessorArn", "streamProcessorArn"]
            JD.string
        )
        




createStreamProcessorResponseToString : CreateStreamProcessorResponse -> String -- List (String, String)
createStreamProcessorResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "streamProcessorArn" "" -- val.streamProcessorArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteCollection
-}
type alias DeleteCollectionResponse =
    { statusCode : Maybe Int
    }



deleteCollectionResponseDecoder : JD.Decoder DeleteCollectionResponse
deleteCollectionResponseDecoder =
    JD.succeed DeleteCollectionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusCode", "statusCode"]
            JD.int
        )
        




deleteCollectionResponseToString : DeleteCollectionResponse -> String -- List (String, String)
deleteCollectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "statusCode" "" -- val.statusCode
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteFaces
-}
type alias DeleteFacesResponse =
    { deletedFaces : Maybe (List String)
    }



deleteFacesResponseDecoder : JD.Decoder DeleteFacesResponse
deleteFacesResponseDecoder =
    JD.succeed DeleteFacesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeletedFaces", "deletedFaces"]
            (JD.list JD.string)
        )
        




deleteFacesResponseToString : DeleteFacesResponse -> String -- List (String, String)
deleteFacesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deletedFaces" "" -- val.deletedFaces
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteStreamProcessor
-}
type alias DeleteStreamProcessorResponse =
    { 
    }



deleteStreamProcessorResponseDecoder : JD.Decoder DeleteStreamProcessorResponse
deleteStreamProcessorResponseDecoder =
    JD.succeed DeleteStreamProcessorResponse
        




deleteStreamProcessorResponseToString : DeleteStreamProcessorResponse -> String -- List (String, String)
deleteStreamProcessorResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeCollection
-}
type alias DescribeCollectionResponse =
    { faceCount : Maybe Int
    , faceModelVersion : Maybe String
    , collectionARN : Maybe String
    , creationTimestamp : Maybe Posix
    }



describeCollectionResponseDecoder : JD.Decoder DescribeCollectionResponse
describeCollectionResponseDecoder =
    JD.succeed DescribeCollectionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceCount", "faceCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceModelVersion", "faceModelVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CollectionARN", "collectionARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTimestamp", "creationTimestamp"]
            JDX.datetime
        )
        




describeCollectionResponseToString : DescribeCollectionResponse -> String -- List (String, String)
describeCollectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "faceCount" "" -- val.faceCount
        
    --     |> Dict.insert
    --         "faceModelVersion" "" -- val.faceModelVersion
        
    --     |> Dict.insert
    --         "collectionARN" "" -- val.collectionARN
        
    --     |> Dict.insert
    --         "creationTimestamp" "" -- val.creationTimestamp
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStreamProcessor
-}
type alias DescribeStreamProcessorResponse =
    { name : Maybe String
    , streamProcessorArn : Maybe String
    , status : Maybe StreamProcessorStatus
    , statusMessage : Maybe String
    , creationTimestamp : Maybe Posix
    , lastUpdateTimestamp : Maybe Posix
    , input : Maybe StreamProcessorInput
    , output : Maybe StreamProcessorOutput
    , roleArn : Maybe String
    , settings : Maybe StreamProcessorSettings
    }



describeStreamProcessorResponseDecoder : JD.Decoder DescribeStreamProcessorResponse
describeStreamProcessorResponseDecoder =
    JD.succeed DescribeStreamProcessorResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StreamProcessorArn", "streamProcessorArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            streamProcessorStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusMessage", "statusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTimestamp", "creationTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdateTimestamp", "lastUpdateTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Input", "input"]
            streamProcessorInputDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Output", "output"]
            streamProcessorOutputDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleArn", "roleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Settings", "settings"]
            streamProcessorSettingsDecoder
        )
        




describeStreamProcessorResponseToString : DescribeStreamProcessorResponse -> String -- List (String, String)
describeStreamProcessorResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "streamProcessorArn" "" -- val.streamProcessorArn
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "creationTimestamp" "" -- val.creationTimestamp
        
    --     |> Dict.insert
    --         "lastUpdateTimestamp" "" -- val.lastUpdateTimestamp
        
    --     |> Dict.insert
    --         "input" "" -- val.input
        
    --     |> Dict.insert
    --         "output" "" -- val.output
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "settings" "" -- val.settings
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from detectFaces
-}
type alias DetectFacesResponse =
    { faceDetails : Maybe (List FaceDetail)
    , orientationCorrection : Maybe OrientationCorrection
    }



detectFacesResponseDecoder : JD.Decoder DetectFacesResponse
detectFacesResponseDecoder =
    JD.succeed DetectFacesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceDetails", "faceDetails"]
            (JD.list faceDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OrientationCorrection", "orientationCorrection"]
            orientationCorrectionDecoder
        )
        




detectFacesResponseToString : DetectFacesResponse -> String -- List (String, String)
detectFacesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "faceDetails" "" -- val.faceDetails
        
    --     |> Dict.insert
    --         "orientationCorrection" "" -- val.orientationCorrection
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from detectLabels
-}
type alias DetectLabelsResponse =
    { labels : Maybe (List Label)
    , orientationCorrection : Maybe OrientationCorrection
    , labelModelVersion : Maybe String
    }



detectLabelsResponseDecoder : JD.Decoder DetectLabelsResponse
detectLabelsResponseDecoder =
    JD.succeed DetectLabelsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Labels", "labels"]
            (JD.list labelDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OrientationCorrection", "orientationCorrection"]
            orientationCorrectionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LabelModelVersion", "labelModelVersion"]
            JD.string
        )
        




detectLabelsResponseToString : DetectLabelsResponse -> String -- List (String, String)
detectLabelsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "labels" "" -- val.labels
        
    --     |> Dict.insert
    --         "orientationCorrection" "" -- val.orientationCorrection
        
    --     |> Dict.insert
    --         "labelModelVersion" "" -- val.labelModelVersion
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from detectModerationLabels
-}
type alias DetectModerationLabelsResponse =
    { moderationLabels : Maybe (List ModerationLabel)
    , moderationModelVersion : Maybe String
    }



detectModerationLabelsResponseDecoder : JD.Decoder DetectModerationLabelsResponse
detectModerationLabelsResponseDecoder =
    JD.succeed DetectModerationLabelsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ModerationLabels", "moderationLabels"]
            (JD.list moderationLabelDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ModerationModelVersion", "moderationModelVersion"]
            JD.string
        )
        




detectModerationLabelsResponseToString : DetectModerationLabelsResponse -> String -- List (String, String)
detectModerationLabelsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "moderationLabels" "" -- val.moderationLabels
        
    --     |> Dict.insert
    --         "moderationModelVersion" "" -- val.moderationModelVersion
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from detectText
-}
type alias DetectTextResponse =
    { textDetections : Maybe (List TextDetection)
    }



detectTextResponseDecoder : JD.Decoder DetectTextResponse
detectTextResponseDecoder =
    JD.succeed DetectTextResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TextDetections", "textDetections"]
            (JD.list textDetectionDecoder)
        )
        




detectTextResponseToString : DetectTextResponse -> String -- List (String, String)
detectTextResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "textDetections" "" -- val.textDetections
        
    --     |> Dict.toList
    ""



{-| <p>The emotions detected on the face, and the confidence level in the determination. For example, HAPPY, SAD, and ANGRY.</p>
-}
type alias Emotion =
    { type_ : Maybe EmotionName
    , confidence : Maybe Float
    }



emotionDecoder : JD.Decoder Emotion
emotionDecoder =
    JD.succeed Emotion
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            emotionNameDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




emotionToString : Emotion -> String -- List (String, String)
emotionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| One of

* `EmotionName_HAPPY`
* `EmotionName_SAD`
* `EmotionName_ANGRY`
* `EmotionName_CONFUSED`
* `EmotionName_DISGUSTED`
* `EmotionName_SURPRISED`
* `EmotionName_CALM`
* `EmotionName_UNKNOWN`

-}
type EmotionName
    = EmotionName_HAPPY
    | EmotionName_SAD
    | EmotionName_ANGRY
    | EmotionName_CONFUSED
    | EmotionName_DISGUSTED
    | EmotionName_SURPRISED
    | EmotionName_CALM
    | EmotionName_UNKNOWN



emotionNameDecoder : JD.Decoder EmotionName
emotionNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HAPPY" ->
                        JD.succeed EmotionName_HAPPY

                    "SAD" ->
                        JD.succeed EmotionName_SAD

                    "ANGRY" ->
                        JD.succeed EmotionName_ANGRY

                    "CONFUSED" ->
                        JD.succeed EmotionName_CONFUSED

                    "DISGUSTED" ->
                        JD.succeed EmotionName_DISGUSTED

                    "SURPRISED" ->
                        JD.succeed EmotionName_SURPRISED

                    "CALM" ->
                        JD.succeed EmotionName_CALM

                    "UNKNOWN" ->
                        JD.succeed EmotionName_UNKNOWN


                    _ ->
                        JD.fail "bad thing"
            )




emotionNameToString : EmotionName -> String
emotionNameToString val =
    case val of
        EmotionName_HAPPY ->
            "HAPPY"

        EmotionName_SAD ->
            "SAD"

        EmotionName_ANGRY ->
            "ANGRY"

        EmotionName_CONFUSED ->
            "CONFUSED"

        EmotionName_DISGUSTED ->
            "DISGUSTED"

        EmotionName_SURPRISED ->
            "SURPRISED"

        EmotionName_CALM ->
            "CALM"

        EmotionName_UNKNOWN ->
            "UNKNOWN"




{-| <p>Indicates whether or not the eyes on the face are open, and the confidence level in the determination.</p>
-}
type alias EyeOpen =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



eyeOpenDecoder : JD.Decoder EyeOpen
eyeOpenDecoder =
    JD.succeed EyeOpen
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




eyeOpenToString : EyeOpen -> String -- List (String, String)
eyeOpenToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| <p>Indicates whether or not the face is wearing eye glasses, and the confidence level in the determination.</p>
-}
type alias Eyeglasses =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



eyeglassesDecoder : JD.Decoder Eyeglasses
eyeglassesDecoder =
    JD.succeed Eyeglasses
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




eyeglassesToString : Eyeglasses -> String -- List (String, String)
eyeglassesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| <p>Describes the face properties such as the bounding box, face ID, image ID of the input image, and external image ID that you assigned. </p>
-}
type alias Face =
    { faceId : Maybe String
    , boundingBox : Maybe BoundingBox
    , imageId : Maybe String
    , externalImageId : Maybe String
    , confidence : Maybe Float
    }



faceDecoder : JD.Decoder Face
faceDecoder =
    JD.succeed Face
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceId", "faceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BoundingBox", "boundingBox"]
            boundingBoxDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageId", "imageId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExternalImageId", "externalImageId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




faceToString : Face -> String -- List (String, String)
faceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "faceId" "" -- val.faceId
        
    --     |> Dict.insert
    --         "boundingBox" "" -- val.boundingBox
        
    --     |> Dict.insert
    --         "imageId" "" -- val.imageId
        
    --     |> Dict.insert
    --         "externalImageId" "" -- val.externalImageId
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| One of

* `FaceAttributes_DEFAULT`
* `FaceAttributes_ALL`

-}
type FaceAttributes
    = FaceAttributes_DEFAULT
    | FaceAttributes_ALL



faceAttributesDecoder : JD.Decoder FaceAttributes
faceAttributesDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEFAULT" ->
                        JD.succeed FaceAttributes_DEFAULT

                    "ALL" ->
                        JD.succeed FaceAttributes_ALL


                    _ ->
                        JD.fail "bad thing"
            )




faceAttributesToString : FaceAttributes -> String
faceAttributesToString val =
    case val of
        FaceAttributes_DEFAULT ->
            "DEFAULT"

        FaceAttributes_ALL ->
            "ALL"




{-| <p>Structure containing attributes of the face that the algorithm detected.</p> <p>A <code>FaceDetail</code> object contains either the default facial attributes or all facial attributes. The default attributes are <code>BoundingBox</code>, <code>Confidence</code>, <code>Landmarks</code>, <code>Pose</code>, and <code>Quality</code>.</p> <p> <a>GetFaceDetection</a> is the only Amazon Rekognition Video stored video operation that can return a <code>FaceDetail</code> object with all attributes. To specify which attributes to return, use the <code>FaceAttributes</code> input parameter for <a>StartFaceDetection</a>. The following Amazon Rekognition Video operations return only the default attributes. The corresponding Start operations don't have a <code>FaceAttributes</code> input parameter.</p> <ul> <li> <p>GetCelebrityRecognition</p> </li> <li> <p>GetPersonTracking</p> </li> <li> <p>GetFaceSearch</p> </li> </ul> <p>The Amazon Rekognition Image <a>DetectFaces</a> and <a>IndexFaces</a> operations can return all facial attributes. To specify which attributes to return, use the <code>Attributes</code> input parameter for <code>DetectFaces</code>. For <code>IndexFaces</code>, use the <code>DetectAttributes</code> input parameter.</p>
-}
type alias FaceDetail =
    { boundingBox : Maybe BoundingBox
    , ageRange : Maybe AgeRange
    , smile : Maybe Smile
    , eyeglasses : Maybe Eyeglasses
    , sunglasses : Maybe Sunglasses
    , gender : Maybe Gender
    , beard : Maybe Beard
    , mustache : Maybe Mustache
    , eyesOpen : Maybe EyeOpen
    , mouthOpen : Maybe MouthOpen
    , emotions : Maybe (List Emotion)
    , landmarks : Maybe (List Landmark)
    , pose : Maybe Pose
    , quality : Maybe ImageQuality
    , confidence : Maybe Float
    }



faceDetailDecoder : JD.Decoder FaceDetail
faceDetailDecoder =
    JD.succeed FaceDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BoundingBox", "boundingBox"]
            boundingBoxDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AgeRange", "ageRange"]
            ageRangeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Smile", "smile"]
            smileDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Eyeglasses", "eyeglasses"]
            eyeglassesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Sunglasses", "sunglasses"]
            sunglassesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Gender", "gender"]
            genderDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Beard", "beard"]
            beardDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Mustache", "mustache"]
            mustacheDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EyesOpen", "eyesOpen"]
            eyeOpenDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MouthOpen", "mouthOpen"]
            mouthOpenDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Emotions", "emotions"]
            (JD.list emotionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Landmarks", "landmarks"]
            (JD.list landmarkDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Pose", "pose"]
            poseDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Quality", "quality"]
            imageQualityDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




faceDetailToString : FaceDetail -> String -- List (String, String)
faceDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "boundingBox" "" -- val.boundingBox
        
    --     |> Dict.insert
    --         "ageRange" "" -- val.ageRange
        
    --     |> Dict.insert
    --         "smile" "" -- val.smile
        
    --     |> Dict.insert
    --         "eyeglasses" "" -- val.eyeglasses
        
    --     |> Dict.insert
    --         "sunglasses" "" -- val.sunglasses
        
    --     |> Dict.insert
    --         "gender" "" -- val.gender
        
    --     |> Dict.insert
    --         "beard" "" -- val.beard
        
    --     |> Dict.insert
    --         "mustache" "" -- val.mustache
        
    --     |> Dict.insert
    --         "eyesOpen" "" -- val.eyesOpen
        
    --     |> Dict.insert
    --         "mouthOpen" "" -- val.mouthOpen
        
    --     |> Dict.insert
    --         "emotions" "" -- val.emotions
        
    --     |> Dict.insert
    --         "landmarks" "" -- val.landmarks
        
    --     |> Dict.insert
    --         "pose" "" -- val.pose
        
    --     |> Dict.insert
    --         "quality" "" -- val.quality
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| <p>Information about a face detected in a video analysis request and the time the face was detected in the video. </p>
-}
type alias FaceDetection =
    { timestamp : Maybe Int
    , face : Maybe FaceDetail
    }



faceDetectionDecoder : JD.Decoder FaceDetection
faceDetectionDecoder =
    JD.succeed FaceDetection
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timestamp", "timestamp"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Face", "face"]
            faceDetailDecoder
        )
        




faceDetectionToString : FaceDetection -> String -- List (String, String)
faceDetectionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "face" "" -- val.face
        
    --     |> Dict.toList
    ""



{-| <p>Provides face metadata. In addition, it also provides the confidence in the match of this face with the input face.</p>
-}
type alias FaceMatch =
    { similarity : Maybe Float
    , face : Maybe Face
    }



faceMatchDecoder : JD.Decoder FaceMatch
faceMatchDecoder =
    JD.succeed FaceMatch
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Similarity", "similarity"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Face", "face"]
            faceDecoder
        )
        




faceMatchToString : FaceMatch -> String -- List (String, String)
faceMatchToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "similarity" "" -- val.similarity
        
    --     |> Dict.insert
    --         "face" "" -- val.face
        
    --     |> Dict.toList
    ""



{-| <p>Object containing both the face metadata (stored in the backend database), and facial attributes that are detected but aren't stored in the database.</p>
-}
type alias FaceRecord =
    { face : Maybe Face
    , faceDetail : Maybe FaceDetail
    }



faceRecordDecoder : JD.Decoder FaceRecord
faceRecordDecoder =
    JD.succeed FaceRecord
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Face", "face"]
            faceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceDetail", "faceDetail"]
            faceDetailDecoder
        )
        




faceRecordToString : FaceRecord -> String -- List (String, String)
faceRecordToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "face" "" -- val.face
        
    --     |> Dict.insert
    --         "faceDetail" "" -- val.faceDetail
        
    --     |> Dict.toList
    ""



{-| <p>Input face recognition parameters for an Amazon Rekognition stream processor. <code>FaceRecognitionSettings</code> is a request parameter for <a>CreateStreamProcessor</a>.</p>
-}
type alias FaceSearchSettings =
    { collectionId : Maybe String
    , faceMatchThreshold : Maybe Float
    }



faceSearchSettingsDecoder : JD.Decoder FaceSearchSettings
faceSearchSettingsDecoder =
    JD.succeed FaceSearchSettings
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CollectionId", "collectionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceMatchThreshold", "faceMatchThreshold"]
            JD.float
        )
        




faceSearchSettingsToString : FaceSearchSettings -> String -- List (String, String)
faceSearchSettingsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "collectionId" "" -- val.collectionId
        
    --     |> Dict.insert
    --         "faceMatchThreshold" "" -- val.faceMatchThreshold
        
    --     |> Dict.toList
    ""



{-| One of

* `FaceSearchSortBy_INDEX`
* `FaceSearchSortBy_TIMESTAMP`

-}
type FaceSearchSortBy
    = FaceSearchSortBy_INDEX
    | FaceSearchSortBy_TIMESTAMP



faceSearchSortByDecoder : JD.Decoder FaceSearchSortBy
faceSearchSortByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INDEX" ->
                        JD.succeed FaceSearchSortBy_INDEX

                    "TIMESTAMP" ->
                        JD.succeed FaceSearchSortBy_TIMESTAMP


                    _ ->
                        JD.fail "bad thing"
            )




faceSearchSortByToString : FaceSearchSortBy -> String
faceSearchSortByToString val =
    case val of
        FaceSearchSortBy_INDEX ->
            "INDEX"

        FaceSearchSortBy_TIMESTAMP ->
            "TIMESTAMP"




{-| <p>Gender of the face and the confidence level in the determination.</p>
-}
type alias Gender =
    { value : Maybe GenderType
    , confidence : Maybe Float
    }



genderDecoder : JD.Decoder Gender
genderDecoder =
    JD.succeed Gender
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            genderTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




genderToString : Gender -> String -- List (String, String)
genderToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| One of

* `GenderType_Male`
* `GenderType_Female`

-}
type GenderType
    = GenderType_Male
    | GenderType_Female



genderTypeDecoder : JD.Decoder GenderType
genderTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Male" ->
                        JD.succeed GenderType_Male

                    "Female" ->
                        JD.succeed GenderType_Female


                    _ ->
                        JD.fail "bad thing"
            )




genderTypeToString : GenderType -> String
genderTypeToString val =
    case val of
        GenderType_Male ->
            "Male"

        GenderType_Female ->
            "Female"




{-| <p>Information about where the text detected by <a>DetectText</a> is located on an image.</p>
-}
type alias Geometry =
    { boundingBox : Maybe BoundingBox
    , polygon : Maybe (List Point)
    }



geometryDecoder : JD.Decoder Geometry
geometryDecoder =
    JD.succeed Geometry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BoundingBox", "boundingBox"]
            boundingBoxDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Polygon", "polygon"]
            (JD.list pointDecoder)
        )
        




geometryToString : Geometry -> String -- List (String, String)
geometryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "boundingBox" "" -- val.boundingBox
        
    --     |> Dict.insert
    --         "polygon" "" -- val.polygon
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getCelebrityInfo
-}
type alias GetCelebrityInfoResponse =
    { urls : Maybe (List String)
    , name : Maybe String
    }



getCelebrityInfoResponseDecoder : JD.Decoder GetCelebrityInfoResponse
getCelebrityInfoResponseDecoder =
    JD.succeed GetCelebrityInfoResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Urls", "urls"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




getCelebrityInfoResponseToString : GetCelebrityInfoResponse -> String -- List (String, String)
getCelebrityInfoResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "urls" "" -- val.urls
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getCelebrityRecognition
-}
type alias GetCelebrityRecognitionResponse =
    { jobStatus : Maybe VideoJobStatus
    , statusMessage : Maybe String
    , videoMetadata : Maybe VideoMetadata
    , nextToken : Maybe String
    , celebrities : Maybe (List CelebrityRecognition)
    }



getCelebrityRecognitionResponseDecoder : JD.Decoder GetCelebrityRecognitionResponse
getCelebrityRecognitionResponseDecoder =
    JD.succeed GetCelebrityRecognitionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobStatus", "jobStatus"]
            videoJobStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusMessage", "statusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VideoMetadata", "videoMetadata"]
            videoMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Celebrities", "celebrities"]
            (JD.list celebrityRecognitionDecoder)
        )
        




getCelebrityRecognitionResponseToString : GetCelebrityRecognitionResponse -> String -- List (String, String)
getCelebrityRecognitionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobStatus" "" -- val.jobStatus
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "videoMetadata" "" -- val.videoMetadata
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "celebrities" "" -- val.celebrities
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getContentModeration
-}
type alias GetContentModerationResponse =
    { jobStatus : Maybe VideoJobStatus
    , statusMessage : Maybe String
    , videoMetadata : Maybe VideoMetadata
    , moderationLabels : Maybe (List ContentModerationDetection)
    , nextToken : Maybe String
    , moderationModelVersion : Maybe String
    }



getContentModerationResponseDecoder : JD.Decoder GetContentModerationResponse
getContentModerationResponseDecoder =
    JD.succeed GetContentModerationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobStatus", "jobStatus"]
            videoJobStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusMessage", "statusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VideoMetadata", "videoMetadata"]
            videoMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ModerationLabels", "moderationLabels"]
            (JD.list contentModerationDetectionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ModerationModelVersion", "moderationModelVersion"]
            JD.string
        )
        




getContentModerationResponseToString : GetContentModerationResponse -> String -- List (String, String)
getContentModerationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobStatus" "" -- val.jobStatus
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "videoMetadata" "" -- val.videoMetadata
        
    --     |> Dict.insert
    --         "moderationLabels" "" -- val.moderationLabels
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "moderationModelVersion" "" -- val.moderationModelVersion
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getFaceDetection
-}
type alias GetFaceDetectionResponse =
    { jobStatus : Maybe VideoJobStatus
    , statusMessage : Maybe String
    , videoMetadata : Maybe VideoMetadata
    , nextToken : Maybe String
    , faces : Maybe (List FaceDetection)
    }



getFaceDetectionResponseDecoder : JD.Decoder GetFaceDetectionResponse
getFaceDetectionResponseDecoder =
    JD.succeed GetFaceDetectionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobStatus", "jobStatus"]
            videoJobStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusMessage", "statusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VideoMetadata", "videoMetadata"]
            videoMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Faces", "faces"]
            (JD.list faceDetectionDecoder)
        )
        




getFaceDetectionResponseToString : GetFaceDetectionResponse -> String -- List (String, String)
getFaceDetectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobStatus" "" -- val.jobStatus
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "videoMetadata" "" -- val.videoMetadata
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "faces" "" -- val.faces
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getFaceSearch
-}
type alias GetFaceSearchResponse =
    { jobStatus : Maybe VideoJobStatus
    , statusMessage : Maybe String
    , nextToken : Maybe String
    , videoMetadata : Maybe VideoMetadata
    , persons : Maybe (List PersonMatch)
    }



getFaceSearchResponseDecoder : JD.Decoder GetFaceSearchResponse
getFaceSearchResponseDecoder =
    JD.succeed GetFaceSearchResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobStatus", "jobStatus"]
            videoJobStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusMessage", "statusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VideoMetadata", "videoMetadata"]
            videoMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Persons", "persons"]
            (JD.list personMatchDecoder)
        )
        




getFaceSearchResponseToString : GetFaceSearchResponse -> String -- List (String, String)
getFaceSearchResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobStatus" "" -- val.jobStatus
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "videoMetadata" "" -- val.videoMetadata
        
    --     |> Dict.insert
    --         "persons" "" -- val.persons
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getLabelDetection
-}
type alias GetLabelDetectionResponse =
    { jobStatus : Maybe VideoJobStatus
    , statusMessage : Maybe String
    , videoMetadata : Maybe VideoMetadata
    , nextToken : Maybe String
    , labels : Maybe (List LabelDetection)
    , labelModelVersion : Maybe String
    }



getLabelDetectionResponseDecoder : JD.Decoder GetLabelDetectionResponse
getLabelDetectionResponseDecoder =
    JD.succeed GetLabelDetectionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobStatus", "jobStatus"]
            videoJobStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusMessage", "statusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VideoMetadata", "videoMetadata"]
            videoMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Labels", "labels"]
            (JD.list labelDetectionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LabelModelVersion", "labelModelVersion"]
            JD.string
        )
        




getLabelDetectionResponseToString : GetLabelDetectionResponse -> String -- List (String, String)
getLabelDetectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobStatus" "" -- val.jobStatus
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "videoMetadata" "" -- val.videoMetadata
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "labels" "" -- val.labels
        
    --     |> Dict.insert
    --         "labelModelVersion" "" -- val.labelModelVersion
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getPersonTracking
-}
type alias GetPersonTrackingResponse =
    { jobStatus : Maybe VideoJobStatus
    , statusMessage : Maybe String
    , videoMetadata : Maybe VideoMetadata
    , nextToken : Maybe String
    , persons : Maybe (List PersonDetection)
    }



getPersonTrackingResponseDecoder : JD.Decoder GetPersonTrackingResponse
getPersonTrackingResponseDecoder =
    JD.succeed GetPersonTrackingResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobStatus", "jobStatus"]
            videoJobStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusMessage", "statusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VideoMetadata", "videoMetadata"]
            videoMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Persons", "persons"]
            (JD.list personDetectionDecoder)
        )
        




getPersonTrackingResponseToString : GetPersonTrackingResponse -> String -- List (String, String)
getPersonTrackingResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobStatus" "" -- val.jobStatus
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "videoMetadata" "" -- val.videoMetadata
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "persons" "" -- val.persons
        
    --     |> Dict.toList
    ""



{-| <p>Provides the input image either as bytes or an S3 object.</p> <p>You pass image bytes to an Amazon Rekognition API operation by using the <code>Bytes</code> property. For example, you would use the <code>Bytes</code> property to pass an image loaded from a local file system. Image bytes passed by using the <code>Bytes</code> property must be base64-encoded. Your code may not need to encode image bytes if you are using an AWS SDK to call Amazon Rekognition API operations. </p> <p>For more information, see Analyzing an Image Loaded from a Local File System in the Amazon Rekognition Developer Guide.</p> <p> You pass images stored in an S3 bucket to an Amazon Rekognition API operation by using the <code>S3Object</code> property. Images stored in an S3 bucket do not need to be base64-encoded.</p> <p>The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.</p> <p>If you use the AWS CLI to call Amazon Rekognition operations, passing image bytes using the Bytes property is not supported. You must first upload the image to an Amazon S3 bucket and then call the operation using the S3Object property.</p> <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see Resource Based Policies in the Amazon Rekognition Developer Guide. </p>
-}
type alias Image =
    { bytes : Maybe String
    , s3Object : Maybe S3Object
    }



imageDecoder : JD.Decoder Image
imageDecoder =
    JD.succeed Image
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Bytes", "bytes"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3Object", "s3Object"]
            s3ObjectDecoder
        )
        




imageToString : Image -> String -- List (String, String)
imageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bytes" "" -- val.bytes
        
    --     |> Dict.insert
    --         "s3Object" "" -- val.s3Object
        
    --     |> Dict.toList
    ""



{-| <p>Identifies face image brightness and sharpness. </p>
-}
type alias ImageQuality =
    { brightness : Maybe Float
    , sharpness : Maybe Float
    }



imageQualityDecoder : JD.Decoder ImageQuality
imageQualityDecoder =
    JD.succeed ImageQuality
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Brightness", "brightness"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Sharpness", "sharpness"]
            JD.float
        )
        




imageQualityToString : ImageQuality -> String -- List (String, String)
imageQualityToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "brightness" "" -- val.brightness
        
    --     |> Dict.insert
    --         "sharpness" "" -- val.sharpness
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from indexFaces
-}
type alias IndexFacesResponse =
    { faceRecords : Maybe (List FaceRecord)
    , orientationCorrection : Maybe OrientationCorrection
    , faceModelVersion : Maybe String
    , unindexedFaces : Maybe (List UnindexedFace)
    }



indexFacesResponseDecoder : JD.Decoder IndexFacesResponse
indexFacesResponseDecoder =
    JD.succeed IndexFacesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceRecords", "faceRecords"]
            (JD.list faceRecordDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OrientationCorrection", "orientationCorrection"]
            orientationCorrectionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceModelVersion", "faceModelVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UnindexedFaces", "unindexedFaces"]
            (JD.list unindexedFaceDecoder)
        )
        




indexFacesResponseToString : IndexFacesResponse -> String -- List (String, String)
indexFacesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "faceRecords" "" -- val.faceRecords
        
    --     |> Dict.insert
    --         "orientationCorrection" "" -- val.orientationCorrection
        
    --     |> Dict.insert
    --         "faceModelVersion" "" -- val.faceModelVersion
        
    --     |> Dict.insert
    --         "unindexedFaces" "" -- val.unindexedFaces
        
    --     |> Dict.toList
    ""



{-| <p>An instance of a label returned by Amazon Rekognition Image (<a>DetectLabels</a>) or by Amazon Rekognition Video (<a>GetLabelDetection</a>).</p>
-}
type alias Instance =
    { boundingBox : Maybe BoundingBox
    , confidence : Maybe Float
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JD.succeed Instance
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BoundingBox", "boundingBox"]
            boundingBoxDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




instanceToString : Instance -> String -- List (String, String)
instanceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "boundingBox" "" -- val.boundingBox
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| <p>The Kinesis data stream Amazon Rekognition to which the analysis results of a Amazon Rekognition stream processor are streamed. For more information, see CreateStreamProcessor in the Amazon Rekognition Developer Guide.</p>
-}
type alias KinesisDataStream =
    { arn : Maybe String
    }



kinesisDataStreamDecoder : JD.Decoder KinesisDataStream
kinesisDataStreamDecoder =
    JD.succeed KinesisDataStream
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        




kinesisDataStreamToString : KinesisDataStream -> String -- List (String, String)
kinesisDataStreamToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.toList
    ""



{-| <p>Kinesis video stream stream that provides the source streaming video for a Amazon Rekognition Video stream processor. For more information, see CreateStreamProcessor in the Amazon Rekognition Developer Guide.</p>
-}
type alias KinesisVideoStream =
    { arn : Maybe String
    }



kinesisVideoStreamDecoder : JD.Decoder KinesisVideoStream
kinesisVideoStreamDecoder =
    JD.succeed KinesisVideoStream
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        




kinesisVideoStreamToString : KinesisVideoStream -> String -- List (String, String)
kinesisVideoStreamToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.toList
    ""



{-| <p>Structure containing details about the detected label, including the name, detected instances, parent labels, and level of confidence.</p> <p> </p>
-}
type alias Label =
    { name : Maybe String
    , confidence : Maybe Float
    , instances : Maybe (List Instance)
    , parents : Maybe (List Parent)
    }



labelDecoder : JD.Decoder Label
labelDecoder =
    JD.succeed Label
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Instances", "instances"]
            (JD.list instanceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parents", "parents"]
            (JD.list parentDecoder)
        )
        




labelToString : Label -> String -- List (String, String)
labelToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.insert
    --         "instances" "" -- val.instances
        
    --     |> Dict.insert
    --         "parents" "" -- val.parents
        
    --     |> Dict.toList
    ""



{-| <p>Information about a label detected in a video analysis request and the time the label was detected in the video. </p>
-}
type alias LabelDetection =
    { timestamp : Maybe Int
    , label : Maybe Label
    }



labelDetectionDecoder : JD.Decoder LabelDetection
labelDetectionDecoder =
    JD.succeed LabelDetection
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timestamp", "timestamp"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Label", "label"]
            labelDecoder
        )
        




labelDetectionToString : LabelDetection -> String -- List (String, String)
labelDetectionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "label" "" -- val.label
        
    --     |> Dict.toList
    ""



{-| One of

* `LabelDetectionSortBy_NAME`
* `LabelDetectionSortBy_TIMESTAMP`

-}
type LabelDetectionSortBy
    = LabelDetectionSortBy_NAME
    | LabelDetectionSortBy_TIMESTAMP



labelDetectionSortByDecoder : JD.Decoder LabelDetectionSortBy
labelDetectionSortByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NAME" ->
                        JD.succeed LabelDetectionSortBy_NAME

                    "TIMESTAMP" ->
                        JD.succeed LabelDetectionSortBy_TIMESTAMP


                    _ ->
                        JD.fail "bad thing"
            )




labelDetectionSortByToString : LabelDetectionSortBy -> String
labelDetectionSortByToString val =
    case val of
        LabelDetectionSortBy_NAME ->
            "NAME"

        LabelDetectionSortBy_TIMESTAMP ->
            "TIMESTAMP"




{-| <p>Indicates the location of the landmark on the face.</p>
-}
type alias Landmark =
    { type_ : Maybe LandmarkType
    , x : Maybe Float
    , y : Maybe Float
    }



landmarkDecoder : JD.Decoder Landmark
landmarkDecoder =
    JD.succeed Landmark
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            landmarkTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["X", "x"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Y", "y"]
            JD.float
        )
        




landmarkToString : Landmark -> String -- List (String, String)
landmarkToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "x" "" -- val.x
        
    --     |> Dict.insert
    --         "y" "" -- val.y
        
    --     |> Dict.toList
    ""



{-| One of

* `LandmarkType_eyeLeft`
* `LandmarkType_eyeRight`
* `LandmarkType_nose`
* `LandmarkType_mouthLeft`
* `LandmarkType_mouthRight`
* `LandmarkType_leftEyeBrowLeft`
* `LandmarkType_leftEyeBrowRight`
* `LandmarkType_leftEyeBrowUp`
* `LandmarkType_rightEyeBrowLeft`
* `LandmarkType_rightEyeBrowRight`
* `LandmarkType_rightEyeBrowUp`
* `LandmarkType_leftEyeLeft`
* `LandmarkType_leftEyeRight`
* `LandmarkType_leftEyeUp`
* `LandmarkType_leftEyeDown`
* `LandmarkType_rightEyeLeft`
* `LandmarkType_rightEyeRight`
* `LandmarkType_rightEyeUp`
* `LandmarkType_rightEyeDown`
* `LandmarkType_noseLeft`
* `LandmarkType_noseRight`
* `LandmarkType_mouthUp`
* `LandmarkType_mouthDown`
* `LandmarkType_leftPupil`
* `LandmarkType_rightPupil`
* `LandmarkType_upperJawlineLeft`
* `LandmarkType_midJawlineLeft`
* `LandmarkType_chinBottom`
* `LandmarkType_midJawlineRight`
* `LandmarkType_upperJawlineRight`

-}
type LandmarkType
    = LandmarkType_eyeLeft
    | LandmarkType_eyeRight
    | LandmarkType_nose
    | LandmarkType_mouthLeft
    | LandmarkType_mouthRight
    | LandmarkType_leftEyeBrowLeft
    | LandmarkType_leftEyeBrowRight
    | LandmarkType_leftEyeBrowUp
    | LandmarkType_rightEyeBrowLeft
    | LandmarkType_rightEyeBrowRight
    | LandmarkType_rightEyeBrowUp
    | LandmarkType_leftEyeLeft
    | LandmarkType_leftEyeRight
    | LandmarkType_leftEyeUp
    | LandmarkType_leftEyeDown
    | LandmarkType_rightEyeLeft
    | LandmarkType_rightEyeRight
    | LandmarkType_rightEyeUp
    | LandmarkType_rightEyeDown
    | LandmarkType_noseLeft
    | LandmarkType_noseRight
    | LandmarkType_mouthUp
    | LandmarkType_mouthDown
    | LandmarkType_leftPupil
    | LandmarkType_rightPupil
    | LandmarkType_upperJawlineLeft
    | LandmarkType_midJawlineLeft
    | LandmarkType_chinBottom
    | LandmarkType_midJawlineRight
    | LandmarkType_upperJawlineRight



landmarkTypeDecoder : JD.Decoder LandmarkType
landmarkTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "eyeLeft" ->
                        JD.succeed LandmarkType_eyeLeft

                    "eyeRight" ->
                        JD.succeed LandmarkType_eyeRight

                    "nose" ->
                        JD.succeed LandmarkType_nose

                    "mouthLeft" ->
                        JD.succeed LandmarkType_mouthLeft

                    "mouthRight" ->
                        JD.succeed LandmarkType_mouthRight

                    "leftEyeBrowLeft" ->
                        JD.succeed LandmarkType_leftEyeBrowLeft

                    "leftEyeBrowRight" ->
                        JD.succeed LandmarkType_leftEyeBrowRight

                    "leftEyeBrowUp" ->
                        JD.succeed LandmarkType_leftEyeBrowUp

                    "rightEyeBrowLeft" ->
                        JD.succeed LandmarkType_rightEyeBrowLeft

                    "rightEyeBrowRight" ->
                        JD.succeed LandmarkType_rightEyeBrowRight

                    "rightEyeBrowUp" ->
                        JD.succeed LandmarkType_rightEyeBrowUp

                    "leftEyeLeft" ->
                        JD.succeed LandmarkType_leftEyeLeft

                    "leftEyeRight" ->
                        JD.succeed LandmarkType_leftEyeRight

                    "leftEyeUp" ->
                        JD.succeed LandmarkType_leftEyeUp

                    "leftEyeDown" ->
                        JD.succeed LandmarkType_leftEyeDown

                    "rightEyeLeft" ->
                        JD.succeed LandmarkType_rightEyeLeft

                    "rightEyeRight" ->
                        JD.succeed LandmarkType_rightEyeRight

                    "rightEyeUp" ->
                        JD.succeed LandmarkType_rightEyeUp

                    "rightEyeDown" ->
                        JD.succeed LandmarkType_rightEyeDown

                    "noseLeft" ->
                        JD.succeed LandmarkType_noseLeft

                    "noseRight" ->
                        JD.succeed LandmarkType_noseRight

                    "mouthUp" ->
                        JD.succeed LandmarkType_mouthUp

                    "mouthDown" ->
                        JD.succeed LandmarkType_mouthDown

                    "leftPupil" ->
                        JD.succeed LandmarkType_leftPupil

                    "rightPupil" ->
                        JD.succeed LandmarkType_rightPupil

                    "upperJawlineLeft" ->
                        JD.succeed LandmarkType_upperJawlineLeft

                    "midJawlineLeft" ->
                        JD.succeed LandmarkType_midJawlineLeft

                    "chinBottom" ->
                        JD.succeed LandmarkType_chinBottom

                    "midJawlineRight" ->
                        JD.succeed LandmarkType_midJawlineRight

                    "upperJawlineRight" ->
                        JD.succeed LandmarkType_upperJawlineRight


                    _ ->
                        JD.fail "bad thing"
            )




landmarkTypeToString : LandmarkType -> String
landmarkTypeToString val =
    case val of
        LandmarkType_eyeLeft ->
            "eyeLeft"

        LandmarkType_eyeRight ->
            "eyeRight"

        LandmarkType_nose ->
            "nose"

        LandmarkType_mouthLeft ->
            "mouthLeft"

        LandmarkType_mouthRight ->
            "mouthRight"

        LandmarkType_leftEyeBrowLeft ->
            "leftEyeBrowLeft"

        LandmarkType_leftEyeBrowRight ->
            "leftEyeBrowRight"

        LandmarkType_leftEyeBrowUp ->
            "leftEyeBrowUp"

        LandmarkType_rightEyeBrowLeft ->
            "rightEyeBrowLeft"

        LandmarkType_rightEyeBrowRight ->
            "rightEyeBrowRight"

        LandmarkType_rightEyeBrowUp ->
            "rightEyeBrowUp"

        LandmarkType_leftEyeLeft ->
            "leftEyeLeft"

        LandmarkType_leftEyeRight ->
            "leftEyeRight"

        LandmarkType_leftEyeUp ->
            "leftEyeUp"

        LandmarkType_leftEyeDown ->
            "leftEyeDown"

        LandmarkType_rightEyeLeft ->
            "rightEyeLeft"

        LandmarkType_rightEyeRight ->
            "rightEyeRight"

        LandmarkType_rightEyeUp ->
            "rightEyeUp"

        LandmarkType_rightEyeDown ->
            "rightEyeDown"

        LandmarkType_noseLeft ->
            "noseLeft"

        LandmarkType_noseRight ->
            "noseRight"

        LandmarkType_mouthUp ->
            "mouthUp"

        LandmarkType_mouthDown ->
            "mouthDown"

        LandmarkType_leftPupil ->
            "leftPupil"

        LandmarkType_rightPupil ->
            "rightPupil"

        LandmarkType_upperJawlineLeft ->
            "upperJawlineLeft"

        LandmarkType_midJawlineLeft ->
            "midJawlineLeft"

        LandmarkType_chinBottom ->
            "chinBottom"

        LandmarkType_midJawlineRight ->
            "midJawlineRight"

        LandmarkType_upperJawlineRight ->
            "upperJawlineRight"




{-| Type of HTTP response from listCollections
-}
type alias ListCollectionsResponse =
    { collectionIds : Maybe (List String)
    , nextToken : Maybe String
    , faceModelVersions : Maybe (List String)
    }



listCollectionsResponseDecoder : JD.Decoder ListCollectionsResponse
listCollectionsResponseDecoder =
    JD.succeed ListCollectionsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CollectionIds", "collectionIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceModelVersions", "faceModelVersions"]
            (JD.list JD.string)
        )
        




listCollectionsResponseToString : ListCollectionsResponse -> String -- List (String, String)
listCollectionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "collectionIds" "" -- val.collectionIds
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "faceModelVersions" "" -- val.faceModelVersions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listFaces
-}
type alias ListFacesResponse =
    { faces : Maybe (List Face)
    , nextToken : Maybe String
    , faceModelVersion : Maybe String
    }



listFacesResponseDecoder : JD.Decoder ListFacesResponse
listFacesResponseDecoder =
    JD.succeed ListFacesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Faces", "faces"]
            (JD.list faceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceModelVersion", "faceModelVersion"]
            JD.string
        )
        




listFacesResponseToString : ListFacesResponse -> String -- List (String, String)
listFacesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "faces" "" -- val.faces
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "faceModelVersion" "" -- val.faceModelVersion
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listStreamProcessors
-}
type alias ListStreamProcessorsResponse =
    { nextToken : Maybe String
    , streamProcessors : Maybe (List StreamProcessor)
    }



listStreamProcessorsResponseDecoder : JD.Decoder ListStreamProcessorsResponse
listStreamProcessorsResponseDecoder =
    JD.succeed ListStreamProcessorsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StreamProcessors", "streamProcessors"]
            (JD.list streamProcessorDecoder)
        )
        




listStreamProcessorsResponseToString : ListStreamProcessorsResponse -> String -- List (String, String)
listStreamProcessorsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "streamProcessors" "" -- val.streamProcessors
        
    --     |> Dict.toList
    ""



{-| <p>Provides information about a single type of moderated content found in an image or video. Each type of moderated content has a label within a hierarchical taxonomy. For more information, see Detecting Unsafe Content in the Amazon Rekognition Developer Guide.</p>
-}
type alias ModerationLabel =
    { confidence : Maybe Float
    , name : Maybe String
    , parentName : Maybe String
    }



moderationLabelDecoder : JD.Decoder ModerationLabel
moderationLabelDecoder =
    JD.succeed ModerationLabel
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParentName", "parentName"]
            JD.string
        )
        




moderationLabelToString : ModerationLabel -> String -- List (String, String)
moderationLabelToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "parentName" "" -- val.parentName
        
    --     |> Dict.toList
    ""



{-| <p>Indicates whether or not the mouth on the face is open, and the confidence level in the determination.</p>
-}
type alias MouthOpen =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



mouthOpenDecoder : JD.Decoder MouthOpen
mouthOpenDecoder =
    JD.succeed MouthOpen
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




mouthOpenToString : MouthOpen -> String -- List (String, String)
mouthOpenToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| <p>Indicates whether or not the face has a mustache, and the confidence level in the determination.</p>
-}
type alias Mustache =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



mustacheDecoder : JD.Decoder Mustache
mustacheDecoder =
    JD.succeed Mustache
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




mustacheToString : Mustache -> String -- List (String, String)
mustacheToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| <p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status of a video analysis operation. For more information, see <a>api-video</a>.</p>
-}
type alias NotificationChannel =
    { sNSTopicArn : String
    , roleArn : String
    }



notificationChannelDecoder : JD.Decoder NotificationChannel
notificationChannelDecoder =
    JD.succeed NotificationChannel
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SNSTopicArn", "sNSTopicArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleArn", "roleArn"]
            JD.string
        )
        




notificationChannelToString : NotificationChannel -> String -- List (String, String)
notificationChannelToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sNSTopicArn" "" -- val.sNSTopicArn
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.toList
    ""



{-| One of

* `OrientationCorrection_ROTATE_0`
* `OrientationCorrection_ROTATE_90`
* `OrientationCorrection_ROTATE_180`
* `OrientationCorrection_ROTATE_270`

-}
type OrientationCorrection
    = OrientationCorrection_ROTATE_0
    | OrientationCorrection_ROTATE_90
    | OrientationCorrection_ROTATE_180
    | OrientationCorrection_ROTATE_270



orientationCorrectionDecoder : JD.Decoder OrientationCorrection
orientationCorrectionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ROTATE_0" ->
                        JD.succeed OrientationCorrection_ROTATE_0

                    "ROTATE_90" ->
                        JD.succeed OrientationCorrection_ROTATE_90

                    "ROTATE_180" ->
                        JD.succeed OrientationCorrection_ROTATE_180

                    "ROTATE_270" ->
                        JD.succeed OrientationCorrection_ROTATE_270


                    _ ->
                        JD.fail "bad thing"
            )




orientationCorrectionToString : OrientationCorrection -> String
orientationCorrectionToString val =
    case val of
        OrientationCorrection_ROTATE_0 ->
            "ROTATE_0"

        OrientationCorrection_ROTATE_90 ->
            "ROTATE_90"

        OrientationCorrection_ROTATE_180 ->
            "ROTATE_180"

        OrientationCorrection_ROTATE_270 ->
            "ROTATE_270"




{-| <p>A parent label for a label. A label can have 0, 1, or more parents. </p>
-}
type alias Parent =
    { name : Maybe String
    }



parentDecoder : JD.Decoder Parent
parentDecoder =
    JD.succeed Parent
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




parentToString : Parent -> String -- List (String, String)
parentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Details about a person detected in a video analysis request.</p>
-}
type alias PersonDetail =
    { index : Maybe Int
    , boundingBox : Maybe BoundingBox
    , face : Maybe FaceDetail
    }



personDetailDecoder : JD.Decoder PersonDetail
personDetailDecoder =
    JD.succeed PersonDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Index", "index"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BoundingBox", "boundingBox"]
            boundingBoxDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Face", "face"]
            faceDetailDecoder
        )
        




personDetailToString : PersonDetail -> String -- List (String, String)
personDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "index" "" -- val.index
        
    --     |> Dict.insert
    --         "boundingBox" "" -- val.boundingBox
        
    --     |> Dict.insert
    --         "face" "" -- val.face
        
    --     |> Dict.toList
    ""



{-| <p>Details and path tracking information for a single time a person's path is tracked in a video. Amazon Rekognition operations that track people's paths return an array of <code>PersonDetection</code> objects with elements for each time a person's path is tracked in a video. </p> <p>For more information, see GetPersonTracking in the Amazon Rekognition Developer Guide. </p>
-}
type alias PersonDetection =
    { timestamp : Maybe Int
    , person : Maybe PersonDetail
    }



personDetectionDecoder : JD.Decoder PersonDetection
personDetectionDecoder =
    JD.succeed PersonDetection
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timestamp", "timestamp"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Person", "person"]
            personDetailDecoder
        )
        




personDetectionToString : PersonDetection -> String -- List (String, String)
personDetectionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "person" "" -- val.person
        
    --     |> Dict.toList
    ""



{-| <p>Information about a person whose face matches a face(s) in an Amazon Rekognition collection. Includes information about the faces in the Amazon Rekognition collection (<a>FaceMatch</a>), information about the person (<a>PersonDetail</a>), and the time stamp for when the person was detected in a video. An array of <code>PersonMatch</code> objects is returned by <a>GetFaceSearch</a>. </p>
-}
type alias PersonMatch =
    { timestamp : Maybe Int
    , person : Maybe PersonDetail
    , faceMatches : Maybe (List FaceMatch)
    }



personMatchDecoder : JD.Decoder PersonMatch
personMatchDecoder =
    JD.succeed PersonMatch
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timestamp", "timestamp"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Person", "person"]
            personDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceMatches", "faceMatches"]
            (JD.list faceMatchDecoder)
        )
        




personMatchToString : PersonMatch -> String -- List (String, String)
personMatchToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "person" "" -- val.person
        
    --     |> Dict.insert
    --         "faceMatches" "" -- val.faceMatches
        
    --     |> Dict.toList
    ""



{-| One of

* `PersonTrackingSortBy_INDEX`
* `PersonTrackingSortBy_TIMESTAMP`

-}
type PersonTrackingSortBy
    = PersonTrackingSortBy_INDEX
    | PersonTrackingSortBy_TIMESTAMP



personTrackingSortByDecoder : JD.Decoder PersonTrackingSortBy
personTrackingSortByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INDEX" ->
                        JD.succeed PersonTrackingSortBy_INDEX

                    "TIMESTAMP" ->
                        JD.succeed PersonTrackingSortBy_TIMESTAMP


                    _ ->
                        JD.fail "bad thing"
            )




personTrackingSortByToString : PersonTrackingSortBy -> String
personTrackingSortByToString val =
    case val of
        PersonTrackingSortBy_INDEX ->
            "INDEX"

        PersonTrackingSortBy_TIMESTAMP ->
            "TIMESTAMP"




{-| <p>The X and Y coordinates of a point on an image. The X and Y values returned are ratios of the overall image size. For example, if the input image is 700x200 and the operation returns X=0.5 and Y=0.25, then the point is at the (350,50) pixel coordinate on the image.</p> <p>An array of <code>Point</code> objects, <code>Polygon</code>, is returned by <a>DetectText</a>. <code>Polygon</code> represents a fine-grained polygon around detected text. For more information, see Geometry in the Amazon Rekognition Developer Guide. </p>
-}
type alias Point =
    { x : Maybe Float
    , y : Maybe Float
    }



pointDecoder : JD.Decoder Point
pointDecoder =
    JD.succeed Point
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["X", "x"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Y", "y"]
            JD.float
        )
        




pointToString : Point -> String -- List (String, String)
pointToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "x" "" -- val.x
        
    --     |> Dict.insert
    --         "y" "" -- val.y
        
    --     |> Dict.toList
    ""



{-| <p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>
-}
type alias Pose =
    { roll : Maybe Float
    , yaw : Maybe Float
    , pitch : Maybe Float
    }



poseDecoder : JD.Decoder Pose
poseDecoder =
    JD.succeed Pose
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Roll", "roll"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Yaw", "yaw"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Pitch", "pitch"]
            JD.float
        )
        




poseToString : Pose -> String -- List (String, String)
poseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roll" "" -- val.roll
        
    --     |> Dict.insert
    --         "yaw" "" -- val.yaw
        
    --     |> Dict.insert
    --         "pitch" "" -- val.pitch
        
    --     |> Dict.toList
    ""



{-| One of

* `QualityFilter_NONE`
* `QualityFilter_AUTO`

-}
type QualityFilter
    = QualityFilter_NONE
    | QualityFilter_AUTO



qualityFilterDecoder : JD.Decoder QualityFilter
qualityFilterDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed QualityFilter_NONE

                    "AUTO" ->
                        JD.succeed QualityFilter_AUTO


                    _ ->
                        JD.fail "bad thing"
            )




qualityFilterToString : QualityFilter -> String
qualityFilterToString val =
    case val of
        QualityFilter_NONE ->
            "NONE"

        QualityFilter_AUTO ->
            "AUTO"




{-| One of

* `Reason_EXCEEDS_MAX_FACES`
* `Reason_EXTREME_POSE`
* `Reason_LOW_BRIGHTNESS`
* `Reason_LOW_SHARPNESS`
* `Reason_LOW_CONFIDENCE`
* `Reason_SMALL_BOUNDING_BOX`

-}
type Reason
    = Reason_EXCEEDS_MAX_FACES
    | Reason_EXTREME_POSE
    | Reason_LOW_BRIGHTNESS
    | Reason_LOW_SHARPNESS
    | Reason_LOW_CONFIDENCE
    | Reason_SMALL_BOUNDING_BOX



reasonDecoder : JD.Decoder Reason
reasonDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EXCEEDS_MAX_FACES" ->
                        JD.succeed Reason_EXCEEDS_MAX_FACES

                    "EXTREME_POSE" ->
                        JD.succeed Reason_EXTREME_POSE

                    "LOW_BRIGHTNESS" ->
                        JD.succeed Reason_LOW_BRIGHTNESS

                    "LOW_SHARPNESS" ->
                        JD.succeed Reason_LOW_SHARPNESS

                    "LOW_CONFIDENCE" ->
                        JD.succeed Reason_LOW_CONFIDENCE

                    "SMALL_BOUNDING_BOX" ->
                        JD.succeed Reason_SMALL_BOUNDING_BOX


                    _ ->
                        JD.fail "bad thing"
            )




reasonToString : Reason -> String
reasonToString val =
    case val of
        Reason_EXCEEDS_MAX_FACES ->
            "EXCEEDS_MAX_FACES"

        Reason_EXTREME_POSE ->
            "EXTREME_POSE"

        Reason_LOW_BRIGHTNESS ->
            "LOW_BRIGHTNESS"

        Reason_LOW_SHARPNESS ->
            "LOW_SHARPNESS"

        Reason_LOW_CONFIDENCE ->
            "LOW_CONFIDENCE"

        Reason_SMALL_BOUNDING_BOX ->
            "SMALL_BOUNDING_BOX"




{-| Type of HTTP response from recognizeCelebrities
-}
type alias RecognizeCelebritiesResponse =
    { celebrityFaces : Maybe (List Celebrity)
    , unrecognizedFaces : Maybe (List ComparedFace)
    , orientationCorrection : Maybe OrientationCorrection
    }



recognizeCelebritiesResponseDecoder : JD.Decoder RecognizeCelebritiesResponse
recognizeCelebritiesResponseDecoder =
    JD.succeed RecognizeCelebritiesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CelebrityFaces", "celebrityFaces"]
            (JD.list celebrityDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UnrecognizedFaces", "unrecognizedFaces"]
            (JD.list comparedFaceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OrientationCorrection", "orientationCorrection"]
            orientationCorrectionDecoder
        )
        




recognizeCelebritiesResponseToString : RecognizeCelebritiesResponse -> String -- List (String, String)
recognizeCelebritiesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "celebrityFaces" "" -- val.celebrityFaces
        
    --     |> Dict.insert
    --         "unrecognizedFaces" "" -- val.unrecognizedFaces
        
    --     |> Dict.insert
    --         "orientationCorrection" "" -- val.orientationCorrection
        
    --     |> Dict.toList
    ""



{-| <p>Provides the S3 bucket name and object name.</p> <p>The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.</p> <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see Resource-Based Policies in the Amazon Rekognition Developer Guide. </p>
-}
type alias S3Object =
    { bucket : Maybe String
    , name : Maybe String
    , version : Maybe String
    }



s3ObjectDecoder : JD.Decoder S3Object
s3ObjectDecoder =
    JD.succeed S3Object
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Bucket", "bucket"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        




s3ObjectToString : S3Object -> String -- List (String, String)
s3ObjectToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bucket" "" -- val.bucket
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from searchFacesByImage
-}
type alias SearchFacesByImageResponse =
    { searchedFaceBoundingBox : Maybe BoundingBox
    , searchedFaceConfidence : Maybe Float
    , faceMatches : Maybe (List FaceMatch)
    , faceModelVersion : Maybe String
    }



searchFacesByImageResponseDecoder : JD.Decoder SearchFacesByImageResponse
searchFacesByImageResponseDecoder =
    JD.succeed SearchFacesByImageResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchedFaceBoundingBox", "searchedFaceBoundingBox"]
            boundingBoxDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchedFaceConfidence", "searchedFaceConfidence"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceMatches", "faceMatches"]
            (JD.list faceMatchDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceModelVersion", "faceModelVersion"]
            JD.string
        )
        




searchFacesByImageResponseToString : SearchFacesByImageResponse -> String -- List (String, String)
searchFacesByImageResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "searchedFaceBoundingBox" "" -- val.searchedFaceBoundingBox
        
    --     |> Dict.insert
    --         "searchedFaceConfidence" "" -- val.searchedFaceConfidence
        
    --     |> Dict.insert
    --         "faceMatches" "" -- val.faceMatches
        
    --     |> Dict.insert
    --         "faceModelVersion" "" -- val.faceModelVersion
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from searchFaces
-}
type alias SearchFacesResponse =
    { searchedFaceId : Maybe String
    , faceMatches : Maybe (List FaceMatch)
    , faceModelVersion : Maybe String
    }



searchFacesResponseDecoder : JD.Decoder SearchFacesResponse
searchFacesResponseDecoder =
    JD.succeed SearchFacesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchedFaceId", "searchedFaceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceMatches", "faceMatches"]
            (JD.list faceMatchDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceModelVersion", "faceModelVersion"]
            JD.string
        )
        




searchFacesResponseToString : SearchFacesResponse -> String -- List (String, String)
searchFacesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "searchedFaceId" "" -- val.searchedFaceId
        
    --     |> Dict.insert
    --         "faceMatches" "" -- val.faceMatches
        
    --     |> Dict.insert
    --         "faceModelVersion" "" -- val.faceModelVersion
        
    --     |> Dict.toList
    ""



{-| <p>Indicates whether or not the face is smiling, and the confidence level in the determination.</p>
-}
type alias Smile =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



smileDecoder : JD.Decoder Smile
smileDecoder =
    JD.succeed Smile
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




smileToString : Smile -> String -- List (String, String)
smileToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startCelebrityRecognition
-}
type alias StartCelebrityRecognitionResponse =
    { jobId : Maybe String
    }



startCelebrityRecognitionResponseDecoder : JD.Decoder StartCelebrityRecognitionResponse
startCelebrityRecognitionResponseDecoder =
    JD.succeed StartCelebrityRecognitionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobId", "jobId"]
            JD.string
        )
        




startCelebrityRecognitionResponseToString : StartCelebrityRecognitionResponse -> String -- List (String, String)
startCelebrityRecognitionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobId" "" -- val.jobId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startContentModeration
-}
type alias StartContentModerationResponse =
    { jobId : Maybe String
    }



startContentModerationResponseDecoder : JD.Decoder StartContentModerationResponse
startContentModerationResponseDecoder =
    JD.succeed StartContentModerationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobId", "jobId"]
            JD.string
        )
        




startContentModerationResponseToString : StartContentModerationResponse -> String -- List (String, String)
startContentModerationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobId" "" -- val.jobId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startFaceDetection
-}
type alias StartFaceDetectionResponse =
    { jobId : Maybe String
    }



startFaceDetectionResponseDecoder : JD.Decoder StartFaceDetectionResponse
startFaceDetectionResponseDecoder =
    JD.succeed StartFaceDetectionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobId", "jobId"]
            JD.string
        )
        




startFaceDetectionResponseToString : StartFaceDetectionResponse -> String -- List (String, String)
startFaceDetectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobId" "" -- val.jobId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startFaceSearch
-}
type alias StartFaceSearchResponse =
    { jobId : Maybe String
    }



startFaceSearchResponseDecoder : JD.Decoder StartFaceSearchResponse
startFaceSearchResponseDecoder =
    JD.succeed StartFaceSearchResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobId", "jobId"]
            JD.string
        )
        




startFaceSearchResponseToString : StartFaceSearchResponse -> String -- List (String, String)
startFaceSearchResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobId" "" -- val.jobId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startLabelDetection
-}
type alias StartLabelDetectionResponse =
    { jobId : Maybe String
    }



startLabelDetectionResponseDecoder : JD.Decoder StartLabelDetectionResponse
startLabelDetectionResponseDecoder =
    JD.succeed StartLabelDetectionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobId", "jobId"]
            JD.string
        )
        




startLabelDetectionResponseToString : StartLabelDetectionResponse -> String -- List (String, String)
startLabelDetectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobId" "" -- val.jobId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startPersonTracking
-}
type alias StartPersonTrackingResponse =
    { jobId : Maybe String
    }



startPersonTrackingResponseDecoder : JD.Decoder StartPersonTrackingResponse
startPersonTrackingResponseDecoder =
    JD.succeed StartPersonTrackingResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobId", "jobId"]
            JD.string
        )
        




startPersonTrackingResponseToString : StartPersonTrackingResponse -> String -- List (String, String)
startPersonTrackingResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobId" "" -- val.jobId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startStreamProcessor
-}
type alias StartStreamProcessorResponse =
    { 
    }



startStreamProcessorResponseDecoder : JD.Decoder StartStreamProcessorResponse
startStreamProcessorResponseDecoder =
    JD.succeed StartStreamProcessorResponse
        




startStreamProcessorResponseToString : StartStreamProcessorResponse -> String -- List (String, String)
startStreamProcessorResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopStreamProcessor
-}
type alias StopStreamProcessorResponse =
    { 
    }



stopStreamProcessorResponseDecoder : JD.Decoder StopStreamProcessorResponse
stopStreamProcessorResponseDecoder =
    JD.succeed StopStreamProcessorResponse
        




stopStreamProcessorResponseToString : StopStreamProcessorResponse -> String -- List (String, String)
stopStreamProcessorResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>An object that recognizes faces in a streaming video. An Amazon Rekognition stream processor is created by a call to <a>CreateStreamProcessor</a>. The request parameters for <code>CreateStreamProcessor</code> describe the Kinesis video stream source for the streaming video, face recognition parameters, and where to stream the analysis resullts. </p>
-}
type alias StreamProcessor =
    { name : Maybe String
    , status : Maybe StreamProcessorStatus
    }



streamProcessorDecoder : JD.Decoder StreamProcessor
streamProcessorDecoder =
    JD.succeed StreamProcessor
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            streamProcessorStatusDecoder
        )
        




streamProcessorToString : StreamProcessor -> String -- List (String, String)
streamProcessorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p>Information about the source streaming video. </p>
-}
type alias StreamProcessorInput =
    { kinesisVideoStream : Maybe KinesisVideoStream
    }



streamProcessorInputDecoder : JD.Decoder StreamProcessorInput
streamProcessorInputDecoder =
    JD.succeed StreamProcessorInput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisVideoStream", "kinesisVideoStream"]
            kinesisVideoStreamDecoder
        )
        




streamProcessorInputToString : StreamProcessorInput -> String -- List (String, String)
streamProcessorInputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "kinesisVideoStream" "" -- val.kinesisVideoStream
        
    --     |> Dict.toList
    ""



{-| <p>Information about the Amazon Kinesis Data Streams stream to which a Amazon Rekognition Video stream processor streams the results of a video analysis. For more information, see CreateStreamProcessor in the Amazon Rekognition Developer Guide.</p>
-}
type alias StreamProcessorOutput =
    { kinesisDataStream : Maybe KinesisDataStream
    }



streamProcessorOutputDecoder : JD.Decoder StreamProcessorOutput
streamProcessorOutputDecoder =
    JD.succeed StreamProcessorOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisDataStream", "kinesisDataStream"]
            kinesisDataStreamDecoder
        )
        




streamProcessorOutputToString : StreamProcessorOutput -> String -- List (String, String)
streamProcessorOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "kinesisDataStream" "" -- val.kinesisDataStream
        
    --     |> Dict.toList
    ""



{-| <p>Input parameters used to recognize faces in a streaming video analyzed by a Amazon Rekognition stream processor.</p>
-}
type alias StreamProcessorSettings =
    { faceSearch : Maybe FaceSearchSettings
    }



streamProcessorSettingsDecoder : JD.Decoder StreamProcessorSettings
streamProcessorSettingsDecoder =
    JD.succeed StreamProcessorSettings
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceSearch", "faceSearch"]
            faceSearchSettingsDecoder
        )
        




streamProcessorSettingsToString : StreamProcessorSettings -> String -- List (String, String)
streamProcessorSettingsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "faceSearch" "" -- val.faceSearch
        
    --     |> Dict.toList
    ""



{-| One of

* `StreamProcessorStatus_STOPPED`
* `StreamProcessorStatus_STARTING`
* `StreamProcessorStatus_RUNNING`
* `StreamProcessorStatus_FAILED`
* `StreamProcessorStatus_STOPPING`

-}
type StreamProcessorStatus
    = StreamProcessorStatus_STOPPED
    | StreamProcessorStatus_STARTING
    | StreamProcessorStatus_RUNNING
    | StreamProcessorStatus_FAILED
    | StreamProcessorStatus_STOPPING



streamProcessorStatusDecoder : JD.Decoder StreamProcessorStatus
streamProcessorStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STOPPED" ->
                        JD.succeed StreamProcessorStatus_STOPPED

                    "STARTING" ->
                        JD.succeed StreamProcessorStatus_STARTING

                    "RUNNING" ->
                        JD.succeed StreamProcessorStatus_RUNNING

                    "FAILED" ->
                        JD.succeed StreamProcessorStatus_FAILED

                    "STOPPING" ->
                        JD.succeed StreamProcessorStatus_STOPPING


                    _ ->
                        JD.fail "bad thing"
            )




streamProcessorStatusToString : StreamProcessorStatus -> String
streamProcessorStatusToString val =
    case val of
        StreamProcessorStatus_STOPPED ->
            "STOPPED"

        StreamProcessorStatus_STARTING ->
            "STARTING"

        StreamProcessorStatus_RUNNING ->
            "RUNNING"

        StreamProcessorStatus_FAILED ->
            "FAILED"

        StreamProcessorStatus_STOPPING ->
            "STOPPING"




{-| <p>Indicates whether or not the face is wearing sunglasses, and the confidence level in the determination.</p>
-}
type alias Sunglasses =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



sunglassesDecoder : JD.Decoder Sunglasses
sunglassesDecoder =
    JD.succeed Sunglasses
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        




sunglassesToString : Sunglasses -> String -- List (String, String)
sunglassesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.toList
    ""



{-| <p>Information about a word or line of text detected by <a>DetectText</a>.</p> <p>The <code>DetectedText</code> field contains the text that Amazon Rekognition detected in the image. </p> <p>Every word and line has an identifier (<code>Id</code>). Each word belongs to a line and has a parent identifier (<code>ParentId</code>) that identifies the line of text in which the word appears. The word <code>Id</code> is also an index for the word within a line of words. </p> <p>For more information, see Detecting Text in the Amazon Rekognition Developer Guide.</p>
-}
type alias TextDetection =
    { detectedText : Maybe String
    , type_ : Maybe TextTypes
    , id : Maybe Int
    , parentId : Maybe Int
    , confidence : Maybe Float
    , geometry : Maybe Geometry
    }



textDetectionDecoder : JD.Decoder TextDetection
textDetectionDecoder =
    JD.succeed TextDetection
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DetectedText", "detectedText"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            textTypesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParentId", "parentId"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Confidence", "confidence"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Geometry", "geometry"]
            geometryDecoder
        )
        




textDetectionToString : TextDetection -> String -- List (String, String)
textDetectionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "detectedText" "" -- val.detectedText
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "parentId" "" -- val.parentId
        
    --     |> Dict.insert
    --         "confidence" "" -- val.confidence
        
    --     |> Dict.insert
    --         "geometry" "" -- val.geometry
        
    --     |> Dict.toList
    ""



{-| One of

* `TextTypes_LINE`
* `TextTypes_WORD`

-}
type TextTypes
    = TextTypes_LINE
    | TextTypes_WORD



textTypesDecoder : JD.Decoder TextTypes
textTypesDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "LINE" ->
                        JD.succeed TextTypes_LINE

                    "WORD" ->
                        JD.succeed TextTypes_WORD


                    _ ->
                        JD.fail "bad thing"
            )




textTypesToString : TextTypes -> String
textTypesToString val =
    case val of
        TextTypes_LINE ->
            "LINE"

        TextTypes_WORD ->
            "WORD"




{-| <p>A face that <a>IndexFaces</a> detected, but didn't index. Use the <code>Reasons</code> response attribute to determine why a face wasn't indexed.</p>
-}
type alias UnindexedFace =
    { reasons : Maybe (List Reason)
    , faceDetail : Maybe FaceDetail
    }



unindexedFaceDecoder : JD.Decoder UnindexedFace
unindexedFaceDecoder =
    JD.succeed UnindexedFace
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Reasons", "reasons"]
            (JD.list reasonDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FaceDetail", "faceDetail"]
            faceDetailDecoder
        )
        




unindexedFaceToString : UnindexedFace -> String -- List (String, String)
unindexedFaceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "reasons" "" -- val.reasons
        
    --     |> Dict.insert
    --         "faceDetail" "" -- val.faceDetail
        
    --     |> Dict.toList
    ""



{-| <p>Video file stored in an Amazon S3 bucket. Amazon Rekognition video start operations such as <a>StartLabelDetection</a> use <code>Video</code> to specify a video for analysis. The supported file formats are .mp4, .mov and .avi.</p>
-}
type alias Video =
    { s3Object : Maybe S3Object
    }



videoDecoder : JD.Decoder Video
videoDecoder =
    JD.succeed Video
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3Object", "s3Object"]
            s3ObjectDecoder
        )
        




videoToString : Video -> String -- List (String, String)
videoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3Object" "" -- val.s3Object
        
    --     |> Dict.toList
    ""



{-| One of

* `VideoJobStatus_IN_PROGRESS`
* `VideoJobStatus_SUCCEEDED`
* `VideoJobStatus_FAILED`

-}
type VideoJobStatus
    = VideoJobStatus_IN_PROGRESS
    | VideoJobStatus_SUCCEEDED
    | VideoJobStatus_FAILED



videoJobStatusDecoder : JD.Decoder VideoJobStatus
videoJobStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IN_PROGRESS" ->
                        JD.succeed VideoJobStatus_IN_PROGRESS

                    "SUCCEEDED" ->
                        JD.succeed VideoJobStatus_SUCCEEDED

                    "FAILED" ->
                        JD.succeed VideoJobStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




videoJobStatusToString : VideoJobStatus -> String
videoJobStatusToString val =
    case val of
        VideoJobStatus_IN_PROGRESS ->
            "IN_PROGRESS"

        VideoJobStatus_SUCCEEDED ->
            "SUCCEEDED"

        VideoJobStatus_FAILED ->
            "FAILED"




{-| <p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code> is returned in every page of paginated responses from a Amazon Rekognition video operation.</p>
-}
type alias VideoMetadata =
    { codec : Maybe String
    , durationMillis : Maybe Int
    , format : Maybe String
    , frameRate : Maybe Float
    , frameHeight : Maybe Int
    , frameWidth : Maybe Int
    }



videoMetadataDecoder : JD.Decoder VideoMetadata
videoMetadataDecoder =
    JD.succeed VideoMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Codec", "codec"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DurationMillis", "durationMillis"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Format", "format"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FrameRate", "frameRate"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FrameHeight", "frameHeight"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FrameWidth", "frameWidth"]
            JD.int
        )
        




videoMetadataToString : VideoMetadata -> String -- List (String, String)
videoMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "codec" "" -- val.codec
        
    --     |> Dict.insert
    --         "durationMillis" "" -- val.durationMillis
        
    --     |> Dict.insert
    --         "format" "" -- val.format
        
    --     |> Dict.insert
    --         "frameRate" "" -- val.frameRate
        
    --     |> Dict.insert
    --         "frameHeight" "" -- val.frameHeight
        
    --     |> Dict.insert
    --         "frameWidth" "" -- val.frameWidth
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias CompareFacesRequest =
    { sourceImage : Image
    , targetImage : Image
    , similarityThreshold : Maybe Float
    }


{-| undefined
-}
type alias CreateCollectionRequest =
    { collectionId : String
    }


{-| undefined
-}
type alias CreateStreamProcessorRequest =
    { input : StreamProcessorInput
    , output : StreamProcessorOutput
    , name : String
    , settings : StreamProcessorSettings
    , roleArn : String
    }


{-| undefined
-}
type alias DeleteCollectionRequest =
    { collectionId : String
    }


{-| undefined
-}
type alias DeleteFacesRequest =
    { collectionId : String
    , faceIds : (List String)
    }


{-| undefined
-}
type alias DeleteStreamProcessorRequest =
    { name : String
    }


{-| undefined
-}
type alias DescribeCollectionRequest =
    { collectionId : String
    }


{-| undefined
-}
type alias DescribeStreamProcessorRequest =
    { name : String
    }


{-| undefined
-}
type alias DetectFacesRequest =
    { image : Image
    , attributes : Maybe (List Attribute)
    }


{-| undefined
-}
type alias DetectLabelsRequest =
    { image : Image
    , maxLabels : Maybe Int
    , minConfidence : Maybe Float
    }


{-| undefined
-}
type alias DetectModerationLabelsRequest =
    { image : Image
    , minConfidence : Maybe Float
    }


{-| undefined
-}
type alias DetectTextRequest =
    { image : Image
    }


{-| undefined
-}
type alias GetCelebrityInfoRequest =
    { id : String
    }


{-| undefined
-}
type alias GetCelebrityRecognitionRequest =
    { jobId : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    , sortBy : Maybe CelebrityRecognitionSortBy
    }


{-| undefined
-}
type alias GetContentModerationRequest =
    { jobId : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    , sortBy : Maybe ContentModerationSortBy
    }


{-| undefined
-}
type alias GetFaceDetectionRequest =
    { jobId : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetFaceSearchRequest =
    { jobId : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    , sortBy : Maybe FaceSearchSortBy
    }


{-| undefined
-}
type alias GetLabelDetectionRequest =
    { jobId : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    , sortBy : Maybe LabelDetectionSortBy
    }


{-| undefined
-}
type alias GetPersonTrackingRequest =
    { jobId : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    , sortBy : Maybe PersonTrackingSortBy
    }


{-| undefined
-}
type alias IndexFacesRequest =
    { collectionId : String
    , image : Image
    , externalImageId : Maybe String
    , detectionAttributes : Maybe (List Attribute)
    , maxFaces : Maybe Int
    , qualityFilter : Maybe QualityFilter
    }


{-| undefined
-}
type alias ListCollectionsRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListFacesRequest =
    { collectionId : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListStreamProcessorsRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias RecognizeCelebritiesRequest =
    { image : Image
    }


{-| undefined
-}
type alias SearchFacesByImageRequest =
    { collectionId : String
    , image : Image
    , maxFaces : Maybe Int
    , faceMatchThreshold : Maybe Float
    }


{-| undefined
-}
type alias SearchFacesRequest =
    { collectionId : String
    , faceId : String
    , maxFaces : Maybe Int
    , faceMatchThreshold : Maybe Float
    }


{-| undefined
-}
type alias StartCelebrityRecognitionRequest =
    { video : Video
    , clientRequestToken : Maybe String
    , notificationChannel : Maybe NotificationChannel
    , jobTag : Maybe String
    }


{-| undefined
-}
type alias StartContentModerationRequest =
    { video : Video
    , minConfidence : Maybe Float
    , clientRequestToken : Maybe String
    , notificationChannel : Maybe NotificationChannel
    , jobTag : Maybe String
    }


{-| undefined
-}
type alias StartFaceDetectionRequest =
    { video : Video
    , clientRequestToken : Maybe String
    , notificationChannel : Maybe NotificationChannel
    , faceAttributes : Maybe FaceAttributes
    , jobTag : Maybe String
    }


{-| undefined
-}
type alias StartFaceSearchRequest =
    { video : Video
    , clientRequestToken : Maybe String
    , faceMatchThreshold : Maybe Float
    , collectionId : String
    , notificationChannel : Maybe NotificationChannel
    , jobTag : Maybe String
    }


{-| undefined
-}
type alias StartLabelDetectionRequest =
    { video : Video
    , clientRequestToken : Maybe String
    , minConfidence : Maybe Float
    , notificationChannel : Maybe NotificationChannel
    , jobTag : Maybe String
    }


{-| undefined
-}
type alias StartPersonTrackingRequest =
    { video : Video
    , clientRequestToken : Maybe String
    , notificationChannel : Maybe NotificationChannel
    , jobTag : Maybe String
    }


{-| undefined
-}
type alias StartStreamProcessorRequest =
    { name : String
    }


{-| undefined
-}
type alias StopStreamProcessorRequest =
    { name : String
    }






ageRangeEncoder : AgeRange -> JE.Value
ageRangeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Low", data.low)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("High", data.high)
        
        
        |> JE.object










beardEncoder : Beard -> JE.Value
beardEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object






boundingBoxEncoder : BoundingBox -> JE.Value
boundingBoxEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Width", data.width)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Height", data.height)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Left", data.left)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Top", data.top)
        
        
        |> JE.object






celebrityEncoder : Celebrity -> JE.Value
celebrityEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Urls", data.urls)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (comparedFaceEncoder)
            ("Face", data.face)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MatchConfidence", data.matchConfidence)
        
        
        |> JE.object






celebrityDetailEncoder : CelebrityDetail -> JE.Value
celebrityDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Urls", data.urls)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (boundingBoxEncoder)
            ("BoundingBox", data.boundingBox)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (faceDetailEncoder)
            ("Face", data.face)
        
        
        |> JE.object






celebrityRecognitionEncoder : CelebrityRecognition -> JE.Value
celebrityRecognitionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Timestamp", data.timestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (celebrityDetailEncoder)
            ("Celebrity", data.celebrity)
        
        
        |> JE.object










compareFacesMatchEncoder : CompareFacesMatch -> JE.Value
compareFacesMatchEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Similarity", data.similarity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (comparedFaceEncoder)
            ("Face", data.face)
        
        
        |> JE.object






compareFacesRequestEncoder : CompareFacesRequest -> JE.Value
compareFacesRequestEncoder data =
    []
        
        
        |> (::) ("SourceImage", data.sourceImage |> (imageEncoder))
        
        
        
        |> (::) ("TargetImage", data.targetImage |> (imageEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("SimilarityThreshold", data.similarityThreshold)
        
        
        |> JE.object






compareFacesResponseEncoder : CompareFacesResponse -> JE.Value
compareFacesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (comparedSourceImageFaceEncoder)
            ("SourceImageFace", data.sourceImageFace)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (compareFacesMatchEncoder))
            ("FaceMatches", data.faceMatches)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (comparedFaceEncoder))
            ("UnmatchedFaces", data.unmatchedFaces)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (orientationCorrectionToString >> JE.string)
            ("SourceImageOrientationCorrection", data.sourceImageOrientationCorrection)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (orientationCorrectionToString >> JE.string)
            ("TargetImageOrientationCorrection", data.targetImageOrientationCorrection)
        
        
        |> JE.object






comparedFaceEncoder : ComparedFace -> JE.Value
comparedFaceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (boundingBoxEncoder)
            ("BoundingBox", data.boundingBox)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (landmarkEncoder))
            ("Landmarks", data.landmarks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (poseEncoder)
            ("Pose", data.pose)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imageQualityEncoder)
            ("Quality", data.quality)
        
        
        |> JE.object






comparedSourceImageFaceEncoder : ComparedSourceImageFace -> JE.Value
comparedSourceImageFaceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (boundingBoxEncoder)
            ("BoundingBox", data.boundingBox)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object






contentModerationDetectionEncoder : ContentModerationDetection -> JE.Value
contentModerationDetectionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Timestamp", data.timestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (moderationLabelEncoder)
            ("ModerationLabel", data.moderationLabel)
        
        
        |> JE.object










createCollectionRequestEncoder : CreateCollectionRequest -> JE.Value
createCollectionRequestEncoder data =
    []
        
        
        |> (::) ("CollectionId", data.collectionId |> (JE.string))
        
        
        |> JE.object






createCollectionResponseEncoder : CreateCollectionResponse -> JE.Value
createCollectionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StatusCode", data.statusCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CollectionArn", data.collectionArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FaceModelVersion", data.faceModelVersion)
        
        
        |> JE.object






createStreamProcessorRequestEncoder : CreateStreamProcessorRequest -> JE.Value
createStreamProcessorRequestEncoder data =
    []
        
        
        |> (::) ("Input", data.input |> (streamProcessorInputEncoder))
        
        
        
        |> (::) ("Output", data.output |> (streamProcessorOutputEncoder))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Settings", data.settings |> (streamProcessorSettingsEncoder))
        
        
        
        |> (::) ("RoleArn", data.roleArn |> (JE.string))
        
        
        |> JE.object






createStreamProcessorResponseEncoder : CreateStreamProcessorResponse -> JE.Value
createStreamProcessorResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StreamProcessorArn", data.streamProcessorArn)
        
        
        |> JE.object






deleteCollectionRequestEncoder : DeleteCollectionRequest -> JE.Value
deleteCollectionRequestEncoder data =
    []
        
        
        |> (::) ("CollectionId", data.collectionId |> (JE.string))
        
        
        |> JE.object






deleteCollectionResponseEncoder : DeleteCollectionResponse -> JE.Value
deleteCollectionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StatusCode", data.statusCode)
        
        
        |> JE.object






deleteFacesRequestEncoder : DeleteFacesRequest -> JE.Value
deleteFacesRequestEncoder data =
    []
        
        
        |> (::) ("CollectionId", data.collectionId |> (JE.string))
        
        
        
        |> (::) ("FaceIds", data.faceIds |> (JE.list (JE.string)))
        
        
        |> JE.object






deleteFacesResponseEncoder : DeleteFacesResponse -> JE.Value
deleteFacesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("DeletedFaces", data.deletedFaces)
        
        
        |> JE.object






deleteStreamProcessorRequestEncoder : DeleteStreamProcessorRequest -> JE.Value
deleteStreamProcessorRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteStreamProcessorResponseEncoder : DeleteStreamProcessorResponse -> JE.Value
deleteStreamProcessorResponseEncoder data =
    []
        
        |> JE.object






describeCollectionRequestEncoder : DescribeCollectionRequest -> JE.Value
describeCollectionRequestEncoder data =
    []
        
        
        |> (::) ("CollectionId", data.collectionId |> (JE.string))
        
        
        |> JE.object






describeCollectionResponseEncoder : DescribeCollectionResponse -> JE.Value
describeCollectionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("FaceCount", data.faceCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FaceModelVersion", data.faceModelVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CollectionARN", data.collectionARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTimestamp", data.creationTimestamp)
        
        
        |> JE.object






describeStreamProcessorRequestEncoder : DescribeStreamProcessorRequest -> JE.Value
describeStreamProcessorRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






describeStreamProcessorResponseEncoder : DescribeStreamProcessorResponse -> JE.Value
describeStreamProcessorResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StreamProcessorArn", data.streamProcessorArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (streamProcessorStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTimestamp", data.creationTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdateTimestamp", data.lastUpdateTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (streamProcessorInputEncoder)
            ("Input", data.input)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (streamProcessorOutputEncoder)
            ("Output", data.output)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (streamProcessorSettingsEncoder)
            ("Settings", data.settings)
        
        
        |> JE.object






detectFacesRequestEncoder : DetectFacesRequest -> JE.Value
detectFacesRequestEncoder data =
    []
        
        
        |> (::) ("Image", data.image |> (imageEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeToString >> JE.string))
            ("Attributes", data.attributes)
        
        
        |> JE.object






detectFacesResponseEncoder : DetectFacesResponse -> JE.Value
detectFacesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (faceDetailEncoder))
            ("FaceDetails", data.faceDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (orientationCorrectionToString >> JE.string)
            ("OrientationCorrection", data.orientationCorrection)
        
        
        |> JE.object






detectLabelsRequestEncoder : DetectLabelsRequest -> JE.Value
detectLabelsRequestEncoder data =
    []
        
        
        |> (::) ("Image", data.image |> (imageEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxLabels", data.maxLabels)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MinConfidence", data.minConfidence)
        
        
        |> JE.object






detectLabelsResponseEncoder : DetectLabelsResponse -> JE.Value
detectLabelsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (labelEncoder))
            ("Labels", data.labels)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (orientationCorrectionToString >> JE.string)
            ("OrientationCorrection", data.orientationCorrection)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LabelModelVersion", data.labelModelVersion)
        
        
        |> JE.object






detectModerationLabelsRequestEncoder : DetectModerationLabelsRequest -> JE.Value
detectModerationLabelsRequestEncoder data =
    []
        
        
        |> (::) ("Image", data.image |> (imageEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MinConfidence", data.minConfidence)
        
        
        |> JE.object






detectModerationLabelsResponseEncoder : DetectModerationLabelsResponse -> JE.Value
detectModerationLabelsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (moderationLabelEncoder))
            ("ModerationLabels", data.moderationLabels)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ModerationModelVersion", data.moderationModelVersion)
        
        
        |> JE.object






detectTextRequestEncoder : DetectTextRequest -> JE.Value
detectTextRequestEncoder data =
    []
        
        
        |> (::) ("Image", data.image |> (imageEncoder))
        
        
        |> JE.object






detectTextResponseEncoder : DetectTextResponse -> JE.Value
detectTextResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (textDetectionEncoder))
            ("TextDetections", data.textDetections)
        
        
        |> JE.object






emotionEncoder : Emotion -> JE.Value
emotionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (emotionNameToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object










eyeOpenEncoder : EyeOpen -> JE.Value
eyeOpenEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object






eyeglassesEncoder : Eyeglasses -> JE.Value
eyeglassesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object






faceEncoder : Face -> JE.Value
faceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FaceId", data.faceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (boundingBoxEncoder)
            ("BoundingBox", data.boundingBox)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageId", data.imageId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExternalImageId", data.externalImageId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object










faceDetailEncoder : FaceDetail -> JE.Value
faceDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (boundingBoxEncoder)
            ("BoundingBox", data.boundingBox)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (ageRangeEncoder)
            ("AgeRange", data.ageRange)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (smileEncoder)
            ("Smile", data.smile)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eyeglassesEncoder)
            ("Eyeglasses", data.eyeglasses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sunglassesEncoder)
            ("Sunglasses", data.sunglasses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (genderEncoder)
            ("Gender", data.gender)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (beardEncoder)
            ("Beard", data.beard)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (mustacheEncoder)
            ("Mustache", data.mustache)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eyeOpenEncoder)
            ("EyesOpen", data.eyesOpen)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (mouthOpenEncoder)
            ("MouthOpen", data.mouthOpen)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (emotionEncoder))
            ("Emotions", data.emotions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (landmarkEncoder))
            ("Landmarks", data.landmarks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (poseEncoder)
            ("Pose", data.pose)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imageQualityEncoder)
            ("Quality", data.quality)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object






faceDetectionEncoder : FaceDetection -> JE.Value
faceDetectionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Timestamp", data.timestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (faceDetailEncoder)
            ("Face", data.face)
        
        
        |> JE.object






faceMatchEncoder : FaceMatch -> JE.Value
faceMatchEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Similarity", data.similarity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (faceEncoder)
            ("Face", data.face)
        
        
        |> JE.object






faceRecordEncoder : FaceRecord -> JE.Value
faceRecordEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (faceEncoder)
            ("Face", data.face)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (faceDetailEncoder)
            ("FaceDetail", data.faceDetail)
        
        
        |> JE.object






faceSearchSettingsEncoder : FaceSearchSettings -> JE.Value
faceSearchSettingsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CollectionId", data.collectionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("FaceMatchThreshold", data.faceMatchThreshold)
        
        
        |> JE.object










genderEncoder : Gender -> JE.Value
genderEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (genderTypeToString >> JE.string)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object










geometryEncoder : Geometry -> JE.Value
geometryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (boundingBoxEncoder)
            ("BoundingBox", data.boundingBox)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (pointEncoder))
            ("Polygon", data.polygon)
        
        
        |> JE.object






getCelebrityInfoRequestEncoder : GetCelebrityInfoRequest -> JE.Value
getCelebrityInfoRequestEncoder data =
    []
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        |> JE.object






getCelebrityInfoResponseEncoder : GetCelebrityInfoResponse -> JE.Value
getCelebrityInfoResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Urls", data.urls)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






getCelebrityRecognitionRequestEncoder : GetCelebrityRecognitionRequest -> JE.Value
getCelebrityRecognitionRequestEncoder data =
    []
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (celebrityRecognitionSortByToString >> JE.string)
            ("SortBy", data.sortBy)
        
        
        |> JE.object






getCelebrityRecognitionResponseEncoder : GetCelebrityRecognitionResponse -> JE.Value
getCelebrityRecognitionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (videoJobStatusToString >> JE.string)
            ("JobStatus", data.jobStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (videoMetadataEncoder)
            ("VideoMetadata", data.videoMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (celebrityRecognitionEncoder))
            ("Celebrities", data.celebrities)
        
        
        |> JE.object






getContentModerationRequestEncoder : GetContentModerationRequest -> JE.Value
getContentModerationRequestEncoder data =
    []
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (contentModerationSortByToString >> JE.string)
            ("SortBy", data.sortBy)
        
        
        |> JE.object






getContentModerationResponseEncoder : GetContentModerationResponse -> JE.Value
getContentModerationResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (videoJobStatusToString >> JE.string)
            ("JobStatus", data.jobStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (videoMetadataEncoder)
            ("VideoMetadata", data.videoMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (contentModerationDetectionEncoder))
            ("ModerationLabels", data.moderationLabels)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ModerationModelVersion", data.moderationModelVersion)
        
        
        |> JE.object






getFaceDetectionRequestEncoder : GetFaceDetectionRequest -> JE.Value
getFaceDetectionRequestEncoder data =
    []
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getFaceDetectionResponseEncoder : GetFaceDetectionResponse -> JE.Value
getFaceDetectionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (videoJobStatusToString >> JE.string)
            ("JobStatus", data.jobStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (videoMetadataEncoder)
            ("VideoMetadata", data.videoMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (faceDetectionEncoder))
            ("Faces", data.faces)
        
        
        |> JE.object






getFaceSearchRequestEncoder : GetFaceSearchRequest -> JE.Value
getFaceSearchRequestEncoder data =
    []
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (faceSearchSortByToString >> JE.string)
            ("SortBy", data.sortBy)
        
        
        |> JE.object






getFaceSearchResponseEncoder : GetFaceSearchResponse -> JE.Value
getFaceSearchResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (videoJobStatusToString >> JE.string)
            ("JobStatus", data.jobStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (videoMetadataEncoder)
            ("VideoMetadata", data.videoMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (personMatchEncoder))
            ("Persons", data.persons)
        
        
        |> JE.object






getLabelDetectionRequestEncoder : GetLabelDetectionRequest -> JE.Value
getLabelDetectionRequestEncoder data =
    []
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (labelDetectionSortByToString >> JE.string)
            ("SortBy", data.sortBy)
        
        
        |> JE.object






getLabelDetectionResponseEncoder : GetLabelDetectionResponse -> JE.Value
getLabelDetectionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (videoJobStatusToString >> JE.string)
            ("JobStatus", data.jobStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (videoMetadataEncoder)
            ("VideoMetadata", data.videoMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (labelDetectionEncoder))
            ("Labels", data.labels)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LabelModelVersion", data.labelModelVersion)
        
        
        |> JE.object






getPersonTrackingRequestEncoder : GetPersonTrackingRequest -> JE.Value
getPersonTrackingRequestEncoder data =
    []
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (personTrackingSortByToString >> JE.string)
            ("SortBy", data.sortBy)
        
        
        |> JE.object






getPersonTrackingResponseEncoder : GetPersonTrackingResponse -> JE.Value
getPersonTrackingResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (videoJobStatusToString >> JE.string)
            ("JobStatus", data.jobStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (videoMetadataEncoder)
            ("VideoMetadata", data.videoMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (personDetectionEncoder))
            ("Persons", data.persons)
        
        
        |> JE.object






imageEncoder : Image -> JE.Value
imageEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Bytes", data.bytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3ObjectEncoder)
            ("S3Object", data.s3Object)
        
        
        |> JE.object






imageQualityEncoder : ImageQuality -> JE.Value
imageQualityEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Brightness", data.brightness)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Sharpness", data.sharpness)
        
        
        |> JE.object






indexFacesRequestEncoder : IndexFacesRequest -> JE.Value
indexFacesRequestEncoder data =
    []
        
        
        |> (::) ("CollectionId", data.collectionId |> (JE.string))
        
        
        
        |> (::) ("Image", data.image |> (imageEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExternalImageId", data.externalImageId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeToString >> JE.string))
            ("DetectionAttributes", data.detectionAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxFaces", data.maxFaces)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (qualityFilterToString >> JE.string)
            ("QualityFilter", data.qualityFilter)
        
        
        |> JE.object






indexFacesResponseEncoder : IndexFacesResponse -> JE.Value
indexFacesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (faceRecordEncoder))
            ("FaceRecords", data.faceRecords)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (orientationCorrectionToString >> JE.string)
            ("OrientationCorrection", data.orientationCorrection)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FaceModelVersion", data.faceModelVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (unindexedFaceEncoder))
            ("UnindexedFaces", data.unindexedFaces)
        
        
        |> JE.object






instanceEncoder : Instance -> JE.Value
instanceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (boundingBoxEncoder)
            ("BoundingBox", data.boundingBox)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object






kinesisDataStreamEncoder : KinesisDataStream -> JE.Value
kinesisDataStreamEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        |> JE.object






kinesisVideoStreamEncoder : KinesisVideoStream -> JE.Value
kinesisVideoStreamEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        |> JE.object






labelEncoder : Label -> JE.Value
labelEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (instanceEncoder))
            ("Instances", data.instances)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (parentEncoder))
            ("Parents", data.parents)
        
        
        |> JE.object






labelDetectionEncoder : LabelDetection -> JE.Value
labelDetectionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Timestamp", data.timestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (labelEncoder)
            ("Label", data.label)
        
        
        |> JE.object










landmarkEncoder : Landmark -> JE.Value
landmarkEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (landmarkTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("X", data.x)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Y", data.y)
        
        
        |> JE.object










listCollectionsRequestEncoder : ListCollectionsRequest -> JE.Value
listCollectionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listCollectionsResponseEncoder : ListCollectionsResponse -> JE.Value
listCollectionsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CollectionIds", data.collectionIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("FaceModelVersions", data.faceModelVersions)
        
        
        |> JE.object






listFacesRequestEncoder : ListFacesRequest -> JE.Value
listFacesRequestEncoder data =
    []
        
        
        |> (::) ("CollectionId", data.collectionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listFacesResponseEncoder : ListFacesResponse -> JE.Value
listFacesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (faceEncoder))
            ("Faces", data.faces)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FaceModelVersion", data.faceModelVersion)
        
        
        |> JE.object






listStreamProcessorsRequestEncoder : ListStreamProcessorsRequest -> JE.Value
listStreamProcessorsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






listStreamProcessorsResponseEncoder : ListStreamProcessorsResponse -> JE.Value
listStreamProcessorsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (streamProcessorEncoder))
            ("StreamProcessors", data.streamProcessors)
        
        
        |> JE.object






moderationLabelEncoder : ModerationLabel -> JE.Value
moderationLabelEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ParentName", data.parentName)
        
        
        |> JE.object






mouthOpenEncoder : MouthOpen -> JE.Value
mouthOpenEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object






mustacheEncoder : Mustache -> JE.Value
mustacheEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object






notificationChannelEncoder : NotificationChannel -> JE.Value
notificationChannelEncoder data =
    []
        
        
        |> (::) ("SNSTopicArn", data.sNSTopicArn |> (JE.string))
        
        
        
        |> (::) ("RoleArn", data.roleArn |> (JE.string))
        
        
        |> JE.object










parentEncoder : Parent -> JE.Value
parentEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






personDetailEncoder : PersonDetail -> JE.Value
personDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Index", data.index)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (boundingBoxEncoder)
            ("BoundingBox", data.boundingBox)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (faceDetailEncoder)
            ("Face", data.face)
        
        
        |> JE.object






personDetectionEncoder : PersonDetection -> JE.Value
personDetectionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Timestamp", data.timestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (personDetailEncoder)
            ("Person", data.person)
        
        
        |> JE.object






personMatchEncoder : PersonMatch -> JE.Value
personMatchEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Timestamp", data.timestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (personDetailEncoder)
            ("Person", data.person)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (faceMatchEncoder))
            ("FaceMatches", data.faceMatches)
        
        
        |> JE.object










pointEncoder : Point -> JE.Value
pointEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("X", data.x)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Y", data.y)
        
        
        |> JE.object






poseEncoder : Pose -> JE.Value
poseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Roll", data.roll)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Yaw", data.yaw)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Pitch", data.pitch)
        
        
        |> JE.object














recognizeCelebritiesRequestEncoder : RecognizeCelebritiesRequest -> JE.Value
recognizeCelebritiesRequestEncoder data =
    []
        
        
        |> (::) ("Image", data.image |> (imageEncoder))
        
        
        |> JE.object






recognizeCelebritiesResponseEncoder : RecognizeCelebritiesResponse -> JE.Value
recognizeCelebritiesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (celebrityEncoder))
            ("CelebrityFaces", data.celebrityFaces)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (comparedFaceEncoder))
            ("UnrecognizedFaces", data.unrecognizedFaces)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (orientationCorrectionToString >> JE.string)
            ("OrientationCorrection", data.orientationCorrection)
        
        
        |> JE.object






s3ObjectEncoder : S3Object -> JE.Value
s3ObjectEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Bucket", data.bucket)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Version", data.version)
        
        
        |> JE.object






searchFacesByImageRequestEncoder : SearchFacesByImageRequest -> JE.Value
searchFacesByImageRequestEncoder data =
    []
        
        
        |> (::) ("CollectionId", data.collectionId |> (JE.string))
        
        
        
        |> (::) ("Image", data.image |> (imageEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxFaces", data.maxFaces)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("FaceMatchThreshold", data.faceMatchThreshold)
        
        
        |> JE.object






searchFacesByImageResponseEncoder : SearchFacesByImageResponse -> JE.Value
searchFacesByImageResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (boundingBoxEncoder)
            ("SearchedFaceBoundingBox", data.searchedFaceBoundingBox)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("SearchedFaceConfidence", data.searchedFaceConfidence)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (faceMatchEncoder))
            ("FaceMatches", data.faceMatches)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FaceModelVersion", data.faceModelVersion)
        
        
        |> JE.object






searchFacesRequestEncoder : SearchFacesRequest -> JE.Value
searchFacesRequestEncoder data =
    []
        
        
        |> (::) ("CollectionId", data.collectionId |> (JE.string))
        
        
        
        |> (::) ("FaceId", data.faceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxFaces", data.maxFaces)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("FaceMatchThreshold", data.faceMatchThreshold)
        
        
        |> JE.object






searchFacesResponseEncoder : SearchFacesResponse -> JE.Value
searchFacesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SearchedFaceId", data.searchedFaceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (faceMatchEncoder))
            ("FaceMatches", data.faceMatches)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FaceModelVersion", data.faceModelVersion)
        
        
        |> JE.object






smileEncoder : Smile -> JE.Value
smileEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object






startCelebrityRecognitionRequestEncoder : StartCelebrityRecognitionRequest -> JE.Value
startCelebrityRecognitionRequestEncoder data =
    []
        
        
        |> (::) ("Video", data.video |> (videoEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientRequestToken", data.clientRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationChannelEncoder)
            ("NotificationChannel", data.notificationChannel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobTag", data.jobTag)
        
        
        |> JE.object






startCelebrityRecognitionResponseEncoder : StartCelebrityRecognitionResponse -> JE.Value
startCelebrityRecognitionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobId", data.jobId)
        
        
        |> JE.object






startContentModerationRequestEncoder : StartContentModerationRequest -> JE.Value
startContentModerationRequestEncoder data =
    []
        
        
        |> (::) ("Video", data.video |> (videoEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MinConfidence", data.minConfidence)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientRequestToken", data.clientRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationChannelEncoder)
            ("NotificationChannel", data.notificationChannel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobTag", data.jobTag)
        
        
        |> JE.object






startContentModerationResponseEncoder : StartContentModerationResponse -> JE.Value
startContentModerationResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobId", data.jobId)
        
        
        |> JE.object






startFaceDetectionRequestEncoder : StartFaceDetectionRequest -> JE.Value
startFaceDetectionRequestEncoder data =
    []
        
        
        |> (::) ("Video", data.video |> (videoEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientRequestToken", data.clientRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationChannelEncoder)
            ("NotificationChannel", data.notificationChannel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (faceAttributesToString >> JE.string)
            ("FaceAttributes", data.faceAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobTag", data.jobTag)
        
        
        |> JE.object






startFaceDetectionResponseEncoder : StartFaceDetectionResponse -> JE.Value
startFaceDetectionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobId", data.jobId)
        
        
        |> JE.object






startFaceSearchRequestEncoder : StartFaceSearchRequest -> JE.Value
startFaceSearchRequestEncoder data =
    []
        
        
        |> (::) ("Video", data.video |> (videoEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientRequestToken", data.clientRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("FaceMatchThreshold", data.faceMatchThreshold)
        
        
        
        |> (::) ("CollectionId", data.collectionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationChannelEncoder)
            ("NotificationChannel", data.notificationChannel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobTag", data.jobTag)
        
        
        |> JE.object






startFaceSearchResponseEncoder : StartFaceSearchResponse -> JE.Value
startFaceSearchResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobId", data.jobId)
        
        
        |> JE.object






startLabelDetectionRequestEncoder : StartLabelDetectionRequest -> JE.Value
startLabelDetectionRequestEncoder data =
    []
        
        
        |> (::) ("Video", data.video |> (videoEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientRequestToken", data.clientRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("MinConfidence", data.minConfidence)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationChannelEncoder)
            ("NotificationChannel", data.notificationChannel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobTag", data.jobTag)
        
        
        |> JE.object






startLabelDetectionResponseEncoder : StartLabelDetectionResponse -> JE.Value
startLabelDetectionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobId", data.jobId)
        
        
        |> JE.object






startPersonTrackingRequestEncoder : StartPersonTrackingRequest -> JE.Value
startPersonTrackingRequestEncoder data =
    []
        
        
        |> (::) ("Video", data.video |> (videoEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientRequestToken", data.clientRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationChannelEncoder)
            ("NotificationChannel", data.notificationChannel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobTag", data.jobTag)
        
        
        |> JE.object






startPersonTrackingResponseEncoder : StartPersonTrackingResponse -> JE.Value
startPersonTrackingResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobId", data.jobId)
        
        
        |> JE.object






startStreamProcessorRequestEncoder : StartStreamProcessorRequest -> JE.Value
startStreamProcessorRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






startStreamProcessorResponseEncoder : StartStreamProcessorResponse -> JE.Value
startStreamProcessorResponseEncoder data =
    []
        
        |> JE.object






stopStreamProcessorRequestEncoder : StopStreamProcessorRequest -> JE.Value
stopStreamProcessorRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






stopStreamProcessorResponseEncoder : StopStreamProcessorResponse -> JE.Value
stopStreamProcessorResponseEncoder data =
    []
        
        |> JE.object






streamProcessorEncoder : StreamProcessor -> JE.Value
streamProcessorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (streamProcessorStatusToString >> JE.string)
            ("Status", data.status)
        
        
        |> JE.object






streamProcessorInputEncoder : StreamProcessorInput -> JE.Value
streamProcessorInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisVideoStreamEncoder)
            ("KinesisVideoStream", data.kinesisVideoStream)
        
        
        |> JE.object






streamProcessorOutputEncoder : StreamProcessorOutput -> JE.Value
streamProcessorOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisDataStreamEncoder)
            ("KinesisDataStream", data.kinesisDataStream)
        
        
        |> JE.object






streamProcessorSettingsEncoder : StreamProcessorSettings -> JE.Value
streamProcessorSettingsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (faceSearchSettingsEncoder)
            ("FaceSearch", data.faceSearch)
        
        
        |> JE.object










sunglassesEncoder : Sunglasses -> JE.Value
sunglassesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        |> JE.object






textDetectionEncoder : TextDetection -> JE.Value
textDetectionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DetectedText", data.detectedText)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (textTypesToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ParentId", data.parentId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Confidence", data.confidence)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (geometryEncoder)
            ("Geometry", data.geometry)
        
        
        |> JE.object










unindexedFaceEncoder : UnindexedFace -> JE.Value
unindexedFaceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (reasonToString >> JE.string))
            ("Reasons", data.reasons)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (faceDetailEncoder)
            ("FaceDetail", data.faceDetail)
        
        
        |> JE.object






videoEncoder : Video -> JE.Value
videoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (s3ObjectEncoder)
            ("S3Object", data.s3Object)
        
        
        |> JE.object










videoMetadataEncoder : VideoMetadata -> JE.Value
videoMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Codec", data.codec)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("DurationMillis", data.durationMillis)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Format", data.format)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("FrameRate", data.frameRate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("FrameHeight", data.frameHeight)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("FrameWidth", data.frameWidth)
        
        
        |> JE.object





