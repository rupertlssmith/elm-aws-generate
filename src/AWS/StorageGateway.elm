module AWS.StorageGateway exposing
    ( service
    , activateGateway, ActivateGatewayOptions, addCache, addTagsToResource, addUploadBuffer, addWorkingStorage, assignTapePool, attachVolume, AttachVolumeOptions, cancelArchival, cancelRetrieval, createCachediSCSIVolume, CreateCachediSCSIVolumeOptions, createNFSFileShare, CreateNFSFileShareOptions, createSMBFileShare, CreateSMBFileShareOptions, createSnapshot, CreateSnapshotOptions, createSnapshotFromVolumeRecoveryPoint, createStorediSCSIVolume, CreateStorediSCSIVolumeOptions, createTapeWithBarcode, CreateTapeWithBarcodeOptions, createTapes, CreateTapesOptions, deleteBandwidthRateLimit, deleteChapCredentials, deleteFileShare, DeleteFileShareOptions, deleteGateway, deleteSnapshotSchedule, deleteTape, deleteTapeArchive, deleteVolume, describeBandwidthRateLimit, describeCache, describeCachediSCSIVolumes, describeChapCredentials, describeGatewayInformation, describeMaintenanceStartTime, describeNFSFileShares, describeSMBFileShares, describeSMBSettings, describeSnapshotSchedule, describeStorediSCSIVolumes, describeTapeArchives, DescribeTapeArchivesOptions, describeTapeRecoveryPoints, DescribeTapeRecoveryPointsOptions, describeTapes, DescribeTapesOptions, describeUploadBuffer, describeVTLDevices, DescribeVTLDevicesOptions, describeWorkingStorage, detachVolume, DetachVolumeOptions, disableGateway, joinDomain, JoinDomainOptions, listFileShares, ListFileSharesOptions, listGateways, ListGatewaysOptions, listLocalDisks, listTagsForResource, ListTagsForResourceOptions, listTapes, ListTapesOptions, listVolumeInitiators, listVolumeRecoveryPoints, listVolumes, ListVolumesOptions, notifyWhenUploaded, refreshCache, RefreshCacheOptions, removeTagsFromResource, resetCache, retrieveTapeArchive, retrieveTapeRecoveryPoint, setLocalConsolePassword, setSMBGuestPassword, shutdownGateway, startGateway, updateBandwidthRateLimit, UpdateBandwidthRateLimitOptions, updateChapCredentials, UpdateChapCredentialsOptions, updateGatewayInformation, UpdateGatewayInformationOptions, updateGatewaySoftwareNow, updateMaintenanceStartTime, UpdateMaintenanceStartTimeOptions, updateNFSFileShare, UpdateNFSFileShareOptions, updateSMBFileShare, UpdateSMBFileShareOptions, updateSMBSecurityStrategy, updateSnapshotSchedule, UpdateSnapshotScheduleOptions, updateVTLDeviceType
    , ActivateGatewayOutput, AddCacheOutput, AddTagsToResourceOutput, AddUploadBufferOutput, AddWorkingStorageOutput, AssignTapePoolOutput, AttachVolumeOutput, CancelArchivalOutput, CancelRetrievalOutput, CreateCachediSCSIVolumeOutput, CreateNFSFileShareOutput, CreateSMBFileShareOutput, CreateSnapshotFromVolumeRecoveryPointOutput, CreateSnapshotOutput, CreateStorediSCSIVolumeOutput, CreateTapeWithBarcodeOutput, CreateTapesOutput, DeleteBandwidthRateLimitOutput, DeleteChapCredentialsOutput, DeleteFileShareOutput, DeleteGatewayOutput, DeleteSnapshotScheduleOutput, DeleteTapeArchiveOutput, DeleteTapeOutput, DeleteVolumeOutput, DescribeBandwidthRateLimitOutput, DescribeCacheOutput, DescribeCachediSCSIVolumesOutput, DescribeChapCredentialsOutput, DescribeGatewayInformationOutput, DescribeMaintenanceStartTimeOutput, DescribeNFSFileSharesOutput, DescribeSMBFileSharesOutput, DescribeSMBSettingsOutput, DescribeSnapshotScheduleOutput, DescribeStorediSCSIVolumesOutput, DescribeTapeArchivesOutput, DescribeTapeRecoveryPointsOutput, DescribeTapesOutput, DescribeUploadBufferOutput, DescribeVTLDevicesOutput, DescribeWorkingStorageOutput, DetachVolumeOutput, DisableGatewayOutput, JoinDomainOutput, ListFileSharesOutput, ListGatewaysOutput, ListLocalDisksOutput, ListTagsForResourceOutput, ListTapesOutput, ListVolumeInitiatorsOutput, ListVolumeRecoveryPointsOutput, ListVolumesOutput, NotifyWhenUploadedOutput, RefreshCacheOutput, RemoveTagsFromResourceOutput, ResetCacheOutput, RetrieveTapeArchiveOutput, RetrieveTapeRecoveryPointOutput, SetLocalConsolePasswordOutput, SetSMBGuestPasswordOutput, ShutdownGatewayOutput, StartGatewayOutput, UpdateBandwidthRateLimitOutput, UpdateChapCredentialsOutput, UpdateGatewayInformationOutput, UpdateGatewaySoftwareNowOutput, UpdateMaintenanceStartTimeOutput, UpdateNFSFileShareOutput, UpdateSMBFileShareOutput, UpdateSMBSecurityStrategyOutput, UpdateSnapshotScheduleOutput, UpdateVTLDeviceTypeOutput
    , CachediSCSIVolume, ChapInfo, DeviceiSCSIAttributes, Disk, FileShareInfo, GatewayInfo, NFSFileShareDefaults, NFSFileShareInfo, NetworkInterface, SMBFileShareInfo, StorediSCSIVolume, Tag, Tape, TapeArchive, TapeInfo, TapeRecoveryPointInfo, VTLDevice, VolumeInfo, VolumeRecoveryPointInfo, VolumeiSCSIAttributes
    , FileShareType(..), ObjectACL(..), SMBSecurityStrategy(..)
    )

