module AWS.CodeBuild
    exposing
        ( service
        , batchDeleteBuilds
        , batchGetBuilds
        , batchGetProjects
        , createProject
        , CreateProjectOptions
        , createWebhook
        , CreateWebhookOptions
        , deleteProject
        , deleteSourceCredentials
        , deleteWebhook
        , importSourceCredentials
        , ImportSourceCredentialsOptions
        , invalidateProjectCache
        , listBuilds
        , ListBuildsOptions
        , listBuildsForProject
        , ListBuildsForProjectOptions
        , listCuratedEnvironmentImages
        , listProjects
        , ListProjectsOptions
        , listSourceCredentials
        , startBuild
        , StartBuildOptions
        , stopBuild
        , updateProject
        , UpdateProjectOptions
        , updateWebhook
        , UpdateWebhookOptions
        , ArtifactNamespace(..)
        , ArtifactPackaging(..)
        , ArtifactsType(..)
        , AuthType(..)
        , BatchDeleteBuildsOutput
        , BatchGetBuildsOutput
        , BatchGetProjectsOutput
        , Build
        , BuildArtifacts
        , BuildNotDeleted
        , BuildPhase
        , BuildPhaseType(..)
        , CacheMode(..)
        , CacheType(..)
        , CloudWatchLogsConfig
        , ComputeType(..)
        , CreateProjectOutput
        , CreateWebhookOutput
        , CredentialProviderType(..)
        , DeleteProjectOutput
        , DeleteSourceCredentialsOutput
        , DeleteWebhookOutput
        , EnvironmentImage
        , EnvironmentLanguage
        , EnvironmentPlatform
        , EnvironmentType(..)
        , EnvironmentVariable
        , EnvironmentVariableType(..)
        , GitSubmodulesConfig
        , ImagePullCredentialsType(..)
        , ImportSourceCredentialsOutput
        , InvalidateProjectCacheOutput
        , LanguageType(..)
        , ListBuildsForProjectOutput
        , ListBuildsOutput
        , ListCuratedEnvironmentImagesOutput
        , ListProjectsOutput
        , ListSourceCredentialsOutput
        , LogsConfig
        , LogsConfigStatusType(..)
        , LogsLocation
        , NetworkInterface
        , PhaseContext
        , PlatformType(..)
        , Project
        , ProjectArtifacts
        , ProjectBadge
        , ProjectCache
        , ProjectEnvironment
        , ProjectSortByType(..)
        , ProjectSource
        , ProjectSourceVersion
        , RegistryCredential
        , S3LogsConfig
        , ServerType(..)
        , SortOrderType(..)
        , SourceAuth
        , SourceAuthType(..)
        , SourceCredentialsInfo
        , SourceType(..)
        , StartBuildOutput
        , StatusType(..)
        , StopBuildOutput
        , Tag
        , UpdateProjectOutput
        , UpdateWebhookOutput
        , VpcConfig
        , Webhook
        , WebhookFilter
        , WebhookFilterType(..)
        )

