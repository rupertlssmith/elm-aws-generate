module AWS.CodeStar
    exposing
        ( service
        , associateTeamMember
        , AssociateTeamMemberOptions
        , createProject
        , CreateProjectOptions
        , createUserProfile
        , CreateUserProfileOptions
        , deleteProject
        , DeleteProjectOptions
        , deleteUserProfile
        , describeProject
        , describeUserProfile
        , disassociateTeamMember
        , listProjects
        , ListProjectsOptions
        , listResources
        , ListResourcesOptions
        , listTagsForProject
        , ListTagsForProjectOptions
        , listTeamMembers
        , ListTeamMembersOptions
        , listUserProfiles
        , ListUserProfilesOptions
        , tagProject
        , untagProject
        , updateProject
        , UpdateProjectOptions
        , updateTeamMember
        , UpdateTeamMemberOptions
        , updateUserProfile
        , UpdateUserProfileOptions
        , AssociateTeamMemberResult
        , Code
        , CodeCommitCodeDestination
        , CodeDestination
        , CodeSource
        , CreateProjectResult
        , CreateUserProfileResult
        , DeleteProjectResult
        , DeleteUserProfileResult
        , DescribeProjectResult
        , DescribeUserProfileResult
        , DisassociateTeamMemberResult
        , GitHubCodeDestination
        , ListProjectsResult
        , ListResourcesResult
        , ListTagsForProjectResult
        , ListTeamMembersResult
        , ListUserProfilesResult
        , ProjectStatus
        , ProjectSummary
        , Resource
        , S3Location
        , TagProjectResult
        , TeamMember
        , Toolchain
        , ToolchainSource
        , UntagProjectResult
        , UpdateProjectResult
        , UpdateTeamMemberResult
        , UpdateUserProfileResult
        , UserProfileSummary
        )

