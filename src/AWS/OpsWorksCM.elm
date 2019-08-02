module AWS.OpsWorksCM exposing
    ( service
    , associateNode, createBackup, CreateBackupOptions, createServer, CreateServerOptions, deleteBackup, deleteServer, describeAccountAttributes, describeBackups, DescribeBackupsOptions, describeEvents, DescribeEventsOptions, describeNodeAssociationStatus, describeServers, DescribeServersOptions, disassociateNode, DisassociateNodeOptions, exportServerEngineAttribute, ExportServerEngineAttributeOptions, restoreServer, RestoreServerOptions, startMaintenance, StartMaintenanceOptions, updateServer, UpdateServerOptions, updateServerEngineAttributes, UpdateServerEngineAttributesOptions
    , AssociateNodeResponse, CreateBackupResponse, CreateServerResponse, DeleteBackupResponse, DeleteServerResponse, DescribeAccountAttributesResponse, DescribeBackupsResponse, DescribeEventsResponse, DescribeNodeAssociationStatusResponse, DescribeServersResponse, DisassociateNodeResponse, ExportServerEngineAttributeResponse, RestoreServerResponse, StartMaintenanceResponse, UpdateServerEngineAttributesResponse, UpdateServerResponse
    , AccountAttribute, Backup, EngineAttribute, Server, ServerEvent
    , BackupStatus(..), BackupType(..), MaintenanceStatus(..), NodeAssociationStatus(..), ServerStatus(..)
    )