{-| <fullname>AWS Storage Gateway Service</fullname> <p>AWS Storage Gateway is the service that connects an on-premises software appliance with cloud-based storage to provide seamless and secure integration between an organization's on-premises IT environment and the AWS storage infrastructure. The service enables you to securely upload data to the AWS cloud for cost effective backup and rapid disaster recovery.</p> <p>Use the following links to get started using the <i>AWS Storage Gateway Service API Reference</i>:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewayHTTPRequestsHeaders">AWS Storage Gateway Required Request Headers</a>: Describes the required headers that you must send with every POST request to AWS Storage Gateway.</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewaySigningRequests">Signing Requests</a>: AWS Storage Gateway requires that you authenticate every request you send; this topic describes how sign such a request.</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#APIErrorResponses">Error Responses</a>: Provides reference information about AWS Storage Gateway errors.</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_Operations.html">Operations in AWS Storage Gateway</a>: Contains detailed descriptions of all AWS Storage Gateway operations, their request parameters, response elements, possible errors, and examples of requests and responses.</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#sg_region">AWS Storage Gateway Regions and Endpoints:</a> Provides a list of each AWS region and endpoints available for use with AWS Storage Gateway. </p> </li> </ul> <note> <p>AWS Storage Gateway resource IDs are in uppercase. When you use these resource IDs with the Amazon EC2 API, EC2 expects resource IDs in lowercase. You must change your resource ID to lowercase to use it with the EC2 API. For example, in Storage Gateway the ID for a volume might be <code>vol-AA22BB012345DAF670</code>. When you use this ID with the EC2 API, you must change it to <code>vol-aa22bb012345daf670</code>. Otherwise, the EC2 API might not behave as expected.</p> </note> <important> <p>IDs for Storage Gateway volumes and Amazon EBS snapshots created from gateway volumes are changing to a longer format. Starting in December 2016, all new volumes and snapshots will be created with a 17-character string. Starting in April 2016, you will be able to use these longer IDs so you can test your systems with the new format. For more information, see <a href="https://aws.amazon.com/ec2/faqs/#longer-ids">Longer EC2 and EBS Resource IDs</a>. </p> <p> For example, a volume Amazon Resource Name (ARN) with the longer volume ID format looks like the following:</p> <p> <code>arn:aws:storagegateway:us-west-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABBCCDDEEFFG</code>.</p> <p>A snapshot ID with the longer ID format looks like the following: <code>snap-78e226633445566ee</code>.</p> <p>For more information, see <a href="https://forums.aws.amazon.com/ann.jspa?annID=3557">Announcement: Heads-up – Longer AWS Storage Gateway volume and snapshot IDs coming in 2016</a>.</p> </important>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [activateGateway](#activateGateway)
  - [ActivateGatewayOptions](#ActivateGatewayOptions)
  - [addCache](#addCache)
  - [addTagsToResource](#addTagsToResource)
  - [addUploadBuffer](#addUploadBuffer)
  - [addWorkingStorage](#addWorkingStorage)
  - [assignTapePool](#assignTapePool)
  - [attachVolume](#attachVolume)
  - [AttachVolumeOptions](#AttachVolumeOptions)
  - [cancelArchival](#cancelArchival)
  - [cancelRetrieval](#cancelRetrieval)
  - [createCachediSCSIVolume](#createCachediSCSIVolume)
  - [CreateCachediSCSIVolumeOptions](#CreateCachediSCSIVolumeOptions)
  - [createNFSFileShare](#createNFSFileShare)
  - [CreateNFSFileShareOptions](#CreateNFSFileShareOptions)
  - [createSMBFileShare](#createSMBFileShare)
  - [CreateSMBFileShareOptions](#CreateSMBFileShareOptions)
  - [createSnapshot](#createSnapshot)
  - [CreateSnapshotOptions](#CreateSnapshotOptions)
  - [createSnapshotFromVolumeRecoveryPoint](#createSnapshotFromVolumeRecoveryPoint)
  - [createStorediSCSIVolume](#createStorediSCSIVolume)
  - [CreateStorediSCSIVolumeOptions](#CreateStorediSCSIVolumeOptions)
  - [createTapeWithBarcode](#createTapeWithBarcode)
  - [CreateTapeWithBarcodeOptions](#CreateTapeWithBarcodeOptions)
  - [createTapes](#createTapes)
  - [CreateTapesOptions](#CreateTapesOptions)
  - [deleteBandwidthRateLimit](#deleteBandwidthRateLimit)
  - [deleteChapCredentials](#deleteChapCredentials)
  - [deleteFileShare](#deleteFileShare)
  - [DeleteFileShareOptions](#DeleteFileShareOptions)
  - [deleteGateway](#deleteGateway)
  - [deleteSnapshotSchedule](#deleteSnapshotSchedule)
  - [deleteTape](#deleteTape)
  - [deleteTapeArchive](#deleteTapeArchive)
  - [deleteVolume](#deleteVolume)
  - [describeBandwidthRateLimit](#describeBandwidthRateLimit)
  - [describeCache](#describeCache)
  - [describeCachediSCSIVolumes](#describeCachediSCSIVolumes)
  - [describeChapCredentials](#describeChapCredentials)
  - [describeGatewayInformation](#describeGatewayInformation)
  - [describeMaintenanceStartTime](#describeMaintenanceStartTime)
  - [describeNFSFileShares](#describeNFSFileShares)
  - [describeSMBFileShares](#describeSMBFileShares)
  - [describeSMBSettings](#describeSMBSettings)
  - [describeSnapshotSchedule](#describeSnapshotSchedule)
  - [describeStorediSCSIVolumes](#describeStorediSCSIVolumes)
  - [describeTapeArchives](#describeTapeArchives)
  - [DescribeTapeArchivesOptions](#DescribeTapeArchivesOptions)
  - [describeTapeRecoveryPoints](#describeTapeRecoveryPoints)
  - [DescribeTapeRecoveryPointsOptions](#DescribeTapeRecoveryPointsOptions)
  - [describeTapes](#describeTapes)
  - [DescribeTapesOptions](#DescribeTapesOptions)
  - [describeUploadBuffer](#describeUploadBuffer)
  - [describeVTLDevices](#describeVTLDevices)
  - [DescribeVTLDevicesOptions](#DescribeVTLDevicesOptions)
  - [describeWorkingStorage](#describeWorkingStorage)
  - [detachVolume](#detachVolume)
  - [DetachVolumeOptions](#DetachVolumeOptions)
  - [disableGateway](#disableGateway)
  - [joinDomain](#joinDomain)
  - [JoinDomainOptions](#JoinDomainOptions)
  - [listFileShares](#listFileShares)
  - [ListFileSharesOptions](#ListFileSharesOptions)
  - [listGateways](#listGateways)
  - [ListGatewaysOptions](#ListGatewaysOptions)
  - [listLocalDisks](#listLocalDisks)
  - [listTagsForResource](#listTagsForResource)
  - [ListTagsForResourceOptions](#ListTagsForResourceOptions)
  - [listTapes](#listTapes)
  - [ListTapesOptions](#ListTapesOptions)
  - [listVolumeInitiators](#listVolumeInitiators)
  - [listVolumeRecoveryPoints](#listVolumeRecoveryPoints)
  - [listVolumes](#listVolumes)
  - [ListVolumesOptions](#ListVolumesOptions)
  - [notifyWhenUploaded](#notifyWhenUploaded)
  - [refreshCache](#refreshCache)
  - [RefreshCacheOptions](#RefreshCacheOptions)
  - [removeTagsFromResource](#removeTagsFromResource)
  - [resetCache](#resetCache)
  - [retrieveTapeArchive](#retrieveTapeArchive)
  - [retrieveTapeRecoveryPoint](#retrieveTapeRecoveryPoint)
  - [setLocalConsolePassword](#setLocalConsolePassword)
  - [setSMBGuestPassword](#setSMBGuestPassword)
  - [shutdownGateway](#shutdownGateway)
  - [startGateway](#startGateway)
  - [updateBandwidthRateLimit](#updateBandwidthRateLimit)
  - [UpdateBandwidthRateLimitOptions](#UpdateBandwidthRateLimitOptions)
  - [updateChapCredentials](#updateChapCredentials)
  - [UpdateChapCredentialsOptions](#UpdateChapCredentialsOptions)
  - [updateGatewayInformation](#updateGatewayInformation)
  - [UpdateGatewayInformationOptions](#UpdateGatewayInformationOptions)
  - [updateGatewaySoftwareNow](#updateGatewaySoftwareNow)
  - [updateMaintenanceStartTime](#updateMaintenanceStartTime)
  - [UpdateMaintenanceStartTimeOptions](#UpdateMaintenanceStartTimeOptions)
  - [updateNFSFileShare](#updateNFSFileShare)
  - [UpdateNFSFileShareOptions](#UpdateNFSFileShareOptions)
  - [updateSMBFileShare](#updateSMBFileShare)
  - [UpdateSMBFileShareOptions](#UpdateSMBFileShareOptions)
  - [updateSMBSecurityStrategy](#updateSMBSecurityStrategy)
  - [updateSnapshotSchedule](#updateSnapshotSchedule)
  - [UpdateSnapshotScheduleOptions](#UpdateSnapshotScheduleOptions)
  - [updateVTLDeviceType](#updateVTLDeviceType)

@docs activateGateway, ActivateGatewayOptions, addCache, addTagsToResource, addUploadBuffer, addWorkingStorage, assignTapePool, attachVolume, AttachVolumeOptions, cancelArchival, cancelRetrieval, createCachediSCSIVolume, CreateCachediSCSIVolumeOptions, createNFSFileShare, CreateNFSFileShareOptions, createSMBFileShare, CreateSMBFileShareOptions, createSnapshot, CreateSnapshotOptions, createSnapshotFromVolumeRecoveryPoint, createStorediSCSIVolume, CreateStorediSCSIVolumeOptions, createTapeWithBarcode, CreateTapeWithBarcodeOptions, createTapes, CreateTapesOptions, deleteBandwidthRateLimit, deleteChapCredentials, deleteFileShare, DeleteFileShareOptions, deleteGateway, deleteSnapshotSchedule, deleteTape, deleteTapeArchive, deleteVolume, describeBandwidthRateLimit, describeCache, describeCachediSCSIVolumes, describeChapCredentials, describeGatewayInformation, describeMaintenanceStartTime, describeNFSFileShares, describeSMBFileShares, describeSMBSettings, describeSnapshotSchedule, describeStorediSCSIVolumes, describeTapeArchives, DescribeTapeArchivesOptions, describeTapeRecoveryPoints, DescribeTapeRecoveryPointsOptions, describeTapes, DescribeTapesOptions, describeUploadBuffer, describeVTLDevices, DescribeVTLDevicesOptions, describeWorkingStorage, detachVolume, DetachVolumeOptions, disableGateway, joinDomain, JoinDomainOptions, listFileShares, ListFileSharesOptions, listGateways, ListGatewaysOptions, listLocalDisks, listTagsForResource, ListTagsForResourceOptions, listTapes, ListTapesOptions, listVolumeInitiators, listVolumeRecoveryPoints, listVolumes, ListVolumesOptions, notifyWhenUploaded, refreshCache, RefreshCacheOptions, removeTagsFromResource, resetCache, retrieveTapeArchive, retrieveTapeRecoveryPoint, setLocalConsolePassword, setSMBGuestPassword, shutdownGateway, startGateway, updateBandwidthRateLimit, UpdateBandwidthRateLimitOptions, updateChapCredentials, UpdateChapCredentialsOptions, updateGatewayInformation, UpdateGatewayInformationOptions, updateGatewaySoftwareNow, updateMaintenanceStartTime, UpdateMaintenanceStartTimeOptions, updateNFSFileShare, UpdateNFSFileShareOptions, updateSMBFileShare, UpdateSMBFileShareOptions, updateSMBSecurityStrategy, updateSnapshotSchedule, UpdateSnapshotScheduleOptions, updateVTLDeviceType


## Responses

  - [ActivateGatewayOutput](#ActivateGatewayOutput)
  - [AddCacheOutput](#AddCacheOutput)
  - [AddTagsToResourceOutput](#AddTagsToResourceOutput)
  - [AddUploadBufferOutput](#AddUploadBufferOutput)
  - [AddWorkingStorageOutput](#AddWorkingStorageOutput)
  - [AssignTapePoolOutput](#AssignTapePoolOutput)
  - [AttachVolumeOutput](#AttachVolumeOutput)
  - [CancelArchivalOutput](#CancelArchivalOutput)
  - [CancelRetrievalOutput](#CancelRetrievalOutput)
  - [CreateCachediSCSIVolumeOutput](#CreateCachediSCSIVolumeOutput)
  - [CreateNFSFileShareOutput](#CreateNFSFileShareOutput)
  - [CreateSMBFileShareOutput](#CreateSMBFileShareOutput)
  - [CreateSnapshotFromVolumeRecoveryPointOutput](#CreateSnapshotFromVolumeRecoveryPointOutput)
  - [CreateSnapshotOutput](#CreateSnapshotOutput)
  - [CreateStorediSCSIVolumeOutput](#CreateStorediSCSIVolumeOutput)
  - [CreateTapeWithBarcodeOutput](#CreateTapeWithBarcodeOutput)
  - [CreateTapesOutput](#CreateTapesOutput)
  - [DeleteBandwidthRateLimitOutput](#DeleteBandwidthRateLimitOutput)
  - [DeleteChapCredentialsOutput](#DeleteChapCredentialsOutput)
  - [DeleteFileShareOutput](#DeleteFileShareOutput)
  - [DeleteGatewayOutput](#DeleteGatewayOutput)
  - [DeleteSnapshotScheduleOutput](#DeleteSnapshotScheduleOutput)
  - [DeleteTapeArchiveOutput](#DeleteTapeArchiveOutput)
  - [DeleteTapeOutput](#DeleteTapeOutput)
  - [DeleteVolumeOutput](#DeleteVolumeOutput)
  - [DescribeBandwidthRateLimitOutput](#DescribeBandwidthRateLimitOutput)
  - [DescribeCacheOutput](#DescribeCacheOutput)
  - [DescribeCachediSCSIVolumesOutput](#DescribeCachediSCSIVolumesOutput)
  - [DescribeChapCredentialsOutput](#DescribeChapCredentialsOutput)
  - [DescribeGatewayInformationOutput](#DescribeGatewayInformationOutput)
  - [DescribeMaintenanceStartTimeOutput](#DescribeMaintenanceStartTimeOutput)
  - [DescribeNFSFileSharesOutput](#DescribeNFSFileSharesOutput)
  - [DescribeSMBFileSharesOutput](#DescribeSMBFileSharesOutput)
  - [DescribeSMBSettingsOutput](#DescribeSMBSettingsOutput)
  - [DescribeSnapshotScheduleOutput](#DescribeSnapshotScheduleOutput)
  - [DescribeStorediSCSIVolumesOutput](#DescribeStorediSCSIVolumesOutput)
  - [DescribeTapeArchivesOutput](#DescribeTapeArchivesOutput)
  - [DescribeTapeRecoveryPointsOutput](#DescribeTapeRecoveryPointsOutput)
  - [DescribeTapesOutput](#DescribeTapesOutput)
  - [DescribeUploadBufferOutput](#DescribeUploadBufferOutput)
  - [DescribeVTLDevicesOutput](#DescribeVTLDevicesOutput)
  - [DescribeWorkingStorageOutput](#DescribeWorkingStorageOutput)
  - [DetachVolumeOutput](#DetachVolumeOutput)
  - [DisableGatewayOutput](#DisableGatewayOutput)
  - [JoinDomainOutput](#JoinDomainOutput)
  - [ListFileSharesOutput](#ListFileSharesOutput)
  - [ListGatewaysOutput](#ListGatewaysOutput)
  - [ListLocalDisksOutput](#ListLocalDisksOutput)
  - [ListTagsForResourceOutput](#ListTagsForResourceOutput)
  - [ListTapesOutput](#ListTapesOutput)
  - [ListVolumeInitiatorsOutput](#ListVolumeInitiatorsOutput)
  - [ListVolumeRecoveryPointsOutput](#ListVolumeRecoveryPointsOutput)
  - [ListVolumesOutput](#ListVolumesOutput)
  - [NotifyWhenUploadedOutput](#NotifyWhenUploadedOutput)
  - [RefreshCacheOutput](#RefreshCacheOutput)
  - [RemoveTagsFromResourceOutput](#RemoveTagsFromResourceOutput)
  - [ResetCacheOutput](#ResetCacheOutput)
  - [RetrieveTapeArchiveOutput](#RetrieveTapeArchiveOutput)
  - [RetrieveTapeRecoveryPointOutput](#RetrieveTapeRecoveryPointOutput)
  - [SetLocalConsolePasswordOutput](#SetLocalConsolePasswordOutput)
  - [SetSMBGuestPasswordOutput](#SetSMBGuestPasswordOutput)
  - [ShutdownGatewayOutput](#ShutdownGatewayOutput)
  - [StartGatewayOutput](#StartGatewayOutput)
  - [UpdateBandwidthRateLimitOutput](#UpdateBandwidthRateLimitOutput)
  - [UpdateChapCredentialsOutput](#UpdateChapCredentialsOutput)
  - [UpdateGatewayInformationOutput](#UpdateGatewayInformationOutput)
  - [UpdateGatewaySoftwareNowOutput](#UpdateGatewaySoftwareNowOutput)
  - [UpdateMaintenanceStartTimeOutput](#UpdateMaintenanceStartTimeOutput)
  - [UpdateNFSFileShareOutput](#UpdateNFSFileShareOutput)
  - [UpdateSMBFileShareOutput](#UpdateSMBFileShareOutput)
  - [UpdateSMBSecurityStrategyOutput](#UpdateSMBSecurityStrategyOutput)
  - [UpdateSnapshotScheduleOutput](#UpdateSnapshotScheduleOutput)
  - [UpdateVTLDeviceTypeOutput](#UpdateVTLDeviceTypeOutput)

@docs ActivateGatewayOutput, AddCacheOutput, AddTagsToResourceOutput, AddUploadBufferOutput, AddWorkingStorageOutput, AssignTapePoolOutput, AttachVolumeOutput, CancelArchivalOutput, CancelRetrievalOutput, CreateCachediSCSIVolumeOutput, CreateNFSFileShareOutput, CreateSMBFileShareOutput, CreateSnapshotFromVolumeRecoveryPointOutput, CreateSnapshotOutput, CreateStorediSCSIVolumeOutput, CreateTapeWithBarcodeOutput, CreateTapesOutput, DeleteBandwidthRateLimitOutput, DeleteChapCredentialsOutput, DeleteFileShareOutput, DeleteGatewayOutput, DeleteSnapshotScheduleOutput, DeleteTapeArchiveOutput, DeleteTapeOutput, DeleteVolumeOutput, DescribeBandwidthRateLimitOutput, DescribeCacheOutput, DescribeCachediSCSIVolumesOutput, DescribeChapCredentialsOutput, DescribeGatewayInformationOutput, DescribeMaintenanceStartTimeOutput, DescribeNFSFileSharesOutput, DescribeSMBFileSharesOutput, DescribeSMBSettingsOutput, DescribeSnapshotScheduleOutput, DescribeStorediSCSIVolumesOutput, DescribeTapeArchivesOutput, DescribeTapeRecoveryPointsOutput, DescribeTapesOutput, DescribeUploadBufferOutput, DescribeVTLDevicesOutput, DescribeWorkingStorageOutput, DetachVolumeOutput, DisableGatewayOutput, JoinDomainOutput, ListFileSharesOutput, ListGatewaysOutput, ListLocalDisksOutput, ListTagsForResourceOutput, ListTapesOutput, ListVolumeInitiatorsOutput, ListVolumeRecoveryPointsOutput, ListVolumesOutput, NotifyWhenUploadedOutput, RefreshCacheOutput, RemoveTagsFromResourceOutput, ResetCacheOutput, RetrieveTapeArchiveOutput, RetrieveTapeRecoveryPointOutput, SetLocalConsolePasswordOutput, SetSMBGuestPasswordOutput, ShutdownGatewayOutput, StartGatewayOutput, UpdateBandwidthRateLimitOutput, UpdateChapCredentialsOutput, UpdateGatewayInformationOutput, UpdateGatewaySoftwareNowOutput, UpdateMaintenanceStartTimeOutput, UpdateNFSFileShareOutput, UpdateSMBFileShareOutput, UpdateSMBSecurityStrategyOutput, UpdateSnapshotScheduleOutput, UpdateVTLDeviceTypeOutput


## Records

  - [CachediSCSIVolume](#CachediSCSIVolume)
  - [ChapInfo](#ChapInfo)
  - [DeviceiSCSIAttributes](#DeviceiSCSIAttributes)
  - [Disk](#Disk)
  - [FileShareInfo](#FileShareInfo)
  - [GatewayInfo](#GatewayInfo)
  - [NFSFileShareDefaults](#NFSFileShareDefaults)
  - [NFSFileShareInfo](#NFSFileShareInfo)
  - [NetworkInterface](#NetworkInterface)
  - [SMBFileShareInfo](#SMBFileShareInfo)
  - [StorediSCSIVolume](#StorediSCSIVolume)
  - [Tag](#Tag)
  - [Tape](#Tape)
  - [TapeArchive](#TapeArchive)
  - [TapeInfo](#TapeInfo)
  - [TapeRecoveryPointInfo](#TapeRecoveryPointInfo)
  - [VTLDevice](#VTLDevice)
  - [VolumeInfo](#VolumeInfo)
  - [VolumeRecoveryPointInfo](#VolumeRecoveryPointInfo)
  - [VolumeiSCSIAttributes](#VolumeiSCSIAttributes)

@docs CachediSCSIVolume, ChapInfo, DeviceiSCSIAttributes, Disk, FileShareInfo, GatewayInfo, NFSFileShareDefaults, NFSFileShareInfo, NetworkInterface, SMBFileShareInfo, StorediSCSIVolume, Tag, Tape, TapeArchive, TapeInfo, TapeRecoveryPointInfo, VTLDevice, VolumeInfo, VolumeRecoveryPointInfo, VolumeiSCSIAttributes


## Unions

  - [FileShareType](#FileShareType)
  - [ObjectACL](#ObjectACL)
  - [SMBSecurityStrategy](#SMBSecurityStrategy)

@docs FileShareType, ObjectACL, SMBSecurityStrategy

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
        "storagegateway"
        "2013-06-30"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "StorageGateway_20130630")



-- OPERATIONS


{-|

<p>Activates the gateway you previously deployed on your host. In the activation process, you specify information such as the region you want to use for storing snapshots or tapes, the time zone for scheduled snapshots the gateway snapshot schedule window, an activation key, and a name for your gateway. The activation process also associates your gateway with your account; for more information, see <a>UpdateGatewayInformation</a>.</p> <note> <p>You must turn on the gateway VM before you can activate your gateway.</p> </note>

**Required Parameters**

  - `activationKey` **:** `String`
  - `gatewayName` **:** `String`
  - `gatewayTimezone` **:** `String`
  - `gatewayRegion` **:** `String`

-}
activateGateway :
    String
    -> String
    -> String
    -> String
    -> (ActivateGatewayOptions -> ActivateGatewayOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ActivateGatewayOutput)
activateGateway activationKey gatewayName gatewayTimezone gatewayRegion setOptions =
    let
        requestInput =
            ActivateGatewayInput
                activationKey
                gatewayName
                gatewayTimezone
                gatewayRegion
                options.gatewayType
                options.tapeDriveType
                options.mediumChangerType
                options.tags

        options =
            setOptions (ActivateGatewayOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> activateGatewayInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ActivateGateway"
            (AWS.Core.Decode.ResultDecoder "ActivateGatewayOutput" activateGatewayOutputDecoder)
        )


{-| Options for a activateGateway request
-}
type alias ActivateGatewayOptions =
    { gatewayType : Maybe String
    , tapeDriveType : Maybe String
    , mediumChangerType : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Configures one or more gateway local disks as cache for a gateway. This operation is only supported in the cached volume, tape and file gateway type (see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html">Storage Gateway Concepts</a>).</p> <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add cache, and one or more disk IDs that you want to configure as cache.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `diskIds` **:** `(List String)`

-}
addCache :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddCacheOutput)
addCache gatewayARN diskIds =
    let
        requestInput =
            AddCacheInput
                gatewayARN
                diskIds
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> addCacheInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AddCache"
            (AWS.Core.Decode.ResultDecoder "AddCacheOutput" addCacheOutputDecoder)
        )


{-|

<p>Adds one or more tags to the specified resource. You use tags to add metadata to resources, which you can use to categorize these resources. For example, you can categorize resources by purpose, owner, environment, or team. Each tag consists of a key and a value, which you define. You can add tags to the following AWS Storage Gateway resources:</p> <ul> <li> <p>Storage gateways of all types</p> </li> <li> <p>Storage volumes</p> </li> <li> <p>Virtual tapes</p> </li> <li> <p>NFS and SMB file shares</p> </li> </ul> <p>You can create a maximum of 50 tags for each resource. Virtual tapes and storage volumes that are recovered to a new gateway maintain their tags.</p>

**Required Parameters**

  - `resourceARN` **:** `String`
  - `tags` **:** `(List Tag)`

-}
addTagsToResource :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddTagsToResourceOutput)
addTagsToResource resourceARN tags =
    let
        requestInput =
            AddTagsToResourceInput
                resourceARN
                tags
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> addTagsToResourceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AddTagsToResource"
            (AWS.Core.Decode.ResultDecoder "AddTagsToResourceOutput" addTagsToResourceOutputDecoder)
        )


{-|

<p>Configures one or more gateway local disks as upload buffer for a specified gateway. This operation is supported for the stored volume, cached volume and tape gateway types.</p> <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add upload buffer, and one or more disk IDs that you want to configure as upload buffer.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `diskIds` **:** `(List String)`

-}
addUploadBuffer :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddUploadBufferOutput)
addUploadBuffer gatewayARN diskIds =
    let
        requestInput =
            AddUploadBufferInput
                gatewayARN
                diskIds
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> addUploadBufferInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AddUploadBuffer"
            (AWS.Core.Decode.ResultDecoder "AddUploadBufferOutput" addUploadBufferOutputDecoder)
        )


{-|

<p>Configures one or more gateway local disks as working storage for a gateway. This operation is only supported in the stored volume gateway type. This operation is deprecated in cached volume API version 20120630. Use <a>AddUploadBuffer</a> instead.</p> <note> <p>Working storage is also referred to as upload buffer. You can also use the <a>AddUploadBuffer</a> operation to add upload buffer to a stored volume gateway.</p> </note> <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add working storage, and one or more disk IDs that you want to configure as working storage.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `diskIds` **:** `(List String)`

-}
addWorkingStorage :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddWorkingStorageOutput)
addWorkingStorage gatewayARN diskIds =
    let
        requestInput =
            AddWorkingStorageInput
                gatewayARN
                diskIds
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> addWorkingStorageInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AddWorkingStorage"
            (AWS.Core.Decode.ResultDecoder "AddWorkingStorageOutput" addWorkingStorageOutputDecoder)
        )


{-|

<p>Assigns a tape to a tape pool for archiving. The tape assigned to a pool is archived in the S3 storage class that is associated with the pool. When you use your backup application to eject the tape, the tape is archived directly into the S3 storage class (Glacier or Deep Archive) that corresponds to the pool.</p> <p>Valid values: "GLACIER", "DEEP_ARCHIVE"</p>

**Required Parameters**

  - `tapeARN` **:** `String`
  - `poolId` **:** `String`

-}
assignTapePool :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssignTapePoolOutput)
assignTapePool tapeARN poolId =
    let
        requestInput =
            AssignTapePoolInput
                tapeARN
                poolId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> assignTapePoolInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AssignTapePool"
            (AWS.Core.Decode.ResultDecoder "AssignTapePoolOutput" assignTapePoolOutputDecoder)
        )


{-|

<p>Connects a volume to an iSCSI connection and then attaches the volume to the specified gateway. Detaching and attaching a volume enables you to recover your data from one gateway to a different gateway without creating a snapshot. It also makes it easier to move your volumes from an on-premises gateway to a gateway hosted on an Amazon EC2 instance.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `volumeARN` **:** `String`
  - `networkInterfaceId` **:** `String`

-}
attachVolume :
    String
    -> String
    -> String
    -> (AttachVolumeOptions -> AttachVolumeOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AttachVolumeOutput)
attachVolume gatewayARN volumeARN networkInterfaceId setOptions =
    let
        requestInput =
            AttachVolumeInput
                gatewayARN
                options.targetName
                volumeARN
                networkInterfaceId
                options.diskId

        options =
            setOptions (AttachVolumeOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> attachVolumeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "AttachVolume"
            (AWS.Core.Decode.ResultDecoder "AttachVolumeOutput" attachVolumeOutputDecoder)
        )


{-| Options for a attachVolume request
-}
type alias AttachVolumeOptions =
    { targetName : Maybe String
    , diskId : Maybe String
    }


{-|

<p>Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving process is initiated. This operation is only supported in the tape gateway type.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `tapeARN` **:** `String`

-}
cancelArchival :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CancelArchivalOutput)
cancelArchival gatewayARN tapeARN =
    let
        requestInput =
            CancelArchivalInput
                gatewayARN
                tapeARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> cancelArchivalInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CancelArchival"
            (AWS.Core.Decode.ResultDecoder "CancelArchivalOutput" cancelArchivalOutputDecoder)
        )


{-|

<p>Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a gateway after the retrieval process is initiated. The virtual tape is returned to the VTS. This operation is only supported in the tape gateway type.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `tapeARN` **:** `String`

-}
cancelRetrieval :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CancelRetrievalOutput)
cancelRetrieval gatewayARN tapeARN =
    let
        requestInput =
            CancelRetrievalInput
                gatewayARN
                tapeARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> cancelRetrievalInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CancelRetrieval"
            (AWS.Core.Decode.ResultDecoder "CancelRetrievalOutput" cancelRetrievalOutputDecoder)
        )


{-|

<p>Creates a cached volume on a specified cached volume gateway. This operation is only supported in the cached volume gateway type.</p> <note> <p>Cache storage must be allocated to the gateway before you can create a cached volume. Use the <a>AddCache</a> operation to add cache storage to a gateway. </p> </note> <p>In the request, you must specify the gateway, size of the volume in bytes, the iSCSI target name, an IP address on which to expose the target, and a unique client token. In response, the gateway creates the volume and returns information about it. This information includes the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that initiators can use to connect to the volume target.</p> <p>Optionally, you can provide the ARN for an existing volume as the <code>SourceVolumeARN</code> for this cached volume, which creates an exact copy of the existing volume’s latest recovery point. The <code>VolumeSizeInBytes</code> value must be equal to or larger than the size of the copied volume, in bytes.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `volumeSizeInBytes` **:** `Int`
  - `targetName` **:** `String`
  - `networkInterfaceId` **:** `String`
  - `clientToken` **:** `String`

-}
createCachediSCSIVolume :
    String
    -> Int
    -> String
    -> String
    -> String
    -> (CreateCachediSCSIVolumeOptions -> CreateCachediSCSIVolumeOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateCachediSCSIVolumeOutput)
createCachediSCSIVolume gatewayARN volumeSizeInBytes targetName networkInterfaceId clientToken setOptions =
    let
        requestInput =
            CreateCachediSCSIVolumeInput
                gatewayARN
                volumeSizeInBytes
                options.snapshotId
                targetName
                options.sourceVolumeARN
                networkInterfaceId
                clientToken
                options.kMSEncrypted
                options.kMSKey
                options.tags

        options =
            setOptions (CreateCachediSCSIVolumeOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createCachediSCSIVolumeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateCachediSCSIVolume"
            (AWS.Core.Decode.ResultDecoder "CreateCachediSCSIVolumeOutput" createCachediSCSIVolumeOutputDecoder)
        )


{-| Options for a createCachediSCSIVolume request
-}
type alias CreateCachediSCSIVolumeOptions =
    { snapshotId : Maybe String
    , sourceVolumeARN : Maybe String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates a Network File System (NFS) file share on an existing file gateway. In Storage Gateway, a file share is a file system mount point backed by Amazon S3 cloud storage. Storage Gateway exposes file shares using a NFS interface. This operation is only supported for file gateways.</p> <important> <p>File gateway requires AWS Security Token Service (AWS STS) to be activated to enable you create a file share. Make sure AWS STS is activated in the region you are creating your file gateway in. If AWS STS is not activated in the region, activate it. For information about how to activate AWS STS, see Activating and Deactivating AWS STS in an AWS Region in the AWS Identity and Access Management User Guide. </p> <p>File gateway does not support creating hard or symbolic links on a file share.</p> </important>

**Required Parameters**

  - `clientToken` **:** `String`
  - `gatewayARN` **:** `String`
  - `role` **:** `String`
  - `locationARN` **:** `String`

-}
createNFSFileShare :
    String
    -> String
    -> String
    -> String
    -> (CreateNFSFileShareOptions -> CreateNFSFileShareOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateNFSFileShareOutput)
createNFSFileShare clientToken gatewayARN role locationARN setOptions =
    let
        requestInput =
            CreateNFSFileShareInput
                clientToken
                options.nFSFileShareDefaults
                gatewayARN
                options.kMSEncrypted
                options.kMSKey
                role
                locationARN
                options.defaultStorageClass
                options.objectACL
                options.clientList
                options.squash
                options.readOnly
                options.guessMIMETypeEnabled
                options.requesterPays
                options.tags

        options =
            setOptions (CreateNFSFileShareOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createNFSFileShareInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateNFSFileShare"
            (AWS.Core.Decode.ResultDecoder "CreateNFSFileShareOutput" createNFSFileShareOutputDecoder)
        )


{-| Options for a createNFSFileShare request
-}
type alias CreateNFSFileShareOptions =
    { nFSFileShareDefaults : Maybe NFSFileShareDefaults
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , defaultStorageClass : Maybe String
    , objectACL : Maybe ObjectACL
    , clientList : Maybe (List String)
    , squash : Maybe String
    , readOnly : Maybe Bool
    , guessMIMETypeEnabled : Maybe Bool
    , requesterPays : Maybe Bool
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates a Server Message Block (SMB) file share on an existing file gateway. In Storage Gateway, a file share is a file system mount point backed by Amazon S3 cloud storage. Storage Gateway expose file shares using a SMB interface. This operation is only supported for file gateways.</p> <important> <p>File gateways require AWS Security Token Service (AWS STS) to be activated to enable you to create a file share. Make sure that AWS STS is activated in the AWS Region you are creating your file gateway in. If AWS STS is not activated in this AWS Region, activate it. For information about how to activate AWS STS, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and Deactivating AWS STS in an AWS Region</a> in the <i>AWS Identity and Access Management User Guide.</i> </p> <p>File gateways don't support creating hard or symbolic links on a file share.</p> </important>

**Required Parameters**

  - `clientToken` **:** `String`
  - `gatewayARN` **:** `String`
  - `role` **:** `String`
  - `locationARN` **:** `String`

-}
createSMBFileShare :
    String
    -> String
    -> String
    -> String
    -> (CreateSMBFileShareOptions -> CreateSMBFileShareOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSMBFileShareOutput)
createSMBFileShare clientToken gatewayARN role locationARN setOptions =
    let
        requestInput =
            CreateSMBFileShareInput
                clientToken
                gatewayARN
                options.kMSEncrypted
                options.kMSKey
                role
                locationARN
                options.defaultStorageClass
                options.objectACL
                options.readOnly
                options.guessMIMETypeEnabled
                options.requesterPays
                options.sMBACLEnabled
                options.adminUserList
                options.validUserList
                options.invalidUserList
                options.authentication
                options.tags

        options =
            setOptions (CreateSMBFileShareOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createSMBFileShareInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateSMBFileShare"
            (AWS.Core.Decode.ResultDecoder "CreateSMBFileShareOutput" createSMBFileShareOutputDecoder)
        )


{-| Options for a createSMBFileShare request
-}
type alias CreateSMBFileShareOptions =
    { kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , defaultStorageClass : Maybe String
    , objectACL : Maybe ObjectACL
    , readOnly : Maybe Bool
    , guessMIMETypeEnabled : Maybe Bool
    , requesterPays : Maybe Bool
    , sMBACLEnabled : Maybe Bool
    , adminUserList : Maybe (List String)
    , validUserList : Maybe (List String)
    , invalidUserList : Maybe (List String)
    , authentication : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Initiates a snapshot of a volume.</p> <p>AWS Storage Gateway provides the ability to back up point-in-time snapshots of your data to Amazon Simple Storage (S3) for durable off-site recovery, as well as import the data to an Amazon Elastic Block Store (EBS) volume in Amazon Elastic Compute Cloud (EC2). You can take snapshots of your gateway volume on a scheduled or ad hoc basis. This API enables you to take ad-hoc snapshot. For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#SchedulingSnapshot">Editing a Snapshot Schedule</a>.</p> <p>In the CreateSnapshot request you identify the volume by providing its Amazon Resource Name (ARN). You must also provide description for the snapshot. When AWS Storage Gateway takes the snapshot of specified volume, the snapshot and description appears in the AWS Storage Gateway Console. In response, AWS Storage Gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot. This operation is only supported in stored and cached volume gateway type.</p> <note> <p>To list or delete a snapshot, you must use the Amazon EC2 API. For more information, see DescribeSnapshots or DeleteSnapshot in the <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Operations.html">EC2 API reference</a>.</p> </note> <important> <p>Volume and snapshot IDs are changing to a longer length ID format. For more information, see the important note on the <a href="https://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html">Welcome</a> page.</p> </important>

**Required Parameters**

  - `volumeARN` **:** `String`
  - `snapshotDescription` **:** `String`

-}
createSnapshot :
    String
    -> String
    -> (CreateSnapshotOptions -> CreateSnapshotOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSnapshotOutput)
createSnapshot volumeARN snapshotDescription setOptions =
    let
        requestInput =
            CreateSnapshotInput
                volumeARN
                snapshotDescription
                options.tags

        options =
            setOptions (CreateSnapshotOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createSnapshotInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateSnapshot"
            (AWS.Core.Decode.ResultDecoder "CreateSnapshotOutput" createSnapshotOutputDecoder)
        )


{-| Options for a createSnapshot request
-}
type alias CreateSnapshotOptions =
    { tags : Maybe (List Tag)
    }


{-|

<p>Initiates a snapshot of a gateway from a volume recovery point. This operation is only supported in the cached volume gateway type.</p> <p>A volume recovery point is a point in time at which all data of the volume is consistent and from which you can create a snapshot. To get a list of volume recovery point for cached volume gateway, use <a>ListVolumeRecoveryPoints</a>.</p> <p>In the <code>CreateSnapshotFromVolumeRecoveryPoint</code> request, you identify the volume by providing its Amazon Resource Name (ARN). You must also provide a description for the snapshot. When the gateway takes a snapshot of the specified volume, the snapshot and its description appear in the AWS Storage Gateway console. In response, the gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot.</p> <note> <p>To list or delete a snapshot, you must use the Amazon EC2 API. For more information, in <i>Amazon Elastic Compute Cloud API Reference</i>.</p> </note>

**Required Parameters**

  - `volumeARN` **:** `String`
  - `snapshotDescription` **:** `String`

-}
createSnapshotFromVolumeRecoveryPoint :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSnapshotFromVolumeRecoveryPointOutput)
createSnapshotFromVolumeRecoveryPoint volumeARN snapshotDescription =
    let
        requestInput =
            CreateSnapshotFromVolumeRecoveryPointInput
                volumeARN
                snapshotDescription
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createSnapshotFromVolumeRecoveryPointInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateSnapshotFromVolumeRecoveryPoint"
            (AWS.Core.Decode.ResultDecoder "CreateSnapshotFromVolumeRecoveryPointOutput" createSnapshotFromVolumeRecoveryPointOutputDecoder)
        )


{-|

<p>Creates a volume on a specified gateway. This operation is only supported in the stored volume gateway type.</p> <p>The size of the volume to create is inferred from the disk size. You can choose to preserve existing data on the disk, create volume from an existing snapshot, or create an empty volume. If you choose to create an empty gateway volume, then any existing data on the disk is erased.</p> <p>In the request you must specify the gateway and the disk information on which you are creating the volume. In response, the gateway creates the volume and returns volume information such as the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that initiators can use to connect to the volume target.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `diskId` **:** `String`
  - `preserveExistingData` **:** `Bool`
  - `targetName` **:** `String`
  - `networkInterfaceId` **:** `String`

-}
createStorediSCSIVolume :
    String
    -> String
    -> Bool
    -> String
    -> String
    -> (CreateStorediSCSIVolumeOptions -> CreateStorediSCSIVolumeOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateStorediSCSIVolumeOutput)
createStorediSCSIVolume gatewayARN diskId preserveExistingData targetName networkInterfaceId setOptions =
    let
        requestInput =
            CreateStorediSCSIVolumeInput
                gatewayARN
                diskId
                options.snapshotId
                preserveExistingData
                targetName
                networkInterfaceId
                options.kMSEncrypted
                options.kMSKey
                options.tags

        options =
            setOptions (CreateStorediSCSIVolumeOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createStorediSCSIVolumeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateStorediSCSIVolume"
            (AWS.Core.Decode.ResultDecoder "CreateStorediSCSIVolumeOutput" createStorediSCSIVolumeOutputDecoder)
        )


{-| Options for a createStorediSCSIVolume request
-}
type alias CreateStorediSCSIVolumeOptions =
    { snapshotId : Maybe String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates a virtual tape by using your own barcode. You write data to the virtual tape and then archive the tape. A barcode is unique and can not be reused if it has already been used on a tape . This applies to barcodes used on deleted tapes. This operation is only supported in the tape gateway type.</p> <note> <p>Cache storage must be allocated to the gateway before you can create a virtual tape. Use the <a>AddCache</a> operation to add cache storage to a gateway.</p> </note>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `tapeSizeInBytes` **:** `Int`
  - `tapeBarcode` **:** `String`

-}
createTapeWithBarcode :
    String
    -> Int
    -> String
    -> (CreateTapeWithBarcodeOptions -> CreateTapeWithBarcodeOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTapeWithBarcodeOutput)
createTapeWithBarcode gatewayARN tapeSizeInBytes tapeBarcode setOptions =
    let
        requestInput =
            CreateTapeWithBarcodeInput
                gatewayARN
                tapeSizeInBytes
                tapeBarcode
                options.kMSEncrypted
                options.kMSKey
                options.poolId
                options.tags

        options =
            setOptions (CreateTapeWithBarcodeOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createTapeWithBarcodeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateTapeWithBarcode"
            (AWS.Core.Decode.ResultDecoder "CreateTapeWithBarcodeOutput" createTapeWithBarcodeOutputDecoder)
        )


{-| Options for a createTapeWithBarcode request
-}
type alias CreateTapeWithBarcodeOptions =
    { kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , poolId : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates one or more virtual tapes. You write data to the virtual tapes and then archive the tapes. This operation is only supported in the tape gateway type.</p> <note> <p>Cache storage must be allocated to the gateway before you can create virtual tapes. Use the <a>AddCache</a> operation to add cache storage to a gateway. </p> </note>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `tapeSizeInBytes` **:** `Int`
  - `clientToken` **:** `String`
  - `numTapesToCreate` **:** `Int`
  - `tapeBarcodePrefix` **:** `String`

-}
createTapes :
    String
    -> Int
    -> String
    -> Int
    -> String
    -> (CreateTapesOptions -> CreateTapesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTapesOutput)
createTapes gatewayARN tapeSizeInBytes clientToken numTapesToCreate tapeBarcodePrefix setOptions =
    let
        requestInput =
            CreateTapesInput
                gatewayARN
                tapeSizeInBytes
                clientToken
                numTapesToCreate
                tapeBarcodePrefix
                options.kMSEncrypted
                options.kMSKey
                options.poolId
                options.tags

        options =
            setOptions (CreateTapesOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createTapesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateTapes"
            (AWS.Core.Decode.ResultDecoder "CreateTapesOutput" createTapesOutputDecoder)
        )


{-| Options for a createTapes request
-}
type alias CreateTapesOptions =
    { kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , poolId : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Deletes the bandwidth rate limits of a gateway. You can delete either the upload and download bandwidth rate limit, or you can delete both. If you delete only one of the limits, the other limit remains unchanged. To specify which gateway to work with, use the Amazon Resource Name (ARN) of the gateway in your request.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `bandwidthType` **:** `String`

-}
deleteBandwidthRateLimit :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteBandwidthRateLimitOutput)
deleteBandwidthRateLimit gatewayARN bandwidthType =
    let
        requestInput =
            DeleteBandwidthRateLimitInput
                gatewayARN
                bandwidthType
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteBandwidthRateLimitInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteBandwidthRateLimit"
            (AWS.Core.Decode.ResultDecoder "DeleteBandwidthRateLimitOutput" deleteBandwidthRateLimitOutputDecoder)
        )


{-|

<p>Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair.</p>

**Required Parameters**

  - `targetARN` **:** `String`
  - `initiatorName` **:** `String`

-}
deleteChapCredentials :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteChapCredentialsOutput)
deleteChapCredentials targetARN initiatorName =
    let
        requestInput =
            DeleteChapCredentialsInput
                targetARN
                initiatorName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteChapCredentialsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteChapCredentials"
            (AWS.Core.Decode.ResultDecoder "DeleteChapCredentialsOutput" deleteChapCredentialsOutputDecoder)
        )


{-|

<p>Deletes a file share from a file gateway. This operation is only supported for file gateways.</p>

**Required Parameters**

  - `fileShareARN` **:** `String`

-}
deleteFileShare :
    String
    -> (DeleteFileShareOptions -> DeleteFileShareOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteFileShareOutput)
deleteFileShare fileShareARN setOptions =
    let
        requestInput =
            DeleteFileShareInput
                fileShareARN
                options.forceDelete

        options =
            setOptions (DeleteFileShareOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteFileShareInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteFileShare"
            (AWS.Core.Decode.ResultDecoder "DeleteFileShareOutput" deleteFileShareOutputDecoder)
        )


{-| Options for a deleteFileShare request
-}
type alias DeleteFileShareOptions =
    { forceDelete : Maybe Bool
    }


{-|

<p>Deletes a gateway. To specify which gateway to delete, use the Amazon Resource Name (ARN) of the gateway in your request. The operation deletes the gateway; however, it does not delete the gateway virtual machine (VM) from your host computer.</p> <p>After you delete a gateway, you cannot reactivate it. Completed snapshots of the gateway volumes are not deleted upon deleting the gateway, however, pending snapshots will not complete. After you delete a gateway, your next step is to remove it from your environment.</p> <important> <p>You no longer pay software charges after the gateway is deleted; however, your existing Amazon EBS snapshots persist and you will continue to be billed for these snapshots. You can choose to remove all remaining Amazon EBS snapshots by canceling your Amazon EC2 subscription.  If you prefer not to cancel your Amazon EC2 subscription, you can delete your snapshots using the Amazon EC2 console. For more information, see the <a href="http://aws.amazon.com/storagegateway"> AWS Storage Gateway Detail Page</a>. </p> </important>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
deleteGateway :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteGatewayOutput)
deleteGateway gatewayARN =
    let
        requestInput =
            DeleteGatewayInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteGatewayInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteGateway"
            (AWS.Core.Decode.ResultDecoder "DeleteGatewayOutput" deleteGatewayOutputDecoder)
        )


{-|

<p>Deletes a snapshot of a volume.</p> <p>You can take snapshots of your gateway volumes on a scheduled or ad hoc basis. This API action enables you to delete a snapshot schedule for a volume. For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html">Working with Snapshots</a>. In the <code>DeleteSnapshotSchedule</code> request, you identify the volume by providing its Amazon Resource Name (ARN). This operation is only supported in stored and cached volume gateway types.</p> <note> <p>To list or delete a snapshot, you must use the Amazon EC2 API. in <i>Amazon Elastic Compute Cloud API Reference</i>.</p> </note>

**Required Parameters**

  - `volumeARN` **:** `String`

-}
deleteSnapshotSchedule :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteSnapshotScheduleOutput)
deleteSnapshotSchedule volumeARN =
    let
        requestInput =
            DeleteSnapshotScheduleInput
                volumeARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteSnapshotScheduleInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteSnapshotSchedule"
            (AWS.Core.Decode.ResultDecoder "DeleteSnapshotScheduleOutput" deleteSnapshotScheduleOutputDecoder)
        )


{-|

<p>Deletes the specified virtual tape. This operation is only supported in the tape gateway type.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `tapeARN` **:** `String`

-}
deleteTape :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTapeOutput)
deleteTape gatewayARN tapeARN =
    let
        requestInput =
            DeleteTapeInput
                gatewayARN
                tapeARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteTapeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteTape"
            (AWS.Core.Decode.ResultDecoder "DeleteTapeOutput" deleteTapeOutputDecoder)
        )


{-|

<p>Deletes the specified virtual tape from the virtual tape shelf (VTS). This operation is only supported in the tape gateway type.</p>

**Required Parameters**

  - `tapeARN` **:** `String`

-}
deleteTapeArchive :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTapeArchiveOutput)
deleteTapeArchive tapeARN =
    let
        requestInput =
            DeleteTapeArchiveInput
                tapeARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteTapeArchiveInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteTapeArchive"
            (AWS.Core.Decode.ResultDecoder "DeleteTapeArchiveOutput" deleteTapeArchiveOutputDecoder)
        )


{-|

<p>Deletes the specified storage volume that you previously created using the <a>CreateCachediSCSIVolume</a> or <a>CreateStorediSCSIVolume</a> API. This operation is only supported in the cached volume and stored volume types. For stored volume gateways, the local disk that was configured as the storage volume is not deleted. You can reuse the local disk to create another storage volume. </p> <p>Before you delete a volume, make sure there are no iSCSI connections to the volume you are deleting. You should also make sure there is no snapshot in progress. You can use the Amazon Elastic Compute Cloud (Amazon EC2) API to query snapshots on the volume you are deleting and check the snapshot status. For more information, go to <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API Reference</i>.</p> <p>In the request, you must provide the Amazon Resource Name (ARN) of the storage volume you want to delete.</p>

**Required Parameters**

  - `volumeARN` **:** `String`

-}
deleteVolume :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteVolumeOutput)
deleteVolume volumeARN =
    let
        requestInput =
            DeleteVolumeInput
                volumeARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteVolumeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteVolume"
            (AWS.Core.Decode.ResultDecoder "DeleteVolumeOutput" deleteVolumeOutputDecoder)
        )


{-|

<p>Returns the bandwidth rate limits of a gateway. By default, these limits are not set, which means no bandwidth rate limiting is in effect.</p> <p>This operation only returns a value for a bandwidth rate limit only if the limit is set. If no limits are set for the gateway, then this operation returns only the gateway ARN in the response body. To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
describeBandwidthRateLimit :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeBandwidthRateLimitOutput)
describeBandwidthRateLimit gatewayARN =
    let
        requestInput =
            DescribeBandwidthRateLimitInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeBandwidthRateLimitInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeBandwidthRateLimit"
            (AWS.Core.Decode.ResultDecoder "DescribeBandwidthRateLimitOutput" describeBandwidthRateLimitOutputDecoder)
        )


{-|

<p>Returns information about the cache of a gateway. This operation is only supported in the cached volume, tape and file gateway types.</p> <p>The response includes disk IDs that are configured as cache, and it includes the amount of cache allocated and used.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
describeCache :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeCacheOutput)
describeCache gatewayARN =
    let
        requestInput =
            DescribeCacheInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeCacheInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeCache"
            (AWS.Core.Decode.ResultDecoder "DescribeCacheOutput" describeCacheOutputDecoder)
        )


{-|

<p>Returns a description of the gateway volumes specified in the request. This operation is only supported in the cached volume gateway types.</p> <p>The list of gateway volumes in the request must be from one gateway. In the response Amazon Storage Gateway returns volume information sorted by volume Amazon Resource Name (ARN).</p>

**Required Parameters**

  - `volumeARNs` **:** `(List String)`

-}
describeCachediSCSIVolumes :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeCachediSCSIVolumesOutput)
describeCachediSCSIVolumes volumeARNs =
    let
        requestInput =
            DescribeCachediSCSIVolumesInput
                volumeARNs
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeCachediSCSIVolumesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeCachediSCSIVolumes"
            (AWS.Core.Decode.ResultDecoder "DescribeCachediSCSIVolumesOutput" describeCachediSCSIVolumesOutputDecoder)
        )


{-|

<p>Returns an array of Challenge-Handshake Authentication Protocol (CHAP) credentials information for a specified iSCSI target, one for each target-initiator pair.</p>

**Required Parameters**

  - `targetARN` **:** `String`

-}
describeChapCredentials :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeChapCredentialsOutput)
describeChapCredentials targetARN =
    let
        requestInput =
            DescribeChapCredentialsInput
                targetARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeChapCredentialsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeChapCredentials"
            (AWS.Core.Decode.ResultDecoder "DescribeChapCredentialsOutput" describeChapCredentialsOutputDecoder)
        )


{-|

<p>Returns metadata about a gateway such as its name, network interfaces, configured time zone, and the state (whether the gateway is running or not). To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
describeGatewayInformation :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeGatewayInformationOutput)
describeGatewayInformation gatewayARN =
    let
        requestInput =
            DescribeGatewayInformationInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeGatewayInformationInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeGatewayInformation"
            (AWS.Core.Decode.ResultDecoder "DescribeGatewayInformationOutput" describeGatewayInformationOutputDecoder)
        )


{-|

<p>Returns your gateway's weekly maintenance start time including the day and time of the week. Note that values are in terms of the gateway's time zone.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
describeMaintenanceStartTime :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeMaintenanceStartTimeOutput)
describeMaintenanceStartTime gatewayARN =
    let
        requestInput =
            DescribeMaintenanceStartTimeInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeMaintenanceStartTimeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeMaintenanceStartTime"
            (AWS.Core.Decode.ResultDecoder "DescribeMaintenanceStartTimeOutput" describeMaintenanceStartTimeOutputDecoder)
        )


{-|

<p>Gets a description for one or more Network File System (NFS) file shares from a file gateway. This operation is only supported for file gateways.</p>

**Required Parameters**

  - `fileShareARNList` **:** `(List String)`

-}
describeNFSFileShares :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeNFSFileSharesOutput)
describeNFSFileShares fileShareARNList =
    let
        requestInput =
            DescribeNFSFileSharesInput
                fileShareARNList
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeNFSFileSharesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeNFSFileShares"
            (AWS.Core.Decode.ResultDecoder "DescribeNFSFileSharesOutput" describeNFSFileSharesOutputDecoder)
        )


{-|

<p>Gets a description for one or more Server Message Block (SMB) file shares from a file gateway. This operation is only supported for file gateways.</p>

**Required Parameters**

  - `fileShareARNList` **:** `(List String)`

-}
describeSMBFileShares :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSMBFileSharesOutput)
describeSMBFileShares fileShareARNList =
    let
        requestInput =
            DescribeSMBFileSharesInput
                fileShareARNList
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeSMBFileSharesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeSMBFileShares"
            (AWS.Core.Decode.ResultDecoder "DescribeSMBFileSharesOutput" describeSMBFileSharesOutputDecoder)
        )


{-|

<p>Gets a description of a Server Message Block (SMB) file share settings from a file gateway. This operation is only supported for file gateways.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
describeSMBSettings :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSMBSettingsOutput)
describeSMBSettings gatewayARN =
    let
        requestInput =
            DescribeSMBSettingsInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeSMBSettingsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeSMBSettings"
            (AWS.Core.Decode.ResultDecoder "DescribeSMBSettingsOutput" describeSMBSettingsOutputDecoder)
        )


{-|

<p>Describes the snapshot schedule for the specified gateway volume. The snapshot schedule information includes intervals at which snapshots are automatically initiated on the volume. This operation is only supported in the cached volume and stored volume types.</p>

**Required Parameters**

  - `volumeARN` **:** `String`

-}
describeSnapshotSchedule :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSnapshotScheduleOutput)
describeSnapshotSchedule volumeARN =
    let
        requestInput =
            DescribeSnapshotScheduleInput
                volumeARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeSnapshotScheduleInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeSnapshotSchedule"
            (AWS.Core.Decode.ResultDecoder "DescribeSnapshotScheduleOutput" describeSnapshotScheduleOutputDecoder)
        )


{-|

<p>Returns the description of the gateway volumes specified in the request. The list of gateway volumes in the request must be from one gateway. In the response Amazon Storage Gateway returns volume information sorted by volume ARNs. This operation is only supported in stored volume gateway type.</p>

**Required Parameters**

  - `volumeARNs` **:** `(List String)`

-}
describeStorediSCSIVolumes :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeStorediSCSIVolumesOutput)
describeStorediSCSIVolumes volumeARNs =
    let
        requestInput =
            DescribeStorediSCSIVolumesInput
                volumeARNs
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeStorediSCSIVolumesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeStorediSCSIVolumes"
            (AWS.Core.Decode.ResultDecoder "DescribeStorediSCSIVolumesOutput" describeStorediSCSIVolumesOutputDecoder)
        )


{-|

<p>Returns a description of specified virtual tapes in the virtual tape shelf (VTS). This operation is only supported in the tape gateway type.</p> <p>If a specific <code>TapeARN</code> is not specified, AWS Storage Gateway returns a description of all virtual tapes found in the VTS associated with your account.</p>

**Required Parameters**

-}
describeTapeArchives :
    (DescribeTapeArchivesOptions -> DescribeTapeArchivesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTapeArchivesOutput)
describeTapeArchives setOptions =
    let
        requestInput =
            DescribeTapeArchivesInput
                options.tapeARNs
                options.marker
                options.limit

        options =
            setOptions (DescribeTapeArchivesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeTapeArchivesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeTapeArchives"
            (AWS.Core.Decode.ResultDecoder "DescribeTapeArchivesOutput" describeTapeArchivesOutputDecoder)
        )


{-| Options for a describeTapeArchives request
-}
type alias DescribeTapeArchivesOptions =
    { tapeARNs : Maybe (List String)
    , marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Returns a list of virtual tape recovery points that are available for the specified tape gateway.</p> <p>A recovery point is a point-in-time view of a virtual tape at which all the data on the virtual tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway. This operation is only supported in the tape gateway type.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
describeTapeRecoveryPoints :
    String
    -> (DescribeTapeRecoveryPointsOptions -> DescribeTapeRecoveryPointsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTapeRecoveryPointsOutput)
describeTapeRecoveryPoints gatewayARN setOptions =
    let
        requestInput =
            DescribeTapeRecoveryPointsInput
                gatewayARN
                options.marker
                options.limit

        options =
            setOptions (DescribeTapeRecoveryPointsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeTapeRecoveryPointsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeTapeRecoveryPoints"
            (AWS.Core.Decode.ResultDecoder "DescribeTapeRecoveryPointsOutput" describeTapeRecoveryPointsOutputDecoder)
        )


{-| Options for a describeTapeRecoveryPoints request
-}
type alias DescribeTapeRecoveryPointsOptions =
    { marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes. If a <code>TapeARN</code> is not specified, returns a description of all virtual tapes associated with the specified gateway. This operation is only supported in the tape gateway type.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
describeTapes :
    String
    -> (DescribeTapesOptions -> DescribeTapesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTapesOutput)
describeTapes gatewayARN setOptions =
    let
        requestInput =
            DescribeTapesInput
                gatewayARN
                options.tapeARNs
                options.marker
                options.limit

        options =
            setOptions (DescribeTapesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeTapesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeTapes"
            (AWS.Core.Decode.ResultDecoder "DescribeTapesOutput" describeTapesOutputDecoder)
        )


{-| Options for a describeTapes request
-}
type alias DescribeTapesOptions =
    { tapeARNs : Maybe (List String)
    , marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Returns information about the upload buffer of a gateway. This operation is supported for the stored volume, cached volume and tape gateway types.</p> <p>The response includes disk IDs that are configured as upload buffer space, and it includes the amount of upload buffer space allocated and used.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
describeUploadBuffer :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeUploadBufferOutput)
describeUploadBuffer gatewayARN =
    let
        requestInput =
            DescribeUploadBufferInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeUploadBufferInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeUploadBuffer"
            (AWS.Core.Decode.ResultDecoder "DescribeUploadBufferOutput" describeUploadBufferOutputDecoder)
        )


{-|

<p>Returns a description of virtual tape library (VTL) devices for the specified tape gateway. In the response, AWS Storage Gateway returns VTL device information.</p> <p>This operation is only supported in the tape gateway type.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
describeVTLDevices :
    String
    -> (DescribeVTLDevicesOptions -> DescribeVTLDevicesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeVTLDevicesOutput)
describeVTLDevices gatewayARN setOptions =
    let
        requestInput =
            DescribeVTLDevicesInput
                gatewayARN
                options.vTLDeviceARNs
                options.marker
                options.limit

        options =
            setOptions (DescribeVTLDevicesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeVTLDevicesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeVTLDevices"
            (AWS.Core.Decode.ResultDecoder "DescribeVTLDevicesOutput" describeVTLDevicesOutputDecoder)
        )


{-| Options for a describeVTLDevices request
-}
type alias DescribeVTLDevicesOptions =
    { vTLDeviceARNs : Maybe (List String)
    , marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Returns information about the working storage of a gateway. This operation is only supported in the stored volumes gateway type. This operation is deprecated in cached volumes API version (20120630). Use DescribeUploadBuffer instead.</p> <note> <p>Working storage is also referred to as upload buffer. You can also use the DescribeUploadBuffer operation to add upload buffer to a stored volume gateway.</p> </note> <p>The response includes disk IDs that are configured as working storage, and it includes the amount of working storage allocated and used.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
describeWorkingStorage :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeWorkingStorageOutput)
describeWorkingStorage gatewayARN =
    let
        requestInput =
            DescribeWorkingStorageInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeWorkingStorageInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeWorkingStorage"
            (AWS.Core.Decode.ResultDecoder "DescribeWorkingStorageOutput" describeWorkingStorageOutputDecoder)
        )


{-|

<p>Disconnects a volume from an iSCSI connection and then detaches the volume from the specified gateway. Detaching and attaching a volume enables you to recover your data from one gateway to a different gateway without creating a snapshot. It also makes it easier to move your volumes from an on-premises gateway to a gateway hosted on an Amazon EC2 instance.</p>

**Required Parameters**

  - `volumeARN` **:** `String`

-}
detachVolume :
    String
    -> (DetachVolumeOptions -> DetachVolumeOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetachVolumeOutput)
detachVolume volumeARN setOptions =
    let
        requestInput =
            DetachVolumeInput
                volumeARN
                options.forceDetach

        options =
            setOptions (DetachVolumeOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> detachVolumeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DetachVolume"
            (AWS.Core.Decode.ResultDecoder "DetachVolumeOutput" detachVolumeOutputDecoder)
        )


{-| Options for a detachVolume request
-}
type alias DetachVolumeOptions =
    { forceDetach : Maybe Bool
    }


{-|

<p>Disables a tape gateway when the gateway is no longer functioning. For example, if your gateway VM is damaged, you can disable the gateway so you can recover virtual tapes.</p> <p>Use this operation for a tape gateway that is not reachable or not functioning. This operation is only supported in the tape gateway type.</p> <important> <p>Once a gateway is disabled it cannot be enabled.</p> </important>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
disableGateway :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisableGatewayOutput)
disableGateway gatewayARN =
    let
        requestInput =
            DisableGatewayInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> disableGatewayInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DisableGateway"
            (AWS.Core.Decode.ResultDecoder "DisableGatewayOutput" disableGatewayOutputDecoder)
        )


{-|

<p>Adds a file gateway to an Active Directory domain. This operation is only supported for file gateways that support the SMB file protocol.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `domainName` **:** `String`
  - `userName` **:** `String`
  - `password` **:** `String`

-}
joinDomain :
    String
    -> String
    -> String
    -> String
    -> (JoinDomainOptions -> JoinDomainOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper JoinDomainOutput)
joinDomain gatewayARN domainName userName password setOptions =
    let
        requestInput =
            JoinDomainInput
                gatewayARN
                domainName
                options.organizationalUnit
                options.domainControllers
                userName
                password

        options =
            setOptions (JoinDomainOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> joinDomainInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "JoinDomain"
            (AWS.Core.Decode.ResultDecoder "JoinDomainOutput" joinDomainOutputDecoder)
        )


{-| Options for a joinDomain request
-}
type alias JoinDomainOptions =
    { organizationalUnit : Maybe String
    , domainControllers : Maybe (List String)
    }


{-|

<p>Gets a list of the file shares for a specific file gateway, or the list of file shares that belong to the calling user account. This operation is only supported for file gateways.</p>

**Required Parameters**

-}
listFileShares :
    (ListFileSharesOptions -> ListFileSharesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListFileSharesOutput)
listFileShares setOptions =
    let
        requestInput =
            ListFileSharesInput
                options.gatewayARN
                options.limit
                options.marker

        options =
            setOptions (ListFileSharesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listFileSharesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListFileShares"
            (AWS.Core.Decode.ResultDecoder "ListFileSharesOutput" listFileSharesOutputDecoder)
        )


{-| Options for a listFileShares request
-}
type alias ListFileSharesOptions =
    { gatewayARN : Maybe String
    , limit : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Lists gateways owned by an AWS account in a region specified in the request. The returned list is ordered by gateway Amazon Resource Name (ARN).</p> <p>By default, the operation returns a maximum of 100 gateways. This operation supports pagination that allows you to optionally reduce the number of gateways returned in a response.</p> <p>If you have more gateways than are returned in a response (that is, the response returns only a truncated list of your gateways), the response contains a marker that you can specify in your next request to fetch the next page of gateways.</p>

**Required Parameters**

-}
listGateways :
    (ListGatewaysOptions -> ListGatewaysOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListGatewaysOutput)
listGateways setOptions =
    let
        requestInput =
            ListGatewaysInput
                options.marker
                options.limit

        options =
            setOptions (ListGatewaysOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listGatewaysInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListGateways"
            (AWS.Core.Decode.ResultDecoder "ListGatewaysOutput" listGatewaysOutputDecoder)
        )


{-| Options for a listGateways request
-}
type alias ListGatewaysOptions =
    { marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Returns a list of the gateway's local disks. To specify which gateway to describe, you use the Amazon Resource Name (ARN) of the gateway in the body of the request.</p> <p>The request returns a list of all disks, specifying which are configured as working storage, cache storage, or stored volume or not configured at all. The response includes a <code>DiskStatus</code> field. This field can have a value of present (the disk is available to use), missing (the disk is no longer connected to the gateway), or mismatch (the disk node is occupied by a disk that has incorrect metadata or the disk content is corrupted).</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
listLocalDisks :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListLocalDisksOutput)
listLocalDisks gatewayARN =
    let
        requestInput =
            ListLocalDisksInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listLocalDisksInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListLocalDisks"
            (AWS.Core.Decode.ResultDecoder "ListLocalDisksOutput" listLocalDisksOutputDecoder)
        )


{-|

<p>Lists the tags that have been added to the specified resource. This operation is only supported in the cached volume, stored volume and tape gateway type.</p>

**Required Parameters**

  - `resourceARN` **:** `String`

-}
listTagsForResource :
    String
    -> (ListTagsForResourceOptions -> ListTagsForResourceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceOutput)
listTagsForResource resourceARN setOptions =
    let
        requestInput =
            ListTagsForResourceInput
                resourceARN
                options.marker
                options.limit

        options =
            setOptions (ListTagsForResourceOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listTagsForResourceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListTagsForResource"
            (AWS.Core.Decode.ResultDecoder "ListTagsForResourceOutput" listTagsForResourceOutputDecoder)
        )


{-| Options for a listTagsForResource request
-}
type alias ListTagsForResourceOptions =
    { marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Lists virtual tapes in your virtual tape library (VTL) and your virtual tape shelf (VTS). You specify the tapes to list by specifying one or more tape Amazon Resource Names (ARNs). If you don't specify a tape ARN, the operation lists all virtual tapes in both your VTL and VTS.</p> <p>This operation supports pagination. By default, the operation returns a maximum of up to 100 tapes. You can optionally specify the <code>Limit</code> parameter in the body to limit the number of tapes in the response. If the number of tapes returned in the response is truncated, the response includes a <code>Marker</code> element that you can use in your subsequent request to retrieve the next set of tapes. This operation is only supported in the tape gateway type.</p>

**Required Parameters**

-}
listTapes :
    (ListTapesOptions -> ListTapesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTapesOutput)
listTapes setOptions =
    let
        requestInput =
            ListTapesInput
                options.tapeARNs
                options.marker
                options.limit

        options =
            setOptions (ListTapesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listTapesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListTapes"
            (AWS.Core.Decode.ResultDecoder "ListTapesOutput" listTapesOutputDecoder)
        )


{-| Options for a listTapes request
-}
type alias ListTapesOptions =
    { tapeARNs : Maybe (List String)
    , marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Lists iSCSI initiators that are connected to a volume. You can use this operation to determine whether a volume is being used or not. This operation is only supported in the cached volume and stored volume gateway types.</p>

**Required Parameters**

  - `volumeARN` **:** `String`

-}
listVolumeInitiators :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListVolumeInitiatorsOutput)
listVolumeInitiators volumeARN =
    let
        requestInput =
            ListVolumeInitiatorsInput
                volumeARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listVolumeInitiatorsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListVolumeInitiators"
            (AWS.Core.Decode.ResultDecoder "ListVolumeInitiatorsOutput" listVolumeInitiatorsOutputDecoder)
        )


{-|

<p>Lists the recovery points for a specified gateway. This operation is only supported in the cached volume gateway type.</p> <p>Each cache volume has one recovery point. A volume recovery point is a point in time at which all data of the volume is consistent and from which you can create a snapshot or clone a new cached volume from a source volume. To create a snapshot from a volume recovery point use the <a>CreateSnapshotFromVolumeRecoveryPoint</a> operation.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
listVolumeRecoveryPoints :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListVolumeRecoveryPointsOutput)
listVolumeRecoveryPoints gatewayARN =
    let
        requestInput =
            ListVolumeRecoveryPointsInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listVolumeRecoveryPointsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListVolumeRecoveryPoints"
            (AWS.Core.Decode.ResultDecoder "ListVolumeRecoveryPointsOutput" listVolumeRecoveryPointsOutputDecoder)
        )


{-|

<p>Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN. The response includes only the volume ARNs. If you want additional volume information, use the <a>DescribeStorediSCSIVolumes</a> or the <a>DescribeCachediSCSIVolumes</a> API.</p> <p>The operation supports pagination. By default, the operation returns a maximum of up to 100 volumes. You can optionally specify the <code>Limit</code> field in the body to limit the number of volumes in the response. If the number of volumes returned in the response is truncated, the response includes a Marker field. You can use this Marker value in your subsequent request to retrieve the next set of volumes. This operation is only supported in the cached volume and stored volume gateway types.</p>

**Required Parameters**

-}
listVolumes :
    (ListVolumesOptions -> ListVolumesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListVolumesOutput)
listVolumes setOptions =
    let
        requestInput =
            ListVolumesInput
                options.gatewayARN
                options.marker
                options.limit

        options =
            setOptions (ListVolumesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listVolumesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListVolumes"
            (AWS.Core.Decode.ResultDecoder "ListVolumesOutput" listVolumesOutputDecoder)
        )


{-| Options for a listVolumes request
-}
type alias ListVolumesOptions =
    { gatewayARN : Maybe String
    , marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>Sends you notification through CloudWatch Events when all files written to your NFS file share have been uploaded to Amazon S3.</p> <p>AWS Storage Gateway can send a notification through Amazon CloudWatch Events when all files written to your file share up to that point in time have been uploaded to Amazon S3. These files include files written to the NFS file share up to the time that you make a request for notification. When the upload is done, Storage Gateway sends you notification through an Amazon CloudWatch Event. You can configure CloudWatch Events to send the notification through event targets such as Amazon SNS or AWS Lambda function. This operation is only supported for file gateways.</p> <p>For more information, see Getting File Upload Notification in the Storage Gateway User Guide (https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-upload-notification). </p>

**Required Parameters**

  - `fileShareARN` **:** `String`

-}
notifyWhenUploaded :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper NotifyWhenUploadedOutput)
notifyWhenUploaded fileShareARN =
    let
        requestInput =
            NotifyWhenUploadedInput
                fileShareARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> notifyWhenUploadedInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "NotifyWhenUploaded"
            (AWS.Core.Decode.ResultDecoder "NotifyWhenUploadedOutput" notifyWhenUploadedOutputDecoder)
        )


{-|

<p>Refreshes the cache for the specified file share. This operation finds objects in the Amazon S3 bucket that were added, removed or replaced since the gateway last listed the bucket's contents and cached the results. This operation is only supported in the file gateway type. You can subscribe to be notified through an Amazon CloudWatch event when your RefreshCache operation completes. For more information, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/monitoring-file-gateway.html#get-notification">Getting Notified About File Operations</a>.</p> <p>When this API is called, it only initiates the refresh operation. When the API call completes and returns a success code, it doesn't necessarily mean that the file refresh has completed. You should use the refresh-complete notification to determine that the operation has completed before you check for new files on the gateway file share. You can subscribe to be notified through an CloudWatch event when your <code>RefreshCache</code> operation completes. </p>

**Required Parameters**

  - `fileShareARN` **:** `String`

-}
refreshCache :
    String
    -> (RefreshCacheOptions -> RefreshCacheOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RefreshCacheOutput)
refreshCache fileShareARN setOptions =
    let
        requestInput =
            RefreshCacheInput
                fileShareARN
                options.folderList
                options.recursive

        options =
            setOptions (RefreshCacheOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> refreshCacheInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RefreshCache"
            (AWS.Core.Decode.ResultDecoder "RefreshCacheOutput" refreshCacheOutputDecoder)
        )


{-| Options for a refreshCache request
-}
type alias RefreshCacheOptions =
    { folderList : Maybe (List String)
    , recursive : Maybe Bool
    }


{-|

<p>Removes one or more tags from the specified resource. This operation is only supported in the cached volume, stored volume and tape gateway types.</p>

**Required Parameters**

  - `resourceARN` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
removeTagsFromResource :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RemoveTagsFromResourceOutput)
removeTagsFromResource resourceARN tagKeys =
    let
        requestInput =
            RemoveTagsFromResourceInput
                resourceARN
                tagKeys
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> removeTagsFromResourceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RemoveTagsFromResource"
            (AWS.Core.Decode.ResultDecoder "RemoveTagsFromResourceOutput" removeTagsFromResourceOutputDecoder)
        )


{-|

<p>Resets all cache disks that have encountered a error and makes the disks available for reconfiguration as cache storage. If your cache disk encounters a error, the gateway prevents read and write operations on virtual tapes in the gateway. For example, an error can occur when a disk is corrupted or removed from the gateway. When a cache is reset, the gateway loses its cache storage. At this point you can reconfigure the disks as cache disks. This operation is only supported in the cached volume and tape types.</p> <important> <p>If the cache disk you are resetting contains data that has not been uploaded to Amazon S3 yet, that data can be lost. After you reset cache disks, there will be no configured cache disks left in the gateway, so you must configure at least one new cache disk for your gateway to function properly.</p> </important>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
resetCache :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResetCacheOutput)
resetCache gatewayARN =
    let
        requestInput =
            ResetCacheInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> resetCacheInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ResetCache"
            (AWS.Core.Decode.ResultDecoder "ResetCacheOutput" resetCacheOutputDecoder)
        )


{-|

<p>Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a tape gateway. Virtual tapes archived in the VTS are not associated with any gateway. However after a tape is retrieved, it is associated with a gateway, even though it is also listed in the VTS, that is, archive. This operation is only supported in the tape gateway type.</p> <p>Once a tape is successfully retrieved to a gateway, it cannot be retrieved again to another gateway. You must archive the tape again before you can retrieve it to another gateway. This operation is only supported in the tape gateway type.</p>

**Required Parameters**

  - `tapeARN` **:** `String`
  - `gatewayARN` **:** `String`

-}
retrieveTapeArchive :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RetrieveTapeArchiveOutput)
retrieveTapeArchive tapeARN gatewayARN =
    let
        requestInput =
            RetrieveTapeArchiveInput
                tapeARN
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> retrieveTapeArchiveInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RetrieveTapeArchive"
            (AWS.Core.Decode.ResultDecoder "RetrieveTapeArchiveOutput" retrieveTapeArchiveOutputDecoder)
        )


{-|

<p>Retrieves the recovery point for the specified virtual tape. This operation is only supported in the tape gateway type.</p> <p>A recovery point is a point in time view of a virtual tape at which all the data on the tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway.</p> <note> <p>The virtual tape can be retrieved to only one gateway. The retrieved tape is read-only. The virtual tape can be retrieved to only a tape gateway. There is no charge for retrieving recovery points.</p> </note>

**Required Parameters**

  - `tapeARN` **:** `String`
  - `gatewayARN` **:** `String`

-}
retrieveTapeRecoveryPoint :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RetrieveTapeRecoveryPointOutput)
retrieveTapeRecoveryPoint tapeARN gatewayARN =
    let
        requestInput =
            RetrieveTapeRecoveryPointInput
                tapeARN
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> retrieveTapeRecoveryPointInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "RetrieveTapeRecoveryPoint"
            (AWS.Core.Decode.ResultDecoder "RetrieveTapeRecoveryPointOutput" retrieveTapeRecoveryPointOutputDecoder)
        )


{-|

<p>Sets the password for your VM local console. When you log in to the local console for the first time, you log in to the VM with the default credentials. We recommend that you set a new password. You don't need to know the default password to set a new password.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `localConsolePassword` **:** `String`

-}
setLocalConsolePassword :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetLocalConsolePasswordOutput)
setLocalConsolePassword gatewayARN localConsolePassword =
    let
        requestInput =
            SetLocalConsolePasswordInput
                gatewayARN
                localConsolePassword
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> setLocalConsolePasswordInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "SetLocalConsolePassword"
            (AWS.Core.Decode.ResultDecoder "SetLocalConsolePasswordOutput" setLocalConsolePasswordOutputDecoder)
        )


{-|

<p>Sets the password for the guest user <code>smbguest</code>. The <code>smbguest</code> user is the user when the authentication method for the file share is set to <code>GuestAccess</code>.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `password` **:** `String`

-}
setSMBGuestPassword :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetSMBGuestPasswordOutput)
setSMBGuestPassword gatewayARN password =
    let
        requestInput =
            SetSMBGuestPasswordInput
                gatewayARN
                password
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> setSMBGuestPasswordInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "SetSMBGuestPassword"
            (AWS.Core.Decode.ResultDecoder "SetSMBGuestPasswordOutput" setSMBGuestPasswordOutputDecoder)
        )


{-|

<p>Shuts down a gateway. To specify which gateway to shut down, use the Amazon Resource Name (ARN) of the gateway in the body of your request.</p> <p>The operation shuts down the gateway service component running in the gateway's virtual machine (VM) and not the host VM.</p> <note> <p>If you want to shut down the VM, it is recommended that you first shut down the gateway component in the VM to avoid unpredictable conditions.</p> </note> <p>After the gateway is shutdown, you cannot call any other API except <a>StartGateway</a>, <a>DescribeGatewayInformation</a>, and <a>ListGateways</a>. For more information, see <a>ActivateGateway</a>. Your applications cannot read from or write to the gateway's storage volumes, and there are no snapshots taken.</p> <note> <p>When you make a shutdown request, you will get a <code>200 OK</code> success response immediately. However, it might take some time for the gateway to shut down. You can call the <a>DescribeGatewayInformation</a> API to check the status. For more information, see <a>ActivateGateway</a>.</p> </note> <p>If do not intend to use the gateway again, you must delete the gateway (using <a>DeleteGateway</a>) to no longer pay software charges associated with the gateway.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
shutdownGateway :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ShutdownGatewayOutput)
shutdownGateway gatewayARN =
    let
        requestInput =
            ShutdownGatewayInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> shutdownGatewayInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ShutdownGateway"
            (AWS.Core.Decode.ResultDecoder "ShutdownGatewayOutput" shutdownGatewayOutputDecoder)
        )


{-|

<p>Starts a gateway that you previously shut down (see <a>ShutdownGateway</a>). After the gateway starts, you can then make other API calls, your applications can read from or write to the gateway's storage volumes and you will be able to take snapshot backups.</p> <note> <p>When you make a request, you will get a 200 OK success response immediately. However, it might take some time for the gateway to be ready. You should call <a>DescribeGatewayInformation</a> and check the status before making any additional API calls. For more information, see <a>ActivateGateway</a>.</p> </note> <p>To specify which gateway to start, use the Amazon Resource Name (ARN) of the gateway in your request.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
startGateway :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartGatewayOutput)
startGateway gatewayARN =
    let
        requestInput =
            StartGatewayInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> startGatewayInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StartGateway"
            (AWS.Core.Decode.ResultDecoder "StartGatewayOutput" startGatewayOutputDecoder)
        )


{-|

<p>Updates the bandwidth rate limits of a gateway. You can update both the upload and download bandwidth rate limit or specify only one of the two. If you don't set a bandwidth rate limit, the existing rate limit remains.</p> <p>By default, a gateway's bandwidth rate limits are not set. If you don't set any limit, the gateway does not have any limitations on its bandwidth usage and could potentially use the maximum available bandwidth.</p> <p>To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in your request.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
updateBandwidthRateLimit :
    String
    -> (UpdateBandwidthRateLimitOptions -> UpdateBandwidthRateLimitOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateBandwidthRateLimitOutput)
updateBandwidthRateLimit gatewayARN setOptions =
    let
        requestInput =
            UpdateBandwidthRateLimitInput
                gatewayARN
                options.averageUploadRateLimitInBitsPerSec
                options.averageDownloadRateLimitInBitsPerSec

        options =
            setOptions (UpdateBandwidthRateLimitOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateBandwidthRateLimitInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateBandwidthRateLimit"
            (AWS.Core.Decode.ResultDecoder "UpdateBandwidthRateLimitOutput" updateBandwidthRateLimitOutputDecoder)
        )


{-| Options for a updateBandwidthRateLimit request
-}
type alias UpdateBandwidthRateLimitOptions =
    { averageUploadRateLimitInBitsPerSec : Maybe Int
    , averageDownloadRateLimitInBitsPerSec : Maybe Int
    }


{-|

<p>Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target. By default, a gateway does not have CHAP enabled; however, for added security, you might use it.</p> <important> <p>When you update CHAP credentials, all existing connections on the target are closed and initiators must reconnect with the new credentials.</p> </important>

**Required Parameters**

  - `targetARN` **:** `String`
  - `secretToAuthenticateInitiator` **:** `String`
  - `initiatorName` **:** `String`

-}
updateChapCredentials :
    String
    -> String
    -> String
    -> (UpdateChapCredentialsOptions -> UpdateChapCredentialsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateChapCredentialsOutput)
updateChapCredentials targetARN secretToAuthenticateInitiator initiatorName setOptions =
    let
        requestInput =
            UpdateChapCredentialsInput
                targetARN
                secretToAuthenticateInitiator
                initiatorName
                options.secretToAuthenticateTarget

        options =
            setOptions (UpdateChapCredentialsOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateChapCredentialsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateChapCredentials"
            (AWS.Core.Decode.ResultDecoder "UpdateChapCredentialsOutput" updateChapCredentialsOutputDecoder)
        )


{-| Options for a updateChapCredentials request
-}
type alias UpdateChapCredentialsOptions =
    { secretToAuthenticateTarget : Maybe String
    }


{-|

<p>Updates a gateway's metadata, which includes the gateway's name and time zone. To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in your request.</p> <note> <p>For Gateways activated after September 2, 2015, the gateway's ARN contains the gateway ID rather than the gateway name. However, changing the name of the gateway has no effect on the gateway's ARN.</p> </note>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
updateGatewayInformation :
    String
    -> (UpdateGatewayInformationOptions -> UpdateGatewayInformationOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateGatewayInformationOutput)
updateGatewayInformation gatewayARN setOptions =
    let
        requestInput =
            UpdateGatewayInformationInput
                gatewayARN
                options.gatewayName
                options.gatewayTimezone

        options =
            setOptions (UpdateGatewayInformationOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateGatewayInformationInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateGatewayInformation"
            (AWS.Core.Decode.ResultDecoder "UpdateGatewayInformationOutput" updateGatewayInformationOutputDecoder)
        )


{-| Options for a updateGatewayInformation request
-}
type alias UpdateGatewayInformationOptions =
    { gatewayName : Maybe String
    , gatewayTimezone : Maybe String
    }


{-|

<p>Updates the gateway virtual machine (VM) software. The request immediately triggers the software update.</p> <note> <p>When you make this request, you get a <code>200 OK</code> success response immediately. However, it might take some time for the update to complete. You can call <a>DescribeGatewayInformation</a> to verify the gateway is in the <code>STATE_RUNNING</code> state.</p> </note> <important> <p>A software update forces a system restart of your gateway. You can minimize the chance of any disruption to your applications by increasing your iSCSI Initiators' timeouts. For more information about increasing iSCSI Initiator timeouts for Windows and Linux, see <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings">Customizing Your Windows iSCSI Settings</a> and <a href="https://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings">Customizing Your Linux iSCSI Settings</a>, respectively.</p> </important>

**Required Parameters**

  - `gatewayARN` **:** `String`

-}
updateGatewaySoftwareNow :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateGatewaySoftwareNowOutput)
updateGatewaySoftwareNow gatewayARN =
    let
        requestInput =
            UpdateGatewaySoftwareNowInput
                gatewayARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateGatewaySoftwareNowInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateGatewaySoftwareNow"
            (AWS.Core.Decode.ResultDecoder "UpdateGatewaySoftwareNowOutput" updateGatewaySoftwareNowOutputDecoder)
        )


{-|

<p>Updates a gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `hourOfDay` **:** `Int`
  - `minuteOfHour` **:** `Int`

-}
updateMaintenanceStartTime :
    String
    -> Int
    -> Int
    -> (UpdateMaintenanceStartTimeOptions -> UpdateMaintenanceStartTimeOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateMaintenanceStartTimeOutput)
updateMaintenanceStartTime gatewayARN hourOfDay minuteOfHour setOptions =
    let
        requestInput =
            UpdateMaintenanceStartTimeInput
                gatewayARN
                hourOfDay
                minuteOfHour
                options.dayOfWeek
                options.dayOfMonth

        options =
            setOptions (UpdateMaintenanceStartTimeOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateMaintenanceStartTimeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateMaintenanceStartTime"
            (AWS.Core.Decode.ResultDecoder "UpdateMaintenanceStartTimeOutput" updateMaintenanceStartTimeOutputDecoder)
        )


{-| Options for a updateMaintenanceStartTime request
-}
type alias UpdateMaintenanceStartTimeOptions =
    { dayOfWeek : Maybe Int
    , dayOfMonth : Maybe Int
    }


{-|

<p>Updates a Network File System (NFS) file share. This operation is only supported in the file gateway type.</p> <note> <p>To leave a file share field unchanged, set the corresponding input field to null.</p> </note> <p>Updates the following file share setting:</p> <ul> <li> <p>Default storage class for your S3 bucket</p> </li> <li> <p>Metadata defaults for your S3 bucket</p> </li> <li> <p>Allowed NFS clients for your file share</p> </li> <li> <p>Squash settings</p> </li> <li> <p>Write status of your file share</p> </li> </ul> <note> <p>To leave a file share field unchanged, set the corresponding input field to null. This operation is only supported in file gateways.</p> </note>

**Required Parameters**

  - `fileShareARN` **:** `String`

-}
updateNFSFileShare :
    String
    -> (UpdateNFSFileShareOptions -> UpdateNFSFileShareOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateNFSFileShareOutput)
updateNFSFileShare fileShareARN setOptions =
    let
        requestInput =
            UpdateNFSFileShareInput
                fileShareARN
                options.kMSEncrypted
                options.kMSKey
                options.nFSFileShareDefaults
                options.defaultStorageClass
                options.objectACL
                options.clientList
                options.squash
                options.readOnly
                options.guessMIMETypeEnabled
                options.requesterPays

        options =
            setOptions (UpdateNFSFileShareOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateNFSFileShareInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateNFSFileShare"
            (AWS.Core.Decode.ResultDecoder "UpdateNFSFileShareOutput" updateNFSFileShareOutputDecoder)
        )


{-| Options for a updateNFSFileShare request
-}
type alias UpdateNFSFileShareOptions =
    { kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , nFSFileShareDefaults : Maybe NFSFileShareDefaults
    , defaultStorageClass : Maybe String
    , objectACL : Maybe ObjectACL
    , clientList : Maybe (List String)
    , squash : Maybe String
    , readOnly : Maybe Bool
    , guessMIMETypeEnabled : Maybe Bool
    , requesterPays : Maybe Bool
    }


{-|

<p>Updates a Server Message Block (SMB) file share.</p> <note> <p>To leave a file share field unchanged, set the corresponding input field to null. This operation is only supported for file gateways.</p> </note> <important> <p>File gateways require AWS Security Token Service (AWS STS) to be activated to enable you to create a file share. Make sure that AWS STS is activated in the AWS Region you are creating your file gateway in. If AWS STS is not activated in this AWS Region, activate it. For information about how to activate AWS STS, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and Deactivating AWS STS in an AWS Region</a> in the <i>AWS Identity and Access Management User Guide.</i> </p> <p>File gateways don't support creating hard or symbolic links on a file share.</p> </important>

**Required Parameters**

  - `fileShareARN` **:** `String`

-}
updateSMBFileShare :
    String
    -> (UpdateSMBFileShareOptions -> UpdateSMBFileShareOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateSMBFileShareOutput)
updateSMBFileShare fileShareARN setOptions =
    let
        requestInput =
            UpdateSMBFileShareInput
                fileShareARN
                options.kMSEncrypted
                options.kMSKey
                options.defaultStorageClass
                options.objectACL
                options.readOnly
                options.guessMIMETypeEnabled
                options.requesterPays
                options.sMBACLEnabled
                options.adminUserList
                options.validUserList
                options.invalidUserList

        options =
            setOptions (UpdateSMBFileShareOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateSMBFileShareInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateSMBFileShare"
            (AWS.Core.Decode.ResultDecoder "UpdateSMBFileShareOutput" updateSMBFileShareOutputDecoder)
        )


{-| Options for a updateSMBFileShare request
-}
type alias UpdateSMBFileShareOptions =
    { kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , defaultStorageClass : Maybe String
    , objectACL : Maybe ObjectACL
    , readOnly : Maybe Bool
    , guessMIMETypeEnabled : Maybe Bool
    , requesterPays : Maybe Bool
    , sMBACLEnabled : Maybe Bool
    , adminUserList : Maybe (List String)
    , validUserList : Maybe (List String)
    , invalidUserList : Maybe (List String)
    }


{-|

<p>Updates the SMB security strategy on a file gateway. This action is only supported in file gateways.</p>

**Required Parameters**

  - `gatewayARN` **:** `String`
  - `sMBSecurityStrategy` **:** `SMBSecurityStrategy`

-}
updateSMBSecurityStrategy :
    String
    -> SMBSecurityStrategy
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateSMBSecurityStrategyOutput)
updateSMBSecurityStrategy gatewayARN sMBSecurityStrategy =
    let
        requestInput =
            UpdateSMBSecurityStrategyInput
                gatewayARN
                sMBSecurityStrategy
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateSMBSecurityStrategyInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateSMBSecurityStrategy"
            (AWS.Core.Decode.ResultDecoder "UpdateSMBSecurityStrategyOutput" updateSMBSecurityStrategyOutputDecoder)
        )


{-|

<p>Updates a snapshot schedule configured for a gateway volume. This operation is only supported in the cached volume and stored volume gateway types.</p> <p>The default snapshot schedule for volume is once every 24 hours, starting at the creation time of the volume. You can use this API to change the snapshot schedule configured for the volume.</p> <p>In the request you must identify the gateway volume whose snapshot schedule you want to update, and the schedule information, including when you want the snapshot to begin on a day and the frequency (in hours) of snapshots.</p>

**Required Parameters**

  - `volumeARN` **:** `String`
  - `startAt` **:** `Int`
  - `recurrenceInHours` **:** `Int`

-}
updateSnapshotSchedule :
    String
    -> Int
    -> Int
    -> (UpdateSnapshotScheduleOptions -> UpdateSnapshotScheduleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateSnapshotScheduleOutput)
updateSnapshotSchedule volumeARN startAt recurrenceInHours setOptions =
    let
        requestInput =
            UpdateSnapshotScheduleInput
                volumeARN
                startAt
                recurrenceInHours
                options.description
                options.tags

        options =
            setOptions (UpdateSnapshotScheduleOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateSnapshotScheduleInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateSnapshotSchedule"
            (AWS.Core.Decode.ResultDecoder "UpdateSnapshotScheduleOutput" updateSnapshotScheduleOutputDecoder)
        )


{-| Options for a updateSnapshotSchedule request
-}
type alias UpdateSnapshotScheduleOptions =
    { description : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Updates the type of medium changer in a tape gateway. When you activate a tape gateway, you select a medium changer type for the tape gateway. This operation enables you to select a different type of medium changer after a tape gateway is activated. This operation is only supported in the tape gateway type.</p>

**Required Parameters**

  - `vTLDeviceARN` **:** `String`
  - `deviceType` **:** `String`

-}
updateVTLDeviceType :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateVTLDeviceTypeOutput)
updateVTLDeviceType vTLDeviceARN deviceType =
    let
        requestInput =
            UpdateVTLDeviceTypeInput
                vTLDeviceARN
                deviceType
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> updateVTLDeviceTypeInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateVTLDeviceType"
            (AWS.Core.Decode.ResultDecoder "UpdateVTLDeviceTypeOutput" updateVTLDeviceTypeOutputDecoder)
        )


{-| Type of HTTP response from activateGatew
-}
type alias ActivateGatewayOutput =
    { gatewayARN : Maybe String
    }


activateGatewayOutputDecoder : JD.Decoder ActivateGatewayOutput
activateGatewayOutputDecoder =
    JD.succeed ActivateGatewayOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from addCac
-}
type alias AddCacheOutput =
    { gatewayARN : Maybe String
    }


addCacheOutputDecoder : JD.Decoder AddCacheOutput
addCacheOutputDecoder =
    JD.succeed AddCacheOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from addTagsToResour
-}
type alias AddTagsToResourceOutput =
    { resourceARN : Maybe String
    }


addTagsToResourceOutputDecoder : JD.Decoder AddTagsToResourceOutput
addTagsToResourceOutputDecoder =
    JD.succeed AddTagsToResourceOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceARN", "resourceARN" ]
                JD.string
            )


{-| Type of HTTP response from addUploadBuff
-}
type alias AddUploadBufferOutput =
    { gatewayARN : Maybe String
    }


addUploadBufferOutputDecoder : JD.Decoder AddUploadBufferOutput
addUploadBufferOutputDecoder =
    JD.succeed AddUploadBufferOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from addWorkingStora
-}
type alias AddWorkingStorageOutput =
    { gatewayARN : Maybe String
    }


addWorkingStorageOutputDecoder : JD.Decoder AddWorkingStorageOutput
addWorkingStorageOutputDecoder =
    JD.succeed AddWorkingStorageOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from assignTapePo
-}
type alias AssignTapePoolOutput =
    { tapeARN : Maybe String
    }


assignTapePoolOutputDecoder : JD.Decoder AssignTapePoolOutput
assignTapePoolOutputDecoder =
    JD.succeed AssignTapePoolOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARN", "tapeARN" ]
                JD.string
            )


{-| Type of HTTP response from attachVolu
-}
type alias AttachVolumeOutput =
    { volumeARN : Maybe String
    , targetARN : Maybe String
    }


attachVolumeOutputDecoder : JD.Decoder AttachVolumeOutput
attachVolumeOutputDecoder =
    JD.succeed AttachVolumeOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetARN", "targetARN" ]
                JD.string
            )


{-|

<p>Describes an iSCSI cached volume.</p>

-}
type alias CachediSCSIVolume =
    { volumeARN : Maybe String
    , volumeId : Maybe String
    , volumeType : Maybe String
    , volumeStatus : Maybe String
    , volumeAttachmentStatus : Maybe String
    , volumeSizeInBytes : Maybe Int
    , volumeProgress : Maybe Float
    , sourceSnapshotId : Maybe String
    , volumeiSCSIAttributes : Maybe VolumeiSCSIAttributes
    , createdDate : Maybe Posix
    , volumeUsedInBytes : Maybe Int
    , kMSKey : Maybe String
    , targetName : Maybe String
    }


cachediSCSIVolumeDecoder : JD.Decoder CachediSCSIVolume
cachediSCSIVolumeDecoder =
    JD.succeed CachediSCSIVolume
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeId", "volumeId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeType", "volumeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeStatus", "volumeStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeAttachmentStatus", "volumeAttachmentStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeSizeInBytes", "volumeSizeInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeProgress", "volumeProgress" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceSnapshotId", "sourceSnapshotId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeiSCSIAttributes", "volumeiSCSIAttributes" ]
                volumeiSCSIAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreatedDate", "createdDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeUsedInBytes", "volumeUsedInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KMSKey", "kMSKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetName", "targetName" ]
                JD.string
            )


{-| Type of HTTP response from cancelArchiv
-}
type alias CancelArchivalOutput =
    { tapeARN : Maybe String
    }


cancelArchivalOutputDecoder : JD.Decoder CancelArchivalOutput
cancelArchivalOutputDecoder =
    JD.succeed CancelArchivalOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARN", "tapeARN" ]
                JD.string
            )


{-| Type of HTTP response from cancelRetriev
-}
type alias CancelRetrievalOutput =
    { tapeARN : Maybe String
    }


cancelRetrievalOutputDecoder : JD.Decoder CancelRetrievalOutput
cancelRetrievalOutputDecoder =
    JD.succeed CancelRetrievalOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARN", "tapeARN" ]
                JD.string
            )


{-|

<p>Describes Challenge-Handshake Authentication Protocol (CHAP) information that supports authentication between your gateway and iSCSI initiators.</p>

-}
type alias ChapInfo =
    { targetARN : Maybe String
    , secretToAuthenticateInitiator : Maybe String
    , initiatorName : Maybe String
    , secretToAuthenticateTarget : Maybe String
    }


chapInfoDecoder : JD.Decoder ChapInfo
chapInfoDecoder =
    JD.succeed ChapInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetARN", "targetARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecretToAuthenticateInitiator", "secretToAuthenticateInitiator" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InitiatorName", "initiatorName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecretToAuthenticateTarget", "secretToAuthenticateTarget" ]
                JD.string
            )


{-| Type of HTTP response from createCachediSCSIVolu
-}
type alias CreateCachediSCSIVolumeOutput =
    { volumeARN : Maybe String
    , targetARN : Maybe String
    }


createCachediSCSIVolumeOutputDecoder : JD.Decoder CreateCachediSCSIVolumeOutput
createCachediSCSIVolumeOutputDecoder =
    JD.succeed CreateCachediSCSIVolumeOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetARN", "targetARN" ]
                JD.string
            )


{-| Type of HTTP response from createNFSFileSha
-}
type alias CreateNFSFileShareOutput =
    { fileShareARN : Maybe String
    }


createNFSFileShareOutputDecoder : JD.Decoder CreateNFSFileShareOutput
createNFSFileShareOutputDecoder =
    JD.succeed CreateNFSFileShareOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareARN", "fileShareARN" ]
                JD.string
            )


{-| Type of HTTP response from createSMBFileSha
-}
type alias CreateSMBFileShareOutput =
    { fileShareARN : Maybe String
    }


createSMBFileShareOutputDecoder : JD.Decoder CreateSMBFileShareOutput
createSMBFileShareOutputDecoder =
    JD.succeed CreateSMBFileShareOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareARN", "fileShareARN" ]
                JD.string
            )


{-| Type of HTTP response from createSnapshotFromVolumeRecoveryPoi
-}
type alias CreateSnapshotFromVolumeRecoveryPointOutput =
    { snapshotId : Maybe String
    , volumeARN : Maybe String
    , volumeRecoveryPointTime : Maybe String
    }


createSnapshotFromVolumeRecoveryPointOutputDecoder : JD.Decoder CreateSnapshotFromVolumeRecoveryPointOutput
createSnapshotFromVolumeRecoveryPointOutputDecoder =
    JD.succeed CreateSnapshotFromVolumeRecoveryPointOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotId", "snapshotId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeRecoveryPointTime", "volumeRecoveryPointTime" ]
                JD.string
            )


{-| Type of HTTP response from createSnapsh
-}
type alias CreateSnapshotOutput =
    { volumeARN : Maybe String
    , snapshotId : Maybe String
    }


createSnapshotOutputDecoder : JD.Decoder CreateSnapshotOutput
createSnapshotOutputDecoder =
    JD.succeed CreateSnapshotOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SnapshotId", "snapshotId" ]
                JD.string
            )


{-| Type of HTTP response from createStorediSCSIVolu
-}
type alias CreateStorediSCSIVolumeOutput =
    { volumeARN : Maybe String
    , volumeSizeInBytes : Maybe Int
    , targetARN : Maybe String
    }


createStorediSCSIVolumeOutputDecoder : JD.Decoder CreateStorediSCSIVolumeOutput
createStorediSCSIVolumeOutputDecoder =
    JD.succeed CreateStorediSCSIVolumeOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeSizeInBytes", "volumeSizeInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetARN", "targetARN" ]
                JD.string
            )


{-| Type of HTTP response from createTapeWithBarco
-}
type alias CreateTapeWithBarcodeOutput =
    { tapeARN : Maybe String
    }


createTapeWithBarcodeOutputDecoder : JD.Decoder CreateTapeWithBarcodeOutput
createTapeWithBarcodeOutputDecoder =
    JD.succeed CreateTapeWithBarcodeOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARN", "tapeARN" ]
                JD.string
            )


{-| Type of HTTP response from createTap
-}
type alias CreateTapesOutput =
    { tapeARNs : Maybe (List String)
    }


createTapesOutputDecoder : JD.Decoder CreateTapesOutput
createTapesOutputDecoder =
    JD.succeed CreateTapesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARNs", "tapeARNs" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from deleteBandwidthRateLim
-}
type alias DeleteBandwidthRateLimitOutput =
    { gatewayARN : Maybe String
    }


deleteBandwidthRateLimitOutputDecoder : JD.Decoder DeleteBandwidthRateLimitOutput
deleteBandwidthRateLimitOutputDecoder =
    JD.succeed DeleteBandwidthRateLimitOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from deleteChapCredentia
-}
type alias DeleteChapCredentialsOutput =
    { targetARN : Maybe String
    , initiatorName : Maybe String
    }


deleteChapCredentialsOutputDecoder : JD.Decoder DeleteChapCredentialsOutput
deleteChapCredentialsOutputDecoder =
    JD.succeed DeleteChapCredentialsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetARN", "targetARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InitiatorName", "initiatorName" ]
                JD.string
            )


{-| Type of HTTP response from deleteFileSha
-}
type alias DeleteFileShareOutput =
    { fileShareARN : Maybe String
    }


deleteFileShareOutputDecoder : JD.Decoder DeleteFileShareOutput
deleteFileShareOutputDecoder =
    JD.succeed DeleteFileShareOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareARN", "fileShareARN" ]
                JD.string
            )


{-| Type of HTTP response from deleteGatew
-}
type alias DeleteGatewayOutput =
    { gatewayARN : Maybe String
    }


deleteGatewayOutputDecoder : JD.Decoder DeleteGatewayOutput
deleteGatewayOutputDecoder =
    JD.succeed DeleteGatewayOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from deleteSnapshotSchedu
-}
type alias DeleteSnapshotScheduleOutput =
    { volumeARN : Maybe String
    }


deleteSnapshotScheduleOutputDecoder : JD.Decoder DeleteSnapshotScheduleOutput
deleteSnapshotScheduleOutputDecoder =
    JD.succeed DeleteSnapshotScheduleOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )


{-| Type of HTTP response from deleteTapeArchi
-}
type alias DeleteTapeArchiveOutput =
    { tapeARN : Maybe String
    }


deleteTapeArchiveOutputDecoder : JD.Decoder DeleteTapeArchiveOutput
deleteTapeArchiveOutputDecoder =
    JD.succeed DeleteTapeArchiveOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARN", "tapeARN" ]
                JD.string
            )


{-| Type of HTTP response from deleteTa
-}
type alias DeleteTapeOutput =
    { tapeARN : Maybe String
    }


deleteTapeOutputDecoder : JD.Decoder DeleteTapeOutput
deleteTapeOutputDecoder =
    JD.succeed DeleteTapeOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARN", "tapeARN" ]
                JD.string
            )


{-| Type of HTTP response from deleteVolu
-}
type alias DeleteVolumeOutput =
    { volumeARN : Maybe String
    }


deleteVolumeOutputDecoder : JD.Decoder DeleteVolumeOutput
deleteVolumeOutputDecoder =
    JD.succeed DeleteVolumeOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )


{-| Type of HTTP response from describeBandwidthRateLim
-}
type alias DescribeBandwidthRateLimitOutput =
    { gatewayARN : Maybe String
    , averageUploadRateLimitInBitsPerSec : Maybe Int
    , averageDownloadRateLimitInBitsPerSec : Maybe Int
    }


describeBandwidthRateLimitOutputDecoder : JD.Decoder DescribeBandwidthRateLimitOutput
describeBandwidthRateLimitOutputDecoder =
    JD.succeed DescribeBandwidthRateLimitOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AverageUploadRateLimitInBitsPerSec", "averageUploadRateLimitInBitsPerSec" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AverageDownloadRateLimitInBitsPerSec", "averageDownloadRateLimitInBitsPerSec" ]
                JD.int
            )


{-| Type of HTTP response from describeCac
-}
type alias DescribeCacheOutput =
    { gatewayARN : Maybe String
    , diskIds : Maybe (List String)
    , cacheAllocatedInBytes : Maybe Int
    , cacheUsedPercentage : Maybe Float
    , cacheDirtyPercentage : Maybe Float
    , cacheHitPercentage : Maybe Float
    , cacheMissPercentage : Maybe Float
    }


describeCacheOutputDecoder : JD.Decoder DescribeCacheOutput
describeCacheOutputDecoder =
    JD.succeed DescribeCacheOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiskIds", "diskIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheAllocatedInBytes", "cacheAllocatedInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheUsedPercentage", "cacheUsedPercentage" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheDirtyPercentage", "cacheDirtyPercentage" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheHitPercentage", "cacheHitPercentage" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CacheMissPercentage", "cacheMissPercentage" ]
                JD.float
            )


{-| Type of HTTP response from describeCachediSCSIVolum
-}
type alias DescribeCachediSCSIVolumesOutput =
    { cachediSCSIVolumes : Maybe (List CachediSCSIVolume)
    }


describeCachediSCSIVolumesOutputDecoder : JD.Decoder DescribeCachediSCSIVolumesOutput
describeCachediSCSIVolumesOutputDecoder =
    JD.succeed DescribeCachediSCSIVolumesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CachediSCSIVolumes", "cachediSCSIVolumes" ]
                (JD.list cachediSCSIVolumeDecoder)
            )


{-| Type of HTTP response from describeChapCredentia
-}
type alias DescribeChapCredentialsOutput =
    { chapCredentials : Maybe (List ChapInfo)
    }


describeChapCredentialsOutputDecoder : JD.Decoder DescribeChapCredentialsOutput
describeChapCredentialsOutputDecoder =
    JD.succeed DescribeChapCredentialsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ChapCredentials", "chapCredentials" ]
                (JD.list chapInfoDecoder)
            )


{-| Type of HTTP response from describeGatewayInformati
-}
type alias DescribeGatewayInformationOutput =
    { gatewayARN : Maybe String
    , gatewayId : Maybe String
    , gatewayName : Maybe String
    , gatewayTimezone : Maybe String
    , gatewayState : Maybe String
    , gatewayNetworkInterfaces : Maybe (List NetworkInterface)
    , gatewayType : Maybe String
    , nextUpdateAvailabilityDate : Maybe String
    , lastSoftwareUpdate : Maybe String
    , ec2InstanceId : Maybe String
    , ec2InstanceRegion : Maybe String
    , tags : Maybe (List Tag)
    , vPCEndpoint : Maybe String
    }


describeGatewayInformationOutputDecoder : JD.Decoder DescribeGatewayInformationOutput
describeGatewayInformationOutputDecoder =
    JD.succeed DescribeGatewayInformationOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayId", "gatewayId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayName", "gatewayName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayTimezone", "gatewayTimezone" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayState", "gatewayState" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayNetworkInterfaces", "gatewayNetworkInterfaces" ]
                (JD.list networkInterfaceDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayType", "gatewayType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextUpdateAvailabilityDate", "nextUpdateAvailabilityDate" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastSoftwareUpdate", "lastSoftwareUpdate" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Ec2InstanceId", "ec2InstanceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Ec2InstanceRegion", "ec2InstanceRegion" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VPCEndpoint", "vPCEndpoint" ]
                JD.string
            )


{-| Type of HTTP response from describeMaintenanceStartTi
-}
type alias DescribeMaintenanceStartTimeOutput =
    { gatewayARN : Maybe String
    , hourOfDay : Maybe Int
    , minuteOfHour : Maybe Int
    , dayOfWeek : Maybe Int
    , dayOfMonth : Maybe Int
    , timezone : Maybe String
    }


describeMaintenanceStartTimeOutputDecoder : JD.Decoder DescribeMaintenanceStartTimeOutput
describeMaintenanceStartTimeOutputDecoder =
    JD.succeed DescribeMaintenanceStartTimeOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HourOfDay", "hourOfDay" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MinuteOfHour", "minuteOfHour" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DayOfWeek", "dayOfWeek" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DayOfMonth", "dayOfMonth" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Timezone", "timezone" ]
                JD.string
            )


{-| Type of HTTP response from describeNFSFileShar
-}
type alias DescribeNFSFileSharesOutput =
    { nFSFileShareInfoList : Maybe (List NFSFileShareInfo)
    }


describeNFSFileSharesOutputDecoder : JD.Decoder DescribeNFSFileSharesOutput
describeNFSFileSharesOutputDecoder =
    JD.succeed DescribeNFSFileSharesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NFSFileShareInfoList", "nFSFileShareInfoList" ]
                (JD.list nFSFileShareInfoDecoder)
            )


{-| Type of HTTP response from describeSMBFileShar
-}
type alias DescribeSMBFileSharesOutput =
    { sMBFileShareInfoList : Maybe (List SMBFileShareInfo)
    }


describeSMBFileSharesOutputDecoder : JD.Decoder DescribeSMBFileSharesOutput
describeSMBFileSharesOutputDecoder =
    JD.succeed DescribeSMBFileSharesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SMBFileShareInfoList", "sMBFileShareInfoList" ]
                (JD.list sMBFileShareInfoDecoder)
            )


{-| Type of HTTP response from describeSMBSettin
-}
type alias DescribeSMBSettingsOutput =
    { gatewayARN : Maybe String
    , domainName : Maybe String
    , sMBGuestPasswordSet : Maybe Bool
    , sMBSecurityStrategy : Maybe SMBSecurityStrategy
    }


describeSMBSettingsOutputDecoder : JD.Decoder DescribeSMBSettingsOutput
describeSMBSettingsOutputDecoder =
    JD.succeed DescribeSMBSettingsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DomainName", "domainName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SMBGuestPasswordSet", "sMBGuestPasswordSet" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SMBSecurityStrategy", "sMBSecurityStrategy" ]
                sMBSecurityStrategyDecoder
            )


{-| Type of HTTP response from describeSnapshotSchedu
-}
type alias DescribeSnapshotScheduleOutput =
    { volumeARN : Maybe String
    , startAt : Maybe Int
    , recurrenceInHours : Maybe Int
    , description : Maybe String
    , timezone : Maybe String
    }


describeSnapshotScheduleOutputDecoder : JD.Decoder DescribeSnapshotScheduleOutput
describeSnapshotScheduleOutputDecoder =
    JD.succeed DescribeSnapshotScheduleOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StartAt", "startAt" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RecurrenceInHours", "recurrenceInHours" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Timezone", "timezone" ]
                JD.string
            )


{-| Type of HTTP response from describeStorediSCSIVolum
-}
type alias DescribeStorediSCSIVolumesOutput =
    { storediSCSIVolumes : Maybe (List StorediSCSIVolume)
    }


describeStorediSCSIVolumesOutputDecoder : JD.Decoder DescribeStorediSCSIVolumesOutput
describeStorediSCSIVolumesOutputDecoder =
    JD.succeed DescribeStorediSCSIVolumesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StorediSCSIVolumes", "storediSCSIVolumes" ]
                (JD.list storediSCSIVolumeDecoder)
            )


{-| Type of HTTP response from describeTapeArchiv
-}
type alias DescribeTapeArchivesOutput =
    { tapeArchives : Maybe (List TapeArchive)
    , marker : Maybe String
    }


describeTapeArchivesOutputDecoder : JD.Decoder DescribeTapeArchivesOutput
describeTapeArchivesOutputDecoder =
    JD.succeed DescribeTapeArchivesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeArchives", "tapeArchives" ]
                (JD.list tapeArchiveDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from describeTapeRecoveryPoin
-}
type alias DescribeTapeRecoveryPointsOutput =
    { gatewayARN : Maybe String
    , tapeRecoveryPointInfos : Maybe (List TapeRecoveryPointInfo)
    , marker : Maybe String
    }


describeTapeRecoveryPointsOutputDecoder : JD.Decoder DescribeTapeRecoveryPointsOutput
describeTapeRecoveryPointsOutputDecoder =
    JD.succeed DescribeTapeRecoveryPointsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeRecoveryPointInfos", "tapeRecoveryPointInfos" ]
                (JD.list tapeRecoveryPointInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from describeTap
-}
type alias DescribeTapesOutput =
    { tapes : Maybe (List Tape)
    , marker : Maybe String
    }


describeTapesOutputDecoder : JD.Decoder DescribeTapesOutput
describeTapesOutputDecoder =
    JD.succeed DescribeTapesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tapes", "tapes" ]
                (JD.list tapeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from describeUploadBuff
-}
type alias DescribeUploadBufferOutput =
    { gatewayARN : Maybe String
    , diskIds : Maybe (List String)
    , uploadBufferUsedInBytes : Maybe Int
    , uploadBufferAllocatedInBytes : Maybe Int
    }


describeUploadBufferOutputDecoder : JD.Decoder DescribeUploadBufferOutput
describeUploadBufferOutputDecoder =
    JD.succeed DescribeUploadBufferOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiskIds", "diskIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UploadBufferUsedInBytes", "uploadBufferUsedInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UploadBufferAllocatedInBytes", "uploadBufferAllocatedInBytes" ]
                JD.int
            )


{-| Type of HTTP response from describeVTLDevic
-}
type alias DescribeVTLDevicesOutput =
    { gatewayARN : Maybe String
    , vTLDevices : Maybe (List VTLDevice)
    , marker : Maybe String
    }


describeVTLDevicesOutputDecoder : JD.Decoder DescribeVTLDevicesOutput
describeVTLDevicesOutputDecoder =
    JD.succeed DescribeVTLDevicesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VTLDevices", "vTLDevices" ]
                (JD.list vTLDeviceDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from describeWorkingStora
-}
type alias DescribeWorkingStorageOutput =
    { gatewayARN : Maybe String
    , diskIds : Maybe (List String)
    , workingStorageUsedInBytes : Maybe Int
    , workingStorageAllocatedInBytes : Maybe Int
    }


describeWorkingStorageOutputDecoder : JD.Decoder DescribeWorkingStorageOutput
describeWorkingStorageOutputDecoder =
    JD.succeed DescribeWorkingStorageOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiskIds", "diskIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "WorkingStorageUsedInBytes", "workingStorageUsedInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "WorkingStorageAllocatedInBytes", "workingStorageAllocatedInBytes" ]
                JD.int
            )


{-| Type of HTTP response from detachVolu
-}
type alias DetachVolumeOutput =
    { volumeARN : Maybe String
    }


detachVolumeOutputDecoder : JD.Decoder DetachVolumeOutput
detachVolumeOutputDecoder =
    JD.succeed DetachVolumeOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )


{-|

<p>Lists iSCSI information about a VTL device.</p>

-}
type alias DeviceiSCSIAttributes =
    { targetARN : Maybe String
    , networkInterfaceId : Maybe String
    , networkInterfacePort : Maybe Int
    , chapEnabled : Maybe Bool
    }


deviceiSCSIAttributesDecoder : JD.Decoder DeviceiSCSIAttributes
deviceiSCSIAttributesDecoder =
    JD.succeed DeviceiSCSIAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetARN", "targetARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NetworkInterfaceId", "networkInterfaceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NetworkInterfacePort", "networkInterfacePort" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ChapEnabled", "chapEnabled" ]
                JD.bool
            )


{-| Type of HTTP response from disableGatew
-}
type alias DisableGatewayOutput =
    { gatewayARN : Maybe String
    }


disableGatewayOutputDecoder : JD.Decoder DisableGatewayOutput
disableGatewayOutputDecoder =
    JD.succeed DisableGatewayOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-|

<p>Represents a gateway's local disk.</p>

-}
type alias Disk =
    { diskId : Maybe String
    , diskPath : Maybe String
    , diskNode : Maybe String
    , diskStatus : Maybe String
    , diskSizeInBytes : Maybe Int
    , diskAllocationType : Maybe String
    , diskAllocationResource : Maybe String
    , diskAttributeList : Maybe (List String)
    }


diskDecoder : JD.Decoder Disk
diskDecoder =
    JD.succeed Disk
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiskId", "diskId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiskPath", "diskPath" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiskNode", "diskNode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiskStatus", "diskStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiskSizeInBytes", "diskSizeInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiskAllocationType", "diskAllocationType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiskAllocationResource", "diskAllocationResource" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DiskAttributeList", "diskAttributeList" ]
                (JD.list JD.string)
            )


{-|

<p>Describes a file share.</p>

-}
type alias FileShareInfo =
    { fileShareType : Maybe FileShareType
    , fileShareARN : Maybe String
    , fileShareId : Maybe String
    , fileShareStatus : Maybe String
    , gatewayARN : Maybe String
    }


fileShareInfoDecoder : JD.Decoder FileShareInfo
fileShareInfoDecoder =
    JD.succeed FileShareInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareType", "fileShareType" ]
                fileShareTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareARN", "fileShareARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareId", "fileShareId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareStatus", "fileShareStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| One of

  - `FileShareType_NFS`
  - `FileShareType_SMB`

-}
type FileShareType
    = FileShareType_NFS
    | FileShareType_SMB


fileShareTypeDecoder : JD.Decoder FileShareType
fileShareTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NFS" ->
                        JD.succeed FileShareType_NFS

                    "SMB" ->
                        JD.succeed FileShareType_SMB

                    _ ->
                        JD.fail "bad thing"
            )


fileShareTypeToString : FileShareType -> String
fileShareTypeToString val =
    case val of
        FileShareType_NFS ->
            "NFS"

        FileShareType_SMB ->
            "SMB"


{-|

<p>Describes a gateway object.</p>

-}
type alias GatewayInfo =
    { gatewayId : Maybe String
    , gatewayARN : Maybe String
    , gatewayType : Maybe String
    , gatewayOperationalState : Maybe String
    , gatewayName : Maybe String
    , ec2InstanceId : Maybe String
    , ec2InstanceRegion : Maybe String
    }


gatewayInfoDecoder : JD.Decoder GatewayInfo
gatewayInfoDecoder =
    JD.succeed GatewayInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayId", "gatewayId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayType", "gatewayType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayOperationalState", "gatewayOperationalState" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayName", "gatewayName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Ec2InstanceId", "ec2InstanceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Ec2InstanceRegion", "ec2InstanceRegion" ]
                JD.string
            )


{-| Type of HTTP response from joinDoma
-}
type alias JoinDomainOutput =
    { gatewayARN : Maybe String
    }


joinDomainOutputDecoder : JD.Decoder JoinDomainOutput
joinDomainOutputDecoder =
    JD.succeed JoinDomainOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from listFileShar
-}
type alias ListFileSharesOutput =
    { marker : Maybe String
    , nextMarker : Maybe String
    , fileShareInfoList : Maybe (List FileShareInfo)
    }


listFileSharesOutputDecoder : JD.Decoder ListFileSharesOutput
listFileSharesOutputDecoder =
    JD.succeed ListFileSharesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextMarker", "nextMarker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareInfoList", "fileShareInfoList" ]
                (JD.list fileShareInfoDecoder)
            )


{-| Type of HTTP response from listGatewa
-}
type alias ListGatewaysOutput =
    { gateways : Maybe (List GatewayInfo)
    , marker : Maybe String
    }


listGatewaysOutputDecoder : JD.Decoder ListGatewaysOutput
listGatewaysOutputDecoder =
    JD.succeed ListGatewaysOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Gateways", "gateways" ]
                (JD.list gatewayInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listLocalDis
-}
type alias ListLocalDisksOutput =
    { gatewayARN : Maybe String
    , disks : Maybe (List Disk)
    }


listLocalDisksOutputDecoder : JD.Decoder ListLocalDisksOutput
listLocalDisksOutputDecoder =
    JD.succeed ListLocalDisksOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Disks", "disks" ]
                (JD.list diskDecoder)
            )


{-| Type of HTTP response from listTagsForResour
-}
type alias ListTagsForResourceOutput =
    { resourceARN : Maybe String
    , marker : Maybe String
    , tags : Maybe (List Tag)
    }


listTagsForResourceOutputDecoder : JD.Decoder ListTagsForResourceOutput
listTagsForResourceOutputDecoder =
    JD.succeed ListTagsForResourceOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceARN", "resourceARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-| Type of HTTP response from listTap
-}
type alias ListTapesOutput =
    { tapeInfos : Maybe (List TapeInfo)
    , marker : Maybe String
    }


listTapesOutputDecoder : JD.Decoder ListTapesOutput
listTapesOutputDecoder =
    JD.succeed ListTapesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeInfos", "tapeInfos" ]
                (JD.list tapeInfoDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listVolumeInitiato
-}
type alias ListVolumeInitiatorsOutput =
    { initiators : Maybe (List String)
    }


listVolumeInitiatorsOutputDecoder : JD.Decoder ListVolumeInitiatorsOutput
listVolumeInitiatorsOutputDecoder =
    JD.succeed ListVolumeInitiatorsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Initiators", "initiators" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from listVolumeRecoveryPoin
-}
type alias ListVolumeRecoveryPointsOutput =
    { gatewayARN : Maybe String
    , volumeRecoveryPointInfos : Maybe (List VolumeRecoveryPointInfo)
    }


listVolumeRecoveryPointsOutputDecoder : JD.Decoder ListVolumeRecoveryPointsOutput
listVolumeRecoveryPointsOutputDecoder =
    JD.succeed ListVolumeRecoveryPointsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeRecoveryPointInfos", "volumeRecoveryPointInfos" ]
                (JD.list volumeRecoveryPointInfoDecoder)
            )


{-| Type of HTTP response from listVolum
-}
type alias ListVolumesOutput =
    { gatewayARN : Maybe String
    , marker : Maybe String
    , volumeInfos : Maybe (List VolumeInfo)
    }


listVolumesOutputDecoder : JD.Decoder ListVolumesOutput
listVolumesOutputDecoder =
    JD.succeed ListVolumesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeInfos", "volumeInfos" ]
                (JD.list volumeInfoDecoder)
            )


{-|

<p>Describes Network File System (NFS) file share default values. Files and folders stored as Amazon S3 objects in S3 buckets don't, by default, have Unix file permissions assigned to them. Upon discovery in an S3 bucket by Storage Gateway, the S3 objects that represent files and folders are assigned these default Unix permissions. This operation is only supported for file gateways.</p>

-}
type alias NFSFileShareDefaults =
    { fileMode : Maybe String
    , directoryMode : Maybe String
    , groupId : Maybe Int
    , ownerId : Maybe Int
    }


nFSFileShareDefaultsDecoder : JD.Decoder NFSFileShareDefaults
nFSFileShareDefaultsDecoder =
    JD.succeed NFSFileShareDefaults
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileMode", "fileMode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DirectoryMode", "directoryMode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GroupId", "groupId" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OwnerId", "ownerId" ]
                JD.int
            )


{-|

<p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported in file gateways.</p>

-}
type alias NFSFileShareInfo =
    { nFSFileShareDefaults : Maybe NFSFileShareDefaults
    , fileShareARN : Maybe String
    , fileShareId : Maybe String
    , fileShareStatus : Maybe String
    , gatewayARN : Maybe String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , path : Maybe String
    , role : Maybe String
    , locationARN : Maybe String
    , defaultStorageClass : Maybe String
    , objectACL : Maybe ObjectACL
    , clientList : Maybe (List String)
    , squash : Maybe String
    , readOnly : Maybe Bool
    , guessMIMETypeEnabled : Maybe Bool
    , requesterPays : Maybe Bool
    , tags : Maybe (List Tag)
    }


nFSFileShareInfoDecoder : JD.Decoder NFSFileShareInfo
nFSFileShareInfoDecoder =
    JD.succeed NFSFileShareInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NFSFileShareDefaults", "nFSFileShareDefaults" ]
                nFSFileShareDefaultsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareARN", "fileShareARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareId", "fileShareId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareStatus", "fileShareStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KMSEncrypted", "kMSEncrypted" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KMSKey", "kMSKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Path", "path" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Role", "role" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LocationARN", "locationARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DefaultStorageClass", "defaultStorageClass" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ObjectACL", "objectACL" ]
                objectACLDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClientList", "clientList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Squash", "squash" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReadOnly", "readOnly" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GuessMIMETypeEnabled", "guessMIMETypeEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RequesterPays", "requesterPays" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-|

<p>Describes a gateway's network interface.</p>

-}
type alias NetworkInterface =
    { ipv4Address : Maybe String
    , macAddress : Maybe String
    , ipv6Address : Maybe String
    }


networkInterfaceDecoder : JD.Decoder NetworkInterface
networkInterfaceDecoder =
    JD.succeed NetworkInterface
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Ipv4Address", "ipv4Address" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MacAddress", "macAddress" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Ipv6Address", "ipv6Address" ]
                JD.string
            )


{-| Type of HTTP response from notifyWhenUpload
-}
type alias NotifyWhenUploadedOutput =
    { fileShareARN : Maybe String
    , notificationId : Maybe String
    }


notifyWhenUploadedOutputDecoder : JD.Decoder NotifyWhenUploadedOutput
notifyWhenUploadedOutputDecoder =
    JD.succeed NotifyWhenUploadedOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareARN", "fileShareARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NotificationId", "notificationId" ]
                JD.string
            )


{-| One of

  - `ObjectACL_private`
  - `ObjectACL_public-read`
  - `ObjectACL_public-read-write`
  - `ObjectACL_authenticated-read`
  - `ObjectACL_bucket-owner-read`
  - `ObjectACL_bucket-owner-full-control`
  - `ObjectACL_aws-exec-read`

-}
type ObjectACL
    = ObjectACL_private
    | ObjectACL_public_read
    | ObjectACL_public_read_write
    | ObjectACL_authenticated_read
    | ObjectACL_bucket_owner_read
    | ObjectACL_bucket_owner_full_control
    | ObjectACL_aws_exec_read


objectACLDecoder : JD.Decoder ObjectACL
objectACLDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "private" ->
                        JD.succeed ObjectACL_private

                    "public_read" ->
                        JD.succeed ObjectACL_public_read

                    "public_read_write" ->
                        JD.succeed ObjectACL_public_read_write

                    "authenticated_read" ->
                        JD.succeed ObjectACL_authenticated_read

                    "bucket_owner_read" ->
                        JD.succeed ObjectACL_bucket_owner_read

                    "bucket_owner_full_control" ->
                        JD.succeed ObjectACL_bucket_owner_full_control

                    "aws_exec_read" ->
                        JD.succeed ObjectACL_aws_exec_read

                    _ ->
                        JD.fail "bad thing"
            )


objectACLToString : ObjectACL -> String
objectACLToString val =
    case val of
        ObjectACL_private ->
            "private"

        ObjectACL_public_read ->
            "public_read"

        ObjectACL_public_read_write ->
            "public_read_write"

        ObjectACL_authenticated_read ->
            "authenticated_read"

        ObjectACL_bucket_owner_read ->
            "bucket_owner_read"

        ObjectACL_bucket_owner_full_control ->
            "bucket_owner_full_control"

        ObjectACL_aws_exec_read ->
            "aws_exec_read"


{-| Type of HTTP response from refreshCac
-}
type alias RefreshCacheOutput =
    { fileShareARN : Maybe String
    , notificationId : Maybe String
    }


refreshCacheOutputDecoder : JD.Decoder RefreshCacheOutput
refreshCacheOutputDecoder =
    JD.succeed RefreshCacheOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareARN", "fileShareARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NotificationId", "notificationId" ]
                JD.string
            )


{-| Type of HTTP response from removeTagsFromResour
-}
type alias RemoveTagsFromResourceOutput =
    { resourceARN : Maybe String
    }


removeTagsFromResourceOutputDecoder : JD.Decoder RemoveTagsFromResourceOutput
removeTagsFromResourceOutputDecoder =
    JD.succeed RemoveTagsFromResourceOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceARN", "resourceARN" ]
                JD.string
            )


{-| Type of HTTP response from resetCac
-}
type alias ResetCacheOutput =
    { gatewayARN : Maybe String
    }


resetCacheOutputDecoder : JD.Decoder ResetCacheOutput
resetCacheOutputDecoder =
    JD.succeed ResetCacheOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from retrieveTapeArchi
-}
type alias RetrieveTapeArchiveOutput =
    { tapeARN : Maybe String
    }


retrieveTapeArchiveOutputDecoder : JD.Decoder RetrieveTapeArchiveOutput
retrieveTapeArchiveOutputDecoder =
    JD.succeed RetrieveTapeArchiveOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARN", "tapeARN" ]
                JD.string
            )


{-| Type of HTTP response from retrieveTapeRecoveryPoi
-}
type alias RetrieveTapeRecoveryPointOutput =
    { tapeARN : Maybe String
    }


retrieveTapeRecoveryPointOutputDecoder : JD.Decoder RetrieveTapeRecoveryPointOutput
retrieveTapeRecoveryPointOutputDecoder =
    JD.succeed RetrieveTapeRecoveryPointOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARN", "tapeARN" ]
                JD.string
            )


{-|

<p>The Windows file permissions and ownership information assigned, by default, to native S3 objects when file gateway discovers them in S3 buckets. This operation is only supported for file gateways.</p>

-}
type alias SMBFileShareInfo =
    { fileShareARN : Maybe String
    , fileShareId : Maybe String
    , fileShareStatus : Maybe String
    , gatewayARN : Maybe String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , path : Maybe String
    , role : Maybe String
    , locationARN : Maybe String
    , defaultStorageClass : Maybe String
    , objectACL : Maybe ObjectACL
    , readOnly : Maybe Bool
    , guessMIMETypeEnabled : Maybe Bool
    , requesterPays : Maybe Bool
    , sMBACLEnabled : Maybe Bool
    , adminUserList : Maybe (List String)
    , validUserList : Maybe (List String)
    , invalidUserList : Maybe (List String)
    , authentication : Maybe String
    , tags : Maybe (List Tag)
    }


sMBFileShareInfoDecoder : JD.Decoder SMBFileShareInfo
sMBFileShareInfoDecoder =
    JD.succeed SMBFileShareInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareARN", "fileShareARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareId", "fileShareId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareStatus", "fileShareStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KMSEncrypted", "kMSEncrypted" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KMSKey", "kMSKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Path", "path" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Role", "role" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LocationARN", "locationARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DefaultStorageClass", "defaultStorageClass" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ObjectACL", "objectACL" ]
                objectACLDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReadOnly", "readOnly" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GuessMIMETypeEnabled", "guessMIMETypeEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RequesterPays", "requesterPays" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SMBACLEnabled", "sMBACLEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AdminUserList", "adminUserList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ValidUserList", "validUserList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InvalidUserList", "invalidUserList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Authentication", "authentication" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-| One of

  - `SMBSecurityStrategy_ClientSpecified`
  - `SMBSecurityStrategy_MandatorySigning`
  - `SMBSecurityStrategy_MandatoryEncryption`

-}
type SMBSecurityStrategy
    = SMBSecurityStrategy_ClientSpecified
    | SMBSecurityStrategy_MandatorySigning
    | SMBSecurityStrategy_MandatoryEncryption


sMBSecurityStrategyDecoder : JD.Decoder SMBSecurityStrategy
sMBSecurityStrategyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ClientSpecified" ->
                        JD.succeed SMBSecurityStrategy_ClientSpecified

                    "MandatorySigning" ->
                        JD.succeed SMBSecurityStrategy_MandatorySigning

                    "MandatoryEncryption" ->
                        JD.succeed SMBSecurityStrategy_MandatoryEncryption

                    _ ->
                        JD.fail "bad thing"
            )


sMBSecurityStrategyToString : SMBSecurityStrategy -> String
sMBSecurityStrategyToString val =
    case val of
        SMBSecurityStrategy_ClientSpecified ->
            "ClientSpecified"

        SMBSecurityStrategy_MandatorySigning ->
            "MandatorySigning"

        SMBSecurityStrategy_MandatoryEncryption ->
            "MandatoryEncryption"


{-| Type of HTTP response from setLocalConsolePasswo
-}
type alias SetLocalConsolePasswordOutput =
    { gatewayARN : Maybe String
    }


setLocalConsolePasswordOutputDecoder : JD.Decoder SetLocalConsolePasswordOutput
setLocalConsolePasswordOutputDecoder =
    JD.succeed SetLocalConsolePasswordOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from setSMBGuestPasswo
-}
type alias SetSMBGuestPasswordOutput =
    { gatewayARN : Maybe String
    }


setSMBGuestPasswordOutputDecoder : JD.Decoder SetSMBGuestPasswordOutput
setSMBGuestPasswordOutputDecoder =
    JD.succeed SetSMBGuestPasswordOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from shutdownGatew
-}
type alias ShutdownGatewayOutput =
    { gatewayARN : Maybe String
    }


shutdownGatewayOutputDecoder : JD.Decoder ShutdownGatewayOutput
shutdownGatewayOutputDecoder =
    JD.succeed ShutdownGatewayOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from startGatew
-}
type alias StartGatewayOutput =
    { gatewayARN : Maybe String
    }


startGatewayOutputDecoder : JD.Decoder StartGatewayOutput
startGatewayOutputDecoder =
    JD.succeed StartGatewayOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-|

<p>Describes an iSCSI stored volume.</p>

-}
type alias StorediSCSIVolume =
    { volumeARN : Maybe String
    , volumeId : Maybe String
    , volumeType : Maybe String
    , volumeStatus : Maybe String
    , volumeAttachmentStatus : Maybe String
    , volumeSizeInBytes : Maybe Int
    , volumeProgress : Maybe Float
    , volumeDiskId : Maybe String
    , sourceSnapshotId : Maybe String
    , preservedExistingData : Maybe Bool
    , volumeiSCSIAttributes : Maybe VolumeiSCSIAttributes
    , createdDate : Maybe Posix
    , volumeUsedInBytes : Maybe Int
    , kMSKey : Maybe String
    , targetName : Maybe String
    }


storediSCSIVolumeDecoder : JD.Decoder StorediSCSIVolume
storediSCSIVolumeDecoder =
    JD.succeed StorediSCSIVolume
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeId", "volumeId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeType", "volumeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeStatus", "volumeStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeAttachmentStatus", "volumeAttachmentStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeSizeInBytes", "volumeSizeInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeProgress", "volumeProgress" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeDiskId", "volumeDiskId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourceSnapshotId", "sourceSnapshotId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PreservedExistingData", "preservedExistingData" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeiSCSIAttributes", "volumeiSCSIAttributes" ]
                volumeiSCSIAttributesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreatedDate", "createdDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeUsedInBytes", "volumeUsedInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KMSKey", "kMSKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetName", "targetName" ]
                JD.string
            )


{-|

<p>A key-value pair that helps you manage, filter, and search for your resource. Allowed characters: letters, white space, and numbers, representable in UTF-8, and the following characters: + - = . _ : /</p>

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


{-|

<p>Describes a virtual tape object.</p>

-}
type alias Tape =
    { tapeARN : Maybe String
    , tapeBarcode : Maybe String
    , tapeCreatedDate : Maybe Posix
    , tapeSizeInBytes : Maybe Int
    , tapeStatus : Maybe String
    , vTLDevice : Maybe String
    , progress : Maybe Float
    , tapeUsedInBytes : Maybe Int
    , kMSKey : Maybe String
    , poolId : Maybe String
    }


tapeDecoder : JD.Decoder Tape
tapeDecoder =
    JD.succeed Tape
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARN", "tapeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeBarcode", "tapeBarcode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeCreatedDate", "tapeCreatedDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeSizeInBytes", "tapeSizeInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeStatus", "tapeStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VTLDevice", "vTLDevice" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Progress", "progress" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeUsedInBytes", "tapeUsedInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KMSKey", "kMSKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PoolId", "poolId" ]
                JD.string
            )


{-|

<p>Represents a virtual tape that is archived in the virtual tape shelf (VTS).</p>

-}
type alias TapeArchive =
    { tapeARN : Maybe String
    , tapeBarcode : Maybe String
    , tapeCreatedDate : Maybe Posix
    , tapeSizeInBytes : Maybe Int
    , completionTime : Maybe Posix
    , retrievedTo : Maybe String
    , tapeStatus : Maybe String
    , tapeUsedInBytes : Maybe Int
    , kMSKey : Maybe String
    , poolId : Maybe String
    }


tapeArchiveDecoder : JD.Decoder TapeArchive
tapeArchiveDecoder =
    JD.succeed TapeArchive
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARN", "tapeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeBarcode", "tapeBarcode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeCreatedDate", "tapeCreatedDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeSizeInBytes", "tapeSizeInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CompletionTime", "completionTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RetrievedTo", "retrievedTo" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeStatus", "tapeStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeUsedInBytes", "tapeUsedInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KMSKey", "kMSKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PoolId", "poolId" ]
                JD.string
            )


{-|

<p>Describes a virtual tape.</p>

-}
type alias TapeInfo =
    { tapeARN : Maybe String
    , tapeBarcode : Maybe String
    , tapeSizeInBytes : Maybe Int
    , tapeStatus : Maybe String
    , gatewayARN : Maybe String
    , poolId : Maybe String
    }


tapeInfoDecoder : JD.Decoder TapeInfo
tapeInfoDecoder =
    JD.succeed TapeInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARN", "tapeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeBarcode", "tapeBarcode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeSizeInBytes", "tapeSizeInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeStatus", "tapeStatus" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PoolId", "poolId" ]
                JD.string
            )


{-|

<p>Describes a recovery point.</p>

-}
type alias TapeRecoveryPointInfo =
    { tapeARN : Maybe String
    , tapeRecoveryPointTime : Maybe Posix
    , tapeSizeInBytes : Maybe Int
    , tapeStatus : Maybe String
    }


tapeRecoveryPointInfoDecoder : JD.Decoder TapeRecoveryPointInfo
tapeRecoveryPointInfoDecoder =
    JD.succeed TapeRecoveryPointInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeARN", "tapeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeRecoveryPointTime", "tapeRecoveryPointTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeSizeInBytes", "tapeSizeInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TapeStatus", "tapeStatus" ]
                JD.string
            )


{-| Type of HTTP response from updateBandwidthRateLim
-}
type alias UpdateBandwidthRateLimitOutput =
    { gatewayARN : Maybe String
    }


updateBandwidthRateLimitOutputDecoder : JD.Decoder UpdateBandwidthRateLimitOutput
updateBandwidthRateLimitOutputDecoder =
    JD.succeed UpdateBandwidthRateLimitOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from updateChapCredentia
-}
type alias UpdateChapCredentialsOutput =
    { targetARN : Maybe String
    , initiatorName : Maybe String
    }


updateChapCredentialsOutputDecoder : JD.Decoder UpdateChapCredentialsOutput
updateChapCredentialsOutputDecoder =
    JD.succeed UpdateChapCredentialsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetARN", "targetARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InitiatorName", "initiatorName" ]
                JD.string
            )


{-| Type of HTTP response from updateGatewayInformati
-}
type alias UpdateGatewayInformationOutput =
    { gatewayARN : Maybe String
    , gatewayName : Maybe String
    }


updateGatewayInformationOutputDecoder : JD.Decoder UpdateGatewayInformationOutput
updateGatewayInformationOutputDecoder =
    JD.succeed UpdateGatewayInformationOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayName", "gatewayName" ]
                JD.string
            )


{-| Type of HTTP response from updateGatewaySoftwareN
-}
type alias UpdateGatewaySoftwareNowOutput =
    { gatewayARN : Maybe String
    }


updateGatewaySoftwareNowOutputDecoder : JD.Decoder UpdateGatewaySoftwareNowOutput
updateGatewaySoftwareNowOutputDecoder =
    JD.succeed UpdateGatewaySoftwareNowOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from updateMaintenanceStartTi
-}
type alias UpdateMaintenanceStartTimeOutput =
    { gatewayARN : Maybe String
    }


updateMaintenanceStartTimeOutputDecoder : JD.Decoder UpdateMaintenanceStartTimeOutput
updateMaintenanceStartTimeOutputDecoder =
    JD.succeed UpdateMaintenanceStartTimeOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from updateNFSFileSha
-}
type alias UpdateNFSFileShareOutput =
    { fileShareARN : Maybe String
    }


updateNFSFileShareOutputDecoder : JD.Decoder UpdateNFSFileShareOutput
updateNFSFileShareOutputDecoder =
    JD.succeed UpdateNFSFileShareOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareARN", "fileShareARN" ]
                JD.string
            )


{-| Type of HTTP response from updateSMBFileSha
-}
type alias UpdateSMBFileShareOutput =
    { fileShareARN : Maybe String
    }


updateSMBFileShareOutputDecoder : JD.Decoder UpdateSMBFileShareOutput
updateSMBFileShareOutputDecoder =
    JD.succeed UpdateSMBFileShareOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "FileShareARN", "fileShareARN" ]
                JD.string
            )


{-| Type of HTTP response from updateSMBSecurityStrate
-}
type alias UpdateSMBSecurityStrategyOutput =
    { gatewayARN : Maybe String
    }


updateSMBSecurityStrategyOutputDecoder : JD.Decoder UpdateSMBSecurityStrategyOutput
updateSMBSecurityStrategyOutputDecoder =
    JD.succeed UpdateSMBSecurityStrategyOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )


{-| Type of HTTP response from updateSnapshotSchedu
-}
type alias UpdateSnapshotScheduleOutput =
    { volumeARN : Maybe String
    }


updateSnapshotScheduleOutputDecoder : JD.Decoder UpdateSnapshotScheduleOutput
updateSnapshotScheduleOutputDecoder =
    JD.succeed UpdateSnapshotScheduleOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )


{-| Type of HTTP response from updateVTLDeviceTy
-}
type alias UpdateVTLDeviceTypeOutput =
    { vTLDeviceARN : Maybe String
    }


updateVTLDeviceTypeOutputDecoder : JD.Decoder UpdateVTLDeviceTypeOutput
updateVTLDeviceTypeOutputDecoder =
    JD.succeed UpdateVTLDeviceTypeOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VTLDeviceARN", "vTLDeviceARN" ]
                JD.string
            )


{-|

<p>Represents a device object associated with a tape gateway.</p>

-}
type alias VTLDevice =
    { vTLDeviceARN : Maybe String
    , vTLDeviceType : Maybe String
    , vTLDeviceVendor : Maybe String
    , vTLDeviceProductIdentifier : Maybe String
    , deviceiSCSIAttributes : Maybe DeviceiSCSIAttributes
    }


vTLDeviceDecoder : JD.Decoder VTLDevice
vTLDeviceDecoder =
    JD.succeed VTLDevice
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VTLDeviceARN", "vTLDeviceARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VTLDeviceType", "vTLDeviceType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VTLDeviceVendor", "vTLDeviceVendor" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VTLDeviceProductIdentifier", "vTLDeviceProductIdentifier" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeviceiSCSIAttributes", "deviceiSCSIAttributes" ]
                deviceiSCSIAttributesDecoder
            )


{-|

<p>Describes a storage volume object.</p>

-}
type alias VolumeInfo =
    { volumeARN : Maybe String
    , volumeId : Maybe String
    , gatewayARN : Maybe String
    , gatewayId : Maybe String
    , volumeType : Maybe String
    , volumeSizeInBytes : Maybe Int
    , volumeAttachmentStatus : Maybe String
    }


volumeInfoDecoder : JD.Decoder VolumeInfo
volumeInfoDecoder =
    JD.succeed VolumeInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeId", "volumeId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayARN", "gatewayARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GatewayId", "gatewayId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeType", "volumeType" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeSizeInBytes", "volumeSizeInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeAttachmentStatus", "volumeAttachmentStatus" ]
                JD.string
            )


{-|

<p>Describes a storage volume recovery point object.</p>

-}
type alias VolumeRecoveryPointInfo =
    { volumeARN : Maybe String
    , volumeSizeInBytes : Maybe Int
    , volumeUsageInBytes : Maybe Int
    , volumeRecoveryPointTime : Maybe String
    }


volumeRecoveryPointInfoDecoder : JD.Decoder VolumeRecoveryPointInfo
volumeRecoveryPointInfoDecoder =
    JD.succeed VolumeRecoveryPointInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeARN", "volumeARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeSizeInBytes", "volumeSizeInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeUsageInBytes", "volumeUsageInBytes" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VolumeRecoveryPointTime", "volumeRecoveryPointTime" ]
                JD.string
            )


{-|

<p>Lists iSCSI information about a volume.</p>

-}
type alias VolumeiSCSIAttributes =
    { targetARN : Maybe String
    , networkInterfaceId : Maybe String
    , networkInterfacePort : Maybe Int
    , lunNumber : Maybe Int
    , chapEnabled : Maybe Bool
    }


volumeiSCSIAttributesDecoder : JD.Decoder VolumeiSCSIAttributes
volumeiSCSIAttributesDecoder =
    JD.succeed VolumeiSCSIAttributes
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TargetARN", "targetARN" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NetworkInterfaceId", "networkInterfaceId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NetworkInterfacePort", "networkInterfacePort" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LunNumber", "lunNumber" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ChapEnabled", "chapEnabled" ]
                JD.bool
            )


{-|

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>ActivateGatewayInput$ActivationKey</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayName</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayRegion</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayTimezone</a> </p> </li> <li> <p> <a>ActivateGatewayInput$GatewayType</a> </p> </li> <li> <p> <a>ActivateGatewayInput$TapeDriveType</a> </p> </li> <li> <p> <a>ActivateGatewayInput$MediumChangerType</a> </p> </li> </ul>

-}
type alias ActivateGatewayInput =
    { activationKey : String
    , gatewayName : String
    , gatewayTimezone : String
    , gatewayRegion : String
    , gatewayType : Maybe String
    , tapeDriveType : Maybe String
    , mediumChangerType : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias AddCacheInput =
    { gatewayARN : String
    , diskIds : List String
    }


{-|

<p>AddTagsToResourceInput</p>

-}
type alias AddTagsToResourceInput =
    { resourceARN : String
    , tags : List Tag
    }


{-| undefined
-}
type alias AddUploadBufferInput =
    { gatewayARN : String
    , diskIds : List String
    }


{-|

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>AddWorkingStorageInput$DiskIds</a> </p> </li> </ul>

-}
type alias AddWorkingStorageInput =
    { gatewayARN : String
    , diskIds : List String
    }


{-| undefined
-}
type alias AssignTapePoolInput =
    { tapeARN : String
    , poolId : String
    }


{-|

<p>AttachVolumeInput</p>

-}
type alias AttachVolumeInput =
    { gatewayARN : String
    , targetName : Maybe String
    , volumeARN : String
    , networkInterfaceId : String
    , diskId : Maybe String
    }


{-|

<p>CancelArchivalInput</p>

-}
type alias CancelArchivalInput =
    { gatewayARN : String
    , tapeARN : String
    }


{-|

<p>CancelRetrievalInput</p>

-}
type alias CancelRetrievalInput =
    { gatewayARN : String
    , tapeARN : String
    }


{-| undefined
-}
type alias CreateCachediSCSIVolumeInput =
    { gatewayARN : String
    , volumeSizeInBytes : Int
    , snapshotId : Maybe String
    , targetName : String
    , sourceVolumeARN : Maybe String
    , networkInterfaceId : String
    , clientToken : String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>CreateNFSFileShareInput</p>

-}
type alias CreateNFSFileShareInput =
    { clientToken : String
    , nFSFileShareDefaults : Maybe NFSFileShareDefaults
    , gatewayARN : String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , role : String
    , locationARN : String
    , defaultStorageClass : Maybe String
    , objectACL : Maybe ObjectACL
    , clientList : Maybe (List String)
    , squash : Maybe String
    , readOnly : Maybe Bool
    , guessMIMETypeEnabled : Maybe Bool
    , requesterPays : Maybe Bool
    , tags : Maybe (List Tag)
    }


{-|

<p>CreateSMBFileShareInput</p>

-}
type alias CreateSMBFileShareInput =
    { clientToken : String
    , gatewayARN : String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , role : String
    , locationARN : String
    , defaultStorageClass : Maybe String
    , objectACL : Maybe ObjectACL
    , readOnly : Maybe Bool
    , guessMIMETypeEnabled : Maybe Bool
    , requesterPays : Maybe Bool
    , sMBACLEnabled : Maybe Bool
    , adminUserList : Maybe (List String)
    , validUserList : Maybe (List String)
    , invalidUserList : Maybe (List String)
    , authentication : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateSnapshotFromVolumeRecoveryPointInput =
    { volumeARN : String
    , snapshotDescription : String
    }


{-|

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>CreateSnapshotInput$SnapshotDescription</a> </p> </li> <li> <p> <a>CreateSnapshotInput$VolumeARN</a> </p> </li> </ul>

-}
type alias CreateSnapshotInput =
    { volumeARN : String
    , snapshotDescription : String
    , tags : Maybe (List Tag)
    }


{-|

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>CreateStorediSCSIVolumeInput$DiskId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$NetworkInterfaceId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$PreserveExistingData</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$SnapshotId</a> </p> </li> <li> <p> <a>CreateStorediSCSIVolumeInput$TargetName</a> </p> </li> </ul>

-}
type alias CreateStorediSCSIVolumeInput =
    { gatewayARN : String
    , diskId : String
    , snapshotId : Maybe String
    , preserveExistingData : Bool
    , targetName : String
    , networkInterfaceId : String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>CreateTapeWithBarcodeInput</p>

-}
type alias CreateTapeWithBarcodeInput =
    { gatewayARN : String
    , tapeSizeInBytes : Int
    , tapeBarcode : String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , poolId : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>CreateTapesInput</p>

-}
type alias CreateTapesInput =
    { gatewayARN : String
    , tapeSizeInBytes : Int
    , clientToken : String
    , numTapesToCreate : Int
    , tapeBarcodePrefix : String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , poolId : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>DeleteBandwidthRateLimitInput$BandwidthType</a> </p> </li> </ul>

-}
type alias DeleteBandwidthRateLimitInput =
    { gatewayARN : String
    , bandwidthType : String
    }


{-|

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>DeleteChapCredentialsInput$InitiatorName</a> </p> </li> <li> <p> <a>DeleteChapCredentialsInput$TargetARN</a> </p> </li> </ul>

-}
type alias DeleteChapCredentialsInput =
    { targetARN : String
    , initiatorName : String
    }


{-|

<p>DeleteFileShareInput</p>

-}
type alias DeleteFileShareInput =
    { fileShareARN : String
    , forceDelete : Maybe Bool
    }


{-|

<p>A JSON object containing the ID of the gateway to delete.</p>

-}
type alias DeleteGatewayInput =
    { gatewayARN : String
    }


{-| undefined
-}
type alias DeleteSnapshotScheduleInput =
    { volumeARN : String
    }


{-|

<p>DeleteTapeArchiveInput</p>

-}
type alias DeleteTapeArchiveInput =
    { tapeARN : String
    }


{-|

<p>DeleteTapeInput</p>

-}
type alias DeleteTapeInput =
    { gatewayARN : String
    , tapeARN : String
    }


{-|

<p>A JSON object containing the <a>DeleteVolumeInput$VolumeARN</a> to delete.</p>

-}
type alias DeleteVolumeInput =
    { volumeARN : String
    }


{-|

<p>A JSON object containing the of the gateway.</p>

-}
type alias DescribeBandwidthRateLimitInput =
    { gatewayARN : String
    }


{-| undefined
-}
type alias DescribeCacheInput =
    { gatewayARN : String
    }


{-| undefined
-}
type alias DescribeCachediSCSIVolumesInput =
    { volumeARNs : List String
    }


{-|

<p>A JSON object containing the Amazon Resource Name (ARN) of the iSCSI volume target.</p>

-}
type alias DescribeChapCredentialsInput =
    { targetARN : String
    }


{-|

<p>A JSON object containing the ID of the gateway.</p>

-}
type alias DescribeGatewayInformationInput =
    { gatewayARN : String
    }


{-|

<p>A JSON object containing the of the gateway.</p>

-}
type alias DescribeMaintenanceStartTimeInput =
    { gatewayARN : String
    }


{-|

<p>DescribeNFSFileSharesInput</p>

-}
type alias DescribeNFSFileSharesInput =
    { fileShareARNList : List String
    }


{-|

<p>DescribeSMBFileSharesInput</p>

-}
type alias DescribeSMBFileSharesInput =
    { fileShareARNList : List String
    }


{-| undefined
-}
type alias DescribeSMBSettingsInput =
    { gatewayARN : String
    }


{-|

<p>A JSON object containing the <a>DescribeSnapshotScheduleInput$VolumeARN</a> of the volume.</p>

-}
type alias DescribeSnapshotScheduleInput =
    { volumeARN : String
    }


{-|

<p>A JSON object containing a list of <a>DescribeStorediSCSIVolumesInput$VolumeARNs</a>.</p>

-}
type alias DescribeStorediSCSIVolumesInput =
    { volumeARNs : List String
    }


{-|

<p>DescribeTapeArchivesInput</p>

-}
type alias DescribeTapeArchivesInput =
    { tapeARNs : Maybe (List String)
    , marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>DescribeTapeRecoveryPointsInput</p>

-}
type alias DescribeTapeRecoveryPointsInput =
    { gatewayARN : String
    , marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>DescribeTapesInput</p>

-}
type alias DescribeTapesInput =
    { gatewayARN : String
    , tapeARNs : Maybe (List String)
    , marker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DescribeUploadBufferInput =
    { gatewayARN : String
    }


{-|

<p>DescribeVTLDevicesInput</p>

-}
type alias DescribeVTLDevicesInput =
    { gatewayARN : String
    , vTLDeviceARNs : Maybe (List String)
    , marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>A JSON object containing the of the gateway.</p>

-}
type alias DescribeWorkingStorageInput =
    { gatewayARN : String
    }


{-|

<p>AttachVolumeInput</p>

-}
type alias DetachVolumeInput =
    { volumeARN : String
    , forceDetach : Maybe Bool
    }


{-|

<p>DisableGatewayInput</p>

-}
type alias DisableGatewayInput =
    { gatewayARN : String
    }


{-|

<p>JoinDomainInput</p>

-}
type alias JoinDomainInput =
    { gatewayARN : String
    , domainName : String
    , organizationalUnit : Maybe String
    , domainControllers : Maybe (List String)
    , userName : String
    , password : String
    }


{-|

<p>ListFileShareInput</p>

-}
type alias ListFileSharesInput =
    { gatewayARN : Maybe String
    , limit : Maybe Int
    , marker : Maybe String
    }


{-|

<p>A JSON object containing zero or more of the following fields:</p> <ul> <li> <p> <a>ListGatewaysInput$Limit</a> </p> </li> <li> <p> <a>ListGatewaysInput$Marker</a> </p> </li> </ul>

-}
type alias ListGatewaysInput =
    { marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>A JSON object containing the of the gateway.</p>

-}
type alias ListLocalDisksInput =
    { gatewayARN : String
    }


{-|

<p>ListTagsForResourceInput</p>

-}
type alias ListTagsForResourceInput =
    { resourceARN : String
    , marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>A JSON object that contains one or more of the following fields:</p> <ul> <li> <p> <a>ListTapesInput$Limit</a> </p> </li> <li> <p> <a>ListTapesInput$Marker</a> </p> </li> <li> <p> <a>ListTapesInput$TapeARNs</a> </p> </li> </ul>

-}
type alias ListTapesInput =
    { tapeARNs : Maybe (List String)
    , marker : Maybe String
    , limit : Maybe Int
    }


{-|

<p>ListVolumeInitiatorsInput</p>

-}
type alias ListVolumeInitiatorsInput =
    { volumeARN : String
    }


{-| undefined
-}
type alias ListVolumeRecoveryPointsInput =
    { gatewayARN : String
    }


{-|

<p>A JSON object that contains one or more of the following fields:</p> <ul> <li> <p> <a>ListVolumesInput$Limit</a> </p> </li> <li> <p> <a>ListVolumesInput$Marker</a> </p> </li> </ul>

-}
type alias ListVolumesInput =
    { gatewayARN : Maybe String
    , marker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias NotifyWhenUploadedInput =
    { fileShareARN : String
    }


{-|

<p>RefreshCacheInput</p>

-}
type alias RefreshCacheInput =
    { fileShareARN : String
    , folderList : Maybe (List String)
    , recursive : Maybe Bool
    }


{-|

<p>RemoveTagsFromResourceInput</p>

-}
type alias RemoveTagsFromResourceInput =
    { resourceARN : String
    , tagKeys : List String
    }


{-| undefined
-}
type alias ResetCacheInput =
    { gatewayARN : String
    }


{-|

<p>RetrieveTapeArchiveInput</p>

-}
type alias RetrieveTapeArchiveInput =
    { tapeARN : String
    , gatewayARN : String
    }


{-|

<p>RetrieveTapeRecoveryPointInput</p>

-}
type alias RetrieveTapeRecoveryPointInput =
    { tapeARN : String
    , gatewayARN : String
    }


{-|

<p>SetLocalConsolePasswordInput</p>

-}
type alias SetLocalConsolePasswordInput =
    { gatewayARN : String
    , localConsolePassword : String
    }


{-|

<p>SetSMBGuestPasswordInput</p>

-}
type alias SetSMBGuestPasswordInput =
    { gatewayARN : String
    , password : String
    }


{-|

<p>A JSON object containing the of the gateway to shut down.</p>

-}
type alias ShutdownGatewayInput =
    { gatewayARN : String
    }


{-|

<p>A JSON object containing the of the gateway to start.</p>

-}
type alias StartGatewayInput =
    { gatewayARN : String
    }


{-|

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateBandwidthRateLimitInput$AverageDownloadRateLimitInBitsPerSec</a> </p> </li> <li> <p> <a>UpdateBandwidthRateLimitInput$AverageUploadRateLimitInBitsPerSec</a> </p> </li> </ul>

-}
type alias UpdateBandwidthRateLimitInput =
    { gatewayARN : String
    , averageUploadRateLimitInBitsPerSec : Maybe Int
    , averageDownloadRateLimitInBitsPerSec : Maybe Int
    }


{-|

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateChapCredentialsInput$InitiatorName</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$SecretToAuthenticateInitiator</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$SecretToAuthenticateTarget</a> </p> </li> <li> <p> <a>UpdateChapCredentialsInput$TargetARN</a> </p> </li> </ul>

-}
type alias UpdateChapCredentialsInput =
    { targetARN : String
    , secretToAuthenticateInitiator : String
    , initiatorName : String
    , secretToAuthenticateTarget : Maybe String
    }


{-| undefined
-}
type alias UpdateGatewayInformationInput =
    { gatewayARN : String
    , gatewayName : Maybe String
    , gatewayTimezone : Maybe String
    }


{-|

<p>A JSON object containing the of the gateway to update.</p>

-}
type alias UpdateGatewaySoftwareNowInput =
    { gatewayARN : String
    }


{-|

<p>A JSON object containing the following fields:</p> <ul> <li> <p> <a>UpdateMaintenanceStartTimeInput$DayOfMonth</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$DayOfWeek</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$HourOfDay</a> </p> </li> <li> <p> <a>UpdateMaintenanceStartTimeInput$MinuteOfHour</a> </p> </li> </ul>

-}
type alias UpdateMaintenanceStartTimeInput =
    { gatewayARN : String
    , hourOfDay : Int
    , minuteOfHour : Int
    , dayOfWeek : Maybe Int
    , dayOfMonth : Maybe Int
    }


{-|

<p>UpdateNFSFileShareInput</p>

-}
type alias UpdateNFSFileShareInput =
    { fileShareARN : String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , nFSFileShareDefaults : Maybe NFSFileShareDefaults
    , defaultStorageClass : Maybe String
    , objectACL : Maybe ObjectACL
    , clientList : Maybe (List String)
    , squash : Maybe String
    , readOnly : Maybe Bool
    , guessMIMETypeEnabled : Maybe Bool
    , requesterPays : Maybe Bool
    }


{-|

<p>UpdateSMBFileShareInput</p>

-}
type alias UpdateSMBFileShareInput =
    { fileShareARN : String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , defaultStorageClass : Maybe String
    , objectACL : Maybe ObjectACL
    , readOnly : Maybe Bool
    , guessMIMETypeEnabled : Maybe Bool
    , requesterPays : Maybe Bool
    , sMBACLEnabled : Maybe Bool
    , adminUserList : Maybe (List String)
    , validUserList : Maybe (List String)
    , invalidUserList : Maybe (List String)
    }


{-| undefined
-}
type alias UpdateSMBSecurityStrategyInput =
    { gatewayARN : String
    , sMBSecurityStrategy : SMBSecurityStrategy
    }


{-|

<p>A JSON object containing one or more of the following fields:</p> <ul> <li> <p> <a>UpdateSnapshotScheduleInput$Description</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$RecurrenceInHours</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$StartAt</a> </p> </li> <li> <p> <a>UpdateSnapshotScheduleInput$VolumeARN</a> </p> </li> </ul>

-}
type alias UpdateSnapshotScheduleInput =
    { volumeARN : String
    , startAt : Int
    , recurrenceInHours : Int
    , description : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias UpdateVTLDeviceTypeInput =
    { vTLDeviceARN : String
    , deviceType : String
    }


activateGatewayInputEncoder : ActivateGatewayInput -> JE.Value
activateGatewayInputEncoder data =
    []
        |> (::) ( "ActivationKey", data.activationKey |> JE.string )
        |> (::) ( "GatewayName", data.gatewayName |> JE.string )
        |> (::) ( "GatewayTimezone", data.gatewayTimezone |> JE.string )
        |> (::) ( "GatewayRegion", data.gatewayRegion |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayType", data.gatewayType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeDriveType", data.tapeDriveType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "MediumChangerType", data.mediumChangerType )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


activateGatewayOutputEncoder : ActivateGatewayOutput -> JE.Value
activateGatewayOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


addCacheInputEncoder : AddCacheInput -> JE.Value
addCacheInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "DiskIds", data.diskIds |> JE.list JE.string )
        |> JE.object


addCacheOutputEncoder : AddCacheOutput -> JE.Value
addCacheOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


addTagsToResourceInputEncoder : AddTagsToResourceInput -> JE.Value
addTagsToResourceInputEncoder data =
    []
        |> (::) ( "ResourceARN", data.resourceARN |> JE.string )
        |> (::) ( "Tags", data.tags |> JE.list tagEncoder )
        |> JE.object


addTagsToResourceOutputEncoder : AddTagsToResourceOutput -> JE.Value
addTagsToResourceOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceARN", data.resourceARN )
        |> JE.object


addUploadBufferInputEncoder : AddUploadBufferInput -> JE.Value
addUploadBufferInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "DiskIds", data.diskIds |> JE.list JE.string )
        |> JE.object


addUploadBufferOutputEncoder : AddUploadBufferOutput -> JE.Value
addUploadBufferOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


addWorkingStorageInputEncoder : AddWorkingStorageInput -> JE.Value
addWorkingStorageInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "DiskIds", data.diskIds |> JE.list JE.string )
        |> JE.object


addWorkingStorageOutputEncoder : AddWorkingStorageOutput -> JE.Value
addWorkingStorageOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


assignTapePoolInputEncoder : AssignTapePoolInput -> JE.Value
assignTapePoolInputEncoder data =
    []
        |> (::) ( "TapeARN", data.tapeARN |> JE.string )
        |> (::) ( "PoolId", data.poolId |> JE.string )
        |> JE.object


assignTapePoolOutputEncoder : AssignTapePoolOutput -> JE.Value
assignTapePoolOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeARN", data.tapeARN )
        |> JE.object


attachVolumeInputEncoder : AttachVolumeInput -> JE.Value
attachVolumeInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetName", data.targetName )
        |> (::) ( "VolumeARN", data.volumeARN |> JE.string )
        |> (::) ( "NetworkInterfaceId", data.networkInterfaceId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DiskId", data.diskId )
        |> JE.object


attachVolumeOutputEncoder : AttachVolumeOutput -> JE.Value
attachVolumeOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetARN", data.targetARN )
        |> JE.object


cachediSCSIVolumeEncoder : CachediSCSIVolume -> JE.Value
cachediSCSIVolumeEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeId", data.volumeId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeType", data.volumeType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeStatus", data.volumeStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeAttachmentStatus", data.volumeAttachmentStatus )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "VolumeSizeInBytes", data.volumeSizeInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "VolumeProgress", data.volumeProgress )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceSnapshotId", data.sourceSnapshotId )
        |> AWS.Core.Encode.optionalMember
            volumeiSCSIAttributesEncoder
            ( "VolumeiSCSIAttributes", data.volumeiSCSIAttributes )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreatedDate", data.createdDate )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "VolumeUsedInBytes", data.volumeUsedInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetName", data.targetName )
        |> JE.object


cancelArchivalInputEncoder : CancelArchivalInput -> JE.Value
cancelArchivalInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "TapeARN", data.tapeARN |> JE.string )
        |> JE.object


cancelArchivalOutputEncoder : CancelArchivalOutput -> JE.Value
cancelArchivalOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeARN", data.tapeARN )
        |> JE.object


cancelRetrievalInputEncoder : CancelRetrievalInput -> JE.Value
cancelRetrievalInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "TapeARN", data.tapeARN |> JE.string )
        |> JE.object


cancelRetrievalOutputEncoder : CancelRetrievalOutput -> JE.Value
cancelRetrievalOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeARN", data.tapeARN )
        |> JE.object


chapInfoEncoder : ChapInfo -> JE.Value
chapInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetARN", data.targetARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SecretToAuthenticateInitiator", data.secretToAuthenticateInitiator )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "InitiatorName", data.initiatorName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SecretToAuthenticateTarget", data.secretToAuthenticateTarget )
        |> JE.object


createCachediSCSIVolumeInputEncoder : CreateCachediSCSIVolumeInput -> JE.Value
createCachediSCSIVolumeInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "VolumeSizeInBytes", data.volumeSizeInBytes |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnapshotId", data.snapshotId )
        |> (::) ( "TargetName", data.targetName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceVolumeARN", data.sourceVolumeARN )
        |> (::) ( "NetworkInterfaceId", data.networkInterfaceId |> JE.string )
        |> (::) ( "ClientToken", data.clientToken |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "KMSEncrypted", data.kMSEncrypted )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


createCachediSCSIVolumeOutputEncoder : CreateCachediSCSIVolumeOutput -> JE.Value
createCachediSCSIVolumeOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetARN", data.targetARN )
        |> JE.object


createNFSFileShareInputEncoder : CreateNFSFileShareInput -> JE.Value
createNFSFileShareInputEncoder data =
    []
        |> (::) ( "ClientToken", data.clientToken |> JE.string )
        |> AWS.Core.Encode.optionalMember
            nFSFileShareDefaultsEncoder
            ( "NFSFileShareDefaults", data.nFSFileShareDefaults )
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "KMSEncrypted", data.kMSEncrypted )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> (::) ( "Role", data.role |> JE.string )
        |> (::) ( "LocationARN", data.locationARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DefaultStorageClass", data.defaultStorageClass )
        |> AWS.Core.Encode.optionalMember
            (objectACLToString >> JE.string)
            ( "ObjectACL", data.objectACL )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ClientList", data.clientList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Squash", data.squash )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ReadOnly", data.readOnly )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "GuessMIMETypeEnabled", data.guessMIMETypeEnabled )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RequesterPays", data.requesterPays )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


createNFSFileShareOutputEncoder : CreateNFSFileShareOutput -> JE.Value
createNFSFileShareOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareARN", data.fileShareARN )
        |> JE.object


createSMBFileShareInputEncoder : CreateSMBFileShareInput -> JE.Value
createSMBFileShareInputEncoder data =
    []
        |> (::) ( "ClientToken", data.clientToken |> JE.string )
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "KMSEncrypted", data.kMSEncrypted )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> (::) ( "Role", data.role |> JE.string )
        |> (::) ( "LocationARN", data.locationARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DefaultStorageClass", data.defaultStorageClass )
        |> AWS.Core.Encode.optionalMember
            (objectACLToString >> JE.string)
            ( "ObjectACL", data.objectACL )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ReadOnly", data.readOnly )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "GuessMIMETypeEnabled", data.guessMIMETypeEnabled )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RequesterPays", data.requesterPays )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "SMBACLEnabled", data.sMBACLEnabled )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "AdminUserList", data.adminUserList )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ValidUserList", data.validUserList )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "InvalidUserList", data.invalidUserList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Authentication", data.authentication )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


createSMBFileShareOutputEncoder : CreateSMBFileShareOutput -> JE.Value
createSMBFileShareOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareARN", data.fileShareARN )
        |> JE.object


createSnapshotFromVolumeRecoveryPointInputEncoder : CreateSnapshotFromVolumeRecoveryPointInput -> JE.Value
createSnapshotFromVolumeRecoveryPointInputEncoder data =
    []
        |> (::) ( "VolumeARN", data.volumeARN |> JE.string )
        |> (::) ( "SnapshotDescription", data.snapshotDescription |> JE.string )
        |> JE.object


createSnapshotFromVolumeRecoveryPointOutputEncoder : CreateSnapshotFromVolumeRecoveryPointOutput -> JE.Value
createSnapshotFromVolumeRecoveryPointOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnapshotId", data.snapshotId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeRecoveryPointTime", data.volumeRecoveryPointTime )
        |> JE.object


createSnapshotInputEncoder : CreateSnapshotInput -> JE.Value
createSnapshotInputEncoder data =
    []
        |> (::) ( "VolumeARN", data.volumeARN |> JE.string )
        |> (::) ( "SnapshotDescription", data.snapshotDescription |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


createSnapshotOutputEncoder : CreateSnapshotOutput -> JE.Value
createSnapshotOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnapshotId", data.snapshotId )
        |> JE.object


createStorediSCSIVolumeInputEncoder : CreateStorediSCSIVolumeInput -> JE.Value
createStorediSCSIVolumeInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "DiskId", data.diskId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SnapshotId", data.snapshotId )
        |> (::) ( "PreserveExistingData", data.preserveExistingData |> JE.bool )
        |> (::) ( "TargetName", data.targetName |> JE.string )
        |> (::) ( "NetworkInterfaceId", data.networkInterfaceId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "KMSEncrypted", data.kMSEncrypted )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


createStorediSCSIVolumeOutputEncoder : CreateStorediSCSIVolumeOutput -> JE.Value
createStorediSCSIVolumeOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "VolumeSizeInBytes", data.volumeSizeInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetARN", data.targetARN )
        |> JE.object


createTapeWithBarcodeInputEncoder : CreateTapeWithBarcodeInput -> JE.Value
createTapeWithBarcodeInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "TapeSizeInBytes", data.tapeSizeInBytes |> JE.int )
        |> (::) ( "TapeBarcode", data.tapeBarcode |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "KMSEncrypted", data.kMSEncrypted )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PoolId", data.poolId )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


createTapeWithBarcodeOutputEncoder : CreateTapeWithBarcodeOutput -> JE.Value
createTapeWithBarcodeOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeARN", data.tapeARN )
        |> JE.object


createTapesInputEncoder : CreateTapesInput -> JE.Value
createTapesInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "TapeSizeInBytes", data.tapeSizeInBytes |> JE.int )
        |> (::) ( "ClientToken", data.clientToken |> JE.string )
        |> (::) ( "NumTapesToCreate", data.numTapesToCreate |> JE.int )
        |> (::) ( "TapeBarcodePrefix", data.tapeBarcodePrefix |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "KMSEncrypted", data.kMSEncrypted )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PoolId", data.poolId )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


createTapesOutputEncoder : CreateTapesOutput -> JE.Value
createTapesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "TapeARNs", data.tapeARNs )
        |> JE.object


deleteBandwidthRateLimitInputEncoder : DeleteBandwidthRateLimitInput -> JE.Value
deleteBandwidthRateLimitInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "BandwidthType", data.bandwidthType |> JE.string )
        |> JE.object


deleteBandwidthRateLimitOutputEncoder : DeleteBandwidthRateLimitOutput -> JE.Value
deleteBandwidthRateLimitOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


deleteChapCredentialsInputEncoder : DeleteChapCredentialsInput -> JE.Value
deleteChapCredentialsInputEncoder data =
    []
        |> (::) ( "TargetARN", data.targetARN |> JE.string )
        |> (::) ( "InitiatorName", data.initiatorName |> JE.string )
        |> JE.object


deleteChapCredentialsOutputEncoder : DeleteChapCredentialsOutput -> JE.Value
deleteChapCredentialsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetARN", data.targetARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "InitiatorName", data.initiatorName )
        |> JE.object


deleteFileShareInputEncoder : DeleteFileShareInput -> JE.Value
deleteFileShareInputEncoder data =
    []
        |> (::) ( "FileShareARN", data.fileShareARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ForceDelete", data.forceDelete )
        |> JE.object


deleteFileShareOutputEncoder : DeleteFileShareOutput -> JE.Value
deleteFileShareOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareARN", data.fileShareARN )
        |> JE.object


deleteGatewayInputEncoder : DeleteGatewayInput -> JE.Value
deleteGatewayInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


deleteGatewayOutputEncoder : DeleteGatewayOutput -> JE.Value
deleteGatewayOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


deleteSnapshotScheduleInputEncoder : DeleteSnapshotScheduleInput -> JE.Value
deleteSnapshotScheduleInputEncoder data =
    []
        |> (::) ( "VolumeARN", data.volumeARN |> JE.string )
        |> JE.object


deleteSnapshotScheduleOutputEncoder : DeleteSnapshotScheduleOutput -> JE.Value
deleteSnapshotScheduleOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> JE.object


deleteTapeArchiveInputEncoder : DeleteTapeArchiveInput -> JE.Value
deleteTapeArchiveInputEncoder data =
    []
        |> (::) ( "TapeARN", data.tapeARN |> JE.string )
        |> JE.object


deleteTapeArchiveOutputEncoder : DeleteTapeArchiveOutput -> JE.Value
deleteTapeArchiveOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeARN", data.tapeARN )
        |> JE.object


deleteTapeInputEncoder : DeleteTapeInput -> JE.Value
deleteTapeInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "TapeARN", data.tapeARN |> JE.string )
        |> JE.object


deleteTapeOutputEncoder : DeleteTapeOutput -> JE.Value
deleteTapeOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeARN", data.tapeARN )
        |> JE.object


deleteVolumeInputEncoder : DeleteVolumeInput -> JE.Value
deleteVolumeInputEncoder data =
    []
        |> (::) ( "VolumeARN", data.volumeARN |> JE.string )
        |> JE.object


deleteVolumeOutputEncoder : DeleteVolumeOutput -> JE.Value
deleteVolumeOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> JE.object


describeBandwidthRateLimitInputEncoder : DescribeBandwidthRateLimitInput -> JE.Value
describeBandwidthRateLimitInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


describeBandwidthRateLimitOutputEncoder : DescribeBandwidthRateLimitOutput -> JE.Value
describeBandwidthRateLimitOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "AverageUploadRateLimitInBitsPerSec", data.averageUploadRateLimitInBitsPerSec )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "AverageDownloadRateLimitInBitsPerSec", data.averageDownloadRateLimitInBitsPerSec )
        |> JE.object


describeCacheInputEncoder : DescribeCacheInput -> JE.Value
describeCacheInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


describeCacheOutputEncoder : DescribeCacheOutput -> JE.Value
describeCacheOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DiskIds", data.diskIds )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "CacheAllocatedInBytes", data.cacheAllocatedInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "CacheUsedPercentage", data.cacheUsedPercentage )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "CacheDirtyPercentage", data.cacheDirtyPercentage )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "CacheHitPercentage", data.cacheHitPercentage )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "CacheMissPercentage", data.cacheMissPercentage )
        |> JE.object


describeCachediSCSIVolumesInputEncoder : DescribeCachediSCSIVolumesInput -> JE.Value
describeCachediSCSIVolumesInputEncoder data =
    []
        |> (::) ( "VolumeARNs", data.volumeARNs |> JE.list JE.string )
        |> JE.object


describeCachediSCSIVolumesOutputEncoder : DescribeCachediSCSIVolumesOutput -> JE.Value
describeCachediSCSIVolumesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list cachediSCSIVolumeEncoder)
            ( "CachediSCSIVolumes", data.cachediSCSIVolumes )
        |> JE.object


describeChapCredentialsInputEncoder : DescribeChapCredentialsInput -> JE.Value
describeChapCredentialsInputEncoder data =
    []
        |> (::) ( "TargetARN", data.targetARN |> JE.string )
        |> JE.object


describeChapCredentialsOutputEncoder : DescribeChapCredentialsOutput -> JE.Value
describeChapCredentialsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list chapInfoEncoder)
            ( "ChapCredentials", data.chapCredentials )
        |> JE.object


describeGatewayInformationInputEncoder : DescribeGatewayInformationInput -> JE.Value
describeGatewayInformationInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


describeGatewayInformationOutputEncoder : DescribeGatewayInformationOutput -> JE.Value
describeGatewayInformationOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayId", data.gatewayId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayName", data.gatewayName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayTimezone", data.gatewayTimezone )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayState", data.gatewayState )
        |> AWS.Core.Encode.optionalMember
            (JE.list networkInterfaceEncoder)
            ( "GatewayNetworkInterfaces", data.gatewayNetworkInterfaces )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayType", data.gatewayType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextUpdateAvailabilityDate", data.nextUpdateAvailabilityDate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LastSoftwareUpdate", data.lastSoftwareUpdate )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Ec2InstanceId", data.ec2InstanceId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Ec2InstanceRegion", data.ec2InstanceRegion )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VPCEndpoint", data.vPCEndpoint )
        |> JE.object


describeMaintenanceStartTimeInputEncoder : DescribeMaintenanceStartTimeInput -> JE.Value
describeMaintenanceStartTimeInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


describeMaintenanceStartTimeOutputEncoder : DescribeMaintenanceStartTimeOutput -> JE.Value
describeMaintenanceStartTimeOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "HourOfDay", data.hourOfDay )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MinuteOfHour", data.minuteOfHour )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "DayOfWeek", data.dayOfWeek )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "DayOfMonth", data.dayOfMonth )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Timezone", data.timezone )
        |> JE.object


describeNFSFileSharesInputEncoder : DescribeNFSFileSharesInput -> JE.Value
describeNFSFileSharesInputEncoder data =
    []
        |> (::) ( "FileShareARNList", data.fileShareARNList |> JE.list JE.string )
        |> JE.object


describeNFSFileSharesOutputEncoder : DescribeNFSFileSharesOutput -> JE.Value
describeNFSFileSharesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list nFSFileShareInfoEncoder)
            ( "NFSFileShareInfoList", data.nFSFileShareInfoList )
        |> JE.object


describeSMBFileSharesInputEncoder : DescribeSMBFileSharesInput -> JE.Value
describeSMBFileSharesInputEncoder data =
    []
        |> (::) ( "FileShareARNList", data.fileShareARNList |> JE.list JE.string )
        |> JE.object


describeSMBFileSharesOutputEncoder : DescribeSMBFileSharesOutput -> JE.Value
describeSMBFileSharesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list sMBFileShareInfoEncoder)
            ( "SMBFileShareInfoList", data.sMBFileShareInfoList )
        |> JE.object


describeSMBSettingsInputEncoder : DescribeSMBSettingsInput -> JE.Value
describeSMBSettingsInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


describeSMBSettingsOutputEncoder : DescribeSMBSettingsOutput -> JE.Value
describeSMBSettingsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DomainName", data.domainName )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "SMBGuestPasswordSet", data.sMBGuestPasswordSet )
        |> AWS.Core.Encode.optionalMember
            (sMBSecurityStrategyToString >> JE.string)
            ( "SMBSecurityStrategy", data.sMBSecurityStrategy )
        |> JE.object


describeSnapshotScheduleInputEncoder : DescribeSnapshotScheduleInput -> JE.Value
describeSnapshotScheduleInputEncoder data =
    []
        |> (::) ( "VolumeARN", data.volumeARN |> JE.string )
        |> JE.object


describeSnapshotScheduleOutputEncoder : DescribeSnapshotScheduleOutput -> JE.Value
describeSnapshotScheduleOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "StartAt", data.startAt )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "RecurrenceInHours", data.recurrenceInHours )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Timezone", data.timezone )
        |> JE.object


describeStorediSCSIVolumesInputEncoder : DescribeStorediSCSIVolumesInput -> JE.Value
describeStorediSCSIVolumesInputEncoder data =
    []
        |> (::) ( "VolumeARNs", data.volumeARNs |> JE.list JE.string )
        |> JE.object


describeStorediSCSIVolumesOutputEncoder : DescribeStorediSCSIVolumesOutput -> JE.Value
describeStorediSCSIVolumesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list storediSCSIVolumeEncoder)
            ( "StorediSCSIVolumes", data.storediSCSIVolumes )
        |> JE.object


describeTapeArchivesInputEncoder : DescribeTapeArchivesInput -> JE.Value
describeTapeArchivesInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "TapeARNs", data.tapeARNs )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


describeTapeArchivesOutputEncoder : DescribeTapeArchivesOutput -> JE.Value
describeTapeArchivesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list tapeArchiveEncoder)
            ( "TapeArchives", data.tapeArchives )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeTapeRecoveryPointsInputEncoder : DescribeTapeRecoveryPointsInput -> JE.Value
describeTapeRecoveryPointsInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


describeTapeRecoveryPointsOutputEncoder : DescribeTapeRecoveryPointsOutput -> JE.Value
describeTapeRecoveryPointsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            (JE.list tapeRecoveryPointInfoEncoder)
            ( "TapeRecoveryPointInfos", data.tapeRecoveryPointInfos )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeTapesInputEncoder : DescribeTapesInput -> JE.Value
describeTapesInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "TapeARNs", data.tapeARNs )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


