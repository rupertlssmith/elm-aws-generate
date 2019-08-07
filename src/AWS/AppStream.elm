module AWS.AppStream
    exposing
        ( service
        , associateFleet
        , batchAssociateUserStack
        , batchDisassociateUserStack
        , copyImage
        , CopyImageOptions
        , createDirectoryConfig
        , createFleet
        , CreateFleetOptions
        , createImageBuilder
        , CreateImageBuilderOptions
        , createImageBuilderStreamingURL
        , CreateImageBuilderStreamingURLOptions
        , createStack
        , CreateStackOptions
        , createStreamingURL
        , CreateStreamingURLOptions
        , createUsageReportSubscription
        , createUser
        , CreateUserOptions
        , deleteDirectoryConfig
        , deleteFleet
        , deleteImage
        , deleteImageBuilder
        , deleteImagePermissions
        , deleteStack
        , deleteUsageReportSubscription
        , deleteUser
        , describeDirectoryConfigs
        , DescribeDirectoryConfigsOptions
        , describeFleets
        , DescribeFleetsOptions
        , describeImageBuilders
        , DescribeImageBuildersOptions
        , describeImagePermissions
        , DescribeImagePermissionsOptions
        , describeImages
        , DescribeImagesOptions
        , describeSessions
        , DescribeSessionsOptions
        , describeStacks
        , DescribeStacksOptions
        , describeUsageReportSubscriptions
        , DescribeUsageReportSubscriptionsOptions
        , describeUserStackAssociations
        , DescribeUserStackAssociationsOptions
        , describeUsers
        , DescribeUsersOptions
        , disableUser
        , disassociateFleet
        , enableUser
        , expireSession
        , listAssociatedFleets
        , ListAssociatedFleetsOptions
        , listAssociatedStacks
        , ListAssociatedStacksOptions
        , listTagsForResource
        , startFleet
        , startImageBuilder
        , StartImageBuilderOptions
        , stopFleet
        , stopImageBuilder
        , tagResource
        , untagResource
        , updateDirectoryConfig
        , UpdateDirectoryConfigOptions
        , updateFleet
        , UpdateFleetOptions
        , updateImagePermissions
        , updateStack
        , UpdateStackOptions
        , Action(..)
        , Application
        , ApplicationSettings
        , ApplicationSettingsResponse
        , AssociateFleetResult
        , AuthenticationType(..)
        , BatchAssociateUserStackResult
        , BatchDisassociateUserStackResult
        , ComputeCapacity
        , ComputeCapacityStatus
        , CopyImageResponse
        , CreateDirectoryConfigResult
        , CreateFleetResult
        , CreateImageBuilderResult
        , CreateImageBuilderStreamingURLResult
        , CreateStackResult
        , CreateStreamingURLResult
        , CreateUsageReportSubscriptionResult
        , CreateUserResult
        , DeleteDirectoryConfigResult
        , DeleteFleetResult
        , DeleteImageBuilderResult
        , DeleteImagePermissionsResult
        , DeleteImageResult
        , DeleteStackResult
        , DeleteUsageReportSubscriptionResult
        , DeleteUserResult
        , DescribeDirectoryConfigsResult
        , DescribeFleetsResult
        , DescribeImageBuildersResult
        , DescribeImagePermissionsResult
        , DescribeImagesResult
        , DescribeSessionsResult
        , DescribeStacksResult
        , DescribeUsageReportSubscriptionsResult
        , DescribeUserStackAssociationsResult
        , DescribeUsersResult
        , DirectoryConfig
        , DisableUserResult
        , DisassociateFleetResult
        , DomainJoinInfo
        , EnableUserResult
        , ExpireSessionResult
        , Fleet
        , FleetAttribute(..)
        , FleetError
        , FleetErrorCode(..)
        , FleetState(..)
        , FleetType(..)
        , Image
        , ImageBuilder
        , ImageBuilderState(..)
        , ImageBuilderStateChangeReason
        , ImageBuilderStateChangeReasonCode(..)
        , ImagePermissions
        , ImageState(..)
        , ImageStateChangeReason
        , ImageStateChangeReasonCode(..)
        , LastReportGenerationExecutionError
        , ListAssociatedFleetsResult
        , ListAssociatedStacksResult
        , ListTagsForResourceResponse
        , MessageAction(..)
        , NetworkAccessConfiguration
        , Permission(..)
        , PlatformType(..)
        , ResourceError
        , ServiceAccountCredentials
        , Session
        , SessionConnectionState(..)
        , SessionState(..)
        , SharedImagePermissions
        , Stack
        , StackAttribute(..)
        , StackError
        , StackErrorCode(..)
        , StartFleetResult
        , StartImageBuilderResult
        , StopFleetResult
        , StopImageBuilderResult
        , StorageConnector
        , StorageConnectorType(..)
        , TagResourceResponse
        , UntagResourceResponse
        , UpdateDirectoryConfigResult
        , UpdateFleetResult
        , UpdateImagePermissionsResult
        , UpdateStackResult
        , UsageReportExecutionErrorCode(..)
        , UsageReportSchedule(..)
        , UsageReportSubscription
        , User
        , UserSetting
        , UserStackAssociation
        , UserStackAssociationError
        , UserStackAssociationErrorCode(..)
        , VisibilityType(..)
        , VpcConfig
        )

