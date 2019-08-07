module AWS.WorkSpaces
    exposing
        ( service
        , associateIpGroups
        , authorizeIpRules
        , copyWorkspaceImage
        , CopyWorkspaceImageOptions
        , createIpGroup
        , CreateIpGroupOptions
        , createTags
        , createWorkspaces
        , deleteIpGroup
        , deleteTags
        , deleteWorkspaceImage
        , describeAccount
        , describeAccountModifications
        , DescribeAccountModificationsOptions
        , describeClientProperties
        , describeIpGroups
        , DescribeIpGroupsOptions
        , describeTags
        , describeWorkspaceBundles
        , DescribeWorkspaceBundlesOptions
        , describeWorkspaceDirectories
        , DescribeWorkspaceDirectoriesOptions
        , describeWorkspaceImages
        , DescribeWorkspaceImagesOptions
        , describeWorkspaces
        , DescribeWorkspacesOptions
        , describeWorkspacesConnectionStatus
        , DescribeWorkspacesConnectionStatusOptions
        , disassociateIpGroups
        , importWorkspaceImage
        , ImportWorkspaceImageOptions
        , listAvailableManagementCidrRanges
        , ListAvailableManagementCidrRangesOptions
        , modifyAccount
        , ModifyAccountOptions
        , modifyClientProperties
        , modifyWorkspaceProperties
        , modifyWorkspaceState
        , rebootWorkspaces
        , rebuildWorkspaces
        , revokeIpRules
        , startWorkspaces
        , stopWorkspaces
        , terminateWorkspaces
        , updateRulesOfIpGroup
        , AccountModification
        , AssociateIpGroupsResult
        , AuthorizeIpRulesResult
        , ClientProperties
        , ClientPropertiesResult
        , Compute(..)
        , ComputeType
        , ConnectionState(..)
        , CopyWorkspaceImageResult
        , CreateIpGroupResult
        , CreateTagsResult
        , CreateWorkspacesResult
        , DedicatedTenancyModificationStateEnum(..)
        , DedicatedTenancySupportEnum(..)
        , DedicatedTenancySupportResultEnum(..)
        , DefaultWorkspaceCreationProperties
        , DeleteIpGroupResult
        , DeleteTagsResult
        , DeleteWorkspaceImageResult
        , DescribeAccountModificationsResult
        , DescribeAccountResult
        , DescribeClientPropertiesResult
        , DescribeIpGroupsResult
        , DescribeTagsResult
        , DescribeWorkspaceBundlesResult
        , DescribeWorkspaceDirectoriesResult
        , DescribeWorkspaceImagesResult
        , DescribeWorkspacesConnectionStatusResult
        , DescribeWorkspacesResult
        , DisassociateIpGroupsResult
        , FailedCreateWorkspaceRequest
        , FailedWorkspaceChangeRequest
        , ImportWorkspaceImageResult
        , IpRuleItem
        , ListAvailableManagementCidrRangesResult
        , ModificationResourceEnum(..)
        , ModificationState
        , ModificationStateEnum(..)
        , ModifyAccountResult
        , ModifyClientPropertiesResult
        , ModifyWorkspacePropertiesResult
        , ModifyWorkspaceStateResult
        , OperatingSystem
        , OperatingSystemType(..)
        , RebootRequest
        , RebootWorkspacesResult
        , RebuildRequest
        , RebuildWorkspacesResult
        , ReconnectEnum(..)
        , RevokeIpRulesResult
        , RootStorage
        , RunningMode(..)
        , StartRequest
        , StartWorkspacesResult
        , StopRequest
        , StopWorkspacesResult
        , Tag
        , TargetWorkspaceState(..)
        , TerminateRequest
        , TerminateWorkspacesResult
        , UpdateRulesOfIpGroupResult
        , UserStorage
        , Workspace
        , WorkspaceBundle
        , WorkspaceConnectionStatus
        , WorkspaceDirectory
        , WorkspaceDirectoryState(..)
        , WorkspaceDirectoryType(..)
        , WorkspaceImage
        , WorkspaceImageIngestionProcess(..)
        , WorkspaceImageRequiredTenancy(..)
        , WorkspaceImageState(..)
        , WorkspaceProperties
        , WorkspaceRequest
        , WorkspaceState(..)
        , WorkspacesIpGroup
        )