describeTapesOutputEncoder : DescribeTapesOutput -> JE.Value
describeTapesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list tapeEncoder)
            ( "Tapes", data.tapes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeUploadBufferInputEncoder : DescribeUploadBufferInput -> JE.Value
describeUploadBufferInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


describeUploadBufferOutputEncoder : DescribeUploadBufferOutput -> JE.Value
describeUploadBufferOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DiskIds", data.diskIds )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "UploadBufferUsedInBytes", data.uploadBufferUsedInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "UploadBufferAllocatedInBytes", data.uploadBufferAllocatedInBytes )
        |> JE.object


describeVTLDevicesInputEncoder : DescribeVTLDevicesInput -> JE.Value
describeVTLDevicesInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "VTLDeviceARNs", data.vTLDeviceARNs )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


describeVTLDevicesOutputEncoder : DescribeVTLDevicesOutput -> JE.Value
describeVTLDevicesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            (JE.list vTLDeviceEncoder)
            ( "VTLDevices", data.vTLDevices )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


describeWorkingStorageInputEncoder : DescribeWorkingStorageInput -> JE.Value
describeWorkingStorageInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


describeWorkingStorageOutputEncoder : DescribeWorkingStorageOutput -> JE.Value
describeWorkingStorageOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DiskIds", data.diskIds )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "WorkingStorageUsedInBytes", data.workingStorageUsedInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "WorkingStorageAllocatedInBytes", data.workingStorageAllocatedInBytes )
        |> JE.object