{-| <fullname>AWS CodeBuild</fullname> <p>AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild compiles your source code, runs unit tests, and produces artifacts that are ready to deploy. AWS CodeBuild eliminates the need to provision, manage, and scale your own build servers. It provides prepackaged build environments for the most popular programming languages and build tools, such as Apache Maven, Gradle, and more. You can also fully customize build environments in AWS CodeBuild to use your own build tools. AWS CodeBuild scales automatically to meet peak build requests. You pay only for the build time you consume. For more information about AWS CodeBuild, see the <i>AWS CodeBuild User Guide</i>.</p> <p>AWS CodeBuild supports these operations:</p> <ul> <li> <p> <code>BatchDeleteBuilds</code>: Deletes one or more builds.</p> </li> <li> <p> <code>BatchGetProjects</code>: Gets information about one or more build projects. A <i>build project</i> defines how AWS CodeBuild runs a build. This includes information such as where to get the source code to build, the build environment to use, the build commands to run, and where to store the build output. A <i>build environment</i> is a representation of operating system, programming language runtime, and tools that AWS CodeBuild uses to run a build. You can add tags to build projects to help manage your resources and costs.</p> </li> <li> <p> <code>CreateProject</code>: Creates a build project.</p> </li> <li> <p> <code>CreateWebhook</code>: For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.</p> </li> <li> <p> <code>UpdateWebhook</code>: Changes the settings of an existing webhook.</p> </li> <li> <p> <code>DeleteProject</code>: Deletes a build project.</p> </li> <li> <p> <code>DeleteWebhook</code>: For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.</p> </li> <li> <p> <code>ListProjects</code>: Gets a list of build project names, with each build project name representing a single build project.</p> </li> <li> <p> <code>UpdateProject</code>: Changes the settings of an existing build project.</p> </li> <li> <p> <code>BatchGetBuilds</code>: Gets information about one or more builds.</p> </li> <li> <p> <code>ListBuilds</code>: Gets a list of build IDs, with each build ID representing a single build.</p> </li> <li> <p> <code>ListBuildsForProject</code>: Gets a list of build IDs for the specified build project, with each build ID representing a single build.</p> </li> <li> <p> <code>StartBuild</code>: Starts running a build.</p> </li> <li> <p> <code>StopBuild</code>: Attempts to stop running a build.</p> </li> <li> <p> <code>ListCuratedEnvironmentImages</code>: Gets information about Docker images that are managed by AWS CodeBuild.</p> </li> <li> <p> <code>DeleteSourceCredentials</code>: Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.</p> </li> <li> <p> <code>ImportSourceCredentials</code>: Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.</p> </li> <li> <p> <code>ListSourceCredentials</code>: Returns a list of <code>SourceCredentialsInfo</code> objects. Each <code>SourceCredentialsInfo</code> object includes the authentication type, token ARN, and type of source provider for one set of credentials.</p> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [batchDeleteBuilds](#batchDeleteBuilds)
* [batchGetBuilds](#batchGetBuilds)
* [batchGetProjects](#batchGetProjects)
* [createProject](#createProject)
* [CreateProjectOptions](#CreateProjectOptions)
* [createWebhook](#createWebhook)
* [CreateWebhookOptions](#CreateWebhookOptions)
* [deleteProject](#deleteProject)
* [deleteSourceCredentials](#deleteSourceCredentials)
* [deleteWebhook](#deleteWebhook)
* [importSourceCredentials](#importSourceCredentials)
* [ImportSourceCredentialsOptions](#ImportSourceCredentialsOptions)
* [invalidateProjectCache](#invalidateProjectCache)
* [listBuilds](#listBuilds)
* [ListBuildsOptions](#ListBuildsOptions)
* [listBuildsForProject](#listBuildsForProject)
* [ListBuildsForProjectOptions](#ListBuildsForProjectOptions)
* [listCuratedEnvironmentImages](#listCuratedEnvironmentImages)
* [listProjects](#listProjects)
* [ListProjectsOptions](#ListProjectsOptions)
* [listSourceCredentials](#listSourceCredentials)
* [startBuild](#startBuild)
* [StartBuildOptions](#StartBuildOptions)
* [stopBuild](#stopBuild)
* [updateProject](#updateProject)
* [UpdateProjectOptions](#UpdateProjectOptions)
* [updateWebhook](#updateWebhook)
* [UpdateWebhookOptions](#UpdateWebhookOptions)


@docs batchDeleteBuilds,batchGetBuilds,batchGetProjects,createProject,CreateProjectOptions,createWebhook,CreateWebhookOptions,deleteProject,deleteSourceCredentials,deleteWebhook,importSourceCredentials,ImportSourceCredentialsOptions,invalidateProjectCache,listBuilds,ListBuildsOptions,listBuildsForProject,ListBuildsForProjectOptions,listCuratedEnvironmentImages,listProjects,ListProjectsOptions,listSourceCredentials,startBuild,StartBuildOptions,stopBuild,updateProject,UpdateProjectOptions,updateWebhook,UpdateWebhookOptions

## Responses

* [BatchDeleteBuildsOutput](#BatchDeleteBuildsOutput)
* [BatchGetBuildsOutput](#BatchGetBuildsOutput)
* [BatchGetProjectsOutput](#BatchGetProjectsOutput)
* [CreateProjectOutput](#CreateProjectOutput)
* [CreateWebhookOutput](#CreateWebhookOutput)
* [DeleteProjectOutput](#DeleteProjectOutput)
* [DeleteSourceCredentialsOutput](#DeleteSourceCredentialsOutput)
* [DeleteWebhookOutput](#DeleteWebhookOutput)
* [ImportSourceCredentialsOutput](#ImportSourceCredentialsOutput)
* [InvalidateProjectCacheOutput](#InvalidateProjectCacheOutput)
* [ListBuildsForProjectOutput](#ListBuildsForProjectOutput)
* [ListBuildsOutput](#ListBuildsOutput)
* [ListCuratedEnvironmentImagesOutput](#ListCuratedEnvironmentImagesOutput)
* [ListProjectsOutput](#ListProjectsOutput)
* [ListSourceCredentialsOutput](#ListSourceCredentialsOutput)
* [StartBuildOutput](#StartBuildOutput)
* [StopBuildOutput](#StopBuildOutput)
* [UpdateProjectOutput](#UpdateProjectOutput)
* [UpdateWebhookOutput](#UpdateWebhookOutput)


@docs BatchDeleteBuildsOutput,BatchGetBuildsOutput,BatchGetProjectsOutput,CreateProjectOutput,CreateWebhookOutput,DeleteProjectOutput,DeleteSourceCredentialsOutput,DeleteWebhookOutput,ImportSourceCredentialsOutput,InvalidateProjectCacheOutput,ListBuildsForProjectOutput,ListBuildsOutput,ListCuratedEnvironmentImagesOutput,ListProjectsOutput,ListSourceCredentialsOutput,StartBuildOutput,StopBuildOutput,UpdateProjectOutput,UpdateWebhookOutput

## Records

* [Build](#Build)
* [BuildArtifacts](#BuildArtifacts)
* [BuildNotDeleted](#BuildNotDeleted)
* [BuildPhase](#BuildPhase)
* [CloudWatchLogsConfig](#CloudWatchLogsConfig)
* [EnvironmentImage](#EnvironmentImage)
* [EnvironmentLanguage](#EnvironmentLanguage)
* [EnvironmentPlatform](#EnvironmentPlatform)
* [EnvironmentVariable](#EnvironmentVariable)
* [GitSubmodulesConfig](#GitSubmodulesConfig)
* [LogsConfig](#LogsConfig)
* [LogsLocation](#LogsLocation)
* [NetworkInterface](#NetworkInterface)
* [PhaseContext](#PhaseContext)
* [Project](#Project)
* [ProjectArtifacts](#ProjectArtifacts)
* [ProjectBadge](#ProjectBadge)
* [ProjectCache](#ProjectCache)
* [ProjectEnvironment](#ProjectEnvironment)
* [ProjectSource](#ProjectSource)
* [ProjectSourceVersion](#ProjectSourceVersion)
* [RegistryCredential](#RegistryCredential)
* [S3LogsConfig](#S3LogsConfig)
* [SourceAuth](#SourceAuth)
* [SourceCredentialsInfo](#SourceCredentialsInfo)
* [Tag](#Tag)
* [VpcConfig](#VpcConfig)
* [Webhook](#Webhook)
* [WebhookFilter](#WebhookFilter)


@docs Build,BuildArtifacts,BuildNotDeleted,BuildPhase,CloudWatchLogsConfig,EnvironmentImage,EnvironmentLanguage,EnvironmentPlatform,EnvironmentVariable,GitSubmodulesConfig,LogsConfig,LogsLocation,NetworkInterface,PhaseContext,Project,ProjectArtifacts,ProjectBadge,ProjectCache,ProjectEnvironment,ProjectSource,ProjectSourceVersion,RegistryCredential,S3LogsConfig,SourceAuth,SourceCredentialsInfo,Tag,VpcConfig,Webhook,WebhookFilter

## Unions

* [ArtifactNamespace](#ArtifactNamespace)
* [ArtifactPackaging](#ArtifactPackaging)
* [ArtifactsType](#ArtifactsType)
* [AuthType](#AuthType)
* [BuildPhaseType](#BuildPhaseType)
* [CacheMode](#CacheMode)
* [CacheType](#CacheType)
* [ComputeType](#ComputeType)
* [CredentialProviderType](#CredentialProviderType)
* [EnvironmentType](#EnvironmentType)
* [EnvironmentVariableType](#EnvironmentVariableType)
* [ImagePullCredentialsType](#ImagePullCredentialsType)
* [LanguageType](#LanguageType)
* [LogsConfigStatusType](#LogsConfigStatusType)
* [PlatformType](#PlatformType)
* [ProjectSortByType](#ProjectSortByType)
* [ServerType](#ServerType)
* [SortOrderType](#SortOrderType)
* [SourceAuthType](#SourceAuthType)
* [SourceType](#SourceType)
* [StatusType](#StatusType)
* [WebhookFilterType](#WebhookFilterType)


@docs ArtifactNamespace,ArtifactPackaging,ArtifactsType,AuthType,BuildPhaseType,CacheMode,CacheType,ComputeType,CredentialProviderType,EnvironmentType,EnvironmentVariableType,ImagePullCredentialsType,LanguageType,LogsConfigStatusType,PlatformType,ProjectSortByType,ServerType,SortOrderType,SourceAuthType,SourceType,StatusType,WebhookFilterType

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
        "codebuild"
        "2016-10-06"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "CodeBuild_20161006")



-- OPERATIONS

{-| <p>Deletes one or more builds.</p>

__Required Parameters__

* `ids` __:__ `(List String)`


-}

batchDeleteBuilds :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchDeleteBuildsOutput)

batchDeleteBuilds ids =
    
    let
        requestInput = BatchDeleteBuildsInput
            
            ids
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchDeleteBuildsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchDeleteBuilds"
                
                (AWS.Core.Decode.ResultDecoder "BatchDeleteBuildsOutput" batchDeleteBuildsOutputDecoder)
                
            )





{-| <p>Gets information about builds.</p>

__Required Parameters__

* `ids` __:__ `(List String)`


-}

batchGetBuilds :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetBuildsOutput)

batchGetBuilds ids =
    
    let
        requestInput = BatchGetBuildsInput
            
            ids
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchGetBuildsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchGetBuilds"
                
                (AWS.Core.Decode.ResultDecoder "BatchGetBuildsOutput" batchGetBuildsOutputDecoder)
                
            )





{-| <p>Gets information about build projects.</p>

__Required Parameters__

* `names` __:__ `(List String)`


-}

batchGetProjects :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetProjectsOutput)

batchGetProjects names =
    
    let
        requestInput = BatchGetProjectsInput
            
            names
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchGetProjectsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchGetProjects"
                
                (AWS.Core.Decode.ResultDecoder "BatchGetProjectsOutput" batchGetProjectsOutputDecoder)
                
            )





{-| <p>Creates a build project.</p>

__Required Parameters__

* `name` __:__ `String`
* `source` __:__ `ProjectSource`
* `artifacts` __:__ `ProjectArtifacts`
* `environment` __:__ `ProjectEnvironment`
* `serviceRole` __:__ `String`


-}

createProject :
  
    String ->
  
    ProjectSource ->
  
    ProjectArtifacts ->
  
    ProjectEnvironment ->
  
    String ->
  
  
    ( CreateProjectOptions -> CreateProjectOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateProjectOutput)

createProject name source artifacts environment serviceRole setOptions =
    
    let
        requestInput = CreateProjectInput
            
            name
            
            options.description
            
            source
            
            options.secondarySources
            
            options.sourceVersion
            
            options.secondarySourceVersions
            
            artifacts
            
            options.secondaryArtifacts
            
            options.cache
            
            environment
            
            serviceRole
            
            options.timeoutInMinutes
            
            options.queuedTimeoutInMinutes
            
            options.encryptionKey
            
            options.tags
            
            options.vpcConfig
            
            options.badgeEnabled
            
            options.logsConfig
            
        
        options = setOptions (CreateProjectOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createProjectInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateProject"
                
                (AWS.Core.Decode.ResultDecoder "CreateProjectOutput" createProjectOutputDecoder)
                
            )



{-| Options for a createProject request
-}
type alias CreateProjectOptions =
    {
    description : Maybe String,secondarySources : Maybe (List ProjectSource),sourceVersion : Maybe String,secondarySourceVersions : Maybe (List ProjectSourceVersion),secondaryArtifacts : Maybe (List ProjectArtifacts),cache : Maybe ProjectCache,timeoutInMinutes : Maybe Int,queuedTimeoutInMinutes : Maybe Int,encryptionKey : Maybe String,tags : Maybe (List Tag),vpcConfig : Maybe VpcConfig,badgeEnabled : Maybe Bool,logsConfig : Maybe LogsConfig
    }



{-| <p>For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables AWS CodeBuild to start rebuilding the source code every time a code change is pushed to the repository.</p> <important> <p>If you enable webhooks for an AWS CodeBuild project, and the project is used as a build step in AWS CodePipeline, then two identical builds are created for each commit. One build is triggered through webhooks, and one through AWS CodePipeline. Because billing is on a per-build basis, you are billed for both builds. Therefore, if you are using AWS CodePipeline, we recommend that you disable webhooks in AWS CodeBuild. In the AWS CodeBuild console, clear the Webhook box. For more information, see step 5 in <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console">Change a Build Project's Settings</a>.</p> </important>

__Required Parameters__

* `projectName` __:__ `String`


-}

createWebhook :
  
    String ->
  
  
    ( CreateWebhookOptions -> CreateWebhookOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateWebhookOutput)

createWebhook projectName setOptions =
    
    let
        requestInput = CreateWebhookInput
            
            projectName
            
            options.branchFilter
            
            options.filterGroups
            
        
        options = setOptions (CreateWebhookOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createWebhookInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateWebhook"
                
                (AWS.Core.Decode.ResultDecoder "CreateWebhookOutput" createWebhookOutputDecoder)
                
            )



{-| Options for a createWebhook request
-}
type alias CreateWebhookOptions =
    {
    branchFilter : Maybe String,filterGroups : Maybe (List (List WebhookFilter))
    }



{-| <p>Deletes a build project.</p>

__Required Parameters__

* `name` __:__ `String`


-}

deleteProject :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteProjectOutput)

deleteProject name =
    
    let
        requestInput = DeleteProjectInput
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteProjectInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteProject"
                
                (AWS.Core.Decode.ResultDecoder "DeleteProjectOutput" deleteProjectOutputDecoder)
                
            )





{-| <p> Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials. </p>

__Required Parameters__

* `arn` __:__ `String`


-}

deleteSourceCredentials :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteSourceCredentialsOutput)

deleteSourceCredentials arn =
    
    let
        requestInput = DeleteSourceCredentialsInput
            
            arn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteSourceCredentialsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteSourceCredentials"
                
                (AWS.Core.Decode.ResultDecoder "DeleteSourceCredentialsOutput" deleteSourceCredentialsOutputDecoder)
                
            )





{-| <p>For an existing AWS CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops AWS CodeBuild from rebuilding the source code every time a code change is pushed to the repository.</p>

__Required Parameters__

* `projectName` __:__ `String`


-}

deleteWebhook :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteWebhookOutput)

deleteWebhook projectName =
    
    let
        requestInput = DeleteWebhookInput
            
            projectName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteWebhookInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteWebhook"
                
                (AWS.Core.Decode.ResultDecoder "DeleteWebhookOutput" deleteWebhookOutputDecoder)
                
            )





{-| <p> Imports the source repository credentials for an AWS CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository. </p>

__Required Parameters__

* `token` __:__ `String`
* `serverType` __:__ `ServerType`
* `authType` __:__ `AuthType`


-}

importSourceCredentials :
  
    String ->
  
    ServerType ->
  
    AuthType ->
  
  
    ( ImportSourceCredentialsOptions -> ImportSourceCredentialsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ImportSourceCredentialsOutput)

importSourceCredentials token serverType authType setOptions =
    
    let
        requestInput = ImportSourceCredentialsInput
            
            options.username
            
            token
            
            serverType
            
            authType
            
        
        options = setOptions (ImportSourceCredentialsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> importSourceCredentialsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ImportSourceCredentials"
                
                (AWS.Core.Decode.ResultDecoder "ImportSourceCredentialsOutput" importSourceCredentialsOutputDecoder)
                
            )



{-| Options for a importSourceCredentials request
-}
type alias ImportSourceCredentialsOptions =
    {
    username : Maybe String
    }



{-| <p>Resets the cache for a project.</p>

__Required Parameters__

* `projectName` __:__ `String`


-}

invalidateProjectCache :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper InvalidateProjectCacheOutput)

invalidateProjectCache projectName =
    
    let
        requestInput = InvalidateProjectCacheInput
            
            projectName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> invalidateProjectCacheInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "InvalidateProjectCache"
                
                (AWS.Core.Decode.ResultDecoder "InvalidateProjectCacheOutput" invalidateProjectCacheOutputDecoder)
                
            )





{-| <p>Gets a list of build IDs, with each build ID representing a single build.</p>

__Required Parameters__



-}

listBuilds :
  
  
    ( ListBuildsOptions -> ListBuildsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListBuildsOutput)

listBuilds setOptions =
    
    let
        requestInput = ListBuildsInput
            
            options.sortOrder
            
            options.nextToken
            
        
        options = setOptions (ListBuildsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listBuildsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListBuilds"
                
                (AWS.Core.Decode.ResultDecoder "ListBuildsOutput" listBuildsOutputDecoder)
                
            )



{-| Options for a listBuilds request
-}
type alias ListBuildsOptions =
    {
    sortOrder : Maybe SortOrderType,nextToken : Maybe String
    }



{-| <p>Gets a list of build IDs for the specified build project, with each build ID representing a single build.</p>

__Required Parameters__

* `projectName` __:__ `String`


-}

listBuildsForProject :
  
    String ->
  
  
    ( ListBuildsForProjectOptions -> ListBuildsForProjectOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListBuildsForProjectOutput)

listBuildsForProject projectName setOptions =
    
    let
        requestInput = ListBuildsForProjectInput
            
            projectName
            
            options.sortOrder
            
            options.nextToken
            
        
        options = setOptions (ListBuildsForProjectOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listBuildsForProjectInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListBuildsForProject"
                
                (AWS.Core.Decode.ResultDecoder "ListBuildsForProjectOutput" listBuildsForProjectOutputDecoder)
                
            )



{-| Options for a listBuildsForProject request
-}
type alias ListBuildsForProjectOptions =
    {
    sortOrder : Maybe SortOrderType,nextToken : Maybe String
    }



{-| <p>Gets information about Docker images that are managed by AWS CodeBuild.</p>

__Required Parameters__



-}

listCuratedEnvironmentImages :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListCuratedEnvironmentImagesOutput)

listCuratedEnvironmentImages =
    
    let
        requestInput = ListCuratedEnvironmentImagesInput
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listCuratedEnvironmentImagesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListCuratedEnvironmentImages"
                
                (AWS.Core.Decode.ResultDecoder "ListCuratedEnvironmentImagesOutput" listCuratedEnvironmentImagesOutputDecoder)
                
            )





{-| <p>Gets a list of build project names, with each build project name representing a single build project.</p>

__Required Parameters__



-}

listProjects :
  
  
    ( ListProjectsOptions -> ListProjectsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListProjectsOutput)

listProjects setOptions =
    
    let
        requestInput = ListProjectsInput
            
            options.sortBy
            
            options.sortOrder
            
            options.nextToken
            
        
        options = setOptions (ListProjectsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listProjectsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListProjects"
                
                (AWS.Core.Decode.ResultDecoder "ListProjectsOutput" listProjectsOutputDecoder)
                
            )



{-| Options for a listProjects request
-}
type alias ListProjectsOptions =
    {
    sortBy : Maybe ProjectSortByType,sortOrder : Maybe SortOrderType,nextToken : Maybe String
    }



{-| <p> Returns a list of <code>SourceCredentialsInfo</code> objects. </p>

__Required Parameters__



-}

listSourceCredentials :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListSourceCredentialsOutput)

listSourceCredentials =
    
    let
        requestInput = ListSourceCredentialsInput
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listSourceCredentialsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListSourceCredentials"
                
                (AWS.Core.Decode.ResultDecoder "ListSourceCredentialsOutput" listSourceCredentialsOutputDecoder)
                
            )





{-| <p>Starts running a build.</p>

__Required Parameters__

* `projectName` __:__ `String`


-}

startBuild :
  
    String ->
  
  
    ( StartBuildOptions -> StartBuildOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartBuildOutput)

startBuild projectName setOptions =
    
    let
        requestInput = StartBuildInput
            
            projectName
            
            options.secondarySourcesOverride
            
            options.secondarySourcesVersionOverride
            
            options.sourceVersion
            
            options.artifactsOverride
            
            options.secondaryArtifactsOverride
            
            options.environmentVariablesOverride
            
            options.sourceTypeOverride
            
            options.sourceLocationOverride
            
            options.sourceAuthOverride
            
            options.gitCloneDepthOverride
            
            options.gitSubmodulesConfigOverride
            
            options.buildspecOverride
            
            options.insecureSslOverride
            
            options.reportBuildStatusOverride
            
            options.environmentTypeOverride
            
            options.imageOverride
            
            options.computeTypeOverride
            
            options.certificateOverride
            
            options.cacheOverride
            
            options.serviceRoleOverride
            
            options.privilegedModeOverride
            
            options.timeoutInMinutesOverride
            
            options.queuedTimeoutInMinutesOverride
            
            options.idempotencyToken
            
            options.logsConfigOverride
            
            options.registryCredentialOverride
            
            options.imagePullCredentialsTypeOverride
            
        
        options = setOptions (StartBuildOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startBuildInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartBuild"
                
                (AWS.Core.Decode.ResultDecoder "StartBuildOutput" startBuildOutputDecoder)
                
            )



{-| Options for a startBuild request
-}
type alias StartBuildOptions =
    {
    secondarySourcesOverride : Maybe (List ProjectSource),secondarySourcesVersionOverride : Maybe (List ProjectSourceVersion),sourceVersion : Maybe String,artifactsOverride : Maybe ProjectArtifacts,secondaryArtifactsOverride : Maybe (List ProjectArtifacts),environmentVariablesOverride : Maybe (List EnvironmentVariable),sourceTypeOverride : Maybe SourceType,sourceLocationOverride : Maybe String,sourceAuthOverride : Maybe SourceAuth,gitCloneDepthOverride : Maybe Int,gitSubmodulesConfigOverride : Maybe GitSubmodulesConfig,buildspecOverride : Maybe String,insecureSslOverride : Maybe Bool,reportBuildStatusOverride : Maybe Bool,environmentTypeOverride : Maybe EnvironmentType,imageOverride : Maybe String,computeTypeOverride : Maybe ComputeType,certificateOverride : Maybe String,cacheOverride : Maybe ProjectCache,serviceRoleOverride : Maybe String,privilegedModeOverride : Maybe Bool,timeoutInMinutesOverride : Maybe Int,queuedTimeoutInMinutesOverride : Maybe Int,idempotencyToken : Maybe String,logsConfigOverride : Maybe LogsConfig,registryCredentialOverride : Maybe RegistryCredential,imagePullCredentialsTypeOverride : Maybe ImagePullCredentialsType
    }



{-| <p>Attempts to stop running a build.</p>

__Required Parameters__

* `id` __:__ `String`


-}

stopBuild :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopBuildOutput)

stopBuild id =
    
    let
        requestInput = StopBuildInput
            
            id
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopBuildInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopBuild"
                
                (AWS.Core.Decode.ResultDecoder "StopBuildOutput" stopBuildOutputDecoder)
                
            )





{-| <p>Changes the settings of a build project.</p>

__Required Parameters__

* `name` __:__ `String`


-}

updateProject :
  
    String ->
  
  
    ( UpdateProjectOptions -> UpdateProjectOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateProjectOutput)

updateProject name setOptions =
    
    let
        requestInput = UpdateProjectInput
            
            name
            
            options.description
            
            options.source
            
            options.secondarySources
            
            options.sourceVersion
            
            options.secondarySourceVersions
            
            options.artifacts
            
            options.secondaryArtifacts
            
            options.cache
            
            options.environment
            
            options.serviceRole
            
            options.timeoutInMinutes
            
            options.queuedTimeoutInMinutes
            
            options.encryptionKey
            
            options.tags
            
            options.vpcConfig
            
            options.badgeEnabled
            
            options.logsConfig
            
        
        options = setOptions (UpdateProjectOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateProjectInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateProject"
                
                (AWS.Core.Decode.ResultDecoder "UpdateProjectOutput" updateProjectOutputDecoder)
                
            )



{-| Options for a updateProject request
-}
type alias UpdateProjectOptions =
    {
    description : Maybe String,source : Maybe ProjectSource,secondarySources : Maybe (List ProjectSource),sourceVersion : Maybe String,secondarySourceVersions : Maybe (List ProjectSourceVersion),artifacts : Maybe ProjectArtifacts,secondaryArtifacts : Maybe (List ProjectArtifacts),cache : Maybe ProjectCache,environment : Maybe ProjectEnvironment,serviceRole : Maybe String,timeoutInMinutes : Maybe Int,queuedTimeoutInMinutes : Maybe Int,encryptionKey : Maybe String,tags : Maybe (List Tag),vpcConfig : Maybe VpcConfig,badgeEnabled : Maybe Bool,logsConfig : Maybe LogsConfig
    }



{-| <p> Updates the webhook associated with an AWS CodeBuild build project. </p> <note> <p> If you use Bitbucket for your repository, <code>rotateSecret</code> is ignored. </p> </note>

__Required Parameters__

* `projectName` __:__ `String`


-}

updateWebhook :
  
    String ->
  
  
    ( UpdateWebhookOptions -> UpdateWebhookOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateWebhookOutput)

updateWebhook projectName setOptions =
    
    let
        requestInput = UpdateWebhookInput
            
            projectName
            
            options.branchFilter
            
            options.rotateSecret
            
            options.filterGroups
            
        
        options = setOptions (UpdateWebhookOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateWebhookInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateWebhook"
                
                (AWS.Core.Decode.ResultDecoder "UpdateWebhookOutput" updateWebhookOutputDecoder)
                
            )



{-| Options for a updateWebhook request
-}
type alias UpdateWebhookOptions =
    {
    branchFilter : Maybe String,rotateSecret : Maybe Bool,filterGroups : Maybe (List (List WebhookFilter))
    }




{-| One of

* `ArtifactNamespace_NONE`
* `ArtifactNamespace_BUILD_ID`

-}
type ArtifactNamespace
    = ArtifactNamespace_NONE
    | ArtifactNamespace_BUILD_ID



artifactNamespaceDecoder : JD.Decoder ArtifactNamespace
artifactNamespaceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed ArtifactNamespace_NONE

                    "BUILD_ID" ->
                        JD.succeed ArtifactNamespace_BUILD_ID


                    _ ->
                        JD.fail "bad thing"
            )




artifactNamespaceToString : ArtifactNamespace -> String
artifactNamespaceToString val =
    case val of
        ArtifactNamespace_NONE ->
            "NONE"

        ArtifactNamespace_BUILD_ID ->
            "BUILD_ID"




{-| One of

* `ArtifactPackaging_NONE`
* `ArtifactPackaging_ZIP`

-}
type ArtifactPackaging
    = ArtifactPackaging_NONE
    | ArtifactPackaging_ZIP



artifactPackagingDecoder : JD.Decoder ArtifactPackaging
artifactPackagingDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed ArtifactPackaging_NONE

                    "ZIP" ->
                        JD.succeed ArtifactPackaging_ZIP


                    _ ->
                        JD.fail "bad thing"
            )




artifactPackagingToString : ArtifactPackaging -> String
artifactPackagingToString val =
    case val of
        ArtifactPackaging_NONE ->
            "NONE"

        ArtifactPackaging_ZIP ->
            "ZIP"




{-| One of

* `ArtifactsType_CODEPIPELINE`
* `ArtifactsType_S3`
* `ArtifactsType_NO_ARTIFACTS`

-}
type ArtifactsType
    = ArtifactsType_CODEPIPELINE
    | ArtifactsType_S3
    | ArtifactsType_NO_ARTIFACTS



artifactsTypeDecoder : JD.Decoder ArtifactsType
artifactsTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CODEPIPELINE" ->
                        JD.succeed ArtifactsType_CODEPIPELINE

                    "S3" ->
                        JD.succeed ArtifactsType_S3

                    "NO_ARTIFACTS" ->
                        JD.succeed ArtifactsType_NO_ARTIFACTS


                    _ ->
                        JD.fail "bad thing"
            )




artifactsTypeToString : ArtifactsType -> String
artifactsTypeToString val =
    case val of
        ArtifactsType_CODEPIPELINE ->
            "CODEPIPELINE"

        ArtifactsType_S3 ->
            "S3"

        ArtifactsType_NO_ARTIFACTS ->
            "NO_ARTIFACTS"




{-| One of

* `AuthType_OAUTH`
* `AuthType_BASIC_AUTH`
* `AuthType_PERSONAL_ACCESS_TOKEN`

-}
type AuthType
    = AuthType_OAUTH
    | AuthType_BASIC_AUTH
    | AuthType_PERSONAL_ACCESS_TOKEN



authTypeDecoder : JD.Decoder AuthType
authTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OAUTH" ->
                        JD.succeed AuthType_OAUTH

                    "BASIC_AUTH" ->
                        JD.succeed AuthType_BASIC_AUTH

                    "PERSONAL_ACCESS_TOKEN" ->
                        JD.succeed AuthType_PERSONAL_ACCESS_TOKEN


                    _ ->
                        JD.fail "bad thing"
            )




authTypeToString : AuthType -> String
authTypeToString val =
    case val of
        AuthType_OAUTH ->
            "OAUTH"

        AuthType_BASIC_AUTH ->
            "BASIC_AUTH"

        AuthType_PERSONAL_ACCESS_TOKEN ->
            "PERSONAL_ACCESS_TOKEN"




{-| Type of HTTP response from batchDeleteBuil
-}
type alias BatchDeleteBuildsOutput =
    { buildsDeleted : Maybe (List String)
    , buildsNotDeleted : Maybe (List BuildNotDeleted)
    }



batchDeleteBuildsOutputDecoder : JD.Decoder BatchDeleteBuildsOutput
batchDeleteBuildsOutputDecoder =
    JD.succeed BatchDeleteBuildsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["buildsDeleted", "BuildsDeleted"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["buildsNotDeleted", "BuildsNotDeleted"]
            (JD.list buildNotDeletedDecoder)
        )
        




batchDeleteBuildsOutputToString : BatchDeleteBuildsOutput -> String -- List (String, String)
batchDeleteBuildsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "buildsDeleted" "" -- val.buildsDeleted
        
    --     |> Dict.insert
    --         "buildsNotDeleted" "" -- val.buildsNotDeleted
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchGetBuil
-}
type alias BatchGetBuildsOutput =
    { builds : Maybe (List Build)
    , buildsNotFound : Maybe (List String)
    }



batchGetBuildsOutputDecoder : JD.Decoder BatchGetBuildsOutput
batchGetBuildsOutputDecoder =
    JD.succeed BatchGetBuildsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["builds", "Builds"]
            (JD.list buildDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["buildsNotFound", "BuildsNotFound"]
            (JD.list JD.string)
        )
        




batchGetBuildsOutputToString : BatchGetBuildsOutput -> String -- List (String, String)
batchGetBuildsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "builds" "" -- val.builds
        
    --     |> Dict.insert
    --         "buildsNotFound" "" -- val.buildsNotFound
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchGetProjec
-}
type alias BatchGetProjectsOutput =
    { projects : Maybe (List Project)
    , projectsNotFound : Maybe (List String)
    }



batchGetProjectsOutputDecoder : JD.Decoder BatchGetProjectsOutput
batchGetProjectsOutputDecoder =
    JD.succeed BatchGetProjectsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["projects", "Projects"]
            (JD.list projectDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["projectsNotFound", "ProjectsNotFound"]
            (JD.list JD.string)
        )
        




batchGetProjectsOutputToString : BatchGetProjectsOutput -> String -- List (String, String)
batchGetProjectsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "projects" "" -- val.projects
        
    --     |> Dict.insert
    --         "projectsNotFound" "" -- val.projectsNotFound
        
    --     |> Dict.toList
    ""



{-| <p>Information about a build.</p>
-}
type alias Build =
    { id : Maybe String
    , arn : Maybe String
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , currentPhase : Maybe String
    , buildStatus : Maybe StatusType
    , sourceVersion : Maybe String
    , resolvedSourceVersion : Maybe String
    , projectName : Maybe String
    , phases : Maybe (List BuildPhase)
    , source : Maybe ProjectSource
    , secondarySources : Maybe (List ProjectSource)
    , secondarySourceVersions : Maybe (List ProjectSourceVersion)
    , artifacts : Maybe BuildArtifacts
    , secondaryArtifacts : Maybe (List BuildArtifacts)
    , cache : Maybe ProjectCache
    , environment : Maybe ProjectEnvironment
    , serviceRole : Maybe String
    , logs : Maybe LogsLocation
    , timeoutInMinutes : Maybe Int
    , queuedTimeoutInMinutes : Maybe Int
    , buildComplete : Maybe Bool
    , initiator : Maybe String
    , vpcConfig : Maybe VpcConfig
    , networkInterface : Maybe NetworkInterface
    , encryptionKey : Maybe String
    }



buildDecoder : JD.Decoder Build
buildDecoder =
    JD.succeed Build
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["startTime", "StartTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["endTime", "EndTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["currentPhase", "CurrentPhase"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["buildStatus", "BuildStatus"]
            statusTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sourceVersion", "SourceVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resolvedSourceVersion", "ResolvedSourceVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["projectName", "ProjectName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["phases", "Phases"]
            (JD.list buildPhaseDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["source", "Source"]
            projectSourceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["secondarySources", "SecondarySources"]
            (JD.list projectSourceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["secondarySourceVersions", "SecondarySourceVersions"]
            (JD.list projectSourceVersionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["artifacts", "Artifacts"]
            buildArtifactsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["secondaryArtifacts", "SecondaryArtifacts"]
            (JD.list buildArtifactsDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cache", "Cache"]
            projectCacheDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["environment", "Environment"]
            projectEnvironmentDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serviceRole", "ServiceRole"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logs", "Logs"]
            logsLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["timeoutInMinutes", "TimeoutInMinutes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["queuedTimeoutInMinutes", "QueuedTimeoutInMinutes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["buildComplete", "BuildComplete"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["initiator", "Initiator"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpcConfig", "VpcConfig"]
            vpcConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["networkInterface", "NetworkInterface"]
            networkInterfaceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["encryptionKey", "EncryptionKey"]
            JD.string
        )
        




buildToString : Build -> String -- List (String, String)
buildToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "endTime" "" -- val.endTime
        
    --     |> Dict.insert
    --         "currentPhase" "" -- val.currentPhase
        
    --     |> Dict.insert
    --         "buildStatus" "" -- val.buildStatus
        
    --     |> Dict.insert
    --         "sourceVersion" "" -- val.sourceVersion
        
    --     |> Dict.insert
    --         "resolvedSourceVersion" "" -- val.resolvedSourceVersion
        
    --     |> Dict.insert
    --         "projectName" "" -- val.projectName
        
    --     |> Dict.insert
    --         "phases" "" -- val.phases
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "secondarySources" "" -- val.secondarySources
        
    --     |> Dict.insert
    --         "secondarySourceVersions" "" -- val.secondarySourceVersions
        
    --     |> Dict.insert
    --         "artifacts" "" -- val.artifacts
        
    --     |> Dict.insert
    --         "secondaryArtifacts" "" -- val.secondaryArtifacts
        
    --     |> Dict.insert
    --         "cache" "" -- val.cache
        
    --     |> Dict.insert
    --         "environment" "" -- val.environment
        
    --     |> Dict.insert
    --         "serviceRole" "" -- val.serviceRole
        
    --     |> Dict.insert
    --         "logs" "" -- val.logs
        
    --     |> Dict.insert
    --         "timeoutInMinutes" "" -- val.timeoutInMinutes
        
    --     |> Dict.insert
    --         "queuedTimeoutInMinutes" "" -- val.queuedTimeoutInMinutes
        
    --     |> Dict.insert
    --         "buildComplete" "" -- val.buildComplete
        
    --     |> Dict.insert
    --         "initiator" "" -- val.initiator
        
    --     |> Dict.insert
    --         "vpcConfig" "" -- val.vpcConfig
        
    --     |> Dict.insert
    --         "networkInterface" "" -- val.networkInterface
        
    --     |> Dict.insert
    --         "encryptionKey" "" -- val.encryptionKey
        
    --     |> Dict.toList
    ""



{-| <p>Information about build output artifacts.</p>
-}
type alias BuildArtifacts =
    { location : Maybe String
    , sha256sum : Maybe String
    , md5sum : Maybe String
    , overrideArtifactName : Maybe Bool
    , encryptionDisabled : Maybe Bool
    , artifactIdentifier : Maybe String
    }



buildArtifactsDecoder : JD.Decoder BuildArtifacts
buildArtifactsDecoder =
    JD.succeed BuildArtifacts
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sha256sum", "Sha256sum"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["md5sum", "Md5sum"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["overrideArtifactName", "OverrideArtifactName"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["encryptionDisabled", "EncryptionDisabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["artifactIdentifier", "ArtifactIdentifier"]
            JD.string
        )
        




buildArtifactsToString : BuildArtifacts -> String -- List (String, String)
buildArtifactsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "sha256sum" "" -- val.sha256sum
        
    --     |> Dict.insert
    --         "md5sum" "" -- val.md5sum
        
    --     |> Dict.insert
    --         "overrideArtifactName" "" -- val.overrideArtifactName
        
    --     |> Dict.insert
    --         "encryptionDisabled" "" -- val.encryptionDisabled
        
    --     |> Dict.insert
    --         "artifactIdentifier" "" -- val.artifactIdentifier
        
    --     |> Dict.toList
    ""



{-| <p>Information about a build that could not be successfully deleted.</p>
-}
type alias BuildNotDeleted =
    { id : Maybe String
    , statusCode : Maybe String
    }



buildNotDeletedDecoder : JD.Decoder BuildNotDeleted
buildNotDeletedDecoder =
    JD.succeed BuildNotDeleted
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["statusCode", "StatusCode"]
            JD.string
        )
        




buildNotDeletedToString : BuildNotDeleted -> String -- List (String, String)
buildNotDeletedToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "statusCode" "" -- val.statusCode
        
    --     |> Dict.toList
    ""



{-| <p>Information about a stage for a build.</p>
-}
type alias BuildPhase =
    { phaseType : Maybe BuildPhaseType
    , phaseStatus : Maybe StatusType
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , durationInSeconds : Maybe Int
    , contexts : Maybe (List PhaseContext)
    }



buildPhaseDecoder : JD.Decoder BuildPhase
buildPhaseDecoder =
    JD.succeed BuildPhase
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["phaseType", "PhaseType"]
            buildPhaseTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["phaseStatus", "PhaseStatus"]
            statusTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["startTime", "StartTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["endTime", "EndTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["durationInSeconds", "DurationInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["contexts", "Contexts"]
            (JD.list phaseContextDecoder)
        )
        




buildPhaseToString : BuildPhase -> String -- List (String, String)
buildPhaseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "phaseType" "" -- val.phaseType
        
    --     |> Dict.insert
    --         "phaseStatus" "" -- val.phaseStatus
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "endTime" "" -- val.endTime
        
    --     |> Dict.insert
    --         "durationInSeconds" "" -- val.durationInSeconds
        
    --     |> Dict.insert
    --         "contexts" "" -- val.contexts
        
    --     |> Dict.toList
    ""



{-| One of

* `BuildPhaseType_SUBMITTED`
* `BuildPhaseType_QUEUED`
* `BuildPhaseType_PROVISIONING`
* `BuildPhaseType_DOWNLOAD_SOURCE`
* `BuildPhaseType_INSTALL`
* `BuildPhaseType_PRE_BUILD`
* `BuildPhaseType_BUILD`
* `BuildPhaseType_POST_BUILD`
* `BuildPhaseType_UPLOAD_ARTIFACTS`
* `BuildPhaseType_FINALIZING`
* `BuildPhaseType_COMPLETED`

-}
type BuildPhaseType
    = BuildPhaseType_SUBMITTED
    | BuildPhaseType_QUEUED
    | BuildPhaseType_PROVISIONING
    | BuildPhaseType_DOWNLOAD_SOURCE
    | BuildPhaseType_INSTALL
    | BuildPhaseType_PRE_BUILD
    | BuildPhaseType_BUILD
    | BuildPhaseType_POST_BUILD
    | BuildPhaseType_UPLOAD_ARTIFACTS
    | BuildPhaseType_FINALIZING
    | BuildPhaseType_COMPLETED



buildPhaseTypeDecoder : JD.Decoder BuildPhaseType
buildPhaseTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUBMITTED" ->
                        JD.succeed BuildPhaseType_SUBMITTED

                    "QUEUED" ->
                        JD.succeed BuildPhaseType_QUEUED

                    "PROVISIONING" ->
                        JD.succeed BuildPhaseType_PROVISIONING

                    "DOWNLOAD_SOURCE" ->
                        JD.succeed BuildPhaseType_DOWNLOAD_SOURCE

                    "INSTALL" ->
                        JD.succeed BuildPhaseType_INSTALL

                    "PRE_BUILD" ->
                        JD.succeed BuildPhaseType_PRE_BUILD

                    "BUILD" ->
                        JD.succeed BuildPhaseType_BUILD

                    "POST_BUILD" ->
                        JD.succeed BuildPhaseType_POST_BUILD

                    "UPLOAD_ARTIFACTS" ->
                        JD.succeed BuildPhaseType_UPLOAD_ARTIFACTS

                    "FINALIZING" ->
                        JD.succeed BuildPhaseType_FINALIZING

                    "COMPLETED" ->
                        JD.succeed BuildPhaseType_COMPLETED


                    _ ->
                        JD.fail "bad thing"
            )




buildPhaseTypeToString : BuildPhaseType -> String
buildPhaseTypeToString val =
    case val of
        BuildPhaseType_SUBMITTED ->
            "SUBMITTED"

        BuildPhaseType_QUEUED ->
            "QUEUED"

        BuildPhaseType_PROVISIONING ->
            "PROVISIONING"

        BuildPhaseType_DOWNLOAD_SOURCE ->
            "DOWNLOAD_SOURCE"

        BuildPhaseType_INSTALL ->
            "INSTALL"

        BuildPhaseType_PRE_BUILD ->
            "PRE_BUILD"

        BuildPhaseType_BUILD ->
            "BUILD"

        BuildPhaseType_POST_BUILD ->
            "POST_BUILD"

        BuildPhaseType_UPLOAD_ARTIFACTS ->
            "UPLOAD_ARTIFACTS"

        BuildPhaseType_FINALIZING ->
            "FINALIZING"

        BuildPhaseType_COMPLETED ->
            "COMPLETED"




{-| One of

* `CacheMode_LOCAL_DOCKER_LAYER_CACHE`
* `CacheMode_LOCAL_SOURCE_CACHE`
* `CacheMode_LOCAL_CUSTOM_CACHE`

-}
type CacheMode
    = CacheMode_LOCAL_DOCKER_LAYER_CACHE
    | CacheMode_LOCAL_SOURCE_CACHE
    | CacheMode_LOCAL_CUSTOM_CACHE



cacheModeDecoder : JD.Decoder CacheMode
cacheModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "LOCAL_DOCKER_LAYER_CACHE" ->
                        JD.succeed CacheMode_LOCAL_DOCKER_LAYER_CACHE

                    "LOCAL_SOURCE_CACHE" ->
                        JD.succeed CacheMode_LOCAL_SOURCE_CACHE

                    "LOCAL_CUSTOM_CACHE" ->
                        JD.succeed CacheMode_LOCAL_CUSTOM_CACHE


                    _ ->
                        JD.fail "bad thing"
            )




cacheModeToString : CacheMode -> String
cacheModeToString val =
    case val of
        CacheMode_LOCAL_DOCKER_LAYER_CACHE ->
            "LOCAL_DOCKER_LAYER_CACHE"

        CacheMode_LOCAL_SOURCE_CACHE ->
            "LOCAL_SOURCE_CACHE"

        CacheMode_LOCAL_CUSTOM_CACHE ->
            "LOCAL_CUSTOM_CACHE"




{-| One of

* `CacheType_NO_CACHE`
* `CacheType_S3`
* `CacheType_LOCAL`

-}
type CacheType
    = CacheType_NO_CACHE
    | CacheType_S3
    | CacheType_LOCAL



cacheTypeDecoder : JD.Decoder CacheType
cacheTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NO_CACHE" ->
                        JD.succeed CacheType_NO_CACHE

                    "S3" ->
                        JD.succeed CacheType_S3

                    "LOCAL" ->
                        JD.succeed CacheType_LOCAL


                    _ ->
                        JD.fail "bad thing"
            )




cacheTypeToString : CacheType -> String
cacheTypeToString val =
    case val of
        CacheType_NO_CACHE ->
            "NO_CACHE"

        CacheType_S3 ->
            "S3"

        CacheType_LOCAL ->
            "LOCAL"




{-| <p> Information about Amazon CloudWatch Logs for a build project. </p>
-}
type alias CloudWatchLogsConfig =
    { status : LogsConfigStatusType
    , groupName : Maybe String
    , streamName : Maybe String
    }



cloudWatchLogsConfigDecoder : JD.Decoder CloudWatchLogsConfig
cloudWatchLogsConfigDecoder =
    JD.succeed CloudWatchLogsConfig
        
        |> JDP.custom (AWS.Core.Decode.required
            ["status", "Status"]
            logsConfigStatusTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["groupName", "GroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["streamName", "StreamName"]
            JD.string
        )
        




cloudWatchLogsConfigToString : CloudWatchLogsConfig -> String -- List (String, String)
cloudWatchLogsConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "groupName" "" -- val.groupName
        
    --     |> Dict.insert
    --         "streamName" "" -- val.streamName
        
    --     |> Dict.toList
    ""



{-| One of

* `ComputeType_BUILD_GENERAL1_SMALL`
* `ComputeType_BUILD_GENERAL1_MEDIUM`
* `ComputeType_BUILD_GENERAL1_LARGE`

-}
type ComputeType
    = ComputeType_BUILD_GENERAL1_SMALL
    | ComputeType_BUILD_GENERAL1_MEDIUM
    | ComputeType_BUILD_GENERAL1_LARGE



computeTypeDecoder : JD.Decoder ComputeType
computeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BUILD_GENERAL1_SMALL" ->
                        JD.succeed ComputeType_BUILD_GENERAL1_SMALL

                    "BUILD_GENERAL1_MEDIUM" ->
                        JD.succeed ComputeType_BUILD_GENERAL1_MEDIUM

                    "BUILD_GENERAL1_LARGE" ->
                        JD.succeed ComputeType_BUILD_GENERAL1_LARGE


                    _ ->
                        JD.fail "bad thing"
            )




computeTypeToString : ComputeType -> String
computeTypeToString val =
    case val of
        ComputeType_BUILD_GENERAL1_SMALL ->
            "BUILD_GENERAL1_SMALL"

        ComputeType_BUILD_GENERAL1_MEDIUM ->
            "BUILD_GENERAL1_MEDIUM"

        ComputeType_BUILD_GENERAL1_LARGE ->
            "BUILD_GENERAL1_LARGE"




{-| Type of HTTP response from createProje
-}
type alias CreateProjectOutput =
    { project : Maybe Project
    }



createProjectOutputDecoder : JD.Decoder CreateProjectOutput
createProjectOutputDecoder =
    JD.succeed CreateProjectOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["project", "Project"]
            projectDecoder
        )
        




createProjectOutputToString : CreateProjectOutput -> String -- List (String, String)
createProjectOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "project" "" -- val.project
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createWebho
-}
type alias CreateWebhookOutput =
    { webhook : Maybe Webhook
    }



createWebhookOutputDecoder : JD.Decoder CreateWebhookOutput
createWebhookOutputDecoder =
    JD.succeed CreateWebhookOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["webhook", "Webhook"]
            webhookDecoder
        )
        




createWebhookOutputToString : CreateWebhookOutput -> String -- List (String, String)
createWebhookOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "webhook" "" -- val.webhook
        
    --     |> Dict.toList
    ""



{-| One of

* `CredentialProviderType_SECRETS_MANAGER`

-}
type CredentialProviderType
    = CredentialProviderType_SECRETS_MANAGER



credentialProviderTypeDecoder : JD.Decoder CredentialProviderType
credentialProviderTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SECRETS_MANAGER" ->
                        JD.succeed CredentialProviderType_SECRETS_MANAGER


                    _ ->
                        JD.fail "bad thing"
            )




credentialProviderTypeToString : CredentialProviderType -> String
credentialProviderTypeToString val =
    case val of
        CredentialProviderType_SECRETS_MANAGER ->
            "SECRETS_MANAGER"




{-| Type of HTTP response from deleteProje
-}
type alias DeleteProjectOutput =
    { 
    }



deleteProjectOutputDecoder : JD.Decoder DeleteProjectOutput
deleteProjectOutputDecoder =
    JD.succeed DeleteProjectOutput
        




deleteProjectOutputToString : DeleteProjectOutput -> String -- List (String, String)
deleteProjectOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteSourceCredentia
-}
type alias DeleteSourceCredentialsOutput =
    { arn : Maybe String
    }



deleteSourceCredentialsOutputDecoder : JD.Decoder DeleteSourceCredentialsOutput
deleteSourceCredentialsOutputDecoder =
    JD.succeed DeleteSourceCredentialsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        




deleteSourceCredentialsOutputToString : DeleteSourceCredentialsOutput -> String -- List (String, String)
deleteSourceCredentialsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteWebho
-}
type alias DeleteWebhookOutput =
    { 
    }



deleteWebhookOutputDecoder : JD.Decoder DeleteWebhookOutput
deleteWebhookOutputDecoder =
    JD.succeed DeleteWebhookOutput
        




deleteWebhookOutputToString : DeleteWebhookOutput -> String -- List (String, String)
deleteWebhookOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Information about a Docker image that is managed by AWS CodeBuild.</p>
-}
type alias EnvironmentImage =
    { name : Maybe String
    , description : Maybe String
    , versions : Maybe (List String)
    }



environmentImageDecoder : JD.Decoder EnvironmentImage
environmentImageDecoder =
    JD.succeed EnvironmentImage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["versions", "Versions"]
            (JD.list JD.string)
        )
        




environmentImageToString : EnvironmentImage -> String -- List (String, String)
environmentImageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "versions" "" -- val.versions
        
    --     |> Dict.toList
    ""



{-| <p>A set of Docker images that are related by programming language and are managed by AWS CodeBuild.</p>
-}
type alias EnvironmentLanguage =
    { language : Maybe LanguageType
    , images : Maybe (List EnvironmentImage)
    }



environmentLanguageDecoder : JD.Decoder EnvironmentLanguage
environmentLanguageDecoder =
    JD.succeed EnvironmentLanguage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["language", "Language"]
            languageTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["images", "Images"]
            (JD.list environmentImageDecoder)
        )
        




environmentLanguageToString : EnvironmentLanguage -> String -- List (String, String)
environmentLanguageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "language" "" -- val.language
        
    --     |> Dict.insert
    --         "images" "" -- val.images
        
    --     |> Dict.toList
    ""



{-| <p>A set of Docker images that are related by platform and are managed by AWS CodeBuild.</p>
-}
type alias EnvironmentPlatform =
    { platform : Maybe PlatformType
    , languages : Maybe (List EnvironmentLanguage)
    }



environmentPlatformDecoder : JD.Decoder EnvironmentPlatform
environmentPlatformDecoder =
    JD.succeed EnvironmentPlatform
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["platform", "Platform"]
            platformTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["languages", "Languages"]
            (JD.list environmentLanguageDecoder)
        )
        




environmentPlatformToString : EnvironmentPlatform -> String -- List (String, String)
environmentPlatformToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "platform" "" -- val.platform
        
    --     |> Dict.insert
    --         "languages" "" -- val.languages
        
    --     |> Dict.toList
    ""



{-| One of

* `EnvironmentType_WINDOWS_CONTAINER`
* `EnvironmentType_LINUX_CONTAINER`

-}
type EnvironmentType
    = EnvironmentType_WINDOWS_CONTAINER
    | EnvironmentType_LINUX_CONTAINER



environmentTypeDecoder : JD.Decoder EnvironmentType
environmentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WINDOWS_CONTAINER" ->
                        JD.succeed EnvironmentType_WINDOWS_CONTAINER

                    "LINUX_CONTAINER" ->
                        JD.succeed EnvironmentType_LINUX_CONTAINER


                    _ ->
                        JD.fail "bad thing"
            )




environmentTypeToString : EnvironmentType -> String
environmentTypeToString val =
    case val of
        EnvironmentType_WINDOWS_CONTAINER ->
            "WINDOWS_CONTAINER"

        EnvironmentType_LINUX_CONTAINER ->
            "LINUX_CONTAINER"




{-| <p>Information about an environment variable for a build project or a build.</p>
-}
type alias EnvironmentVariable =
    { name : String
    , value : String
    , type_ : Maybe EnvironmentVariableType
    }



environmentVariableDecoder : JD.Decoder EnvironmentVariable
environmentVariableDecoder =
    JD.succeed EnvironmentVariable
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["value", "Value"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            environmentVariableTypeDecoder
        )
        




environmentVariableToString : EnvironmentVariable -> String -- List (String, String)
environmentVariableToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.toList
    ""



{-| One of

* `EnvironmentVariableType_PLAINTEXT`
* `EnvironmentVariableType_PARAMETER_STORE`

-}
type EnvironmentVariableType
    = EnvironmentVariableType_PLAINTEXT
    | EnvironmentVariableType_PARAMETER_STORE



environmentVariableTypeDecoder : JD.Decoder EnvironmentVariableType
environmentVariableTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PLAINTEXT" ->
                        JD.succeed EnvironmentVariableType_PLAINTEXT

                    "PARAMETER_STORE" ->
                        JD.succeed EnvironmentVariableType_PARAMETER_STORE


                    _ ->
                        JD.fail "bad thing"
            )




environmentVariableTypeToString : EnvironmentVariableType -> String
environmentVariableTypeToString val =
    case val of
        EnvironmentVariableType_PLAINTEXT ->
            "PLAINTEXT"

        EnvironmentVariableType_PARAMETER_STORE ->
            "PARAMETER_STORE"




{-| <p> Information about the Git submodules configuration for an AWS CodeBuild build project. </p>
-}
type alias GitSubmodulesConfig =
    { fetchSubmodules : Bool
    }



gitSubmodulesConfigDecoder : JD.Decoder GitSubmodulesConfig
gitSubmodulesConfigDecoder =
    JD.succeed GitSubmodulesConfig
        
        |> JDP.custom (AWS.Core.Decode.required
            ["fetchSubmodules", "FetchSubmodules"]
            JD.bool
        )
        




gitSubmodulesConfigToString : GitSubmodulesConfig -> String -- List (String, String)
gitSubmodulesConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fetchSubmodules" "" -- val.fetchSubmodules
        
    --     |> Dict.toList
    ""



{-| One of

* `ImagePullCredentialsType_CODEBUILD`
* `ImagePullCredentialsType_SERVICE_ROLE`

-}
type ImagePullCredentialsType
    = ImagePullCredentialsType_CODEBUILD
    | ImagePullCredentialsType_SERVICE_ROLE



imagePullCredentialsTypeDecoder : JD.Decoder ImagePullCredentialsType
imagePullCredentialsTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CODEBUILD" ->
                        JD.succeed ImagePullCredentialsType_CODEBUILD

                    "SERVICE_ROLE" ->
                        JD.succeed ImagePullCredentialsType_SERVICE_ROLE


                    _ ->
                        JD.fail "bad thing"
            )




imagePullCredentialsTypeToString : ImagePullCredentialsType -> String
imagePullCredentialsTypeToString val =
    case val of
        ImagePullCredentialsType_CODEBUILD ->
            "CODEBUILD"

        ImagePullCredentialsType_SERVICE_ROLE ->
            "SERVICE_ROLE"




{-| Type of HTTP response from importSourceCredentia
-}
type alias ImportSourceCredentialsOutput =
    { arn : Maybe String
    }



importSourceCredentialsOutputDecoder : JD.Decoder ImportSourceCredentialsOutput
importSourceCredentialsOutputDecoder =
    JD.succeed ImportSourceCredentialsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        




importSourceCredentialsOutputToString : ImportSourceCredentialsOutput -> String -- List (String, String)
importSourceCredentialsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from invalidateProjectCac
-}
type alias InvalidateProjectCacheOutput =
    { 
    }



invalidateProjectCacheOutputDecoder : JD.Decoder InvalidateProjectCacheOutput
invalidateProjectCacheOutputDecoder =
    JD.succeed InvalidateProjectCacheOutput
        




invalidateProjectCacheOutputToString : InvalidateProjectCacheOutput -> String -- List (String, String)
invalidateProjectCacheOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `LanguageType_JAVA`
* `LanguageType_PYTHON`
* `LanguageType_NODE_JS`
* `LanguageType_RUBY`
* `LanguageType_GOLANG`
* `LanguageType_DOCKER`
* `LanguageType_ANDROID`
* `LanguageType_DOTNET`
* `LanguageType_BASE`
* `LanguageType_PHP`

-}
type LanguageType
    = LanguageType_JAVA
    | LanguageType_PYTHON
    | LanguageType_NODE_JS
    | LanguageType_RUBY
    | LanguageType_GOLANG
    | LanguageType_DOCKER
    | LanguageType_ANDROID
    | LanguageType_DOTNET
    | LanguageType_BASE
    | LanguageType_PHP



languageTypeDecoder : JD.Decoder LanguageType
languageTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "JAVA" ->
                        JD.succeed LanguageType_JAVA

                    "PYTHON" ->
                        JD.succeed LanguageType_PYTHON

                    "NODE_JS" ->
                        JD.succeed LanguageType_NODE_JS

                    "RUBY" ->
                        JD.succeed LanguageType_RUBY

                    "GOLANG" ->
                        JD.succeed LanguageType_GOLANG

                    "DOCKER" ->
                        JD.succeed LanguageType_DOCKER

                    "ANDROID" ->
                        JD.succeed LanguageType_ANDROID

                    "DOTNET" ->
                        JD.succeed LanguageType_DOTNET

                    "BASE" ->
                        JD.succeed LanguageType_BASE

                    "PHP" ->
                        JD.succeed LanguageType_PHP


                    _ ->
                        JD.fail "bad thing"
            )




languageTypeToString : LanguageType -> String
languageTypeToString val =
    case val of
        LanguageType_JAVA ->
            "JAVA"

        LanguageType_PYTHON ->
            "PYTHON"

        LanguageType_NODE_JS ->
            "NODE_JS"

        LanguageType_RUBY ->
            "RUBY"

        LanguageType_GOLANG ->
            "GOLANG"

        LanguageType_DOCKER ->
            "DOCKER"

        LanguageType_ANDROID ->
            "ANDROID"

        LanguageType_DOTNET ->
            "DOTNET"

        LanguageType_BASE ->
            "BASE"

        LanguageType_PHP ->
            "PHP"




{-| Type of HTTP response from listBuildsForProje
-}
type alias ListBuildsForProjectOutput =
    { ids : Maybe (List String)
    , nextToken : Maybe String
    }



listBuildsForProjectOutputDecoder : JD.Decoder ListBuildsForProjectOutput
listBuildsForProjectOutputDecoder =
    JD.succeed ListBuildsForProjectOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ids", "Ids"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listBuildsForProjectOutputToString : ListBuildsForProjectOutput -> String -- List (String, String)
listBuildsForProjectOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ids" "" -- val.ids
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listBuil
-}
type alias ListBuildsOutput =
    { ids : Maybe (List String)
    , nextToken : Maybe String
    }



listBuildsOutputDecoder : JD.Decoder ListBuildsOutput
listBuildsOutputDecoder =
    JD.succeed ListBuildsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ids", "Ids"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listBuildsOutputToString : ListBuildsOutput -> String -- List (String, String)
listBuildsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ids" "" -- val.ids
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listCuratedEnvironmentImag
-}
type alias ListCuratedEnvironmentImagesOutput =
    { platforms : Maybe (List EnvironmentPlatform)
    }



listCuratedEnvironmentImagesOutputDecoder : JD.Decoder ListCuratedEnvironmentImagesOutput
listCuratedEnvironmentImagesOutputDecoder =
    JD.succeed ListCuratedEnvironmentImagesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["platforms", "Platforms"]
            (JD.list environmentPlatformDecoder)
        )
        




listCuratedEnvironmentImagesOutputToString : ListCuratedEnvironmentImagesOutput -> String -- List (String, String)
listCuratedEnvironmentImagesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "platforms" "" -- val.platforms
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listProjec
-}
type alias ListProjectsOutput =
    { nextToken : Maybe String
    , projects : Maybe (List String)
    }



listProjectsOutputDecoder : JD.Decoder ListProjectsOutput
listProjectsOutputDecoder =
    JD.succeed ListProjectsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["projects", "Projects"]
            (JD.list JD.string)
        )
        




listProjectsOutputToString : ListProjectsOutput -> String -- List (String, String)
listProjectsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "projects" "" -- val.projects
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listSourceCredentia
-}
type alias ListSourceCredentialsOutput =
    { sourceCredentialsInfos : Maybe (List SourceCredentialsInfo)
    }



listSourceCredentialsOutputDecoder : JD.Decoder ListSourceCredentialsOutput
listSourceCredentialsOutputDecoder =
    JD.succeed ListSourceCredentialsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sourceCredentialsInfos", "SourceCredentialsInfos"]
            (JD.list sourceCredentialsInfoDecoder)
        )
        




listSourceCredentialsOutputToString : ListSourceCredentialsOutput -> String -- List (String, String)
listSourceCredentialsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceCredentialsInfos" "" -- val.sourceCredentialsInfos
        
    --     |> Dict.toList
    ""



{-| <p> Information about logs for a build project. These can be logs in Amazon CloudWatch Logs, built in a specified S3 bucket, or both. </p>
-}
type alias LogsConfig =
    { cloudWatchLogs : Maybe CloudWatchLogsConfig
    , s3Logs : Maybe S3LogsConfig
    }



logsConfigDecoder : JD.Decoder LogsConfig
logsConfigDecoder =
    JD.succeed LogsConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cloudWatchLogs", "CloudWatchLogs"]
            cloudWatchLogsConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["s3Logs", "S3Logs"]
            s3LogsConfigDecoder
        )
        




logsConfigToString : LogsConfig -> String -- List (String, String)
logsConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cloudWatchLogs" "" -- val.cloudWatchLogs
        
    --     |> Dict.insert
    --         "s3Logs" "" -- val.s3Logs
        
    --     |> Dict.toList
    ""



{-| One of

* `LogsConfigStatusType_ENABLED`
* `LogsConfigStatusType_DISABLED`

-}
type LogsConfigStatusType
    = LogsConfigStatusType_ENABLED
    | LogsConfigStatusType_DISABLED



logsConfigStatusTypeDecoder : JD.Decoder LogsConfigStatusType
logsConfigStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed LogsConfigStatusType_ENABLED

                    "DISABLED" ->
                        JD.succeed LogsConfigStatusType_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )




logsConfigStatusTypeToString : LogsConfigStatusType -> String
logsConfigStatusTypeToString val =
    case val of
        LogsConfigStatusType_ENABLED ->
            "ENABLED"

        LogsConfigStatusType_DISABLED ->
            "DISABLED"




{-| <p>Information about build logs in Amazon CloudWatch Logs.</p>
-}
type alias LogsLocation =
    { groupName : Maybe String
    , streamName : Maybe String
    , deepLink : Maybe String
    , s3DeepLink : Maybe String
    , cloudWatchLogs : Maybe CloudWatchLogsConfig
    , s3Logs : Maybe S3LogsConfig
    }



logsLocationDecoder : JD.Decoder LogsLocation
logsLocationDecoder =
    JD.succeed LogsLocation
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["groupName", "GroupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["streamName", "StreamName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deepLink", "DeepLink"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["s3DeepLink", "S3DeepLink"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cloudWatchLogs", "CloudWatchLogs"]
            cloudWatchLogsConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["s3Logs", "S3Logs"]
            s3LogsConfigDecoder
        )
        




logsLocationToString : LogsLocation -> String -- List (String, String)
logsLocationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "groupName" "" -- val.groupName
        
    --     |> Dict.insert
    --         "streamName" "" -- val.streamName
        
    --     |> Dict.insert
    --         "deepLink" "" -- val.deepLink
        
    --     |> Dict.insert
    --         "s3DeepLink" "" -- val.s3DeepLink
        
    --     |> Dict.insert
    --         "cloudWatchLogs" "" -- val.cloudWatchLogs
        
    --     |> Dict.insert
    --         "s3Logs" "" -- val.s3Logs
        
    --     |> Dict.toList
    ""



{-| <p>Describes a network interface.</p>
-}
type alias NetworkInterface =
    { subnetId : Maybe String
    , networkInterfaceId : Maybe String
    }



networkInterfaceDecoder : JD.Decoder NetworkInterface
networkInterfaceDecoder =
    JD.succeed NetworkInterface
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["subnetId", "SubnetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["networkInterfaceId", "NetworkInterfaceId"]
            JD.string
        )
        




networkInterfaceToString : NetworkInterface -> String -- List (String, String)
networkInterfaceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subnetId" "" -- val.subnetId
        
    --     |> Dict.insert
    --         "networkInterfaceId" "" -- val.networkInterfaceId
        
    --     |> Dict.toList
    ""



{-| <p>Additional information about a build phase that has an error. You can use this information for troubleshooting.</p>
-}
type alias PhaseContext =
    { statusCode : Maybe String
    , message : Maybe String
    }



phaseContextDecoder : JD.Decoder PhaseContext
phaseContextDecoder =
    JD.succeed PhaseContext
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["statusCode", "StatusCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




phaseContextToString : PhaseContext -> String -- List (String, String)
phaseContextToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "statusCode" "" -- val.statusCode
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| One of

* `PlatformType_DEBIAN`
* `PlatformType_AMAZON_LINUX`
* `PlatformType_UBUNTU`
* `PlatformType_WINDOWS_SERVER`

-}
type PlatformType
    = PlatformType_DEBIAN
    | PlatformType_AMAZON_LINUX
    | PlatformType_UBUNTU
    | PlatformType_WINDOWS_SERVER



platformTypeDecoder : JD.Decoder PlatformType
platformTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEBIAN" ->
                        JD.succeed PlatformType_DEBIAN

                    "AMAZON_LINUX" ->
                        JD.succeed PlatformType_AMAZON_LINUX

                    "UBUNTU" ->
                        JD.succeed PlatformType_UBUNTU

                    "WINDOWS_SERVER" ->
                        JD.succeed PlatformType_WINDOWS_SERVER


                    _ ->
                        JD.fail "bad thing"
            )




platformTypeToString : PlatformType -> String
platformTypeToString val =
    case val of
        PlatformType_DEBIAN ->
            "DEBIAN"

        PlatformType_AMAZON_LINUX ->
            "AMAZON_LINUX"

        PlatformType_UBUNTU ->
            "UBUNTU"

        PlatformType_WINDOWS_SERVER ->
            "WINDOWS_SERVER"




{-| <p>Information about a build project.</p>
-}
type alias Project =
    { name : Maybe String
    , arn : Maybe String
    , description : Maybe String
    , source : Maybe ProjectSource
    , secondarySources : Maybe (List ProjectSource)
    , sourceVersion : Maybe String
    , secondarySourceVersions : Maybe (List ProjectSourceVersion)
    , artifacts : Maybe ProjectArtifacts
    , secondaryArtifacts : Maybe (List ProjectArtifacts)
    , cache : Maybe ProjectCache
    , environment : Maybe ProjectEnvironment
    , serviceRole : Maybe String
    , timeoutInMinutes : Maybe Int
    , queuedTimeoutInMinutes : Maybe Int
    , encryptionKey : Maybe String
    , tags : Maybe (List Tag)
    , created : Maybe Posix
    , lastModified : Maybe Posix
    , webhook : Maybe Webhook
    , vpcConfig : Maybe VpcConfig
    , badge : Maybe ProjectBadge
    , logsConfig : Maybe LogsConfig
    }



projectDecoder : JD.Decoder Project
projectDecoder =
    JD.succeed Project
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
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
            ["source", "Source"]
            projectSourceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["secondarySources", "SecondarySources"]
            (JD.list projectSourceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sourceVersion", "SourceVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["secondarySourceVersions", "SecondarySourceVersions"]
            (JD.list projectSourceVersionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["artifacts", "Artifacts"]
            projectArtifactsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["secondaryArtifacts", "SecondaryArtifacts"]
            (JD.list projectArtifactsDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cache", "Cache"]
            projectCacheDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["environment", "Environment"]
            projectEnvironmentDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serviceRole", "ServiceRole"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["timeoutInMinutes", "TimeoutInMinutes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["queuedTimeoutInMinutes", "QueuedTimeoutInMinutes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["encryptionKey", "EncryptionKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["created", "Created"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastModified", "LastModified"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["webhook", "Webhook"]
            webhookDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpcConfig", "VpcConfig"]
            vpcConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["badge", "Badge"]
            projectBadgeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logsConfig", "LogsConfig"]
            logsConfigDecoder
        )
        




projectToString : Project -> String -- List (String, String)
projectToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "secondarySources" "" -- val.secondarySources
        
    --     |> Dict.insert
    --         "sourceVersion" "" -- val.sourceVersion
        
    --     |> Dict.insert
    --         "secondarySourceVersions" "" -- val.secondarySourceVersions
        
    --     |> Dict.insert
    --         "artifacts" "" -- val.artifacts
        
    --     |> Dict.insert
    --         "secondaryArtifacts" "" -- val.secondaryArtifacts
        
    --     |> Dict.insert
    --         "cache" "" -- val.cache
        
    --     |> Dict.insert
    --         "environment" "" -- val.environment
        
    --     |> Dict.insert
    --         "serviceRole" "" -- val.serviceRole
        
    --     |> Dict.insert
    --         "timeoutInMinutes" "" -- val.timeoutInMinutes
        
    --     |> Dict.insert
    --         "queuedTimeoutInMinutes" "" -- val.queuedTimeoutInMinutes
        
    --     |> Dict.insert
    --         "encryptionKey" "" -- val.encryptionKey
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "lastModified" "" -- val.lastModified
        
    --     |> Dict.insert
    --         "webhook" "" -- val.webhook
        
    --     |> Dict.insert
    --         "vpcConfig" "" -- val.vpcConfig
        
    --     |> Dict.insert
    --         "badge" "" -- val.badge
        
    --     |> Dict.insert
    --         "logsConfig" "" -- val.logsConfig
        
    --     |> Dict.toList
    ""



{-| <p>Information about the build output artifacts for the build project.</p>
-}
type alias ProjectArtifacts =
    { type_ : ArtifactsType
    , location : Maybe String
    , path : Maybe String
    , namespaceType : Maybe ArtifactNamespace
    , name : Maybe String
    , packaging : Maybe ArtifactPackaging
    , overrideArtifactName : Maybe Bool
    , encryptionDisabled : Maybe Bool
    , artifactIdentifier : Maybe String
    }



projectArtifactsDecoder : JD.Decoder ProjectArtifacts
projectArtifactsDecoder =
    JD.succeed ProjectArtifacts
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            artifactsTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["path", "Path"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["namespaceType", "NamespaceType"]
            artifactNamespaceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["packaging", "Packaging"]
            artifactPackagingDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["overrideArtifactName", "OverrideArtifactName"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["encryptionDisabled", "EncryptionDisabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["artifactIdentifier", "ArtifactIdentifier"]
            JD.string
        )
        




projectArtifactsToString : ProjectArtifacts -> String -- List (String, String)
projectArtifactsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "path" "" -- val.path
        
    --     |> Dict.insert
    --         "namespaceType" "" -- val.namespaceType
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "packaging" "" -- val.packaging
        
    --     |> Dict.insert
    --         "overrideArtifactName" "" -- val.overrideArtifactName
        
    --     |> Dict.insert
    --         "encryptionDisabled" "" -- val.encryptionDisabled
        
    --     |> Dict.insert
    --         "artifactIdentifier" "" -- val.artifactIdentifier
        
    --     |> Dict.toList
    ""



{-| <p>Information about the build badge for the build project.</p>
-}
type alias ProjectBadge =
    { badgeEnabled : Maybe Bool
    , badgeRequestUrl : Maybe String
    }



projectBadgeDecoder : JD.Decoder ProjectBadge
projectBadgeDecoder =
    JD.succeed ProjectBadge
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["badgeEnabled", "BadgeEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["badgeRequestUrl", "BadgeRequestUrl"]
            JD.string
        )
        




projectBadgeToString : ProjectBadge -> String -- List (String, String)
projectBadgeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "badgeEnabled" "" -- val.badgeEnabled
        
    --     |> Dict.insert
    --         "badgeRequestUrl" "" -- val.badgeRequestUrl
        
    --     |> Dict.toList
    ""



{-| <p>Information about the cache for the build project.</p>
-}
type alias ProjectCache =
    { type_ : CacheType
    , location : Maybe String
    , modes : Maybe (List CacheMode)
    }



projectCacheDecoder : JD.Decoder ProjectCache
projectCacheDecoder =
    JD.succeed ProjectCache
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            cacheTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["modes", "Modes"]
            (JD.list cacheModeDecoder)
        )
        




projectCacheToString : ProjectCache -> String -- List (String, String)
projectCacheToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "modes" "" -- val.modes
        
    --     |> Dict.toList
    ""



{-| <p>Information about the build environment of the build project.</p>
-}
type alias ProjectEnvironment =
    { type_ : EnvironmentType
    , image : String
    , computeType : ComputeType
    , environmentVariables : Maybe (List EnvironmentVariable)
    , privilegedMode : Maybe Bool
    , certificate : Maybe String
    , registryCredential : Maybe RegistryCredential
    , imagePullCredentialsType : Maybe ImagePullCredentialsType
    }



projectEnvironmentDecoder : JD.Decoder ProjectEnvironment
projectEnvironmentDecoder =
    JD.succeed ProjectEnvironment
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            environmentTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["image", "Image"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["computeType", "ComputeType"]
            computeTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["environmentVariables", "EnvironmentVariables"]
            (JD.list environmentVariableDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["privilegedMode", "PrivilegedMode"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["certificate", "Certificate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["registryCredential", "RegistryCredential"]
            registryCredentialDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["imagePullCredentialsType", "ImagePullCredentialsType"]
            imagePullCredentialsTypeDecoder
        )
        




projectEnvironmentToString : ProjectEnvironment -> String -- List (String, String)
projectEnvironmentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "image" "" -- val.image
        
    --     |> Dict.insert
    --         "computeType" "" -- val.computeType
        
    --     |> Dict.insert
    --         "environmentVariables" "" -- val.environmentVariables
        
    --     |> Dict.insert
    --         "privilegedMode" "" -- val.privilegedMode
        
    --     |> Dict.insert
    --         "certificate" "" -- val.certificate
        
    --     |> Dict.insert
    --         "registryCredential" "" -- val.registryCredential
        
    --     |> Dict.insert
    --         "imagePullCredentialsType" "" -- val.imagePullCredentialsType
        
    --     |> Dict.toList
    ""



{-| One of

* `ProjectSortByType_NAME`
* `ProjectSortByType_CREATED_TIME`
* `ProjectSortByType_LAST_MODIFIED_TIME`

-}
type ProjectSortByType
    = ProjectSortByType_NAME
    | ProjectSortByType_CREATED_TIME
    | ProjectSortByType_LAST_MODIFIED_TIME



projectSortByTypeDecoder : JD.Decoder ProjectSortByType
projectSortByTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NAME" ->
                        JD.succeed ProjectSortByType_NAME

                    "CREATED_TIME" ->
                        JD.succeed ProjectSortByType_CREATED_TIME

                    "LAST_MODIFIED_TIME" ->
                        JD.succeed ProjectSortByType_LAST_MODIFIED_TIME


                    _ ->
                        JD.fail "bad thing"
            )




projectSortByTypeToString : ProjectSortByType -> String
projectSortByTypeToString val =
    case val of
        ProjectSortByType_NAME ->
            "NAME"

        ProjectSortByType_CREATED_TIME ->
            "CREATED_TIME"

        ProjectSortByType_LAST_MODIFIED_TIME ->
            "LAST_MODIFIED_TIME"




{-| <p>Information about the build input source code for the build project.</p>
-}
type alias ProjectSource =
    { type_ : SourceType
    , location : Maybe String
    , gitCloneDepth : Maybe Int
    , gitSubmodulesConfig : Maybe GitSubmodulesConfig
    , buildspec : Maybe String
    , auth : Maybe SourceAuth
    , reportBuildStatus : Maybe Bool
    , insecureSsl : Maybe Bool
    , sourceIdentifier : Maybe String
    }



projectSourceDecoder : JD.Decoder ProjectSource
projectSourceDecoder =
    JD.succeed ProjectSource
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            sourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["gitCloneDepth", "GitCloneDepth"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["gitSubmodulesConfig", "GitSubmodulesConfig"]
            gitSubmodulesConfigDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["buildspec", "Buildspec"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["auth", "Auth"]
            sourceAuthDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["reportBuildStatus", "ReportBuildStatus"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["insecureSsl", "InsecureSsl"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sourceIdentifier", "SourceIdentifier"]
            JD.string
        )
        




projectSourceToString : ProjectSource -> String -- List (String, String)
projectSourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "gitCloneDepth" "" -- val.gitCloneDepth
        
    --     |> Dict.insert
    --         "gitSubmodulesConfig" "" -- val.gitSubmodulesConfig
        
    --     |> Dict.insert
    --         "buildspec" "" -- val.buildspec
        
    --     |> Dict.insert
    --         "auth" "" -- val.auth
        
    --     |> Dict.insert
    --         "reportBuildStatus" "" -- val.reportBuildStatus
        
    --     |> Dict.insert
    --         "insecureSsl" "" -- val.insecureSsl
        
    --     |> Dict.insert
    --         "sourceIdentifier" "" -- val.sourceIdentifier
        
    --     |> Dict.toList
    ""



{-| <p> A source identifier and its corresponding version. </p>
-}
type alias ProjectSourceVersion =
    { sourceIdentifier : String
    , sourceVersion : String
    }



projectSourceVersionDecoder : JD.Decoder ProjectSourceVersion
projectSourceVersionDecoder =
    JD.succeed ProjectSourceVersion
        
        |> JDP.custom (AWS.Core.Decode.required
            ["sourceIdentifier", "SourceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["sourceVersion", "SourceVersion"]
            JD.string
        )
        




projectSourceVersionToString : ProjectSourceVersion -> String -- List (String, String)
projectSourceVersionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceIdentifier" "" -- val.sourceIdentifier
        
    --     |> Dict.insert
    --         "sourceVersion" "" -- val.sourceVersion
        
    --     |> Dict.toList
    ""



{-| <p> Information about credentials that provide access to a private Docker registry. When this is set: </p> <ul> <li> <p> <code>imagePullCredentialsType</code> must be set to <code>SERVICE_ROLE</code>. </p> </li> <li> <p> images cannot be curated or an Amazon ECR image.</p> </li> </ul> <p> For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-private-registry.html">Private Registry with AWS Secrets Manager Sample for AWS CodeBuild</a>. </p>
-}
type alias RegistryCredential =
    { credential : String
    , credentialProvider : CredentialProviderType
    }



registryCredentialDecoder : JD.Decoder RegistryCredential
registryCredentialDecoder =
    JD.succeed RegistryCredential
        
        |> JDP.custom (AWS.Core.Decode.required
            ["credential", "Credential"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["credentialProvider", "CredentialProvider"]
            credentialProviderTypeDecoder
        )
        




registryCredentialToString : RegistryCredential -> String -- List (String, String)
registryCredentialToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "credential" "" -- val.credential
        
    --     |> Dict.insert
    --         "credentialProvider" "" -- val.credentialProvider
        
    --     |> Dict.toList
    ""



{-| <p> Information about S3 logs for a build project. </p>
-}
type alias S3LogsConfig =
    { status : LogsConfigStatusType
    , location : Maybe String
    , encryptionDisabled : Maybe Bool
    }



s3LogsConfigDecoder : JD.Decoder S3LogsConfig
s3LogsConfigDecoder =
    JD.succeed S3LogsConfig
        
        |> JDP.custom (AWS.Core.Decode.required
            ["status", "Status"]
            logsConfigStatusTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["encryptionDisabled", "EncryptionDisabled"]
            JD.bool
        )
        




s3LogsConfigToString : S3LogsConfig -> String -- List (String, String)
s3LogsConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "encryptionDisabled" "" -- val.encryptionDisabled
        
    --     |> Dict.toList
    ""



{-| One of

* `ServerType_GITHUB`
* `ServerType_BITBUCKET`
* `ServerType_GITHUB_ENTERPRISE`

-}
type ServerType
    = ServerType_GITHUB
    | ServerType_BITBUCKET
    | ServerType_GITHUB_ENTERPRISE



serverTypeDecoder : JD.Decoder ServerType
serverTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GITHUB" ->
                        JD.succeed ServerType_GITHUB

                    "BITBUCKET" ->
                        JD.succeed ServerType_BITBUCKET

                    "GITHUB_ENTERPRISE" ->
                        JD.succeed ServerType_GITHUB_ENTERPRISE


                    _ ->
                        JD.fail "bad thing"
            )




serverTypeToString : ServerType -> String
serverTypeToString val =
    case val of
        ServerType_GITHUB ->
            "GITHUB"

        ServerType_BITBUCKET ->
            "BITBUCKET"

        ServerType_GITHUB_ENTERPRISE ->
            "GITHUB_ENTERPRISE"




{-| One of

* `SortOrderType_ASCENDING`
* `SortOrderType_DESCENDING`

-}
type SortOrderType
    = SortOrderType_ASCENDING
    | SortOrderType_DESCENDING



sortOrderTypeDecoder : JD.Decoder SortOrderType
sortOrderTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASCENDING" ->
                        JD.succeed SortOrderType_ASCENDING

                    "DESCENDING" ->
                        JD.succeed SortOrderType_DESCENDING


                    _ ->
                        JD.fail "bad thing"
            )




sortOrderTypeToString : SortOrderType -> String
sortOrderTypeToString val =
    case val of
        SortOrderType_ASCENDING ->
            "ASCENDING"

        SortOrderType_DESCENDING ->
            "DESCENDING"




{-| <p>Information about the authorization settings for AWS CodeBuild to access the source code to be built.</p> <p>This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly.</p>
-}
type alias SourceAuth =
    { type_ : SourceAuthType
    , resource : Maybe String
    }



sourceAuthDecoder : JD.Decoder SourceAuth
sourceAuthDecoder =
    JD.succeed SourceAuth
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            sourceAuthTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resource", "Resource"]
            JD.string
        )
        




sourceAuthToString : SourceAuth -> String -- List (String, String)
sourceAuthToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.toList
    ""



{-| One of

* `SourceAuthType_OAUTH`

-}
type SourceAuthType
    = SourceAuthType_OAUTH



sourceAuthTypeDecoder : JD.Decoder SourceAuthType
sourceAuthTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OAUTH" ->
                        JD.succeed SourceAuthType_OAUTH


                    _ ->
                        JD.fail "bad thing"
            )




sourceAuthTypeToString : SourceAuthType -> String
sourceAuthTypeToString val =
    case val of
        SourceAuthType_OAUTH ->
            "OAUTH"




{-| <p> Information about the credentials for a GitHub, GitHub Enterprise, or Bitbucket repository. </p>
-}
type alias SourceCredentialsInfo =
    { arn : Maybe String
    , serverType : Maybe ServerType
    , authType : Maybe AuthType
    }



sourceCredentialsInfoDecoder : JD.Decoder SourceCredentialsInfo
sourceCredentialsInfoDecoder =
    JD.succeed SourceCredentialsInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serverType", "ServerType"]
            serverTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authType", "AuthType"]
            authTypeDecoder
        )
        




sourceCredentialsInfoToString : SourceCredentialsInfo -> String -- List (String, String)
sourceCredentialsInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "serverType" "" -- val.serverType
        
    --     |> Dict.insert
    --         "authType" "" -- val.authType
        
    --     |> Dict.toList
    ""



{-| One of

* `SourceType_CODECOMMIT`
* `SourceType_CODEPIPELINE`
* `SourceType_GITHUB`
* `SourceType_S3`
* `SourceType_BITBUCKET`
* `SourceType_GITHUB_ENTERPRISE`
* `SourceType_NO_SOURCE`

-}
type SourceType
    = SourceType_CODECOMMIT
    | SourceType_CODEPIPELINE
    | SourceType_GITHUB
    | SourceType_S3
    | SourceType_BITBUCKET
    | SourceType_GITHUB_ENTERPRISE
    | SourceType_NO_SOURCE



sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CODECOMMIT" ->
                        JD.succeed SourceType_CODECOMMIT

                    "CODEPIPELINE" ->
                        JD.succeed SourceType_CODEPIPELINE

                    "GITHUB" ->
                        JD.succeed SourceType_GITHUB

                    "S3" ->
                        JD.succeed SourceType_S3

                    "BITBUCKET" ->
                        JD.succeed SourceType_BITBUCKET

                    "GITHUB_ENTERPRISE" ->
                        JD.succeed SourceType_GITHUB_ENTERPRISE

                    "NO_SOURCE" ->
                        JD.succeed SourceType_NO_SOURCE


                    _ ->
                        JD.fail "bad thing"
            )




sourceTypeToString : SourceType -> String
sourceTypeToString val =
    case val of
        SourceType_CODECOMMIT ->
            "CODECOMMIT"

        SourceType_CODEPIPELINE ->
            "CODEPIPELINE"

        SourceType_GITHUB ->
            "GITHUB"

        SourceType_S3 ->
            "S3"

        SourceType_BITBUCKET ->
            "BITBUCKET"

        SourceType_GITHUB_ENTERPRISE ->
            "GITHUB_ENTERPRISE"

        SourceType_NO_SOURCE ->
            "NO_SOURCE"




{-| Type of HTTP response from startBui
-}
type alias StartBuildOutput =
    { build : Maybe Build
    }



startBuildOutputDecoder : JD.Decoder StartBuildOutput
startBuildOutputDecoder =
    JD.succeed StartBuildOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["build", "Build"]
            buildDecoder
        )
        




startBuildOutputToString : StartBuildOutput -> String -- List (String, String)
startBuildOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "build" "" -- val.build
        
    --     |> Dict.toList
    ""



{-| One of

* `StatusType_SUCCEEDED`
* `StatusType_FAILED`
* `StatusType_FAULT`
* `StatusType_TIMED_OUT`
* `StatusType_IN_PROGRESS`
* `StatusType_STOPPED`

-}
type StatusType
    = StatusType_SUCCEEDED
    | StatusType_FAILED
    | StatusType_FAULT
    | StatusType_TIMED_OUT
    | StatusType_IN_PROGRESS
    | StatusType_STOPPED



statusTypeDecoder : JD.Decoder StatusType
statusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCEEDED" ->
                        JD.succeed StatusType_SUCCEEDED

                    "FAILED" ->
                        JD.succeed StatusType_FAILED

                    "FAULT" ->
                        JD.succeed StatusType_FAULT

                    "TIMED_OUT" ->
                        JD.succeed StatusType_TIMED_OUT

                    "IN_PROGRESS" ->
                        JD.succeed StatusType_IN_PROGRESS

                    "STOPPED" ->
                        JD.succeed StatusType_STOPPED


                    _ ->
                        JD.fail "bad thing"
            )




statusTypeToString : StatusType -> String
statusTypeToString val =
    case val of
        StatusType_SUCCEEDED ->
            "SUCCEEDED"

        StatusType_FAILED ->
            "FAILED"

        StatusType_FAULT ->
            "FAULT"

        StatusType_TIMED_OUT ->
            "TIMED_OUT"

        StatusType_IN_PROGRESS ->
            "IN_PROGRESS"

        StatusType_STOPPED ->
            "STOPPED"




{-| Type of HTTP response from stopBui
-}
type alias StopBuildOutput =
    { build : Maybe Build
    }



stopBuildOutputDecoder : JD.Decoder StopBuildOutput
stopBuildOutputDecoder =
    JD.succeed StopBuildOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["build", "Build"]
            buildDecoder
        )
        




stopBuildOutputToString : StopBuildOutput -> String -- List (String, String)
stopBuildOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "build" "" -- val.build
        
    --     |> Dict.toList
    ""



{-| <p>A tag, consisting of a key and a value.</p> <p>This tag is available for use by AWS services that support tags in AWS CodeBuild.</p>
-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["key", "Key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["value", "Value"]
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



{-| Type of HTTP response from updateProje
-}
type alias UpdateProjectOutput =
    { project : Maybe Project
    }



updateProjectOutputDecoder : JD.Decoder UpdateProjectOutput
updateProjectOutputDecoder =
    JD.succeed UpdateProjectOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["project", "Project"]
            projectDecoder
        )
        




updateProjectOutputToString : UpdateProjectOutput -> String -- List (String, String)
updateProjectOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "project" "" -- val.project
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateWebho
-}
type alias UpdateWebhookOutput =
    { webhook : Maybe Webhook
    }



updateWebhookOutputDecoder : JD.Decoder UpdateWebhookOutput
updateWebhookOutputDecoder =
    JD.succeed UpdateWebhookOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["webhook", "Webhook"]
            webhookDecoder
        )
        




updateWebhookOutputToString : UpdateWebhookOutput -> String -- List (String, String)
updateWebhookOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "webhook" "" -- val.webhook
        
    --     |> Dict.toList
    ""



{-| <p>Information about the VPC configuration that AWS CodeBuild accesses.</p>
-}
type alias VpcConfig =
    { vpcId : Maybe String
    , subnets : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    }



vpcConfigDecoder : JD.Decoder VpcConfig
vpcConfigDecoder =
    JD.succeed VpcConfig
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vpcId", "VpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["subnets", "Subnets"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["securityGroupIds", "SecurityGroupIds"]
            (JD.list JD.string)
        )
        




vpcConfigToString : VpcConfig -> String -- List (String, String)
vpcConfigToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
        
    --     |> Dict.insert
    --         "subnets" "" -- val.subnets
        
    --     |> Dict.insert
    --         "securityGroupIds" "" -- val.securityGroupIds
        
    --     |> Dict.toList
    ""



{-| <p>Information about a webhook that connects repository events to a build project in AWS CodeBuild.</p>
-}
type alias Webhook =
    { url : Maybe String
    , payloadUrl : Maybe String
    , secret : Maybe String
    , branchFilter : Maybe String
    , filterGroups : Maybe (List (List WebhookFilter))
    , lastModifiedSecret : Maybe Posix
    }



webhookDecoder : JD.Decoder Webhook
webhookDecoder =
    JD.succeed Webhook
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["url", "Url"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["payloadUrl", "PayloadUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["secret", "Secret"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["branchFilter", "BranchFilter"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filterGroups", "FilterGroups"]
            (JD.list (JD.list webhookFilterDecoder))
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastModifiedSecret", "LastModifiedSecret"]
            JDX.datetime
        )
        




webhookToString : Webhook -> String -- List (String, String)
webhookToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "url" "" -- val.url
        
    --     |> Dict.insert
    --         "payloadUrl" "" -- val.payloadUrl
        
    --     |> Dict.insert
    --         "secret" "" -- val.secret
        
    --     |> Dict.insert
    --         "branchFilter" "" -- val.branchFilter
        
    --     |> Dict.insert
    --         "filterGroups" "" -- val.filterGroups
        
    --     |> Dict.insert
    --         "lastModifiedSecret" "" -- val.lastModifiedSecret
        
    --     |> Dict.toList
    ""



{-| <p> A filter used to determine which webhooks trigger a build. </p>
-}
type alias WebhookFilter =
    { type_ : WebhookFilterType
    , pattern : String
    , excludeMatchedPattern : Maybe Bool
    }



webhookFilterDecoder : JD.Decoder WebhookFilter
webhookFilterDecoder =
    JD.succeed WebhookFilter
        
        |> JDP.custom (AWS.Core.Decode.required
            ["type", "Type"]
            webhookFilterTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pattern", "Pattern"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["excludeMatchedPattern", "ExcludeMatchedPattern"]
            JD.bool
        )
        




webhookFilterToString : WebhookFilter -> String -- List (String, String)
webhookFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "pattern" "" -- val.pattern
        
    --     |> Dict.insert
    --         "excludeMatchedPattern" "" -- val.excludeMatchedPattern
        
    --     |> Dict.toList
    ""



{-| One of

* `WebhookFilterType_EVENT`
* `WebhookFilterType_BASE_REF`
* `WebhookFilterType_HEAD_REF`
* `WebhookFilterType_ACTOR_ACCOUNT_ID`
* `WebhookFilterType_FILE_PATH`

-}
type WebhookFilterType
    = WebhookFilterType_EVENT
    | WebhookFilterType_BASE_REF
    | WebhookFilterType_HEAD_REF
    | WebhookFilterType_ACTOR_ACCOUNT_ID
    | WebhookFilterType_FILE_PATH



webhookFilterTypeDecoder : JD.Decoder WebhookFilterType
webhookFilterTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EVENT" ->
                        JD.succeed WebhookFilterType_EVENT

                    "BASE_REF" ->
                        JD.succeed WebhookFilterType_BASE_REF

                    "HEAD_REF" ->
                        JD.succeed WebhookFilterType_HEAD_REF

                    "ACTOR_ACCOUNT_ID" ->
                        JD.succeed WebhookFilterType_ACTOR_ACCOUNT_ID

                    "FILE_PATH" ->
                        JD.succeed WebhookFilterType_FILE_PATH


                    _ ->
                        JD.fail "bad thing"
            )




webhookFilterTypeToString : WebhookFilterType -> String
webhookFilterTypeToString val =
    case val of
        WebhookFilterType_EVENT ->
            "EVENT"

        WebhookFilterType_BASE_REF ->
            "BASE_REF"

        WebhookFilterType_HEAD_REF ->
            "HEAD_REF"

        WebhookFilterType_ACTOR_ACCOUNT_ID ->
            "ACTOR_ACCOUNT_ID"

        WebhookFilterType_FILE_PATH ->
            "FILE_PATH"







{-| undefined
-}
type alias BatchDeleteBuildsInput =
    { ids : (List String)
    }


{-| undefined
-}
type alias BatchGetBuildsInput =
    { ids : (List String)
    }


{-| undefined
-}
type alias BatchGetProjectsInput =
    { names : (List String)
    }


{-| undefined
-}
type alias CreateProjectInput =
    { name : String
    , description : Maybe String
    , source : ProjectSource
    , secondarySources : Maybe (List ProjectSource)
    , sourceVersion : Maybe String
    , secondarySourceVersions : Maybe (List ProjectSourceVersion)
    , artifacts : ProjectArtifacts
    , secondaryArtifacts : Maybe (List ProjectArtifacts)
    , cache : Maybe ProjectCache
    , environment : ProjectEnvironment
    , serviceRole : String
    , timeoutInMinutes : Maybe Int
    , queuedTimeoutInMinutes : Maybe Int
    , encryptionKey : Maybe String
    , tags : Maybe (List Tag)
    , vpcConfig : Maybe VpcConfig
    , badgeEnabled : Maybe Bool
    , logsConfig : Maybe LogsConfig
    }


{-| undefined
-}
type alias CreateWebhookInput =
    { projectName : String
    , branchFilter : Maybe String
    , filterGroups : Maybe (List (List WebhookFilter))
    }


{-| undefined
-}
type alias DeleteProjectInput =
    { name : String
    }


{-| undefined
-}
type alias DeleteSourceCredentialsInput =
    { arn : String
    }


{-| undefined
-}
type alias DeleteWebhookInput =
    { projectName : String
    }


{-| undefined
-}
type alias ImportSourceCredentialsInput =
    { username : Maybe String
    , token : String
    , serverType : ServerType
    , authType : AuthType
    }


{-| undefined
-}
type alias InvalidateProjectCacheInput =
    { projectName : String
    }


{-| undefined
-}
type alias ListBuildsForProjectInput =
    { projectName : String
    , sortOrder : Maybe SortOrderType
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListBuildsInput =
    { sortOrder : Maybe SortOrderType
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListCuratedEnvironmentImagesInput =
    { 
    }


{-| undefined
-}
type alias ListProjectsInput =
    { sortBy : Maybe ProjectSortByType
    , sortOrder : Maybe SortOrderType
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListSourceCredentialsInput =
    { 
    }


{-| undefined
-}
type alias StartBuildInput =
    { projectName : String
    , secondarySourcesOverride : Maybe (List ProjectSource)
    , secondarySourcesVersionOverride : Maybe (List ProjectSourceVersion)
    , sourceVersion : Maybe String
    , artifactsOverride : Maybe ProjectArtifacts
    , secondaryArtifactsOverride : Maybe (List ProjectArtifacts)
    , environmentVariablesOverride : Maybe (List EnvironmentVariable)
    , sourceTypeOverride : Maybe SourceType
    , sourceLocationOverride : Maybe String
    , sourceAuthOverride : Maybe SourceAuth
    , gitCloneDepthOverride : Maybe Int
    , gitSubmodulesConfigOverride : Maybe GitSubmodulesConfig
    , buildspecOverride : Maybe String
    , insecureSslOverride : Maybe Bool
    , reportBuildStatusOverride : Maybe Bool
    , environmentTypeOverride : Maybe EnvironmentType
    , imageOverride : Maybe String
    , computeTypeOverride : Maybe ComputeType
    , certificateOverride : Maybe String
    , cacheOverride : Maybe ProjectCache
    , serviceRoleOverride : Maybe String
    , privilegedModeOverride : Maybe Bool
    , timeoutInMinutesOverride : Maybe Int
    , queuedTimeoutInMinutesOverride : Maybe Int
    , idempotencyToken : Maybe String
    , logsConfigOverride : Maybe LogsConfig
    , registryCredentialOverride : Maybe RegistryCredential
    , imagePullCredentialsTypeOverride : Maybe ImagePullCredentialsType
    }


{-| undefined
-}
type alias StopBuildInput =
    { id : String
    }


{-| undefined
-}
type alias UpdateProjectInput =
    { name : String
    , description : Maybe String
    , source : Maybe ProjectSource
    , secondarySources : Maybe (List ProjectSource)
    , sourceVersion : Maybe String
    , secondarySourceVersions : Maybe (List ProjectSourceVersion)
    , artifacts : Maybe ProjectArtifacts
    , secondaryArtifacts : Maybe (List ProjectArtifacts)
    , cache : Maybe ProjectCache
    , environment : Maybe ProjectEnvironment
    , serviceRole : Maybe String
    , timeoutInMinutes : Maybe Int
    , queuedTimeoutInMinutes : Maybe Int
    , encryptionKey : Maybe String
    , tags : Maybe (List Tag)
    , vpcConfig : Maybe VpcConfig
    , badgeEnabled : Maybe Bool
    , logsConfig : Maybe LogsConfig
    }


{-| undefined
-}
type alias UpdateWebhookInput =
    { projectName : String
    , branchFilter : Maybe String
    , rotateSecret : Maybe Bool
    , filterGroups : Maybe (List (List WebhookFilter))
    }






















batchDeleteBuildsInputEncoder : BatchDeleteBuildsInput -> JE.Value
batchDeleteBuildsInputEncoder data =
    []
        
        
        |> (::) ("ids", data.ids |> (JE.list (JE.string)))
        
        
        |> JE.object






batchDeleteBuildsOutputEncoder : BatchDeleteBuildsOutput -> JE.Value
batchDeleteBuildsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("buildsDeleted", data.buildsDeleted)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (buildNotDeletedEncoder))
            ("buildsNotDeleted", data.buildsNotDeleted)
        
        
        |> JE.object






batchGetBuildsInputEncoder : BatchGetBuildsInput -> JE.Value
batchGetBuildsInputEncoder data =
    []
        
        
        |> (::) ("ids", data.ids |> (JE.list (JE.string)))
        
        
        |> JE.object






batchGetBuildsOutputEncoder : BatchGetBuildsOutput -> JE.Value
batchGetBuildsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (buildEncoder))
            ("builds", data.builds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("buildsNotFound", data.buildsNotFound)
        
        
        |> JE.object






batchGetProjectsInputEncoder : BatchGetProjectsInput -> JE.Value
batchGetProjectsInputEncoder data =
    []
        
        
        |> (::) ("names", data.names |> (JE.list (JE.string)))
        
        
        |> JE.object






batchGetProjectsOutputEncoder : BatchGetProjectsOutput -> JE.Value
batchGetProjectsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectEncoder))
            ("projects", data.projects)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("projectsNotFound", data.projectsNotFound)
        
        
        |> JE.object






buildEncoder : Build -> JE.Value
buildEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("startTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("endTime", data.endTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("currentPhase", data.currentPhase)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (statusTypeToString >> JE.string)
            ("buildStatus", data.buildStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceVersion", data.sourceVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("resolvedSourceVersion", data.resolvedSourceVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("projectName", data.projectName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (buildPhaseEncoder))
            ("phases", data.phases)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectSourceEncoder)
            ("source", data.source)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectSourceEncoder))
            ("secondarySources", data.secondarySources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectSourceVersionEncoder))
            ("secondarySourceVersions", data.secondarySourceVersions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (buildArtifactsEncoder)
            ("artifacts", data.artifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (buildArtifactsEncoder))
            ("secondaryArtifacts", data.secondaryArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectCacheEncoder)
            ("cache", data.cache)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectEnvironmentEncoder)
            ("environment", data.environment)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serviceRole", data.serviceRole)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (logsLocationEncoder)
            ("logs", data.logs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("timeoutInMinutes", data.timeoutInMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("queuedTimeoutInMinutes", data.queuedTimeoutInMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("buildComplete", data.buildComplete)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("initiator", data.initiator)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vpcConfigEncoder)
            ("vpcConfig", data.vpcConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (networkInterfaceEncoder)
            ("networkInterface", data.networkInterface)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("encryptionKey", data.encryptionKey)
        
        
        |> JE.object






buildArtifactsEncoder : BuildArtifacts -> JE.Value
buildArtifactsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sha256sum", data.sha256sum)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("md5sum", data.md5sum)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("overrideArtifactName", data.overrideArtifactName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("encryptionDisabled", data.encryptionDisabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("artifactIdentifier", data.artifactIdentifier)
        
        
        |> JE.object






buildNotDeletedEncoder : BuildNotDeleted -> JE.Value
buildNotDeletedEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("statusCode", data.statusCode)
        
        
        |> JE.object






buildPhaseEncoder : BuildPhase -> JE.Value
buildPhaseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (buildPhaseTypeToString >> JE.string)
            ("phaseType", data.phaseType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (statusTypeToString >> JE.string)
            ("phaseStatus", data.phaseStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("startTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("endTime", data.endTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("durationInSeconds", data.durationInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (phaseContextEncoder))
            ("contexts", data.contexts)
        
        
        |> JE.object


















cloudWatchLogsConfigEncoder : CloudWatchLogsConfig -> JE.Value
cloudWatchLogsConfigEncoder data =
    []
        
        
        |> (::) ("status", data.status |> (logsConfigStatusTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("groupName", data.groupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("streamName", data.streamName)
        
        
        |> JE.object










createProjectInputEncoder : CreateProjectInput -> JE.Value
createProjectInputEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> (::) ("source", data.source |> (projectSourceEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectSourceEncoder))
            ("secondarySources", data.secondarySources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceVersion", data.sourceVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectSourceVersionEncoder))
            ("secondarySourceVersions", data.secondarySourceVersions)
        
        
        
        |> (::) ("artifacts", data.artifacts |> (projectArtifactsEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectArtifactsEncoder))
            ("secondaryArtifacts", data.secondaryArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectCacheEncoder)
            ("cache", data.cache)
        
        
        
        |> (::) ("environment", data.environment |> (projectEnvironmentEncoder))
        
        
        
        |> (::) ("serviceRole", data.serviceRole |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("timeoutInMinutes", data.timeoutInMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("queuedTimeoutInMinutes", data.queuedTimeoutInMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("encryptionKey", data.encryptionKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vpcConfigEncoder)
            ("vpcConfig", data.vpcConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("badgeEnabled", data.badgeEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (logsConfigEncoder)
            ("logsConfig", data.logsConfig)
        
        
        |> JE.object






createProjectOutputEncoder : CreateProjectOutput -> JE.Value
createProjectOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (projectEncoder)
            ("project", data.project)
        
        
        |> JE.object






createWebhookInputEncoder : CreateWebhookInput -> JE.Value
createWebhookInputEncoder data =
    []
        
        
        |> (::) ("projectName", data.projectName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("branchFilter", data.branchFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.list (webhookFilterEncoder)))
            ("filterGroups", data.filterGroups)
        
        
        |> JE.object






createWebhookOutputEncoder : CreateWebhookOutput -> JE.Value
createWebhookOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (webhookEncoder)
            ("webhook", data.webhook)
        
        
        |> JE.object










deleteProjectInputEncoder : DeleteProjectInput -> JE.Value
deleteProjectInputEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        |> JE.object






deleteProjectOutputEncoder : DeleteProjectOutput -> JE.Value
deleteProjectOutputEncoder data =
    []
        
        |> JE.object






deleteSourceCredentialsInputEncoder : DeleteSourceCredentialsInput -> JE.Value
deleteSourceCredentialsInputEncoder data =
    []
        
        
        |> (::) ("arn", data.arn |> (JE.string))
        
        
        |> JE.object






deleteSourceCredentialsOutputEncoder : DeleteSourceCredentialsOutput -> JE.Value
deleteSourceCredentialsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        |> JE.object






deleteWebhookInputEncoder : DeleteWebhookInput -> JE.Value
deleteWebhookInputEncoder data =
    []
        
        
        |> (::) ("projectName", data.projectName |> (JE.string))
        
        
        |> JE.object






deleteWebhookOutputEncoder : DeleteWebhookOutput -> JE.Value
deleteWebhookOutputEncoder data =
    []
        
        |> JE.object






environmentImageEncoder : EnvironmentImage -> JE.Value
environmentImageEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("versions", data.versions)
        
        
        |> JE.object






environmentLanguageEncoder : EnvironmentLanguage -> JE.Value
environmentLanguageEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (languageTypeToString >> JE.string)
            ("language", data.language)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (environmentImageEncoder))
            ("images", data.images)
        
        
        |> JE.object






environmentPlatformEncoder : EnvironmentPlatform -> JE.Value
environmentPlatformEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (platformTypeToString >> JE.string)
            ("platform", data.platform)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (environmentLanguageEncoder))
            ("languages", data.languages)
        
        
        |> JE.object










environmentVariableEncoder : EnvironmentVariable -> JE.Value
environmentVariableEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("value", data.value |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (environmentVariableTypeToString >> JE.string)
            ("type", data.type_)
        
        
        |> JE.object










gitSubmodulesConfigEncoder : GitSubmodulesConfig -> JE.Value
gitSubmodulesConfigEncoder data =
    []
        
        
        |> (::) ("fetchSubmodules", data.fetchSubmodules |> (JE.bool))
        
        
        |> JE.object










importSourceCredentialsInputEncoder : ImportSourceCredentialsInput -> JE.Value
importSourceCredentialsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("username", data.username)
        
        
        
        |> (::) ("token", data.token |> (JE.string))
        
        
        
        |> (::) ("serverType", data.serverType |> (serverTypeToString >> JE.string))
        
        
        
        |> (::) ("authType", data.authType |> (authTypeToString >> JE.string))
        
        
        |> JE.object






importSourceCredentialsOutputEncoder : ImportSourceCredentialsOutput -> JE.Value
importSourceCredentialsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        |> JE.object






invalidateProjectCacheInputEncoder : InvalidateProjectCacheInput -> JE.Value
invalidateProjectCacheInputEncoder data =
    []
        
        
        |> (::) ("projectName", data.projectName |> (JE.string))
        
        
        |> JE.object






invalidateProjectCacheOutputEncoder : InvalidateProjectCacheOutput -> JE.Value
invalidateProjectCacheOutputEncoder data =
    []
        
        |> JE.object










listBuildsForProjectInputEncoder : ListBuildsForProjectInput -> JE.Value
listBuildsForProjectInputEncoder data =
    []
        
        
        |> (::) ("projectName", data.projectName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sortOrderTypeToString >> JE.string)
            ("sortOrder", data.sortOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listBuildsForProjectOutputEncoder : ListBuildsForProjectOutput -> JE.Value
listBuildsForProjectOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ids", data.ids)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listBuildsInputEncoder : ListBuildsInput -> JE.Value
listBuildsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (sortOrderTypeToString >> JE.string)
            ("sortOrder", data.sortOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listBuildsOutputEncoder : ListBuildsOutput -> JE.Value
listBuildsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ids", data.ids)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listCuratedEnvironmentImagesInputEncoder : ListCuratedEnvironmentImagesInput -> JE.Value
listCuratedEnvironmentImagesInputEncoder data =
    []
        
        |> JE.object






listCuratedEnvironmentImagesOutputEncoder : ListCuratedEnvironmentImagesOutput -> JE.Value
listCuratedEnvironmentImagesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (environmentPlatformEncoder))
            ("platforms", data.platforms)
        
        
        |> JE.object






listProjectsInputEncoder : ListProjectsInput -> JE.Value
listProjectsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (projectSortByTypeToString >> JE.string)
            ("sortBy", data.sortBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sortOrderTypeToString >> JE.string)
            ("sortOrder", data.sortOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listProjectsOutputEncoder : ListProjectsOutput -> JE.Value
listProjectsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("projects", data.projects)
        
        
        |> JE.object






listSourceCredentialsInputEncoder : ListSourceCredentialsInput -> JE.Value
listSourceCredentialsInputEncoder data =
    []
        
        |> JE.object






listSourceCredentialsOutputEncoder : ListSourceCredentialsOutput -> JE.Value
listSourceCredentialsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (sourceCredentialsInfoEncoder))
            ("sourceCredentialsInfos", data.sourceCredentialsInfos)
        
        
        |> JE.object






logsConfigEncoder : LogsConfig -> JE.Value
logsConfigEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLogsConfigEncoder)
            ("cloudWatchLogs", data.cloudWatchLogs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3LogsConfigEncoder)
            ("s3Logs", data.s3Logs)
        
        
        |> JE.object










logsLocationEncoder : LogsLocation -> JE.Value
logsLocationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("groupName", data.groupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("streamName", data.streamName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("deepLink", data.deepLink)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("s3DeepLink", data.s3DeepLink)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudWatchLogsConfigEncoder)
            ("cloudWatchLogs", data.cloudWatchLogs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3LogsConfigEncoder)
            ("s3Logs", data.s3Logs)
        
        
        |> JE.object






networkInterfaceEncoder : NetworkInterface -> JE.Value
networkInterfaceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("subnetId", data.subnetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("networkInterfaceId", data.networkInterfaceId)
        
        
        |> JE.object






phaseContextEncoder : PhaseContext -> JE.Value
phaseContextEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("statusCode", data.statusCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object










projectEncoder : Project -> JE.Value
projectEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectSourceEncoder)
            ("source", data.source)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectSourceEncoder))
            ("secondarySources", data.secondarySources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceVersion", data.sourceVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectSourceVersionEncoder))
            ("secondarySourceVersions", data.secondarySourceVersions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectArtifactsEncoder)
            ("artifacts", data.artifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectArtifactsEncoder))
            ("secondaryArtifacts", data.secondaryArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectCacheEncoder)
            ("cache", data.cache)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectEnvironmentEncoder)
            ("environment", data.environment)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serviceRole", data.serviceRole)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("timeoutInMinutes", data.timeoutInMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("queuedTimeoutInMinutes", data.queuedTimeoutInMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("encryptionKey", data.encryptionKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("created", data.created)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastModified", data.lastModified)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (webhookEncoder)
            ("webhook", data.webhook)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vpcConfigEncoder)
            ("vpcConfig", data.vpcConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectBadgeEncoder)
            ("badge", data.badge)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (logsConfigEncoder)
            ("logsConfig", data.logsConfig)
        
        
        |> JE.object






projectArtifactsEncoder : ProjectArtifacts -> JE.Value
projectArtifactsEncoder data =
    []
        
        
        |> (::) ("type", data.type_ |> (artifactsTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("path", data.path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (artifactNamespaceToString >> JE.string)
            ("namespaceType", data.namespaceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (artifactPackagingToString >> JE.string)
            ("packaging", data.packaging)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("overrideArtifactName", data.overrideArtifactName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("encryptionDisabled", data.encryptionDisabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("artifactIdentifier", data.artifactIdentifier)
        
        
        |> JE.object






projectBadgeEncoder : ProjectBadge -> JE.Value
projectBadgeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("badgeEnabled", data.badgeEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("badgeRequestUrl", data.badgeRequestUrl)
        
        
        |> JE.object






projectCacheEncoder : ProjectCache -> JE.Value
projectCacheEncoder data =
    []
        
        
        |> (::) ("type", data.type_ |> (cacheTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (cacheModeToString >> JE.string))
            ("modes", data.modes)
        
        
        |> JE.object






projectEnvironmentEncoder : ProjectEnvironment -> JE.Value
projectEnvironmentEncoder data =
    []
        
        
        |> (::) ("type", data.type_ |> (environmentTypeToString >> JE.string))
        
        
        
        |> (::) ("image", data.image |> (JE.string))
        
        
        
        |> (::) ("computeType", data.computeType |> (computeTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (environmentVariableEncoder))
            ("environmentVariables", data.environmentVariables)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("privilegedMode", data.privilegedMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("certificate", data.certificate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (registryCredentialEncoder)
            ("registryCredential", data.registryCredential)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imagePullCredentialsTypeToString >> JE.string)
            ("imagePullCredentialsType", data.imagePullCredentialsType)
        
        
        |> JE.object










projectSourceEncoder : ProjectSource -> JE.Value
projectSourceEncoder data =
    []
        
        
        |> (::) ("type", data.type_ |> (sourceTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("gitCloneDepth", data.gitCloneDepth)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (gitSubmodulesConfigEncoder)
            ("gitSubmodulesConfig", data.gitSubmodulesConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("buildspec", data.buildspec)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceAuthEncoder)
            ("auth", data.auth)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("reportBuildStatus", data.reportBuildStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("insecureSsl", data.insecureSsl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceIdentifier", data.sourceIdentifier)
        
        
        |> JE.object






projectSourceVersionEncoder : ProjectSourceVersion -> JE.Value
projectSourceVersionEncoder data =
    []
        
        
        |> (::) ("sourceIdentifier", data.sourceIdentifier |> (JE.string))
        
        
        
        |> (::) ("sourceVersion", data.sourceVersion |> (JE.string))
        
        
        |> JE.object






registryCredentialEncoder : RegistryCredential -> JE.Value
registryCredentialEncoder data =
    []
        
        
        |> (::) ("credential", data.credential |> (JE.string))
        
        
        
        |> (::) ("credentialProvider", data.credentialProvider |> (credentialProviderTypeToString >> JE.string))
        
        
        |> JE.object






s3LogsConfigEncoder : S3LogsConfig -> JE.Value
s3LogsConfigEncoder data =
    []
        
        
        |> (::) ("status", data.status |> (logsConfigStatusTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("encryptionDisabled", data.encryptionDisabled)
        
        
        |> JE.object














sourceAuthEncoder : SourceAuth -> JE.Value
sourceAuthEncoder data =
    []
        
        
        |> (::) ("type", data.type_ |> (sourceAuthTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("resource", data.resource)
        
        
        |> JE.object










sourceCredentialsInfoEncoder : SourceCredentialsInfo -> JE.Value
sourceCredentialsInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (serverTypeToString >> JE.string)
            ("serverType", data.serverType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (authTypeToString >> JE.string)
            ("authType", data.authType)
        
        
        |> JE.object










startBuildInputEncoder : StartBuildInput -> JE.Value
startBuildInputEncoder data =
    []
        
        
        |> (::) ("projectName", data.projectName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectSourceEncoder))
            ("secondarySourcesOverride", data.secondarySourcesOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectSourceVersionEncoder))
            ("secondarySourcesVersionOverride", data.secondarySourcesVersionOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceVersion", data.sourceVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectArtifactsEncoder)
            ("artifactsOverride", data.artifactsOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectArtifactsEncoder))
            ("secondaryArtifactsOverride", data.secondaryArtifactsOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (environmentVariableEncoder))
            ("environmentVariablesOverride", data.environmentVariablesOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceTypeToString >> JE.string)
            ("sourceTypeOverride", data.sourceTypeOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceLocationOverride", data.sourceLocationOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceAuthEncoder)
            ("sourceAuthOverride", data.sourceAuthOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("gitCloneDepthOverride", data.gitCloneDepthOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (gitSubmodulesConfigEncoder)
            ("gitSubmodulesConfigOverride", data.gitSubmodulesConfigOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("buildspecOverride", data.buildspecOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("insecureSslOverride", data.insecureSslOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("reportBuildStatusOverride", data.reportBuildStatusOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (environmentTypeToString >> JE.string)
            ("environmentTypeOverride", data.environmentTypeOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("imageOverride", data.imageOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (computeTypeToString >> JE.string)
            ("computeTypeOverride", data.computeTypeOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("certificateOverride", data.certificateOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectCacheEncoder)
            ("cacheOverride", data.cacheOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serviceRoleOverride", data.serviceRoleOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("privilegedModeOverride", data.privilegedModeOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("timeoutInMinutesOverride", data.timeoutInMinutesOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("queuedTimeoutInMinutesOverride", data.queuedTimeoutInMinutesOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("idempotencyToken", data.idempotencyToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (logsConfigEncoder)
            ("logsConfigOverride", data.logsConfigOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (registryCredentialEncoder)
            ("registryCredentialOverride", data.registryCredentialOverride)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (imagePullCredentialsTypeToString >> JE.string)
            ("imagePullCredentialsTypeOverride", data.imagePullCredentialsTypeOverride)
        
        
        |> JE.object






startBuildOutputEncoder : StartBuildOutput -> JE.Value
startBuildOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (buildEncoder)
            ("build", data.build)
        
        
        |> JE.object










stopBuildInputEncoder : StopBuildInput -> JE.Value
stopBuildInputEncoder data =
    []
        
        
        |> (::) ("id", data.id |> (JE.string))
        
        
        |> JE.object






stopBuildOutputEncoder : StopBuildOutput -> JE.Value
stopBuildOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (buildEncoder)
            ("build", data.build)
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("value", data.value)
        
        
        |> JE.object






updateProjectInputEncoder : UpdateProjectInput -> JE.Value
updateProjectInputEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectSourceEncoder)
            ("source", data.source)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectSourceEncoder))
            ("secondarySources", data.secondarySources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceVersion", data.sourceVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectSourceVersionEncoder))
            ("secondarySourceVersions", data.secondarySourceVersions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectArtifactsEncoder)
            ("artifacts", data.artifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (projectArtifactsEncoder))
            ("secondaryArtifacts", data.secondaryArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectCacheEncoder)
            ("cache", data.cache)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (projectEnvironmentEncoder)
            ("environment", data.environment)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serviceRole", data.serviceRole)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("timeoutInMinutes", data.timeoutInMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("queuedTimeoutInMinutes", data.queuedTimeoutInMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("encryptionKey", data.encryptionKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vpcConfigEncoder)
            ("vpcConfig", data.vpcConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("badgeEnabled", data.badgeEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (logsConfigEncoder)
            ("logsConfig", data.logsConfig)
        
        
        |> JE.object






updateProjectOutputEncoder : UpdateProjectOutput -> JE.Value
updateProjectOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (projectEncoder)
            ("project", data.project)
        
        
        |> JE.object






updateWebhookInputEncoder : UpdateWebhookInput -> JE.Value
updateWebhookInputEncoder data =
    []
        
        
        |> (::) ("projectName", data.projectName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("branchFilter", data.branchFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("rotateSecret", data.rotateSecret)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.list (webhookFilterEncoder)))
            ("filterGroups", data.filterGroups)
        
        
        |> JE.object






updateWebhookOutputEncoder : UpdateWebhookOutput -> JE.Value
updateWebhookOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (webhookEncoder)
            ("webhook", data.webhook)
        
        
        |> JE.object






vpcConfigEncoder : VpcConfig -> JE.Value
vpcConfigEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("vpcId", data.vpcId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("subnets", data.subnets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("securityGroupIds", data.securityGroupIds)
        
        
        |> JE.object






webhookEncoder : Webhook -> JE.Value
webhookEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("url", data.url)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("payloadUrl", data.payloadUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("secret", data.secret)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("branchFilter", data.branchFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.list (webhookFilterEncoder)))
            ("filterGroups", data.filterGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastModifiedSecret", data.lastModifiedSecret)
        
        
        |> JE.object






webhookFilterEncoder : WebhookFilter -> JE.Value
webhookFilterEncoder data =
    []
        
        
        |> (::) ("type", data.type_ |> (webhookFilterTypeToString >> JE.string))
        
        
        
        |> (::) ("pattern", data.pattern |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("excludeMatchedPattern", data.excludeMatchedPattern)
        
        
        |> JE.object