{-| <fullname>AWS OpsWorks CM</fullname> <p>AWS OpsWorks for configuration management (CM) is a service that runs and manages configuration management servers. You can use AWS OpsWorks CM to create and manage AWS OpsWorks for Chef Automate and AWS OpsWorks for Puppet Enterprise servers, and add or remove nodes for the servers to manage.</p> <p> <b>Glossary of terms</b> </p> <ul> <li> <p> <b>Server</b>: A configuration management server that can be highly-available. The configuration management server runs on an Amazon Elastic Compute Cloud (EC2) instance, and may use various other AWS services, such as Amazon Relational Database Service (RDS) and Elastic Load Balancing. A server is a generic abstraction over the configuration manager that you want to use, much like Amazon RDS. In AWS OpsWorks CM, you do not start or stop servers. After you create servers, they continue to run until they are deleted.</p> </li> <li> <p> <b>Engine</b>: The engine is the specific configuration manager that you want to use. Valid values in this release include <code>ChefAutomate</code> and <code>Puppet</code>.</p> </li> <li> <p> <b>Backup</b>: This is an application-level backup of the data that the configuration manager stores. AWS OpsWorks CM creates an S3 bucket for backups when you launch the first server. A backup maintains a snapshot of a server's configuration-related attributes at the time the backup starts.</p> </li> <li> <p> <b>Events</b>: Events are always related to a server. Events are written during server creation, when health checks run, when backups are created, when system maintenance is performed, etc. When you delete a server, the server's events are also deleted.</p> </li> <li> <p> <b>Account attributes</b>: Every account has attributes that are assigned in the AWS OpsWorks CM database. These attributes store information about configuration limits (servers, backups, etc.) and your customer account. </p> </li> </ul> <p> <b>Endpoints</b> </p> <p>AWS OpsWorks CM supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Your servers can only be accessed or managed within the endpoint in which they are created.</p> <ul> <li> <p>opsworks-cm.us-east-1.amazonaws.com</p> </li> <li> <p>opsworks-cm.us-east-2.amazonaws.com</p> </li> <li> <p>opsworks-cm.us-west-1.amazonaws.com</p> </li> <li> <p>opsworks-cm.us-west-2.amazonaws.com</p> </li> <li> <p>opsworks-cm.ap-northeast-1.amazonaws.com</p> </li> <li> <p>opsworks-cm.ap-southeast-1.amazonaws.com</p> </li> <li> <p>opsworks-cm.ap-southeast-2.amazonaws.com</p> </li> <li> <p>opsworks-cm.eu-central-1.amazonaws.com</p> </li> <li> <p>opsworks-cm.eu-west-1.amazonaws.com</p> </li> </ul> <p> <b>Throttling limits</b> </p> <p>All API operations allow for five requests per second with a burst of 10 requests per second.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [associateNode](#associateNode)
  - [createBackup](#createBackup)
  - [CreateBackupOptions](#CreateBackupOptions)
  - [createServer](#createServer)
  - [CreateServerOptions](#CreateServerOptions)
  - [deleteBackup](#deleteBackup)
  - [deleteServer](#deleteServer)
  - [describeAccountAttributes](#describeAccountAttributes)
  - [describeBackups](#describeBackups)
  - [DescribeBackupsOptions](#DescribeBackupsOptions)
  - [describeEvents](#describeEvents)
  - [DescribeEventsOptions](#DescribeEventsOptions)
  - [describeNodeAssociationStatus](#describeNodeAssociationStatus)
  - [describeServers](#describeServers)
  - [DescribeServersOptions](#DescribeServersOptions)
  - [disassociateNode](#disassociateNode)
  - [DisassociateNodeOptions](#DisassociateNodeOptions)
  - [exportServerEngineAttribute](#exportServerEngineAttribute)
  - [ExportServerEngineAttributeOptions](#ExportServerEngineAttributeOptions)
  - [restoreServer](#restoreServer)
  - [RestoreServerOptions](#RestoreServerOptions)
  - [startMaintenance](#startMaintenance)
  - [StartMaintenanceOptions](#StartMaintenanceOptions)
  - [updateServer](#updateServer)
  - [UpdateServerOptions](#UpdateServerOptions)
  - [updateServerEngineAttributes](#updateServerEngineAttributes)
  - [UpdateServerEngineAttributesOptions](#UpdateServerEngineAttributesOptions)

@docs associateNode, createBackup, CreateBackupOptions, createServer, CreateServerOptions, deleteBackup, deleteServer, describeAccountAttributes, describeBackups, DescribeBackupsOptions, describeEvents, DescribeEventsOptions, describeNodeAssociationStatus, describeServers, DescribeServersOptions, disassociateNode, DisassociateNodeOptions, exportServerEngineAttribute, ExportServerEngineAttributeOptions, restoreServer, RestoreServerOptions, startMaintenance, StartMaintenanceOptions, updateServer, UpdateServerOptions, updateServerEngineAttributes, UpdateServerEngineAttributesOptions


## Responses

  - [AssociateNodeResponse](#AssociateNodeResponse)
  - [CreateBackupResponse](#CreateBackupResponse)
  - [CreateServerResponse](#CreateServerResponse)
  - [DeleteBackupResponse](#DeleteBackupResponse)
  - [DeleteServerResponse](#DeleteServerResponse)
  - [DescribeAccountAttributesResponse](#DescribeAccountAttributesResponse)
  - [DescribeBackupsResponse](#DescribeBackupsResponse)
  - [DescribeEventsResponse](#DescribeEventsResponse)
  - [DescribeNodeAssociationStatusResponse](#DescribeNodeAssociationStatusResponse)
  - [DescribeServersResponse](#DescribeServersResponse)
  - [DisassociateNodeResponse](#DisassociateNodeResponse)
  - [ExportServerEngineAttributeResponse](#ExportServerEngineAttributeResponse)
  - [RestoreServerResponse](#RestoreServerResponse)
  - [StartMaintenanceResponse](#StartMaintenanceResponse)
  - [UpdateServerEngineAttributesResponse](#UpdateServerEngineAttributesResponse)
  - [UpdateServerResponse](#UpdateServerResponse)

@docs AssociateNodeResponse, CreateBackupResponse, CreateServerResponse, DeleteBackupResponse, DeleteServerResponse, DescribeAccountAttributesResponse, DescribeBackupsResponse, DescribeEventsResponse, DescribeNodeAssociationStatusResponse, DescribeServersResponse, DisassociateNodeResponse, ExportServerEngineAttributeResponse, RestoreServerResponse, StartMaintenanceResponse, UpdateServerEngineAttributesResponse, UpdateServerResponse


## Records

  - [AccountAttribute](#AccountAttribute)
  - [Backup](#Backup)
  - [EngineAttribute](#EngineAttribute)
  - [Server](#Server)
  - [ServerEvent](#ServerEvent)

@docs AccountAttribute, Backup, EngineAttribute, Server, ServerEvent


## Unions

  - [BackupStatus](#BackupStatus)
  - [BackupType](#BackupType)
  - [MaintenanceStatus](#MaintenanceStatus)
  - [NodeAssociationStatus](#NodeAssociationStatus)
  - [ServerStatus](#ServerStatus)

@docs BackupStatus, BackupType, MaintenanceStatus, NodeAssociationStatus, ServerStatus

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
        "opsworks-cm"
        "2016-11-01"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setSigningName "opsworks-cm" >> AWS.Core.Service.setTargetPrefix "OpsWorksCM_V2016_11_01")



-- OPERATIONS


{-|

<p> Associates a new node with the server. For more information about how to disassociate a node, see <a>DisassociateNode</a>.</p> <p> On a Chef server: This command is an alternative to <code>knife bootstrap</code>.</p> <p> Example (Chef): <code>aws opsworks-cm associate-node --server-name <i>MyServer</i> --node-name <i>MyManagedNode</i> --engine-attributes "Name=<i>CHEF_ORGANIZATION</i>,Value=default" "Name=<i>CHEF_NODE_PUBLIC_KEY</i>,Value=<i>public-key-pem</i>"</code> </p> <p> On a Puppet server, this command is an alternative to the <code>puppet cert sign</code> command that signs a Puppet node CSR. </p> <p> Example (Chef): <code>aws opsworks-cm associate-node --server-name <i>MyServer</i> --node-name <i>MyManagedNode</i> --engine-attributes "Name=<i>PUPPET_NODE_CSR</i>,Value=<i>csr-pem</i>"</code> </p> <p> A node can can only be associated with servers that are in a <code>HEALTHY</code> state. Otherwise, an <code>InvalidStateException</code> is thrown. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. The AssociateNode API call can be integrated into Auto Scaling configurations, AWS Cloudformation templates, or the user data of a server's instance. </p>

**Required Parameters**

  - `serverName` **:** `String`
  - `nodeName` **:** `String`
  - `engineAttributes` **:** `(List EngineAttribute)`

-}
associateNode :
    String
    -> String
    -> List EngineAttribute
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateNodeResponse)
associateNode serverName nodeName engineAttributes =
    let
        requestInput =
            AssociateNodeRequest
                serverName
                nodeName
                engineAttributes
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> associateNodeRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AssociateNode"
            (AWS.Core.Decode.ResultDecoder "AssociateNodeResponse" associateNodeResponseDecoder)
        )


{-|

<p> Creates an application-level backup of a server. While the server is in the <code>BACKING_UP</code> state, the server cannot be changed, and no additional backup can be created. </p> <p> Backups can be created for servers in <code>RUNNING</code>, <code>HEALTHY</code>, and <code>UNHEALTHY</code> states. By default, you can create a maximum of 50 manual backups. </p> <p> This operation is asynchronous. </p> <p> A <code>LimitExceededException</code> is thrown when the maximum number of manual backups is reached. An <code>InvalidStateException</code> is thrown when the server is not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY. A <code>ResourceNotFoundException</code> is thrown when the server is not found. A <code>ValidationException</code> is thrown when parameters of the request are not valid. </p>

**Required Parameters**

  - `serverName` **:** `String`

-}
createBackup :
    String
    -> (CreateBackupOptions -> CreateBackupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateBackupResponse)
createBackup serverName setOptions =
    let
        requestInput =
            CreateBackupRequest
                serverName
                options.description

        options =
            setOptions (CreateBackupOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createBackupRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateBackup"
            (AWS.Core.Decode.ResultDecoder "CreateBackupResponse" createBackupResponseDecoder)
        )


{-| Options for a createBackup request
-}
type alias CreateBackupOptions =
    { description : Maybe String
    }


{-|

<p> Creates and immedately starts a new server. The server is ready to use when it is in the <code>HEALTHY</code> state. By default, you can create a maximum of 10 servers. </p> <p> This operation is asynchronous. </p> <p> A <code>LimitExceededException</code> is thrown when you have created the maximum number of servers (10). A <code>ResourceAlreadyExistsException</code> is thrown when a server with the same name already exists in the account. A <code>ResourceNotFoundException</code> is thrown when you specify a backup ID that is not valid or is for a backup that does not exist. A <code>ValidationException</code> is thrown when parameters of the request are not valid. </p> <p> If you do not specify a security group by adding the <code>SecurityGroupIds</code> parameter, AWS OpsWorks creates a new security group. </p> <p> <i>Chef Automate:</i> The default security group opens the Chef server to the world on TCP port 443. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22. </p> <p> <i>Puppet Enterprise:</i> The default security group opens TCP ports 22, 443, 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22. </p> <p>By default, your server is accessible from any IP address. We recommend that you update your security group rules to allow access from known IP addresses and address ranges only. To edit security group rules, open Security Groups in the navigation pane of the EC2 management console. </p>

**Required Parameters**

  - `serverName` **:** `String`
  - `instanceProfileArn` **:** `String`
  - `instanceType` **:** `String`
  - `serviceRoleArn` **:** `String`

-}
createServer :
    String
    -> String
    -> String
    -> String
    -> (CreateServerOptions -> CreateServerOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateServerResponse)
createServer serverName instanceProfileArn instanceType serviceRoleArn setOptions =
    let
        requestInput =
            CreateServerRequest
                options.associatePublicIpAddress
                options.disableAutomatedBackup
                options.engine
                options.engineModel
                options.engineVersion
                options.engineAttributes
                options.backupRetentionCount
                serverName
                instanceProfileArn
                instanceType
                options.keyPair
                options.preferredMaintenanceWindow
                options.preferredBackupWindow
                options.securityGroupIds
                serviceRoleArn
                options.subnetIds
                options.backupId

        options =
            setOptions (CreateServerOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createServerRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateServer"
            (AWS.Core.Decode.ResultDecoder "CreateServerResponse" createServerResponseDecoder)
        )


{-| Options for a createServer request
-}
type alias CreateServerOptions =
    { associatePublicIpAddress : Maybe Bool
    , disableAutomatedBackup : Maybe Bool
    , engine : Maybe String
    , engineModel : Maybe String
    , engineVersion : Maybe String
    , engineAttributes : Maybe (List EngineAttribute)
    , backupRetentionCount : Maybe Int
    , keyPair : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , preferredBackupWindow : Maybe String
    , securityGroupIds : Maybe (List String)
    , subnetIds : Maybe (List String)
    , backupId : Maybe String
    }


{-|

<p> Deletes a backup. You can delete both manual and automated backups. This operation is asynchronous. </p> <p> An <code>InvalidStateException</code> is thrown when a backup deletion is already in progress. A <code>ResourceNotFoundException</code> is thrown when the backup does not exist. A <code>ValidationException</code> is thrown when parameters of the request are not valid. </p>

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

<p> Deletes the server and the underlying AWS CloudFormation stacks (including the server's EC2 instance). When you run this command, the server state is updated to <code>DELETING</code>. After the server is deleted, it is no longer returned by <code>DescribeServer</code> requests. If the AWS CloudFormation stack cannot be deleted, the server cannot be deleted. </p> <p> This operation is asynchronous. </p> <p> An <code>InvalidStateException</code> is thrown when a server deletion is already in progress. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p> <p> </p>

**Required Parameters**

  - `serverName` **:** `String`

-}
deleteServer :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteServerResponse)
deleteServer serverName =
    let
        requestInput =
            DeleteServerRequest
                serverName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteServerRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteServer"
            (AWS.Core.Decode.ResultDecoder "DeleteServerResponse" deleteServerResponseDecoder)
        )


{-|

<p> Describes your OpsWorks-CM account attributes. </p> <p> This operation is synchronous. </p>

**Required Parameters**

-}
describeAccountAttributes : AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAccountAttributesResponse)
describeAccountAttributes =
    let
        requestInput =
            DescribeAccountAttributesRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeAccountAttributesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAccountAttributes"
            (AWS.Core.Decode.ResultDecoder "DescribeAccountAttributesResponse" describeAccountAttributesResponseDecoder)
        )


{-|

<p> Describes backups. The results are ordered by time, with newest backups first. If you do not specify a BackupId or ServerName, the command returns all backups. </p> <p> This operation is synchronous. </p> <p> A <code>ResourceNotFoundException</code> is thrown when the backup does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

**Required Parameters**

-}
describeBackups :
    (DescribeBackupsOptions -> DescribeBackupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeBackupsResponse)
describeBackups setOptions =
    let
        requestInput =
            DescribeBackupsRequest
                options.backupId
                options.serverName
                options.nextToken
                options.maxResults

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
    { backupId : Maybe String
    , serverName : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p> Describes events for a specified server. Results are ordered by time, with newest events first. </p> <p> This operation is synchronous. </p> <p> A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

**Required Parameters**

  - `serverName` **:** `String`

-}
describeEvents :
    String
    -> (DescribeEventsOptions -> DescribeEventsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEventsResponse)
describeEvents serverName setOptions =
    let
        requestInput =
            DescribeEventsRequest
                serverName
                options.nextToken
                options.maxResults

        options =
            setOptions (DescribeEventsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeEventsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeEvents"
            (AWS.Core.Decode.ResultDecoder "DescribeEventsResponse" describeEventsResponseDecoder)
        )


{-| Options for a describeEvents request
-}
type alias DescribeEventsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p> Returns the current status of an existing association or disassociation request. </p> <p> A <code>ResourceNotFoundException</code> is thrown when no recent association or disassociation request with the specified token is found, or when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

**Required Parameters**

  - `nodeAssociationStatusToken` **:** `String`
  - `serverName` **:** `String`

-}
describeNodeAssociationStatus :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeNodeAssociationStatusResponse)
describeNodeAssociationStatus nodeAssociationStatusToken serverName =
    let
        requestInput =
            DescribeNodeAssociationStatusRequest
                nodeAssociationStatusToken
                serverName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeNodeAssociationStatusRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeNodeAssociationStatus"
            (AWS.Core.Decode.ResultDecoder "DescribeNodeAssociationStatusResponse" describeNodeAssociationStatusResponseDecoder)
        )


{-|

<p> Lists all configuration management servers that are identified with your account. Only the stored results from Amazon DynamoDB are returned. AWS OpsWorks CM does not query other services. </p> <p> This operation is synchronous. </p> <p> A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

**Required Parameters**

-}
describeServers :
    (DescribeServersOptions -> DescribeServersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeServersResponse)
describeServers setOptions =
    let
        requestInput =
            DescribeServersRequest
                options.serverName
                options.nextToken
                options.maxResults

        options =
            setOptions (DescribeServersOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeServersRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeServers"
            (AWS.Core.Decode.ResultDecoder "DescribeServersResponse" describeServersResponseDecoder)
        )


{-| Options for a describeServers request
-}
type alias DescribeServersOptions =
    { serverName : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p> Disassociates a node from an AWS OpsWorks CM server, and removes the node from the server's managed nodes. After a node is disassociated, the node key pair is no longer valid for accessing the configuration manager's API. For more information about how to associate a node, see <a>AssociateNode</a>. </p> <p>A node can can only be disassociated from a server that is in a <code>HEALTHY</code> state. Otherwise, an <code>InvalidStateException</code> is thrown. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

**Required Parameters**

  - `serverName` **:** `String`
  - `nodeName` **:** `String`

-}
disassociateNode :
    String
    -> String
    -> (DisassociateNodeOptions -> DisassociateNodeOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateNodeResponse)
disassociateNode serverName nodeName setOptions =
    let
        requestInput =
            DisassociateNodeRequest
                serverName
                nodeName
                options.engineAttributes

        options =
            setOptions (DisassociateNodeOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> disassociateNodeRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DisassociateNode"
            (AWS.Core.Decode.ResultDecoder "DisassociateNodeResponse" disassociateNodeResponseDecoder)
        )


{-| Options for a disassociateNode request
-}
type alias DisassociateNodeOptions =
    { engineAttributes : Maybe (List EngineAttribute)
    }


{-|

<p> Exports a specified server engine attribute as a base64-encoded string. For example, you can export user data that you can use in EC2 to associate nodes with a server. </p> <p> This operation is synchronous. </p> <p> A <code>ValidationException</code> is raised when parameters of the request are not valid. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. An <code>InvalidStateException</code> is thrown when the server is in any of the following states: CREATING, TERMINATED, FAILED or DELETING. </p>

**Required Parameters**

  - `exportAttributeName` **:** `String`
  - `serverName` **:** `String`

-}
exportServerEngineAttribute :
    String
    -> String
    -> (ExportServerEngineAttributeOptions -> ExportServerEngineAttributeOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ExportServerEngineAttributeResponse)
exportServerEngineAttribute exportAttributeName serverName setOptions =
    let
        requestInput =
            ExportServerEngineAttributeRequest
                exportAttributeName
                serverName
                options.inputAttributes

        options =
            setOptions (ExportServerEngineAttributeOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> exportServerEngineAttributeRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ExportServerEngineAttribute"
            (AWS.Core.Decode.ResultDecoder "ExportServerEngineAttributeResponse" exportServerEngineAttributeResponseDecoder)
        )


{-| Options for a exportServerEngineAttribute request
-}
type alias ExportServerEngineAttributeOptions =
    { inputAttributes : Maybe (List EngineAttribute)
    }


{-|

<p> Restores a backup to a server that is in a <code>CONNECTION_LOST</code>, <code>HEALTHY</code>, <code>RUNNING</code>, <code>UNHEALTHY</code>, or <code>TERMINATED</code> state. When you run RestoreServer, the server's EC2 instance is deleted, and a new EC2 instance is configured. RestoreServer maintains the existing server endpoint, so configuration management of the server's client devices (nodes) should continue to work. </p> <p> This operation is asynchronous. </p> <p> An <code>InvalidStateException</code> is thrown when the server is not in a valid state. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

**Required Parameters**

  - `backupId` **:** `String`
  - `serverName` **:** `String`

-}
restoreServer :
    String
    -> String
    -> (RestoreServerOptions -> RestoreServerOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RestoreServerResponse)
restoreServer backupId serverName setOptions =
    let
        requestInput =
            RestoreServerRequest
                backupId
                serverName
                options.instanceType
                options.keyPair

        options =
            setOptions (RestoreServerOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> restoreServerRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RestoreServer"
            (AWS.Core.Decode.ResultDecoder "RestoreServerResponse" restoreServerResponseDecoder)
        )


{-| Options for a restoreServer request
-}
type alias RestoreServerOptions =
    { instanceType : Maybe String
    , keyPair : Maybe String
    }


{-|

<p> Manually starts server maintenance. This command can be useful if an earlier maintenance attempt failed, and the underlying cause of maintenance failure has been resolved. The server is in an <code>UNDER_MAINTENANCE</code> state while maintenance is in progress. </p> <p> Maintenance can only be started on servers in <code>HEALTHY</code> and <code>UNHEALTHY</code> states. Otherwise, an <code>InvalidStateException</code> is thrown. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

**Required Parameters**

  - `serverName` **:** `String`

-}
startMaintenance :
    String
    -> (StartMaintenanceOptions -> StartMaintenanceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartMaintenanceResponse)
startMaintenance serverName setOptions =
    let
        requestInput =
            StartMaintenanceRequest
                serverName
                options.engineAttributes

        options =
            setOptions (StartMaintenanceOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> startMaintenanceRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StartMaintenance"
            (AWS.Core.Decode.ResultDecoder "StartMaintenanceResponse" startMaintenanceResponseDecoder)
        )


{-| Options for a startMaintenance request
-}
type alias StartMaintenanceOptions =
    { engineAttributes : Maybe (List EngineAttribute)
    }


{-|

<p> Updates settings for a server. </p> <p> This operation is synchronous. </p>

**Required Parameters**

  - `serverName` **:** `String`

-}
updateServer :
    String
    -> (UpdateServerOptions -> UpdateServerOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateServerResponse)
updateServer serverName setOptions =
    let
        requestInput =
            UpdateServerRequest
                options.disableAutomatedBackup
                options.backupRetentionCount
                serverName
                options.preferredMaintenanceWindow
                options.preferredBackupWindow

        options =
            setOptions (UpdateServerOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateServerRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateServer"
            (AWS.Core.Decode.ResultDecoder "UpdateServerResponse" updateServerResponseDecoder)
        )


{-| Options for a updateServer request
-}
type alias UpdateServerOptions =
    { disableAutomatedBackup : Maybe Bool
    , backupRetentionCount : Maybe Int
    , preferredMaintenanceWindow : Maybe String
    , preferredBackupWindow : Maybe String
    }


{-|

<p> Updates engine-specific attributes on a specified server. The server enters the <code>MODIFYING</code> state when this operation is in progress. Only one update can occur at a time. You can use this command to reset a Chef server's public key (<code>CHEF_PIVOTAL_KEY</code>) or a Puppet server's admin password (<code>PUPPET_ADMIN_PASSWORD</code>). </p> <p> This operation is asynchronous. </p> <p> This operation can only be called for servers in <code>HEALTHY</code> or <code>UNHEALTHY</code> states. Otherwise, an <code>InvalidStateException</code> is raised. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid. </p>

**Required Parameters**

  - `serverName` **:** `String`
  - `attributeName` **:** `String`

-}
updateServerEngineAttributes :
    String
    -> String
    -> (UpdateServerEngineAttributesOptions -> UpdateServerEngineAttributesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateServerEngineAttributesResponse)
updateServerEngineAttributes serverName attributeName setOptions =
    let
        requestInput =
            UpdateServerEngineAttributesRequest
                serverName
                attributeName
                options.attributeValue

        options =
            setOptions (UpdateServerEngineAttributesOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateServerEngineAttributesRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateServerEngineAttributes"
            (AWS.Core.Decode.ResultDecoder "UpdateServerEngineAttributesResponse" updateServerEngineAttributesResponseDecoder)
        )


{-| Options for a updateServerEngineAttributes request
-}
type alias UpdateServerEngineAttributesOptions =
    { attributeValue : Maybe String
    }


{-|

<p>Stores account attributes. </p>

-}
type alias AccountAttribute =
    { name : Maybe String
    , maximum : Maybe Int
    , used : Maybe Int
    }


accountAttributeDecoder : JD.Decoder AccountAttribute
accountAttributeDecoder =
    JD.succeed AccountAttribute
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Maximum", "maximum" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Used", "used" ]
                JD.int
            )


{-| Type of HTTP response from associateNode
-}
type alias AssociateNodeResponse =
    { nodeAssociationStatusToken : Maybe String
    }


associateNodeResponseDecoder : JD.Decoder AssociateNodeResponse
associateNodeResponseDecoder =
    JD.succeed AssociateNodeResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeAssociationStatusToken", "nodeAssociationStatusToken" ]
                JD.string
            )


{-|

<p>Describes a single backup. </p>

-}
type alias Backup =
    { backupArn : Maybe String
    , backupId : Maybe String
    , backupType : Maybe BackupType
    , createdAt : Maybe Posix
    , description : Maybe String
    , engine : Maybe String
    , engineModel : Maybe String
    , engineVersion : Maybe String
    , instanceProfileArn : Maybe String
    , instanceType : Maybe String
    , keyPair : Maybe String
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , s3DataSize : Maybe Int
    , s3DataUrl : Maybe String
    , s3LogUrl : Maybe String
    , securityGroupIds : Maybe (List String)
    , serverName : Maybe String
    , serviceRoleArn : Maybe String
    , status : Maybe BackupStatus
    , statusDescription : Maybe String
    , subnetIds : Maybe (List String)
    , toolsVersion : Maybe String
    , userArn : Maybe String
    }


backupDecoder : JD.Decoder Backup
backupDecoder =
    JD.succeed Backup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BackupArn", "backupArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BackupId", "backupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BackupType", "backupType" ]
                backupTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreatedAt", "createdAt" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Engine", "engine" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineModel", "engineModel" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineVersion", "engineVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InstanceProfileArn", "instanceProfileArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InstanceType", "instanceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KeyPair", "keyPair" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredBackupWindow", "preferredBackupWindow" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredMaintenanceWindow", "preferredMaintenanceWindow" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3DataSize", "s3DataSize" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3DataUrl", "s3DataUrl" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "S3LogUrl", "s3LogUrl" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecurityGroupIds", "securityGroupIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerName", "serverName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceRoleArn", "serviceRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                backupStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StatusDescription", "statusDescription" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetIds", "subnetIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ToolsVersion", "toolsVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UserArn", "userArn" ]
                JD.string
            )


{-| One of

  - `BackupStatus_IN_PROGRESS`
  - `BackupStatus_OK`
  - `BackupStatus_FAILED`
  - `BackupStatus_DELETING`

-}
type BackupStatus
    = BackupStatus_IN_PROGRESS
    | BackupStatus_OK
    | BackupStatus_FAILED
    | BackupStatus_DELETING


backupStatusDecoder : JD.Decoder BackupStatus
backupStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IN_PROGRESS" ->
                        JD.succeed BackupStatus_IN_PROGRESS

                    "OK" ->
                        JD.succeed BackupStatus_OK

                    "FAILED" ->
                        JD.succeed BackupStatus_FAILED

                    "DELETING" ->
                        JD.succeed BackupStatus_DELETING

                    _ ->
                        JD.fail "bad thing"
            )


backupStatusToString : BackupStatus -> String
backupStatusToString val =
    case val of
        BackupStatus_IN_PROGRESS ->
            "IN_PROGRESS"

        BackupStatus_OK ->
            "OK"

        BackupStatus_FAILED ->
            "FAILED"

        BackupStatus_DELETING ->
            "DELETING"


{-| One of

  - `BackupType_AUTOMATED`
  - `BackupType_MANUAL`

-}
type BackupType
    = BackupType_AUTOMATED
    | BackupType_MANUAL


backupTypeDecoder : JD.Decoder BackupType
backupTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AUTOMATED" ->
                        JD.succeed BackupType_AUTOMATED

                    "MANUAL" ->
                        JD.succeed BackupType_MANUAL

                    _ ->
                        JD.fail "bad thing"
            )


backupTypeToString : BackupType -> String
backupTypeToString val =
    case val of
        BackupType_AUTOMATED ->
            "AUTOMATED"

        BackupType_MANUAL ->
            "MANUAL"


{-| Type of HTTP response from createBackup
-}
type alias CreateBackupResponse =
    { backup : Maybe Backup
    }


createBackupResponseDecoder : JD.Decoder CreateBackupResponse
createBackupResponseDecoder =
    JD.succeed CreateBackupResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Backup", "backup" ]
                backupDecoder
            )


{-| Type of HTTP response from createServer
-}
type alias CreateServerResponse =
    { server : Maybe Server
    }


createServerResponseDecoder : JD.Decoder CreateServerResponse
createServerResponseDecoder =
    JD.succeed CreateServerResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Server", "server" ]
                serverDecoder
            )


{-| Type of HTTP response from deleteBackup
-}
type alias DeleteBackupResponse =
    {}


deleteBackupResponseDecoder : JD.Decoder DeleteBackupResponse
deleteBackupResponseDecoder =
    JD.succeed DeleteBackupResponse


{-| Type of HTTP response from deleteServer
-}
type alias DeleteServerResponse =
    {}


deleteServerResponseDecoder : JD.Decoder DeleteServerResponse
deleteServerResponseDecoder =
    JD.succeed DeleteServerResponse


{-| Type of HTTP response from describeAccountAttributes
-}
type alias DescribeAccountAttributesResponse =
    { attributes : Maybe (List AccountAttribute)
    }


describeAccountAttributesResponseDecoder : JD.Decoder DescribeAccountAttributesResponse
describeAccountAttributesResponseDecoder =
    JD.succeed DescribeAccountAttributesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Attributes", "attributes" ]
                (JD.list accountAttributeDecoder)
            )


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


{-| Type of HTTP response from describeEvents
-}
type alias DescribeEventsResponse =
    { serverEvents : Maybe (List ServerEvent)
    , nextToken : Maybe String
    }


describeEventsResponseDecoder : JD.Decoder DescribeEventsResponse
describeEventsResponseDecoder =
    JD.succeed DescribeEventsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerEvents", "serverEvents" ]
                (JD.list serverEventDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from describeNodeAssociationStatus
-}
type alias DescribeNodeAssociationStatusResponse =
    { nodeAssociationStatus : Maybe NodeAssociationStatus
    , engineAttributes : Maybe (List EngineAttribute)
    }


describeNodeAssociationStatusResponseDecoder : JD.Decoder DescribeNodeAssociationStatusResponse
describeNodeAssociationStatusResponseDecoder =
    JD.succeed DescribeNodeAssociationStatusResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeAssociationStatus", "nodeAssociationStatus" ]
                nodeAssociationStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineAttributes", "engineAttributes" ]
                (JD.list engineAttributeDecoder)
            )


{-| Type of HTTP response from describeServers
-}
type alias DescribeServersResponse =
    { servers : Maybe (List Server)
    , nextToken : Maybe String
    }


describeServersResponseDecoder : JD.Decoder DescribeServersResponse
describeServersResponseDecoder =
    JD.succeed DescribeServersResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Servers", "servers" ]
                (JD.list serverDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from disassociateNode
-}
type alias DisassociateNodeResponse =
    { nodeAssociationStatusToken : Maybe String
    }


disassociateNodeResponseDecoder : JD.Decoder DisassociateNodeResponse
disassociateNodeResponseDecoder =
    JD.succeed DisassociateNodeResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeAssociationStatusToken", "nodeAssociationStatusToken" ]
                JD.string
            )


{-|

<p>A name and value pair that is specific to the engine of the server. </p>

-}
type alias EngineAttribute =
    { name : Maybe String
    , value : Maybe String
    }


engineAttributeDecoder : JD.Decoder EngineAttribute
engineAttributeDecoder =
    JD.succeed EngineAttribute
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


{-| Type of HTTP response from exportServerEngineAttribute
-}
type alias ExportServerEngineAttributeResponse =
    { engineAttribute : Maybe EngineAttribute
    , serverName : Maybe String
    }


exportServerEngineAttributeResponseDecoder : JD.Decoder ExportServerEngineAttributeResponse
exportServerEngineAttributeResponseDecoder =
    JD.succeed ExportServerEngineAttributeResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineAttribute", "engineAttribute" ]
                engineAttributeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerName", "serverName" ]
                JD.string
            )


{-| One of

  - `MaintenanceStatus_SUCCESS`
  - `MaintenanceStatus_FAILED`

-}
type MaintenanceStatus
    = MaintenanceStatus_SUCCESS
    | MaintenanceStatus_FAILED


maintenanceStatusDecoder : JD.Decoder MaintenanceStatus
maintenanceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCESS" ->
                        JD.succeed MaintenanceStatus_SUCCESS

                    "FAILED" ->
                        JD.succeed MaintenanceStatus_FAILED

                    _ ->
                        JD.fail "bad thing"
            )


maintenanceStatusToString : MaintenanceStatus -> String
maintenanceStatusToString val =
    case val of
        MaintenanceStatus_SUCCESS ->
            "SUCCESS"

        MaintenanceStatus_FAILED ->
            "FAILED"


{-| One of

  - `NodeAssociationStatus_SUCCESS`
  - `NodeAssociationStatus_FAILED`
  - `NodeAssociationStatus_IN_PROGRESS`

-}
type NodeAssociationStatus
    = NodeAssociationStatus_SUCCESS
    | NodeAssociationStatus_FAILED
    | NodeAssociationStatus_IN_PROGRESS


nodeAssociationStatusDecoder : JD.Decoder NodeAssociationStatus
nodeAssociationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCESS" ->
                        JD.succeed NodeAssociationStatus_SUCCESS

                    "FAILED" ->
                        JD.succeed NodeAssociationStatus_FAILED

                    "IN_PROGRESS" ->
                        JD.succeed NodeAssociationStatus_IN_PROGRESS

                    _ ->
                        JD.fail "bad thing"
            )


nodeAssociationStatusToString : NodeAssociationStatus -> String
nodeAssociationStatusToString val =
    case val of
        NodeAssociationStatus_SUCCESS ->
            "SUCCESS"

        NodeAssociationStatus_FAILED ->
            "FAILED"

        NodeAssociationStatus_IN_PROGRESS ->
            "IN_PROGRESS"


{-| Type of HTTP response from restoreServer
-}
type alias RestoreServerResponse =
    {}


restoreServerResponseDecoder : JD.Decoder RestoreServerResponse
restoreServerResponseDecoder =
    JD.succeed RestoreServerResponse


{-|

<p>Describes a configuration management server. </p>

-}
type alias Server =
    { associatePublicIpAddress : Maybe Bool
    , backupRetentionCount : Maybe Int
    , serverName : Maybe String
    , createdAt : Maybe Posix
    , cloudFormationStackArn : Maybe String
    , disableAutomatedBackup : Maybe Bool
    , endpoint : Maybe String
    , engine : Maybe String
    , engineModel : Maybe String
    , engineAttributes : Maybe (List EngineAttribute)
    , engineVersion : Maybe String
    , instanceProfileArn : Maybe String
    , instanceType : Maybe String
    , keyPair : Maybe String
    , maintenanceStatus : Maybe MaintenanceStatus
    , preferredMaintenanceWindow : Maybe String
    , preferredBackupWindow : Maybe String
    , securityGroupIds : Maybe (List String)
    , serviceRoleArn : Maybe String
    , status : Maybe ServerStatus
    , statusReason : Maybe String
    , subnetIds : Maybe (List String)
    , serverArn : Maybe String
    }


serverDecoder : JD.Decoder Server
serverDecoder =
    JD.succeed Server
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AssociatePublicIpAddress", "associatePublicIpAddress" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BackupRetentionCount", "backupRetentionCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerName", "serverName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreatedAt", "createdAt" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CloudFormationStackArn", "cloudFormationStackArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DisableAutomatedBackup", "disableAutomatedBackup" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Endpoint", "endpoint" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Engine", "engine" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineModel", "engineModel" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineAttributes", "engineAttributes" ]
                (JD.list engineAttributeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineVersion", "engineVersion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InstanceProfileArn", "instanceProfileArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InstanceType", "instanceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KeyPair", "keyPair" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaintenanceStatus", "maintenanceStatus" ]
                maintenanceStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredMaintenanceWindow", "preferredMaintenanceWindow" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredBackupWindow", "preferredBackupWindow" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecurityGroupIds", "securityGroupIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceRoleArn", "serviceRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                serverStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StatusReason", "statusReason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetIds", "subnetIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerArn", "serverArn" ]
                JD.string
            )


{-|

<p>An event that is related to the server, such as the start of maintenance or backup. </p>

-}
type alias ServerEvent =
    { createdAt : Maybe Posix
    , serverName : Maybe String
    , message : Maybe String
    , logUrl : Maybe String
    }


serverEventDecoder : JD.Decoder ServerEvent
serverEventDecoder =
    JD.succeed ServerEvent
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreatedAt", "createdAt" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerName", "serverName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LogUrl", "logUrl" ]
                JD.string
            )


{-| One of

  - `ServerStatus_BACKING_UP`
  - `ServerStatus_CONNECTION_LOST`
  - `ServerStatus_CREATING`
  - `ServerStatus_DELETING`
  - `ServerStatus_MODIFYING`
  - `ServerStatus_FAILED`
  - `ServerStatus_HEALTHY`
  - `ServerStatus_RUNNING`
  - `ServerStatus_RESTORING`
  - `ServerStatus_SETUP`
  - `ServerStatus_UNDER_MAINTENANCE`
  - `ServerStatus_UNHEALTHY`
  - `ServerStatus_TERMINATED`

-}
type ServerStatus
    = ServerStatus_BACKING_UP
    | ServerStatus_CONNECTION_LOST
    | ServerStatus_CREATING
    | ServerStatus_DELETING
    | ServerStatus_MODIFYING
    | ServerStatus_FAILED
    | ServerStatus_HEALTHY
    | ServerStatus_RUNNING
    | ServerStatus_RESTORING
    | ServerStatus_SETUP
    | ServerStatus_UNDER_MAINTENANCE
    | ServerStatus_UNHEALTHY
    | ServerStatus_TERMINATED


serverStatusDecoder : JD.Decoder ServerStatus
serverStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BACKING_UP" ->
                        JD.succeed ServerStatus_BACKING_UP

                    "CONNECTION_LOST" ->
                        JD.succeed ServerStatus_CONNECTION_LOST

                    "CREATING" ->
                        JD.succeed ServerStatus_CREATING

                    "DELETING" ->
                        JD.succeed ServerStatus_DELETING

                    "MODIFYING" ->
                        JD.succeed ServerStatus_MODIFYING

                    "FAILED" ->
                        JD.succeed ServerStatus_FAILED

                    "HEALTHY" ->
                        JD.succeed ServerStatus_HEALTHY

                    "RUNNING" ->
                        JD.succeed ServerStatus_RUNNING

                    "RESTORING" ->
                        JD.succeed ServerStatus_RESTORING

                    "SETUP" ->
                        JD.succeed ServerStatus_SETUP

                    "UNDER_MAINTENANCE" ->
                        JD.succeed ServerStatus_UNDER_MAINTENANCE

                    "UNHEALTHY" ->
                        JD.succeed ServerStatus_UNHEALTHY

                    "TERMINATED" ->
                        JD.succeed ServerStatus_TERMINATED

                    _ ->
                        JD.fail "bad thing"
            )


serverStatusToString : ServerStatus -> String
serverStatusToString val =
    case val of
        ServerStatus_BACKING_UP ->
            "BACKING_UP"

        ServerStatus_CONNECTION_LOST ->
            "CONNECTION_LOST"

        ServerStatus_CREATING ->
            "CREATING"

        ServerStatus_DELETING ->
            "DELETING"

        ServerStatus_MODIFYING ->
            "MODIFYING"

        ServerStatus_FAILED ->
            "FAILED"

        ServerStatus_HEALTHY ->
            "HEALTHY"

        ServerStatus_RUNNING ->
            "RUNNING"

        ServerStatus_RESTORING ->
            "RESTORING"

        ServerStatus_SETUP ->
            "SETUP"

        ServerStatus_UNDER_MAINTENANCE ->
            "UNDER_MAINTENANCE"

        ServerStatus_UNHEALTHY ->
            "UNHEALTHY"

        ServerStatus_TERMINATED ->
            "TERMINATED"


{-| Type of HTTP response from startMaintenance
-}
type alias StartMaintenanceResponse =
    { server : Maybe Server
    }


startMaintenanceResponseDecoder : JD.Decoder StartMaintenanceResponse
startMaintenanceResponseDecoder =
    JD.succeed StartMaintenanceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Server", "server" ]
                serverDecoder
            )


{-| Type of HTTP response from updateServerEngineAttributes
-}
type alias UpdateServerEngineAttributesResponse =
    { server : Maybe Server
    }


updateServerEngineAttributesResponseDecoder : JD.Decoder UpdateServerEngineAttributesResponse
updateServerEngineAttributesResponseDecoder =
    JD.succeed UpdateServerEngineAttributesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Server", "server" ]
                serverDecoder
            )


{-| Type of HTTP response from updateServer
-}
type alias UpdateServerResponse =
    { server : Maybe Server
    }


updateServerResponseDecoder : JD.Decoder UpdateServerResponse
updateServerResponseDecoder =
    JD.succeed UpdateServerResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Server", "server" ]
                serverDecoder
            )


{-| undefined
-}
type alias AssociateNodeRequest =
    { serverName : String
    , nodeName : String
    , engineAttributes : List EngineAttribute
    }


{-| undefined
-}
type alias CreateBackupRequest =
    { serverName : String
    , description : Maybe String
    }


{-| undefined
-}
type alias CreateServerRequest =
    { associatePublicIpAddress : Maybe Bool
    , disableAutomatedBackup : Maybe Bool
    , engine : Maybe String
    , engineModel : Maybe String
    , engineVersion : Maybe String
    , engineAttributes : Maybe (List EngineAttribute)
    , backupRetentionCount : Maybe Int
    , serverName : String
    , instanceProfileArn : String
    , instanceType : String
    , keyPair : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , preferredBackupWindow : Maybe String
    , securityGroupIds : Maybe (List String)
    , serviceRoleArn : String
    , subnetIds : Maybe (List String)
    , backupId : Maybe String
    }


{-| undefined
-}
type alias DeleteBackupRequest =
    { backupId : String
    }


{-| undefined
-}
type alias DeleteServerRequest =
    { serverName : String
    }


{-| undefined
-}
type alias DescribeAccountAttributesRequest =
    {}


{-| undefined
-}
type alias DescribeBackupsRequest =
    { backupId : Maybe String
    , serverName : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias DescribeEventsRequest =
    { serverName : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias DescribeNodeAssociationStatusRequest =
    { nodeAssociationStatusToken : String
    , serverName : String
    }


{-| undefined
-}
type alias DescribeServersRequest =
    { serverName : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias DisassociateNodeRequest =
    { serverName : String
    , nodeName : String
    , engineAttributes : Maybe (List EngineAttribute)
    }


{-| undefined
-}
type alias ExportServerEngineAttributeRequest =
    { exportAttributeName : String
    , serverName : String
    , inputAttributes : Maybe (List EngineAttribute)
    }


{-| undefined
-}
type alias RestoreServerRequest =
    { backupId : String
    , serverName : String
    , instanceType : Maybe String
    , keyPair : Maybe String
    }


{-| undefined
-}
type alias StartMaintenanceRequest =
    { serverName : String
    , engineAttributes : Maybe (List EngineAttribute)
    }


{-| undefined
-}
type alias UpdateServerEngineAttributesRequest =
    { serverName : String
    , attributeName : String
    , attributeValue : Maybe String
    }


{-| undefined
-}
type alias UpdateServerRequest =
    { disableAutomatedBackup : Maybe Bool
    , backupRetentionCount : Maybe Int
    , serverName : String
    , preferredMaintenanceWindow : Maybe String
    , preferredBackupWindow : Maybe String
    }


accountAttributeEncoder : AccountAttribute -> JE.Value
accountAttributeEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Maximum", data.maximum )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Used", data.used )
        |> JE.object


associateNodeRequestEncoder : AssociateNodeRequest -> JE.Value
associateNodeRequestEncoder data =
    []
        |> (::) ( "ServerName", data.serverName |> JE.string )
        |> (::) ( "NodeName", data.nodeName |> JE.string )
        |> (::) ( "EngineAttributes", data.engineAttributes |> JE.list engineAttributeEncoder )
        |> JE.object


associateNodeResponseEncoder : AssociateNodeResponse -> JE.Value
associateNodeResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NodeAssociationStatusToken", data.nodeAssociationStatusToken )
        |> JE.object


backupEncoder : Backup -> JE.Value
backupEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "BackupArn", data.backupArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "BackupId", data.backupId )
        |> AWS.Core.Encode.optionalMember
            (backupTypeToString >> JE.string)
            ( "BackupType", data.backupType )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreatedAt", data.createdAt )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Engine", data.engine )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineModel", data.engineModel )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineVersion", data.engineVersion )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "InstanceProfileArn", data.instanceProfileArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "InstanceType", data.instanceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KeyPair", data.keyPair )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredBackupWindow", data.preferredBackupWindow )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredMaintenanceWindow", data.preferredMaintenanceWindow )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "S3DataSize", data.s3DataSize )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "S3DataUrl", data.s3DataUrl )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "S3LogUrl", data.s3LogUrl )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SecurityGroupIds", data.securityGroupIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerName", data.serverName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServiceRoleArn", data.serviceRoleArn )
        |> AWS.Core.Encode.optionalMember
            (backupStatusToString >> JE.string)
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StatusDescription", data.statusDescription )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SubnetIds", data.subnetIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ToolsVersion", data.toolsVersion )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "UserArn", data.userArn )
        |> JE.object


createBackupRequestEncoder : CreateBackupRequest -> JE.Value
createBackupRequestEncoder data =
    []
        |> (::) ( "ServerName", data.serverName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> JE.object


createBackupResponseEncoder : CreateBackupResponse -> JE.Value
createBackupResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            backupEncoder
            ( "Backup", data.backup )
        |> JE.object


createServerRequestEncoder : CreateServerRequest -> JE.Value
createServerRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AssociatePublicIpAddress", data.associatePublicIpAddress )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DisableAutomatedBackup", data.disableAutomatedBackup )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Engine", data.engine )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineModel", data.engineModel )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineVersion", data.engineVersion )
        |> AWS.Core.Encode.optionalMember
            (JE.list engineAttributeEncoder)
            ( "EngineAttributes", data.engineAttributes )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "BackupRetentionCount", data.backupRetentionCount )
        |> (::) ( "ServerName", data.serverName |> JE.string )
        |> (::) ( "InstanceProfileArn", data.instanceProfileArn |> JE.string )
        |> (::) ( "InstanceType", data.instanceType |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KeyPair", data.keyPair )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredMaintenanceWindow", data.preferredMaintenanceWindow )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredBackupWindow", data.preferredBackupWindow )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SecurityGroupIds", data.securityGroupIds )
        |> (::) ( "ServiceRoleArn", data.serviceRoleArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SubnetIds", data.subnetIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "BackupId", data.backupId )
        |> JE.object


createServerResponseEncoder : CreateServerResponse -> JE.Value
createServerResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            serverEncoder
            ( "Server", data.server )
        |> JE.object


deleteBackupRequestEncoder : DeleteBackupRequest -> JE.Value
deleteBackupRequestEncoder data =
    []
        |> (::) ( "BackupId", data.backupId |> JE.string )
        |> JE.object


deleteBackupResponseEncoder : DeleteBackupResponse -> JE.Value
deleteBackupResponseEncoder data =
    []
        |> JE.object


deleteServerRequestEncoder : DeleteServerRequest -> JE.Value
deleteServerRequestEncoder data =
    []
        |> (::) ( "ServerName", data.serverName |> JE.string )
        |> JE.object


deleteServerResponseEncoder : DeleteServerResponse -> JE.Value
deleteServerResponseEncoder data =
    []
        |> JE.object


describeAccountAttributesRequestEncoder : DescribeAccountAttributesRequest -> JE.Value
describeAccountAttributesRequestEncoder data =
    []
        |> JE.object


describeAccountAttributesResponseEncoder : DescribeAccountAttributesResponse -> JE.Value
describeAccountAttributesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list accountAttributeEncoder)
            ( "Attributes", data.attributes )
        |> JE.object


describeBackupsRequestEncoder : DescribeBackupsRequest -> JE.Value
describeBackupsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "BackupId", data.backupId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerName", data.serverName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
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


describeEventsRequestEncoder : DescribeEventsRequest -> JE.Value
describeEventsRequestEncoder data =
    []
        |> (::) ( "ServerName", data.serverName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> JE.object


describeEventsResponseEncoder : DescribeEventsResponse -> JE.Value
describeEventsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list serverEventEncoder)
            ( "ServerEvents", data.serverEvents )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeNodeAssociationStatusRequestEncoder : DescribeNodeAssociationStatusRequest -> JE.Value
describeNodeAssociationStatusRequestEncoder data =
    []
        |> (::) ( "NodeAssociationStatusToken", data.nodeAssociationStatusToken |> JE.string )
        |> (::) ( "ServerName", data.serverName |> JE.string )
        |> JE.object


describeNodeAssociationStatusResponseEncoder : DescribeNodeAssociationStatusResponse -> JE.Value
describeNodeAssociationStatusResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (nodeAssociationStatusToString >> JE.string)
            ( "NodeAssociationStatus", data.nodeAssociationStatus )
        |> AWS.Core.Encode.optionalMember
            (JE.list engineAttributeEncoder)
            ( "EngineAttributes", data.engineAttributes )
        |> JE.object


describeServersRequestEncoder : DescribeServersRequest -> JE.Value
describeServersRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerName", data.serverName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> JE.object


describeServersResponseEncoder : DescribeServersResponse -> JE.Value
describeServersResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list serverEncoder)
            ( "Servers", data.servers )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


disassociateNodeRequestEncoder : DisassociateNodeRequest -> JE.Value
disassociateNodeRequestEncoder data =
    []
        |> (::) ( "ServerName", data.serverName |> JE.string )
        |> (::) ( "NodeName", data.nodeName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list engineAttributeEncoder)
            ( "EngineAttributes", data.engineAttributes )
        |> JE.object


disassociateNodeResponseEncoder : DisassociateNodeResponse -> JE.Value
disassociateNodeResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NodeAssociationStatusToken", data.nodeAssociationStatusToken )
        |> JE.object


engineAttributeEncoder : EngineAttribute -> JE.Value
engineAttributeEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Value", data.value )
        |> JE.object


exportServerEngineAttributeRequestEncoder : ExportServerEngineAttributeRequest -> JE.Value
exportServerEngineAttributeRequestEncoder data =
    []
        |> (::) ( "ExportAttributeName", data.exportAttributeName |> JE.string )
        |> (::) ( "ServerName", data.serverName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list engineAttributeEncoder)
            ( "InputAttributes", data.inputAttributes )
        |> JE.object


exportServerEngineAttributeResponseEncoder : ExportServerEngineAttributeResponse -> JE.Value
exportServerEngineAttributeResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            engineAttributeEncoder
            ( "EngineAttribute", data.engineAttribute )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerName", data.serverName )
        |> JE.object


restoreServerRequestEncoder : RestoreServerRequest -> JE.Value
restoreServerRequestEncoder data =
    []
        |> (::) ( "BackupId", data.backupId |> JE.string )
        |> (::) ( "ServerName", data.serverName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "InstanceType", data.instanceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KeyPair", data.keyPair )
        |> JE.object


restoreServerResponseEncoder : RestoreServerResponse -> JE.Value
restoreServerResponseEncoder data =
    []
        |> JE.object


serverEncoder : Server -> JE.Value
serverEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "AssociatePublicIpAddress", data.associatePublicIpAddress )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "BackupRetentionCount", data.backupRetentionCount )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerName", data.serverName )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreatedAt", data.createdAt )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CloudFormationStackArn", data.cloudFormationStackArn )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DisableAutomatedBackup", data.disableAutomatedBackup )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Endpoint", data.endpoint )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Engine", data.engine )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineModel", data.engineModel )
        |> AWS.Core.Encode.optionalMember
            (JE.list engineAttributeEncoder)
            ( "EngineAttributes", data.engineAttributes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "EngineVersion", data.engineVersion )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "InstanceProfileArn", data.instanceProfileArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "InstanceType", data.instanceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KeyPair", data.keyPair )
        |> AWS.Core.Encode.optionalMember
            (maintenanceStatusToString >> JE.string)
            ( "MaintenanceStatus", data.maintenanceStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredMaintenanceWindow", data.preferredMaintenanceWindow )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredBackupWindow", data.preferredBackupWindow )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SecurityGroupIds", data.securityGroupIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServiceRoleArn", data.serviceRoleArn )
        |> AWS.Core.Encode.optionalMember
            (serverStatusToString >> JE.string)
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StatusReason", data.statusReason )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SubnetIds", data.subnetIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerArn", data.serverArn )
        |> JE.object


serverEventEncoder : ServerEvent -> JE.Value
serverEventEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreatedAt", data.createdAt )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ServerName", data.serverName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Message", data.message )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LogUrl", data.logUrl )
        |> JE.object


startMaintenanceRequestEncoder : StartMaintenanceRequest -> JE.Value
startMaintenanceRequestEncoder data =
    []
        |> (::) ( "ServerName", data.serverName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list engineAttributeEncoder)
            ( "EngineAttributes", data.engineAttributes )
        |> JE.object


startMaintenanceResponseEncoder : StartMaintenanceResponse -> JE.Value
startMaintenanceResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            serverEncoder
            ( "Server", data.server )
        |> JE.object


updateServerEngineAttributesRequestEncoder : UpdateServerEngineAttributesRequest -> JE.Value
updateServerEngineAttributesRequestEncoder data =
    []
        |> (::) ( "ServerName", data.serverName |> JE.string )
        |> (::) ( "AttributeName", data.attributeName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AttributeValue", data.attributeValue )
        |> JE.object


updateServerEngineAttributesResponseEncoder : UpdateServerEngineAttributesResponse -> JE.Value
updateServerEngineAttributesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            serverEncoder
            ( "Server", data.server )
        |> JE.object


updateServerRequestEncoder : UpdateServerRequest -> JE.Value
updateServerRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "DisableAutomatedBackup", data.disableAutomatedBackup )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "BackupRetentionCount", data.backupRetentionCount )
        |> (::) ( "ServerName", data.serverName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredMaintenanceWindow", data.preferredMaintenanceWindow )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredBackupWindow", data.preferredBackupWindow )
        |> JE.object


updateServerResponseEncoder : UpdateServerResponse -> JE.Value
updateServerResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            serverEncoder
            ( "Server", data.server )
        |> JE.object