detachVolumeInputEncoder : DetachVolumeInput -> JE.Value
detachVolumeInputEncoder data =
    []
        |> (::) ( "VolumeARN", data.volumeARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ForceDetach", data.forceDetach )
        |> JE.object


detachVolumeOutputEncoder : DetachVolumeOutput -> JE.Value
detachVolumeOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> JE.object


deviceiSCSIAttributesEncoder : DeviceiSCSIAttributes -> JE.Value
deviceiSCSIAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetARN", data.targetARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NetworkInterfaceId", data.networkInterfaceId )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "NetworkInterfacePort", data.networkInterfacePort )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ChapEnabled", data.chapEnabled )
        |> JE.object


disableGatewayInputEncoder : DisableGatewayInput -> JE.Value
disableGatewayInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


disableGatewayOutputEncoder : DisableGatewayOutput -> JE.Value
disableGatewayOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


diskEncoder : Disk -> JE.Value
diskEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DiskId", data.diskId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DiskPath", data.diskPath )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DiskNode", data.diskNode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DiskStatus", data.diskStatus )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "DiskSizeInBytes", data.diskSizeInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DiskAllocationType", data.diskAllocationType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DiskAllocationResource", data.diskAllocationResource )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DiskAttributeList", data.diskAttributeList )
        |> JE.object