{-| <fullname>Amazon WorkSpaces Service</fullname> <p>Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft Windows and Amazon Linux desktops for your users.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [associateIpGroups](#associateIpGroups)
* [authorizeIpRules](#authorizeIpRules)
* [copyWorkspaceImage](#copyWorkspaceImage)
* [CopyWorkspaceImageOptions](#CopyWorkspaceImageOptions)
* [createIpGroup](#createIpGroup)
* [CreateIpGroupOptions](#CreateIpGroupOptions)
* [createTags](#createTags)
* [createWorkspaces](#createWorkspaces)
* [deleteIpGroup](#deleteIpGroup)
* [deleteTags](#deleteTags)
* [deleteWorkspaceImage](#deleteWorkspaceImage)
* [describeAccount](#describeAccount)
* [describeAccountModifications](#describeAccountModifications)
* [DescribeAccountModificationsOptions](#DescribeAccountModificationsOptions)
* [describeClientProperties](#describeClientProperties)
* [describeIpGroups](#describeIpGroups)
* [DescribeIpGroupsOptions](#DescribeIpGroupsOptions)
* [describeTags](#describeTags)
* [describeWorkspaceBundles](#describeWorkspaceBundles)
* [DescribeWorkspaceBundlesOptions](#DescribeWorkspaceBundlesOptions)
* [describeWorkspaceDirectories](#describeWorkspaceDirectories)
* [DescribeWorkspaceDirectoriesOptions](#DescribeWorkspaceDirectoriesOptions)
* [describeWorkspaceImages](#describeWorkspaceImages)
* [DescribeWorkspaceImagesOptions](#DescribeWorkspaceImagesOptions)
* [describeWorkspaces](#describeWorkspaces)
* [DescribeWorkspacesOptions](#DescribeWorkspacesOptions)
* [describeWorkspacesConnectionStatus](#describeWorkspacesConnectionStatus)
* [DescribeWorkspacesConnectionStatusOptions](#DescribeWorkspacesConnectionStatusOptions)
* [disassociateIpGroups](#disassociateIpGroups)
* [importWorkspaceImage](#importWorkspaceImage)
* [ImportWorkspaceImageOptions](#ImportWorkspaceImageOptions)
* [listAvailableManagementCidrRanges](#listAvailableManagementCidrRanges)
* [ListAvailableManagementCidrRangesOptions](#ListAvailableManagementCidrRangesOptions)
* [modifyAccount](#modifyAccount)
* [ModifyAccountOptions](#ModifyAccountOptions)
* [modifyClientProperties](#modifyClientProperties)
* [modifyWorkspaceProperties](#modifyWorkspaceProperties)
* [modifyWorkspaceState](#modifyWorkspaceState)
* [rebootWorkspaces](#rebootWorkspaces)
* [rebuildWorkspaces](#rebuildWorkspaces)
* [revokeIpRules](#revokeIpRules)
* [startWorkspaces](#startWorkspaces)
* [stopWorkspaces](#stopWorkspaces)
* [terminateWorkspaces](#terminateWorkspaces)
* [updateRulesOfIpGroup](#updateRulesOfIpGroup)


@docs associateIpGroups,authorizeIpRules,copyWorkspaceImage,CopyWorkspaceImageOptions,createIpGroup,CreateIpGroupOptions,createTags,createWorkspaces,deleteIpGroup,deleteTags,deleteWorkspaceImage,describeAccount,describeAccountModifications,DescribeAccountModificationsOptions,describeClientProperties,describeIpGroups,DescribeIpGroupsOptions,describeTags,describeWorkspaceBundles,DescribeWorkspaceBundlesOptions,describeWorkspaceDirectories,DescribeWorkspaceDirectoriesOptions,describeWorkspaceImages,DescribeWorkspaceImagesOptions,describeWorkspaces,DescribeWorkspacesOptions,describeWorkspacesConnectionStatus,DescribeWorkspacesConnectionStatusOptions,disassociateIpGroups,importWorkspaceImage,ImportWorkspaceImageOptions,listAvailableManagementCidrRanges,ListAvailableManagementCidrRangesOptions,modifyAccount,ModifyAccountOptions,modifyClientProperties,modifyWorkspaceProperties,modifyWorkspaceState,rebootWorkspaces,rebuildWorkspaces,revokeIpRules,startWorkspaces,stopWorkspaces,terminateWorkspaces,updateRulesOfIpGroup

## Responses

* [AssociateIpGroupsResult](#AssociateIpGroupsResult)
* [AuthorizeIpRulesResult](#AuthorizeIpRulesResult)
* [CopyWorkspaceImageResult](#CopyWorkspaceImageResult)
* [CreateIpGroupResult](#CreateIpGroupResult)
* [CreateTagsResult](#CreateTagsResult)
* [CreateWorkspacesResult](#CreateWorkspacesResult)
* [DeleteIpGroupResult](#DeleteIpGroupResult)
* [DeleteTagsResult](#DeleteTagsResult)
* [DeleteWorkspaceImageResult](#DeleteWorkspaceImageResult)
* [DescribeAccountModificationsResult](#DescribeAccountModificationsResult)
* [DescribeAccountResult](#DescribeAccountResult)
* [DescribeClientPropertiesResult](#DescribeClientPropertiesResult)
* [DescribeIpGroupsResult](#DescribeIpGroupsResult)
* [DescribeTagsResult](#DescribeTagsResult)
* [DescribeWorkspaceBundlesResult](#DescribeWorkspaceBundlesResult)
* [DescribeWorkspaceDirectoriesResult](#DescribeWorkspaceDirectoriesResult)
* [DescribeWorkspaceImagesResult](#DescribeWorkspaceImagesResult)
* [DescribeWorkspacesConnectionStatusResult](#DescribeWorkspacesConnectionStatusResult)
* [DescribeWorkspacesResult](#DescribeWorkspacesResult)
* [DisassociateIpGroupsResult](#DisassociateIpGroupsResult)
* [ImportWorkspaceImageResult](#ImportWorkspaceImageResult)
* [ListAvailableManagementCidrRangesResult](#ListAvailableManagementCidrRangesResult)
* [ModifyAccountResult](#ModifyAccountResult)
* [ModifyClientPropertiesResult](#ModifyClientPropertiesResult)
* [ModifyWorkspacePropertiesResult](#ModifyWorkspacePropertiesResult)
* [ModifyWorkspaceStateResult](#ModifyWorkspaceStateResult)
* [RebootWorkspacesResult](#RebootWorkspacesResult)
* [RebuildWorkspacesResult](#RebuildWorkspacesResult)
* [RevokeIpRulesResult](#RevokeIpRulesResult)
* [StartWorkspacesResult](#StartWorkspacesResult)
* [StopWorkspacesResult](#StopWorkspacesResult)
* [TerminateWorkspacesResult](#TerminateWorkspacesResult)
* [UpdateRulesOfIpGroupResult](#UpdateRulesOfIpGroupResult)


@docs AssociateIpGroupsResult,AuthorizeIpRulesResult,CopyWorkspaceImageResult,CreateIpGroupResult,CreateTagsResult,CreateWorkspacesResult,DeleteIpGroupResult,DeleteTagsResult,DeleteWorkspaceImageResult,DescribeAccountModificationsResult,DescribeAccountResult,DescribeClientPropertiesResult,DescribeIpGroupsResult,DescribeTagsResult,DescribeWorkspaceBundlesResult,DescribeWorkspaceDirectoriesResult,DescribeWorkspaceImagesResult,DescribeWorkspacesConnectionStatusResult,DescribeWorkspacesResult,DisassociateIpGroupsResult,ImportWorkspaceImageResult,ListAvailableManagementCidrRangesResult,ModifyAccountResult,ModifyClientPropertiesResult,ModifyWorkspacePropertiesResult,ModifyWorkspaceStateResult,RebootWorkspacesResult,RebuildWorkspacesResult,RevokeIpRulesResult,StartWorkspacesResult,StopWorkspacesResult,TerminateWorkspacesResult,UpdateRulesOfIpGroupResult

## Records

* [AccountModification](#AccountModification)
* [ClientProperties](#ClientProperties)
* [ClientPropertiesResult](#ClientPropertiesResult)
* [ComputeType](#ComputeType)
* [DefaultWorkspaceCreationProperties](#DefaultWorkspaceCreationProperties)
* [FailedCreateWorkspaceRequest](#FailedCreateWorkspaceRequest)
* [FailedWorkspaceChangeRequest](#FailedWorkspaceChangeRequest)
* [IpRuleItem](#IpRuleItem)
* [ModificationState](#ModificationState)
* [OperatingSystem](#OperatingSystem)
* [RebootRequest](#RebootRequest)
* [RebuildRequest](#RebuildRequest)
* [RootStorage](#RootStorage)
* [StartRequest](#StartRequest)
* [StopRequest](#StopRequest)
* [Tag](#Tag)
* [TerminateRequest](#TerminateRequest)
* [UserStorage](#UserStorage)
* [Workspace](#Workspace)
* [WorkspaceBundle](#WorkspaceBundle)
* [WorkspaceConnectionStatus](#WorkspaceConnectionStatus)
* [WorkspaceDirectory](#WorkspaceDirectory)
* [WorkspaceImage](#WorkspaceImage)
* [WorkspaceProperties](#WorkspaceProperties)
* [WorkspaceRequest](#WorkspaceRequest)
* [WorkspacesIpGroup](#WorkspacesIpGroup)


@docs AccountModification,ClientProperties,ClientPropertiesResult,ComputeType,DefaultWorkspaceCreationProperties,FailedCreateWorkspaceRequest,FailedWorkspaceChangeRequest,IpRuleItem,ModificationState,OperatingSystem,RebootRequest,RebuildRequest,RootStorage,StartRequest,StopRequest,Tag,TerminateRequest,UserStorage,Workspace,WorkspaceBundle,WorkspaceConnectionStatus,WorkspaceDirectory,WorkspaceImage,WorkspaceProperties,WorkspaceRequest,WorkspacesIpGroup

## Unions

* [Compute](#Compute)
* [ConnectionState](#ConnectionState)
* [DedicatedTenancyModificationStateEnum](#DedicatedTenancyModificationStateEnum)
* [DedicatedTenancySupportEnum](#DedicatedTenancySupportEnum)
* [DedicatedTenancySupportResultEnum](#DedicatedTenancySupportResultEnum)
* [ModificationResourceEnum](#ModificationResourceEnum)
* [ModificationStateEnum](#ModificationStateEnum)
* [OperatingSystemType](#OperatingSystemType)
* [ReconnectEnum](#ReconnectEnum)
* [RunningMode](#RunningMode)
* [TargetWorkspaceState](#TargetWorkspaceState)
* [WorkspaceDirectoryState](#WorkspaceDirectoryState)
* [WorkspaceDirectoryType](#WorkspaceDirectoryType)
* [WorkspaceImageIngestionProcess](#WorkspaceImageIngestionProcess)
* [WorkspaceImageRequiredTenancy](#WorkspaceImageRequiredTenancy)
* [WorkspaceImageState](#WorkspaceImageState)
* [WorkspaceState](#WorkspaceState)


@docs Compute,ConnectionState,DedicatedTenancyModificationStateEnum,DedicatedTenancySupportEnum,DedicatedTenancySupportResultEnum,ModificationResourceEnum,ModificationStateEnum,OperatingSystemType,ReconnectEnum,RunningMode,TargetWorkspaceState,WorkspaceDirectoryState,WorkspaceDirectoryType,WorkspaceImageIngestionProcess,WorkspaceImageRequiredTenancy,WorkspaceImageState,WorkspaceState

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
        "workspaces"
        "2015-04-08"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "WorkspacesService")



-- OPERATIONS

{-| <p>Associates the specified IP access control group with the specified directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `groupIds` __:__ `(List String)`


-}

associateIpGroups :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateIpGroupsResult)

associateIpGroups directoryId groupIds =
    
    let
        requestInput = AssociateIpGroupsRequest
            
            directoryId
            
            groupIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateIpGroupsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateIpGroups"
                
                (AWS.Core.Decode.ResultDecoder "AssociateIpGroupsResult" associateIpGroupsResultDecoder)
                
            )





{-| <p>Adds one or more rules to the specified IP access control group.</p> <p>This action gives users permission to access their WorkSpaces from the CIDR address ranges specified in the rules.</p>

__Required Parameters__

* `groupId` __:__ `String`
* `userRules` __:__ `(List IpRuleItem)`


-}

authorizeIpRules :
  
    String ->
  
    (List IpRuleItem) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AuthorizeIpRulesResult)

authorizeIpRules groupId userRules =
    
    let
        requestInput = AuthorizeIpRulesRequest
            
            groupId
            
            userRules
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> authorizeIpRulesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AuthorizeIpRules"
                
                (AWS.Core.Decode.ResultDecoder "AuthorizeIpRulesResult" authorizeIpRulesResultDecoder)
                
            )





{-| <p>Copies the specified image from the specified Region to the current Region.</p>

__Required Parameters__

* `name` __:__ `String`
* `sourceImageId` __:__ `String`
* `sourceRegion` __:__ `String`


-}

copyWorkspaceImage :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CopyWorkspaceImageOptions -> CopyWorkspaceImageOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyWorkspaceImageResult)

copyWorkspaceImage name sourceImageId sourceRegion setOptions =
    
    let
        requestInput = CopyWorkspaceImageRequest
            
            name
            
            options.description
            
            sourceImageId
            
            sourceRegion
            
            options.tags
            
        
        options = setOptions (CopyWorkspaceImageOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> copyWorkspaceImageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CopyWorkspaceImage"
                
                (AWS.Core.Decode.ResultDecoder "CopyWorkspaceImageResult" copyWorkspaceImageResultDecoder)
                
            )



{-| Options for a copyWorkspaceImage request
-}
type alias CopyWorkspaceImageOptions =
    {
    description : Maybe String,tags : Maybe (List Tag)
    }



{-| <p>Creates an IP access control group.</p> <p>An IP access control group provides you with the ability to control the IP addresses from which users are allowed to access their WorkSpaces. To specify the CIDR address ranges, add rules to your IP access control group and then associate the group with your directory. You can add rules when you create the group or at any time using <a>AuthorizeIpRules</a>.</p> <p>There is a default IP access control group associated with your directory. If you don't associate an IP access control group with your directory, the default group is used. The default group includes a default rule that allows users to access their WorkSpaces from anywhere. You cannot modify the default IP access control group for your directory.</p>

__Required Parameters__

* `groupName` __:__ `String`


-}

createIpGroup :
  
    String ->
  
  
    ( CreateIpGroupOptions -> CreateIpGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateIpGroupResult)

createIpGroup groupName setOptions =
    
    let
        requestInput = CreateIpGroupRequest
            
            groupName
            
            options.groupDesc
            
            options.userRules
            
            options.tags
            
        
        options = setOptions (CreateIpGroupOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createIpGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateIpGroup"
                
                (AWS.Core.Decode.ResultDecoder "CreateIpGroupResult" createIpGroupResultDecoder)
                
            )



{-| Options for a createIpGroup request
-}
type alias CreateIpGroupOptions =
    {
    groupDesc : Maybe String,userRules : Maybe (List IpRuleItem),tags : Maybe (List Tag)
    }



{-| <p>Creates the specified tags for the specified WorkSpaces resource.</p>

__Required Parameters__

* `resourceId` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

createTags :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTagsResult)

createTags resourceId tags =
    
    let
        requestInput = CreateTagsRequest
            
            resourceId
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createTagsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateTags"
                
                (AWS.Core.Decode.ResultDecoder "CreateTagsResult" createTagsResultDecoder)
                
            )





{-| <p>Creates one or more WorkSpaces.</p> <p>This operation is asynchronous and returns before the WorkSpaces are created.</p>

__Required Parameters__

* `workspaces` __:__ `(List WorkspaceRequest)`


-}

createWorkspaces :
  
    (List WorkspaceRequest) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateWorkspacesResult)

createWorkspaces workspaces =
    
    let
        requestInput = CreateWorkspacesRequest
            
            workspaces
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createWorkspacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateWorkspaces"
                
                (AWS.Core.Decode.ResultDecoder "CreateWorkspacesResult" createWorkspacesResultDecoder)
                
            )





{-| <p>Deletes the specified IP access control group.</p> <p>You cannot delete an IP access control group that is associated with a directory.</p>

__Required Parameters__

* `groupId` __:__ `String`


-}

deleteIpGroup :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteIpGroupResult)

deleteIpGroup groupId =
    
    let
        requestInput = DeleteIpGroupRequest
            
            groupId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteIpGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteIpGroup"
                
                (AWS.Core.Decode.ResultDecoder "DeleteIpGroupResult" deleteIpGroupResultDecoder)
                
            )





{-| <p>Deletes the specified tags from the specified WorkSpaces resource.</p>

__Required Parameters__

* `resourceId` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

deleteTags :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTagsResult)

deleteTags resourceId tagKeys =
    
    let
        requestInput = DeleteTagsRequest
            
            resourceId
            
            tagKeys
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteTagsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteTags"
                
                (AWS.Core.Decode.ResultDecoder "DeleteTagsResult" deleteTagsResultDecoder)
                
            )





{-| <p>Deletes the specified image from your account. To delete an image, you must first delete any bundles that are associated with the image and un-share the image if it is shared with other accounts. </p>

__Required Parameters__

* `imageId` __:__ `String`


-}

deleteWorkspaceImage :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteWorkspaceImageResult)

deleteWorkspaceImage imageId =
    
    let
        requestInput = DeleteWorkspaceImageRequest
            
            imageId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteWorkspaceImageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteWorkspaceImage"
                
                (AWS.Core.Decode.ResultDecoder "DeleteWorkspaceImageResult" deleteWorkspaceImageResultDecoder)
                
            )





{-| <p>Retrieves a list that describes the configuration of bring your own license (BYOL) for the specified account.</p>

__Required Parameters__



-}

describeAccount :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAccountResult)

describeAccount =
    
    let
        requestInput = DescribeAccountRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAccountRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAccount"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAccountResult" describeAccountResultDecoder)
                
            )





{-| <p>Retrieves a list that describes modifications to the configuration of bring your own license (BYOL) for the specified account.</p>

__Required Parameters__



-}

describeAccountModifications :
  
  
    ( DescribeAccountModificationsOptions -> DescribeAccountModificationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAccountModificationsResult)

describeAccountModifications setOptions =
    
    let
        requestInput = DescribeAccountModificationsRequest
            
            options.nextToken
            
        
        options = setOptions (DescribeAccountModificationsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAccountModificationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAccountModifications"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAccountModificationsResult" describeAccountModificationsResultDecoder)
                
            )



{-| Options for a describeAccountModifications request
-}
type alias DescribeAccountModificationsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Retrieves a list that describes one or more specified Amazon WorkSpaces clients.</p>

__Required Parameters__

* `resourceIds` __:__ `(List String)`


-}

describeClientProperties :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeClientPropertiesResult)

describeClientProperties resourceIds =
    
    let
        requestInput = DescribeClientPropertiesRequest
            
            resourceIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeClientPropertiesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeClientProperties"
                
                (AWS.Core.Decode.ResultDecoder "DescribeClientPropertiesResult" describeClientPropertiesResultDecoder)
                
            )





{-| <p>Describes one or more of your IP access control groups.</p>

__Required Parameters__



-}

describeIpGroups :
  
  
    ( DescribeIpGroupsOptions -> DescribeIpGroupsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeIpGroupsResult)

describeIpGroups setOptions =
    
    let
        requestInput = DescribeIpGroupsRequest
            
            options.groupIds
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (DescribeIpGroupsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeIpGroupsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeIpGroups"
                
                (AWS.Core.Decode.ResultDecoder "DescribeIpGroupsResult" describeIpGroupsResultDecoder)
                
            )



{-| Options for a describeIpGroups request
-}
type alias DescribeIpGroupsOptions =
    {
    groupIds : Maybe (List String),nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Describes the specified tags for the specified WorkSpaces resource.</p>

__Required Parameters__

* `resourceId` __:__ `String`


-}

describeTags :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTagsResult)

describeTags resourceId =
    
    let
        requestInput = DescribeTagsRequest
            
            resourceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeTagsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTags"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTagsResult" describeTagsResultDecoder)
                
            )





{-| <p>Retrieves a list that describes the available WorkSpace bundles.</p> <p>You can filter the results using either bundle ID or owner, but not both.</p>

__Required Parameters__



-}

describeWorkspaceBundles :
  
  
    ( DescribeWorkspaceBundlesOptions -> DescribeWorkspaceBundlesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeWorkspaceBundlesResult)

describeWorkspaceBundles setOptions =
    
    let
        requestInput = DescribeWorkspaceBundlesRequest
            
            options.bundleIds
            
            options.owner
            
            options.nextToken
            
        
        options = setOptions (DescribeWorkspaceBundlesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeWorkspaceBundlesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeWorkspaceBundles"
                
                (AWS.Core.Decode.ResultDecoder "DescribeWorkspaceBundlesResult" describeWorkspaceBundlesResultDecoder)
                
            )



{-| Options for a describeWorkspaceBundles request
-}
type alias DescribeWorkspaceBundlesOptions =
    {
    bundleIds : Maybe (List String),owner : Maybe String,nextToken : Maybe String
    }



{-| <p>Describes the available AWS Directory Service directories that are registered with Amazon WorkSpaces.</p>

__Required Parameters__



-}

describeWorkspaceDirectories :
  
  
    ( DescribeWorkspaceDirectoriesOptions -> DescribeWorkspaceDirectoriesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeWorkspaceDirectoriesResult)

describeWorkspaceDirectories setOptions =
    
    let
        requestInput = DescribeWorkspaceDirectoriesRequest
            
            options.directoryIds
            
            options.nextToken
            
        
        options = setOptions (DescribeWorkspaceDirectoriesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeWorkspaceDirectoriesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeWorkspaceDirectories"
                
                (AWS.Core.Decode.ResultDecoder "DescribeWorkspaceDirectoriesResult" describeWorkspaceDirectoriesResultDecoder)
                
            )



{-| Options for a describeWorkspaceDirectories request
-}
type alias DescribeWorkspaceDirectoriesOptions =
    {
    directoryIds : Maybe (List String),nextToken : Maybe String
    }



{-| <p>Retrieves a list that describes one or more specified images, if the image identifiers are provided. Otherwise, all images in the account are described. </p>

__Required Parameters__



-}

describeWorkspaceImages :
  
  
    ( DescribeWorkspaceImagesOptions -> DescribeWorkspaceImagesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeWorkspaceImagesResult)

describeWorkspaceImages setOptions =
    
    let
        requestInput = DescribeWorkspaceImagesRequest
            
            options.imageIds
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (DescribeWorkspaceImagesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeWorkspaceImagesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeWorkspaceImages"
                
                (AWS.Core.Decode.ResultDecoder "DescribeWorkspaceImagesResult" describeWorkspaceImagesResultDecoder)
                
            )



{-| Options for a describeWorkspaceImages request
-}
type alias DescribeWorkspaceImagesOptions =
    {
    imageIds : Maybe (List String),nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Describes the specified WorkSpaces.</p> <p>You can filter the results by using the bundle identifier, directory identifier, or owner, but you can specify only one filter at a time.</p>

__Required Parameters__



-}

describeWorkspaces :
  
  
    ( DescribeWorkspacesOptions -> DescribeWorkspacesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeWorkspacesResult)

describeWorkspaces setOptions =
    
    let
        requestInput = DescribeWorkspacesRequest
            
            options.workspaceIds
            
            options.directoryId
            
            options.userName
            
            options.bundleId
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribeWorkspacesOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeWorkspacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeWorkspaces"
                
                (AWS.Core.Decode.ResultDecoder "DescribeWorkspacesResult" describeWorkspacesResultDecoder)
                
            )



{-| Options for a describeWorkspaces request
-}
type alias DescribeWorkspacesOptions =
    {
    workspaceIds : Maybe (List String),directoryId : Maybe String,userName : Maybe String,bundleId : Maybe String,limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Describes the connection status of the specified WorkSpaces.</p>

__Required Parameters__



-}

describeWorkspacesConnectionStatus :
  
  
    ( DescribeWorkspacesConnectionStatusOptions -> DescribeWorkspacesConnectionStatusOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeWorkspacesConnectionStatusResult)

describeWorkspacesConnectionStatus setOptions =
    
    let
        requestInput = DescribeWorkspacesConnectionStatusRequest
            
            options.workspaceIds
            
            options.nextToken
            
        
        options = setOptions (DescribeWorkspacesConnectionStatusOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeWorkspacesConnectionStatusRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeWorkspacesConnectionStatus"
                
                (AWS.Core.Decode.ResultDecoder "DescribeWorkspacesConnectionStatusResult" describeWorkspacesConnectionStatusResultDecoder)
                
            )



{-| Options for a describeWorkspacesConnectionStatus request
-}
type alias DescribeWorkspacesConnectionStatusOptions =
    {
    workspaceIds : Maybe (List String),nextToken : Maybe String
    }



{-| <p>Disassociates the specified IP access control group from the specified directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `groupIds` __:__ `(List String)`


-}

disassociateIpGroups :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateIpGroupsResult)

disassociateIpGroups directoryId groupIds =
    
    let
        requestInput = DisassociateIpGroupsRequest
            
            directoryId
            
            groupIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateIpGroupsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateIpGroups"
                
                (AWS.Core.Decode.ResultDecoder "DisassociateIpGroupsResult" disassociateIpGroupsResultDecoder)
                
            )





{-| <p>Imports the specified Windows 7 or Windows 10 bring your own license (BYOL) image into Amazon WorkSpaces. The image must be an already licensed EC2 image that is in your AWS account, and you must own the image. </p>

__Required Parameters__

* `ec2ImageId` __:__ `String`
* `ingestionProcess` __:__ `WorkspaceImageIngestionProcess`
* `imageName` __:__ `String`
* `imageDescription` __:__ `String`


-}

importWorkspaceImage :
  
    String ->
  
    WorkspaceImageIngestionProcess ->
  
    String ->
  
    String ->
  
  
    ( ImportWorkspaceImageOptions -> ImportWorkspaceImageOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ImportWorkspaceImageResult)

importWorkspaceImage ec2ImageId ingestionProcess imageName imageDescription setOptions =
    
    let
        requestInput = ImportWorkspaceImageRequest
            
            ec2ImageId
            
            ingestionProcess
            
            imageName
            
            imageDescription
            
            options.tags
            
        
        options = setOptions (ImportWorkspaceImageOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> importWorkspaceImageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ImportWorkspaceImage"
                
                (AWS.Core.Decode.ResultDecoder "ImportWorkspaceImageResult" importWorkspaceImageResultDecoder)
                
            )



{-| Options for a importWorkspaceImage request
-}
type alias ImportWorkspaceImageOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that you can use for the network management interface when you enable bring your own license (BYOL). </p> <p>The management network interface is connected to a secure Amazon WorkSpaces management network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon WorkSpaces to manage the WorkSpace.</p>

__Required Parameters__

* `managementCidrRangeConstraint` __:__ `String`


-}

listAvailableManagementCidrRanges :
  
    String ->
  
  
    ( ListAvailableManagementCidrRangesOptions -> ListAvailableManagementCidrRangesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAvailableManagementCidrRangesResult)

listAvailableManagementCidrRanges managementCidrRangeConstraint setOptions =
    
    let
        requestInput = ListAvailableManagementCidrRangesRequest
            
            managementCidrRangeConstraint
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListAvailableManagementCidrRangesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAvailableManagementCidrRangesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAvailableManagementCidrRanges"
                
                (AWS.Core.Decode.ResultDecoder "ListAvailableManagementCidrRangesResult" listAvailableManagementCidrRangesResultDecoder)
                
            )



{-| Options for a listAvailableManagementCidrRanges request
-}
type alias ListAvailableManagementCidrRangesOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Modifies the configuration of bring your own license (BYOL) for the specified account.</p>

__Required Parameters__



-}

modifyAccount :
  
  
    ( ModifyAccountOptions -> ModifyAccountOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyAccountResult)

modifyAccount setOptions =
    
    let
        requestInput = ModifyAccountRequest
            
            options.dedicatedTenancySupport
            
            options.dedicatedTenancyManagementCidrRange
            
        
        options = setOptions (ModifyAccountOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> modifyAccountRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyAccount"
                
                (AWS.Core.Decode.ResultDecoder "ModifyAccountResult" modifyAccountResultDecoder)
                
            )



{-| Options for a modifyAccount request
-}
type alias ModifyAccountOptions =
    {
    dedicatedTenancySupport : Maybe DedicatedTenancySupportEnum,dedicatedTenancyManagementCidrRange : Maybe String
    }



{-| <p>Modifies the properties of the specified Amazon WorkSpaces clients.</p>

__Required Parameters__

* `resourceId` __:__ `String`
* `clientProperties` __:__ `ClientProperties`


-}

modifyClientProperties :
  
    String ->
  
    ClientProperties ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyClientPropertiesResult)

modifyClientProperties resourceId clientProperties =
    
    let
        requestInput = ModifyClientPropertiesRequest
            
            resourceId
            
            clientProperties
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> modifyClientPropertiesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyClientProperties"
                
                (AWS.Core.Decode.ResultDecoder "ModifyClientPropertiesResult" modifyClientPropertiesResultDecoder)
                
            )





{-| <p>Modifies the specified WorkSpace properties.</p>

__Required Parameters__

* `workspaceId` __:__ `String`
* `workspaceProperties` __:__ `WorkspaceProperties`


-}

modifyWorkspaceProperties :
  
    String ->
  
    WorkspaceProperties ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyWorkspacePropertiesResult)

modifyWorkspaceProperties workspaceId workspaceProperties =
    
    let
        requestInput = ModifyWorkspacePropertiesRequest
            
            workspaceId
            
            workspaceProperties
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> modifyWorkspacePropertiesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyWorkspaceProperties"
                
                (AWS.Core.Decode.ResultDecoder "ModifyWorkspacePropertiesResult" modifyWorkspacePropertiesResultDecoder)
                
            )





{-| <p>Sets the state of the specified WorkSpace.</p> <p>To maintain a WorkSpace without being interrupted, set the WorkSpace state to <code>ADMIN_MAINTENANCE</code>. WorkSpaces in this state do not respond to requests to reboot, stop, start, rebuild, or restore. An AutoStop WorkSpace in this state is not stopped. Users cannot log into a WorkSpace in the <code>ADMIN_MAINTENANCE</code> state.</p>

__Required Parameters__

* `workspaceId` __:__ `String`
* `workspaceState` __:__ `TargetWorkspaceState`


-}

modifyWorkspaceState :
  
    String ->
  
    TargetWorkspaceState ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ModifyWorkspaceStateResult)

modifyWorkspaceState workspaceId workspaceState =
    
    let
        requestInput = ModifyWorkspaceStateRequest
            
            workspaceId
            
            workspaceState
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> modifyWorkspaceStateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ModifyWorkspaceState"
                
                (AWS.Core.Decode.ResultDecoder "ModifyWorkspaceStateResult" modifyWorkspaceStateResultDecoder)
                
            )





{-| <p>Reboots the specified WorkSpaces.</p> <p>You cannot reboot a WorkSpace unless its state is <code>AVAILABLE</code> or <code>UNHEALTHY</code>.</p> <p>This operation is asynchronous and returns before the WorkSpaces have rebooted.</p>

__Required Parameters__

* `rebootWorkspaceRequests` __:__ `(List RebootRequest)`


-}

rebootWorkspaces :
  
    (List RebootRequest) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RebootWorkspacesResult)

rebootWorkspaces rebootWorkspaceRequests =
    
    let
        requestInput = RebootWorkspacesRequest
            
            rebootWorkspaceRequests
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> rebootWorkspacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RebootWorkspaces"
                
                (AWS.Core.Decode.ResultDecoder "RebootWorkspacesResult" rebootWorkspacesResultDecoder)
                
            )





{-| <p>Rebuilds the specified WorkSpace.</p> <p>You cannot rebuild a WorkSpace unless its state is <code>AVAILABLE</code>, <code>ERROR</code>, or <code>UNHEALTHY</code>.</p> <p>Rebuilding a WorkSpace is a potentially destructive action that can result in the loss of data. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html">Rebuild a WorkSpace</a>.</p> <p>This operation is asynchronous and returns before the WorkSpaces have been completely rebuilt.</p>

__Required Parameters__

* `rebuildWorkspaceRequests` __:__ `(List RebuildRequest)`


-}

rebuildWorkspaces :
  
    (List RebuildRequest) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RebuildWorkspacesResult)

rebuildWorkspaces rebuildWorkspaceRequests =
    
    let
        requestInput = RebuildWorkspacesRequest
            
            rebuildWorkspaceRequests
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> rebuildWorkspacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RebuildWorkspaces"
                
                (AWS.Core.Decode.ResultDecoder "RebuildWorkspacesResult" rebuildWorkspacesResultDecoder)
                
            )





{-| <p>Removes one or more rules from the specified IP access control group.</p>

__Required Parameters__

* `groupId` __:__ `String`
* `userRules` __:__ `(List String)`


-}

revokeIpRules :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RevokeIpRulesResult)

revokeIpRules groupId userRules =
    
    let
        requestInput = RevokeIpRulesRequest
            
            groupId
            
            userRules
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> revokeIpRulesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RevokeIpRules"
                
                (AWS.Core.Decode.ResultDecoder "RevokeIpRulesResult" revokeIpRulesResultDecoder)
                
            )





{-| <p>Starts the specified WorkSpaces.</p> <p>You cannot start a WorkSpace unless it has a running mode of <code>AutoStop</code> and a state of <code>STOPPED</code>.</p>

__Required Parameters__

* `startWorkspaceRequests` __:__ `(List StartRequest)`


-}

startWorkspaces :
  
    (List StartRequest) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartWorkspacesResult)

startWorkspaces startWorkspaceRequests =
    
    let
        requestInput = StartWorkspacesRequest
            
            startWorkspaceRequests
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startWorkspacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartWorkspaces"
                
                (AWS.Core.Decode.ResultDecoder "StartWorkspacesResult" startWorkspacesResultDecoder)
                
            )





{-| <p> Stops the specified WorkSpaces.</p> <p>You cannot stop a WorkSpace unless it has a running mode of <code>AutoStop</code> and a state of <code>AVAILABLE</code>, <code>IMPAIRED</code>, <code>UNHEALTHY</code>, or <code>ERROR</code>.</p>

__Required Parameters__

* `stopWorkspaceRequests` __:__ `(List StopRequest)`


-}

stopWorkspaces :
  
    (List StopRequest) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopWorkspacesResult)

stopWorkspaces stopWorkspaceRequests =
    
    let
        requestInput = StopWorkspacesRequest
            
            stopWorkspaceRequests
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopWorkspacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopWorkspaces"
                
                (AWS.Core.Decode.ResultDecoder "StopWorkspacesResult" stopWorkspacesResultDecoder)
                
            )





{-| <p>Terminates the specified WorkSpaces.</p> <p>Terminating a WorkSpace is a permanent action and cannot be undone. The user's data is destroyed. If you need to archive any user data, contact Amazon Web Services before terminating the WorkSpace.</p> <p>You can terminate a WorkSpace that is in any state except <code>SUSPENDED</code>.</p> <p>This operation is asynchronous and returns before the WorkSpaces have been completely terminated.</p>

__Required Parameters__

* `terminateWorkspaceRequests` __:__ `(List TerminateRequest)`


-}

terminateWorkspaces :
  
    (List TerminateRequest) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TerminateWorkspacesResult)

terminateWorkspaces terminateWorkspaceRequests =
    
    let
        requestInput = TerminateWorkspacesRequest
            
            terminateWorkspaceRequests
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> terminateWorkspacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TerminateWorkspaces"
                
                (AWS.Core.Decode.ResultDecoder "TerminateWorkspacesResult" terminateWorkspacesResultDecoder)
                
            )





{-| <p>Replaces the current rules of the specified IP access control group with the specified rules.</p>

__Required Parameters__

* `groupId` __:__ `String`
* `userRules` __:__ `(List IpRuleItem)`


-}

updateRulesOfIpGroup :
  
    String ->
  
    (List IpRuleItem) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateRulesOfIpGroupResult)

updateRulesOfIpGroup groupId userRules =
    
    let
        requestInput = UpdateRulesOfIpGroupRequest
            
            groupId
            
            userRules
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateRulesOfIpGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateRulesOfIpGroup"
                
                (AWS.Core.Decode.ResultDecoder "UpdateRulesOfIpGroupResult" updateRulesOfIpGroupResultDecoder)
                
            )






{-| <p>Describes a modification to the configuration of bring your own license (BYOL) for the specified account. </p>
-}
type alias AccountModification =
    { modificationState : Maybe DedicatedTenancyModificationStateEnum
    , dedicatedTenancySupport : Maybe DedicatedTenancySupportResultEnum
    , dedicatedTenancyManagementCidrRange : Maybe String
    , startTime : Maybe Posix
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



accountModificationDecoder : JD.Decoder AccountModification
accountModificationDecoder =
    JD.succeed AccountModification
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ModificationState", "modificationState"]
            dedicatedTenancyModificationStateEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DedicatedTenancySupport", "dedicatedTenancySupport"]
            dedicatedTenancySupportResultEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DedicatedTenancyManagementCidrRange", "dedicatedTenancyManagementCidrRange"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartTime", "startTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        




accountModificationToString : AccountModification -> String -- List (String, String)
accountModificationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "modificationState" "" -- val.modificationState
        
    --     |> Dict.insert
    --         "dedicatedTenancySupport" "" -- val.dedicatedTenancySupport
        
    --     |> Dict.insert
    --         "dedicatedTenancyManagementCidrRange" "" -- val.dedicatedTenancyManagementCidrRange
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from associateIpGrou
-}
type alias AssociateIpGroupsResult =
    { 
    }



associateIpGroupsResultDecoder : JD.Decoder AssociateIpGroupsResult
associateIpGroupsResultDecoder =
    JD.succeed AssociateIpGroupsResult
        




associateIpGroupsResultToString : AssociateIpGroupsResult -> String -- List (String, String)
associateIpGroupsResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from authorizeIpRul
-}
type alias AuthorizeIpRulesResult =
    { 
    }



authorizeIpRulesResultDecoder : JD.Decoder AuthorizeIpRulesResult
authorizeIpRulesResultDecoder =
    JD.succeed AuthorizeIpRulesResult
        




authorizeIpRulesResultToString : AuthorizeIpRulesResult -> String -- List (String, String)
authorizeIpRulesResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Describes an Amazon WorkSpaces client.</p>
-}
type alias ClientProperties =
    { reconnectEnabled : Maybe ReconnectEnum
    }



clientPropertiesDecoder : JD.Decoder ClientProperties
clientPropertiesDecoder =
    JD.succeed ClientProperties
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReconnectEnabled", "reconnectEnabled"]
            reconnectEnumDecoder
        )
        




clientPropertiesToString : ClientProperties -> String -- List (String, String)
clientPropertiesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "reconnectEnabled" "" -- val.reconnectEnabled
        
    --     |> Dict.toList
    ""



{-| <p>Information about the Amazon WorkSpaces client.</p>
-}
type alias ClientPropertiesResult =
    { resourceId : Maybe String
    , clientProperties : Maybe ClientProperties
    }



clientPropertiesResultDecoder : JD.Decoder ClientPropertiesResult
clientPropertiesResultDecoder =
    JD.succeed ClientPropertiesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceId", "resourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientProperties", "clientProperties"]
            clientPropertiesDecoder
        )
        




clientPropertiesResultToString : ClientPropertiesResult -> String -- List (String, String)
clientPropertiesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
        
    --     |> Dict.insert
    --         "clientProperties" "" -- val.clientProperties
        
    --     |> Dict.toList
    ""



{-| One of

* `Compute_VALUE`
* `Compute_STANDARD`
* `Compute_PERFORMANCE`
* `Compute_POWER`
* `Compute_GRAPHICS`
* `Compute_POWERPRO`
* `Compute_GRAPHICSPRO`

-}
type Compute
    = Compute_VALUE
    | Compute_STANDARD
    | Compute_PERFORMANCE
    | Compute_POWER
    | Compute_GRAPHICS
    | Compute_POWERPRO
    | Compute_GRAPHICSPRO



computeDecoder : JD.Decoder Compute
computeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "VALUE" ->
                        JD.succeed Compute_VALUE

                    "STANDARD" ->
                        JD.succeed Compute_STANDARD

                    "PERFORMANCE" ->
                        JD.succeed Compute_PERFORMANCE

                    "POWER" ->
                        JD.succeed Compute_POWER

                    "GRAPHICS" ->
                        JD.succeed Compute_GRAPHICS

                    "POWERPRO" ->
                        JD.succeed Compute_POWERPRO

                    "GRAPHICSPRO" ->
                        JD.succeed Compute_GRAPHICSPRO


                    _ ->
                        JD.fail "bad thing"
            )




computeToString : Compute -> String
computeToString val =
    case val of
        Compute_VALUE ->
            "VALUE"

        Compute_STANDARD ->
            "STANDARD"

        Compute_PERFORMANCE ->
            "PERFORMANCE"

        Compute_POWER ->
            "POWER"

        Compute_GRAPHICS ->
            "GRAPHICS"

        Compute_POWERPRO ->
            "POWERPRO"

        Compute_GRAPHICSPRO ->
            "GRAPHICSPRO"




{-| <p>Describes the compute type.</p>
-}
type alias ComputeType =
    { name : Maybe Compute
    }



computeTypeDecoder : JD.Decoder ComputeType
computeTypeDecoder =
    JD.succeed ComputeType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            computeDecoder
        )
        




computeTypeToString : ComputeType -> String -- List (String, String)
computeTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| One of

* `ConnectionState_CONNECTED`
* `ConnectionState_DISCONNECTED`
* `ConnectionState_UNKNOWN`

-}
type ConnectionState
    = ConnectionState_CONNECTED
    | ConnectionState_DISCONNECTED
    | ConnectionState_UNKNOWN



connectionStateDecoder : JD.Decoder ConnectionState
connectionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CONNECTED" ->
                        JD.succeed ConnectionState_CONNECTED

                    "DISCONNECTED" ->
                        JD.succeed ConnectionState_DISCONNECTED

                    "UNKNOWN" ->
                        JD.succeed ConnectionState_UNKNOWN


                    _ ->
                        JD.fail "bad thing"
            )




connectionStateToString : ConnectionState -> String
connectionStateToString val =
    case val of
        ConnectionState_CONNECTED ->
            "CONNECTED"

        ConnectionState_DISCONNECTED ->
            "DISCONNECTED"

        ConnectionState_UNKNOWN ->
            "UNKNOWN"




{-| Type of HTTP response from copyWorkspaceIma
-}
type alias CopyWorkspaceImageResult =
    { imageId : Maybe String
    }



copyWorkspaceImageResultDecoder : JD.Decoder CopyWorkspaceImageResult
copyWorkspaceImageResultDecoder =
    JD.succeed CopyWorkspaceImageResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageId", "imageId"]
            JD.string
        )
        




copyWorkspaceImageResultToString : CopyWorkspaceImageResult -> String -- List (String, String)
copyWorkspaceImageResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageId" "" -- val.imageId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createIpGro
-}
type alias CreateIpGroupResult =
    { groupId : Maybe String
    }



createIpGroupResultDecoder : JD.Decoder CreateIpGroupResult
createIpGroupResultDecoder =
    JD.succeed CreateIpGroupResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GroupId", "groupId"]
            JD.string
        )
        




createIpGroupResultToString : CreateIpGroupResult -> String -- List (String, String)
createIpGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "groupId" "" -- val.groupId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createTa
-}
type alias CreateTagsResult =
    { 
    }



createTagsResultDecoder : JD.Decoder CreateTagsResult
createTagsResultDecoder =
    JD.succeed CreateTagsResult
        




createTagsResultToString : CreateTagsResult -> String -- List (String, String)
createTagsResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createWorkspac
-}
type alias CreateWorkspacesResult =
    { failedRequests : Maybe (List FailedCreateWorkspaceRequest)
    , pendingRequests : Maybe (List Workspace)
    }



createWorkspacesResultDecoder : JD.Decoder CreateWorkspacesResult
createWorkspacesResultDecoder =
    JD.succeed CreateWorkspacesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedRequests", "failedRequests"]
            (JD.list failedCreateWorkspaceRequestDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PendingRequests", "pendingRequests"]
            (JD.list workspaceDecoder)
        )
        




createWorkspacesResultToString : CreateWorkspacesResult -> String -- List (String, String)
createWorkspacesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedRequests" "" -- val.failedRequests
        
    --     |> Dict.insert
    --         "pendingRequests" "" -- val.pendingRequests
        
    --     |> Dict.toList
    ""



{-| One of

* `DedicatedTenancyModificationStateEnum_PENDING`
* `DedicatedTenancyModificationStateEnum_COMPLETED`
* `DedicatedTenancyModificationStateEnum_FAILED`

-}
type DedicatedTenancyModificationStateEnum
    = DedicatedTenancyModificationStateEnum_PENDING
    | DedicatedTenancyModificationStateEnum_COMPLETED
    | DedicatedTenancyModificationStateEnum_FAILED



dedicatedTenancyModificationStateEnumDecoder : JD.Decoder DedicatedTenancyModificationStateEnum
dedicatedTenancyModificationStateEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed DedicatedTenancyModificationStateEnum_PENDING

                    "COMPLETED" ->
                        JD.succeed DedicatedTenancyModificationStateEnum_COMPLETED

                    "FAILED" ->
                        JD.succeed DedicatedTenancyModificationStateEnum_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




dedicatedTenancyModificationStateEnumToString : DedicatedTenancyModificationStateEnum -> String
dedicatedTenancyModificationStateEnumToString val =
    case val of
        DedicatedTenancyModificationStateEnum_PENDING ->
            "PENDING"

        DedicatedTenancyModificationStateEnum_COMPLETED ->
            "COMPLETED"

        DedicatedTenancyModificationStateEnum_FAILED ->
            "FAILED"




{-| One of

* `DedicatedTenancySupportEnum_ENABLED`

-}
type DedicatedTenancySupportEnum
    = DedicatedTenancySupportEnum_ENABLED



dedicatedTenancySupportEnumDecoder : JD.Decoder DedicatedTenancySupportEnum
dedicatedTenancySupportEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed DedicatedTenancySupportEnum_ENABLED


                    _ ->
                        JD.fail "bad thing"
            )




dedicatedTenancySupportEnumToString : DedicatedTenancySupportEnum -> String
dedicatedTenancySupportEnumToString val =
    case val of
        DedicatedTenancySupportEnum_ENABLED ->
            "ENABLED"




{-| One of

* `DedicatedTenancySupportResultEnum_ENABLED`
* `DedicatedTenancySupportResultEnum_DISABLED`

-}
type DedicatedTenancySupportResultEnum
    = DedicatedTenancySupportResultEnum_ENABLED
    | DedicatedTenancySupportResultEnum_DISABLED



dedicatedTenancySupportResultEnumDecoder : JD.Decoder DedicatedTenancySupportResultEnum
dedicatedTenancySupportResultEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed DedicatedTenancySupportResultEnum_ENABLED

                    "DISABLED" ->
                        JD.succeed DedicatedTenancySupportResultEnum_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )




dedicatedTenancySupportResultEnumToString : DedicatedTenancySupportResultEnum -> String
dedicatedTenancySupportResultEnumToString val =
    case val of
        DedicatedTenancySupportResultEnum_ENABLED ->
            "ENABLED"

        DedicatedTenancySupportResultEnum_DISABLED ->
            "DISABLED"




{-| <p>Describes the default values used to create a WorkSpace.</p>
-}
type alias DefaultWorkspaceCreationProperties =
    { enableWorkDocs : Maybe Bool
    , enableInternetAccess : Maybe Bool
    , defaultOu : Maybe String
    , customSecurityGroupId : Maybe String
    , userEnabledAsLocalAdministrator : Maybe Bool
    }



defaultWorkspaceCreationPropertiesDecoder : JD.Decoder DefaultWorkspaceCreationProperties
defaultWorkspaceCreationPropertiesDecoder =
    JD.succeed DefaultWorkspaceCreationProperties
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnableWorkDocs", "enableWorkDocs"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EnableInternetAccess", "enableInternetAccess"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultOu", "defaultOu"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomSecurityGroupId", "customSecurityGroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserEnabledAsLocalAdministrator", "userEnabledAsLocalAdministrator"]
            JD.bool
        )
        




defaultWorkspaceCreationPropertiesToString : DefaultWorkspaceCreationProperties -> String -- List (String, String)
defaultWorkspaceCreationPropertiesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enableWorkDocs" "" -- val.enableWorkDocs
        
    --     |> Dict.insert
    --         "enableInternetAccess" "" -- val.enableInternetAccess
        
    --     |> Dict.insert
    --         "defaultOu" "" -- val.defaultOu
        
    --     |> Dict.insert
    --         "customSecurityGroupId" "" -- val.customSecurityGroupId
        
    --     |> Dict.insert
    --         "userEnabledAsLocalAdministrator" "" -- val.userEnabledAsLocalAdministrator
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteIpGro
-}
type alias DeleteIpGroupResult =
    { 
    }



deleteIpGroupResultDecoder : JD.Decoder DeleteIpGroupResult
deleteIpGroupResultDecoder =
    JD.succeed DeleteIpGroupResult
        




deleteIpGroupResultToString : DeleteIpGroupResult -> String -- List (String, String)
deleteIpGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteTa
-}
type alias DeleteTagsResult =
    { 
    }



deleteTagsResultDecoder : JD.Decoder DeleteTagsResult
deleteTagsResultDecoder =
    JD.succeed DeleteTagsResult
        




deleteTagsResultToString : DeleteTagsResult -> String -- List (String, String)
deleteTagsResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteWorkspaceIma
-}
type alias DeleteWorkspaceImageResult =
    { 
    }



deleteWorkspaceImageResultDecoder : JD.Decoder DeleteWorkspaceImageResult
deleteWorkspaceImageResultDecoder =
    JD.succeed DeleteWorkspaceImageResult
        




deleteWorkspaceImageResultToString : DeleteWorkspaceImageResult -> String -- List (String, String)
deleteWorkspaceImageResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAccountModificatio
-}
type alias DescribeAccountModificationsResult =
    { accountModifications : Maybe (List AccountModification)
    , nextToken : Maybe String
    }



describeAccountModificationsResultDecoder : JD.Decoder DescribeAccountModificationsResult
describeAccountModificationsResultDecoder =
    JD.succeed DescribeAccountModificationsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AccountModifications", "accountModifications"]
            (JD.list accountModificationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeAccountModificationsResultToString : DescribeAccountModificationsResult -> String -- List (String, String)
describeAccountModificationsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accountModifications" "" -- val.accountModifications
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAccou
-}
type alias DescribeAccountResult =
    { dedicatedTenancySupport : Maybe DedicatedTenancySupportResultEnum
    , dedicatedTenancyManagementCidrRange : Maybe String
    }



describeAccountResultDecoder : JD.Decoder DescribeAccountResult
describeAccountResultDecoder =
    JD.succeed DescribeAccountResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DedicatedTenancySupport", "dedicatedTenancySupport"]
            dedicatedTenancySupportResultEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DedicatedTenancyManagementCidrRange", "dedicatedTenancyManagementCidrRange"]
            JD.string
        )
        




describeAccountResultToString : DescribeAccountResult -> String -- List (String, String)
describeAccountResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dedicatedTenancySupport" "" -- val.dedicatedTenancySupport
        
    --     |> Dict.insert
    --         "dedicatedTenancyManagementCidrRange" "" -- val.dedicatedTenancyManagementCidrRange
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeClientProperti
-}
type alias DescribeClientPropertiesResult =
    { clientPropertiesList : Maybe (List ClientPropertiesResult)
    }



describeClientPropertiesResultDecoder : JD.Decoder DescribeClientPropertiesResult
describeClientPropertiesResultDecoder =
    JD.succeed DescribeClientPropertiesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientPropertiesList", "clientPropertiesList"]
            (JD.list clientPropertiesResultDecoder)
        )
        




describeClientPropertiesResultToString : DescribeClientPropertiesResult -> String -- List (String, String)
describeClientPropertiesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clientPropertiesList" "" -- val.clientPropertiesList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeIpGrou
-}
type alias DescribeIpGroupsResult =
    { result : Maybe (List WorkspacesIpGroup)
    , nextToken : Maybe String
    }



describeIpGroupsResultDecoder : JD.Decoder DescribeIpGroupsResult
describeIpGroupsResultDecoder =
    JD.succeed DescribeIpGroupsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Result", "result"]
            (JD.list workspacesIpGroupDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeIpGroupsResultToString : DescribeIpGroupsResult -> String -- List (String, String)
describeIpGroupsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "result" "" -- val.result
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTa
-}
type alias DescribeTagsResult =
    { tagList : Maybe (List Tag)
    }



describeTagsResultDecoder : JD.Decoder DescribeTagsResult
describeTagsResultDecoder =
    JD.succeed DescribeTagsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagList", "tagList"]
            (JD.list tagDecoder)
        )
        




describeTagsResultToString : DescribeTagsResult -> String -- List (String, String)
describeTagsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tagList" "" -- val.tagList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeWorkspaceBundl
-}
type alias DescribeWorkspaceBundlesResult =
    { bundles : Maybe (List WorkspaceBundle)
    , nextToken : Maybe String
    }



describeWorkspaceBundlesResultDecoder : JD.Decoder DescribeWorkspaceBundlesResult
describeWorkspaceBundlesResultDecoder =
    JD.succeed DescribeWorkspaceBundlesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Bundles", "bundles"]
            (JD.list workspaceBundleDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeWorkspaceBundlesResultToString : DescribeWorkspaceBundlesResult -> String -- List (String, String)
describeWorkspaceBundlesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bundles" "" -- val.bundles
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeWorkspaceDirectori
-}
type alias DescribeWorkspaceDirectoriesResult =
    { directories : Maybe (List WorkspaceDirectory)
    , nextToken : Maybe String
    }



describeWorkspaceDirectoriesResultDecoder : JD.Decoder DescribeWorkspaceDirectoriesResult
describeWorkspaceDirectoriesResultDecoder =
    JD.succeed DescribeWorkspaceDirectoriesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Directories", "directories"]
            (JD.list workspaceDirectoryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeWorkspaceDirectoriesResultToString : DescribeWorkspaceDirectoriesResult -> String -- List (String, String)
describeWorkspaceDirectoriesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directories" "" -- val.directories
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeWorkspaceImag
-}
type alias DescribeWorkspaceImagesResult =
    { images : Maybe (List WorkspaceImage)
    , nextToken : Maybe String
    }



describeWorkspaceImagesResultDecoder : JD.Decoder DescribeWorkspaceImagesResult
describeWorkspaceImagesResultDecoder =
    JD.succeed DescribeWorkspaceImagesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Images", "images"]
            (JD.list workspaceImageDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeWorkspaceImagesResultToString : DescribeWorkspaceImagesResult -> String -- List (String, String)
describeWorkspaceImagesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "images" "" -- val.images
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeWorkspacesConnectionStat
-}
type alias DescribeWorkspacesConnectionStatusResult =
    { workspacesConnectionStatus : Maybe (List WorkspaceConnectionStatus)
    , nextToken : Maybe String
    }



describeWorkspacesConnectionStatusResultDecoder : JD.Decoder DescribeWorkspacesConnectionStatusResult
describeWorkspacesConnectionStatusResultDecoder =
    JD.succeed DescribeWorkspacesConnectionStatusResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkspacesConnectionStatus", "workspacesConnectionStatus"]
            (JD.list workspaceConnectionStatusDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeWorkspacesConnectionStatusResultToString : DescribeWorkspacesConnectionStatusResult -> String -- List (String, String)
describeWorkspacesConnectionStatusResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workspacesConnectionStatus" "" -- val.workspacesConnectionStatus
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeWorkspac
-}
type alias DescribeWorkspacesResult =
    { workspaces : Maybe (List Workspace)
    , nextToken : Maybe String
    }



describeWorkspacesResultDecoder : JD.Decoder DescribeWorkspacesResult
describeWorkspacesResultDecoder =
    JD.succeed DescribeWorkspacesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Workspaces", "workspaces"]
            (JD.list workspaceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeWorkspacesResultToString : DescribeWorkspacesResult -> String -- List (String, String)
describeWorkspacesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workspaces" "" -- val.workspaces
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disassociateIpGrou
-}
type alias DisassociateIpGroupsResult =
    { 
    }



disassociateIpGroupsResultDecoder : JD.Decoder DisassociateIpGroupsResult
disassociateIpGroupsResultDecoder =
    JD.succeed DisassociateIpGroupsResult
        




disassociateIpGroupsResultToString : DisassociateIpGroupsResult -> String -- List (String, String)
disassociateIpGroupsResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Describes a WorkSpace that cannot be created.</p>
-}
type alias FailedCreateWorkspaceRequest =
    { workspaceRequest : Maybe WorkspaceRequest
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



failedCreateWorkspaceRequestDecoder : JD.Decoder FailedCreateWorkspaceRequest
failedCreateWorkspaceRequestDecoder =
    JD.succeed FailedCreateWorkspaceRequest
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkspaceRequest", "workspaceRequest"]
            workspaceRequestDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        




failedCreateWorkspaceRequestToString : FailedCreateWorkspaceRequest -> String -- List (String, String)
failedCreateWorkspaceRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workspaceRequest" "" -- val.workspaceRequest
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| <p>Describes a WorkSpace that could not be rebooted. (<a>RebootWorkspaces</a>), rebuilt (<a>RebuildWorkspaces</a>), terminated (<a>TerminateWorkspaces</a>), started (<a>StartWorkspaces</a>), or stopped (<a>StopWorkspaces</a>).</p>
-}
type alias FailedWorkspaceChangeRequest =
    { workspaceId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



failedWorkspaceChangeRequestDecoder : JD.Decoder FailedWorkspaceChangeRequest
failedWorkspaceChangeRequestDecoder =
    JD.succeed FailedWorkspaceChangeRequest
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkspaceId", "workspaceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        




failedWorkspaceChangeRequestToString : FailedWorkspaceChangeRequest -> String -- List (String, String)
failedWorkspaceChangeRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workspaceId" "" -- val.workspaceId
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from importWorkspaceIma
-}
type alias ImportWorkspaceImageResult =
    { imageId : Maybe String
    }



importWorkspaceImageResultDecoder : JD.Decoder ImportWorkspaceImageResult
importWorkspaceImageResultDecoder =
    JD.succeed ImportWorkspaceImageResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageId", "imageId"]
            JD.string
        )
        




importWorkspaceImageResultToString : ImportWorkspaceImageResult -> String -- List (String, String)
importWorkspaceImageResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageId" "" -- val.imageId
        
    --     |> Dict.toList
    ""



{-| <p>Describes a rule for an IP access control group.</p>
-}
type alias IpRuleItem =
    { ipRule : Maybe String
    , ruleDesc : Maybe String
    }



ipRuleItemDecoder : JD.Decoder IpRuleItem
ipRuleItemDecoder =
    JD.succeed IpRuleItem
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ipRule", "IpRule"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ruleDesc", "RuleDesc"]
            JD.string
        )
        




ipRuleItemToString : IpRuleItem -> String -- List (String, String)
ipRuleItemToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ipRule" "" -- val.ipRule
        
    --     |> Dict.insert
    --         "ruleDesc" "" -- val.ruleDesc
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listAvailableManagementCidrRang
-}
type alias ListAvailableManagementCidrRangesResult =
    { managementCidrRanges : Maybe (List String)
    , nextToken : Maybe String
    }



listAvailableManagementCidrRangesResultDecoder : JD.Decoder ListAvailableManagementCidrRangesResult
listAvailableManagementCidrRangesResultDecoder =
    JD.succeed ListAvailableManagementCidrRangesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ManagementCidrRanges", "managementCidrRanges"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listAvailableManagementCidrRangesResultToString : ListAvailableManagementCidrRangesResult -> String -- List (String, String)
listAvailableManagementCidrRangesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "managementCidrRanges" "" -- val.managementCidrRanges
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| One of

* `ModificationResourceEnum_ROOT_VOLUME`
* `ModificationResourceEnum_USER_VOLUME`
* `ModificationResourceEnum_COMPUTE_TYPE`

-}
type ModificationResourceEnum
    = ModificationResourceEnum_ROOT_VOLUME
    | ModificationResourceEnum_USER_VOLUME
    | ModificationResourceEnum_COMPUTE_TYPE



modificationResourceEnumDecoder : JD.Decoder ModificationResourceEnum
modificationResourceEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ROOT_VOLUME" ->
                        JD.succeed ModificationResourceEnum_ROOT_VOLUME

                    "USER_VOLUME" ->
                        JD.succeed ModificationResourceEnum_USER_VOLUME

                    "COMPUTE_TYPE" ->
                        JD.succeed ModificationResourceEnum_COMPUTE_TYPE


                    _ ->
                        JD.fail "bad thing"
            )




modificationResourceEnumToString : ModificationResourceEnum -> String
modificationResourceEnumToString val =
    case val of
        ModificationResourceEnum_ROOT_VOLUME ->
            "ROOT_VOLUME"

        ModificationResourceEnum_USER_VOLUME ->
            "USER_VOLUME"

        ModificationResourceEnum_COMPUTE_TYPE ->
            "COMPUTE_TYPE"




{-| <p>Describes a WorkSpace modification.</p>
-}
type alias ModificationState =
    { resource : Maybe ModificationResourceEnum
    , state : Maybe ModificationStateEnum
    }



modificationStateDecoder : JD.Decoder ModificationState
modificationStateDecoder =
    JD.succeed ModificationState
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Resource", "resource"]
            modificationResourceEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            modificationStateEnumDecoder
        )
        




modificationStateToString : ModificationState -> String -- List (String, String)
modificationStateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.toList
    ""



{-| One of

* `ModificationStateEnum_UPDATE_INITIATED`
* `ModificationStateEnum_UPDATE_IN_PROGRESS`

-}
type ModificationStateEnum
    = ModificationStateEnum_UPDATE_INITIATED
    | ModificationStateEnum_UPDATE_IN_PROGRESS



modificationStateEnumDecoder : JD.Decoder ModificationStateEnum
modificationStateEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UPDATE_INITIATED" ->
                        JD.succeed ModificationStateEnum_UPDATE_INITIATED

                    "UPDATE_IN_PROGRESS" ->
                        JD.succeed ModificationStateEnum_UPDATE_IN_PROGRESS


                    _ ->
                        JD.fail "bad thing"
            )




modificationStateEnumToString : ModificationStateEnum -> String
modificationStateEnumToString val =
    case val of
        ModificationStateEnum_UPDATE_INITIATED ->
            "UPDATE_INITIATED"

        ModificationStateEnum_UPDATE_IN_PROGRESS ->
            "UPDATE_IN_PROGRESS"




{-| Type of HTTP response from modifyAccou
-}
type alias ModifyAccountResult =
    { 
    }



modifyAccountResultDecoder : JD.Decoder ModifyAccountResult
modifyAccountResultDecoder =
    JD.succeed ModifyAccountResult
        




modifyAccountResultToString : ModifyAccountResult -> String -- List (String, String)
modifyAccountResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyClientProperti
-}
type alias ModifyClientPropertiesResult =
    { 
    }



modifyClientPropertiesResultDecoder : JD.Decoder ModifyClientPropertiesResult
modifyClientPropertiesResultDecoder =
    JD.succeed ModifyClientPropertiesResult
        




modifyClientPropertiesResultToString : ModifyClientPropertiesResult -> String -- List (String, String)
modifyClientPropertiesResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyWorkspaceProperti
-}
type alias ModifyWorkspacePropertiesResult =
    { 
    }



modifyWorkspacePropertiesResultDecoder : JD.Decoder ModifyWorkspacePropertiesResult
modifyWorkspacePropertiesResultDecoder =
    JD.succeed ModifyWorkspacePropertiesResult
        




modifyWorkspacePropertiesResultToString : ModifyWorkspacePropertiesResult -> String -- List (String, String)
modifyWorkspacePropertiesResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from modifyWorkspaceSta
-}
type alias ModifyWorkspaceStateResult =
    { 
    }



modifyWorkspaceStateResultDecoder : JD.Decoder ModifyWorkspaceStateResult
modifyWorkspaceStateResultDecoder =
    JD.succeed ModifyWorkspaceStateResult
        




modifyWorkspaceStateResultToString : ModifyWorkspaceStateResult -> String -- List (String, String)
modifyWorkspaceStateResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>The operating system that the image is running.</p>
-}
type alias OperatingSystem =
    { type_ : Maybe OperatingSystemType
    }



operatingSystemDecoder : JD.Decoder OperatingSystem
operatingSystemDecoder =
    JD.succeed OperatingSystem
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            operatingSystemTypeDecoder
        )
        




operatingSystemToString : OperatingSystem -> String -- List (String, String)
operatingSystemToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.toList
    ""



{-| One of

* `OperatingSystemType_WINDOWS`
* `OperatingSystemType_LINUX`

-}
type OperatingSystemType
    = OperatingSystemType_WINDOWS
    | OperatingSystemType_LINUX



operatingSystemTypeDecoder : JD.Decoder OperatingSystemType
operatingSystemTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WINDOWS" ->
                        JD.succeed OperatingSystemType_WINDOWS

                    "LINUX" ->
                        JD.succeed OperatingSystemType_LINUX


                    _ ->
                        JD.fail "bad thing"
            )




operatingSystemTypeToString : OperatingSystemType -> String
operatingSystemTypeToString val =
    case val of
        OperatingSystemType_WINDOWS ->
            "WINDOWS"

        OperatingSystemType_LINUX ->
            "LINUX"




{-| <p>Describes the information used to reboot a WorkSpace.</p>
-}
type alias RebootRequest =
    { workspaceId : String
    }



rebootRequestDecoder : JD.Decoder RebootRequest
rebootRequestDecoder =
    JD.succeed RebootRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["WorkspaceId", "workspaceId"]
            JD.string
        )
        




rebootRequestToString : RebootRequest -> String -- List (String, String)
rebootRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workspaceId" "" -- val.workspaceId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from rebootWorkspac
-}
type alias RebootWorkspacesResult =
    { failedRequests : Maybe (List FailedWorkspaceChangeRequest)
    }



rebootWorkspacesResultDecoder : JD.Decoder RebootWorkspacesResult
rebootWorkspacesResultDecoder =
    JD.succeed RebootWorkspacesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedRequests", "failedRequests"]
            (JD.list failedWorkspaceChangeRequestDecoder)
        )
        




rebootWorkspacesResultToString : RebootWorkspacesResult -> String -- List (String, String)
rebootWorkspacesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedRequests" "" -- val.failedRequests
        
    --     |> Dict.toList
    ""



{-| <p>Describes the information used to rebuild a WorkSpace.</p>
-}
type alias RebuildRequest =
    { workspaceId : String
    }



rebuildRequestDecoder : JD.Decoder RebuildRequest
rebuildRequestDecoder =
    JD.succeed RebuildRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["WorkspaceId", "workspaceId"]
            JD.string
        )
        




rebuildRequestToString : RebuildRequest -> String -- List (String, String)
rebuildRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workspaceId" "" -- val.workspaceId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from rebuildWorkspac
-}
type alias RebuildWorkspacesResult =
    { failedRequests : Maybe (List FailedWorkspaceChangeRequest)
    }



rebuildWorkspacesResultDecoder : JD.Decoder RebuildWorkspacesResult
rebuildWorkspacesResultDecoder =
    JD.succeed RebuildWorkspacesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedRequests", "failedRequests"]
            (JD.list failedWorkspaceChangeRequestDecoder)
        )
        




rebuildWorkspacesResultToString : RebuildWorkspacesResult -> String -- List (String, String)
rebuildWorkspacesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedRequests" "" -- val.failedRequests
        
    --     |> Dict.toList
    ""



{-| One of

* `ReconnectEnum_ENABLED`
* `ReconnectEnum_DISABLED`

-}
type ReconnectEnum
    = ReconnectEnum_ENABLED
    | ReconnectEnum_DISABLED



reconnectEnumDecoder : JD.Decoder ReconnectEnum
reconnectEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed ReconnectEnum_ENABLED

                    "DISABLED" ->
                        JD.succeed ReconnectEnum_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )




reconnectEnumToString : ReconnectEnum -> String
reconnectEnumToString val =
    case val of
        ReconnectEnum_ENABLED ->
            "ENABLED"

        ReconnectEnum_DISABLED ->
            "DISABLED"




{-| Type of HTTP response from revokeIpRul
-}
type alias RevokeIpRulesResult =
    { 
    }



revokeIpRulesResultDecoder : JD.Decoder RevokeIpRulesResult
revokeIpRulesResultDecoder =
    JD.succeed RevokeIpRulesResult
        




revokeIpRulesResultToString : RevokeIpRulesResult -> String -- List (String, String)
revokeIpRulesResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Describes the root volume for a WorkSpace bundle.</p>
-}
type alias RootStorage =
    { capacity : Maybe String
    }



rootStorageDecoder : JD.Decoder RootStorage
rootStorageDecoder =
    JD.succeed RootStorage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Capacity", "capacity"]
            JD.string
        )
        




rootStorageToString : RootStorage -> String -- List (String, String)
rootStorageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "capacity" "" -- val.capacity
        
    --     |> Dict.toList
    ""



{-| One of

* `RunningMode_AUTO_STOP`
* `RunningMode_ALWAYS_ON`

-}
type RunningMode
    = RunningMode_AUTO_STOP
    | RunningMode_ALWAYS_ON



runningModeDecoder : JD.Decoder RunningMode
runningModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AUTO_STOP" ->
                        JD.succeed RunningMode_AUTO_STOP

                    "ALWAYS_ON" ->
                        JD.succeed RunningMode_ALWAYS_ON


                    _ ->
                        JD.fail "bad thing"
            )




runningModeToString : RunningMode -> String
runningModeToString val =
    case val of
        RunningMode_AUTO_STOP ->
            "AUTO_STOP"

        RunningMode_ALWAYS_ON ->
            "ALWAYS_ON"




{-| <p>Information used to start a WorkSpace.</p>
-}
type alias StartRequest =
    { workspaceId : Maybe String
    }



startRequestDecoder : JD.Decoder StartRequest
startRequestDecoder =
    JD.succeed StartRequest
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkspaceId", "workspaceId"]
            JD.string
        )
        




startRequestToString : StartRequest -> String -- List (String, String)
startRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workspaceId" "" -- val.workspaceId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startWorkspac
-}
type alias StartWorkspacesResult =
    { failedRequests : Maybe (List FailedWorkspaceChangeRequest)
    }



startWorkspacesResultDecoder : JD.Decoder StartWorkspacesResult
startWorkspacesResultDecoder =
    JD.succeed StartWorkspacesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedRequests", "failedRequests"]
            (JD.list failedWorkspaceChangeRequestDecoder)
        )
        




startWorkspacesResultToString : StartWorkspacesResult -> String -- List (String, String)
startWorkspacesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedRequests" "" -- val.failedRequests
        
    --     |> Dict.toList
    ""



{-| <p>Describes the information used to stop a WorkSpace.</p>
-}
type alias StopRequest =
    { workspaceId : Maybe String
    }



stopRequestDecoder : JD.Decoder StopRequest
stopRequestDecoder =
    JD.succeed StopRequest
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkspaceId", "workspaceId"]
            JD.string
        )
        




stopRequestToString : StopRequest -> String -- List (String, String)
stopRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workspaceId" "" -- val.workspaceId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopWorkspac
-}
type alias StopWorkspacesResult =
    { failedRequests : Maybe (List FailedWorkspaceChangeRequest)
    }



stopWorkspacesResultDecoder : JD.Decoder StopWorkspacesResult
stopWorkspacesResultDecoder =
    JD.succeed StopWorkspacesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedRequests", "failedRequests"]
            (JD.list failedWorkspaceChangeRequestDecoder)
        )
        




stopWorkspacesResultToString : StopWorkspacesResult -> String -- List (String, String)
stopWorkspacesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedRequests" "" -- val.failedRequests
        
    --     |> Dict.toList
    ""



{-| <p>Describes a tag.</p>
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

* `TargetWorkspaceState_AVAILABLE`
* `TargetWorkspaceState_ADMIN_MAINTENANCE`

-}
type TargetWorkspaceState
    = TargetWorkspaceState_AVAILABLE
    | TargetWorkspaceState_ADMIN_MAINTENANCE



targetWorkspaceStateDecoder : JD.Decoder TargetWorkspaceState
targetWorkspaceStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AVAILABLE" ->
                        JD.succeed TargetWorkspaceState_AVAILABLE

                    "ADMIN_MAINTENANCE" ->
                        JD.succeed TargetWorkspaceState_ADMIN_MAINTENANCE


                    _ ->
                        JD.fail "bad thing"
            )




targetWorkspaceStateToString : TargetWorkspaceState -> String
targetWorkspaceStateToString val =
    case val of
        TargetWorkspaceState_AVAILABLE ->
            "AVAILABLE"

        TargetWorkspaceState_ADMIN_MAINTENANCE ->
            "ADMIN_MAINTENANCE"




{-| <p>Describes the information used to terminate a WorkSpace.</p>
-}
type alias TerminateRequest =
    { workspaceId : String
    }



terminateRequestDecoder : JD.Decoder TerminateRequest
terminateRequestDecoder =
    JD.succeed TerminateRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["WorkspaceId", "workspaceId"]
            JD.string
        )
        




terminateRequestToString : TerminateRequest -> String -- List (String, String)
terminateRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workspaceId" "" -- val.workspaceId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from terminateWorkspac
-}
type alias TerminateWorkspacesResult =
    { failedRequests : Maybe (List FailedWorkspaceChangeRequest)
    }



terminateWorkspacesResultDecoder : JD.Decoder TerminateWorkspacesResult
terminateWorkspacesResultDecoder =
    JD.succeed TerminateWorkspacesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedRequests", "failedRequests"]
            (JD.list failedWorkspaceChangeRequestDecoder)
        )
        




terminateWorkspacesResultToString : TerminateWorkspacesResult -> String -- List (String, String)
terminateWorkspacesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedRequests" "" -- val.failedRequests
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateRulesOfIpGro
-}
type alias UpdateRulesOfIpGroupResult =
    { 
    }



updateRulesOfIpGroupResultDecoder : JD.Decoder UpdateRulesOfIpGroupResult
updateRulesOfIpGroupResultDecoder =
    JD.succeed UpdateRulesOfIpGroupResult
        




updateRulesOfIpGroupResultToString : UpdateRulesOfIpGroupResult -> String -- List (String, String)
updateRulesOfIpGroupResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Describes the user storage for a WorkSpace bundle.</p>
-}
type alias UserStorage =
    { capacity : Maybe String
    }



userStorageDecoder : JD.Decoder UserStorage
userStorageDecoder =
    JD.succeed UserStorage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Capacity", "capacity"]
            JD.string
        )
        




userStorageToString : UserStorage -> String -- List (String, String)
userStorageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "capacity" "" -- val.capacity
        
    --     |> Dict.toList
    ""



{-| <p>Describes a WorkSpace.</p>
-}
type alias Workspace =
    { workspaceId : Maybe String
    , directoryId : Maybe String
    , userName : Maybe String
    , ipAddress : Maybe String
    , state : Maybe WorkspaceState
    , bundleId : Maybe String
    , subnetId : Maybe String
    , errorMessage : Maybe String
    , errorCode : Maybe String
    , computerName : Maybe String
    , volumeEncryptionKey : Maybe String
    , userVolumeEncryptionEnabled : Maybe Bool
    , rootVolumeEncryptionEnabled : Maybe Bool
    , workspaceProperties : Maybe WorkspaceProperties
    , modificationStates : Maybe (List ModificationState)
    }



workspaceDecoder : JD.Decoder Workspace
workspaceDecoder =
    JD.succeed Workspace
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkspaceId", "workspaceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DirectoryId", "directoryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserName", "userName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IpAddress", "ipAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            workspaceStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BundleId", "bundleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetId", "subnetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputerName", "computerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VolumeEncryptionKey", "volumeEncryptionKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserVolumeEncryptionEnabled", "userVolumeEncryptionEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RootVolumeEncryptionEnabled", "rootVolumeEncryptionEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkspaceProperties", "workspaceProperties"]
            workspacePropertiesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ModificationStates", "modificationStates"]
            (JD.list modificationStateDecoder)
        )
        




workspaceToString : Workspace -> String -- List (String, String)
workspaceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workspaceId" "" -- val.workspaceId
        
    --     |> Dict.insert
    --         "directoryId" "" -- val.directoryId
        
    --     |> Dict.insert
    --         "userName" "" -- val.userName
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "bundleId" "" -- val.bundleId
        
    --     |> Dict.insert
    --         "subnetId" "" -- val.subnetId
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "computerName" "" -- val.computerName
        
    --     |> Dict.insert
    --         "volumeEncryptionKey" "" -- val.volumeEncryptionKey
        
    --     |> Dict.insert
    --         "userVolumeEncryptionEnabled" "" -- val.userVolumeEncryptionEnabled
        
    --     |> Dict.insert
    --         "rootVolumeEncryptionEnabled" "" -- val.rootVolumeEncryptionEnabled
        
    --     |> Dict.insert
    --         "workspaceProperties" "" -- val.workspaceProperties
        
    --     |> Dict.insert
    --         "modificationStates" "" -- val.modificationStates
        
    --     |> Dict.toList
    ""



{-| <p>Describes a WorkSpace bundle.</p>
-}
type alias WorkspaceBundle =
    { bundleId : Maybe String
    , name : Maybe String
    , owner : Maybe String
    , description : Maybe String
    , rootStorage : Maybe RootStorage
    , userStorage : Maybe UserStorage
    , computeType : Maybe ComputeType
    }



workspaceBundleDecoder : JD.Decoder WorkspaceBundle
workspaceBundleDecoder =
    JD.succeed WorkspaceBundle
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BundleId", "bundleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Owner", "owner"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RootStorage", "rootStorage"]
            rootStorageDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserStorage", "userStorage"]
            userStorageDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeType", "computeType"]
            computeTypeDecoder
        )
        




workspaceBundleToString : WorkspaceBundle -> String -- List (String, String)
workspaceBundleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bundleId" "" -- val.bundleId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "owner" "" -- val.owner
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "rootStorage" "" -- val.rootStorage
        
    --     |> Dict.insert
    --         "userStorage" "" -- val.userStorage
        
    --     |> Dict.insert
    --         "computeType" "" -- val.computeType
        
    --     |> Dict.toList
    ""



{-| <p>Describes the connection status of a WorkSpace.</p>
-}
type alias WorkspaceConnectionStatus =
    { workspaceId : Maybe String
    , connectionState : Maybe ConnectionState
    , connectionStateCheckTimestamp : Maybe Posix
    , lastKnownUserConnectionTimestamp : Maybe Posix
    }



workspaceConnectionStatusDecoder : JD.Decoder WorkspaceConnectionStatus
workspaceConnectionStatusDecoder =
    JD.succeed WorkspaceConnectionStatus
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkspaceId", "workspaceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionState", "connectionState"]
            connectionStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionStateCheckTimestamp", "connectionStateCheckTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastKnownUserConnectionTimestamp", "lastKnownUserConnectionTimestamp"]
            JDX.datetime
        )
        




workspaceConnectionStatusToString : WorkspaceConnectionStatus -> String -- List (String, String)
workspaceConnectionStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "workspaceId" "" -- val.workspaceId
        
    --     |> Dict.insert
    --         "connectionState" "" -- val.connectionState
        
    --     |> Dict.insert
    --         "connectionStateCheckTimestamp" "" -- val.connectionStateCheckTimestamp
        
    --     |> Dict.insert
    --         "lastKnownUserConnectionTimestamp" "" -- val.lastKnownUserConnectionTimestamp
        
    --     |> Dict.toList
    ""



{-| <p>Describes an AWS Directory Service directory that is used with Amazon WorkSpaces.</p>
-}
type alias WorkspaceDirectory =
    { directoryId : Maybe String
    , alias : Maybe String
    , directoryName : Maybe String
    , registrationCode : Maybe String
    , subnetIds : Maybe (List String)
    , dnsIpAddresses : Maybe (List String)
    , customerUserName : Maybe String
    , iamRoleId : Maybe String
    , directoryType : Maybe WorkspaceDirectoryType
    , workspaceSecurityGroupId : Maybe String
    , state : Maybe WorkspaceDirectoryState
    , workspaceCreationProperties : Maybe DefaultWorkspaceCreationProperties
    , ipGroupIds : Maybe (List String)
    }



workspaceDirectoryDecoder : JD.Decoder WorkspaceDirectory
workspaceDirectoryDecoder =
    JD.succeed WorkspaceDirectory
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DirectoryId", "directoryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Alias", "alias"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DirectoryName", "directoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegistrationCode", "registrationCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubnetIds", "subnetIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DnsIpAddresses", "dnsIpAddresses"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomerUserName", "customerUserName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IamRoleId", "iamRoleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DirectoryType", "directoryType"]
            workspaceDirectoryTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkspaceSecurityGroupId", "workspaceSecurityGroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            workspaceDirectoryStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkspaceCreationProperties", "workspaceCreationProperties"]
            defaultWorkspaceCreationPropertiesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ipGroupIds", "IpGroupIds"]
            (JD.list JD.string)
        )
        




workspaceDirectoryToString : WorkspaceDirectory -> String -- List (String, String)
workspaceDirectoryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directoryId" "" -- val.directoryId
        
    --     |> Dict.insert
    --         "alias" "" -- val.alias
        
    --     |> Dict.insert
    --         "directoryName" "" -- val.directoryName
        
    --     |> Dict.insert
    --         "registrationCode" "" -- val.registrationCode
        
    --     |> Dict.insert
    --         "subnetIds" "" -- val.subnetIds
        
    --     |> Dict.insert
    --         "dnsIpAddresses" "" -- val.dnsIpAddresses
        
    --     |> Dict.insert
    --         "customerUserName" "" -- val.customerUserName
        
    --     |> Dict.insert
    --         "iamRoleId" "" -- val.iamRoleId
        
    --     |> Dict.insert
    --         "directoryType" "" -- val.directoryType
        
    --     |> Dict.insert
    --         "workspaceSecurityGroupId" "" -- val.workspaceSecurityGroupId
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "workspaceCreationProperties" "" -- val.workspaceCreationProperties
        
    --     |> Dict.insert
    --         "ipGroupIds" "" -- val.ipGroupIds
        
    --     |> Dict.toList
    ""



{-| One of

* `WorkspaceDirectoryState_REGISTERING`
* `WorkspaceDirectoryState_REGISTERED`
* `WorkspaceDirectoryState_DEREGISTERING`
* `WorkspaceDirectoryState_DEREGISTERED`
* `WorkspaceDirectoryState_ERROR`

-}
type WorkspaceDirectoryState
    = WorkspaceDirectoryState_REGISTERING
    | WorkspaceDirectoryState_REGISTERED
    | WorkspaceDirectoryState_DEREGISTERING
    | WorkspaceDirectoryState_DEREGISTERED
    | WorkspaceDirectoryState_ERROR



workspaceDirectoryStateDecoder : JD.Decoder WorkspaceDirectoryState
workspaceDirectoryStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "REGISTERING" ->
                        JD.succeed WorkspaceDirectoryState_REGISTERING

                    "REGISTERED" ->
                        JD.succeed WorkspaceDirectoryState_REGISTERED

                    "DEREGISTERING" ->
                        JD.succeed WorkspaceDirectoryState_DEREGISTERING

                    "DEREGISTERED" ->
                        JD.succeed WorkspaceDirectoryState_DEREGISTERED

                    "ERROR" ->
                        JD.succeed WorkspaceDirectoryState_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




workspaceDirectoryStateToString : WorkspaceDirectoryState -> String
workspaceDirectoryStateToString val =
    case val of
        WorkspaceDirectoryState_REGISTERING ->
            "REGISTERING"

        WorkspaceDirectoryState_REGISTERED ->
            "REGISTERED"

        WorkspaceDirectoryState_DEREGISTERING ->
            "DEREGISTERING"

        WorkspaceDirectoryState_DEREGISTERED ->
            "DEREGISTERED"

        WorkspaceDirectoryState_ERROR ->
            "ERROR"




{-| One of

* `WorkspaceDirectoryType_SIMPLE_AD`
* `WorkspaceDirectoryType_AD_CONNECTOR`

-}
type WorkspaceDirectoryType
    = WorkspaceDirectoryType_SIMPLE_AD
    | WorkspaceDirectoryType_AD_CONNECTOR



workspaceDirectoryTypeDecoder : JD.Decoder WorkspaceDirectoryType
workspaceDirectoryTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SIMPLE_AD" ->
                        JD.succeed WorkspaceDirectoryType_SIMPLE_AD

                    "AD_CONNECTOR" ->
                        JD.succeed WorkspaceDirectoryType_AD_CONNECTOR


                    _ ->
                        JD.fail "bad thing"
            )




workspaceDirectoryTypeToString : WorkspaceDirectoryType -> String
workspaceDirectoryTypeToString val =
    case val of
        WorkspaceDirectoryType_SIMPLE_AD ->
            "SIMPLE_AD"

        WorkspaceDirectoryType_AD_CONNECTOR ->
            "AD_CONNECTOR"




{-| <p>Describes a WorkSpace image.</p>
-}
type alias WorkspaceImage =
    { imageId : Maybe String
    , name : Maybe String
    , description : Maybe String
    , operatingSystem : Maybe OperatingSystem
    , state : Maybe WorkspaceImageState
    , requiredTenancy : Maybe WorkspaceImageRequiredTenancy
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



workspaceImageDecoder : JD.Decoder WorkspaceImage
workspaceImageDecoder =
    JD.succeed WorkspaceImage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageId", "imageId"]
            JD.string
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
            ["OperatingSystem", "operatingSystem"]
            operatingSystemDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["State", "state"]
            workspaceImageStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequiredTenancy", "requiredTenancy"]
            workspaceImageRequiredTenancyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        




workspaceImageToString : WorkspaceImage -> String -- List (String, String)
workspaceImageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "imageId" "" -- val.imageId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "operatingSystem" "" -- val.operatingSystem
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "requiredTenancy" "" -- val.requiredTenancy
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| One of

* `WorkspaceImageIngestionProcess_BYOL_REGULAR`
* `WorkspaceImageIngestionProcess_BYOL_GRAPHICS`
* `WorkspaceImageIngestionProcess_BYOL_GRAPHICSPRO`

-}
type WorkspaceImageIngestionProcess
    = WorkspaceImageIngestionProcess_BYOL_REGULAR
    | WorkspaceImageIngestionProcess_BYOL_GRAPHICS
    | WorkspaceImageIngestionProcess_BYOL_GRAPHICSPRO



workspaceImageIngestionProcessDecoder : JD.Decoder WorkspaceImageIngestionProcess
workspaceImageIngestionProcessDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BYOL_REGULAR" ->
                        JD.succeed WorkspaceImageIngestionProcess_BYOL_REGULAR

                    "BYOL_GRAPHICS" ->
                        JD.succeed WorkspaceImageIngestionProcess_BYOL_GRAPHICS

                    "BYOL_GRAPHICSPRO" ->
                        JD.succeed WorkspaceImageIngestionProcess_BYOL_GRAPHICSPRO


                    _ ->
                        JD.fail "bad thing"
            )




