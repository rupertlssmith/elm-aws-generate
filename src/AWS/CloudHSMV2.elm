module AWS.CloudHSMV2 exposing
    ( service
    , copyBackupToRegion, createCluster, CreateClusterOptions, createHsm, CreateHsmOptions, deleteBackup, deleteCluster, deleteHsm, DeleteHsmOptions, describeBackups, DescribeBackupsOptions, describeClusters, DescribeClustersOptions, initializeCluster, listTags, ListTagsOptions, restoreBackup, tagResource, untagResource
    , CopyBackupToRegionResponse, CreateClusterResponse, CreateHsmResponse, DeleteBackupResponse, DeleteClusterResponse, DeleteHsmResponse, DescribeBackupsResponse, DescribeClustersResponse, InitializeClusterResponse, ListTagsResponse, RestoreBackupResponse, TagResourceResponse, UntagResourceResponse
    , Backup, Certificates, Cluster, DestinationBackup, Hsm, Tag
    , BackupPolicy(..), BackupState(..), ClusterState(..), HsmState(..)
    )

{-|

<p>For more information about AWS CloudHSM, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a> and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [copyBackupToRegion](#copyBackupToRegion)
  - [createCluster](#createCluster)
  - [CreateClusterOptions](#CreateClusterOptions)
  - [createHsm](#createHsm)
  - [CreateHsmOptions](#CreateHsmOptions)
  - [deleteBackup](#deleteBackup)
  - [deleteCluster](#deleteCluster)
  - [deleteHsm](#deleteHsm)
  - [DeleteHsmOptions](#DeleteHsmOptions)
  - [describeBackups](#describeBackups)
  - [DescribeBackupsOptions](#DescribeBackupsOptions)
  - [describeClusters](#describeClusters)
  - [DescribeClustersOptions](#DescribeClustersOptions)
  - [initializeCluster](#initializeCluster)
  - [listTags](#listTags)
  - [ListTagsOptions](#ListTagsOptions)
  - [restoreBackup](#restoreBackup)
  - [tagResource](#tagResource)
  - [untagResource](#untagResource)

@docs copyBackupToRegion, createCluster, CreateClusterOptions, createHsm, CreateHsmOptions, deleteBackup, deleteCluster, deleteHsm, DeleteHsmOptions, describeBackups, DescribeBackupsOptions, describeClusters, DescribeClustersOptions, initializeCluster, listTags, ListTagsOptions, restoreBackup, tagResource, untagResource


## Responses

  - [CopyBackupToRegionResponse](#CopyBackupToRegionResponse)
  - [CreateClusterResponse](#CreateClusterResponse)
  - [CreateHsmResponse](#CreateHsmResponse)
  - [DeleteBackupResponse](#DeleteBackupResponse)
  - [DeleteClusterResponse](#DeleteClusterResponse)
  - [DeleteHsmResponse](#DeleteHsmResponse)
  - [DescribeBackupsResponse](#DescribeBackupsResponse)
  - [DescribeClustersResponse](#DescribeClustersResponse)
  - [InitializeClusterResponse](#InitializeClusterResponse)
  - [ListTagsResponse](#ListTagsResponse)
  - [RestoreBackupResponse](#RestoreBackupResponse)
  - [TagResourceResponse](#TagResourceResponse)
  - [UntagResourceResponse](#UntagResourceResponse)

@docs CopyBackupToRegionResponse, CreateClusterResponse, CreateHsmResponse, DeleteBackupResponse, DeleteClusterResponse, DeleteHsmResponse, DescribeBackupsResponse, DescribeClustersResponse, InitializeClusterResponse, ListTagsResponse, RestoreBackupResponse, TagResourceResponse, UntagResourceResponse


## Records

  - [Backup](#Backup)
  - [Certificates](#Certificates)
  - [Cluster](#Cluster)
  - [DestinationBackup](#DestinationBackup)
  - [Hsm](#Hsm)
  - [Tag](#Tag)

@docs Backup, Certificates, Cluster, DestinationBackup, Hsm, Tag


## Unions

  - [BackupPolicy](#BackupPolicy)
  - [BackupState](#BackupState)
  - [ClusterState](#ClusterState)
  - [HsmState](#HsmState)

@docs BackupPolicy, BackupState, ClusterState, HsmState

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Dict exposing (Dict)
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
        "cloudhsmv2"
        "2017-04-28"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setSigningName "cloudhsm" >> AWS.Core.Service.setTargetPrefix "BaldrApiService")



-- OPERATIONS


{-|

<p>Copy an AWS CloudHSM cluster backup to a different region.</p>

**Required Parameters**

  - `destinationRegion` **:** `String`
  - `backupId` **:** `String`

-}
copyBackupToRegion :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyBackupToRegionResponse)
copyBackupToRegion destinationRegion backupId =
    let
        requestInput =
            CopyBackupToRegionRequest
                destinationRegion
                backupId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> copyBackupToRegionRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CopyBackupToRegion"
            (AWS.Core.Decode.ResultDecoder "CopyBackupToRegionResponse" copyBackupToRegionResponseDecoder)
        )


{-|

<p>Creates a new AWS CloudHSM cluster.</p>

**Required Parameters**

  - `subnetIds` **:** `(List String)`
  - `hsmType` **:** `String`

-}
createCluster :
    List String
    -> String
    -> (CreateClusterOptions -> CreateClusterOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateClusterResponse)
createCluster subnetIds hsmType setOptions =
    let
        requestInput =
            CreateClusterRequest
                subnetIds
                hsmType
                options.sourceBackupId

        options =
            setOptions (CreateClusterOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createClusterRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateCluster"
            (AWS.Core.Decode.ResultDecoder "CreateClusterResponse" createClusterResponseDecoder)
        )


{-| Options for a createCluster request
-}
type alias CreateClusterOptions =
    { sourceBackupId : Maybe String
    }


{-|

<p>Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster.</p>

**Required Parameters**

  - `clusterId` **:** `String`
  - `availabilityZone` **:** `String`

-}
createHsm :
    String
    -> String
    -> (CreateHsmOptions -> CreateHsmOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateHsmResponse)
createHsm clusterId availabilityZone setOptions =
    let
        requestInput =
            CreateHsmRequest
                clusterId
                availabilityZone
                options.ipAddress

        options =
            setOptions (CreateHsmOptions Nothing)
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
    { ipAddress : Maybe String
    }


{-|

<p>Deletes a specified AWS CloudHSM backup. A backup can be restored up to 7 days after the DeleteBackup request. For more information on restoring a backup, see <a>RestoreBackup</a> </p>

**Required Parameters**

  - `backupId` **:** `String`

-}
deleteBackup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteBackupResponse)
deleteBackup backupId =
    let
        requestInput =
            DeleteBackupRequest
                backupId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteBackupRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteBackup"
            (AWS.Core.Decode.ResultDecoder "DeleteBackupResponse" deleteBackupResponseDecoder)
        )


{-|

<p>Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use <a>DescribeClusters</a>. To delete an HSM, use <a>DeleteHsm</a>.</p>

**Required Parameters**

  - `clusterId` **:** `String`

-}
deleteCluster :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteClusterResponse)
deleteCluster clusterId =
    let
        requestInput =
            DeleteClusterRequest
                clusterId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteClusterRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteCluster"
            (AWS.Core.Decode.ResultDecoder "DeleteClusterResponse" deleteClusterResponseDecoder)
        )


{-|

<p>Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to specify only one of these values. To find these values, use <a>DescribeClusters</a>.</p>

**Required Parameters**

  - `clusterId` **:** `String`

-}
deleteHsm :
    String
    -> (DeleteHsmOptions -> DeleteHsmOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteHsmResponse)
deleteHsm clusterId setOptions =
    let
        requestInput =
            DeleteHsmRequest
                clusterId
                options.hsmId
                options.eniId
                options.eniIp

        options =
            setOptions (DeleteHsmOptions Nothing Nothing Nothing)
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


{-| Options for a deleteHsm request
-}
type alias DeleteHsmOptions =
    { hsmId : Maybe String
    , eniId : Maybe String
    , eniIp : Maybe String
    }


{-|

<p>Gets information about backups of AWS CloudHSM clusters.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>DescribeBackups</code> request to get more backups. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more backups to get.</p>

**Required Parameters**

-}
describeBackups :
    (DescribeBackupsOptions -> DescribeBackupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeBackupsResponse)
describeBackups setOptions =
    let
        requestInput =
            DescribeBackupsRequest
                options.nextToken
                options.maxResults
                options.filters
                options.sortAscending

        options =
            setOptions (DescribeBackupsOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeBackupsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeBackups"
            (AWS.Core.Decode.ResultDecoder "DescribeBackupsResponse" describeBackupsResponseDecoder)
        )


{-| Options for a describeBackups request
-}
type alias DescribeBackupsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , filters : Maybe (Dict String (List String))
    , sortAscending : Maybe Bool
    }


{-|

<p>Gets information about AWS CloudHSM clusters.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>DescribeClusters</code> request to get more clusters. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more clusters to get.</p>

**Required Parameters**

-}
describeClusters :
    (DescribeClustersOptions -> DescribeClustersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeClustersResponse)
describeClusters setOptions =
    let
        requestInput =
            DescribeClustersRequest
                options.filters
                options.nextToken
                options.maxResults

        options =
            setOptions (DescribeClustersOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeClustersRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeClusters"
            (AWS.Core.Decode.ResultDecoder "DescribeClustersResponse" describeClustersResponseDecoder)
        )


{-| Options for a describeClusters request
-}
type alias DescribeClustersOptions =
    { filters : Maybe (Dict String (List String))
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p>Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate. Before you can claim a cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA. To get the cluster's CSR, use <a>DescribeClusters</a>.</p>

**Required Parameters**

  - `clusterId` **:** `String`
  - `signedCert` **:** `String`
  - `trustAnchor` **:** `String`

-}
initializeCluster :
    String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper InitializeClusterResponse)
initializeCluster clusterId signedCert trustAnchor =
    let
        requestInput =
            InitializeClusterRequest
                clusterId
                signedCert
                trustAnchor
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> initializeClusterRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "InitializeCluster"
            (AWS.Core.Decode.ResultDecoder "InitializeClusterResponse" initializeClusterResponseDecoder)
        )


{-|

<p>Gets a list of tags for the specified AWS CloudHSM cluster.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>ListTags</code> request to get more tags. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more tags to get.</p>

**Required Parameters**

  - `resourceId` **:** `String`

-}
listTags :
    String
    -> (ListTagsOptions -> ListTagsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsResponse)
listTags resourceId setOptions =
    let
        requestInput =
            ListTagsRequest
                resourceId
                options.nextToken
                options.maxResults

        options =
            setOptions (ListTagsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listTagsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListTags"
            (AWS.Core.Decode.ResultDecoder "ListTagsResponse" listTagsResponseDecoder)
        )


{-| Options for a listTags request
-}
type alias ListTagsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p>Restores a specified AWS CloudHSM backup that is in the <code>PENDING_DELETION</code> state. For more information on deleting a backup, see <a>DeleteBackup</a>.</p>

**Required Parameters**

  - `backupId` **:** `String`

-}
restoreBackup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreBackupResponse)
restoreBackup backupId =
    let
        requestInput =
            RestoreBackupRequest
                backupId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> restoreBackupRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RestoreBackup"
            (AWS.Core.Decode.ResultDecoder "RestoreBackupResponse" restoreBackupResponseDecoder)
        )


{-|

<p>Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.</p>

**Required Parameters**

  - `resourceId` **:** `String`
  - `tagList` **:** `(List Tag)`

-}
tagResource :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceResponse)
tagResource resourceId tagList =
    let
        requestInput =
            TagResourceRequest
                resourceId
                tagList
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


{-|

<p>Removes the specified tag or tags from the specified AWS CloudHSM cluster.</p>

**Required Parameters**

  - `resourceId` **:** `String`
  - `tagKeyList` **:** `(List String)`

-}
untagResource :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceResponse)
untagResource resourceId tagKeyList =
    let
        requestInput =
            UntagResourceRequest
                resourceId
                tagKeyList
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


{-|

<p>Contains information about a backup of an AWS CloudHSM cluster.</p>

-}
type alias Backup =
    { backupId : String
    , backupState : Maybe BackupState
    , clusterId : Maybe String
    , createTimestamp : Maybe Posix
    , copyTimestamp : Maybe Posix
    , sourceRegion : Maybe String
    , sourceBackup : Maybe String
    , sourceCluster : Maybe String
    , deleteTimestamp : Maybe Posix
    }


backupDecoder : JD.Decoder Backup
backupDecoder =
    JD.succeed Backup
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "BackupId", "backupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BackupState", "backupState" ]
                backupStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterId", "clusterId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateTimestamp", "createTimestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CopyTimestamp", "copyTimestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceRegion", "sourceRegion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceBackup", "sourceBackup" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceCluster", "sourceCluster" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeleteTimestamp", "deleteTimestamp" ]
                JDX.datetime
            )


backupToString :
    Backup
    -> String -- List (String, String)
backupToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "backupId" "" -- val.backupId
    --     |> Dict.insert
    --         "backupState" "" -- val.backupState
    --     |> Dict.insert
    --         "clusterId" "" -- val.clusterId
    --     |> Dict.insert
    --         "createTimestamp" "" -- val.createTimestamp
    --     |> Dict.insert
    --         "copyTimestamp" "" -- val.copyTimestamp
    --     |> Dict.insert
    --         "sourceRegion" "" -- val.sourceRegion
    --     |> Dict.insert
    --         "sourceBackup" "" -- val.sourceBackup
    --     |> Dict.insert
    --         "sourceCluster" "" -- val.sourceCluster
    --     |> Dict.insert
    --         "deleteTimestamp" "" -- val.deleteTimestamp
    --     |> Dict.toList
    ""


{-| One of

  - `BackupPolicy_DEFAULT`

-}
type BackupPolicy
    = BackupPolicy_DEFAULT


backupPolicyDecoder : JD.Decoder BackupPolicy
backupPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEFAULT" ->
                        JD.succeed BackupPolicy_DEFAULT

                    _ ->
                        JD.fail "bad thing"
            )


backupPolicyToString : BackupPolicy -> String
backupPolicyToString val =
    case val of
        BackupPolicy_DEFAULT ->
            "DEFAULT"


{-| One of

  - `BackupState_CREATE_IN_PROGRESS`
  - `BackupState_READY`
  - `BackupState_DELETED`
  - `BackupState_PENDING_DELETION`

-}
type BackupState
    = BackupState_CREATE_IN_PROGRESS
    | BackupState_READY
    | BackupState_DELETED
    | BackupState_PENDING_DELETION


backupStateDecoder : JD.Decoder BackupState
backupStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_IN_PROGRESS" ->
                        JD.succeed BackupState_CREATE_IN_PROGRESS

                    "READY" ->
                        JD.succeed BackupState_READY

                    "DELETED" ->
                        JD.succeed BackupState_DELETED

                    "PENDING_DELETION" ->
                        JD.succeed BackupState_PENDING_DELETION

                    _ ->
                        JD.fail "bad thing"
            )


backupStateToString : BackupState -> String
backupStateToString val =
    case val of
        BackupState_CREATE_IN_PROGRESS ->
            "CREATE_IN_PROGRESS"

        BackupState_READY ->
            "READY"

        BackupState_DELETED ->
            "DELETED"

        BackupState_PENDING_DELETION ->
            "PENDING_DELETION"


{-|

<p>Contains one or more certificates or a certificate signing request (CSR).</p>

-}
type alias Certificates =
    { clusterCsr : Maybe String
    , hsmCertificate : Maybe String
    , awsHardwareCertificate : Maybe String
    , manufacturerHardwareCertificate : Maybe String
    , clusterCertificate : Maybe String
    }


certificatesDecoder : JD.Decoder Certificates
certificatesDecoder =
    JD.succeed Certificates
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterCsr", "clusterCsr" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmCertificate", "hsmCertificate" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AwsHardwareCertificate", "awsHardwareCertificate" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ManufacturerHardwareCertificate", "manufacturerHardwareCertificate" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterCertificate", "clusterCertificate" ]
                JD.string
            )


certificatesToString :
    Certificates
    -> String -- List (String, String)
certificatesToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "clusterCsr" "" -- val.clusterCsr
    --     |> Dict.insert
    --         "hsmCertificate" "" -- val.hsmCertificate
    --     |> Dict.insert
    --         "awsHardwareCertificate" "" -- val.awsHardwareCertificate
    --     |> Dict.insert
    --         "manufacturerHardwareCertificate" "" -- val.manufacturerHardwareCertificate
    --     |> Dict.insert
    --         "clusterCertificate" "" -- val.clusterCertificate
    --     |> Dict.toList
    ""


{-|

<p>Contains information about an AWS CloudHSM cluster.</p>

-}
type alias Cluster =
    { backupPolicy : Maybe BackupPolicy
    , clusterId : Maybe String
    , createTimestamp : Maybe Posix
    , hsms : Maybe (List Hsm)
    , hsmType : Maybe String
    , preCoPassword : Maybe String
    , securityGroup : Maybe String
    , sourceBackupId : Maybe String
    , state : Maybe ClusterState
    , stateMessage : Maybe String
    , subnetMapping : Maybe (Dict String String)
    , vpcId : Maybe String
    , certificates : Maybe Certificates
    }


clusterDecoder : JD.Decoder Cluster
clusterDecoder =
    JD.succeed Cluster
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BackupPolicy", "backupPolicy" ]
                backupPolicyDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterId", "clusterId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateTimestamp", "createTimestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Hsms", "hsms" ]
                (JD.list hsmDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmType", "hsmType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreCoPassword", "preCoPassword" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecurityGroup", "securityGroup" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceBackupId", "sourceBackupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                clusterStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StateMessage", "stateMessage" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetMapping", "subnetMapping" ]
                (AWS.Core.Decode.dict JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcId", "vpcId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Certificates", "certificates" ]
                certificatesDecoder
            )


clusterToString :
    Cluster
    -> String -- List (String, String)
clusterToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "backupPolicy" "" -- val.backupPolicy
    --     |> Dict.insert
    --         "clusterId" "" -- val.clusterId
    --     |> Dict.insert
    --         "createTimestamp" "" -- val.createTimestamp
    --     |> Dict.insert
    --         "hsms" "" -- val.hsms
    --     |> Dict.insert
    --         "hsmType" "" -- val.hsmType
    --     |> Dict.insert
    --         "preCoPassword" "" -- val.preCoPassword
    --     |> Dict.insert
    --         "securityGroup" "" -- val.securityGroup
    --     |> Dict.insert
    --         "sourceBackupId" "" -- val.sourceBackupId
    --     |> Dict.insert
    --         "state" "" -- val.state
    --     |> Dict.insert
    --         "stateMessage" "" -- val.stateMessage
    --     |> Dict.insert
    --         "subnetMapping" "" -- val.subnetMapping
    --     |> Dict.insert
    --         "vpcId" "" -- val.vpcId
    --     |> Dict.insert
    --         "certificates" "" -- val.certificates
    --     |> Dict.toList
    ""


{-| One of

  - `ClusterState_CREATE_IN_PROGRESS`
  - `ClusterState_UNINITIALIZED`
  - `ClusterState_INITIALIZE_IN_PROGRESS`
  - `ClusterState_INITIALIZED`
  - `ClusterState_ACTIVE`
  - `ClusterState_UPDATE_IN_PROGRESS`
  - `ClusterState_DELETE_IN_PROGRESS`
  - `ClusterState_DELETED`
  - `ClusterState_DEGRADED`

-}
type ClusterState
    = ClusterState_CREATE_IN_PROGRESS
    | ClusterState_UNINITIALIZED
    | ClusterState_INITIALIZE_IN_PROGRESS
    | ClusterState_INITIALIZED
    | ClusterState_ACTIVE
    | ClusterState_UPDATE_IN_PROGRESS
    | ClusterState_DELETE_IN_PROGRESS
    | ClusterState_DELETED
    | ClusterState_DEGRADED


clusterStateDecoder : JD.Decoder ClusterState
clusterStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_IN_PROGRESS" ->
                        JD.succeed ClusterState_CREATE_IN_PROGRESS

                    "UNINITIALIZED" ->
                        JD.succeed ClusterState_UNINITIALIZED

                    "INITIALIZE_IN_PROGRESS" ->
                        JD.succeed ClusterState_INITIALIZE_IN_PROGRESS

                    "INITIALIZED" ->
                        JD.succeed ClusterState_INITIALIZED

                    "ACTIVE" ->
                        JD.succeed ClusterState_ACTIVE

                    "UPDATE_IN_PROGRESS" ->
                        JD.succeed ClusterState_UPDATE_IN_PROGRESS

                    "DELETE_IN_PROGRESS" ->
                        JD.succeed ClusterState_DELETE_IN_PROGRESS

                    "DELETED" ->
                        JD.succeed ClusterState_DELETED

                    "DEGRADED" ->
                        JD.succeed ClusterState_DEGRADED

                    _ ->
                        JD.fail "bad thing"
            )


clusterStateToString : ClusterState -> String
clusterStateToString val =
    case val of
        ClusterState_CREATE_IN_PROGRESS ->
            "CREATE_IN_PROGRESS"

        ClusterState_UNINITIALIZED ->
            "UNINITIALIZED"

        ClusterState_INITIALIZE_IN_PROGRESS ->
            "INITIALIZE_IN_PROGRESS"

        ClusterState_INITIALIZED ->
            "INITIALIZED"

        ClusterState_ACTIVE ->
            "ACTIVE"

        ClusterState_UPDATE_IN_PROGRESS ->
            "UPDATE_IN_PROGRESS"

        ClusterState_DELETE_IN_PROGRESS ->
            "DELETE_IN_PROGRESS"

        ClusterState_DELETED ->
            "DELETED"

        ClusterState_DEGRADED ->
            "DEGRADED"


{-| Type of HTTP response from copyBackupToRegion
-}
type alias CopyBackupToRegionResponse =
    { destinationBackup : Maybe DestinationBackup
    }


copyBackupToRegionResponseDecoder : JD.Decoder CopyBackupToRegionResponse
copyBackupToRegionResponseDecoder =
    JD.succeed CopyBackupToRegionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DestinationBackup", "destinationBackup" ]
                destinationBackupDecoder
            )


copyBackupToRegionResponseToString :
    CopyBackupToRegionResponse
    -> String -- List (String, String)
copyBackupToRegionResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "destinationBackup" "" -- val.destinationBackup
    --     |> Dict.toList
    ""


{-| Type of HTTP response from createCluster
-}
type alias CreateClusterResponse =
    { cluster : Maybe Cluster
    }


createClusterResponseDecoder : JD.Decoder CreateClusterResponse
createClusterResponseDecoder =
    JD.succeed CreateClusterResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


createClusterResponseToString :
    CreateClusterResponse
    -> String -- List (String, String)
createClusterResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "cluster" "" -- val.cluster
    --     |> Dict.toList
    ""


{-| Type of HTTP response from createHsm
-}
type alias CreateHsmResponse =
    { hsm : Maybe Hsm
    }


createHsmResponseDecoder : JD.Decoder CreateHsmResponse
createHsmResponseDecoder =
    JD.succeed CreateHsmResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Hsm", "hsm" ]
                hsmDecoder
            )


createHsmResponseToString :
    CreateHsmResponse
    -> String -- List (String, String)
createHsmResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "hsm" "" -- val.hsm
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteBackup
-}
type alias DeleteBackupResponse =
    { backup : Maybe Backup
    }


deleteBackupResponseDecoder : JD.Decoder DeleteBackupResponse
deleteBackupResponseDecoder =
    JD.succeed DeleteBackupResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Backup", "backup" ]
                backupDecoder
            )


deleteBackupResponseToString :
    DeleteBackupResponse
    -> String -- List (String, String)
deleteBackupResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "backup" "" -- val.backup
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteCluster
-}
type alias DeleteClusterResponse =
    { cluster : Maybe Cluster
    }


deleteClusterResponseDecoder : JD.Decoder DeleteClusterResponse
deleteClusterResponseDecoder =
    JD.succeed DeleteClusterResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


deleteClusterResponseToString :
    DeleteClusterResponse
    -> String -- List (String, String)
deleteClusterResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "cluster" "" -- val.cluster
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteHsm
-}
type alias DeleteHsmResponse =
    { hsmId : Maybe String
    }


deleteHsmResponseDecoder : JD.Decoder DeleteHsmResponse
deleteHsmResponseDecoder =
    JD.succeed DeleteHsmResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HsmId", "hsmId" ]
                JD.string
            )


deleteHsmResponseToString :
    DeleteHsmResponse
    -> String -- List (String, String)
deleteHsmResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "hsmId" "" -- val.hsmId
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeBackups
-}
type alias DescribeBackupsResponse =
    { backups : Maybe (List Backup)
    , nextToken : Maybe String
    }


describeBackupsResponseDecoder : JD.Decoder DescribeBackupsResponse
describeBackupsResponseDecoder =
    JD.succeed DescribeBackupsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Backups", "backups" ]
                (JD.list backupDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeBackupsResponseToString :
    DescribeBackupsResponse
    -> String -- List (String, String)
describeBackupsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "backups" "" -- val.backups
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from describeClusters
-}
type alias DescribeClustersResponse =
    { clusters : Maybe (List Cluster)
    , nextToken : Maybe String
    }


describeClustersResponseDecoder : JD.Decoder DescribeClustersResponse
describeClustersResponseDecoder =
    JD.succeed DescribeClustersResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Clusters", "clusters" ]
                (JD.list clusterDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


describeClustersResponseToString :
    DescribeClustersResponse
    -> String -- List (String, String)
describeClustersResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "clusters" "" -- val.clusters
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| undefined
-}
type alias DestinationBackup =
    { createTimestamp : Maybe Posix
    , sourceRegion : Maybe String
    , sourceBackup : Maybe String
    , sourceCluster : Maybe String
    }


destinationBackupDecoder : JD.Decoder DestinationBackup
destinationBackupDecoder =
    JD.succeed DestinationBackup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateTimestamp", "createTimestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceRegion", "sourceRegion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceBackup", "sourceBackup" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceCluster", "sourceCluster" ]
                JD.string
            )


destinationBackupToString :
    DestinationBackup
    -> String -- List (String, String)
destinationBackupToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "createTimestamp" "" -- val.createTimestamp
    --     |> Dict.insert
    --         "sourceRegion" "" -- val.sourceRegion
    --     |> Dict.insert
    --         "sourceBackup" "" -- val.sourceBackup
    --     |> Dict.insert
    --         "sourceCluster" "" -- val.sourceCluster
    --     |> Dict.toList
    ""


{-|

<p>Contains information about a hardware security module (HSM) in an AWS CloudHSM cluster.</p>

-}
type alias Hsm =
    { availabilityZone : Maybe String
    , clusterId : Maybe String
    , subnetId : Maybe String
    , eniId : Maybe String
    , eniIp : Maybe String
    , hsmId : String
    , state : Maybe HsmState
    , stateMessage : Maybe String
    }


hsmDecoder : JD.Decoder Hsm
hsmDecoder =
    JD.succeed Hsm
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AvailabilityZone", "availabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterId", "clusterId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetId", "subnetId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EniId", "eniId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EniIp", "eniIp" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "HsmId", "hsmId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                hsmStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StateMessage", "stateMessage" ]
                JD.string
            )


hsmToString :
    Hsm
    -> String -- List (String, String)
hsmToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
    --     |> Dict.insert
    --         "clusterId" "" -- val.clusterId
    --     |> Dict.insert
    --         "subnetId" "" -- val.subnetId
    --     |> Dict.insert
    --         "eniId" "" -- val.eniId
    --     |> Dict.insert
    --         "eniIp" "" -- val.eniIp
    --     |> Dict.insert
    --         "hsmId" "" -- val.hsmId
    --     |> Dict.insert
    --         "state" "" -- val.state
    --     |> Dict.insert
    --         "stateMessage" "" -- val.stateMessage
    --     |> Dict.toList
    ""


{-| One of

  - `HsmState_CREATE_IN_PROGRESS`
  - `HsmState_ACTIVE`
  - `HsmState_DEGRADED`
  - `HsmState_DELETE_IN_PROGRESS`
  - `HsmState_DELETED`

-}
type HsmState
    = HsmState_CREATE_IN_PROGRESS
    | HsmState_ACTIVE
    | HsmState_DEGRADED
    | HsmState_DELETE_IN_PROGRESS
    | HsmState_DELETED


hsmStateDecoder : JD.Decoder HsmState
hsmStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_IN_PROGRESS" ->
                        JD.succeed HsmState_CREATE_IN_PROGRESS

                    "ACTIVE" ->
                        JD.succeed HsmState_ACTIVE

                    "DEGRADED" ->
                        JD.succeed HsmState_DEGRADED

                    "DELETE_IN_PROGRESS" ->
                        JD.succeed HsmState_DELETE_IN_PROGRESS

                    "DELETED" ->
                        JD.succeed HsmState_DELETED

                    _ ->
                        JD.fail "bad thing"
            )


hsmStateToString : HsmState -> String
hsmStateToString val =
    case val of
        HsmState_CREATE_IN_PROGRESS ->
            "CREATE_IN_PROGRESS"

        HsmState_ACTIVE ->
            "ACTIVE"

        HsmState_DEGRADED ->
            "DEGRADED"

        HsmState_DELETE_IN_PROGRESS ->
            "DELETE_IN_PROGRESS"

        HsmState_DELETED ->
            "DELETED"


{-| Type of HTTP response from initializeCluster
-}
type alias InitializeClusterResponse =
    { state : Maybe ClusterState
    , stateMessage : Maybe String
    }


initializeClusterResponseDecoder : JD.Decoder InitializeClusterResponse
initializeClusterResponseDecoder =
    JD.succeed InitializeClusterResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                clusterStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StateMessage", "stateMessage" ]
                JD.string
            )


initializeClusterResponseToString :
    InitializeClusterResponse
    -> String -- List (String, String)
initializeClusterResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "state" "" -- val.state
    --     |> Dict.insert
    --         "stateMessage" "" -- val.stateMessage
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listTags
-}
type alias ListTagsResponse =
    { tagList : List Tag
    , nextToken : Maybe String
    }


listTagsResponseDecoder : JD.Decoder ListTagsResponse
listTagsResponseDecoder =
    JD.succeed ListTagsResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "TagList", "tagList" ]
                (JD.list tagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


listTagsResponseToString :
    ListTagsResponse
    -> String -- List (String, String)
listTagsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "tagList" "" -- val.tagList
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from restoreBackup
-}
type alias RestoreBackupResponse =
    { backup : Maybe Backup
    }


restoreBackupResponseDecoder : JD.Decoder RestoreBackupResponse
restoreBackupResponseDecoder =
    JD.succeed RestoreBackupResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Backup", "backup" ]
                backupDecoder
            )


restoreBackupResponseToString :
    RestoreBackupResponse
    -> String -- List (String, String)
restoreBackupResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "backup" "" -- val.backup
    --     |> Dict.toList
    ""


{-|

<p>Contains a tag. A tag is a key-value pair.</p>

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


tagToString :
    Tag
    -> String -- List (String, String)
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
    {}


tagResourceResponseDecoder : JD.Decoder TagResourceResponse
tagResourceResponseDecoder =
    JD.succeed TagResourceResponse


tagResourceResponseToString :
    TagResourceResponse
    -> String -- List (String, String)
tagResourceResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| Type of HTTP response from untagResource
-}
type alias UntagResourceResponse =
    {}


untagResourceResponseDecoder : JD.Decoder UntagResourceResponse
untagResourceResponseDecoder =
    JD.succeed UntagResourceResponse


untagResourceResponseToString :
    UntagResourceResponse
    -> String -- List (String, String)
untagResourceResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-| undefined
-}
type alias CopyBackupToRegionRequest =
    { destinationRegion : String
    , backupId : String
    }


{-| undefined
-}
type alias CreateClusterRequest =
    { subnetIds : List String
    , hsmType : String
    , sourceBackupId : Maybe String
    }


{-| undefined
-}
type alias CreateHsmRequest =
    { clusterId : String
    , availabilityZone : String
    , ipAddress : Maybe String
    }


{-| undefined
-}
type alias DeleteBackupRequest =
    { backupId : String
    }


{-| undefined
-}
type alias DeleteClusterRequest =
    { clusterId : String
    }


{-| undefined
-}
type alias DeleteHsmRequest =
    { clusterId : String
    , hsmId : Maybe String
    , eniId : Maybe String
    , eniIp : Maybe String
    }


{-| undefined
-}
type alias DescribeBackupsRequest =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , filters : Maybe (Dict String (List String))
    , sortAscending : Maybe Bool
    }


{-| undefined
-}
type alias DescribeClustersRequest =
    { filters : Maybe (Dict String (List String))
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias InitializeClusterRequest =
    { clusterId : String
    , signedCert : String
    , trustAnchor : String
    }


{-| undefined
-}
type alias ListTagsRequest =
    { resourceId : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias RestoreBackupRequest =
    { backupId : String
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceId : String
    , tagList : List Tag
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceId : String
    , tagKeyList : List String
    }


backupEncoder : Backup -> JE.Value
backupEncoder data =
    []
        |> (::) ( "BackupId", data.backupId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (backupStateToString >> JE.string)
            ( "BackupState", data.backupState )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ClusterId", data.clusterId )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreateTimestamp", data.createTimestamp )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CopyTimestamp", data.copyTimestamp )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceRegion", data.sourceRegion )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceBackup", data.sourceBackup )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceCluster", data.sourceCluster )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "DeleteTimestamp", data.deleteTimestamp )
        |> JE.object


certificatesEncoder : Certificates -> JE.Value
certificatesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ClusterCsr", data.clusterCsr )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "HsmCertificate", data.hsmCertificate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AwsHardwareCertificate", data.awsHardwareCertificate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ManufacturerHardwareCertificate", data.manufacturerHardwareCertificate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ClusterCertificate", data.clusterCertificate )
        |> JE.object


clusterEncoder : Cluster -> JE.Value
clusterEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (backupPolicyToString >> JE.string)
            ( "BackupPolicy", data.backupPolicy )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ClusterId", data.clusterId )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreateTimestamp", data.createTimestamp )
        |> AWS.Core.Encode.optionalMember
            (JE.list hsmEncoder)
            ( "Hsms", data.hsms )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "HsmType", data.hsmType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreCoPassword", data.preCoPassword )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SecurityGroup", data.securityGroup )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceBackupId", data.sourceBackupId )
        |> AWS.Core.Encode.optionalMember
            (clusterStateToString >> JE.string)
            ( "State", data.state )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StateMessage", data.stateMessage )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "SubnetMapping", data.subnetMapping )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VpcId", data.vpcId )
        |> AWS.Core.Encode.optionalMember
            certificatesEncoder
            ( "Certificates", data.certificates )
        |> JE.object