fileShareInfoEncoder : FileShareInfo -> JE.Value
fileShareInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (fileShareTypeToString >> JE.string)
            ( "FileShareType", data.fileShareType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareARN", data.fileShareARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareId", data.fileShareId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareStatus", data.fileShareStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


gatewayInfoEncoder : GatewayInfo -> JE.Value
gatewayInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayId", data.gatewayId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayType", data.gatewayType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayOperationalState", data.gatewayOperationalState )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayName", data.gatewayName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Ec2InstanceId", data.ec2InstanceId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Ec2InstanceRegion", data.ec2InstanceRegion )
        |> JE.object


joinDomainInputEncoder : JoinDomainInput -> JE.Value
joinDomainInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "DomainName", data.domainName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "OrganizationalUnit", data.organizationalUnit )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DomainControllers", data.domainControllers )
        |> (::) ( "UserName", data.userName |> JE.string )
        |> (::) ( "Password", data.password |> JE.string )
        |> JE.object


joinDomainOutputEncoder : JoinDomainOutput -> JE.Value
joinDomainOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


listFileSharesInputEncoder : ListFileSharesInput -> JE.Value
listFileSharesInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


listFileSharesOutputEncoder : ListFileSharesOutput -> JE.Value
listFileSharesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextMarker", data.nextMarker )
        |> AWS.Core.Encode.optionalMember
            (JE.list fileShareInfoEncoder)
            ( "FileShareInfoList", data.fileShareInfoList )
        |> JE.object


