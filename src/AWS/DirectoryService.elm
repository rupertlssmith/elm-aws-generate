module AWS.DirectoryService exposing
    ( service
    , acceptSharedDirectory, addIpRoutes, AddIpRoutesOptions, addTagsToResource, cancelSchemaExtension, connectDirectory, ConnectDirectoryOptions, createAlias, createComputer, CreateComputerOptions, createConditionalForwarder, createDirectory, CreateDirectoryOptions, createLogSubscription, createMicrosoftAD, CreateMicrosoftADOptions, createSnapshot, CreateSnapshotOptions, createTrust, CreateTrustOptions, deleteConditionalForwarder, deleteDirectory, deleteLogSubscription, deleteSnapshot, deleteTrust, DeleteTrustOptions, deregisterEventTopic, describeConditionalForwarders, DescribeConditionalForwardersOptions, describeDirectories, DescribeDirectoriesOptions, describeDomainControllers, DescribeDomainControllersOptions, describeEventTopics, DescribeEventTopicsOptions, describeSharedDirectories, DescribeSharedDirectoriesOptions, describeSnapshots, DescribeSnapshotsOptions, describeTrusts, DescribeTrustsOptions, disableRadius, disableSso, DisableSsoOptions, enableRadius, enableSso, EnableSsoOptions, getDirectoryLimits, getSnapshotLimits, listIpRoutes, ListIpRoutesOptions, listLogSubscriptions, ListLogSubscriptionsOptions, listSchemaExtensions, ListSchemaExtensionsOptions, listTagsForResource, ListTagsForResourceOptions, registerEventTopic, rejectSharedDirectory, removeIpRoutes, removeTagsFromResource, resetUserPassword, restoreFromSnapshot, shareDirectory, ShareDirectoryOptions, startSchemaExtension, unshareDirectory, updateConditionalForwarder, updateNumberOfDomainControllers, updateRadius, updateTrust, UpdateTrustOptions, verifyTrust
    , AcceptSharedDirectoryResult, AddIpRoutesResult, AddTagsToResourceResult, CancelSchemaExtensionResult, ConnectDirectoryResult, CreateAliasResult, CreateComputerResult, CreateConditionalForwarderResult, CreateDirectoryResult, CreateLogSubscriptionResult, CreateMicrosoftADResult, CreateSnapshotResult, CreateTrustResult, DeleteConditionalForwarderResult, DeleteDirectoryResult, DeleteLogSubscriptionResult, DeleteSnapshotResult, DeleteTrustResult, DeregisterEventTopicResult, DescribeConditionalForwardersResult, DescribeDirectoriesResult, DescribeDomainControllersResult, DescribeEventTopicsResult, DescribeSharedDirectoriesResult, DescribeSnapshotsResult, DescribeTrustsResult, DisableRadiusResult, DisableSsoResult, EnableRadiusResult, EnableSsoResult, GetDirectoryLimitsResult, GetSnapshotLimitsResult, ListIpRoutesResult, ListLogSubscriptionsResult, ListSchemaExtensionsResult, ListTagsForResourceResult, RegisterEventTopicResult, RejectSharedDirectoryResult, RemoveIpRoutesResult, RemoveTagsFromResourceResult, ResetUserPasswordResult, RestoreFromSnapshotResult, ShareDirectoryResult, StartSchemaExtensionResult, UnshareDirectoryResult, UpdateConditionalForwarderResult, UpdateNumberOfDomainControllersResult, UpdateRadiusResult, UpdateTrustResult, VerifyTrustResult
    , Attribute, Computer, ConditionalForwarder, DirectoryConnectSettings, DirectoryConnectSettingsDescription, DirectoryDescription, DirectoryLimits, DirectoryVpcSettings, DirectoryVpcSettingsDescription, DomainController, EventTopic, IpRoute, IpRouteInfo, LogSubscription, OwnerDirectoryDescription, RadiusSettings, SchemaExtensionInfo, ShareTarget, SharedDirectory, Snapshot, SnapshotLimits, Tag, Trust, UnshareTarget
    , DirectoryEdition(..), DirectorySize(..), DirectoryStage(..), DirectoryType(..), DomainControllerStatus(..), IpRouteStatusMsg(..), RadiusAuthenticationProtocol(..), RadiusStatus(..), ReplicationScope(..), SchemaExtensionStatus(..), SelectiveAuth(..), ShareMethod(..), ShareStatus(..), SnapshotStatus(..), SnapshotType(..), TargetType(..), TopicStatus(..), TrustDirection(..), TrustState(..), TrustType(..)
    )

