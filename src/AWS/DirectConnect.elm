module AWS.DirectConnect
    exposing
        ( service
        , acceptDirectConnectGatewayAssociationProposal
        , AcceptDirectConnectGatewayAssociationProposalOptions
        , allocateConnectionOnInterconnect
        , allocateHostedConnection
        , AllocateHostedConnectionOptions
        , allocatePrivateVirtualInterface
        , allocatePublicVirtualInterface
        , allocateTransitVirtualInterface
        , associateConnectionWithLag
        , associateHostedConnection
        , associateVirtualInterface
        , confirmConnection
        , confirmPrivateVirtualInterface
        , ConfirmPrivateVirtualInterfaceOptions
        , confirmPublicVirtualInterface
        , confirmTransitVirtualInterface
        , createBGPPeer
        , CreateBGPPeerOptions
        , createConnection
        , CreateConnectionOptions
        , createDirectConnectGateway
        , CreateDirectConnectGatewayOptions
        , createDirectConnectGatewayAssociation
        , CreateDirectConnectGatewayAssociationOptions
        , createDirectConnectGatewayAssociationProposal
        , CreateDirectConnectGatewayAssociationProposalOptions
        , createInterconnect
        , CreateInterconnectOptions
        , createLag
        , CreateLagOptions
        , createPrivateVirtualInterface
        , createPublicVirtualInterface
        , createTransitVirtualInterface
        , deleteBGPPeer
        , DeleteBGPPeerOptions
        , deleteConnection
        , deleteDirectConnectGateway
        , deleteDirectConnectGatewayAssociation
        , DeleteDirectConnectGatewayAssociationOptions
        , deleteDirectConnectGatewayAssociationProposal
        , deleteInterconnect
        , deleteLag
        , deleteVirtualInterface
        , describeConnectionLoa
        , DescribeConnectionLoaOptions
        , describeConnections
        , DescribeConnectionsOptions
        , describeConnectionsOnInterconnect
        , describeDirectConnectGatewayAssociationProposals
        , DescribeDirectConnectGatewayAssociationProposalsOptions
        , describeDirectConnectGatewayAssociations
        , DescribeDirectConnectGatewayAssociationsOptions
        , describeDirectConnectGatewayAttachments
        , DescribeDirectConnectGatewayAttachmentsOptions
        , describeDirectConnectGateways
        , DescribeDirectConnectGatewaysOptions
        , describeHostedConnections
        , describeInterconnectLoa
        , DescribeInterconnectLoaOptions
        , describeInterconnects
        , DescribeInterconnectsOptions
        , describeLags
        , DescribeLagsOptions
        , describeLoa
        , DescribeLoaOptions
        , describeLocations
        , describeTags
        , describeVirtualGateways
        , describeVirtualInterfaces
        , DescribeVirtualInterfacesOptions
        , disassociateConnectionFromLag
        , tagResource
        , untagResource
        , updateDirectConnectGatewayAssociation
        , UpdateDirectConnectGatewayAssociationOptions
        , updateLag
        , UpdateLagOptions
        , updateVirtualInterfaceAttributes
        , UpdateVirtualInterfaceAttributesOptions
        , AcceptDirectConnectGatewayAssociationProposalResult
        , AddressFamily(..)
        , AllocateTransitVirtualInterfaceResult
        , AssociatedGateway
        , BGPPeer
        , BGPPeerState(..)
        , BGPStatus(..)
        , ConfirmConnectionResponse
        , ConfirmPrivateVirtualInterfaceResponse
        , ConfirmPublicVirtualInterfaceResponse
        , ConfirmTransitVirtualInterfaceResponse
        , Connection
        , ConnectionState(..)
        , Connections
        , CreateBGPPeerResponse
        , CreateDirectConnectGatewayAssociationProposalResult
        , CreateDirectConnectGatewayAssociationResult
        , CreateDirectConnectGatewayResult
        , CreateTransitVirtualInterfaceResult
        , DeleteBGPPeerResponse
        , DeleteDirectConnectGatewayAssociationProposalResult
        , DeleteDirectConnectGatewayAssociationResult
        , DeleteDirectConnectGatewayResult
        , DeleteInterconnectResponse
        , DeleteVirtualInterfaceResponse
        , DescribeConnectionLoaResponse
        , DescribeDirectConnectGatewayAssociationProposalsResult
        , DescribeDirectConnectGatewayAssociationsResult
        , DescribeDirectConnectGatewayAttachmentsResult
        , DescribeDirectConnectGatewaysResult
        , DescribeInterconnectLoaResponse
        , DescribeTagsResponse
        , DirectConnectGateway
        , DirectConnectGatewayAssociation
        , DirectConnectGatewayAssociationProposal
        , DirectConnectGatewayAssociationProposalState(..)
        , DirectConnectGatewayAssociationState(..)
        , DirectConnectGatewayAttachment
        , DirectConnectGatewayAttachmentState(..)
        , DirectConnectGatewayAttachmentType(..)
        , DirectConnectGatewayState(..)
        , GatewayType(..)
        , HasLogicalRedundancy(..)
        , Interconnect
        , InterconnectState(..)
        , Interconnects
        , Lag
        , LagState(..)
        , Lags
        , Loa
        , LoaContentType(..)
        , Location
        , Locations
        , NewBGPPeer
        , NewPrivateVirtualInterface
        , NewPrivateVirtualInterfaceAllocation
        , NewPublicVirtualInterface
        , NewPublicVirtualInterfaceAllocation
        , NewTransitVirtualInterface
        , NewTransitVirtualInterfaceAllocation
        , ResourceTag
        , RouteFilterPrefix
        , Tag
        , TagResourceResponse
        , UntagResourceResponse
        , UpdateDirectConnectGatewayAssociationResult
        , VirtualGateway
        , VirtualGateways
        , VirtualInterface
        , VirtualInterfaceState(..)
        , VirtualInterfaces
        )