workspaceImageIngestionProcessToString : WorkspaceImageIngestionProcess -> String
workspaceImageIngestionProcessToString val =
    case val of
        WorkspaceImageIngestionProcess_BYOL_REGULAR ->
            "BYOL_REGULAR"

        WorkspaceImageIngestionProcess_BYOL_GRAPHICS ->
            "BYOL_GRAPHICS"

        WorkspaceImageIngestionProcess_BYOL_GRAPHICSPRO ->
            "BYOL_GRAPHICSPRO"




{-| One of

* `WorkspaceImageRequiredTenancy_DEFAULT`
* `WorkspaceImageRequiredTenancy_DEDICATED`

-}
type WorkspaceImageRequiredTenancy
    = WorkspaceImageRequiredTenancy_DEFAULT
    | WorkspaceImageRequiredTenancy_DEDICATED



workspaceImageRequiredTenancyDecoder : JD.Decoder WorkspaceImageRequiredTenancy
workspaceImageRequiredTenancyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEFAULT" ->
                        JD.succeed WorkspaceImageRequiredTenancy_DEFAULT

                    "DEDICATED" ->
                        JD.succeed WorkspaceImageRequiredTenancy_DEDICATED


                    _ ->
                        JD.fail "bad thing"
            )




workspaceImageRequiredTenancyToString : WorkspaceImageRequiredTenancy -> String
workspaceImageRequiredTenancyToString val =
    case val of
        WorkspaceImageRequiredTenancy_DEFAULT ->
            "DEFAULT"

        WorkspaceImageRequiredTenancy_DEDICATED ->
            "DEDICATED"