listGatewaysInputEncoder : ListGatewaysInput -> JE.Value
listGatewaysInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


listGatewaysOutputEncoder : ListGatewaysOutput -> JE.Value
listGatewaysOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list gatewayInfoEncoder)
            ( "Gateways", data.gateways )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


listLocalDisksInputEncoder : ListLocalDisksInput -> JE.Value
listLocalDisksInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


listLocalDisksOutputEncoder : ListLocalDisksOutput -> JE.Value
listLocalDisksOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            (JE.list diskEncoder)
            ( "Disks", data.disks )
        |> JE.object


listTagsForResourceInputEncoder : ListTagsForResourceInput -> JE.Value
listTagsForResourceInputEncoder data =
    []
        |> (::) ( "ResourceARN", data.resourceARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


listTagsForResourceOutputEncoder : ListTagsForResourceOutput -> JE.Value
listTagsForResourceOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceARN", data.resourceARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


listTapesInputEncoder : ListTapesInput -> JE.Value
listTapesInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "TapeARNs", data.tapeARNs )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


listTapesOutputEncoder : ListTapesOutput -> JE.Value
listTapesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list tapeInfoEncoder)
            ( "TapeInfos", data.tapeInfos )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> JE.object


listVolumeInitiatorsInputEncoder : ListVolumeInitiatorsInput -> JE.Value
listVolumeInitiatorsInputEncoder data =
    []
        |> (::) ( "VolumeARN", data.volumeARN |> JE.string )
        |> JE.object