copyBackupToRegionRequestEncoder : CopyBackupToRegionRequest -> JE.Value
copyBackupToRegionRequestEncoder data =
    []
        |> (::) ( "DestinationRegion", data.destinationRegion |> JE.string )
        |> (::) ( "BackupId", data.backupId |> JE.string )
        |> JE.object


copyBackupToRegionResponseEncoder : CopyBackupToRegionResponse -> JE.Value
copyBackupToRegionResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            destinationBackupEncoder
            ( "DestinationBackup", data.destinationBackup )
        |> JE.object


createClusterRequestEncoder : CreateClusterRequest -> JE.Value
createClusterRequestEncoder data =
    []
        |> (::) ( "SubnetIds", data.subnetIds |> JE.list JE.string )
        |> (::) ( "HsmType", data.hsmType |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceBackupId", data.sourceBackupId )
        |> JE.object


createClusterResponseEncoder : CreateClusterResponse -> JE.Value
createClusterResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            clusterEncoder
            ( "Cluster", data.cluster )
        |> JE.object


createHsmRequestEncoder : CreateHsmRequest -> JE.Value
createHsmRequestEncoder data =
    []
        |> (::) ( "ClusterId", data.clusterId |> JE.string )
        |> (::) ( "AvailabilityZone", data.availabilityZone |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IpAddress", data.ipAddress )
        |> JE.object


createHsmResponseEncoder : CreateHsmResponse -> JE.Value
createHsmResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            hsmEncoder
            ( "Hsm", data.hsm )
        |> JE.object


deleteBackupRequestEncoder : DeleteBackupRequest -> JE.Value
deleteBackupRequestEncoder data =
    []
        |> (::) ( "BackupId", data.backupId |> JE.string )
        |> JE.object


deleteBackupResponseEncoder : DeleteBackupResponse -> JE.Value
deleteBackupResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            backupEncoder
            ( "Backup", data.backup )
        |> JE.object


deleteClusterRequestEncoder : DeleteClusterRequest -> JE.Value
deleteClusterRequestEncoder data =
    []
        |> (::) ( "ClusterId", data.clusterId |> JE.string )
        |> JE.object


deleteClusterResponseEncoder : DeleteClusterResponse -> JE.Value
deleteClusterResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            clusterEncoder
            ( "Cluster", data.cluster )
        |> JE.object


deleteHsmRequestEncoder : DeleteHsmRequest -> JE.Value
deleteHsmRequestEncoder data =
    []
        |> (::) ( "ClusterId", data.clusterId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "HsmId", data.hsmId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EniId", data.eniId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EniIp", data.eniIp )
        |> JE.object


deleteHsmResponseEncoder : DeleteHsmResponse -> JE.Value
deleteHsmResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "HsmId", data.hsmId )
        |> JE.object


describeBackupsRequestEncoder : DescribeBackupsRequest -> JE.Value
describeBackupsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> AWS.Core.Encode.optionalMember
            (List String Encoder)
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "SortAscending", data.sortAscending )
        |> JE.object