{-| One of

* `WorkspaceImageState_AVAILABLE`
* `WorkspaceImageState_PENDING`
* `WorkspaceImageState_ERROR`

-}
type WorkspaceImageState
    = WorkspaceImageState_AVAILABLE
    | WorkspaceImageState_PENDING
    | WorkspaceImageState_ERROR



workspaceImageStateDecoder : JD.Decoder WorkspaceImageState
workspaceImageStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AVAILABLE" ->
                        JD.succeed WorkspaceImageState_AVAILABLE

                    "PENDING" ->
                        JD.succeed WorkspaceImageState_PENDING

                    "ERROR" ->
                        JD.succeed WorkspaceImageState_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




workspaceImageStateToString : WorkspaceImageState -> String
workspaceImageStateToString val =
    case val of
        WorkspaceImageState_AVAILABLE ->
            "AVAILABLE"

        WorkspaceImageState_PENDING ->
            "PENDING"

        WorkspaceImageState_ERROR ->
            "ERROR"




{-| <p>Describes a WorkSpace.</p>
-}
type alias WorkspaceProperties =
    { runningMode : Maybe RunningMode
    , runningModeAutoStopTimeoutInMinutes : Maybe Int
    , rootVolumeSizeGib : Maybe Int
    , userVolumeSizeGib : Maybe Int
    , computeTypeName : Maybe Compute
    }