{-| <p>AWS Direct Connect links your internal network to an AWS Direct Connect location over a standard Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router. With this connection in place, you can create virtual interfaces directly to the AWS cloud (for example, to Amazon EC2 and Amazon S3) and to Amazon VPC, bypassing Internet service providers in your network path. A connection provides access to all AWS Regions except the China (Beijing) and (China) Ningxia Regions. AWS resources in the China Regions can only be accessed through locations associated with those Regions.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [acceptDirectConnectGatewayAssociationProposal](#acceptDirectConnectGatewayAssociationProposal)
* [AcceptDirectConnectGatewayAssociationProposalOptions](#AcceptDirectConnectGatewayAssociationProposalOptions)
* [allocateConnectionOnInterconnect](#allocateConnectionOnInterconnect)
* [allocateHostedConnection](#allocateHostedConnection)
* [AllocateHostedConnectionOptions](#AllocateHostedConnectionOptions)
* [allocatePrivateVirtualInterface](#allocatePrivateVirtualInterface)
* [allocatePublicVirtualInterface](#allocatePublicVirtualInterface)
* [allocateTransitVirtualInterface](#allocateTransitVirtualInterface)
* [associateConnectionWithLag](#associateConnectionWithLag)
* [associateHostedConnection](#associateHostedConnection)
* [associateVirtualInterface](#associateVirtualInterface)
* [confirmConnection](#confirmConnection)
* [confirmPrivateVirtualInterface](#confirmPrivateVirtualInterface)
* [ConfirmPrivateVirtualInterfaceOptions](#ConfirmPrivateVirtualInterfaceOptions)
* [confirmPublicVirtualInterface](#confirmPublicVirtualInterface)
* [confirmTransitVirtualInterface](#confirmTransitVirtualInterface)
* [createBGPPeer](#createBGPPeer)
* [CreateBGPPeerOptions](#CreateBGPPeerOptions)
* [createConnection](#createConnection)
* [CreateConnectionOptions](#CreateConnectionOptions)
* [createDirectConnectGateway](#createDirectConnectGateway)
* [CreateDirectConnectGatewayOptions](#CreateDirectConnectGatewayOptions)
* [createDirectConnectGatewayAssociation](#createDirectConnectGatewayAssociation)
* [CreateDirectConnectGatewayAssociationOptions](#CreateDirectConnectGatewayAssociationOptions)
* [createDirectConnectGatewayAssociationProposal](#createDirectConnectGatewayAssociationProposal)
* [CreateDirectConnectGatewayAssociationProposalOptions](#CreateDirectConnectGatewayAssociationProposalOptions)
* [createInterconnect](#createInterconnect)
* [CreateInterconnectOptions](#CreateInterconnectOptions)
* [createLag](#createLag)
* [CreateLagOptions](#CreateLagOptions)
* [createPrivateVirtualInterface](#createPrivateVirtualInterface)
* [createPublicVirtualInterface](#createPublicVirtualInterface)
* [createTransitVirtualInterface](#createTransitVirtualInterface)
* [deleteBGPPeer](#deleteBGPPeer)
* [DeleteBGPPeerOptions](#DeleteBGPPeerOptions)
* [deleteConnection](#deleteConnection)
* [deleteDirectConnectGateway](#deleteDirectConnectGateway)
* [deleteDirectConnectGatewayAssociation](#deleteDirectConnectGatewayAssociation)
* [DeleteDirectConnectGatewayAssociationOptions](#DeleteDirectConnectGatewayAssociationOptions)
* [deleteDirectConnectGatewayAssociationProposal](#deleteDirectConnectGatewayAssociationProposal)
* [deleteInterconnect](#deleteInterconnect)
* [deleteLag](#deleteLag)
* [deleteVirtualInterface](#deleteVirtualInterface)
* [describeConnectionLoa](#describeConnectionLoa)
* [DescribeConnectionLoaOptions](#DescribeConnectionLoaOptions)
* [describeConnections](#describeConnections)
* [DescribeConnectionsOptions](#DescribeConnectionsOptions)
* [describeConnectionsOnInterconnect](#describeConnectionsOnInterconnect)
* [describeDirectConnectGatewayAssociationProposals](#describeDirectConnectGatewayAssociationProposals)
* [DescribeDirectConnectGatewayAssociationProposalsOptions](#DescribeDirectConnectGatewayAssociationProposalsOptions)
* [describeDirectConnectGatewayAssociations](#describeDirectConnectGatewayAssociations)
* [DescribeDirectConnectGatewayAssociationsOptions](#DescribeDirectConnectGatewayAssociationsOptions)
* [describeDirectConnectGatewayAttachments](#describeDirectConnectGatewayAttachments)
* [DescribeDirectConnectGatewayAttachmentsOptions](#DescribeDirectConnectGatewayAttachmentsOptions)
* [describeDirectConnectGateways](#describeDirectConnectGateways)
* [DescribeDirectConnectGatewaysOptions](#DescribeDirectConnectGatewaysOptions)
* [describeHostedConnections](#describeHostedConnections)
* [describeInterconnectLoa](#describeInterconnectLoa)
* [DescribeInterconnectLoaOptions](#DescribeInterconnectLoaOptions)
* [describeInterconnects](#describeInterconnects)
* [DescribeInterconnectsOptions](#DescribeInterconnectsOptions)
* [describeLags](#describeLags)
* [DescribeLagsOptions](#DescribeLagsOptions)
* [describeLoa](#describeLoa)
* [DescribeLoaOptions](#DescribeLoaOptions)
* [describeLocations](#describeLocations)
* [describeTags](#describeTags)
* [describeVirtualGateways](#describeVirtualGateways)
* [describeVirtualInterfaces](#describeVirtualInterfaces)
* [DescribeVirtualInterfacesOptions](#DescribeVirtualInterfacesOptions)
* [disassociateConnectionFromLag](#disassociateConnectionFromLag)
* [tagResource](#tagResource)
* [untagResource](#untagResource)
* [updateDirectConnectGatewayAssociation](#updateDirectConnectGatewayAssociation)
* [UpdateDirectConnectGatewayAssociationOptions](#UpdateDirectConnectGatewayAssociationOptions)
* [updateLag](#updateLag)
* [UpdateLagOptions](#UpdateLagOptions)
* [updateVirtualInterfaceAttributes](#updateVirtualInterfaceAttributes)
* [UpdateVirtualInterfaceAttributesOptions](#UpdateVirtualInterfaceAttributesOptions)


@docs acceptDirectConnectGatewayAssociationProposal,AcceptDirectConnectGatewayAssociationProposalOptions,allocateConnectionOnInterconnect,allocateHostedConnection,AllocateHostedConnectionOptions,allocatePrivateVirtualInterface,allocatePublicVirtualInterface,allocateTransitVirtualInterface,associateConnectionWithLag,associateHostedConnection,associateVirtualInterface,confirmConnection,confirmPrivateVirtualInterface,ConfirmPrivateVirtualInterfaceOptions,confirmPublicVirtualInterface,confirmTransitVirtualInterface,createBGPPeer,CreateBGPPeerOptions,createConnection,CreateConnectionOptions,createDirectConnectGateway,CreateDirectConnectGatewayOptions,createDirectConnectGatewayAssociation,CreateDirectConnectGatewayAssociationOptions,createDirectConnectGatewayAssociationProposal,CreateDirectConnectGatewayAssociationProposalOptions,createInterconnect,CreateInterconnectOptions,createLag,CreateLagOptions,createPrivateVirtualInterface,createPublicVirtualInterface,createTransitVirtualInterface,deleteBGPPeer,DeleteBGPPeerOptions,deleteConnection,deleteDirectConnectGateway,deleteDirectConnectGatewayAssociation,DeleteDirectConnectGatewayAssociationOptions,deleteDirectConnectGatewayAssociationProposal,deleteInterconnect,deleteLag,deleteVirtualInterface,describeConnectionLoa,DescribeConnectionLoaOptions,describeConnections,DescribeConnectionsOptions,describeConnectionsOnInterconnect,describeDirectConnectGatewayAssociationProposals,DescribeDirectConnectGatewayAssociationProposalsOptions,describeDirectConnectGatewayAssociations,DescribeDirectConnectGatewayAssociationsOptions,describeDirectConnectGatewayAttachments,DescribeDirectConnectGatewayAttachmentsOptions,describeDirectConnectGateways,DescribeDirectConnectGatewaysOptions,describeHostedConnections,describeInterconnectLoa,DescribeInterconnectLoaOptions,describeInterconnects,DescribeInterconnectsOptions,describeLags,DescribeLagsOptions,describeLoa,DescribeLoaOptions,describeLocations,describeTags,describeVirtualGateways,describeVirtualInterfaces,DescribeVirtualInterfacesOptions,disassociateConnectionFromLag,tagResource,untagResource,updateDirectConnectGatewayAssociation,UpdateDirectConnectGatewayAssociationOptions,updateLag,UpdateLagOptions,updateVirtualInterfaceAttributes,UpdateVirtualInterfaceAttributesOptions

## Responses

* [AcceptDirectConnectGatewayAssociationProposalResult](#AcceptDirectConnectGatewayAssociationProposalResult)
* [AllocateTransitVirtualInterfaceResult](#AllocateTransitVirtualInterfaceResult)
* [ConfirmConnectionResponse](#ConfirmConnectionResponse)
* [ConfirmPrivateVirtualInterfaceResponse](#ConfirmPrivateVirtualInterfaceResponse)
* [ConfirmPublicVirtualInterfaceResponse](#ConfirmPublicVirtualInterfaceResponse)
* [ConfirmTransitVirtualInterfaceResponse](#ConfirmTransitVirtualInterfaceResponse)
* [Connection](#Connection)
* [Connections](#Connections)
* [CreateBGPPeerResponse](#CreateBGPPeerResponse)
* [CreateDirectConnectGatewayAssociationProposalResult](#CreateDirectConnectGatewayAssociationProposalResult)
* [CreateDirectConnectGatewayAssociationResult](#CreateDirectConnectGatewayAssociationResult)
* [CreateDirectConnectGatewayResult](#CreateDirectConnectGatewayResult)
* [CreateTransitVirtualInterfaceResult](#CreateTransitVirtualInterfaceResult)
* [DeleteBGPPeerResponse](#DeleteBGPPeerResponse)
* [DeleteDirectConnectGatewayAssociationProposalResult](#DeleteDirectConnectGatewayAssociationProposalResult)
* [DeleteDirectConnectGatewayAssociationResult](#DeleteDirectConnectGatewayAssociationResult)
* [DeleteDirectConnectGatewayResult](#DeleteDirectConnectGatewayResult)
* [DeleteInterconnectResponse](#DeleteInterconnectResponse)
* [DeleteVirtualInterfaceResponse](#DeleteVirtualInterfaceResponse)
* [DescribeConnectionLoaResponse](#DescribeConnectionLoaResponse)
* [DescribeDirectConnectGatewayAssociationProposalsResult](#DescribeDirectConnectGatewayAssociationProposalsResult)
* [DescribeDirectConnectGatewayAssociationsResult](#DescribeDirectConnectGatewayAssociationsResult)
* [DescribeDirectConnectGatewayAttachmentsResult](#DescribeDirectConnectGatewayAttachmentsResult)
* [DescribeDirectConnectGatewaysResult](#DescribeDirectConnectGatewaysResult)
* [DescribeInterconnectLoaResponse](#DescribeInterconnectLoaResponse)
* [DescribeTagsResponse](#DescribeTagsResponse)
* [Interconnect](#Interconnect)
* [Interconnects](#Interconnects)
* [Lag](#Lag)
* [Lags](#Lags)
* [Loa](#Loa)
* [Locations](#Locations)
* [TagResourceResponse](#TagResourceResponse)
* [UntagResourceResponse](#UntagResourceResponse)
* [UpdateDirectConnectGatewayAssociationResult](#UpdateDirectConnectGatewayAssociationResult)
* [VirtualGateways](#VirtualGateways)
* [VirtualInterface](#VirtualInterface)
* [VirtualInterfaces](#VirtualInterfaces)


@docs AcceptDirectConnectGatewayAssociationProposalResult,AllocateTransitVirtualInterfaceResult,ConfirmConnectionResponse,ConfirmPrivateVirtualInterfaceResponse,ConfirmPublicVirtualInterfaceResponse,ConfirmTransitVirtualInterfaceResponse,Connection,Connections,CreateBGPPeerResponse,CreateDirectConnectGatewayAssociationProposalResult,CreateDirectConnectGatewayAssociationResult,CreateDirectConnectGatewayResult,CreateTransitVirtualInterfaceResult,DeleteBGPPeerResponse,DeleteDirectConnectGatewayAssociationProposalResult,DeleteDirectConnectGatewayAssociationResult,DeleteDirectConnectGatewayResult,DeleteInterconnectResponse,DeleteVirtualInterfaceResponse,DescribeConnectionLoaResponse,DescribeDirectConnectGatewayAssociationProposalsResult,DescribeDirectConnectGatewayAssociationsResult,DescribeDirectConnectGatewayAttachmentsResult,DescribeDirectConnectGatewaysResult,DescribeInterconnectLoaResponse,DescribeTagsResponse,Interconnect,Interconnects,Lag,Lags,Loa,Locations,TagResourceResponse,UntagResourceResponse,UpdateDirectConnectGatewayAssociationResult,VirtualGateways,VirtualInterface,VirtualInterfaces

## Records

* [AssociatedGateway](#AssociatedGateway)
* [BGPPeer](#BGPPeer)
* [DirectConnectGateway](#DirectConnectGateway)
* [DirectConnectGatewayAssociation](#DirectConnectGatewayAssociation)
* [DirectConnectGatewayAssociationProposal](#DirectConnectGatewayAssociationProposal)
* [DirectConnectGatewayAttachment](#DirectConnectGatewayAttachment)
* [Location](#Location)
* [NewBGPPeer](#NewBGPPeer)
* [NewPrivateVirtualInterface](#NewPrivateVirtualInterface)
* [NewPrivateVirtualInterfaceAllocation](#NewPrivateVirtualInterfaceAllocation)
* [NewPublicVirtualInterface](#NewPublicVirtualInterface)
* [NewPublicVirtualInterfaceAllocation](#NewPublicVirtualInterfaceAllocation)
* [NewTransitVirtualInterface](#NewTransitVirtualInterface)
* [NewTransitVirtualInterfaceAllocation](#NewTransitVirtualInterfaceAllocation)
* [ResourceTag](#ResourceTag)
* [RouteFilterPrefix](#RouteFilterPrefix)
* [Tag](#Tag)
* [VirtualGateway](#VirtualGateway)


@docs AssociatedGateway,BGPPeer,DirectConnectGateway,DirectConnectGatewayAssociation,DirectConnectGatewayAssociationProposal,DirectConnectGatewayAttachment,Location,NewBGPPeer,NewPrivateVirtualInterface,NewPrivateVirtualInterfaceAllocation,NewPublicVirtualInterface,NewPublicVirtualInterfaceAllocation,NewTransitVirtualInterface,NewTransitVirtualInterfaceAllocation,ResourceTag,RouteFilterPrefix,Tag,VirtualGateway

## Unions

* [AddressFamily](#AddressFamily)
* [BGPPeerState](#BGPPeerState)
* [BGPStatus](#BGPStatus)
* [ConnectionState](#ConnectionState)
* [DirectConnectGatewayAssociationProposalState](#DirectConnectGatewayAssociationProposalState)
* [DirectConnectGatewayAssociationState](#DirectConnectGatewayAssociationState)
* [DirectConnectGatewayAttachmentState](#DirectConnectGatewayAttachmentState)
* [DirectConnectGatewayAttachmentType](#DirectConnectGatewayAttachmentType)
* [DirectConnectGatewayState](#DirectConnectGatewayState)
* [GatewayType](#GatewayType)
* [HasLogicalRedundancy](#HasLogicalRedundancy)
* [InterconnectState](#InterconnectState)
* [LagState](#LagState)
* [LoaContentType](#LoaContentType)
* [VirtualInterfaceState](#VirtualInterfaceState)


@docs AddressFamily,BGPPeerState,BGPStatus,ConnectionState,DirectConnectGatewayAssociationProposalState,DirectConnectGatewayAssociationState,DirectConnectGatewayAttachmentState,DirectConnectGatewayAttachmentType,DirectConnectGatewayState,GatewayType,HasLogicalRedundancy,InterconnectState,LagState,LoaContentType,VirtualInterfaceState

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
        "directconnect"
        "2012-10-25"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "OvertureService")



-- OPERATIONS

{-| <p>Accepts a proposal request to attach a virtual private gateway or transit gateway to a Direct Connect gateway.</p>

__Required Parameters__

* `directConnectGatewayId` __:__ `String`
* `proposalId` __:__ `String`
* `associatedGatewayOwnerAccount` __:__ `String`


-}

acceptDirectConnectGatewayAssociationProposal :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( AcceptDirectConnectGatewayAssociationProposalOptions -> AcceptDirectConnectGatewayAssociationProposalOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AcceptDirectConnectGatewayAssociationProposalResult)

acceptDirectConnectGatewayAssociationProposal directConnectGatewayId proposalId associatedGatewayOwnerAccount setOptions =
    
    let
        requestInput = AcceptDirectConnectGatewayAssociationProposalRequest
            
            directConnectGatewayId
            
            proposalId
            
            associatedGatewayOwnerAccount
            
            options.overrideAllowedPrefixesToDirectConnectGateway
            
        
        options = setOptions (AcceptDirectConnectGatewayAssociationProposalOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> acceptDirectConnectGatewayAssociationProposalRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AcceptDirectConnectGatewayAssociationProposal"
                
                (AWS.Core.Decode.ResultDecoder "AcceptDirectConnectGatewayAssociationProposalResult" acceptDirectConnectGatewayAssociationProposalResultDecoder)
                
            )



{-| Options for a acceptDirectConnectGatewayAssociationProposal request
-}
type alias AcceptDirectConnectGatewayAssociationProposalOptions =
    {
    overrideAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix)
    }



{-| <p>Deprecated. Use <a>AllocateHostedConnection</a> instead.</p> <p>Creates a hosted connection on an interconnect.</p> <p>Allocates a VLAN number and a specified amount of bandwidth for use by a hosted connection on the specified interconnect.</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>

__Required Parameters__

* `bandwidth` __:__ `String`
* `connectionName` __:__ `String`
* `ownerAccount` __:__ `String`
* `interconnectId` __:__ `String`
* `vlan` __:__ `Int`


-}

allocateConnectionOnInterconnect :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    Int ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Connection)

allocateConnectionOnInterconnect bandwidth connectionName ownerAccount interconnectId vlan =
    
    let
        requestInput = AllocateConnectionOnInterconnectRequest
            
            bandwidth
            
            connectionName
            
            ownerAccount
            
            interconnectId
            
            vlan
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> allocateConnectionOnInterconnectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AllocateConnectionOnInterconnect"
                
                (AWS.Core.Decode.ResultDecoder "Connection" connectionDecoder)
                
            )





{-| <p>Creates a hosted connection on the specified interconnect or a link aggregation group (LAG) of interconnects.</p> <p>Allocates a VLAN number and a specified amount of capacity (bandwidth) for use by a hosted connection on the specified interconnect or LAG of interconnects. AWS polices the hosted connection for the specified capacity and the AWS Direct Connect Partner must also police the hosted connection for the specified capacity.</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>

__Required Parameters__

* `connectionId` __:__ `String`
* `ownerAccount` __:__ `String`
* `bandwidth` __:__ `String`
* `connectionName` __:__ `String`
* `vlan` __:__ `Int`


-}

allocateHostedConnection :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    Int ->
  
  
    ( AllocateHostedConnectionOptions -> AllocateHostedConnectionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Connection)

allocateHostedConnection connectionId ownerAccount bandwidth connectionName vlan setOptions =
    
    let
        requestInput = AllocateHostedConnectionRequest
            
            connectionId
            
            ownerAccount
            
            bandwidth
            
            connectionName
            
            vlan
            
            options.tags
            
        
        options = setOptions (AllocateHostedConnectionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> allocateHostedConnectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AllocateHostedConnection"
                
                (AWS.Core.Decode.ResultDecoder "Connection" connectionDecoder)
                
            )



{-| Options for a allocateHostedConnection request
-}
type alias AllocateHostedConnectionOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Provisions a private virtual interface to be owned by the specified AWS account.</p> <p>Virtual interfaces created using this action must be confirmed by the owner using <a>ConfirmPrivateVirtualInterface</a>. Until then, the virtual interface is in the <code>Confirming</code> state and is not available to handle traffic.</p>

__Required Parameters__

* `connectionId` __:__ `String`
* `ownerAccount` __:__ `String`
* `newPrivateVirtualInterfaceAllocation` __:__ `NewPrivateVirtualInterfaceAllocation`


-}

allocatePrivateVirtualInterface :
  
    String ->
  
    String ->
  
    NewPrivateVirtualInterfaceAllocation ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VirtualInterface)

allocatePrivateVirtualInterface connectionId ownerAccount newPrivateVirtualInterfaceAllocation =
    
    let
        requestInput = AllocatePrivateVirtualInterfaceRequest
            
            connectionId
            
            ownerAccount
            
            newPrivateVirtualInterfaceAllocation
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> allocatePrivateVirtualInterfaceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AllocatePrivateVirtualInterface"
                
                (AWS.Core.Decode.ResultDecoder "VirtualInterface" virtualInterfaceDecoder)
                
            )





{-| <p>Provisions a public virtual interface to be owned by the specified AWS account.</p> <p>The owner of a connection calls this function to provision a public virtual interface to be owned by the specified AWS account.</p> <p>Virtual interfaces created using this function must be confirmed by the owner using <a>ConfirmPublicVirtualInterface</a>. Until this step has been completed, the virtual interface is in the <code>confirming</code> state and is not available to handle traffic.</p> <p>When creating an IPv6 public virtual interface, omit the Amazon address and customer address. IPv6 addresses are automatically assigned from the Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses.</p>

__Required Parameters__

* `connectionId` __:__ `String`
* `ownerAccount` __:__ `String`
* `newPublicVirtualInterfaceAllocation` __:__ `NewPublicVirtualInterfaceAllocation`


-}

allocatePublicVirtualInterface :
  
    String ->
  
    String ->
  
    NewPublicVirtualInterfaceAllocation ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VirtualInterface)

allocatePublicVirtualInterface connectionId ownerAccount newPublicVirtualInterfaceAllocation =
    
    let
        requestInput = AllocatePublicVirtualInterfaceRequest
            
            connectionId
            
            ownerAccount
            
            newPublicVirtualInterfaceAllocation
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> allocatePublicVirtualInterfaceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AllocatePublicVirtualInterface"
                
                (AWS.Core.Decode.ResultDecoder "VirtualInterface" virtualInterfaceDecoder)
                
            )





{-| <p>Provisions a transit virtual interface to be owned by the specified AWS account. Use this type of interface to connect a transit gateway to your Direct Connect gateway.</p> <p>The owner of a connection provisions a transit virtual interface to be owned by the specified AWS account.</p> <p>After you create a transit virtual interface, it must be confirmed by the owner using <a>ConfirmTransitVirtualInterface</a>. Until this step has been completed, the transit virtual interface is in the <code>requested</code> state and is not available to handle traffic.</p>

__Required Parameters__

* `connectionId` __:__ `String`
* `ownerAccount` __:__ `String`
* `newTransitVirtualInterfaceAllocation` __:__ `NewTransitVirtualInterfaceAllocation`


-}

allocateTransitVirtualInterface :
  
    String ->
  
    String ->
  
    NewTransitVirtualInterfaceAllocation ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AllocateTransitVirtualInterfaceResult)

allocateTransitVirtualInterface connectionId ownerAccount newTransitVirtualInterfaceAllocation =
    
    let
        requestInput = AllocateTransitVirtualInterfaceRequest
            
            connectionId
            
            ownerAccount
            
            newTransitVirtualInterfaceAllocation
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> allocateTransitVirtualInterfaceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AllocateTransitVirtualInterface"
                
                (AWS.Core.Decode.ResultDecoder "AllocateTransitVirtualInterfaceResult" allocateTransitVirtualInterfaceResultDecoder)
                
            )





{-| <p>Associates an existing connection with a link aggregation group (LAG). The connection is interrupted and re-established as a member of the LAG (connectivity to AWS is interrupted). The connection must be hosted on the same AWS Direct Connect endpoint as the LAG, and its bandwidth must match the bandwidth for the LAG. You can re-associate a connection that's currently associated with a different LAG; however, if removing the connection would cause the original LAG to fall below its setting for minimum number of operational connections, the request fails.</p> <p>Any virtual interfaces that are directly associated with the connection are automatically re-associated with the LAG. If the connection was originally associated with a different LAG, the virtual interfaces remain associated with the original LAG.</p> <p>For interconnects, any hosted connections are automatically re-associated with the LAG. If the interconnect was originally associated with a different LAG, the hosted connections remain associated with the original LAG.</p>

__Required Parameters__

* `connectionId` __:__ `String`
* `lagId` __:__ `String`


-}

associateConnectionWithLag :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Connection)

associateConnectionWithLag connectionId lagId =
    
    let
        requestInput = AssociateConnectionWithLagRequest
            
            connectionId
            
            lagId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateConnectionWithLagRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateConnectionWithLag"
                
                (AWS.Core.Decode.ResultDecoder "Connection" connectionDecoder)
                
            )





{-| <p>Associates a hosted connection and its virtual interfaces with a link aggregation group (LAG) or interconnect. If the target interconnect or LAG has an existing hosted connection with a conflicting VLAN number or IP address, the operation fails. This action temporarily interrupts the hosted connection's connectivity to AWS as it is being migrated.</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>

__Required Parameters__

* `connectionId` __:__ `String`
* `parentConnectionId` __:__ `String`


-}

associateHostedConnection :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Connection)

associateHostedConnection connectionId parentConnectionId =
    
    let
        requestInput = AssociateHostedConnectionRequest
            
            connectionId
            
            parentConnectionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateHostedConnectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateHostedConnection"
                
                (AWS.Core.Decode.ResultDecoder "Connection" connectionDecoder)
                
            )





{-| <p>Associates a virtual interface with a specified link aggregation group (LAG) or connection. Connectivity to AWS is temporarily interrupted as the virtual interface is being migrated. If the target connection or LAG has an associated virtual interface with a conflicting VLAN number or a conflicting IP address, the operation fails.</p> <p>Virtual interfaces associated with a hosted connection cannot be associated with a LAG; hosted connections must be migrated along with their virtual interfaces using <a>AssociateHostedConnection</a>.</p> <p>To reassociate a virtual interface to a new connection or LAG, the requester must own either the virtual interface itself or the connection to which the virtual interface is currently associated. Additionally, the requester must own the connection or LAG for the association.</p>

__Required Parameters__

* `virtualInterfaceId` __:__ `String`
* `connectionId` __:__ `String`


-}

associateVirtualInterface :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VirtualInterface)

associateVirtualInterface virtualInterfaceId connectionId =
    
    let
        requestInput = AssociateVirtualInterfaceRequest
            
            virtualInterfaceId
            
            connectionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateVirtualInterfaceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateVirtualInterface"
                
                (AWS.Core.Decode.ResultDecoder "VirtualInterface" virtualInterfaceDecoder)
                
            )





{-| <p>Confirms the creation of the specified hosted connection on an interconnect.</p> <p>Upon creation, the hosted connection is initially in the <code>Ordering</code> state, and remains in this state until the owner confirms creation of the hosted connection.</p>

__Required Parameters__

* `connectionId` __:__ `String`


-}

confirmConnection :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfirmConnectionResponse)

confirmConnection connectionId =
    
    let
        requestInput = ConfirmConnectionRequest
            
            connectionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> confirmConnectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ConfirmConnection"
                
                (AWS.Core.Decode.ResultDecoder "ConfirmConnectionResponse" confirmConnectionResponseDecoder)
                
            )





{-| <p>Accepts ownership of a private virtual interface created by another AWS account.</p> <p>After the virtual interface owner makes this call, the virtual interface is created and attached to the specified virtual private gateway or Direct Connect gateway, and is made available to handle traffic.</p>

__Required Parameters__

* `virtualInterfaceId` __:__ `String`


-}

confirmPrivateVirtualInterface :
  
    String ->
  
  
    ( ConfirmPrivateVirtualInterfaceOptions -> ConfirmPrivateVirtualInterfaceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfirmPrivateVirtualInterfaceResponse)

confirmPrivateVirtualInterface virtualInterfaceId setOptions =
    
    let
        requestInput = ConfirmPrivateVirtualInterfaceRequest
            
            virtualInterfaceId
            
            options.virtualGatewayId
            
            options.directConnectGatewayId
            
        
        options = setOptions (ConfirmPrivateVirtualInterfaceOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> confirmPrivateVirtualInterfaceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ConfirmPrivateVirtualInterface"
                
                (AWS.Core.Decode.ResultDecoder "ConfirmPrivateVirtualInterfaceResponse" confirmPrivateVirtualInterfaceResponseDecoder)
                
            )



{-| Options for a confirmPrivateVirtualInterface request
-}
type alias ConfirmPrivateVirtualInterfaceOptions =
    {
    virtualGatewayId : Maybe String,directConnectGatewayId : Maybe String
    }



{-| <p>Accepts ownership of a public virtual interface created by another AWS account.</p> <p>After the virtual interface owner makes this call, the specified virtual interface is created and made available to handle traffic.</p>

__Required Parameters__

* `virtualInterfaceId` __:__ `String`


-}

confirmPublicVirtualInterface :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfirmPublicVirtualInterfaceResponse)

confirmPublicVirtualInterface virtualInterfaceId =
    
    let
        requestInput = ConfirmPublicVirtualInterfaceRequest
            
            virtualInterfaceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> confirmPublicVirtualInterfaceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ConfirmPublicVirtualInterface"
                
                (AWS.Core.Decode.ResultDecoder "ConfirmPublicVirtualInterfaceResponse" confirmPublicVirtualInterfaceResponseDecoder)
                
            )





{-| <p>Accepts ownership of a transit virtual interface created by another AWS account.</p> <p> After the owner of the transit virtual interface makes this call, the specified transit virtual interface is created and made available to handle traffic.</p>

__Required Parameters__

* `virtualInterfaceId` __:__ `String`
* `directConnectGatewayId` __:__ `String`


-}

confirmTransitVirtualInterface :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfirmTransitVirtualInterfaceResponse)

confirmTransitVirtualInterface virtualInterfaceId directConnectGatewayId =
    
    let
        requestInput = ConfirmTransitVirtualInterfaceRequest
            
            virtualInterfaceId
            
            directConnectGatewayId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> confirmTransitVirtualInterfaceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ConfirmTransitVirtualInterface"
                
                (AWS.Core.Decode.ResultDecoder "ConfirmTransitVirtualInterfaceResponse" confirmTransitVirtualInterfaceResponseDecoder)
                
            )





{-| <p>Creates a BGP peer on the specified virtual interface.</p> <p>You must create a BGP peer for the corresponding address family (IPv4/IPv6) in order to access AWS resources that also use that address family.</p> <p>If logical redundancy is not supported by the connection, interconnect, or LAG, the BGP peer cannot be in the same address family as an existing BGP peer on the virtual interface.</p> <p>When creating a IPv6 BGP peer, omit the Amazon address and customer address. IPv6 addresses are automatically assigned from the Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses.</p> <p>For a public virtual interface, the Autonomous System Number (ASN) must be private or already whitelisted for the virtual interface.</p>

__Required Parameters__



-}

createBGPPeer :
  
  
    ( CreateBGPPeerOptions -> CreateBGPPeerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateBGPPeerResponse)

createBGPPeer setOptions =
    
    let
        requestInput = CreateBGPPeerRequest
            
            options.virtualInterfaceId
            
            options.newBGPPeer
            
        
        options = setOptions (CreateBGPPeerOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createBGPPeerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateBGPPeer"
                
                (AWS.Core.Decode.ResultDecoder "CreateBGPPeerResponse" createBGPPeerResponseDecoder)
                
            )



{-| Options for a createBGPPeer request
-}
type alias CreateBGPPeerOptions =
    {
    virtualInterfaceId : Maybe String,newBGPPeer : Maybe NewBGPPeer
    }



{-| <p>Creates a connection between a customer network and a specific AWS Direct Connect location.</p> <p>A connection links your internal network to an AWS Direct Connect location over a standard Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router.</p> <p>To find the locations for your Region, use <a>DescribeLocations</a>.</p> <p>You can automatically add the new connection to a link aggregation group (LAG) by specifying a LAG ID in the request. This ensures that the new connection is allocated on the same AWS Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint, the request fails and no connection is created.</p>

__Required Parameters__

* `location` __:__ `String`
* `bandwidth` __:__ `String`
* `connectionName` __:__ `String`


-}

createConnection :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateConnectionOptions -> CreateConnectionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Connection)

createConnection location bandwidth connectionName setOptions =
    
    let
        requestInput = CreateConnectionRequest
            
            location
            
            bandwidth
            
            connectionName
            
            options.lagId
            
            options.tags
            
        
        options = setOptions (CreateConnectionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createConnectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateConnection"
                
                (AWS.Core.Decode.ResultDecoder "Connection" connectionDecoder)
                
            )



{-| Options for a createConnection request
-}
type alias CreateConnectionOptions =
    {
    lagId : Maybe String,tags : Maybe (List Tag)
    }



{-| <p>Creates a Direct Connect gateway, which is an intermediate object that enables you to connect a set of virtual interfaces and virtual private gateways. A Direct Connect gateway is global and visible in any AWS Region after it is created. The virtual interfaces and virtual private gateways that are connected through a Direct Connect gateway can be in different AWS Regions. This enables you to connect to a VPC in any Region, regardless of the Region in which the virtual interfaces are located, and pass traffic between them.</p>

__Required Parameters__

* `directConnectGatewayName` __:__ `String`


-}

createDirectConnectGateway :
  
    String ->
  
  
    ( CreateDirectConnectGatewayOptions -> CreateDirectConnectGatewayOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDirectConnectGatewayResult)

createDirectConnectGateway directConnectGatewayName setOptions =
    
    let
        requestInput = CreateDirectConnectGatewayRequest
            
            directConnectGatewayName
            
            options.amazonSideAsn
            
        
        options = setOptions (CreateDirectConnectGatewayOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDirectConnectGatewayRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDirectConnectGateway"
                
                (AWS.Core.Decode.ResultDecoder "CreateDirectConnectGatewayResult" createDirectConnectGatewayResultDecoder)
                
            )



{-| Options for a createDirectConnectGateway request
-}
type alias CreateDirectConnectGatewayOptions =
    {
    amazonSideAsn : Maybe Int
    }



{-| <p>Creates an association between a Direct Connect gateway and a virtual private gateway. The virtual private gateway must be attached to a VPC and must not be associated with another Direct Connect gateway.</p>

__Required Parameters__

* `directConnectGatewayId` __:__ `String`


-}

createDirectConnectGatewayAssociation :
  
    String ->
  
  
    ( CreateDirectConnectGatewayAssociationOptions -> CreateDirectConnectGatewayAssociationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDirectConnectGatewayAssociationResult)

createDirectConnectGatewayAssociation directConnectGatewayId setOptions =
    
    let
        requestInput = CreateDirectConnectGatewayAssociationRequest
            
            directConnectGatewayId
            
            options.gatewayId
            
            options.addAllowedPrefixesToDirectConnectGateway
            
            options.virtualGatewayId
            
        
        options = setOptions (CreateDirectConnectGatewayAssociationOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDirectConnectGatewayAssociationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDirectConnectGatewayAssociation"
                
                (AWS.Core.Decode.ResultDecoder "CreateDirectConnectGatewayAssociationResult" createDirectConnectGatewayAssociationResultDecoder)
                
            )



{-| Options for a createDirectConnectGatewayAssociation request
-}
type alias CreateDirectConnectGatewayAssociationOptions =
    {
    gatewayId : Maybe String,addAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix),virtualGatewayId : Maybe String
    }



{-| <p>Creates a proposal to associate the specified virtual private gateway or transit gateway with the specified Direct Connect gateway.</p> <p>You can only associate a Direct Connect gateway and virtual private gateway or transit gateway when the account that owns the Direct Connect gateway and the account that owns the virtual private gateway or transit gateway have the same AWS Payer ID.</p>

__Required Parameters__

* `directConnectGatewayId` __:__ `String`
* `directConnectGatewayOwnerAccount` __:__ `String`
* `gatewayId` __:__ `String`


-}

createDirectConnectGatewayAssociationProposal :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateDirectConnectGatewayAssociationProposalOptions -> CreateDirectConnectGatewayAssociationProposalOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDirectConnectGatewayAssociationProposalResult)

createDirectConnectGatewayAssociationProposal directConnectGatewayId directConnectGatewayOwnerAccount gatewayId setOptions =
    
    let
        requestInput = CreateDirectConnectGatewayAssociationProposalRequest
            
            directConnectGatewayId
            
            directConnectGatewayOwnerAccount
            
            gatewayId
            
            options.addAllowedPrefixesToDirectConnectGateway
            
            options.removeAllowedPrefixesToDirectConnectGateway
            
        
        options = setOptions (CreateDirectConnectGatewayAssociationProposalOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDirectConnectGatewayAssociationProposalRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDirectConnectGatewayAssociationProposal"
                
                (AWS.Core.Decode.ResultDecoder "CreateDirectConnectGatewayAssociationProposalResult" createDirectConnectGatewayAssociationProposalResultDecoder)
                
            )



{-| Options for a createDirectConnectGatewayAssociationProposal request
-}
type alias CreateDirectConnectGatewayAssociationProposalOptions =
    {
    addAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix),removeAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix)
    }



{-| <p>Creates an interconnect between an AWS Direct Connect Partner's network and a specific AWS Direct Connect location.</p> <p>An interconnect is a connection that is capable of hosting other connections. The AWS Direct Connect partner can use an interconnect to provide AWS Direct Connect hosted connections to customers through their own network services. Like a standard connection, an interconnect links the partner's network to an AWS Direct Connect location over a standard Ethernet fiber-optic cable. One end is connected to the partner's router, the other to an AWS Direct Connect router.</p> <p>You can automatically add the new interconnect to a link aggregation group (LAG) by specifying a LAG ID in the request. This ensures that the new interconnect is allocated on the same AWS Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint, the request fails and no interconnect is created.</p> <p>For each end customer, the AWS Direct Connect Partner provisions a connection on their interconnect by calling <a>AllocateHostedConnection</a>. The end customer can then connect to AWS resources by creating a virtual interface on their connection, using the VLAN assigned to them by the AWS Direct Connect Partner.</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>

__Required Parameters__

* `interconnectName` __:__ `String`
* `bandwidth` __:__ `String`
* `location` __:__ `String`


-}

createInterconnect :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateInterconnectOptions -> CreateInterconnectOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Interconnect)

createInterconnect interconnectName bandwidth location setOptions =
    
    let
        requestInput = CreateInterconnectRequest
            
            interconnectName
            
            bandwidth
            
            location
            
            options.lagId
            
            options.tags
            
        
        options = setOptions (CreateInterconnectOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createInterconnectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateInterconnect"
                
                (AWS.Core.Decode.ResultDecoder "Interconnect" interconnectDecoder)
                
            )



{-| Options for a createInterconnect request
-}
type alias CreateInterconnectOptions =
    {
    lagId : Maybe String,tags : Maybe (List Tag)
    }



{-| <p>Creates a link aggregation group (LAG) with the specified number of bundled physical connections between the customer network and a specific AWS Direct Connect location. A LAG is a logical interface that uses the Link Aggregation Control Protocol (LACP) to aggregate multiple interfaces, enabling you to treat them as a single interface.</p> <p>All connections in a LAG must use the same bandwidth and must terminate at the same AWS Direct Connect endpoint.</p> <p>You can have up to 10 connections per LAG. Regardless of this limit, if you request more connections for the LAG than AWS Direct Connect can allocate on a single endpoint, no LAG is created.</p> <p>You can specify an existing physical connection or interconnect to include in the LAG (which counts towards the total number of connections). Doing so interrupts the current physical connection or hosted connections, and re-establishes them as a member of the LAG. The LAG will be created on the same AWS Direct Connect endpoint to which the connection terminates. Any virtual interfaces associated with the connection are automatically disassociated and re-associated with the LAG. The connection ID does not change.</p> <p>If the AWS account used to create a LAG is a registered AWS Direct Connect Partner, the LAG is automatically enabled to host sub-connections. For a LAG owned by a partner, any associated virtual interfaces cannot be directly configured.</p>

__Required Parameters__

* `numberOfConnections` __:__ `Int`
* `location` __:__ `String`
* `connectionsBandwidth` __:__ `String`
* `lagName` __:__ `String`


-}

createLag :
  
    Int ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateLagOptions -> CreateLagOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Lag)

createLag numberOfConnections location connectionsBandwidth lagName setOptions =
    
    let
        requestInput = CreateLagRequest
            
            numberOfConnections
            
            location
            
            connectionsBandwidth
            
            lagName
            
            options.connectionId
            
            options.tags
            
            options.childConnectionTags
            
        
        options = setOptions (CreateLagOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createLagRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateLag"
                
                (AWS.Core.Decode.ResultDecoder "Lag" lagDecoder)
                
            )



{-| Options for a createLag request
-}
type alias CreateLagOptions =
    {
    connectionId : Maybe String,tags : Maybe (List Tag),childConnectionTags : Maybe (List Tag)
    }



{-| <p>Creates a private virtual interface. A virtual interface is the VLAN that transports AWS Direct Connect traffic. A private virtual interface can be connected to either a Direct Connect gateway or a Virtual Private Gateway (VGW). Connecting the private virtual interface to a Direct Connect gateway enables the possibility for connecting to multiple VPCs, including VPCs in different AWS Regions. Connecting the private virtual interface to a VGW only provides access to a single VPC within the same Region.</p>

__Required Parameters__

* `connectionId` __:__ `String`
* `newPrivateVirtualInterface` __:__ `NewPrivateVirtualInterface`


-}

createPrivateVirtualInterface :
  
    String ->
  
    NewPrivateVirtualInterface ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VirtualInterface)

createPrivateVirtualInterface connectionId newPrivateVirtualInterface =
    
    let
        requestInput = CreatePrivateVirtualInterfaceRequest
            
            connectionId
            
            newPrivateVirtualInterface
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createPrivateVirtualInterfaceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePrivateVirtualInterface"
                
                (AWS.Core.Decode.ResultDecoder "VirtualInterface" virtualInterfaceDecoder)
                
            )





{-| <p>Creates a public virtual interface. A virtual interface is the VLAN that transports AWS Direct Connect traffic. A public virtual interface supports sending traffic to public services of AWS such as Amazon S3.</p> <p>When creating an IPv6 public virtual interface (<code>addressFamily</code> is <code>ipv6</code>), leave the <code>customer</code> and <code>amazon</code> address fields blank to use auto-assigned IPv6 space. Custom IPv6 addresses are not supported.</p>

__Required Parameters__

* `connectionId` __:__ `String`
* `newPublicVirtualInterface` __:__ `NewPublicVirtualInterface`


-}

createPublicVirtualInterface :
  
    String ->
  
    NewPublicVirtualInterface ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VirtualInterface)

createPublicVirtualInterface connectionId newPublicVirtualInterface =
    
    let
        requestInput = CreatePublicVirtualInterfaceRequest
            
            connectionId
            
            newPublicVirtualInterface
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createPublicVirtualInterfaceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePublicVirtualInterface"
                
                (AWS.Core.Decode.ResultDecoder "VirtualInterface" virtualInterfaceDecoder)
                
            )





{-| <p>Creates a transit virtual interface. A transit virtual interface should be used to access one or more transit gateways associated with Direct Connect gateways. A transit virtual interface enables the connection of multiple VPCs attached to a transit gateway to a Direct Connect gateway.</p> <important> <p>If you associate your transit gateway with one or more Direct Connect gateways, the Autonomous System Number (ASN) used by the transit gateway and the Direct Connect gateway must be different. For example, if you use the default ASN 64512 for both your the transit gateway and Direct Connect gateway, the association request fails.</p> </important>

__Required Parameters__

* `connectionId` __:__ `String`
* `newTransitVirtualInterface` __:__ `NewTransitVirtualInterface`


-}

createTransitVirtualInterface :
  
    String ->
  
    NewTransitVirtualInterface ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTransitVirtualInterfaceResult)

createTransitVirtualInterface connectionId newTransitVirtualInterface =
    
    let
        requestInput = CreateTransitVirtualInterfaceRequest
            
            connectionId
            
            newTransitVirtualInterface
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createTransitVirtualInterfaceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateTransitVirtualInterface"
                
                (AWS.Core.Decode.ResultDecoder "CreateTransitVirtualInterfaceResult" createTransitVirtualInterfaceResultDecoder)
                
            )





{-| <p>Deletes the specified BGP peer on the specified virtual interface with the specified customer address and ASN.</p> <p>You cannot delete the last BGP peer from a virtual interface.</p>

__Required Parameters__



-}

deleteBGPPeer :
  
  
    ( DeleteBGPPeerOptions -> DeleteBGPPeerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteBGPPeerResponse)

deleteBGPPeer setOptions =
    
    let
        requestInput = DeleteBGPPeerRequest
            
            options.virtualInterfaceId
            
            options.asn
            
            options.customerAddress
            
            options.bgpPeerId
            
        
        options = setOptions (DeleteBGPPeerOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteBGPPeerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteBGPPeer"
                
                (AWS.Core.Decode.ResultDecoder "DeleteBGPPeerResponse" deleteBGPPeerResponseDecoder)
                
            )



{-| Options for a deleteBGPPeer request
-}
type alias DeleteBGPPeerOptions =
    {
    virtualInterfaceId : Maybe String,asn : Maybe Int,customerAddress : Maybe String,bgpPeerId : Maybe String
    }



{-| <p>Deletes the specified connection.</p> <p>Deleting a connection only stops the AWS Direct Connect port hour and data transfer charges. If you are partnering with any third parties to connect with the AWS Direct Connect location, you must cancel your service with them separately.</p>

__Required Parameters__

* `connectionId` __:__ `String`


-}

deleteConnection :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Connection)

deleteConnection connectionId =
    
    let
        requestInput = DeleteConnectionRequest
            
            connectionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteConnectionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteConnection"
                
                (AWS.Core.Decode.ResultDecoder "Connection" connectionDecoder)
                
            )





{-| <p>Deletes the specified Direct Connect gateway. You must first delete all virtual interfaces that are attached to the Direct Connect gateway and disassociate all virtual private gateways that are associated with the Direct Connect gateway.</p>

__Required Parameters__

* `directConnectGatewayId` __:__ `String`


-}

deleteDirectConnectGateway :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDirectConnectGatewayResult)

deleteDirectConnectGateway directConnectGatewayId =
    
    let
        requestInput = DeleteDirectConnectGatewayRequest
            
            directConnectGatewayId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDirectConnectGatewayRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDirectConnectGateway"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDirectConnectGatewayResult" deleteDirectConnectGatewayResultDecoder)
                
            )





{-| <p>Deletes the association between the specified Direct Connect gateway and virtual private gateway.</p>

__Required Parameters__



-}

deleteDirectConnectGatewayAssociation :
  
  
    ( DeleteDirectConnectGatewayAssociationOptions -> DeleteDirectConnectGatewayAssociationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDirectConnectGatewayAssociationResult)

deleteDirectConnectGatewayAssociation setOptions =
    
    let
        requestInput = DeleteDirectConnectGatewayAssociationRequest
            
            options.associationId
            
            options.directConnectGatewayId
            
            options.virtualGatewayId
            
        
        options = setOptions (DeleteDirectConnectGatewayAssociationOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDirectConnectGatewayAssociationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDirectConnectGatewayAssociation"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDirectConnectGatewayAssociationResult" deleteDirectConnectGatewayAssociationResultDecoder)
                
            )



{-| Options for a deleteDirectConnectGatewayAssociation request
-}
type alias DeleteDirectConnectGatewayAssociationOptions =
    {
    associationId : Maybe String,directConnectGatewayId : Maybe String,virtualGatewayId : Maybe String
    }



{-| <p>Deletes the association proposal request between the specified Direct Connect gateway and virtual private gateway or transit gateway.</p>

__Required Parameters__

* `proposalId` __:__ `String`


-}

deleteDirectConnectGatewayAssociationProposal :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDirectConnectGatewayAssociationProposalResult)

deleteDirectConnectGatewayAssociationProposal proposalId =
    
    let
        requestInput = DeleteDirectConnectGatewayAssociationProposalRequest
            
            proposalId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDirectConnectGatewayAssociationProposalRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDirectConnectGatewayAssociationProposal"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDirectConnectGatewayAssociationProposalResult" deleteDirectConnectGatewayAssociationProposalResultDecoder)
                
            )





{-| <p>Deletes the specified interconnect.</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>

__Required Parameters__

* `interconnectId` __:__ `String`


-}

deleteInterconnect :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteInterconnectResponse)

deleteInterconnect interconnectId =
    
    let
        requestInput = DeleteInterconnectRequest
            
            interconnectId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteInterconnectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteInterconnect"
                
                (AWS.Core.Decode.ResultDecoder "DeleteInterconnectResponse" deleteInterconnectResponseDecoder)
                
            )





{-| <p>Deletes the specified link aggregation group (LAG). You cannot delete a LAG if it has active virtual interfaces or hosted connections.</p>

__Required Parameters__

* `lagId` __:__ `String`


-}

deleteLag :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Lag)

deleteLag lagId =
    
    let
        requestInput = DeleteLagRequest
            
            lagId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteLagRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLag"
                
                (AWS.Core.Decode.ResultDecoder "Lag" lagDecoder)
                
            )





{-| <p>Deletes a virtual interface.</p>

__Required Parameters__

* `virtualInterfaceId` __:__ `String`


-}

deleteVirtualInterface :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteVirtualInterfaceResponse)

deleteVirtualInterface virtualInterfaceId =
    
    let
        requestInput = DeleteVirtualInterfaceRequest
            
            virtualInterfaceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteVirtualInterfaceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteVirtualInterface"
                
                (AWS.Core.Decode.ResultDecoder "DeleteVirtualInterfaceResponse" deleteVirtualInterfaceResponseDecoder)
                
            )





{-| <p>Deprecated. Use <a>DescribeLoa</a> instead.</p> <p>Gets the LOA-CFA for a connection.</p> <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that your APN partner or service provider uses when establishing your cross connect to AWS at the colocation facility. For more information, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting Cross Connects at AWS Direct Connect Locations</a> in the <i>AWS Direct Connect User Guide</i>.</p>

__Required Parameters__

* `connectionId` __:__ `String`


-}

describeConnectionLoa :
  
    String ->
  
  
    ( DescribeConnectionLoaOptions -> DescribeConnectionLoaOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeConnectionLoaResponse)

describeConnectionLoa connectionId setOptions =
    
    let
        requestInput = DescribeConnectionLoaRequest
            
            connectionId
            
            options.providerName
            
            options.loaContentType
            
        
        options = setOptions (DescribeConnectionLoaOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeConnectionLoaRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeConnectionLoa"
                
                (AWS.Core.Decode.ResultDecoder "DescribeConnectionLoaResponse" describeConnectionLoaResponseDecoder)
                
            )



{-| Options for a describeConnectionLoa request
-}
type alias DescribeConnectionLoaOptions =
    {
    providerName : Maybe String,loaContentType : Maybe LoaContentType
    }



{-| <p>Displays the specified connection or all connections in this Region.</p>

__Required Parameters__



-}

describeConnections :
  
  
    ( DescribeConnectionsOptions -> DescribeConnectionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Connections)

describeConnections setOptions =
    
    let
        requestInput = DescribeConnectionsRequest
            
            options.connectionId
            
        
        options = setOptions (DescribeConnectionsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeConnectionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeConnections"
                
                (AWS.Core.Decode.ResultDecoder "Connections" connectionsDecoder)
                
            )



{-| Options for a describeConnections request
-}
type alias DescribeConnectionsOptions =
    {
    connectionId : Maybe String
    }



{-| <p>Deprecated. Use <a>DescribeHostedConnections</a> instead.</p> <p>Lists the connections that have been provisioned on the specified interconnect.</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>

__Required Parameters__

* `interconnectId` __:__ `String`


-}

describeConnectionsOnInterconnect :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Connections)

describeConnectionsOnInterconnect interconnectId =
    
    let
        requestInput = DescribeConnectionsOnInterconnectRequest
            
            interconnectId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeConnectionsOnInterconnectRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeConnectionsOnInterconnect"
                
                (AWS.Core.Decode.ResultDecoder "Connections" connectionsDecoder)
                
            )





{-| <p>Describes one or more association proposals for connection between a virtual private gateway or transit gateway and a Direct Connect gateway. </p>

__Required Parameters__



-}

describeDirectConnectGatewayAssociationProposals :
  
  
    ( DescribeDirectConnectGatewayAssociationProposalsOptions -> DescribeDirectConnectGatewayAssociationProposalsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDirectConnectGatewayAssociationProposalsResult)

describeDirectConnectGatewayAssociationProposals setOptions =
    
    let
        requestInput = DescribeDirectConnectGatewayAssociationProposalsRequest
            
            options.directConnectGatewayId
            
            options.proposalId
            
            options.associatedGatewayId
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeDirectConnectGatewayAssociationProposalsOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeDirectConnectGatewayAssociationProposalsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDirectConnectGatewayAssociationProposals"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDirectConnectGatewayAssociationProposalsResult" describeDirectConnectGatewayAssociationProposalsResultDecoder)
                
            )



{-| Options for a describeDirectConnectGatewayAssociationProposals request
-}
type alias DescribeDirectConnectGatewayAssociationProposalsOptions =
    {
    directConnectGatewayId : Maybe String,proposalId : Maybe String,associatedGatewayId : Maybe String,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists the associations between your Direct Connect gateways and virtual private gateways. You must specify a Direct Connect gateway, a virtual private gateway, or both. If you specify a Direct Connect gateway, the response contains all virtual private gateways associated with the Direct Connect gateway. If you specify a virtual private gateway, the response contains all Direct Connect gateways associated with the virtual private gateway. If you specify both, the response contains the association between the Direct Connect gateway and the virtual private gateway.</p>

__Required Parameters__



-}

describeDirectConnectGatewayAssociations :
  
  
    ( DescribeDirectConnectGatewayAssociationsOptions -> DescribeDirectConnectGatewayAssociationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDirectConnectGatewayAssociationsResult)

describeDirectConnectGatewayAssociations setOptions =
    
    let
        requestInput = DescribeDirectConnectGatewayAssociationsRequest
            
            options.associationId
            
            options.associatedGatewayId
            
            options.directConnectGatewayId
            
            options.maxResults
            
            options.nextToken
            
            options.virtualGatewayId
            
        
        options = setOptions (DescribeDirectConnectGatewayAssociationsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeDirectConnectGatewayAssociationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDirectConnectGatewayAssociations"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDirectConnectGatewayAssociationsResult" describeDirectConnectGatewayAssociationsResultDecoder)
                
            )



{-| Options for a describeDirectConnectGatewayAssociations request
-}
type alias DescribeDirectConnectGatewayAssociationsOptions =
    {
    associationId : Maybe String,associatedGatewayId : Maybe String,directConnectGatewayId : Maybe String,maxResults : Maybe Int,nextToken : Maybe String,virtualGatewayId : Maybe String
    }



{-| <p>Lists the attachments between your Direct Connect gateways and virtual interfaces. You must specify a Direct Connect gateway, a virtual interface, or both. If you specify a Direct Connect gateway, the response contains all virtual interfaces attached to the Direct Connect gateway. If you specify a virtual interface, the response contains all Direct Connect gateways attached to the virtual interface. If you specify both, the response contains the attachment between the Direct Connect gateway and the virtual interface.</p>

__Required Parameters__



-}

describeDirectConnectGatewayAttachments :
  
  
    ( DescribeDirectConnectGatewayAttachmentsOptions -> DescribeDirectConnectGatewayAttachmentsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDirectConnectGatewayAttachmentsResult)

describeDirectConnectGatewayAttachments setOptions =
    
    let
        requestInput = DescribeDirectConnectGatewayAttachmentsRequest
            
            options.directConnectGatewayId
            
            options.virtualInterfaceId
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeDirectConnectGatewayAttachmentsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeDirectConnectGatewayAttachmentsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDirectConnectGatewayAttachments"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDirectConnectGatewayAttachmentsResult" describeDirectConnectGatewayAttachmentsResultDecoder)
                
            )



{-| Options for a describeDirectConnectGatewayAttachments request
-}
type alias DescribeDirectConnectGatewayAttachmentsOptions =
    {
    directConnectGatewayId : Maybe String,virtualInterfaceId : Maybe String,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists all your Direct Connect gateways or only the specified Direct Connect gateway. Deleted Direct Connect gateways are not returned.</p>

__Required Parameters__



-}

describeDirectConnectGateways :
  
  
    ( DescribeDirectConnectGatewaysOptions -> DescribeDirectConnectGatewaysOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDirectConnectGatewaysResult)

describeDirectConnectGateways setOptions =
    
    let
        requestInput = DescribeDirectConnectGatewaysRequest
            
            options.directConnectGatewayId
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeDirectConnectGatewaysOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeDirectConnectGatewaysRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDirectConnectGateways"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDirectConnectGatewaysResult" describeDirectConnectGatewaysResultDecoder)
                
            )



{-| Options for a describeDirectConnectGateways request
-}
type alias DescribeDirectConnectGatewaysOptions =
    {
    directConnectGatewayId : Maybe String,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists the hosted connections that have been provisioned on the specified interconnect or link aggregation group (LAG).</p> <note> <p>Intended for use by AWS Direct Connect Partners only.</p> </note>

__Required Parameters__

* `connectionId` __:__ `String`


-}

describeHostedConnections :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Connections)

describeHostedConnections connectionId =
    
    let
        requestInput = DescribeHostedConnectionsRequest
            
            connectionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeHostedConnectionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeHostedConnections"
                
                (AWS.Core.Decode.ResultDecoder "Connections" connectionsDecoder)
                
            )





{-| <p>Deprecated. Use <a>DescribeLoa</a> instead.</p> <p>Gets the LOA-CFA for the specified interconnect.</p> <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to AWS at the colocation facility. For more information, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting Cross Connects at AWS Direct Connect Locations</a> in the <i>AWS Direct Connect User Guide</i>.</p>

__Required Parameters__

* `interconnectId` __:__ `String`


-}

describeInterconnectLoa :
  
    String ->
  
  
    ( DescribeInterconnectLoaOptions -> DescribeInterconnectLoaOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeInterconnectLoaResponse)

describeInterconnectLoa interconnectId setOptions =
    
    let
        requestInput = DescribeInterconnectLoaRequest
            
            interconnectId
            
            options.providerName
            
            options.loaContentType
            
        
        options = setOptions (DescribeInterconnectLoaOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeInterconnectLoaRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeInterconnectLoa"
                
                (AWS.Core.Decode.ResultDecoder "DescribeInterconnectLoaResponse" describeInterconnectLoaResponseDecoder)
                
            )



{-| Options for a describeInterconnectLoa request
-}
type alias DescribeInterconnectLoaOptions =
    {
    providerName : Maybe String,loaContentType : Maybe LoaContentType
    }



{-| <p>Lists the interconnects owned by the AWS account or only the specified interconnect.</p>

__Required Parameters__



-}

describeInterconnects :
  
  
    ( DescribeInterconnectsOptions -> DescribeInterconnectsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Interconnects)

describeInterconnects setOptions =
    
    let
        requestInput = DescribeInterconnectsRequest
            
            options.interconnectId
            
        
        options = setOptions (DescribeInterconnectsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeInterconnectsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeInterconnects"
                
                (AWS.Core.Decode.ResultDecoder "Interconnects" interconnectsDecoder)
                
            )



{-| Options for a describeInterconnects request
-}
type alias DescribeInterconnectsOptions =
    {
    interconnectId : Maybe String
    }



{-| <p>Describes all your link aggregation groups (LAG) or the specified LAG.</p>

__Required Parameters__



-}

describeLags :
  
  
    ( DescribeLagsOptions -> DescribeLagsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Lags)

describeLags setOptions =
    
    let
        requestInput = DescribeLagsRequest
            
            options.lagId
            
        
        options = setOptions (DescribeLagsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeLagsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLags"
                
                (AWS.Core.Decode.ResultDecoder "Lags" lagsDecoder)
                
            )



{-| Options for a describeLags request
-}
type alias DescribeLagsOptions =
    {
    lagId : Maybe String
    }



{-| <p>Gets the LOA-CFA for a connection, interconnect, or link aggregation group (LAG).</p> <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to AWS at the colocation facility. For more information, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting Cross Connects at AWS Direct Connect Locations</a> in the <i>AWS Direct Connect User Guide</i>.</p>

__Required Parameters__

* `connectionId` __:__ `String`


-}

describeLoa :
  
    String ->
  
  
    ( DescribeLoaOptions -> DescribeLoaOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Loa)

describeLoa connectionId setOptions =
    
    let
        requestInput = DescribeLoaRequest
            
            connectionId
            
            options.providerName
            
            options.loaContentType
            
        
        options = setOptions (DescribeLoaOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeLoaRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLoa"
                
                (AWS.Core.Decode.ResultDecoder "Loa" loaDecoder)
                
            )



{-| Options for a describeLoa request
-}
type alias DescribeLoaOptions =
    {
    providerName : Maybe String,loaContentType : Maybe LoaContentType
    }



{-| <p>Lists the AWS Direct Connect locations in the current AWS Region. These are the locations that can be selected when calling <a>CreateConnection</a> or <a>CreateInterconnect</a>.</p>

__Required Parameters__



-}

describeLocations :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Locations)

describeLocations =
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeLocations"
                
                (AWS.Core.Decode.ResultDecoder "Locations" locationsDecoder)
                
            )





{-| <p>Describes the tags associated with the specified AWS Direct Connect resources.</p>

__Required Parameters__

* `resourceArns` __:__ `(List String)`


-}

describeTags :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTagsResponse)

describeTags resourceArns =
    
    let
        requestInput = DescribeTagsRequest
            
            resourceArns
            
        
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
                
                (AWS.Core.Decode.ResultDecoder "DescribeTagsResponse" describeTagsResponseDecoder)
                
            )





{-| <p>Lists the virtual private gateways owned by the AWS account.</p> <p>You can create one or more AWS Direct Connect private virtual interfaces linked to a virtual private gateway.</p>

__Required Parameters__



-}

describeVirtualGateways :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VirtualGateways)

describeVirtualGateways =
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeVirtualGateways"
                
                (AWS.Core.Decode.ResultDecoder "VirtualGateways" virtualGatewaysDecoder)
                
            )





{-| <p>Displays all virtual interfaces for an AWS account. Virtual interfaces deleted fewer than 15 minutes before you make the request are also returned. If you specify a connection ID, only the virtual interfaces associated with the connection are returned. If you specify a virtual interface ID, then only a single virtual interface is returned.</p> <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer network.</p>

__Required Parameters__



-}

describeVirtualInterfaces :
  
  
    ( DescribeVirtualInterfacesOptions -> DescribeVirtualInterfacesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VirtualInterfaces)

describeVirtualInterfaces setOptions =
    
    let
        requestInput = DescribeVirtualInterfacesRequest
            
            options.connectionId
            
            options.virtualInterfaceId
            
        
        options = setOptions (DescribeVirtualInterfacesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeVirtualInterfacesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeVirtualInterfaces"
                
                (AWS.Core.Decode.ResultDecoder "VirtualInterfaces" virtualInterfacesDecoder)
                
            )



{-| Options for a describeVirtualInterfaces request
-}
type alias DescribeVirtualInterfacesOptions =
    {
    connectionId : Maybe String,virtualInterfaceId : Maybe String
    }



{-| <p>Disassociates a connection from a link aggregation group (LAG). The connection is interrupted and re-established as a standalone connection (the connection is not deleted; to delete the connection, use the <a>DeleteConnection</a> request). If the LAG has associated virtual interfaces or hosted connections, they remain associated with the LAG. A disassociated connection owned by an AWS Direct Connect Partner is automatically converted to an interconnect.</p> <p>If disassociating the connection would cause the LAG to fall below its setting for minimum number of operational connections, the request fails, except when it's the last member of the LAG. If all connections are disassociated, the LAG continues to exist as an empty LAG with no physical connections. </p>

__Required Parameters__

* `connectionId` __:__ `String`
* `lagId` __:__ `String`


-}

disassociateConnectionFromLag :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Connection)

disassociateConnectionFromLag connectionId lagId =
    
    let
        requestInput = DisassociateConnectionFromLagRequest
            
            connectionId
            
            lagId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateConnectionFromLagRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateConnectionFromLag"
                
                (AWS.Core.Decode.ResultDecoder "Connection" connectionDecoder)
                
            )





{-| <p>Adds the specified tags to the specified AWS Direct Connect resource. Each resource can have a maximum of 50 tags.</p> <p>Each tag consists of a key and an optional value. If a tag with the same key is already associated with the resource, this action updates its value.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

tagResource :
  
    String ->
  
    (List Tag) ->
  
  
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





{-| <p>Removes one or more tags from the specified AWS Direct Connect resource.</p>

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





{-| <p>Updates the specified attributes of the Direct Connect gateway association.</p> <p>Add or remove prefixes from the association.</p>

__Required Parameters__



-}

updateDirectConnectGatewayAssociation :
  
  
    ( UpdateDirectConnectGatewayAssociationOptions -> UpdateDirectConnectGatewayAssociationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDirectConnectGatewayAssociationResult)

updateDirectConnectGatewayAssociation setOptions =
    
    let
        requestInput = UpdateDirectConnectGatewayAssociationRequest
            
            options.associationId
            
            options.addAllowedPrefixesToDirectConnectGateway
            
            options.removeAllowedPrefixesToDirectConnectGateway
            
        
        options = setOptions (UpdateDirectConnectGatewayAssociationOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateDirectConnectGatewayAssociationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateDirectConnectGatewayAssociation"
                
                (AWS.Core.Decode.ResultDecoder "UpdateDirectConnectGatewayAssociationResult" updateDirectConnectGatewayAssociationResultDecoder)
                
            )



{-| Options for a updateDirectConnectGatewayAssociation request
-}
type alias UpdateDirectConnectGatewayAssociationOptions =
    {
    associationId : Maybe String,addAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix),removeAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix)
    }



{-| <p>Updates the attributes of the specified link aggregation group (LAG).</p> <p>You can update the following attributes:</p> <ul> <li> <p>The name of the LAG.</p> </li> <li> <p>The value for the minimum number of connections that must be operational for the LAG itself to be operational. </p> </li> </ul> <p>When you create a LAG, the default value for the minimum number of operational connections is zero (0). If you update this value and the number of operational connections falls below the specified value, the LAG automatically goes down to avoid over-utilization of the remaining connections. Adjust this value with care, as it could force the LAG down if it is set higher than the current number of operational connections.</p>

__Required Parameters__

* `lagId` __:__ `String`


-}

updateLag :
  
    String ->
  
  
    ( UpdateLagOptions -> UpdateLagOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper Lag)

updateLag lagId setOptions =
    
    let
        requestInput = UpdateLagRequest
            
            lagId
            
            options.lagName
            
            options.minimumLinks
            
        
        options = setOptions (UpdateLagOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateLagRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateLag"
                
                (AWS.Core.Decode.ResultDecoder "Lag" lagDecoder)
                
            )



{-| Options for a updateLag request
-}
type alias UpdateLagOptions =
    {
    lagName : Maybe String,minimumLinks : Maybe Int
    }



{-| <p>Updates the specified attributes of the specified virtual private interface.</p> <p>Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause an update to the underlying physical connection if it wasn't updated to support jumbo frames. Updating the connection disrupts network connectivity for all virtual interfaces associated with the connection for up to 30 seconds. To check whether your connection supports jumbo frames, call <a>DescribeConnections</a>. To check whether your virtual interface supports jumbo frames, call <a>DescribeVirtualInterfaces</a>.</p>

__Required Parameters__

* `virtualInterfaceId` __:__ `String`


-}

updateVirtualInterfaceAttributes :
  
    String ->
  
  
    ( UpdateVirtualInterfaceAttributesOptions -> UpdateVirtualInterfaceAttributesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VirtualInterface)

updateVirtualInterfaceAttributes virtualInterfaceId setOptions =
    
    let
        requestInput = UpdateVirtualInterfaceAttributesRequest
            
            virtualInterfaceId
            
            options.mtu
            
        
        options = setOptions (UpdateVirtualInterfaceAttributesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateVirtualInterfaceAttributesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateVirtualInterfaceAttributes"
                
                (AWS.Core.Decode.ResultDecoder "VirtualInterface" virtualInterfaceDecoder)
                
            )



{-| Options for a updateVirtualInterfaceAttributes request
-}
type alias UpdateVirtualInterfaceAttributesOptions =
    {
    mtu : Maybe Int
    }




{-| Type of HTTP response from acceptDirectConnectGatewayAssociationPropos
-}
type alias AcceptDirectConnectGatewayAssociationProposalResult =
    { directConnectGatewayAssociation : Maybe DirectConnectGatewayAssociation
    }



acceptDirectConnectGatewayAssociationProposalResultDecoder : JD.Decoder AcceptDirectConnectGatewayAssociationProposalResult
acceptDirectConnectGatewayAssociationProposalResultDecoder =
    JD.succeed AcceptDirectConnectGatewayAssociationProposalResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayAssociation", "DirectConnectGatewayAssociation"]
            directConnectGatewayAssociationDecoder
        )
        




acceptDirectConnectGatewayAssociationProposalResultToString : AcceptDirectConnectGatewayAssociationProposalResult -> String -- List (String, String)
acceptDirectConnectGatewayAssociationProposalResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGatewayAssociation" "" -- val.directConnectGatewayAssociation
        
    --     |> Dict.toList
    ""



{-| One of

* `AddressFamily_ipv4`
* `AddressFamily_ipv6`

-}
type AddressFamily
    = AddressFamily_ipv4
    | AddressFamily_ipv6



addressFamilyDecoder : JD.Decoder AddressFamily
addressFamilyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ipv4" ->
                        JD.succeed AddressFamily_ipv4

                    "ipv6" ->
                        JD.succeed AddressFamily_ipv6


                    _ ->
                        JD.fail "bad thing"
            )




addressFamilyToString : AddressFamily -> String
addressFamilyToString val =
    case val of
        AddressFamily_ipv4 ->
            "ipv4"

        AddressFamily_ipv6 ->
            "ipv6"




{-| Type of HTTP response from allocateTransitVirtualInterfa
-}
type alias AllocateTransitVirtualInterfaceResult =
    { virtualInterface : Maybe VirtualInterface
    }



allocateTransitVirtualInterfaceResultDecoder : JD.Decoder AllocateTransitVirtualInterfaceResult
allocateTransitVirtualInterfaceResultDecoder =
    JD.succeed AllocateTransitVirtualInterfaceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterface", "VirtualInterface"]
            virtualInterfaceDecoder
        )
        




allocateTransitVirtualInterfaceResultToString : AllocateTransitVirtualInterfaceResult -> String -- List (String, String)
allocateTransitVirtualInterfaceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterface" "" -- val.virtualInterface
        
    --     |> Dict.toList
    ""



{-| <p>Information about the associated gateway.</p>
-}
type alias AssociatedGateway =
    { id : Maybe String
    , type_ : Maybe GatewayType
    , ownerAccount : Maybe String
    , region : Maybe String
    }



associatedGatewayDecoder : JD.Decoder AssociatedGateway
associatedGatewayDecoder =
    JD.succeed AssociatedGateway
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            gatewayTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ownerAccount", "OwnerAccount"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["region", "Region"]
            JD.string
        )
        




associatedGatewayToString : AssociatedGateway -> String -- List (String, String)
associatedGatewayToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "ownerAccount" "" -- val.ownerAccount
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.toList
    ""



{-| <p>Information about a BGP peer.</p>
-}
type alias BGPPeer =
    { bgpPeerId : Maybe String
    , asn : Maybe Int
    , authKey : Maybe String
    , addressFamily : Maybe AddressFamily
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    , bgpPeerState : Maybe BGPPeerState
    , bgpStatus : Maybe BGPStatus
    , awsDeviceV2 : Maybe String
    }



bGPPeerDecoder : JD.Decoder BGPPeer
bGPPeerDecoder =
    JD.succeed BGPPeer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bgpPeerId", "BgpPeerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["asn", "Asn"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authKey", "AuthKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["addressFamily", "AddressFamily"]
            addressFamilyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amazonAddress", "AmazonAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customerAddress", "CustomerAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bgpPeerState", "BgpPeerState"]
            bGPPeerStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bgpStatus", "BgpStatus"]
            bGPStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["awsDeviceV2", "AwsDeviceV2"]
            JD.string
        )
        




bGPPeerToString : BGPPeer -> String -- List (String, String)
bGPPeerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bgpPeerId" "" -- val.bgpPeerId
        
    --     |> Dict.insert
    --         "asn" "" -- val.asn
        
    --     |> Dict.insert
    --         "authKey" "" -- val.authKey
        
    --     |> Dict.insert
    --         "addressFamily" "" -- val.addressFamily
        
    --     |> Dict.insert
    --         "amazonAddress" "" -- val.amazonAddress
        
    --     |> Dict.insert
    --         "customerAddress" "" -- val.customerAddress
        
    --     |> Dict.insert
    --         "bgpPeerState" "" -- val.bgpPeerState
        
    --     |> Dict.insert
    --         "bgpStatus" "" -- val.bgpStatus
        
    --     |> Dict.insert
    --         "awsDeviceV2" "" -- val.awsDeviceV2
        
    --     |> Dict.toList
    ""



{-| One of

* `BGPPeerState_verifying`
* `BGPPeerState_pending`
* `BGPPeerState_available`
* `BGPPeerState_deleting`
* `BGPPeerState_deleted`

-}
type BGPPeerState
    = BGPPeerState_verifying
    | BGPPeerState_pending
    | BGPPeerState_available
    | BGPPeerState_deleting
    | BGPPeerState_deleted



bGPPeerStateDecoder : JD.Decoder BGPPeerState
bGPPeerStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "verifying" ->
                        JD.succeed BGPPeerState_verifying

                    "pending" ->
                        JD.succeed BGPPeerState_pending

                    "available" ->
                        JD.succeed BGPPeerState_available

                    "deleting" ->
                        JD.succeed BGPPeerState_deleting

                    "deleted" ->
                        JD.succeed BGPPeerState_deleted


                    _ ->
                        JD.fail "bad thing"
            )




bGPPeerStateToString : BGPPeerState -> String
bGPPeerStateToString val =
    case val of
        BGPPeerState_verifying ->
            "verifying"

        BGPPeerState_pending ->
            "pending"

        BGPPeerState_available ->
            "available"

        BGPPeerState_deleting ->
            "deleting"

        BGPPeerState_deleted ->
            "deleted"




{-| One of

* `BGPStatus_up`
* `BGPStatus_down`
* `BGPStatus_unknown`

-}
type BGPStatus
    = BGPStatus_up
    | BGPStatus_down
    | BGPStatus_unknown



bGPStatusDecoder : JD.Decoder BGPStatus
bGPStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "up" ->
                        JD.succeed BGPStatus_up

                    "down" ->
                        JD.succeed BGPStatus_down

                    "unknown" ->
                        JD.succeed BGPStatus_unknown


                    _ ->
                        JD.fail "bad thing"
            )




bGPStatusToString : BGPStatus -> String
bGPStatusToString val =
    case val of
        BGPStatus_up ->
            "up"

        BGPStatus_down ->
            "down"

        BGPStatus_unknown ->
            "unknown"




{-| Type of HTTP response from confirmConnection
-}
type alias ConfirmConnectionResponse =
    { connectionState : Maybe ConnectionState
    }



confirmConnectionResponseDecoder : JD.Decoder ConfirmConnectionResponse
confirmConnectionResponseDecoder =
    JD.succeed ConfirmConnectionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["connectionState", "ConnectionState"]
            connectionStateDecoder
        )
        




confirmConnectionResponseToString : ConfirmConnectionResponse -> String -- List (String, String)
confirmConnectionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "connectionState" "" -- val.connectionState
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from confirmPrivateVirtualInterface
-}
type alias ConfirmPrivateVirtualInterfaceResponse =
    { virtualInterfaceState : Maybe VirtualInterfaceState
    }



confirmPrivateVirtualInterfaceResponseDecoder : JD.Decoder ConfirmPrivateVirtualInterfaceResponse
confirmPrivateVirtualInterfaceResponseDecoder =
    JD.succeed ConfirmPrivateVirtualInterfaceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceState", "VirtualInterfaceState"]
            virtualInterfaceStateDecoder
        )
        




confirmPrivateVirtualInterfaceResponseToString : ConfirmPrivateVirtualInterfaceResponse -> String -- List (String, String)
confirmPrivateVirtualInterfaceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterfaceState" "" -- val.virtualInterfaceState
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from confirmPublicVirtualInterface
-}
type alias ConfirmPublicVirtualInterfaceResponse =
    { virtualInterfaceState : Maybe VirtualInterfaceState
    }



confirmPublicVirtualInterfaceResponseDecoder : JD.Decoder ConfirmPublicVirtualInterfaceResponse
confirmPublicVirtualInterfaceResponseDecoder =
    JD.succeed ConfirmPublicVirtualInterfaceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceState", "VirtualInterfaceState"]
            virtualInterfaceStateDecoder
        )
        




confirmPublicVirtualInterfaceResponseToString : ConfirmPublicVirtualInterfaceResponse -> String -- List (String, String)
confirmPublicVirtualInterfaceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterfaceState" "" -- val.virtualInterfaceState
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from confirmTransitVirtualInterface
-}
type alias ConfirmTransitVirtualInterfaceResponse =
    { virtualInterfaceState : Maybe VirtualInterfaceState
    }



confirmTransitVirtualInterfaceResponseDecoder : JD.Decoder ConfirmTransitVirtualInterfaceResponse
confirmTransitVirtualInterfaceResponseDecoder =
    JD.succeed ConfirmTransitVirtualInterfaceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceState", "VirtualInterfaceState"]
            virtualInterfaceStateDecoder
        )
        




confirmTransitVirtualInterfaceResponseToString : ConfirmTransitVirtualInterfaceResponse -> String -- List (String, String)
confirmTransitVirtualInterfaceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterfaceState" "" -- val.virtualInterfaceState
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from co
-}
type alias Connection =
    { ownerAccount : Maybe String
    , connectionId : Maybe String
    , connectionName : Maybe String
    , connectionState : Maybe ConnectionState
    , region : Maybe String
    , location : Maybe String
    , bandwidth : Maybe String
    , vlan : Maybe Int
    , partnerName : Maybe String
    , loaIssueTime : Maybe Posix
    , lagId : Maybe String
    , awsDevice : Maybe String
    , jumboFrameCapable : Maybe Bool
    , awsDeviceV2 : Maybe String
    , hasLogicalRedundancy : Maybe HasLogicalRedundancy
    , tags : Maybe (List Tag)
    }



connectionDecoder : JD.Decoder Connection
connectionDecoder =
    JD.succeed Connection
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ownerAccount", "OwnerAccount"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["connectionId", "ConnectionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["connectionName", "ConnectionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["connectionState", "ConnectionState"]
            connectionStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["region", "Region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bandwidth", "Bandwidth"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vlan", "Vlan"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["partnerName", "PartnerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["loaIssueTime", "LoaIssueTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lagId", "LagId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["awsDevice", "AwsDevice"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["jumboFrameCapable", "JumboFrameCapable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["awsDeviceV2", "AwsDeviceV2"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hasLogicalRedundancy", "HasLogicalRedundancy"]
            hasLogicalRedundancyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




connectionToString : Connection -> String -- List (String, String)
connectionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ownerAccount" "" -- val.ownerAccount
        
    --     |> Dict.insert
    --         "connectionId" "" -- val.connectionId
        
    --     |> Dict.insert
    --         "connectionName" "" -- val.connectionName
        
    --     |> Dict.insert
    --         "connectionState" "" -- val.connectionState
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "bandwidth" "" -- val.bandwidth
        
    --     |> Dict.insert
    --         "vlan" "" -- val.vlan
        
    --     |> Dict.insert
    --         "partnerName" "" -- val.partnerName
        
    --     |> Dict.insert
    --         "loaIssueTime" "" -- val.loaIssueTime
        
    --     |> Dict.insert
    --         "lagId" "" -- val.lagId
        
    --     |> Dict.insert
    --         "awsDevice" "" -- val.awsDevice
        
    --     |> Dict.insert
    --         "jumboFrameCapable" "" -- val.jumboFrameCapable
        
    --     |> Dict.insert
    --         "awsDeviceV2" "" -- val.awsDeviceV2
        
    --     |> Dict.insert
    --         "hasLogicalRedundancy" "" -- val.hasLogicalRedundancy
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| One of

* `ConnectionState_ordering`
* `ConnectionState_requested`
* `ConnectionState_pending`
* `ConnectionState_available`
* `ConnectionState_down`
* `ConnectionState_deleting`
* `ConnectionState_deleted`
* `ConnectionState_rejected`
* `ConnectionState_unknown`

-}
type ConnectionState
    = ConnectionState_ordering
    | ConnectionState_requested
    | ConnectionState_pending
    | ConnectionState_available
    | ConnectionState_down
    | ConnectionState_deleting
    | ConnectionState_deleted
    | ConnectionState_rejected
    | ConnectionState_unknown



connectionStateDecoder : JD.Decoder ConnectionState
connectionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ordering" ->
                        JD.succeed ConnectionState_ordering

                    "requested" ->
                        JD.succeed ConnectionState_requested

                    "pending" ->
                        JD.succeed ConnectionState_pending

                    "available" ->
                        JD.succeed ConnectionState_available

                    "down" ->
                        JD.succeed ConnectionState_down

                    "deleting" ->
                        JD.succeed ConnectionState_deleting

                    "deleted" ->
                        JD.succeed ConnectionState_deleted

                    "rejected" ->
                        JD.succeed ConnectionState_rejected

                    "unknown" ->
                        JD.succeed ConnectionState_unknown


                    _ ->
                        JD.fail "bad thing"
            )




connectionStateToString : ConnectionState -> String
connectionStateToString val =
    case val of
        ConnectionState_ordering ->
            "ordering"

        ConnectionState_requested ->
            "requested"

        ConnectionState_pending ->
            "pending"

        ConnectionState_available ->
            "available"

        ConnectionState_down ->
            "down"

        ConnectionState_deleting ->
            "deleting"

        ConnectionState_deleted ->
            "deleted"

        ConnectionState_rejected ->
            "rejected"

        ConnectionState_unknown ->
            "unknown"




{-| Type of HTTP response from con
-}
type alias Connections =
    { connections : Maybe (List Connection)
    }



connectionsDecoder : JD.Decoder Connections
connectionsDecoder =
    JD.succeed Connections
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["connections", "Connections"]
            (JD.list connectionDecoder)
        )
        




connectionsToString : Connections -> String -- List (String, String)
connectionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "connections" "" -- val.connections
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createBGPPeer
-}
type alias CreateBGPPeerResponse =
    { virtualInterface : Maybe VirtualInterface
    }



createBGPPeerResponseDecoder : JD.Decoder CreateBGPPeerResponse
createBGPPeerResponseDecoder =
    JD.succeed CreateBGPPeerResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterface", "VirtualInterface"]
            virtualInterfaceDecoder
        )
        




createBGPPeerResponseToString : CreateBGPPeerResponse -> String -- List (String, String)
createBGPPeerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterface" "" -- val.virtualInterface
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDirectConnectGatewayAssociationPropos
-}
type alias CreateDirectConnectGatewayAssociationProposalResult =
    { directConnectGatewayAssociationProposal : Maybe DirectConnectGatewayAssociationProposal
    }



createDirectConnectGatewayAssociationProposalResultDecoder : JD.Decoder CreateDirectConnectGatewayAssociationProposalResult
createDirectConnectGatewayAssociationProposalResultDecoder =
    JD.succeed CreateDirectConnectGatewayAssociationProposalResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayAssociationProposal", "DirectConnectGatewayAssociationProposal"]
            directConnectGatewayAssociationProposalDecoder
        )
        




createDirectConnectGatewayAssociationProposalResultToString : CreateDirectConnectGatewayAssociationProposalResult -> String -- List (String, String)
createDirectConnectGatewayAssociationProposalResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGatewayAssociationProposal" "" -- val.directConnectGatewayAssociationProposal
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDirectConnectGatewayAssociati
-}
type alias CreateDirectConnectGatewayAssociationResult =
    { directConnectGatewayAssociation : Maybe DirectConnectGatewayAssociation
    }



createDirectConnectGatewayAssociationResultDecoder : JD.Decoder CreateDirectConnectGatewayAssociationResult
createDirectConnectGatewayAssociationResultDecoder =
    JD.succeed CreateDirectConnectGatewayAssociationResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayAssociation", "DirectConnectGatewayAssociation"]
            directConnectGatewayAssociationDecoder
        )
        




createDirectConnectGatewayAssociationResultToString : CreateDirectConnectGatewayAssociationResult -> String -- List (String, String)
createDirectConnectGatewayAssociationResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGatewayAssociation" "" -- val.directConnectGatewayAssociation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDirectConnectGatew
-}
type alias CreateDirectConnectGatewayResult =
    { directConnectGateway : Maybe DirectConnectGateway
    }



createDirectConnectGatewayResultDecoder : JD.Decoder CreateDirectConnectGatewayResult
createDirectConnectGatewayResultDecoder =
    JD.succeed CreateDirectConnectGatewayResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGateway", "DirectConnectGateway"]
            directConnectGatewayDecoder
        )
        




createDirectConnectGatewayResultToString : CreateDirectConnectGatewayResult -> String -- List (String, String)
createDirectConnectGatewayResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGateway" "" -- val.directConnectGateway
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createTransitVirtualInterfa
-}
type alias CreateTransitVirtualInterfaceResult =
    { virtualInterface : Maybe VirtualInterface
    }



createTransitVirtualInterfaceResultDecoder : JD.Decoder CreateTransitVirtualInterfaceResult
createTransitVirtualInterfaceResultDecoder =
    JD.succeed CreateTransitVirtualInterfaceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterface", "VirtualInterface"]
            virtualInterfaceDecoder
        )
        




createTransitVirtualInterfaceResultToString : CreateTransitVirtualInterfaceResult -> String -- List (String, String)
createTransitVirtualInterfaceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterface" "" -- val.virtualInterface
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteBGPPeer
-}
type alias DeleteBGPPeerResponse =
    { virtualInterface : Maybe VirtualInterface
    }



deleteBGPPeerResponseDecoder : JD.Decoder DeleteBGPPeerResponse
deleteBGPPeerResponseDecoder =
    JD.succeed DeleteBGPPeerResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterface", "VirtualInterface"]
            virtualInterfaceDecoder
        )
        




deleteBGPPeerResponseToString : DeleteBGPPeerResponse -> String -- List (String, String)
deleteBGPPeerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterface" "" -- val.virtualInterface
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDirectConnectGatewayAssociationPropos
-}
type alias DeleteDirectConnectGatewayAssociationProposalResult =
    { directConnectGatewayAssociationProposal : Maybe DirectConnectGatewayAssociationProposal
    }



deleteDirectConnectGatewayAssociationProposalResultDecoder : JD.Decoder DeleteDirectConnectGatewayAssociationProposalResult
deleteDirectConnectGatewayAssociationProposalResultDecoder =
    JD.succeed DeleteDirectConnectGatewayAssociationProposalResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayAssociationProposal", "DirectConnectGatewayAssociationProposal"]
            directConnectGatewayAssociationProposalDecoder
        )
        




deleteDirectConnectGatewayAssociationProposalResultToString : DeleteDirectConnectGatewayAssociationProposalResult -> String -- List (String, String)
deleteDirectConnectGatewayAssociationProposalResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGatewayAssociationProposal" "" -- val.directConnectGatewayAssociationProposal
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDirectConnectGatewayAssociati
-}
type alias DeleteDirectConnectGatewayAssociationResult =
    { directConnectGatewayAssociation : Maybe DirectConnectGatewayAssociation
    }



deleteDirectConnectGatewayAssociationResultDecoder : JD.Decoder DeleteDirectConnectGatewayAssociationResult
deleteDirectConnectGatewayAssociationResultDecoder =
    JD.succeed DeleteDirectConnectGatewayAssociationResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayAssociation", "DirectConnectGatewayAssociation"]
            directConnectGatewayAssociationDecoder
        )
        




deleteDirectConnectGatewayAssociationResultToString : DeleteDirectConnectGatewayAssociationResult -> String -- List (String, String)
deleteDirectConnectGatewayAssociationResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGatewayAssociation" "" -- val.directConnectGatewayAssociation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDirectConnectGatew
-}
type alias DeleteDirectConnectGatewayResult =
    { directConnectGateway : Maybe DirectConnectGateway
    }



deleteDirectConnectGatewayResultDecoder : JD.Decoder DeleteDirectConnectGatewayResult
deleteDirectConnectGatewayResultDecoder =
    JD.succeed DeleteDirectConnectGatewayResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGateway", "DirectConnectGateway"]
            directConnectGatewayDecoder
        )
        




deleteDirectConnectGatewayResultToString : DeleteDirectConnectGatewayResult -> String -- List (String, String)
deleteDirectConnectGatewayResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGateway" "" -- val.directConnectGateway
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteInterconnect
-}
type alias DeleteInterconnectResponse =
    { interconnectState : Maybe InterconnectState
    }



deleteInterconnectResponseDecoder : JD.Decoder DeleteInterconnectResponse
deleteInterconnectResponseDecoder =
    JD.succeed DeleteInterconnectResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["interconnectState", "InterconnectState"]
            interconnectStateDecoder
        )
        




deleteInterconnectResponseToString : DeleteInterconnectResponse -> String -- List (String, String)
deleteInterconnectResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "interconnectState" "" -- val.interconnectState
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteVirtualInterface
-}
type alias DeleteVirtualInterfaceResponse =
    { virtualInterfaceState : Maybe VirtualInterfaceState
    }



deleteVirtualInterfaceResponseDecoder : JD.Decoder DeleteVirtualInterfaceResponse
deleteVirtualInterfaceResponseDecoder =
    JD.succeed DeleteVirtualInterfaceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceState", "VirtualInterfaceState"]
            virtualInterfaceStateDecoder
        )
        




deleteVirtualInterfaceResponseToString : DeleteVirtualInterfaceResponse -> String -- List (String, String)
deleteVirtualInterfaceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterfaceState" "" -- val.virtualInterfaceState
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeConnectionLoa
-}
type alias DescribeConnectionLoaResponse =
    { loa : Maybe Loa
    }



describeConnectionLoaResponseDecoder : JD.Decoder DescribeConnectionLoaResponse
describeConnectionLoaResponseDecoder =
    JD.succeed DescribeConnectionLoaResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["loa", "Loa"]
            loaDecoder
        )
        




describeConnectionLoaResponseToString : DescribeConnectionLoaResponse -> String -- List (String, String)
describeConnectionLoaResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loa" "" -- val.loa
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeDirectConnectGatewayAssociationProposa
-}
type alias DescribeDirectConnectGatewayAssociationProposalsResult =
    { directConnectGatewayAssociationProposals : Maybe (List DirectConnectGatewayAssociationProposal)
    , nextToken : Maybe String
    }



describeDirectConnectGatewayAssociationProposalsResultDecoder : JD.Decoder DescribeDirectConnectGatewayAssociationProposalsResult
describeDirectConnectGatewayAssociationProposalsResultDecoder =
    JD.succeed DescribeDirectConnectGatewayAssociationProposalsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayAssociationProposals", "DirectConnectGatewayAssociationProposals"]
            (JD.list directConnectGatewayAssociationProposalDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeDirectConnectGatewayAssociationProposalsResultToString : DescribeDirectConnectGatewayAssociationProposalsResult -> String -- List (String, String)
describeDirectConnectGatewayAssociationProposalsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGatewayAssociationProposals" "" -- val.directConnectGatewayAssociationProposals
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeDirectConnectGatewayAssociatio
-}
type alias DescribeDirectConnectGatewayAssociationsResult =
    { directConnectGatewayAssociations : Maybe (List DirectConnectGatewayAssociation)
    , nextToken : Maybe String
    }



describeDirectConnectGatewayAssociationsResultDecoder : JD.Decoder DescribeDirectConnectGatewayAssociationsResult
describeDirectConnectGatewayAssociationsResultDecoder =
    JD.succeed DescribeDirectConnectGatewayAssociationsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayAssociations", "DirectConnectGatewayAssociations"]
            (JD.list directConnectGatewayAssociationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeDirectConnectGatewayAssociationsResultToString : DescribeDirectConnectGatewayAssociationsResult -> String -- List (String, String)
describeDirectConnectGatewayAssociationsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGatewayAssociations" "" -- val.directConnectGatewayAssociations
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeDirectConnectGatewayAttachmen
-}
type alias DescribeDirectConnectGatewayAttachmentsResult =
    { directConnectGatewayAttachments : Maybe (List DirectConnectGatewayAttachment)
    , nextToken : Maybe String
    }



describeDirectConnectGatewayAttachmentsResultDecoder : JD.Decoder DescribeDirectConnectGatewayAttachmentsResult
describeDirectConnectGatewayAttachmentsResultDecoder =
    JD.succeed DescribeDirectConnectGatewayAttachmentsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayAttachments", "DirectConnectGatewayAttachments"]
            (JD.list directConnectGatewayAttachmentDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeDirectConnectGatewayAttachmentsResultToString : DescribeDirectConnectGatewayAttachmentsResult -> String -- List (String, String)
describeDirectConnectGatewayAttachmentsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGatewayAttachments" "" -- val.directConnectGatewayAttachments
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeDirectConnectGatewa
-}
type alias DescribeDirectConnectGatewaysResult =
    { directConnectGateways : Maybe (List DirectConnectGateway)
    , nextToken : Maybe String
    }



describeDirectConnectGatewaysResultDecoder : JD.Decoder DescribeDirectConnectGatewaysResult
describeDirectConnectGatewaysResultDecoder =
    JD.succeed DescribeDirectConnectGatewaysResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGateways", "DirectConnectGateways"]
            (JD.list directConnectGatewayDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describeDirectConnectGatewaysResultToString : DescribeDirectConnectGatewaysResult -> String -- List (String, String)
describeDirectConnectGatewaysResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGateways" "" -- val.directConnectGateways
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeInterconnectLoa
-}
type alias DescribeInterconnectLoaResponse =
    { loa : Maybe Loa
    }



describeInterconnectLoaResponseDecoder : JD.Decoder DescribeInterconnectLoaResponse
describeInterconnectLoaResponseDecoder =
    JD.succeed DescribeInterconnectLoaResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["loa", "Loa"]
            loaDecoder
        )
        




describeInterconnectLoaResponseToString : DescribeInterconnectLoaResponse -> String -- List (String, String)
describeInterconnectLoaResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loa" "" -- val.loa
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTags
-}
type alias DescribeTagsResponse =
    { resourceTags : Maybe (List ResourceTag)
    }



describeTagsResponseDecoder : JD.Decoder DescribeTagsResponse
describeTagsResponseDecoder =
    JD.succeed DescribeTagsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceTags", "ResourceTags"]
            (JD.list resourceTagDecoder)
        )
        




describeTagsResponseToString : DescribeTagsResponse -> String -- List (String, String)
describeTagsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceTags" "" -- val.resourceTags
        
    --     |> Dict.toList
    ""



{-| <p>Information about a Direct Connect gateway, which enables you to connect virtual interfaces and virtual private gateway or transit gateways.</p>
-}
type alias DirectConnectGateway =
    { directConnectGatewayId : Maybe String
    , directConnectGatewayName : Maybe String
    , amazonSideAsn : Maybe Int
    , ownerAccount : Maybe String
    , directConnectGatewayState : Maybe DirectConnectGatewayState
    , stateChangeError : Maybe String
    }



directConnectGatewayDecoder : JD.Decoder DirectConnectGateway
directConnectGatewayDecoder =
    JD.succeed DirectConnectGateway
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayId", "DirectConnectGatewayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayName", "DirectConnectGatewayName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amazonSideAsn", "AmazonSideAsn"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ownerAccount", "OwnerAccount"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayState", "DirectConnectGatewayState"]
            directConnectGatewayStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stateChangeError", "StateChangeError"]
            JD.string
        )
        




directConnectGatewayToString : DirectConnectGateway -> String -- List (String, String)
directConnectGatewayToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGatewayId" "" -- val.directConnectGatewayId
        
    --     |> Dict.insert
    --         "directConnectGatewayName" "" -- val.directConnectGatewayName
        
    --     |> Dict.insert
    --         "amazonSideAsn" "" -- val.amazonSideAsn
        
    --     |> Dict.insert
    --         "ownerAccount" "" -- val.ownerAccount
        
    --     |> Dict.insert
    --         "directConnectGatewayState" "" -- val.directConnectGatewayState
        
    --     |> Dict.insert
    --         "stateChangeError" "" -- val.stateChangeError
        
    --     |> Dict.toList
    ""



{-| <p>Information about an association between a Direct Connect gateway and a virtual private gateway or transit gateway.</p>
-}
type alias DirectConnectGatewayAssociation =
    { directConnectGatewayId : Maybe String
    , directConnectGatewayOwnerAccount : Maybe String
    , associationState : Maybe DirectConnectGatewayAssociationState
    , stateChangeError : Maybe String
    , associatedGateway : Maybe AssociatedGateway
    , associationId : Maybe String
    , allowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix)
    , virtualGatewayId : Maybe String
    , virtualGatewayRegion : Maybe String
    , virtualGatewayOwnerAccount : Maybe String
    }



directConnectGatewayAssociationDecoder : JD.Decoder DirectConnectGatewayAssociation
directConnectGatewayAssociationDecoder =
    JD.succeed DirectConnectGatewayAssociation
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayId", "DirectConnectGatewayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayOwnerAccount", "DirectConnectGatewayOwnerAccount"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["associationState", "AssociationState"]
            directConnectGatewayAssociationStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stateChangeError", "StateChangeError"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["associatedGateway", "AssociatedGateway"]
            associatedGatewayDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["associationId", "AssociationId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["allowedPrefixesToDirectConnectGateway", "AllowedPrefixesToDirectConnectGateway"]
            (JD.list routeFilterPrefixDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualGatewayId", "VirtualGatewayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualGatewayRegion", "VirtualGatewayRegion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualGatewayOwnerAccount", "VirtualGatewayOwnerAccount"]
            JD.string
        )
        




directConnectGatewayAssociationToString : DirectConnectGatewayAssociation -> String -- List (String, String)
directConnectGatewayAssociationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGatewayId" "" -- val.directConnectGatewayId
        
    --     |> Dict.insert
    --         "directConnectGatewayOwnerAccount" "" -- val.directConnectGatewayOwnerAccount
        
    --     |> Dict.insert
    --         "associationState" "" -- val.associationState
        
    --     |> Dict.insert
    --         "stateChangeError" "" -- val.stateChangeError
        
    --     |> Dict.insert
    --         "associatedGateway" "" -- val.associatedGateway
        
    --     |> Dict.insert
    --         "associationId" "" -- val.associationId
        
    --     |> Dict.insert
    --         "allowedPrefixesToDirectConnectGateway" "" -- val.allowedPrefixesToDirectConnectGateway
        
    --     |> Dict.insert
    --         "virtualGatewayId" "" -- val.virtualGatewayId
        
    --     |> Dict.insert
    --         "virtualGatewayRegion" "" -- val.virtualGatewayRegion
        
    --     |> Dict.insert
    --         "virtualGatewayOwnerAccount" "" -- val.virtualGatewayOwnerAccount
        
    --     |> Dict.toList
    ""



{-| <p>Information about the proposal request to attach a virtual private gateway to a Direct Connect gateway. </p>
-}
type alias DirectConnectGatewayAssociationProposal =
    { proposalId : Maybe String
    , directConnectGatewayId : Maybe String
    , directConnectGatewayOwnerAccount : Maybe String
    , proposalState : Maybe DirectConnectGatewayAssociationProposalState
    , associatedGateway : Maybe AssociatedGateway
    , existingAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix)
    , requestedAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix)
    }



directConnectGatewayAssociationProposalDecoder : JD.Decoder DirectConnectGatewayAssociationProposal
directConnectGatewayAssociationProposalDecoder =
    JD.succeed DirectConnectGatewayAssociationProposal
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["proposalId", "ProposalId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayId", "DirectConnectGatewayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayOwnerAccount", "DirectConnectGatewayOwnerAccount"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["proposalState", "ProposalState"]
            directConnectGatewayAssociationProposalStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["associatedGateway", "AssociatedGateway"]
            associatedGatewayDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["existingAllowedPrefixesToDirectConnectGateway", "ExistingAllowedPrefixesToDirectConnectGateway"]
            (JD.list routeFilterPrefixDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["requestedAllowedPrefixesToDirectConnectGateway", "RequestedAllowedPrefixesToDirectConnectGateway"]
            (JD.list routeFilterPrefixDecoder)
        )
        




directConnectGatewayAssociationProposalToString : DirectConnectGatewayAssociationProposal -> String -- List (String, String)
directConnectGatewayAssociationProposalToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "proposalId" "" -- val.proposalId
        
    --     |> Dict.insert
    --         "directConnectGatewayId" "" -- val.directConnectGatewayId
        
    --     |> Dict.insert
    --         "directConnectGatewayOwnerAccount" "" -- val.directConnectGatewayOwnerAccount
        
    --     |> Dict.insert
    --         "proposalState" "" -- val.proposalState
        
    --     |> Dict.insert
    --         "associatedGateway" "" -- val.associatedGateway
        
    --     |> Dict.insert
    --         "existingAllowedPrefixesToDirectConnectGateway" "" -- val.existingAllowedPrefixesToDirectConnectGateway
        
    --     |> Dict.insert
    --         "requestedAllowedPrefixesToDirectConnectGateway" "" -- val.requestedAllowedPrefixesToDirectConnectGateway
        
    --     |> Dict.toList
    ""



{-| One of

* `DirectConnectGatewayAssociationProposalState_requested`
* `DirectConnectGatewayAssociationProposalState_accepted`
* `DirectConnectGatewayAssociationProposalState_deleted`

-}
type DirectConnectGatewayAssociationProposalState
    = DirectConnectGatewayAssociationProposalState_requested
    | DirectConnectGatewayAssociationProposalState_accepted
    | DirectConnectGatewayAssociationProposalState_deleted



directConnectGatewayAssociationProposalStateDecoder : JD.Decoder DirectConnectGatewayAssociationProposalState
directConnectGatewayAssociationProposalStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "requested" ->
                        JD.succeed DirectConnectGatewayAssociationProposalState_requested

                    "accepted" ->
                        JD.succeed DirectConnectGatewayAssociationProposalState_accepted

                    "deleted" ->
                        JD.succeed DirectConnectGatewayAssociationProposalState_deleted


                    _ ->
                        JD.fail "bad thing"
            )




directConnectGatewayAssociationProposalStateToString : DirectConnectGatewayAssociationProposalState -> String
directConnectGatewayAssociationProposalStateToString val =
    case val of
        DirectConnectGatewayAssociationProposalState_requested ->
            "requested"

        DirectConnectGatewayAssociationProposalState_accepted ->
            "accepted"

        DirectConnectGatewayAssociationProposalState_deleted ->
            "deleted"




{-| One of

* `DirectConnectGatewayAssociationState_associating`
* `DirectConnectGatewayAssociationState_associated`
* `DirectConnectGatewayAssociationState_disassociating`
* `DirectConnectGatewayAssociationState_disassociated`
* `DirectConnectGatewayAssociationState_updating`

-}
type DirectConnectGatewayAssociationState
    = DirectConnectGatewayAssociationState_associating
    | DirectConnectGatewayAssociationState_associated
    | DirectConnectGatewayAssociationState_disassociating
    | DirectConnectGatewayAssociationState_disassociated
    | DirectConnectGatewayAssociationState_updating



directConnectGatewayAssociationStateDecoder : JD.Decoder DirectConnectGatewayAssociationState
directConnectGatewayAssociationStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "associating" ->
                        JD.succeed DirectConnectGatewayAssociationState_associating

                    "associated" ->
                        JD.succeed DirectConnectGatewayAssociationState_associated

                    "disassociating" ->
                        JD.succeed DirectConnectGatewayAssociationState_disassociating

                    "disassociated" ->
                        JD.succeed DirectConnectGatewayAssociationState_disassociated

                    "updating" ->
                        JD.succeed DirectConnectGatewayAssociationState_updating


                    _ ->
                        JD.fail "bad thing"
            )




directConnectGatewayAssociationStateToString : DirectConnectGatewayAssociationState -> String
directConnectGatewayAssociationStateToString val =
    case val of
        DirectConnectGatewayAssociationState_associating ->
            "associating"

        DirectConnectGatewayAssociationState_associated ->
            "associated"

        DirectConnectGatewayAssociationState_disassociating ->
            "disassociating"

        DirectConnectGatewayAssociationState_disassociated ->
            "disassociated"

        DirectConnectGatewayAssociationState_updating ->
            "updating"




{-| <p>Information about an attachment between a Direct Connect gateway and a virtual interface.</p>
-}
type alias DirectConnectGatewayAttachment =
    { directConnectGatewayId : Maybe String
    , virtualInterfaceId : Maybe String
    , virtualInterfaceRegion : Maybe String
    , virtualInterfaceOwnerAccount : Maybe String
    , attachmentState : Maybe DirectConnectGatewayAttachmentState
    , attachmentType : Maybe DirectConnectGatewayAttachmentType
    , stateChangeError : Maybe String
    }



directConnectGatewayAttachmentDecoder : JD.Decoder DirectConnectGatewayAttachment
directConnectGatewayAttachmentDecoder =
    JD.succeed DirectConnectGatewayAttachment
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayId", "DirectConnectGatewayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceId", "VirtualInterfaceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceRegion", "VirtualInterfaceRegion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceOwnerAccount", "VirtualInterfaceOwnerAccount"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attachmentState", "AttachmentState"]
            directConnectGatewayAttachmentStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attachmentType", "AttachmentType"]
            directConnectGatewayAttachmentTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["stateChangeError", "StateChangeError"]
            JD.string
        )
        




directConnectGatewayAttachmentToString : DirectConnectGatewayAttachment -> String -- List (String, String)
directConnectGatewayAttachmentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGatewayId" "" -- val.directConnectGatewayId
        
    --     |> Dict.insert
    --         "virtualInterfaceId" "" -- val.virtualInterfaceId
        
    --     |> Dict.insert
    --         "virtualInterfaceRegion" "" -- val.virtualInterfaceRegion
        
    --     |> Dict.insert
    --         "virtualInterfaceOwnerAccount" "" -- val.virtualInterfaceOwnerAccount
        
    --     |> Dict.insert
    --         "attachmentState" "" -- val.attachmentState
        
    --     |> Dict.insert
    --         "attachmentType" "" -- val.attachmentType
        
    --     |> Dict.insert
    --         "stateChangeError" "" -- val.stateChangeError
        
    --     |> Dict.toList
    ""



{-| One of

* `DirectConnectGatewayAttachmentState_attaching`
* `DirectConnectGatewayAttachmentState_attached`
* `DirectConnectGatewayAttachmentState_detaching`
* `DirectConnectGatewayAttachmentState_detached`

-}
type DirectConnectGatewayAttachmentState
    = DirectConnectGatewayAttachmentState_attaching
    | DirectConnectGatewayAttachmentState_attached
    | DirectConnectGatewayAttachmentState_detaching
    | DirectConnectGatewayAttachmentState_detached



directConnectGatewayAttachmentStateDecoder : JD.Decoder DirectConnectGatewayAttachmentState
directConnectGatewayAttachmentStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "attaching" ->
                        JD.succeed DirectConnectGatewayAttachmentState_attaching

                    "attached" ->
                        JD.succeed DirectConnectGatewayAttachmentState_attached

                    "detaching" ->
                        JD.succeed DirectConnectGatewayAttachmentState_detaching

                    "detached" ->
                        JD.succeed DirectConnectGatewayAttachmentState_detached


                    _ ->
                        JD.fail "bad thing"
            )




directConnectGatewayAttachmentStateToString : DirectConnectGatewayAttachmentState -> String
directConnectGatewayAttachmentStateToString val =
    case val of
        DirectConnectGatewayAttachmentState_attaching ->
            "attaching"

        DirectConnectGatewayAttachmentState_attached ->
            "attached"

        DirectConnectGatewayAttachmentState_detaching ->
            "detaching"

        DirectConnectGatewayAttachmentState_detached ->
            "detached"




{-| One of

* `DirectConnectGatewayAttachmentType_TransitVirtualInterface`
* `DirectConnectGatewayAttachmentType_PrivateVirtualInterface`

-}
type DirectConnectGatewayAttachmentType
    = DirectConnectGatewayAttachmentType_TransitVirtualInterface
    | DirectConnectGatewayAttachmentType_PrivateVirtualInterface



directConnectGatewayAttachmentTypeDecoder : JD.Decoder DirectConnectGatewayAttachmentType
directConnectGatewayAttachmentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TransitVirtualInterface" ->
                        JD.succeed DirectConnectGatewayAttachmentType_TransitVirtualInterface

                    "PrivateVirtualInterface" ->
                        JD.succeed DirectConnectGatewayAttachmentType_PrivateVirtualInterface


                    _ ->
                        JD.fail "bad thing"
            )




directConnectGatewayAttachmentTypeToString : DirectConnectGatewayAttachmentType -> String
directConnectGatewayAttachmentTypeToString val =
    case val of
        DirectConnectGatewayAttachmentType_TransitVirtualInterface ->
            "TransitVirtualInterface"

        DirectConnectGatewayAttachmentType_PrivateVirtualInterface ->
            "PrivateVirtualInterface"




{-| One of

* `DirectConnectGatewayState_pending`
* `DirectConnectGatewayState_available`
* `DirectConnectGatewayState_deleting`
* `DirectConnectGatewayState_deleted`

-}
type DirectConnectGatewayState
    = DirectConnectGatewayState_pending
    | DirectConnectGatewayState_available
    | DirectConnectGatewayState_deleting
    | DirectConnectGatewayState_deleted



directConnectGatewayStateDecoder : JD.Decoder DirectConnectGatewayState
directConnectGatewayStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed DirectConnectGatewayState_pending

                    "available" ->
                        JD.succeed DirectConnectGatewayState_available

                    "deleting" ->
                        JD.succeed DirectConnectGatewayState_deleting

                    "deleted" ->
                        JD.succeed DirectConnectGatewayState_deleted


                    _ ->
                        JD.fail "bad thing"
            )




directConnectGatewayStateToString : DirectConnectGatewayState -> String
directConnectGatewayStateToString val =
    case val of
        DirectConnectGatewayState_pending ->
            "pending"

        DirectConnectGatewayState_available ->
            "available"

        DirectConnectGatewayState_deleting ->
            "deleting"

        DirectConnectGatewayState_deleted ->
            "deleted"




{-| One of

* `GatewayType_virtualPrivateGateway`
* `GatewayType_transitGateway`

-}
type GatewayType
    = GatewayType_virtualPrivateGateway
    | GatewayType_transitGateway



gatewayTypeDecoder : JD.Decoder GatewayType
gatewayTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "virtualPrivateGateway" ->
                        JD.succeed GatewayType_virtualPrivateGateway

                    "transitGateway" ->
                        JD.succeed GatewayType_transitGateway


                    _ ->
                        JD.fail "bad thing"
            )




gatewayTypeToString : GatewayType -> String
gatewayTypeToString val =
    case val of
        GatewayType_virtualPrivateGateway ->
            "virtualPrivateGateway"

        GatewayType_transitGateway ->
            "transitGateway"




{-| One of

* `HasLogicalRedundancy_unknown`
* `HasLogicalRedundancy_yes`
* `HasLogicalRedundancy_no`

-}
type HasLogicalRedundancy
    = HasLogicalRedundancy_unknown
    | HasLogicalRedundancy_yes
    | HasLogicalRedundancy_no



hasLogicalRedundancyDecoder : JD.Decoder HasLogicalRedundancy
hasLogicalRedundancyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "unknown" ->
                        JD.succeed HasLogicalRedundancy_unknown

                    "yes" ->
                        JD.succeed HasLogicalRedundancy_yes

                    "no" ->
                        JD.succeed HasLogicalRedundancy_no


                    _ ->
                        JD.fail "bad thing"
            )




hasLogicalRedundancyToString : HasLogicalRedundancy -> String
hasLogicalRedundancyToString val =
    case val of
        HasLogicalRedundancy_unknown ->
            "unknown"

        HasLogicalRedundancy_yes ->
            "yes"

        HasLogicalRedundancy_no ->
            "no"




{-| Type of HTTP response from inte
-}
type alias Interconnect =
    { interconnectId : Maybe String
    , interconnectName : Maybe String
    , interconnectState : Maybe InterconnectState
    , region : Maybe String
    , location : Maybe String
    , bandwidth : Maybe String
    , loaIssueTime : Maybe Posix
    , lagId : Maybe String
    , awsDevice : Maybe String
    , jumboFrameCapable : Maybe Bool
    , awsDeviceV2 : Maybe String
    , hasLogicalRedundancy : Maybe HasLogicalRedundancy
    , tags : Maybe (List Tag)
    }



interconnectDecoder : JD.Decoder Interconnect
interconnectDecoder =
    JD.succeed Interconnect
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["interconnectId", "InterconnectId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["interconnectName", "InterconnectName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["interconnectState", "InterconnectState"]
            interconnectStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["region", "Region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bandwidth", "Bandwidth"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["loaIssueTime", "LoaIssueTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lagId", "LagId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["awsDevice", "AwsDevice"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["jumboFrameCapable", "JumboFrameCapable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["awsDeviceV2", "AwsDeviceV2"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hasLogicalRedundancy", "HasLogicalRedundancy"]
            hasLogicalRedundancyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




interconnectToString : Interconnect -> String -- List (String, String)
interconnectToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "interconnectId" "" -- val.interconnectId
        
    --     |> Dict.insert
    --         "interconnectName" "" -- val.interconnectName
        
    --     |> Dict.insert
    --         "interconnectState" "" -- val.interconnectState
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "bandwidth" "" -- val.bandwidth
        
    --     |> Dict.insert
    --         "loaIssueTime" "" -- val.loaIssueTime
        
    --     |> Dict.insert
    --         "lagId" "" -- val.lagId
        
    --     |> Dict.insert
    --         "awsDevice" "" -- val.awsDevice
        
    --     |> Dict.insert
    --         "jumboFrameCapable" "" -- val.jumboFrameCapable
        
    --     |> Dict.insert
    --         "awsDeviceV2" "" -- val.awsDeviceV2
        
    --     |> Dict.insert
    --         "hasLogicalRedundancy" "" -- val.hasLogicalRedundancy
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| One of

* `InterconnectState_requested`
* `InterconnectState_pending`
* `InterconnectState_available`
* `InterconnectState_down`
* `InterconnectState_deleting`
* `InterconnectState_deleted`
* `InterconnectState_unknown`

-}
type InterconnectState
    = InterconnectState_requested
    | InterconnectState_pending
    | InterconnectState_available
    | InterconnectState_down
    | InterconnectState_deleting
    | InterconnectState_deleted
    | InterconnectState_unknown



interconnectStateDecoder : JD.Decoder InterconnectState
interconnectStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "requested" ->
                        JD.succeed InterconnectState_requested

                    "pending" ->
                        JD.succeed InterconnectState_pending

                    "available" ->
                        JD.succeed InterconnectState_available

                    "down" ->
                        JD.succeed InterconnectState_down

                    "deleting" ->
                        JD.succeed InterconnectState_deleting

                    "deleted" ->
                        JD.succeed InterconnectState_deleted

                    "unknown" ->
                        JD.succeed InterconnectState_unknown


                    _ ->
                        JD.fail "bad thing"
            )




interconnectStateToString : InterconnectState -> String
interconnectStateToString val =
    case val of
        InterconnectState_requested ->
            "requested"

        InterconnectState_pending ->
            "pending"

        InterconnectState_available ->
            "available"

        InterconnectState_down ->
            "down"

        InterconnectState_deleting ->
            "deleting"

        InterconnectState_deleted ->
            "deleted"

        InterconnectState_unknown ->
            "unknown"




{-| Type of HTTP response from inter
-}
type alias Interconnects =
    { interconnects : Maybe (List Interconnect)
    }



interconnectsDecoder : JD.Decoder Interconnects
interconnectsDecoder =
    JD.succeed Interconnects
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["interconnects", "Interconnects"]
            (JD.list interconnectDecoder)
        )
        




interconnectsToString : Interconnects -> String -- List (String, String)
interconnectsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "interconnects" "" -- val.interconnects
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from 
-}
type alias Lag =
    { connectionsBandwidth : Maybe String
    , numberOfConnections : Maybe Int
    , lagId : Maybe String
    , ownerAccount : Maybe String
    , lagName : Maybe String
    , lagState : Maybe LagState
    , location : Maybe String
    , region : Maybe String
    , minimumLinks : Maybe Int
    , awsDevice : Maybe String
    , awsDeviceV2 : Maybe String
    , connections : Maybe (List Connection)
    , allowsHostedConnections : Maybe Bool
    , jumboFrameCapable : Maybe Bool
    , hasLogicalRedundancy : Maybe HasLogicalRedundancy
    , tags : Maybe (List Tag)
    }



lagDecoder : JD.Decoder Lag
lagDecoder =
    JD.succeed Lag
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["connectionsBandwidth", "ConnectionsBandwidth"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["numberOfConnections", "NumberOfConnections"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lagId", "LagId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ownerAccount", "OwnerAccount"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lagName", "LagName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lagState", "LagState"]
            lagStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["region", "Region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["minimumLinks", "MinimumLinks"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["awsDevice", "AwsDevice"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["awsDeviceV2", "AwsDeviceV2"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["connections", "Connections"]
            (JD.list connectionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["allowsHostedConnections", "AllowsHostedConnections"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["jumboFrameCapable", "JumboFrameCapable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hasLogicalRedundancy", "HasLogicalRedundancy"]
            hasLogicalRedundancyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




lagToString : Lag -> String -- List (String, String)
lagToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "connectionsBandwidth" "" -- val.connectionsBandwidth
        
    --     |> Dict.insert
    --         "numberOfConnections" "" -- val.numberOfConnections
        
    --     |> Dict.insert
    --         "lagId" "" -- val.lagId
        
    --     |> Dict.insert
    --         "ownerAccount" "" -- val.ownerAccount
        
    --     |> Dict.insert
    --         "lagName" "" -- val.lagName
        
    --     |> Dict.insert
    --         "lagState" "" -- val.lagState
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "minimumLinks" "" -- val.minimumLinks
        
    --     |> Dict.insert
    --         "awsDevice" "" -- val.awsDevice
        
    --     |> Dict.insert
    --         "awsDeviceV2" "" -- val.awsDeviceV2
        
    --     |> Dict.insert
    --         "connections" "" -- val.connections
        
    --     |> Dict.insert
    --         "allowsHostedConnections" "" -- val.allowsHostedConnections
        
    --     |> Dict.insert
    --         "jumboFrameCapable" "" -- val.jumboFrameCapable
        
    --     |> Dict.insert
    --         "hasLogicalRedundancy" "" -- val.hasLogicalRedundancy
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| One of

* `LagState_requested`
* `LagState_pending`
* `LagState_available`
* `LagState_down`
* `LagState_deleting`
* `LagState_deleted`
* `LagState_unknown`

-}
type LagState
    = LagState_requested
    | LagState_pending
    | LagState_available
    | LagState_down
    | LagState_deleting
    | LagState_deleted
    | LagState_unknown



lagStateDecoder : JD.Decoder LagState
lagStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "requested" ->
                        JD.succeed LagState_requested

                    "pending" ->
                        JD.succeed LagState_pending

                    "available" ->
                        JD.succeed LagState_available

                    "down" ->
                        JD.succeed LagState_down

                    "deleting" ->
                        JD.succeed LagState_deleting

                    "deleted" ->
                        JD.succeed LagState_deleted

                    "unknown" ->
                        JD.succeed LagState_unknown


                    _ ->
                        JD.fail "bad thing"
            )




lagStateToString : LagState -> String
lagStateToString val =
    case val of
        LagState_requested ->
            "requested"

        LagState_pending ->
            "pending"

        LagState_available ->
            "available"

        LagState_down ->
            "down"

        LagState_deleting ->
            "deleting"

        LagState_deleted ->
            "deleted"

        LagState_unknown ->
            "unknown"




{-| Type of HTTP response from 
-}
type alias Lags =
    { lags : Maybe (List Lag)
    }



lagsDecoder : JD.Decoder Lags
lagsDecoder =
    JD.succeed Lags
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lags", "Lags"]
            (JD.list lagDecoder)
        )
        




lagsToString : Lags -> String -- List (String, String)
lagsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "lags" "" -- val.lags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from 
-}
type alias Loa =
    { loaContent : Maybe String
    , loaContentType : Maybe LoaContentType
    }



loaDecoder : JD.Decoder Loa
loaDecoder =
    JD.succeed Loa
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["loaContent", "LoaContent"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["loaContentType", "LoaContentType"]
            loaContentTypeDecoder
        )
        




loaToString : Loa -> String -- List (String, String)
loaToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loaContent" "" -- val.loaContent
        
    --     |> Dict.insert
    --         "loaContentType" "" -- val.loaContentType
        
    --     |> Dict.toList
    ""



{-| One of

* `LoaContentType_application/pdf`

-}
type LoaContentType
    = LoaContentType_application_pdf



loaContentTypeDecoder : JD.Decoder LoaContentType
loaContentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "application_pdf" ->
                        JD.succeed LoaContentType_application_pdf


                    _ ->
                        JD.fail "bad thing"
            )




loaContentTypeToString : LoaContentType -> String
loaContentTypeToString val =
    case val of
        LoaContentType_application_pdf ->
            "application_pdf"




{-| <p>Information about an AWS Direct Connect location.</p>
-}
type alias Location =
    { locationCode : Maybe String
    , locationName : Maybe String
    , region : Maybe String
    , availablePortSpeeds : Maybe (List String)
    }



locationDecoder : JD.Decoder Location
locationDecoder =
    JD.succeed Location
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["locationCode", "LocationCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["locationName", "LocationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["region", "Region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["availablePortSpeeds", "AvailablePortSpeeds"]
            (JD.list JD.string)
        )
        




locationToString : Location -> String -- List (String, String)
locationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "locationCode" "" -- val.locationCode
        
    --     |> Dict.insert
    --         "locationName" "" -- val.locationName
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "availablePortSpeeds" "" -- val.availablePortSpeeds
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from l
-}
type alias Locations =
    { locations : Maybe (List Location)
    }



locationsDecoder : JD.Decoder Locations
locationsDecoder =
    JD.succeed Locations
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["locations", "Locations"]
            (JD.list locationDecoder)
        )
        




locationsToString : Locations -> String -- List (String, String)
locationsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "locations" "" -- val.locations
        
    --     |> Dict.toList
    ""



{-| <p>Information about a new BGP peer.</p>
-}
type alias NewBGPPeer =
    { asn : Maybe Int
    , authKey : Maybe String
    , addressFamily : Maybe AddressFamily
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    }



newBGPPeerDecoder : JD.Decoder NewBGPPeer
newBGPPeerDecoder =
    JD.succeed NewBGPPeer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["asn", "Asn"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authKey", "AuthKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["addressFamily", "AddressFamily"]
            addressFamilyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amazonAddress", "AmazonAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customerAddress", "CustomerAddress"]
            JD.string
        )
        




newBGPPeerToString : NewBGPPeer -> String -- List (String, String)
newBGPPeerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "asn" "" -- val.asn
        
    --     |> Dict.insert
    --         "authKey" "" -- val.authKey
        
    --     |> Dict.insert
    --         "addressFamily" "" -- val.addressFamily
        
    --     |> Dict.insert
    --         "amazonAddress" "" -- val.amazonAddress
        
    --     |> Dict.insert
    --         "customerAddress" "" -- val.customerAddress
        
    --     |> Dict.toList
    ""



{-| <p>Information about a private virtual interface.</p>
-}
type alias NewPrivateVirtualInterface =
    { virtualInterfaceName : String
    , vlan : Int
    , asn : Int
    , mtu : Maybe Int
    , authKey : Maybe String
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    , addressFamily : Maybe AddressFamily
    , virtualGatewayId : Maybe String
    , directConnectGatewayId : Maybe String
    , tags : Maybe (List Tag)
    }



newPrivateVirtualInterfaceDecoder : JD.Decoder NewPrivateVirtualInterface
newPrivateVirtualInterfaceDecoder =
    JD.succeed NewPrivateVirtualInterface
        
        |> JDP.custom (AWS.Core.Decode.required
            ["virtualInterfaceName", "VirtualInterfaceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["vlan", "Vlan"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["asn", "Asn"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mtu", "Mtu"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authKey", "AuthKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amazonAddress", "AmazonAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customerAddress", "CustomerAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["addressFamily", "AddressFamily"]
            addressFamilyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualGatewayId", "VirtualGatewayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayId", "DirectConnectGatewayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




newPrivateVirtualInterfaceToString : NewPrivateVirtualInterface -> String -- List (String, String)
newPrivateVirtualInterfaceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterfaceName" "" -- val.virtualInterfaceName
        
    --     |> Dict.insert
    --         "vlan" "" -- val.vlan
        
    --     |> Dict.insert
    --         "asn" "" -- val.asn
        
    --     |> Dict.insert
    --         "mtu" "" -- val.mtu
        
    --     |> Dict.insert
    --         "authKey" "" -- val.authKey
        
    --     |> Dict.insert
    --         "amazonAddress" "" -- val.amazonAddress
        
    --     |> Dict.insert
    --         "customerAddress" "" -- val.customerAddress
        
    --     |> Dict.insert
    --         "addressFamily" "" -- val.addressFamily
        
    --     |> Dict.insert
    --         "virtualGatewayId" "" -- val.virtualGatewayId
        
    --     |> Dict.insert
    --         "directConnectGatewayId" "" -- val.directConnectGatewayId
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>Information about a private virtual interface to be provisioned on a connection.</p>
-}
type alias NewPrivateVirtualInterfaceAllocation =
    { virtualInterfaceName : String
    , vlan : Int
    , asn : Int
    , mtu : Maybe Int
    , authKey : Maybe String
    , amazonAddress : Maybe String
    , addressFamily : Maybe AddressFamily
    , customerAddress : Maybe String
    , tags : Maybe (List Tag)
    }



newPrivateVirtualInterfaceAllocationDecoder : JD.Decoder NewPrivateVirtualInterfaceAllocation
newPrivateVirtualInterfaceAllocationDecoder =
    JD.succeed NewPrivateVirtualInterfaceAllocation
        
        |> JDP.custom (AWS.Core.Decode.required
            ["virtualInterfaceName", "VirtualInterfaceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["vlan", "Vlan"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["asn", "Asn"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mtu", "Mtu"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authKey", "AuthKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amazonAddress", "AmazonAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["addressFamily", "AddressFamily"]
            addressFamilyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customerAddress", "CustomerAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




newPrivateVirtualInterfaceAllocationToString : NewPrivateVirtualInterfaceAllocation -> String -- List (String, String)
newPrivateVirtualInterfaceAllocationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterfaceName" "" -- val.virtualInterfaceName
        
    --     |> Dict.insert
    --         "vlan" "" -- val.vlan
        
    --     |> Dict.insert
    --         "asn" "" -- val.asn
        
    --     |> Dict.insert
    --         "mtu" "" -- val.mtu
        
    --     |> Dict.insert
    --         "authKey" "" -- val.authKey
        
    --     |> Dict.insert
    --         "amazonAddress" "" -- val.amazonAddress
        
    --     |> Dict.insert
    --         "addressFamily" "" -- val.addressFamily
        
    --     |> Dict.insert
    --         "customerAddress" "" -- val.customerAddress
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>Information about a public virtual interface.</p>
-}
type alias NewPublicVirtualInterface =
    { virtualInterfaceName : String
    , vlan : Int
    , asn : Int
    , authKey : Maybe String
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    , addressFamily : Maybe AddressFamily
    , routeFilterPrefixes : Maybe (List RouteFilterPrefix)
    , tags : Maybe (List Tag)
    }



newPublicVirtualInterfaceDecoder : JD.Decoder NewPublicVirtualInterface
newPublicVirtualInterfaceDecoder =
    JD.succeed NewPublicVirtualInterface
        
        |> JDP.custom (AWS.Core.Decode.required
            ["virtualInterfaceName", "VirtualInterfaceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["vlan", "Vlan"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["asn", "Asn"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authKey", "AuthKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amazonAddress", "AmazonAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customerAddress", "CustomerAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["addressFamily", "AddressFamily"]
            addressFamilyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["routeFilterPrefixes", "RouteFilterPrefixes"]
            (JD.list routeFilterPrefixDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




newPublicVirtualInterfaceToString : NewPublicVirtualInterface -> String -- List (String, String)
newPublicVirtualInterfaceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterfaceName" "" -- val.virtualInterfaceName
        
    --     |> Dict.insert
    --         "vlan" "" -- val.vlan
        
    --     |> Dict.insert
    --         "asn" "" -- val.asn
        
    --     |> Dict.insert
    --         "authKey" "" -- val.authKey
        
    --     |> Dict.insert
    --         "amazonAddress" "" -- val.amazonAddress
        
    --     |> Dict.insert
    --         "customerAddress" "" -- val.customerAddress
        
    --     |> Dict.insert
    --         "addressFamily" "" -- val.addressFamily
        
    --     |> Dict.insert
    --         "routeFilterPrefixes" "" -- val.routeFilterPrefixes
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>Information about a public virtual interface to be provisioned on a connection.</p>
-}
type alias NewPublicVirtualInterfaceAllocation =
    { virtualInterfaceName : String
    , vlan : Int
    , asn : Int
    , authKey : Maybe String
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    , addressFamily : Maybe AddressFamily
    , routeFilterPrefixes : Maybe (List RouteFilterPrefix)
    , tags : Maybe (List Tag)
    }



newPublicVirtualInterfaceAllocationDecoder : JD.Decoder NewPublicVirtualInterfaceAllocation
newPublicVirtualInterfaceAllocationDecoder =
    JD.succeed NewPublicVirtualInterfaceAllocation
        
        |> JDP.custom (AWS.Core.Decode.required
            ["virtualInterfaceName", "VirtualInterfaceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["vlan", "Vlan"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["asn", "Asn"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authKey", "AuthKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amazonAddress", "AmazonAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customerAddress", "CustomerAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["addressFamily", "AddressFamily"]
            addressFamilyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["routeFilterPrefixes", "RouteFilterPrefixes"]
            (JD.list routeFilterPrefixDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




newPublicVirtualInterfaceAllocationToString : NewPublicVirtualInterfaceAllocation -> String -- List (String, String)
newPublicVirtualInterfaceAllocationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterfaceName" "" -- val.virtualInterfaceName
        
    --     |> Dict.insert
    --         "vlan" "" -- val.vlan
        
    --     |> Dict.insert
    --         "asn" "" -- val.asn
        
    --     |> Dict.insert
    --         "authKey" "" -- val.authKey
        
    --     |> Dict.insert
    --         "amazonAddress" "" -- val.amazonAddress
        
    --     |> Dict.insert
    --         "customerAddress" "" -- val.customerAddress
        
    --     |> Dict.insert
    --         "addressFamily" "" -- val.addressFamily
        
    --     |> Dict.insert
    --         "routeFilterPrefixes" "" -- val.routeFilterPrefixes
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>Information about the transit virtual interface.</p>
-}
type alias NewTransitVirtualInterface =
    { virtualInterfaceName : Maybe String
    , vlan : Maybe Int
    , asn : Maybe Int
    , mtu : Maybe Int
    , authKey : Maybe String
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    , addressFamily : Maybe AddressFamily
    , directConnectGatewayId : Maybe String
    , tags : Maybe (List Tag)
    }



newTransitVirtualInterfaceDecoder : JD.Decoder NewTransitVirtualInterface
newTransitVirtualInterfaceDecoder =
    JD.succeed NewTransitVirtualInterface
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceName", "VirtualInterfaceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vlan", "Vlan"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["asn", "Asn"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mtu", "Mtu"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authKey", "AuthKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amazonAddress", "AmazonAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customerAddress", "CustomerAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["addressFamily", "AddressFamily"]
            addressFamilyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayId", "DirectConnectGatewayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




newTransitVirtualInterfaceToString : NewTransitVirtualInterface -> String -- List (String, String)
newTransitVirtualInterfaceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterfaceName" "" -- val.virtualInterfaceName
        
    --     |> Dict.insert
    --         "vlan" "" -- val.vlan
        
    --     |> Dict.insert
    --         "asn" "" -- val.asn
        
    --     |> Dict.insert
    --         "mtu" "" -- val.mtu
        
    --     |> Dict.insert
    --         "authKey" "" -- val.authKey
        
    --     |> Dict.insert
    --         "amazonAddress" "" -- val.amazonAddress
        
    --     |> Dict.insert
    --         "customerAddress" "" -- val.customerAddress
        
    --     |> Dict.insert
    --         "addressFamily" "" -- val.addressFamily
        
    --     |> Dict.insert
    --         "directConnectGatewayId" "" -- val.directConnectGatewayId
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>Information about a transit virtual interface.</p>
-}
type alias NewTransitVirtualInterfaceAllocation =
    { virtualInterfaceName : Maybe String
    , vlan : Maybe Int
    , asn : Maybe Int
    , mtu : Maybe Int
    , authKey : Maybe String
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    , addressFamily : Maybe AddressFamily
    , tags : Maybe (List Tag)
    }



newTransitVirtualInterfaceAllocationDecoder : JD.Decoder NewTransitVirtualInterfaceAllocation
newTransitVirtualInterfaceAllocationDecoder =
    JD.succeed NewTransitVirtualInterfaceAllocation
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceName", "VirtualInterfaceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vlan", "Vlan"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["asn", "Asn"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mtu", "Mtu"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authKey", "AuthKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amazonAddress", "AmazonAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customerAddress", "CustomerAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["addressFamily", "AddressFamily"]
            addressFamilyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




newTransitVirtualInterfaceAllocationToString : NewTransitVirtualInterfaceAllocation -> String -- List (String, String)
newTransitVirtualInterfaceAllocationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterfaceName" "" -- val.virtualInterfaceName
        
    --     |> Dict.insert
    --         "vlan" "" -- val.vlan
        
    --     |> Dict.insert
    --         "asn" "" -- val.asn
        
    --     |> Dict.insert
    --         "mtu" "" -- val.mtu
        
    --     |> Dict.insert
    --         "authKey" "" -- val.authKey
        
    --     |> Dict.insert
    --         "amazonAddress" "" -- val.amazonAddress
        
    --     |> Dict.insert
    --         "customerAddress" "" -- val.customerAddress
        
    --     |> Dict.insert
    --         "addressFamily" "" -- val.addressFamily
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>Information about a tag associated with an AWS Direct Connect resource.</p>
-}
type alias ResourceTag =
    { resourceArn : Maybe String
    , tags : Maybe (List Tag)
    }



resourceTagDecoder : JD.Decoder ResourceTag
resourceTagDecoder =
    JD.succeed ResourceTag
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceArn", "ResourceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




resourceTagToString : ResourceTag -> String -- List (String, String)
resourceTagToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceArn" "" -- val.resourceArn
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>Information about a route filter prefix that a customer can advertise through Border Gateway Protocol (BGP) over a public virtual interface.</p>
-}
type alias RouteFilterPrefix =
    { cidr : Maybe String
    }



routeFilterPrefixDecoder : JD.Decoder RouteFilterPrefix
routeFilterPrefixDecoder =
    JD.succeed RouteFilterPrefix
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cidr", "Cidr"]
            JD.string
        )
        




routeFilterPrefixToString : RouteFilterPrefix -> String -- List (String, String)
routeFilterPrefixToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cidr" "" -- val.cidr
        
    --     |> Dict.toList
    ""



{-| <p>Information about a tag.</p>
-}
type alias Tag =
    { key : String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
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



{-| Type of HTTP response from updateDirectConnectGatewayAssociati
-}
type alias UpdateDirectConnectGatewayAssociationResult =
    { directConnectGatewayAssociation : Maybe DirectConnectGatewayAssociation
    }



updateDirectConnectGatewayAssociationResultDecoder : JD.Decoder UpdateDirectConnectGatewayAssociationResult
updateDirectConnectGatewayAssociationResultDecoder =
    JD.succeed UpdateDirectConnectGatewayAssociationResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayAssociation", "DirectConnectGatewayAssociation"]
            directConnectGatewayAssociationDecoder
        )
        




updateDirectConnectGatewayAssociationResultToString : UpdateDirectConnectGatewayAssociationResult -> String -- List (String, String)
updateDirectConnectGatewayAssociationResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "directConnectGatewayAssociation" "" -- val.directConnectGatewayAssociation
        
    --     |> Dict.toList
    ""



{-| <p>Information about a virtual private gateway for a private virtual interface.</p>
-}
type alias VirtualGateway =
    { virtualGatewayId : Maybe String
    , virtualGatewayState : Maybe String
    }



virtualGatewayDecoder : JD.Decoder VirtualGateway
virtualGatewayDecoder =
    JD.succeed VirtualGateway
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualGatewayId", "VirtualGatewayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualGatewayState", "VirtualGatewayState"]
            JD.string
        )
        




virtualGatewayToString : VirtualGateway -> String -- List (String, String)
virtualGatewayToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualGatewayId" "" -- val.virtualGatewayId
        
    --     |> Dict.insert
    --         "virtualGatewayState" "" -- val.virtualGatewayState
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from virtual
-}
type alias VirtualGateways =
    { virtualGateways : Maybe (List VirtualGateway)
    }



virtualGatewaysDecoder : JD.Decoder VirtualGateways
virtualGatewaysDecoder =
    JD.succeed VirtualGateways
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualGateways", "VirtualGateways"]
            (JD.list virtualGatewayDecoder)
        )
        




virtualGatewaysToString : VirtualGateways -> String -- List (String, String)
virtualGatewaysToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualGateways" "" -- val.virtualGateways
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from virtualI
-}
type alias VirtualInterface =
    { ownerAccount : Maybe String
    , virtualInterfaceId : Maybe String
    , location : Maybe String
    , connectionId : Maybe String
    , virtualInterfaceType : Maybe String
    , virtualInterfaceName : Maybe String
    , vlan : Maybe Int
    , asn : Maybe Int
    , amazonSideAsn : Maybe Int
    , authKey : Maybe String
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    , addressFamily : Maybe AddressFamily
    , virtualInterfaceState : Maybe VirtualInterfaceState
    , customerRouterConfig : Maybe String
    , mtu : Maybe Int
    , jumboFrameCapable : Maybe Bool
    , virtualGatewayId : Maybe String
    , directConnectGatewayId : Maybe String
    , routeFilterPrefixes : Maybe (List RouteFilterPrefix)
    , bgpPeers : Maybe (List BGPPeer)
    , region : Maybe String
    , awsDeviceV2 : Maybe String
    , tags : Maybe (List Tag)
    }



virtualInterfaceDecoder : JD.Decoder VirtualInterface
virtualInterfaceDecoder =
    JD.succeed VirtualInterface
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ownerAccount", "OwnerAccount"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceId", "VirtualInterfaceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["connectionId", "ConnectionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceType", "VirtualInterfaceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceName", "VirtualInterfaceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["vlan", "Vlan"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["asn", "Asn"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amazonSideAsn", "AmazonSideAsn"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authKey", "AuthKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["amazonAddress", "AmazonAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customerAddress", "CustomerAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["addressFamily", "AddressFamily"]
            addressFamilyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaceState", "VirtualInterfaceState"]
            virtualInterfaceStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customerRouterConfig", "CustomerRouterConfig"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mtu", "Mtu"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["jumboFrameCapable", "JumboFrameCapable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualGatewayId", "VirtualGatewayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["directConnectGatewayId", "DirectConnectGatewayId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["routeFilterPrefixes", "RouteFilterPrefixes"]
            (JD.list routeFilterPrefixDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bgpPeers", "BgpPeers"]
            (JD.list bGPPeerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["region", "Region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["awsDeviceV2", "AwsDeviceV2"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        




virtualInterfaceToString : VirtualInterface -> String -- List (String, String)
virtualInterfaceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ownerAccount" "" -- val.ownerAccount
        
    --     |> Dict.insert
    --         "virtualInterfaceId" "" -- val.virtualInterfaceId
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "connectionId" "" -- val.connectionId
        
    --     |> Dict.insert
    --         "virtualInterfaceType" "" -- val.virtualInterfaceType
        
    --     |> Dict.insert
    --         "virtualInterfaceName" "" -- val.virtualInterfaceName
        
    --     |> Dict.insert
    --         "vlan" "" -- val.vlan
        
    --     |> Dict.insert
    --         "asn" "" -- val.asn
        
    --     |> Dict.insert
    --         "amazonSideAsn" "" -- val.amazonSideAsn
        
    --     |> Dict.insert
    --         "authKey" "" -- val.authKey
        
    --     |> Dict.insert
    --         "amazonAddress" "" -- val.amazonAddress
        
    --     |> Dict.insert
    --         "customerAddress" "" -- val.customerAddress
        
    --     |> Dict.insert
    --         "addressFamily" "" -- val.addressFamily
        
    --     |> Dict.insert
    --         "virtualInterfaceState" "" -- val.virtualInterfaceState
        
    --     |> Dict.insert
    --         "customerRouterConfig" "" -- val.customerRouterConfig
        
    --     |> Dict.insert
    --         "mtu" "" -- val.mtu
        
    --     |> Dict.insert
    --         "jumboFrameCapable" "" -- val.jumboFrameCapable
        
    --     |> Dict.insert
    --         "virtualGatewayId" "" -- val.virtualGatewayId
        
    --     |> Dict.insert
    --         "directConnectGatewayId" "" -- val.directConnectGatewayId
        
    --     |> Dict.insert
    --         "routeFilterPrefixes" "" -- val.routeFilterPrefixes
        
    --     |> Dict.insert
    --         "bgpPeers" "" -- val.bgpPeers
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "awsDeviceV2" "" -- val.awsDeviceV2
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| One of

* `VirtualInterfaceState_confirming`
* `VirtualInterfaceState_verifying`
* `VirtualInterfaceState_pending`
* `VirtualInterfaceState_available`
* `VirtualInterfaceState_down`
* `VirtualInterfaceState_deleting`
* `VirtualInterfaceState_deleted`
* `VirtualInterfaceState_rejected`
* `VirtualInterfaceState_unknown`

-}
type VirtualInterfaceState
    = VirtualInterfaceState_confirming
    | VirtualInterfaceState_verifying
    | VirtualInterfaceState_pending
    | VirtualInterfaceState_available
    | VirtualInterfaceState_down
    | VirtualInterfaceState_deleting
    | VirtualInterfaceState_deleted
    | VirtualInterfaceState_rejected
    | VirtualInterfaceState_unknown



virtualInterfaceStateDecoder : JD.Decoder VirtualInterfaceState
virtualInterfaceStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "confirming" ->
                        JD.succeed VirtualInterfaceState_confirming

                    "verifying" ->
                        JD.succeed VirtualInterfaceState_verifying

                    "pending" ->
                        JD.succeed VirtualInterfaceState_pending

                    "available" ->
                        JD.succeed VirtualInterfaceState_available

                    "down" ->
                        JD.succeed VirtualInterfaceState_down

                    "deleting" ->
                        JD.succeed VirtualInterfaceState_deleting

                    "deleted" ->
                        JD.succeed VirtualInterfaceState_deleted

                    "rejected" ->
                        JD.succeed VirtualInterfaceState_rejected

                    "unknown" ->
                        JD.succeed VirtualInterfaceState_unknown


                    _ ->
                        JD.fail "bad thing"
            )




virtualInterfaceStateToString : VirtualInterfaceState -> String
virtualInterfaceStateToString val =
    case val of
        VirtualInterfaceState_confirming ->
            "confirming"

        VirtualInterfaceState_verifying ->
            "verifying"

        VirtualInterfaceState_pending ->
            "pending"

        VirtualInterfaceState_available ->
            "available"

        VirtualInterfaceState_down ->
            "down"

        VirtualInterfaceState_deleting ->
            "deleting"

        VirtualInterfaceState_deleted ->
            "deleted"

        VirtualInterfaceState_rejected ->
            "rejected"

        VirtualInterfaceState_unknown ->
            "unknown"




{-| Type of HTTP response from virtualIn
-}
type alias VirtualInterfaces =
    { virtualInterfaces : Maybe (List VirtualInterface)
    }



virtualInterfacesDecoder : JD.Decoder VirtualInterfaces
virtualInterfacesDecoder =
    JD.succeed VirtualInterfaces
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["virtualInterfaces", "VirtualInterfaces"]
            (JD.list virtualInterfaceDecoder)
        )
        




virtualInterfacesToString : VirtualInterfaces -> String -- List (String, String)
virtualInterfacesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "virtualInterfaces" "" -- val.virtualInterfaces
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AcceptDirectConnectGatewayAssociationProposalRequest =
    { directConnectGatewayId : String
    , proposalId : String
    , associatedGatewayOwnerAccount : String
    , overrideAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix)
    }


{-| undefined
-}
type alias AllocateConnectionOnInterconnectRequest =
    { bandwidth : String
    , connectionName : String
    , ownerAccount : String
    , interconnectId : String
    , vlan : Int
    }


{-| undefined
-}
type alias AllocateHostedConnectionRequest =
    { connectionId : String
    , ownerAccount : String
    , bandwidth : String
    , connectionName : String
    , vlan : Int
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias AllocatePrivateVirtualInterfaceRequest =
    { connectionId : String
    , ownerAccount : String
    , newPrivateVirtualInterfaceAllocation : NewPrivateVirtualInterfaceAllocation
    }


{-| undefined
-}
type alias AllocatePublicVirtualInterfaceRequest =
    { connectionId : String
    , ownerAccount : String
    , newPublicVirtualInterfaceAllocation : NewPublicVirtualInterfaceAllocation
    }


{-| undefined
-}
type alias AllocateTransitVirtualInterfaceRequest =
    { connectionId : String
    , ownerAccount : String
    , newTransitVirtualInterfaceAllocation : NewTransitVirtualInterfaceAllocation
    }


{-| undefined
-}
type alias AssociateConnectionWithLagRequest =
    { connectionId : String
    , lagId : String
    }


{-| undefined
-}
type alias AssociateHostedConnectionRequest =
    { connectionId : String
    , parentConnectionId : String
    }


{-| undefined
-}
type alias AssociateVirtualInterfaceRequest =
    { virtualInterfaceId : String
    , connectionId : String
    }


{-| undefined
-}
type alias ConfirmConnectionRequest =
    { connectionId : String
    }


{-| undefined
-}
type alias ConfirmPrivateVirtualInterfaceRequest =
    { virtualInterfaceId : String
    , virtualGatewayId : Maybe String
    , directConnectGatewayId : Maybe String
    }


{-| undefined
-}
type alias ConfirmPublicVirtualInterfaceRequest =
    { virtualInterfaceId : String
    }


{-| undefined
-}
type alias ConfirmTransitVirtualInterfaceRequest =
    { virtualInterfaceId : String
    , directConnectGatewayId : String
    }


{-| undefined
-}
type alias CreateBGPPeerRequest =
    { virtualInterfaceId : Maybe String
    , newBGPPeer : Maybe NewBGPPeer
    }


{-| undefined
-}
type alias CreateConnectionRequest =
    { location : String
    , bandwidth : String
    , connectionName : String
    , lagId : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateDirectConnectGatewayAssociationProposalRequest =
    { directConnectGatewayId : String
    , directConnectGatewayOwnerAccount : String
    , gatewayId : String
    , addAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix)
    , removeAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix)
    }


{-| undefined
-}
type alias CreateDirectConnectGatewayAssociationRequest =
    { directConnectGatewayId : String
    , gatewayId : Maybe String
    , addAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix)
    , virtualGatewayId : Maybe String
    }


{-| undefined
-}
type alias CreateDirectConnectGatewayRequest =
    { directConnectGatewayName : String
    , amazonSideAsn : Maybe Int
    }


{-| undefined
-}
type alias CreateInterconnectRequest =
    { interconnectName : String
    , bandwidth : String
    , location : String
    , lagId : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateLagRequest =
    { numberOfConnections : Int
    , location : String
    , connectionsBandwidth : String
    , lagName : String
    , connectionId : Maybe String
    , tags : Maybe (List Tag)
    , childConnectionTags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreatePrivateVirtualInterfaceRequest =
    { connectionId : String
    , newPrivateVirtualInterface : NewPrivateVirtualInterface
    }


{-| undefined
-}
type alias CreatePublicVirtualInterfaceRequest =
    { connectionId : String
    , newPublicVirtualInterface : NewPublicVirtualInterface
    }


{-| undefined
-}
type alias CreateTransitVirtualInterfaceRequest =
    { connectionId : String
    , newTransitVirtualInterface : NewTransitVirtualInterface
    }


{-| undefined
-}
type alias DeleteBGPPeerRequest =
    { virtualInterfaceId : Maybe String
    , asn : Maybe Int
    , customerAddress : Maybe String
    , bgpPeerId : Maybe String
    }


{-| undefined
-}
type alias DeleteConnectionRequest =
    { connectionId : String
    }


{-| undefined
-}
type alias DeleteDirectConnectGatewayAssociationProposalRequest =
    { proposalId : String
    }


{-| undefined
-}
type alias DeleteDirectConnectGatewayAssociationRequest =
    { associationId : Maybe String
    , directConnectGatewayId : Maybe String
    , virtualGatewayId : Maybe String
    }


{-| undefined
-}
type alias DeleteDirectConnectGatewayRequest =
    { directConnectGatewayId : String
    }


{-| undefined
-}
type alias DeleteInterconnectRequest =
    { interconnectId : String
    }


{-| undefined
-}
type alias DeleteLagRequest =
    { lagId : String
    }


{-| undefined
-}
type alias DeleteVirtualInterfaceRequest =
    { virtualInterfaceId : String
    }


{-| undefined
-}
type alias DescribeConnectionLoaRequest =
    { connectionId : String
    , providerName : Maybe String
    , loaContentType : Maybe LoaContentType
    }


{-| undefined
-}
type alias DescribeConnectionsOnInterconnectRequest =
    { interconnectId : String
    }


{-| undefined
-}
type alias DescribeConnectionsRequest =
    { connectionId : Maybe String
    }


{-| undefined
-}
type alias DescribeDirectConnectGatewayAssociationProposalsRequest =
    { directConnectGatewayId : Maybe String
    , proposalId : Maybe String
    , associatedGatewayId : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeDirectConnectGatewayAssociationsRequest =
    { associationId : Maybe String
    , associatedGatewayId : Maybe String
    , directConnectGatewayId : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    , virtualGatewayId : Maybe String
    }


{-| undefined
-}
type alias DescribeDirectConnectGatewayAttachmentsRequest =
    { directConnectGatewayId : Maybe String
    , virtualInterfaceId : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeDirectConnectGatewaysRequest =
    { directConnectGatewayId : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeHostedConnectionsRequest =
    { connectionId : String
    }


{-| undefined
-}
type alias DescribeInterconnectLoaRequest =
    { interconnectId : String
    , providerName : Maybe String
    , loaContentType : Maybe LoaContentType
    }


{-| undefined
-}
type alias DescribeInterconnectsRequest =
    { interconnectId : Maybe String
    }


{-| undefined
-}
type alias DescribeLagsRequest =
    { lagId : Maybe String
    }


{-| undefined
-}
type alias DescribeLoaRequest =
    { connectionId : String
    , providerName : Maybe String
    , loaContentType : Maybe LoaContentType
    }


{-| undefined
-}
type alias DescribeTagsRequest =
    { resourceArns : (List String)
    }


{-| undefined
-}
type alias DescribeVirtualInterfacesRequest =
    { connectionId : Maybe String
    , virtualInterfaceId : Maybe String
    }


{-| undefined
-}
type alias DisassociateConnectionFromLagRequest =
    { connectionId : String
    , lagId : String
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceArn : String
    , tags : (List Tag)
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceArn : String
    , tagKeys : (List String)
    }


{-| undefined
-}
type alias UpdateDirectConnectGatewayAssociationRequest =
    { associationId : Maybe String
    , addAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix)
    , removeAllowedPrefixesToDirectConnectGateway : Maybe (List RouteFilterPrefix)
    }


{-| undefined
-}
type alias UpdateLagRequest =
    { lagId : String
    , lagName : Maybe String
    , minimumLinks : Maybe Int
    }


{-| undefined
-}
type alias UpdateVirtualInterfaceAttributesRequest =
    { virtualInterfaceId : String
    , mtu : Maybe Int
    }






acceptDirectConnectGatewayAssociationProposalRequestEncoder : AcceptDirectConnectGatewayAssociationProposalRequest -> JE.Value
acceptDirectConnectGatewayAssociationProposalRequestEncoder data =
    []
        
        
        |> (::) ("directConnectGatewayId", data.directConnectGatewayId |> (JE.string))
        
        
        
        |> (::) ("proposalId", data.proposalId |> (JE.string))
        
        
        
        |> (::) ("associatedGatewayOwnerAccount", data.associatedGatewayOwnerAccount |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (routeFilterPrefixEncoder))
            ("overrideAllowedPrefixesToDirectConnectGateway", data.overrideAllowedPrefixesToDirectConnectGateway)
        
        
        |> JE.object






acceptDirectConnectGatewayAssociationProposalResultEncoder : AcceptDirectConnectGatewayAssociationProposalResult -> JE.Value
acceptDirectConnectGatewayAssociationProposalResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayAssociationEncoder)
            ("directConnectGatewayAssociation", data.directConnectGatewayAssociation)
        
        
        |> JE.object










allocateConnectionOnInterconnectRequestEncoder : AllocateConnectionOnInterconnectRequest -> JE.Value
allocateConnectionOnInterconnectRequestEncoder data =
    []
        
        
        |> (::) ("bandwidth", data.bandwidth |> (JE.string))
        
        
        
        |> (::) ("connectionName", data.connectionName |> (JE.string))
        
        
        
        |> (::) ("ownerAccount", data.ownerAccount |> (JE.string))
        
        
        
        |> (::) ("interconnectId", data.interconnectId |> (JE.string))
        
        
        
        |> (::) ("vlan", data.vlan |> (JE.int))
        
        
        |> JE.object






allocateHostedConnectionRequestEncoder : AllocateHostedConnectionRequest -> JE.Value
allocateHostedConnectionRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        
        |> (::) ("ownerAccount", data.ownerAccount |> (JE.string))
        
        
        
        |> (::) ("bandwidth", data.bandwidth |> (JE.string))
        
        
        
        |> (::) ("connectionName", data.connectionName |> (JE.string))
        
        
        
        |> (::) ("vlan", data.vlan |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






allocatePrivateVirtualInterfaceRequestEncoder : AllocatePrivateVirtualInterfaceRequest -> JE.Value
allocatePrivateVirtualInterfaceRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        
        |> (::) ("ownerAccount", data.ownerAccount |> (JE.string))
        
        
        
        |> (::) ("newPrivateVirtualInterfaceAllocation", data.newPrivateVirtualInterfaceAllocation |> (newPrivateVirtualInterfaceAllocationEncoder))
        
        
        |> JE.object






allocatePublicVirtualInterfaceRequestEncoder : AllocatePublicVirtualInterfaceRequest -> JE.Value
allocatePublicVirtualInterfaceRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        
        |> (::) ("ownerAccount", data.ownerAccount |> (JE.string))
        
        
        
        |> (::) ("newPublicVirtualInterfaceAllocation", data.newPublicVirtualInterfaceAllocation |> (newPublicVirtualInterfaceAllocationEncoder))
        
        
        |> JE.object






allocateTransitVirtualInterfaceRequestEncoder : AllocateTransitVirtualInterfaceRequest -> JE.Value
allocateTransitVirtualInterfaceRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        
        |> (::) ("ownerAccount", data.ownerAccount |> (JE.string))
        
        
        
        |> (::) ("newTransitVirtualInterfaceAllocation", data.newTransitVirtualInterfaceAllocation |> (newTransitVirtualInterfaceAllocationEncoder))
        
        
        |> JE.object






allocateTransitVirtualInterfaceResultEncoder : AllocateTransitVirtualInterfaceResult -> JE.Value
allocateTransitVirtualInterfaceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (virtualInterfaceEncoder)
            ("virtualInterface", data.virtualInterface)
        
        
        |> JE.object






associateConnectionWithLagRequestEncoder : AssociateConnectionWithLagRequest -> JE.Value
associateConnectionWithLagRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        
        |> (::) ("lagId", data.lagId |> (JE.string))
        
        
        |> JE.object






associateHostedConnectionRequestEncoder : AssociateHostedConnectionRequest -> JE.Value
associateHostedConnectionRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        
        |> (::) ("parentConnectionId", data.parentConnectionId |> (JE.string))
        
        
        |> JE.object






associateVirtualInterfaceRequestEncoder : AssociateVirtualInterfaceRequest -> JE.Value
associateVirtualInterfaceRequestEncoder data =
    []
        
        
        |> (::) ("virtualInterfaceId", data.virtualInterfaceId |> (JE.string))
        
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        |> JE.object






associatedGatewayEncoder : AssociatedGateway -> JE.Value
associatedGatewayEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (gatewayTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ownerAccount", data.ownerAccount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("region", data.region)
        
        
        |> JE.object






bGPPeerEncoder : BGPPeer -> JE.Value
bGPPeerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("bgpPeerId", data.bgpPeerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("asn", data.asn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authKey", data.authKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (addressFamilyToString >> JE.string)
            ("addressFamily", data.addressFamily)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("amazonAddress", data.amazonAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customerAddress", data.customerAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (bGPPeerStateToString >> JE.string)
            ("bgpPeerState", data.bgpPeerState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (bGPStatusToString >> JE.string)
            ("bgpStatus", data.bgpStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("awsDeviceV2", data.awsDeviceV2)
        
        
        |> JE.object














confirmConnectionRequestEncoder : ConfirmConnectionRequest -> JE.Value
confirmConnectionRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        |> JE.object






confirmConnectionResponseEncoder : ConfirmConnectionResponse -> JE.Value
confirmConnectionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (connectionStateToString >> JE.string)
            ("connectionState", data.connectionState)
        
        
        |> JE.object






confirmPrivateVirtualInterfaceRequestEncoder : ConfirmPrivateVirtualInterfaceRequest -> JE.Value
confirmPrivateVirtualInterfaceRequestEncoder data =
    []
        
        
        |> (::) ("virtualInterfaceId", data.virtualInterfaceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualGatewayId", data.virtualGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        |> JE.object






confirmPrivateVirtualInterfaceResponseEncoder : ConfirmPrivateVirtualInterfaceResponse -> JE.Value
confirmPrivateVirtualInterfaceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (virtualInterfaceStateToString >> JE.string)
            ("virtualInterfaceState", data.virtualInterfaceState)
        
        
        |> JE.object






confirmPublicVirtualInterfaceRequestEncoder : ConfirmPublicVirtualInterfaceRequest -> JE.Value
confirmPublicVirtualInterfaceRequestEncoder data =
    []
        
        
        |> (::) ("virtualInterfaceId", data.virtualInterfaceId |> (JE.string))
        
        
        |> JE.object






confirmPublicVirtualInterfaceResponseEncoder : ConfirmPublicVirtualInterfaceResponse -> JE.Value
confirmPublicVirtualInterfaceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (virtualInterfaceStateToString >> JE.string)
            ("virtualInterfaceState", data.virtualInterfaceState)
        
        
        |> JE.object






confirmTransitVirtualInterfaceRequestEncoder : ConfirmTransitVirtualInterfaceRequest -> JE.Value
confirmTransitVirtualInterfaceRequestEncoder data =
    []
        
        
        |> (::) ("virtualInterfaceId", data.virtualInterfaceId |> (JE.string))
        
        
        
        |> (::) ("directConnectGatewayId", data.directConnectGatewayId |> (JE.string))
        
        
        |> JE.object






confirmTransitVirtualInterfaceResponseEncoder : ConfirmTransitVirtualInterfaceResponse -> JE.Value
confirmTransitVirtualInterfaceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (virtualInterfaceStateToString >> JE.string)
            ("virtualInterfaceState", data.virtualInterfaceState)
        
        
        |> JE.object






connectionEncoder : Connection -> JE.Value
connectionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ownerAccount", data.ownerAccount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("connectionId", data.connectionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("connectionName", data.connectionName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (connectionStateToString >> JE.string)
            ("connectionState", data.connectionState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("bandwidth", data.bandwidth)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("vlan", data.vlan)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("partnerName", data.partnerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("loaIssueTime", data.loaIssueTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lagId", data.lagId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("awsDevice", data.awsDevice)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("jumboFrameCapable", data.jumboFrameCapable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("awsDeviceV2", data.awsDeviceV2)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (hasLogicalRedundancyToString >> JE.string)
            ("hasLogicalRedundancy", data.hasLogicalRedundancy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object










connectionsEncoder : Connections -> JE.Value
connectionsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (connectionEncoder))
            ("connections", data.connections)
        
        
        |> JE.object






createBGPPeerRequestEncoder : CreateBGPPeerRequest -> JE.Value
createBGPPeerRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualInterfaceId", data.virtualInterfaceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (newBGPPeerEncoder)
            ("newBGPPeer", data.newBGPPeer)
        
        
        |> JE.object






createBGPPeerResponseEncoder : CreateBGPPeerResponse -> JE.Value
createBGPPeerResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (virtualInterfaceEncoder)
            ("virtualInterface", data.virtualInterface)
        
        
        |> JE.object






createConnectionRequestEncoder : CreateConnectionRequest -> JE.Value
createConnectionRequestEncoder data =
    []
        
        
        |> (::) ("location", data.location |> (JE.string))
        
        
        
        |> (::) ("bandwidth", data.bandwidth |> (JE.string))
        
        
        
        |> (::) ("connectionName", data.connectionName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lagId", data.lagId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createDirectConnectGatewayAssociationProposalRequestEncoder : CreateDirectConnectGatewayAssociationProposalRequest -> JE.Value
createDirectConnectGatewayAssociationProposalRequestEncoder data =
    []
        
        
        |> (::) ("directConnectGatewayId", data.directConnectGatewayId |> (JE.string))
        
        
        
        |> (::) ("directConnectGatewayOwnerAccount", data.directConnectGatewayOwnerAccount |> (JE.string))
        
        
        
        |> (::) ("gatewayId", data.gatewayId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (routeFilterPrefixEncoder))
            ("addAllowedPrefixesToDirectConnectGateway", data.addAllowedPrefixesToDirectConnectGateway)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (routeFilterPrefixEncoder))
            ("removeAllowedPrefixesToDirectConnectGateway", data.removeAllowedPrefixesToDirectConnectGateway)
        
        
        |> JE.object






createDirectConnectGatewayAssociationProposalResultEncoder : CreateDirectConnectGatewayAssociationProposalResult -> JE.Value
createDirectConnectGatewayAssociationProposalResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayAssociationProposalEncoder)
            ("directConnectGatewayAssociationProposal", data.directConnectGatewayAssociationProposal)
        
        
        |> JE.object






createDirectConnectGatewayAssociationRequestEncoder : CreateDirectConnectGatewayAssociationRequest -> JE.Value
createDirectConnectGatewayAssociationRequestEncoder data =
    []
        
        
        |> (::) ("directConnectGatewayId", data.directConnectGatewayId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("gatewayId", data.gatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (routeFilterPrefixEncoder))
            ("addAllowedPrefixesToDirectConnectGateway", data.addAllowedPrefixesToDirectConnectGateway)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualGatewayId", data.virtualGatewayId)
        
        
        |> JE.object






createDirectConnectGatewayAssociationResultEncoder : CreateDirectConnectGatewayAssociationResult -> JE.Value
createDirectConnectGatewayAssociationResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayAssociationEncoder)
            ("directConnectGatewayAssociation", data.directConnectGatewayAssociation)
        
        
        |> JE.object






createDirectConnectGatewayRequestEncoder : CreateDirectConnectGatewayRequest -> JE.Value
createDirectConnectGatewayRequestEncoder data =
    []
        
        
        |> (::) ("directConnectGatewayName", data.directConnectGatewayName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("amazonSideAsn", data.amazonSideAsn)
        
        
        |> JE.object






createDirectConnectGatewayResultEncoder : CreateDirectConnectGatewayResult -> JE.Value
createDirectConnectGatewayResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayEncoder)
            ("directConnectGateway", data.directConnectGateway)
        
        
        |> JE.object






createInterconnectRequestEncoder : CreateInterconnectRequest -> JE.Value
createInterconnectRequestEncoder data =
    []
        
        
        |> (::) ("interconnectName", data.interconnectName |> (JE.string))
        
        
        
        |> (::) ("bandwidth", data.bandwidth |> (JE.string))
        
        
        
        |> (::) ("location", data.location |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lagId", data.lagId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createLagRequestEncoder : CreateLagRequest -> JE.Value
createLagRequestEncoder data =
    []
        
        
        |> (::) ("numberOfConnections", data.numberOfConnections |> (JE.int))
        
        
        
        |> (::) ("location", data.location |> (JE.string))
        
        
        
        |> (::) ("connectionsBandwidth", data.connectionsBandwidth |> (JE.string))
        
        
        
        |> (::) ("lagName", data.lagName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("connectionId", data.connectionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("childConnectionTags", data.childConnectionTags)
        
        
        |> JE.object






createPrivateVirtualInterfaceRequestEncoder : CreatePrivateVirtualInterfaceRequest -> JE.Value
createPrivateVirtualInterfaceRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        
        |> (::) ("newPrivateVirtualInterface", data.newPrivateVirtualInterface |> (newPrivateVirtualInterfaceEncoder))
        
        
        |> JE.object






createPublicVirtualInterfaceRequestEncoder : CreatePublicVirtualInterfaceRequest -> JE.Value
createPublicVirtualInterfaceRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        
        |> (::) ("newPublicVirtualInterface", data.newPublicVirtualInterface |> (newPublicVirtualInterfaceEncoder))
        
        
        |> JE.object






createTransitVirtualInterfaceRequestEncoder : CreateTransitVirtualInterfaceRequest -> JE.Value
createTransitVirtualInterfaceRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        
        |> (::) ("newTransitVirtualInterface", data.newTransitVirtualInterface |> (newTransitVirtualInterfaceEncoder))
        
        
        |> JE.object






createTransitVirtualInterfaceResultEncoder : CreateTransitVirtualInterfaceResult -> JE.Value
createTransitVirtualInterfaceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (virtualInterfaceEncoder)
            ("virtualInterface", data.virtualInterface)
        
        
        |> JE.object






deleteBGPPeerRequestEncoder : DeleteBGPPeerRequest -> JE.Value
deleteBGPPeerRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualInterfaceId", data.virtualInterfaceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("asn", data.asn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customerAddress", data.customerAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("bgpPeerId", data.bgpPeerId)
        
        
        |> JE.object






deleteBGPPeerResponseEncoder : DeleteBGPPeerResponse -> JE.Value
deleteBGPPeerResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (virtualInterfaceEncoder)
            ("virtualInterface", data.virtualInterface)
        
        
        |> JE.object






deleteConnectionRequestEncoder : DeleteConnectionRequest -> JE.Value
deleteConnectionRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        |> JE.object






deleteDirectConnectGatewayAssociationProposalRequestEncoder : DeleteDirectConnectGatewayAssociationProposalRequest -> JE.Value
deleteDirectConnectGatewayAssociationProposalRequestEncoder data =
    []
        
        
        |> (::) ("proposalId", data.proposalId |> (JE.string))
        
        
        |> JE.object






deleteDirectConnectGatewayAssociationProposalResultEncoder : DeleteDirectConnectGatewayAssociationProposalResult -> JE.Value
deleteDirectConnectGatewayAssociationProposalResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayAssociationProposalEncoder)
            ("directConnectGatewayAssociationProposal", data.directConnectGatewayAssociationProposal)
        
        
        |> JE.object






deleteDirectConnectGatewayAssociationRequestEncoder : DeleteDirectConnectGatewayAssociationRequest -> JE.Value
deleteDirectConnectGatewayAssociationRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("associationId", data.associationId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualGatewayId", data.virtualGatewayId)
        
        
        |> JE.object






deleteDirectConnectGatewayAssociationResultEncoder : DeleteDirectConnectGatewayAssociationResult -> JE.Value
deleteDirectConnectGatewayAssociationResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayAssociationEncoder)
            ("directConnectGatewayAssociation", data.directConnectGatewayAssociation)
        
        
        |> JE.object






deleteDirectConnectGatewayRequestEncoder : DeleteDirectConnectGatewayRequest -> JE.Value
deleteDirectConnectGatewayRequestEncoder data =
    []
        
        
        |> (::) ("directConnectGatewayId", data.directConnectGatewayId |> (JE.string))
        
        
        |> JE.object






deleteDirectConnectGatewayResultEncoder : DeleteDirectConnectGatewayResult -> JE.Value
deleteDirectConnectGatewayResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayEncoder)
            ("directConnectGateway", data.directConnectGateway)
        
        
        |> JE.object






deleteInterconnectRequestEncoder : DeleteInterconnectRequest -> JE.Value
deleteInterconnectRequestEncoder data =
    []
        
        
        |> (::) ("interconnectId", data.interconnectId |> (JE.string))
        
        
        |> JE.object






deleteInterconnectResponseEncoder : DeleteInterconnectResponse -> JE.Value
deleteInterconnectResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (interconnectStateToString >> JE.string)
            ("interconnectState", data.interconnectState)
        
        
        |> JE.object






deleteLagRequestEncoder : DeleteLagRequest -> JE.Value
deleteLagRequestEncoder data =
    []
        
        
        |> (::) ("lagId", data.lagId |> (JE.string))
        
        
        |> JE.object






deleteVirtualInterfaceRequestEncoder : DeleteVirtualInterfaceRequest -> JE.Value
deleteVirtualInterfaceRequestEncoder data =
    []
        
        
        |> (::) ("virtualInterfaceId", data.virtualInterfaceId |> (JE.string))
        
        
        |> JE.object






deleteVirtualInterfaceResponseEncoder : DeleteVirtualInterfaceResponse -> JE.Value
deleteVirtualInterfaceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (virtualInterfaceStateToString >> JE.string)
            ("virtualInterfaceState", data.virtualInterfaceState)
        
        
        |> JE.object






describeConnectionLoaRequestEncoder : DescribeConnectionLoaRequest -> JE.Value
describeConnectionLoaRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("providerName", data.providerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (loaContentTypeToString >> JE.string)
            ("loaContentType", data.loaContentType)
        
        
        |> JE.object






describeConnectionLoaResponseEncoder : DescribeConnectionLoaResponse -> JE.Value
describeConnectionLoaResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (loaEncoder)
            ("loa", data.loa)
        
        
        |> JE.object






describeConnectionsOnInterconnectRequestEncoder : DescribeConnectionsOnInterconnectRequest -> JE.Value
describeConnectionsOnInterconnectRequestEncoder data =
    []
        
        
        |> (::) ("interconnectId", data.interconnectId |> (JE.string))
        
        
        |> JE.object






describeConnectionsRequestEncoder : DescribeConnectionsRequest -> JE.Value
describeConnectionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("connectionId", data.connectionId)
        
        
        |> JE.object






describeDirectConnectGatewayAssociationProposalsRequestEncoder : DescribeDirectConnectGatewayAssociationProposalsRequest -> JE.Value
describeDirectConnectGatewayAssociationProposalsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("proposalId", data.proposalId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("associatedGatewayId", data.associatedGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeDirectConnectGatewayAssociationProposalsResultEncoder : DescribeDirectConnectGatewayAssociationProposalsResult -> JE.Value
describeDirectConnectGatewayAssociationProposalsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (directConnectGatewayAssociationProposalEncoder))
            ("directConnectGatewayAssociationProposals", data.directConnectGatewayAssociationProposals)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeDirectConnectGatewayAssociationsRequestEncoder : DescribeDirectConnectGatewayAssociationsRequest -> JE.Value
describeDirectConnectGatewayAssociationsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("associationId", data.associationId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("associatedGatewayId", data.associatedGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualGatewayId", data.virtualGatewayId)
        
        
        |> JE.object






describeDirectConnectGatewayAssociationsResultEncoder : DescribeDirectConnectGatewayAssociationsResult -> JE.Value
describeDirectConnectGatewayAssociationsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (directConnectGatewayAssociationEncoder))
            ("directConnectGatewayAssociations", data.directConnectGatewayAssociations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeDirectConnectGatewayAttachmentsRequestEncoder : DescribeDirectConnectGatewayAttachmentsRequest -> JE.Value
describeDirectConnectGatewayAttachmentsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualInterfaceId", data.virtualInterfaceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeDirectConnectGatewayAttachmentsResultEncoder : DescribeDirectConnectGatewayAttachmentsResult -> JE.Value
describeDirectConnectGatewayAttachmentsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (directConnectGatewayAttachmentEncoder))
            ("directConnectGatewayAttachments", data.directConnectGatewayAttachments)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeDirectConnectGatewaysRequestEncoder : DescribeDirectConnectGatewaysRequest -> JE.Value
describeDirectConnectGatewaysRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeDirectConnectGatewaysResultEncoder : DescribeDirectConnectGatewaysResult -> JE.Value
describeDirectConnectGatewaysResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (directConnectGatewayEncoder))
            ("directConnectGateways", data.directConnectGateways)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeHostedConnectionsRequestEncoder : DescribeHostedConnectionsRequest -> JE.Value
describeHostedConnectionsRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        |> JE.object






describeInterconnectLoaRequestEncoder : DescribeInterconnectLoaRequest -> JE.Value
describeInterconnectLoaRequestEncoder data =
    []
        
        
        |> (::) ("interconnectId", data.interconnectId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("providerName", data.providerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (loaContentTypeToString >> JE.string)
            ("loaContentType", data.loaContentType)
        
        
        |> JE.object






describeInterconnectLoaResponseEncoder : DescribeInterconnectLoaResponse -> JE.Value
describeInterconnectLoaResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (loaEncoder)
            ("loa", data.loa)
        
        
        |> JE.object






describeInterconnectsRequestEncoder : DescribeInterconnectsRequest -> JE.Value
describeInterconnectsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("interconnectId", data.interconnectId)
        
        
        |> JE.object






describeLagsRequestEncoder : DescribeLagsRequest -> JE.Value
describeLagsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lagId", data.lagId)
        
        
        |> JE.object






describeLoaRequestEncoder : DescribeLoaRequest -> JE.Value
describeLoaRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("providerName", data.providerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (loaContentTypeToString >> JE.string)
            ("loaContentType", data.loaContentType)
        
        
        |> JE.object






describeTagsRequestEncoder : DescribeTagsRequest -> JE.Value
describeTagsRequestEncoder data =
    []
        
        
        |> (::) ("resourceArns", data.resourceArns |> (JE.list (JE.string)))
        
        
        |> JE.object






describeTagsResponseEncoder : DescribeTagsResponse -> JE.Value
describeTagsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceTagEncoder))
            ("resourceTags", data.resourceTags)
        
        
        |> JE.object






describeVirtualInterfacesRequestEncoder : DescribeVirtualInterfacesRequest -> JE.Value
describeVirtualInterfacesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("connectionId", data.connectionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualInterfaceId", data.virtualInterfaceId)
        
        
        |> JE.object






directConnectGatewayEncoder : DirectConnectGateway -> JE.Value
directConnectGatewayEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayName", data.directConnectGatewayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("amazonSideAsn", data.amazonSideAsn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ownerAccount", data.ownerAccount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayStateToString >> JE.string)
            ("directConnectGatewayState", data.directConnectGatewayState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("stateChangeError", data.stateChangeError)
        
        
        |> JE.object






directConnectGatewayAssociationEncoder : DirectConnectGatewayAssociation -> JE.Value
directConnectGatewayAssociationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayOwnerAccount", data.directConnectGatewayOwnerAccount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayAssociationStateToString >> JE.string)
            ("associationState", data.associationState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("stateChangeError", data.stateChangeError)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (associatedGatewayEncoder)
            ("associatedGateway", data.associatedGateway)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("associationId", data.associationId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (routeFilterPrefixEncoder))
            ("allowedPrefixesToDirectConnectGateway", data.allowedPrefixesToDirectConnectGateway)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualGatewayId", data.virtualGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualGatewayRegion", data.virtualGatewayRegion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualGatewayOwnerAccount", data.virtualGatewayOwnerAccount)
        
        
        |> JE.object






directConnectGatewayAssociationProposalEncoder : DirectConnectGatewayAssociationProposal -> JE.Value
directConnectGatewayAssociationProposalEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("proposalId", data.proposalId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayOwnerAccount", data.directConnectGatewayOwnerAccount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayAssociationProposalStateToString >> JE.string)
            ("proposalState", data.proposalState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (associatedGatewayEncoder)
            ("associatedGateway", data.associatedGateway)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (routeFilterPrefixEncoder))
            ("existingAllowedPrefixesToDirectConnectGateway", data.existingAllowedPrefixesToDirectConnectGateway)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (routeFilterPrefixEncoder))
            ("requestedAllowedPrefixesToDirectConnectGateway", data.requestedAllowedPrefixesToDirectConnectGateway)
        
        
        |> JE.object














directConnectGatewayAttachmentEncoder : DirectConnectGatewayAttachment -> JE.Value
directConnectGatewayAttachmentEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualInterfaceId", data.virtualInterfaceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualInterfaceRegion", data.virtualInterfaceRegion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualInterfaceOwnerAccount", data.virtualInterfaceOwnerAccount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayAttachmentStateToString >> JE.string)
            ("attachmentState", data.attachmentState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayAttachmentTypeToString >> JE.string)
            ("attachmentType", data.attachmentType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("stateChangeError", data.stateChangeError)
        
        
        |> JE.object


















disassociateConnectionFromLagRequestEncoder : DisassociateConnectionFromLagRequest -> JE.Value
disassociateConnectionFromLagRequestEncoder data =
    []
        
        
        |> (::) ("connectionId", data.connectionId |> (JE.string))
        
        
        
        |> (::) ("lagId", data.lagId |> (JE.string))
        
        
        |> JE.object














interconnectEncoder : Interconnect -> JE.Value
interconnectEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("interconnectId", data.interconnectId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("interconnectName", data.interconnectName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (interconnectStateToString >> JE.string)
            ("interconnectState", data.interconnectState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("bandwidth", data.bandwidth)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("loaIssueTime", data.loaIssueTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lagId", data.lagId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("awsDevice", data.awsDevice)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("jumboFrameCapable", data.jumboFrameCapable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("awsDeviceV2", data.awsDeviceV2)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (hasLogicalRedundancyToString >> JE.string)
            ("hasLogicalRedundancy", data.hasLogicalRedundancy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object










interconnectsEncoder : Interconnects -> JE.Value
interconnectsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (interconnectEncoder))
            ("interconnects", data.interconnects)
        
        
        |> JE.object






lagEncoder : Lag -> JE.Value
lagEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("connectionsBandwidth", data.connectionsBandwidth)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("numberOfConnections", data.numberOfConnections)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lagId", data.lagId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ownerAccount", data.ownerAccount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lagName", data.lagName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lagStateToString >> JE.string)
            ("lagState", data.lagState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("minimumLinks", data.minimumLinks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("awsDevice", data.awsDevice)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("awsDeviceV2", data.awsDeviceV2)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (connectionEncoder))
            ("connections", data.connections)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("allowsHostedConnections", data.allowsHostedConnections)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("jumboFrameCapable", data.jumboFrameCapable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (hasLogicalRedundancyToString >> JE.string)
            ("hasLogicalRedundancy", data.hasLogicalRedundancy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object










lagsEncoder : Lags -> JE.Value
lagsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (lagEncoder))
            ("lags", data.lags)
        
        
        |> JE.object






loaEncoder : Loa -> JE.Value
loaEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("loaContent", data.loaContent)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (loaContentTypeToString >> JE.string)
            ("loaContentType", data.loaContentType)
        
        
        |> JE.object










locationEncoder : Location -> JE.Value
locationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("locationCode", data.locationCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("locationName", data.locationName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("availablePortSpeeds", data.availablePortSpeeds)
        
        
        |> JE.object






locationsEncoder : Locations -> JE.Value
locationsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (locationEncoder))
            ("locations", data.locations)
        
        
        |> JE.object






newBGPPeerEncoder : NewBGPPeer -> JE.Value
newBGPPeerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("asn", data.asn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authKey", data.authKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (addressFamilyToString >> JE.string)
            ("addressFamily", data.addressFamily)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("amazonAddress", data.amazonAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customerAddress", data.customerAddress)
        
        
        |> JE.object






newPrivateVirtualInterfaceEncoder : NewPrivateVirtualInterface -> JE.Value
newPrivateVirtualInterfaceEncoder data =
    []
        
        
        |> (::) ("virtualInterfaceName", data.virtualInterfaceName |> (JE.string))
        
        
        
        |> (::) ("vlan", data.vlan |> (JE.int))
        
        
        
        |> (::) ("asn", data.asn |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("mtu", data.mtu)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authKey", data.authKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("amazonAddress", data.amazonAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customerAddress", data.customerAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (addressFamilyToString >> JE.string)
            ("addressFamily", data.addressFamily)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualGatewayId", data.virtualGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






newPrivateVirtualInterfaceAllocationEncoder : NewPrivateVirtualInterfaceAllocation -> JE.Value
newPrivateVirtualInterfaceAllocationEncoder data =
    []
        
        
        |> (::) ("virtualInterfaceName", data.virtualInterfaceName |> (JE.string))
        
        
        
        |> (::) ("vlan", data.vlan |> (JE.int))
        
        
        
        |> (::) ("asn", data.asn |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("mtu", data.mtu)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authKey", data.authKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("amazonAddress", data.amazonAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (addressFamilyToString >> JE.string)
            ("addressFamily", data.addressFamily)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customerAddress", data.customerAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






newPublicVirtualInterfaceEncoder : NewPublicVirtualInterface -> JE.Value
newPublicVirtualInterfaceEncoder data =
    []
        
        
        |> (::) ("virtualInterfaceName", data.virtualInterfaceName |> (JE.string))
        
        
        
        |> (::) ("vlan", data.vlan |> (JE.int))
        
        
        
        |> (::) ("asn", data.asn |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authKey", data.authKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("amazonAddress", data.amazonAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customerAddress", data.customerAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (addressFamilyToString >> JE.string)
            ("addressFamily", data.addressFamily)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (routeFilterPrefixEncoder))
            ("routeFilterPrefixes", data.routeFilterPrefixes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






newPublicVirtualInterfaceAllocationEncoder : NewPublicVirtualInterfaceAllocation -> JE.Value
newPublicVirtualInterfaceAllocationEncoder data =
    []
        
        
        |> (::) ("virtualInterfaceName", data.virtualInterfaceName |> (JE.string))
        
        
        
        |> (::) ("vlan", data.vlan |> (JE.int))
        
        
        
        |> (::) ("asn", data.asn |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authKey", data.authKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("amazonAddress", data.amazonAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customerAddress", data.customerAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (addressFamilyToString >> JE.string)
            ("addressFamily", data.addressFamily)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (routeFilterPrefixEncoder))
            ("routeFilterPrefixes", data.routeFilterPrefixes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






newTransitVirtualInterfaceEncoder : NewTransitVirtualInterface -> JE.Value
newTransitVirtualInterfaceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualInterfaceName", data.virtualInterfaceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("vlan", data.vlan)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("asn", data.asn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("mtu", data.mtu)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authKey", data.authKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("amazonAddress", data.amazonAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customerAddress", data.customerAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (addressFamilyToString >> JE.string)
            ("addressFamily", data.addressFamily)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






newTransitVirtualInterfaceAllocationEncoder : NewTransitVirtualInterfaceAllocation -> JE.Value
newTransitVirtualInterfaceAllocationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualInterfaceName", data.virtualInterfaceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("vlan", data.vlan)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("asn", data.asn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("mtu", data.mtu)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authKey", data.authKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("amazonAddress", data.amazonAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customerAddress", data.customerAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (addressFamilyToString >> JE.string)
            ("addressFamily", data.addressFamily)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






resourceTagEncoder : ResourceTag -> JE.Value
resourceTagEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("resourceArn", data.resourceArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






routeFilterPrefixEncoder : RouteFilterPrefix -> JE.Value
routeFilterPrefixEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cidr", data.cidr)
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("key", data.key |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("value", data.value)
        
        
        |> JE.object






tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






tagResourceResponseEncoder : TagResourceResponse -> JE.Value
tagResourceResponseEncoder data =
    []
        
        |> JE.object






untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("tagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






untagResourceResponseEncoder : UntagResourceResponse -> JE.Value
untagResourceResponseEncoder data =
    []
        
        |> JE.object






updateDirectConnectGatewayAssociationRequestEncoder : UpdateDirectConnectGatewayAssociationRequest -> JE.Value
updateDirectConnectGatewayAssociationRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("associationId", data.associationId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (routeFilterPrefixEncoder))
            ("addAllowedPrefixesToDirectConnectGateway", data.addAllowedPrefixesToDirectConnectGateway)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (routeFilterPrefixEncoder))
            ("removeAllowedPrefixesToDirectConnectGateway", data.removeAllowedPrefixesToDirectConnectGateway)
        
        
        |> JE.object






updateDirectConnectGatewayAssociationResultEncoder : UpdateDirectConnectGatewayAssociationResult -> JE.Value
updateDirectConnectGatewayAssociationResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (directConnectGatewayAssociationEncoder)
            ("directConnectGatewayAssociation", data.directConnectGatewayAssociation)
        
        
        |> JE.object






updateLagRequestEncoder : UpdateLagRequest -> JE.Value
updateLagRequestEncoder data =
    []
        
        
        |> (::) ("lagId", data.lagId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("lagName", data.lagName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("minimumLinks", data.minimumLinks)
        
        
        |> JE.object






updateVirtualInterfaceAttributesRequestEncoder : UpdateVirtualInterfaceAttributesRequest -> JE.Value
updateVirtualInterfaceAttributesRequestEncoder data =
    []
        
        
        |> (::) ("virtualInterfaceId", data.virtualInterfaceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("mtu", data.mtu)
        
        
        |> JE.object






virtualGatewayEncoder : VirtualGateway -> JE.Value
virtualGatewayEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualGatewayId", data.virtualGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualGatewayState", data.virtualGatewayState)
        
        
        |> JE.object






virtualGatewaysEncoder : VirtualGateways -> JE.Value
virtualGatewaysEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (virtualGatewayEncoder))
            ("virtualGateways", data.virtualGateways)
        
        
        |> JE.object






virtualInterfaceEncoder : VirtualInterface -> JE.Value
virtualInterfaceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ownerAccount", data.ownerAccount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualInterfaceId", data.virtualInterfaceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("connectionId", data.connectionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualInterfaceType", data.virtualInterfaceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualInterfaceName", data.virtualInterfaceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("vlan", data.vlan)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("asn", data.asn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("amazonSideAsn", data.amazonSideAsn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authKey", data.authKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("amazonAddress", data.amazonAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customerAddress", data.customerAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (addressFamilyToString >> JE.string)
            ("addressFamily", data.addressFamily)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (virtualInterfaceStateToString >> JE.string)
            ("virtualInterfaceState", data.virtualInterfaceState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customerRouterConfig", data.customerRouterConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("mtu", data.mtu)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("jumboFrameCapable", data.jumboFrameCapable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("virtualGatewayId", data.virtualGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("directConnectGatewayId", data.directConnectGatewayId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (routeFilterPrefixEncoder))
            ("routeFilterPrefixes", data.routeFilterPrefixes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (bGPPeerEncoder))
            ("bgpPeers", data.bgpPeers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("awsDeviceV2", data.awsDeviceV2)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object










virtualInterfacesEncoder : VirtualInterfaces -> JE.Value
virtualInterfacesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (virtualInterfaceEncoder))
            ("virtualInterfaces", data.virtualInterfaces)
        
        
        |> JE.object





