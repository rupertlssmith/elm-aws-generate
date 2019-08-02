module AWS.MigrationHub exposing
    ( service
    , associateCreatedArtifact, AssociateCreatedArtifactOptions, associateDiscoveredResource, AssociateDiscoveredResourceOptions, createProgressUpdateStream, CreateProgressUpdateStreamOptions, deleteProgressUpdateStream, DeleteProgressUpdateStreamOptions, describeApplicationState, describeMigrationTask, disassociateCreatedArtifact, DisassociateCreatedArtifactOptions, disassociateDiscoveredResource, DisassociateDiscoveredResourceOptions, importMigrationTask, ImportMigrationTaskOptions, listCreatedArtifacts, ListCreatedArtifactsOptions, listDiscoveredResources, ListDiscoveredResourcesOptions, listMigrationTasks, ListMigrationTasksOptions, listProgressUpdateStreams, ListProgressUpdateStreamsOptions, notifyApplicationState, NotifyApplicationStateOptions, notifyMigrationTaskState, NotifyMigrationTaskStateOptions, putResourceAttributes, PutResourceAttributesOptions
    , AssociateCreatedArtifactResult, AssociateDiscoveredResourceResult, CreateProgressUpdateStreamResult, DeleteProgressUpdateStreamResult, DescribeApplicationStateResult, DescribeMigrationTaskResult, DisassociateCreatedArtifactResult, DisassociateDiscoveredResourceResult, ImportMigrationTaskResult, ListCreatedArtifactsResult, ListDiscoveredResourcesResult, ListMigrationTasksResult, ListProgressUpdateStreamsResult, NotifyApplicationStateResult, NotifyMigrationTaskStateResult, PutResourceAttributesResult
    , CreatedArtifact, DiscoveredResource, MigrationTask, MigrationTaskSummary, ProgressUpdateStreamSummary, ResourceAttribute, Task
    , ApplicationStatus(..), ResourceAttributeType(..), Status(..)
    , AccessDeniedException, DryRunOperation, InternalServerError, InvalidInputException, PolicyErrorException, ResourceNotFoundException, ServiceUnavailableException, UnauthorizedOperation
    )