workspacePropertiesDecoder : JD.Decoder WorkspaceProperties
workspacePropertiesDecoder =
    JD.succeed WorkspaceProperties
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RunningMode", "runningMode"]
            runningModeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RunningModeAutoStopTimeoutInMinutes", "runningModeAutoStopTimeoutInMinutes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RootVolumeSizeGib", "rootVolumeSizeGib"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserVolumeSizeGib", "userVolumeSizeGib"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeTypeName", "computeTypeName"]
            computeDecoder
        )
        




workspacePropertiesToString : WorkspaceProperties -> String -- List (String, String)
workspacePropertiesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "runningMode" "" -- val.runningMode
        
    --     |> Dict.insert
    --         "runningModeAutoStopTimeoutInMinutes" "" -- val.runningModeAutoStopTimeoutInMinutes
        
    --     |> Dict.insert
    --         "rootVolumeSizeGib" "" -- val.rootVolumeSizeGib
        
    --     |> Dict.insert
    --         "userVolumeSizeGib" "" -- val.userVolumeSizeGib
        
    --     |> Dict.insert
    --         "computeTypeName" "" -- val.computeTypeName
        
    --     |> Dict.toList
    ""



{-| <p>Describes the information used to create a WorkSpace.</p>
-}
type alias WorkspaceRequest =
    { directoryId : String
    , userName : String
    , bundleId : String
    , volumeEncryptionKey : Maybe String
    , userVolumeEncryptionEnabled : Maybe Bool
    , rootVolumeEncryptionEnabled : Maybe Bool
    , workspaceProperties : Maybe WorkspaceProperties
    , tags : Maybe (List Tag)
    }



