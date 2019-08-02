module AWS.DAX exposing
    ( service
    , createCluster, CreateClusterOptions, createParameterGroup, CreateParameterGroupOptions, createSubnetGroup, CreateSubnetGroupOptions, decreaseReplicationFactor, DecreaseReplicationFactorOptions, deleteCluster, deleteParameterGroup, deleteSubnetGroup, describeClusters, DescribeClustersOptions, describeDefaultParameters, DescribeDefaultParametersOptions, describeEvents, DescribeEventsOptions, describeParameterGroups, DescribeParameterGroupsOptions, describeParameters, DescribeParametersOptions, describeSubnetGroups, DescribeSubnetGroupsOptions, increaseReplicationFactor, IncreaseReplicationFactorOptions, listTags, ListTagsOptions, rebootNode, tagResource, untagResource, updateCluster, UpdateClusterOptions, updateParameterGroup, updateSubnetGroup, UpdateSubnetGroupOptions
    , CreateClusterResponse, CreateParameterGroupResponse, CreateSubnetGroupResponse, DecreaseReplicationFactorResponse, DeleteClusterResponse, DeleteParameterGroupResponse, DeleteSubnetGroupResponse, DescribeClustersResponse, DescribeDefaultParametersResponse, DescribeEventsResponse, DescribeParameterGroupsResponse, DescribeParametersResponse, DescribeSubnetGroupsResponse, IncreaseReplicationFactorResponse, ListTagsResponse, RebootNodeResponse, TagResourceResponse, UntagResourceResponse, UpdateClusterResponse, UpdateParameterGroupResponse, UpdateSubnetGroupResponse
    , Cluster, Endpoint, Event, Node, NodeTypeSpecificValue, NotificationConfiguration, Parameter, ParameterGroup, ParameterGroupStatus, ParameterNameValue, SSEDescription, SSESpecification, SecurityGroupMembership, Subnet, SubnetGroup, Tag
    , ChangeType(..), IsModifiable(..), ParameterType(..), SSEStatus(..), SourceType(..)
    )