describeBackupsResponseEncoder : DescribeBackupsResponse -> JE.Value
describeBackupsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list backupEncoder)
            ( "Backups", data.backups )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeClustersRequestEncoder : DescribeClustersRequest -> JE.Value
describeClustersRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (List String Encoder)
            ( "Filters", data.filters )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> JE.object


describeClustersResponseEncoder : DescribeClustersResponse -> JE.Value
describeClustersResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list clusterEncoder)
            ( "Clusters", data.clusters )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


destinationBackupEncoder : DestinationBackup -> JE.Value
destinationBackupEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreateTimestamp", data.createTimestamp )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceRegion", data.sourceRegion )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceBackup", data.sourceBackup )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceCluster", data.sourceCluster )
        |> JE.object


hsmEncoder : Hsm -> JE.Value
hsmEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AvailabilityZone", data.availabilityZone )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ClusterId", data.clusterId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SubnetId", data.subnetId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EniId", data.eniId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EniIp", data.eniIp )
        |> (::) ( "HsmId", data.hsmId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (hsmStateToString >> JE.string)
            ( "State", data.state )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StateMessage", data.stateMessage )
        |> JE.object


initializeClusterRequestEncoder : InitializeClusterRequest -> JE.Value
initializeClusterRequestEncoder data =
    []
        |> (::) ( "ClusterId", data.clusterId |> JE.string )
        |> (::) ( "SignedCert", data.signedCert |> JE.string )
        |> (::) ( "TrustAnchor", data.trustAnchor |> JE.string )
        |> JE.object


initializeClusterResponseEncoder : InitializeClusterResponse -> JE.Value
initializeClusterResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (clusterStateToString >> JE.string)
            ( "State", data.state )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StateMessage", data.stateMessage )
        |> JE.object


listTagsRequestEncoder : ListTagsRequest -> JE.Value
listTagsRequestEncoder data =
    []
        |> (::) ( "ResourceId", data.resourceId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> JE.object


listTagsResponseEncoder : ListTagsResponse -> JE.Value
listTagsResponseEncoder data =
    []
        |> (::) ( "TagList", data.tagList |> JE.list tagEncoder )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


restoreBackupRequestEncoder : RestoreBackupRequest -> JE.Value
restoreBackupRequestEncoder data =
    []
        |> (::) ( "BackupId", data.backupId |> JE.string )
        |> JE.object


restoreBackupResponseEncoder : RestoreBackupResponse -> JE.Value
restoreBackupResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            backupEncoder
            ( "Backup", data.backup )
        |> JE.object


tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        |> (::) ( "Key", data.key |> JE.string )
        |> (::) ( "Value", data.value |> JE.string )
        |> JE.object


tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        |> (::) ( "ResourceId", data.resourceId |> JE.string )
        |> (::) ( "TagList", data.tagList |> JE.list tagEncoder )
        |> JE.object


tagResourceResponseEncoder : TagResourceResponse -> JE.Value
tagResourceResponseEncoder data =
    []
        |> JE.object


untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        |> (::) ( "ResourceId", data.resourceId |> JE.string )
        |> (::) ( "TagKeyList", data.tagKeyList |> JE.list JE.string )
        |> JE.object


untagResourceResponseEncoder : UntagResourceResponse -> JE.Value
untagResourceResponseEncoder data =
    []
        |> JE.object