workspaceRequestDecoder : JD.Decoder WorkspaceRequest
workspaceRequestDecoder =
    JD.succeed WorkspaceRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DirectoryId", "directoryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UserName", "userName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["BundleId", "bundleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VolumeEncryptionKey", "volumeEncryptionKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserVolumeEncryptionEnabled", "userVolumeEncryptionEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RootVolumeEncryptionEnabled", "rootVolumeEncryptionEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WorkspaceProperties", "workspaceProperties"]
            workspacePropertiesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        




workspaceRequestToString : WorkspaceRequest -> String -- List (String, String)
workspaceRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directoryId" "" -- val.directoryId
        
    --     |> Dict.insert
    --         "userName" "" -- val.userName
        
    --     |> Dict.insert
    --         "bundleId" "" -- val.bundleId
        
    --     |> Dict.insert
    --         "volumeEncryptionKey" "" -- val.volumeEncryptionKey
        
    --     |> Dict.insert
    --         "userVolumeEncryptionEnabled" "" -- val.userVolumeEncryptionEnabled
        
    --     |> Dict.insert
    --         "rootVolumeEncryptionEnabled" "" -- val.rootVolumeEncryptionEnabled
        
    --     |> Dict.insert
    --         "workspaceProperties" "" -- val.workspaceProperties
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| One of