{-| <fullname>Amazon AppStream 2.0</fullname> <p>This is the <i>Amazon AppStream 2.0 API Reference</i>. This documentation provides descriptions and syntax for each of the actions and data types in AppStream 2.0. AppStream 2.0 is a fully managed, secure application streaming service that lets you stream desktop applications to users without rewriting applications. AppStream 2.0 manages the AWS resources that are required to host and run your applications, scales automatically, and provides access to your users on demand.</p> <p>To learn more about AppStream 2.0, see the following resources:</p> <ul> <li> <p> <a href="http://aws.amazon.com/appstream2">Amazon AppStream 2.0 product page</a> </p> </li> <li> <p> <a href="http://aws.amazon.com/documentation/appstream2">Amazon AppStream 2.0 documentation</a> </p> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [associateFleet](#associateFleet)
* [batchAssociateUserStack](#batchAssociateUserStack)
* [batchDisassociateUserStack](#batchDisassociateUserStack)
* [copyImage](#copyImage)
* [CopyImageOptions](#CopyImageOptions)
* [createDirectoryConfig](#createDirectoryConfig)
* [createFleet](#createFleet)
* [CreateFleetOptions](#CreateFleetOptions)
* [createImageBuilder](#createImageBuilder)
* [CreateImageBuilderOptions](#CreateImageBuilderOptions)
* [createImageBuilderStreamingURL](#createImageBuilderStreamingURL)
* [CreateImageBuilderStreamingURLOptions](#CreateImageBuilderStreamingURLOptions)
* [createStack](#createStack)
* [CreateStackOptions](#CreateStackOptions)
* [createStreamingURL](#createStreamingURL)
* [CreateStreamingURLOptions](#CreateStreamingURLOptions)
* [createUsageReportSubscription](#createUsageReportSubscription)
* [createUser](#createUser)
* [CreateUserOptions](#CreateUserOptions)
* [deleteDirectoryConfig](#deleteDirectoryConfig)
* [deleteFleet](#deleteFleet)
* [deleteImage](#deleteImage)
* [deleteImageBuilder](#deleteImageBuilder)
* [deleteImagePermissions](#deleteImagePermissions)
* [deleteStack](#deleteStack)
* [deleteUsageReportSubscription](#deleteUsageReportSubscription)
* [deleteUser](#deleteUser)
* [describeDirectoryConfigs](#describeDirectoryConfigs)
* [DescribeDirectoryConfigsOptions](#DescribeDirectoryConfigsOptions)
* [describeFleets](#describeFleets)
* [DescribeFleetsOptions](#DescribeFleetsOptions)
* [describeImageBuilders](#describeImageBuilders)
* [DescribeImageBuildersOptions](#DescribeImageBuildersOptions)
* [describeImagePermissions](#describeImagePermissions)
* [DescribeImagePermissionsOptions](#DescribeImagePermissionsOptions)
* [describeImages](#describeImages)
* [DescribeImagesOptions](#DescribeImagesOptions)
* [describeSessions](#describeSessions)
* [DescribeSessionsOptions](#DescribeSessionsOptions)
* [describeStacks](#describeStacks)
* [DescribeStacksOptions](#DescribeStacksOptions)
* [describeUsageReportSubscriptions](#describeUsageReportSubscriptions)
* [DescribeUsageReportSubscriptionsOptions](#DescribeUsageReportSubscriptionsOptions)
* [describeUserStackAssociations](#describeUserStackAssociations)
* [DescribeUserStackAssociationsOptions](#DescribeUserStackAssociationsOptions)
* [describeUsers](#describeUsers)
* [DescribeUsersOptions](#DescribeUsersOptions)
* [disableUser](#disableUser)
* [disassociateFleet](#disassociateFleet)
* [enableUser](#enableUser)
* [expireSession](#expireSession)
* [listAssociatedFleets](#listAssociatedFleets)
* [ListAssociatedFleetsOptions](#ListAssociatedFleetsOptions)
* [listAssociatedStacks](#listAssociatedStacks)
* [ListAssociatedStacksOptions](#ListAssociatedStacksOptions)
* [listTagsForResource](#listTagsForResource)
* [startFleet](#startFleet)
* [startImageBuilder](#startImageBuilder)
* [StartImageBuilderOptions](#StartImageBuilderOptions)
* [stopFleet](#stopFleet)
* [stopImageBuilder](#stopImageBuilder)
* [tagResource](#tagResource)
* [untagResource](#untagResource)
* [updateDirectoryConfig](#updateDirectoryConfig)
* [UpdateDirectoryConfigOptions](#UpdateDirectoryConfigOptions)
* [updateFleet](#updateFleet)
* [UpdateFleetOptions](#UpdateFleetOptions)
* [updateImagePermissions](#updateImagePermissions)
* [updateStack](#updateStack)
* [UpdateStackOptions](#UpdateStackOptions)


@docs associateFleet,batchAssociateUserStack,batchDisassociateUserStack,copyImage,CopyImageOptions,createDirectoryConfig,createFleet,CreateFleetOptions,createImageBuilder,CreateImageBuilderOptions,createImageBuilderStreamingURL,CreateImageBuilderStreamingURLOptions,createStack,CreateStackOptions,createStreamingURL,CreateStreamingURLOptions,createUsageReportSubscription,createUser,CreateUserOptions,deleteDirectoryConfig,deleteFleet,deleteImage,deleteImageBuilder,deleteImagePermissions,deleteStack,deleteUsageReportSubscription,deleteUser,describeDirectoryConfigs,DescribeDirectoryConfigsOptions,describeFleets,DescribeFleetsOptions,describeImageBuilders,DescribeImageBuildersOptions,describeImagePermissions,DescribeImagePermissionsOptions,describeImages,DescribeImagesOptions,describeSessions,DescribeSessionsOptions,describeStacks,DescribeStacksOptions,describeUsageReportSubscriptions,DescribeUsageReportSubscriptionsOptions,describeUserStackAssociations,DescribeUserStackAssociationsOptions,describeUsers,DescribeUsersOptions,disableUser,disassociateFleet,enableUser,expireSession,listAssociatedFleets,ListAssociatedFleetsOptions,listAssociatedStacks,ListAssociatedStacksOptions,listTagsForResource,startFleet,startImageBuilder,StartImageBuilderOptions,stopFleet,stopImageBuilder,tagResource,untagResource,updateDirectoryConfig,UpdateDirectoryConfigOptions,updateFleet,UpdateFleetOptions,updateImagePermissions,updateStack,UpdateStackOptions

## Responses

* [AssociateFleetResult](#AssociateFleetResult)
* [BatchAssociateUserStackResult](#BatchAssociateUserStackResult)
* [BatchDisassociateUserStackResult](#BatchDisassociateUserStackResult)
* [CopyImageResponse](#CopyImageResponse)
* [CreateDirectoryConfigResult](#CreateDirectoryConfigResult)
* [CreateFleetResult](#CreateFleetResult)
* [CreateImageBuilderResult](#CreateImageBuilderResult)
* [CreateImageBuilderStreamingURLResult](#CreateImageBuilderStreamingURLResult)
* [CreateStackResult](#CreateStackResult)
* [CreateStreamingURLResult](#CreateStreamingURLResult)
* [CreateUsageReportSubscriptionResult](#CreateUsageReportSubscriptionResult)
* [CreateUserResult](#CreateUserResult)
* [DeleteDirectoryConfigResult](#DeleteDirectoryConfigResult)
* [DeleteFleetResult](#DeleteFleetResult)
* [DeleteImageBuilderResult](#DeleteImageBuilderResult)
* [DeleteImagePermissionsResult](#DeleteImagePermissionsResult)
* [DeleteImageResult](#DeleteImageResult)
* [DeleteStackResult](#DeleteStackResult)
* [DeleteUsageReportSubscriptionResult](#DeleteUsageReportSubscriptionResult)
* [DeleteUserResult](#DeleteUserResult)
* [DescribeDirectoryConfigsResult](#DescribeDirectoryConfigsResult)
* [DescribeFleetsResult](#DescribeFleetsResult)
* [DescribeImageBuildersResult](#DescribeImageBuildersResult)
* [DescribeImagePermissionsResult](#DescribeImagePermissionsResult)
* [DescribeImagesResult](#DescribeImagesResult)
* [DescribeSessionsResult](#DescribeSessionsResult)
* [DescribeStacksResult](#DescribeStacksResult)
* [DescribeUsageReportSubscriptionsResult](#DescribeUsageReportSubscriptionsResult)
* [DescribeUserStackAssociationsResult](#DescribeUserStackAssociationsResult)
* [DescribeUsersResult](#DescribeUsersResult)
* [DisableUserResult](#DisableUserResult)
* [DisassociateFleetResult](#DisassociateFleetResult)
* [EnableUserResult](#EnableUserResult)
* [ExpireSessionResult](#ExpireSessionResult)
* [ListAssociatedFleetsResult](#ListAssociatedFleetsResult)
* [ListAssociatedStacksResult](#ListAssociatedStacksResult)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [StartFleetResult](#StartFleetResult)
* [StartImageBuilderResult](#StartImageBuilderResult)
* [StopFleetResult](#StopFleetResult)
* [StopImageBuilderResult](#StopImageBuilderResult)
* [TagResourceResponse](#TagResourceResponse)
* [UntagResourceResponse](#UntagResourceResponse)
* [UpdateDirectoryConfigResult](#UpdateDirectoryConfigResult)
* [UpdateFleetResult](#UpdateFleetResult)
* [UpdateImagePermissionsResult](#UpdateImagePermissionsResult)
* [UpdateStackResult](#UpdateStackResult)


@docs AssociateFleetResult,BatchAssociateUserStackResult,BatchDisassociateUserStackResult,CopyImageResponse,CreateDirectoryConfigResult,CreateFleetResult,CreateImageBuilderResult,CreateImageBuilderStreamingURLResult,CreateStackResult,CreateStreamingURLResult,CreateUsageReportSubscriptionResult,CreateUserResult,DeleteDirectoryConfigResult,DeleteFleetResult,DeleteImageBuilderResult,DeleteImagePermissionsResult,DeleteImageResult,DeleteStackResult,DeleteUsageReportSubscriptionResult,DeleteUserResult,DescribeDirectoryConfigsResult,DescribeFleetsResult,DescribeImageBuildersResult,DescribeImagePermissionsResult,DescribeImagesResult,DescribeSessionsResult,DescribeStacksResult,DescribeUsageReportSubscriptionsResult,DescribeUserStackAssociationsResult,DescribeUsersResult,DisableUserResult,DisassociateFleetResult,EnableUserResult,ExpireSessionResult,ListAssociatedFleetsResult,ListAssociatedStacksResult,ListTagsForResourceResponse,StartFleetResult,StartImageBuilderResult,StopFleetResult,StopImageBuilderResult,TagResourceResponse,UntagResourceResponse,UpdateDirectoryConfigResult,UpdateFleetResult,UpdateImagePermissionsResult,UpdateStackResult

## Records

* [Application](#Application)
* [ApplicationSettings](#ApplicationSettings)
* [ApplicationSettingsResponse](#ApplicationSettingsResponse)
* [ComputeCapacity](#ComputeCapacity)
* [ComputeCapacityStatus](#ComputeCapacityStatus)
* [DirectoryConfig](#DirectoryConfig)
* [DomainJoinInfo](#DomainJoinInfo)
* [Fleet](#Fleet)
* [FleetError](#FleetError)
* [Image](#Image)
* [ImageBuilder](#ImageBuilder)
* [ImageBuilderStateChangeReason](#ImageBuilderStateChangeReason)
* [ImagePermissions](#ImagePermissions)
* [ImageStateChangeReason](#ImageStateChangeReason)
* [LastReportGenerationExecutionError](#LastReportGenerationExecutionError)
* [NetworkAccessConfiguration](#NetworkAccessConfiguration)
* [ResourceError](#ResourceError)
* [ServiceAccountCredentials](#ServiceAccountCredentials)
* [Session](#Session)
* [SharedImagePermissions](#SharedImagePermissions)
* [Stack](#Stack)
* [StackError](#StackError)
* [StorageConnector](#StorageConnector)
* [UsageReportSubscription](#UsageReportSubscription)
* [User](#User)
* [UserSetting](#UserSetting)
* [UserStackAssociation](#UserStackAssociation)
* [UserStackAssociationError](#UserStackAssociationError)
* [VpcConfig](#VpcConfig)


@docs Application,ApplicationSettings,ApplicationSettingsResponse,ComputeCapacity,ComputeCapacityStatus,DirectoryConfig,DomainJoinInfo,Fleet,FleetError,Image,ImageBuilder,ImageBuilderStateChangeReason,ImagePermissions,ImageStateChangeReason,LastReportGenerationExecutionError,NetworkAccessConfiguration,ResourceError,ServiceAccountCredentials,Session,SharedImagePermissions,Stack,StackError,StorageConnector,UsageReportSubscription,User,UserSetting,UserStackAssociation,UserStackAssociationError,VpcConfig

## Unions

* [Action](#Action)
* [AuthenticationType](#AuthenticationType)
* [FleetAttribute](#FleetAttribute)
* [FleetErrorCode](#FleetErrorCode)
* [FleetState](#FleetState)
* [FleetType](#FleetType)
* [ImageBuilderState](#ImageBuilderState)
* [ImageBuilderStateChangeReasonCode](#ImageBuilderStateChangeReasonCode)
* [ImageState](#ImageState)
* [ImageStateChangeReasonCode](#ImageStateChangeReasonCode)
* [MessageAction](#MessageAction)
* [Permission](#Permission)
* [PlatformType](#PlatformType)
* [SessionConnectionState](#SessionConnectionState)
* [SessionState](#SessionState)
* [StackAttribute](#StackAttribute)
* [StackErrorCode](#StackErrorCode)
* [StorageConnectorType](#StorageConnectorType)
* [UsageReportExecutionErrorCode](#UsageReportExecutionErrorCode)
* [UsageReportSchedule](#UsageReportSchedule)
* [UserStackAssociationErrorCode](#UserStackAssociationErrorCode)
* [VisibilityType](#VisibilityType)


@docs Action,AuthenticationType,FleetAttribute,FleetErrorCode,FleetState,FleetType,ImageBuilderState,ImageBuilderStateChangeReasonCode,ImageState,ImageStateChangeReasonCode,MessageAction,Permission,PlatformType,SessionConnectionState,SessionState,StackAttribute,StackErrorCode,StorageConnectorType,UsageReportExecutionErrorCode,UsageReportSchedule,UserStackAssociationErrorCode,VisibilityType

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
        "appstream2"
        "2016-12-01"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setSigningName "appstream" >> AWS.Core.Service.setTargetPrefix "PhotonAdminProxyService")



-- OPERATIONS

{-| <p>Associates the specified fleet with the specified stack.</p>

__Required Parameters__

* `fleetName` __:__ `String`
* `stackName` __:__ `String`


-}

associateFleet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateFleetResult)

associateFleet fleetName stackName =
    
    let
        requestInput = AssociateFleetRequest
            
            fleetName
            
            stackName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateFleetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateFleet"
                
                (AWS.Core.Decode.ResultDecoder "AssociateFleetResult" associateFleetResultDecoder)
                
            )





{-| <p>Associates the specified users with the specified stacks. Users in a user pool cannot be assigned to stacks with fleets that are joined to an Active Directory domain.</p>

__Required Parameters__

* `userStackAssociations` __:__ `(List UserStackAssociation)`


-}

batchAssociateUserStack :
  
    (List UserStackAssociation) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchAssociateUserStackResult)

batchAssociateUserStack userStackAssociations =
    
    let
        requestInput = BatchAssociateUserStackRequest
            
            userStackAssociations
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchAssociateUserStackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchAssociateUserStack"
                
                (AWS.Core.Decode.ResultDecoder "BatchAssociateUserStackResult" batchAssociateUserStackResultDecoder)
                
            )





{-| <p>Disassociates the specified users from the specified stacks.</p>

__Required Parameters__

* `userStackAssociations` __:__ `(List UserStackAssociation)`


-}

batchDisassociateUserStack :
  
    (List UserStackAssociation) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchDisassociateUserStackResult)

batchDisassociateUserStack userStackAssociations =
    
    let
        requestInput = BatchDisassociateUserStackRequest
            
            userStackAssociations
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchDisassociateUserStackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchDisassociateUserStack"
                
                (AWS.Core.Decode.ResultDecoder "BatchDisassociateUserStackResult" batchDisassociateUserStackResultDecoder)
                
            )





{-| <p>Copies the image within the same region or to a new region within the same AWS account. Note that any tags you added to the image will not be copied.</p>

__Required Parameters__

* `sourceImageName` __:__ `String`
* `destinationImageName` __:__ `String`
* `destinationRegion` __:__ `String`


-}

copyImage :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CopyImageOptions -> CopyImageOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyImageResponse)

copyImage sourceImageName destinationImageName destinationRegion setOptions =
    
    let
        requestInput = CopyImageRequest
            
            sourceImageName
            
            destinationImageName
            
            destinationRegion
            
            options.destinationImageDescription
            
        
        options = setOptions (CopyImageOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> copyImageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CopyImage"
                
                (AWS.Core.Decode.ResultDecoder "CopyImageResponse" copyImageResponseDecoder)
                
            )



{-| Options for a copyImage request
-}
type alias CopyImageOptions =
    {
    destinationImageDescription : Maybe String
    }



{-| <p>Creates a Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>

__Required Parameters__

* `directoryName` __:__ `String`
* `organizationalUnitDistinguishedNames` __:__ `(List String)`
* `serviceAccountCredentials` __:__ `ServiceAccountCredentials`


-}

createDirectoryConfig :
  
    String ->
  
    (List String) ->
  
    ServiceAccountCredentials ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDirectoryConfigResult)

createDirectoryConfig directoryName organizationalUnitDistinguishedNames serviceAccountCredentials =
    
    let
        requestInput = CreateDirectoryConfigRequest
            
            directoryName
            
            organizationalUnitDistinguishedNames
            
            serviceAccountCredentials
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDirectoryConfigRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDirectoryConfig"
                
                (AWS.Core.Decode.ResultDecoder "CreateDirectoryConfigResult" createDirectoryConfigResultDecoder)
                
            )





{-| <p>Creates a fleet. A fleet consists of streaming instances that run a specified image.</p>

__Required Parameters__

* `name` __:__ `String`
* `instanceType` __:__ `String`
* `computeCapacity` __:__ `ComputeCapacity`


-}

createFleet :
  
    String ->
  
    String ->
  
    ComputeCapacity ->
  
  
    ( CreateFleetOptions -> CreateFleetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateFleetResult)

createFleet name instanceType computeCapacity setOptions =
    
    let
        requestInput = CreateFleetRequest
            
            name
            
            options.imageName
            
            options.imageArn
            
            instanceType
            
            options.fleetType
            
            computeCapacity
            
            options.vpcConfig
            
            options.maxUserDurationInSeconds
            
            options.disconnectTimeoutInSeconds
            
            options.description
            
            options.displayName
            
            options.enableDefaultInternetAccess
            
            options.domainJoinInfo
            
            options.tags
            
            options.idleDisconnectTimeoutInSeconds
            
        
        options = setOptions (CreateFleetOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createFleetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateFleet"
                
                (AWS.Core.Decode.ResultDecoder "CreateFleetResult" createFleetResultDecoder)
                
            )



{-| Options for a createFleet request
-}
type alias CreateFleetOptions =
    {
    imageName : Maybe String,imageArn : Maybe String,fleetType : Maybe FleetType,vpcConfig : Maybe VpcConfig,maxUserDurationInSeconds : Maybe Int,disconnectTimeoutInSeconds : Maybe Int,description : Maybe String,displayName : Maybe String,enableDefaultInternetAccess : Maybe Bool,domainJoinInfo : Maybe DomainJoinInfo,tags : Maybe (Dict String String),idleDisconnectTimeoutInSeconds : Maybe Int
    }



{-| <p>Creates an image builder. An image builder is a virtual machine that is used to create an image.</p> <p>The initial state of the builder is <code>PENDING</code>. When it is ready, the state is <code>RUNNING</code>.</p>

__Required Parameters__

* `name` __:__ `String`
* `instanceType` __:__ `String`


-}

createImageBuilder :
  
    String ->
  
    String ->
  
  
    ( CreateImageBuilderOptions -> CreateImageBuilderOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateImageBuilderResult)

createImageBuilder name instanceType setOptions =
    
    let
        requestInput = CreateImageBuilderRequest
            
            name
            
            options.imageName
            
            options.imageArn
            
            instanceType
            
            options.description
            
            options.displayName
            
            options.vpcConfig
            
            options.enableDefaultInternetAccess
            
            options.domainJoinInfo
            
            options.appstreamAgentVersion
            
            options.tags
            
        
        options = setOptions (CreateImageBuilderOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createImageBuilderRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateImageBuilder"
                
                (AWS.Core.Decode.ResultDecoder "CreateImageBuilderResult" createImageBuilderResultDecoder)
                
            )



{-| Options for a createImageBuilder request
-}
type alias CreateImageBuilderOptions =
    {
    imageName : Maybe String,imageArn : Maybe String,description : Maybe String,displayName : Maybe String,vpcConfig : Maybe VpcConfig,enableDefaultInternetAccess : Maybe Bool,domainJoinInfo : Maybe DomainJoinInfo,appstreamAgentVersion : Maybe String,tags : Maybe (Dict String String)
    }



{-| <p>Creates a URL to start an image builder streaming session.</p>

__Required Parameters__

* `name` __:__ `String`


-}

createImageBuilderStreamingURL :
  
    String ->
  
  
    ( CreateImageBuilderStreamingURLOptions -> CreateImageBuilderStreamingURLOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateImageBuilderStreamingURLResult)

createImageBuilderStreamingURL name setOptions =
    
    let
        requestInput = CreateImageBuilderStreamingURLRequest
            
            name
            
            options.validity
            
        
        options = setOptions (CreateImageBuilderStreamingURLOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createImageBuilderStreamingURLRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateImageBuilderStreamingURL"
                
                (AWS.Core.Decode.ResultDecoder "CreateImageBuilderStreamingURLResult" createImageBuilderStreamingURLResultDecoder)
                
            )



{-| Options for a createImageBuilderStreamingURL request
-}
type alias CreateImageBuilderStreamingURLOptions =
    {
    validity : Maybe Int
    }



{-| <p>Creates a stack to start streaming applications to users. A stack consists of an associated fleet, user access policies, and storage configurations. </p>

__Required Parameters__

* `name` __:__ `String`


-}

createStack :
  
    String ->
  
  
    ( CreateStackOptions -> CreateStackOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStackResult)

createStack name setOptions =
    
    let
        requestInput = CreateStackRequest
            
            name
            
            options.description
            
            options.displayName
            
            options.storageConnectors
            
            options.redirectURL
            
            options.feedbackURL
            
            options.userSettings
            
            options.applicationSettings
            
            options.tags
            
        
        options = setOptions (CreateStackOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createStackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateStack"
                
                (AWS.Core.Decode.ResultDecoder "CreateStackResult" createStackResultDecoder)
                
            )



{-| Options for a createStack request
-}
type alias CreateStackOptions =
    {
    description : Maybe String,displayName : Maybe String,storageConnectors : Maybe (List StorageConnector),redirectURL : Maybe String,feedbackURL : Maybe String,userSettings : Maybe (List UserSetting),applicationSettings : Maybe ApplicationSettings,tags : Maybe (Dict String String)
    }



{-| <p>Creates a temporary URL to start an AppStream 2.0 streaming session for the specified user. A streaming URL enables application streaming to be tested without user setup. </p>

__Required Parameters__

* `stackName` __:__ `String`
* `fleetName` __:__ `String`
* `userId` __:__ `String`


-}

createStreamingURL :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateStreamingURLOptions -> CreateStreamingURLOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStreamingURLResult)

createStreamingURL stackName fleetName userId setOptions =
    
    let
        requestInput = CreateStreamingURLRequest
            
            stackName
            
            fleetName
            
            userId
            
            options.applicationId
            
            options.validity
            
            options.sessionContext
            
        
        options = setOptions (CreateStreamingURLOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createStreamingURLRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateStreamingURL"
                
                (AWS.Core.Decode.ResultDecoder "CreateStreamingURLResult" createStreamingURLResultDecoder)
                
            )



{-| Options for a createStreamingURL request
-}
type alias CreateStreamingURLOptions =
    {
    applicationId : Maybe String,validity : Maybe Int,sessionContext : Maybe String
    }



{-| <p>Creates a usage report subscription. Usage reports are generated daily.</p>

__Required Parameters__



-}

createUsageReportSubscription :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateUsageReportSubscriptionResult)

createUsageReportSubscription =
    
    let
        requestInput = CreateUsageReportSubscriptionRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createUsageReportSubscriptionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateUsageReportSubscription"
                
                (AWS.Core.Decode.ResultDecoder "CreateUsageReportSubscriptionResult" createUsageReportSubscriptionResultDecoder)
                
            )





{-| <p>Creates a new user in the user pool.</p>

__Required Parameters__

* `userName` __:__ `String`
* `authenticationType` __:__ `AuthenticationType`


-}

createUser :
  
    String ->
  
    AuthenticationType ->
  
  
    ( CreateUserOptions -> CreateUserOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateUserResult)

createUser userName authenticationType setOptions =
    
    let
        requestInput = CreateUserRequest
            
            userName
            
            options.messageAction
            
            options.firstName
            
            options.lastName
            
            authenticationType
            
        
        options = setOptions (CreateUserOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateUser"
                
                (AWS.Core.Decode.ResultDecoder "CreateUserResult" createUserResultDecoder)
                
            )



{-| Options for a createUser request
-}
type alias CreateUserOptions =
    {
    messageAction : Maybe MessageAction,firstName : Maybe String,lastName : Maybe String
    }



{-| <p>Deletes the specified Directory Config object from AppStream 2.0. This object includes the information required to join streaming instances to an Active Directory domain.</p>

__Required Parameters__

* `directoryName` __:__ `String`


-}

deleteDirectoryConfig :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDirectoryConfigResult)

deleteDirectoryConfig directoryName =
    
    let
        requestInput = DeleteDirectoryConfigRequest
            
            directoryName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDirectoryConfigRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDirectoryConfig"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDirectoryConfigResult" deleteDirectoryConfigResultDecoder)
                
            )





{-| <p>Deletes the specified fleet.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteFleet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteFleetResult)

deleteFleet name =
    
    let
        requestInput = DeleteFleetRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteFleetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteFleet"
                
                (AWS.Core.Decode.ResultDecoder "DeleteFleetResult" deleteFleetResultDecoder)
                
            )





{-| <p>Deletes the specified image. You cannot delete an image when it is in use. After you delete an image, you cannot provision new capacity using the image.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteImage :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteImageResult)

deleteImage name =
    
    let
        requestInput = DeleteImageRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteImageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteImage"
                
                (AWS.Core.Decode.ResultDecoder "DeleteImageResult" deleteImageResultDecoder)
                
            )





{-| <p>Deletes the specified image builder and releases the capacity.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteImageBuilder :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteImageBuilderResult)

deleteImageBuilder name =
    
    let
        requestInput = DeleteImageBuilderRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteImageBuilderRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteImageBuilder"
                
                (AWS.Core.Decode.ResultDecoder "DeleteImageBuilderResult" deleteImageBuilderResultDecoder)
                
            )





{-| <p>Deletes permissions for the specified private image. After you delete permissions for an image, AWS accounts to which you previously granted these permissions can no longer use the image.</p>

__Required Parameters__

* `name` __:__ `String`
* `sharedAccountId` __:__ `String`


-}

deleteImagePermissions :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteImagePermissionsResult)

deleteImagePermissions name sharedAccountId =
    
    let
        requestInput = DeleteImagePermissionsRequest
            
            name
            
            sharedAccountId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteImagePermissionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteImagePermissions"
                
                (AWS.Core.Decode.ResultDecoder "DeleteImagePermissionsResult" deleteImagePermissionsResultDecoder)
                
            )





{-| <p>Deletes the specified stack. After the stack is deleted, the application streaming environment provided by the stack is no longer available to users. Also, any reservations made for application streaming sessions for the stack are released.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteStack :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteStackResult)

deleteStack name =
    
    let
        requestInput = DeleteStackRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteStackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteStack"
                
                (AWS.Core.Decode.ResultDecoder "DeleteStackResult" deleteStackResultDecoder)
                
            )





{-| <p>Disables usage report generation.</p>

__Required Parameters__



-}

deleteUsageReportSubscription :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteUsageReportSubscriptionResult)

deleteUsageReportSubscription =
    
    let
        requestInput = DeleteUsageReportSubscriptionRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteUsageReportSubscriptionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteUsageReportSubscription"
                
                (AWS.Core.Decode.ResultDecoder "DeleteUsageReportSubscriptionResult" deleteUsageReportSubscriptionResultDecoder)
                
            )





{-| <p>Deletes a user from the user pool.</p>

__Required Parameters__

* `userName` __:__ `String`
* `authenticationType` __:__ `AuthenticationType`


-}

deleteUser :
  
    String ->
  
    AuthenticationType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteUserResult)

deleteUser userName authenticationType =
    
    let
        requestInput = DeleteUserRequest
            
            userName
            
            authenticationType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteUser"
                
                (AWS.Core.Decode.ResultDecoder "DeleteUserResult" deleteUserResultDecoder)
                
            )





{-| <p>Retrieves a list that describes one or more specified Directory Config objects for AppStream 2.0, if the names for these objects are provided. Otherwise, all Directory Config objects in the account are described. These objects include the configuration information required to join fleets and image builders to Microsoft Active Directory domains. </p> <p>Although the response syntax in this topic includes the account password, this password is not returned in the actual response.</p>

__Required Parameters__



-}

describeDirectoryConfigs :
  
  
    ( DescribeDirectoryConfigsOptions -> DescribeDirectoryConfigsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDirectoryConfigsResult)

describeDirectoryConfigs setOptions =
    
    let
        requestInput = DescribeDirectoryConfigsRequest
            
            options.directoryNames
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeDirectoryConfigsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeDirectoryConfigsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDirectoryConfigs"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDirectoryConfigsResult" describeDirectoryConfigsResultDecoder)
                
            )



{-| Options for a describeDirectoryConfigs request
-}
type alias DescribeDirectoryConfigsOptions =
    {
    directoryNames : Maybe (List String),maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves a list that describes one or more specified fleets, if the fleet names are provided. Otherwise, all fleets in the account are described.</p>

__Required Parameters__



-}

describeFleets :
  
  
    ( DescribeFleetsOptions -> DescribeFleetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeFleetsResult)

describeFleets setOptions =
    
    let
        requestInput = DescribeFleetsRequest
            
            options.names
            
            options.nextToken
            
        
        options = setOptions (DescribeFleetsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeFleetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeFleets"
                
                (AWS.Core.Decode.ResultDecoder "DescribeFleetsResult" describeFleetsResultDecoder)
                
            )



{-| Options for a describeFleets request
-}
type alias DescribeFleetsOptions =
    {
    names : Maybe (List String),nextToken : Maybe String
    }



{-| <p>Retrieves a list that describes one or more specified image builders, if the image builder names are provided. Otherwise, all image builders in the account are described.</p>

__Required Parameters__



-}

describeImageBuilders :
  
  
    ( DescribeImageBuildersOptions -> DescribeImageBuildersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeImageBuildersResult)

describeImageBuilders setOptions =
    
    let
        requestInput = DescribeImageBuildersRequest
            
            options.names
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeImageBuildersOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeImageBuildersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeImageBuilders"
                
                (AWS.Core.Decode.ResultDecoder "DescribeImageBuildersResult" describeImageBuildersResultDecoder)
                
            )



{-| Options for a describeImageBuilders request
-}
type alias DescribeImageBuildersOptions =
    {
    names : Maybe (List String),maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own. </p>

__Required Parameters__

* `name` __:__ `String`


-}

describeImagePermissions :
  
    String ->
  
  
    ( DescribeImagePermissionsOptions -> DescribeImagePermissionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeImagePermissionsResult)

describeImagePermissions name setOptions =
    
    let
        requestInput = DescribeImagePermissionsRequest
            
            name
            
            options.maxResults
            
            options.sharedAwsAccountIds
            
            options.nextToken
            
        
        options = setOptions (DescribeImagePermissionsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeImagePermissionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeImagePermissions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeImagePermissionsResult" describeImagePermissionsResultDecoder)
                
            )



{-| Options for a describeImagePermissions request
-}
type alias DescribeImagePermissionsOptions =
    {
    maxResults : Maybe Int,sharedAwsAccountIds : Maybe (List String),nextToken : Maybe String
    }



{-| <p>Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.</p>

__Required Parameters__



-}

describeImages :
  
  
    ( DescribeImagesOptions -> DescribeImagesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeImagesResult)

describeImages setOptions =
    
    let
        requestInput = DescribeImagesRequest
            
            options.names
            
            options.arns
            
            options.type_
            
            options.nextToken
            
            options.maxResults
            
        
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
                
                (AWS.Core.Decode.ResultDecoder "DescribeImagesResult" describeImagesResultDecoder)
                
            )



{-| Options for a describeImages request
-}
type alias DescribeImagesOptions =
    {
    names : Maybe (List String),arns : Maybe (List String),type_ : Maybe VisibilityType,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Retrieves a list that describes the streaming sessions for a specified stack and fleet. If a UserId is provided for the stack and fleet, only streaming sessions for that user are described. If an authentication type is not provided, the default is to authenticate users using a streaming URL.</p>

__Required Parameters__

* `stackName` __:__ `String`
* `fleetName` __:__ `String`


-}

describeSessions :
  
    String ->
  
    String ->
  
  
    ( DescribeSessionsOptions -> DescribeSessionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSessionsResult)

describeSessions stackName fleetName setOptions =
    
    let
        requestInput = DescribeSessionsRequest
            
            stackName
            
            fleetName
            
            options.userId
            
            options.nextToken
            
            options.limit
            
            options.authenticationType
            
        
        options = setOptions (DescribeSessionsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeSessionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeSessions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeSessionsResult" describeSessionsResultDecoder)
                
            )



{-| Options for a describeSessions request
-}
type alias DescribeSessionsOptions =
    {
    userId : Maybe String,nextToken : Maybe String,limit : Maybe Int,authenticationType : Maybe AuthenticationType
    }



{-| <p>Retrieves a list that describes one or more specified stacks, if the stack names are provided. Otherwise, all stacks in the account are described.</p>

__Required Parameters__



-}

describeStacks :
  
  
    ( DescribeStacksOptions -> DescribeStacksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStacksResult)

describeStacks setOptions =
    
    let
        requestInput = DescribeStacksRequest
            
            options.names
            
            options.nextToken
            
        
        options = setOptions (DescribeStacksOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeStacksRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeStacks"
                
                (AWS.Core.Decode.ResultDecoder "DescribeStacksResult" describeStacksResultDecoder)
                
            )



{-| Options for a describeStacks request
-}
type alias DescribeStacksOptions =
    {
    names : Maybe (List String),nextToken : Maybe String
    }



{-| <p>Retrieves a list that describes one or more usage report subscriptions.</p>

__Required Parameters__



-}

describeUsageReportSubscriptions :
  
  
    ( DescribeUsageReportSubscriptionsOptions -> DescribeUsageReportSubscriptionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeUsageReportSubscriptionsResult)

describeUsageReportSubscriptions setOptions =
    
    let
        requestInput = DescribeUsageReportSubscriptionsRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeUsageReportSubscriptionsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeUsageReportSubscriptionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeUsageReportSubscriptions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeUsageReportSubscriptionsResult" describeUsageReportSubscriptionsResultDecoder)
                
            )



{-| Options for a describeUsageReportSubscriptions request
-}
type alias DescribeUsageReportSubscriptionsOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves a list that describes the UserStackAssociation objects. You must specify either or both of the following:</p> <ul> <li> <p>The stack name</p> </li> <li> <p>The user name (email address of the user associated with the stack) and the authentication type for the user</p> </li> </ul>

__Required Parameters__



-}

describeUserStackAssociations :
  
  
    ( DescribeUserStackAssociationsOptions -> DescribeUserStackAssociationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeUserStackAssociationsResult)

describeUserStackAssociations setOptions =
    
    let
        requestInput = DescribeUserStackAssociationsRequest
            
            options.stackName
            
            options.userName
            
            options.authenticationType
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeUserStackAssociationsOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeUserStackAssociationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeUserStackAssociations"
                
                (AWS.Core.Decode.ResultDecoder "DescribeUserStackAssociationsResult" describeUserStackAssociationsResultDecoder)
                
            )



{-| Options for a describeUserStackAssociations request
-}
type alias DescribeUserStackAssociationsOptions =
    {
    stackName : Maybe String,userName : Maybe String,authenticationType : Maybe AuthenticationType,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves a list that describes one or more specified users in the user pool.</p>

__Required Parameters__

* `authenticationType` __:__ `AuthenticationType`


-}

describeUsers :
  
    AuthenticationType ->
  
  
    ( DescribeUsersOptions -> DescribeUsersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeUsersResult)

describeUsers authenticationType setOptions =
    
    let
        requestInput = DescribeUsersRequest
            
            authenticationType
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeUsersOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeUsersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeUsers"
                
                (AWS.Core.Decode.ResultDecoder "DescribeUsersResult" describeUsersResultDecoder)
                
            )



{-| Options for a describeUsers request
-}
type alias DescribeUsersOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Disables the specified user in the user pool. Users can't sign in to AppStream 2.0 until they are re-enabled. This action does not delete the user. </p>

__Required Parameters__

* `userName` __:__ `String`
* `authenticationType` __:__ `AuthenticationType`


-}

disableUser :
  
    String ->
  
    AuthenticationType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisableUserResult)

disableUser userName authenticationType =
    
    let
        requestInput = DisableUserRequest
            
            userName
            
            authenticationType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disableUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisableUser"
                
                (AWS.Core.Decode.ResultDecoder "DisableUserResult" disableUserResultDecoder)
                
            )





{-| <p>Disassociates the specified fleet from the specified stack.</p>

__Required Parameters__

* `fleetName` __:__ `String`
* `stackName` __:__ `String`


-}

disassociateFleet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateFleetResult)

disassociateFleet fleetName stackName =
    
    let
        requestInput = DisassociateFleetRequest
            
            fleetName
            
            stackName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateFleetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateFleet"
                
                (AWS.Core.Decode.ResultDecoder "DisassociateFleetResult" disassociateFleetResultDecoder)
                
            )





{-| <p>Enables a user in the user pool. After being enabled, users can sign in to AppStream 2.0 and open applications from the stacks to which they are assigned.</p>

__Required Parameters__

* `userName` __:__ `String`
* `authenticationType` __:__ `AuthenticationType`


-}

enableUser :
  
    String ->
  
    AuthenticationType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnableUserResult)

enableUser userName authenticationType =
    
    let
        requestInput = EnableUserRequest
            
            userName
            
            authenticationType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> enableUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "EnableUser"
                
                (AWS.Core.Decode.ResultDecoder "EnableUserResult" enableUserResultDecoder)
                
            )





{-| <p>Immediately stops the specified streaming session.</p>

__Required Parameters__

* `sessionId` __:__ `String`


-}

expireSession :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ExpireSessionResult)

expireSession sessionId =
    
    let
        requestInput = ExpireSessionRequest
            
            sessionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> expireSessionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ExpireSession"
                
                (AWS.Core.Decode.ResultDecoder "ExpireSessionResult" expireSessionResultDecoder)
                
            )





{-| <p>Retrieves the name of the fleet that is associated with the specified stack.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}

listAssociatedFleets :
  
    String ->
  
  
    ( ListAssociatedFleetsOptions -> ListAssociatedFleetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAssociatedFleetsResult)

listAssociatedFleets stackName setOptions =
    
    let
        requestInput = ListAssociatedFleetsRequest
            
            stackName
            
            options.nextToken
            
        
        options = setOptions (ListAssociatedFleetsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAssociatedFleetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAssociatedFleets"
                
                (AWS.Core.Decode.ResultDecoder "ListAssociatedFleetsResult" listAssociatedFleetsResultDecoder)
                
            )



{-| Options for a listAssociatedFleets request
-}
type alias ListAssociatedFleetsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Retrieves the name of the stack with which the specified fleet is associated.</p>

__Required Parameters__

* `fleetName` __:__ `String`


-}

listAssociatedStacks :
  
    String ->
  
  
    ( ListAssociatedStacksOptions -> ListAssociatedStacksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAssociatedStacksResult)

listAssociatedStacks fleetName setOptions =
    
    let
        requestInput = ListAssociatedStacksRequest
            
            fleetName
            
            options.nextToken
            
        
        options = setOptions (ListAssociatedStacksOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAssociatedStacksRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAssociatedStacks"
                
                (AWS.Core.Decode.ResultDecoder "ListAssociatedStacksResult" listAssociatedStacksResultDecoder)
                
            )



{-| Options for a listAssociatedStacks request
-}
type alias ListAssociatedStacksOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Retrieves a list of all tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks.</p> <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Developer Guide</i>.</p>

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





{-| <p>Starts the specified fleet.</p>

__Required Parameters__

* `name` __:__ `String`


-}

startFleet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartFleetResult)

startFleet name =
    
    let
        requestInput = StartFleetRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startFleetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartFleet"
                
                (AWS.Core.Decode.ResultDecoder "StartFleetResult" startFleetResultDecoder)
                
            )





{-| <p>Starts the specified image builder.</p>

__Required Parameters__

* `name` __:__ `String`


-}

startImageBuilder :
  
    String ->
  
  
    ( StartImageBuilderOptions -> StartImageBuilderOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartImageBuilderResult)

startImageBuilder name setOptions =
    
    let
        requestInput = StartImageBuilderRequest
            
            name
            
            options.appstreamAgentVersion
            
        
        options = setOptions (StartImageBuilderOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startImageBuilderRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartImageBuilder"
                
                (AWS.Core.Decode.ResultDecoder "StartImageBuilderResult" startImageBuilderResultDecoder)
                
            )



{-| Options for a startImageBuilder request
-}
type alias StartImageBuilderOptions =
    {
    appstreamAgentVersion : Maybe String
    }



{-| <p>Stops the specified fleet.</p>

__Required Parameters__

* `name` __:__ `String`


-}

stopFleet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopFleetResult)

stopFleet name =
    
    let
        requestInput = StopFleetRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopFleetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopFleet"
                
                (AWS.Core.Decode.ResultDecoder "StopFleetResult" stopFleetResultDecoder)
                
            )





{-| <p>Stops the specified image builder.</p>

__Required Parameters__

* `name` __:__ `String`


-}

stopImageBuilder :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopImageBuilderResult)

stopImageBuilder name =
    
    let
        requestInput = StopImageBuilderRequest
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopImageBuilderRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopImageBuilder"
                
                (AWS.Core.Decode.ResultDecoder "StopImageBuilderResult" stopImageBuilderResultDecoder)
                
            )





{-| <p>Adds or overwrites one or more tags for the specified AppStream 2.0 resource. You can tag AppStream 2.0 image builders, images, fleets, and stacks.</p> <p>Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value.</p> <p>To list the current tags for your resources, use <a>ListTagsForResource</a>. To disassociate tags from your resources, use <a>UntagResource</a>.</p> <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Developer Guide</i>.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tags` __:__ `(Dict String String)`


-}

tagResource :
  
    String ->
  
    (Dict String String) ->
  
  
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





{-| <p>Disassociates one or more specified tags from the specified AppStream 2.0 resource.</p> <p>To list the current tags for your resources, use <a>ListTagsForResource</a>.</p> <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Developer Guide</i>.</p>

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





{-| <p>Updates the specified Directory Config object in AppStream 2.0. This object includes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>

__Required Parameters__

* `directoryName` __:__ `String`


-}

updateDirectoryConfig :
  
    String ->
  
  
    ( UpdateDirectoryConfigOptions -> UpdateDirectoryConfigOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDirectoryConfigResult)

updateDirectoryConfig directoryName setOptions =
    
    let
        requestInput = UpdateDirectoryConfigRequest
            
            directoryName
            
            options.organizationalUnitDistinguishedNames
            
            options.serviceAccountCredentials
            
        
        options = setOptions (UpdateDirectoryConfigOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateDirectoryConfigRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateDirectoryConfig"
                
                (AWS.Core.Decode.ResultDecoder "UpdateDirectoryConfigResult" updateDirectoryConfigResultDecoder)
                
            )



{-| Options for a updateDirectoryConfig request
-}
type alias UpdateDirectoryConfigOptions =
    {
    organizationalUnitDistinguishedNames : Maybe (List String),serviceAccountCredentials : Maybe ServiceAccountCredentials
    }



{-| <p>Updates the specified fleet.</p> <p>If the fleet is in the <code>STOPPED</code> state, you can update any attribute except the fleet name. If the fleet is in the <code>RUNNING</code> state, you can update the <code>DisplayName</code>, <code>ComputeCapacity</code>, <code>ImageARN</code>, <code>ImageName</code>, and <code>DisconnectTimeoutInSeconds</code> attributes. If the fleet is in the <code>STARTING</code> or <code>STOPPING</code> state, you can't update it.</p>

__Required Parameters__



-}

updateFleet :
  
  
    ( UpdateFleetOptions -> UpdateFleetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateFleetResult)

updateFleet setOptions =
    
    let
        requestInput = UpdateFleetRequest
            
            options.imageName
            
            options.imageArn
            
            options.name
            
            options.instanceType
            
            options.computeCapacity
            
            options.vpcConfig
            
            options.maxUserDurationInSeconds
            
            options.disconnectTimeoutInSeconds
            
            options.deleteVpcConfig
            
            options.description
            
            options.displayName
            
            options.enableDefaultInternetAccess
            
            options.domainJoinInfo
            
            options.idleDisconnectTimeoutInSeconds
            
            options.attributesToDelete
            
        
        options = setOptions (UpdateFleetOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateFleetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateFleet"
                
                (AWS.Core.Decode.ResultDecoder "UpdateFleetResult" updateFleetResultDecoder)
                
            )



{-| Options for a updateFleet request
-}
type alias UpdateFleetOptions =
    {
    imageName : Maybe String,imageArn : Maybe String,name : Maybe String,instanceType : Maybe String,computeCapacity : Maybe ComputeCapacity,vpcConfig : Maybe VpcConfig,maxUserDurationInSeconds : Maybe Int,disconnectTimeoutInSeconds : Maybe Int,deleteVpcConfig : Maybe Bool,description : Maybe String,displayName : Maybe String,enableDefaultInternetAccess : Maybe Bool,domainJoinInfo : Maybe DomainJoinInfo,idleDisconnectTimeoutInSeconds : Maybe Int,attributesToDelete : Maybe (List FleetAttribute)
    }



{-| <p>Adds or updates permissions for the specified private image. </p>

__Required Parameters__

* `name` __:__ `String`
* `sharedAccountId` __:__ `String`
* `imagePermissions` __:__ `ImagePermissions`


-}

updateImagePermissions :
  
    String ->
  
    String ->
  
    ImagePermissions ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateImagePermissionsResult)

updateImagePermissions name sharedAccountId imagePermissions =
    
    let
        requestInput = UpdateImagePermissionsRequest
            
            name
            
            sharedAccountId
            
            imagePermissions
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateImagePermissionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateImagePermissions"
                
                (AWS.Core.Decode.ResultDecoder "UpdateImagePermissionsResult" updateImagePermissionsResultDecoder)
                
            )





{-| <p>Updates the specified fields for the specified stack.</p>

__Required Parameters__

* `name` __:__ `String`


-}

updateStack :
  
    String ->
  
  
    ( UpdateStackOptions -> UpdateStackOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateStackResult)

updateStack name setOptions =
    
    let
        requestInput = UpdateStackRequest
            
            options.displayName
            
            options.description
            
            name
            
            options.storageConnectors
            
            options.deleteStorageConnectors
            
            options.redirectURL
            
            options.feedbackURL
            
            options.attributesToDelete
            
            options.userSettings
            
            options.applicationSettings
            
        
        options = setOptions (UpdateStackOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateStackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateStack"
                
                (AWS.Core.Decode.ResultDecoder "UpdateStackResult" updateStackResultDecoder)
                
            )



{-| Options for a updateStack request
-}
type alias UpdateStackOptions =
    {
    displayName : Maybe String,description : Maybe String,storageConnectors : Maybe (List StorageConnector),deleteStorageConnectors : Maybe Bool,redirectURL : Maybe String,feedbackURL : Maybe String,attributesToDelete : Maybe (List StackAttribute),userSettings : Maybe (List UserSetting),applicationSettings : Maybe ApplicationSettings
    }




{-| One of

* `Action_CLIPBOARD_COPY_FROM_LOCAL_DEVICE`
* `Action_CLIPBOARD_COPY_TO_LOCAL_DEVICE`
* `Action_FILE_UPLOAD`
* `Action_FILE_DOWNLOAD`
* `Action_PRINTING_TO_LOCAL_DEVICE`

-}
type Action
    = Action_CLIPBOARD_COPY_FROM_LOCAL_DEVICE
    | Action_CLIPBOARD_COPY_TO_LOCAL_DEVICE
    | Action_FILE_UPLOAD
    | Action_FILE_DOWNLOAD
    | Action_PRINTING_TO_LOCAL_DEVICE



actionDecoder : JD.Decoder Action
actionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CLIPBOARD_COPY_FROM_LOCAL_DEVICE" ->
                        JD.succeed Action_CLIPBOARD_COPY_FROM_LOCAL_DEVICE

                    "CLIPBOARD_COPY_TO_LOCAL_DEVICE" ->
                        JD.succeed Action_CLIPBOARD_COPY_TO_LOCAL_DEVICE

                    "FILE_UPLOAD" ->
                        JD.succeed Action_FILE_UPLOAD

                    "FILE_DOWNLOAD" ->
                        JD.succeed Action_FILE_DOWNLOAD

                    "PRINTING_TO_LOCAL_DEVICE" ->
                        JD.succeed Action_PRINTING_TO_LOCAL_DEVICE


                    _ ->
                        JD.fail "bad thing"
            )




actionToString : Action -> String
actionToString val =
    case val of
        Action_CLIPBOARD_COPY_FROM_LOCAL_DEVICE ->
            "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"

        Action_CLIPBOARD_COPY_TO_LOCAL_DEVICE ->
            "CLIPBOARD_COPY_TO_LOCAL_DEVICE"

        Action_FILE_UPLOAD ->
            "FILE_UPLOAD"

        Action_FILE_DOWNLOAD ->
            "FILE_DOWNLOAD"

        Action_PRINTING_TO_LOCAL_DEVICE ->
            "PRINTING_TO_LOCAL_DEVICE"




{-| <p>Describes an application in the application catalog.</p>
-}
type alias Application =
    { name : Maybe String
    , displayName : Maybe String
    , iconURL : Maybe String
    , launchPath : Maybe String
    , launchParameters : Maybe String
    , enabled : Maybe Bool
    , metadata : Maybe (Dict String String)
    }



applicationDecoder : JD.Decoder Application
applicationDecoder =
    JD.succeed Application
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisplayName", "displayName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IconURL", "iconURL"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LaunchPath", "launchPath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LaunchParameters", "launchParameters"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Metadata", "metadata"]
            (AWS.Core.Decode.dict JD.string)
        )
        




applicationToString : Application -> String -- List (String, String)
applicationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "displayName" "" -- val.displayName
        
    --     |> Dict.insert
    --         "iconURL" "" -- val.iconURL
        
    --     |> Dict.insert
    --         "launchPath" "" -- val.launchPath
        
    --     |> Dict.insert
    --         "launchParameters" "" -- val.launchParameters
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "metadata" "" -- val.metadata
        
    --     |> Dict.toList
    ""



{-| <p>The persistent application settings for users of a stack.</p>
-}
type alias ApplicationSettings =
    { enabled : Bool
    , settingsGroup : Maybe String
    }



applicationSettingsDecoder : JD.Decoder ApplicationSettings
applicationSettingsDecoder =
    JD.succeed ApplicationSettings
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SettingsGroup", "settingsGroup"]
            JD.string
        )
        




applicationSettingsToString : ApplicationSettings -> String -- List (String, String)
applicationSettingsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "settingsGroup" "" -- val.settingsGroup
        
    --     |> Dict.toList
    ""



{-| <p>Describes the persistent application settings for users of a stack.</p>
-}
type alias ApplicationSettingsResponse =
    { enabled : Maybe Bool
    , settingsGroup : Maybe String
    , s3BucketName : Maybe String
    }



applicationSettingsResponseDecoder : JD.Decoder ApplicationSettingsResponse
applicationSettingsResponseDecoder =
    JD.succeed ApplicationSettingsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SettingsGroup", "settingsGroup"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BucketName", "s3BucketName"]
            JD.string
        )
        




applicationSettingsResponseToString : ApplicationSettingsResponse -> String -- List (String, String)
applicationSettingsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "settingsGroup" "" -- val.settingsGroup
        
    --     |> Dict.insert
    --         "s3BucketName" "" -- val.s3BucketName
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from associateFle
-}
type alias AssociateFleetResult =
    { 
    }



associateFleetResultDecoder : JD.Decoder AssociateFleetResult
associateFleetResultDecoder =
    JD.succeed AssociateFleetResult
        




associateFleetResultToString : AssociateFleetResult -> String -- List (String, String)
associateFleetResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `AuthenticationType_API`
* `AuthenticationType_SAML`
* `AuthenticationType_USERPOOL`

-}
type AuthenticationType
    = AuthenticationType_API
    | AuthenticationType_SAML
    | AuthenticationType_USERPOOL



authenticationTypeDecoder : JD.Decoder AuthenticationType
authenticationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "API" ->
                        JD.succeed AuthenticationType_API

                    "SAML" ->
                        JD.succeed AuthenticationType_SAML

                    "USERPOOL" ->
                        JD.succeed AuthenticationType_USERPOOL


                    _ ->
                        JD.fail "bad thing"
            )




authenticationTypeToString : AuthenticationType -> String
authenticationTypeToString val =
    case val of
        AuthenticationType_API ->
            "API"

        AuthenticationType_SAML ->
            "SAML"

        AuthenticationType_USERPOOL ->
            "USERPOOL"




{-| Type of HTTP response from batchAssociateUserSta
-}
type alias BatchAssociateUserStackResult =
    { errors : Maybe (List UserStackAssociationError)
    }



batchAssociateUserStackResultDecoder : JD.Decoder BatchAssociateUserStackResult
batchAssociateUserStackResultDecoder =
    JD.succeed BatchAssociateUserStackResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errors", "Errors"]
            (JD.list userStackAssociationErrorDecoder)
        )
        




batchAssociateUserStackResultToString : BatchAssociateUserStackResult -> String -- List (String, String)
batchAssociateUserStackResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "errors" "" -- val.errors
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchDisassociateUserSta
-}
type alias BatchDisassociateUserStackResult =
    { errors : Maybe (List UserStackAssociationError)
    }



batchDisassociateUserStackResultDecoder : JD.Decoder BatchDisassociateUserStackResult
batchDisassociateUserStackResultDecoder =
    JD.succeed BatchDisassociateUserStackResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errors", "Errors"]
            (JD.list userStackAssociationErrorDecoder)
        )
        




batchDisassociateUserStackResultToString : BatchDisassociateUserStackResult -> String -- List (String, String)
batchDisassociateUserStackResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "errors" "" -- val.errors
        
    --     |> Dict.toList
    ""



{-| <p>Describes the capacity for a fleet.</p>
-}
type alias ComputeCapacity =
    { desiredInstances : Int
    }



computeCapacityDecoder : JD.Decoder ComputeCapacity
computeCapacityDecoder =
    JD.succeed ComputeCapacity
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DesiredInstances", "desiredInstances"]
            JD.int
        )
        




computeCapacityToString : ComputeCapacity -> String -- List (String, String)
computeCapacityToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "desiredInstances" "" -- val.desiredInstances
        
    --     |> Dict.toList
    ""



{-| <p>Describes the capacity status for a fleet.</p>
-}
type alias ComputeCapacityStatus =
    { desired : Int
    , running : Maybe Int
    , inUse : Maybe Int
    , available : Maybe Int
    }



computeCapacityStatusDecoder : JD.Decoder ComputeCapacityStatus
computeCapacityStatusDecoder =
    JD.succeed ComputeCapacityStatus
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Desired", "desired"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Running", "running"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InUse", "inUse"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Available", "available"]
            JD.int
        )
        




computeCapacityStatusToString : ComputeCapacityStatus -> String -- List (String, String)
computeCapacityStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "desired" "" -- val.desired
        
    --     |> Dict.insert
    --         "running" "" -- val.running
        
    --     |> Dict.insert
    --         "inUse" "" -- val.inUse
        
    --     |> Dict.insert
    --         "available" "" -- val.available
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from copyImage
-}
type alias CopyImageResponse =
    { destinationImageName : Maybe String
    }



copyImageResponseDecoder : JD.Decoder CopyImageResponse
copyImageResponseDecoder =
    JD.succeed CopyImageResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DestinationImageName", "destinationImageName"]
            JD.string
        )
        




copyImageResponseToString : CopyImageResponse -> String -- List (String, String)
copyImageResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "destinationImageName" "" -- val.destinationImageName
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDirectoryConf
-}
type alias CreateDirectoryConfigResult =
    { directoryConfig : Maybe DirectoryConfig
    }



createDirectoryConfigResultDecoder : JD.Decoder CreateDirectoryConfigResult
createDirectoryConfigResultDecoder =
    JD.succeed CreateDirectoryConfigResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DirectoryConfig", "directoryConfig"]
            directoryConfigDecoder
        )
        




createDirectoryConfigResultToString : CreateDirectoryConfigResult -> String -- List (String, String)
createDirectoryConfigResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directoryConfig" "" -- val.directoryConfig
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createFle
-}
type alias CreateFleetResult =
    { fleet : Maybe Fleet
    }



createFleetResultDecoder : JD.Decoder CreateFleetResult
createFleetResultDecoder =
    JD.succeed CreateFleetResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Fleet", "fleet"]
            fleetDecoder
        )
        




createFleetResultToString : CreateFleetResult -> String -- List (String, String)
createFleetResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleet" "" -- val.fleet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createImageBuild
-}
type alias CreateImageBuilderResult =
    { imageBuilder : Maybe ImageBuilder
    }



createImageBuilderResultDecoder : JD.Decoder CreateImageBuilderResult
createImageBuilderResultDecoder =
    JD.succeed CreateImageBuilderResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageBuilder", "imageBuilder"]
            imageBuilderDecoder
        )
        




createImageBuilderResultToString : CreateImageBuilderResult -> String -- List (String, String)
createImageBuilderResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageBuilder" "" -- val.imageBuilder
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createImageBuilderStreamingU
-}
type alias CreateImageBuilderStreamingURLResult =
    { streamingURL : Maybe String
    , expires : Maybe Posix
    }



createImageBuilderStreamingURLResultDecoder : JD.Decoder CreateImageBuilderStreamingURLResult
createImageBuilderStreamingURLResultDecoder =
    JD.succeed CreateImageBuilderStreamingURLResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StreamingURL", "streamingURL"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Expires", "expires"]
            JDX.datetime
        )
        




createImageBuilderStreamingURLResultToString : CreateImageBuilderStreamingURLResult -> String -- List (String, String)
createImageBuilderStreamingURLResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "streamingURL" "" -- val.streamingURL
        
    --     |> Dict.insert
    --         "expires" "" -- val.expires
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createSta
-}
type alias CreateStackResult =
    { stack : Maybe Stack
    }



createStackResultDecoder : JD.Decoder CreateStackResult
createStackResultDecoder =
    JD.succeed CreateStackResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Stack", "stack"]
            stackDecoder
        )
        




createStackResultToString : CreateStackResult -> String -- List (String, String)
createStackResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stack" "" -- val.stack
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createStreamingU
-}
type alias CreateStreamingURLResult =
    { streamingURL : Maybe String
    , expires : Maybe Posix
    }



createStreamingURLResultDecoder : JD.Decoder CreateStreamingURLResult
createStreamingURLResultDecoder =
    JD.succeed CreateStreamingURLResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StreamingURL", "streamingURL"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Expires", "expires"]
            JDX.datetime
        )
        




createStreamingURLResultToString : CreateStreamingURLResult -> String -- List (String, String)
createStreamingURLResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "streamingURL" "" -- val.streamingURL
        
    --     |> Dict.insert
    --         "expires" "" -- val.expires
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createUsageReportSubscripti
-}
type alias CreateUsageReportSubscriptionResult =
    { s3BucketName : Maybe String
    , schedule : Maybe UsageReportSchedule
    }



createUsageReportSubscriptionResultDecoder : JD.Decoder CreateUsageReportSubscriptionResult
createUsageReportSubscriptionResultDecoder =
    JD.succeed CreateUsageReportSubscriptionResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BucketName", "s3BucketName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Schedule", "schedule"]
            usageReportScheduleDecoder
        )
        




createUsageReportSubscriptionResultToString : CreateUsageReportSubscriptionResult -> String -- List (String, String)
createUsageReportSubscriptionResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3BucketName" "" -- val.s3BucketName
        
    --     |> Dict.insert
    --         "schedule" "" -- val.schedule
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createUs
-}
type alias CreateUserResult =
    { 
    }



createUserResultDecoder : JD.Decoder CreateUserResult
createUserResultDecoder =
    JD.succeed CreateUserResult
        




createUserResultToString : CreateUserResult -> String -- List (String, String)
createUserResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDirectoryConf
-}
type alias DeleteDirectoryConfigResult =
    { 
    }



deleteDirectoryConfigResultDecoder : JD.Decoder DeleteDirectoryConfigResult
deleteDirectoryConfigResultDecoder =
    JD.succeed DeleteDirectoryConfigResult
        




deleteDirectoryConfigResultToString : DeleteDirectoryConfigResult -> String -- List (String, String)
deleteDirectoryConfigResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteFle
-}
type alias DeleteFleetResult =
    { 
    }



deleteFleetResultDecoder : JD.Decoder DeleteFleetResult
deleteFleetResultDecoder =
    JD.succeed DeleteFleetResult
        




deleteFleetResultToString : DeleteFleetResult -> String -- List (String, String)
deleteFleetResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteImageBuild
-}
type alias DeleteImageBuilderResult =
    { imageBuilder : Maybe ImageBuilder
    }



deleteImageBuilderResultDecoder : JD.Decoder DeleteImageBuilderResult
deleteImageBuilderResultDecoder =
    JD.succeed DeleteImageBuilderResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageBuilder", "imageBuilder"]
            imageBuilderDecoder
        )
        




deleteImageBuilderResultToString : DeleteImageBuilderResult -> String -- List (String, String)
deleteImageBuilderResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageBuilder" "" -- val.imageBuilder
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteImagePermissio
-}
type alias DeleteImagePermissionsResult =
    { 
    }



deleteImagePermissionsResultDecoder : JD.Decoder DeleteImagePermissionsResult
deleteImagePermissionsResultDecoder =
    JD.succeed DeleteImagePermissionsResult
        




deleteImagePermissionsResultToString : DeleteImagePermissionsResult -> String -- List (String, String)
deleteImagePermissionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteIma
-}
type alias DeleteImageResult =
    { image : Maybe Image
    }



deleteImageResultDecoder : JD.Decoder DeleteImageResult
deleteImageResultDecoder =
    JD.succeed DeleteImageResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Image", "image"]
            imageDecoder
        )
        




deleteImageResultToString : DeleteImageResult -> String -- List (String, String)
deleteImageResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "image" "" -- val.image
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteSta
-}
type alias DeleteStackResult =
    { 
    }



deleteStackResultDecoder : JD.Decoder DeleteStackResult
deleteStackResultDecoder =
    JD.succeed DeleteStackResult
        




deleteStackResultToString : DeleteStackResult -> String -- List (String, String)
deleteStackResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteUsageReportSubscripti
-}
type alias DeleteUsageReportSubscriptionResult =
    { 
    }



deleteUsageReportSubscriptionResultDecoder : JD.Decoder DeleteUsageReportSubscriptionResult
deleteUsageReportSubscriptionResultDecoder =
    JD.succeed DeleteUsageReportSubscriptionResult
        




deleteUsageReportSubscriptionResultToString : DeleteUsageReportSubscriptionResult -> String -- List (String, String)
deleteUsageReportSubscriptionResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteUs
-}
type alias DeleteUserResult =
    { 
    }



deleteUserResultDecoder : JD.Decoder DeleteUserResult
deleteUserResultDecoder =
    JD.succeed DeleteUserResult
        




deleteUserResultToString : DeleteUserResult -> String -- List (String, String)
deleteUserResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeDirectoryConfi
-}
type alias DescribeDirectoryConfigsResult =
    { directoryConfigs : Maybe (List DirectoryConfig)
    , nextToken : Maybe String
    }



describeDirectoryConfigsResultDecoder : JD.Decoder DescribeDirectoryConfigsResult
describeDirectoryConfigsResultDecoder =
    JD.succeed DescribeDirectoryConfigsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DirectoryConfigs", "directoryConfigs"]
            (JD.list directoryConfigDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeDirectoryConfigsResultToString : DescribeDirectoryConfigsResult -> String -- List (String, String)
describeDirectoryConfigsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directoryConfigs" "" -- val.directoryConfigs
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeFlee
-}
type alias DescribeFleetsResult =
    { fleets : Maybe (List Fleet)
    , nextToken : Maybe String
    }



describeFleetsResultDecoder : JD.Decoder DescribeFleetsResult
describeFleetsResultDecoder =
    JD.succeed DescribeFleetsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Fleets", "fleets"]
            (JD.list fleetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeFleetsResultToString : DescribeFleetsResult -> String -- List (String, String)
describeFleetsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleets" "" -- val.fleets
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeImageBuilde
-}
type alias DescribeImageBuildersResult =
    { imageBuilders : Maybe (List ImageBuilder)
    , nextToken : Maybe String
    }



describeImageBuildersResultDecoder : JD.Decoder DescribeImageBuildersResult
describeImageBuildersResultDecoder =
    JD.succeed DescribeImageBuildersResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageBuilders", "imageBuilders"]
            (JD.list imageBuilderDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeImageBuildersResultToString : DescribeImageBuildersResult -> String -- List (String, String)
describeImageBuildersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageBuilders" "" -- val.imageBuilders
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeImagePermissio
-}
type alias DescribeImagePermissionsResult =
    { name : Maybe String
    , sharedImagePermissionsList : Maybe (List SharedImagePermissions)
    , nextToken : Maybe String
    }



describeImagePermissionsResultDecoder : JD.Decoder DescribeImagePermissionsResult
describeImagePermissionsResultDecoder =
    JD.succeed DescribeImagePermissionsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SharedImagePermissionsList", "sharedImagePermissionsList"]
            (JD.list sharedImagePermissionsDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeImagePermissionsResultToString : DescribeImagePermissionsResult -> String -- List (String, String)
describeImagePermissionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "sharedImagePermissionsList" "" -- val.sharedImagePermissionsList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeImag
-}
type alias DescribeImagesResult =
    { images : Maybe (List Image)
    , nextToken : Maybe String
    }



describeImagesResultDecoder : JD.Decoder DescribeImagesResult
describeImagesResultDecoder =
    JD.succeed DescribeImagesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Images", "images"]
            (JD.list imageDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeImagesResultToString : DescribeImagesResult -> String -- List (String, String)
describeImagesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "images" "" -- val.images
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeSessio
-}
type alias DescribeSessionsResult =
    { sessions : Maybe (List Session)
    , nextToken : Maybe String
    }



describeSessionsResultDecoder : JD.Decoder DescribeSessionsResult
describeSessionsResultDecoder =
    JD.succeed DescribeSessionsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Sessions", "sessions"]
            (JD.list sessionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeSessionsResultToString : DescribeSessionsResult -> String -- List (String, String)
describeSessionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sessions" "" -- val.sessions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeStac
-}
type alias DescribeStacksResult =
    { stacks : Maybe (List Stack)
    , nextToken : Maybe String
    }



describeStacksResultDecoder : JD.Decoder DescribeStacksResult
describeStacksResultDecoder =
    JD.succeed DescribeStacksResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Stacks", "stacks"]
            (JD.list stackDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeStacksResultToString : DescribeStacksResult -> String -- List (String, String)
describeStacksResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stacks" "" -- val.stacks
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeUsageReportSubscriptio
-}
type alias DescribeUsageReportSubscriptionsResult =
    { usageReportSubscriptions : Maybe (List UsageReportSubscription)
    , nextToken : Maybe String
    }



describeUsageReportSubscriptionsResultDecoder : JD.Decoder DescribeUsageReportSubscriptionsResult
describeUsageReportSubscriptionsResultDecoder =
    JD.succeed DescribeUsageReportSubscriptionsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UsageReportSubscriptions", "usageReportSubscriptions"]
            (JD.list usageReportSubscriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeUsageReportSubscriptionsResultToString : DescribeUsageReportSubscriptionsResult -> String -- List (String, String)
describeUsageReportSubscriptionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "usageReportSubscriptions" "" -- val.usageReportSubscriptions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeUserStackAssociatio
-}
type alias DescribeUserStackAssociationsResult =
    { userStackAssociations : Maybe (List UserStackAssociation)
    , nextToken : Maybe String
    }



describeUserStackAssociationsResultDecoder : JD.Decoder DescribeUserStackAssociationsResult
describeUserStackAssociationsResultDecoder =
    JD.succeed DescribeUserStackAssociationsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserStackAssociations", "userStackAssociations"]
            (JD.list userStackAssociationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeUserStackAssociationsResultToString : DescribeUserStackAssociationsResult -> String -- List (String, String)
describeUserStackAssociationsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userStackAssociations" "" -- val.userStackAssociations
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeUse
-}
type alias DescribeUsersResult =
    { users : Maybe (List User)
    , nextToken : Maybe String
    }



describeUsersResultDecoder : JD.Decoder DescribeUsersResult
describeUsersResultDecoder =
    JD.succeed DescribeUsersResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Users", "users"]
            (JD.list userDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeUsersResultToString : DescribeUsersResult -> String -- List (String, String)
describeUsersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "users" "" -- val.users
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>Describes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>
-}
type alias DirectoryConfig =
    { directoryName : String
    , organizationalUnitDistinguishedNames : Maybe (List String)
    , serviceAccountCredentials : Maybe ServiceAccountCredentials
    , createdTime : Maybe Posix
    }



directoryConfigDecoder : JD.Decoder DirectoryConfig
directoryConfigDecoder =
    JD.succeed DirectoryConfig
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DirectoryName", "directoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OrganizationalUnitDistinguishedNames", "organizationalUnitDistinguishedNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceAccountCredentials", "serviceAccountCredentials"]
            serviceAccountCredentialsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        




directoryConfigToString : DirectoryConfig -> String -- List (String, String)
directoryConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directoryName" "" -- val.directoryName
        
    --     |> Dict.insert
    --         "organizationalUnitDistinguishedNames" "" -- val.organizationalUnitDistinguishedNames
        
    --     |> Dict.insert
    --         "serviceAccountCredentials" "" -- val.serviceAccountCredentials
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disableUs
-}
type alias DisableUserResult =
    { 
    }



disableUserResultDecoder : JD.Decoder DisableUserResult
disableUserResultDecoder =
    JD.succeed DisableUserResult
        




disableUserResultToString : DisableUserResult -> String -- List (String, String)
disableUserResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disassociateFle
-}
type alias DisassociateFleetResult =
    { 
    }



disassociateFleetResultDecoder : JD.Decoder DisassociateFleetResult
disassociateFleetResultDecoder =
    JD.succeed DisassociateFleetResult
        




disassociateFleetResultToString : DisassociateFleetResult -> String -- List (String, String)
disassociateFleetResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Describes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>
-}
type alias DomainJoinInfo =
    { directoryName : Maybe String
    , organizationalUnitDistinguishedName : Maybe String
    }



domainJoinInfoDecoder : JD.Decoder DomainJoinInfo
domainJoinInfoDecoder =
    JD.succeed DomainJoinInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DirectoryName", "directoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OrganizationalUnitDistinguishedName", "organizationalUnitDistinguishedName"]
            JD.string
        )
        




domainJoinInfoToString : DomainJoinInfo -> String -- List (String, String)
domainJoinInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directoryName" "" -- val.directoryName
        
    --     |> Dict.insert
    --         "organizationalUnitDistinguishedName" "" -- val.organizationalUnitDistinguishedName
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from enableUs
-}
type alias EnableUserResult =
    { 
    }



enableUserResultDecoder : JD.Decoder EnableUserResult
enableUserResultDecoder =
    JD.succeed EnableUserResult
        




enableUserResultToString : EnableUserResult -> String -- List (String, String)
enableUserResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from expireSessi
-}
type alias ExpireSessionResult =
    { 
    }



expireSessionResultDecoder : JD.Decoder ExpireSessionResult
expireSessionResultDecoder =
    JD.succeed ExpireSessionResult
        




expireSessionResultToString : ExpireSessionResult -> String -- List (String, String)
expireSessionResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Describes a fleet.</p>
-}
type alias Fleet =
    { arn : String
    , name : String
    , displayName : Maybe String
    , description : Maybe String
    , imageName : Maybe String
    , imageArn : Maybe String
    , instanceType : String
    , fleetType : Maybe FleetType
    , computeCapacityStatus : ComputeCapacityStatus
    , maxUserDurationInSeconds : Maybe Int
    , disconnectTimeoutInSeconds : Maybe Int
    , state : FleetState
    , vpcConfig : Maybe VpcConfig
    , createdTime : Maybe Posix
    , fleetErrors : Maybe (List FleetError)
    , enableDefaultInternetAccess : Maybe Bool
    , domainJoinInfo : Maybe DomainJoinInfo
    , idleDisconnectTimeoutInSeconds : Maybe Int
    }



fleetDecoder : JD.Decoder Fleet
fleetDecoder =
    JD.succeed Fleet
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisplayName", "displayName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageName", "imageName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageArn", "imageArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["InstanceType", "instanceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetType", "fleetType"]
            fleetTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ComputeCapacityStatus", "computeCapacityStatus"]
            computeCapacityStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxUserDurationInSeconds", "maxUserDurationInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisconnectTimeoutInSeconds", "disconnectTimeoutInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["State", "state"]
            fleetStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcConfig", "vpcConfig"]
            vpcConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetErrors", "fleetErrors"]
            (JD.list fleetErrorDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnableDefaultInternetAccess", "enableDefaultInternetAccess"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DomainJoinInfo", "domainJoinInfo"]
            domainJoinInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IdleDisconnectTimeoutInSeconds", "idleDisconnectTimeoutInSeconds"]
            JD.int
        )
        




fleetToString : Fleet -> String -- List (String, String)
fleetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "displayName" "" -- val.displayName
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "imageName" "" -- val.imageName
        
    --     |> Dict.insert
    --         "imageArn" "" -- val.imageArn
        
    --     |> Dict.insert
    --         "instanceType" "" -- val.instanceType
        
    --     |> Dict.insert
    --         "fleetType" "" -- val.fleetType
        
    --     |> Dict.insert
    --         "computeCapacityStatus" "" -- val.computeCapacityStatus
        
    --     |> Dict.insert
    --         "maxUserDurationInSeconds" "" -- val.maxUserDurationInSeconds
        
    --     |> Dict.insert
    --         "disconnectTimeoutInSeconds" "" -- val.disconnectTimeoutInSeconds
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "vpcConfig" "" -- val.vpcConfig
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "fleetErrors" "" -- val.fleetErrors
        
    --     |> Dict.insert
    --         "enableDefaultInternetAccess" "" -- val.enableDefaultInternetAccess
        
    --     |> Dict.insert
    --         "domainJoinInfo" "" -- val.domainJoinInfo
        
    --     |> Dict.insert
    --         "idleDisconnectTimeoutInSeconds" "" -- val.idleDisconnectTimeoutInSeconds
        
    --     |> Dict.toList
    ""



{-| One of

* `FleetAttribute_VPC_CONFIGURATION`
* `FleetAttribute_VPC_CONFIGURATION_SECURITY_GROUP_IDS`
* `FleetAttribute_DOMAIN_JOIN_INFO`

-}
type FleetAttribute
    = FleetAttribute_VPC_CONFIGURATION
    | FleetAttribute_VPC_CONFIGURATION_SECURITY_GROUP_IDS
    | FleetAttribute_DOMAIN_JOIN_INFO



fleetAttributeDecoder : JD.Decoder FleetAttribute
fleetAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "VPC_CONFIGURATION" ->
                        JD.succeed FleetAttribute_VPC_CONFIGURATION

                    "VPC_CONFIGURATION_SECURITY_GROUP_IDS" ->
                        JD.succeed FleetAttribute_VPC_CONFIGURATION_SECURITY_GROUP_IDS

                    "DOMAIN_JOIN_INFO" ->
                        JD.succeed FleetAttribute_DOMAIN_JOIN_INFO


                    _ ->
                        JD.fail "bad thing"
            )




fleetAttributeToString : FleetAttribute -> String
fleetAttributeToString val =
    case val of
        FleetAttribute_VPC_CONFIGURATION ->
            "VPC_CONFIGURATION"

        FleetAttribute_VPC_CONFIGURATION_SECURITY_GROUP_IDS ->
            "VPC_CONFIGURATION_SECURITY_GROUP_IDS"

        FleetAttribute_DOMAIN_JOIN_INFO ->
            "DOMAIN_JOIN_INFO"




{-| <p>Describes a fleet error.</p>
-}
type alias FleetError =
    { errorCode : Maybe FleetErrorCode
    , errorMessage : Maybe String
    }



fleetErrorDecoder : JD.Decoder FleetError
fleetErrorDecoder =
    JD.succeed FleetError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            fleetErrorCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        




fleetErrorToString : FleetError -> String -- List (String, String)
fleetErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| One of

* `FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION`
* `FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION`
* `FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION`
* `FleetErrorCode_NETWORK_INTERFACE_LIMIT_EXCEEDED`
* `FleetErrorCode_INTERNAL_SERVICE_ERROR`
* `FleetErrorCode_IAM_SERVICE_ROLE_IS_MISSING`
* `FleetErrorCode_SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES`
* `FleetErrorCode_IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION`
* `FleetErrorCode_SUBNET_NOT_FOUND`
* `FleetErrorCode_IMAGE_NOT_FOUND`
* `FleetErrorCode_INVALID_SUBNET_CONFIGURATION`
* `FleetErrorCode_SECURITY_GROUPS_NOT_FOUND`
* `FleetErrorCode_IGW_NOT_ATTACHED`
* `FleetErrorCode_IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION`
* `FleetErrorCode_DOMAIN_JOIN_ERROR_FILE_NOT_FOUND`
* `FleetErrorCode_DOMAIN_JOIN_ERROR_ACCESS_DENIED`
* `FleetErrorCode_DOMAIN_JOIN_ERROR_LOGON_FAILURE`
* `FleetErrorCode_DOMAIN_JOIN_ERROR_INVALID_PARAMETER`
* `FleetErrorCode_DOMAIN_JOIN_ERROR_MORE_DATA`
* `FleetErrorCode_DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN`
* `FleetErrorCode_DOMAIN_JOIN_ERROR_NOT_SUPPORTED`
* `FleetErrorCode_DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME`
* `FleetErrorCode_DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED`
* `FleetErrorCode_DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED`
* `FleetErrorCode_DOMAIN_JOIN_NERR_PASSWORD_EXPIRED`
* `FleetErrorCode_DOMAIN_JOIN_INTERNAL_SERVICE_ERROR`

-}
type FleetErrorCode
    = FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION
    | FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION
    | FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION
    | FleetErrorCode_NETWORK_INTERFACE_LIMIT_EXCEEDED
    | FleetErrorCode_INTERNAL_SERVICE_ERROR
    | FleetErrorCode_IAM_SERVICE_ROLE_IS_MISSING
    | FleetErrorCode_SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES
    | FleetErrorCode_IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION
    | FleetErrorCode_SUBNET_NOT_FOUND
    | FleetErrorCode_IMAGE_NOT_FOUND
    | FleetErrorCode_INVALID_SUBNET_CONFIGURATION
    | FleetErrorCode_SECURITY_GROUPS_NOT_FOUND
    | FleetErrorCode_IGW_NOT_ATTACHED
    | FleetErrorCode_IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION
    | FleetErrorCode_DOMAIN_JOIN_ERROR_FILE_NOT_FOUND
    | FleetErrorCode_DOMAIN_JOIN_ERROR_ACCESS_DENIED
    | FleetErrorCode_DOMAIN_JOIN_ERROR_LOGON_FAILURE
    | FleetErrorCode_DOMAIN_JOIN_ERROR_INVALID_PARAMETER
    | FleetErrorCode_DOMAIN_JOIN_ERROR_MORE_DATA
    | FleetErrorCode_DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN
    | FleetErrorCode_DOMAIN_JOIN_ERROR_NOT_SUPPORTED
    | FleetErrorCode_DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME
    | FleetErrorCode_DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED
    | FleetErrorCode_DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED
    | FleetErrorCode_DOMAIN_JOIN_NERR_PASSWORD_EXPIRED
    | FleetErrorCode_DOMAIN_JOIN_INTERNAL_SERVICE_ERROR



fleetErrorCodeDecoder : JD.Decoder FleetErrorCode
fleetErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" ->
                        JD.succeed FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION

                    "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION" ->
                        JD.succeed FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION

                    "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION" ->
                        JD.succeed FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION

                    "NETWORK_INTERFACE_LIMIT_EXCEEDED" ->
                        JD.succeed FleetErrorCode_NETWORK_INTERFACE_LIMIT_EXCEEDED

                    "INTERNAL_SERVICE_ERROR" ->
                        JD.succeed FleetErrorCode_INTERNAL_SERVICE_ERROR

                    "IAM_SERVICE_ROLE_IS_MISSING" ->
                        JD.succeed FleetErrorCode_IAM_SERVICE_ROLE_IS_MISSING

                    "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES" ->
                        JD.succeed FleetErrorCode_SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES

                    "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION" ->
                        JD.succeed FleetErrorCode_IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION

                    "SUBNET_NOT_FOUND" ->
                        JD.succeed FleetErrorCode_SUBNET_NOT_FOUND

                    "IMAGE_NOT_FOUND" ->
                        JD.succeed FleetErrorCode_IMAGE_NOT_FOUND

                    "INVALID_SUBNET_CONFIGURATION" ->
                        JD.succeed FleetErrorCode_INVALID_SUBNET_CONFIGURATION

                    "SECURITY_GROUPS_NOT_FOUND" ->
                        JD.succeed FleetErrorCode_SECURITY_GROUPS_NOT_FOUND

                    "IGW_NOT_ATTACHED" ->
                        JD.succeed FleetErrorCode_IGW_NOT_ATTACHED

                    "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION" ->
                        JD.succeed FleetErrorCode_IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION

                    "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND" ->
                        JD.succeed FleetErrorCode_DOMAIN_JOIN_ERROR_FILE_NOT_FOUND

                    "DOMAIN_JOIN_ERROR_ACCESS_DENIED" ->
                        JD.succeed FleetErrorCode_DOMAIN_JOIN_ERROR_ACCESS_DENIED

                    "DOMAIN_JOIN_ERROR_LOGON_FAILURE" ->
                        JD.succeed FleetErrorCode_DOMAIN_JOIN_ERROR_LOGON_FAILURE

                    "DOMAIN_JOIN_ERROR_INVALID_PARAMETER" ->
                        JD.succeed FleetErrorCode_DOMAIN_JOIN_ERROR_INVALID_PARAMETER

                    "DOMAIN_JOIN_ERROR_MORE_DATA" ->
                        JD.succeed FleetErrorCode_DOMAIN_JOIN_ERROR_MORE_DATA

                    "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN" ->
                        JD.succeed FleetErrorCode_DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN

                    "DOMAIN_JOIN_ERROR_NOT_SUPPORTED" ->
                        JD.succeed FleetErrorCode_DOMAIN_JOIN_ERROR_NOT_SUPPORTED

                    "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME" ->
                        JD.succeed FleetErrorCode_DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME

                    "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED" ->
                        JD.succeed FleetErrorCode_DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED

                    "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED" ->
                        JD.succeed FleetErrorCode_DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED

                    "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED" ->
                        JD.succeed FleetErrorCode_DOMAIN_JOIN_NERR_PASSWORD_EXPIRED

                    "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR" ->
                        JD.succeed FleetErrorCode_DOMAIN_JOIN_INTERNAL_SERVICE_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




fleetErrorCodeToString : FleetErrorCode -> String
fleetErrorCodeToString val =
    case val of
        FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION ->
            "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION"

        FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION ->
            "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION"

        FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION ->
            "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION"

        FleetErrorCode_NETWORK_INTERFACE_LIMIT_EXCEEDED ->
            "NETWORK_INTERFACE_LIMIT_EXCEEDED"

        FleetErrorCode_INTERNAL_SERVICE_ERROR ->
            "INTERNAL_SERVICE_ERROR"

        FleetErrorCode_IAM_SERVICE_ROLE_IS_MISSING ->
            "IAM_SERVICE_ROLE_IS_MISSING"

        FleetErrorCode_SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES ->
            "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES"

        FleetErrorCode_IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION ->
            "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION"

        FleetErrorCode_SUBNET_NOT_FOUND ->
            "SUBNET_NOT_FOUND"

        FleetErrorCode_IMAGE_NOT_FOUND ->
            "IMAGE_NOT_FOUND"

        FleetErrorCode_INVALID_SUBNET_CONFIGURATION ->
            "INVALID_SUBNET_CONFIGURATION"

        FleetErrorCode_SECURITY_GROUPS_NOT_FOUND ->
            "SECURITY_GROUPS_NOT_FOUND"

        FleetErrorCode_IGW_NOT_ATTACHED ->
            "IGW_NOT_ATTACHED"

        FleetErrorCode_IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION ->
            "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION"

        FleetErrorCode_DOMAIN_JOIN_ERROR_FILE_NOT_FOUND ->
            "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND"

        FleetErrorCode_DOMAIN_JOIN_ERROR_ACCESS_DENIED ->
            "DOMAIN_JOIN_ERROR_ACCESS_DENIED"

        FleetErrorCode_DOMAIN_JOIN_ERROR_LOGON_FAILURE ->
            "DOMAIN_JOIN_ERROR_LOGON_FAILURE"

        FleetErrorCode_DOMAIN_JOIN_ERROR_INVALID_PARAMETER ->
            "DOMAIN_JOIN_ERROR_INVALID_PARAMETER"

        FleetErrorCode_DOMAIN_JOIN_ERROR_MORE_DATA ->
            "DOMAIN_JOIN_ERROR_MORE_DATA"

        FleetErrorCode_DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN ->
            "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN"

        FleetErrorCode_DOMAIN_JOIN_ERROR_NOT_SUPPORTED ->
            "DOMAIN_JOIN_ERROR_NOT_SUPPORTED"

        FleetErrorCode_DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME ->
            "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME"

        FleetErrorCode_DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED ->
            "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED"

        FleetErrorCode_DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED ->
            "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED"

        FleetErrorCode_DOMAIN_JOIN_NERR_PASSWORD_EXPIRED ->
            "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED"

        FleetErrorCode_DOMAIN_JOIN_INTERNAL_SERVICE_ERROR ->
            "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"




{-| One of

* `FleetState_STARTING`
* `FleetState_RUNNING`
* `FleetState_STOPPING`
* `FleetState_STOPPED`

-}
type FleetState
    = FleetState_STARTING
    | FleetState_RUNNING
    | FleetState_STOPPING
    | FleetState_STOPPED



fleetStateDecoder : JD.Decoder FleetState
fleetStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STARTING" ->
                        JD.succeed FleetState_STARTING

                    "RUNNING" ->
                        JD.succeed FleetState_RUNNING

                    "STOPPING" ->
                        JD.succeed FleetState_STOPPING

                    "STOPPED" ->
                        JD.succeed FleetState_STOPPED


                    _ ->
                        JD.fail "bad thing"
            )




fleetStateToString : FleetState -> String
fleetStateToString val =
    case val of
        FleetState_STARTING ->
            "STARTING"

        FleetState_RUNNING ->
            "RUNNING"

        FleetState_STOPPING ->
            "STOPPING"

        FleetState_STOPPED ->
            "STOPPED"




{-| One of

* `FleetType_ALWAYS_ON`
* `FleetType_ON_DEMAND`

-}
type FleetType
    = FleetType_ALWAYS_ON
    | FleetType_ON_DEMAND



fleetTypeDecoder : JD.Decoder FleetType
fleetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ALWAYS_ON" ->
                        JD.succeed FleetType_ALWAYS_ON

                    "ON_DEMAND" ->
                        JD.succeed FleetType_ON_DEMAND


                    _ ->
                        JD.fail "bad thing"
            )




fleetTypeToString : FleetType -> String
fleetTypeToString val =
    case val of
        FleetType_ALWAYS_ON ->
            "ALWAYS_ON"

        FleetType_ON_DEMAND ->
            "ON_DEMAND"




{-| <p>Describes an image.</p>
-}
type alias Image =
    { name : String
    , arn : Maybe String
    , baseImageArn : Maybe String
    , displayName : Maybe String
    , state : Maybe ImageState
    , visibility : Maybe VisibilityType
    , imageBuilderSupported : Maybe Bool
    , imageBuilderName : Maybe String
    , platform : Maybe PlatformType
    , description : Maybe String
    , stateChangeReason : Maybe ImageStateChangeReason
    , applications : Maybe (List Application)
    , createdTime : Maybe Posix
    , publicBaseImageReleasedDate : Maybe Posix
    , appstreamAgentVersion : Maybe String
    , imagePermissions : Maybe ImagePermissions
    }



imageDecoder : JD.Decoder Image
imageDecoder =
    JD.succeed Image
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BaseImageArn", "baseImageArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisplayName", "displayName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            imageStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Visibility", "visibility"]
            visibilityTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageBuilderSupported", "imageBuilderSupported"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageBuilderName", "imageBuilderName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Platform", "platform"]
            platformTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StateChangeReason", "stateChangeReason"]
            imageStateChangeReasonDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Applications", "applications"]
            (JD.list applicationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PublicBaseImageReleasedDate", "publicBaseImageReleasedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AppstreamAgentVersion", "appstreamAgentVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImagePermissions", "imagePermissions"]
            imagePermissionsDecoder
        )
        




imageToString : Image -> String -- List (String, String)
imageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "baseImageArn" "" -- val.baseImageArn
        
    --     |> Dict.insert
    --         "displayName" "" -- val.displayName
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "visibility" "" -- val.visibility
        
    --     |> Dict.insert
    --         "imageBuilderSupported" "" -- val.imageBuilderSupported
        
    --     |> Dict.insert
    --         "imageBuilderName" "" -- val.imageBuilderName
        
    --     |> Dict.insert
    --         "platform" "" -- val.platform
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "stateChangeReason" "" -- val.stateChangeReason
        
    --     |> Dict.insert
    --         "applications" "" -- val.applications
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "publicBaseImageReleasedDate" "" -- val.publicBaseImageReleasedDate
        
    --     |> Dict.insert
    --         "appstreamAgentVersion" "" -- val.appstreamAgentVersion
        
    --     |> Dict.insert
    --         "imagePermissions" "" -- val.imagePermissions
        
    --     |> Dict.toList
    ""



{-| <p>Describes a virtual machine that is used to create an image. </p>
-}
type alias ImageBuilder =
    { name : String
    , arn : Maybe String
    , imageArn : Maybe String
    , description : Maybe String
    , displayName : Maybe String
    , vpcConfig : Maybe VpcConfig
    , instanceType : Maybe String
    , platform : Maybe PlatformType
    , state : Maybe ImageBuilderState
    , stateChangeReason : Maybe ImageBuilderStateChangeReason
    , createdTime : Maybe Posix
    , enableDefaultInternetAccess : Maybe Bool
    , domainJoinInfo : Maybe DomainJoinInfo
    , networkAccessConfiguration : Maybe NetworkAccessConfiguration
    , imageBuilderErrors : Maybe (List ResourceError)
    , appstreamAgentVersion : Maybe String
    }



imageBuilderDecoder : JD.Decoder ImageBuilder
imageBuilderDecoder =
    JD.succeed ImageBuilder
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageArn", "imageArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisplayName", "displayName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcConfig", "vpcConfig"]
            vpcConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceType", "instanceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Platform", "platform"]
            platformTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            imageBuilderStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StateChangeReason", "stateChangeReason"]
            imageBuilderStateChangeReasonDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnableDefaultInternetAccess", "enableDefaultInternetAccess"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DomainJoinInfo", "domainJoinInfo"]
            domainJoinInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NetworkAccessConfiguration", "networkAccessConfiguration"]
            networkAccessConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageBuilderErrors", "imageBuilderErrors"]
            (JD.list resourceErrorDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AppstreamAgentVersion", "appstreamAgentVersion"]
            JD.string
        )
        




imageBuilderToString : ImageBuilder -> String -- List (String, String)
imageBuilderToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "imageArn" "" -- val.imageArn
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "displayName" "" -- val.displayName
        
    --     |> Dict.insert
    --         "vpcConfig" "" -- val.vpcConfig
        
    --     |> Dict.insert
    --         "instanceType" "" -- val.instanceType
        
    --     |> Dict.insert
    --         "platform" "" -- val.platform
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "stateChangeReason" "" -- val.stateChangeReason
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "enableDefaultInternetAccess" "" -- val.enableDefaultInternetAccess
        
    --     |> Dict.insert
    --         "domainJoinInfo" "" -- val.domainJoinInfo
        
    --     |> Dict.insert
    --         "networkAccessConfiguration" "" -- val.networkAccessConfiguration
        
    --     |> Dict.insert
    --         "imageBuilderErrors" "" -- val.imageBuilderErrors
        
    --     |> Dict.insert
    --         "appstreamAgentVersion" "" -- val.appstreamAgentVersion
        
    --     |> Dict.toList
    ""



{-| One of

* `ImageBuilderState_PENDING`
* `ImageBuilderState_UPDATING_AGENT`
* `ImageBuilderState_RUNNING`
* `ImageBuilderState_STOPPING`
* `ImageBuilderState_STOPPED`
* `ImageBuilderState_REBOOTING`
* `ImageBuilderState_SNAPSHOTTING`
* `ImageBuilderState_DELETING`
* `ImageBuilderState_FAILED`

-}
type ImageBuilderState
    = ImageBuilderState_PENDING
    | ImageBuilderState_UPDATING_AGENT
    | ImageBuilderState_RUNNING
    | ImageBuilderState_STOPPING
    | ImageBuilderState_STOPPED
    | ImageBuilderState_REBOOTING
    | ImageBuilderState_SNAPSHOTTING
    | ImageBuilderState_DELETING
    | ImageBuilderState_FAILED



imageBuilderStateDecoder : JD.Decoder ImageBuilderState
imageBuilderStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ImageBuilderState_PENDING

                    "UPDATING_AGENT" ->
                        JD.succeed ImageBuilderState_UPDATING_AGENT

                    "RUNNING" ->
                        JD.succeed ImageBuilderState_RUNNING

                    "STOPPING" ->
                        JD.succeed ImageBuilderState_STOPPING

                    "STOPPED" ->
                        JD.succeed ImageBuilderState_STOPPED

                    "REBOOTING" ->
                        JD.succeed ImageBuilderState_REBOOTING

                    "SNAPSHOTTING" ->
                        JD.succeed ImageBuilderState_SNAPSHOTTING

                    "DELETING" ->
                        JD.succeed ImageBuilderState_DELETING

                    "FAILED" ->
                        JD.succeed ImageBuilderState_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




imageBuilderStateToString : ImageBuilderState -> String
imageBuilderStateToString val =
    case val of
        ImageBuilderState_PENDING ->
            "PENDING"

        ImageBuilderState_UPDATING_AGENT ->
            "UPDATING_AGENT"

        ImageBuilderState_RUNNING ->
            "RUNNING"

        ImageBuilderState_STOPPING ->
            "STOPPING"

        ImageBuilderState_STOPPED ->
            "STOPPED"

        ImageBuilderState_REBOOTING ->
            "REBOOTING"

        ImageBuilderState_SNAPSHOTTING ->
            "SNAPSHOTTING"

        ImageBuilderState_DELETING ->
            "DELETING"

        ImageBuilderState_FAILED ->
            "FAILED"




{-| <p>Describes the reason why the last image builder state change occurred.</p>
-}
type alias ImageBuilderStateChangeReason =
    { code : Maybe ImageBuilderStateChangeReasonCode
    , message : Maybe String
    }



imageBuilderStateChangeReasonDecoder : JD.Decoder ImageBuilderStateChangeReason
imageBuilderStateChangeReasonDecoder =
    JD.succeed ImageBuilderStateChangeReason
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Code", "code"]
            imageBuilderStateChangeReasonCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        




imageBuilderStateChangeReasonToString : ImageBuilderStateChangeReason -> String -- List (String, String)
imageBuilderStateChangeReasonToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| One of

* `ImageBuilderStateChangeReasonCode_INTERNAL_ERROR`
* `ImageBuilderStateChangeReasonCode_IMAGE_UNAVAILABLE`

-}
type ImageBuilderStateChangeReasonCode
    = ImageBuilderStateChangeReasonCode_INTERNAL_ERROR
    | ImageBuilderStateChangeReasonCode_IMAGE_UNAVAILABLE



imageBuilderStateChangeReasonCodeDecoder : JD.Decoder ImageBuilderStateChangeReasonCode
imageBuilderStateChangeReasonCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INTERNAL_ERROR" ->
                        JD.succeed ImageBuilderStateChangeReasonCode_INTERNAL_ERROR

                    "IMAGE_UNAVAILABLE" ->
                        JD.succeed ImageBuilderStateChangeReasonCode_IMAGE_UNAVAILABLE


                    _ ->
                        JD.fail "bad thing"
            )




imageBuilderStateChangeReasonCodeToString : ImageBuilderStateChangeReasonCode -> String
imageBuilderStateChangeReasonCodeToString val =
    case val of
        ImageBuilderStateChangeReasonCode_INTERNAL_ERROR ->
            "INTERNAL_ERROR"

        ImageBuilderStateChangeReasonCode_IMAGE_UNAVAILABLE ->
            "IMAGE_UNAVAILABLE"




{-| <p>Describes the permissions for an image. </p>
-}
type alias ImagePermissions =
    { allowFleet : Maybe Bool
    , allowImageBuilder : Maybe Bool
    }



imagePermissionsDecoder : JD.Decoder ImagePermissions
imagePermissionsDecoder =
    JD.succeed ImagePermissions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["allowFleet", "AllowFleet"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["allowImageBuilder", "AllowImageBuilder"]
            JD.bool
        )
        




imagePermissionsToString : ImagePermissions -> String -- List (String, String)
imagePermissionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "allowFleet" "" -- val.allowFleet
        
    --     |> Dict.insert
    --         "allowImageBuilder" "" -- val.allowImageBuilder
        
    --     |> Dict.toList
    ""



{-| One of

* `ImageState_PENDING`
* `ImageState_AVAILABLE`
* `ImageState_FAILED`
* `ImageState_COPYING`
* `ImageState_DELETING`

-}
type ImageState
    = ImageState_PENDING
    | ImageState_AVAILABLE
    | ImageState_FAILED
    | ImageState_COPYING
    | ImageState_DELETING



imageStateDecoder : JD.Decoder ImageState
imageStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ImageState_PENDING

                    "AVAILABLE" ->
                        JD.succeed ImageState_AVAILABLE

                    "FAILED" ->
                        JD.succeed ImageState_FAILED

                    "COPYING" ->
                        JD.succeed ImageState_COPYING

                    "DELETING" ->
                        JD.succeed ImageState_DELETING


                    _ ->
                        JD.fail "bad thing"
            )




imageStateToString : ImageState -> String
imageStateToString val =
    case val of
        ImageState_PENDING ->
            "PENDING"

        ImageState_AVAILABLE ->
            "AVAILABLE"

        ImageState_FAILED ->
            "FAILED"

        ImageState_COPYING ->
            "COPYING"

        ImageState_DELETING ->
            "DELETING"




{-| <p>Describes the reason why the last image state change occurred.</p>
-}
type alias ImageStateChangeReason =
    { code : Maybe ImageStateChangeReasonCode
    , message : Maybe String
    }



imageStateChangeReasonDecoder : JD.Decoder ImageStateChangeReason
imageStateChangeReasonDecoder =
    JD.succeed ImageStateChangeReason
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Code", "code"]
            imageStateChangeReasonCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        




imageStateChangeReasonToString : ImageStateChangeReason -> String -- List (String, String)
imageStateChangeReasonToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| One of

* `ImageStateChangeReasonCode_INTERNAL_ERROR`
* `ImageStateChangeReasonCode_IMAGE_BUILDER_NOT_AVAILABLE`
* `ImageStateChangeReasonCode_IMAGE_COPY_FAILURE`

-}
type ImageStateChangeReasonCode
    = ImageStateChangeReasonCode_INTERNAL_ERROR
    | ImageStateChangeReasonCode_IMAGE_BUILDER_NOT_AVAILABLE
    | ImageStateChangeReasonCode_IMAGE_COPY_FAILURE



imageStateChangeReasonCodeDecoder : JD.Decoder ImageStateChangeReasonCode
imageStateChangeReasonCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INTERNAL_ERROR" ->
                        JD.succeed ImageStateChangeReasonCode_INTERNAL_ERROR

                    "IMAGE_BUILDER_NOT_AVAILABLE" ->
                        JD.succeed ImageStateChangeReasonCode_IMAGE_BUILDER_NOT_AVAILABLE

                    "IMAGE_COPY_FAILURE" ->
                        JD.succeed ImageStateChangeReasonCode_IMAGE_COPY_FAILURE


                    _ ->
                        JD.fail "bad thing"
            )




imageStateChangeReasonCodeToString : ImageStateChangeReasonCode -> String
imageStateChangeReasonCodeToString val =
    case val of
        ImageStateChangeReasonCode_INTERNAL_ERROR ->
            "INTERNAL_ERROR"

        ImageStateChangeReasonCode_IMAGE_BUILDER_NOT_AVAILABLE ->
            "IMAGE_BUILDER_NOT_AVAILABLE"

        ImageStateChangeReasonCode_IMAGE_COPY_FAILURE ->
            "IMAGE_COPY_FAILURE"




{-| <p>Describes the error that is returned when a usage report can't be generated.</p>
-}
type alias LastReportGenerationExecutionError =
    { errorCode : Maybe UsageReportExecutionErrorCode
    , errorMessage : Maybe String
    }



lastReportGenerationExecutionErrorDecoder : JD.Decoder LastReportGenerationExecutionError
lastReportGenerationExecutionErrorDecoder =
    JD.succeed LastReportGenerationExecutionError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            usageReportExecutionErrorCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        




lastReportGenerationExecutionErrorToString : LastReportGenerationExecutionError -> String -- List (String, String)
lastReportGenerationExecutionErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listAssociatedFlee
-}
type alias ListAssociatedFleetsResult =
    { names : Maybe (List String)
    , nextToken : Maybe String
    }



listAssociatedFleetsResultDecoder : JD.Decoder ListAssociatedFleetsResult
listAssociatedFleetsResultDecoder =
    JD.succeed ListAssociatedFleetsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Names", "names"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listAssociatedFleetsResultToString : ListAssociatedFleetsResult -> String -- List (String, String)
listAssociatedFleetsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "names" "" -- val.names
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listAssociatedStac
-}
type alias ListAssociatedStacksResult =
    { names : Maybe (List String)
    , nextToken : Maybe String
    }



listAssociatedStacksResultDecoder : JD.Decoder ListAssociatedStacksResult
listAssociatedStacksResultDecoder =
    JD.succeed ListAssociatedStacksResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Names", "names"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listAssociatedStacksResultToString : ListAssociatedStacksResult -> String -- List (String, String)
listAssociatedStacksResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "names" "" -- val.names
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tags : Maybe (Dict String String)
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JD.succeed ListTagsForResourceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (AWS.Core.Decode.dict JD.string)
        )
        




listTagsForResourceResponseToString : ListTagsForResourceResponse -> String -- List (String, String)
listTagsForResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| One of

* `MessageAction_SUPPRESS`
* `MessageAction_RESEND`

-}
type MessageAction
    = MessageAction_SUPPRESS
    | MessageAction_RESEND



messageActionDecoder : JD.Decoder MessageAction
messageActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUPPRESS" ->
                        JD.succeed MessageAction_SUPPRESS

                    "RESEND" ->
                        JD.succeed MessageAction_RESEND


                    _ ->
                        JD.fail "bad thing"
            )




messageActionToString : MessageAction -> String
messageActionToString val =
    case val of
        MessageAction_SUPPRESS ->
            "SUPPRESS"

        MessageAction_RESEND ->
            "RESEND"




{-| <p>Describes the network details of the fleet or image builder instance.</p>
-}
type alias NetworkAccessConfiguration =
    { eniPrivateIpAddress : Maybe String
    , eniId : Maybe String
    }



networkAccessConfigurationDecoder : JD.Decoder NetworkAccessConfiguration
networkAccessConfigurationDecoder =
    JD.succeed NetworkAccessConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EniPrivateIpAddress", "eniPrivateIpAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EniId", "eniId"]
            JD.string
        )
        




networkAccessConfigurationToString : NetworkAccessConfiguration -> String -- List (String, String)
networkAccessConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eniPrivateIpAddress" "" -- val.eniPrivateIpAddress
        
    --     |> Dict.insert
    --         "eniId" "" -- val.eniId
        
    --     |> Dict.toList
    ""



{-| One of

* `Permission_ENABLED`
* `Permission_DISABLED`

-}
type Permission
    = Permission_ENABLED
    | Permission_DISABLED



permissionDecoder : JD.Decoder Permission
permissionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed Permission_ENABLED

                    "DISABLED" ->
                        JD.succeed Permission_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )




permissionToString : Permission -> String
permissionToString val =
    case val of
        Permission_ENABLED ->
            "ENABLED"

        Permission_DISABLED ->
            "DISABLED"




{-| One of

* `PlatformType_WINDOWS`
* `PlatformType_WINDOWS_SERVER_2016`
* `PlatformType_WINDOWS_SERVER_2019`

-}
type PlatformType
    = PlatformType_WINDOWS
    | PlatformType_WINDOWS_SERVER_2016
    | PlatformType_WINDOWS_SERVER_2019



platformTypeDecoder : JD.Decoder PlatformType
platformTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WINDOWS" ->
                        JD.succeed PlatformType_WINDOWS

                    "WINDOWS_SERVER_2016" ->
                        JD.succeed PlatformType_WINDOWS_SERVER_2016

                    "WINDOWS_SERVER_2019" ->
                        JD.succeed PlatformType_WINDOWS_SERVER_2019


                    _ ->
                        JD.fail "bad thing"
            )




platformTypeToString : PlatformType -> String
platformTypeToString val =
    case val of
        PlatformType_WINDOWS ->
            "WINDOWS"

        PlatformType_WINDOWS_SERVER_2016 ->
            "WINDOWS_SERVER_2016"

        PlatformType_WINDOWS_SERVER_2019 ->
            "WINDOWS_SERVER_2019"




{-| <p>Describes a resource error.</p>
-}
type alias ResourceError =
    { errorCode : Maybe FleetErrorCode
    , errorMessage : Maybe String
    , errorTimestamp : Maybe Posix
    }



resourceErrorDecoder : JD.Decoder ResourceError
resourceErrorDecoder =
    JD.succeed ResourceError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            fleetErrorCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorTimestamp", "errorTimestamp"]
            JDX.datetime
        )
        




resourceErrorToString : ResourceError -> String -- List (String, String)
resourceErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.insert
    --         "errorTimestamp" "" -- val.errorTimestamp
        
    --     |> Dict.toList
    ""



{-| <p>Describes the credentials for the service account used by the fleet or image builder to connect to the directory.</p>
-}
type alias ServiceAccountCredentials =
    { accountName : String
    , accountPassword : String
    }



serviceAccountCredentialsDecoder : JD.Decoder ServiceAccountCredentials
serviceAccountCredentialsDecoder =
    JD.succeed ServiceAccountCredentials
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AccountName", "accountName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AccountPassword", "accountPassword"]
            JD.string
        )
        




serviceAccountCredentialsToString : ServiceAccountCredentials -> String -- List (String, String)
serviceAccountCredentialsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accountName" "" -- val.accountName
        
    --     |> Dict.insert
    --         "accountPassword" "" -- val.accountPassword
        
    --     |> Dict.toList
    ""



{-| <p>Describes a streaming session.</p>
-}
type alias Session =
    { id : String
    , userId : String
    , stackName : String
    , fleetName : String
    , state : SessionState
    , connectionState : Maybe SessionConnectionState
    , startTime : Maybe Posix
    , maxExpirationTime : Maybe Posix
    , authenticationType : Maybe AuthenticationType
    , networkAccessConfiguration : Maybe NetworkAccessConfiguration
    }



sessionDecoder : JD.Decoder Session
sessionDecoder =
    JD.succeed Session
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UserId", "userId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackName", "stackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["FleetName", "fleetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["State", "state"]
            sessionStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionState", "connectionState"]
            sessionConnectionStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartTime", "startTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxExpirationTime", "maxExpirationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AuthenticationType", "authenticationType"]
            authenticationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NetworkAccessConfiguration", "networkAccessConfiguration"]
            networkAccessConfigurationDecoder
        )
        




sessionToString : Session -> String -- List (String, String)
sessionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "userId" "" -- val.userId
        
    --     |> Dict.insert
    --         "stackName" "" -- val.stackName
        
    --     |> Dict.insert
    --         "fleetName" "" -- val.fleetName
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "connectionState" "" -- val.connectionState
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "maxExpirationTime" "" -- val.maxExpirationTime
        
    --     |> Dict.insert
    --         "authenticationType" "" -- val.authenticationType
        
    --     |> Dict.insert
    --         "networkAccessConfiguration" "" -- val.networkAccessConfiguration
        
    --     |> Dict.toList
    ""



{-| One of

* `SessionConnectionState_CONNECTED`
* `SessionConnectionState_NOT_CONNECTED`

-}
type SessionConnectionState
    = SessionConnectionState_CONNECTED
    | SessionConnectionState_NOT_CONNECTED



sessionConnectionStateDecoder : JD.Decoder SessionConnectionState
sessionConnectionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CONNECTED" ->
                        JD.succeed SessionConnectionState_CONNECTED

                    "NOT_CONNECTED" ->
                        JD.succeed SessionConnectionState_NOT_CONNECTED


                    _ ->
                        JD.fail "bad thing"
            )




sessionConnectionStateToString : SessionConnectionState -> String
sessionConnectionStateToString val =
    case val of
        SessionConnectionState_CONNECTED ->
            "CONNECTED"

        SessionConnectionState_NOT_CONNECTED ->
            "NOT_CONNECTED"




{-| One of

* `SessionState_ACTIVE`
* `SessionState_PENDING`
* `SessionState_EXPIRED`

-}
type SessionState
    = SessionState_ACTIVE
    | SessionState_PENDING
    | SessionState_EXPIRED



sessionStateDecoder : JD.Decoder SessionState
sessionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed SessionState_ACTIVE

                    "PENDING" ->
                        JD.succeed SessionState_PENDING

                    "EXPIRED" ->
                        JD.succeed SessionState_EXPIRED


                    _ ->
                        JD.fail "bad thing"
            )




sessionStateToString : SessionState -> String
sessionStateToString val =
    case val of
        SessionState_ACTIVE ->
            "ACTIVE"

        SessionState_PENDING ->
            "PENDING"

        SessionState_EXPIRED ->
            "EXPIRED"




{-| <p>Describes the permissions that are available to the specified AWS account for a shared image.</p>
-}
type alias SharedImagePermissions =
    { sharedAccountId : String
    , imagePermissions : ImagePermissions
    }



sharedImagePermissionsDecoder : JD.Decoder SharedImagePermissions
sharedImagePermissionsDecoder =
    JD.succeed SharedImagePermissions
        
        |> JDP.custom (AWS.Core.Decode.required
            ["sharedAccountId", "SharedAccountId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["imagePermissions", "ImagePermissions"]
            imagePermissionsDecoder
        )
        




sharedImagePermissionsToString : SharedImagePermissions -> String -- List (String, String)
sharedImagePermissionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sharedAccountId" "" -- val.sharedAccountId
        
    --     |> Dict.insert
    --         "imagePermissions" "" -- val.imagePermissions
        
    --     |> Dict.toList
    ""



{-| <p>Describes a stack.</p>
-}
type alias Stack =
    { arn : Maybe String
    , name : String
    , description : Maybe String
    , displayName : Maybe String
    , createdTime : Maybe Posix
    , storageConnectors : Maybe (List StorageConnector)
    , redirectURL : Maybe String
    , feedbackURL : Maybe String
    , stackErrors : Maybe (List StackError)
    , userSettings : Maybe (List UserSetting)
    , applicationSettings : Maybe ApplicationSettingsResponse
    }



stackDecoder : JD.Decoder Stack
stackDecoder =
    JD.succeed Stack
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisplayName", "displayName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageConnectors", "storageConnectors"]
            (JD.list storageConnectorDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RedirectURL", "redirectURL"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FeedbackURL", "feedbackURL"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackErrors", "stackErrors"]
            (JD.list stackErrorDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserSettings", "userSettings"]
            (JD.list userSettingDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationSettings", "applicationSettings"]
            applicationSettingsResponseDecoder
        )
        




stackToString : Stack -> String -- List (String, String)
stackToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "displayName" "" -- val.displayName
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "storageConnectors" "" -- val.storageConnectors
        
    --     |> Dict.insert
    --         "redirectURL" "" -- val.redirectURL
        
    --     |> Dict.insert
    --         "feedbackURL" "" -- val.feedbackURL
        
    --     |> Dict.insert
    --         "stackErrors" "" -- val.stackErrors
        
    --     |> Dict.insert
    --         "userSettings" "" -- val.userSettings
        
    --     |> Dict.insert
    --         "applicationSettings" "" -- val.applicationSettings
        
    --     |> Dict.toList
    ""



{-| One of

* `StackAttribute_STORAGE_CONNECTORS`
* `StackAttribute_STORAGE_CONNECTOR_HOMEFOLDERS`
* `StackAttribute_STORAGE_CONNECTOR_GOOGLE_DRIVE`
* `StackAttribute_STORAGE_CONNECTOR_ONE_DRIVE`
* `StackAttribute_REDIRECT_URL`
* `StackAttribute_FEEDBACK_URL`
* `StackAttribute_THEME_NAME`
* `StackAttribute_USER_SETTINGS`

-}
type StackAttribute
    = StackAttribute_STORAGE_CONNECTORS
    | StackAttribute_STORAGE_CONNECTOR_HOMEFOLDERS
    | StackAttribute_STORAGE_CONNECTOR_GOOGLE_DRIVE
    | StackAttribute_STORAGE_CONNECTOR_ONE_DRIVE
    | StackAttribute_REDIRECT_URL
    | StackAttribute_FEEDBACK_URL
    | StackAttribute_THEME_NAME
    | StackAttribute_USER_SETTINGS



stackAttributeDecoder : JD.Decoder StackAttribute
stackAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STORAGE_CONNECTORS" ->
                        JD.succeed StackAttribute_STORAGE_CONNECTORS

                    "STORAGE_CONNECTOR_HOMEFOLDERS" ->
                        JD.succeed StackAttribute_STORAGE_CONNECTOR_HOMEFOLDERS

                    "STORAGE_CONNECTOR_GOOGLE_DRIVE" ->
                        JD.succeed StackAttribute_STORAGE_CONNECTOR_GOOGLE_DRIVE

                    "STORAGE_CONNECTOR_ONE_DRIVE" ->
                        JD.succeed StackAttribute_STORAGE_CONNECTOR_ONE_DRIVE

                    "REDIRECT_URL" ->
                        JD.succeed StackAttribute_REDIRECT_URL

                    "FEEDBACK_URL" ->
                        JD.succeed StackAttribute_FEEDBACK_URL

                    "THEME_NAME" ->
                        JD.succeed StackAttribute_THEME_NAME

                    "USER_SETTINGS" ->
                        JD.succeed StackAttribute_USER_SETTINGS


                    _ ->
                        JD.fail "bad thing"
            )




stackAttributeToString : StackAttribute -> String
stackAttributeToString val =
    case val of
        StackAttribute_STORAGE_CONNECTORS ->
            "STORAGE_CONNECTORS"

        StackAttribute_STORAGE_CONNECTOR_HOMEFOLDERS ->
            "STORAGE_CONNECTOR_HOMEFOLDERS"

        StackAttribute_STORAGE_CONNECTOR_GOOGLE_DRIVE ->
            "STORAGE_CONNECTOR_GOOGLE_DRIVE"

        StackAttribute_STORAGE_CONNECTOR_ONE_DRIVE ->
            "STORAGE_CONNECTOR_ONE_DRIVE"

        StackAttribute_REDIRECT_URL ->
            "REDIRECT_URL"

        StackAttribute_FEEDBACK_URL ->
            "FEEDBACK_URL"

        StackAttribute_THEME_NAME ->
            "THEME_NAME"

        StackAttribute_USER_SETTINGS ->
            "USER_SETTINGS"




{-| <p>Describes a stack error.</p>
-}
type alias StackError =
    { errorCode : Maybe StackErrorCode
    , errorMessage : Maybe String
    }



stackErrorDecoder : JD.Decoder StackError
stackErrorDecoder =
    JD.succeed StackError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            stackErrorCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        




stackErrorToString : StackError -> String -- List (String, String)
stackErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| One of

* `StackErrorCode_STORAGE_CONNECTOR_ERROR`
* `StackErrorCode_INTERNAL_SERVICE_ERROR`

-}
type StackErrorCode
    = StackErrorCode_STORAGE_CONNECTOR_ERROR
    | StackErrorCode_INTERNAL_SERVICE_ERROR



stackErrorCodeDecoder : JD.Decoder StackErrorCode
stackErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STORAGE_CONNECTOR_ERROR" ->
                        JD.succeed StackErrorCode_STORAGE_CONNECTOR_ERROR

                    "INTERNAL_SERVICE_ERROR" ->
                        JD.succeed StackErrorCode_INTERNAL_SERVICE_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




stackErrorCodeToString : StackErrorCode -> String
stackErrorCodeToString val =
    case val of
        StackErrorCode_STORAGE_CONNECTOR_ERROR ->
            "STORAGE_CONNECTOR_ERROR"

        StackErrorCode_INTERNAL_SERVICE_ERROR ->
            "INTERNAL_SERVICE_ERROR"




{-| Type of HTTP response from startFle
-}
type alias StartFleetResult =
    { 
    }



startFleetResultDecoder : JD.Decoder StartFleetResult
startFleetResultDecoder =
    JD.succeed StartFleetResult
        




startFleetResultToString : StartFleetResult -> String -- List (String, String)
startFleetResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startImageBuild
-}
type alias StartImageBuilderResult =
    { imageBuilder : Maybe ImageBuilder
    }



startImageBuilderResultDecoder : JD.Decoder StartImageBuilderResult
startImageBuilderResultDecoder =
    JD.succeed StartImageBuilderResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageBuilder", "imageBuilder"]
            imageBuilderDecoder
        )
        




startImageBuilderResultToString : StartImageBuilderResult -> String -- List (String, String)
startImageBuilderResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageBuilder" "" -- val.imageBuilder
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopFle
-}
type alias StopFleetResult =
    { 
    }



stopFleetResultDecoder : JD.Decoder StopFleetResult
stopFleetResultDecoder =
    JD.succeed StopFleetResult
        




stopFleetResultToString : StopFleetResult -> String -- List (String, String)
stopFleetResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopImageBuild
-}
type alias StopImageBuilderResult =
    { imageBuilder : Maybe ImageBuilder
    }



stopImageBuilderResultDecoder : JD.Decoder StopImageBuilderResult
stopImageBuilderResultDecoder =
    JD.succeed StopImageBuilderResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageBuilder", "imageBuilder"]
            imageBuilderDecoder
        )
        




stopImageBuilderResultToString : StopImageBuilderResult -> String -- List (String, String)
stopImageBuilderResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageBuilder" "" -- val.imageBuilder
        
    --     |> Dict.toList
    ""



{-| <p>Describes a connector that enables persistent storage for users.</p>
-}
type alias StorageConnector =
    { connectorType : StorageConnectorType
    , resourceIdentifier : Maybe String
    , domains : Maybe (List String)
    }



storageConnectorDecoder : JD.Decoder StorageConnector
storageConnectorDecoder =
    JD.succeed StorageConnector
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConnectorType", "connectorType"]
            storageConnectorTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceIdentifier", "resourceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Domains", "domains"]
            (JD.list JD.string)
        )
        




storageConnectorToString : StorageConnector -> String -- List (String, String)
storageConnectorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "connectorType" "" -- val.connectorType
        
    --     |> Dict.insert
    --         "resourceIdentifier" "" -- val.resourceIdentifier
        
    --     |> Dict.insert
    --         "domains" "" -- val.domains
        
    --     |> Dict.toList
    ""



{-| One of

* `StorageConnectorType_HOMEFOLDERS`
* `StorageConnectorType_GOOGLE_DRIVE`
* `StorageConnectorType_ONE_DRIVE`

-}
type StorageConnectorType
    = StorageConnectorType_HOMEFOLDERS
    | StorageConnectorType_GOOGLE_DRIVE
    | StorageConnectorType_ONE_DRIVE



storageConnectorTypeDecoder : JD.Decoder StorageConnectorType
storageConnectorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HOMEFOLDERS" ->
                        JD.succeed StorageConnectorType_HOMEFOLDERS

                    "GOOGLE_DRIVE" ->
                        JD.succeed StorageConnectorType_GOOGLE_DRIVE

                    "ONE_DRIVE" ->
                        JD.succeed StorageConnectorType_ONE_DRIVE


                    _ ->
                        JD.fail "bad thing"
            )




storageConnectorTypeToString : StorageConnectorType -> String
storageConnectorTypeToString val =
    case val of
        StorageConnectorType_HOMEFOLDERS ->
            "HOMEFOLDERS"

        StorageConnectorType_GOOGLE_DRIVE ->
            "GOOGLE_DRIVE"

        StorageConnectorType_ONE_DRIVE ->
            "ONE_DRIVE"




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



{-| Type of HTTP response from updateDirectoryConf
-}
type alias UpdateDirectoryConfigResult =
    { directoryConfig : Maybe DirectoryConfig
    }



updateDirectoryConfigResultDecoder : JD.Decoder UpdateDirectoryConfigResult
updateDirectoryConfigResultDecoder =
    JD.succeed UpdateDirectoryConfigResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DirectoryConfig", "directoryConfig"]
            directoryConfigDecoder
        )
        




updateDirectoryConfigResultToString : UpdateDirectoryConfigResult -> String -- List (String, String)
updateDirectoryConfigResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directoryConfig" "" -- val.directoryConfig
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateFle
-}
type alias UpdateFleetResult =
    { fleet : Maybe Fleet
    }



updateFleetResultDecoder : JD.Decoder UpdateFleetResult
updateFleetResultDecoder =
    JD.succeed UpdateFleetResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Fleet", "fleet"]
            fleetDecoder
        )
        




updateFleetResultToString : UpdateFleetResult -> String -- List (String, String)
updateFleetResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleet" "" -- val.fleet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateImagePermissio
-}
type alias UpdateImagePermissionsResult =
    { 
    }



updateImagePermissionsResultDecoder : JD.Decoder UpdateImagePermissionsResult
updateImagePermissionsResultDecoder =
    JD.succeed UpdateImagePermissionsResult
        




updateImagePermissionsResultToString : UpdateImagePermissionsResult -> String -- List (String, String)
updateImagePermissionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateSta
-}
type alias UpdateStackResult =
    { stack : Maybe Stack
    }



updateStackResultDecoder : JD.Decoder UpdateStackResult
updateStackResultDecoder =
    JD.succeed UpdateStackResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Stack", "stack"]
            stackDecoder
        )
        




updateStackResultToString : UpdateStackResult -> String -- List (String, String)
updateStackResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stack" "" -- val.stack
        
    --     |> Dict.toList
    ""



{-| One of

* `UsageReportExecutionErrorCode_RESOURCE_NOT_FOUND`
* `UsageReportExecutionErrorCode_ACCESS_DENIED`
* `UsageReportExecutionErrorCode_INTERNAL_SERVICE_ERROR`

-}
type UsageReportExecutionErrorCode
    = UsageReportExecutionErrorCode_RESOURCE_NOT_FOUND
    | UsageReportExecutionErrorCode_ACCESS_DENIED
    | UsageReportExecutionErrorCode_INTERNAL_SERVICE_ERROR



usageReportExecutionErrorCodeDecoder : JD.Decoder UsageReportExecutionErrorCode
usageReportExecutionErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RESOURCE_NOT_FOUND" ->
                        JD.succeed UsageReportExecutionErrorCode_RESOURCE_NOT_FOUND

                    "ACCESS_DENIED" ->
                        JD.succeed UsageReportExecutionErrorCode_ACCESS_DENIED

                    "INTERNAL_SERVICE_ERROR" ->
                        JD.succeed UsageReportExecutionErrorCode_INTERNAL_SERVICE_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




usageReportExecutionErrorCodeToString : UsageReportExecutionErrorCode -> String
usageReportExecutionErrorCodeToString val =
    case val of
        UsageReportExecutionErrorCode_RESOURCE_NOT_FOUND ->
            "RESOURCE_NOT_FOUND"

        UsageReportExecutionErrorCode_ACCESS_DENIED ->
            "ACCESS_DENIED"

        UsageReportExecutionErrorCode_INTERNAL_SERVICE_ERROR ->
            "INTERNAL_SERVICE_ERROR"




{-| One of

* `UsageReportSchedule_DAILY`

-}
type UsageReportSchedule
    = UsageReportSchedule_DAILY



usageReportScheduleDecoder : JD.Decoder UsageReportSchedule
usageReportScheduleDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DAILY" ->
                        JD.succeed UsageReportSchedule_DAILY


                    _ ->
                        JD.fail "bad thing"
            )




usageReportScheduleToString : UsageReportSchedule -> String
usageReportScheduleToString val =
    case val of
        UsageReportSchedule_DAILY ->
            "DAILY"




{-| <p>Describes information about the usage report subscription.</p>
-}
type alias UsageReportSubscription =
    { s3BucketName : Maybe String
    , schedule : Maybe UsageReportSchedule
    , lastGeneratedReportDate : Maybe Posix
    , subscriptionErrors : Maybe (List LastReportGenerationExecutionError)
    }



usageReportSubscriptionDecoder : JD.Decoder UsageReportSubscription
usageReportSubscriptionDecoder =
    JD.succeed UsageReportSubscription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3BucketName", "s3BucketName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Schedule", "schedule"]
            usageReportScheduleDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastGeneratedReportDate", "lastGeneratedReportDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubscriptionErrors", "subscriptionErrors"]
            (JD.list lastReportGenerationExecutionErrorDecoder)
        )
        




usageReportSubscriptionToString : UsageReportSubscription -> String -- List (String, String)
usageReportSubscriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3BucketName" "" -- val.s3BucketName
        
    --     |> Dict.insert
    --         "schedule" "" -- val.schedule
        
    --     |> Dict.insert
    --         "lastGeneratedReportDate" "" -- val.lastGeneratedReportDate
        
    --     |> Dict.insert
    --         "subscriptionErrors" "" -- val.subscriptionErrors
        
    --     |> Dict.toList
    ""



{-| <p>Describes a user in the user pool.</p>
-}
type alias User =
    { arn : Maybe String
    , userName : Maybe String
    , enabled : Maybe Bool
    , status : Maybe String
    , firstName : Maybe String
    , lastName : Maybe String
    , createdTime : Maybe Posix
    , authenticationType : AuthenticationType
    }



userDecoder : JD.Decoder User
userDecoder =
    JD.succeed User
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserName", "userName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FirstName", "firstName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastName", "lastName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AuthenticationType", "authenticationType"]
            authenticationTypeDecoder
        )
        




userToString : User -> String -- List (String, String)
userToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "userName" "" -- val.userName
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "firstName" "" -- val.firstName
        
    --     |> Dict.insert
    --         "lastName" "" -- val.lastName
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "authenticationType" "" -- val.authenticationType
        
    --     |> Dict.toList
    ""



{-| <p>Describes an action and whether the action is enabled or disabled for users during their streaming sessions.</p>
-}
type alias UserSetting =
    { action : Action
    , permission : Permission
    }



userSettingDecoder : JD.Decoder UserSetting
userSettingDecoder =
    JD.succeed UserSetting
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Action", "action"]
            actionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Permission", "permission"]
            permissionDecoder
        )
        




userSettingToString : UserSetting -> String -- List (String, String)
userSettingToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "permission" "" -- val.permission
        
    --     |> Dict.toList
    ""



{-| <p>Describes a user in the user pool and the associated stack.</p>
-}
type alias UserStackAssociation =
    { stackName : String
    , userName : String
    , authenticationType : AuthenticationType
    , sendEmailNotification : Maybe Bool
    }



userStackAssociationDecoder : JD.Decoder UserStackAssociation
userStackAssociationDecoder =
    JD.succeed UserStackAssociation
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StackName", "stackName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UserName", "userName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AuthenticationType", "authenticationType"]
            authenticationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SendEmailNotification", "sendEmailNotification"]
            JD.bool
        )
        




userStackAssociationToString : UserStackAssociation -> String -- List (String, String)
userStackAssociationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackName" "" -- val.stackName
        
    --     |> Dict.insert
    --         "userName" "" -- val.userName
        
    --     |> Dict.insert
    --         "authenticationType" "" -- val.authenticationType
        
    --     |> Dict.insert
    --         "sendEmailNotification" "" -- val.sendEmailNotification
        
    --     |> Dict.toList
    ""



{-| <p>Describes the error that is returned when a user can’t be associated with or disassociated from a stack. </p>
-}
type alias UserStackAssociationError =
    { userStackAssociation : Maybe UserStackAssociation
    , errorCode : Maybe UserStackAssociationErrorCode
    , errorMessage : Maybe String
    }



userStackAssociationErrorDecoder : JD.Decoder UserStackAssociationError
userStackAssociationErrorDecoder =
    JD.succeed UserStackAssociationError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserStackAssociation", "userStackAssociation"]
            userStackAssociationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            userStackAssociationErrorCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        




userStackAssociationErrorToString : UserStackAssociationError -> String -- List (String, String)
userStackAssociationErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userStackAssociation" "" -- val.userStackAssociation
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| One of

* `UserStackAssociationErrorCode_STACK_NOT_FOUND`
* `UserStackAssociationErrorCode_USER_NAME_NOT_FOUND`
* `UserStackAssociationErrorCode_INTERNAL_ERROR`

-}
type UserStackAssociationErrorCode
    = UserStackAssociationErrorCode_STACK_NOT_FOUND
    | UserStackAssociationErrorCode_USER_NAME_NOT_FOUND
    | UserStackAssociationErrorCode_INTERNAL_ERROR



userStackAssociationErrorCodeDecoder : JD.Decoder UserStackAssociationErrorCode
userStackAssociationErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STACK_NOT_FOUND" ->
                        JD.succeed UserStackAssociationErrorCode_STACK_NOT_FOUND

                    "USER_NAME_NOT_FOUND" ->
                        JD.succeed UserStackAssociationErrorCode_USER_NAME_NOT_FOUND

                    "INTERNAL_ERROR" ->
                        JD.succeed UserStackAssociationErrorCode_INTERNAL_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




userStackAssociationErrorCodeToString : UserStackAssociationErrorCode -> String
userStackAssociationErrorCodeToString val =
    case val of
        UserStackAssociationErrorCode_STACK_NOT_FOUND ->
            "STACK_NOT_FOUND"

        UserStackAssociationErrorCode_USER_NAME_NOT_FOUND ->
            "USER_NAME_NOT_FOUND"

        UserStackAssociationErrorCode_INTERNAL_ERROR ->
            "INTERNAL_ERROR"




{-| One of

* `VisibilityType_PUBLIC`
* `VisibilityType_PRIVATE`
* `VisibilityType_SHARED`

-}
type VisibilityType
    = VisibilityType_PUBLIC
    | VisibilityType_PRIVATE
    | VisibilityType_SHARED



visibilityTypeDecoder : JD.Decoder VisibilityType
visibilityTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PUBLIC" ->
                        JD.succeed VisibilityType_PUBLIC

                    "PRIVATE" ->
                        JD.succeed VisibilityType_PRIVATE

                    "SHARED" ->
                        JD.succeed VisibilityType_SHARED


                    _ ->
                        JD.fail "bad thing"
            )




visibilityTypeToString : VisibilityType -> String
visibilityTypeToString val =
    case val of
        VisibilityType_PUBLIC ->
            "PUBLIC"

        VisibilityType_PRIVATE ->
            "PRIVATE"

        VisibilityType_SHARED ->
            "SHARED"




{-| <p>Describes VPC configuration information for fleets and image builders.</p>
-}
type alias VpcConfig =
    { subnetIds : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    }



vpcConfigDecoder : JD.Decoder VpcConfig
vpcConfigDecoder =
    JD.succeed VpcConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetIds", "subnetIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecurityGroupIds", "securityGroupIds"]
            (JD.list JD.string)
        )
        




vpcConfigToString : VpcConfig -> String -- List (String, String)
vpcConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subnetIds" "" -- val.subnetIds
        
    --     |> Dict.insert
    --         "securityGroupIds" "" -- val.securityGroupIds
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AssociateFleetRequest =
    { fleetName : String
    , stackName : String
    }


{-| undefined
-}
type alias BatchAssociateUserStackRequest =
    { userStackAssociations : (List UserStackAssociation)
    }


{-| undefined
-}
type alias BatchDisassociateUserStackRequest =
    { userStackAssociations : (List UserStackAssociation)
    }


{-| undefined
-}
type alias CopyImageRequest =
    { sourceImageName : String
    , destinationImageName : String
    , destinationRegion : String
    , destinationImageDescription : Maybe String
    }


{-| undefined
-}
type alias CreateDirectoryConfigRequest =
    { directoryName : String
    , organizationalUnitDistinguishedNames : (List String)
    , serviceAccountCredentials : ServiceAccountCredentials
    }


{-| undefined
-}
type alias CreateFleetRequest =
    { name : String
    , imageName : Maybe String
    , imageArn : Maybe String
    , instanceType : String
    , fleetType : Maybe FleetType
    , computeCapacity : ComputeCapacity
    , vpcConfig : Maybe VpcConfig
    , maxUserDurationInSeconds : Maybe Int
    , disconnectTimeoutInSeconds : Maybe Int
    , description : Maybe String
    , displayName : Maybe String
    , enableDefaultInternetAccess : Maybe Bool
    , domainJoinInfo : Maybe DomainJoinInfo
    , tags : Maybe (Dict String String)
    , idleDisconnectTimeoutInSeconds : Maybe Int
    }


{-| undefined
-}
type alias CreateImageBuilderRequest =
    { name : String
    , imageName : Maybe String
    , imageArn : Maybe String
    , instanceType : String
    , description : Maybe String
    , displayName : Maybe String
    , vpcConfig : Maybe VpcConfig
    , enableDefaultInternetAccess : Maybe Bool
    , domainJoinInfo : Maybe DomainJoinInfo
    , appstreamAgentVersion : Maybe String
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias CreateImageBuilderStreamingURLRequest =
    { name : String
    , validity : Maybe Int
    }


{-| undefined
-}
type alias CreateStackRequest =
    { name : String
    , description : Maybe String
    , displayName : Maybe String
    , storageConnectors : Maybe (List StorageConnector)
    , redirectURL : Maybe String
    , feedbackURL : Maybe String
    , userSettings : Maybe (List UserSetting)
    , applicationSettings : Maybe ApplicationSettings
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias CreateStreamingURLRequest =
    { stackName : String
    , fleetName : String
    , userId : String
    , applicationId : Maybe String
    , validity : Maybe Int
    , sessionContext : Maybe String
    }


{-| undefined
-}
type alias CreateUsageReportSubscriptionRequest =
    { 
    }


{-| undefined
-}
type alias CreateUserRequest =
    { userName : String
    , messageAction : Maybe MessageAction
    , firstName : Maybe String
    , lastName : Maybe String
    , authenticationType : AuthenticationType
    }


{-| undefined
-}
type alias DeleteDirectoryConfigRequest =
    { directoryName : String
    }


{-| undefined
-}
type alias DeleteFleetRequest =
    { name : String
    }


{-| undefined
-}
type alias DeleteImageBuilderRequest =
    { name : String
    }


{-| undefined
-}
type alias DeleteImagePermissionsRequest =
    { name : String
    , sharedAccountId : String
    }


{-| undefined
-}
type alias DeleteImageRequest =
    { name : String
    }


{-| undefined
-}
type alias DeleteStackRequest =
    { name : String
    }


{-| undefined
-}
type alias DeleteUsageReportSubscriptionRequest =
    { 
    }


{-| undefined
-}
type alias DeleteUserRequest =
    { userName : String
    , authenticationType : AuthenticationType
    }


{-| undefined
-}
type alias DescribeDirectoryConfigsRequest =
    { directoryNames : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeFleetsRequest =
    { names : Maybe (List String)
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeImageBuildersRequest =
    { names : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeImagePermissionsRequest =
    { name : String
    , maxResults : Maybe Int
    , sharedAwsAccountIds : Maybe (List String)
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeImagesRequest =
    { names : Maybe (List String)
    , arns : Maybe (List String)
    , type_ : Maybe VisibilityType
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias DescribeSessionsRequest =
    { stackName : String
    , fleetName : String
    , userId : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    , authenticationType : Maybe AuthenticationType
    }


{-| undefined
-}
type alias DescribeStacksRequest =
    { names : Maybe (List String)
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeUsageReportSubscriptionsRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeUserStackAssociationsRequest =
    { stackName : Maybe String
    , userName : Maybe String
    , authenticationType : Maybe AuthenticationType
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeUsersRequest =
    { authenticationType : AuthenticationType
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DisableUserRequest =
    { userName : String
    , authenticationType : AuthenticationType
    }


{-| undefined
-}
type alias DisassociateFleetRequest =
    { fleetName : String
    , stackName : String
    }


{-| undefined
-}
type alias EnableUserRequest =
    { userName : String
    , authenticationType : AuthenticationType
    }


{-| undefined
-}
type alias ExpireSessionRequest =
    { sessionId : String
    }


{-| undefined
-}
type alias ListAssociatedFleetsRequest =
    { stackName : String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListAssociatedStacksRequest =
    { fleetName : String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceRequest =
    { resourceArn : String
    }


{-| undefined
-}
type alias StartFleetRequest =
    { name : String
    }


{-| undefined
-}
type alias StartImageBuilderRequest =
    { name : String
    , appstreamAgentVersion : Maybe String
    }


{-| undefined
-}
type alias StopFleetRequest =
    { name : String
    }


{-| undefined
-}
type alias StopImageBuilderRequest =
    { name : String
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceArn : String
    , tags : (Dict String String)
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceArn : String
    , tagKeys : (List String)
    }


{-| undefined
-}
type alias UpdateDirectoryConfigRequest =
    { directoryName : String
    , organizationalUnitDistinguishedNames : Maybe (List String)
    , serviceAccountCredentials : Maybe ServiceAccountCredentials
    }


{-| undefined
-}
type alias UpdateFleetRequest =
    { imageName : Maybe String
    , imageArn : Maybe String
    , name : Maybe String
    , instanceType : Maybe String
    , computeCapacity : Maybe ComputeCapacity
    , vpcConfig : Maybe VpcConfig
    , maxUserDurationInSeconds : Maybe Int
    , disconnectTimeoutInSeconds : Maybe Int
    , deleteVpcConfig : Maybe Bool
    , description : Maybe String
    , displayName : Maybe String
    , enableDefaultInternetAccess : Maybe Bool
    , domainJoinInfo : Maybe DomainJoinInfo
    , idleDisconnectTimeoutInSeconds : Maybe Int
    , attributesToDelete : Maybe (List FleetAttribute)
    }


{-| undefined
-}
type alias UpdateImagePermissionsRequest =
    { name : String
    , sharedAccountId : String
    , imagePermissions : ImagePermissions
    }


{-| undefined
-}
type alias UpdateStackRequest =
    { displayName : Maybe String
    , description : Maybe String
    , name : String
    , storageConnectors : Maybe (List StorageConnector)
    , deleteStorageConnectors : Maybe Bool
    , redirectURL : Maybe String
    , feedbackURL : Maybe String
    , attributesToDelete : Maybe (List StackAttribute)
    , userSettings : Maybe (List UserSetting)
    , applicationSettings : Maybe ApplicationSettings
    }










applicationEncoder : Application -> JE.Value
applicationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DisplayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IconURL", data.iconURL)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LaunchPath", data.launchPath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LaunchParameters", data.launchParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Metadata", data.metadata)
        
        
        |> JE.object






applicationSettingsEncoder : ApplicationSettings -> JE.Value
applicationSettingsEncoder data =
    []
        
        
        |> (::) ("Enabled", data.enabled |> (JE.bool))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SettingsGroup", data.settingsGroup)
        
        
        |> JE.object






applicationSettingsResponseEncoder : ApplicationSettingsResponse -> JE.Value
applicationSettingsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SettingsGroup", data.settingsGroup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("S3BucketName", data.s3BucketName)
        
        
        |> JE.object






associateFleetRequestEncoder : AssociateFleetRequest -> JE.Value
associateFleetRequestEncoder data =
    []
        
        
        |> (::) ("FleetName", data.fleetName |> (JE.string))
        
        
        
        |> (::) ("StackName", data.stackName |> (JE.string))
        
        
        |> JE.object






associateFleetResultEncoder : AssociateFleetResult -> JE.Value
associateFleetResultEncoder data =
    []
        
        |> JE.object










batchAssociateUserStackRequestEncoder : BatchAssociateUserStackRequest -> JE.Value
batchAssociateUserStackRequestEncoder data =
    []
        
        
        |> (::) ("UserStackAssociations", data.userStackAssociations |> (JE.list (userStackAssociationEncoder)))
        
        
        |> JE.object






batchAssociateUserStackResultEncoder : BatchAssociateUserStackResult -> JE.Value
batchAssociateUserStackResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userStackAssociationErrorEncoder))
            ("errors", data.errors)
        
        
        |> JE.object






batchDisassociateUserStackRequestEncoder : BatchDisassociateUserStackRequest -> JE.Value
batchDisassociateUserStackRequestEncoder data =
    []
        
        
        |> (::) ("UserStackAssociations", data.userStackAssociations |> (JE.list (userStackAssociationEncoder)))
        
        
        |> JE.object






batchDisassociateUserStackResultEncoder : BatchDisassociateUserStackResult -> JE.Value
batchDisassociateUserStackResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userStackAssociationErrorEncoder))
            ("errors", data.errors)
        
        
        |> JE.object






computeCapacityEncoder : ComputeCapacity -> JE.Value
computeCapacityEncoder data =
    []
        
        
        |> (::) ("DesiredInstances", data.desiredInstances |> (JE.int))
        
        
        |> JE.object






computeCapacityStatusEncoder : ComputeCapacityStatus -> JE.Value
computeCapacityStatusEncoder data =
    []
        
        
        |> (::) ("Desired", data.desired |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Running", data.running)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("InUse", data.inUse)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Available", data.available)
        
        
        |> JE.object






copyImageRequestEncoder : CopyImageRequest -> JE.Value
copyImageRequestEncoder data =
    []
        
        
        |> (::) ("SourceImageName", data.sourceImageName |> (JE.string))
        
        
        
        |> (::) ("DestinationImageName", data.destinationImageName |> (JE.string))
        
        
        
        |> (::) ("DestinationRegion", data.destinationRegion |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DestinationImageDescription", data.destinationImageDescription)
        
        
        |> JE.object






copyImageResponseEncoder : CopyImageResponse -> JE.Value
copyImageResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DestinationImageName", data.destinationImageName)
        
        
        |> JE.object






createDirectoryConfigRequestEncoder : CreateDirectoryConfigRequest -> JE.Value
createDirectoryConfigRequestEncoder data =
    []
        
        
        |> (::) ("DirectoryName", data.directoryName |> (JE.string))
        
        
        
        |> (::) ("OrganizationalUnitDistinguishedNames", data.organizationalUnitDistinguishedNames |> (JE.list (JE.string)))
        
        
        
        |> (::) ("ServiceAccountCredentials", data.serviceAccountCredentials |> (serviceAccountCredentialsEncoder))
        
        
        |> JE.object






createDirectoryConfigResultEncoder : CreateDirectoryConfigResult -> JE.Value
createDirectoryConfigResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (directoryConfigEncoder)
            ("DirectoryConfig", data.directoryConfig)
        
        
        |> JE.object






createFleetRequestEncoder : CreateFleetRequest -> JE.Value
createFleetRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageName", data.imageName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageArn", data.imageArn)
        
        
        
        |> (::) ("InstanceType", data.instanceType |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fleetTypeToString >> JE.string)
            ("FleetType", data.fleetType)
        
        
        
        |> (::) ("ComputeCapacity", data.computeCapacity |> (computeCapacityEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vpcConfigEncoder)
            ("VpcConfig", data.vpcConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxUserDurationInSeconds", data.maxUserDurationInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("DisconnectTimeoutInSeconds", data.disconnectTimeoutInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DisplayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableDefaultInternetAccess", data.enableDefaultInternetAccess)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (domainJoinInfoEncoder)
            ("DomainJoinInfo", data.domainJoinInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("IdleDisconnectTimeoutInSeconds", data.idleDisconnectTimeoutInSeconds)
        
        
        |> JE.object






createFleetResultEncoder : CreateFleetResult -> JE.Value
createFleetResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (fleetEncoder)
            ("Fleet", data.fleet)
        
        
        |> JE.object






createImageBuilderRequestEncoder : CreateImageBuilderRequest -> JE.Value
createImageBuilderRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageName", data.imageName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageArn", data.imageArn)
        
        
        
        |> (::) ("InstanceType", data.instanceType |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DisplayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vpcConfigEncoder)
            ("VpcConfig", data.vpcConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableDefaultInternetAccess", data.enableDefaultInternetAccess)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (domainJoinInfoEncoder)
            ("DomainJoinInfo", data.domainJoinInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AppstreamAgentVersion", data.appstreamAgentVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object






createImageBuilderResultEncoder : CreateImageBuilderResult -> JE.Value
createImageBuilderResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (imageBuilderEncoder)
            ("ImageBuilder", data.imageBuilder)
        
        
        |> JE.object






createImageBuilderStreamingURLRequestEncoder : CreateImageBuilderStreamingURLRequest -> JE.Value
createImageBuilderStreamingURLRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Validity", data.validity)
        
        
        |> JE.object






createImageBuilderStreamingURLResultEncoder : CreateImageBuilderStreamingURLResult -> JE.Value
createImageBuilderStreamingURLResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StreamingURL", data.streamingURL)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("Expires", data.expires)
        
        
        |> JE.object






createStackRequestEncoder : CreateStackRequest -> JE.Value
createStackRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DisplayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (storageConnectorEncoder))
            ("StorageConnectors", data.storageConnectors)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RedirectURL", data.redirectURL)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FeedbackURL", data.feedbackURL)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userSettingEncoder))
            ("UserSettings", data.userSettings)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (applicationSettingsEncoder)
            ("ApplicationSettings", data.applicationSettings)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object






createStackResultEncoder : CreateStackResult -> JE.Value
createStackResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (stackEncoder)
            ("Stack", data.stack)
        
        
        |> JE.object






createStreamingURLRequestEncoder : CreateStreamingURLRequest -> JE.Value
createStreamingURLRequestEncoder data =
    []
        
        
        |> (::) ("StackName", data.stackName |> (JE.string))
        
        
        
        |> (::) ("FleetName", data.fleetName |> (JE.string))
        
        
        
        |> (::) ("UserId", data.userId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ApplicationId", data.applicationId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Validity", data.validity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SessionContext", data.sessionContext)
        
        
        |> JE.object






createStreamingURLResultEncoder : CreateStreamingURLResult -> JE.Value
createStreamingURLResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StreamingURL", data.streamingURL)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("Expires", data.expires)
        
        
        |> JE.object






createUsageReportSubscriptionRequestEncoder : CreateUsageReportSubscriptionRequest -> JE.Value
createUsageReportSubscriptionRequestEncoder data =
    []
        
        |> JE.object






createUsageReportSubscriptionResultEncoder : CreateUsageReportSubscriptionResult -> JE.Value
createUsageReportSubscriptionResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("S3BucketName", data.s3BucketName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (usageReportScheduleToString >> JE.string)
            ("Schedule", data.schedule)
        
        
        |> JE.object






createUserRequestEncoder : CreateUserRequest -> JE.Value
createUserRequestEncoder data =
    []
        
        
        |> (::) ("UserName", data.userName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (messageActionToString >> JE.string)
            ("MessageAction", data.messageAction)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FirstName", data.firstName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LastName", data.lastName)
        
        
        
        |> (::) ("AuthenticationType", data.authenticationType |> (authenticationTypeToString >> JE.string))
        
        
        |> JE.object






createUserResultEncoder : CreateUserResult -> JE.Value
createUserResultEncoder data =
    []
        
        |> JE.object






deleteDirectoryConfigRequestEncoder : DeleteDirectoryConfigRequest -> JE.Value
deleteDirectoryConfigRequestEncoder data =
    []
        
        
        |> (::) ("DirectoryName", data.directoryName |> (JE.string))
        
        
        |> JE.object






deleteDirectoryConfigResultEncoder : DeleteDirectoryConfigResult -> JE.Value
deleteDirectoryConfigResultEncoder data =
    []
        
        |> JE.object






deleteFleetRequestEncoder : DeleteFleetRequest -> JE.Value
deleteFleetRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteFleetResultEncoder : DeleteFleetResult -> JE.Value
deleteFleetResultEncoder data =
    []
        
        |> JE.object






deleteImageBuilderRequestEncoder : DeleteImageBuilderRequest -> JE.Value
deleteImageBuilderRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteImageBuilderResultEncoder : DeleteImageBuilderResult -> JE.Value
deleteImageBuilderResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (imageBuilderEncoder)
            ("ImageBuilder", data.imageBuilder)
        
        
        |> JE.object






deleteImagePermissionsRequestEncoder : DeleteImagePermissionsRequest -> JE.Value
deleteImagePermissionsRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("SharedAccountId", data.sharedAccountId |> (JE.string))
        
        
        |> JE.object






deleteImagePermissionsResultEncoder : DeleteImagePermissionsResult -> JE.Value
deleteImagePermissionsResultEncoder data =
    []
        
        |> JE.object






deleteImageRequestEncoder : DeleteImageRequest -> JE.Value
deleteImageRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteImageResultEncoder : DeleteImageResult -> JE.Value
deleteImageResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (imageEncoder)
            ("Image", data.image)
        
        
        |> JE.object






deleteStackRequestEncoder : DeleteStackRequest -> JE.Value
deleteStackRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteStackResultEncoder : DeleteStackResult -> JE.Value
deleteStackResultEncoder data =
    []
        
        |> JE.object






deleteUsageReportSubscriptionRequestEncoder : DeleteUsageReportSubscriptionRequest -> JE.Value
deleteUsageReportSubscriptionRequestEncoder data =
    []
        
        |> JE.object






deleteUsageReportSubscriptionResultEncoder : DeleteUsageReportSubscriptionResult -> JE.Value
deleteUsageReportSubscriptionResultEncoder data =
    []
        
        |> JE.object






deleteUserRequestEncoder : DeleteUserRequest -> JE.Value
deleteUserRequestEncoder data =
    []
        
        
        |> (::) ("UserName", data.userName |> (JE.string))
        
        
        
        |> (::) ("AuthenticationType", data.authenticationType |> (authenticationTypeToString >> JE.string))
        
        
        |> JE.object






deleteUserResultEncoder : DeleteUserResult -> JE.Value
deleteUserResultEncoder data =
    []
        
        |> JE.object






describeDirectoryConfigsRequestEncoder : DescribeDirectoryConfigsRequest -> JE.Value
describeDirectoryConfigsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("DirectoryNames", data.directoryNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeDirectoryConfigsResultEncoder : DescribeDirectoryConfigsResult -> JE.Value
describeDirectoryConfigsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (directoryConfigEncoder))
            ("DirectoryConfigs", data.directoryConfigs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeFleetsRequestEncoder : DescribeFleetsRequest -> JE.Value
describeFleetsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Names", data.names)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeFleetsResultEncoder : DescribeFleetsResult -> JE.Value
describeFleetsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fleetEncoder))
            ("Fleets", data.fleets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeImageBuildersRequestEncoder : DescribeImageBuildersRequest -> JE.Value
describeImageBuildersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Names", data.names)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeImageBuildersResultEncoder : DescribeImageBuildersResult -> JE.Value
describeImageBuildersResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (imageBuilderEncoder))
            ("ImageBuilders", data.imageBuilders)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeImagePermissionsRequestEncoder : DescribeImagePermissionsRequest -> JE.Value
describeImagePermissionsRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SharedAwsAccountIds", data.sharedAwsAccountIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeImagePermissionsResultEncoder : DescribeImagePermissionsResult -> JE.Value
describeImagePermissionsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (sharedImagePermissionsEncoder))
            ("SharedImagePermissionsList", data.sharedImagePermissionsList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeImagesRequestEncoder : DescribeImagesRequest -> JE.Value
describeImagesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Names", data.names)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Arns", data.arns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (visibilityTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






describeImagesResultEncoder : DescribeImagesResult -> JE.Value
describeImagesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (imageEncoder))
            ("Images", data.images)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeSessionsRequestEncoder : DescribeSessionsRequest -> JE.Value
describeSessionsRequestEncoder data =
    []
        
        
        |> (::) ("StackName", data.stackName |> (JE.string))
        
        
        
        |> (::) ("FleetName", data.fleetName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserId", data.userId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (authenticationTypeToString >> JE.string)
            ("AuthenticationType", data.authenticationType)
        
        
        |> JE.object






describeSessionsResultEncoder : DescribeSessionsResult -> JE.Value
describeSessionsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (sessionEncoder))
            ("Sessions", data.sessions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeStacksRequestEncoder : DescribeStacksRequest -> JE.Value
describeStacksRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Names", data.names)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeStacksResultEncoder : DescribeStacksResult -> JE.Value
describeStacksResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (stackEncoder))
            ("Stacks", data.stacks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeUsageReportSubscriptionsRequestEncoder : DescribeUsageReportSubscriptionsRequest -> JE.Value
describeUsageReportSubscriptionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeUsageReportSubscriptionsResultEncoder : DescribeUsageReportSubscriptionsResult -> JE.Value
describeUsageReportSubscriptionsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (usageReportSubscriptionEncoder))
            ("UsageReportSubscriptions", data.usageReportSubscriptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeUserStackAssociationsRequestEncoder : DescribeUserStackAssociationsRequest -> JE.Value
describeUserStackAssociationsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StackName", data.stackName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserName", data.userName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (authenticationTypeToString >> JE.string)
            ("AuthenticationType", data.authenticationType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeUserStackAssociationsResultEncoder : DescribeUserStackAssociationsResult -> JE.Value
describeUserStackAssociationsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userStackAssociationEncoder))
            ("UserStackAssociations", data.userStackAssociations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeUsersRequestEncoder : DescribeUsersRequest -> JE.Value
describeUsersRequestEncoder data =
    []
        
        
        |> (::) ("AuthenticationType", data.authenticationType |> (authenticationTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeUsersResultEncoder : DescribeUsersResult -> JE.Value
describeUsersResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userEncoder))
            ("Users", data.users)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






directoryConfigEncoder : DirectoryConfig -> JE.Value
directoryConfigEncoder data =
    []
        
        
        |> (::) ("DirectoryName", data.directoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("OrganizationalUnitDistinguishedNames", data.organizationalUnitDistinguishedNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (serviceAccountCredentialsEncoder)
            ("ServiceAccountCredentials", data.serviceAccountCredentials)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        |> JE.object






disableUserRequestEncoder : DisableUserRequest -> JE.Value
disableUserRequestEncoder data =
    []
        
        
        |> (::) ("UserName", data.userName |> (JE.string))
        
        
        
        |> (::) ("AuthenticationType", data.authenticationType |> (authenticationTypeToString >> JE.string))
        
        
        |> JE.object






disableUserResultEncoder : DisableUserResult -> JE.Value
disableUserResultEncoder data =
    []
        
        |> JE.object






disassociateFleetRequestEncoder : DisassociateFleetRequest -> JE.Value
disassociateFleetRequestEncoder data =
    []
        
        
        |> (::) ("FleetName", data.fleetName |> (JE.string))
        
        
        
        |> (::) ("StackName", data.stackName |> (JE.string))
        
        
        |> JE.object






disassociateFleetResultEncoder : DisassociateFleetResult -> JE.Value
disassociateFleetResultEncoder data =
    []
        
        |> JE.object






domainJoinInfoEncoder : DomainJoinInfo -> JE.Value
domainJoinInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DirectoryName", data.directoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("OrganizationalUnitDistinguishedName", data.organizationalUnitDistinguishedName)
        
        
        |> JE.object






enableUserRequestEncoder : EnableUserRequest -> JE.Value
enableUserRequestEncoder data =
    []
        
        
        |> (::) ("UserName", data.userName |> (JE.string))
        
        
        
        |> (::) ("AuthenticationType", data.authenticationType |> (authenticationTypeToString >> JE.string))
        
        
        |> JE.object






enableUserResultEncoder : EnableUserResult -> JE.Value
enableUserResultEncoder data =
    []
        
        |> JE.object






expireSessionRequestEncoder : ExpireSessionRequest -> JE.Value
expireSessionRequestEncoder data =
    []
        
        
        |> (::) ("SessionId", data.sessionId |> (JE.string))
        
        
        |> JE.object






expireSessionResultEncoder : ExpireSessionResult -> JE.Value
expireSessionResultEncoder data =
    []
        
        |> JE.object






fleetEncoder : Fleet -> JE.Value
fleetEncoder data =
    []
        
        
        |> (::) ("Arn", data.arn |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DisplayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageName", data.imageName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageArn", data.imageArn)
        
        
        
        |> (::) ("InstanceType", data.instanceType |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fleetTypeToString >> JE.string)
            ("FleetType", data.fleetType)
        
        
        
        |> (::) ("ComputeCapacityStatus", data.computeCapacityStatus |> (computeCapacityStatusEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxUserDurationInSeconds", data.maxUserDurationInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("DisconnectTimeoutInSeconds", data.disconnectTimeoutInSeconds)
        
        
        
        |> (::) ("State", data.state |> (fleetStateToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vpcConfigEncoder)
            ("VpcConfig", data.vpcConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fleetErrorEncoder))
            ("FleetErrors", data.fleetErrors)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableDefaultInternetAccess", data.enableDefaultInternetAccess)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (domainJoinInfoEncoder)
            ("DomainJoinInfo", data.domainJoinInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("IdleDisconnectTimeoutInSeconds", data.idleDisconnectTimeoutInSeconds)
        
        
        |> JE.object










fleetErrorEncoder : FleetError -> JE.Value
fleetErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (fleetErrorCodeToString >> JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object


















imageEncoder : Image -> JE.Value
imageEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BaseImageArn", data.baseImageArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DisplayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imageStateToString >> JE.string)
            ("State", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (visibilityTypeToString >> JE.string)
            ("Visibility", data.visibility)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ImageBuilderSupported", data.imageBuilderSupported)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageBuilderName", data.imageBuilderName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (platformTypeToString >> JE.string)
            ("Platform", data.platform)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imageStateChangeReasonEncoder)
            ("StateChangeReason", data.stateChangeReason)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (applicationEncoder))
            ("Applications", data.applications)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("PublicBaseImageReleasedDate", data.publicBaseImageReleasedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AppstreamAgentVersion", data.appstreamAgentVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imagePermissionsEncoder)
            ("ImagePermissions", data.imagePermissions)
        
        
        |> JE.object






imageBuilderEncoder : ImageBuilder -> JE.Value
imageBuilderEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageArn", data.imageArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DisplayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vpcConfigEncoder)
            ("VpcConfig", data.vpcConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceType", data.instanceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (platformTypeToString >> JE.string)
            ("Platform", data.platform)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imageBuilderStateToString >> JE.string)
            ("State", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imageBuilderStateChangeReasonEncoder)
            ("StateChangeReason", data.stateChangeReason)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableDefaultInternetAccess", data.enableDefaultInternetAccess)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (domainJoinInfoEncoder)
            ("DomainJoinInfo", data.domainJoinInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (networkAccessConfigurationEncoder)
            ("NetworkAccessConfiguration", data.networkAccessConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceErrorEncoder))
            ("ImageBuilderErrors", data.imageBuilderErrors)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AppstreamAgentVersion", data.appstreamAgentVersion)
        
        
        |> JE.object










imageBuilderStateChangeReasonEncoder : ImageBuilderStateChangeReason -> JE.Value
imageBuilderStateChangeReasonEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (imageBuilderStateChangeReasonCodeToString >> JE.string)
            ("Code", data.code)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        |> JE.object










imagePermissionsEncoder : ImagePermissions -> JE.Value
imagePermissionsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("allowFleet", data.allowFleet)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("allowImageBuilder", data.allowImageBuilder)
        
        
        |> JE.object










imageStateChangeReasonEncoder : ImageStateChangeReason -> JE.Value
imageStateChangeReasonEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (imageStateChangeReasonCodeToString >> JE.string)
            ("Code", data.code)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        |> JE.object










lastReportGenerationExecutionErrorEncoder : LastReportGenerationExecutionError -> JE.Value
lastReportGenerationExecutionErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (usageReportExecutionErrorCodeToString >> JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






listAssociatedFleetsRequestEncoder : ListAssociatedFleetsRequest -> JE.Value
listAssociatedFleetsRequestEncoder data =
    []
        
        
        |> (::) ("StackName", data.stackName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listAssociatedFleetsResultEncoder : ListAssociatedFleetsResult -> JE.Value
listAssociatedFleetsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Names", data.names)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listAssociatedStacksRequestEncoder : ListAssociatedStacksRequest -> JE.Value
listAssociatedStacksRequestEncoder data =
    []
        
        
        |> (::) ("FleetName", data.fleetName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listAssociatedStacksResultEncoder : ListAssociatedStacksResult -> JE.Value
listAssociatedStacksResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Names", data.names)
        
        
        
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
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object










networkAccessConfigurationEncoder : NetworkAccessConfiguration -> JE.Value
networkAccessConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EniPrivateIpAddress", data.eniPrivateIpAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EniId", data.eniId)
        
        
        |> JE.object














resourceErrorEncoder : ResourceError -> JE.Value
resourceErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (fleetErrorCodeToString >> JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ErrorTimestamp", data.errorTimestamp)
        
        
        |> JE.object






serviceAccountCredentialsEncoder : ServiceAccountCredentials -> JE.Value
serviceAccountCredentialsEncoder data =
    []
        
        
        |> (::) ("AccountName", data.accountName |> (JE.string))
        
        
        
        |> (::) ("AccountPassword", data.accountPassword |> (JE.string))
        
        
        |> JE.object






sessionEncoder : Session -> JE.Value
sessionEncoder data =
    []
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        
        |> (::) ("UserId", data.userId |> (JE.string))
        
        
        
        |> (::) ("StackName", data.stackName |> (JE.string))
        
        
        
        |> (::) ("FleetName", data.fleetName |> (JE.string))
        
        
        
        |> (::) ("State", data.state |> (sessionStateToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sessionConnectionStateToString >> JE.string)
            ("ConnectionState", data.connectionState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("MaxExpirationTime", data.maxExpirationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (authenticationTypeToString >> JE.string)
            ("AuthenticationType", data.authenticationType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (networkAccessConfigurationEncoder)
            ("NetworkAccessConfiguration", data.networkAccessConfiguration)
        
        
        |> JE.object














sharedImagePermissionsEncoder : SharedImagePermissions -> JE.Value
sharedImagePermissionsEncoder data =
    []
        
        
        |> (::) ("sharedAccountId", data.sharedAccountId |> (JE.string))
        
        
        
        |> (::) ("imagePermissions", data.imagePermissions |> (imagePermissionsEncoder))
        
        
        |> JE.object






stackEncoder : Stack -> JE.Value
stackEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DisplayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (storageConnectorEncoder))
            ("StorageConnectors", data.storageConnectors)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RedirectURL", data.redirectURL)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FeedbackURL", data.feedbackURL)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (stackErrorEncoder))
            ("StackErrors", data.stackErrors)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userSettingEncoder))
            ("UserSettings", data.userSettings)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (applicationSettingsResponseEncoder)
            ("ApplicationSettings", data.applicationSettings)
        
        
        |> JE.object










stackErrorEncoder : StackError -> JE.Value
stackErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (stackErrorCodeToString >> JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object










startFleetRequestEncoder : StartFleetRequest -> JE.Value
startFleetRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






startFleetResultEncoder : StartFleetResult -> JE.Value
startFleetResultEncoder data =
    []
        
        |> JE.object






startImageBuilderRequestEncoder : StartImageBuilderRequest -> JE.Value
startImageBuilderRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AppstreamAgentVersion", data.appstreamAgentVersion)
        
        
        |> JE.object






startImageBuilderResultEncoder : StartImageBuilderResult -> JE.Value
startImageBuilderResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (imageBuilderEncoder)
            ("ImageBuilder", data.imageBuilder)
        
        
        |> JE.object






stopFleetRequestEncoder : StopFleetRequest -> JE.Value
stopFleetRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






stopFleetResultEncoder : StopFleetResult -> JE.Value
stopFleetResultEncoder data =
    []
        
        |> JE.object






stopImageBuilderRequestEncoder : StopImageBuilderRequest -> JE.Value
stopImageBuilderRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






stopImageBuilderResultEncoder : StopImageBuilderResult -> JE.Value
stopImageBuilderResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (imageBuilderEncoder)
            ("ImageBuilder", data.imageBuilder)
        
        
        |> JE.object






storageConnectorEncoder : StorageConnector -> JE.Value
storageConnectorEncoder data =
    []
        
        
        |> (::) ("ConnectorType", data.connectorType |> (storageConnectorTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceIdentifier", data.resourceIdentifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Domains", data.domains)
        
        
        |> JE.object










tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("Tags", data.tags |> (JE.dict identity (JE.string)))
        
        
        |> JE.object






tagResourceResponseEncoder : TagResourceResponse -> JE.Value
tagResourceResponseEncoder data =
    []
        
        |> JE.object






untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("TagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






untagResourceResponseEncoder : UntagResourceResponse -> JE.Value
untagResourceResponseEncoder data =
    []
        
        |> JE.object






updateDirectoryConfigRequestEncoder : UpdateDirectoryConfigRequest -> JE.Value
updateDirectoryConfigRequestEncoder data =
    []
        
        
        |> (::) ("DirectoryName", data.directoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("OrganizationalUnitDistinguishedNames", data.organizationalUnitDistinguishedNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (serviceAccountCredentialsEncoder)
            ("ServiceAccountCredentials", data.serviceAccountCredentials)
        
        
        |> JE.object






updateDirectoryConfigResultEncoder : UpdateDirectoryConfigResult -> JE.Value
updateDirectoryConfigResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (directoryConfigEncoder)
            ("DirectoryConfig", data.directoryConfig)
        
        
        |> JE.object






updateFleetRequestEncoder : UpdateFleetRequest -> JE.Value
updateFleetRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageName", data.imageName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageArn", data.imageArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceType", data.instanceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (computeCapacityEncoder)
            ("ComputeCapacity", data.computeCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vpcConfigEncoder)
            ("VpcConfig", data.vpcConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxUserDurationInSeconds", data.maxUserDurationInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("DisconnectTimeoutInSeconds", data.disconnectTimeoutInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DeleteVpcConfig", data.deleteVpcConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DisplayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableDefaultInternetAccess", data.enableDefaultInternetAccess)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (domainJoinInfoEncoder)
            ("DomainJoinInfo", data.domainJoinInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("IdleDisconnectTimeoutInSeconds", data.idleDisconnectTimeoutInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fleetAttributeToString >> JE.string))
            ("AttributesToDelete", data.attributesToDelete)
        
        
        |> JE.object






updateFleetResultEncoder : UpdateFleetResult -> JE.Value
updateFleetResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (fleetEncoder)
            ("Fleet", data.fleet)
        
        
        |> JE.object






updateImagePermissionsRequestEncoder : UpdateImagePermissionsRequest -> JE.Value
updateImagePermissionsRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("SharedAccountId", data.sharedAccountId |> (JE.string))
        
        
        
        |> (::) ("ImagePermissions", data.imagePermissions |> (imagePermissionsEncoder))
        
        
        |> JE.object






updateImagePermissionsResultEncoder : UpdateImagePermissionsResult -> JE.Value
updateImagePermissionsResultEncoder data =
    []
        
        |> JE.object






updateStackRequestEncoder : UpdateStackRequest -> JE.Value
updateStackRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DisplayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (storageConnectorEncoder))
            ("StorageConnectors", data.storageConnectors)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DeleteStorageConnectors", data.deleteStorageConnectors)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RedirectURL", data.redirectURL)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FeedbackURL", data.feedbackURL)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (stackAttributeToString >> JE.string))
            ("AttributesToDelete", data.attributesToDelete)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userSettingEncoder))
            ("UserSettings", data.userSettings)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (applicationSettingsEncoder)
            ("ApplicationSettings", data.applicationSettings)
        
        
        |> JE.object






updateStackResultEncoder : UpdateStackResult -> JE.Value
updateStackResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (stackEncoder)
            ("Stack", data.stack)
        
        
        |> JE.object














usageReportSubscriptionEncoder : UsageReportSubscription -> JE.Value
usageReportSubscriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("S3BucketName", data.s3BucketName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (usageReportScheduleToString >> JE.string)
            ("Schedule", data.schedule)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastGeneratedReportDate", data.lastGeneratedReportDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (lastReportGenerationExecutionErrorEncoder))
            ("SubscriptionErrors", data.subscriptionErrors)
        
        
        |> JE.object






userEncoder : User -> JE.Value
userEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserName", data.userName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FirstName", data.firstName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LastName", data.lastName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> (::) ("AuthenticationType", data.authenticationType |> (authenticationTypeToString >> JE.string))
        
        
        |> JE.object






userSettingEncoder : UserSetting -> JE.Value
userSettingEncoder data =
    []
        
        
        |> (::) ("Action", data.action |> (actionToString >> JE.string))
        
        
        
        |> (::) ("Permission", data.permission |> (permissionToString >> JE.string))
        
        
        |> JE.object






userStackAssociationEncoder : UserStackAssociation -> JE.Value
userStackAssociationEncoder data =
    []
        
        
        |> (::) ("StackName", data.stackName |> (JE.string))
        
        
        
        |> (::) ("UserName", data.userName |> (JE.string))
        
        
        
        |> (::) ("AuthenticationType", data.authenticationType |> (authenticationTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("SendEmailNotification", data.sendEmailNotification)
        
        
        |> JE.object






userStackAssociationErrorEncoder : UserStackAssociationError -> JE.Value
userStackAssociationErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (userStackAssociationEncoder)
            ("UserStackAssociation", data.userStackAssociation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userStackAssociationErrorCodeToString >> JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object














vpcConfigEncoder : VpcConfig -> JE.Value
vpcConfigEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SubnetIds", data.subnetIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SecurityGroupIds", data.securityGroupIds)
        
        
        |> JE.object