{-|

<p>DAX is a managed caching service engineered for Amazon DynamoDB. DAX dramatically speeds up database reads by caching frequently-accessed data from DynamoDB, so applications can access that data with sub-millisecond latency. You can create a DAX cluster easily, using the AWS Management Console. With a few simple modifications to your code, your application can begin taking advantage of the DAX cluster and realize significant improvements in read performance.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [createCluster](#createCluster)
  - [CreateClusterOptions](#CreateClusterOptions)
  - [createParameterGroup](#createParameterGroup)
  - [CreateParameterGroupOptions](#CreateParameterGroupOptions)
  - [createSubnetGroup](#createSubnetGroup)
  - [CreateSubnetGroupOptions](#CreateSubnetGroupOptions)
  - [decreaseReplicationFactor](#decreaseReplicationFactor)
  - [DecreaseReplicationFactorOptions](#DecreaseReplicationFactorOptions)
  - [deleteCluster](#deleteCluster)
  - [deleteParameterGroup](#deleteParameterGroup)
  - [deleteSubnetGroup](#deleteSubnetGroup)
  - [describeClusters](#describeClusters)
  - [DescribeClustersOptions](#DescribeClustersOptions)
  - [describeDefaultParameters](#describeDefaultParameters)
  - [DescribeDefaultParametersOptions](#DescribeDefaultParametersOptions)
  - [describeEvents](#describeEvents)
  - [DescribeEventsOptions](#DescribeEventsOptions)
  - [describeParameterGroups](#describeParameterGroups)
  - [DescribeParameterGroupsOptions](#DescribeParameterGroupsOptions)
  - [describeParameters](#describeParameters)
  - [DescribeParametersOptions](#DescribeParametersOptions)
  - [describeSubnetGroups](#describeSubnetGroups)
  - [DescribeSubnetGroupsOptions](#DescribeSubnetGroupsOptions)
  - [increaseReplicationFactor](#increaseReplicationFactor)
  - [IncreaseReplicationFactorOptions](#IncreaseReplicationFactorOptions)
  - [listTags](#listTags)
  - [ListTagsOptions](#ListTagsOptions)
  - [rebootNode](#rebootNode)
  - [tagResource](#tagResource)
  - [untagResource](#untagResource)
  - [updateCluster](#updateCluster)
  - [UpdateClusterOptions](#UpdateClusterOptions)
  - [updateParameterGroup](#updateParameterGroup)
  - [updateSubnetGroup](#updateSubnetGroup)
  - [UpdateSubnetGroupOptions](#UpdateSubnetGroupOptions)

@docs createCluster, CreateClusterOptions, createParameterGroup, CreateParameterGroupOptions, createSubnetGroup, CreateSubnetGroupOptions, decreaseReplicationFactor, DecreaseReplicationFactorOptions, deleteCluster, deleteParameterGroup, deleteSubnetGroup, describeClusters, DescribeClustersOptions, describeDefaultParameters, DescribeDefaultParametersOptions, describeEvents, DescribeEventsOptions, describeParameterGroups, DescribeParameterGroupsOptions, describeParameters, DescribeParametersOptions, describeSubnetGroups, DescribeSubnetGroupsOptions, increaseReplicationFactor, IncreaseReplicationFactorOptions, listTags, ListTagsOptions, rebootNode, tagResource, untagResource, updateCluster, UpdateClusterOptions, updateParameterGroup, updateSubnetGroup, UpdateSubnetGroupOptions


## Responses

  - [CreateClusterResponse](#CreateClusterResponse)
  - [CreateParameterGroupResponse](#CreateParameterGroupResponse)
  - [CreateSubnetGroupResponse](#CreateSubnetGroupResponse)
  - [DecreaseReplicationFactorResponse](#DecreaseReplicationFactorResponse)
  - [DeleteClusterResponse](#DeleteClusterResponse)
  - [DeleteParameterGroupResponse](#DeleteParameterGroupResponse)
  - [DeleteSubnetGroupResponse](#DeleteSubnetGroupResponse)
  - [DescribeClustersResponse](#DescribeClustersResponse)
  - [DescribeDefaultParametersResponse](#DescribeDefaultParametersResponse)
  - [DescribeEventsResponse](#DescribeEventsResponse)
  - [DescribeParameterGroupsResponse](#DescribeParameterGroupsResponse)
  - [DescribeParametersResponse](#DescribeParametersResponse)
  - [DescribeSubnetGroupsResponse](#DescribeSubnetGroupsResponse)
  - [IncreaseReplicationFactorResponse](#IncreaseReplicationFactorResponse)
  - [ListTagsResponse](#ListTagsResponse)
  - [RebootNodeResponse](#RebootNodeResponse)
  - [TagResourceResponse](#TagResourceResponse)
  - [UntagResourceResponse](#UntagResourceResponse)
  - [UpdateClusterResponse](#UpdateClusterResponse)
  - [UpdateParameterGroupResponse](#UpdateParameterGroupResponse)
  - [UpdateSubnetGroupResponse](#UpdateSubnetGroupResponse)

@docs CreateClusterResponse, CreateParameterGroupResponse, CreateSubnetGroupResponse, DecreaseReplicationFactorResponse, DeleteClusterResponse, DeleteParameterGroupResponse, DeleteSubnetGroupResponse, DescribeClustersResponse, DescribeDefaultParametersResponse, DescribeEventsResponse, DescribeParameterGroupsResponse, DescribeParametersResponse, DescribeSubnetGroupsResponse, IncreaseReplicationFactorResponse, ListTagsResponse, RebootNodeResponse, TagResourceResponse, UntagResourceResponse, UpdateClusterResponse, UpdateParameterGroupResponse, UpdateSubnetGroupResponse


## Records

  - [Cluster](#Cluster)
  - [Endpoint](#Endpoint)
  - [Event](#Event)
  - [Node](#Node)
  - [NodeTypeSpecificValue](#NodeTypeSpecificValue)
  - [NotificationConfiguration](#NotificationConfiguration)
  - [Parameter](#Parameter)
  - [ParameterGroup](#ParameterGroup)
  - [ParameterGroupStatus](#ParameterGroupStatus)
  - [ParameterNameValue](#ParameterNameValue)
  - [SSEDescription](#SSEDescription)
  - [SSESpecification](#SSESpecification)
  - [SecurityGroupMembership](#SecurityGroupMembership)
  - [Subnet](#Subnet)
  - [SubnetGroup](#SubnetGroup)
  - [Tag](#Tag)

@docs Cluster, Endpoint, Event, Node, NodeTypeSpecificValue, NotificationConfiguration, Parameter, ParameterGroup, ParameterGroupStatus, ParameterNameValue, SSEDescription, SSESpecification, SecurityGroupMembership, Subnet, SubnetGroup, Tag


## Unions

  - [ChangeType](#ChangeType)
  - [IsModifiable](#IsModifiable)
  - [ParameterType](#ParameterType)
  - [SSEStatus](#SSEStatus)
  - [SourceType](#SourceType)

@docs ChangeType, IsModifiable, ParameterType, SSEStatus, SourceType

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
        "dax"
        "2017-04-19"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AmazonDAXV3")



-- OPERATIONS


{-|

<p>Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.</p>

**Required Parameters**

  - `clusterName` **:** `String`
  - `nodeType` **:** `String`
  - `replicationFactor` **:** `Int`
  - `iamRoleArn` **:** `String`

-}
createCluster :
    String
    -> String
    -> Int
    -> String
    -> (CreateClusterOptions -> CreateClusterOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateClusterResponse)
createCluster clusterName nodeType replicationFactor iamRoleArn setOptions =
    let
        requestInput =
            CreateClusterRequest
                clusterName
                nodeType
                options.description
                replicationFactor
                options.availabilityZones
                options.subnetGroupName
                options.securityGroupIds
                options.preferredMaintenanceWindow
                options.notificationTopicArn
                iamRoleArn
                options.parameterGroupName
                options.tags
                options.sSESpecification

        options =
            setOptions (CreateClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
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
    { description : Maybe String
    , availabilityZones : Maybe (List String)
    , subnetGroupName : Maybe String
    , securityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , notificationTopicArn : Maybe String
    , parameterGroupName : Maybe String
    , tags : Maybe (List Tag)
    , sSESpecification : Maybe SSESpecification
    }


{-|

<p>Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.</p>

**Required Parameters**

  - `parameterGroupName` **:** `String`

-}
createParameterGroup :
    String
    -> (CreateParameterGroupOptions -> CreateParameterGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateParameterGroupResponse)
createParameterGroup parameterGroupName setOptions =
    let
        requestInput =
            CreateParameterGroupRequest
                parameterGroupName
                options.description

        options =
            setOptions (CreateParameterGroupOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createParameterGroupRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateParameterGroup"
            (AWS.Core.Decode.ResultDecoder "CreateParameterGroupResponse" createParameterGroupResponseDecoder)
        )


{-| Options for a createParameterGroup request
-}
type alias CreateParameterGroupOptions =
    { description : Maybe String
    }


{-|

<p>Creates a new subnet group.</p>

**Required Parameters**

  - `subnetGroupName` **:** `String`
  - `subnetIds` **:** `(List String)`

-}
createSubnetGroup :
    String
    -> List String
    -> (CreateSubnetGroupOptions -> CreateSubnetGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSubnetGroupResponse)
createSubnetGroup subnetGroupName subnetIds setOptions =
    let
        requestInput =
            CreateSubnetGroupRequest
                subnetGroupName
                options.description
                subnetIds

        options =
            setOptions (CreateSubnetGroupOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createSubnetGroupRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateSubnetGroup"
            (AWS.Core.Decode.ResultDecoder "CreateSubnetGroupResponse" createSubnetGroupResponseDecoder)
        )


{-| Options for a createSubnetGroup request
-}
type alias CreateSubnetGroupOptions =
    { description : Maybe String
    }


{-|

<p>Removes one or more nodes from a DAX cluster.</p> <note> <p>You cannot use <code>DecreaseReplicationFactor</code> to remove the last node in a DAX cluster. If you need to do this, use <code>DeleteCluster</code> instead.</p> </note>

**Required Parameters**

  - `clusterName` **:** `String`
  - `newReplicationFactor` **:** `Int`

-}
decreaseReplicationFactor :
    String
    -> Int
    -> (DecreaseReplicationFactorOptions -> DecreaseReplicationFactorOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DecreaseReplicationFactorResponse)
decreaseReplicationFactor clusterName newReplicationFactor setOptions =
    let
        requestInput =
            DecreaseReplicationFactorRequest
                clusterName
                newReplicationFactor
                options.availabilityZones
                options.nodeIdsToRemove

        options =
            setOptions (DecreaseReplicationFactorOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> decreaseReplicationFactorRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DecreaseReplicationFactor"
            (AWS.Core.Decode.ResultDecoder "DecreaseReplicationFactorResponse" decreaseReplicationFactorResponseDecoder)
        )


{-| Options for a decreaseReplicationFactor request
-}
type alias DecreaseReplicationFactorOptions =
    { availabilityZones : Maybe (List String)
    , nodeIdsToRemove : Maybe (List String)
    }


{-|

<p>Deletes a previously provisioned DAX cluster. <i>DeleteCluster</i> deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.</p>

**Required Parameters**

  - `clusterName` **:** `String`

-}
deleteCluster :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteClusterResponse)
deleteCluster clusterName =
    let
        requestInput =
            DeleteClusterRequest
                clusterName
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

<p>Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.</p>

**Required Parameters**

  - `parameterGroupName` **:** `String`

-}
deleteParameterGroup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteParameterGroupResponse)
deleteParameterGroup parameterGroupName =
    let
        requestInput =
            DeleteParameterGroupRequest
                parameterGroupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteParameterGroupRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteParameterGroup"
            (AWS.Core.Decode.ResultDecoder "DeleteParameterGroupResponse" deleteParameterGroupResponseDecoder)
        )


{-|

<p>Deletes a subnet group.</p> <note> <p>You cannot delete a subnet group if it is associated with any DAX clusters.</p> </note>

**Required Parameters**

  - `subnetGroupName` **:** `String`

-}
deleteSubnetGroup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteSubnetGroupResponse)
deleteSubnetGroup subnetGroupName =
    let
        requestInput =
            DeleteSubnetGroupRequest
                subnetGroupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteSubnetGroupRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteSubnetGroup"
            (AWS.Core.Decode.ResultDecoder "DeleteSubnetGroupResponse" deleteSubnetGroupResponseDecoder)
        )


{-|

<p>Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied.</p> <p>If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned.</p> <p>If the cluster is in the DELETING state, only cluster level information will be displayed.</p> <p>If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is <i>available</i>, the cluster is ready for use.</p> <p>If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.</p>

**Required Parameters**

-}
describeClusters :
    (DescribeClustersOptions -> DescribeClustersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeClustersResponse)
describeClusters setOptions =
    let
        requestInput =
            DescribeClustersRequest
                options.clusterNames
                options.maxResults
                options.nextToken

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
    { clusterNames : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns the default system parameter information for the DAX caching software.</p>

**Required Parameters**

-}
describeDefaultParameters :
    (DescribeDefaultParametersOptions -> DescribeDefaultParametersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDefaultParametersResponse)
describeDefaultParameters setOptions =
    let
        requestInput =
            DescribeDefaultParametersRequest
                options.maxResults
                options.nextToken

        options =
            setOptions (DescribeDefaultParametersOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeDefaultParametersRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeDefaultParameters"
            (AWS.Core.Decode.ResultDecoder "DescribeDefaultParametersResponse" describeDefaultParametersResponseDecoder)
        )


{-| Options for a describeDefaultParameters request
-}
type alias DescribeDefaultParametersOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter.</p> <p>By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.</p>

**Required Parameters**

-}
describeEvents :
    (DescribeEventsOptions -> DescribeEventsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEventsResponse)
describeEvents setOptions =
    let
        requestInput =
            DescribeEventsRequest
                options.sourceName
                options.sourceType
                options.startTime
                options.endTime
                options.duration
                options.maxResults
                options.nextToken

        options =
            setOptions (DescribeEventsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
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
    { sourceName : Maybe String
    , sourceType : Maybe SourceType
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , duration : Maybe Int
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.</p>

**Required Parameters**

-}
describeParameterGroups :
    (DescribeParameterGroupsOptions -> DescribeParameterGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeParameterGroupsResponse)
describeParameterGroups setOptions =
    let
        requestInput =
            DescribeParameterGroupsRequest
                options.parameterGroupNames
                options.maxResults
                options.nextToken

        options =
            setOptions (DescribeParameterGroupsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeParameterGroupsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeParameterGroups"
            (AWS.Core.Decode.ResultDecoder "DescribeParameterGroupsResponse" describeParameterGroupsResponseDecoder)
        )


{-| Options for a describeParameterGroups request
-}
type alias DescribeParameterGroupsOptions =
    { parameterGroupNames : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns the detailed parameter list for a particular parameter group.</p>

**Required Parameters**

  - `parameterGroupName` **:** `String`

-}
describeParameters :
    String
    -> (DescribeParametersOptions -> DescribeParametersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeParametersResponse)
describeParameters parameterGroupName setOptions =
    let
        requestInput =
            DescribeParametersRequest
                parameterGroupName
                options.source
                options.maxResults
                options.nextToken

        options =
            setOptions (DescribeParametersOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeParametersRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeParameters"
            (AWS.Core.Decode.ResultDecoder "DescribeParametersResponse" describeParametersResponseDecoder)
        )


{-| Options for a describeParameters request
-}
type alias DescribeParametersOptions =
    { source : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.</p>

**Required Parameters**

-}
describeSubnetGroups :
    (DescribeSubnetGroupsOptions -> DescribeSubnetGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSubnetGroupsResponse)
describeSubnetGroups setOptions =
    let
        requestInput =
            DescribeSubnetGroupsRequest
                options.subnetGroupNames
                options.maxResults
                options.nextToken

        options =
            setOptions (DescribeSubnetGroupsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeSubnetGroupsRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeSubnetGroups"
            (AWS.Core.Decode.ResultDecoder "DescribeSubnetGroupsResponse" describeSubnetGroupsResponseDecoder)
        )


{-| Options for a describeSubnetGroups request
-}
type alias DescribeSubnetGroupsOptions =
    { subnetGroupNames : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Adds one or more nodes to a DAX cluster.</p>

**Required Parameters**

  - `clusterName` **:** `String`
  - `newReplicationFactor` **:** `Int`

-}
increaseReplicationFactor :
    String
    -> Int
    -> (IncreaseReplicationFactorOptions -> IncreaseReplicationFactorOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IncreaseReplicationFactorResponse)
increaseReplicationFactor clusterName newReplicationFactor setOptions =
    let
        requestInput =
            IncreaseReplicationFactorRequest
                clusterName
                newReplicationFactor
                options.availabilityZones

        options =
            setOptions (IncreaseReplicationFactorOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> increaseReplicationFactorRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "IncreaseReplicationFactor"
            (AWS.Core.Decode.ResultDecoder "IncreaseReplicationFactorResponse" increaseReplicationFactorResponseDecoder)
        )


{-| Options for a increaseReplicationFactor request
-}
type alias IncreaseReplicationFactorOptions =
    { availabilityZones : Maybe (List String)
    }


{-|

<p>List all of the tags for a DAX cluster. You can call <code>ListTags</code> up to 10 times per second, per account.</p>

**Required Parameters**

  - `resourceName` **:** `String`

-}
listTags :
    String
    -> (ListTagsOptions -> ListTagsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsResponse)
listTags resourceName setOptions =
    let
        requestInput =
            ListTagsRequest
                resourceName
                options.nextToken

        options =
            setOptions (ListTagsOptions Nothing)
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
    }


{-|

<p>Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.</p>

**Required Parameters**

  - `clusterName` **:** `String`
  - `nodeId` **:** `String`

-}
rebootNode :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RebootNodeResponse)
rebootNode clusterName nodeId =
    let
        requestInput =
            RebootNodeRequest
                clusterName
                nodeId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> rebootNodeRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RebootNode"
            (AWS.Core.Decode.ResultDecoder "RebootNodeResponse" rebootNodeResponseDecoder)
        )


{-|

<p>Associates a set of tags with a DAX resource. You can call <code>TagResource</code> up to 5 times per second, per account. </p>

**Required Parameters**

  - `resourceName` **:** `String`
  - `tags` **:** `(List Tag)`

-}
tagResource :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceResponse)
tagResource resourceName tags =
    let
        requestInput =
            TagResourceRequest
                resourceName
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


{-|

<p>Removes the association of tags from a DAX resource. You can call <code>UntagResource</code> up to 5 times per second, per account. </p>

**Required Parameters**

  - `resourceName` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
untagResource :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceResponse)
untagResource resourceName tagKeys =
    let
        requestInput =
            UntagResourceRequest
                resourceName
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


{-|

<p>Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.</p>

**Required Parameters**

  - `clusterName` **:** `String`

-}
updateCluster :
    String
    -> (UpdateClusterOptions -> UpdateClusterOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateClusterResponse)
updateCluster clusterName setOptions =
    let
        requestInput =
            UpdateClusterRequest
                clusterName
                options.description
                options.preferredMaintenanceWindow
                options.notificationTopicArn
                options.notificationTopicStatus
                options.parameterGroupName
                options.securityGroupIds

        options =
            setOptions (UpdateClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateClusterRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateCluster"
            (AWS.Core.Decode.ResultDecoder "UpdateClusterResponse" updateClusterResponseDecoder)
        )


{-| Options for a updateCluster request
-}
type alias UpdateClusterOptions =
    { description : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , notificationTopicArn : Maybe String
    , notificationTopicStatus : Maybe String
    , parameterGroupName : Maybe String
    , securityGroupIds : Maybe (List String)
    }


{-|

<p>Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.</p>

**Required Parameters**

  - `parameterGroupName` **:** `String`
  - `parameterNameValues` **:** `(List ParameterNameValue)`

-}
updateParameterGroup :
    String
    -> List ParameterNameValue
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateParameterGroupResponse)
updateParameterGroup parameterGroupName parameterNameValues =
    let
        requestInput =
            UpdateParameterGroupRequest
                parameterGroupName
                parameterNameValues
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateParameterGroupRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateParameterGroup"
            (AWS.Core.Decode.ResultDecoder "UpdateParameterGroupResponse" updateParameterGroupResponseDecoder)
        )


{-|

<p>Modifies an existing subnet group.</p>

**Required Parameters**

  - `subnetGroupName` **:** `String`

-}
updateSubnetGroup :
    String
    -> (UpdateSubnetGroupOptions -> UpdateSubnetGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateSubnetGroupResponse)
updateSubnetGroup subnetGroupName setOptions =
    let
        requestInput =
            UpdateSubnetGroupRequest
                subnetGroupName
                options.description
                options.subnetIds

        options =
            setOptions (UpdateSubnetGroupOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateSubnetGroupRequestEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateSubnetGroup"
            (AWS.Core.Decode.ResultDecoder "UpdateSubnetGroupResponse" updateSubnetGroupResponseDecoder)
        )


{-| Options for a updateSubnetGroup request
-}
type alias UpdateSubnetGroupOptions =
    { description : Maybe String
    , subnetIds : Maybe (List String)
    }


{-| One of

  - `ChangeType_IMMEDIATE`
  - `ChangeType_REQUIRES_REBOOT`

-}
type ChangeType
    = ChangeType_IMMEDIATE
    | ChangeType_REQUIRES_REBOOT


changeTypeDecoder : JD.Decoder ChangeType
changeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IMMEDIATE" ->
                        JD.succeed ChangeType_IMMEDIATE

                    "REQUIRES_REBOOT" ->
                        JD.succeed ChangeType_REQUIRES_REBOOT

                    _ ->
                        JD.fail "bad thing"
            )


changeTypeToString : ChangeType -> String
changeTypeToString val =
    case val of
        ChangeType_IMMEDIATE ->
            "IMMEDIATE"

        ChangeType_REQUIRES_REBOOT ->
            "REQUIRES_REBOOT"


{-|

<p>Contains all of the attributes of a specific DAX cluster.</p>

-}
type alias Cluster =
    { clusterName : Maybe String
    , description : Maybe String
    , clusterArn : Maybe String
    , totalNodes : Maybe Int
    , activeNodes : Maybe Int
    , nodeType : Maybe String
    , status : Maybe String
    , clusterDiscoveryEndpoint : Maybe Endpoint
    , nodeIdsToRemove : Maybe (List String)
    , nodes : Maybe (List Node)
    , preferredMaintenanceWindow : Maybe String
    , notificationConfiguration : Maybe NotificationConfiguration
    , subnetGroup : Maybe String
    , securityGroups : Maybe (List SecurityGroupMembership)
    , iamRoleArn : Maybe String
    , parameterGroup : Maybe ParameterGroupStatus
    , sSEDescription : Maybe SSEDescription
    }


clusterDecoder : JD.Decoder Cluster
clusterDecoder =
    JD.succeed Cluster
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterName", "clusterName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterArn", "clusterArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TotalNodes", "totalNodes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ActiveNodes", "activeNodes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeType", "nodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClusterDiscoveryEndpoint", "clusterDiscoveryEndpoint" ]
                endpointDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeIdsToRemove", "nodeIdsToRemove" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Nodes", "nodes" ]
                (JD.list nodeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreferredMaintenanceWindow", "preferredMaintenanceWindow" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NotificationConfiguration", "notificationConfiguration" ]
                notificationConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetGroup", "subnetGroup" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecurityGroups", "securityGroups" ]
                (JD.list securityGroupMembershipDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IamRoleArn", "iamRoleArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroup", "parameterGroup" ]
                parameterGroupStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SSEDescription", "sSEDescription" ]
                sSEDescriptionDecoder
            )


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


{-| Type of HTTP response from createParameterGroup
-}
type alias CreateParameterGroupResponse =
    { parameterGroup : Maybe ParameterGroup
    }


createParameterGroupResponseDecoder : JD.Decoder CreateParameterGroupResponse
createParameterGroupResponseDecoder =
    JD.succeed CreateParameterGroupResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroup", "parameterGroup" ]
                parameterGroupDecoder
            )


{-| Type of HTTP response from createSubnetGroup
-}
type alias CreateSubnetGroupResponse =
    { subnetGroup : Maybe SubnetGroup
    }


createSubnetGroupResponseDecoder : JD.Decoder CreateSubnetGroupResponse
createSubnetGroupResponseDecoder =
    JD.succeed CreateSubnetGroupResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetGroup", "subnetGroup" ]
                subnetGroupDecoder
            )


{-| Type of HTTP response from decreaseReplicationFactor
-}
type alias DecreaseReplicationFactorResponse =
    { cluster : Maybe Cluster
    }


decreaseReplicationFactorResponseDecoder : JD.Decoder DecreaseReplicationFactorResponse
decreaseReplicationFactorResponseDecoder =
    JD.succeed DecreaseReplicationFactorResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


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


{-| Type of HTTP response from deleteParameterGroup
-}
type alias DeleteParameterGroupResponse =
    { deletionMessage : Maybe String
    }


deleteParameterGroupResponseDecoder : JD.Decoder DeleteParameterGroupResponse
deleteParameterGroupResponseDecoder =
    JD.succeed DeleteParameterGroupResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeletionMessage", "deletionMessage" ]
                JD.string
            )


{-| Type of HTTP response from deleteSubnetGroup
-}
type alias DeleteSubnetGroupResponse =
    { deletionMessage : Maybe String
    }


deleteSubnetGroupResponseDecoder : JD.Decoder DeleteSubnetGroupResponse
deleteSubnetGroupResponseDecoder =
    JD.succeed DeleteSubnetGroupResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeletionMessage", "deletionMessage" ]
                JD.string
            )


{-| Type of HTTP response from describeClusters
-}
type alias DescribeClustersResponse =
    { nextToken : Maybe String
    , clusters : Maybe (List Cluster)
    }


describeClustersResponseDecoder : JD.Decoder DescribeClustersResponse
describeClustersResponseDecoder =
    JD.succeed DescribeClustersResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Clusters", "clusters" ]
                (JD.list clusterDecoder)
            )


{-| Type of HTTP response from describeDefaultParameters
-}
type alias DescribeDefaultParametersResponse =
    { nextToken : Maybe String
    , parameters : Maybe (List Parameter)
    }


describeDefaultParametersResponseDecoder : JD.Decoder DescribeDefaultParametersResponse
describeDefaultParametersResponseDecoder =
    JD.succeed DescribeDefaultParametersResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Parameters", "parameters" ]
                (JD.list parameterDecoder)
            )


{-| Type of HTTP response from describeEvents
-}
type alias DescribeEventsResponse =
    { nextToken : Maybe String
    , events : Maybe (List Event)
    }


describeEventsResponseDecoder : JD.Decoder DescribeEventsResponse
describeEventsResponseDecoder =
    JD.succeed DescribeEventsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Events", "events" ]
                (JD.list eventDecoder)
            )


{-| Type of HTTP response from describeParameterGroups
-}
type alias DescribeParameterGroupsResponse =
    { nextToken : Maybe String
    , parameterGroups : Maybe (List ParameterGroup)
    }


describeParameterGroupsResponseDecoder : JD.Decoder DescribeParameterGroupsResponse
describeParameterGroupsResponseDecoder =
    JD.succeed DescribeParameterGroupsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroups", "parameterGroups" ]
                (JD.list parameterGroupDecoder)
            )


{-| Type of HTTP response from describeParameters
-}
type alias DescribeParametersResponse =
    { nextToken : Maybe String
    , parameters : Maybe (List Parameter)
    }


describeParametersResponseDecoder : JD.Decoder DescribeParametersResponse
describeParametersResponseDecoder =
    JD.succeed DescribeParametersResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Parameters", "parameters" ]
                (JD.list parameterDecoder)
            )


{-| Type of HTTP response from describeSubnetGroups
-}
type alias DescribeSubnetGroupsResponse =
    { nextToken : Maybe String
    , subnetGroups : Maybe (List SubnetGroup)
    }


describeSubnetGroupsResponseDecoder : JD.Decoder DescribeSubnetGroupsResponse
describeSubnetGroupsResponseDecoder =
    JD.succeed DescribeSubnetGroupsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetGroups", "subnetGroups" ]
                (JD.list subnetGroupDecoder)
            )


{-|

<p>Represents the information required for client programs to connect to the configuration endpoint for a DAX cluster, or to an individual node within the cluster.</p>

-}
type alias Endpoint =
    { address : Maybe String
    , port_ : Maybe Int
    }


endpointDecoder : JD.Decoder Endpoint
endpointDecoder =
    JD.succeed Endpoint
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Address", "address" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Port", "port" ]
                JD.int
            )


{-|

<p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a DAX cluster, adding or removing a node, or rebooting a node.</p>

-}
type alias Event =
    { sourceName : Maybe String
    , sourceType : Maybe SourceType
    , message : Maybe String
    , date : Maybe Posix
    }


eventDecoder : JD.Decoder Event
eventDecoder =
    JD.succeed Event
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceName", "sourceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceType", "sourceType" ]
                sourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Date", "date" ]
                JDX.datetime
            )


{-| Type of HTTP response from increaseReplicationFactor
-}
type alias IncreaseReplicationFactorResponse =
    { cluster : Maybe Cluster
    }


increaseReplicationFactorResponseDecoder : JD.Decoder IncreaseReplicationFactorResponse
increaseReplicationFactorResponseDecoder =
    JD.succeed IncreaseReplicationFactorResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-| One of

  - `IsModifiable_TRUE`
  - `IsModifiable_FALSE`
  - `IsModifiable_CONDITIONAL`

-}
type IsModifiable
    = IsModifiable_TRUE
    | IsModifiable_FALSE
    | IsModifiable_CONDITIONAL


isModifiableDecoder : JD.Decoder IsModifiable
isModifiableDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TRUE" ->
                        JD.succeed IsModifiable_TRUE

                    "FALSE" ->
                        JD.succeed IsModifiable_FALSE

                    "CONDITIONAL" ->
                        JD.succeed IsModifiable_CONDITIONAL

                    _ ->
                        JD.fail "bad thing"
            )


isModifiableToString : IsModifiable -> String
isModifiableToString val =
    case val of
        IsModifiable_TRUE ->
            "TRUE"

        IsModifiable_FALSE ->
            "FALSE"

        IsModifiable_CONDITIONAL ->
            "CONDITIONAL"


{-| Type of HTTP response from listTags
-}
type alias ListTagsResponse =
    { tags : Maybe (List Tag)
    , nextToken : Maybe String
    }


listTagsResponseDecoder : JD.Decoder ListTagsResponse
listTagsResponseDecoder =
    JD.succeed ListTagsResponse
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

<p>Represents an individual node within a DAX cluster.</p>

-}
type alias Node =
    { nodeId : Maybe String
    , endpoint : Maybe Endpoint
    , nodeCreateTime : Maybe Posix
    , availabilityZone : Maybe String
    , nodeStatus : Maybe String
    , parameterGroupStatus : Maybe String
    }


nodeDecoder : JD.Decoder Node
nodeDecoder =
    JD.succeed Node
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeId", "nodeId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Endpoint", "endpoint" ]
                endpointDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeCreateTime", "nodeCreateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AvailabilityZone", "availabilityZone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeStatus", "nodeStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroupStatus", "parameterGroupStatus" ]
                JD.string
            )


{-|

<p>Represents a parameter value that is applicable to a particular node type.</p>

-}
type alias NodeTypeSpecificValue =
    { nodeType : Maybe String
    , value : Maybe String
    }


nodeTypeSpecificValueDecoder : JD.Decoder NodeTypeSpecificValue
nodeTypeSpecificValueDecoder =
    JD.succeed NodeTypeSpecificValue
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeType", "nodeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.string
            )


{-|

<p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>

-}
type alias NotificationConfiguration =
    { topicArn : Maybe String
    , topicStatus : Maybe String
    }


notificationConfigurationDecoder : JD.Decoder NotificationConfiguration
notificationConfigurationDecoder =
    JD.succeed NotificationConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicArn", "topicArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TopicStatus", "topicStatus" ]
                JD.string
            )


{-|

<p>Describes an individual setting that controls some aspect of DAX behavior.</p>

-}
type alias Parameter =
    { parameterName : Maybe String
    , parameterType : Maybe ParameterType
    , parameterValue : Maybe String
    , nodeTypeSpecificValues : Maybe (List NodeTypeSpecificValue)
    , description : Maybe String
    , source : Maybe String
    , dataType : Maybe String
    , allowedValues : Maybe String
    , isModifiable : Maybe IsModifiable
    , changeType : Maybe ChangeType
    }


parameterDecoder : JD.Decoder Parameter
parameterDecoder =
    JD.succeed Parameter
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterName", "parameterName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterType", "parameterType" ]
                parameterTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterValue", "parameterValue" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeTypeSpecificValues", "nodeTypeSpecificValues" ]
                (JD.list nodeTypeSpecificValueDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Source", "source" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DataType", "dataType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AllowedValues", "allowedValues" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsModifiable", "isModifiable" ]
                isModifiableDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ChangeType", "changeType" ]
                changeTypeDecoder
            )


{-|

<p>A named set of parameters that are applied to all of the nodes in a DAX cluster.</p>

-}
type alias ParameterGroup =
    { parameterGroupName : Maybe String
    , description : Maybe String
    }


parameterGroupDecoder : JD.Decoder ParameterGroup
parameterGroupDecoder =
    JD.succeed ParameterGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroupName", "parameterGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )


{-|

<p>The status of a parameter group.</p>

-}
type alias ParameterGroupStatus =
    { parameterGroupName : Maybe String
    , parameterApplyStatus : Maybe String
    , nodeIdsToReboot : Maybe (List String)
    }


parameterGroupStatusDecoder : JD.Decoder ParameterGroupStatus
parameterGroupStatusDecoder =
    JD.succeed ParameterGroupStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroupName", "parameterGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterApplyStatus", "parameterApplyStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NodeIdsToReboot", "nodeIdsToReboot" ]
                (JD.list JD.string)
            )


{-|

<p>An individual DAX parameter.</p>

-}
type alias ParameterNameValue =
    { parameterName : Maybe String
    , parameterValue : Maybe String
    }


parameterNameValueDecoder : JD.Decoder ParameterNameValue
parameterNameValueDecoder =
    JD.succeed ParameterNameValue
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterName", "parameterName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterValue", "parameterValue" ]
                JD.string
            )


{-| One of

  - `ParameterType_DEFAULT`
  - `ParameterType_NODE_TYPE_SPECIFIC`

-}
type ParameterType
    = ParameterType_DEFAULT
    | ParameterType_NODE_TYPE_SPECIFIC


parameterTypeDecoder : JD.Decoder ParameterType
parameterTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEFAULT" ->
                        JD.succeed ParameterType_DEFAULT

                    "NODE_TYPE_SPECIFIC" ->
                        JD.succeed ParameterType_NODE_TYPE_SPECIFIC

                    _ ->
                        JD.fail "bad thing"
            )


parameterTypeToString : ParameterType -> String
parameterTypeToString val =
    case val of
        ParameterType_DEFAULT ->
            "DEFAULT"

        ParameterType_NODE_TYPE_SPECIFIC ->
            "NODE_TYPE_SPECIFIC"


{-| Type of HTTP response from rebootNode
-}
type alias RebootNodeResponse =
    { cluster : Maybe Cluster
    }


rebootNodeResponseDecoder : JD.Decoder RebootNodeResponse
rebootNodeResponseDecoder =
    JD.succeed RebootNodeResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-|

<p>The description of the server-side encryption status on the specified DAX cluster.</p>

-}
type alias SSEDescription =
    { status : Maybe SSEStatus
    }


sSEDescriptionDecoder : JD.Decoder SSEDescription
sSEDescriptionDecoder =
    JD.succeed SSEDescription
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                sSEStatusDecoder
            )


{-|

<p>Represents the settings used to enable server-side encryption.</p>

-}
type alias SSESpecification =
    { enabled : Bool
    }


sSESpecificationDecoder : JD.Decoder SSESpecification
sSESpecificationDecoder =
    JD.succeed SSESpecification
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Enabled", "enabled" ]
                JD.bool
            )


{-| One of

  - `SSEStatus_ENABLING`
  - `SSEStatus_ENABLED`
  - `SSEStatus_DISABLING`
  - `SSEStatus_DISABLED`

-}
type SSEStatus
    = SSEStatus_ENABLING
    | SSEStatus_ENABLED
    | SSEStatus_DISABLING
    | SSEStatus_DISABLED


sSEStatusDecoder : JD.Decoder SSEStatus
sSEStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLING" ->
                        JD.succeed SSEStatus_ENABLING

                    "ENABLED" ->
                        JD.succeed SSEStatus_ENABLED

                    "DISABLING" ->
                        JD.succeed SSEStatus_DISABLING

                    "DISABLED" ->
                        JD.succeed SSEStatus_DISABLED

                    _ ->
                        JD.fail "bad thing"
            )


sSEStatusToString : SSEStatus -> String
sSEStatusToString val =
    case val of
        SSEStatus_ENABLING ->
            "ENABLING"

        SSEStatus_ENABLED ->
            "ENABLED"

        SSEStatus_DISABLING ->
            "DISABLING"

        SSEStatus_DISABLED ->
            "DISABLED"


{-|

<p>An individual VPC security group and its status.</p>

-}
type alias SecurityGroupMembership =
    { securityGroupIdentifier : Maybe String
    , status : Maybe String
    }


securityGroupMembershipDecoder : JD.Decoder SecurityGroupMembership
securityGroupMembershipDecoder =
    JD.succeed SecurityGroupMembership
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecurityGroupIdentifier", "securityGroupIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                JD.string
            )


{-| One of

  - `SourceType_CLUSTER`
  - `SourceType_PARAMETER_GROUP`
  - `SourceType_SUBNET_GROUP`

-}
type SourceType
    = SourceType_CLUSTER
    | SourceType_PARAMETER_GROUP
    | SourceType_SUBNET_GROUP


sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CLUSTER" ->
                        JD.succeed SourceType_CLUSTER

                    "PARAMETER_GROUP" ->
                        JD.succeed SourceType_PARAMETER_GROUP

                    "SUBNET_GROUP" ->
                        JD.succeed SourceType_SUBNET_GROUP

                    _ ->
                        JD.fail "bad thing"
            )


sourceTypeToString : SourceType -> String
sourceTypeToString val =
    case val of
        SourceType_CLUSTER ->
            "CLUSTER"

        SourceType_PARAMETER_GROUP ->
            "PARAMETER_GROUP"

        SourceType_SUBNET_GROUP ->
            "SUBNET_GROUP"


{-|

<p>Represents the subnet associated with a DAX cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with DAX.</p>

-}
type alias Subnet =
    { subnetIdentifier : Maybe String
    , subnetAvailabilityZone : Maybe String
    }


subnetDecoder : JD.Decoder Subnet
subnetDecoder =
    JD.succeed Subnet
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetIdentifier", "subnetIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetAvailabilityZone", "subnetAvailabilityZone" ]
                JD.string
            )


{-|

<p>Represents the output of one of the following actions:</p> <ul> <li> <p> <i>CreateSubnetGroup</i> </p> </li> <li> <p> <i>ModifySubnetGroup</i> </p> </li> </ul>

-}
type alias SubnetGroup =
    { subnetGroupName : Maybe String
    , description : Maybe String
    , vpcId : Maybe String
    , subnets : Maybe (List Subnet)
    }


subnetGroupDecoder : JD.Decoder SubnetGroup
subnetGroupDecoder =
    JD.succeed SubnetGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetGroupName", "subnetGroupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VpcId", "vpcId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Subnets", "subnets" ]
                (JD.list subnetDecoder)
            )


{-|

<p>A description of a tag. Every tag is a key-value pair. You can add up to 50 tags to a single DAX cluster.</p> <p>AWS-assigned tag names and values are automatically assigned the <code>aws:</code> prefix, which the user cannot assign. AWS-assigned tag names do not count towards the tag limit of 50. User-assigned tag names have the prefix <code>user:</code>.</p> <p>You cannot backdate the application of a tag.</p>

-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }


tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Key", "key" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.string
            )


{-| Type of HTTP response from tagResource
-}
type alias TagResourceResponse =
    { tags : Maybe (List Tag)
    }


tagResourceResponseDecoder : JD.Decoder TagResourceResponse
tagResourceResponseDecoder =
    JD.succeed TagResourceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-| Type of HTTP response from untagResource
-}
type alias UntagResourceResponse =
    { tags : Maybe (List Tag)
    }


untagResourceResponseDecoder : JD.Decoder UntagResourceResponse
untagResourceResponseDecoder =
    JD.succeed UntagResourceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-| Type of HTTP response from updateCluster
-}
type alias UpdateClusterResponse =
    { cluster : Maybe Cluster
    }


updateClusterResponseDecoder : JD.Decoder UpdateClusterResponse
updateClusterResponseDecoder =
    JD.succeed UpdateClusterResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Cluster", "cluster" ]
                clusterDecoder
            )


{-| Type of HTTP response from updateParameterGroup
-}
type alias UpdateParameterGroupResponse =
    { parameterGroup : Maybe ParameterGroup
    }


updateParameterGroupResponseDecoder : JD.Decoder UpdateParameterGroupResponse
updateParameterGroupResponseDecoder =
    JD.succeed UpdateParameterGroupResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ParameterGroup", "parameterGroup" ]
                parameterGroupDecoder
            )


{-| Type of HTTP response from updateSubnetGroup
-}
type alias UpdateSubnetGroupResponse =
    { subnetGroup : Maybe SubnetGroup
    }


updateSubnetGroupResponseDecoder : JD.Decoder UpdateSubnetGroupResponse
updateSubnetGroupResponseDecoder =
    JD.succeed UpdateSubnetGroupResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubnetGroup", "subnetGroup" ]
                subnetGroupDecoder
            )


{-| undefined
-}
type alias CreateClusterRequest =
    { clusterName : String
    , nodeType : String
    , description : Maybe String
    , replicationFactor : Int
    , availabilityZones : Maybe (List String)
    , subnetGroupName : Maybe String
    , securityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , notificationTopicArn : Maybe String
    , iamRoleArn : String
    , parameterGroupName : Maybe String
    , tags : Maybe (List Tag)
    , sSESpecification : Maybe SSESpecification
    }


{-| undefined
-}
type alias CreateParameterGroupRequest =
    { parameterGroupName : String
    , description : Maybe String
    }


{-| undefined
-}
type alias CreateSubnetGroupRequest =
    { subnetGroupName : String
    , description : Maybe String
    , subnetIds : List String
    }


{-| undefined
-}
type alias DecreaseReplicationFactorRequest =
    { clusterName : String
    , newReplicationFactor : Int
    , availabilityZones : Maybe (List String)
    , nodeIdsToRemove : Maybe (List String)
    }


{-| undefined
-}
type alias DeleteClusterRequest =
    { clusterName : String
    }


{-| undefined
-}
type alias DeleteParameterGroupRequest =
    { parameterGroupName : String
    }


{-| undefined
-}
type alias DeleteSubnetGroupRequest =
    { subnetGroupName : String
    }


{-| undefined
-}
type alias DescribeClustersRequest =
    { clusterNames : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeDefaultParametersRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeEventsRequest =
    { sourceName : Maybe String
    , sourceType : Maybe SourceType
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , duration : Maybe Int
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeParameterGroupsRequest =
    { parameterGroupNames : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeParametersRequest =
    { parameterGroupName : String
    , source : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeSubnetGroupsRequest =
    { subnetGroupNames : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias IncreaseReplicationFactorRequest =
    { clusterName : String
    , newReplicationFactor : Int
    , availabilityZones : Maybe (List String)
    }


{-| undefined
-}
type alias ListTagsRequest =
    { resourceName : String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias RebootNodeRequest =
    { clusterName : String
    , nodeId : String
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceName : String
    , tags : List Tag
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceName : String
    , tagKeys : List String
    }


{-| undefined
-}
type alias UpdateClusterRequest =
    { clusterName : String
    , description : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , notificationTopicArn : Maybe String
    , notificationTopicStatus : Maybe String
    , parameterGroupName : Maybe String
    , securityGroupIds : Maybe (List String)
    }


{-| undefined
-}
type alias UpdateParameterGroupRequest =
    { parameterGroupName : String
    , parameterNameValues : List ParameterNameValue
    }


{-| undefined
-}
type alias UpdateSubnetGroupRequest =
    { subnetGroupName : String
    , description : Maybe String
    , subnetIds : Maybe (List String)
    }


clusterEncoder : Cluster -> JE.Value
clusterEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ClusterName", data.clusterName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ClusterArn", data.clusterArn )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TotalNodes", data.totalNodes )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "ActiveNodes", data.activeNodes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NodeType", data.nodeType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            endpointEncoder
            ( "ClusterDiscoveryEndpoint", data.clusterDiscoveryEndpoint )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "NodeIdsToRemove", data.nodeIdsToRemove )
        |> AWS.Core.Encode.optionalMember
            (JE.list nodeEncoder)
            ( "Nodes", data.nodes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredMaintenanceWindow", data.preferredMaintenanceWindow )
        |> AWS.Core.Encode.optionalMember
            notificationConfigurationEncoder
            ( "NotificationConfiguration", data.notificationConfiguration )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SubnetGroup", data.subnetGroup )
        |> AWS.Core.Encode.optionalMember
            (JE.list securityGroupMembershipEncoder)
            ( "SecurityGroups", data.securityGroups )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IamRoleArn", data.iamRoleArn )
        |> AWS.Core.Encode.optionalMember
            parameterGroupStatusEncoder
            ( "ParameterGroup", data.parameterGroup )
        |> AWS.Core.Encode.optionalMember
            sSEDescriptionEncoder
            ( "SSEDescription", data.sSEDescription )
        |> JE.object


createClusterRequestEncoder : CreateClusterRequest -> JE.Value
createClusterRequestEncoder data =
    []
        |> (::) ( "ClusterName", data.clusterName |> JE.string )
        |> (::) ( "NodeType", data.nodeType |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> (::) ( "ReplicationFactor", data.replicationFactor |> JE.int )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "AvailabilityZones", data.availabilityZones )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SubnetGroupName", data.subnetGroupName )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SecurityGroupIds", data.securityGroupIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredMaintenanceWindow", data.preferredMaintenanceWindow )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NotificationTopicArn", data.notificationTopicArn )
        |> (::) ( "IamRoleArn", data.iamRoleArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ParameterGroupName", data.parameterGroupName )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> AWS.Core.Encode.optionalMember
            sSESpecificationEncoder
            ( "SSESpecification", data.sSESpecification )
        |> JE.object


createClusterResponseEncoder : CreateClusterResponse -> JE.Value
createClusterResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            clusterEncoder
            ( "Cluster", data.cluster )
        |> JE.object


createParameterGroupRequestEncoder : CreateParameterGroupRequest -> JE.Value
createParameterGroupRequestEncoder data =
    []
        |> (::) ( "ParameterGroupName", data.parameterGroupName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> JE.object


createParameterGroupResponseEncoder : CreateParameterGroupResponse -> JE.Value
createParameterGroupResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            parameterGroupEncoder
            ( "ParameterGroup", data.parameterGroup )
        |> JE.object


createSubnetGroupRequestEncoder : CreateSubnetGroupRequest -> JE.Value
createSubnetGroupRequestEncoder data =
    []
        |> (::) ( "SubnetGroupName", data.subnetGroupName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> (::) ( "SubnetIds", data.subnetIds |> JE.list JE.string )
        |> JE.object


createSubnetGroupResponseEncoder : CreateSubnetGroupResponse -> JE.Value
createSubnetGroupResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            subnetGroupEncoder
            ( "SubnetGroup", data.subnetGroup )
        |> JE.object


decreaseReplicationFactorRequestEncoder : DecreaseReplicationFactorRequest -> JE.Value
decreaseReplicationFactorRequestEncoder data =
    []
        |> (::) ( "ClusterName", data.clusterName |> JE.string )
        |> (::) ( "NewReplicationFactor", data.newReplicationFactor |> JE.int )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "AvailabilityZones", data.availabilityZones )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "NodeIdsToRemove", data.nodeIdsToRemove )
        |> JE.object


decreaseReplicationFactorResponseEncoder : DecreaseReplicationFactorResponse -> JE.Value
decreaseReplicationFactorResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            clusterEncoder
            ( "Cluster", data.cluster )
        |> JE.object


deleteClusterRequestEncoder : DeleteClusterRequest -> JE.Value
deleteClusterRequestEncoder data =
    []
        |> (::) ( "ClusterName", data.clusterName |> JE.string )
        |> JE.object


deleteClusterResponseEncoder : DeleteClusterResponse -> JE.Value
deleteClusterResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            clusterEncoder
            ( "Cluster", data.cluster )
        |> JE.object


deleteParameterGroupRequestEncoder : DeleteParameterGroupRequest -> JE.Value
deleteParameterGroupRequestEncoder data =
    []
        |> (::) ( "ParameterGroupName", data.parameterGroupName |> JE.string )
        |> JE.object


deleteParameterGroupResponseEncoder : DeleteParameterGroupResponse -> JE.Value
deleteParameterGroupResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DeletionMessage", data.deletionMessage )
        |> JE.object


deleteSubnetGroupRequestEncoder : DeleteSubnetGroupRequest -> JE.Value
deleteSubnetGroupRequestEncoder data =
    []
        |> (::) ( "SubnetGroupName", data.subnetGroupName |> JE.string )
        |> JE.object


deleteSubnetGroupResponseEncoder : DeleteSubnetGroupResponse -> JE.Value
deleteSubnetGroupResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DeletionMessage", data.deletionMessage )
        |> JE.object


describeClustersRequestEncoder : DescribeClustersRequest -> JE.Value
describeClustersRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ClusterNames", data.clusterNames )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeClustersResponseEncoder : DescribeClustersResponse -> JE.Value
describeClustersResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            (JE.list clusterEncoder)
            ( "Clusters", data.clusters )
        |> JE.object


describeDefaultParametersRequestEncoder : DescribeDefaultParametersRequest -> JE.Value
describeDefaultParametersRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeDefaultParametersResponseEncoder : DescribeDefaultParametersResponse -> JE.Value
describeDefaultParametersResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            (JE.list parameterEncoder)
            ( "Parameters", data.parameters )
        |> JE.object


describeEventsRequestEncoder : DescribeEventsRequest -> JE.Value
describeEventsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceName", data.sourceName )
        |> AWS.Core.Encode.optionalMember
            (sourceTypeToString >> JE.string)
            ( "SourceType", data.sourceType )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "StartTime", data.startTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "EndTime", data.endTime )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Duration", data.duration )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeEventsResponseEncoder : DescribeEventsResponse -> JE.Value
describeEventsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            (JE.list eventEncoder)
            ( "Events", data.events )
        |> JE.object


describeParameterGroupsRequestEncoder : DescribeParameterGroupsRequest -> JE.Value
describeParameterGroupsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ParameterGroupNames", data.parameterGroupNames )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeParameterGroupsResponseEncoder : DescribeParameterGroupsResponse -> JE.Value
describeParameterGroupsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            (JE.list parameterGroupEncoder)
            ( "ParameterGroups", data.parameterGroups )
        |> JE.object


describeParametersRequestEncoder : DescribeParametersRequest -> JE.Value
describeParametersRequestEncoder data =
    []
        |> (::) ( "ParameterGroupName", data.parameterGroupName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Source", data.source )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeParametersResponseEncoder : DescribeParametersResponse -> JE.Value
describeParametersResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            (JE.list parameterEncoder)
            ( "Parameters", data.parameters )
        |> JE.object


describeSubnetGroupsRequestEncoder : DescribeSubnetGroupsRequest -> JE.Value
describeSubnetGroupsRequestEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SubnetGroupNames", data.subnetGroupNames )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


describeSubnetGroupsResponseEncoder : DescribeSubnetGroupsResponse -> JE.Value
describeSubnetGroupsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            (JE.list subnetGroupEncoder)
            ( "SubnetGroups", data.subnetGroups )
        |> JE.object


endpointEncoder : Endpoint -> JE.Value
endpointEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Address", data.address )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Port", data.port_ )
        |> JE.object


eventEncoder : Event -> JE.Value
eventEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceName", data.sourceName )
        |> AWS.Core.Encode.optionalMember
            (sourceTypeToString >> JE.string)
            ( "SourceType", data.sourceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Message", data.message )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "Date", data.date )
        |> JE.object


increaseReplicationFactorRequestEncoder : IncreaseReplicationFactorRequest -> JE.Value
increaseReplicationFactorRequestEncoder data =
    []
        |> (::) ( "ClusterName", data.clusterName |> JE.string )
        |> (::) ( "NewReplicationFactor", data.newReplicationFactor |> JE.int )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "AvailabilityZones", data.availabilityZones )
        |> JE.object


increaseReplicationFactorResponseEncoder : IncreaseReplicationFactorResponse -> JE.Value
increaseReplicationFactorResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            clusterEncoder
            ( "Cluster", data.cluster )
        |> JE.object


listTagsRequestEncoder : ListTagsRequest -> JE.Value
listTagsRequestEncoder data =
    []
        |> (::) ( "ResourceName", data.resourceName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listTagsResponseEncoder : ListTagsResponse -> JE.Value
listTagsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


nodeEncoder : Node -> JE.Value
nodeEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NodeId", data.nodeId )
        |> AWS.Core.Encode.optionalMember
            endpointEncoder
            ( "Endpoint", data.endpoint )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "NodeCreateTime", data.nodeCreateTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AvailabilityZone", data.availabilityZone )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NodeStatus", data.nodeStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ParameterGroupStatus", data.parameterGroupStatus )
        |> JE.object


nodeTypeSpecificValueEncoder : NodeTypeSpecificValue -> JE.Value
nodeTypeSpecificValueEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NodeType", data.nodeType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Value", data.value )
        |> JE.object


notificationConfigurationEncoder : NotificationConfiguration -> JE.Value
notificationConfigurationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TopicArn", data.topicArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TopicStatus", data.topicStatus )
        |> JE.object


parameterEncoder : Parameter -> JE.Value
parameterEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ParameterName", data.parameterName )
        |> AWS.Core.Encode.optionalMember
            (parameterTypeToString >> JE.string)
            ( "ParameterType", data.parameterType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ParameterValue", data.parameterValue )
        |> AWS.Core.Encode.optionalMember
            (JE.list nodeTypeSpecificValueEncoder)
            ( "NodeTypeSpecificValues", data.nodeTypeSpecificValues )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Source", data.source )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DataType", data.dataType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AllowedValues", data.allowedValues )
        |> AWS.Core.Encode.optionalMember
            (isModifiableToString >> JE.string)
            ( "IsModifiable", data.isModifiable )
        |> AWS.Core.Encode.optionalMember
            (changeTypeToString >> JE.string)
            ( "ChangeType", data.changeType )
        |> JE.object


parameterGroupEncoder : ParameterGroup -> JE.Value
parameterGroupEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ParameterGroupName", data.parameterGroupName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> JE.object


parameterGroupStatusEncoder : ParameterGroupStatus -> JE.Value
parameterGroupStatusEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ParameterGroupName", data.parameterGroupName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ParameterApplyStatus", data.parameterApplyStatus )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "NodeIdsToReboot", data.nodeIdsToReboot )
        |> JE.object


parameterNameValueEncoder : ParameterNameValue -> JE.Value
parameterNameValueEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ParameterName", data.parameterName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ParameterValue", data.parameterValue )
        |> JE.object


rebootNodeRequestEncoder : RebootNodeRequest -> JE.Value
rebootNodeRequestEncoder data =
    []
        |> (::) ( "ClusterName", data.clusterName |> JE.string )
        |> (::) ( "NodeId", data.nodeId |> JE.string )
        |> JE.object


rebootNodeResponseEncoder : RebootNodeResponse -> JE.Value
rebootNodeResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            clusterEncoder
            ( "Cluster", data.cluster )
        |> JE.object


sSEDescriptionEncoder : SSEDescription -> JE.Value
sSEDescriptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (sSEStatusToString >> JE.string)
            ( "Status", data.status )
        |> JE.object


sSESpecificationEncoder : SSESpecification -> JE.Value
sSESpecificationEncoder data =
    []
        |> (::) ( "Enabled", data.enabled |> JE.bool )
        |> JE.object


securityGroupMembershipEncoder : SecurityGroupMembership -> JE.Value
securityGroupMembershipEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SecurityGroupIdentifier", data.securityGroupIdentifier )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Status", data.status )
        |> JE.object


subnetEncoder : Subnet -> JE.Value
subnetEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SubnetIdentifier", data.subnetIdentifier )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SubnetAvailabilityZone", data.subnetAvailabilityZone )
        |> JE.object


subnetGroupEncoder : SubnetGroup -> JE.Value
subnetGroupEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SubnetGroupName", data.subnetGroupName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VpcId", data.vpcId )
        |> AWS.Core.Encode.optionalMember
            (JE.list subnetEncoder)
            ( "Subnets", data.subnets )
        |> JE.object


tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Key", data.key )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Value", data.value )
        |> JE.object


tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        |> (::) ( "ResourceName", data.resourceName |> JE.string )
        |> (::) ( "Tags", data.tags |> JE.list tagEncoder )
        |> JE.object


tagResourceResponseEncoder : TagResourceResponse -> JE.Value
tagResourceResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        |> (::) ( "ResourceName", data.resourceName |> JE.string )
        |> (::) ( "TagKeys", data.tagKeys |> JE.list JE.string )
        |> JE.object


untagResourceResponseEncoder : UntagResourceResponse -> JE.Value
untagResourceResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


updateClusterRequestEncoder : UpdateClusterRequest -> JE.Value
updateClusterRequestEncoder data =
    []
        |> (::) ( "ClusterName", data.clusterName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PreferredMaintenanceWindow", data.preferredMaintenanceWindow )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NotificationTopicArn", data.notificationTopicArn )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NotificationTopicStatus", data.notificationTopicStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ParameterGroupName", data.parameterGroupName )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SecurityGroupIds", data.securityGroupIds )
        |> JE.object


updateClusterResponseEncoder : UpdateClusterResponse -> JE.Value
updateClusterResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            clusterEncoder
            ( "Cluster", data.cluster )
        |> JE.object


updateParameterGroupRequestEncoder : UpdateParameterGroupRequest -> JE.Value
updateParameterGroupRequestEncoder data =
    []
        |> (::) ( "ParameterGroupName", data.parameterGroupName |> JE.string )
        |> (::) ( "ParameterNameValues", data.parameterNameValues |> JE.list parameterNameValueEncoder )
        |> JE.object


updateParameterGroupResponseEncoder : UpdateParameterGroupResponse -> JE.Value
updateParameterGroupResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            parameterGroupEncoder
            ( "ParameterGroup", data.parameterGroup )
        |> JE.object


updateSubnetGroupRequestEncoder : UpdateSubnetGroupRequest -> JE.Value
updateSubnetGroupRequestEncoder data =
    []
        |> (::) ( "SubnetGroupName", data.subnetGroupName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SubnetIds", data.subnetIds )
        |> JE.object


updateSubnetGroupResponseEncoder : UpdateSubnetGroupResponse -> JE.Value
updateSubnetGroupResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            subnetGroupEncoder
            ( "SubnetGroup", data.subnetGroup )
        |> JE.object