{-| <fullname>AWS CodeStar</fullname> <p>This is the API reference for AWS CodeStar. This reference provides descriptions of the operations and data types for the AWS CodeStar API along with usage examples.</p> <p>You can use the AWS CodeStar API to work with:</p> <p>Projects and their resources, by calling the following:</p> <ul> <li> <p> <code>DeleteProject</code>, which deletes a project.</p> </li> <li> <p> <code>DescribeProject</code>, which lists the attributes of a project.</p> </li> <li> <p> <code>ListProjects</code>, which lists all projects associated with your AWS account.</p> </li> <li> <p> <code>ListResources</code>, which lists the resources associated with a project.</p> </li> <li> <p> <code>ListTagsForProject</code>, which lists the tags associated with a project.</p> </li> <li> <p> <code>TagProject</code>, which adds tags to a project.</p> </li> <li> <p> <code>UntagProject</code>, which removes tags from a project.</p> </li> <li> <p> <code>UpdateProject</code>, which updates the attributes of a project.</p> </li> </ul> <p>Teams and team members, by calling the following:</p> <ul> <li> <p> <code>AssociateTeamMember</code>, which adds an IAM user to the team for a project.</p> </li> <li> <p> <code>DisassociateTeamMember</code>, which removes an IAM user from the team for a project.</p> </li> <li> <p> <code>ListTeamMembers</code>, which lists all the IAM users in the team for a project, including their roles and attributes.</p> </li> <li> <p> <code>UpdateTeamMember</code>, which updates a team member's attributes in a project.</p> </li> </ul> <p>Users, by calling the following:</p> <ul> <li> <p> <code>CreateUserProfile</code>, which creates a user profile that contains data associated with the user across all projects.</p> </li> <li> <p> <code>DeleteUserProfile</code>, which deletes all user profile information across all projects.</p> </li> <li> <p> <code>DescribeUserProfile</code>, which describes the profile of a user.</p> </li> <li> <p> <code>ListUserProfiles</code>, which lists all user profiles.</p> </li> <li> <p> <code>UpdateUserProfile</code>, which updates the profile for a user.</p> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)

## Operations

* [associateTeamMember](#associateTeamMember)
* [AssociateTeamMemberOptions](#AssociateTeamMemberOptions)
* [createProject](#createProject)
* [CreateProjectOptions](#CreateProjectOptions)
* [createUserProfile](#createUserProfile)
* [CreateUserProfileOptions](#CreateUserProfileOptions)
* [deleteProject](#deleteProject)
* [DeleteProjectOptions](#DeleteProjectOptions)
* [deleteUserProfile](#deleteUserProfile)
* [describeProject](#describeProject)
* [describeUserProfile](#describeUserProfile)
* [disassociateTeamMember](#disassociateTeamMember)
* [listProjects](#listProjects)
* [ListProjectsOptions](#ListProjectsOptions)
* [listResources](#listResources)
* [ListResourcesOptions](#ListResourcesOptions)
* [listTagsForProject](#listTagsForProject)
* [ListTagsForProjectOptions](#ListTagsForProjectOptions)
* [listTeamMembers](#listTeamMembers)
* [ListTeamMembersOptions](#ListTeamMembersOptions)
* [listUserProfiles](#listUserProfiles)
* [ListUserProfilesOptions](#ListUserProfilesOptions)
* [tagProject](#tagProject)
* [untagProject](#untagProject)
* [updateProject](#updateProject)
* [UpdateProjectOptions](#UpdateProjectOptions)
* [updateTeamMember](#updateTeamMember)
* [UpdateTeamMemberOptions](#UpdateTeamMemberOptions)
* [updateUserProfile](#updateUserProfile)
* [UpdateUserProfileOptions](#UpdateUserProfileOptions)


@docs associateTeamMember,AssociateTeamMemberOptions,createProject,CreateProjectOptions,createUserProfile,CreateUserProfileOptions,deleteProject,DeleteProjectOptions,deleteUserProfile,describeProject,describeUserProfile,disassociateTeamMember,listProjects,ListProjectsOptions,listResources,ListResourcesOptions,listTagsForProject,ListTagsForProjectOptions,listTeamMembers,ListTeamMembersOptions,listUserProfiles,ListUserProfilesOptions,tagProject,untagProject,updateProject,UpdateProjectOptions,updateTeamMember,UpdateTeamMemberOptions,updateUserProfile,UpdateUserProfileOptions

## Responses

* [AssociateTeamMemberResult](#AssociateTeamMemberResult)
* [CreateProjectResult](#CreateProjectResult)
* [CreateUserProfileResult](#CreateUserProfileResult)
* [DeleteProjectResult](#DeleteProjectResult)
* [DeleteUserProfileResult](#DeleteUserProfileResult)
* [DescribeProjectResult](#DescribeProjectResult)
* [DescribeUserProfileResult](#DescribeUserProfileResult)
* [DisassociateTeamMemberResult](#DisassociateTeamMemberResult)
* [ListProjectsResult](#ListProjectsResult)
* [ListResourcesResult](#ListResourcesResult)
* [ListTagsForProjectResult](#ListTagsForProjectResult)
* [ListTeamMembersResult](#ListTeamMembersResult)
* [ListUserProfilesResult](#ListUserProfilesResult)
* [TagProjectResult](#TagProjectResult)
* [UntagProjectResult](#UntagProjectResult)
* [UpdateProjectResult](#UpdateProjectResult)
* [UpdateTeamMemberResult](#UpdateTeamMemberResult)
* [UpdateUserProfileResult](#UpdateUserProfileResult)


@docs AssociateTeamMemberResult,CreateProjectResult,CreateUserProfileResult,DeleteProjectResult,DeleteUserProfileResult,DescribeProjectResult,DescribeUserProfileResult,DisassociateTeamMemberResult,ListProjectsResult,ListResourcesResult,ListTagsForProjectResult,ListTeamMembersResult,ListUserProfilesResult,TagProjectResult,UntagProjectResult,UpdateProjectResult,UpdateTeamMemberResult,UpdateUserProfileResult

## Records

* [Code](#Code)
* [CodeCommitCodeDestination](#CodeCommitCodeDestination)
* [CodeDestination](#CodeDestination)
* [CodeSource](#CodeSource)
* [GitHubCodeDestination](#GitHubCodeDestination)
* [ProjectStatus](#ProjectStatus)
* [ProjectSummary](#ProjectSummary)
* [Resource](#Resource)
* [S3Location](#S3Location)
* [TeamMember](#TeamMember)
* [Toolchain](#Toolchain)
* [ToolchainSource](#ToolchainSource)
* [UserProfileSummary](#UserProfileSummary)


@docs Code,CodeCommitCodeDestination,CodeDestination,CodeSource,GitHubCodeDestination,ProjectStatus,ProjectSummary,Resource,S3Location,TeamMember,Toolchain,ToolchainSource,UserProfileSummary

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
import Dict exposing (Dict)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "codestar"
        "2017-04-19"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "CodeStar_20170419")



-- OPERATIONS

{-| <p>Adds an IAM user to the team for an AWS CodeStar project.</p>

__Required Parameters__

* `projectId` __:__ `String`
* `userArn` __:__ `String`
* `projectRole` __:__ `String`


-}

associateTeamMember :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( AssociateTeamMemberOptions -> AssociateTeamMemberOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateTeamMemberResult)

associateTeamMember projectId userArn projectRole setOptions =
    
    let
        requestInput = AssociateTeamMemberRequest
            
            projectId
            
            options.clientRequestToken
            
            userArn
            
            projectRole
            
            options.remoteAccessAllowed
            
        
        options = setOptions (AssociateTeamMemberOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateTeamMemberRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateTeamMember"
                
                (AWS.Core.Decode.ResultDecoder "AssociateTeamMemberResult" associateTeamMemberResultDecoder)
                
            )



{-| Options for a associateTeamMember request
-}
type alias AssociateTeamMemberOptions =
    {
    clientRequestToken : Maybe String,remoteAccessAllowed : Maybe Bool
    }



{-| <p>Creates a project, including project resources. This action creates a project based on a submitted project request. A set of source code files and a toolchain template file can be included with the project request. If these are not provided, an empty project is created.</p>

__Required Parameters__

* `name` __:__ `String`
* `id` __:__ `String`


-}

createProject :
  
    String ->
  
    String ->
  
  
    ( CreateProjectOptions -> CreateProjectOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateProjectResult)

createProject name id setOptions =
    
    let
        requestInput = CreateProjectRequest
            
            name
            
            id
            
            options.description
            
            options.clientRequestToken
            
            options.sourceCode
            
            options.toolchain
            
            options.tags
            
        
        options = setOptions (CreateProjectOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createProjectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateProject"
                
                (AWS.Core.Decode.ResultDecoder "CreateProjectResult" createProjectResultDecoder)
                
            )



{-| Options for a createProject request
-}
type alias CreateProjectOptions =
    {
    description : Maybe String,clientRequestToken : Maybe String,sourceCode : Maybe (List Code),toolchain : Maybe Toolchain,tags : Maybe (Dict String String)
    }



{-| <p>Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.</p>

__Required Parameters__

* `userArn` __:__ `String`
* `displayName` __:__ `String`
* `emailAddress` __:__ `String`


-}

createUserProfile :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateUserProfileOptions -> CreateUserProfileOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateUserProfileResult)

createUserProfile userArn displayName emailAddress setOptions =
    
    let
        requestInput = CreateUserProfileRequest
            
            userArn
            
            displayName
            
            emailAddress
            
            options.sshPublicKey
            
        
        options = setOptions (CreateUserProfileOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createUserProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateUserProfile"
                
                (AWS.Core.Decode.ResultDecoder "CreateUserProfileResult" createUserProfileResultDecoder)
                
            )



{-| Options for a createUserProfile request
-}
type alias CreateUserProfileOptions =
    {
    sshPublicKey : Maybe String
    }



{-| <p>Deletes a project, including project resources. Does not delete users associated with the project, but does delete the IAM roles that allowed access to the project.</p>

__Required Parameters__

* `id` __:__ `String`


-}

deleteProject :
  
    String ->
  
  
    ( DeleteProjectOptions -> DeleteProjectOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteProjectResult)

deleteProject id setOptions =
    
    let
        requestInput = DeleteProjectRequest
            
            id
            
            options.clientRequestToken
            
            options.deleteStack
            
        
        options = setOptions (DeleteProjectOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteProjectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteProject"
                
                (AWS.Core.Decode.ResultDecoder "DeleteProjectResult" deleteProjectResultDecoder)
                
            )



{-| Options for a deleteProject request
-}
type alias DeleteProjectOptions =
    {
    clientRequestToken : Maybe String,deleteStack : Maybe Bool
    }



{-| <p>Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address. It does not delete the history of that user, for example the history of commits made by that user.</p>

__Required Parameters__

* `userArn` __:__ `String`


-}

deleteUserProfile :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteUserProfileResult)

deleteUserProfile userArn =
    
    let
        requestInput = DeleteUserProfileRequest
            
            userArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteUserProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteUserProfile"
                
                (AWS.Core.Decode.ResultDecoder "DeleteUserProfileResult" deleteUserProfileResultDecoder)
                
            )





{-| <p>Describes a project and its resources.</p>

__Required Parameters__

* `id` __:__ `String`


-}

describeProject :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeProjectResult)

describeProject id =
    
    let
        requestInput = DescribeProjectRequest
            
            id
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeProjectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeProject"
                
                (AWS.Core.Decode.ResultDecoder "DescribeProjectResult" describeProjectResultDecoder)
                
            )





{-| <p>Describes a user in AWS CodeStar and the user attributes across all projects.</p>

__Required Parameters__

* `userArn` __:__ `String`


-}

describeUserProfile :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeUserProfileResult)

describeUserProfile userArn =
    
    let
        requestInput = DescribeUserProfileRequest
            
            userArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeUserProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeUserProfile"
                
                (AWS.Core.Decode.ResultDecoder "DescribeUserProfileResult" describeUserProfileResultDecoder)
                
            )





{-| <p>Removes a user from a project. Removing a user from a project also removes the IAM policies from that user that allowed access to the project and its resources. Disassociating a team member does not remove that user's profile from AWS CodeStar. It does not remove the user from IAM.</p>

__Required Parameters__

* `projectId` __:__ `String`
* `userArn` __:__ `String`


-}

disassociateTeamMember :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateTeamMemberResult)

disassociateTeamMember projectId userArn =
    
    let
        requestInput = DisassociateTeamMemberRequest
            
            projectId
            
            userArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateTeamMemberRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateTeamMember"
                
                (AWS.Core.Decode.ResultDecoder "DisassociateTeamMemberResult" disassociateTeamMemberResultDecoder)
                
            )





{-| <p>Lists all projects in AWS CodeStar associated with your AWS account.</p>

__Required Parameters__



-}

listProjects :
  
  
    ( ListProjectsOptions -> ListProjectsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListProjectsResult)

listProjects setOptions =
    
    let
        requestInput = ListProjectsRequest
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListProjectsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listProjectsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListProjects"
                
                (AWS.Core.Decode.ResultDecoder "ListProjectsResult" listProjectsResultDecoder)
                
            )



{-| Options for a listProjects request
-}
type alias ListProjectsOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Lists resources associated with a project in AWS CodeStar.</p>

__Required Parameters__

* `projectId` __:__ `String`


-}

listResources :
  
    String ->
  
  
    ( ListResourcesOptions -> ListResourcesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListResourcesResult)

listResources projectId setOptions =
    
    let
        requestInput = ListResourcesRequest
            
            projectId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListResourcesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listResourcesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListResources"
                
                (AWS.Core.Decode.ResultDecoder "ListResourcesResult" listResourcesResultDecoder)
                
            )



{-| Options for a listResources request
-}
type alias ListResourcesOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Gets the tags for a project.</p>

__Required Parameters__

* `id` __:__ `String`


-}

listTagsForProject :
  
    String ->
  
  
    ( ListTagsForProjectOptions -> ListTagsForProjectOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForProjectResult)

listTagsForProject id setOptions =
    
    let
        requestInput = ListTagsForProjectRequest
            
            id
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListTagsForProjectOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTagsForProjectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForProject"
                
                (AWS.Core.Decode.ResultDecoder "ListTagsForProjectResult" listTagsForProjectResultDecoder)
                
            )



{-| Options for a listTagsForProject request
-}
type alias ListTagsForProjectOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Lists all team members associated with a project.</p>

__Required Parameters__

* `projectId` __:__ `String`


-}

listTeamMembers :
  
    String ->
  
  
    ( ListTeamMembersOptions -> ListTeamMembersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTeamMembersResult)

listTeamMembers projectId setOptions =
    
    let
        requestInput = ListTeamMembersRequest
            
            projectId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListTeamMembersOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTeamMembersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTeamMembers"
                
                (AWS.Core.Decode.ResultDecoder "ListTeamMembersResult" listTeamMembersResultDecoder)
                
            )



{-| Options for a listTeamMembers request
-}
type alias ListTeamMembersOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Lists all the user profiles configured for your AWS account in AWS CodeStar.</p>

__Required Parameters__



-}

listUserProfiles :
  
  
    ( ListUserProfilesOptions -> ListUserProfilesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListUserProfilesResult)

listUserProfiles setOptions =
    
    let
        requestInput = ListUserProfilesRequest
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListUserProfilesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listUserProfilesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListUserProfiles"
                
                (AWS.Core.Decode.ResultDecoder "ListUserProfilesResult" listUserProfilesResultDecoder)
                
            )



{-| Options for a listUserProfiles request
-}
type alias ListUserProfilesOptions =
    {
    nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Adds tags to a project.</p>

__Required Parameters__

* `id` __:__ `String`
* `tags` __:__ `(Dict String String)`


-}

tagProject :
  
    String ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagProjectResult)

tagProject id tags =
    
    let
        requestInput = TagProjectRequest
            
            id
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> tagProjectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TagProject"
                
                (AWS.Core.Decode.ResultDecoder "TagProjectResult" tagProjectResultDecoder)
                
            )





{-| <p>Removes tags from a project.</p>

__Required Parameters__

* `id` __:__ `String`
* `tags` __:__ `(List String)`


-}

untagProject :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagProjectResult)

untagProject id tags =
    
    let
        requestInput = UntagProjectRequest
            
            id
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> untagProjectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UntagProject"
                
                (AWS.Core.Decode.ResultDecoder "UntagProjectResult" untagProjectResultDecoder)
                
            )





{-| <p>Updates a project in AWS CodeStar.</p>

__Required Parameters__

* `id` __:__ `String`


-}

updateProject :
  
    String ->
  
  
    ( UpdateProjectOptions -> UpdateProjectOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateProjectResult)

updateProject id setOptions =
    
    let
        requestInput = UpdateProjectRequest
            
            id
            
            options.name
            
            options.description
            
        
        options = setOptions (UpdateProjectOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateProjectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateProject"
                
                (AWS.Core.Decode.ResultDecoder "UpdateProjectResult" updateProjectResultDecoder)
                
            )



{-| Options for a updateProject request
-}
type alias UpdateProjectOptions =
    {
    name : Maybe String,description : Maybe String
    }



{-| <p>Updates a team member's attributes in an AWS CodeStar project. For example, you can change a team member's role in the project, or change whether they have remote access to project resources.</p>

__Required Parameters__

* `projectId` __:__ `String`
* `userArn` __:__ `String`


-}

updateTeamMember :
  
    String ->
  
    String ->
  
  
    ( UpdateTeamMemberOptions -> UpdateTeamMemberOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTeamMemberResult)

updateTeamMember projectId userArn setOptions =
    
    let
        requestInput = UpdateTeamMemberRequest
            
            projectId
            
            userArn
            
            options.projectRole
            
            options.remoteAccessAllowed
            
        
        options = setOptions (UpdateTeamMemberOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateTeamMemberRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateTeamMember"
                
                (AWS.Core.Decode.ResultDecoder "UpdateTeamMemberResult" updateTeamMemberResultDecoder)
                
            )



{-| Options for a updateTeamMember request
-}
type alias UpdateTeamMemberOptions =
    {
    projectRole : Maybe String,remoteAccessAllowed : Maybe Bool
    }



{-| <p>Updates a user's profile in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar. </p>

__Required Parameters__

* `userArn` __:__ `String`


-}

updateUserProfile :
  
    String ->
  
  
    ( UpdateUserProfileOptions -> UpdateUserProfileOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateUserProfileResult)

updateUserProfile userArn setOptions =
    
    let
        requestInput = UpdateUserProfileRequest
            
            userArn
            
            options.displayName
            
            options.emailAddress
            
            options.sshPublicKey
            
        
        options = setOptions (UpdateUserProfileOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateUserProfileRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateUserProfile"
                
                (AWS.Core.Decode.ResultDecoder "UpdateUserProfileResult" updateUserProfileResultDecoder)
                
            )



{-| Options for a updateUserProfile request
-}
type alias UpdateUserProfileOptions =
    {
    displayName : Maybe String,emailAddress : Maybe String,sshPublicKey : Maybe String
    }




{-| Type of HTTP response from associateTeamMemb
-}
type alias AssociateTeamMemberResult =
    { clientRequestToken : Maybe String
    }



associateTeamMemberResultDecoder : JD.Decoder AssociateTeamMemberResult
associateTeamMemberResultDecoder =
    JD.succeed AssociateTeamMemberResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["clientRequestToken", "ClientRequestToken"]
            JD.string
        )
        




associateTeamMemberResultToString : AssociateTeamMemberResult -> String -- List (String, String)
associateTeamMemberResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clientRequestToken" "" -- val.clientRequestToken
        
    --     |> Dict.toList
    ""



{-| <p>Location and destination information about the source code files provided with the project request. The source code is uploaded to the new project source repository after project creation.</p>
-}
type alias Code =
    { source : CodeSource
    , destination : CodeDestination
    }



codeDecoder : JD.Decoder Code
codeDecoder =
    JD.succeed Code
        
        |> JDP.custom (AWS.Core.Decode.required
            ["source", "Source"]
            codeSourceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["destination", "Destination"]
            codeDestinationDecoder
        )
        




codeToString : Code -> String -- List (String, String)
codeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "destination" "" -- val.destination
        
    --     |> Dict.toList
    ""



{-| <p>Information about the AWS CodeCommit repository to be created in AWS CodeStar. This is where the source code files provided with the project request will be uploaded after project creation.</p>
-}
type alias CodeCommitCodeDestination =
    { name : String
    }



codeCommitCodeDestinationDecoder : JD.Decoder CodeCommitCodeDestination
codeCommitCodeDestinationDecoder =
    JD.succeed CodeCommitCodeDestination
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        




codeCommitCodeDestinationToString : CodeCommitCodeDestination -> String -- List (String, String)
codeCommitCodeDestinationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>The repository to be created in AWS CodeStar. Valid values are AWS CodeCommit or GitHub. After AWS CodeStar provisions the new repository, the source code files provided with the project request are placed in the repository.</p>
-}
type alias CodeDestination =
    { codeCommit : Maybe CodeCommitCodeDestination
    , gitHub : Maybe GitHubCodeDestination
    }



codeDestinationDecoder : JD.Decoder CodeDestination
codeDestinationDecoder =
    JD.succeed CodeDestination
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["codeCommit", "CodeCommit"]
            codeCommitCodeDestinationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["gitHub", "GitHub"]
            gitHubCodeDestinationDecoder
        )
        




codeDestinationToString : CodeDestination -> String -- List (String, String)
codeDestinationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "codeCommit" "" -- val.codeCommit
        
    --     |> Dict.insert
    --         "gitHub" "" -- val.gitHub
        
    --     |> Dict.toList
    ""



{-| <p>The location where the source code files provided with the project request are stored. AWS CodeStar retrieves the files during project creation.</p>
-}
type alias CodeSource =
    { s3 : S3Location
    }



codeSourceDecoder : JD.Decoder CodeSource
codeSourceDecoder =
    JD.succeed CodeSource
        
        |> JDP.custom (AWS.Core.Decode.required
            ["s3", "S3"]
            s3LocationDecoder
        )
        




codeSourceToString : CodeSource -> String -- List (String, String)
codeSourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3" "" -- val.s3
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createProje
-}
type alias CreateProjectResult =
    { id : String
    , arn : String
    , clientRequestToken : Maybe String
    , projectTemplateId : Maybe String
    }



createProjectResultDecoder : JD.Decoder CreateProjectResult
createProjectResultDecoder =
    JD.succeed CreateProjectResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["clientRequestToken", "ClientRequestToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["projectTemplateId", "ProjectTemplateId"]
            JD.string
        )
        




createProjectResultToString : CreateProjectResult -> String -- List (String, String)
createProjectResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "clientRequestToken" "" -- val.clientRequestToken
        
    --     |> Dict.insert
    --         "projectTemplateId" "" -- val.projectTemplateId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createUserProfi
-}
type alias CreateUserProfileResult =
    { userArn : String
    , displayName : Maybe String
    , emailAddress : Maybe String
    , sshPublicKey : Maybe String
    , createdTimestamp : Maybe Posix
    , lastModifiedTimestamp : Maybe Posix
    }



createUserProfileResultDecoder : JD.Decoder CreateUserProfileResult
createUserProfileResultDecoder =
    JD.succeed CreateUserProfileResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["userArn", "UserArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["displayName", "DisplayName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["emailAddress", "EmailAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sshPublicKey", "SshPublicKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdTimestamp", "CreatedTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastModifiedTimestamp", "LastModifiedTimestamp"]
            JDX.datetime
        )
        




createUserProfileResultToString : CreateUserProfileResult -> String -- List (String, String)
createUserProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userArn" "" -- val.userArn
        
    --     |> Dict.insert
    --         "displayName" "" -- val.displayName
        
    --     |> Dict.insert
    --         "emailAddress" "" -- val.emailAddress
        
    --     |> Dict.insert
    --         "sshPublicKey" "" -- val.sshPublicKey
        
    --     |> Dict.insert
    --         "createdTimestamp" "" -- val.createdTimestamp
        
    --     |> Dict.insert
    --         "lastModifiedTimestamp" "" -- val.lastModifiedTimestamp
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteProje
-}
type alias DeleteProjectResult =
    { stackId : Maybe String
    , projectArn : Maybe String
    }



deleteProjectResultDecoder : JD.Decoder DeleteProjectResult
deleteProjectResultDecoder =
    JD.succeed DeleteProjectResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stackId", "StackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["projectArn", "ProjectArn"]
            JD.string
        )
        




deleteProjectResultToString : DeleteProjectResult -> String -- List (String, String)
deleteProjectResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "projectArn" "" -- val.projectArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteUserProfi
-}
type alias DeleteUserProfileResult =
    { userArn : String
    }



deleteUserProfileResultDecoder : JD.Decoder DeleteUserProfileResult
deleteUserProfileResultDecoder =
    JD.succeed DeleteUserProfileResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["userArn", "UserArn"]
            JD.string
        )
        




deleteUserProfileResultToString : DeleteUserProfileResult -> String -- List (String, String)
deleteUserProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userArn" "" -- val.userArn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeProje
-}
type alias DescribeProjectResult =
    { name : Maybe String
    , id : Maybe String
    , arn : Maybe String
    , description : Maybe String
    , clientRequestToken : Maybe String
    , createdTimeStamp : Maybe Posix
    , stackId : Maybe String
    , projectTemplateId : Maybe String
    , status : Maybe ProjectStatus
    }



describeProjectResultDecoder : JD.Decoder DescribeProjectResult
describeProjectResultDecoder =
    JD.succeed DescribeProjectResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["clientRequestToken", "ClientRequestToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdTimeStamp", "CreatedTimeStamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stackId", "StackId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["projectTemplateId", "ProjectTemplateId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            projectStatusDecoder
        )
        




describeProjectResultToString : DescribeProjectResult -> String -- List (String, String)
describeProjectResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "clientRequestToken" "" -- val.clientRequestToken
        
    --     |> Dict.insert
    --         "createdTimeStamp" "" -- val.createdTimeStamp
        
    --     |> Dict.insert
    --         "stackId" "" -- val.stackId
        
    --     |> Dict.insert
    --         "projectTemplateId" "" -- val.projectTemplateId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeUserProfi
-}
type alias DescribeUserProfileResult =
    { userArn : String
    , displayName : Maybe String
    , emailAddress : Maybe String
    , sshPublicKey : Maybe String
    , createdTimestamp : Posix
    , lastModifiedTimestamp : Posix
    }



describeUserProfileResultDecoder : JD.Decoder DescribeUserProfileResult
describeUserProfileResultDecoder =
    JD.succeed DescribeUserProfileResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["userArn", "UserArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["displayName", "DisplayName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["emailAddress", "EmailAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sshPublicKey", "SshPublicKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["createdTimestamp", "CreatedTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["lastModifiedTimestamp", "LastModifiedTimestamp"]
            JDX.datetime
        )
        




describeUserProfileResultToString : DescribeUserProfileResult -> String -- List (String, String)
describeUserProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userArn" "" -- val.userArn
        
    --     |> Dict.insert
    --         "displayName" "" -- val.displayName
        
    --     |> Dict.insert
    --         "emailAddress" "" -- val.emailAddress
        
    --     |> Dict.insert
    --         "sshPublicKey" "" -- val.sshPublicKey
        
    --     |> Dict.insert
    --         "createdTimestamp" "" -- val.createdTimestamp
        
    --     |> Dict.insert
    --         "lastModifiedTimestamp" "" -- val.lastModifiedTimestamp
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disassociateTeamMemb
-}
type alias DisassociateTeamMemberResult =
    { 
    }



disassociateTeamMemberResultDecoder : JD.Decoder DisassociateTeamMemberResult
disassociateTeamMemberResultDecoder =
    JD.succeed DisassociateTeamMemberResult
        




disassociateTeamMemberResultToString : DisassociateTeamMemberResult -> String -- List (String, String)
disassociateTeamMemberResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Information about the GitHub repository to be created in AWS CodeStar. This is where the source code files provided with the project request will be uploaded after project creation.</p>
-}
type alias GitHubCodeDestination =
    { name : String
    , description : Maybe String
    , type_ : String
    , owner : String
    , privateRepository : Bool
    , issuesEnabled : Bool
    , token : String
    }



gitHubCodeDestinationDecoder : JD.Decoder GitHubCodeDestination
gitHubCodeDestinationDecoder =
    JD.succeed GitHubCodeDestination
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["owner", "Owner"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["privateRepository", "PrivateRepository"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["issuesEnabled", "IssuesEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["token", "Token"]
            JD.string
        )
        




gitHubCodeDestinationToString : GitHubCodeDestination -> String -- List (String, String)
gitHubCodeDestinationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "owner" "" -- val.owner
        
    --     |> Dict.insert
    --         "privateRepository" "" -- val.privateRepository
        
    --     |> Dict.insert
    --         "issuesEnabled" "" -- val.issuesEnabled
        
    --     |> Dict.insert
    --         "token" "" -- val.token
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listProjec
-}
type alias ListProjectsResult =
    { projects : (List ProjectSummary)
    , nextToken : Maybe String
    }



listProjectsResultDecoder : JD.Decoder ListProjectsResult
listProjectsResultDecoder =
    JD.succeed ListProjectsResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["projects", "Projects"]
            (JD.list projectSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listProjectsResultToString : ListProjectsResult -> String -- List (String, String)
listProjectsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "projects" "" -- val.projects
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listResourc
-}
type alias ListResourcesResult =
    { resources : Maybe (List Resource)
    , nextToken : Maybe String
    }



listResourcesResultDecoder : JD.Decoder ListResourcesResult
listResourcesResultDecoder =
    JD.succeed ListResourcesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resources", "Resources"]
            (JD.list resourceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listResourcesResultToString : ListResourcesResult -> String -- List (String, String)
listResourcesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resources" "" -- val.resources
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForProje
-}
type alias ListTagsForProjectResult =
    { tags : Maybe (Dict String String)
    , nextToken : Maybe String
    }



listTagsForProjectResultDecoder : JD.Decoder ListTagsForProjectResult
listTagsForProjectResultDecoder =
    JD.succeed ListTagsForProjectResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listTagsForProjectResultToString : ListTagsForProjectResult -> String -- List (String, String)
listTagsForProjectResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTeamMembe
-}
type alias ListTeamMembersResult =
    { teamMembers : (List TeamMember)
    , nextToken : Maybe String
    }



listTeamMembersResultDecoder : JD.Decoder ListTeamMembersResult
listTeamMembersResultDecoder =
    JD.succeed ListTeamMembersResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["teamMembers", "TeamMembers"]
            (JD.list teamMemberDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listTeamMembersResultToString : ListTeamMembersResult -> String -- List (String, String)
listTeamMembersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "teamMembers" "" -- val.teamMembers
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listUserProfil
-}
type alias ListUserProfilesResult =
    { userProfiles : (List UserProfileSummary)
    , nextToken : Maybe String
    }



listUserProfilesResultDecoder : JD.Decoder ListUserProfilesResult
listUserProfilesResultDecoder =
    JD.succeed ListUserProfilesResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["userProfiles", "UserProfiles"]
            (JD.list userProfileSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listUserProfilesResultToString : ListUserProfilesResult -> String -- List (String, String)
listUserProfilesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userProfiles" "" -- val.userProfiles
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>An indication of whether a project creation or deletion is failed or successful.</p>
-}
type alias ProjectStatus =
    { state : String
    , reason : Maybe String
    }



projectStatusDecoder : JD.Decoder ProjectStatus
projectStatusDecoder =
    JD.succeed ProjectStatus
        
        |> JDP.custom (AWS.Core.Decode.required
            ["state", "State"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["reason", "Reason"]
            JD.string
        )
        




projectStatusToString : ProjectStatus -> String -- List (String, String)
projectStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "reason" "" -- val.reason
        
    --     |> Dict.toList
    ""



{-| <p>Information about the metadata for a project.</p>
-}
type alias ProjectSummary =
    { projectId : Maybe String
    , projectArn : Maybe String
    }



projectSummaryDecoder : JD.Decoder ProjectSummary
projectSummaryDecoder =
    JD.succeed ProjectSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["projectId", "ProjectId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["projectArn", "ProjectArn"]
            JD.string
        )
        




projectSummaryToString : ProjectSummary -> String -- List (String, String)
projectSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "projectId" "" -- val.projectId
        
    --     |> Dict.insert
    --         "projectArn" "" -- val.projectArn
        
    --     |> Dict.toList
    ""



{-| <p>Information about a resource for a project.</p>
-}
type alias Resource =
    { id : String
    }



resourceDecoder : JD.Decoder Resource
resourceDecoder =
    JD.succeed Resource
        
        |> JDP.custom (AWS.Core.Decode.required
            ["id", "Id"]
            JD.string
        )
        




resourceToString : Resource -> String -- List (String, String)
resourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.toList
    ""



{-| <p>The Amazon S3 location where the source code files provided with the project request are stored.</p>
-}
type alias S3Location =
    { bucketName : Maybe String
    , bucketKey : Maybe String
    }



s3LocationDecoder : JD.Decoder S3Location
s3LocationDecoder =
    JD.succeed S3Location
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bucketName", "BucketName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bucketKey", "BucketKey"]
            JD.string
        )
        




s3LocationToString : S3Location -> String -- List (String, String)
s3LocationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bucketName" "" -- val.bucketName
        
    --     |> Dict.insert
    --         "bucketKey" "" -- val.bucketKey
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from tagProje
-}
type alias TagProjectResult =
    { tags : Maybe (Dict String String)
    }



tagProjectResultDecoder : JD.Decoder TagProjectResult
tagProjectResultDecoder =
    JD.succeed TagProjectResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (AWS.Core.Decode.dict JD.string)
        )
        




tagProjectResultToString : TagProjectResult -> String -- List (String, String)
tagProjectResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>Information about a team member in a project.</p>
-}
type alias TeamMember =
    { userArn : String
    , projectRole : String
    , remoteAccessAllowed : Maybe Bool
    }



teamMemberDecoder : JD.Decoder TeamMember
teamMemberDecoder =
    JD.succeed TeamMember
        
        |> JDP.custom (AWS.Core.Decode.required
            ["userArn", "UserArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["projectRole", "ProjectRole"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["remoteAccessAllowed", "RemoteAccessAllowed"]
            JD.bool
        )
        




teamMemberToString : TeamMember -> String -- List (String, String)
teamMemberToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userArn" "" -- val.userArn
        
    --     |> Dict.insert
    --         "projectRole" "" -- val.projectRole
        
    --     |> Dict.insert
    --         "remoteAccessAllowed" "" -- val.remoteAccessAllowed
        
    --     |> Dict.toList
    ""



{-| <p>The toolchain template file provided with the project request. AWS CodeStar uses the template to provision the toolchain stack in AWS CloudFormation.</p>
-}
type alias Toolchain =
    { source : ToolchainSource
    , roleArn : Maybe String
    , stackParameters : Maybe (Dict String String)
    }



toolchainDecoder : JD.Decoder Toolchain
toolchainDecoder =
    JD.succeed Toolchain
        
        |> JDP.custom (AWS.Core.Decode.required
            ["source", "Source"]
            toolchainSourceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["roleArn", "RoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stackParameters", "StackParameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        




toolchainToString : Toolchain -> String -- List (String, String)
toolchainToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "stackParameters" "" -- val.stackParameters
        
    --     |> Dict.toList
    ""



{-| <p>The Amazon S3 location where the toolchain template file provided with the project request is stored. AWS CodeStar retrieves the file during project creation.</p>
-}
type alias ToolchainSource =
    { s3 : S3Location
    }



toolchainSourceDecoder : JD.Decoder ToolchainSource
toolchainSourceDecoder =
    JD.succeed ToolchainSource
        
        |> JDP.custom (AWS.Core.Decode.required
            ["s3", "S3"]
            s3LocationDecoder
        )
        




toolchainSourceToString : ToolchainSource -> String -- List (String, String)
toolchainSourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3" "" -- val.s3
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from untagProje
-}
type alias UntagProjectResult =
    { 
    }



untagProjectResultDecoder : JD.Decoder UntagProjectResult
untagProjectResultDecoder =
    JD.succeed UntagProjectResult
        




untagProjectResultToString : UntagProjectResult -> String -- List (String, String)
untagProjectResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateProje
-}
type alias UpdateProjectResult =
    { 
    }



updateProjectResultDecoder : JD.Decoder UpdateProjectResult
updateProjectResultDecoder =
    JD.succeed UpdateProjectResult
        




updateProjectResultToString : UpdateProjectResult -> String -- List (String, String)
updateProjectResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateTeamMemb
-}
type alias UpdateTeamMemberResult =
    { userArn : Maybe String
    , projectRole : Maybe String
    , remoteAccessAllowed : Maybe Bool
    }



updateTeamMemberResultDecoder : JD.Decoder UpdateTeamMemberResult
updateTeamMemberResultDecoder =
    JD.succeed UpdateTeamMemberResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["userArn", "UserArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["projectRole", "ProjectRole"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["remoteAccessAllowed", "RemoteAccessAllowed"]
            JD.bool
        )
        




updateTeamMemberResultToString : UpdateTeamMemberResult -> String -- List (String, String)
updateTeamMemberResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userArn" "" -- val.userArn
        
    --     |> Dict.insert
    --         "projectRole" "" -- val.projectRole
        
    --     |> Dict.insert
    --         "remoteAccessAllowed" "" -- val.remoteAccessAllowed
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateUserProfi
-}
type alias UpdateUserProfileResult =
    { userArn : String
    , displayName : Maybe String
    , emailAddress : Maybe String
    , sshPublicKey : Maybe String
    , createdTimestamp : Maybe Posix
    , lastModifiedTimestamp : Maybe Posix
    }



updateUserProfileResultDecoder : JD.Decoder UpdateUserProfileResult
updateUserProfileResultDecoder =
    JD.succeed UpdateUserProfileResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["userArn", "UserArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["displayName", "DisplayName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["emailAddress", "EmailAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sshPublicKey", "SshPublicKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdTimestamp", "CreatedTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastModifiedTimestamp", "LastModifiedTimestamp"]
            JDX.datetime
        )
        




updateUserProfileResultToString : UpdateUserProfileResult -> String -- List (String, String)
updateUserProfileResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userArn" "" -- val.userArn
        
    --     |> Dict.insert
    --         "displayName" "" -- val.displayName
        
    --     |> Dict.insert
    --         "emailAddress" "" -- val.emailAddress
        
    --     |> Dict.insert
    --         "sshPublicKey" "" -- val.sshPublicKey
        
    --     |> Dict.insert
    --         "createdTimestamp" "" -- val.createdTimestamp
        
    --     |> Dict.insert
    --         "lastModifiedTimestamp" "" -- val.lastModifiedTimestamp
        
    --     |> Dict.toList
    ""



{-| <p>Information about a user's profile in AWS CodeStar.</p>
-}
type alias UserProfileSummary =
    { userArn : Maybe String
    , displayName : Maybe String
    , emailAddress : Maybe String
    , sshPublicKey : Maybe String
    }



userProfileSummaryDecoder : JD.Decoder UserProfileSummary
userProfileSummaryDecoder =
    JD.succeed UserProfileSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["userArn", "UserArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["displayName", "DisplayName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["emailAddress", "EmailAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sshPublicKey", "SshPublicKey"]
            JD.string
        )
        




userProfileSummaryToString : UserProfileSummary -> String -- List (String, String)
userProfileSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userArn" "" -- val.userArn
        
    --     |> Dict.insert
    --         "displayName" "" -- val.displayName
        
    --     |> Dict.insert
    --         "emailAddress" "" -- val.emailAddress
        
    --     |> Dict.insert
    --         "sshPublicKey" "" -- val.sshPublicKey
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AssociateTeamMemberRequest =
    { projectId : String
    , clientRequestToken : Maybe String
    , userArn : String
    , projectRole : String
    , remoteAccessAllowed : Maybe Bool
    }


{-| undefined
-}
type alias CreateProjectRequest =
    { name : String
    , id : String
    , description : Maybe String
    , clientRequestToken : Maybe String
    , sourceCode : Maybe (List Code)
    , toolchain : Maybe Toolchain
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias CreateUserProfileRequest =
    { userArn : String
    , displayName : String
    , emailAddress : String
    , sshPublicKey : Maybe String
    }


{-| undefined
-}
type alias DeleteProjectRequest =
    { id : String
    , clientRequestToken : Maybe String
    , deleteStack : Maybe Bool
    }


{-| undefined
-}
type alias DeleteUserProfileRequest =
    { userArn : String
    }


{-| undefined
-}
type alias DescribeProjectRequest =
    { id : String
    }


{-| undefined
-}
type alias DescribeUserProfileRequest =
    { userArn : String
    }


{-| undefined
-}
type alias DisassociateTeamMemberRequest =
    { projectId : String
    , userArn : String
    }


{-| undefined
-}
type alias ListProjectsRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListResourcesRequest =
    { projectId : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListTagsForProjectRequest =
    { id : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListTeamMembersRequest =
    { projectId : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListUserProfilesRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias TagProjectRequest =
    { id : String
    , tags : (Dict String String)
    }


{-| undefined
-}
type alias UntagProjectRequest =
    { id : String
    , tags : (List String)
    }


{-| undefined
-}
type alias UpdateProjectRequest =
    { id : String
    , name : Maybe String
    , description : Maybe String
    }


{-| undefined
-}
type alias UpdateTeamMemberRequest =
    { projectId : String
    , userArn : String
    , projectRole : Maybe String
    , remoteAccessAllowed : Maybe Bool
    }


{-| undefined
-}
type alias UpdateUserProfileRequest =
    { userArn : String
    , displayName : Maybe String
    , emailAddress : Maybe String
    , sshPublicKey : Maybe String
    }






associateTeamMemberRequestEncoder : AssociateTeamMemberRequest -> JE.Value
associateTeamMemberRequestEncoder data =
    []
        
        
        |> (::) ("projectId", data.projectId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        
        |> (::) ("userArn", data.userArn |> (JE.string))
        
        
        
        |> (::) ("projectRole", data.projectRole |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("remoteAccessAllowed", data.remoteAccessAllowed)
        
        
        |> JE.object






associateTeamMemberResultEncoder : AssociateTeamMemberResult -> JE.Value
associateTeamMemberResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        |> JE.object






codeEncoder : Code -> JE.Value
codeEncoder data =
    []
        
        
        |> (::) ("source", data.source |> (codeSourceEncoder))
        
        
        
        |> (::) ("destination", data.destination |> (codeDestinationEncoder))
        
        
        |> JE.object






codeCommitCodeDestinationEncoder : CodeCommitCodeDestination -> JE.Value
codeCommitCodeDestinationEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        |> JE.object






codeDestinationEncoder : CodeDestination -> JE.Value
codeDestinationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (codeCommitCodeDestinationEncoder)
            ("codeCommit", data.codeCommit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (gitHubCodeDestinationEncoder)
            ("gitHub", data.gitHub)
        
        
        |> JE.object






codeSourceEncoder : CodeSource -> JE.Value
codeSourceEncoder data =
    []
        
        
        |> (::) ("s3", data.s3 |> (s3LocationEncoder))
        
        
        |> JE.object






createProjectRequestEncoder : CreateProjectRequest -> JE.Value
createProjectRequestEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (codeEncoder))
            ("sourceCode", data.sourceCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (toolchainEncoder)
            ("toolchain", data.toolchain)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("tags", data.tags)
        
        
        |> JE.object






createProjectResultEncoder : CreateProjectResult -> JE.Value
createProjectResultEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("projectTemplateId", data.projectTemplateId)
        
        
        |> JE.object






createUserProfileRequestEncoder : CreateUserProfileRequest -> JE.Value
createUserProfileRequestEncoder data =
    []
        
        
        |> (::) ("userArn", data.userArn |> (JE.string))
        
        
        
        |> (::) ("displayName", data.displayName |> (JE.string))
        
        
        
        |> (::) ("emailAddress", data.emailAddress |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sshPublicKey", data.sshPublicKey)
        
        
        |> JE.object






createUserProfileResultEncoder : CreateUserProfileResult -> JE.Value
createUserProfileResultEncoder data =
    []
        
        
        |> (::) ("userArn", data.userArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("displayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("emailAddress", data.emailAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sshPublicKey", data.sshPublicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdTimestamp", data.createdTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastModifiedTimestamp", data.lastModifiedTimestamp)
        
        
        |> JE.object






deleteProjectRequestEncoder : DeleteProjectRequest -> JE.Value
deleteProjectRequestEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("deleteStack", data.deleteStack)
        
        
        |> JE.object






deleteProjectResultEncoder : DeleteProjectResult -> JE.Value
deleteProjectResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("stackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("projectArn", data.projectArn)
        
        
        |> JE.object






deleteUserProfileRequestEncoder : DeleteUserProfileRequest -> JE.Value
deleteUserProfileRequestEncoder data =
    []
        
        
        |> (::) ("userArn", data.userArn |> (JE.string))
        
        
        |> JE.object






deleteUserProfileResultEncoder : DeleteUserProfileResult -> JE.Value
deleteUserProfileResultEncoder data =
    []
        
        
        |> (::) ("userArn", data.userArn |> (JE.string))
        
        
        |> JE.object






describeProjectRequestEncoder : DescribeProjectRequest -> JE.Value
describeProjectRequestEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        |> JE.object






describeProjectResultEncoder : DescribeProjectResult -> JE.Value
describeProjectResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdTimeStamp", data.createdTimeStamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("stackId", data.stackId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("projectTemplateId", data.projectTemplateId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectStatusEncoder)
            ("status", data.status)
        
        
        |> JE.object






describeUserProfileRequestEncoder : DescribeUserProfileRequest -> JE.Value
describeUserProfileRequestEncoder data =
    []
        
        
        |> (::) ("userArn", data.userArn |> (JE.string))
        
        
        |> JE.object






describeUserProfileResultEncoder : DescribeUserProfileResult -> JE.Value
describeUserProfileResultEncoder data =
    []
        
        
        |> (::) ("userArn", data.userArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("displayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("emailAddress", data.emailAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sshPublicKey", data.sshPublicKey)
        
        
        
        |> (::) ("createdTimestamp", data.createdTimestamp |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("lastModifiedTimestamp", data.lastModifiedTimestamp |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






disassociateTeamMemberRequestEncoder : DisassociateTeamMemberRequest -> JE.Value
disassociateTeamMemberRequestEncoder data =
    []
        
        
        |> (::) ("projectId", data.projectId |> (JE.string))
        
        
        
        |> (::) ("userArn", data.userArn |> (JE.string))
        
        
        |> JE.object






disassociateTeamMemberResultEncoder : DisassociateTeamMemberResult -> JE.Value
disassociateTeamMemberResultEncoder data =
    []
        
        |> JE.object






gitHubCodeDestinationEncoder : GitHubCodeDestination -> JE.Value
gitHubCodeDestinationEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> (::) ("type", data.type_ |> (JE.string))
        
        
        
        |> (::) ("owner", data.owner |> (JE.string))
        
        
        
        |> (::) ("privateRepository", data.privateRepository |> (JE.bool))
        
        
        
        |> (::) ("issuesEnabled", data.issuesEnabled |> (JE.bool))
        
        
        
        |> (::) ("token", data.token |> (JE.string))
        
        
        |> JE.object






listProjectsRequestEncoder : ListProjectsRequest -> JE.Value
listProjectsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listProjectsResultEncoder : ListProjectsResult -> JE.Value
listProjectsResultEncoder data =
    []
        
        
        |> (::) ("projects", data.projects |> (JE.list (projectSummaryEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listResourcesRequestEncoder : ListResourcesRequest -> JE.Value
listResourcesRequestEncoder data =
    []
        
        
        |> (::) ("projectId", data.projectId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listResourcesResultEncoder : ListResourcesResult -> JE.Value
listResourcesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceEncoder))
            ("resources", data.resources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listTagsForProjectRequestEncoder : ListTagsForProjectRequest -> JE.Value
listTagsForProjectRequestEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listTagsForProjectResultEncoder : ListTagsForProjectResult -> JE.Value
listTagsForProjectResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listTeamMembersRequestEncoder : ListTeamMembersRequest -> JE.Value
listTeamMembersRequestEncoder data =
    []
        
        
        |> (::) ("projectId", data.projectId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listTeamMembersResultEncoder : ListTeamMembersResult -> JE.Value
listTeamMembersResultEncoder data =
    []
        
        
        |> (::) ("teamMembers", data.teamMembers |> (JE.list (teamMemberEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listUserProfilesRequestEncoder : ListUserProfilesRequest -> JE.Value
listUserProfilesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listUserProfilesResultEncoder : ListUserProfilesResult -> JE.Value
listUserProfilesResultEncoder data =
    []
        
        
        |> (::) ("userProfiles", data.userProfiles |> (JE.list (userProfileSummaryEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






projectStatusEncoder : ProjectStatus -> JE.Value
projectStatusEncoder data =
    []
        
        
        |> (::) ("state", data.state |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("reason", data.reason)
        
        
        |> JE.object






projectSummaryEncoder : ProjectSummary -> JE.Value
projectSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("projectId", data.projectId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("projectArn", data.projectArn)
        
        
        |> JE.object






resourceEncoder : Resource -> JE.Value
resourceEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        |> JE.object






s3LocationEncoder : S3Location -> JE.Value
s3LocationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("bucketName", data.bucketName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("bucketKey", data.bucketKey)
        
        
        |> JE.object






tagProjectRequestEncoder : TagProjectRequest -> JE.Value
tagProjectRequestEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        
        |> (::) ("tags", data.tags |> (JE.dict identity (JE.string)))
        
        
        |> JE.object






tagProjectResultEncoder : TagProjectResult -> JE.Value
tagProjectResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("tags", data.tags)
        
        
        |> JE.object






teamMemberEncoder : TeamMember -> JE.Value
teamMemberEncoder data =
    []
        
        
        |> (::) ("userArn", data.userArn |> (JE.string))
        
        
        
        |> (::) ("projectRole", data.projectRole |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("remoteAccessAllowed", data.remoteAccessAllowed)
        
        
        |> JE.object






toolchainEncoder : Toolchain -> JE.Value
toolchainEncoder data =
    []
        
        
        |> (::) ("source", data.source |> (toolchainSourceEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("roleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("stackParameters", data.stackParameters)
        
        
        |> JE.object






toolchainSourceEncoder : ToolchainSource -> JE.Value
toolchainSourceEncoder data =
    []
        
        
        |> (::) ("s3", data.s3 |> (s3LocationEncoder))
        
        
        |> JE.object






untagProjectRequestEncoder : UntagProjectRequest -> JE.Value
untagProjectRequestEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        
        |> (::) ("tags", data.tags |> (JE.list (JE.string)))
        
        
        |> JE.object






untagProjectResultEncoder : UntagProjectResult -> JE.Value
untagProjectResultEncoder data =
    []
        
        |> JE.object






updateProjectRequestEncoder : UpdateProjectRequest -> JE.Value
updateProjectRequestEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        |> JE.object






updateProjectResultEncoder : UpdateProjectResult -> JE.Value
updateProjectResultEncoder data =
    []
        
        |> JE.object






updateTeamMemberRequestEncoder : UpdateTeamMemberRequest -> JE.Value
updateTeamMemberRequestEncoder data =
    []
        
        
        |> (::) ("projectId", data.projectId |> (JE.string))
        
        
        
        |> (::) ("userArn", data.userArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("projectRole", data.projectRole)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("remoteAccessAllowed", data.remoteAccessAllowed)
        
        
        |> JE.object






updateTeamMemberResultEncoder : UpdateTeamMemberResult -> JE.Value
updateTeamMemberResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("userArn", data.userArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("projectRole", data.projectRole)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("remoteAccessAllowed", data.remoteAccessAllowed)
        
        
        |> JE.object






updateUserProfileRequestEncoder : UpdateUserProfileRequest -> JE.Value
updateUserProfileRequestEncoder data =
    []
        
        
        |> (::) ("userArn", data.userArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("displayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("emailAddress", data.emailAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sshPublicKey", data.sshPublicKey)
        
        
        |> JE.object






updateUserProfileResultEncoder : UpdateUserProfileResult -> JE.Value
updateUserProfileResultEncoder data =
    []
        
        
        |> (::) ("userArn", data.userArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("displayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("emailAddress", data.emailAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sshPublicKey", data.sshPublicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdTimestamp", data.createdTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastModifiedTimestamp", data.lastModifiedTimestamp)
        
        
        |> JE.object






userProfileSummaryEncoder : UserProfileSummary -> JE.Value
userProfileSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("userArn", data.userArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("displayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("emailAddress", data.emailAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sshPublicKey", data.sshPublicKey)
        
        
        |> JE.object