* `WorkspaceState_PENDING`
* `WorkspaceState_AVAILABLE`
* `WorkspaceState_IMPAIRED`
* `WorkspaceState_UNHEALTHY`
* `WorkspaceState_REBOOTING`
* `WorkspaceState_STARTING`
* `WorkspaceState_REBUILDING`
* `WorkspaceState_MAINTENANCE`
* `WorkspaceState_ADMIN_MAINTENANCE`
* `WorkspaceState_TERMINATING`
* `WorkspaceState_TERMINATED`
* `WorkspaceState_SUSPENDED`
* `WorkspaceState_UPDATING`
* `WorkspaceState_STOPPING`
* `WorkspaceState_STOPPED`
* `WorkspaceState_ERROR`

-}
type WorkspaceState
    = WorkspaceState_PENDING
    | WorkspaceState_AVAILABLE
    | WorkspaceState_IMPAIRED
    | WorkspaceState_UNHEALTHY
    | WorkspaceState_REBOOTING
    | WorkspaceState_STARTING
    | WorkspaceState_REBUILDING
    | WorkspaceState_MAINTENANCE
    | WorkspaceState_ADMIN_MAINTENANCE
    | WorkspaceState_TERMINATING
    | WorkspaceState_TERMINATED
    | WorkspaceState_SUSPENDED
    | WorkspaceState_UPDATING
    | WorkspaceState_STOPPING
    | WorkspaceState_STOPPED
    | WorkspaceState_ERROR



workspaceStateDecoder : JD.Decoder WorkspaceState
workspaceStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed WorkspaceState_PENDING

                    "AVAILABLE" ->
                        JD.succeed WorkspaceState_AVAILABLE

                    "IMPAIRED" ->
                        JD.succeed WorkspaceState_IMPAIRED

                    "UNHEALTHY" ->
                        JD.succeed WorkspaceState_UNHEALTHY

                    "REBOOTING" ->
                        JD.succeed WorkspaceState_REBOOTING

                    "STARTING" ->
                        JD.succeed WorkspaceState_STARTING

                    "REBUILDING" ->
                        JD.succeed WorkspaceState_REBUILDING

                    "MAINTENANCE" ->
                        JD.succeed WorkspaceState_MAINTENANCE

                    "ADMIN_MAINTENANCE" ->
                        JD.succeed WorkspaceState_ADMIN_MAINTENANCE

                    "TERMINATING" ->
                        JD.succeed WorkspaceState_TERMINATING

                    "TERMINATED" ->
                        JD.succeed WorkspaceState_TERMINATED

                    "SUSPENDED" ->
                        JD.succeed WorkspaceState_SUSPENDED

                    "UPDATING" ->
                        JD.succeed WorkspaceState_UPDATING

                    "STOPPING" ->
                        JD.succeed WorkspaceState_STOPPING

                    "STOPPED" ->
                        JD.succeed WorkspaceState_STOPPED

                    "ERROR" ->
                        JD.succeed WorkspaceState_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




workspaceStateToString : WorkspaceState -> String
workspaceStateToString val =
    case val of
        WorkspaceState_PENDING ->
            "PENDING"

        WorkspaceState_AVAILABLE ->
            "AVAILABLE"

        WorkspaceState_IMPAIRED ->
            "IMPAIRED"

        WorkspaceState_UNHEALTHY ->
            "UNHEALTHY"

        WorkspaceState_REBOOTING ->
            "REBOOTING"

        WorkspaceState_STARTING ->
            "STARTING"

        WorkspaceState_REBUILDING ->
            "REBUILDING"

        WorkspaceState_MAINTENANCE ->
            "MAINTENANCE"

        WorkspaceState_ADMIN_MAINTENANCE ->
            "ADMIN_MAINTENANCE"

        WorkspaceState_TERMINATING ->
            "TERMINATING"

        WorkspaceState_TERMINATED ->
            "TERMINATED"

        WorkspaceState_SUSPENDED ->
            "SUSPENDED"

        WorkspaceState_UPDATING ->
            "UPDATING"

        WorkspaceState_STOPPING ->
            "STOPPING"

        WorkspaceState_STOPPED ->
            "STOPPED"

        WorkspaceState_ERROR ->
            "ERROR"




{-| <p>Describes an IP access control group.</p>
-}
type alias WorkspacesIpGroup =
    { groupId : Maybe String
    , groupName : Maybe String
    , groupDesc : Maybe String
    , userRules : Maybe (List IpRuleItem)
    }