listVolumeInitiatorsOutputEncoder : ListVolumeInitiatorsOutput -> JE.Value
listVolumeInitiatorsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "Initiators", data.initiators )
        |> JE.object


listVolumeRecoveryPointsInputEncoder : ListVolumeRecoveryPointsInput -> JE.Value
listVolumeRecoveryPointsInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


listVolumeRecoveryPointsOutputEncoder : ListVolumeRecoveryPointsOutput -> JE.Value
listVolumeRecoveryPointsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            (JE.list volumeRecoveryPointInfoEncoder)
            ( "VolumeRecoveryPointInfos", data.volumeRecoveryPointInfos )
        |> JE.object


listVolumesInputEncoder : ListVolumesInput -> JE.Value
listVolumesInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Limit", data.limit )
        |> JE.object


listVolumesOutputEncoder : ListVolumesOutput -> JE.Value
listVolumesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Marker", data.marker )
        |> AWS.Core.Encode.optionalMember
            (JE.list volumeInfoEncoder)
            ( "VolumeInfos", data.volumeInfos )
        |> JE.object


nFSFileShareDefaultsEncoder : NFSFileShareDefaults -> JE.Value
nFSFileShareDefaultsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileMode", data.fileMode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DirectoryMode", data.directoryMode )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "GroupId", data.groupId )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "OwnerId", data.ownerId )
        |> JE.object