{-|

<p>The AWS Migration Hub API methods help to obtain server and application migration status and integrate your resource-specific migration tool by providing a programmatic interface to Migration Hub. </p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)
  - [Exceptions](#exceptions)


## Operations

  - [associateCreatedArtifact](#associateCreatedArtifact)
  - [AssociateCreatedArtifactOptions](#AssociateCreatedArtifactOptions)
  - [associateDiscoveredResource](#associateDiscoveredResource)
  - [AssociateDiscoveredResourceOptions](#AssociateDiscoveredResourceOptions)
  - [createProgressUpdateStream](#createProgressUpdateStream)
  - [CreateProgressUpdateStreamOptions](#CreateProgressUpdateStreamOptions)
  - [deleteProgressUpdateStream](#deleteProgressUpdateStream)
  - [DeleteProgressUpdateStreamOptions](#DeleteProgressUpdateStreamOptions)
  - [describeApplicationState](#describeApplicationState)
  - [describeMigrationTask](#describeMigrationTask)
  - [disassociateCreatedArtifact](#disassociateCreatedArtifact)
  - [DisassociateCreatedArtifactOptions](#DisassociateCreatedArtifactOptions)
  - [disassociateDiscoveredResource](#disassociateDiscoveredResource)
  - [DisassociateDiscoveredResourceOptions](#DisassociateDiscoveredResourceOptions)
  - [importMigrationTask](#importMigrationTask)
  - [ImportMigrationTaskOptions](#ImportMigrationTaskOptions)
  - [listCreatedArtifacts](#listCreatedArtifacts)
  - [ListCreatedArtifactsOptions](#ListCreatedArtifactsOptions)
  - [listDiscoveredResources](#listDiscoveredResources)
  - [ListDiscoveredResourcesOptions](#ListDiscoveredResourcesOptions)
  - [listMigrationTasks](#listMigrationTasks)
  - [ListMigrationTasksOptions](#ListMigrationTasksOptions)
  - [listProgressUpdateStreams](#listProgressUpdateStreams)
  - [ListProgressUpdateStreamsOptions](#ListProgressUpdateStreamsOptions)
  - [notifyApplicationState](#notifyApplicationState)
  - [NotifyApplicationStateOptions](#NotifyApplicationStateOptions)
  - [notifyMigrationTaskState](#notifyMigrationTaskState)
  - [NotifyMigrationTaskStateOptions](#NotifyMigrationTaskStateOptions)
  - [putResourceAttributes](#putResourceAttributes)
  - [PutResourceAttributesOptions](#PutResourceAttributesOptions)

@docs associateCreatedArtifact, AssociateCreatedArtifactOptions, associateDiscoveredResource, AssociateDiscoveredResourceOptions, createProgressUpdateStream, CreateProgressUpdateStreamOptions, deleteProgressUpdateStream, DeleteProgressUpdateStreamOptions, describeApplicationState, describeMigrationTask, disassociateCreatedArtifact, DisassociateCreatedArtifactOptions, disassociateDiscoveredResource, DisassociateDiscoveredResourceOptions, importMigrationTask, ImportMigrationTaskOptions, listCreatedArtifacts, ListCreatedArtifactsOptions, listDiscoveredResources, ListDiscoveredResourcesOptions, listMigrationTasks, ListMigrationTasksOptions, listProgressUpdateStreams, ListProgressUpdateStreamsOptions, notifyApplicationState, NotifyApplicationStateOptions, notifyMigrationTaskState, NotifyMigrationTaskStateOptions, putResourceAttributes, PutResourceAttributesOptions


## Responses

  - [AssociateCreatedArtifactResult](#AssociateCreatedArtifactResult)
  - [AssociateDiscoveredResourceResult](#AssociateDiscoveredResourceResult)
  - [CreateProgressUpdateStreamResult](#CreateProgressUpdateStreamResult)
  - [DeleteProgressUpdateStreamResult](#DeleteProgressUpdateStreamResult)
  - [DescribeApplicationStateResult](#DescribeApplicationStateResult)
  - [DescribeMigrationTaskResult](#DescribeMigrationTaskResult)
  - [DisassociateCreatedArtifactResult](#DisassociateCreatedArtifactResult)
  - [DisassociateDiscoveredResourceResult](#DisassociateDiscoveredResourceResult)
  - [ImportMigrationTaskResult](#ImportMigrationTaskResult)
  - [ListCreatedArtifactsResult](#ListCreatedArtifactsResult)
  - [ListDiscoveredResourcesResult](#ListDiscoveredResourcesResult)
  - [ListMigrationTasksResult](#ListMigrationTasksResult)
  - [ListProgressUpdateStreamsResult](#ListProgressUpdateStreamsResult)
  - [NotifyApplicationStateResult](#NotifyApplicationStateResult)
  - [NotifyMigrationTaskStateResult](#NotifyMigrationTaskStateResult)
  - [PutResourceAttributesResult](#PutResourceAttributesResult)

@docs AssociateCreatedArtifactResult, AssociateDiscoveredResourceResult, CreateProgressUpdateStreamResult, DeleteProgressUpdateStreamResult, DescribeApplicationStateResult, DescribeMigrationTaskResult, DisassociateCreatedArtifactResult, DisassociateDiscoveredResourceResult, ImportMigrationTaskResult, ListCreatedArtifactsResult, ListDiscoveredResourcesResult, ListMigrationTasksResult, ListProgressUpdateStreamsResult, NotifyApplicationStateResult, NotifyMigrationTaskStateResult, PutResourceAttributesResult


## Records

  - [CreatedArtifact](#CreatedArtifact)
  - [DiscoveredResource](#DiscoveredResource)
  - [MigrationTask](#MigrationTask)
  - [MigrationTaskSummary](#MigrationTaskSummary)
  - [ProgressUpdateStreamSummary](#ProgressUpdateStreamSummary)
  - [ResourceAttribute](#ResourceAttribute)
  - [Task](#Task)

@docs CreatedArtifact, DiscoveredResource, MigrationTask, MigrationTaskSummary, ProgressUpdateStreamSummary, ResourceAttribute, Task


## Unions

  - [ApplicationStatus](#ApplicationStatus)
  - [ResourceAttributeType](#ResourceAttributeType)
  - [Status](#Status)

@docs ApplicationStatus, ResourceAttributeType, Status


## Exceptions

  - [AccessDeniedException](#AccessDeniedException)
  - [DryRunOperation](#DryRunOperation)
  - [InternalServerError](#InternalServerError)
  - [InvalidInputException](#InvalidInputException)
  - [PolicyErrorException](#PolicyErrorException)
  - [ResourceNotFoundException](#ResourceNotFoundException)
  - [ServiceUnavailableException](#ServiceUnavailableException)
  - [UnauthorizedOperation](#UnauthorizedOperation)

@docs AccessDeniedException, DryRunOperation, InternalServerError, InvalidInputException, PolicyErrorException, ResourceNotFoundException, ServiceUnavailableException, UnauthorizedOperation

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
        "mgh"
        "2017-05-31"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSMigrationHub")



-- OPERATIONS


{-|

<p>Associates a created artifact of an AWS cloud resource, the target receiving the migration, with the migration task performed by a migration tool. This API has the following traits:</p> <ul> <li> <p>Migration tools can call the <code>AssociateCreatedArtifact</code> operation to indicate which AWS artifact is associated with a migration task.</p> </li> <li> <p>The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: <code>arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b</code>.</p> </li> <li> <p>Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or DMS endpoint, etc.</p> </li> </ul>

**Required Parameters**

  - `progressUpdateStream` **:** `String`
  - `migrationTaskName` **:** `String`
  - `createdArtifact` **:** `CreatedArtifact`

-}
associateCreatedArtifact :
    String
    -> String
    -> CreatedArtifact
    -> (AssociateCreatedArtifactOptions -> AssociateCreatedArtifactOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateCreatedArtifactResult)
associateCreatedArtifact progressUpdateStream migrationTaskName createdArtifact setOptions =
    let
        requestInput =
            AssociateCreatedArtifactRequest
                progressUpdateStream
                migrationTaskName
                createdArtifact
                options.dryRun

        options =
            setOptions (AssociateCreatedArtifactOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> associateCreatedArtifactRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AssociateCreatedArtifact"
            (AWS.Core.Decode.ResultDecoder "AssociateCreatedArtifactResult" associateCreatedArtifactResultDecoder)
        )


{-| Options for a associateCreatedArtifact request
-}
type alias AssociateCreatedArtifactOptions =
    { dryRun : Maybe Bool
    }


{-|

<p>Associates a discovered resource ID from Application Discovery Service (ADS) with a migration task.</p>

**Required Parameters**

  - `progressUpdateStream` **:** `String`
  - `migrationTaskName` **:** `String`
  - `discoveredResource` **:** `DiscoveredResource`

-}
associateDiscoveredResource :
    String
    -> String
    -> DiscoveredResource
    -> (AssociateDiscoveredResourceOptions -> AssociateDiscoveredResourceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateDiscoveredResourceResult)
associateDiscoveredResource progressUpdateStream migrationTaskName discoveredResource setOptions =
    let
        requestInput =
            AssociateDiscoveredResourceRequest
                progressUpdateStream
                migrationTaskName
                discoveredResource
                options.dryRun

        options =
            setOptions (AssociateDiscoveredResourceOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> associateDiscoveredResourceRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AssociateDiscoveredResource"
            (AWS.Core.Decode.ResultDecoder "AssociateDiscoveredResourceResult" associateDiscoveredResourceResultDecoder)
        )


{-| Options for a associateDiscoveredResource request
-}
type alias AssociateDiscoveredResourceOptions =
    { dryRun : Maybe Bool
    }


{-|

<p>Creates a progress update stream which is an AWS resource used for access control as well as a namespace for migration task names that is implicitly linked to your AWS account. It must uniquely identify the migration tool as it is used for all updates made by the tool; however, it does not need to be unique for each AWS account because it is scoped to the AWS account.</p>

**Required Parameters**

  - `progressUpdateStreamName` **:** `String`

-}
createProgressUpdateStream :
    String
    -> (CreateProgressUpdateStreamOptions -> CreateProgressUpdateStreamOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateProgressUpdateStreamResult)
createProgressUpdateStream progressUpdateStreamName setOptions =
    let
        requestInput =
            CreateProgressUpdateStreamRequest
                progressUpdateStreamName
                options.dryRun

        options =
            setOptions (CreateProgressUpdateStreamOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createProgressUpdateStreamRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateProgressUpdateStream"
            (AWS.Core.Decode.ResultDecoder "CreateProgressUpdateStreamResult" createProgressUpdateStreamResultDecoder)
        )


{-| Options for a createProgressUpdateStream request
-}
type alias CreateProgressUpdateStreamOptions =
    { dryRun : Maybe Bool
    }


{-|

<p>Deletes a progress update stream, including all of its tasks, which was previously created as an AWS resource used for access control. This API has the following traits:</p> <ul> <li> <p>The only parameter needed for <code>DeleteProgressUpdateStream</code> is the stream name (same as a <code>CreateProgressUpdateStream</code> call).</p> </li> <li> <p>The call will return, and a background process will asynchronously delete the stream and all of its resources (tasks, associated resources, resource attributes, created artifacts).</p> </li> <li> <p>If the stream takes time to be deleted, it might still show up on a <code>ListProgressUpdateStreams</code> call.</p> </li> <li> <p> <code>CreateProgressUpdateStream</code>, <code>ImportMigrationTask</code>, <code>NotifyMigrationTaskState</code>, and all Associate[*] APIs realted to the tasks belonging to the stream will throw "InvalidInputException" if the stream of the same name is in the process of being deleted.</p> </li> <li> <p>Once the stream and all of its resources are deleted, <code>CreateProgressUpdateStream</code> for a stream of the same name will succeed, and that stream will be an entirely new logical resource (without any resources associated with the old stream).</p> </li> </ul>

**Required Parameters**

  - `progressUpdateStreamName` **:** `String`

-}
deleteProgressUpdateStream :
    String
    -> (DeleteProgressUpdateStreamOptions -> DeleteProgressUpdateStreamOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteProgressUpdateStreamResult)
deleteProgressUpdateStream progressUpdateStreamName setOptions =
    let
        requestInput =
            DeleteProgressUpdateStreamRequest
                progressUpdateStreamName
                options.dryRun

        options =
            setOptions (DeleteProgressUpdateStreamOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteProgressUpdateStreamRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteProgressUpdateStream"
            (AWS.Core.Decode.ResultDecoder "DeleteProgressUpdateStreamResult" deleteProgressUpdateStreamResultDecoder)
        )


{-| Options for a deleteProgressUpdateStream request
-}
type alias DeleteProgressUpdateStreamOptions =
    { dryRun : Maybe Bool
    }


{-|

<p>Gets the migration status of an application.</p>

**Required Parameters**

  - `applicationId` **:** `String`

-}
describeApplicationState :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeApplicationStateResult)
describeApplicationState applicationId =
    let
        requestInput =
            DescribeApplicationStateRequest
                applicationId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeApplicationStateRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeApplicationState"
            (AWS.Core.Decode.ResultDecoder "DescribeApplicationStateResult" describeApplicationStateResultDecoder)
        )


{-|

<p>Retrieves a list of all attributes associated with a specific migration task.</p>

**Required Parameters**

  - `progressUpdateStream` **:** `String`
  - `migrationTaskName` **:** `String`

-}
describeMigrationTask :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeMigrationTaskResult)
describeMigrationTask progressUpdateStream migrationTaskName =
    let
        requestInput =
            DescribeMigrationTaskRequest
                progressUpdateStream
                migrationTaskName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeMigrationTaskRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeMigrationTask"
            (AWS.Core.Decode.ResultDecoder "DescribeMigrationTaskResult" describeMigrationTaskResultDecoder)
        )


{-|

<p>Disassociates a created artifact of an AWS resource with a migration task performed by a migration tool that was previously associated. This API has the following traits:</p> <ul> <li> <p>A migration user can call the <code>DisassociateCreatedArtifacts</code> operation to disassociate a created AWS Artifact from a migration task.</p> </li> <li> <p>The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: <code>arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b</code>.</p> </li> <li> <p>Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or RDS instance, etc.</p> </li> </ul>

**Required Parameters**

  - `progressUpdateStream` **:** `String`
  - `migrationTaskName` **:** `String`
  - `createdArtifactName` **:** `String`

-}
disassociateCreatedArtifact :
    String
    -> String
    -> String
    -> (DisassociateCreatedArtifactOptions -> DisassociateCreatedArtifactOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateCreatedArtifactResult)
disassociateCreatedArtifact progressUpdateStream migrationTaskName createdArtifactName setOptions =
    let
        requestInput =
            DisassociateCreatedArtifactRequest
                progressUpdateStream
                migrationTaskName
                createdArtifactName
                options.dryRun

        options =
            setOptions (DisassociateCreatedArtifactOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> disassociateCreatedArtifactRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DisassociateCreatedArtifact"
            (AWS.Core.Decode.ResultDecoder "DisassociateCreatedArtifactResult" disassociateCreatedArtifactResultDecoder)
        )


{-| Options for a disassociateCreatedArtifact request
-}
type alias DisassociateCreatedArtifactOptions =
    { dryRun : Maybe Bool
    }


{-|

<p>Disassociate an Application Discovery Service (ADS) discovered resource from a migration task.</p>

**Required Parameters**

  - `progressUpdateStream` **:** `String`
  - `migrationTaskName` **:** `String`
  - `configurationId` **:** `String`

-}
disassociateDiscoveredResource :
    String
    -> String
    -> String
    -> (DisassociateDiscoveredResourceOptions -> DisassociateDiscoveredResourceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateDiscoveredResourceResult)
disassociateDiscoveredResource progressUpdateStream migrationTaskName configurationId setOptions =
    let
        requestInput =
            DisassociateDiscoveredResourceRequest
                progressUpdateStream
                migrationTaskName
                configurationId
                options.dryRun

        options =
            setOptions (DisassociateDiscoveredResourceOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> disassociateDiscoveredResourceRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DisassociateDiscoveredResource"
            (AWS.Core.Decode.ResultDecoder "DisassociateDiscoveredResourceResult" disassociateDiscoveredResourceResultDecoder)
        )


{-| Options for a disassociateDiscoveredResource request
-}
type alias DisassociateDiscoveredResourceOptions =
    { dryRun : Maybe Bool
    }


{-|

<p>Registers a new migration task which represents a server, database, etc., being migrated to AWS by a migration tool.</p> <p>This API is a prerequisite to calling the <code>NotifyMigrationTaskState</code> API as the migration tool must first register the migration task with Migration Hub.</p>

**Required Parameters**

  - `progressUpdateStream` **:** `String`
  - `migrationTaskName` **:** `String`

-}
importMigrationTask :
    String
    -> String
    -> (ImportMigrationTaskOptions -> ImportMigrationTaskOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ImportMigrationTaskResult)
importMigrationTask progressUpdateStream migrationTaskName setOptions =
    let
        requestInput =
            ImportMigrationTaskRequest
                progressUpdateStream
                migrationTaskName
                options.dryRun

        options =
            setOptions (ImportMigrationTaskOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> importMigrationTaskRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ImportMigrationTask"
            (AWS.Core.Decode.ResultDecoder "ImportMigrationTaskResult" importMigrationTaskResultDecoder)
        )


{-| Options for a importMigrationTask request
-}
type alias ImportMigrationTaskOptions =
    { dryRun : Maybe Bool
    }


{-|

<p>Lists the created artifacts attached to a given migration task in an update stream. This API has the following traits:</p> <ul> <li> <p>Gets the list of the created artifacts while migration is taking place.</p> </li> <li> <p>Shows the artifacts created by the migration tool that was associated by the <code>AssociateCreatedArtifact</code> API. </p> </li> <li> <p>Lists created artifacts in a paginated interface. </p> </li> </ul>

**Required Parameters**

  - `progressUpdateStream` **:** `String`
  - `migrationTaskName` **:** `String`

-}
listCreatedArtifacts :
    String
    -> String
    -> (ListCreatedArtifactsOptions -> ListCreatedArtifactsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListCreatedArtifactsResult)
listCreatedArtifacts progressUpdateStream migrationTaskName setOptions =
    let
        requestInput =
            ListCreatedArtifactsRequest
                progressUpdateStream
                migrationTaskName
                options.nextToken
                options.maxResults

        options =
            setOptions (ListCreatedArtifactsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listCreatedArtifactsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListCreatedArtifacts"
            (AWS.Core.Decode.ResultDecoder "ListCreatedArtifactsResult" listCreatedArtifactsResultDecoder)
        )


{-| Options for a listCreatedArtifacts request
-}
type alias ListCreatedArtifactsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p>Lists discovered resources associated with the given <code>MigrationTask</code>.</p>

**Required Parameters**

  - `progressUpdateStream` **:** `String`
  - `migrationTaskName` **:** `String`

-}
listDiscoveredResources :
    String
    -> String
    -> (ListDiscoveredResourcesOptions -> ListDiscoveredResourcesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDiscoveredResourcesResult)
listDiscoveredResources progressUpdateStream migrationTaskName setOptions =
    let
        requestInput =
            ListDiscoveredResourcesRequest
                progressUpdateStream
                migrationTaskName
                options.nextToken
                options.maxResults

        options =
            setOptions (ListDiscoveredResourcesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listDiscoveredResourcesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListDiscoveredResources"
            (AWS.Core.Decode.ResultDecoder "ListDiscoveredResourcesResult" listDiscoveredResourcesResultDecoder)
        )


{-| Options for a listDiscoveredResources request
-}
type alias ListDiscoveredResourcesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p>Lists all, or filtered by resource name, migration tasks associated with the user account making this call. This API has the following traits:</p> <ul> <li> <p>Can show a summary list of the most recent migration tasks.</p> </li> <li> <p>Can show a summary list of migration tasks associated with a given discovered resource.</p> </li> <li> <p>Lists migration tasks in a paginated interface.</p> </li> </ul>

**Required Parameters**

-}
listMigrationTasks :
    (ListMigrationTasksOptions -> ListMigrationTasksOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListMigrationTasksResult)
listMigrationTasks setOptions =
    let
        requestInput =
            ListMigrationTasksRequest
                options.nextToken
                options.maxResults
                options.resourceName

        options =
            setOptions (ListMigrationTasksOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listMigrationTasksRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListMigrationTasks"
            (AWS.Core.Decode.ResultDecoder "ListMigrationTasksResult" listMigrationTasksResultDecoder)
        )


{-| Options for a listMigrationTasks request
-}
type alias ListMigrationTasksOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , resourceName : Maybe String
    }


{-|

<p>Lists progress update streams associated with the user account making this call.</p>

**Required Parameters**

-}
listProgressUpdateStreams :
    (ListProgressUpdateStreamsOptions -> ListProgressUpdateStreamsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListProgressUpdateStreamsResult)
listProgressUpdateStreams setOptions =
    let
        requestInput =
            ListProgressUpdateStreamsRequest
                options.nextToken
                options.maxResults

        options =
            setOptions (ListProgressUpdateStreamsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listProgressUpdateStreamsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListProgressUpdateStreams"
            (AWS.Core.Decode.ResultDecoder "ListProgressUpdateStreamsResult" listProgressUpdateStreamsResultDecoder)
        )


{-| Options for a listProgressUpdateStreams request
-}
type alias ListProgressUpdateStreamsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p>Sets the migration state of an application. For a given application identified by the value passed to <code>ApplicationId</code>, its status is set or updated by passing one of three values to <code>Status</code>: <code>NOT_STARTED | IN_PROGRESS | COMPLETED</code>.</p>

**Required Parameters**

  - `applicationId` **:** `String`
  - `status` **:** `ApplicationStatus`

-}
notifyApplicationState :
    String
    -> ApplicationStatus
    -> (NotifyApplicationStateOptions -> NotifyApplicationStateOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper NotifyApplicationStateResult)
notifyApplicationState applicationId status setOptions =
    let
        requestInput =
            NotifyApplicationStateRequest
                applicationId
                status
                options.dryRun

        options =
            setOptions (NotifyApplicationStateOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> notifyApplicationStateRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "NotifyApplicationState"
            (AWS.Core.Decode.ResultDecoder "NotifyApplicationStateResult" notifyApplicationStateResultDecoder)
        )


{-| Options for a notifyApplicationState request
-}
type alias NotifyApplicationStateOptions =
    { dryRun : Maybe Bool
    }


{-|

<p>Notifies Migration Hub of the current status, progress, or other detail regarding a migration task. This API has the following traits:</p> <ul> <li> <p>Migration tools will call the <code>NotifyMigrationTaskState</code> API to share the latest progress and status.</p> </li> <li> <p> <code>MigrationTaskName</code> is used for addressing updates to the correct target.</p> </li> <li> <p> <code>ProgressUpdateStream</code> is used for access control and to provide a namespace for each migration tool.</p> </li> </ul>

**Required Parameters**

  - `progressUpdateStream` **:** `String`
  - `migrationTaskName` **:** `String`
  - `task` **:** `Task`
  - `updateDateTime` **:** `Posix`
  - `nextUpdateSeconds` **:** `Int`

-}
notifyMigrationTaskState :
    String
    -> String
    -> Task
    -> Posix
    -> Int
    -> (NotifyMigrationTaskStateOptions -> NotifyMigrationTaskStateOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper NotifyMigrationTaskStateResult)
notifyMigrationTaskState progressUpdateStream migrationTaskName task updateDateTime nextUpdateSeconds setOptions =
    let
        requestInput =
            NotifyMigrationTaskStateRequest
                progressUpdateStream
                migrationTaskName
                task
                updateDateTime
                nextUpdateSeconds
                options.dryRun

        options =
            setOptions (NotifyMigrationTaskStateOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> notifyMigrationTaskStateRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "NotifyMigrationTaskState"
            (AWS.Core.Decode.ResultDecoder "NotifyMigrationTaskStateResult" notifyMigrationTaskStateResultDecoder)
        )


{-| Options for a notifyMigrationTaskState request
-}
type alias NotifyMigrationTaskStateOptions =
    { dryRun : Maybe Bool
    }


{-|

<p>Provides identifying details of the resource being migrated so that it can be associated in the Application Discovery Service (ADS)'s repository. This association occurs asynchronously after <code>PutResourceAttributes</code> returns.</p> <important> <ul> <li> <p>Keep in mind that subsequent calls to PutResourceAttributes will override previously stored attributes. For example, if it is first called with a MAC address, but later, it is desired to <i>add</i> an IP address, it will then be required to call it with <i>both</i> the IP and MAC addresses to prevent overiding the MAC address.</p> </li> <li> <p>Note the instructions regarding the special use case of the <a href="https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList"> <code>ResourceAttributeList</code> </a> parameter when specifying any "VM" related value. </p> </li> </ul> </important> <note> <p>Because this is an asynchronous call, it will always return 200, whether an association occurs or not. To confirm if an association was found based on the provided details, call <code>ListDiscoveredResources</code>.</p> </note>

**Required Parameters**

  - `progressUpdateStream` **:** `String`
  - `migrationTaskName` **:** `String`
  - `resourceAttributeList` **:** `(List ResourceAttribute)`

-}
putResourceAttributes :
    String
    -> String
    -> List ResourceAttribute
    -> (PutResourceAttributesOptions -> PutResourceAttributesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutResourceAttributesResult)
putResourceAttributes progressUpdateStream migrationTaskName resourceAttributeList setOptions =
    let
        requestInput =
            PutResourceAttributesRequest
                progressUpdateStream
                migrationTaskName
                resourceAttributeList
                options.dryRun

        options =
            setOptions (PutResourceAttributesOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> putResourceAttributesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "PutResourceAttributes"
            (AWS.Core.Decode.ResultDecoder "PutResourceAttributesResult" putResourceAttributesResultDecoder)
        )


{-| Options for a putResourceAttributes request
-}
type alias PutResourceAttributesOptions =
    { dryRun : Maybe Bool
    }


{-|

<p>You do not have sufficient access to perform this action.</p>

-}
type alias AccessDeniedException =
    { message : Maybe String
    }


accessDeniedExceptionDecoder : JD.Decoder AccessDeniedException
accessDeniedExceptionDecoder =
    JD.succeed AccessDeniedException
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )


{-| One of

  - `ApplicationStatus_NOT_STARTED`
  - `ApplicationStatus_IN_PROGRESS`
  - `ApplicationStatus_COMPLETED`

-}
type ApplicationStatus
    = ApplicationStatus_NOT_STARTED
    | ApplicationStatus_IN_PROGRESS
    | ApplicationStatus_COMPLETED


applicationStatusDecoder : JD.Decoder ApplicationStatus
applicationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NOT_STARTED" ->
                        JD.succeed ApplicationStatus_NOT_STARTED

                    "IN_PROGRESS" ->
                        JD.succeed ApplicationStatus_IN_PROGRESS

                    "COMPLETED" ->
                        JD.succeed ApplicationStatus_COMPLETED

                    _ ->
                        JD.fail "bad thing"
            )


applicationStatusToString : ApplicationStatus -> String
applicationStatusToString val =
    case val of
        ApplicationStatus_NOT_STARTED ->
            "NOT_STARTED"

        ApplicationStatus_IN_PROGRESS ->
            "IN_PROGRESS"

        ApplicationStatus_COMPLETED ->
            "COMPLETED"


{-| Type of HTTP response from associateCreatedArtifa
-}
type alias AssociateCreatedArtifactResult =
    {}


associateCreatedArtifactResultDecoder : JD.Decoder AssociateCreatedArtifactResult
associateCreatedArtifactResultDecoder =
    JD.succeed AssociateCreatedArtifactResult


{-| Type of HTTP response from associateDiscoveredResour
-}
type alias AssociateDiscoveredResourceResult =
    {}


associateDiscoveredResourceResultDecoder : JD.Decoder AssociateDiscoveredResourceResult
associateDiscoveredResourceResultDecoder =
    JD.succeed AssociateDiscoveredResourceResult


{-| Type of HTTP response from createProgressUpdateStre
-}
type alias CreateProgressUpdateStreamResult =
    {}


createProgressUpdateStreamResultDecoder : JD.Decoder CreateProgressUpdateStreamResult
createProgressUpdateStreamResultDecoder =
    JD.succeed CreateProgressUpdateStreamResult


{-|

<p>An ARN of the AWS cloud resource target receiving the migration (e.g., AMI, EC2 instance, RDS instance, etc.).</p>

-}
type alias CreatedArtifact =
    { name : String
    , description : Maybe String
    }


createdArtifactDecoder : JD.Decoder CreatedArtifact
createdArtifactDecoder =
    JD.succeed CreatedArtifact
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )


{-| Type of HTTP response from deleteProgressUpdateStre
-}
type alias DeleteProgressUpdateStreamResult =
    {}


deleteProgressUpdateStreamResultDecoder : JD.Decoder DeleteProgressUpdateStreamResult
deleteProgressUpdateStreamResultDecoder =
    JD.succeed DeleteProgressUpdateStreamResult


{-| Type of HTTP response from describeApplicationSta
-}
type alias DescribeApplicationStateResult =
    { applicationStatus : Maybe ApplicationStatus
    , lastUpdatedTime : Maybe Posix
    }


describeApplicationStateResultDecoder : JD.Decoder DescribeApplicationStateResult
describeApplicationStateResultDecoder =
    JD.succeed DescribeApplicationStateResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ApplicationStatus", "applicationStatus" ]
                applicationStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastUpdatedTime", "lastUpdatedTime" ]
                JDX.datetime
            )


{-| Type of HTTP response from describeMigrationTa
-}
type alias DescribeMigrationTaskResult =
    { migrationTask : Maybe MigrationTask
    }


describeMigrationTaskResultDecoder : JD.Decoder DescribeMigrationTaskResult
describeMigrationTaskResultDecoder =
    JD.succeed DescribeMigrationTaskResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MigrationTask", "migrationTask" ]
                migrationTaskDecoder
            )


{-| Type of HTTP response from disassociateCreatedArtifa
-}
type alias DisassociateCreatedArtifactResult =
    {}


disassociateCreatedArtifactResultDecoder : JD.Decoder DisassociateCreatedArtifactResult
disassociateCreatedArtifactResultDecoder =
    JD.succeed DisassociateCreatedArtifactResult


{-| Type of HTTP response from disassociateDiscoveredResour
-}
type alias DisassociateDiscoveredResourceResult =
    {}


disassociateDiscoveredResourceResultDecoder : JD.Decoder DisassociateDiscoveredResourceResult
disassociateDiscoveredResourceResultDecoder =
    JD.succeed DisassociateDiscoveredResourceResult


{-|

<p>Object representing the on-premises resource being migrated.</p>

-}
type alias DiscoveredResource =
    { configurationId : String
    , description : Maybe String
    }


discoveredResourceDecoder : JD.Decoder DiscoveredResource
discoveredResourceDecoder =
    JD.succeed DiscoveredResource
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ConfigurationId", "configurationId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )


{-|

<p>Exception raised to indicate a successfully authorized action when the <code>DryRun</code> flag is set to "true".</p>

-}
type alias DryRunOperation =
    { message : Maybe String
    }


dryRunOperationDecoder : JD.Decoder DryRunOperation
dryRunOperationDecoder =
    JD.succeed DryRunOperation
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )


{-| Type of HTTP response from importMigrationTa
-}
type alias ImportMigrationTaskResult =
    {}


importMigrationTaskResultDecoder : JD.Decoder ImportMigrationTaskResult
importMigrationTaskResultDecoder =
    JD.succeed ImportMigrationTaskResult


{-|

<p>Exception raised when there is an internal, configuration, or dependency error encountered.</p>

-}
type alias InternalServerError =
    { message : Maybe String
    }


internalServerErrorDecoder : JD.Decoder InternalServerError
internalServerErrorDecoder =
    JD.succeed InternalServerError
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )


{-|

<p>Exception raised when the provided input violates a policy constraint or is entered in the wrong format or data type.</p>

-}
type alias InvalidInputException =
    { message : Maybe String
    }


invalidInputExceptionDecoder : JD.Decoder InvalidInputException
invalidInputExceptionDecoder =
    JD.succeed InvalidInputException
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )


{-| Type of HTTP response from listCreatedArtifac
-}
type alias ListCreatedArtifactsResult =
    { nextToken : Maybe String
    , createdArtifactList : Maybe (List CreatedArtifact)
    }


listCreatedArtifactsResultDecoder : JD.Decoder ListCreatedArtifactsResult
listCreatedArtifactsResultDecoder =
    JD.succeed ListCreatedArtifactsResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreatedArtifactList", "createdArtifactList" ]
                (JD.list createdArtifactDecoder)
            )


{-| Type of HTTP response from listDiscoveredResourc
-}
type alias ListDiscoveredResourcesResult =
    { nextToken : Maybe String
    , discoveredResourceList : Maybe (List DiscoveredResource)
    }


listDiscoveredResourcesResultDecoder : JD.Decoder ListDiscoveredResourcesResult
listDiscoveredResourcesResultDecoder =
    JD.succeed ListDiscoveredResourcesResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiscoveredResourceList", "discoveredResourceList" ]
                (JD.list discoveredResourceDecoder)
            )


{-| Type of HTTP response from listMigrationTas
-}
type alias ListMigrationTasksResult =
    { nextToken : Maybe String
    , migrationTaskSummaryList : Maybe (List MigrationTaskSummary)
    }


listMigrationTasksResultDecoder : JD.Decoder ListMigrationTasksResult
listMigrationTasksResultDecoder =
    JD.succeed ListMigrationTasksResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MigrationTaskSummaryList", "migrationTaskSummaryList" ]
                (JD.list migrationTaskSummaryDecoder)
            )


{-| Type of HTTP response from listProgressUpdateStrea
-}
type alias ListProgressUpdateStreamsResult =
    { progressUpdateStreamSummaryList : Maybe (List ProgressUpdateStreamSummary)
    , nextToken : Maybe String
    }


listProgressUpdateStreamsResultDecoder : JD.Decoder ListProgressUpdateStreamsResult
listProgressUpdateStreamsResultDecoder =
    JD.succeed ListProgressUpdateStreamsResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProgressUpdateStreamSummaryList", "progressUpdateStreamSummaryList" ]
                (JD.list progressUpdateStreamSummaryDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>Represents a migration task in a migration tool.</p>

-}
type alias MigrationTask =
    { progressUpdateStream : Maybe String
    , migrationTaskName : Maybe String
    , task : Maybe Task
    , updateDateTime : Maybe Posix
    , resourceAttributeList : Maybe (List ResourceAttribute)
    }


migrationTaskDecoder : JD.Decoder MigrationTask
migrationTaskDecoder =
    JD.succeed MigrationTask
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProgressUpdateStream", "progressUpdateStream" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MigrationTaskName", "migrationTaskName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Task", "task" ]
                taskDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UpdateDateTime", "updateDateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceAttributeList", "resourceAttributeList" ]
                (JD.list resourceAttributeDecoder)
            )


{-|

<p>MigrationTaskSummary includes <code>MigrationTaskName</code>, <code>ProgressPercent</code>, <code>ProgressUpdateStream</code>, <code>Status</code>, and <code>UpdateDateTime</code> for each task.</p>

-}
type alias MigrationTaskSummary =
    { progressUpdateStream : Maybe String
    , migrationTaskName : Maybe String
    , status : Maybe Status
    , progressPercent : Maybe Int
    , statusDetail : Maybe String
    , updateDateTime : Maybe Posix
    }


migrationTaskSummaryDecoder : JD.Decoder MigrationTaskSummary
migrationTaskSummaryDecoder =
    JD.succeed MigrationTaskSummary
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProgressUpdateStream", "progressUpdateStream" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MigrationTaskName", "migrationTaskName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                statusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProgressPercent", "progressPercent" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StatusDetail", "statusDetail" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UpdateDateTime", "updateDateTime" ]
                JDX.datetime
            )


{-| Type of HTTP response from notifyApplicationSta
-}
type alias NotifyApplicationStateResult =
    {}


notifyApplicationStateResultDecoder : JD.Decoder NotifyApplicationStateResult
notifyApplicationStateResultDecoder =
    JD.succeed NotifyApplicationStateResult


{-| Type of HTTP response from notifyMigrationTaskSta
-}
type alias NotifyMigrationTaskStateResult =
    {}


notifyMigrationTaskStateResultDecoder : JD.Decoder NotifyMigrationTaskStateResult
notifyMigrationTaskStateResultDecoder =
    JD.succeed NotifyMigrationTaskStateResult


{-|

<p>Exception raised when there are problems accessing ADS (Application Discovery Service); most likely due to a misconfigured policy or the <code>migrationhub-discovery</code> role is missing or not configured correctly.</p>

-}
type alias PolicyErrorException =
    { message : Maybe String
    }


policyErrorExceptionDecoder : JD.Decoder PolicyErrorException
policyErrorExceptionDecoder =
    JD.succeed PolicyErrorException
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )


{-|

<p>Summary of the AWS resource used for access control that is implicitly linked to your AWS account.</p>

-}
type alias ProgressUpdateStreamSummary =
    { progressUpdateStreamName : Maybe String
    }


progressUpdateStreamSummaryDecoder : JD.Decoder ProgressUpdateStreamSummary
progressUpdateStreamSummaryDecoder =
    JD.succeed ProgressUpdateStreamSummary
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProgressUpdateStreamName", "progressUpdateStreamName" ]
                JD.string
            )


{-| Type of HTTP response from putResourceAttribut
-}
type alias PutResourceAttributesResult =
    {}


putResourceAttributesResultDecoder : JD.Decoder PutResourceAttributesResult
putResourceAttributesResultDecoder =
    JD.succeed PutResourceAttributesResult


{-|

<p>Attribute associated with a resource.</p> <p>Note the corresponding format required per type listed below:</p> <dl> <dt>IPV4</dt> <dd> <p> <code>x.x.x.x</code> </p> <p> <i>where x is an integer in the range [0,255]</i> </p> </dd> <dt>IPV6</dt> <dd> <p> <code>y : y : y : y : y : y : y : y</code> </p> <p> <i>where y is a hexadecimal between 0 and FFFF. [0, FFFF]</i> </p> </dd> <dt>MAC_ADDRESS</dt> <dd> <p> <code>^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$</code> </p> </dd> <dt>FQDN</dt> <dd> <p> <code>^[^&lt;&gt;{}\\\\/?,=\\p{Cntrl}]{1,256}$</code> </p> </dd> </dl>

-}
type alias ResourceAttribute =
    { type_ : ResourceAttributeType
    , value : String
    }


resourceAttributeDecoder : JD.Decoder ResourceAttribute
resourceAttributeDecoder =
    JD.succeed ResourceAttribute
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Type", "type" ]
                resourceAttributeTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Value", "value" ]
                JD.string
            )


{-| One of

  - `ResourceAttributeType_IPV4_ADDRESS`
  - `ResourceAttributeType_IPV6_ADDRESS`
  - `ResourceAttributeType_MAC_ADDRESS`
  - `ResourceAttributeType_FQDN`
  - `ResourceAttributeType_VM_MANAGER_ID`
  - `ResourceAttributeType_VM_MANAGED_OBJECT_REFERENCE`
  - `ResourceAttributeType_VM_NAME`
  - `ResourceAttributeType_VM_PATH`
  - `ResourceAttributeType_BIOS_ID`
  - `ResourceAttributeType_MOTHERBOARD_SERIAL_NUMBER`

-}
type ResourceAttributeType
    = ResourceAttributeType_IPV4_ADDRESS
    | ResourceAttributeType_IPV6_ADDRESS
    | ResourceAttributeType_MAC_ADDRESS
    | ResourceAttributeType_FQDN
    | ResourceAttributeType_VM_MANAGER_ID
    | ResourceAttributeType_VM_MANAGED_OBJECT_REFERENCE
    | ResourceAttributeType_VM_NAME
    | ResourceAttributeType_VM_PATH
    | ResourceAttributeType_BIOS_ID
    | ResourceAttributeType_MOTHERBOARD_SERIAL_NUMBER


resourceAttributeTypeDecoder : JD.Decoder ResourceAttributeType
resourceAttributeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IPV4_ADDRESS" ->
                        JD.succeed ResourceAttributeType_IPV4_ADDRESS

                    "IPV6_ADDRESS" ->
                        JD.succeed ResourceAttributeType_IPV6_ADDRESS

                    "MAC_ADDRESS" ->
                        JD.succeed ResourceAttributeType_MAC_ADDRESS

                    "FQDN" ->
                        JD.succeed ResourceAttributeType_FQDN

                    "VM_MANAGER_ID" ->
                        JD.succeed ResourceAttributeType_VM_MANAGER_ID

                    "VM_MANAGED_OBJECT_REFERENCE" ->
                        JD.succeed ResourceAttributeType_VM_MANAGED_OBJECT_REFERENCE

                    "VM_NAME" ->
                        JD.succeed ResourceAttributeType_VM_NAME

                    "VM_PATH" ->
                        JD.succeed ResourceAttributeType_VM_PATH

                    "BIOS_ID" ->
                        JD.succeed ResourceAttributeType_BIOS_ID

                    "MOTHERBOARD_SERIAL_NUMBER" ->
                        JD.succeed ResourceAttributeType_MOTHERBOARD_SERIAL_NUMBER

                    _ ->
                        JD.fail "bad thing"
            )


resourceAttributeTypeToString : ResourceAttributeType -> String
resourceAttributeTypeToString val =
    case val of
        ResourceAttributeType_IPV4_ADDRESS ->
            "IPV4_ADDRESS"

        ResourceAttributeType_IPV6_ADDRESS ->
            "IPV6_ADDRESS"

        ResourceAttributeType_MAC_ADDRESS ->
            "MAC_ADDRESS"

        ResourceAttributeType_FQDN ->
            "FQDN"

        ResourceAttributeType_VM_MANAGER_ID ->
            "VM_MANAGER_ID"

        ResourceAttributeType_VM_MANAGED_OBJECT_REFERENCE ->
            "VM_MANAGED_OBJECT_REFERENCE"

        ResourceAttributeType_VM_NAME ->
            "VM_NAME"

        ResourceAttributeType_VM_PATH ->
            "VM_PATH"

        ResourceAttributeType_BIOS_ID ->
            "BIOS_ID"

        ResourceAttributeType_MOTHERBOARD_SERIAL_NUMBER ->
            "MOTHERBOARD_SERIAL_NUMBER"


{-|

<p>Exception raised when the request references a resource (ADS configuration, update stream, migration task, etc.) that does not exist in ADS (Application Discovery Service) or in Migration Hub's repository.</p>

-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }


resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JD.succeed ResourceNotFoundException
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )


{-|

<p>Exception raised when there is an internal, configuration, or dependency error encountered.</p>

-}
type alias ServiceUnavailableException =
    { message : Maybe String
    }


serviceUnavailableExceptionDecoder : JD.Decoder ServiceUnavailableException
serviceUnavailableExceptionDecoder =
    JD.succeed ServiceUnavailableException
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )


{-| One of

  - `Status_NOT_STARTED`
  - `Status_IN_PROGRESS`
  - `Status_FAILED`
  - `Status_COMPLETED`

-}
type Status
    = Status_NOT_STARTED
    | Status_IN_PROGRESS
    | Status_FAILED
    | Status_COMPLETED


statusDecoder : JD.Decoder Status
statusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NOT_STARTED" ->
                        JD.succeed Status_NOT_STARTED

                    "IN_PROGRESS" ->
                        JD.succeed Status_IN_PROGRESS

                    "FAILED" ->
                        JD.succeed Status_FAILED

                    "COMPLETED" ->
                        JD.succeed Status_COMPLETED

                    _ ->
                        JD.fail "bad thing"
            )


statusToString : Status -> String
statusToString val =
    case val of
        Status_NOT_STARTED ->
            "NOT_STARTED"

        Status_IN_PROGRESS ->
            "IN_PROGRESS"

        Status_FAILED ->
            "FAILED"

        Status_COMPLETED ->
            "COMPLETED"


{-|

<p>Task object encapsulating task information.</p>

-}
type alias Task =
    { status : Status
    , statusDetail : Maybe String
    , progressPercent : Maybe Int
    }


taskDecoder : JD.Decoder Task
taskDecoder =
    JD.succeed Task
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Status", "status" ]
                statusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StatusDetail", "statusDetail" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProgressPercent", "progressPercent" ]
                JD.int
            )


{-|

<p>Exception raised to indicate a request was not authorized when the <code>DryRun</code> flag is set to "true".</p>

-}
type alias UnauthorizedOperation =
    { message : Maybe String
    }


unauthorizedOperationDecoder : JD.Decoder UnauthorizedOperation
unauthorizedOperationDecoder =
    JD.succeed UnauthorizedOperation
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )


{-| undefined
-}
type alias AssociateCreatedArtifactRequest =
    { progressUpdateStream : String
    , migrationTaskName : String
    , createdArtifact : CreatedArtifact
    , dryRun : Maybe Bool
    }


{-| undefined
-}
type alias AssociateDiscoveredResourceRequest =
    { progressUpdateStream : String
    , migrationTaskName : String
    , discoveredResource : DiscoveredResource
    , dryRun : Maybe Bool
    }


{-| undefined
-}
type alias CreateProgressUpdateStreamRequest =
    { progressUpdateStreamName : String
    , dryRun : Maybe Bool
    }


{-| undefined
-}
type alias DeleteProgressUpdateStreamRequest =
    { progressUpdateStreamName : String
    , dryRun : Maybe Bool
    }


{-| undefined
-}
type alias DescribeApplicationStateRequest =
    { applicationId : String
    }


{-| undefined
-}
type alias DescribeMigrationTaskRequest =
    { progressUpdateStream : String
    , migrationTaskName : String
    }


{-| undefined
-}
type alias DisassociateCreatedArtifactRequest =
    { progressUpdateStream : String
    , migrationTaskName : String
    , createdArtifactName : String
    , dryRun : Maybe Bool
    }


{-| undefined
-}
type alias DisassociateDiscoveredResourceRequest =
    { progressUpdateStream : String
    , migrationTaskName : String
    , configurationId : String
    , dryRun : Maybe Bool
    }


{-| undefined
-}
type alias ImportMigrationTaskRequest =
    { progressUpdateStream : String
    , migrationTaskName : String
    , dryRun : Maybe Bool
    }


{-| undefined
-}
type alias ListCreatedArtifactsRequest =
    { progressUpdateStream : String
    , migrationTaskName : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListDiscoveredResourcesRequest =
    { progressUpdateStream : String
    , migrationTaskName : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListMigrationTasksRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , resourceName : Maybe String
    }


{-| undefined
-}
type alias ListProgressUpdateStreamsRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias NotifyApplicationStateRequest =
    { applicationId : String
    , status : ApplicationStatus
    , dryRun : Maybe Bool
    }


{-| undefined
-}
type alias NotifyMigrationTaskStateRequest =
    { progressUpdateStream : String
    , migrationTaskName : String
    , task : Task
    , updateDateTime : Posix
    , nextUpdateSeconds : Int
    , dryRun : Maybe Bool
    }


{-| undefined
-}
type alias PutResourceAttributesRequest =
    { progressUpdateStream : String
    , migrationTaskName : String
    , resourceAttributeList : List ResourceAttribute
    , dryRun : Maybe Bool
    }


accessDeniedExceptionEncoder : AccessDeniedException -> JE.Value
accessDeniedExceptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Message", data.message )
        |> JE.object


associateCreatedArtifactRequestEncoder : AssociateCreatedArtifactRequest -> JE.Value
associateCreatedArtifactRequestEncoder data =
    []
        |> (::) ( "ProgressUpdateStream", data.progressUpdateStream |> JE.string )
        |> (::) ( "MigrationTaskName", data.migrationTaskName |> JE.string )
        |> (::) ( "CreatedArtifact", data.createdArtifact |> createdArtifactEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DryRun", data.dryRun )
        |> JE.object


associateCreatedArtifactResultEncoder : AssociateCreatedArtifactResult -> JE.Value
associateCreatedArtifactResultEncoder data =
    []
        |> JE.object


associateDiscoveredResourceRequestEncoder : AssociateDiscoveredResourceRequest -> JE.Value
associateDiscoveredResourceRequestEncoder data =
    []
        |> (::) ( "ProgressUpdateStream", data.progressUpdateStream |> JE.string )
        |> (::) ( "MigrationTaskName", data.migrationTaskName |> JE.string )
        |> (::) ( "DiscoveredResource", data.discoveredResource |> discoveredResourceEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DryRun", data.dryRun )
        |> JE.object


associateDiscoveredResourceResultEncoder : AssociateDiscoveredResourceResult -> JE.Value
associateDiscoveredResourceResultEncoder data =
    []
        |> JE.object


createProgressUpdateStreamRequestEncoder : CreateProgressUpdateStreamRequest -> JE.Value
createProgressUpdateStreamRequestEncoder data =
    []
        |> (::) ( "ProgressUpdateStreamName", data.progressUpdateStreamName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DryRun", data.dryRun )
        |> JE.object


createProgressUpdateStreamResultEncoder : CreateProgressUpdateStreamResult -> JE.Value
createProgressUpdateStreamResultEncoder data =
    []
        |> JE.object


createdArtifactEncoder : CreatedArtifact -> JE.Value
createdArtifactEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> JE.object


deleteProgressUpdateStreamRequestEncoder : DeleteProgressUpdateStreamRequest -> JE.Value
deleteProgressUpdateStreamRequestEncoder data =
    []
        |> (::) ( "ProgressUpdateStreamName", data.progressUpdateStreamName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DryRun", data.dryRun )
        |> JE.object


deleteProgressUpdateStreamResultEncoder : DeleteProgressUpdateStreamResult -> JE.Value
deleteProgressUpdateStreamResultEncoder data =
    []
        |> JE.object


describeApplicationStateRequestEncoder : DescribeApplicationStateRequest -> JE.Value
describeApplicationStateRequestEncoder data =
    []
        |> (::) ( "ApplicationId", data.applicationId |> JE.string )
        |> JE.object


describeApplicationStateResultEncoder : DescribeApplicationStateResult -> JE.Value
describeApplicationStateResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (applicationStatusToString >> JE.string)
            ( "ApplicationStatus", data.applicationStatus )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastUpdatedTime", data.lastUpdatedTime )
        |> JE.object


describeMigrationTaskRequestEncoder : DescribeMigrationTaskRequest -> JE.Value
describeMigrationTaskRequestEncoder data =
    []
        |> (::) ( "ProgressUpdateStream", data.progressUpdateStream |> JE.string )
        |> (::) ( "MigrationTaskName", data.migrationTaskName |> JE.string )
        |> JE.object


describeMigrationTaskResultEncoder : DescribeMigrationTaskResult -> JE.Value
describeMigrationTaskResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            migrationTaskEncoder
            ( "MigrationTask", data.migrationTask )
        |> JE.object


disassociateCreatedArtifactRequestEncoder : DisassociateCreatedArtifactRequest -> JE.Value
disassociateCreatedArtifactRequestEncoder data =
    []
        |> (::) ( "ProgressUpdateStream", data.progressUpdateStream |> JE.string )
        |> (::) ( "MigrationTaskName", data.migrationTaskName |> JE.string )
        |> (::) ( "CreatedArtifactName", data.createdArtifactName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DryRun", data.dryRun )
        |> JE.object


disassociateCreatedArtifactResultEncoder : DisassociateCreatedArtifactResult -> JE.Value
disassociateCreatedArtifactResultEncoder data =
    []
        |> JE.object


disassociateDiscoveredResourceRequestEncoder : DisassociateDiscoveredResourceRequest -> JE.Value
disassociateDiscoveredResourceRequestEncoder data =
    []
        |> (::) ( "ProgressUpdateStream", data.progressUpdateStream |> JE.string )
        |> (::) ( "MigrationTaskName", data.migrationTaskName |> JE.string )
        |> (::) ( "ConfigurationId", data.configurationId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DryRun", data.dryRun )
        |> JE.object


disassociateDiscoveredResourceResultEncoder : DisassociateDiscoveredResourceResult -> JE.Value
disassociateDiscoveredResourceResultEncoder data =
    []
        |> JE.object


discoveredResourceEncoder : DiscoveredResource -> JE.Value
discoveredResourceEncoder data =
    []
        |> (::) ( "ConfigurationId", data.configurationId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> JE.object


dryRunOperationEncoder : DryRunOperation -> JE.Value
dryRunOperationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Message", data.message )
        |> JE.object


importMigrationTaskRequestEncoder : ImportMigrationTaskRequest -> JE.Value
importMigrationTaskRequestEncoder data =
    []
        |> (::) ( "ProgressUpdateStream", data.progressUpdateStream |> JE.string )
        |> (::) ( "MigrationTaskName", data.migrationTaskName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DryRun", data.dryRun )
        |> JE.object


importMigrationTaskResultEncoder : ImportMigrationTaskResult -> JE.Value
importMigrationTaskResultEncoder data =
    []
        |> JE.object


internalServerErrorEncoder : InternalServerError -> JE.Value
internalServerErrorEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Message", data.message )
        |> JE.object


invalidInputExceptionEncoder : InvalidInputException -> JE.Value
invalidInputExceptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Message", data.message )
        |> JE.object


listCreatedArtifactsRequestEncoder : ListCreatedArtifactsRequest -> JE.Value
listCreatedArtifactsRequestEncoder data =
    []
        |> (::) ( "ProgressUpdateStream", data.progressUpdateStream |> JE.string )
        |> (::) ( "MigrationTaskName", data.migrationTaskName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> JE.object


listCreatedArtifactsResultEncoder : ListCreatedArtifactsResult -> JE.Value
listCreatedArtifactsResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            (JE.list createdArtifactEncoder)
            ( "CreatedArtifactList", data.createdArtifactList )
        |> JE.object


listDiscoveredResourcesRequestEncoder : ListDiscoveredResourcesRequest -> JE.Value
listDiscoveredResourcesRequestEncoder data =
    []
        |> (::) ( "ProgressUpdateStream", data.progressUpdateStream |> JE.string )
        |> (::) ( "MigrationTaskName", data.migrationTaskName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> JE.object


listDiscoveredResourcesResultEncoder : ListDiscoveredResourcesResult -> JE.Value
listDiscoveredResourcesResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            (JE.list discoveredResourceEncoder)
            ( "DiscoveredResourceList", data.discoveredResourceList )
        |> JE.object


listMigrationTasksRequestEncoder : ListMigrationTasksRequest -> JE.Value
listMigrationTasksRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceName", data.resourceName )
        |> JE.object


listMigrationTasksResultEncoder : ListMigrationTasksResult -> JE.Value
listMigrationTasksResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            (JE.list migrationTaskSummaryEncoder)
            ( "MigrationTaskSummaryList", data.migrationTaskSummaryList )
        |> JE.object


listProgressUpdateStreamsRequestEncoder : ListProgressUpdateStreamsRequest -> JE.Value
listProgressUpdateStreamsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> JE.object


listProgressUpdateStreamsResultEncoder : ListProgressUpdateStreamsResult -> JE.Value
listProgressUpdateStreamsResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list progressUpdateStreamSummaryEncoder)
            ( "ProgressUpdateStreamSummaryList", data.progressUpdateStreamSummaryList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


migrationTaskEncoder : MigrationTask -> JE.Value
migrationTaskEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ProgressUpdateStream", data.progressUpdateStream )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "MigrationTaskName", data.migrationTaskName )
        |> AWS.Core.Encode.optionalMember
            taskEncoder
            ( "Task", data.task )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "UpdateDateTime", data.updateDateTime )
        |> AWS.Core.Encode.optionalMember
            (JE.list resourceAttributeEncoder)
            ( "ResourceAttributeList", data.resourceAttributeList )
        |> JE.object


migrationTaskSummaryEncoder : MigrationTaskSummary -> JE.Value
migrationTaskSummaryEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ProgressUpdateStream", data.progressUpdateStream )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "MigrationTaskName", data.migrationTaskName )
        |> AWS.Core.Encode.optionalMember
            (statusToString >> JE.string)
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ProgressPercent", data.progressPercent )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StatusDetail", data.statusDetail )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "UpdateDateTime", data.updateDateTime )
        |> JE.object


notifyApplicationStateRequestEncoder : NotifyApplicationStateRequest -> JE.Value
notifyApplicationStateRequestEncoder data =
    []
        |> (::) ( "ApplicationId", data.applicationId |> JE.string )
        |> (::) ( "Status", data.status |> (applicationStatusToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DryRun", data.dryRun )
        |> JE.object


notifyApplicationStateResultEncoder : NotifyApplicationStateResult -> JE.Value
notifyApplicationStateResultEncoder data =
    []
        |> JE.object


notifyMigrationTaskStateRequestEncoder : NotifyMigrationTaskStateRequest -> JE.Value
notifyMigrationTaskStateRequestEncoder data =
    []
        |> (::) ( "ProgressUpdateStream", data.progressUpdateStream |> JE.string )
        |> (::) ( "MigrationTaskName", data.migrationTaskName |> JE.string )
        |> (::) ( "Task", data.task |> taskEncoder )
        |> (::) ( "UpdateDateTime", data.updateDateTime |> (Iso8601.fromTime >> JE.string) )
        |> (::) ( "NextUpdateSeconds", data.nextUpdateSeconds |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DryRun", data.dryRun )
        |> JE.object


notifyMigrationTaskStateResultEncoder : NotifyMigrationTaskStateResult -> JE.Value
notifyMigrationTaskStateResultEncoder data =
    []
        |> JE.object


policyErrorExceptionEncoder : PolicyErrorException -> JE.Value
policyErrorExceptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Message", data.message )
        |> JE.object


progressUpdateStreamSummaryEncoder : ProgressUpdateStreamSummary -> JE.Value
progressUpdateStreamSummaryEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ProgressUpdateStreamName", data.progressUpdateStreamName )
        |> JE.object


putResourceAttributesRequestEncoder : PutResourceAttributesRequest -> JE.Value
putResourceAttributesRequestEncoder data =
    []
        |> (::) ( "ProgressUpdateStream", data.progressUpdateStream |> JE.string )
        |> (::) ( "MigrationTaskName", data.migrationTaskName |> JE.string )
        |> (::) ( "ResourceAttributeList", data.resourceAttributeList |> JE.list resourceAttributeEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DryRun", data.dryRun )
        |> JE.object


putResourceAttributesResultEncoder : PutResourceAttributesResult -> JE.Value
putResourceAttributesResultEncoder data =
    []
        |> JE.object


resourceAttributeEncoder : ResourceAttribute -> JE.Value
resourceAttributeEncoder data =
    []
        |> (::) ( "Type", data.type_ |> (resourceAttributeTypeToString >> JE.string) )
        |> (::) ( "Value", data.value |> JE.string )
        |> JE.object


resourceNotFoundExceptionEncoder : ResourceNotFoundException -> JE.Value
resourceNotFoundExceptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Message", data.message )
        |> JE.object


serviceUnavailableExceptionEncoder : ServiceUnavailableException -> JE.Value
serviceUnavailableExceptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Message", data.message )
        |> JE.object


taskEncoder : Task -> JE.Value
taskEncoder data =
    []
        |> (::) ( "Status", data.status |> (statusToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StatusDetail", data.statusDetail )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ProgressPercent", data.progressPercent )
        |> JE.object


unauthorizedOperationEncoder : UnauthorizedOperation -> JE.Value
unauthorizedOperationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Message", data.message )
        |> JE.object