workspacesIpGroupDecoder : JD.Decoder WorkspacesIpGroup
workspacesIpGroupDecoder =
    JD.succeed WorkspacesIpGroup
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["groupId", "GroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["groupName", "GroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["groupDesc", "GroupDesc"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["userRules", "UserRules"]
            (JD.list ipRuleItemDecoder)
        )
        




workspacesIpGroupToString : WorkspacesIpGroup -> String -- List (String, String)
workspacesIpGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "groupId" "" -- val.groupId
        
    --     |> Dict.insert
    --         "groupName" "" -- val.groupName
        
    --     |> Dict.insert
    --         "groupDesc" "" -- val.groupDesc
        
    --     |> Dict.insert
    --         "userRules" "" -- val.userRules
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AssociateIpGroupsRequest =
    { directoryId : String
    , groupIds : (List String)
    }


{-| undefined
-}
type alias AuthorizeIpRulesRequest =
    { groupId : String
    , userRules : (List IpRuleItem)
    }


{-| undefined
-}
type alias CopyWorkspaceImageRequest =
    { name : String
    , description : Maybe String
    , sourceImageId : String
    , sourceRegion : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateIpGroupRequest =
    { groupName : String
    , groupDesc : Maybe String
    , userRules : Maybe (List IpRuleItem)
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateTagsRequest =
    { resourceId : String
    , tags : (List Tag)
    }


{-| undefined
-}
type alias CreateWorkspacesRequest =
    { workspaces : (List WorkspaceRequest)
    }


{-| undefined
-}
type alias DeleteIpGroupRequest =
    { groupId : String
    }


{-| undefined
-}
type alias DeleteTagsRequest =
    { resourceId : String
    , tagKeys : (List String)
    }


{-| undefined
-}
type alias DeleteWorkspaceImageRequest =
    { imageId : String
    }


{-| undefined
-}
type alias DescribeAccountModificationsRequest =
    { nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeAccountRequest =
    { 
    }


{-| undefined
-}
type alias DescribeClientPropertiesRequest =
    { resourceIds : (List String)
    }


{-| undefined
-}
type alias DescribeIpGroupsRequest =
    { groupIds : Maybe (List String)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias DescribeTagsRequest =
    { resourceId : String
    }


{-| undefined
-}
type alias DescribeWorkspaceBundlesRequest =
    { bundleIds : Maybe (List String)
    , owner : Maybe String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeWorkspaceDirectoriesRequest =
    { directoryIds : Maybe (List String)
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeWorkspaceImagesRequest =
    { imageIds : Maybe (List String)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias DescribeWorkspacesConnectionStatusRequest =
    { workspaceIds : Maybe (List String)
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeWorkspacesRequest =
    { workspaceIds : Maybe (List String)
    , directoryId : Maybe String
    , userName : Maybe String
    , bundleId : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DisassociateIpGroupsRequest =
    { directoryId : String
    , groupIds : (List String)
    }


{-| undefined
-}
type alias ImportWorkspaceImageRequest =
    { ec2ImageId : String
    , ingestionProcess : WorkspaceImageIngestionProcess
    , imageName : String
    , imageDescription : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias ListAvailableManagementCidrRangesRequest =
    { managementCidrRangeConstraint : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ModifyAccountRequest =
    { dedicatedTenancySupport : Maybe DedicatedTenancySupportEnum
    , dedicatedTenancyManagementCidrRange : Maybe String
    }


{-| undefined
-}
type alias ModifyClientPropertiesRequest =
    { resourceId : String
    , clientProperties : ClientProperties
    }


{-| undefined
-}
type alias ModifyWorkspacePropertiesRequest =
    { workspaceId : String
    , workspaceProperties : WorkspaceProperties
    }


{-| undefined
-}
type alias ModifyWorkspaceStateRequest =
    { workspaceId : String
    , workspaceState : TargetWorkspaceState
    }


{-| undefined
-}
type alias RebootWorkspacesRequest =
    { rebootWorkspaceRequests : (List RebootRequest)
    }


{-| undefined
-}
type alias RebuildWorkspacesRequest =
    { rebuildWorkspaceRequests : (List RebuildRequest)
    }


{-| undefined
-}
type alias RevokeIpRulesRequest =
    { groupId : String
    , userRules : (List String)
    }


{-| undefined
-}
type alias StartWorkspacesRequest =
    { startWorkspaceRequests : (List StartRequest)
    }


{-| undefined
-}
type alias StopWorkspacesRequest =
    { stopWorkspaceRequests : (List StopRequest)
    }


{-| undefined
-}
type alias TerminateWorkspacesRequest =
    { terminateWorkspaceRequests : (List TerminateRequest)
    }


{-| undefined
-}
type alias UpdateRulesOfIpGroupRequest =
    { groupId : String
    , userRules : (List IpRuleItem)
    }






accountModificationEncoder : AccountModification -> JE.Value
accountModificationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (dedicatedTenancyModificationStateEnumToString >> JE.string)
            ("ModificationState", data.modificationState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (dedicatedTenancySupportResultEnumToString >> JE.string)
            ("DedicatedTenancySupport", data.dedicatedTenancySupport)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DedicatedTenancyManagementCidrRange", data.dedicatedTenancyManagementCidrRange)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






associateIpGroupsRequestEncoder : AssociateIpGroupsRequest -> JE.Value
associateIpGroupsRequestEncoder data =
    []
        
        
        |> (::) ("DirectoryId", data.directoryId |> (JE.string))
        
        
        
        |> (::) ("GroupIds", data.groupIds |> (JE.list (JE.string)))
        
        
        |> JE.object






associateIpGroupsResultEncoder : AssociateIpGroupsResult -> JE.Value
associateIpGroupsResultEncoder data =
    []
        
        |> JE.object






authorizeIpRulesRequestEncoder : AuthorizeIpRulesRequest -> JE.Value
authorizeIpRulesRequestEncoder data =
    []
        
        
        |> (::) ("GroupId", data.groupId |> (JE.string))
        
        
        
        |> (::) ("UserRules", data.userRules |> (JE.list (ipRuleItemEncoder)))
        
        
        |> JE.object






authorizeIpRulesResultEncoder : AuthorizeIpRulesResult -> JE.Value
authorizeIpRulesResultEncoder data =
    []
        
        |> JE.object






clientPropertiesEncoder : ClientProperties -> JE.Value
clientPropertiesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (reconnectEnumToString >> JE.string)
            ("ReconnectEnabled", data.reconnectEnabled)
        
        
        |> JE.object






clientPropertiesResultEncoder : ClientPropertiesResult -> JE.Value
clientPropertiesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceId", data.resourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (clientPropertiesEncoder)
            ("ClientProperties", data.clientProperties)
        
        
        |> JE.object










computeTypeEncoder : ComputeType -> JE.Value
computeTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (computeToString >> JE.string)
            ("Name", data.name)
        
        
        |> JE.object










copyWorkspaceImageRequestEncoder : CopyWorkspaceImageRequest -> JE.Value
copyWorkspaceImageRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> (::) ("SourceImageId", data.sourceImageId |> (JE.string))
        
        
        
        |> (::) ("SourceRegion", data.sourceRegion |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






copyWorkspaceImageResultEncoder : CopyWorkspaceImageResult -> JE.Value
copyWorkspaceImageResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageId", data.imageId)
        
        
        |> JE.object






createIpGroupRequestEncoder : CreateIpGroupRequest -> JE.Value
createIpGroupRequestEncoder data =
    []
        
        
        |> (::) ("GroupName", data.groupName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GroupDesc", data.groupDesc)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ipRuleItemEncoder))
            ("UserRules", data.userRules)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






createIpGroupResultEncoder : CreateIpGroupResult -> JE.Value
createIpGroupResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GroupId", data.groupId)
        
        
        |> JE.object






createTagsRequestEncoder : CreateTagsRequest -> JE.Value
createTagsRequestEncoder data =
    []
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("Tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






createTagsResultEncoder : CreateTagsResult -> JE.Value
createTagsResultEncoder data =
    []
        
        |> JE.object






createWorkspacesRequestEncoder : CreateWorkspacesRequest -> JE.Value
createWorkspacesRequestEncoder data =
    []
        
        
        |> (::) ("Workspaces", data.workspaces |> (JE.list (workspaceRequestEncoder)))
        
        
        |> JE.object






createWorkspacesResultEncoder : CreateWorkspacesResult -> JE.Value
createWorkspacesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (failedCreateWorkspaceRequestEncoder))
            ("FailedRequests", data.failedRequests)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (workspaceEncoder))
            ("PendingRequests", data.pendingRequests)
        
        
        |> JE.object


















defaultWorkspaceCreationPropertiesEncoder : DefaultWorkspaceCreationProperties -> JE.Value
defaultWorkspaceCreationPropertiesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableWorkDocs", data.enableWorkDocs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("EnableInternetAccess", data.enableInternetAccess)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultOu", data.defaultOu)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomSecurityGroupId", data.customSecurityGroupId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UserEnabledAsLocalAdministrator", data.userEnabledAsLocalAdministrator)
        
        
        |> JE.object






deleteIpGroupRequestEncoder : DeleteIpGroupRequest -> JE.Value
deleteIpGroupRequestEncoder data =
    []
        
        
        |> (::) ("GroupId", data.groupId |> (JE.string))
        
        
        |> JE.object






deleteIpGroupResultEncoder : DeleteIpGroupResult -> JE.Value
deleteIpGroupResultEncoder data =
    []
        
        |> JE.object






deleteTagsRequestEncoder : DeleteTagsRequest -> JE.Value
deleteTagsRequestEncoder data =
    []
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("TagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






deleteTagsResultEncoder : DeleteTagsResult -> JE.Value
deleteTagsResultEncoder data =
    []
        
        |> JE.object






deleteWorkspaceImageRequestEncoder : DeleteWorkspaceImageRequest -> JE.Value
deleteWorkspaceImageRequestEncoder data =
    []
        
        
        |> (::) ("ImageId", data.imageId |> (JE.string))
        
        
        |> JE.object






deleteWorkspaceImageResultEncoder : DeleteWorkspaceImageResult -> JE.Value
deleteWorkspaceImageResultEncoder data =
    []
        
        |> JE.object






describeAccountModificationsRequestEncoder : DescribeAccountModificationsRequest -> JE.Value
describeAccountModificationsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeAccountModificationsResultEncoder : DescribeAccountModificationsResult -> JE.Value
describeAccountModificationsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (accountModificationEncoder))
            ("AccountModifications", data.accountModifications)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeAccountRequestEncoder : DescribeAccountRequest -> JE.Value
describeAccountRequestEncoder data =
    []
        
        |> JE.object






describeAccountResultEncoder : DescribeAccountResult -> JE.Value
describeAccountResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (dedicatedTenancySupportResultEnumToString >> JE.string)
            ("DedicatedTenancySupport", data.dedicatedTenancySupport)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DedicatedTenancyManagementCidrRange", data.dedicatedTenancyManagementCidrRange)
        
        
        |> JE.object






describeClientPropertiesRequestEncoder : DescribeClientPropertiesRequest -> JE.Value
describeClientPropertiesRequestEncoder data =
    []
        
        
        |> (::) ("ResourceIds", data.resourceIds |> (JE.list (JE.string)))
        
        
        |> JE.object






describeClientPropertiesResultEncoder : DescribeClientPropertiesResult -> JE.Value
describeClientPropertiesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (clientPropertiesResultEncoder))
            ("ClientPropertiesList", data.clientPropertiesList)
        
        
        |> JE.object






describeIpGroupsRequestEncoder : DescribeIpGroupsRequest -> JE.Value
describeIpGroupsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("GroupIds", data.groupIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






describeIpGroupsResultEncoder : DescribeIpGroupsResult -> JE.Value
describeIpGroupsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (workspacesIpGroupEncoder))
            ("Result", data.result)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeTagsRequestEncoder : DescribeTagsRequest -> JE.Value
describeTagsRequestEncoder data =
    []
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        |> JE.object






describeTagsResultEncoder : DescribeTagsResult -> JE.Value
describeTagsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("TagList", data.tagList)
        
        
        |> JE.object






describeWorkspaceBundlesRequestEncoder : DescribeWorkspaceBundlesRequest -> JE.Value
describeWorkspaceBundlesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("BundleIds", data.bundleIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Owner", data.owner)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeWorkspaceBundlesResultEncoder : DescribeWorkspaceBundlesResult -> JE.Value
describeWorkspaceBundlesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (workspaceBundleEncoder))
            ("Bundles", data.bundles)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeWorkspaceDirectoriesRequestEncoder : DescribeWorkspaceDirectoriesRequest -> JE.Value
describeWorkspaceDirectoriesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("DirectoryIds", data.directoryIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeWorkspaceDirectoriesResultEncoder : DescribeWorkspaceDirectoriesResult -> JE.Value
describeWorkspaceDirectoriesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (workspaceDirectoryEncoder))
            ("Directories", data.directories)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeWorkspaceImagesRequestEncoder : DescribeWorkspaceImagesRequest -> JE.Value
describeWorkspaceImagesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ImageIds", data.imageIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






describeWorkspaceImagesResultEncoder : DescribeWorkspaceImagesResult -> JE.Value
describeWorkspaceImagesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (workspaceImageEncoder))
            ("Images", data.images)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeWorkspacesConnectionStatusRequestEncoder : DescribeWorkspacesConnectionStatusRequest -> JE.Value
describeWorkspacesConnectionStatusRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("WorkspaceIds", data.workspaceIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeWorkspacesConnectionStatusResultEncoder : DescribeWorkspacesConnectionStatusResult -> JE.Value
describeWorkspacesConnectionStatusResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (workspaceConnectionStatusEncoder))
            ("WorkspacesConnectionStatus", data.workspacesConnectionStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeWorkspacesRequestEncoder : DescribeWorkspacesRequest -> JE.Value
describeWorkspacesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("WorkspaceIds", data.workspaceIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DirectoryId", data.directoryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserName", data.userName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BundleId", data.bundleId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeWorkspacesResultEncoder : DescribeWorkspacesResult -> JE.Value
describeWorkspacesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (workspaceEncoder))
            ("Workspaces", data.workspaces)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






disassociateIpGroupsRequestEncoder : DisassociateIpGroupsRequest -> JE.Value
disassociateIpGroupsRequestEncoder data =
    []
        
        
        |> (::) ("DirectoryId", data.directoryId |> (JE.string))
        
        
        
        |> (::) ("GroupIds", data.groupIds |> (JE.list (JE.string)))
        
        
        |> JE.object






disassociateIpGroupsResultEncoder : DisassociateIpGroupsResult -> JE.Value
disassociateIpGroupsResultEncoder data =
    []
        
        |> JE.object






failedCreateWorkspaceRequestEncoder : FailedCreateWorkspaceRequest -> JE.Value
failedCreateWorkspaceRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (workspaceRequestEncoder)
            ("WorkspaceRequest", data.workspaceRequest)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






failedWorkspaceChangeRequestEncoder : FailedWorkspaceChangeRequest -> JE.Value
failedWorkspaceChangeRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkspaceId", data.workspaceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






importWorkspaceImageRequestEncoder : ImportWorkspaceImageRequest -> JE.Value
importWorkspaceImageRequestEncoder data =
    []
        
        
        |> (::) ("Ec2ImageId", data.ec2ImageId |> (JE.string))
        
        
        
        |> (::) ("IngestionProcess", data.ingestionProcess |> (workspaceImageIngestionProcessToString >> JE.string))
        
        
        
        |> (::) ("ImageName", data.imageName |> (JE.string))
        
        
        
        |> (::) ("ImageDescription", data.imageDescription |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






importWorkspaceImageResultEncoder : ImportWorkspaceImageResult -> JE.Value
importWorkspaceImageResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageId", data.imageId)
        
        
        |> JE.object






ipRuleItemEncoder : IpRuleItem -> JE.Value
ipRuleItemEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ipRule", data.ipRule)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ruleDesc", data.ruleDesc)
        
        
        |> JE.object






listAvailableManagementCidrRangesRequestEncoder : ListAvailableManagementCidrRangesRequest -> JE.Value
listAvailableManagementCidrRangesRequestEncoder data =
    []
        
        
        |> (::) ("ManagementCidrRangeConstraint", data.managementCidrRangeConstraint |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listAvailableManagementCidrRangesResultEncoder : ListAvailableManagementCidrRangesResult -> JE.Value
listAvailableManagementCidrRangesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ManagementCidrRanges", data.managementCidrRanges)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object










modificationStateEncoder : ModificationState -> JE.Value
modificationStateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (modificationResourceEnumToString >> JE.string)
            ("Resource", data.resource)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (modificationStateEnumToString >> JE.string)
            ("State", data.state)
        
        
        |> JE.object










modifyAccountRequestEncoder : ModifyAccountRequest -> JE.Value
modifyAccountRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (dedicatedTenancySupportEnumToString >> JE.string)
            ("DedicatedTenancySupport", data.dedicatedTenancySupport)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DedicatedTenancyManagementCidrRange", data.dedicatedTenancyManagementCidrRange)
        
        
        |> JE.object






modifyAccountResultEncoder : ModifyAccountResult -> JE.Value
modifyAccountResultEncoder data =
    []
        
        |> JE.object






modifyClientPropertiesRequestEncoder : ModifyClientPropertiesRequest -> JE.Value
modifyClientPropertiesRequestEncoder data =
    []
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ClientProperties", data.clientProperties |> (clientPropertiesEncoder))
        
        
        |> JE.object






modifyClientPropertiesResultEncoder : ModifyClientPropertiesResult -> JE.Value
modifyClientPropertiesResultEncoder data =
    []
        
        |> JE.object






modifyWorkspacePropertiesRequestEncoder : ModifyWorkspacePropertiesRequest -> JE.Value
modifyWorkspacePropertiesRequestEncoder data =
    []
        
        
        |> (::) ("WorkspaceId", data.workspaceId |> (JE.string))
        
        
        
        |> (::) ("WorkspaceProperties", data.workspaceProperties |> (workspacePropertiesEncoder))
        
        
        |> JE.object






modifyWorkspacePropertiesResultEncoder : ModifyWorkspacePropertiesResult -> JE.Value
modifyWorkspacePropertiesResultEncoder data =
    []
        
        |> JE.object






modifyWorkspaceStateRequestEncoder : ModifyWorkspaceStateRequest -> JE.Value
modifyWorkspaceStateRequestEncoder data =
    []
        
        
        |> (::) ("WorkspaceId", data.workspaceId |> (JE.string))
        
        
        
        |> (::) ("WorkspaceState", data.workspaceState |> (targetWorkspaceStateToString >> JE.string))
        
        
        |> JE.object






modifyWorkspaceStateResultEncoder : ModifyWorkspaceStateResult -> JE.Value
modifyWorkspaceStateResultEncoder data =
    []
        
        |> JE.object






operatingSystemEncoder : OperatingSystem -> JE.Value
operatingSystemEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operatingSystemTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        |> JE.object










rebootRequestEncoder : RebootRequest -> JE.Value
rebootRequestEncoder data =
    []
        
        
        |> (::) ("WorkspaceId", data.workspaceId |> (JE.string))
        
        
        |> JE.object






rebootWorkspacesRequestEncoder : RebootWorkspacesRequest -> JE.Value
rebootWorkspacesRequestEncoder data =
    []
        
        
        |> (::) ("RebootWorkspaceRequests", data.rebootWorkspaceRequests |> (JE.list (rebootRequestEncoder)))
        
        
        |> JE.object






rebootWorkspacesResultEncoder : RebootWorkspacesResult -> JE.Value
rebootWorkspacesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (failedWorkspaceChangeRequestEncoder))
            ("FailedRequests", data.failedRequests)
        
        
        |> JE.object






rebuildRequestEncoder : RebuildRequest -> JE.Value
rebuildRequestEncoder data =
    []
        
        
        |> (::) ("WorkspaceId", data.workspaceId |> (JE.string))
        
        
        |> JE.object






rebuildWorkspacesRequestEncoder : RebuildWorkspacesRequest -> JE.Value
rebuildWorkspacesRequestEncoder data =
    []
        
        
        |> (::) ("RebuildWorkspaceRequests", data.rebuildWorkspaceRequests |> (JE.list (rebuildRequestEncoder)))
        
        
        |> JE.object






rebuildWorkspacesResultEncoder : RebuildWorkspacesResult -> JE.Value
rebuildWorkspacesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (failedWorkspaceChangeRequestEncoder))
            ("FailedRequests", data.failedRequests)
        
        
        |> JE.object










revokeIpRulesRequestEncoder : RevokeIpRulesRequest -> JE.Value
revokeIpRulesRequestEncoder data =
    []
        
        
        |> (::) ("GroupId", data.groupId |> (JE.string))
        
        
        
        |> (::) ("UserRules", data.userRules |> (JE.list (JE.string)))
        
        
        |> JE.object






revokeIpRulesResultEncoder : RevokeIpRulesResult -> JE.Value
revokeIpRulesResultEncoder data =
    []
        
        |> JE.object






rootStorageEncoder : RootStorage -> JE.Value
rootStorageEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Capacity", data.capacity)
        
        
        |> JE.object










startRequestEncoder : StartRequest -> JE.Value
startRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkspaceId", data.workspaceId)
        
        
        |> JE.object






startWorkspacesRequestEncoder : StartWorkspacesRequest -> JE.Value
startWorkspacesRequestEncoder data =
    []
        
        
        |> (::) ("StartWorkspaceRequests", data.startWorkspaceRequests |> (JE.list (startRequestEncoder)))
        
        
        |> JE.object






startWorkspacesResultEncoder : StartWorkspacesResult -> JE.Value
startWorkspacesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (failedWorkspaceChangeRequestEncoder))
            ("FailedRequests", data.failedRequests)
        
        
        |> JE.object






stopRequestEncoder : StopRequest -> JE.Value
stopRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkspaceId", data.workspaceId)
        
        
        |> JE.object






stopWorkspacesRequestEncoder : StopWorkspacesRequest -> JE.Value
stopWorkspacesRequestEncoder data =
    []
        
        
        |> (::) ("StopWorkspaceRequests", data.stopWorkspaceRequests |> (JE.list (stopRequestEncoder)))
        
        
        |> JE.object






stopWorkspacesResultEncoder : StopWorkspacesResult -> JE.Value
stopWorkspacesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (failedWorkspaceChangeRequestEncoder))
            ("FailedRequests", data.failedRequests)
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object










terminateRequestEncoder : TerminateRequest -> JE.Value
terminateRequestEncoder data =
    []
        
        
        |> (::) ("WorkspaceId", data.workspaceId |> (JE.string))
        
        
        |> JE.object






terminateWorkspacesRequestEncoder : TerminateWorkspacesRequest -> JE.Value
terminateWorkspacesRequestEncoder data =
    []
        
        
        |> (::) ("TerminateWorkspaceRequests", data.terminateWorkspaceRequests |> (JE.list (terminateRequestEncoder)))
        
        
        |> JE.object






terminateWorkspacesResultEncoder : TerminateWorkspacesResult -> JE.Value
terminateWorkspacesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (failedWorkspaceChangeRequestEncoder))
            ("FailedRequests", data.failedRequests)
        
        
        |> JE.object






updateRulesOfIpGroupRequestEncoder : UpdateRulesOfIpGroupRequest -> JE.Value
updateRulesOfIpGroupRequestEncoder data =
    []
        
        
        |> (::) ("GroupId", data.groupId |> (JE.string))
        
        
        
        |> (::) ("UserRules", data.userRules |> (JE.list (ipRuleItemEncoder)))
        
        
        |> JE.object






updateRulesOfIpGroupResultEncoder : UpdateRulesOfIpGroupResult -> JE.Value
updateRulesOfIpGroupResultEncoder data =
    []
        
        |> JE.object






userStorageEncoder : UserStorage -> JE.Value
userStorageEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Capacity", data.capacity)
        
        
        |> JE.object






workspaceEncoder : Workspace -> JE.Value
workspaceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkspaceId", data.workspaceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DirectoryId", data.directoryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserName", data.userName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IpAddress", data.ipAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workspaceStateToString >> JE.string)
            ("State", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BundleId", data.bundleId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SubnetId", data.subnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ComputerName", data.computerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VolumeEncryptionKey", data.volumeEncryptionKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UserVolumeEncryptionEnabled", data.userVolumeEncryptionEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("RootVolumeEncryptionEnabled", data.rootVolumeEncryptionEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workspacePropertiesEncoder)
            ("WorkspaceProperties", data.workspaceProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (modificationStateEncoder))
            ("ModificationStates", data.modificationStates)
        
        
        |> JE.object






workspaceBundleEncoder : WorkspaceBundle -> JE.Value
workspaceBundleEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BundleId", data.bundleId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Owner", data.owner)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (rootStorageEncoder)
            ("RootStorage", data.rootStorage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userStorageEncoder)
            ("UserStorage", data.userStorage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (computeTypeEncoder)
            ("ComputeType", data.computeType)
        
        
        |> JE.object






workspaceConnectionStatusEncoder : WorkspaceConnectionStatus -> JE.Value
workspaceConnectionStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkspaceId", data.workspaceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (connectionStateToString >> JE.string)
            ("ConnectionState", data.connectionState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ConnectionStateCheckTimestamp", data.connectionStateCheckTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastKnownUserConnectionTimestamp", data.lastKnownUserConnectionTimestamp)
        
        
        |> JE.object






workspaceDirectoryEncoder : WorkspaceDirectory -> JE.Value
workspaceDirectoryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DirectoryId", data.directoryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Alias", data.alias)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DirectoryName", data.directoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RegistrationCode", data.registrationCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SubnetIds", data.subnetIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("DnsIpAddresses", data.dnsIpAddresses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomerUserName", data.customerUserName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IamRoleId", data.iamRoleId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workspaceDirectoryTypeToString >> JE.string)
            ("DirectoryType", data.directoryType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WorkspaceSecurityGroupId", data.workspaceSecurityGroupId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workspaceDirectoryStateToString >> JE.string)
            ("State", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (defaultWorkspaceCreationPropertiesEncoder)
            ("WorkspaceCreationProperties", data.workspaceCreationProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ipGroupIds", data.ipGroupIds)
        
        
        |> JE.object














workspaceImageEncoder : WorkspaceImage -> JE.Value
workspaceImageEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageId", data.imageId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (operatingSystemEncoder)
            ("OperatingSystem", data.operatingSystem)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workspaceImageStateToString >> JE.string)
            ("State", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workspaceImageRequiredTenancyToString >> JE.string)
            ("RequiredTenancy", data.requiredTenancy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object


















workspacePropertiesEncoder : WorkspaceProperties -> JE.Value
workspacePropertiesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (runningModeToString >> JE.string)
            ("RunningMode", data.runningMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RunningModeAutoStopTimeoutInMinutes", data.runningModeAutoStopTimeoutInMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RootVolumeSizeGib", data.rootVolumeSizeGib)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("UserVolumeSizeGib", data.userVolumeSizeGib)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (computeToString >> JE.string)
            ("ComputeTypeName", data.computeTypeName)
        
        
        |> JE.object






workspaceRequestEncoder : WorkspaceRequest -> JE.Value
workspaceRequestEncoder data =
    []
        
        
        |> (::) ("DirectoryId", data.directoryId |> (JE.string))
        
        
        
        |> (::) ("UserName", data.userName |> (JE.string))
        
        
        
        |> (::) ("BundleId", data.bundleId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VolumeEncryptionKey", data.volumeEncryptionKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UserVolumeEncryptionEnabled", data.userVolumeEncryptionEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("RootVolumeEncryptionEnabled", data.rootVolumeEncryptionEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (workspacePropertiesEncoder)
            ("WorkspaceProperties", data.workspaceProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object










workspacesIpGroupEncoder : WorkspacesIpGroup -> JE.Value
workspacesIpGroupEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("groupId", data.groupId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("groupName", data.groupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("groupDesc", data.groupDesc)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ipRuleItemEncoder))
            ("userRules", data.userRules)
        
        
        |> JE.object