{-| <fullname>AWS Directory Service</fullname> <p>AWS Directory Service is a web service that makes it easy for you to setup and run directories in the AWS cloud, or connect your AWS resources with an existing on-premises Microsoft Active Directory. This guide provides detailed information about AWS Directory Service operations, data types, parameters, and errors. For information about AWS Directory Services features, see <a href="https://aws.amazon.com/directoryservice/">AWS Directory Service</a> and the <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html">AWS Directory Service Administration Guide</a>.</p> <note> <p>AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWS Directory Service and other AWS services. For more information about the AWS SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p> </note>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [acceptSharedDirectory](#acceptSharedDirectory)
  - [addIpRoutes](#addIpRoutes)
  - [AddIpRoutesOptions](#AddIpRoutesOptions)
  - [addTagsToResource](#addTagsToResource)
  - [cancelSchemaExtension](#cancelSchemaExtension)
  - [connectDirectory](#connectDirectory)
  - [ConnectDirectoryOptions](#ConnectDirectoryOptions)
  - [createAlias](#createAlias)
  - [createComputer](#createComputer)
  - [CreateComputerOptions](#CreateComputerOptions)
  - [createConditionalForwarder](#createConditionalForwarder)
  - [createDirectory](#createDirectory)
  - [CreateDirectoryOptions](#CreateDirectoryOptions)
  - [createLogSubscription](#createLogSubscription)
  - [createMicrosoftAD](#createMicrosoftAD)
  - [CreateMicrosoftADOptions](#CreateMicrosoftADOptions)
  - [createSnapshot](#createSnapshot)
  - [CreateSnapshotOptions](#CreateSnapshotOptions)
  - [createTrust](#createTrust)
  - [CreateTrustOptions](#CreateTrustOptions)
  - [deleteConditionalForwarder](#deleteConditionalForwarder)
  - [deleteDirectory](#deleteDirectory)
  - [deleteLogSubscription](#deleteLogSubscription)
  - [deleteSnapshot](#deleteSnapshot)
  - [deleteTrust](#deleteTrust)
  - [DeleteTrustOptions](#DeleteTrustOptions)
  - [deregisterEventTopic](#deregisterEventTopic)
  - [describeConditionalForwarders](#describeConditionalForwarders)
  - [DescribeConditionalForwardersOptions](#DescribeConditionalForwardersOptions)
  - [describeDirectories](#describeDirectories)
  - [DescribeDirectoriesOptions](#DescribeDirectoriesOptions)
  - [describeDomainControllers](#describeDomainControllers)
  - [DescribeDomainControllersOptions](#DescribeDomainControllersOptions)
  - [describeEventTopics](#describeEventTopics)
  - [DescribeEventTopicsOptions](#DescribeEventTopicsOptions)
  - [describeSharedDirectories](#describeSharedDirectories)
  - [DescribeSharedDirectoriesOptions](#DescribeSharedDirectoriesOptions)
  - [describeSnapshots](#describeSnapshots)
  - [DescribeSnapshotsOptions](#DescribeSnapshotsOptions)
  - [describeTrusts](#describeTrusts)
  - [DescribeTrustsOptions](#DescribeTrustsOptions)
  - [disableRadius](#disableRadius)
  - [disableSso](#disableSso)
  - [DisableSsoOptions](#DisableSsoOptions)
  - [enableRadius](#enableRadius)
  - [enableSso](#enableSso)
  - [EnableSsoOptions](#EnableSsoOptions)
  - [getDirectoryLimits](#getDirectoryLimits)
  - [getSnapshotLimits](#getSnapshotLimits)
  - [listIpRoutes](#listIpRoutes)
  - [ListIpRoutesOptions](#ListIpRoutesOptions)
  - [listLogSubscriptions](#listLogSubscriptions)
  - [ListLogSubscriptionsOptions](#ListLogSubscriptionsOptions)
  - [listSchemaExtensions](#listSchemaExtensions)
  - [ListSchemaExtensionsOptions](#ListSchemaExtensionsOptions)
  - [listTagsForResource](#listTagsForResource)
  - [ListTagsForResourceOptions](#ListTagsForResourceOptions)
  - [registerEventTopic](#registerEventTopic)
  - [rejectSharedDirectory](#rejectSharedDirectory)
  - [removeIpRoutes](#removeIpRoutes)
  - [removeTagsFromResource](#removeTagsFromResource)
  - [resetUserPassword](#resetUserPassword)
  - [restoreFromSnapshot](#restoreFromSnapshot)
  - [shareDirectory](#shareDirectory)
  - [ShareDirectoryOptions](#ShareDirectoryOptions)
  - [startSchemaExtension](#startSchemaExtension)
  - [unshareDirectory](#unshareDirectory)
  - [updateConditionalForwarder](#updateConditionalForwarder)
  - [updateNumberOfDomainControllers](#updateNumberOfDomainControllers)
  - [updateRadius](#updateRadius)
  - [updateTrust](#updateTrust)
  - [UpdateTrustOptions](#UpdateTrustOptions)
  - [verifyTrust](#verifyTrust)

@docs acceptSharedDirectory, addIpRoutes, AddIpRoutesOptions, addTagsToResource, cancelSchemaExtension, connectDirectory, ConnectDirectoryOptions, createAlias, createComputer, CreateComputerOptions, createConditionalForwarder, createDirectory, CreateDirectoryOptions, createLogSubscription, createMicrosoftAD, CreateMicrosoftADOptions, createSnapshot, CreateSnapshotOptions, createTrust, CreateTrustOptions, deleteConditionalForwarder, deleteDirectory, deleteLogSubscription, deleteSnapshot, deleteTrust, DeleteTrustOptions, deregisterEventTopic, describeConditionalForwarders, DescribeConditionalForwardersOptions, describeDirectories, DescribeDirectoriesOptions, describeDomainControllers, DescribeDomainControllersOptions, describeEventTopics, DescribeEventTopicsOptions, describeSharedDirectories, DescribeSharedDirectoriesOptions, describeSnapshots, DescribeSnapshotsOptions, describeTrusts, DescribeTrustsOptions, disableRadius, disableSso, DisableSsoOptions, enableRadius, enableSso, EnableSsoOptions, getDirectoryLimits, getSnapshotLimits, listIpRoutes, ListIpRoutesOptions, listLogSubscriptions, ListLogSubscriptionsOptions, listSchemaExtensions, ListSchemaExtensionsOptions, listTagsForResource, ListTagsForResourceOptions, registerEventTopic, rejectSharedDirectory, removeIpRoutes, removeTagsFromResource, resetUserPassword, restoreFromSnapshot, shareDirectory, ShareDirectoryOptions, startSchemaExtension, unshareDirectory, updateConditionalForwarder, updateNumberOfDomainControllers, updateRadius, updateTrust, UpdateTrustOptions, verifyTrust


## Responses

  - [AcceptSharedDirectoryResult](#AcceptSharedDirectoryResult)
  - [AddIpRoutesResult](#AddIpRoutesResult)
  - [AddTagsToResourceResult](#AddTagsToResourceResult)
  - [CancelSchemaExtensionResult](#CancelSchemaExtensionResult)
  - [ConnectDirectoryResult](#ConnectDirectoryResult)
  - [CreateAliasResult](#CreateAliasResult)
  - [CreateComputerResult](#CreateComputerResult)
  - [CreateConditionalForwarderResult](#CreateConditionalForwarderResult)
  - [CreateDirectoryResult](#CreateDirectoryResult)
  - [CreateLogSubscriptionResult](#CreateLogSubscriptionResult)
  - [CreateMicrosoftADResult](#CreateMicrosoftADResult)
  - [CreateSnapshotResult](#CreateSnapshotResult)
  - [CreateTrustResult](#CreateTrustResult)
  - [DeleteConditionalForwarderResult](#DeleteConditionalForwarderResult)
  - [DeleteDirectoryResult](#DeleteDirectoryResult)
  - [DeleteLogSubscriptionResult](#DeleteLogSubscriptionResult)
  - [DeleteSnapshotResult](#DeleteSnapshotResult)
  - [DeleteTrustResult](#DeleteTrustResult)
  - [DeregisterEventTopicResult](#DeregisterEventTopicResult)
  - [DescribeConditionalForwardersResult](#DescribeConditionalForwardersResult)
  - [DescribeDirectoriesResult](#DescribeDirectoriesResult)
  - [DescribeDomainControllersResult](#DescribeDomainControllersResult)
  - [DescribeEventTopicsResult](#DescribeEventTopicsResult)
  - [DescribeSharedDirectoriesResult](#DescribeSharedDirectoriesResult)
  - [DescribeSnapshotsResult](#DescribeSnapshotsResult)
  - [DescribeTrustsResult](#DescribeTrustsResult)
  - [DisableRadiusResult](#DisableRadiusResult)
  - [DisableSsoResult](#DisableSsoResult)
  - [EnableRadiusResult](#EnableRadiusResult)
  - [EnableSsoResult](#EnableSsoResult)
  - [GetDirectoryLimitsResult](#GetDirectoryLimitsResult)
  - [GetSnapshotLimitsResult](#GetSnapshotLimitsResult)
  - [ListIpRoutesResult](#ListIpRoutesResult)
  - [ListLogSubscriptionsResult](#ListLogSubscriptionsResult)
  - [ListSchemaExtensionsResult](#ListSchemaExtensionsResult)
  - [ListTagsForResourceResult](#ListTagsForResourceResult)
  - [RegisterEventTopicResult](#RegisterEventTopicResult)
  - [RejectSharedDirectoryResult](#RejectSharedDirectoryResult)
  - [RemoveIpRoutesResult](#RemoveIpRoutesResult)
  - [RemoveTagsFromResourceResult](#RemoveTagsFromResourceResult)
  - [ResetUserPasswordResult](#ResetUserPasswordResult)
  - [RestoreFromSnapshotResult](#RestoreFromSnapshotResult)
  - [ShareDirectoryResult](#ShareDirectoryResult)
  - [StartSchemaExtensionResult](#StartSchemaExtensionResult)
  - [UnshareDirectoryResult](#UnshareDirectoryResult)
  - [UpdateConditionalForwarderResult](#UpdateConditionalForwarderResult)
  - [UpdateNumberOfDomainControllersResult](#UpdateNumberOfDomainControllersResult)
  - [UpdateRadiusResult](#UpdateRadiusResult)
  - [UpdateTrustResult](#UpdateTrustResult)
  - [VerifyTrustResult](#VerifyTrustResult)

@docs AcceptSharedDirectoryResult, AddIpRoutesResult, AddTagsToResourceResult, CancelSchemaExtensionResult, ConnectDirectoryResult, CreateAliasResult, CreateComputerResult, CreateConditionalForwarderResult, CreateDirectoryResult, CreateLogSubscriptionResult, CreateMicrosoftADResult, CreateSnapshotResult, CreateTrustResult, DeleteConditionalForwarderResult, DeleteDirectoryResult, DeleteLogSubscriptionResult, DeleteSnapshotResult, DeleteTrustResult, DeregisterEventTopicResult, DescribeConditionalForwardersResult, DescribeDirectoriesResult, DescribeDomainControllersResult, DescribeEventTopicsResult, DescribeSharedDirectoriesResult, DescribeSnapshotsResult, DescribeTrustsResult, DisableRadiusResult, DisableSsoResult, EnableRadiusResult, EnableSsoResult, GetDirectoryLimitsResult, GetSnapshotLimitsResult, ListIpRoutesResult, ListLogSubscriptionsResult, ListSchemaExtensionsResult, ListTagsForResourceResult, RegisterEventTopicResult, RejectSharedDirectoryResult, RemoveIpRoutesResult, RemoveTagsFromResourceResult, ResetUserPasswordResult, RestoreFromSnapshotResult, ShareDirectoryResult, StartSchemaExtensionResult, UnshareDirectoryResult, UpdateConditionalForwarderResult, UpdateNumberOfDomainControllersResult, UpdateRadiusResult, UpdateTrustResult, VerifyTrustResult


## Records

  - [Attribute](#Attribute)
  - [Computer](#Computer)
  - [ConditionalForwarder](#ConditionalForwarder)
  - [DirectoryConnectSettings](#DirectoryConnectSettings)
  - [DirectoryConnectSettingsDescription](#DirectoryConnectSettingsDescription)
  - [DirectoryDescription](#DirectoryDescription)
  - [DirectoryLimits](#DirectoryLimits)
  - [DirectoryVpcSettings](#DirectoryVpcSettings)
  - [DirectoryVpcSettingsDescription](#DirectoryVpcSettingsDescription)
  - [DomainController](#DomainController)
  - [EventTopic](#EventTopic)
  - [IpRoute](#IpRoute)
  - [IpRouteInfo](#IpRouteInfo)
  - [LogSubscription](#LogSubscription)
  - [OwnerDirectoryDescription](#OwnerDirectoryDescription)
  - [RadiusSettings](#RadiusSettings)
  - [SchemaExtensionInfo](#SchemaExtensionInfo)
  - [ShareTarget](#ShareTarget)
  - [SharedDirectory](#SharedDirectory)
  - [Snapshot](#Snapshot)
  - [SnapshotLimits](#SnapshotLimits)
  - [Tag](#Tag)
  - [Trust](#Trust)
  - [UnshareTarget](#UnshareTarget)

@docs Attribute, Computer, ConditionalForwarder, DirectoryConnectSettings, DirectoryConnectSettingsDescription, DirectoryDescription, DirectoryLimits, DirectoryVpcSettings, DirectoryVpcSettingsDescription, DomainController, EventTopic, IpRoute, IpRouteInfo, LogSubscription, OwnerDirectoryDescription, RadiusSettings, SchemaExtensionInfo, ShareTarget, SharedDirectory, Snapshot, SnapshotLimits, Tag, Trust, UnshareTarget


## Unions

  - [DirectoryEdition](#DirectoryEdition)
  - [DirectorySize](#DirectorySize)
  - [DirectoryStage](#DirectoryStage)
  - [DirectoryType](#DirectoryType)
  - [DomainControllerStatus](#DomainControllerStatus)
  - [IpRouteStatusMsg](#IpRouteStatusMsg)
  - [RadiusAuthenticationProtocol](#RadiusAuthenticationProtocol)
  - [RadiusStatus](#RadiusStatus)
  - [ReplicationScope](#ReplicationScope)
  - [SchemaExtensionStatus](#SchemaExtensionStatus)
  - [SelectiveAuth](#SelectiveAuth)
  - [ShareMethod](#ShareMethod)
  - [ShareStatus](#ShareStatus)
  - [SnapshotStatus](#SnapshotStatus)
  - [SnapshotType](#SnapshotType)
  - [TargetType](#TargetType)
  - [TopicStatus](#TopicStatus)
  - [TrustDirection](#TrustDirection)
  - [TrustState](#TrustState)
  - [TrustType](#TrustType)

@docs DirectoryEdition, DirectorySize, DirectoryStage, DirectoryType, DomainControllerStatus, IpRouteStatusMsg, RadiusAuthenticationProtocol, RadiusStatus, ReplicationScope, SchemaExtensionStatus, SelectiveAuth, ShareMethod, ShareStatus, SnapshotStatus, SnapshotType, TargetType, TopicStatus, TrustDirection, TrustState, TrustType

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
        "ds"
        "2015-04-16"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "DirectoryService_20150416")



-- OPERATIONS


{-|

<p>Accepts a directory sharing request that was sent from the directory owner account.</p>

**Required Parameters**

  - `sharedDirectoryId` **:** `String`

-}
acceptSharedDirectory :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AcceptSharedDirectoryResult)
acceptSharedDirectory sharedDirectoryId =
    let
        requestInput =
            AcceptSharedDirectoryRequest
                sharedDirectoryId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> acceptSharedDirectoryRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AcceptSharedDirectory"
            (AWS.Core.Decode.ResultDecoder "AcceptSharedDirectoryResult" acceptSharedDirectoryResultDecoder)
        )


{-|

<p>If the DNS server for your on-premises domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services. <i>AddIpRoutes</i> adds this address block. You can also use <i>AddIpRoutes</i> to facilitate routing traffic that uses public IP ranges from your Microsoft AD on AWS to a peer VPC. </p> <p>Before you call <i>AddIpRoutes</i>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <i>AddIpRoutes</i> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `ipRoutes` **:** `(List IpRoute)`

-}
addIpRoutes :
    String
    -> List IpRoute
    -> (AddIpRoutesOptions -> AddIpRoutesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddIpRoutesResult)
addIpRoutes directoryId ipRoutes setOptions =
    let
        requestInput =
            AddIpRoutesRequest
                directoryId
                ipRoutes
                options.updateSecurityGroupForDirectoryControllers

        options =
            setOptions (AddIpRoutesOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> addIpRoutesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AddIpRoutes"
            (AWS.Core.Decode.ResultDecoder "AddIpRoutesResult" addIpRoutesResultDecoder)
        )


{-| Options for a addIpRoutes request
-}
type alias AddIpRoutesOptions =
    { updateSecurityGroupForDirectoryControllers : Maybe Bool
    }


{-|

<p>Adds or overwrites one or more tags for the specified directory. Each directory can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique to each resource.</p>

**Required Parameters**

  - `resourceId` **:** `String`
  - `tags` **:** `(List Tag)`

-}
addTagsToResource :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddTagsToResourceResult)
addTagsToResource resourceId tags =
    let
        requestInput =
            AddTagsToResourceRequest
                resourceId
                tags
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
            (AWS.Core.Decode.ResultDecoder "AddTagsToResourceResult" addTagsToResourceResultDecoder)
        )


{-|

<p>Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema extension has started replicating to all domain controllers, the task can no longer be canceled. A schema extension can be canceled during any of the following states; <code>Initializing</code>, <code>CreatingSnapshot</code>, and <code>UpdatingSchema</code>.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `schemaExtensionId` **:** `String`

-}
cancelSchemaExtension :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CancelSchemaExtensionResult)
cancelSchemaExtension directoryId schemaExtensionId =
    let
        requestInput =
            CancelSchemaExtensionRequest
                directoryId
                schemaExtensionId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> cancelSchemaExtensionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CancelSchemaExtension"
            (AWS.Core.Decode.ResultDecoder "CancelSchemaExtensionResult" cancelSchemaExtensionResultDecoder)
        )


{-|

<p>Creates an AD Connector to connect to an on-premises directory.</p> <p>Before you call <code>ConnectDirectory</code>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <code>ConnectDirectory</code> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>

**Required Parameters**

  - `name` **:** `String`
  - `password` **:** `String`
  - `size` **:** `DirectorySize`
  - `connectSettings` **:** `DirectoryConnectSettings`

-}
connectDirectory :
    String
    -> String
    -> DirectorySize
    -> DirectoryConnectSettings
    -> (ConnectDirectoryOptions -> ConnectDirectoryOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConnectDirectoryResult)
connectDirectory name password size connectSettings setOptions =
    let
        requestInput =
            ConnectDirectoryRequest
                name
                options.shortName
                password
                options.description
                size
                connectSettings
                options.tags

        options =
            setOptions (ConnectDirectoryOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> connectDirectoryRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ConnectDirectory"
            (AWS.Core.Decode.ResultDecoder "ConnectDirectoryResult" connectDirectoryResultDecoder)
        )


{-| Options for a connectDirectory request
-}
type alias ConnectDirectoryOptions =
    { shortName : Maybe String
    , description : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates an alias for a directory and assigns the alias to the directory. The alias is used to construct the access URL for the directory, such as <code>http://&lt;alias&gt;.awsapps.com</code>.</p> <important> <p>After an alias has been created, it cannot be deleted or reused, so this operation should only be used when absolutely necessary.</p> </important>

**Required Parameters**

  - `directoryId` **:** `String`
  - `alias` **:** `String`

-}
createAlias :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateAliasResult)
createAlias directoryId alias =
    let
        requestInput =
            CreateAliasRequest
                directoryId
                alias
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createAliasRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateAlias"
            (AWS.Core.Decode.ResultDecoder "CreateAliasResult" createAliasResultDecoder)
        )


{-|

<p>Creates a computer account in the specified directory, and joins the computer to the directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `computerName` **:** `String`
  - `password` **:** `String`

-}
createComputer :
    String
    -> String
    -> String
    -> (CreateComputerOptions -> CreateComputerOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateComputerResult)
createComputer directoryId computerName password setOptions =
    let
        requestInput =
            CreateComputerRequest
                directoryId
                computerName
                password
                options.organizationalUnitDistinguishedName
                options.computerAttributes

        options =
            setOptions (CreateComputerOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createComputerRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateComputer"
            (AWS.Core.Decode.ResultDecoder "CreateComputerResult" createComputerResultDecoder)
        )


{-| Options for a createComputer request
-}
type alias CreateComputerOptions =
    { organizationalUnitDistinguishedName : Maybe String
    , computerAttributes : Maybe (List Attribute)
    }


{-|

<p>Creates a conditional forwarder associated with your AWS directory. Conditional forwarders are required in order to set up a trust relationship with another domain. The conditional forwarder points to the trusted domain.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `remoteDomainName` **:** `String`
  - `dnsIpAddrs` **:** `(List String)`

-}
createConditionalForwarder :
    String
    -> String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateConditionalForwarderResult)
createConditionalForwarder directoryId remoteDomainName dnsIpAddrs =
    let
        requestInput =
            CreateConditionalForwarderRequest
                directoryId
                remoteDomainName
                dnsIpAddrs
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createConditionalForwarderRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateConditionalForwarder"
            (AWS.Core.Decode.ResultDecoder "CreateConditionalForwarderResult" createConditionalForwarderResultDecoder)
        )


{-|

<p>Creates a Simple AD directory.</p> <p>Before you call <code>CreateDirectory</code>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <code>CreateDirectory</code> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>

**Required Parameters**

  - `name` **:** `String`
  - `password` **:** `String`
  - `size` **:** `DirectorySize`

-}
createDirectory :
    String
    -> String
    -> DirectorySize
    -> (CreateDirectoryOptions -> CreateDirectoryOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDirectoryResult)
createDirectory name password size setOptions =
    let
        requestInput =
            CreateDirectoryRequest
                name
                options.shortName
                password
                options.description
                size
                options.vpcSettings
                options.tags

        options =
            setOptions (CreateDirectoryOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createDirectoryRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateDirectory"
            (AWS.Core.Decode.ResultDecoder "CreateDirectoryResult" createDirectoryResultDecoder)
        )


{-| Options for a createDirectory request
-}
type alias CreateDirectoryOptions =
    { shortName : Maybe String
    , description : Maybe String
    , vpcSettings : Maybe DirectoryVpcSettings
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates a subscription to forward real time Directory Service domain controller security logs to the specified CloudWatch log group in your AWS account.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `logGroupName` **:** `String`

-}
createLogSubscription :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateLogSubscriptionResult)
createLogSubscription directoryId logGroupName =
    let
        requestInput =
            CreateLogSubscriptionRequest
                directoryId
                logGroupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createLogSubscriptionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateLogSubscription"
            (AWS.Core.Decode.ResultDecoder "CreateLogSubscriptionResult" createLogSubscriptionResultDecoder)
        )


{-|

<p>Creates an AWS Managed Microsoft AD directory.</p> <p>Before you call <i>CreateMicrosoftAD</i>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <i>CreateMicrosoftAD</i> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>

**Required Parameters**

  - `name` **:** `String`
  - `password` **:** `String`
  - `vpcSettings` **:** `DirectoryVpcSettings`

-}
createMicrosoftAD :
    String
    -> String
    -> DirectoryVpcSettings
    -> (CreateMicrosoftADOptions -> CreateMicrosoftADOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateMicrosoftADResult)
createMicrosoftAD name password vpcSettings setOptions =
    let
        requestInput =
            CreateMicrosoftADRequest
                name
                options.shortName
                password
                options.description
                vpcSettings
                options.edition
                options.tags

        options =
            setOptions (CreateMicrosoftADOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createMicrosoftADRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateMicrosoftAD"
            (AWS.Core.Decode.ResultDecoder "CreateMicrosoftADResult" createMicrosoftADResultDecoder)
        )


{-| Options for a createMicrosoftAD request
-}
type alias CreateMicrosoftADOptions =
    { shortName : Maybe String
    , description : Maybe String
    , edition : Maybe DirectoryEdition
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud.</p> <note> <p>You cannot take snapshots of AD Connector directories.</p> </note>

**Required Parameters**

  - `directoryId` **:** `String`

-}
createSnapshot :
    String
    -> (CreateSnapshotOptions -> CreateSnapshotOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSnapshotResult)
createSnapshot directoryId setOptions =
    let
        requestInput =
            CreateSnapshotRequest
                directoryId
                options.name

        options =
            setOptions (CreateSnapshotOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createSnapshotRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateSnapshot"
            (AWS.Core.Decode.ResultDecoder "CreateSnapshotResult" createSnapshotResultDecoder)
        )


{-| Options for a createSnapshot request
-}
type alias CreateSnapshotOptions =
    { name : Maybe String
    }


{-|

<p>AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your AWS Managed Microsoft AD directory, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.</p> <p>This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain. You can create either a forest trust or an external trust.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `remoteDomainName` **:** `String`
  - `trustPassword` **:** `String`
  - `trustDirection` **:** `TrustDirection`

-}
createTrust :
    String
    -> String
    -> String
    -> TrustDirection
    -> (CreateTrustOptions -> CreateTrustOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTrustResult)
createTrust directoryId remoteDomainName trustPassword trustDirection setOptions =
    let
        requestInput =
            CreateTrustRequest
                directoryId
                remoteDomainName
                trustPassword
                trustDirection
                options.trustType
                options.conditionalForwarderIpAddrs
                options.selectiveAuth

        options =
            setOptions (CreateTrustOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createTrustRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateTrust"
            (AWS.Core.Decode.ResultDecoder "CreateTrustResult" createTrustResultDecoder)
        )


{-| Options for a createTrust request
-}
type alias CreateTrustOptions =
    { trustType : Maybe TrustType
    , conditionalForwarderIpAddrs : Maybe (List String)
    , selectiveAuth : Maybe SelectiveAuth
    }


{-|

<p>Deletes a conditional forwarder that has been set up for your AWS directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `remoteDomainName` **:** `String`

-}
deleteConditionalForwarder :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteConditionalForwarderResult)
deleteConditionalForwarder directoryId remoteDomainName =
    let
        requestInput =
            DeleteConditionalForwarderRequest
                directoryId
                remoteDomainName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteConditionalForwarderRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteConditionalForwarder"
            (AWS.Core.Decode.ResultDecoder "DeleteConditionalForwarderResult" deleteConditionalForwarderResultDecoder)
        )


{-|

<p>Deletes an AWS Directory Service directory.</p> <p>Before you call <code>DeleteDirectory</code>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <code>DeleteDirectory</code> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>

**Required Parameters**

  - `directoryId` **:** `String`

-}
deleteDirectory :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDirectoryResult)
deleteDirectory directoryId =
    let
        requestInput =
            DeleteDirectoryRequest
                directoryId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteDirectoryRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteDirectory"
            (AWS.Core.Decode.ResultDecoder "DeleteDirectoryResult" deleteDirectoryResultDecoder)
        )


{-|

<p>Deletes the specified log subscription.</p>

**Required Parameters**

  - `directoryId` **:** `String`

-}
deleteLogSubscription :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteLogSubscriptionResult)
deleteLogSubscription directoryId =
    let
        requestInput =
            DeleteLogSubscriptionRequest
                directoryId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteLogSubscriptionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteLogSubscription"
            (AWS.Core.Decode.ResultDecoder "DeleteLogSubscriptionResult" deleteLogSubscriptionResultDecoder)
        )


{-|

<p>Deletes a directory snapshot.</p>

**Required Parameters**

  - `snapshotId` **:** `String`

-}
deleteSnapshot :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteSnapshotResult)
deleteSnapshot snapshotId =
    let
        requestInput =
            DeleteSnapshotRequest
                snapshotId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteSnapshotRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteSnapshot"
            (AWS.Core.Decode.ResultDecoder "DeleteSnapshotResult" deleteSnapshotResultDecoder)
        )


{-|

<p>Deletes an existing trust relationship between your AWS Managed Microsoft AD directory and an external domain.</p>

**Required Parameters**

  - `trustId` **:** `String`

-}
deleteTrust :
    String
    -> (DeleteTrustOptions -> DeleteTrustOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTrustResult)
deleteTrust trustId setOptions =
    let
        requestInput =
            DeleteTrustRequest
                trustId
                options.deleteAssociatedConditionalForwarder

        options =
            setOptions (DeleteTrustOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteTrustRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteTrust"
            (AWS.Core.Decode.ResultDecoder "DeleteTrustResult" deleteTrustResultDecoder)
        )


{-| Options for a deleteTrust request
-}
type alias DeleteTrustOptions =
    { deleteAssociatedConditionalForwarder : Maybe Bool
    }


{-|

<p>Removes the specified directory as a publisher to the specified SNS topic.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `topicName` **:** `String`

-}
deregisterEventTopic :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeregisterEventTopicResult)
deregisterEventTopic directoryId topicName =
    let
        requestInput =
            DeregisterEventTopicRequest
                directoryId
                topicName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deregisterEventTopicRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeregisterEventTopic"
            (AWS.Core.Decode.ResultDecoder "DeregisterEventTopicResult" deregisterEventTopicResultDecoder)
        )


{-|

<p>Obtains information about the conditional forwarders for this account.</p> <p>If no input parameters are provided for RemoteDomainNames, this request describes all conditional forwarders for the specified directory ID.</p>

**Required Parameters**

  - `directoryId` **:** `String`

-}
describeConditionalForwarders :
    String
    -> (DescribeConditionalForwardersOptions -> DescribeConditionalForwardersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeConditionalForwardersResult)
describeConditionalForwarders directoryId setOptions =
    let
        requestInput =
            DescribeConditionalForwardersRequest
                directoryId
                options.remoteDomainNames

        options =
            setOptions (DescribeConditionalForwardersOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeConditionalForwardersRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeConditionalForwarders"
            (AWS.Core.Decode.ResultDecoder "DescribeConditionalForwardersResult" describeConditionalForwardersResultDecoder)
        )


{-| Options for a describeConditionalForwarders request
-}
type alias DescribeConditionalForwardersOptions =
    { remoteDomainNames : Maybe (List String)
    }


{-|

<p>Obtains information about the directories that belong to this account.</p> <p>You can retrieve information about specific directories by passing the directory identifiers in the <code>DirectoryIds</code> parameter. Otherwise, all directories that belong to the current account are returned.</p> <p>This operation supports pagination with the use of the <code>NextToken</code> request and response parameters. If more results are available, the <code>DescribeDirectoriesResult.NextToken</code> member contains a token that you pass in the next call to <a>DescribeDirectories</a> to retrieve the next set of items.</p> <p>You can also specify a maximum number of return results with the <code>Limit</code> parameter.</p>

**Required Parameters**

-}
describeDirectories :
    (DescribeDirectoriesOptions -> DescribeDirectoriesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDirectoriesResult)
describeDirectories setOptions =
    let
        requestInput =
            DescribeDirectoriesRequest
                options.directoryIds
                options.nextToken
                options.limit

        options =
            setOptions (DescribeDirectoriesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeDirectoriesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeDirectories"
            (AWS.Core.Decode.ResultDecoder "DescribeDirectoriesResult" describeDirectoriesResultDecoder)
        )


{-| Options for a describeDirectories request
-}
type alias DescribeDirectoriesOptions =
    { directoryIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Provides information about any domain controllers in your directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`

-}
describeDomainControllers :
    String
    -> (DescribeDomainControllersOptions -> DescribeDomainControllersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDomainControllersResult)
describeDomainControllers directoryId setOptions =
    let
        requestInput =
            DescribeDomainControllersRequest
                directoryId
                options.domainControllerIds
                options.nextToken
                options.limit

        options =
            setOptions (DescribeDomainControllersOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeDomainControllersRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeDomainControllers"
            (AWS.Core.Decode.ResultDecoder "DescribeDomainControllersResult" describeDomainControllersResultDecoder)
        )


{-| Options for a describeDomainControllers request
-}
type alias DescribeDomainControllersOptions =
    { domainControllerIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Obtains information about which SNS topics receive status messages from the specified directory.</p> <p>If no input parameters are provided, such as DirectoryId or TopicName, this request describes all of the associations in the account.</p>

**Required Parameters**

-}
describeEventTopics :
    (DescribeEventTopicsOptions -> DescribeEventTopicsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEventTopicsResult)
describeEventTopics setOptions =
    let
        requestInput =
            DescribeEventTopicsRequest
                options.directoryId
                options.topicNames

        options =
            setOptions (DescribeEventTopicsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeEventTopicsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeEventTopics"
            (AWS.Core.Decode.ResultDecoder "DescribeEventTopicsResult" describeEventTopicsResultDecoder)
        )


{-| Options for a describeEventTopics request
-}
type alias DescribeEventTopicsOptions =
    { directoryId : Maybe String
    , topicNames : Maybe (List String)
    }


{-|

<p>Returns the shared directories in your account. </p>

**Required Parameters**

  - `ownerDirectoryId` **:** `String`

-}
describeSharedDirectories :
    String
    -> (DescribeSharedDirectoriesOptions -> DescribeSharedDirectoriesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSharedDirectoriesResult)
describeSharedDirectories ownerDirectoryId setOptions =
    let
        requestInput =
            DescribeSharedDirectoriesRequest
                ownerDirectoryId
                options.sharedDirectoryIds
                options.nextToken
                options.limit

        options =
            setOptions (DescribeSharedDirectoriesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeSharedDirectoriesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeSharedDirectories"
            (AWS.Core.Decode.ResultDecoder "DescribeSharedDirectoriesResult" describeSharedDirectoriesResultDecoder)
        )


{-| Options for a describeSharedDirectories request
-}
type alias DescribeSharedDirectoriesOptions =
    { sharedDirectoryIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Obtains information about the directory snapshots that belong to this account.</p> <p>This operation supports pagination with the use of the <i>NextToken</i> request and response parameters. If more results are available, the <i>DescribeSnapshots.NextToken</i> member contains a token that you pass in the next call to <a>DescribeSnapshots</a> to retrieve the next set of items.</p> <p>You can also specify a maximum number of return results with the <i>Limit</i> parameter.</p>

**Required Parameters**

-}
describeSnapshots :
    (DescribeSnapshotsOptions -> DescribeSnapshotsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSnapshotsResult)
describeSnapshots setOptions =
    let
        requestInput =
            DescribeSnapshotsRequest
                options.directoryId
                options.snapshotIds
                options.nextToken
                options.limit

        options =
            setOptions (DescribeSnapshotsOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeSnapshotsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeSnapshots"
            (AWS.Core.Decode.ResultDecoder "DescribeSnapshotsResult" describeSnapshotsResultDecoder)
        )


{-| Options for a describeSnapshots request
-}
type alias DescribeSnapshotsOptions =
    { directoryId : Maybe String
    , snapshotIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Obtains information about the trust relationships for this account.</p> <p>If no input parameters are provided, such as DirectoryId or TrustIds, this request describes all the trust relationships belonging to the account.</p>

**Required Parameters**

-}
describeTrusts :
    (DescribeTrustsOptions -> DescribeTrustsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTrustsResult)
describeTrusts setOptions =
    let
        requestInput =
            DescribeTrustsRequest
                options.directoryId
                options.trustIds
                options.nextToken
                options.limit

        options =
            setOptions (DescribeTrustsOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeTrustsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeTrusts"
            (AWS.Core.Decode.ResultDecoder "DescribeTrustsResult" describeTrustsResultDecoder)
        )


{-| Options for a describeTrusts request
-}
type alias DescribeTrustsOptions =
    { directoryId : Maybe String
    , trustIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`

-}
disableRadius :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisableRadiusResult)
disableRadius directoryId =
    let
        requestInput =
            DisableRadiusRequest
                directoryId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> disableRadiusRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DisableRadius"
            (AWS.Core.Decode.ResultDecoder "DisableRadiusResult" disableRadiusResultDecoder)
        )


{-|

<p>Disables single-sign on for a directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`

-}
disableSso :
    String
    -> (DisableSsoOptions -> DisableSsoOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisableSsoResult)
disableSso directoryId setOptions =
    let
        requestInput =
            DisableSsoRequest
                directoryId
                options.userName
                options.password

        options =
            setOptions (DisableSsoOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> disableSsoRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DisableSso"
            (AWS.Core.Decode.ResultDecoder "DisableSsoResult" disableSsoResultDecoder)
        )


{-| Options for a disableSso request
-}
type alias DisableSsoOptions =
    { userName : Maybe String
    , password : Maybe String
    }


{-|

<p>Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `radiusSettings` **:** `RadiusSettings`

-}
enableRadius :
    String
    -> RadiusSettings
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnableRadiusResult)
enableRadius directoryId radiusSettings =
    let
        requestInput =
            EnableRadiusRequest
                directoryId
                radiusSettings
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> enableRadiusRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "EnableRadius"
            (AWS.Core.Decode.ResultDecoder "EnableRadiusResult" enableRadiusResultDecoder)
        )


{-|

<p>Enables single sign-on for a directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`

-}
enableSso :
    String
    -> (EnableSsoOptions -> EnableSsoOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnableSsoResult)
enableSso directoryId setOptions =
    let
        requestInput =
            EnableSsoRequest
                directoryId
                options.userName
                options.password

        options =
            setOptions (EnableSsoOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> enableSsoRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "EnableSso"
            (AWS.Core.Decode.ResultDecoder "EnableSsoResult" enableSsoResultDecoder)
        )


{-| Options for a enableSso request
-}
type alias EnableSsoOptions =
    { userName : Maybe String
    , password : Maybe String
    }


{-|

<p>Obtains directory limit information for the current region.</p>

**Required Parameters**

-}
getDirectoryLimits : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDirectoryLimitsResult)
getDirectoryLimits =
    let
        requestInput =
            GetDirectoryLimitsRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getDirectoryLimitsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetDirectoryLimits"
            (AWS.Core.Decode.ResultDecoder "GetDirectoryLimitsResult" getDirectoryLimitsResultDecoder)
        )


{-|

<p>Obtains the manual snapshot limits for a directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`

-}
getSnapshotLimits :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSnapshotLimitsResult)
getSnapshotLimits directoryId =
    let
        requestInput =
            GetSnapshotLimitsRequest
                directoryId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getSnapshotLimitsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetSnapshotLimits"
            (AWS.Core.Decode.ResultDecoder "GetSnapshotLimitsResult" getSnapshotLimitsResultDecoder)
        )


{-|

<p>Lists the address blocks that you have added to a directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`

-}
listIpRoutes :
    String
    -> (ListIpRoutesOptions -> ListIpRoutesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListIpRoutesResult)
listIpRoutes directoryId setOptions =
    let
        requestInput =
            ListIpRoutesRequest
                directoryId
                options.nextToken
                options.limit

        options =
            setOptions (ListIpRoutesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listIpRoutesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListIpRoutes"
            (AWS.Core.Decode.ResultDecoder "ListIpRoutesResult" listIpRoutesResultDecoder)
        )


{-| Options for a listIpRoutes request
-}
type alias ListIpRoutesOptions =
    { nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Lists the active log subscriptions for the AWS account.</p>

**Required Parameters**

-}
listLogSubscriptions :
    (ListLogSubscriptionsOptions -> ListLogSubscriptionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListLogSubscriptionsResult)
listLogSubscriptions setOptions =
    let
        requestInput =
            ListLogSubscriptionsRequest
                options.directoryId
                options.nextToken
                options.limit

        options =
            setOptions (ListLogSubscriptionsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listLogSubscriptionsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListLogSubscriptions"
            (AWS.Core.Decode.ResultDecoder "ListLogSubscriptionsResult" listLogSubscriptionsResultDecoder)
        )


{-| Options for a listLogSubscriptions request
-}
type alias ListLogSubscriptionsOptions =
    { directoryId : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Lists all schema extensions applied to a Microsoft AD Directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`

-}
listSchemaExtensions :
    String
    -> (ListSchemaExtensionsOptions -> ListSchemaExtensionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListSchemaExtensionsResult)
listSchemaExtensions directoryId setOptions =
    let
        requestInput =
            ListSchemaExtensionsRequest
                directoryId
                options.nextToken
                options.limit

        options =
            setOptions (ListSchemaExtensionsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listSchemaExtensionsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListSchemaExtensions"
            (AWS.Core.Decode.ResultDecoder "ListSchemaExtensionsResult" listSchemaExtensionsResultDecoder)
        )


{-| Options for a listSchemaExtensions request
-}
type alias ListSchemaExtensionsOptions =
    { nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Lists all tags on a directory.</p>

**Required Parameters**

  - `resourceId` **:** `String`

-}
listTagsForResource :
    String
    -> (ListTagsForResourceOptions -> ListTagsForResourceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResult)
listTagsForResource resourceId setOptions =
    let
        requestInput =
            ListTagsForResourceRequest
                resourceId
                options.nextToken
                options.limit

        options =
            setOptions (ListTagsForResourceOptions Nothing Nothing)
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
            (AWS.Core.Decode.ResultDecoder "ListTagsForResourceResult" listTagsForResourceResultDecoder)
        )


{-| Options for a listTagsForResource request
-}
type alias ListTagsForResourceOptions =
    { nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Associates a directory with an SNS topic. This establishes the directory as a publisher to the specified SNS topic. You can then receive email or text (SMS) messages when the status of your directory changes. You get notified if your directory goes from an Active status to an Impaired or Inoperable status. You also receive a notification when the directory returns to an Active status.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `topicName` **:** `String`

-}
registerEventTopic :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterEventTopicResult)
registerEventTopic directoryId topicName =
    let
        requestInput =
            RegisterEventTopicRequest
                directoryId
                topicName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> registerEventTopicRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RegisterEventTopic"
            (AWS.Core.Decode.ResultDecoder "RegisterEventTopicResult" registerEventTopicResultDecoder)
        )


{-|

<p>Rejects a directory sharing request that was sent from the directory owner account.</p>

**Required Parameters**

  - `sharedDirectoryId` **:** `String`

-}
rejectSharedDirectory :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RejectSharedDirectoryResult)
rejectSharedDirectory sharedDirectoryId =
    let
        requestInput =
            RejectSharedDirectoryRequest
                sharedDirectoryId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> rejectSharedDirectoryRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RejectSharedDirectory"
            (AWS.Core.Decode.ResultDecoder "RejectSharedDirectoryResult" rejectSharedDirectoryResultDecoder)
        )


{-|

<p>Removes IP address blocks from a directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `cidrIps` **:** `(List String)`

-}
removeIpRoutes :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveIpRoutesResult)
removeIpRoutes directoryId cidrIps =
    let
        requestInput =
            RemoveIpRoutesRequest
                directoryId
                cidrIps
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> removeIpRoutesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RemoveIpRoutes"
            (AWS.Core.Decode.ResultDecoder "RemoveIpRoutesResult" removeIpRoutesResultDecoder)
        )


{-|

<p>Removes tags from a directory.</p>

**Required Parameters**

  - `resourceId` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
removeTagsFromResource :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveTagsFromResourceResult)
removeTagsFromResource resourceId tagKeys =
    let
        requestInput =
            RemoveTagsFromResourceRequest
                resourceId
                tagKeys
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
            (AWS.Core.Decode.ResultDecoder "RemoveTagsFromResourceResult" removeTagsFromResourceResultDecoder)
        )


{-|

<p>Resets the password for any user in your AWS Managed Microsoft AD or Simple AD directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `userName` **:** `String`
  - `newPassword` **:** `String`

-}
resetUserPassword :
    String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResetUserPasswordResult)
resetUserPassword directoryId userName newPassword =
    let
        requestInput =
            ResetUserPasswordRequest
                directoryId
                userName
                newPassword
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> resetUserPasswordRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ResetUserPassword"
            (AWS.Core.Decode.ResultDecoder "ResetUserPasswordResult" resetUserPasswordResultDecoder)
        )


{-|

<p>Restores a directory using an existing directory snapshot.</p> <p>When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten.</p> <p>This action returns as soon as the restore operation is initiated. You can monitor the progress of the restore operation by calling the <a>DescribeDirectories</a> operation with the directory identifier. When the <b>DirectoryDescription.Stage</b> value changes to <code>Active</code>, the restore operation is complete.</p>

**Required Parameters**

  - `snapshotId` **:** `String`

-}
restoreFromSnapshot :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreFromSnapshotResult)
restoreFromSnapshot snapshotId =
    let
        requestInput =
            RestoreFromSnapshotRequest
                snapshotId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> restoreFromSnapshotRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RestoreFromSnapshot"
            (AWS.Core.Decode.ResultDecoder "RestoreFromSnapshotResult" restoreFromSnapshotResultDecoder)
        )


{-|

<p>Shares a specified directory (<code>DirectoryId</code>) in your AWS account (directory owner) with another AWS account (directory consumer). With this operation you can use your directory from any AWS account and from any Amazon VPC within an AWS Region.</p> <p>When you share your AWS Managed Microsoft AD directory, AWS Directory Service creates a shared directory in the directory consumer account. This shared directory contains the metadata to provide access to the directory within the directory owner account. The shared directory is visible in all VPCs in the directory consumer account.</p> <p>The <code>ShareMethod</code> parameter determines whether the specified directory can be shared between AWS accounts inside the same AWS organization (<code>ORGANIZATIONS</code>). It also determines whether you can share the directory with any other AWS account either inside or outside of the organization (<code>HANDSHAKE</code>).</p> <p>The <code>ShareNotes</code> parameter is only used when <code>HANDSHAKE</code> is called, which sends a directory sharing request to the directory consumer. </p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `shareTarget` **:** `ShareTarget`
  - `shareMethod` **:** `ShareMethod`

-}
shareDirectory :
    String
    -> ShareTarget
    -> ShareMethod
    -> (ShareDirectoryOptions -> ShareDirectoryOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ShareDirectoryResult)
shareDirectory directoryId shareTarget shareMethod setOptions =
    let
        requestInput =
            ShareDirectoryRequest
                directoryId
                options.shareNotes
                shareTarget
                shareMethod

        options =
            setOptions (ShareDirectoryOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> shareDirectoryRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ShareDirectory"
            (AWS.Core.Decode.ResultDecoder "ShareDirectoryResult" shareDirectoryResultDecoder)
        )


{-| Options for a shareDirectory request
-}
type alias ShareDirectoryOptions =
    { shareNotes : Maybe String
    }


{-|

<p>Applies a schema extension to a Microsoft AD directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `createSnapshotBeforeSchemaExtension` **:** `Bool`
  - `ldifContent` **:** `String`
  - `description` **:** `String`

-}
startSchemaExtension :
    String
    -> Bool
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartSchemaExtensionResult)
startSchemaExtension directoryId createSnapshotBeforeSchemaExtension ldifContent description =
    let
        requestInput =
            StartSchemaExtensionRequest
                directoryId
                createSnapshotBeforeSchemaExtension
                ldifContent
                description
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> startSchemaExtensionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StartSchemaExtension"
            (AWS.Core.Decode.ResultDecoder "StartSchemaExtensionResult" startSchemaExtensionResultDecoder)
        )


{-|

<p>Stops the directory sharing between the directory owner and consumer accounts. </p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `unshareTarget` **:** `UnshareTarget`

-}
unshareDirectory :
    String
    -> UnshareTarget
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UnshareDirectoryResult)
unshareDirectory directoryId unshareTarget =
    let
        requestInput =
            UnshareDirectoryRequest
                directoryId
                unshareTarget
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> unshareDirectoryRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UnshareDirectory"
            (AWS.Core.Decode.ResultDecoder "UnshareDirectoryResult" unshareDirectoryResultDecoder)
        )


{-|

<p>Updates a conditional forwarder that has been set up for your AWS directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `remoteDomainName` **:** `String`
  - `dnsIpAddrs` **:** `(List String)`

-}
updateConditionalForwarder :
    String
    -> String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateConditionalForwarderResult)
updateConditionalForwarder directoryId remoteDomainName dnsIpAddrs =
    let
        requestInput =
            UpdateConditionalForwarderRequest
                directoryId
                remoteDomainName
                dnsIpAddrs
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateConditionalForwarderRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateConditionalForwarder"
            (AWS.Core.Decode.ResultDecoder "UpdateConditionalForwarderResult" updateConditionalForwarderResultDecoder)
        )


{-|

<p>Adds or removes domain controllers to or from the directory. Based on the difference between current value and new value (provided through this API call), domain controllers will be added or removed. It may take up to 45 minutes for any new domain controllers to become fully active once the requested number of domain controllers is updated. During this time, you cannot make another update request.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `desiredNumber` **:** `Int`

-}
updateNumberOfDomainControllers :
    String
    -> Int
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateNumberOfDomainControllersResult)
updateNumberOfDomainControllers directoryId desiredNumber =
    let
        requestInput =
            UpdateNumberOfDomainControllersRequest
                directoryId
                desiredNumber
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateNumberOfDomainControllersRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateNumberOfDomainControllers"
            (AWS.Core.Decode.ResultDecoder "UpdateNumberOfDomainControllersResult" updateNumberOfDomainControllersResultDecoder)
        )


{-|

<p>Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory.</p>

**Required Parameters**

  - `directoryId` **:** `String`
  - `radiusSettings` **:** `RadiusSettings`

-}
updateRadius :
    String
    -> RadiusSettings
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateRadiusResult)
updateRadius directoryId radiusSettings =
    let
        requestInput =
            UpdateRadiusRequest
                directoryId
                radiusSettings
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateRadiusRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateRadius"
            (AWS.Core.Decode.ResultDecoder "UpdateRadiusResult" updateRadiusResultDecoder)
        )


{-|

<p>Updates the trust that has been set up between your AWS Managed Microsoft AD directory and an on-premises Active Directory.</p>

**Required Parameters**

  - `trustId` **:** `String`

-}
updateTrust :
    String
    -> (UpdateTrustOptions -> UpdateTrustOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTrustResult)
updateTrust trustId setOptions =
    let
        requestInput =
            UpdateTrustRequest
                trustId
                options.selectiveAuth

        options =
            setOptions (UpdateTrustOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateTrustRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateTrust"
            (AWS.Core.Decode.ResultDecoder "UpdateTrustResult" updateTrustResultDecoder)
        )


{-| Options for a updateTrust request
-}
type alias UpdateTrustOptions =
    { selectiveAuth : Maybe SelectiveAuth
    }


{-|

<p>AWS Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships.</p> <p>This action verifies a trust relationship between your AWS Managed Microsoft AD directory and an external domain.</p>

**Required Parameters**

  - `trustId` **:** `String`

-}
verifyTrust :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VerifyTrustResult)
verifyTrust trustId =
    let
        requestInput =
            VerifyTrustRequest
                trustId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> verifyTrustRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "VerifyTrust"
            (AWS.Core.Decode.ResultDecoder "VerifyTrustResult" verifyTrustResultDecoder)
        )


{-| Type of HTTP response from acceptSharedDirecto
-}
type alias AcceptSharedDirectoryResult =
    { sharedDirectory : Maybe SharedDirectory
    }


acceptSharedDirectoryResultDecoder : JD.Decoder AcceptSharedDirectoryResult
acceptSharedDirectoryResultDecoder =
    JD.succeed AcceptSharedDirectoryResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SharedDirectory", "sharedDirectory" ]
                sharedDirectoryDecoder
            )


{-| Type of HTTP response from addIpRout
-}
type alias AddIpRoutesResult =
    {}


addIpRoutesResultDecoder : JD.Decoder AddIpRoutesResult
addIpRoutesResultDecoder =
    JD.succeed AddIpRoutesResult


{-| Type of HTTP response from addTagsToResour
-}
type alias AddTagsToResourceResult =
    {}


addTagsToResourceResultDecoder : JD.Decoder AddTagsToResourceResult
addTagsToResourceResultDecoder =
    JD.succeed AddTagsToResourceResult


{-|

<p>Represents a named directory attribute.</p>

-}
type alias Attribute =
    { name : Maybe String
    , value : Maybe String
    }


attributeDecoder : JD.Decoder Attribute
attributeDecoder =
    JD.succeed Attribute
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.string
            )


{-| Type of HTTP response from cancelSchemaExtensi
-}
type alias CancelSchemaExtensionResult =
    {}


cancelSchemaExtensionResultDecoder : JD.Decoder CancelSchemaExtensionResult
cancelSchemaExtensionResultDecoder =
    JD.succeed CancelSchemaExtensionResult


{-|

<p>Contains information about a computer account in a directory.</p>

-}
type alias Computer =
    { computerId : Maybe String
    , computerName : Maybe String
    , computerAttributes : Maybe (List Attribute)
    }


computerDecoder : JD.Decoder Computer
computerDecoder =
    JD.succeed Computer
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComputerId", "computerId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComputerName", "computerName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComputerAttributes", "computerAttributes" ]
                (JD.list attributeDecoder)
            )


{-|

<p>Points to a remote domain with which you are setting up a trust relationship. Conditional forwarders are required in order to set up a trust relationship with another domain.</p>

-}
type alias ConditionalForwarder =
    { remoteDomainName : Maybe String
    , dnsIpAddrs : Maybe (List String)
    , replicationScope : Maybe ReplicationScope
    }


conditionalForwarderDecoder : JD.Decoder ConditionalForwarder
conditionalForwarderDecoder =
    JD.succeed ConditionalForwarder
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RemoteDomainName", "remoteDomainName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DnsIpAddrs", "dnsIpAddrs" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReplicationScope", "replicationScope" ]
                replicationScopeDecoder
            )


{-| Type of HTTP response from connectDirecto
-}
type alias ConnectDirectoryResult =
    { directoryId : Maybe String
    }


connectDirectoryResultDecoder : JD.Decoder ConnectDirectoryResult
connectDirectoryResultDecoder =
    JD.succeed ConnectDirectoryResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )


{-| Type of HTTP response from createAli
-}
type alias CreateAliasResult =
    { directoryId : Maybe String
    , alias : Maybe String
    }


createAliasResultDecoder : JD.Decoder CreateAliasResult
createAliasResultDecoder =
    JD.succeed CreateAliasResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Alias", "alias" ]
                JD.string
            )


{-| Type of HTTP response from createComput
-}
type alias CreateComputerResult =
    { computer : Maybe Computer
    }


createComputerResultDecoder : JD.Decoder CreateComputerResult
createComputerResultDecoder =
    JD.succeed CreateComputerResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Computer", "computer" ]
                computerDecoder
            )


{-| Type of HTTP response from createConditionalForward
-}
type alias CreateConditionalForwarderResult =
    {}


createConditionalForwarderResultDecoder : JD.Decoder CreateConditionalForwarderResult
createConditionalForwarderResultDecoder =
    JD.succeed CreateConditionalForwarderResult


{-| Type of HTTP response from createDirecto
-}
type alias CreateDirectoryResult =
    { directoryId : Maybe String
    }


createDirectoryResultDecoder : JD.Decoder CreateDirectoryResult
createDirectoryResultDecoder =
    JD.succeed CreateDirectoryResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )


{-| Type of HTTP response from createLogSubscripti
-}
type alias CreateLogSubscriptionResult =
    {}


createLogSubscriptionResultDecoder : JD.Decoder CreateLogSubscriptionResult
createLogSubscriptionResultDecoder =
    JD.succeed CreateLogSubscriptionResult


{-| Type of HTTP response from createMicrosoft
-}
type alias CreateMicrosoftADResult =
    { directoryId : Maybe String
    }


createMicrosoftADResultDecoder : JD.Decoder CreateMicrosoftADResult
createMicrosoftADResultDecoder =
    JD.succeed CreateMicrosoftADResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )


{-| Type of HTTP response from createSnapsh
-}
type alias CreateSnapshotResult =
    { snapshotId : Maybe String
    }


createSnapshotResultDecoder : JD.Decoder CreateSnapshotResult
createSnapshotResultDecoder =
    JD.succeed CreateSnapshotResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotId", "snapshotId" ]
                JD.string
            )


{-| Type of HTTP response from createTru
-}
type alias CreateTrustResult =
    { trustId : Maybe String
    }


createTrustResultDecoder : JD.Decoder CreateTrustResult
createTrustResultDecoder =
    JD.succeed CreateTrustResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrustId", "trustId" ]
                JD.string
            )


{-| Type of HTTP response from deleteConditionalForward
-}
type alias DeleteConditionalForwarderResult =
    {}


deleteConditionalForwarderResultDecoder : JD.Decoder DeleteConditionalForwarderResult
deleteConditionalForwarderResultDecoder =
    JD.succeed DeleteConditionalForwarderResult


{-| Type of HTTP response from deleteDirecto
-}
type alias DeleteDirectoryResult =
    { directoryId : Maybe String
    }


deleteDirectoryResultDecoder : JD.Decoder DeleteDirectoryResult
deleteDirectoryResultDecoder =
    JD.succeed DeleteDirectoryResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )


{-| Type of HTTP response from deleteLogSubscripti
-}
type alias DeleteLogSubscriptionResult =
    {}


deleteLogSubscriptionResultDecoder : JD.Decoder DeleteLogSubscriptionResult
deleteLogSubscriptionResultDecoder =
    JD.succeed DeleteLogSubscriptionResult


{-| Type of HTTP response from deleteSnapsh
-}
type alias DeleteSnapshotResult =
    { snapshotId : Maybe String
    }


deleteSnapshotResultDecoder : JD.Decoder DeleteSnapshotResult
deleteSnapshotResultDecoder =
    JD.succeed DeleteSnapshotResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotId", "snapshotId" ]
                JD.string
            )


{-| Type of HTTP response from deleteTru
-}
type alias DeleteTrustResult =
    { trustId : Maybe String
    }


deleteTrustResultDecoder : JD.Decoder DeleteTrustResult
deleteTrustResultDecoder =
    JD.succeed DeleteTrustResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrustId", "trustId" ]
                JD.string
            )


{-| Type of HTTP response from deregisterEventTop
-}
type alias DeregisterEventTopicResult =
    {}


deregisterEventTopicResultDecoder : JD.Decoder DeregisterEventTopicResult
deregisterEventTopicResultDecoder =
    JD.succeed DeregisterEventTopicResult


{-| Type of HTTP response from describeConditionalForwarde
-}
type alias DescribeConditionalForwardersResult =
    { conditionalForwarders : Maybe (List ConditionalForwarder)
    }


describeConditionalForwardersResultDecoder : JD.Decoder DescribeConditionalForwardersResult
describeConditionalForwardersResultDecoder =
    JD.succeed DescribeConditionalForwardersResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConditionalForwarders", "conditionalForwarders" ]
                (JD.list conditionalForwarderDecoder)
            )


{-| Type of HTTP response from describeDirectori
-}
type alias DescribeDirectoriesResult =
    { directoryDescriptions : Maybe (List DirectoryDescription)
    , nextToken : Maybe String
    }


describeDirectoriesResultDecoder : JD.Decoder DescribeDirectoriesResult
describeDirectoriesResultDecoder =
    JD.succeed DescribeDirectoriesResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryDescriptions", "directoryDescriptions" ]
                (JD.list directoryDescriptionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from describeDomainControlle
-}
type alias DescribeDomainControllersResult =
    { domainControllers : Maybe (List DomainController)
    , nextToken : Maybe String
    }


describeDomainControllersResultDecoder : JD.Decoder DescribeDomainControllersResult
describeDomainControllersResultDecoder =
    JD.succeed DescribeDomainControllersResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DomainControllers", "domainControllers" ]
                (JD.list domainControllerDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from describeEventTopi
-}
type alias DescribeEventTopicsResult =
    { eventTopics : Maybe (List EventTopic)
    }


describeEventTopicsResultDecoder : JD.Decoder DescribeEventTopicsResult
describeEventTopicsResultDecoder =
    JD.succeed DescribeEventTopicsResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EventTopics", "eventTopics" ]
                (JD.list eventTopicDecoder)
            )


{-| Type of HTTP response from describeSharedDirectori
-}
type alias DescribeSharedDirectoriesResult =
    { sharedDirectories : Maybe (List SharedDirectory)
    , nextToken : Maybe String
    }


describeSharedDirectoriesResultDecoder : JD.Decoder DescribeSharedDirectoriesResult
describeSharedDirectoriesResultDecoder =
    JD.succeed DescribeSharedDirectoriesResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SharedDirectories", "sharedDirectories" ]
                (JD.list sharedDirectoryDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from describeSnapsho
-}
type alias DescribeSnapshotsResult =
    { snapshots : Maybe (List Snapshot)
    , nextToken : Maybe String
    }


describeSnapshotsResultDecoder : JD.Decoder DescribeSnapshotsResult
describeSnapshotsResultDecoder =
    JD.succeed DescribeSnapshotsResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Snapshots", "snapshots" ]
                (JD.list snapshotDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from describeTrus
-}
type alias DescribeTrustsResult =
    { trusts : Maybe (List Trust)
    , nextToken : Maybe String
    }


describeTrustsResultDecoder : JD.Decoder DescribeTrustsResult
describeTrustsResultDecoder =
    JD.succeed DescribeTrustsResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Trusts", "trusts" ]
                (JD.list trustDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>Contains information for the <a>ConnectDirectory</a> operation when an AD Connector directory is being created.</p>

-}
type alias DirectoryConnectSettings =
    { vpcId : String
    , subnetIds : List String
    , customerDnsIps : List String
    , customerUserName : String
    }


directoryConnectSettingsDecoder : JD.Decoder DirectoryConnectSettings
directoryConnectSettingsDecoder =
    JD.succeed DirectoryConnectSettings
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "VpcId", "vpcId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SubnetIds", "subnetIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CustomerDnsIps", "customerDnsIps" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CustomerUserName", "customerUserName" ]
                JD.string
            )


{-|

<p>Contains information about an AD Connector directory.</p>

-}
type alias DirectoryConnectSettingsDescription =
    { vpcId : Maybe String
    , subnetIds : Maybe (List String)
    , customerUserName : Maybe String
    , securityGroupId : Maybe String
    , availabilityZones : Maybe (List String)
    , connectIps : Maybe (List String)
    }


directoryConnectSettingsDescriptionDecoder : JD.Decoder DirectoryConnectSettingsDescription
directoryConnectSettingsDescriptionDecoder =
    JD.succeed DirectoryConnectSettingsDescription
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcId", "vpcId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetIds", "subnetIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CustomerUserName", "customerUserName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecurityGroupId", "securityGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AvailabilityZones", "availabilityZones" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConnectIps", "connectIps" ]
                (JD.list JD.string)
            )


{-|

<p>Contains information about an AWS Directory Service directory.</p>

-}
type alias DirectoryDescription =
    { directoryId : Maybe String
    , name : Maybe String
    , shortName : Maybe String
    , size : Maybe DirectorySize
    , edition : Maybe DirectoryEdition
    , alias : Maybe String
    , accessUrl : Maybe String
    , description : Maybe String
    , dnsIpAddrs : Maybe (List String)
    , stage : Maybe DirectoryStage
    , shareStatus : Maybe ShareStatus
    , shareMethod : Maybe ShareMethod
    , shareNotes : Maybe String
    , launchTime : Maybe Posix
    , stageLastUpdatedDateTime : Maybe Posix
    , type_ : Maybe DirectoryType
    , vpcSettings : Maybe DirectoryVpcSettingsDescription
    , connectSettings : Maybe DirectoryConnectSettingsDescription
    , radiusSettings : Maybe RadiusSettings
    , radiusStatus : Maybe RadiusStatus
    , stageReason : Maybe String
    , ssoEnabled : Maybe Bool
    , desiredNumberOfDomainControllers : Maybe Int
    , ownerDirectoryDescription : Maybe OwnerDirectoryDescription
    }


directoryDescriptionDecoder : JD.Decoder DirectoryDescription
directoryDescriptionDecoder =
    JD.succeed DirectoryDescription
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ShortName", "shortName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Size", "size" ]
                directorySizeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Edition", "edition" ]
                directoryEditionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Alias", "alias" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccessUrl", "accessUrl" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DnsIpAddrs", "dnsIpAddrs" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Stage", "stage" ]
                directoryStageDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ShareStatus", "shareStatus" ]
                shareStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ShareMethod", "shareMethod" ]
                shareMethodDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ShareNotes", "shareNotes" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchTime", "launchTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StageLastUpdatedDateTime", "stageLastUpdatedDateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Type", "type" ]
                directoryTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcSettings", "vpcSettings" ]
                directoryVpcSettingsDescriptionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConnectSettings", "connectSettings" ]
                directoryConnectSettingsDescriptionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RadiusSettings", "radiusSettings" ]
                radiusSettingsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RadiusStatus", "radiusStatus" ]
                radiusStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StageReason", "stageReason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SsoEnabled", "ssoEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DesiredNumberOfDomainControllers", "desiredNumberOfDomainControllers" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OwnerDirectoryDescription", "ownerDirectoryDescription" ]
                ownerDirectoryDescriptionDecoder
            )


{-| One of

  - `DirectoryEdition_Enterprise`
  - `DirectoryEdition_Standard`

-}
type DirectoryEdition
    = DirectoryEdition_Enterprise
    | DirectoryEdition_Standard


directoryEditionDecoder : JD.Decoder DirectoryEdition
directoryEditionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Enterprise" ->
                        JD.succeed DirectoryEdition_Enterprise

                    "Standard" ->
                        JD.succeed DirectoryEdition_Standard

                    _ ->
                        JD.fail "bad thing"
            )


directoryEditionToString : DirectoryEdition -> String
directoryEditionToString val =
    case val of
        DirectoryEdition_Enterprise ->
            "Enterprise"

        DirectoryEdition_Standard ->
            "Standard"


{-|

<p>Contains directory limit information for a region.</p>

-}
type alias DirectoryLimits =
    { cloudOnlyDirectoriesLimit : Maybe Int
    , cloudOnlyDirectoriesCurrentCount : Maybe Int
    , cloudOnlyDirectoriesLimitReached : Maybe Bool
    , cloudOnlyMicrosoftADLimit : Maybe Int
    , cloudOnlyMicrosoftADCurrentCount : Maybe Int
    , cloudOnlyMicrosoftADLimitReached : Maybe Bool
    , connectedDirectoriesLimit : Maybe Int
    , connectedDirectoriesCurrentCount : Maybe Int
    , connectedDirectoriesLimitReached : Maybe Bool
    }


directoryLimitsDecoder : JD.Decoder DirectoryLimits
directoryLimitsDecoder =
    JD.succeed DirectoryLimits
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudOnlyDirectoriesLimit", "cloudOnlyDirectoriesLimit" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudOnlyDirectoriesCurrentCount", "cloudOnlyDirectoriesCurrentCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudOnlyDirectoriesLimitReached", "cloudOnlyDirectoriesLimitReached" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudOnlyMicrosoftADLimit", "cloudOnlyMicrosoftADLimit" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudOnlyMicrosoftADCurrentCount", "cloudOnlyMicrosoftADCurrentCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudOnlyMicrosoftADLimitReached", "cloudOnlyMicrosoftADLimitReached" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConnectedDirectoriesLimit", "connectedDirectoriesLimit" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConnectedDirectoriesCurrentCount", "connectedDirectoriesCurrentCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ConnectedDirectoriesLimitReached", "connectedDirectoriesLimitReached" ]
                JD.bool
            )


{-| One of

  - `DirectorySize_Small`
  - `DirectorySize_Large`

-}
type DirectorySize
    = DirectorySize_Small
    | DirectorySize_Large


directorySizeDecoder : JD.Decoder DirectorySize
directorySizeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Small" ->
                        JD.succeed DirectorySize_Small

                    "Large" ->
                        JD.succeed DirectorySize_Large

                    _ ->
                        JD.fail "bad thing"
            )


directorySizeToString : DirectorySize -> String
directorySizeToString val =
    case val of
        DirectorySize_Small ->
            "Small"

        DirectorySize_Large ->
            "Large"


{-| One of

  - `DirectoryStage_Requested`
  - `DirectoryStage_Creating`
  - `DirectoryStage_Created`
  - `DirectoryStage_Active`
  - `DirectoryStage_Inoperable`
  - `DirectoryStage_Impaired`
  - `DirectoryStage_Restoring`
  - `DirectoryStage_RestoreFailed`
  - `DirectoryStage_Deleting`
  - `DirectoryStage_Deleted`
  - `DirectoryStage_Failed`

-}
type DirectoryStage
    = DirectoryStage_Requested
    | DirectoryStage_Creating
    | DirectoryStage_Created
    | DirectoryStage_Active
    | DirectoryStage_Inoperable
    | DirectoryStage_Impaired
    | DirectoryStage_Restoring
    | DirectoryStage_RestoreFailed
    | DirectoryStage_Deleting
    | DirectoryStage_Deleted
    | DirectoryStage_Failed


directoryStageDecoder : JD.Decoder DirectoryStage
directoryStageDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Requested" ->
                        JD.succeed DirectoryStage_Requested

                    "Creating" ->
                        JD.succeed DirectoryStage_Creating

                    "Created" ->
                        JD.succeed DirectoryStage_Created

                    "Active" ->
                        JD.succeed DirectoryStage_Active

                    "Inoperable" ->
                        JD.succeed DirectoryStage_Inoperable

                    "Impaired" ->
                        JD.succeed DirectoryStage_Impaired

                    "Restoring" ->
                        JD.succeed DirectoryStage_Restoring

                    "RestoreFailed" ->
                        JD.succeed DirectoryStage_RestoreFailed

                    "Deleting" ->
                        JD.succeed DirectoryStage_Deleting

                    "Deleted" ->
                        JD.succeed DirectoryStage_Deleted

                    "Failed" ->
                        JD.succeed DirectoryStage_Failed

                    _ ->
                        JD.fail "bad thing"
            )


directoryStageToString : DirectoryStage -> String
directoryStageToString val =
    case val of
        DirectoryStage_Requested ->
            "Requested"

        DirectoryStage_Creating ->
            "Creating"

        DirectoryStage_Created ->
            "Created"

        DirectoryStage_Active ->
            "Active"

        DirectoryStage_Inoperable ->
            "Inoperable"

        DirectoryStage_Impaired ->
            "Impaired"

        DirectoryStage_Restoring ->
            "Restoring"

        DirectoryStage_RestoreFailed ->
            "RestoreFailed"

        DirectoryStage_Deleting ->
            "Deleting"

        DirectoryStage_Deleted ->
            "Deleted"

        DirectoryStage_Failed ->
            "Failed"


{-| One of

  - `DirectoryType_SimpleAD`
  - `DirectoryType_ADConnector`
  - `DirectoryType_MicrosoftAD`
  - `DirectoryType_SharedMicrosoftAD`

-}
type DirectoryType
    = DirectoryType_SimpleAD
    | DirectoryType_ADConnector
    | DirectoryType_MicrosoftAD
    | DirectoryType_SharedMicrosoftAD


directoryTypeDecoder : JD.Decoder DirectoryType
directoryTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SimpleAD" ->
                        JD.succeed DirectoryType_SimpleAD

                    "ADConnector" ->
                        JD.succeed DirectoryType_ADConnector

                    "MicrosoftAD" ->
                        JD.succeed DirectoryType_MicrosoftAD

                    "SharedMicrosoftAD" ->
                        JD.succeed DirectoryType_SharedMicrosoftAD

                    _ ->
                        JD.fail "bad thing"
            )


directoryTypeToString : DirectoryType -> String
directoryTypeToString val =
    case val of
        DirectoryType_SimpleAD ->
            "SimpleAD"

        DirectoryType_ADConnector ->
            "ADConnector"

        DirectoryType_MicrosoftAD ->
            "MicrosoftAD"

        DirectoryType_SharedMicrosoftAD ->
            "SharedMicrosoftAD"


{-|

<p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>

-}
type alias DirectoryVpcSettings =
    { vpcId : String
    , subnetIds : List String
    }


directoryVpcSettingsDecoder : JD.Decoder DirectoryVpcSettings
directoryVpcSettingsDecoder =
    JD.succeed DirectoryVpcSettings
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "VpcId", "vpcId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SubnetIds", "subnetIds" ]
                (JD.list JD.string)
            )


{-|

<p>Contains information about the directory.</p>

-}
type alias DirectoryVpcSettingsDescription =
    { vpcId : Maybe String
    , subnetIds : Maybe (List String)
    , securityGroupId : Maybe String
    , availabilityZones : Maybe (List String)
    }


directoryVpcSettingsDescriptionDecoder : JD.Decoder DirectoryVpcSettingsDescription
directoryVpcSettingsDescriptionDecoder =
    JD.succeed DirectoryVpcSettingsDescription
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcId", "vpcId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetIds", "subnetIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecurityGroupId", "securityGroupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AvailabilityZones", "availabilityZones" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from disableRadi
-}
type alias DisableRadiusResult =
    {}


disableRadiusResultDecoder : JD.Decoder DisableRadiusResult
disableRadiusResultDecoder =
    JD.succeed DisableRadiusResult


{-| Type of HTTP response from disableS
-}
type alias DisableSsoResult =
    {}


disableSsoResultDecoder : JD.Decoder DisableSsoResult
disableSsoResultDecoder =
    JD.succeed DisableSsoResult


{-|

<p>Contains information about the domain controllers for a specified directory.</p>

-}
type alias DomainController =
    { directoryId : Maybe String
    , domainControllerId : Maybe String
    , dnsIpAddr : Maybe String
    , vpcId : Maybe String
    , subnetId : Maybe String
    , availabilityZone : Maybe String
    , status : Maybe DomainControllerStatus
    , statusReason : Maybe String
    , launchTime : Maybe Posix
    , statusLastUpdatedDateTime : Maybe Posix
    }


domainControllerDecoder : JD.Decoder DomainController
domainControllerDecoder =
    JD.succeed DomainController
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DomainControllerId", "domainControllerId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DnsIpAddr", "dnsIpAddr" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcId", "vpcId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetId", "subnetId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AvailabilityZone", "availabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                domainControllerStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StatusReason", "statusReason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LaunchTime", "launchTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StatusLastUpdatedDateTime", "statusLastUpdatedDateTime" ]
                JDX.datetime
            )


{-| One of

  - `DomainControllerStatus_Creating`
  - `DomainControllerStatus_Active`
  - `DomainControllerStatus_Impaired`
  - `DomainControllerStatus_Restoring`
  - `DomainControllerStatus_Deleting`
  - `DomainControllerStatus_Deleted`
  - `DomainControllerStatus_Failed`

-}
type DomainControllerStatus
    = DomainControllerStatus_Creating
    | DomainControllerStatus_Active
    | DomainControllerStatus_Impaired
    | DomainControllerStatus_Restoring
    | DomainControllerStatus_Deleting
    | DomainControllerStatus_Deleted
    | DomainControllerStatus_Failed


domainControllerStatusDecoder : JD.Decoder DomainControllerStatus
domainControllerStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Creating" ->
                        JD.succeed DomainControllerStatus_Creating

                    "Active" ->
                        JD.succeed DomainControllerStatus_Active

                    "Impaired" ->
                        JD.succeed DomainControllerStatus_Impaired

                    "Restoring" ->
                        JD.succeed DomainControllerStatus_Restoring

                    "Deleting" ->
                        JD.succeed DomainControllerStatus_Deleting

                    "Deleted" ->
                        JD.succeed DomainControllerStatus_Deleted

                    "Failed" ->
                        JD.succeed DomainControllerStatus_Failed

                    _ ->
                        JD.fail "bad thing"
            )


domainControllerStatusToString : DomainControllerStatus -> String
domainControllerStatusToString val =
    case val of
        DomainControllerStatus_Creating ->
            "Creating"

        DomainControllerStatus_Active ->
            "Active"

        DomainControllerStatus_Impaired ->
            "Impaired"

        DomainControllerStatus_Restoring ->
            "Restoring"

        DomainControllerStatus_Deleting ->
            "Deleting"

        DomainControllerStatus_Deleted ->
            "Deleted"

        DomainControllerStatus_Failed ->
            "Failed"


{-| Type of HTTP response from enableRadi
-}
type alias EnableRadiusResult =
    {}


enableRadiusResultDecoder : JD.Decoder EnableRadiusResult
enableRadiusResultDecoder =
    JD.succeed EnableRadiusResult


{-| Type of HTTP response from enableS
-}
type alias EnableSsoResult =
    {}


enableSsoResultDecoder : JD.Decoder EnableSsoResult
enableSsoResultDecoder =
    JD.succeed EnableSsoResult


{-|

<p>Information about SNS topic and AWS Directory Service directory associations.</p>

-}
type alias EventTopic =
    { directoryId : Maybe String
    , topicName : Maybe String
    , topicArn : Maybe String
    , createdDateTime : Maybe Posix
    , status : Maybe TopicStatus
    }


eventTopicDecoder : JD.Decoder EventTopic
eventTopicDecoder =
    JD.succeed EventTopic
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicName", "topicName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicArn", "topicArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreatedDateTime", "createdDateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                topicStatusDecoder
            )


{-| Type of HTTP response from getDirectoryLimi
-}
type alias GetDirectoryLimitsResult =
    { directoryLimits : Maybe DirectoryLimits
    }


getDirectoryLimitsResultDecoder : JD.Decoder GetDirectoryLimitsResult
getDirectoryLimitsResultDecoder =
    JD.succeed GetDirectoryLimitsResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryLimits", "directoryLimits" ]
                directoryLimitsDecoder
            )


{-| Type of HTTP response from getSnapshotLimi
-}
type alias GetSnapshotLimitsResult =
    { snapshotLimits : Maybe SnapshotLimits
    }


getSnapshotLimitsResultDecoder : JD.Decoder GetSnapshotLimitsResult
getSnapshotLimitsResultDecoder =
    JD.succeed GetSnapshotLimitsResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotLimits", "snapshotLimits" ]
                snapshotLimitsDecoder
            )


{-|

<p>IP address block. This is often the address block of the DNS server used for your on-premises domain. </p>

-}
type alias IpRoute =
    { cidrIp : Maybe String
    , description : Maybe String
    }


ipRouteDecoder : JD.Decoder IpRoute
ipRouteDecoder =
    JD.succeed IpRoute
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CidrIp", "cidrIp" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )


{-|

<p>Information about one or more IP address blocks.</p>

-}
type alias IpRouteInfo =
    { directoryId : Maybe String
    , cidrIp : Maybe String
    , ipRouteStatusMsg : Maybe IpRouteStatusMsg
    , addedDateTime : Maybe Posix
    , ipRouteStatusReason : Maybe String
    , description : Maybe String
    }


ipRouteInfoDecoder : JD.Decoder IpRouteInfo
ipRouteInfoDecoder =
    JD.succeed IpRouteInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CidrIp", "cidrIp" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IpRouteStatusMsg", "ipRouteStatusMsg" ]
                ipRouteStatusMsgDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AddedDateTime", "addedDateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IpRouteStatusReason", "ipRouteStatusReason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )


{-| One of

  - `IpRouteStatusMsg_Adding`
  - `IpRouteStatusMsg_Added`
  - `IpRouteStatusMsg_Removing`
  - `IpRouteStatusMsg_Removed`
  - `IpRouteStatusMsg_AddFailed`
  - `IpRouteStatusMsg_RemoveFailed`

-}
type IpRouteStatusMsg
    = IpRouteStatusMsg_Adding
    | IpRouteStatusMsg_Added
    | IpRouteStatusMsg_Removing
    | IpRouteStatusMsg_Removed
    | IpRouteStatusMsg_AddFailed
    | IpRouteStatusMsg_RemoveFailed


ipRouteStatusMsgDecoder : JD.Decoder IpRouteStatusMsg
ipRouteStatusMsgDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Adding" ->
                        JD.succeed IpRouteStatusMsg_Adding

                    "Added" ->
                        JD.succeed IpRouteStatusMsg_Added

                    "Removing" ->
                        JD.succeed IpRouteStatusMsg_Removing

                    "Removed" ->
                        JD.succeed IpRouteStatusMsg_Removed

                    "AddFailed" ->
                        JD.succeed IpRouteStatusMsg_AddFailed

                    "RemoveFailed" ->
                        JD.succeed IpRouteStatusMsg_RemoveFailed

                    _ ->
                        JD.fail "bad thing"
            )


ipRouteStatusMsgToString : IpRouteStatusMsg -> String
ipRouteStatusMsgToString val =
    case val of
        IpRouteStatusMsg_Adding ->
            "Adding"

        IpRouteStatusMsg_Added ->
            "Added"

        IpRouteStatusMsg_Removing ->
            "Removing"

        IpRouteStatusMsg_Removed ->
            "Removed"

        IpRouteStatusMsg_AddFailed ->
            "AddFailed"

        IpRouteStatusMsg_RemoveFailed ->
            "RemoveFailed"


{-| Type of HTTP response from listIpRout
-}
type alias ListIpRoutesResult =
    { ipRoutesInfo : Maybe (List IpRouteInfo)
    , nextToken : Maybe String
    }


listIpRoutesResultDecoder : JD.Decoder ListIpRoutesResult
listIpRoutesResultDecoder =
    JD.succeed ListIpRoutesResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IpRoutesInfo", "ipRoutesInfo" ]
                (JD.list ipRouteInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from listLogSubscriptio
-}
type alias ListLogSubscriptionsResult =
    { logSubscriptions : Maybe (List LogSubscription)
    , nextToken : Maybe String
    }


listLogSubscriptionsResultDecoder : JD.Decoder ListLogSubscriptionsResult
listLogSubscriptionsResultDecoder =
    JD.succeed ListLogSubscriptionsResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LogSubscriptions", "logSubscriptions" ]
                (JD.list logSubscriptionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from listSchemaExtensio
-}
type alias ListSchemaExtensionsResult =
    { schemaExtensionsInfo : Maybe (List SchemaExtensionInfo)
    , nextToken : Maybe String
    }


listSchemaExtensionsResultDecoder : JD.Decoder ListSchemaExtensionsResult
listSchemaExtensionsResultDecoder =
    JD.succeed ListSchemaExtensionsResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SchemaExtensionsInfo", "schemaExtensionsInfo" ]
                (JD.list schemaExtensionInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from listTagsForResour
-}
type alias ListTagsForResourceResult =
    { tags : Maybe (List Tag)
    , nextToken : Maybe String
    }


listTagsForResourceResultDecoder : JD.Decoder ListTagsForResourceResult
listTagsForResourceResultDecoder =
    JD.succeed ListTagsForResourceResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>Represents a log subscription, which tracks real-time data from a chosen log group to a specified destination.</p>

-}
type alias LogSubscription =
    { directoryId : Maybe String
    , logGroupName : Maybe String
    , subscriptionCreatedDateTime : Maybe Posix
    }


logSubscriptionDecoder : JD.Decoder LogSubscription
logSubscriptionDecoder =
    JD.succeed LogSubscription
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LogGroupName", "logGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubscriptionCreatedDateTime", "subscriptionCreatedDateTime" ]
                JDX.datetime
            )


{-|

<p>Describes the directory owner account details that have been shared to the directory consumer account.</p>

-}
type alias OwnerDirectoryDescription =
    { directoryId : Maybe String
    , accountId : Maybe String
    , dnsIpAddrs : Maybe (List String)
    , vpcSettings : Maybe DirectoryVpcSettingsDescription
    , radiusSettings : Maybe RadiusSettings
    , radiusStatus : Maybe RadiusStatus
    }


ownerDirectoryDescriptionDecoder : JD.Decoder OwnerDirectoryDescription
ownerDirectoryDescriptionDecoder =
    JD.succeed OwnerDirectoryDescription
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccountId", "accountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DnsIpAddrs", "dnsIpAddrs" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcSettings", "vpcSettings" ]
                directoryVpcSettingsDescriptionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RadiusSettings", "radiusSettings" ]
                radiusSettingsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RadiusStatus", "radiusStatus" ]
                radiusStatusDecoder
            )


{-| One of

  - `RadiusAuthenticationProtocol_PAP`
  - `RadiusAuthenticationProtocol_CHAP`
  - `RadiusAuthenticationProtocol_MS-CHAPv1`
  - `RadiusAuthenticationProtocol_MS-CHAPv2`

-}
type RadiusAuthenticationProtocol
    = RadiusAuthenticationProtocol_PAP
    | RadiusAuthenticationProtocol_CHAP
    | RadiusAuthenticationProtocol_MS_CHAPv1
    | RadiusAuthenticationProtocol_MS_CHAPv2


radiusAuthenticationProtocolDecoder : JD.Decoder RadiusAuthenticationProtocol
radiusAuthenticationProtocolDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PAP" ->
                        JD.succeed RadiusAuthenticationProtocol_PAP

                    "CHAP" ->
                        JD.succeed RadiusAuthenticationProtocol_CHAP

                    "MS_CHAPv1" ->
                        JD.succeed RadiusAuthenticationProtocol_MS_CHAPv1

                    "MS_CHAPv2" ->
                        JD.succeed RadiusAuthenticationProtocol_MS_CHAPv2

                    _ ->
                        JD.fail "bad thing"
            )


radiusAuthenticationProtocolToString : RadiusAuthenticationProtocol -> String
radiusAuthenticationProtocolToString val =
    case val of
        RadiusAuthenticationProtocol_PAP ->
            "PAP"

        RadiusAuthenticationProtocol_CHAP ->
            "CHAP"

        RadiusAuthenticationProtocol_MS_CHAPv1 ->
            "MS_CHAPv1"

        RadiusAuthenticationProtocol_MS_CHAPv2 ->
            "MS_CHAPv2"


{-|

<p>Contains information about a Remote Authentication Dial In User Service (RADIUS) server.</p>

-}
type alias RadiusSettings =
    { radiusServers : Maybe (List String)
    , radiusPort : Maybe Int
    , radiusTimeout : Maybe Int
    , radiusRetries : Maybe Int
    , sharedSecret : Maybe String
    , authenticationProtocol : Maybe RadiusAuthenticationProtocol
    , displayLabel : Maybe String
    , useSameUsername : Maybe Bool
    }


radiusSettingsDecoder : JD.Decoder RadiusSettings
radiusSettingsDecoder =
    JD.succeed RadiusSettings
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RadiusServers", "radiusServers" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RadiusPort", "radiusPort" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RadiusTimeout", "radiusTimeout" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RadiusRetries", "radiusRetries" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SharedSecret", "sharedSecret" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AuthenticationProtocol", "authenticationProtocol" ]
                radiusAuthenticationProtocolDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DisplayLabel", "displayLabel" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UseSameUsername", "useSameUsername" ]
                JD.bool
            )


{-| One of

  - `RadiusStatus_Creating`
  - `RadiusStatus_Completed`
  - `RadiusStatus_Failed`

-}
type RadiusStatus
    = RadiusStatus_Creating
    | RadiusStatus_Completed
    | RadiusStatus_Failed


radiusStatusDecoder : JD.Decoder RadiusStatus
radiusStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Creating" ->
                        JD.succeed RadiusStatus_Creating

                    "Completed" ->
                        JD.succeed RadiusStatus_Completed

                    "Failed" ->
                        JD.succeed RadiusStatus_Failed

                    _ ->
                        JD.fail "bad thing"
            )


radiusStatusToString : RadiusStatus -> String
radiusStatusToString val =
    case val of
        RadiusStatus_Creating ->
            "Creating"

        RadiusStatus_Completed ->
            "Completed"

        RadiusStatus_Failed ->
            "Failed"


{-| Type of HTTP response from registerEventTop
-}
type alias RegisterEventTopicResult =
    {}


registerEventTopicResultDecoder : JD.Decoder RegisterEventTopicResult
registerEventTopicResultDecoder =
    JD.succeed RegisterEventTopicResult


{-| Type of HTTP response from rejectSharedDirecto
-}
type alias RejectSharedDirectoryResult =
    { sharedDirectoryId : Maybe String
    }


rejectSharedDirectoryResultDecoder : JD.Decoder RejectSharedDirectoryResult
rejectSharedDirectoryResultDecoder =
    JD.succeed RejectSharedDirectoryResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SharedDirectoryId", "sharedDirectoryId" ]
                JD.string
            )


{-| Type of HTTP response from removeIpRout
-}
type alias RemoveIpRoutesResult =
    {}


removeIpRoutesResultDecoder : JD.Decoder RemoveIpRoutesResult
removeIpRoutesResultDecoder =
    JD.succeed RemoveIpRoutesResult


{-| Type of HTTP response from removeTagsFromResour
-}
type alias RemoveTagsFromResourceResult =
    {}


removeTagsFromResourceResultDecoder : JD.Decoder RemoveTagsFromResourceResult
removeTagsFromResourceResultDecoder =
    JD.succeed RemoveTagsFromResourceResult


{-| One of

  - `ReplicationScope_Domain`

-}
type ReplicationScope
    = ReplicationScope_Domain


replicationScopeDecoder : JD.Decoder ReplicationScope
replicationScopeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Domain" ->
                        JD.succeed ReplicationScope_Domain

                    _ ->
                        JD.fail "bad thing"
            )


replicationScopeToString : ReplicationScope -> String
replicationScopeToString val =
    case val of
        ReplicationScope_Domain ->
            "Domain"


{-| Type of HTTP response from resetUserPasswo
-}
type alias ResetUserPasswordResult =
    {}


resetUserPasswordResultDecoder : JD.Decoder ResetUserPasswordResult
resetUserPasswordResultDecoder =
    JD.succeed ResetUserPasswordResult


{-| Type of HTTP response from restoreFromSnapsh
-}
type alias RestoreFromSnapshotResult =
    {}


restoreFromSnapshotResultDecoder : JD.Decoder RestoreFromSnapshotResult
restoreFromSnapshotResultDecoder =
    JD.succeed RestoreFromSnapshotResult


{-|

<p>Information about a schema extension.</p>

-}
type alias SchemaExtensionInfo =
    { directoryId : Maybe String
    , schemaExtensionId : Maybe String
    , description : Maybe String
    , schemaExtensionStatus : Maybe SchemaExtensionStatus
    , schemaExtensionStatusReason : Maybe String
    , startDateTime : Maybe Posix
    , endDateTime : Maybe Posix
    }


schemaExtensionInfoDecoder : JD.Decoder SchemaExtensionInfo
schemaExtensionInfoDecoder =
    JD.succeed SchemaExtensionInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SchemaExtensionId", "schemaExtensionId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SchemaExtensionStatus", "schemaExtensionStatus" ]
                schemaExtensionStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SchemaExtensionStatusReason", "schemaExtensionStatusReason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StartDateTime", "startDateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndDateTime", "endDateTime" ]
                JDX.datetime
            )


{-| One of

  - `SchemaExtensionStatus_Initializing`
  - `SchemaExtensionStatus_CreatingSnapshot`
  - `SchemaExtensionStatus_UpdatingSchema`
  - `SchemaExtensionStatus_Replicating`
  - `SchemaExtensionStatus_CancelInProgress`
  - `SchemaExtensionStatus_RollbackInProgress`
  - `SchemaExtensionStatus_Cancelled`
  - `SchemaExtensionStatus_Failed`
  - `SchemaExtensionStatus_Completed`

-}
type SchemaExtensionStatus
    = SchemaExtensionStatus_Initializing
    | SchemaExtensionStatus_CreatingSnapshot
    | SchemaExtensionStatus_UpdatingSchema
    | SchemaExtensionStatus_Replicating
    | SchemaExtensionStatus_CancelInProgress
    | SchemaExtensionStatus_RollbackInProgress
    | SchemaExtensionStatus_Cancelled
    | SchemaExtensionStatus_Failed
    | SchemaExtensionStatus_Completed


schemaExtensionStatusDecoder : JD.Decoder SchemaExtensionStatus
schemaExtensionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Initializing" ->
                        JD.succeed SchemaExtensionStatus_Initializing

                    "CreatingSnapshot" ->
                        JD.succeed SchemaExtensionStatus_CreatingSnapshot

                    "UpdatingSchema" ->
                        JD.succeed SchemaExtensionStatus_UpdatingSchema

                    "Replicating" ->
                        JD.succeed SchemaExtensionStatus_Replicating

                    "CancelInProgress" ->
                        JD.succeed SchemaExtensionStatus_CancelInProgress

                    "RollbackInProgress" ->
                        JD.succeed SchemaExtensionStatus_RollbackInProgress

                    "Cancelled" ->
                        JD.succeed SchemaExtensionStatus_Cancelled

                    "Failed" ->
                        JD.succeed SchemaExtensionStatus_Failed

                    "Completed" ->
                        JD.succeed SchemaExtensionStatus_Completed

                    _ ->
                        JD.fail "bad thing"
            )


schemaExtensionStatusToString : SchemaExtensionStatus -> String
schemaExtensionStatusToString val =
    case val of
        SchemaExtensionStatus_Initializing ->
            "Initializing"

        SchemaExtensionStatus_CreatingSnapshot ->
            "CreatingSnapshot"

        SchemaExtensionStatus_UpdatingSchema ->
            "UpdatingSchema"

        SchemaExtensionStatus_Replicating ->
            "Replicating"

        SchemaExtensionStatus_CancelInProgress ->
            "CancelInProgress"

        SchemaExtensionStatus_RollbackInProgress ->
            "RollbackInProgress"

        SchemaExtensionStatus_Cancelled ->
            "Cancelled"

        SchemaExtensionStatus_Failed ->
            "Failed"

        SchemaExtensionStatus_Completed ->
            "Completed"


{-| One of

  - `SelectiveAuth_Enabled`
  - `SelectiveAuth_Disabled`

-}
type SelectiveAuth
    = SelectiveAuth_Enabled
    | SelectiveAuth_Disabled


selectiveAuthDecoder : JD.Decoder SelectiveAuth
selectiveAuthDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Enabled" ->
                        JD.succeed SelectiveAuth_Enabled

                    "Disabled" ->
                        JD.succeed SelectiveAuth_Disabled

                    _ ->
                        JD.fail "bad thing"
            )


selectiveAuthToString : SelectiveAuth -> String
selectiveAuthToString val =
    case val of
        SelectiveAuth_Enabled ->
            "Enabled"

        SelectiveAuth_Disabled ->
            "Disabled"


{-| Type of HTTP response from shareDirecto
-}
type alias ShareDirectoryResult =
    { sharedDirectoryId : Maybe String
    }


shareDirectoryResultDecoder : JD.Decoder ShareDirectoryResult
shareDirectoryResultDecoder =
    JD.succeed ShareDirectoryResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SharedDirectoryId", "sharedDirectoryId" ]
                JD.string
            )


{-| One of

  - `ShareMethod_ORGANIZATIONS`
  - `ShareMethod_HANDSHAKE`

-}
type ShareMethod
    = ShareMethod_ORGANIZATIONS
    | ShareMethod_HANDSHAKE


shareMethodDecoder : JD.Decoder ShareMethod
shareMethodDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ORGANIZATIONS" ->
                        JD.succeed ShareMethod_ORGANIZATIONS

                    "HANDSHAKE" ->
                        JD.succeed ShareMethod_HANDSHAKE

                    _ ->
                        JD.fail "bad thing"
            )


shareMethodToString : ShareMethod -> String
shareMethodToString val =
    case val of
        ShareMethod_ORGANIZATIONS ->
            "ORGANIZATIONS"

        ShareMethod_HANDSHAKE ->
            "HANDSHAKE"


{-| One of

  - `ShareStatus_Shared`
  - `ShareStatus_PendingAcceptance`
  - `ShareStatus_Rejected`
  - `ShareStatus_Rejecting`
  - `ShareStatus_RejectFailed`
  - `ShareStatus_Sharing`
  - `ShareStatus_ShareFailed`
  - `ShareStatus_Deleted`
  - `ShareStatus_Deleting`

-}
type ShareStatus
    = ShareStatus_Shared
    | ShareStatus_PendingAcceptance
    | ShareStatus_Rejected
    | ShareStatus_Rejecting
    | ShareStatus_RejectFailed
    | ShareStatus_Sharing
    | ShareStatus_ShareFailed
    | ShareStatus_Deleted
    | ShareStatus_Deleting


shareStatusDecoder : JD.Decoder ShareStatus
shareStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Shared" ->
                        JD.succeed ShareStatus_Shared

                    "PendingAcceptance" ->
                        JD.succeed ShareStatus_PendingAcceptance

                    "Rejected" ->
                        JD.succeed ShareStatus_Rejected

                    "Rejecting" ->
                        JD.succeed ShareStatus_Rejecting

                    "RejectFailed" ->
                        JD.succeed ShareStatus_RejectFailed

                    "Sharing" ->
                        JD.succeed ShareStatus_Sharing

                    "ShareFailed" ->
                        JD.succeed ShareStatus_ShareFailed

                    "Deleted" ->
                        JD.succeed ShareStatus_Deleted

                    "Deleting" ->
                        JD.succeed ShareStatus_Deleting

                    _ ->
                        JD.fail "bad thing"
            )


shareStatusToString : ShareStatus -> String
shareStatusToString val =
    case val of
        ShareStatus_Shared ->
            "Shared"

        ShareStatus_PendingAcceptance ->
            "PendingAcceptance"

        ShareStatus_Rejected ->
            "Rejected"

        ShareStatus_Rejecting ->
            "Rejecting"

        ShareStatus_RejectFailed ->
            "RejectFailed"

        ShareStatus_Sharing ->
            "Sharing"

        ShareStatus_ShareFailed ->
            "ShareFailed"

        ShareStatus_Deleted ->
            "Deleted"

        ShareStatus_Deleting ->
            "Deleting"


{-|

<p>Identifier that contains details about the directory consumer account.</p>

-}
type alias ShareTarget =
    { id : String
    , type_ : TargetType
    }


shareTargetDecoder : JD.Decoder ShareTarget
shareTargetDecoder =
    JD.succeed ShareTarget
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Id", "id" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Type", "type" ]
                targetTypeDecoder
            )


{-|

<p>Details about the shared directory in the directory owner account for which the share request in the directory consumer account has been accepted.</p>

-}
type alias SharedDirectory =
    { ownerAccountId : Maybe String
    , ownerDirectoryId : Maybe String
    , shareMethod : Maybe ShareMethod
    , sharedAccountId : Maybe String
    , sharedDirectoryId : Maybe String
    , shareStatus : Maybe ShareStatus
    , shareNotes : Maybe String
    , createdDateTime : Maybe Posix
    , lastUpdatedDateTime : Maybe Posix
    }


sharedDirectoryDecoder : JD.Decoder SharedDirectory
sharedDirectoryDecoder =
    JD.succeed SharedDirectory
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OwnerAccountId", "ownerAccountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OwnerDirectoryId", "ownerDirectoryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ShareMethod", "shareMethod" ]
                shareMethodDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SharedAccountId", "sharedAccountId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SharedDirectoryId", "sharedDirectoryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ShareStatus", "shareStatus" ]
                shareStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ShareNotes", "shareNotes" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreatedDateTime", "createdDateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastUpdatedDateTime", "lastUpdatedDateTime" ]
                JDX.datetime
            )


{-|

<p>Describes a directory snapshot.</p>

-}
type alias Snapshot =
    { directoryId : Maybe String
    , snapshotId : Maybe String
    , type_ : Maybe SnapshotType
    , name : Maybe String
    , status : Maybe SnapshotStatus
    , startTime : Maybe Posix
    }


snapshotDecoder : JD.Decoder Snapshot
snapshotDecoder =
    JD.succeed Snapshot
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotId", "snapshotId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Type", "type" ]
                snapshotTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                snapshotStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StartTime", "startTime" ]
                JDX.datetime
            )


{-|

<p>Contains manual snapshot limit information for a directory.</p>

-}
type alias SnapshotLimits =
    { manualSnapshotsLimit : Maybe Int
    , manualSnapshotsCurrentCount : Maybe Int
    , manualSnapshotsLimitReached : Maybe Bool
    }


snapshotLimitsDecoder : JD.Decoder SnapshotLimits
snapshotLimitsDecoder =
    JD.succeed SnapshotLimits
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ManualSnapshotsLimit", "manualSnapshotsLimit" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ManualSnapshotsCurrentCount", "manualSnapshotsCurrentCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ManualSnapshotsLimitReached", "manualSnapshotsLimitReached" ]
                JD.bool
            )


{-| One of

  - `SnapshotStatus_Creating`
  - `SnapshotStatus_Completed`
  - `SnapshotStatus_Failed`

-}
type SnapshotStatus
    = SnapshotStatus_Creating
    | SnapshotStatus_Completed
    | SnapshotStatus_Failed


snapshotStatusDecoder : JD.Decoder SnapshotStatus
snapshotStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Creating" ->
                        JD.succeed SnapshotStatus_Creating

                    "Completed" ->
                        JD.succeed SnapshotStatus_Completed

                    "Failed" ->
                        JD.succeed SnapshotStatus_Failed

                    _ ->
                        JD.fail "bad thing"
            )


snapshotStatusToString : SnapshotStatus -> String
snapshotStatusToString val =
    case val of
        SnapshotStatus_Creating ->
            "Creating"

        SnapshotStatus_Completed ->
            "Completed"

        SnapshotStatus_Failed ->
            "Failed"


{-| One of

  - `SnapshotType_Auto`
  - `SnapshotType_Manual`

-}
type SnapshotType
    = SnapshotType_Auto
    | SnapshotType_Manual


snapshotTypeDecoder : JD.Decoder SnapshotType
snapshotTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Auto" ->
                        JD.succeed SnapshotType_Auto

                    "Manual" ->
                        JD.succeed SnapshotType_Manual

                    _ ->
                        JD.fail "bad thing"
            )


snapshotTypeToString : SnapshotType -> String
snapshotTypeToString val =
    case val of
        SnapshotType_Auto ->
            "Auto"

        SnapshotType_Manual ->
            "Manual"


{-| Type of HTTP response from startSchemaExtensi
-}
type alias StartSchemaExtensionResult =
    { schemaExtensionId : Maybe String
    }


startSchemaExtensionResultDecoder : JD.Decoder StartSchemaExtensionResult
startSchemaExtensionResultDecoder =
    JD.succeed StartSchemaExtensionResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SchemaExtensionId", "schemaExtensionId" ]
                JD.string
            )


{-|

<p>Metadata assigned to a directory consisting of a key-value pair.</p>

-}
type alias Tag =
    { key : String
    , value : String
    }


tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Key", "key" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Value", "value" ]
                JD.string
            )


{-| One of

  - `TargetType_ACCOUNT`

-}
type TargetType
    = TargetType_ACCOUNT


targetTypeDecoder : JD.Decoder TargetType
targetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACCOUNT" ->
                        JD.succeed TargetType_ACCOUNT

                    _ ->
                        JD.fail "bad thing"
            )


targetTypeToString : TargetType -> String
targetTypeToString val =
    case val of
        TargetType_ACCOUNT ->
            "ACCOUNT"


{-| One of

  - `TopicStatus_Registered`
  - `TopicStatus_Topic not found`
  - `TopicStatus_Failed`
  - `TopicStatus_Deleted`

-}
type TopicStatus
    = TopicStatus_Registered
    | TopicStatus_Topic_not_found
    | TopicStatus_Failed
    | TopicStatus_Deleted


topicStatusDecoder : JD.Decoder TopicStatus
topicStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Registered" ->
                        JD.succeed TopicStatus_Registered

                    "Topic_not_found" ->
                        JD.succeed TopicStatus_Topic_not_found

                    "Failed" ->
                        JD.succeed TopicStatus_Failed

                    "Deleted" ->
                        JD.succeed TopicStatus_Deleted

                    _ ->
                        JD.fail "bad thing"
            )


topicStatusToString : TopicStatus -> String
topicStatusToString val =
    case val of
        TopicStatus_Registered ->
            "Registered"

        TopicStatus_Topic_not_found ->
            "Topic_not_found"

        TopicStatus_Failed ->
            "Failed"

        TopicStatus_Deleted ->
            "Deleted"


{-|

<p>Describes a trust relationship between an AWS Managed Microsoft AD directory and an external domain.</p>

-}
type alias Trust =
    { directoryId : Maybe String
    , trustId : Maybe String
    , remoteDomainName : Maybe String
    , trustType : Maybe TrustType
    , trustDirection : Maybe TrustDirection
    , trustState : Maybe TrustState
    , createdDateTime : Maybe Posix
    , lastUpdatedDateTime : Maybe Posix
    , stateLastUpdatedDateTime : Maybe Posix
    , trustStateReason : Maybe String
    , selectiveAuth : Maybe SelectiveAuth
    }


trustDecoder : JD.Decoder Trust
trustDecoder =
    JD.succeed Trust
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryId", "directoryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrustId", "trustId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RemoteDomainName", "remoteDomainName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrustType", "trustType" ]
                trustTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrustDirection", "trustDirection" ]
                trustDirectionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrustState", "trustState" ]
                trustStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreatedDateTime", "createdDateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastUpdatedDateTime", "lastUpdatedDateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StateLastUpdatedDateTime", "stateLastUpdatedDateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrustStateReason", "trustStateReason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SelectiveAuth", "selectiveAuth" ]
                selectiveAuthDecoder
            )


{-| One of

  - `TrustDirection_One-Way: Outgoing`
  - `TrustDirection_One-Way: Incoming`
  - `TrustDirection_Two-Way`

-}
type TrustDirection
    = TrustDirection_One_Way_Outgoing
    | TrustDirection_One_Way_Incoming
    | TrustDirection_Two_Way


trustDirectionDecoder : JD.Decoder TrustDirection
trustDirectionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "One_Way_Outgoing" ->
                        JD.succeed TrustDirection_One_Way_Outgoing

                    "One_Way_Incoming" ->
                        JD.succeed TrustDirection_One_Way_Incoming

                    "Two_Way" ->
                        JD.succeed TrustDirection_Two_Way

                    _ ->
                        JD.fail "bad thing"
            )


trustDirectionToString : TrustDirection -> String
trustDirectionToString val =
    case val of
        TrustDirection_One_Way_Outgoing ->
            "One_Way_Outgoing"

        TrustDirection_One_Way_Incoming ->
            "One_Way_Incoming"

        TrustDirection_Two_Way ->
            "Two_Way"


{-| One of

  - `TrustState_Creating`
  - `TrustState_Created`
  - `TrustState_Verifying`
  - `TrustState_VerifyFailed`
  - `TrustState_Verified`
  - `TrustState_Updating`
  - `TrustState_UpdateFailed`
  - `TrustState_Updated`
  - `TrustState_Deleting`
  - `TrustState_Deleted`
  - `TrustState_Failed`

-}
type TrustState
    = TrustState_Creating
    | TrustState_Created
    | TrustState_Verifying
    | TrustState_VerifyFailed
    | TrustState_Verified
    | TrustState_Updating
    | TrustState_UpdateFailed
    | TrustState_Updated
    | TrustState_Deleting
    | TrustState_Deleted
    | TrustState_Failed


trustStateDecoder : JD.Decoder TrustState
trustStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Creating" ->
                        JD.succeed TrustState_Creating

                    "Created" ->
                        JD.succeed TrustState_Created

                    "Verifying" ->
                        JD.succeed TrustState_Verifying

                    "VerifyFailed" ->
                        JD.succeed TrustState_VerifyFailed

                    "Verified" ->
                        JD.succeed TrustState_Verified

                    "Updating" ->
                        JD.succeed TrustState_Updating

                    "UpdateFailed" ->
                        JD.succeed TrustState_UpdateFailed

                    "Updated" ->
                        JD.succeed TrustState_Updated

                    "Deleting" ->
                        JD.succeed TrustState_Deleting

                    "Deleted" ->
                        JD.succeed TrustState_Deleted

                    "Failed" ->
                        JD.succeed TrustState_Failed

                    _ ->
                        JD.fail "bad thing"
            )


trustStateToString : TrustState -> String
trustStateToString val =
    case val of
        TrustState_Creating ->
            "Creating"

        TrustState_Created ->
            "Created"

        TrustState_Verifying ->
            "Verifying"

        TrustState_VerifyFailed ->
            "VerifyFailed"

        TrustState_Verified ->
            "Verified"

        TrustState_Updating ->
            "Updating"

        TrustState_UpdateFailed ->
            "UpdateFailed"

        TrustState_Updated ->
            "Updated"

        TrustState_Deleting ->
            "Deleting"

        TrustState_Deleted ->
            "Deleted"

        TrustState_Failed ->
            "Failed"


{-| One of

  - `TrustType_Forest`
  - `TrustType_External`

-}
type TrustType
    = TrustType_Forest
    | TrustType_External


trustTypeDecoder : JD.Decoder TrustType
trustTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Forest" ->
                        JD.succeed TrustType_Forest

                    "External" ->
                        JD.succeed TrustType_External

                    _ ->
                        JD.fail "bad thing"
            )


trustTypeToString : TrustType -> String
trustTypeToString val =
    case val of
        TrustType_Forest ->
            "Forest"

        TrustType_External ->
            "External"


{-| Type of HTTP response from unshareDirecto
-}
type alias UnshareDirectoryResult =
    { sharedDirectoryId : Maybe String
    }


unshareDirectoryResultDecoder : JD.Decoder UnshareDirectoryResult
unshareDirectoryResultDecoder =
    JD.succeed UnshareDirectoryResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SharedDirectoryId", "sharedDirectoryId" ]
                JD.string
            )


{-|

<p>Identifier that contains details about the directory consumer account with whom the directory is being unshared.</p>

-}
type alias UnshareTarget =
    { id : String
    , type_ : TargetType
    }


unshareTargetDecoder : JD.Decoder UnshareTarget
unshareTargetDecoder =
    JD.succeed UnshareTarget
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Id", "id" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Type", "type" ]
                targetTypeDecoder
            )


{-| Type of HTTP response from updateConditionalForward
-}
type alias UpdateConditionalForwarderResult =
    {}


updateConditionalForwarderResultDecoder : JD.Decoder UpdateConditionalForwarderResult
updateConditionalForwarderResultDecoder =
    JD.succeed UpdateConditionalForwarderResult


{-| Type of HTTP response from updateNumberOfDomainControlle
-}
type alias UpdateNumberOfDomainControllersResult =
    {}


updateNumberOfDomainControllersResultDecoder : JD.Decoder UpdateNumberOfDomainControllersResult
updateNumberOfDomainControllersResultDecoder =
    JD.succeed UpdateNumberOfDomainControllersResult


{-| Type of HTTP response from updateRadi
-}
type alias UpdateRadiusResult =
    {}


updateRadiusResultDecoder : JD.Decoder UpdateRadiusResult
updateRadiusResultDecoder =
    JD.succeed UpdateRadiusResult


{-| Type of HTTP response from updateTru
-}
type alias UpdateTrustResult =
    { requestId : Maybe String
    , trustId : Maybe String
    }


updateTrustResultDecoder : JD.Decoder UpdateTrustResult
updateTrustResultDecoder =
    JD.succeed UpdateTrustResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RequestId", "requestId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrustId", "trustId" ]
                JD.string
            )


{-| Type of HTTP response from verifyTru
-}
type alias VerifyTrustResult =
    { trustId : Maybe String
    }


verifyTrustResultDecoder : JD.Decoder VerifyTrustResult
verifyTrustResultDecoder =
    JD.succeed VerifyTrustResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TrustId", "trustId" ]
                JD.string
            )


{-| undefined
-}
type alias AcceptSharedDirectoryRequest =
    { sharedDirectoryId : String
    }


{-| undefined
-}
type alias AddIpRoutesRequest =
    { directoryId : String
    , ipRoutes : List IpRoute
    , updateSecurityGroupForDirectoryControllers : Maybe Bool
    }


{-| undefined
-}
type alias AddTagsToResourceRequest =
    { resourceId : String
    , tags : List Tag
    }


{-| undefined
-}
type alias CancelSchemaExtensionRequest =
    { directoryId : String
    , schemaExtensionId : String
    }


{-|

<p>Contains the inputs for the <a>ConnectDirectory</a> operation.</p>

-}
type alias ConnectDirectoryRequest =
    { name : String
    , shortName : Maybe String
    , password : String
    , description : Maybe String
    , size : DirectorySize
    , connectSettings : DirectoryConnectSettings
    , tags : Maybe (List Tag)
    }


{-|

<p>Contains the inputs for the <a>CreateAlias</a> operation.</p>

-}
type alias CreateAliasRequest =
    { directoryId : String
    , alias : String
    }


{-|

<p>Contains the inputs for the <a>CreateComputer</a> operation.</p>

-}
type alias CreateComputerRequest =
    { directoryId : String
    , computerName : String
    , password : String
    , organizationalUnitDistinguishedName : Maybe String
    , computerAttributes : Maybe (List Attribute)
    }


{-|

<p>Initiates the creation of a conditional forwarder for your AWS Directory Service for Microsoft Active Directory. Conditional forwarders are required in order to set up a trust relationship with another domain.</p>

-}
type alias CreateConditionalForwarderRequest =
    { directoryId : String
    , remoteDomainName : String
    , dnsIpAddrs : List String
    }


{-|

<p>Contains the inputs for the <a>CreateDirectory</a> operation. </p>

-}
type alias CreateDirectoryRequest =
    { name : String
    , shortName : Maybe String
    , password : String
    , description : Maybe String
    , size : DirectorySize
    , vpcSettings : Maybe DirectoryVpcSettings
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateLogSubscriptionRequest =
    { directoryId : String
    , logGroupName : String
    }


{-|

<p>Creates an AWS Managed Microsoft AD directory.</p>

-}
type alias CreateMicrosoftADRequest =
    { name : String
    , shortName : Maybe String
    , password : String
    , description : Maybe String
    , vpcSettings : DirectoryVpcSettings
    , edition : Maybe DirectoryEdition
    , tags : Maybe (List Tag)
    }


{-|

<p>Contains the inputs for the <a>CreateSnapshot</a> operation.</p>

-}
type alias CreateSnapshotRequest =
    { directoryId : String
    , name : Maybe String
    }


{-|

<p>AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your AWS Managed Microsoft AD directory, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.</p> <p>This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain.</p>

-}
type alias CreateTrustRequest =
    { directoryId : String
    , remoteDomainName : String
    , trustPassword : String
    , trustDirection : TrustDirection
    , trustType : Maybe TrustType
    , conditionalForwarderIpAddrs : Maybe (List String)
    , selectiveAuth : Maybe SelectiveAuth
    }


{-|

<p>Deletes a conditional forwarder.</p>

-}
type alias DeleteConditionalForwarderRequest =
    { directoryId : String
    , remoteDomainName : String
    }


{-|

<p>Contains the inputs for the <a>DeleteDirectory</a> operation.</p>

-}
type alias DeleteDirectoryRequest =
    { directoryId : String
    }


{-| undefined
-}
type alias DeleteLogSubscriptionRequest =
    { directoryId : String
    }


{-|

<p>Contains the inputs for the <a>DeleteSnapshot</a> operation.</p>

-}
type alias DeleteSnapshotRequest =
    { snapshotId : String
    }


{-|

<p>Deletes the local side of an existing trust relationship between the AWS Managed Microsoft AD directory and the external domain.</p>

-}
type alias DeleteTrustRequest =
    { trustId : String
    , deleteAssociatedConditionalForwarder : Maybe Bool
    }


{-|

<p>Removes the specified directory as a publisher to the specified SNS topic.</p>

-}
type alias DeregisterEventTopicRequest =
    { directoryId : String
    , topicName : String
    }


{-|

<p>Describes a conditional forwarder.</p>

-}
type alias DescribeConditionalForwardersRequest =
    { directoryId : String
    , remoteDomainNames : Maybe (List String)
    }


{-|

<p>Contains the inputs for the <a>DescribeDirectories</a> operation.</p>

-}
type alias DescribeDirectoriesRequest =
    { directoryIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DescribeDomainControllersRequest =
    { directoryId : String
    , domainControllerIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Describes event topics.</p>

-}
type alias DescribeEventTopicsRequest =
    { directoryId : Maybe String
    , topicNames : Maybe (List String)
    }


{-| undefined
-}
type alias DescribeSharedDirectoriesRequest =
    { ownerDirectoryId : String
    , sharedDirectoryIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Contains the inputs for the <a>DescribeSnapshots</a> operation.</p>

-}
type alias DescribeSnapshotsRequest =
    { directoryId : Maybe String
    , snapshotIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Describes the trust relationships for a particular AWS Managed Microsoft AD directory. If no input parameters are are provided, such as directory ID or trust ID, this request describes all the trust relationships.</p>

-}
type alias DescribeTrustsRequest =
    { directoryId : Maybe String
    , trustIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Contains the inputs for the <a>DisableRadius</a> operation.</p>

-}
type alias DisableRadiusRequest =
    { directoryId : String
    }


{-|

<p>Contains the inputs for the <a>DisableSso</a> operation.</p>

-}
type alias DisableSsoRequest =
    { directoryId : String
    , userName : Maybe String
    , password : Maybe String
    }


{-|

<p>Contains the inputs for the <a>EnableRadius</a> operation.</p>

-}
type alias EnableRadiusRequest =
    { directoryId : String
    , radiusSettings : RadiusSettings
    }


{-|

<p>Contains the inputs for the <a>EnableSso</a> operation.</p>

-}
type alias EnableSsoRequest =
    { directoryId : String
    , userName : Maybe String
    , password : Maybe String
    }


{-|

<p>Contains the inputs for the <a>GetDirectoryLimits</a> operation.</p>

-}
type alias GetDirectoryLimitsRequest =
    {}


{-|

<p>Contains the inputs for the <a>GetSnapshotLimits</a> operation.</p>

-}
type alias GetSnapshotLimitsRequest =
    { directoryId : String
    }


{-| undefined
-}
type alias ListIpRoutesRequest =
    { directoryId : String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListLogSubscriptionsRequest =
    { directoryId : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListSchemaExtensionsRequest =
    { directoryId : String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListTagsForResourceRequest =
    { resourceId : String
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Registers a new event topic.</p>

-}
type alias RegisterEventTopicRequest =
    { directoryId : String
    , topicName : String
    }


{-| undefined
-}
type alias RejectSharedDirectoryRequest =
    { sharedDirectoryId : String
    }


{-| undefined
-}
type alias RemoveIpRoutesRequest =
    { directoryId : String
    , cidrIps : List String
    }


{-| undefined
-}
type alias RemoveTagsFromResourceRequest =
    { resourceId : String
    , tagKeys : List String
    }


{-| undefined
-}
type alias ResetUserPasswordRequest =
    { directoryId : String
    , userName : String
    , newPassword : String
    }


{-|

<p>An object representing the inputs for the <a>RestoreFromSnapshot</a> operation.</p>

-}
type alias RestoreFromSnapshotRequest =
    { snapshotId : String
    }


{-| undefined
-}
type alias ShareDirectoryRequest =
    { directoryId : String
    , shareNotes : Maybe String
    , shareTarget : ShareTarget
    , shareMethod : ShareMethod
    }


{-| undefined
-}
type alias StartSchemaExtensionRequest =
    { directoryId : String
    , createSnapshotBeforeSchemaExtension : Bool
    , ldifContent : String
    , description : String
    }


{-| undefined
-}
type alias UnshareDirectoryRequest =
    { directoryId : String
    , unshareTarget : UnshareTarget
    }


{-|

<p>Updates a conditional forwarder.</p>

-}
type alias UpdateConditionalForwarderRequest =
    { directoryId : String
    , remoteDomainName : String
    , dnsIpAddrs : List String
    }


{-| undefined
-}
type alias UpdateNumberOfDomainControllersRequest =
    { directoryId : String
    , desiredNumber : Int
    }


{-|

<p>Contains the inputs for the <a>UpdateRadius</a> operation.</p>

-}
type alias UpdateRadiusRequest =
    { directoryId : String
    , radiusSettings : RadiusSettings
    }


{-| undefined
-}
type alias UpdateTrustRequest =
    { trustId : String
    , selectiveAuth : Maybe SelectiveAuth
    }


{-|

<p>Initiates the verification of an existing trust relationship between an AWS Managed Microsoft AD directory and an external domain.</p>

-}
type alias VerifyTrustRequest =
    { trustId : String
    }


acceptSharedDirectoryRequestEncoder : AcceptSharedDirectoryRequest -> JE.Value
acceptSharedDirectoryRequestEncoder data =
    []
        |> (::) ( "SharedDirectoryId", data.sharedDirectoryId |> JE.string )
        |> JE.object


acceptSharedDirectoryResultEncoder : AcceptSharedDirectoryResult -> JE.Value
acceptSharedDirectoryResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            sharedDirectoryEncoder
            ( "SharedDirectory", data.sharedDirectory )
        |> JE.object


addIpRoutesRequestEncoder : AddIpRoutesRequest -> JE.Value
addIpRoutesRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "IpRoutes", data.ipRoutes |> JE.list ipRouteEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "UpdateSecurityGroupForDirectoryControllers", data.updateSecurityGroupForDirectoryControllers )
        |> JE.object


addIpRoutesResultEncoder : AddIpRoutesResult -> JE.Value
addIpRoutesResultEncoder data =
    []
        |> JE.object


addTagsToResourceRequestEncoder : AddTagsToResourceRequest -> JE.Value
addTagsToResourceRequestEncoder data =
    []
        |> (::) ( "ResourceId", data.resourceId |> JE.string )
        |> (::) ( "Tags", data.tags |> JE.list tagEncoder )
        |> JE.object


addTagsToResourceResultEncoder : AddTagsToResourceResult -> JE.Value
addTagsToResourceResultEncoder data =
    []
        |> JE.object


attributeEncoder : Attribute -> JE.Value
attributeEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Value", data.value )
        |> JE.object


cancelSchemaExtensionRequestEncoder : CancelSchemaExtensionRequest -> JE.Value
cancelSchemaExtensionRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "SchemaExtensionId", data.schemaExtensionId |> JE.string )
        |> JE.object


cancelSchemaExtensionResultEncoder : CancelSchemaExtensionResult -> JE.Value
cancelSchemaExtensionResultEncoder data =
    []
        |> JE.object


computerEncoder : Computer -> JE.Value
computerEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ComputerId", data.computerId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ComputerName", data.computerName )
        |> AWS.Core.Encode.optionalMember
            (JE.list attributeEncoder)
            ( "ComputerAttributes", data.computerAttributes )
        |> JE.object


conditionalForwarderEncoder : ConditionalForwarder -> JE.Value
conditionalForwarderEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "RemoteDomainName", data.remoteDomainName )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DnsIpAddrs", data.dnsIpAddrs )
        |> AWS.Core.Encode.optionalMember
            (replicationScopeToString >> JE.string)
            ( "ReplicationScope", data.replicationScope )
        |> JE.object


connectDirectoryRequestEncoder : ConnectDirectoryRequest -> JE.Value
connectDirectoryRequestEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ShortName", data.shortName )
        |> (::) ( "Password", data.password |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> (::) ( "Size", data.size |> (directorySizeToString >> JE.string) )
        |> (::) ( "ConnectSettings", data.connectSettings |> directoryConnectSettingsEncoder )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


connectDirectoryResultEncoder : ConnectDirectoryResult -> JE.Value
connectDirectoryResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> JE.object


createAliasRequestEncoder : CreateAliasRequest -> JE.Value
createAliasRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "Alias", data.alias |> JE.string )
        |> JE.object


createAliasResultEncoder : CreateAliasResult -> JE.Value
createAliasResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Alias", data.alias )
        |> JE.object


createComputerRequestEncoder : CreateComputerRequest -> JE.Value
createComputerRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "ComputerName", data.computerName |> JE.string )
        |> (::) ( "Password", data.password |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "OrganizationalUnitDistinguishedName", data.organizationalUnitDistinguishedName )
        |> AWS.Core.Encode.optionalMember
            (JE.list attributeEncoder)
            ( "ComputerAttributes", data.computerAttributes )
        |> JE.object


createComputerResultEncoder : CreateComputerResult -> JE.Value
createComputerResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            computerEncoder
            ( "Computer", data.computer )
        |> JE.object


createConditionalForwarderRequestEncoder : CreateConditionalForwarderRequest -> JE.Value
createConditionalForwarderRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "RemoteDomainName", data.remoteDomainName |> JE.string )
        |> (::) ( "DnsIpAddrs", data.dnsIpAddrs |> JE.list JE.string )
        |> JE.object


createConditionalForwarderResultEncoder : CreateConditionalForwarderResult -> JE.Value
createConditionalForwarderResultEncoder data =
    []
        |> JE.object


createDirectoryRequestEncoder : CreateDirectoryRequest -> JE.Value
createDirectoryRequestEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ShortName", data.shortName )
        |> (::) ( "Password", data.password |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> (::) ( "Size", data.size |> (directorySizeToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            directoryVpcSettingsEncoder
            ( "VpcSettings", data.vpcSettings )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


createDirectoryResultEncoder : CreateDirectoryResult -> JE.Value
createDirectoryResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> JE.object


createLogSubscriptionRequestEncoder : CreateLogSubscriptionRequest -> JE.Value
createLogSubscriptionRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "LogGroupName", data.logGroupName |> JE.string )
        |> JE.object


createLogSubscriptionResultEncoder : CreateLogSubscriptionResult -> JE.Value
createLogSubscriptionResultEncoder data =
    []
        |> JE.object


createMicrosoftADRequestEncoder : CreateMicrosoftADRequest -> JE.Value
createMicrosoftADRequestEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ShortName", data.shortName )
        |> (::) ( "Password", data.password |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> (::) ( "VpcSettings", data.vpcSettings |> directoryVpcSettingsEncoder )
        |> AWS.Core.Encode.optionalMember
            (directoryEditionToString >> JE.string)
            ( "Edition", data.edition )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


createMicrosoftADResultEncoder : CreateMicrosoftADResult -> JE.Value
createMicrosoftADResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> JE.object


createSnapshotRequestEncoder : CreateSnapshotRequest -> JE.Value
createSnapshotRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> JE.object


createSnapshotResultEncoder : CreateSnapshotResult -> JE.Value
createSnapshotResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnapshotId", data.snapshotId )
        |> JE.object


createTrustRequestEncoder : CreateTrustRequest -> JE.Value
createTrustRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "RemoteDomainName", data.remoteDomainName |> JE.string )
        |> (::) ( "TrustPassword", data.trustPassword |> JE.string )
        |> (::) ( "TrustDirection", data.trustDirection |> (trustDirectionToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            (trustTypeToString >> JE.string)
            ( "TrustType", data.trustType )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ConditionalForwarderIpAddrs", data.conditionalForwarderIpAddrs )
        |> AWS.Core.Encode.optionalMember
            (selectiveAuthToString >> JE.string)
            ( "SelectiveAuth", data.selectiveAuth )
        |> JE.object


createTrustResultEncoder : CreateTrustResult -> JE.Value
createTrustResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TrustId", data.trustId )
        |> JE.object


deleteConditionalForwarderRequestEncoder : DeleteConditionalForwarderRequest -> JE.Value
deleteConditionalForwarderRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "RemoteDomainName", data.remoteDomainName |> JE.string )
        |> JE.object


deleteConditionalForwarderResultEncoder : DeleteConditionalForwarderResult -> JE.Value
deleteConditionalForwarderResultEncoder data =
    []
        |> JE.object


deleteDirectoryRequestEncoder : DeleteDirectoryRequest -> JE.Value
deleteDirectoryRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> JE.object


deleteDirectoryResultEncoder : DeleteDirectoryResult -> JE.Value
deleteDirectoryResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> JE.object


deleteLogSubscriptionRequestEncoder : DeleteLogSubscriptionRequest -> JE.Value
deleteLogSubscriptionRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> JE.object


deleteLogSubscriptionResultEncoder : DeleteLogSubscriptionResult -> JE.Value
deleteLogSubscriptionResultEncoder data =
    []
        |> JE.object


deleteSnapshotRequestEncoder : DeleteSnapshotRequest -> JE.Value
deleteSnapshotRequestEncoder data =
    []
        |> (::) ( "SnapshotId", data.snapshotId |> JE.string )
        |> JE.object


deleteSnapshotResultEncoder : DeleteSnapshotResult -> JE.Value
deleteSnapshotResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnapshotId", data.snapshotId )
        |> JE.object


deleteTrustRequestEncoder : DeleteTrustRequest -> JE.Value
deleteTrustRequestEncoder data =
    []
        |> (::) ( "TrustId", data.trustId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DeleteAssociatedConditionalForwarder", data.deleteAssociatedConditionalForwarder )
        |> JE.object


deleteTrustResultEncoder : DeleteTrustResult -> JE.Value
deleteTrustResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TrustId", data.trustId )
        |> JE.object


deregisterEventTopicRequestEncoder : DeregisterEventTopicRequest -> JE.Value
deregisterEventTopicRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "TopicName", data.topicName |> JE.string )
        |> JE.object


deregisterEventTopicResultEncoder : DeregisterEventTopicResult -> JE.Value
deregisterEventTopicResultEncoder data =
    []
        |> JE.object


describeConditionalForwardersRequestEncoder : DescribeConditionalForwardersRequest -> JE.Value
describeConditionalForwardersRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "RemoteDomainNames", data.remoteDomainNames )
        |> JE.object


describeConditionalForwardersResultEncoder : DescribeConditionalForwardersResult -> JE.Value
describeConditionalForwardersResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list conditionalForwarderEncoder)
            ( "ConditionalForwarders", data.conditionalForwarders )
        |> JE.object


describeDirectoriesRequestEncoder : DescribeDirectoriesRequest -> JE.Value
describeDirectoriesRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DirectoryIds", data.directoryIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


describeDirectoriesResultEncoder : DescribeDirectoriesResult -> JE.Value
describeDirectoriesResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list directoryDescriptionEncoder)
            ( "DirectoryDescriptions", data.directoryDescriptions )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeDomainControllersRequestEncoder : DescribeDomainControllersRequest -> JE.Value
describeDomainControllersRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DomainControllerIds", data.domainControllerIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


describeDomainControllersResultEncoder : DescribeDomainControllersResult -> JE.Value
describeDomainControllersResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list domainControllerEncoder)
            ( "DomainControllers", data.domainControllers )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeEventTopicsRequestEncoder : DescribeEventTopicsRequest -> JE.Value
describeEventTopicsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "TopicNames", data.topicNames )
        |> JE.object


describeEventTopicsResultEncoder : DescribeEventTopicsResult -> JE.Value
describeEventTopicsResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list eventTopicEncoder)
            ( "EventTopics", data.eventTopics )
        |> JE.object


describeSharedDirectoriesRequestEncoder : DescribeSharedDirectoriesRequest -> JE.Value
describeSharedDirectoriesRequestEncoder data =
    []
        |> (::) ( "OwnerDirectoryId", data.ownerDirectoryId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SharedDirectoryIds", data.sharedDirectoryIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


describeSharedDirectoriesResultEncoder : DescribeSharedDirectoriesResult -> JE.Value
describeSharedDirectoriesResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list sharedDirectoryEncoder)
            ( "SharedDirectories", data.sharedDirectories )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeSnapshotsRequestEncoder : DescribeSnapshotsRequest -> JE.Value
describeSnapshotsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SnapshotIds", data.snapshotIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


describeSnapshotsResultEncoder : DescribeSnapshotsResult -> JE.Value
describeSnapshotsResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list snapshotEncoder)
            ( "Snapshots", data.snapshots )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeTrustsRequestEncoder : DescribeTrustsRequest -> JE.Value
describeTrustsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "TrustIds", data.trustIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


describeTrustsResultEncoder : DescribeTrustsResult -> JE.Value
describeTrustsResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list trustEncoder)
            ( "Trusts", data.trusts )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


directoryConnectSettingsEncoder : DirectoryConnectSettings -> JE.Value
directoryConnectSettingsEncoder data =
    []
        |> (::) ( "VpcId", data.vpcId |> JE.string )
        |> (::) ( "SubnetIds", data.subnetIds |> JE.list JE.string )
        |> (::) ( "CustomerDnsIps", data.customerDnsIps |> JE.list JE.string )
        |> (::) ( "CustomerUserName", data.customerUserName |> JE.string )
        |> JE.object


directoryConnectSettingsDescriptionEncoder : DirectoryConnectSettingsDescription -> JE.Value
directoryConnectSettingsDescriptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VpcId", data.vpcId )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SubnetIds", data.subnetIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CustomerUserName", data.customerUserName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SecurityGroupId", data.securityGroupId )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "AvailabilityZones", data.availabilityZones )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ConnectIps", data.connectIps )
        |> JE.object


directoryDescriptionEncoder : DirectoryDescription -> JE.Value
directoryDescriptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ShortName", data.shortName )
        |> AWS.Core.Encode.optionalMember
            (directorySizeToString >> JE.string)
            ( "Size", data.size )
        |> AWS.Core.Encode.optionalMember
            (directoryEditionToString >> JE.string)
            ( "Edition", data.edition )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Alias", data.alias )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccessUrl", data.accessUrl )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DnsIpAddrs", data.dnsIpAddrs )
        |> AWS.Core.Encode.optionalMember
            (directoryStageToString >> JE.string)
            ( "Stage", data.stage )
        |> AWS.Core.Encode.optionalMember
            (shareStatusToString >> JE.string)
            ( "ShareStatus", data.shareStatus )
        |> AWS.Core.Encode.optionalMember
            (shareMethodToString >> JE.string)
            ( "ShareMethod", data.shareMethod )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ShareNotes", data.shareNotes )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LaunchTime", data.launchTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StageLastUpdatedDateTime", data.stageLastUpdatedDateTime )
        |> AWS.Core.Encode.optionalMember
            (directoryTypeToString >> JE.string)
            ( "Type", data.type_ )
        |> AWS.Core.Encode.optionalMember
            directoryVpcSettingsDescriptionEncoder
            ( "VpcSettings", data.vpcSettings )
        |> AWS.Core.Encode.optionalMember
            directoryConnectSettingsDescriptionEncoder
            ( "ConnectSettings", data.connectSettings )
        |> AWS.Core.Encode.optionalMember
            radiusSettingsEncoder
            ( "RadiusSettings", data.radiusSettings )
        |> AWS.Core.Encode.optionalMember
            (radiusStatusToString >> JE.string)
            ( "RadiusStatus", data.radiusStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StageReason", data.stageReason )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "SsoEnabled", data.ssoEnabled )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "DesiredNumberOfDomainControllers", data.desiredNumberOfDomainControllers )
        |> AWS.Core.Encode.optionalMember
            ownerDirectoryDescriptionEncoder
            ( "OwnerDirectoryDescription", data.ownerDirectoryDescription )
        |> JE.object


directoryLimitsEncoder : DirectoryLimits -> JE.Value
directoryLimitsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "CloudOnlyDirectoriesLimit", data.cloudOnlyDirectoriesLimit )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "CloudOnlyDirectoriesCurrentCount", data.cloudOnlyDirectoriesCurrentCount )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "CloudOnlyDirectoriesLimitReached", data.cloudOnlyDirectoriesLimitReached )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "CloudOnlyMicrosoftADLimit", data.cloudOnlyMicrosoftADLimit )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "CloudOnlyMicrosoftADCurrentCount", data.cloudOnlyMicrosoftADCurrentCount )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "CloudOnlyMicrosoftADLimitReached", data.cloudOnlyMicrosoftADLimitReached )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ConnectedDirectoriesLimit", data.connectedDirectoriesLimit )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ConnectedDirectoriesCurrentCount", data.connectedDirectoriesCurrentCount )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ConnectedDirectoriesLimitReached", data.connectedDirectoriesLimitReached )
        |> JE.object


directoryVpcSettingsEncoder : DirectoryVpcSettings -> JE.Value
directoryVpcSettingsEncoder data =
    []
        |> (::) ( "VpcId", data.vpcId |> JE.string )
        |> (::) ( "SubnetIds", data.subnetIds |> JE.list JE.string )
        |> JE.object


directoryVpcSettingsDescriptionEncoder : DirectoryVpcSettingsDescription -> JE.Value
directoryVpcSettingsDescriptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VpcId", data.vpcId )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SubnetIds", data.subnetIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SecurityGroupId", data.securityGroupId )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "AvailabilityZones", data.availabilityZones )
        |> JE.object


disableRadiusRequestEncoder : DisableRadiusRequest -> JE.Value
disableRadiusRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> JE.object


disableRadiusResultEncoder : DisableRadiusResult -> JE.Value
disableRadiusResultEncoder data =
    []
        |> JE.object


disableSsoRequestEncoder : DisableSsoRequest -> JE.Value
disableSsoRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "UserName", data.userName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Password", data.password )
        |> JE.object


disableSsoResultEncoder : DisableSsoResult -> JE.Value
disableSsoResultEncoder data =
    []
        |> JE.object


domainControllerEncoder : DomainController -> JE.Value
domainControllerEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DomainControllerId", data.domainControllerId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DnsIpAddr", data.dnsIpAddr )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VpcId", data.vpcId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SubnetId", data.subnetId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AvailabilityZone", data.availabilityZone )
        |> AWS.Core.Encode.optionalMember
            (domainControllerStatusToString >> JE.string)
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StatusReason", data.statusReason )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LaunchTime", data.launchTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StatusLastUpdatedDateTime", data.statusLastUpdatedDateTime )
        |> JE.object


enableRadiusRequestEncoder : EnableRadiusRequest -> JE.Value
enableRadiusRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "RadiusSettings", data.radiusSettings |> radiusSettingsEncoder )
        |> JE.object


enableRadiusResultEncoder : EnableRadiusResult -> JE.Value
enableRadiusResultEncoder data =
    []
        |> JE.object


enableSsoRequestEncoder : EnableSsoRequest -> JE.Value
enableSsoRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "UserName", data.userName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Password", data.password )
        |> JE.object


enableSsoResultEncoder : EnableSsoResult -> JE.Value
enableSsoResultEncoder data =
    []
        |> JE.object


eventTopicEncoder : EventTopic -> JE.Value
eventTopicEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TopicName", data.topicName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TopicArn", data.topicArn )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreatedDateTime", data.createdDateTime )
        |> AWS.Core.Encode.optionalMember
            (topicStatusToString >> JE.string)
            ( "Status", data.status )
        |> JE.object


getDirectoryLimitsRequestEncoder : GetDirectoryLimitsRequest -> JE.Value
getDirectoryLimitsRequestEncoder data =
    []
        |> JE.object


getDirectoryLimitsResultEncoder : GetDirectoryLimitsResult -> JE.Value
getDirectoryLimitsResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            directoryLimitsEncoder
            ( "DirectoryLimits", data.directoryLimits )
        |> JE.object


getSnapshotLimitsRequestEncoder : GetSnapshotLimitsRequest -> JE.Value
getSnapshotLimitsRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> JE.object


getSnapshotLimitsResultEncoder : GetSnapshotLimitsResult -> JE.Value
getSnapshotLimitsResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            snapshotLimitsEncoder
            ( "SnapshotLimits", data.snapshotLimits )
        |> JE.object


ipRouteEncoder : IpRoute -> JE.Value
ipRouteEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CidrIp", data.cidrIp )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> JE.object


ipRouteInfoEncoder : IpRouteInfo -> JE.Value
ipRouteInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CidrIp", data.cidrIp )
        |> AWS.Core.Encode.optionalMember
            (ipRouteStatusMsgToString >> JE.string)
            ( "IpRouteStatusMsg", data.ipRouteStatusMsg )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "AddedDateTime", data.addedDateTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IpRouteStatusReason", data.ipRouteStatusReason )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> JE.object


listIpRoutesRequestEncoder : ListIpRoutesRequest -> JE.Value
listIpRoutesRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


listIpRoutesResultEncoder : ListIpRoutesResult -> JE.Value
listIpRoutesResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list ipRouteInfoEncoder)
            ( "IpRoutesInfo", data.ipRoutesInfo )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listLogSubscriptionsRequestEncoder : ListLogSubscriptionsRequest -> JE.Value
listLogSubscriptionsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


listLogSubscriptionsResultEncoder : ListLogSubscriptionsResult -> JE.Value
listLogSubscriptionsResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list logSubscriptionEncoder)
            ( "LogSubscriptions", data.logSubscriptions )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listSchemaExtensionsRequestEncoder : ListSchemaExtensionsRequest -> JE.Value
listSchemaExtensionsRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


listSchemaExtensionsResultEncoder : ListSchemaExtensionsResult -> JE.Value
listSchemaExtensionsResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list schemaExtensionInfoEncoder)
            ( "SchemaExtensionsInfo", data.schemaExtensionsInfo )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listTagsForResourceRequestEncoder : ListTagsForResourceRequest -> JE.Value
listTagsForResourceRequestEncoder data =
    []
        |> (::) ( "ResourceId", data.resourceId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


listTagsForResourceResultEncoder : ListTagsForResourceResult -> JE.Value
listTagsForResourceResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


logSubscriptionEncoder : LogSubscription -> JE.Value
logSubscriptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LogGroupName", data.logGroupName )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "SubscriptionCreatedDateTime", data.subscriptionCreatedDateTime )
        |> JE.object


ownerDirectoryDescriptionEncoder : OwnerDirectoryDescription -> JE.Value
ownerDirectoryDescriptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccountId", data.accountId )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DnsIpAddrs", data.dnsIpAddrs )
        |> AWS.Core.Encode.optionalMember
            directoryVpcSettingsDescriptionEncoder
            ( "VpcSettings", data.vpcSettings )
        |> AWS.Core.Encode.optionalMember
            radiusSettingsEncoder
            ( "RadiusSettings", data.radiusSettings )
        |> AWS.Core.Encode.optionalMember
            (radiusStatusToString >> JE.string)
            ( "RadiusStatus", data.radiusStatus )
        |> JE.object


radiusSettingsEncoder : RadiusSettings -> JE.Value
radiusSettingsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "RadiusServers", data.radiusServers )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "RadiusPort", data.radiusPort )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "RadiusTimeout", data.radiusTimeout )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "RadiusRetries", data.radiusRetries )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SharedSecret", data.sharedSecret )
        |> AWS.Core.Encode.optionalMember
            (radiusAuthenticationProtocolToString >> JE.string)
            ( "AuthenticationProtocol", data.authenticationProtocol )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DisplayLabel", data.displayLabel )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "UseSameUsername", data.useSameUsername )
        |> JE.object


registerEventTopicRequestEncoder : RegisterEventTopicRequest -> JE.Value
registerEventTopicRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "TopicName", data.topicName |> JE.string )
        |> JE.object


registerEventTopicResultEncoder : RegisterEventTopicResult -> JE.Value
registerEventTopicResultEncoder data =
    []
        |> JE.object


rejectSharedDirectoryRequestEncoder : RejectSharedDirectoryRequest -> JE.Value
rejectSharedDirectoryRequestEncoder data =
    []
        |> (::) ( "SharedDirectoryId", data.sharedDirectoryId |> JE.string )
        |> JE.object


rejectSharedDirectoryResultEncoder : RejectSharedDirectoryResult -> JE.Value
rejectSharedDirectoryResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SharedDirectoryId", data.sharedDirectoryId )
        |> JE.object


removeIpRoutesRequestEncoder : RemoveIpRoutesRequest -> JE.Value
removeIpRoutesRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "CidrIps", data.cidrIps |> JE.list JE.string )
        |> JE.object


removeIpRoutesResultEncoder : RemoveIpRoutesResult -> JE.Value
removeIpRoutesResultEncoder data =
    []
        |> JE.object


removeTagsFromResourceRequestEncoder : RemoveTagsFromResourceRequest -> JE.Value
removeTagsFromResourceRequestEncoder data =
    []
        |> (::) ( "ResourceId", data.resourceId |> JE.string )
        |> (::) ( "TagKeys", data.tagKeys |> JE.list JE.string )
        |> JE.object


removeTagsFromResourceResultEncoder : RemoveTagsFromResourceResult -> JE.Value
removeTagsFromResourceResultEncoder data =
    []
        |> JE.object


resetUserPasswordRequestEncoder : ResetUserPasswordRequest -> JE.Value
resetUserPasswordRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "UserName", data.userName |> JE.string )
        |> (::) ( "NewPassword", data.newPassword |> JE.string )
        |> JE.object


resetUserPasswordResultEncoder : ResetUserPasswordResult -> JE.Value
resetUserPasswordResultEncoder data =
    []
        |> JE.object


restoreFromSnapshotRequestEncoder : RestoreFromSnapshotRequest -> JE.Value
restoreFromSnapshotRequestEncoder data =
    []
        |> (::) ( "SnapshotId", data.snapshotId |> JE.string )
        |> JE.object


restoreFromSnapshotResultEncoder : RestoreFromSnapshotResult -> JE.Value
restoreFromSnapshotResultEncoder data =
    []
        |> JE.object


schemaExtensionInfoEncoder : SchemaExtensionInfo -> JE.Value
schemaExtensionInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SchemaExtensionId", data.schemaExtensionId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            (schemaExtensionStatusToString >> JE.string)
            ( "SchemaExtensionStatus", data.schemaExtensionStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SchemaExtensionStatusReason", data.schemaExtensionStatusReason )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StartDateTime", data.startDateTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "EndDateTime", data.endDateTime )
        |> JE.object


shareDirectoryRequestEncoder : ShareDirectoryRequest -> JE.Value
shareDirectoryRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ShareNotes", data.shareNotes )
        |> (::) ( "ShareTarget", data.shareTarget |> shareTargetEncoder )
        |> (::) ( "ShareMethod", data.shareMethod |> (shareMethodToString >> JE.string) )
        |> JE.object


shareDirectoryResultEncoder : ShareDirectoryResult -> JE.Value
shareDirectoryResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SharedDirectoryId", data.sharedDirectoryId )
        |> JE.object


shareTargetEncoder : ShareTarget -> JE.Value
shareTargetEncoder data =
    []
        |> (::) ( "Id", data.id |> JE.string )
        |> (::) ( "Type", data.type_ |> (targetTypeToString >> JE.string) )
        |> JE.object


sharedDirectoryEncoder : SharedDirectory -> JE.Value
sharedDirectoryEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "OwnerAccountId", data.ownerAccountId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "OwnerDirectoryId", data.ownerDirectoryId )
        |> AWS.Core.Encode.optionalMember
            (shareMethodToString >> JE.string)
            ( "ShareMethod", data.shareMethod )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SharedAccountId", data.sharedAccountId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SharedDirectoryId", data.sharedDirectoryId )
        |> AWS.Core.Encode.optionalMember
            (shareStatusToString >> JE.string)
            ( "ShareStatus", data.shareStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ShareNotes", data.shareNotes )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreatedDateTime", data.createdDateTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastUpdatedDateTime", data.lastUpdatedDateTime )
        |> JE.object


snapshotEncoder : Snapshot -> JE.Value
snapshotEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnapshotId", data.snapshotId )
        |> AWS.Core.Encode.optionalMember
            (snapshotTypeToString >> JE.string)
            ( "Type", data.type_ )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            (snapshotStatusToString >> JE.string)
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StartTime", data.startTime )
        |> JE.object


snapshotLimitsEncoder : SnapshotLimits -> JE.Value
snapshotLimitsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ManualSnapshotsLimit", data.manualSnapshotsLimit )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ManualSnapshotsCurrentCount", data.manualSnapshotsCurrentCount )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ManualSnapshotsLimitReached", data.manualSnapshotsLimitReached )
        |> JE.object


startSchemaExtensionRequestEncoder : StartSchemaExtensionRequest -> JE.Value
startSchemaExtensionRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "CreateSnapshotBeforeSchemaExtension", data.createSnapshotBeforeSchemaExtension |> JE.bool )
        |> (::) ( "LdifContent", data.ldifContent |> JE.string )
        |> (::) ( "Description", data.description |> JE.string )
        |> JE.object


startSchemaExtensionResultEncoder : StartSchemaExtensionResult -> JE.Value
startSchemaExtensionResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SchemaExtensionId", data.schemaExtensionId )
        |> JE.object


tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        |> (::) ( "Key", data.key |> JE.string )
        |> (::) ( "Value", data.value |> JE.string )
        |> JE.object


trustEncoder : Trust -> JE.Value
trustEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryId", data.directoryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TrustId", data.trustId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "RemoteDomainName", data.remoteDomainName )
        |> AWS.Core.Encode.optionalMember
            (trustTypeToString >> JE.string)
            ( "TrustType", data.trustType )
        |> AWS.Core.Encode.optionalMember
            (trustDirectionToString >> JE.string)
            ( "TrustDirection", data.trustDirection )
        |> AWS.Core.Encode.optionalMember
            (trustStateToString >> JE.string)
            ( "TrustState", data.trustState )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreatedDateTime", data.createdDateTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastUpdatedDateTime", data.lastUpdatedDateTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StateLastUpdatedDateTime", data.stateLastUpdatedDateTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TrustStateReason", data.trustStateReason )
        |> AWS.Core.Encode.optionalMember
            (selectiveAuthToString >> JE.string)
            ( "SelectiveAuth", data.selectiveAuth )
        |> JE.object


unshareDirectoryRequestEncoder : UnshareDirectoryRequest -> JE.Value
unshareDirectoryRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "UnshareTarget", data.unshareTarget |> unshareTargetEncoder )
        |> JE.object


unshareDirectoryResultEncoder : UnshareDirectoryResult -> JE.Value
unshareDirectoryResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SharedDirectoryId", data.sharedDirectoryId )
        |> JE.object


unshareTargetEncoder : UnshareTarget -> JE.Value
unshareTargetEncoder data =
    []
        |> (::) ( "Id", data.id |> JE.string )
        |> (::) ( "Type", data.type_ |> (targetTypeToString >> JE.string) )
        |> JE.object


updateConditionalForwarderRequestEncoder : UpdateConditionalForwarderRequest -> JE.Value
updateConditionalForwarderRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "RemoteDomainName", data.remoteDomainName |> JE.string )
        |> (::) ( "DnsIpAddrs", data.dnsIpAddrs |> JE.list JE.string )
        |> JE.object


updateConditionalForwarderResultEncoder : UpdateConditionalForwarderResult -> JE.Value
updateConditionalForwarderResultEncoder data =
    []
        |> JE.object


updateNumberOfDomainControllersRequestEncoder : UpdateNumberOfDomainControllersRequest -> JE.Value
updateNumberOfDomainControllersRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "DesiredNumber", data.desiredNumber |> JE.int )
        |> JE.object


updateNumberOfDomainControllersResultEncoder : UpdateNumberOfDomainControllersResult -> JE.Value
updateNumberOfDomainControllersResultEncoder data =
    []
        |> JE.object


updateRadiusRequestEncoder : UpdateRadiusRequest -> JE.Value
updateRadiusRequestEncoder data =
    []
        |> (::) ( "DirectoryId", data.directoryId |> JE.string )
        |> (::) ( "RadiusSettings", data.radiusSettings |> radiusSettingsEncoder )
        |> JE.object


updateRadiusResultEncoder : UpdateRadiusResult -> JE.Value
updateRadiusResultEncoder data =
    []
        |> JE.object


updateTrustRequestEncoder : UpdateTrustRequest -> JE.Value
updateTrustRequestEncoder data =
    []
        |> (::) ( "TrustId", data.trustId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (selectiveAuthToString >> JE.string)
            ( "SelectiveAuth", data.selectiveAuth )
        |> JE.object


updateTrustResultEncoder : UpdateTrustResult -> JE.Value
updateTrustResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "RequestId", data.requestId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TrustId", data.trustId )
        |> JE.object


verifyTrustRequestEncoder : VerifyTrustRequest -> JE.Value
verifyTrustRequestEncoder data =
    []
        |> (::) ( "TrustId", data.trustId |> JE.string )
        |> JE.object


verifyTrustResultEncoder : VerifyTrustResult -> JE.Value
verifyTrustResultEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TrustId", data.trustId )
        |> JE.object