nFSFileShareInfoEncoder : NFSFileShareInfo -> JE.Value
nFSFileShareInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            nFSFileShareDefaultsEncoder
            ( "NFSFileShareDefaults", data.nFSFileShareDefaults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareARN", data.fileShareARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareId", data.fileShareId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareStatus", data.fileShareStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "KMSEncrypted", data.kMSEncrypted )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Path", data.path )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Role", data.role )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LocationARN", data.locationARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DefaultStorageClass", data.defaultStorageClass )
        |> AWS.Core.Encode.optionalMember
            (objectACLToString >> JE.string)
            ( "ObjectACL", data.objectACL )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ClientList", data.clientList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Squash", data.squash )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ReadOnly", data.readOnly )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "GuessMIMETypeEnabled", data.guessMIMETypeEnabled )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RequesterPays", data.requesterPays )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


networkInterfaceEncoder : NetworkInterface -> JE.Value
networkInterfaceEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Ipv4Address", data.ipv4Address )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "MacAddress", data.macAddress )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Ipv6Address", data.ipv6Address )
        |> JE.object


notifyWhenUploadedInputEncoder : NotifyWhenUploadedInput -> JE.Value
notifyWhenUploadedInputEncoder data =
    []
        |> (::) ( "FileShareARN", data.fileShareARN |> JE.string )
        |> JE.object


notifyWhenUploadedOutputEncoder : NotifyWhenUploadedOutput -> JE.Value
notifyWhenUploadedOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareARN", data.fileShareARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NotificationId", data.notificationId )
        |> JE.object


refreshCacheInputEncoder : RefreshCacheInput -> JE.Value
refreshCacheInputEncoder data =
    []
        |> (::) ( "FileShareARN", data.fileShareARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "FolderList", data.folderList )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "Recursive", data.recursive )
        |> JE.object


refreshCacheOutputEncoder : RefreshCacheOutput -> JE.Value
refreshCacheOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareARN", data.fileShareARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NotificationId", data.notificationId )
        |> JE.object


removeTagsFromResourceInputEncoder : RemoveTagsFromResourceInput -> JE.Value
removeTagsFromResourceInputEncoder data =
    []
        |> (::) ( "ResourceARN", data.resourceARN |> JE.string )
        |> (::) ( "TagKeys", data.tagKeys |> JE.list JE.string )
        |> JE.object


removeTagsFromResourceOutputEncoder : RemoveTagsFromResourceOutput -> JE.Value
removeTagsFromResourceOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ResourceARN", data.resourceARN )
        |> JE.object


resetCacheInputEncoder : ResetCacheInput -> JE.Value
resetCacheInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


resetCacheOutputEncoder : ResetCacheOutput -> JE.Value
resetCacheOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


retrieveTapeArchiveInputEncoder : RetrieveTapeArchiveInput -> JE.Value
retrieveTapeArchiveInputEncoder data =
    []
        |> (::) ( "TapeARN", data.tapeARN |> JE.string )
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


retrieveTapeArchiveOutputEncoder : RetrieveTapeArchiveOutput -> JE.Value
retrieveTapeArchiveOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeARN", data.tapeARN )
        |> JE.object


retrieveTapeRecoveryPointInputEncoder : RetrieveTapeRecoveryPointInput -> JE.Value
retrieveTapeRecoveryPointInputEncoder data =
    []
        |> (::) ( "TapeARN", data.tapeARN |> JE.string )
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


retrieveTapeRecoveryPointOutputEncoder : RetrieveTapeRecoveryPointOutput -> JE.Value
retrieveTapeRecoveryPointOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeARN", data.tapeARN )
        |> JE.object


sMBFileShareInfoEncoder : SMBFileShareInfo -> JE.Value
sMBFileShareInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareARN", data.fileShareARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareId", data.fileShareId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareStatus", data.fileShareStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "KMSEncrypted", data.kMSEncrypted )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Path", data.path )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Role", data.role )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "LocationARN", data.locationARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DefaultStorageClass", data.defaultStorageClass )
        |> AWS.Core.Encode.optionalMember
            (objectACLToString >> JE.string)
            ( "ObjectACL", data.objectACL )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ReadOnly", data.readOnly )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "GuessMIMETypeEnabled", data.guessMIMETypeEnabled )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RequesterPays", data.requesterPays )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "SMBACLEnabled", data.sMBACLEnabled )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "AdminUserList", data.adminUserList )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ValidUserList", data.validUserList )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "InvalidUserList", data.invalidUserList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Authentication", data.authentication )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


setLocalConsolePasswordInputEncoder : SetLocalConsolePasswordInput -> JE.Value
setLocalConsolePasswordInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "LocalConsolePassword", data.localConsolePassword |> JE.string )
        |> JE.object


setLocalConsolePasswordOutputEncoder : SetLocalConsolePasswordOutput -> JE.Value
setLocalConsolePasswordOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


setSMBGuestPasswordInputEncoder : SetSMBGuestPasswordInput -> JE.Value
setSMBGuestPasswordInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "Password", data.password |> JE.string )
        |> JE.object


setSMBGuestPasswordOutputEncoder : SetSMBGuestPasswordOutput -> JE.Value
setSMBGuestPasswordOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


shutdownGatewayInputEncoder : ShutdownGatewayInput -> JE.Value
shutdownGatewayInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


shutdownGatewayOutputEncoder : ShutdownGatewayOutput -> JE.Value
shutdownGatewayOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


startGatewayInputEncoder : StartGatewayInput -> JE.Value
startGatewayInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


startGatewayOutputEncoder : StartGatewayOutput -> JE.Value
startGatewayOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


storediSCSIVolumeEncoder : StorediSCSIVolume -> JE.Value
storediSCSIVolumeEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeId", data.volumeId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeType", data.volumeType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeStatus", data.volumeStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeAttachmentStatus", data.volumeAttachmentStatus )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "VolumeSizeInBytes", data.volumeSizeInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "VolumeProgress", data.volumeProgress )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeDiskId", data.volumeDiskId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SourceSnapshotId", data.sourceSnapshotId )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "PreservedExistingData", data.preservedExistingData )
        |> AWS.Core.Encode.optionalMember
            volumeiSCSIAttributesEncoder
            ( "VolumeiSCSIAttributes", data.volumeiSCSIAttributes )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreatedDate", data.createdDate )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "VolumeUsedInBytes", data.volumeUsedInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetName", data.targetName )
        |> JE.object


tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        |> (::) ( "Key", data.key |> JE.string )
        |> (::) ( "Value", data.value |> JE.string )
        |> JE.object


tapeEncoder : Tape -> JE.Value
tapeEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeARN", data.tapeARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeBarcode", data.tapeBarcode )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "TapeCreatedDate", data.tapeCreatedDate )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TapeSizeInBytes", data.tapeSizeInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeStatus", data.tapeStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VTLDevice", data.vTLDevice )
        |> AWS.Core.Encode.optionalMember
            JE.float
            ( "Progress", data.progress )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TapeUsedInBytes", data.tapeUsedInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PoolId", data.poolId )
        |> JE.object


tapeArchiveEncoder : TapeArchive -> JE.Value
tapeArchiveEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeARN", data.tapeARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeBarcode", data.tapeBarcode )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "TapeCreatedDate", data.tapeCreatedDate )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TapeSizeInBytes", data.tapeSizeInBytes )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CompletionTime", data.completionTime )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "RetrievedTo", data.retrievedTo )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeStatus", data.tapeStatus )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TapeUsedInBytes", data.tapeUsedInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PoolId", data.poolId )
        |> JE.object


tapeInfoEncoder : TapeInfo -> JE.Value
tapeInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeARN", data.tapeARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeBarcode", data.tapeBarcode )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TapeSizeInBytes", data.tapeSizeInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeStatus", data.tapeStatus )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "PoolId", data.poolId )
        |> JE.object


tapeRecoveryPointInfoEncoder : TapeRecoveryPointInfo -> JE.Value
tapeRecoveryPointInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeARN", data.tapeARN )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "TapeRecoveryPointTime", data.tapeRecoveryPointTime )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TapeSizeInBytes", data.tapeSizeInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TapeStatus", data.tapeStatus )
        |> JE.object


updateBandwidthRateLimitInputEncoder : UpdateBandwidthRateLimitInput -> JE.Value
updateBandwidthRateLimitInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "AverageUploadRateLimitInBitsPerSec", data.averageUploadRateLimitInBitsPerSec )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "AverageDownloadRateLimitInBitsPerSec", data.averageDownloadRateLimitInBitsPerSec )
        |> JE.object


updateBandwidthRateLimitOutputEncoder : UpdateBandwidthRateLimitOutput -> JE.Value
updateBandwidthRateLimitOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


updateChapCredentialsInputEncoder : UpdateChapCredentialsInput -> JE.Value
updateChapCredentialsInputEncoder data =
    []
        |> (::) ( "TargetARN", data.targetARN |> JE.string )
        |> (::) ( "SecretToAuthenticateInitiator", data.secretToAuthenticateInitiator |> JE.string )
        |> (::) ( "InitiatorName", data.initiatorName |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SecretToAuthenticateTarget", data.secretToAuthenticateTarget )
        |> JE.object


updateChapCredentialsOutputEncoder : UpdateChapCredentialsOutput -> JE.Value
updateChapCredentialsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetARN", data.targetARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "InitiatorName", data.initiatorName )
        |> JE.object


updateGatewayInformationInputEncoder : UpdateGatewayInformationInput -> JE.Value
updateGatewayInformationInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayName", data.gatewayName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayTimezone", data.gatewayTimezone )
        |> JE.object


updateGatewayInformationOutputEncoder : UpdateGatewayInformationOutput -> JE.Value
updateGatewayInformationOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayName", data.gatewayName )
        |> JE.object


updateGatewaySoftwareNowInputEncoder : UpdateGatewaySoftwareNowInput -> JE.Value
updateGatewaySoftwareNowInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> JE.object


updateGatewaySoftwareNowOutputEncoder : UpdateGatewaySoftwareNowOutput -> JE.Value
updateGatewaySoftwareNowOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


updateMaintenanceStartTimeInputEncoder : UpdateMaintenanceStartTimeInput -> JE.Value
updateMaintenanceStartTimeInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "HourOfDay", data.hourOfDay |> JE.int )
        |> (::) ( "MinuteOfHour", data.minuteOfHour |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "DayOfWeek", data.dayOfWeek )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "DayOfMonth", data.dayOfMonth )
        |> JE.object


updateMaintenanceStartTimeOutputEncoder : UpdateMaintenanceStartTimeOutput -> JE.Value
updateMaintenanceStartTimeOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


updateNFSFileShareInputEncoder : UpdateNFSFileShareInput -> JE.Value
updateNFSFileShareInputEncoder data =
    []
        |> (::) ( "FileShareARN", data.fileShareARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "KMSEncrypted", data.kMSEncrypted )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> AWS.Core.Encode.optionalMember
            nFSFileShareDefaultsEncoder
            ( "NFSFileShareDefaults", data.nFSFileShareDefaults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DefaultStorageClass", data.defaultStorageClass )
        |> AWS.Core.Encode.optionalMember
            (objectACLToString >> JE.string)
            ( "ObjectACL", data.objectACL )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ClientList", data.clientList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Squash", data.squash )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ReadOnly", data.readOnly )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "GuessMIMETypeEnabled", data.guessMIMETypeEnabled )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RequesterPays", data.requesterPays )
        |> JE.object


updateNFSFileShareOutputEncoder : UpdateNFSFileShareOutput -> JE.Value
updateNFSFileShareOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareARN", data.fileShareARN )
        |> JE.object


updateSMBFileShareInputEncoder : UpdateSMBFileShareInput -> JE.Value
updateSMBFileShareInputEncoder data =
    []
        |> (::) ( "FileShareARN", data.fileShareARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "KMSEncrypted", data.kMSEncrypted )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KMSKey", data.kMSKey )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DefaultStorageClass", data.defaultStorageClass )
        |> AWS.Core.Encode.optionalMember
            (objectACLToString >> JE.string)
            ( "ObjectACL", data.objectACL )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ReadOnly", data.readOnly )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "GuessMIMETypeEnabled", data.guessMIMETypeEnabled )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RequesterPays", data.requesterPays )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "SMBACLEnabled", data.sMBACLEnabled )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "AdminUserList", data.adminUserList )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "ValidUserList", data.validUserList )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "InvalidUserList", data.invalidUserList )
        |> JE.object


updateSMBFileShareOutputEncoder : UpdateSMBFileShareOutput -> JE.Value
updateSMBFileShareOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "FileShareARN", data.fileShareARN )
        |> JE.object


updateSMBSecurityStrategyInputEncoder : UpdateSMBSecurityStrategyInput -> JE.Value
updateSMBSecurityStrategyInputEncoder data =
    []
        |> (::) ( "GatewayARN", data.gatewayARN |> JE.string )
        |> (::) ( "SMBSecurityStrategy", data.sMBSecurityStrategy |> (sMBSecurityStrategyToString >> JE.string) )
        |> JE.object


updateSMBSecurityStrategyOutputEncoder : UpdateSMBSecurityStrategyOutput -> JE.Value
updateSMBSecurityStrategyOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> JE.object


updateSnapshotScheduleInputEncoder : UpdateSnapshotScheduleInput -> JE.Value
updateSnapshotScheduleInputEncoder data =
    []
        |> (::) ( "VolumeARN", data.volumeARN |> JE.string )
        |> (::) ( "StartAt", data.startAt |> JE.int )
        |> (::) ( "RecurrenceInHours", data.recurrenceInHours |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            (JE.list tagEncoder)
            ( "Tags", data.tags )
        |> JE.object


updateSnapshotScheduleOutputEncoder : UpdateSnapshotScheduleOutput -> JE.Value
updateSnapshotScheduleOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> JE.object


updateVTLDeviceTypeInputEncoder : UpdateVTLDeviceTypeInput -> JE.Value
updateVTLDeviceTypeInputEncoder data =
    []
        |> (::) ( "VTLDeviceARN", data.vTLDeviceARN |> JE.string )
        |> (::) ( "DeviceType", data.deviceType |> JE.string )
        |> JE.object


updateVTLDeviceTypeOutputEncoder : UpdateVTLDeviceTypeOutput -> JE.Value
updateVTLDeviceTypeOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VTLDeviceARN", data.vTLDeviceARN )
        |> JE.object


vTLDeviceEncoder : VTLDevice -> JE.Value
vTLDeviceEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VTLDeviceARN", data.vTLDeviceARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VTLDeviceType", data.vTLDeviceType )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VTLDeviceVendor", data.vTLDeviceVendor )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VTLDeviceProductIdentifier", data.vTLDeviceProductIdentifier )
        |> AWS.Core.Encode.optionalMember
            deviceiSCSIAttributesEncoder
            ( "DeviceiSCSIAttributes", data.deviceiSCSIAttributes )
        |> JE.object


volumeInfoEncoder : VolumeInfo -> JE.Value
volumeInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeId", data.volumeId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayARN", data.gatewayARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "GatewayId", data.gatewayId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeType", data.volumeType )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "VolumeSizeInBytes", data.volumeSizeInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeAttachmentStatus", data.volumeAttachmentStatus )
        |> JE.object


volumeRecoveryPointInfoEncoder : VolumeRecoveryPointInfo -> JE.Value
volumeRecoveryPointInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeARN", data.volumeARN )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "VolumeSizeInBytes", data.volumeSizeInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "VolumeUsageInBytes", data.volumeUsageInBytes )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VolumeRecoveryPointTime", data.volumeRecoveryPointTime )
        |> JE.object


volumeiSCSIAttributesEncoder : VolumeiSCSIAttributes -> JE.Value
volumeiSCSIAttributesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TargetARN", data.targetARN )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NetworkInterfaceId", data.networkInterfaceId )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "NetworkInterfacePort", data.networkInterfacePort )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "LunNumber", data.lunNumber )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ChapEnabled", data.chapEnabled )
        |> JE.object
