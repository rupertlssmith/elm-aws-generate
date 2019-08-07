module AWS.Lightsail
    exposing
        ( service
        , allocateStaticIp
        , attachDisk
        , attachInstancesToLoadBalancer
        , attachLoadBalancerTlsCertificate
        , attachStaticIp
        , closeInstancePublicPorts
        , copySnapshot
        , createCloudFormationStack
        , createDisk
        , CreateDiskOptions
        , createDiskFromSnapshot
        , CreateDiskFromSnapshotOptions
        , createDiskSnapshot
        , CreateDiskSnapshotOptions
        , createDomain
        , CreateDomainOptions
        , createDomainEntry
        , createInstanceSnapshot
        , CreateInstanceSnapshotOptions
        , createInstances
        , CreateInstancesOptions
        , createInstancesFromSnapshot
        , CreateInstancesFromSnapshotOptions
        , createKeyPair
        , CreateKeyPairOptions
        , createLoadBalancer
        , CreateLoadBalancerOptions
        , createLoadBalancerTlsCertificate
        , CreateLoadBalancerTlsCertificateOptions
        , createRelationalDatabase
        , CreateRelationalDatabaseOptions
        , createRelationalDatabaseFromSnapshot
        , CreateRelationalDatabaseFromSnapshotOptions
        , createRelationalDatabaseSnapshot
        , CreateRelationalDatabaseSnapshotOptions
        , deleteDisk
        , deleteDiskSnapshot
        , deleteDomain
        , deleteDomainEntry
        , deleteInstance
        , deleteInstanceSnapshot
        , deleteKeyPair
        , deleteKnownHostKeys
        , deleteLoadBalancer
        , deleteLoadBalancerTlsCertificate
        , DeleteLoadBalancerTlsCertificateOptions
        , deleteRelationalDatabase
        , DeleteRelationalDatabaseOptions
        , deleteRelationalDatabaseSnapshot
        , detachDisk
        , detachInstancesFromLoadBalancer
        , detachStaticIp
        , downloadDefaultKeyPair
        , exportSnapshot
        , getActiveNames
        , GetActiveNamesOptions
        , getBlueprints
        , GetBlueprintsOptions
        , getBundles
        , GetBundlesOptions
        , getCloudFormationStackRecords
        , GetCloudFormationStackRecordsOptions
        , getDisk
        , getDiskSnapshot
        , getDiskSnapshots
        , GetDiskSnapshotsOptions
        , getDisks
        , GetDisksOptions
        , getDomain
        , getDomains
        , GetDomainsOptions
        , getExportSnapshotRecords
        , GetExportSnapshotRecordsOptions
        , getInstance
        , getInstanceAccessDetails
        , GetInstanceAccessDetailsOptions
        , getInstanceMetricData
        , getInstancePortStates
        , getInstanceSnapshot
        , getInstanceSnapshots
        , GetInstanceSnapshotsOptions
        , getInstanceState
        , getInstances
        , GetInstancesOptions
        , getKeyPair
        , getKeyPairs
        , GetKeyPairsOptions
        , getLoadBalancer
        , getLoadBalancerMetricData
        , getLoadBalancerTlsCertificates
        , getLoadBalancers
        , GetLoadBalancersOptions
        , getOperation
        , getOperations
        , GetOperationsOptions
        , getOperationsForResource
        , GetOperationsForResourceOptions
        , getRegions
        , GetRegionsOptions
        , getRelationalDatabase
        , getRelationalDatabaseBlueprints
        , GetRelationalDatabaseBlueprintsOptions
        , getRelationalDatabaseBundles
        , GetRelationalDatabaseBundlesOptions
        , getRelationalDatabaseEvents
        , GetRelationalDatabaseEventsOptions
        , getRelationalDatabaseLogEvents
        , GetRelationalDatabaseLogEventsOptions
        , getRelationalDatabaseLogStreams
        , getRelationalDatabaseMasterUserPassword
        , GetRelationalDatabaseMasterUserPasswordOptions
        , getRelationalDatabaseMetricData
        , getRelationalDatabaseParameters
        , GetRelationalDatabaseParametersOptions
        , getRelationalDatabaseSnapshot
        , getRelationalDatabaseSnapshots
        , GetRelationalDatabaseSnapshotsOptions
        , getRelationalDatabases
        , GetRelationalDatabasesOptions
        , getStaticIp
        , getStaticIps
        , GetStaticIpsOptions
        , importKeyPair
        , isVpcPeered
        , openInstancePublicPorts
        , peerVpc
        , putInstancePublicPorts
        , rebootInstance
        , rebootRelationalDatabase
        , releaseStaticIp
        , startInstance
        , startRelationalDatabase
        , stopInstance
        , StopInstanceOptions
        , stopRelationalDatabase
        , StopRelationalDatabaseOptions
        , tagResource
        , unpeerVpc
        , untagResource
        , updateDomainEntry
        , updateLoadBalancerAttribute
        , updateRelationalDatabase
        , UpdateRelationalDatabaseOptions
        , updateRelationalDatabaseParameters
        , AccessDirection(..)
        , AllocateStaticIpResult
        , AttachDiskResult
        , AttachInstancesToLoadBalancerResult
        , AttachLoadBalancerTlsCertificateResult
        , AttachStaticIpResult
        , AvailabilityZone
        , Blueprint
        , BlueprintType(..)
        , Bundle
        , CloseInstancePublicPortsResult
        , CloudFormationStackRecord
        , CloudFormationStackRecordSourceInfo
        , CloudFormationStackRecordSourceType(..)
        , CopySnapshotResult
        , CreateCloudFormationStackResult
        , CreateDiskFromSnapshotResult
        , CreateDiskResult
        , CreateDiskSnapshotResult
        , CreateDomainEntryResult
        , CreateDomainResult
        , CreateInstanceSnapshotResult
        , CreateInstancesFromSnapshotResult
        , CreateInstancesResult
        , CreateKeyPairResult
        , CreateLoadBalancerResult
        , CreateLoadBalancerTlsCertificateResult
        , CreateRelationalDatabaseFromSnapshotResult
        , CreateRelationalDatabaseResult
        , CreateRelationalDatabaseSnapshotResult
        , DeleteDiskResult
        , DeleteDiskSnapshotResult
        , DeleteDomainEntryResult
        , DeleteDomainResult
        , DeleteInstanceResult
        , DeleteInstanceSnapshotResult
        , DeleteKeyPairResult
        , DeleteKnownHostKeysResult
        , DeleteLoadBalancerResult
        , DeleteLoadBalancerTlsCertificateResult
        , DeleteRelationalDatabaseResult
        , DeleteRelationalDatabaseSnapshotResult
        , DestinationInfo
        , DetachDiskResult
        , DetachInstancesFromLoadBalancerResult
        , DetachStaticIpResult
        , Disk
        , DiskInfo
        , DiskMap
        , DiskSnapshot
        , DiskSnapshotInfo
        , DiskSnapshotState(..)
        , DiskState(..)
        , Domain
        , DomainEntry
        , DownloadDefaultKeyPairResult
        , ExportSnapshotRecord
        , ExportSnapshotRecordSourceInfo
        , ExportSnapshotRecordSourceType(..)
        , ExportSnapshotResult
        , GetActiveNamesResult
        , GetBlueprintsResult
        , GetBundlesResult
        , GetCloudFormationStackRecordsResult
        , GetDiskResult
        , GetDiskSnapshotResult
        , GetDiskSnapshotsResult
        , GetDisksResult
        , GetDomainResult
        , GetDomainsResult
        , GetExportSnapshotRecordsResult
        , GetInstanceAccessDetailsResult
        , GetInstanceMetricDataResult
        , GetInstancePortStatesResult
        , GetInstanceResult
        , GetInstanceSnapshotResult
        , GetInstanceSnapshotsResult
        , GetInstanceStateResult
        , GetInstancesResult
        , GetKeyPairResult
        , GetKeyPairsResult
        , GetLoadBalancerMetricDataResult
        , GetLoadBalancerResult
        , GetLoadBalancerTlsCertificatesResult
        , GetLoadBalancersResult
        , GetOperationResult
        , GetOperationsForResourceResult
        , GetOperationsResult
        , GetRegionsResult
        , GetRelationalDatabaseBlueprintsResult
        , GetRelationalDatabaseBundlesResult
        , GetRelationalDatabaseEventsResult
        , GetRelationalDatabaseLogEventsResult
        , GetRelationalDatabaseLogStreamsResult
        , GetRelationalDatabaseMasterUserPasswordResult
        , GetRelationalDatabaseMetricDataResult
        , GetRelationalDatabaseParametersResult
        , GetRelationalDatabaseResult
        , GetRelationalDatabaseSnapshotResult
        , GetRelationalDatabaseSnapshotsResult
        , GetRelationalDatabasesResult
        , GetStaticIpResult
        , GetStaticIpsResult
        , HostKeyAttributes
        , ImportKeyPairResult
        , Instance
        , InstanceAccessDetails
        , InstanceAccessProtocol(..)
        , InstanceEntry
        , InstanceHardware
        , InstanceHealthReason(..)
        , InstanceHealthState(..)
        , InstanceHealthSummary
        , InstanceMetricName(..)
        , InstanceNetworking
        , InstancePlatform(..)
        , InstancePortInfo
        , InstancePortState
        , InstanceSnapshot
        , InstanceSnapshotInfo
        , InstanceSnapshotState(..)
        , InstanceState
        , IsVpcPeeredResult
        , KeyPair
        , LoadBalancer
        , LoadBalancerAttributeName(..)
        , LoadBalancerMetricName(..)
        , LoadBalancerProtocol(..)
        , LoadBalancerState(..)
        , LoadBalancerTlsCertificate
        , LoadBalancerTlsCertificateDomainStatus(..)
        , LoadBalancerTlsCertificateDomainValidationOption
        , LoadBalancerTlsCertificateDomainValidationRecord
        , LoadBalancerTlsCertificateFailureReason(..)
        , LoadBalancerTlsCertificateRenewalStatus(..)
        , LoadBalancerTlsCertificateRenewalSummary
        , LoadBalancerTlsCertificateRevocationReason(..)
        , LoadBalancerTlsCertificateStatus(..)
        , LoadBalancerTlsCertificateSummary
        , LogEvent
        , MetricDatapoint
        , MetricStatistic(..)
        , MetricUnit(..)
        , MonthlyTransfer
        , NetworkProtocol(..)
        , OpenInstancePublicPortsResult
        , Operation
        , OperationStatus(..)
        , OperationType(..)
        , PasswordData
        , PeerVpcResult
        , PendingMaintenanceAction
        , PendingModifiedRelationalDatabaseValues
        , PortAccessType(..)
        , PortInfo
        , PortInfoSourceType(..)
        , PortState(..)
        , PutInstancePublicPortsResult
        , RebootInstanceResult
        , RebootRelationalDatabaseResult
        , RecordState(..)
        , Region
        , RegionName(..)
        , RelationalDatabase
        , RelationalDatabaseBlueprint
        , RelationalDatabaseBundle
        , RelationalDatabaseEndpoint
        , RelationalDatabaseEngine(..)
        , RelationalDatabaseEvent
        , RelationalDatabaseHardware
        , RelationalDatabaseMetricName(..)
        , RelationalDatabaseParameter
        , RelationalDatabasePasswordVersion(..)
        , RelationalDatabaseSnapshot
        , ReleaseStaticIpResult
        , ResourceLocation
        , ResourceType(..)
        , StartInstanceResult
        , StartRelationalDatabaseResult
        , StaticIp
        , StopInstanceResult
        , StopRelationalDatabaseResult
        , Tag
        , TagResourceResult
        , UnpeerVpcResult
        , UntagResourceResult
        , UpdateDomainEntryResult
        , UpdateLoadBalancerAttributeResult
        , UpdateRelationalDatabaseParametersResult
        , UpdateRelationalDatabaseResult
        )

{-| <p>Amazon Lightsail is the easiest way to get started with AWS for developers who just need virtual private servers. Lightsail includes everything you need to launch your project quickly - a virtual machine, a managed database, SSD-based storage, data transfer, DNS management, and a static IP - for a low, predictable price. You manage those Lightsail servers through the Lightsail console or by using the API or command-line interface (CLI).</p> <p>For more information about Lightsail concepts and tasks, see the <a href="https://lightsail.aws.amazon.com/ls/docs/all">Lightsail Dev Guide</a>.</p> <p>To use the Lightsail API or the CLI, you will need to use AWS Identity and Access Management (IAM) to generate access keys. For details about how to set this up, see the <a href="http://lightsail.aws.amazon.com/ls/docs/how-to/article/lightsail-how-to-set-up-access-keys-to-use-sdk-api-cli">Lightsail Dev Guide</a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [allocateStaticIp](#allocateStaticIp)
* [attachDisk](#attachDisk)
* [attachInstancesToLoadBalancer](#attachInstancesToLoadBalancer)
* [attachLoadBalancerTlsCertificate](#attachLoadBalancerTlsCertificate)
* [attachStaticIp](#attachStaticIp)
* [closeInstancePublicPorts](#closeInstancePublicPorts)
* [copySnapshot](#copySnapshot)
* [createCloudFormationStack](#createCloudFormationStack)
* [createDisk](#createDisk)
* [CreateDiskOptions](#CreateDiskOptions)
* [createDiskFromSnapshot](#createDiskFromSnapshot)
* [CreateDiskFromSnapshotOptions](#CreateDiskFromSnapshotOptions)
* [createDiskSnapshot](#createDiskSnapshot)
* [CreateDiskSnapshotOptions](#CreateDiskSnapshotOptions)
* [createDomain](#createDomain)
* [CreateDomainOptions](#CreateDomainOptions)
* [createDomainEntry](#createDomainEntry)
* [createInstanceSnapshot](#createInstanceSnapshot)
* [CreateInstanceSnapshotOptions](#CreateInstanceSnapshotOptions)
* [createInstances](#createInstances)
* [CreateInstancesOptions](#CreateInstancesOptions)
* [createInstancesFromSnapshot](#createInstancesFromSnapshot)
* [CreateInstancesFromSnapshotOptions](#CreateInstancesFromSnapshotOptions)
* [createKeyPair](#createKeyPair)
* [CreateKeyPairOptions](#CreateKeyPairOptions)
* [createLoadBalancer](#createLoadBalancer)
* [CreateLoadBalancerOptions](#CreateLoadBalancerOptions)
* [createLoadBalancerTlsCertificate](#createLoadBalancerTlsCertificate)
* [CreateLoadBalancerTlsCertificateOptions](#CreateLoadBalancerTlsCertificateOptions)
* [createRelationalDatabase](#createRelationalDatabase)
* [CreateRelationalDatabaseOptions](#CreateRelationalDatabaseOptions)
* [createRelationalDatabaseFromSnapshot](#createRelationalDatabaseFromSnapshot)
* [CreateRelationalDatabaseFromSnapshotOptions](#CreateRelationalDatabaseFromSnapshotOptions)
* [createRelationalDatabaseSnapshot](#createRelationalDatabaseSnapshot)
* [CreateRelationalDatabaseSnapshotOptions](#CreateRelationalDatabaseSnapshotOptions)
* [deleteDisk](#deleteDisk)
* [deleteDiskSnapshot](#deleteDiskSnapshot)
* [deleteDomain](#deleteDomain)
* [deleteDomainEntry](#deleteDomainEntry)
* [deleteInstance](#deleteInstance)
* [deleteInstanceSnapshot](#deleteInstanceSnapshot)
* [deleteKeyPair](#deleteKeyPair)
* [deleteKnownHostKeys](#deleteKnownHostKeys)
* [deleteLoadBalancer](#deleteLoadBalancer)
* [deleteLoadBalancerTlsCertificate](#deleteLoadBalancerTlsCertificate)
* [DeleteLoadBalancerTlsCertificateOptions](#DeleteLoadBalancerTlsCertificateOptions)
* [deleteRelationalDatabase](#deleteRelationalDatabase)
* [DeleteRelationalDatabaseOptions](#DeleteRelationalDatabaseOptions)
* [deleteRelationalDatabaseSnapshot](#deleteRelationalDatabaseSnapshot)
* [detachDisk](#detachDisk)
* [detachInstancesFromLoadBalancer](#detachInstancesFromLoadBalancer)
* [detachStaticIp](#detachStaticIp)
* [downloadDefaultKeyPair](#downloadDefaultKeyPair)
* [exportSnapshot](#exportSnapshot)
* [getActiveNames](#getActiveNames)
* [GetActiveNamesOptions](#GetActiveNamesOptions)
* [getBlueprints](#getBlueprints)
* [GetBlueprintsOptions](#GetBlueprintsOptions)
* [getBundles](#getBundles)
* [GetBundlesOptions](#GetBundlesOptions)
* [getCloudFormationStackRecords](#getCloudFormationStackRecords)
* [GetCloudFormationStackRecordsOptions](#GetCloudFormationStackRecordsOptions)
* [getDisk](#getDisk)
* [getDiskSnapshot](#getDiskSnapshot)
* [getDiskSnapshots](#getDiskSnapshots)
* [GetDiskSnapshotsOptions](#GetDiskSnapshotsOptions)
* [getDisks](#getDisks)
* [GetDisksOptions](#GetDisksOptions)
* [getDomain](#getDomain)
* [getDomains](#getDomains)
* [GetDomainsOptions](#GetDomainsOptions)
* [getExportSnapshotRecords](#getExportSnapshotRecords)
* [GetExportSnapshotRecordsOptions](#GetExportSnapshotRecordsOptions)
* [getInstance](#getInstance)
* [getInstanceAccessDetails](#getInstanceAccessDetails)
* [GetInstanceAccessDetailsOptions](#GetInstanceAccessDetailsOptions)
* [getInstanceMetricData](#getInstanceMetricData)
* [getInstancePortStates](#getInstancePortStates)
* [getInstanceSnapshot](#getInstanceSnapshot)
* [getInstanceSnapshots](#getInstanceSnapshots)
* [GetInstanceSnapshotsOptions](#GetInstanceSnapshotsOptions)
* [getInstanceState](#getInstanceState)
* [getInstances](#getInstances)
* [GetInstancesOptions](#GetInstancesOptions)
* [getKeyPair](#getKeyPair)
* [getKeyPairs](#getKeyPairs)
* [GetKeyPairsOptions](#GetKeyPairsOptions)
* [getLoadBalancer](#getLoadBalancer)
* [getLoadBalancerMetricData](#getLoadBalancerMetricData)
* [getLoadBalancerTlsCertificates](#getLoadBalancerTlsCertificates)
* [getLoadBalancers](#getLoadBalancers)
* [GetLoadBalancersOptions](#GetLoadBalancersOptions)
* [getOperation](#getOperation)
* [getOperations](#getOperations)
* [GetOperationsOptions](#GetOperationsOptions)
* [getOperationsForResource](#getOperationsForResource)
* [GetOperationsForResourceOptions](#GetOperationsForResourceOptions)
* [getRegions](#getRegions)
* [GetRegionsOptions](#GetRegionsOptions)
* [getRelationalDatabase](#getRelationalDatabase)
* [getRelationalDatabaseBlueprints](#getRelationalDatabaseBlueprints)
* [GetRelationalDatabaseBlueprintsOptions](#GetRelationalDatabaseBlueprintsOptions)
* [getRelationalDatabaseBundles](#getRelationalDatabaseBundles)
* [GetRelationalDatabaseBundlesOptions](#GetRelationalDatabaseBundlesOptions)
* [getRelationalDatabaseEvents](#getRelationalDatabaseEvents)
* [GetRelationalDatabaseEventsOptions](#GetRelationalDatabaseEventsOptions)
* [getRelationalDatabaseLogEvents](#getRelationalDatabaseLogEvents)
* [GetRelationalDatabaseLogEventsOptions](#GetRelationalDatabaseLogEventsOptions)
* [getRelationalDatabaseLogStreams](#getRelationalDatabaseLogStreams)
* [getRelationalDatabaseMasterUserPassword](#getRelationalDatabaseMasterUserPassword)
* [GetRelationalDatabaseMasterUserPasswordOptions](#GetRelationalDatabaseMasterUserPasswordOptions)
* [getRelationalDatabaseMetricData](#getRelationalDatabaseMetricData)
* [getRelationalDatabaseParameters](#getRelationalDatabaseParameters)
* [GetRelationalDatabaseParametersOptions](#GetRelationalDatabaseParametersOptions)
* [getRelationalDatabaseSnapshot](#getRelationalDatabaseSnapshot)
* [getRelationalDatabaseSnapshots](#getRelationalDatabaseSnapshots)
* [GetRelationalDatabaseSnapshotsOptions](#GetRelationalDatabaseSnapshotsOptions)
* [getRelationalDatabases](#getRelationalDatabases)
* [GetRelationalDatabasesOptions](#GetRelationalDatabasesOptions)
* [getStaticIp](#getStaticIp)
* [getStaticIps](#getStaticIps)
* [GetStaticIpsOptions](#GetStaticIpsOptions)
* [importKeyPair](#importKeyPair)
* [isVpcPeered](#isVpcPeered)
* [openInstancePublicPorts](#openInstancePublicPorts)
* [peerVpc](#peerVpc)
* [putInstancePublicPorts](#putInstancePublicPorts)
* [rebootInstance](#rebootInstance)
* [rebootRelationalDatabase](#rebootRelationalDatabase)
* [releaseStaticIp](#releaseStaticIp)
* [startInstance](#startInstance)
* [startRelationalDatabase](#startRelationalDatabase)
* [stopInstance](#stopInstance)
* [StopInstanceOptions](#StopInstanceOptions)
* [stopRelationalDatabase](#stopRelationalDatabase)
* [StopRelationalDatabaseOptions](#StopRelationalDatabaseOptions)
* [tagResource](#tagResource)
* [unpeerVpc](#unpeerVpc)
* [untagResource](#untagResource)
* [updateDomainEntry](#updateDomainEntry)
* [updateLoadBalancerAttribute](#updateLoadBalancerAttribute)
* [updateRelationalDatabase](#updateRelationalDatabase)
* [UpdateRelationalDatabaseOptions](#UpdateRelationalDatabaseOptions)
* [updateRelationalDatabaseParameters](#updateRelationalDatabaseParameters)


@docs allocateStaticIp,attachDisk,attachInstancesToLoadBalancer,attachLoadBalancerTlsCertificate,attachStaticIp,closeInstancePublicPorts,copySnapshot,createCloudFormationStack,createDisk,CreateDiskOptions,createDiskFromSnapshot,CreateDiskFromSnapshotOptions,createDiskSnapshot,CreateDiskSnapshotOptions,createDomain,CreateDomainOptions,createDomainEntry,createInstanceSnapshot,CreateInstanceSnapshotOptions,createInstances,CreateInstancesOptions,createInstancesFromSnapshot,CreateInstancesFromSnapshotOptions,createKeyPair,CreateKeyPairOptions,createLoadBalancer,CreateLoadBalancerOptions,createLoadBalancerTlsCertificate,CreateLoadBalancerTlsCertificateOptions,createRelationalDatabase,CreateRelationalDatabaseOptions,createRelationalDatabaseFromSnapshot,CreateRelationalDatabaseFromSnapshotOptions,createRelationalDatabaseSnapshot,CreateRelationalDatabaseSnapshotOptions,deleteDisk,deleteDiskSnapshot,deleteDomain,deleteDomainEntry,deleteInstance,deleteInstanceSnapshot,deleteKeyPair,deleteKnownHostKeys,deleteLoadBalancer,deleteLoadBalancerTlsCertificate,DeleteLoadBalancerTlsCertificateOptions,deleteRelationalDatabase,DeleteRelationalDatabaseOptions,deleteRelationalDatabaseSnapshot,detachDisk,detachInstancesFromLoadBalancer,detachStaticIp,downloadDefaultKeyPair,exportSnapshot,getActiveNames,GetActiveNamesOptions,getBlueprints,GetBlueprintsOptions,getBundles,GetBundlesOptions,getCloudFormationStackRecords,GetCloudFormationStackRecordsOptions,getDisk,getDiskSnapshot,getDiskSnapshots,GetDiskSnapshotsOptions,getDisks,GetDisksOptions,getDomain,getDomains,GetDomainsOptions,getExportSnapshotRecords,GetExportSnapshotRecordsOptions,getInstance,getInstanceAccessDetails,GetInstanceAccessDetailsOptions,getInstanceMetricData,getInstancePortStates,getInstanceSnapshot,getInstanceSnapshots,GetInstanceSnapshotsOptions,getInstanceState,getInstances,GetInstancesOptions,getKeyPair,getKeyPairs,GetKeyPairsOptions,getLoadBalancer,getLoadBalancerMetricData,getLoadBalancerTlsCertificates,getLoadBalancers,GetLoadBalancersOptions,getOperation,getOperations,GetOperationsOptions,getOperationsForResource,GetOperationsForResourceOptions,getRegions,GetRegionsOptions,getRelationalDatabase,getRelationalDatabaseBlueprints,GetRelationalDatabaseBlueprintsOptions,getRelationalDatabaseBundles,GetRelationalDatabaseBundlesOptions,getRelationalDatabaseEvents,GetRelationalDatabaseEventsOptions,getRelationalDatabaseLogEvents,GetRelationalDatabaseLogEventsOptions,getRelationalDatabaseLogStreams,getRelationalDatabaseMasterUserPassword,GetRelationalDatabaseMasterUserPasswordOptions,getRelationalDatabaseMetricData,getRelationalDatabaseParameters,GetRelationalDatabaseParametersOptions,getRelationalDatabaseSnapshot,getRelationalDatabaseSnapshots,GetRelationalDatabaseSnapshotsOptions,getRelationalDatabases,GetRelationalDatabasesOptions,getStaticIp,getStaticIps,GetStaticIpsOptions,importKeyPair,isVpcPeered,openInstancePublicPorts,peerVpc,putInstancePublicPorts,rebootInstance,rebootRelationalDatabase,releaseStaticIp,startInstance,startRelationalDatabase,stopInstance,StopInstanceOptions,stopRelationalDatabase,StopRelationalDatabaseOptions,tagResource,unpeerVpc,untagResource,updateDomainEntry,updateLoadBalancerAttribute,updateRelationalDatabase,UpdateRelationalDatabaseOptions,updateRelationalDatabaseParameters

## Responses

* [AllocateStaticIpResult](#AllocateStaticIpResult)
* [AttachDiskResult](#AttachDiskResult)
* [AttachInstancesToLoadBalancerResult](#AttachInstancesToLoadBalancerResult)
* [AttachLoadBalancerTlsCertificateResult](#AttachLoadBalancerTlsCertificateResult)
* [AttachStaticIpResult](#AttachStaticIpResult)
* [CloseInstancePublicPortsResult](#CloseInstancePublicPortsResult)
* [CopySnapshotResult](#CopySnapshotResult)
* [CreateCloudFormationStackResult](#CreateCloudFormationStackResult)
* [CreateDiskFromSnapshotResult](#CreateDiskFromSnapshotResult)
* [CreateDiskResult](#CreateDiskResult)
* [CreateDiskSnapshotResult](#CreateDiskSnapshotResult)
* [CreateDomainEntryResult](#CreateDomainEntryResult)
* [CreateDomainResult](#CreateDomainResult)
* [CreateInstanceSnapshotResult](#CreateInstanceSnapshotResult)
* [CreateInstancesFromSnapshotResult](#CreateInstancesFromSnapshotResult)
* [CreateInstancesResult](#CreateInstancesResult)
* [CreateKeyPairResult](#CreateKeyPairResult)
* [CreateLoadBalancerResult](#CreateLoadBalancerResult)
* [CreateLoadBalancerTlsCertificateResult](#CreateLoadBalancerTlsCertificateResult)
* [CreateRelationalDatabaseFromSnapshotResult](#CreateRelationalDatabaseFromSnapshotResult)
* [CreateRelationalDatabaseResult](#CreateRelationalDatabaseResult)
* [CreateRelationalDatabaseSnapshotResult](#CreateRelationalDatabaseSnapshotResult)
* [DeleteDiskResult](#DeleteDiskResult)
* [DeleteDiskSnapshotResult](#DeleteDiskSnapshotResult)
* [DeleteDomainEntryResult](#DeleteDomainEntryResult)
* [DeleteDomainResult](#DeleteDomainResult)
* [DeleteInstanceResult](#DeleteInstanceResult)
* [DeleteInstanceSnapshotResult](#DeleteInstanceSnapshotResult)
* [DeleteKeyPairResult](#DeleteKeyPairResult)
* [DeleteKnownHostKeysResult](#DeleteKnownHostKeysResult)
* [DeleteLoadBalancerResult](#DeleteLoadBalancerResult)
* [DeleteLoadBalancerTlsCertificateResult](#DeleteLoadBalancerTlsCertificateResult)
* [DeleteRelationalDatabaseResult](#DeleteRelationalDatabaseResult)
* [DeleteRelationalDatabaseSnapshotResult](#DeleteRelationalDatabaseSnapshotResult)
* [DetachDiskResult](#DetachDiskResult)
* [DetachInstancesFromLoadBalancerResult](#DetachInstancesFromLoadBalancerResult)
* [DetachStaticIpResult](#DetachStaticIpResult)
* [DownloadDefaultKeyPairResult](#DownloadDefaultKeyPairResult)
* [ExportSnapshotResult](#ExportSnapshotResult)
* [GetActiveNamesResult](#GetActiveNamesResult)
* [GetBlueprintsResult](#GetBlueprintsResult)
* [GetBundlesResult](#GetBundlesResult)
* [GetCloudFormationStackRecordsResult](#GetCloudFormationStackRecordsResult)
* [GetDiskResult](#GetDiskResult)
* [GetDiskSnapshotResult](#GetDiskSnapshotResult)
* [GetDiskSnapshotsResult](#GetDiskSnapshotsResult)
* [GetDisksResult](#GetDisksResult)
* [GetDomainResult](#GetDomainResult)
* [GetDomainsResult](#GetDomainsResult)
* [GetExportSnapshotRecordsResult](#GetExportSnapshotRecordsResult)
* [GetInstanceAccessDetailsResult](#GetInstanceAccessDetailsResult)
* [GetInstanceMetricDataResult](#GetInstanceMetricDataResult)
* [GetInstancePortStatesResult](#GetInstancePortStatesResult)
* [GetInstanceResult](#GetInstanceResult)
* [GetInstanceSnapshotResult](#GetInstanceSnapshotResult)
* [GetInstanceSnapshotsResult](#GetInstanceSnapshotsResult)
* [GetInstanceStateResult](#GetInstanceStateResult)
* [GetInstancesResult](#GetInstancesResult)
* [GetKeyPairResult](#GetKeyPairResult)
* [GetKeyPairsResult](#GetKeyPairsResult)
* [GetLoadBalancerMetricDataResult](#GetLoadBalancerMetricDataResult)
* [GetLoadBalancerResult](#GetLoadBalancerResult)
* [GetLoadBalancerTlsCertificatesResult](#GetLoadBalancerTlsCertificatesResult)
* [GetLoadBalancersResult](#GetLoadBalancersResult)
* [GetOperationResult](#GetOperationResult)
* [GetOperationsForResourceResult](#GetOperationsForResourceResult)
* [GetOperationsResult](#GetOperationsResult)
* [GetRegionsResult](#GetRegionsResult)
* [GetRelationalDatabaseBlueprintsResult](#GetRelationalDatabaseBlueprintsResult)
* [GetRelationalDatabaseBundlesResult](#GetRelationalDatabaseBundlesResult)
* [GetRelationalDatabaseEventsResult](#GetRelationalDatabaseEventsResult)
* [GetRelationalDatabaseLogEventsResult](#GetRelationalDatabaseLogEventsResult)
* [GetRelationalDatabaseLogStreamsResult](#GetRelationalDatabaseLogStreamsResult)
* [GetRelationalDatabaseMasterUserPasswordResult](#GetRelationalDatabaseMasterUserPasswordResult)
* [GetRelationalDatabaseMetricDataResult](#GetRelationalDatabaseMetricDataResult)
* [GetRelationalDatabaseParametersResult](#GetRelationalDatabaseParametersResult)
* [GetRelationalDatabaseResult](#GetRelationalDatabaseResult)
* [GetRelationalDatabaseSnapshotResult](#GetRelationalDatabaseSnapshotResult)
* [GetRelationalDatabaseSnapshotsResult](#GetRelationalDatabaseSnapshotsResult)
* [GetRelationalDatabasesResult](#GetRelationalDatabasesResult)
* [GetStaticIpResult](#GetStaticIpResult)
* [GetStaticIpsResult](#GetStaticIpsResult)
* [ImportKeyPairResult](#ImportKeyPairResult)
* [IsVpcPeeredResult](#IsVpcPeeredResult)
* [OpenInstancePublicPortsResult](#OpenInstancePublicPortsResult)
* [PeerVpcResult](#PeerVpcResult)
* [PutInstancePublicPortsResult](#PutInstancePublicPortsResult)
* [RebootInstanceResult](#RebootInstanceResult)
* [RebootRelationalDatabaseResult](#RebootRelationalDatabaseResult)
* [ReleaseStaticIpResult](#ReleaseStaticIpResult)
* [StartInstanceResult](#StartInstanceResult)
* [StartRelationalDatabaseResult](#StartRelationalDatabaseResult)
* [StopInstanceResult](#StopInstanceResult)
* [StopRelationalDatabaseResult](#StopRelationalDatabaseResult)
* [TagResourceResult](#TagResourceResult)
* [UnpeerVpcResult](#UnpeerVpcResult)
* [UntagResourceResult](#UntagResourceResult)
* [UpdateDomainEntryResult](#UpdateDomainEntryResult)
* [UpdateLoadBalancerAttributeResult](#UpdateLoadBalancerAttributeResult)
* [UpdateRelationalDatabaseParametersResult](#UpdateRelationalDatabaseParametersResult)
* [UpdateRelationalDatabaseResult](#UpdateRelationalDatabaseResult)


@docs AllocateStaticIpResult,AttachDiskResult,AttachInstancesToLoadBalancerResult,AttachLoadBalancerTlsCertificateResult,AttachStaticIpResult,CloseInstancePublicPortsResult,CopySnapshotResult,CreateCloudFormationStackResult,CreateDiskFromSnapshotResult,CreateDiskResult,CreateDiskSnapshotResult,CreateDomainEntryResult,CreateDomainResult,CreateInstanceSnapshotResult,CreateInstancesFromSnapshotResult,CreateInstancesResult,CreateKeyPairResult,CreateLoadBalancerResult,CreateLoadBalancerTlsCertificateResult,CreateRelationalDatabaseFromSnapshotResult,CreateRelationalDatabaseResult,CreateRelationalDatabaseSnapshotResult,DeleteDiskResult,DeleteDiskSnapshotResult,DeleteDomainEntryResult,DeleteDomainResult,DeleteInstanceResult,DeleteInstanceSnapshotResult,DeleteKeyPairResult,DeleteKnownHostKeysResult,DeleteLoadBalancerResult,DeleteLoadBalancerTlsCertificateResult,DeleteRelationalDatabaseResult,DeleteRelationalDatabaseSnapshotResult,DetachDiskResult,DetachInstancesFromLoadBalancerResult,DetachStaticIpResult,DownloadDefaultKeyPairResult,ExportSnapshotResult,GetActiveNamesResult,GetBlueprintsResult,GetBundlesResult,GetCloudFormationStackRecordsResult,GetDiskResult,GetDiskSnapshotResult,GetDiskSnapshotsResult,GetDisksResult,GetDomainResult,GetDomainsResult,GetExportSnapshotRecordsResult,GetInstanceAccessDetailsResult,GetInstanceMetricDataResult,GetInstancePortStatesResult,GetInstanceResult,GetInstanceSnapshotResult,GetInstanceSnapshotsResult,GetInstanceStateResult,GetInstancesResult,GetKeyPairResult,GetKeyPairsResult,GetLoadBalancerMetricDataResult,GetLoadBalancerResult,GetLoadBalancerTlsCertificatesResult,GetLoadBalancersResult,GetOperationResult,GetOperationsForResourceResult,GetOperationsResult,GetRegionsResult,GetRelationalDatabaseBlueprintsResult,GetRelationalDatabaseBundlesResult,GetRelationalDatabaseEventsResult,GetRelationalDatabaseLogEventsResult,GetRelationalDatabaseLogStreamsResult,GetRelationalDatabaseMasterUserPasswordResult,GetRelationalDatabaseMetricDataResult,GetRelationalDatabaseParametersResult,GetRelationalDatabaseResult,GetRelationalDatabaseSnapshotResult,GetRelationalDatabaseSnapshotsResult,GetRelationalDatabasesResult,GetStaticIpResult,GetStaticIpsResult,ImportKeyPairResult,IsVpcPeeredResult,OpenInstancePublicPortsResult,PeerVpcResult,PutInstancePublicPortsResult,RebootInstanceResult,RebootRelationalDatabaseResult,ReleaseStaticIpResult,StartInstanceResult,StartRelationalDatabaseResult,StopInstanceResult,StopRelationalDatabaseResult,TagResourceResult,UnpeerVpcResult,UntagResourceResult,UpdateDomainEntryResult,UpdateLoadBalancerAttributeResult,UpdateRelationalDatabaseParametersResult,UpdateRelationalDatabaseResult

## Records

* [AvailabilityZone](#AvailabilityZone)
* [Blueprint](#Blueprint)
* [Bundle](#Bundle)
* [CloudFormationStackRecord](#CloudFormationStackRecord)
* [CloudFormationStackRecordSourceInfo](#CloudFormationStackRecordSourceInfo)
* [DestinationInfo](#DestinationInfo)
* [Disk](#Disk)
* [DiskInfo](#DiskInfo)
* [DiskMap](#DiskMap)
* [DiskSnapshot](#DiskSnapshot)
* [DiskSnapshotInfo](#DiskSnapshotInfo)
* [Domain](#Domain)
* [DomainEntry](#DomainEntry)
* [ExportSnapshotRecord](#ExportSnapshotRecord)
* [ExportSnapshotRecordSourceInfo](#ExportSnapshotRecordSourceInfo)
* [HostKeyAttributes](#HostKeyAttributes)
* [Instance](#Instance)
* [InstanceAccessDetails](#InstanceAccessDetails)
* [InstanceEntry](#InstanceEntry)
* [InstanceHardware](#InstanceHardware)
* [InstanceHealthSummary](#InstanceHealthSummary)
* [InstanceNetworking](#InstanceNetworking)
* [InstancePortInfo](#InstancePortInfo)
* [InstancePortState](#InstancePortState)
* [InstanceSnapshot](#InstanceSnapshot)
* [InstanceSnapshotInfo](#InstanceSnapshotInfo)
* [InstanceState](#InstanceState)
* [KeyPair](#KeyPair)
* [LoadBalancer](#LoadBalancer)
* [LoadBalancerTlsCertificate](#LoadBalancerTlsCertificate)
* [LoadBalancerTlsCertificateDomainValidationOption](#LoadBalancerTlsCertificateDomainValidationOption)
* [LoadBalancerTlsCertificateDomainValidationRecord](#LoadBalancerTlsCertificateDomainValidationRecord)
* [LoadBalancerTlsCertificateRenewalSummary](#LoadBalancerTlsCertificateRenewalSummary)
* [LoadBalancerTlsCertificateSummary](#LoadBalancerTlsCertificateSummary)
* [LogEvent](#LogEvent)
* [MetricDatapoint](#MetricDatapoint)
* [MonthlyTransfer](#MonthlyTransfer)
* [Operation](#Operation)
* [PasswordData](#PasswordData)
* [PendingMaintenanceAction](#PendingMaintenanceAction)
* [PendingModifiedRelationalDatabaseValues](#PendingModifiedRelationalDatabaseValues)
* [PortInfo](#PortInfo)
* [Region](#Region)
* [RelationalDatabase](#RelationalDatabase)
* [RelationalDatabaseBlueprint](#RelationalDatabaseBlueprint)
* [RelationalDatabaseBundle](#RelationalDatabaseBundle)
* [RelationalDatabaseEndpoint](#RelationalDatabaseEndpoint)
* [RelationalDatabaseEvent](#RelationalDatabaseEvent)
* [RelationalDatabaseHardware](#RelationalDatabaseHardware)
* [RelationalDatabaseParameter](#RelationalDatabaseParameter)
* [RelationalDatabaseSnapshot](#RelationalDatabaseSnapshot)
* [ResourceLocation](#ResourceLocation)
* [StaticIp](#StaticIp)
* [Tag](#Tag)


@docs AvailabilityZone,Blueprint,Bundle,CloudFormationStackRecord,CloudFormationStackRecordSourceInfo,DestinationInfo,Disk,DiskInfo,DiskMap,DiskSnapshot,DiskSnapshotInfo,Domain,DomainEntry,ExportSnapshotRecord,ExportSnapshotRecordSourceInfo,HostKeyAttributes,Instance,InstanceAccessDetails,InstanceEntry,InstanceHardware,InstanceHealthSummary,InstanceNetworking,InstancePortInfo,InstancePortState,InstanceSnapshot,InstanceSnapshotInfo,InstanceState,KeyPair,LoadBalancer,LoadBalancerTlsCertificate,LoadBalancerTlsCertificateDomainValidationOption,LoadBalancerTlsCertificateDomainValidationRecord,LoadBalancerTlsCertificateRenewalSummary,LoadBalancerTlsCertificateSummary,LogEvent,MetricDatapoint,MonthlyTransfer,Operation,PasswordData,PendingMaintenanceAction,PendingModifiedRelationalDatabaseValues,PortInfo,Region,RelationalDatabase,RelationalDatabaseBlueprint,RelationalDatabaseBundle,RelationalDatabaseEndpoint,RelationalDatabaseEvent,RelationalDatabaseHardware,RelationalDatabaseParameter,RelationalDatabaseSnapshot,ResourceLocation,StaticIp,Tag

## Unions

* [AccessDirection](#AccessDirection)
* [BlueprintType](#BlueprintType)
* [CloudFormationStackRecordSourceType](#CloudFormationStackRecordSourceType)
* [DiskSnapshotState](#DiskSnapshotState)
* [DiskState](#DiskState)
* [ExportSnapshotRecordSourceType](#ExportSnapshotRecordSourceType)
* [InstanceAccessProtocol](#InstanceAccessProtocol)
* [InstanceHealthReason](#InstanceHealthReason)
* [InstanceHealthState](#InstanceHealthState)
* [InstanceMetricName](#InstanceMetricName)
* [InstancePlatform](#InstancePlatform)
* [InstanceSnapshotState](#InstanceSnapshotState)
* [LoadBalancerAttributeName](#LoadBalancerAttributeName)
* [LoadBalancerMetricName](#LoadBalancerMetricName)
* [LoadBalancerProtocol](#LoadBalancerProtocol)
* [LoadBalancerState](#LoadBalancerState)
* [LoadBalancerTlsCertificateDomainStatus](#LoadBalancerTlsCertificateDomainStatus)
* [LoadBalancerTlsCertificateFailureReason](#LoadBalancerTlsCertificateFailureReason)
* [LoadBalancerTlsCertificateRenewalStatus](#LoadBalancerTlsCertificateRenewalStatus)
* [LoadBalancerTlsCertificateRevocationReason](#LoadBalancerTlsCertificateRevocationReason)
* [LoadBalancerTlsCertificateStatus](#LoadBalancerTlsCertificateStatus)
* [MetricStatistic](#MetricStatistic)
* [MetricUnit](#MetricUnit)
* [NetworkProtocol](#NetworkProtocol)
* [OperationStatus](#OperationStatus)
* [OperationType](#OperationType)
* [PortAccessType](#PortAccessType)
* [PortInfoSourceType](#PortInfoSourceType)
* [PortState](#PortState)
* [RecordState](#RecordState)
* [RegionName](#RegionName)
* [RelationalDatabaseEngine](#RelationalDatabaseEngine)
* [RelationalDatabaseMetricName](#RelationalDatabaseMetricName)
* [RelationalDatabasePasswordVersion](#RelationalDatabasePasswordVersion)
* [ResourceType](#ResourceType)


@docs AccessDirection,BlueprintType,CloudFormationStackRecordSourceType,DiskSnapshotState,DiskState,ExportSnapshotRecordSourceType,InstanceAccessProtocol,InstanceHealthReason,InstanceHealthState,InstanceMetricName,InstancePlatform,InstanceSnapshotState,LoadBalancerAttributeName,LoadBalancerMetricName,LoadBalancerProtocol,LoadBalancerState,LoadBalancerTlsCertificateDomainStatus,LoadBalancerTlsCertificateFailureReason,LoadBalancerTlsCertificateRenewalStatus,LoadBalancerTlsCertificateRevocationReason,LoadBalancerTlsCertificateStatus,MetricStatistic,MetricUnit,NetworkProtocol,OperationStatus,OperationType,PortAccessType,PortInfoSourceType,PortState,RecordState,RegionName,RelationalDatabaseEngine,RelationalDatabaseMetricName,RelationalDatabasePasswordVersion,ResourceType

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE

import Dict exposing (Dict)
import Time exposing (Posix)
import Iso8601
import Json.Decode.Extra as JDX


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "lightsail"
        "2016-11-28"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "Lightsail_20161128")



-- OPERATIONS

{-| <p>Allocates a static IP address.</p>

__Required Parameters__

* `staticIpName` __:__ `String`


-}

allocateStaticIp :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AllocateStaticIpResult)

allocateStaticIp staticIpName =
    
    let
        requestInput = AllocateStaticIpRequest
            
            staticIpName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> allocateStaticIpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AllocateStaticIp"
                
                (AWS.Core.Decode.ResultDecoder "AllocateStaticIpResult" allocateStaticIpResultDecoder)
                
            )





{-| <p>Attaches a block storage disk to a running or stopped Lightsail instance and exposes it to the instance with the specified disk name.</p> <p>The <code>attach disk</code> operation supports tag-based access control via resource tags applied to the resource identified by diskName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `diskName` __:__ `String`
* `instanceName` __:__ `String`
* `diskPath` __:__ `String`


-}

attachDisk :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AttachDiskResult)

attachDisk diskName instanceName diskPath =
    
    let
        requestInput = AttachDiskRequest
            
            diskName
            
            instanceName
            
            diskPath
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> attachDiskRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AttachDisk"
                
                (AWS.Core.Decode.ResultDecoder "AttachDiskResult" attachDiskResultDecoder)
                
            )





{-| <p>Attaches one or more Lightsail instances to a load balancer.</p> <p>After some time, the instances are attached to the load balancer and the health check status is available.</p> <p>The <code>attach instances to load balancer</code> operation supports tag-based access control via resource tags applied to the resource identified by loadBalancerName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `instanceNames` __:__ `(List String)`


-}

attachInstancesToLoadBalancer :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AttachInstancesToLoadBalancerResult)

attachInstancesToLoadBalancer loadBalancerName instanceNames =
    
    let
        requestInput = AttachInstancesToLoadBalancerRequest
            
            loadBalancerName
            
            instanceNames
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> attachInstancesToLoadBalancerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AttachInstancesToLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "AttachInstancesToLoadBalancerResult" attachInstancesToLoadBalancerResultDecoder)
                
            )





{-| <p>Attaches a Transport Layer Security (TLS) certificate to your load balancer. TLS is just an updated, more secure version of Secure Socket Layer (SSL).</p> <p>Once you create and validate your certificate, you can attach it to your load balancer. You can also use this API to rotate the certificates on your account. Use the <code>AttachLoadBalancerTlsCertificate</code> operation with the non-attached certificate, and it will replace the existing one and become the attached certificate.</p> <p>The <code>attach load balancer tls certificate</code> operation supports tag-based access control via resource tags applied to the resource identified by loadBalancerName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `certificateName` __:__ `String`


-}

attachLoadBalancerTlsCertificate :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AttachLoadBalancerTlsCertificateResult)

attachLoadBalancerTlsCertificate loadBalancerName certificateName =
    
    let
        requestInput = AttachLoadBalancerTlsCertificateRequest
            
            loadBalancerName
            
            certificateName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> attachLoadBalancerTlsCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AttachLoadBalancerTlsCertificate"
                
                (AWS.Core.Decode.ResultDecoder "AttachLoadBalancerTlsCertificateResult" attachLoadBalancerTlsCertificateResultDecoder)
                
            )





{-| <p>Attaches a static IP address to a specific Amazon Lightsail instance.</p>

__Required Parameters__

* `staticIpName` __:__ `String`
* `instanceName` __:__ `String`


-}

attachStaticIp :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AttachStaticIpResult)

attachStaticIp staticIpName instanceName =
    
    let
        requestInput = AttachStaticIpRequest
            
            staticIpName
            
            instanceName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> attachStaticIpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AttachStaticIp"
                
                (AWS.Core.Decode.ResultDecoder "AttachStaticIpResult" attachStaticIpResultDecoder)
                
            )





{-| <p>Closes the public ports on a specific Amazon Lightsail instance.</p> <p>The <code>close instance public ports</code> operation supports tag-based access control via resource tags applied to the resource identified by instanceName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `portInfo` __:__ `PortInfo`
* `instanceName` __:__ `String`


-}

closeInstancePublicPorts :
  
    PortInfo ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CloseInstancePublicPortsResult)

closeInstancePublicPorts portInfo instanceName =
    
    let
        requestInput = CloseInstancePublicPortsRequest
            
            portInfo
            
            instanceName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> closeInstancePublicPortsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CloseInstancePublicPorts"
                
                (AWS.Core.Decode.ResultDecoder "CloseInstancePublicPortsResult" closeInstancePublicPortsResultDecoder)
                
            )





{-| <p>Copies an instance or disk snapshot from one AWS Region to another in Amazon Lightsail.</p>

__Required Parameters__

* `sourceSnapshotName` __:__ `String`
* `targetSnapshotName` __:__ `String`
* `sourceRegion` __:__ `RegionName`


-}

copySnapshot :
  
    String ->
  
    String ->
  
    RegionName ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopySnapshotResult)

copySnapshot sourceSnapshotName targetSnapshotName sourceRegion =
    
    let
        requestInput = CopySnapshotRequest
            
            sourceSnapshotName
            
            targetSnapshotName
            
            sourceRegion
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> copySnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CopySnapshot"
                
                (AWS.Core.Decode.ResultDecoder "CopySnapshotResult" copySnapshotResultDecoder)
                
            )





{-| <p>Creates an AWS CloudFormation stack, which creates a new Amazon EC2 instance from an exported Amazon Lightsail snapshot. This operation results in a CloudFormation stack record that can be used to track the AWS CloudFormation stack created. Use the <code>get cloud formation stack records</code> operation to get a list of the CloudFormation stacks created.</p> <important> <p>Wait until after your new Amazon EC2 instance is created before running the <code>create cloud formation stack</code> operation again with the same export snapshot record.</p> </important>

__Required Parameters__

* `instances` __:__ `(List InstanceEntry)`


-}

createCloudFormationStack :
  
    (List InstanceEntry) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateCloudFormationStackResult)

createCloudFormationStack instances =
    
    let
        requestInput = CreateCloudFormationStackRequest
            
            instances
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createCloudFormationStackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateCloudFormationStack"
                
                (AWS.Core.Decode.ResultDecoder "CreateCloudFormationStackResult" createCloudFormationStackResultDecoder)
                
            )





{-| <p>Creates a block storage disk that can be attached to a Lightsail instance in the same Availability Zone (e.g., <code>us-east-2a</code>). The disk is created in the regional endpoint that you send the HTTP request to. For more information, see <a href="https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail">Regions and Availability Zones in Lightsail</a>.</p> <p>The <code>create disk</code> operation supports tag-based access control via request tags. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `diskName` __:__ `String`
* `availabilityZone` __:__ `String`
* `sizeInGb` __:__ `Int`


-}

createDisk :
  
    String ->
  
    String ->
  
    Int ->
  
  
    ( CreateDiskOptions -> CreateDiskOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDiskResult)

createDisk diskName availabilityZone sizeInGb setOptions =
    
    let
        requestInput = CreateDiskRequest
            
            diskName
            
            availabilityZone
            
            sizeInGb
            
            options.tags
            
        
        options = setOptions (CreateDiskOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDiskRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDisk"
                
                (AWS.Core.Decode.ResultDecoder "CreateDiskResult" createDiskResultDecoder)
                
            )



{-| Options for a createDisk request
-}
type alias CreateDiskOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a block storage disk from a disk snapshot that can be attached to a Lightsail instance in the same Availability Zone (e.g., <code>us-east-2a</code>). The disk is created in the regional endpoint that you send the HTTP request to. For more information, see <a href="https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail">Regions and Availability Zones in Lightsail</a>.</p> <p>The <code>create disk from snapshot</code> operation supports tag-based access control via request tags and resource tags applied to the resource identified by diskSnapshotName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `diskName` __:__ `String`
* `diskSnapshotName` __:__ `String`
* `availabilityZone` __:__ `String`
* `sizeInGb` __:__ `Int`


-}

createDiskFromSnapshot :
  
    String ->
  
    String ->
  
    String ->
  
    Int ->
  
  
    ( CreateDiskFromSnapshotOptions -> CreateDiskFromSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDiskFromSnapshotResult)

createDiskFromSnapshot diskName diskSnapshotName availabilityZone sizeInGb setOptions =
    
    let
        requestInput = CreateDiskFromSnapshotRequest
            
            diskName
            
            diskSnapshotName
            
            availabilityZone
            
            sizeInGb
            
            options.tags
            
        
        options = setOptions (CreateDiskFromSnapshotOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDiskFromSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDiskFromSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "CreateDiskFromSnapshotResult" createDiskFromSnapshotResultDecoder)
                
            )



{-| Options for a createDiskFromSnapshot request
-}
type alias CreateDiskFromSnapshotOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a snapshot of a block storage disk. You can use snapshots for backups, to make copies of disks, and to save data before shutting down a Lightsail instance.</p> <p>You can take a snapshot of an attached disk that is in use; however, snapshots only capture data that has been written to your disk at the time the snapshot command is issued. This may exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the disk long enough to take a snapshot, your snapshot should be complete. Nevertheless, if you cannot pause all file writes to the disk, you should unmount the disk from within the Lightsail instance, issue the create disk snapshot command, and then remount the disk to ensure a consistent and complete snapshot. You may remount and use your disk while the snapshot status is pending.</p> <p>You can also use this operation to create a snapshot of an instance's system volume. You might want to do this, for example, to recover data from the system volume of a botched instance or to create a backup of the system volume like you would for a block storage disk. To create a snapshot of a system volume, just define the <code>instance name</code> parameter when issuing the snapshot command, and a snapshot of the defined instance's system volume will be created. After the snapshot is available, you can create a block storage disk from the snapshot and attach it to a running instance to access the data on the disk.</p> <p>The <code>create disk snapshot</code> operation supports tag-based access control via request tags. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `diskSnapshotName` __:__ `String`


-}

createDiskSnapshot :
  
    String ->
  
  
    ( CreateDiskSnapshotOptions -> CreateDiskSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDiskSnapshotResult)

createDiskSnapshot diskSnapshotName setOptions =
    
    let
        requestInput = CreateDiskSnapshotRequest
            
            options.diskName
            
            diskSnapshotName
            
            options.instanceName
            
            options.tags
            
        
        options = setOptions (CreateDiskSnapshotOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDiskSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDiskSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "CreateDiskSnapshotResult" createDiskSnapshotResultDecoder)
                
            )



{-| Options for a createDiskSnapshot request
-}
type alias CreateDiskSnapshotOptions =
    {
    diskName : Maybe String,instanceName : Maybe String,tags : Maybe (List Tag)
    }



{-| <p>Creates a domain resource for the specified domain (e.g., example.com).</p> <p>The <code>create domain</code> operation supports tag-based access control via request tags. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

createDomain :
  
    String ->
  
  
    ( CreateDomainOptions -> CreateDomainOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDomainResult)

createDomain domainName setOptions =
    
    let
        requestInput = CreateDomainRequest
            
            domainName
            
            options.tags
            
        
        options = setOptions (CreateDomainOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDomainRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDomain"
                
                (AWS.Core.Decode.ResultDecoder "CreateDomainResult" createDomainResultDecoder)
                
            )



{-| Options for a createDomain request
-}
type alias CreateDomainOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates one of the following entry records associated with the domain: Address (A), canonical name (CNAME), mail exchanger (MX), name server (NS), start of authority (SOA), service locator (SRV), or text (TXT).</p> <p>The <code>create domain entry</code> operation supports tag-based access control via resource tags applied to the resource identified by domainName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `domainEntry` __:__ `DomainEntry`


-}

createDomainEntry :
  
    String ->
  
    DomainEntry ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDomainEntryResult)

createDomainEntry domainName domainEntry =
    
    let
        requestInput = CreateDomainEntryRequest
            
            domainName
            
            domainEntry
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDomainEntryRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDomainEntry"
                
                (AWS.Core.Decode.ResultDecoder "CreateDomainEntryResult" createDomainEntryResultDecoder)
                
            )





{-| <p>Creates a snapshot of a specific virtual private server, or <i>instance</i>. You can use a snapshot to create a new instance that is based on that snapshot.</p> <p>The <code>create instance snapshot</code> operation supports tag-based access control via request tags. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `instanceSnapshotName` __:__ `String`
* `instanceName` __:__ `String`


-}

createInstanceSnapshot :
  
    String ->
  
    String ->
  
  
    ( CreateInstanceSnapshotOptions -> CreateInstanceSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateInstanceSnapshotResult)

createInstanceSnapshot instanceSnapshotName instanceName setOptions =
    
    let
        requestInput = CreateInstanceSnapshotRequest
            
            instanceSnapshotName
            
            instanceName
            
            options.tags
            
        
        options = setOptions (CreateInstanceSnapshotOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createInstanceSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateInstanceSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "CreateInstanceSnapshotResult" createInstanceSnapshotResultDecoder)
                
            )



{-| Options for a createInstanceSnapshot request
-}
type alias CreateInstanceSnapshotOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates one or more Amazon Lightsail virtual private servers, or <i>instances</i>. Create instances using active blueprints. Inactive blueprints are listed to support customers with existing instances but are not necessarily available for launch of new instances. Blueprints are marked inactive when they become outdated due to operating system updates or new application releases. Use the get blueprints operation to return a list of available blueprints.</p> <p>The <code>create instances</code> operation supports tag-based access control via request tags. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `instanceNames` __:__ `(List String)`
* `availabilityZone` __:__ `String`
* `blueprintId` __:__ `String`
* `bundleId` __:__ `String`


-}

createInstances :
  
    (List String) ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateInstancesOptions -> CreateInstancesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateInstancesResult)

createInstances instanceNames availabilityZone blueprintId bundleId setOptions =
    
    let
        requestInput = CreateInstancesRequest
            
            instanceNames
            
            availabilityZone
            
            options.customImageName
            
            blueprintId
            
            bundleId
            
            options.userData
            
            options.keyPairName
            
            options.tags
            
        
        options = setOptions (CreateInstancesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createInstancesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateInstances"
                
                (AWS.Core.Decode.ResultDecoder "CreateInstancesResult" createInstancesResultDecoder)
                
            )



{-| Options for a createInstances request
-}
type alias CreateInstancesOptions =
    {
    customImageName : Maybe String,userData : Maybe String,keyPairName : Maybe String,tags : Maybe (List Tag)
    }



{-| <p>Uses a specific snapshot as a blueprint for creating one or more new instances that are based on that identical configuration.</p> <p>The <code>create instances from snapshot</code> operation supports tag-based access control via request tags and resource tags applied to the resource identified by instanceSnapshotName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `instanceNames` __:__ `(List String)`
* `availabilityZone` __:__ `String`
* `instanceSnapshotName` __:__ `String`
* `bundleId` __:__ `String`


-}

createInstancesFromSnapshot :
  
    (List String) ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateInstancesFromSnapshotOptions -> CreateInstancesFromSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateInstancesFromSnapshotResult)

createInstancesFromSnapshot instanceNames availabilityZone instanceSnapshotName bundleId setOptions =
    
    let
        requestInput = CreateInstancesFromSnapshotRequest
            
            instanceNames
            
            options.attachedDiskMapping
            
            availabilityZone
            
            instanceSnapshotName
            
            bundleId
            
            options.userData
            
            options.keyPairName
            
            options.tags
            
        
        options = setOptions (CreateInstancesFromSnapshotOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createInstancesFromSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateInstancesFromSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "CreateInstancesFromSnapshotResult" createInstancesFromSnapshotResultDecoder)
                
            )



{-| Options for a createInstancesFromSnapshot request
-}
type alias CreateInstancesFromSnapshotOptions =
    {
    attachedDiskMapping : Maybe (Dict String (List DiskMap)),userData : Maybe String,keyPairName : Maybe String,tags : Maybe (List Tag)
    }



{-| <p>Creates an SSH key pair.</p> <p>The <code>create key pair</code> operation supports tag-based access control via request tags. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `keyPairName` __:__ `String`


-}

createKeyPair :
  
    String ->
  
  
    ( CreateKeyPairOptions -> CreateKeyPairOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateKeyPairResult)

createKeyPair keyPairName setOptions =
    
    let
        requestInput = CreateKeyPairRequest
            
            keyPairName
            
            options.tags
            
        
        options = setOptions (CreateKeyPairOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createKeyPairRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateKeyPair"
                
                (AWS.Core.Decode.ResultDecoder "CreateKeyPairResult" createKeyPairResultDecoder)
                
            )



{-| Options for a createKeyPair request
-}
type alias CreateKeyPairOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a Lightsail load balancer. To learn more about deciding whether to load balance your application, see <a href="https://lightsail.aws.amazon.com/ls/docs/how-to/article/configure-lightsail-instances-for-load-balancing">Configure your Lightsail instances for load balancing</a>. You can create up to 5 load balancers per AWS Region in your account.</p> <p>When you create a load balancer, you can specify a unique name and port settings. To change additional load balancer settings, use the <code>UpdateLoadBalancerAttribute</code> operation.</p> <p>The <code>create load balancer</code> operation supports tag-based access control via request tags. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `instancePort` __:__ `Int`


-}

createLoadBalancer :
  
    String ->
  
    Int ->
  
  
    ( CreateLoadBalancerOptions -> CreateLoadBalancerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateLoadBalancerResult)

createLoadBalancer loadBalancerName instancePort setOptions =
    
    let
        requestInput = CreateLoadBalancerRequest
            
            loadBalancerName
            
            instancePort
            
            options.healthCheckPath
            
            options.certificateName
            
            options.certificateDomainName
            
            options.certificateAlternativeNames
            
            options.tags
            
        
        options = setOptions (CreateLoadBalancerOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createLoadBalancerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "CreateLoadBalancerResult" createLoadBalancerResultDecoder)
                
            )



{-| Options for a createLoadBalancer request
-}
type alias CreateLoadBalancerOptions =
    {
    healthCheckPath : Maybe String,certificateName : Maybe String,certificateDomainName : Maybe String,certificateAlternativeNames : Maybe (List String),tags : Maybe (List Tag)
    }



{-| <p>Creates a Lightsail load balancer TLS certificate.</p> <p>TLS is just an updated, more secure version of Secure Socket Layer (SSL).</p> <p>The <code>create load balancer tls certificate</code> operation supports tag-based access control via resource tags applied to the resource identified by loadBalancerName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `certificateName` __:__ `String`
* `certificateDomainName` __:__ `String`


-}

createLoadBalancerTlsCertificate :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateLoadBalancerTlsCertificateOptions -> CreateLoadBalancerTlsCertificateOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateLoadBalancerTlsCertificateResult)

createLoadBalancerTlsCertificate loadBalancerName certificateName certificateDomainName setOptions =
    
    let
        requestInput = CreateLoadBalancerTlsCertificateRequest
            
            loadBalancerName
            
            certificateName
            
            certificateDomainName
            
            options.certificateAlternativeNames
            
            options.tags
            
        
        options = setOptions (CreateLoadBalancerTlsCertificateOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createLoadBalancerTlsCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateLoadBalancerTlsCertificate"
                
                (AWS.Core.Decode.ResultDecoder "CreateLoadBalancerTlsCertificateResult" createLoadBalancerTlsCertificateResultDecoder)
                
            )



{-| Options for a createLoadBalancerTlsCertificate request
-}
type alias CreateLoadBalancerTlsCertificateOptions =
    {
    certificateAlternativeNames : Maybe (List String),tags : Maybe (List Tag)
    }



{-| <p>Creates a new database in Amazon Lightsail.</p> <p>The <code>create relational database</code> operation supports tag-based access control via request tags. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`
* `relationalDatabaseBlueprintId` __:__ `String`
* `relationalDatabaseBundleId` __:__ `String`
* `masterDatabaseName` __:__ `String`
* `masterUsername` __:__ `String`


-}

createRelationalDatabase :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateRelationalDatabaseOptions -> CreateRelationalDatabaseOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRelationalDatabaseResult)

createRelationalDatabase relationalDatabaseName relationalDatabaseBlueprintId relationalDatabaseBundleId masterDatabaseName masterUsername setOptions =
    
    let
        requestInput = CreateRelationalDatabaseRequest
            
            relationalDatabaseName
            
            options.availabilityZone
            
            relationalDatabaseBlueprintId
            
            relationalDatabaseBundleId
            
            masterDatabaseName
            
            masterUsername
            
            options.masterUserPassword
            
            options.preferredBackupWindow
            
            options.preferredMaintenanceWindow
            
            options.publiclyAccessible
            
            options.tags
            
        
        options = setOptions (CreateRelationalDatabaseOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createRelationalDatabaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRelationalDatabase"
                
                (AWS.Core.Decode.ResultDecoder "CreateRelationalDatabaseResult" createRelationalDatabaseResultDecoder)
                
            )



{-| Options for a createRelationalDatabase request
-}
type alias CreateRelationalDatabaseOptions =
    {
    availabilityZone : Maybe String,masterUserPassword : Maybe String,preferredBackupWindow : Maybe String,preferredMaintenanceWindow : Maybe String,publiclyAccessible : Maybe Bool,tags : Maybe (List Tag)
    }



{-| <p>Creates a new database from an existing database snapshot in Amazon Lightsail.</p> <p>You can create a new database from a snapshot in if something goes wrong with your original database, or to change it to a different plan, such as a high availability or standard plan.</p> <p>The <code>create relational database from snapshot</code> operation supports tag-based access control via request tags and resource tags applied to the resource identified by relationalDatabaseSnapshotName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`


-}

createRelationalDatabaseFromSnapshot :
  
    String ->
  
  
    ( CreateRelationalDatabaseFromSnapshotOptions -> CreateRelationalDatabaseFromSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRelationalDatabaseFromSnapshotResult)

createRelationalDatabaseFromSnapshot relationalDatabaseName setOptions =
    
    let
        requestInput = CreateRelationalDatabaseFromSnapshotRequest
            
            relationalDatabaseName
            
            options.availabilityZone
            
            options.publiclyAccessible
            
            options.relationalDatabaseSnapshotName
            
            options.relationalDatabaseBundleId
            
            options.sourceRelationalDatabaseName
            
            options.restoreTime
            
            options.useLatestRestorableTime
            
            options.tags
            
        
        options = setOptions (CreateRelationalDatabaseFromSnapshotOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createRelationalDatabaseFromSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRelationalDatabaseFromSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "CreateRelationalDatabaseFromSnapshotResult" createRelationalDatabaseFromSnapshotResultDecoder)
                
            )



{-| Options for a createRelationalDatabaseFromSnapshot request
-}
type alias CreateRelationalDatabaseFromSnapshotOptions =
    {
    availabilityZone : Maybe String,publiclyAccessible : Maybe Bool,relationalDatabaseSnapshotName : Maybe String,relationalDatabaseBundleId : Maybe String,sourceRelationalDatabaseName : Maybe String,restoreTime : Maybe Posix,useLatestRestorableTime : Maybe Bool,tags : Maybe (List Tag)
    }



{-| <p>Creates a snapshot of your database in Amazon Lightsail. You can use snapshots for backups, to make copies of a database, and to save data before deleting a database.</p> <p>The <code>create relational database snapshot</code> operation supports tag-based access control via request tags. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`
* `relationalDatabaseSnapshotName` __:__ `String`


-}

createRelationalDatabaseSnapshot :
  
    String ->
  
    String ->
  
  
    ( CreateRelationalDatabaseSnapshotOptions -> CreateRelationalDatabaseSnapshotOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRelationalDatabaseSnapshotResult)

createRelationalDatabaseSnapshot relationalDatabaseName relationalDatabaseSnapshotName setOptions =
    
    let
        requestInput = CreateRelationalDatabaseSnapshotRequest
            
            relationalDatabaseName
            
            relationalDatabaseSnapshotName
            
            options.tags
            
        
        options = setOptions (CreateRelationalDatabaseSnapshotOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createRelationalDatabaseSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRelationalDatabaseSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "CreateRelationalDatabaseSnapshotResult" createRelationalDatabaseSnapshotResultDecoder)
                
            )



{-| Options for a createRelationalDatabaseSnapshot request
-}
type alias CreateRelationalDatabaseSnapshotOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Deletes the specified block storage disk. The disk must be in the <code>available</code> state (not attached to a Lightsail instance).</p> <note> <p>The disk may remain in the <code>deleting</code> state for several minutes.</p> </note> <p>The <code>delete disk</code> operation supports tag-based access control via resource tags applied to the resource identified by diskName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `diskName` __:__ `String`


-}

deleteDisk :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDiskResult)

deleteDisk diskName =
    
    let
        requestInput = DeleteDiskRequest
            
            diskName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDiskRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDisk"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDiskResult" deleteDiskResultDecoder)
                
            )





{-| <p>Deletes the specified disk snapshot.</p> <p>When you make periodic snapshots of a disk, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the disk.</p> <p>The <code>delete disk snapshot</code> operation supports tag-based access control via resource tags applied to the resource identified by diskSnapshotName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `diskSnapshotName` __:__ `String`


-}

deleteDiskSnapshot :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDiskSnapshotResult)

deleteDiskSnapshot diskSnapshotName =
    
    let
        requestInput = DeleteDiskSnapshotRequest
            
            diskSnapshotName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDiskSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDiskSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDiskSnapshotResult" deleteDiskSnapshotResultDecoder)
                
            )





{-| <p>Deletes the specified domain recordset and all of its domain records.</p> <p>The <code>delete domain</code> operation supports tag-based access control via resource tags applied to the resource identified by domainName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

deleteDomain :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDomainResult)

deleteDomain domainName =
    
    let
        requestInput = DeleteDomainRequest
            
            domainName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDomainRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDomain"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDomainResult" deleteDomainResultDecoder)
                
            )





{-| <p>Deletes a specific domain entry.</p> <p>The <code>delete domain entry</code> operation supports tag-based access control via resource tags applied to the resource identified by domainName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `domainEntry` __:__ `DomainEntry`


-}

deleteDomainEntry :
  
    String ->
  
    DomainEntry ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDomainEntryResult)

deleteDomainEntry domainName domainEntry =
    
    let
        requestInput = DeleteDomainEntryRequest
            
            domainName
            
            domainEntry
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDomainEntryRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDomainEntry"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDomainEntryResult" deleteDomainEntryResultDecoder)
                
            )





{-| <p>Deletes a specific Amazon Lightsail virtual private server, or <i>instance</i>.</p> <p>The <code>delete instance</code> operation supports tag-based access control via resource tags applied to the resource identified by instanceName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}

deleteInstance :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteInstanceResult)

deleteInstance instanceName =
    
    let
        requestInput = DeleteInstanceRequest
            
            instanceName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteInstance"
                
                (AWS.Core.Decode.ResultDecoder "DeleteInstanceResult" deleteInstanceResultDecoder)
                
            )





{-| <p>Deletes a specific snapshot of a virtual private server (or <i>instance</i>).</p> <p>The <code>delete instance snapshot</code> operation supports tag-based access control via resource tags applied to the resource identified by instanceSnapshotName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `instanceSnapshotName` __:__ `String`


-}

deleteInstanceSnapshot :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteInstanceSnapshotResult)

deleteInstanceSnapshot instanceSnapshotName =
    
    let
        requestInput = DeleteInstanceSnapshotRequest
            
            instanceSnapshotName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteInstanceSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteInstanceSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "DeleteInstanceSnapshotResult" deleteInstanceSnapshotResultDecoder)
                
            )





{-| <p>Deletes a specific SSH key pair.</p> <p>The <code>delete key pair</code> operation supports tag-based access control via resource tags applied to the resource identified by keyPairName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `keyPairName` __:__ `String`


-}

deleteKeyPair :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteKeyPairResult)

deleteKeyPair keyPairName =
    
    let
        requestInput = DeleteKeyPairRequest
            
            keyPairName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteKeyPairRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteKeyPair"
                
                (AWS.Core.Decode.ResultDecoder "DeleteKeyPairResult" deleteKeyPairResultDecoder)
                
            )





{-| <p>Deletes the known host key or certificate used by the Amazon Lightsail browser-based SSH or RDP clients to authenticate an instance. This operation enables the Lightsail browser-based SSH or RDP clients to connect to the instance after a host key mismatch.</p> <important> <p>Perform this operation only if you were expecting the host key or certificate mismatch or if you are familiar with the new host key or certificate on the instance. For more information, see <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-troubleshooting-browser-based-ssh-rdp-client-connection">Troubleshooting connection issues when using the Amazon Lightsail browser-based SSH or RDP client</a>.</p> </important>

__Required Parameters__

* `instanceName` __:__ `String`


-}

deleteKnownHostKeys :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteKnownHostKeysResult)

deleteKnownHostKeys instanceName =
    
    let
        requestInput = DeleteKnownHostKeysRequest
            
            instanceName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteKnownHostKeysRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteKnownHostKeys"
                
                (AWS.Core.Decode.ResultDecoder "DeleteKnownHostKeysResult" deleteKnownHostKeysResultDecoder)
                
            )





{-| <p>Deletes a Lightsail load balancer and all its associated SSL/TLS certificates. Once the load balancer is deleted, you will need to create a new load balancer, create a new certificate, and verify domain ownership again.</p> <p>The <code>delete load balancer</code> operation supports tag-based access control via resource tags applied to the resource identified by loadBalancerName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`


-}

deleteLoadBalancer :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteLoadBalancerResult)

deleteLoadBalancer loadBalancerName =
    
    let
        requestInput = DeleteLoadBalancerRequest
            
            loadBalancerName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteLoadBalancerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "DeleteLoadBalancerResult" deleteLoadBalancerResultDecoder)
                
            )





{-| <p>Deletes an SSL/TLS certificate associated with a Lightsail load balancer.</p> <p>The <code>delete load balancer tls certificate</code> operation supports tag-based access control via resource tags applied to the resource identified by loadBalancerName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `certificateName` __:__ `String`


-}

deleteLoadBalancerTlsCertificate :
  
    String ->
  
    String ->
  
  
    ( DeleteLoadBalancerTlsCertificateOptions -> DeleteLoadBalancerTlsCertificateOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteLoadBalancerTlsCertificateResult)

deleteLoadBalancerTlsCertificate loadBalancerName certificateName setOptions =
    
    let
        requestInput = DeleteLoadBalancerTlsCertificateRequest
            
            loadBalancerName
            
            certificateName
            
            options.force
            
        
        options = setOptions (DeleteLoadBalancerTlsCertificateOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteLoadBalancerTlsCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLoadBalancerTlsCertificate"
                
                (AWS.Core.Decode.ResultDecoder "DeleteLoadBalancerTlsCertificateResult" deleteLoadBalancerTlsCertificateResultDecoder)
                
            )



{-| Options for a deleteLoadBalancerTlsCertificate request
-}
type alias DeleteLoadBalancerTlsCertificateOptions =
    {
    force : Maybe Bool
    }



{-| <p>Deletes a database in Amazon Lightsail.</p> <p>The <code>delete relational database</code> operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`


-}

deleteRelationalDatabase :
  
    String ->
  
  
    ( DeleteRelationalDatabaseOptions -> DeleteRelationalDatabaseOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRelationalDatabaseResult)

deleteRelationalDatabase relationalDatabaseName setOptions =
    
    let
        requestInput = DeleteRelationalDatabaseRequest
            
            relationalDatabaseName
            
            options.skipFinalSnapshot
            
            options.finalRelationalDatabaseSnapshotName
            
        
        options = setOptions (DeleteRelationalDatabaseOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRelationalDatabaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRelationalDatabase"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRelationalDatabaseResult" deleteRelationalDatabaseResultDecoder)
                
            )



{-| Options for a deleteRelationalDatabase request
-}
type alias DeleteRelationalDatabaseOptions =
    {
    skipFinalSnapshot : Maybe Bool,finalRelationalDatabaseSnapshotName : Maybe String
    }



{-| <p>Deletes a database snapshot in Amazon Lightsail.</p> <p>The <code>delete relational database snapshot</code> operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `relationalDatabaseSnapshotName` __:__ `String`


-}

deleteRelationalDatabaseSnapshot :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRelationalDatabaseSnapshotResult)

deleteRelationalDatabaseSnapshot relationalDatabaseSnapshotName =
    
    let
        requestInput = DeleteRelationalDatabaseSnapshotRequest
            
            relationalDatabaseSnapshotName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRelationalDatabaseSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRelationalDatabaseSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRelationalDatabaseSnapshotResult" deleteRelationalDatabaseSnapshotResultDecoder)
                
            )





{-| <p>Detaches a stopped block storage disk from a Lightsail instance. Make sure to unmount any file systems on the device within your operating system before stopping the instance and detaching the disk.</p> <p>The <code>detach disk</code> operation supports tag-based access control via resource tags applied to the resource identified by diskName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `diskName` __:__ `String`


-}

detachDisk :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetachDiskResult)

detachDisk diskName =
    
    let
        requestInput = DetachDiskRequest
            
            diskName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> detachDiskRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DetachDisk"
                
                (AWS.Core.Decode.ResultDecoder "DetachDiskResult" detachDiskResultDecoder)
                
            )





{-| <p>Detaches the specified instances from a Lightsail load balancer.</p> <p>This operation waits until the instances are no longer needed before they are detached from the load balancer.</p> <p>The <code>detach instances from load balancer</code> operation supports tag-based access control via resource tags applied to the resource identified by loadBalancerName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `instanceNames` __:__ `(List String)`


-}

detachInstancesFromLoadBalancer :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetachInstancesFromLoadBalancerResult)

detachInstancesFromLoadBalancer loadBalancerName instanceNames =
    
    let
        requestInput = DetachInstancesFromLoadBalancerRequest
            
            loadBalancerName
            
            instanceNames
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> detachInstancesFromLoadBalancerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DetachInstancesFromLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "DetachInstancesFromLoadBalancerResult" detachInstancesFromLoadBalancerResultDecoder)
                
            )





{-| <p>Detaches a static IP from the Amazon Lightsail instance to which it is attached.</p>

__Required Parameters__

* `staticIpName` __:__ `String`


-}

detachStaticIp :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DetachStaticIpResult)

detachStaticIp staticIpName =
    
    let
        requestInput = DetachStaticIpRequest
            
            staticIpName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> detachStaticIpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DetachStaticIp"
                
                (AWS.Core.Decode.ResultDecoder "DetachStaticIpResult" detachStaticIpResultDecoder)
                
            )





{-| <p>Downloads the default SSH key pair from the user's account.</p>

__Required Parameters__



-}

downloadDefaultKeyPair :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DownloadDefaultKeyPairResult)

downloadDefaultKeyPair =
    
    let
        requestInput = DownloadDefaultKeyPairRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> downloadDefaultKeyPairRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DownloadDefaultKeyPair"
                
                (AWS.Core.Decode.ResultDecoder "DownloadDefaultKeyPairResult" downloadDefaultKeyPairResultDecoder)
                
            )





{-| <p>Exports an Amazon Lightsail instance or block storage disk snapshot to Amazon Elastic Compute Cloud (Amazon EC2). This operation results in an export snapshot record that can be used with the <code>create cloud formation stack</code> operation to create new Amazon EC2 instances.</p> <p>Exported instance snapshots appear in Amazon EC2 as Amazon Machine Images (AMIs), and the instance system disk appears as an Amazon Elastic Block Store (Amazon EBS) volume. Exported disk snapshots appear in Amazon EC2 as Amazon EBS volumes. Snapshots are exported to the same Amazon Web Services Region in Amazon EC2 as the source Lightsail snapshot.</p> <p/> <p>The <code>export snapshot</code> operation supports tag-based access control via resource tags applied to the resource identified by sourceSnapshotName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p> <note> <p>Use the <code>get instance snapshots</code> or <code>get disk snapshots</code> operations to get a list of snapshots that you can export to Amazon EC2.</p> </note>

__Required Parameters__

* `sourceSnapshotName` __:__ `String`


-}

exportSnapshot :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ExportSnapshotResult)

exportSnapshot sourceSnapshotName =
    
    let
        requestInput = ExportSnapshotRequest
            
            sourceSnapshotName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> exportSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ExportSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "ExportSnapshotResult" exportSnapshotResultDecoder)
                
            )





{-| <p>Returns the names of all active (not deleted) resources.</p>

__Required Parameters__



-}

getActiveNames :
  
  
    ( GetActiveNamesOptions -> GetActiveNamesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetActiveNamesResult)

getActiveNames setOptions =
    
    let
        requestInput = GetActiveNamesRequest
            
            options.pageToken
            
        
        options = setOptions (GetActiveNamesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getActiveNamesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetActiveNames"
                
                (AWS.Core.Decode.ResultDecoder "GetActiveNamesResult" getActiveNamesResultDecoder)
                
            )



{-| Options for a getActiveNames request
-}
type alias GetActiveNamesOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns the list of available instance images, or <i>blueprints</i>. You can use a blueprint to create a new virtual private server already running a specific operating system, as well as a preinstalled app or development stack. The software each instance is running depends on the blueprint image you choose.</p>

__Required Parameters__



-}

getBlueprints :
  
  
    ( GetBlueprintsOptions -> GetBlueprintsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBlueprintsResult)

getBlueprints setOptions =
    
    let
        requestInput = GetBlueprintsRequest
            
            options.includeInactive
            
            options.pageToken
            
        
        options = setOptions (GetBlueprintsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getBlueprintsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetBlueprints"
                
                (AWS.Core.Decode.ResultDecoder "GetBlueprintsResult" getBlueprintsResultDecoder)
                
            )



{-| Options for a getBlueprints request
-}
type alias GetBlueprintsOptions =
    {
    includeInactive : Maybe Bool,pageToken : Maybe String
    }



{-| <p>Returns the list of bundles that are available for purchase. A bundle describes the specs for your virtual private server (or <i>instance</i>).</p>

__Required Parameters__



-}

getBundles :
  
  
    ( GetBundlesOptions -> GetBundlesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBundlesResult)

getBundles setOptions =
    
    let
        requestInput = GetBundlesRequest
            
            options.includeInactive
            
            options.pageToken
            
        
        options = setOptions (GetBundlesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getBundlesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetBundles"
                
                (AWS.Core.Decode.ResultDecoder "GetBundlesResult" getBundlesResultDecoder)
                
            )



{-| Options for a getBundles request
-}
type alias GetBundlesOptions =
    {
    includeInactive : Maybe Bool,pageToken : Maybe String
    }



{-| <p>Returns the CloudFormation stack record created as a result of the <code>create cloud formation stack</code> operation.</p> <p>An AWS CloudFormation stack is used to create a new Amazon EC2 instance from an exported Lightsail snapshot.</p>

__Required Parameters__



-}

getCloudFormationStackRecords :
  
  
    ( GetCloudFormationStackRecordsOptions -> GetCloudFormationStackRecordsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCloudFormationStackRecordsResult)

getCloudFormationStackRecords setOptions =
    
    let
        requestInput = GetCloudFormationStackRecordsRequest
            
            options.pageToken
            
        
        options = setOptions (GetCloudFormationStackRecordsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCloudFormationStackRecordsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetCloudFormationStackRecords"
                
                (AWS.Core.Decode.ResultDecoder "GetCloudFormationStackRecordsResult" getCloudFormationStackRecordsResultDecoder)
                
            )



{-| Options for a getCloudFormationStackRecords request
-}
type alias GetCloudFormationStackRecordsOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns information about a specific block storage disk.</p>

__Required Parameters__

* `diskName` __:__ `String`


-}

getDisk :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDiskResult)

getDisk diskName =
    
    let
        requestInput = GetDiskRequest
            
            diskName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDiskRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDisk"
                
                (AWS.Core.Decode.ResultDecoder "GetDiskResult" getDiskResultDecoder)
                
            )





{-| <p>Returns information about a specific block storage disk snapshot.</p>

__Required Parameters__

* `diskSnapshotName` __:__ `String`


-}

getDiskSnapshot :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDiskSnapshotResult)

getDiskSnapshot diskSnapshotName =
    
    let
        requestInput = GetDiskSnapshotRequest
            
            diskSnapshotName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDiskSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDiskSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "GetDiskSnapshotResult" getDiskSnapshotResultDecoder)
                
            )





{-| <p>Returns information about all block storage disk snapshots in your AWS account and region.</p> <p>If you are describing a long list of disk snapshots, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.</p>

__Required Parameters__



-}

getDiskSnapshots :
  
  
    ( GetDiskSnapshotsOptions -> GetDiskSnapshotsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDiskSnapshotsResult)

getDiskSnapshots setOptions =
    
    let
        requestInput = GetDiskSnapshotsRequest
            
            options.pageToken
            
        
        options = setOptions (GetDiskSnapshotsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDiskSnapshotsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDiskSnapshots"
                
                (AWS.Core.Decode.ResultDecoder "GetDiskSnapshotsResult" getDiskSnapshotsResultDecoder)
                
            )



{-| Options for a getDiskSnapshots request
-}
type alias GetDiskSnapshotsOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns information about all block storage disks in your AWS account and region.</p> <p>If you are describing a long list of disks, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.</p>

__Required Parameters__



-}

getDisks :
  
  
    ( GetDisksOptions -> GetDisksOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDisksResult)

getDisks setOptions =
    
    let
        requestInput = GetDisksRequest
            
            options.pageToken
            
        
        options = setOptions (GetDisksOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDisksRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDisks"
                
                (AWS.Core.Decode.ResultDecoder "GetDisksResult" getDisksResultDecoder)
                
            )



{-| Options for a getDisks request
-}
type alias GetDisksOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns information about a specific domain recordset.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

getDomain :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDomainResult)

getDomain domainName =
    
    let
        requestInput = GetDomainRequest
            
            domainName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDomainRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDomain"
                
                (AWS.Core.Decode.ResultDecoder "GetDomainResult" getDomainResultDecoder)
                
            )





{-| <p>Returns a list of all domains in the user's account.</p>

__Required Parameters__



-}

getDomains :
  
  
    ( GetDomainsOptions -> GetDomainsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDomainsResult)

getDomains setOptions =
    
    let
        requestInput = GetDomainsRequest
            
            options.pageToken
            
        
        options = setOptions (GetDomainsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDomainsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDomains"
                
                (AWS.Core.Decode.ResultDecoder "GetDomainsResult" getDomainsResultDecoder)
                
            )



{-| Options for a getDomains request
-}
type alias GetDomainsOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns the export snapshot record created as a result of the <code>export snapshot</code> operation.</p> <p>An export snapshot record can be used to create a new Amazon EC2 instance and its related resources with the <code>create cloud formation stack</code> operation.</p>

__Required Parameters__



-}

getExportSnapshotRecords :
  
  
    ( GetExportSnapshotRecordsOptions -> GetExportSnapshotRecordsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetExportSnapshotRecordsResult)

getExportSnapshotRecords setOptions =
    
    let
        requestInput = GetExportSnapshotRecordsRequest
            
            options.pageToken
            
        
        options = setOptions (GetExportSnapshotRecordsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getExportSnapshotRecordsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetExportSnapshotRecords"
                
                (AWS.Core.Decode.ResultDecoder "GetExportSnapshotRecordsResult" getExportSnapshotRecordsResultDecoder)
                
            )



{-| Options for a getExportSnapshotRecords request
-}
type alias GetExportSnapshotRecordsOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns information about a specific Amazon Lightsail instance, which is a virtual private server.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}

getInstance :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetInstanceResult)

getInstance instanceName =
    
    let
        requestInput = GetInstanceRequest
            
            instanceName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetInstance"
                
                (AWS.Core.Decode.ResultDecoder "GetInstanceResult" getInstanceResultDecoder)
                
            )





{-| <p>Returns temporary SSH keys you can use to connect to a specific virtual private server, or <i>instance</i>.</p> <p>The <code>get instance access details</code> operation supports tag-based access control via resource tags applied to the resource identified by instanceName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}

getInstanceAccessDetails :
  
    String ->
  
  
    ( GetInstanceAccessDetailsOptions -> GetInstanceAccessDetailsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetInstanceAccessDetailsResult)

getInstanceAccessDetails instanceName setOptions =
    
    let
        requestInput = GetInstanceAccessDetailsRequest
            
            instanceName
            
            options.protocol
            
        
        options = setOptions (GetInstanceAccessDetailsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getInstanceAccessDetailsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetInstanceAccessDetails"
                
                (AWS.Core.Decode.ResultDecoder "GetInstanceAccessDetailsResult" getInstanceAccessDetailsResultDecoder)
                
            )



{-| Options for a getInstanceAccessDetails request
-}
type alias GetInstanceAccessDetailsOptions =
    {
    protocol : Maybe InstanceAccessProtocol
    }



{-| <p>Returns the data points for the specified Amazon Lightsail instance metric, given an instance name.</p>

__Required Parameters__

* `instanceName` __:__ `String`
* `metricName` __:__ `InstanceMetricName`
* `period` __:__ `Int`
* `startTime` __:__ `Posix`
* `endTime` __:__ `Posix`
* `unit` __:__ `MetricUnit`
* `statistics` __:__ `(List MetricStatistic)`


-}

getInstanceMetricData :
  
    String ->
  
    InstanceMetricName ->
  
    Int ->
  
    Posix ->
  
    Posix ->
  
    MetricUnit ->
  
    (List MetricStatistic) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetInstanceMetricDataResult)

getInstanceMetricData instanceName metricName period startTime endTime unit statistics =
    
    let
        requestInput = GetInstanceMetricDataRequest
            
            instanceName
            
            metricName
            
            period
            
            startTime
            
            endTime
            
            unit
            
            statistics
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getInstanceMetricDataRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetInstanceMetricData"
                
                (AWS.Core.Decode.ResultDecoder "GetInstanceMetricDataResult" getInstanceMetricDataResultDecoder)
                
            )





{-| <p>Returns the port states for a specific virtual private server, or <i>instance</i>.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}

getInstancePortStates :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetInstancePortStatesResult)

getInstancePortStates instanceName =
    
    let
        requestInput = GetInstancePortStatesRequest
            
            instanceName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getInstancePortStatesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetInstancePortStates"
                
                (AWS.Core.Decode.ResultDecoder "GetInstancePortStatesResult" getInstancePortStatesResultDecoder)
                
            )





{-| <p>Returns information about a specific instance snapshot.</p>

__Required Parameters__

* `instanceSnapshotName` __:__ `String`


-}

getInstanceSnapshot :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetInstanceSnapshotResult)

getInstanceSnapshot instanceSnapshotName =
    
    let
        requestInput = GetInstanceSnapshotRequest
            
            instanceSnapshotName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getInstanceSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetInstanceSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "GetInstanceSnapshotResult" getInstanceSnapshotResultDecoder)
                
            )





{-| <p>Returns all instance snapshots for the user's account.</p>

__Required Parameters__



-}

getInstanceSnapshots :
  
  
    ( GetInstanceSnapshotsOptions -> GetInstanceSnapshotsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetInstanceSnapshotsResult)

getInstanceSnapshots setOptions =
    
    let
        requestInput = GetInstanceSnapshotsRequest
            
            options.pageToken
            
        
        options = setOptions (GetInstanceSnapshotsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getInstanceSnapshotsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetInstanceSnapshots"
                
                (AWS.Core.Decode.ResultDecoder "GetInstanceSnapshotsResult" getInstanceSnapshotsResultDecoder)
                
            )



{-| Options for a getInstanceSnapshots request
-}
type alias GetInstanceSnapshotsOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns the state of a specific instance. Works on one instance at a time.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}

getInstanceState :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetInstanceStateResult)

getInstanceState instanceName =
    
    let
        requestInput = GetInstanceStateRequest
            
            instanceName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getInstanceStateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetInstanceState"
                
                (AWS.Core.Decode.ResultDecoder "GetInstanceStateResult" getInstanceStateResultDecoder)
                
            )





{-| <p>Returns information about all Amazon Lightsail virtual private servers, or <i>instances</i>.</p>

__Required Parameters__



-}

getInstances :
  
  
    ( GetInstancesOptions -> GetInstancesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetInstancesResult)

getInstances setOptions =
    
    let
        requestInput = GetInstancesRequest
            
            options.pageToken
            
        
        options = setOptions (GetInstancesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getInstancesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetInstances"
                
                (AWS.Core.Decode.ResultDecoder "GetInstancesResult" getInstancesResultDecoder)
                
            )



{-| Options for a getInstances request
-}
type alias GetInstancesOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns information about a specific key pair.</p>

__Required Parameters__

* `keyPairName` __:__ `String`


-}

getKeyPair :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetKeyPairResult)

getKeyPair keyPairName =
    
    let
        requestInput = GetKeyPairRequest
            
            keyPairName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getKeyPairRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetKeyPair"
                
                (AWS.Core.Decode.ResultDecoder "GetKeyPairResult" getKeyPairResultDecoder)
                
            )





{-| <p>Returns information about all key pairs in the user's account.</p>

__Required Parameters__



-}

getKeyPairs :
  
  
    ( GetKeyPairsOptions -> GetKeyPairsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetKeyPairsResult)

getKeyPairs setOptions =
    
    let
        requestInput = GetKeyPairsRequest
            
            options.pageToken
            
        
        options = setOptions (GetKeyPairsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getKeyPairsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetKeyPairs"
                
                (AWS.Core.Decode.ResultDecoder "GetKeyPairsResult" getKeyPairsResultDecoder)
                
            )



{-| Options for a getKeyPairs request
-}
type alias GetKeyPairsOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns information about the specified Lightsail load balancer.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`


-}

getLoadBalancer :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLoadBalancerResult)

getLoadBalancer loadBalancerName =
    
    let
        requestInput = GetLoadBalancerRequest
            
            loadBalancerName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getLoadBalancerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetLoadBalancer"
                
                (AWS.Core.Decode.ResultDecoder "GetLoadBalancerResult" getLoadBalancerResultDecoder)
                
            )





{-| <p>Returns information about health metrics for your Lightsail load balancer.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `metricName` __:__ `LoadBalancerMetricName`
* `period` __:__ `Int`
* `startTime` __:__ `Posix`
* `endTime` __:__ `Posix`
* `unit` __:__ `MetricUnit`
* `statistics` __:__ `(List MetricStatistic)`


-}

getLoadBalancerMetricData :
  
    String ->
  
    LoadBalancerMetricName ->
  
    Int ->
  
    Posix ->
  
    Posix ->
  
    MetricUnit ->
  
    (List MetricStatistic) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLoadBalancerMetricDataResult)

getLoadBalancerMetricData loadBalancerName metricName period startTime endTime unit statistics =
    
    let
        requestInput = GetLoadBalancerMetricDataRequest
            
            loadBalancerName
            
            metricName
            
            period
            
            startTime
            
            endTime
            
            unit
            
            statistics
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getLoadBalancerMetricDataRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetLoadBalancerMetricData"
                
                (AWS.Core.Decode.ResultDecoder "GetLoadBalancerMetricDataResult" getLoadBalancerMetricDataResultDecoder)
                
            )





{-| <p>Returns information about the TLS certificates that are associated with the specified Lightsail load balancer.</p> <p>TLS is just an updated, more secure version of Secure Socket Layer (SSL).</p> <p>You can have a maximum of 2 certificates associated with a Lightsail load balancer. One is active and the other is inactive.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`


-}

getLoadBalancerTlsCertificates :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLoadBalancerTlsCertificatesResult)

getLoadBalancerTlsCertificates loadBalancerName =
    
    let
        requestInput = GetLoadBalancerTlsCertificatesRequest
            
            loadBalancerName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getLoadBalancerTlsCertificatesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetLoadBalancerTlsCertificates"
                
                (AWS.Core.Decode.ResultDecoder "GetLoadBalancerTlsCertificatesResult" getLoadBalancerTlsCertificatesResultDecoder)
                
            )





{-| <p>Returns information about all load balancers in an account.</p> <p>If you are describing a long list of load balancers, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.</p>

__Required Parameters__



-}

getLoadBalancers :
  
  
    ( GetLoadBalancersOptions -> GetLoadBalancersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLoadBalancersResult)

getLoadBalancers setOptions =
    
    let
        requestInput = GetLoadBalancersRequest
            
            options.pageToken
            
        
        options = setOptions (GetLoadBalancersOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getLoadBalancersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetLoadBalancers"
                
                (AWS.Core.Decode.ResultDecoder "GetLoadBalancersResult" getLoadBalancersResultDecoder)
                
            )



{-| Options for a getLoadBalancers request
-}
type alias GetLoadBalancersOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns information about a specific operation. Operations include events such as when you create an instance, allocate a static IP, attach a static IP, and so on.</p>

__Required Parameters__

* `operationId` __:__ `String`


-}

getOperation :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOperationResult)

getOperation operationId =
    
    let
        requestInput = GetOperationRequest
            
            operationId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getOperationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetOperation"
                
                (AWS.Core.Decode.ResultDecoder "GetOperationResult" getOperationResultDecoder)
                
            )





{-| <p>Returns information about all operations.</p> <p>Results are returned from oldest to newest, up to a maximum of 200. Results can be paged by making each subsequent call to <code>GetOperations</code> use the maximum (last) <code>statusChangedAt</code> value from the previous request.</p>

__Required Parameters__



-}

getOperations :
  
  
    ( GetOperationsOptions -> GetOperationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOperationsResult)

getOperations setOptions =
    
    let
        requestInput = GetOperationsRequest
            
            options.pageToken
            
        
        options = setOptions (GetOperationsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getOperationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetOperations"
                
                (AWS.Core.Decode.ResultDecoder "GetOperationsResult" getOperationsResultDecoder)
                
            )



{-| Options for a getOperations request
-}
type alias GetOperationsOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Gets operations for a specific resource (e.g., an instance or a static IP).</p>

__Required Parameters__

* `resourceName` __:__ `String`


-}

getOperationsForResource :
  
    String ->
  
  
    ( GetOperationsForResourceOptions -> GetOperationsForResourceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOperationsForResourceResult)

getOperationsForResource resourceName setOptions =
    
    let
        requestInput = GetOperationsForResourceRequest
            
            resourceName
            
            options.pageToken
            
        
        options = setOptions (GetOperationsForResourceOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getOperationsForResourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetOperationsForResource"
                
                (AWS.Core.Decode.ResultDecoder "GetOperationsForResourceResult" getOperationsForResourceResultDecoder)
                
            )



{-| Options for a getOperationsForResource request
-}
type alias GetOperationsForResourceOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns a list of all valid regions for Amazon Lightsail. Use the <code>include availability zones</code> parameter to also return the Availability Zones in a region.</p>

__Required Parameters__



-}

getRegions :
  
  
    ( GetRegionsOptions -> GetRegionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRegionsResult)

getRegions setOptions =
    
    let
        requestInput = GetRegionsRequest
            
            options.includeAvailabilityZones
            
            options.includeRelationalDatabaseAvailabilityZones
            
        
        options = setOptions (GetRegionsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRegionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRegions"
                
                (AWS.Core.Decode.ResultDecoder "GetRegionsResult" getRegionsResultDecoder)
                
            )



{-| Options for a getRegions request
-}
type alias GetRegionsOptions =
    {
    includeAvailabilityZones : Maybe Bool,includeRelationalDatabaseAvailabilityZones : Maybe Bool
    }



{-| <p>Returns information about a specific database in Amazon Lightsail.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`


-}

getRelationalDatabase :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRelationalDatabaseResult)

getRelationalDatabase relationalDatabaseName =
    
    let
        requestInput = GetRelationalDatabaseRequest
            
            relationalDatabaseName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRelationalDatabaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRelationalDatabase"
                
                (AWS.Core.Decode.ResultDecoder "GetRelationalDatabaseResult" getRelationalDatabaseResultDecoder)
                
            )





{-| <p>Returns a list of available database blueprints in Amazon Lightsail. A blueprint describes the major engine version of a database.</p> <p>You can use a blueprint ID to create a new database that runs a specific database engine.</p>

__Required Parameters__



-}

getRelationalDatabaseBlueprints :
  
  
    ( GetRelationalDatabaseBlueprintsOptions -> GetRelationalDatabaseBlueprintsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRelationalDatabaseBlueprintsResult)

getRelationalDatabaseBlueprints setOptions =
    
    let
        requestInput = GetRelationalDatabaseBlueprintsRequest
            
            options.pageToken
            
        
        options = setOptions (GetRelationalDatabaseBlueprintsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRelationalDatabaseBlueprintsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRelationalDatabaseBlueprints"
                
                (AWS.Core.Decode.ResultDecoder "GetRelationalDatabaseBlueprintsResult" getRelationalDatabaseBlueprintsResultDecoder)
                
            )



{-| Options for a getRelationalDatabaseBlueprints request
-}
type alias GetRelationalDatabaseBlueprintsOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns the list of bundles that are available in Amazon Lightsail. A bundle describes the performance specifications for a database.</p> <p>You can use a bundle ID to create a new database with explicit performance specifications.</p>

__Required Parameters__



-}

getRelationalDatabaseBundles :
  
  
    ( GetRelationalDatabaseBundlesOptions -> GetRelationalDatabaseBundlesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRelationalDatabaseBundlesResult)

getRelationalDatabaseBundles setOptions =
    
    let
        requestInput = GetRelationalDatabaseBundlesRequest
            
            options.pageToken
            
        
        options = setOptions (GetRelationalDatabaseBundlesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRelationalDatabaseBundlesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRelationalDatabaseBundles"
                
                (AWS.Core.Decode.ResultDecoder "GetRelationalDatabaseBundlesResult" getRelationalDatabaseBundlesResultDecoder)
                
            )



{-| Options for a getRelationalDatabaseBundles request
-}
type alias GetRelationalDatabaseBundlesOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns a list of events for a specific database in Amazon Lightsail.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`


-}

getRelationalDatabaseEvents :
  
    String ->
  
  
    ( GetRelationalDatabaseEventsOptions -> GetRelationalDatabaseEventsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRelationalDatabaseEventsResult)

getRelationalDatabaseEvents relationalDatabaseName setOptions =
    
    let
        requestInput = GetRelationalDatabaseEventsRequest
            
            relationalDatabaseName
            
            options.durationInMinutes
            
            options.pageToken
            
        
        options = setOptions (GetRelationalDatabaseEventsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRelationalDatabaseEventsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRelationalDatabaseEvents"
                
                (AWS.Core.Decode.ResultDecoder "GetRelationalDatabaseEventsResult" getRelationalDatabaseEventsResultDecoder)
                
            )



{-| Options for a getRelationalDatabaseEvents request
-}
type alias GetRelationalDatabaseEventsOptions =
    {
    durationInMinutes : Maybe Int,pageToken : Maybe String
    }



{-| <p>Returns a list of log events for a database in Amazon Lightsail.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`
* `logStreamName` __:__ `String`


-}

getRelationalDatabaseLogEvents :
  
    String ->
  
    String ->
  
  
    ( GetRelationalDatabaseLogEventsOptions -> GetRelationalDatabaseLogEventsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRelationalDatabaseLogEventsResult)

getRelationalDatabaseLogEvents relationalDatabaseName logStreamName setOptions =
    
    let
        requestInput = GetRelationalDatabaseLogEventsRequest
            
            relationalDatabaseName
            
            logStreamName
            
            options.startTime
            
            options.endTime
            
            options.startFromHead
            
            options.pageToken
            
        
        options = setOptions (GetRelationalDatabaseLogEventsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRelationalDatabaseLogEventsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRelationalDatabaseLogEvents"
                
                (AWS.Core.Decode.ResultDecoder "GetRelationalDatabaseLogEventsResult" getRelationalDatabaseLogEventsResultDecoder)
                
            )



{-| Options for a getRelationalDatabaseLogEvents request
-}
type alias GetRelationalDatabaseLogEventsOptions =
    {
    startTime : Maybe Posix,endTime : Maybe Posix,startFromHead : Maybe Bool,pageToken : Maybe String
    }



{-| <p>Returns a list of available log streams for a specific database in Amazon Lightsail.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`


-}

getRelationalDatabaseLogStreams :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRelationalDatabaseLogStreamsResult)

getRelationalDatabaseLogStreams relationalDatabaseName =
    
    let
        requestInput = GetRelationalDatabaseLogStreamsRequest
            
            relationalDatabaseName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRelationalDatabaseLogStreamsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRelationalDatabaseLogStreams"
                
                (AWS.Core.Decode.ResultDecoder "GetRelationalDatabaseLogStreamsResult" getRelationalDatabaseLogStreamsResultDecoder)
                
            )





{-| <p>Returns the current, previous, or pending versions of the master user password for a Lightsail database.</p> <p>The <code>asdf</code> operation GetRelationalDatabaseMasterUserPassword supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`


-}

getRelationalDatabaseMasterUserPassword :
  
    String ->
  
  
    ( GetRelationalDatabaseMasterUserPasswordOptions -> GetRelationalDatabaseMasterUserPasswordOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRelationalDatabaseMasterUserPasswordResult)

getRelationalDatabaseMasterUserPassword relationalDatabaseName setOptions =
    
    let
        requestInput = GetRelationalDatabaseMasterUserPasswordRequest
            
            relationalDatabaseName
            
            options.passwordVersion
            
        
        options = setOptions (GetRelationalDatabaseMasterUserPasswordOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRelationalDatabaseMasterUserPasswordRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRelationalDatabaseMasterUserPassword"
                
                (AWS.Core.Decode.ResultDecoder "GetRelationalDatabaseMasterUserPasswordResult" getRelationalDatabaseMasterUserPasswordResultDecoder)
                
            )



{-| Options for a getRelationalDatabaseMasterUserPassword request
-}
type alias GetRelationalDatabaseMasterUserPasswordOptions =
    {
    passwordVersion : Maybe RelationalDatabasePasswordVersion
    }



{-| <p>Returns the data points of the specified metric for a database in Amazon Lightsail.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`
* `metricName` __:__ `RelationalDatabaseMetricName`
* `period` __:__ `Int`
* `startTime` __:__ `Posix`
* `endTime` __:__ `Posix`
* `unit` __:__ `MetricUnit`
* `statistics` __:__ `(List MetricStatistic)`


-}

getRelationalDatabaseMetricData :
  
    String ->
  
    RelationalDatabaseMetricName ->
  
    Int ->
  
    Posix ->
  
    Posix ->
  
    MetricUnit ->
  
    (List MetricStatistic) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRelationalDatabaseMetricDataResult)

getRelationalDatabaseMetricData relationalDatabaseName metricName period startTime endTime unit statistics =
    
    let
        requestInput = GetRelationalDatabaseMetricDataRequest
            
            relationalDatabaseName
            
            metricName
            
            period
            
            startTime
            
            endTime
            
            unit
            
            statistics
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRelationalDatabaseMetricDataRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRelationalDatabaseMetricData"
                
                (AWS.Core.Decode.ResultDecoder "GetRelationalDatabaseMetricDataResult" getRelationalDatabaseMetricDataResultDecoder)
                
            )





{-| <p>Returns all of the runtime parameters offered by the underlying database software, or engine, for a specific database in Amazon Lightsail.</p> <p>In addition to the parameter names and values, this operation returns other information about each parameter. This information includes whether changes require a reboot, whether the parameter is modifiable, the allowed values, and the data types.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`


-}

getRelationalDatabaseParameters :
  
    String ->
  
  
    ( GetRelationalDatabaseParametersOptions -> GetRelationalDatabaseParametersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRelationalDatabaseParametersResult)

getRelationalDatabaseParameters relationalDatabaseName setOptions =
    
    let
        requestInput = GetRelationalDatabaseParametersRequest
            
            relationalDatabaseName
            
            options.pageToken
            
        
        options = setOptions (GetRelationalDatabaseParametersOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRelationalDatabaseParametersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRelationalDatabaseParameters"
                
                (AWS.Core.Decode.ResultDecoder "GetRelationalDatabaseParametersResult" getRelationalDatabaseParametersResultDecoder)
                
            )



{-| Options for a getRelationalDatabaseParameters request
-}
type alias GetRelationalDatabaseParametersOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns information about a specific database snapshot in Amazon Lightsail.</p>

__Required Parameters__

* `relationalDatabaseSnapshotName` __:__ `String`


-}

getRelationalDatabaseSnapshot :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRelationalDatabaseSnapshotResult)

getRelationalDatabaseSnapshot relationalDatabaseSnapshotName =
    
    let
        requestInput = GetRelationalDatabaseSnapshotRequest
            
            relationalDatabaseSnapshotName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRelationalDatabaseSnapshotRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRelationalDatabaseSnapshot"
                
                (AWS.Core.Decode.ResultDecoder "GetRelationalDatabaseSnapshotResult" getRelationalDatabaseSnapshotResultDecoder)
                
            )





{-| <p>Returns information about all of your database snapshots in Amazon Lightsail.</p>

__Required Parameters__



-}

getRelationalDatabaseSnapshots :
  
  
    ( GetRelationalDatabaseSnapshotsOptions -> GetRelationalDatabaseSnapshotsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRelationalDatabaseSnapshotsResult)

getRelationalDatabaseSnapshots setOptions =
    
    let
        requestInput = GetRelationalDatabaseSnapshotsRequest
            
            options.pageToken
            
        
        options = setOptions (GetRelationalDatabaseSnapshotsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRelationalDatabaseSnapshotsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRelationalDatabaseSnapshots"
                
                (AWS.Core.Decode.ResultDecoder "GetRelationalDatabaseSnapshotsResult" getRelationalDatabaseSnapshotsResultDecoder)
                
            )



{-| Options for a getRelationalDatabaseSnapshots request
-}
type alias GetRelationalDatabaseSnapshotsOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns information about all of your databases in Amazon Lightsail.</p>

__Required Parameters__



-}

getRelationalDatabases :
  
  
    ( GetRelationalDatabasesOptions -> GetRelationalDatabasesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRelationalDatabasesResult)

getRelationalDatabases setOptions =
    
    let
        requestInput = GetRelationalDatabasesRequest
            
            options.pageToken
            
        
        options = setOptions (GetRelationalDatabasesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRelationalDatabasesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRelationalDatabases"
                
                (AWS.Core.Decode.ResultDecoder "GetRelationalDatabasesResult" getRelationalDatabasesResultDecoder)
                
            )



{-| Options for a getRelationalDatabases request
-}
type alias GetRelationalDatabasesOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Returns information about a specific static IP.</p>

__Required Parameters__

* `staticIpName` __:__ `String`


-}

getStaticIp :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetStaticIpResult)

getStaticIp staticIpName =
    
    let
        requestInput = GetStaticIpRequest
            
            staticIpName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getStaticIpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetStaticIp"
                
                (AWS.Core.Decode.ResultDecoder "GetStaticIpResult" getStaticIpResultDecoder)
                
            )





{-| <p>Returns information about all static IPs in the user's account.</p>

__Required Parameters__



-}

getStaticIps :
  
  
    ( GetStaticIpsOptions -> GetStaticIpsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetStaticIpsResult)

getStaticIps setOptions =
    
    let
        requestInput = GetStaticIpsRequest
            
            options.pageToken
            
        
        options = setOptions (GetStaticIpsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getStaticIpsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetStaticIps"
                
                (AWS.Core.Decode.ResultDecoder "GetStaticIpsResult" getStaticIpsResultDecoder)
                
            )



{-| Options for a getStaticIps request
-}
type alias GetStaticIpsOptions =
    {
    pageToken : Maybe String
    }



{-| <p>Imports a public SSH key from a specific key pair.</p>

__Required Parameters__

* `keyPairName` __:__ `String`
* `publicKeyBase64` __:__ `String`


-}

importKeyPair :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ImportKeyPairResult)

importKeyPair keyPairName publicKeyBase64 =
    
    let
        requestInput = ImportKeyPairRequest
            
            keyPairName
            
            publicKeyBase64
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> importKeyPairRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ImportKeyPair"
                
                (AWS.Core.Decode.ResultDecoder "ImportKeyPairResult" importKeyPairResultDecoder)
                
            )





{-| <p>Returns a Boolean value indicating whether your Lightsail VPC is peered.</p>

__Required Parameters__



-}

isVpcPeered :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IsVpcPeeredResult)

isVpcPeered =
    
    let
        requestInput = IsVpcPeeredRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> isVpcPeeredRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "IsVpcPeered"
                
                (AWS.Core.Decode.ResultDecoder "IsVpcPeeredResult" isVpcPeeredResultDecoder)
                
            )





{-| <p>Adds public ports to an Amazon Lightsail instance.</p> <p>The <code>open instance public ports</code> operation supports tag-based access control via resource tags applied to the resource identified by instanceName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `portInfo` __:__ `PortInfo`
* `instanceName` __:__ `String`


-}

openInstancePublicPorts :
  
    PortInfo ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper OpenInstancePublicPortsResult)

openInstancePublicPorts portInfo instanceName =
    
    let
        requestInput = OpenInstancePublicPortsRequest
            
            portInfo
            
            instanceName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> openInstancePublicPortsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "OpenInstancePublicPorts"
                
                (AWS.Core.Decode.ResultDecoder "OpenInstancePublicPortsResult" openInstancePublicPortsResultDecoder)
                
            )





{-| <p>Tries to peer the Lightsail VPC with the user's default VPC.</p>

__Required Parameters__



-}

peerVpc :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PeerVpcResult)

peerVpc =
    
    let
        requestInput = PeerVpcRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> peerVpcRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PeerVpc"
                
                (AWS.Core.Decode.ResultDecoder "PeerVpcResult" peerVpcResultDecoder)
                
            )





{-| <p>Sets the specified open ports for an Amazon Lightsail instance, and closes all ports for every protocol not included in the current request.</p> <p>The <code>put instance public ports</code> operation supports tag-based access control via resource tags applied to the resource identified by instanceName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `portInfos` __:__ `(List PortInfo)`
* `instanceName` __:__ `String`


-}

putInstancePublicPorts :
  
    (List PortInfo) ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutInstancePublicPortsResult)

putInstancePublicPorts portInfos instanceName =
    
    let
        requestInput = PutInstancePublicPortsRequest
            
            portInfos
            
            instanceName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putInstancePublicPortsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutInstancePublicPorts"
                
                (AWS.Core.Decode.ResultDecoder "PutInstancePublicPortsResult" putInstancePublicPortsResultDecoder)
                
            )





{-| <p>Restarts a specific instance.</p> <p>The <code>reboot instance</code> operation supports tag-based access control via resource tags applied to the resource identified by instanceName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}

rebootInstance :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RebootInstanceResult)

rebootInstance instanceName =
    
    let
        requestInput = RebootInstanceRequest
            
            instanceName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> rebootInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RebootInstance"
                
                (AWS.Core.Decode.ResultDecoder "RebootInstanceResult" rebootInstanceResultDecoder)
                
            )





{-| <p>Restarts a specific database in Amazon Lightsail.</p> <p>The <code>reboot relational database</code> operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`


-}

rebootRelationalDatabase :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RebootRelationalDatabaseResult)

rebootRelationalDatabase relationalDatabaseName =
    
    let
        requestInput = RebootRelationalDatabaseRequest
            
            relationalDatabaseName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> rebootRelationalDatabaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RebootRelationalDatabase"
                
                (AWS.Core.Decode.ResultDecoder "RebootRelationalDatabaseResult" rebootRelationalDatabaseResultDecoder)
                
            )





{-| <p>Deletes a specific static IP from your account.</p>

__Required Parameters__

* `staticIpName` __:__ `String`


-}

releaseStaticIp :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReleaseStaticIpResult)

releaseStaticIp staticIpName =
    
    let
        requestInput = ReleaseStaticIpRequest
            
            staticIpName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> releaseStaticIpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ReleaseStaticIp"
                
                (AWS.Core.Decode.ResultDecoder "ReleaseStaticIpResult" releaseStaticIpResultDecoder)
                
            )





{-| <p>Starts a specific Amazon Lightsail instance from a stopped state. To restart an instance, use the <code>reboot instance</code> operation.</p> <note> <p>When you start a stopped instance, Lightsail assigns a new public IP address to the instance. To use the same IP address after stopping and starting an instance, create a static IP address and attach it to the instance. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/lightsail-create-static-ip">Lightsail Dev Guide</a>.</p> </note> <p>The <code>start instance</code> operation supports tag-based access control via resource tags applied to the resource identified by instanceName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}

startInstance :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartInstanceResult)

startInstance instanceName =
    
    let
        requestInput = StartInstanceRequest
            
            instanceName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartInstance"
                
                (AWS.Core.Decode.ResultDecoder "StartInstanceResult" startInstanceResultDecoder)
                
            )





{-| <p>Starts a specific database from a stopped state in Amazon Lightsail. To restart a database, use the <code>reboot relational database</code> operation.</p> <p>The <code>start relational database</code> operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`


-}

startRelationalDatabase :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartRelationalDatabaseResult)

startRelationalDatabase relationalDatabaseName =
    
    let
        requestInput = StartRelationalDatabaseRequest
            
            relationalDatabaseName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startRelationalDatabaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartRelationalDatabase"
                
                (AWS.Core.Decode.ResultDecoder "StartRelationalDatabaseResult" startRelationalDatabaseResultDecoder)
                
            )





{-| <p>Stops a specific Amazon Lightsail instance that is currently running.</p> <note> <p>When you start a stopped instance, Lightsail assigns a new public IP address to the instance. To use the same IP address after stopping and starting an instance, create a static IP address and attach it to the instance. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/lightsail-create-static-ip">Lightsail Dev Guide</a>.</p> </note> <p>The <code>stop instance</code> operation supports tag-based access control via resource tags applied to the resource identified by instanceName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}

stopInstance :
  
    String ->
  
  
    ( StopInstanceOptions -> StopInstanceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopInstanceResult)

stopInstance instanceName setOptions =
    
    let
        requestInput = StopInstanceRequest
            
            instanceName
            
            options.force
            
        
        options = setOptions (StopInstanceOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopInstanceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopInstance"
                
                (AWS.Core.Decode.ResultDecoder "StopInstanceResult" stopInstanceResultDecoder)
                
            )



{-| Options for a stopInstance request
-}
type alias StopInstanceOptions =
    {
    force : Maybe Bool
    }



{-| <p>Stops a specific database that is currently running in Amazon Lightsail.</p> <p>The <code>stop relational database</code> operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`


-}

stopRelationalDatabase :
  
    String ->
  
  
    ( StopRelationalDatabaseOptions -> StopRelationalDatabaseOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopRelationalDatabaseResult)

stopRelationalDatabase relationalDatabaseName setOptions =
    
    let
        requestInput = StopRelationalDatabaseRequest
            
            relationalDatabaseName
            
            options.relationalDatabaseSnapshotName
            
        
        options = setOptions (StopRelationalDatabaseOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopRelationalDatabaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopRelationalDatabase"
                
                (AWS.Core.Decode.ResultDecoder "StopRelationalDatabaseResult" stopRelationalDatabaseResultDecoder)
                
            )



{-| Options for a stopRelationalDatabase request
-}
type alias StopRelationalDatabaseOptions =
    {
    relationalDatabaseSnapshotName : Maybe String
    }



{-| <p>Adds one or more tags to the specified Amazon Lightsail resource. Each resource can have a maximum of 50 tags. Each tag consists of a key and an optional value. Tag keys must be unique per resource. For more information about tags, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags">Lightsail Dev Guide</a>.</p> <p>The <code>tag resource</code> operation supports tag-based access control via request tags and resource tags applied to the resource identified by resourceName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `resourceName` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

tagResource :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceResult)

tagResource resourceName tags =
    
    let
        requestInput = TagResourceRequest
            
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
                
                (AWS.Core.Decode.ResultDecoder "TagResourceResult" tagResourceResultDecoder)
                
            )





{-| <p>Attempts to unpeer the Lightsail VPC from the user's default VPC.</p>

__Required Parameters__



-}

unpeerVpc :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UnpeerVpcResult)

unpeerVpc =
    
    let
        requestInput = UnpeerVpcRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> unpeerVpcRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UnpeerVpc"
                
                (AWS.Core.Decode.ResultDecoder "UnpeerVpcResult" unpeerVpcResultDecoder)
                
            )





{-| <p>Deletes the specified set of tag keys and their values from the specified Amazon Lightsail resource.</p> <p>The <code>untag resource</code> operation supports tag-based access control via request tags and resource tags applied to the resource identified by resourceName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `resourceName` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

untagResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceResult)

untagResource resourceName tagKeys =
    
    let
        requestInput = UntagResourceRequest
            
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
                
                (AWS.Core.Decode.ResultDecoder "UntagResourceResult" untagResourceResultDecoder)
                
            )





{-| <p>Updates a domain recordset after it is created.</p> <p>The <code>update domain entry</code> operation supports tag-based access control via resource tags applied to the resource identified by domainName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `domainEntry` __:__ `DomainEntry`


-}

updateDomainEntry :
  
    String ->
  
    DomainEntry ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDomainEntryResult)

updateDomainEntry domainName domainEntry =
    
    let
        requestInput = UpdateDomainEntryRequest
            
            domainName
            
            domainEntry
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateDomainEntryRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateDomainEntry"
                
                (AWS.Core.Decode.ResultDecoder "UpdateDomainEntryResult" updateDomainEntryResultDecoder)
                
            )





{-| <p>Updates the specified attribute for a load balancer. You can only update one attribute at a time.</p> <p>The <code>update load balancer attribute</code> operation supports tag-based access control via resource tags applied to the resource identified by loadBalancerName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `attributeName` __:__ `LoadBalancerAttributeName`
* `attributeValue` __:__ `String`


-}

updateLoadBalancerAttribute :
  
    String ->
  
    LoadBalancerAttributeName ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateLoadBalancerAttributeResult)

updateLoadBalancerAttribute loadBalancerName attributeName attributeValue =
    
    let
        requestInput = UpdateLoadBalancerAttributeRequest
            
            loadBalancerName
            
            attributeName
            
            attributeValue
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateLoadBalancerAttributeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateLoadBalancerAttribute"
                
                (AWS.Core.Decode.ResultDecoder "UpdateLoadBalancerAttributeResult" updateLoadBalancerAttributeResultDecoder)
                
            )





{-| <p>Allows the update of one or more attributes of a database in Amazon Lightsail.</p> <p>Updates are applied immediately, or in cases where the updates could result in an outage, are applied during the database's predefined maintenance window.</p> <p>The <code>update relational database</code> operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`


-}

updateRelationalDatabase :
  
    String ->
  
  
    ( UpdateRelationalDatabaseOptions -> UpdateRelationalDatabaseOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateRelationalDatabaseResult)

updateRelationalDatabase relationalDatabaseName setOptions =
    
    let
        requestInput = UpdateRelationalDatabaseRequest
            
            relationalDatabaseName
            
            options.masterUserPassword
            
            options.rotateMasterUserPassword
            
            options.preferredBackupWindow
            
            options.preferredMaintenanceWindow
            
            options.enableBackupRetention
            
            options.disableBackupRetention
            
            options.publiclyAccessible
            
            options.applyImmediately
            
        
        options = setOptions (UpdateRelationalDatabaseOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateRelationalDatabaseRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateRelationalDatabase"
                
                (AWS.Core.Decode.ResultDecoder "UpdateRelationalDatabaseResult" updateRelationalDatabaseResultDecoder)
                
            )



{-| Options for a updateRelationalDatabase request
-}
type alias UpdateRelationalDatabaseOptions =
    {
    masterUserPassword : Maybe String,rotateMasterUserPassword : Maybe Bool,preferredBackupWindow : Maybe String,preferredMaintenanceWindow : Maybe String,enableBackupRetention : Maybe Bool,disableBackupRetention : Maybe Bool,publiclyAccessible : Maybe Bool,applyImmediately : Maybe Bool
    }



{-| <p>Allows the update of one or more parameters of a database in Amazon Lightsail.</p> <p>Parameter updates don't cause outages; therefore, their application is not subject to the preferred maintenance window. However, there are two ways in which paramater updates are applied: <code>dynamic</code> or <code>pending-reboot</code>. Parameters marked with a <code>dynamic</code> apply type are applied immediately. Parameters marked with a <code>pending-reboot</code> apply type are applied only after the database is rebooted using the <code>reboot relational database</code> operation.</p> <p>The <code>update relational database parameters</code> operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags">Lightsail Dev Guide</a>.</p>

__Required Parameters__

* `relationalDatabaseName` __:__ `String`
* `parameters` __:__ `(List RelationalDatabaseParameter)`


-}

updateRelationalDatabaseParameters :
  
    String ->
  
    (List RelationalDatabaseParameter) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateRelationalDatabaseParametersResult)

updateRelationalDatabaseParameters relationalDatabaseName parameters =
    
    let
        requestInput = UpdateRelationalDatabaseParametersRequest
            
            relationalDatabaseName
            
            parameters
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateRelationalDatabaseParametersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateRelationalDatabaseParameters"
                
                (AWS.Core.Decode.ResultDecoder "UpdateRelationalDatabaseParametersResult" updateRelationalDatabaseParametersResultDecoder)
                
            )






{-| One of

* `AccessDirection_inbound`
* `AccessDirection_outbound`

-}
type AccessDirection
    = AccessDirection_inbound
    | AccessDirection_outbound



accessDirectionDecoder : JD.Decoder AccessDirection
accessDirectionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "inbound" ->
                        JD.succeed AccessDirection_inbound

                    "outbound" ->
                        JD.succeed AccessDirection_outbound


                    _ ->
                        JD.fail "bad thing"
            )




accessDirectionToString : AccessDirection -> String
accessDirectionToString val =
    case val of
        AccessDirection_inbound ->
            "inbound"

        AccessDirection_outbound ->
            "outbound"




{-| Type of HTTP response from allocateStatic
-}
type alias AllocateStaticIpResult =
    { operations : Maybe (List Operation)
    }



allocateStaticIpResultDecoder : JD.Decoder AllocateStaticIpResult
allocateStaticIpResultDecoder =
    JD.succeed AllocateStaticIpResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




allocateStaticIpResultToString : AllocateStaticIpResult -> String -- List (String, String)
allocateStaticIpResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from attachDi
-}
type alias AttachDiskResult =
    { operations : Maybe (List Operation)
    }



attachDiskResultDecoder : JD.Decoder AttachDiskResult
attachDiskResultDecoder =
    JD.succeed AttachDiskResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




attachDiskResultToString : AttachDiskResult -> String -- List (String, String)
attachDiskResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from attachInstancesToLoadBalanc
-}
type alias AttachInstancesToLoadBalancerResult =
    { operations : Maybe (List Operation)
    }



attachInstancesToLoadBalancerResultDecoder : JD.Decoder AttachInstancesToLoadBalancerResult
attachInstancesToLoadBalancerResultDecoder =
    JD.succeed AttachInstancesToLoadBalancerResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




attachInstancesToLoadBalancerResultToString : AttachInstancesToLoadBalancerResult -> String -- List (String, String)
attachInstancesToLoadBalancerResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from attachLoadBalancerTlsCertifica
-}
type alias AttachLoadBalancerTlsCertificateResult =
    { operations : Maybe (List Operation)
    }



attachLoadBalancerTlsCertificateResultDecoder : JD.Decoder AttachLoadBalancerTlsCertificateResult
attachLoadBalancerTlsCertificateResultDecoder =
    JD.succeed AttachLoadBalancerTlsCertificateResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




attachLoadBalancerTlsCertificateResultToString : AttachLoadBalancerTlsCertificateResult -> String -- List (String, String)
attachLoadBalancerTlsCertificateResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from attachStatic
-}
type alias AttachStaticIpResult =
    { operations : Maybe (List Operation)
    }



attachStaticIpResultDecoder : JD.Decoder AttachStaticIpResult
attachStaticIpResultDecoder =
    JD.succeed AttachStaticIpResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




attachStaticIpResultToString : AttachStaticIpResult -> String -- List (String, String)
attachStaticIpResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| <p>Describes an Availability Zone.</p>
-}
type alias AvailabilityZone =
    { zoneName : Maybe String
    , state : Maybe String
    }



availabilityZoneDecoder : JD.Decoder AvailabilityZone
availabilityZoneDecoder =
    JD.succeed AvailabilityZone
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["zoneName", "ZoneName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            JD.string
        )
        




availabilityZoneToString : AvailabilityZone -> String -- List (String, String)
availabilityZoneToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "zoneName" "" -- val.zoneName
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.toList
    ""



{-| <p>Describes a blueprint (a virtual private server image).</p>
-}
type alias Blueprint =
    { blueprintId : Maybe String
    , name : Maybe String
    , group : Maybe String
    , type_ : Maybe BlueprintType
    , description : Maybe String
    , isActive : Maybe Bool
    , minPower : Maybe Int
    , version : Maybe String
    , versionCode : Maybe String
    , productUrl : Maybe String
    , licenseUrl : Maybe String
    , platform : Maybe InstancePlatform
    }



blueprintDecoder : JD.Decoder Blueprint
blueprintDecoder =
    JD.succeed Blueprint
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["blueprintId", "BlueprintId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["group", "Group"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            blueprintTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isActive", "IsActive"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["minPower", "MinPower"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["version", "Version"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["versionCode", "VersionCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["productUrl", "ProductUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["licenseUrl", "LicenseUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["platform", "Platform"]
            instancePlatformDecoder
        )
        




blueprintToString : Blueprint -> String -- List (String, String)
blueprintToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "blueprintId" "" -- val.blueprintId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "group" "" -- val.group
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "isActive" "" -- val.isActive
        
    --     |> Dict.insert
    --         "minPower" "" -- val.minPower
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "versionCode" "" -- val.versionCode
        
    --     |> Dict.insert
    --         "productUrl" "" -- val.productUrl
        
    --     |> Dict.insert
    --         "licenseUrl" "" -- val.licenseUrl
        
    --     |> Dict.insert
    --         "platform" "" -- val.platform
        
    --     |> Dict.toList
    ""



{-| One of

* `BlueprintType_os`
* `BlueprintType_app`

-}
type BlueprintType
    = BlueprintType_os
    | BlueprintType_app



blueprintTypeDecoder : JD.Decoder BlueprintType
blueprintTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "os" ->
                        JD.succeed BlueprintType_os

                    "app" ->
                        JD.succeed BlueprintType_app


                    _ ->
                        JD.fail "bad thing"
            )




blueprintTypeToString : BlueprintType -> String
blueprintTypeToString val =
    case val of
        BlueprintType_os ->
            "os"

        BlueprintType_app ->
            "app"




{-| <p>Describes a bundle, which is a set of specs describing your virtual private server (or <i>instance</i>).</p>
-}
type alias Bundle =
    { price : Maybe Float
    , cpuCount : Maybe Int
    , diskSizeInGb : Maybe Int
    , bundleId : Maybe String
    , instanceType : Maybe String
    , isActive : Maybe Bool
    , name : Maybe String
    , power : Maybe Int
    , ramSizeInGb : Maybe Float
    , transferPerMonthInGb : Maybe Int
    , supportedPlatforms : Maybe (List InstancePlatform)
    }



bundleDecoder : JD.Decoder Bundle
bundleDecoder =
    JD.succeed Bundle
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["price", "Price"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cpuCount", "CpuCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["diskSizeInGb", "DiskSizeInGb"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bundleId", "BundleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceType", "InstanceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isActive", "IsActive"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["power", "Power"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ramSizeInGb", "RamSizeInGb"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["transferPerMonthInGb", "TransferPerMonthInGb"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["supportedPlatforms", "SupportedPlatforms"]
            (JD.list instancePlatformDecoder)
        )
        




bundleToString : Bundle -> String -- List (String, String)
bundleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "price" "" -- val.price
        
    --     |> Dict.insert
    --         "cpuCount" "" -- val.cpuCount
        
    --     |> Dict.insert
    --         "diskSizeInGb" "" -- val.diskSizeInGb
        
    --     |> Dict.insert
    --         "bundleId" "" -- val.bundleId
        
    --     |> Dict.insert
    --         "instanceType" "" -- val.instanceType
        
    --     |> Dict.insert
    --         "isActive" "" -- val.isActive
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "power" "" -- val.power
        
    --     |> Dict.insert
    --         "ramSizeInGb" "" -- val.ramSizeInGb
        
    --     |> Dict.insert
    --         "transferPerMonthInGb" "" -- val.transferPerMonthInGb
        
    --     |> Dict.insert
    --         "supportedPlatforms" "" -- val.supportedPlatforms
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from closeInstancePublicPor
-}
type alias CloseInstancePublicPortsResult =
    { operation : Maybe Operation
    }



closeInstancePublicPortsResultDecoder : JD.Decoder CloseInstancePublicPortsResult
closeInstancePublicPortsResultDecoder =
    JD.succeed CloseInstancePublicPortsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




closeInstancePublicPortsResultToString : CloseInstancePublicPortsResult -> String -- List (String, String)
closeInstancePublicPortsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| <p>Describes a CloudFormation stack record created as a result of the <code>create cloud formation stack</code> operation.</p> <p>A CloudFormation stack record provides information about the AWS CloudFormation stack used to create a new Amazon Elastic Compute Cloud instance from an exported Lightsail instance snapshot.</p>
-}
type alias CloudFormationStackRecord =
    { name : Maybe String
    , arn : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , state : Maybe RecordState
    , sourceInfo : Maybe (List CloudFormationStackRecordSourceInfo)
    , destinationInfo : Maybe DestinationInfo
    }



cloudFormationStackRecordDecoder : JD.Decoder CloudFormationStackRecord
cloudFormationStackRecordDecoder =
    JD.succeed CloudFormationStackRecord
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            recordStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sourceInfo", "SourceInfo"]
            (JD.list cloudFormationStackRecordSourceInfoDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinationInfo", "DestinationInfo"]
            destinationInfoDecoder
        )
        




cloudFormationStackRecordToString : CloudFormationStackRecord -> String -- List (String, String)
cloudFormationStackRecordToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "sourceInfo" "" -- val.sourceInfo
        
    --     |> Dict.insert
    --         "destinationInfo" "" -- val.destinationInfo
        
    --     |> Dict.toList
    ""



{-| <p>Describes the source of a CloudFormation stack record (i.e., the export snapshot record).</p>
-}
type alias CloudFormationStackRecordSourceInfo =
    { resourceType : Maybe CloudFormationStackRecordSourceType
    , name : Maybe String
    , arn : Maybe String
    }



cloudFormationStackRecordSourceInfoDecoder : JD.Decoder CloudFormationStackRecordSourceInfo
cloudFormationStackRecordSourceInfoDecoder =
    JD.succeed CloudFormationStackRecordSourceInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            cloudFormationStackRecordSourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        




cloudFormationStackRecordSourceInfoToString : CloudFormationStackRecordSourceInfo -> String -- List (String, String)
cloudFormationStackRecordSourceInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.toList
    ""



{-| One of

* `CloudFormationStackRecordSourceType_ExportSnapshotRecord`

-}
type CloudFormationStackRecordSourceType
    = CloudFormationStackRecordSourceType_ExportSnapshotRecord



cloudFormationStackRecordSourceTypeDecoder : JD.Decoder CloudFormationStackRecordSourceType
cloudFormationStackRecordSourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ExportSnapshotRecord" ->
                        JD.succeed CloudFormationStackRecordSourceType_ExportSnapshotRecord


                    _ ->
                        JD.fail "bad thing"
            )




cloudFormationStackRecordSourceTypeToString : CloudFormationStackRecordSourceType -> String
cloudFormationStackRecordSourceTypeToString val =
    case val of
        CloudFormationStackRecordSourceType_ExportSnapshotRecord ->
            "ExportSnapshotRecord"




{-| Type of HTTP response from copySnapsh
-}
type alias CopySnapshotResult =
    { operations : Maybe (List Operation)
    }



copySnapshotResultDecoder : JD.Decoder CopySnapshotResult
copySnapshotResultDecoder =
    JD.succeed CopySnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




copySnapshotResultToString : CopySnapshotResult -> String -- List (String, String)
copySnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createCloudFormationSta
-}
type alias CreateCloudFormationStackResult =
    { operations : Maybe (List Operation)
    }



createCloudFormationStackResultDecoder : JD.Decoder CreateCloudFormationStackResult
createCloudFormationStackResultDecoder =
    JD.succeed CreateCloudFormationStackResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




createCloudFormationStackResultToString : CreateCloudFormationStackResult -> String -- List (String, String)
createCloudFormationStackResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDiskFromSnapsh
-}
type alias CreateDiskFromSnapshotResult =
    { operations : Maybe (List Operation)
    }



createDiskFromSnapshotResultDecoder : JD.Decoder CreateDiskFromSnapshotResult
createDiskFromSnapshotResultDecoder =
    JD.succeed CreateDiskFromSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




createDiskFromSnapshotResultToString : CreateDiskFromSnapshotResult -> String -- List (String, String)
createDiskFromSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDi
-}
type alias CreateDiskResult =
    { operations : Maybe (List Operation)
    }



createDiskResultDecoder : JD.Decoder CreateDiskResult
createDiskResultDecoder =
    JD.succeed CreateDiskResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




createDiskResultToString : CreateDiskResult -> String -- List (String, String)
createDiskResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDiskSnapsh
-}
type alias CreateDiskSnapshotResult =
    { operations : Maybe (List Operation)
    }



createDiskSnapshotResultDecoder : JD.Decoder CreateDiskSnapshotResult
createDiskSnapshotResultDecoder =
    JD.succeed CreateDiskSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




createDiskSnapshotResultToString : CreateDiskSnapshotResult -> String -- List (String, String)
createDiskSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDomainEnt
-}
type alias CreateDomainEntryResult =
    { operation : Maybe Operation
    }



createDomainEntryResultDecoder : JD.Decoder CreateDomainEntryResult
createDomainEntryResultDecoder =
    JD.succeed CreateDomainEntryResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




createDomainEntryResultToString : CreateDomainEntryResult -> String -- List (String, String)
createDomainEntryResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDoma
-}
type alias CreateDomainResult =
    { operation : Maybe Operation
    }



createDomainResultDecoder : JD.Decoder CreateDomainResult
createDomainResultDecoder =
    JD.succeed CreateDomainResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




createDomainResultToString : CreateDomainResult -> String -- List (String, String)
createDomainResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createInstanceSnapsh
-}
type alias CreateInstanceSnapshotResult =
    { operations : Maybe (List Operation)
    }



createInstanceSnapshotResultDecoder : JD.Decoder CreateInstanceSnapshotResult
createInstanceSnapshotResultDecoder =
    JD.succeed CreateInstanceSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




createInstanceSnapshotResultToString : CreateInstanceSnapshotResult -> String -- List (String, String)
createInstanceSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createInstancesFromSnapsh
-}
type alias CreateInstancesFromSnapshotResult =
    { operations : Maybe (List Operation)
    }



createInstancesFromSnapshotResultDecoder : JD.Decoder CreateInstancesFromSnapshotResult
createInstancesFromSnapshotResultDecoder =
    JD.succeed CreateInstancesFromSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




createInstancesFromSnapshotResultToString : CreateInstancesFromSnapshotResult -> String -- List (String, String)
createInstancesFromSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createInstanc
-}
type alias CreateInstancesResult =
    { operations : Maybe (List Operation)
    }



createInstancesResultDecoder : JD.Decoder CreateInstancesResult
createInstancesResultDecoder =
    JD.succeed CreateInstancesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




createInstancesResultToString : CreateInstancesResult -> String -- List (String, String)
createInstancesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createKeyPa
-}
type alias CreateKeyPairResult =
    { keyPair : Maybe KeyPair
    , publicKeyBase64 : Maybe String
    , privateKeyBase64 : Maybe String
    , operation : Maybe Operation
    }



createKeyPairResultDecoder : JD.Decoder CreateKeyPairResult
createKeyPairResultDecoder =
    JD.succeed CreateKeyPairResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["keyPair", "KeyPair"]
            keyPairDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["publicKeyBase64", "PublicKeyBase64"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["privateKeyBase64", "PrivateKeyBase64"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




createKeyPairResultToString : CreateKeyPairResult -> String -- List (String, String)
createKeyPairResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keyPair" "" -- val.keyPair
        
    --     |> Dict.insert
    --         "publicKeyBase64" "" -- val.publicKeyBase64
        
    --     |> Dict.insert
    --         "privateKeyBase64" "" -- val.privateKeyBase64
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createLoadBalanc
-}
type alias CreateLoadBalancerResult =
    { operations : Maybe (List Operation)
    }



createLoadBalancerResultDecoder : JD.Decoder CreateLoadBalancerResult
createLoadBalancerResultDecoder =
    JD.succeed CreateLoadBalancerResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




createLoadBalancerResultToString : CreateLoadBalancerResult -> String -- List (String, String)
createLoadBalancerResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createLoadBalancerTlsCertifica
-}
type alias CreateLoadBalancerTlsCertificateResult =
    { operations : Maybe (List Operation)
    }



createLoadBalancerTlsCertificateResultDecoder : JD.Decoder CreateLoadBalancerTlsCertificateResult
createLoadBalancerTlsCertificateResultDecoder =
    JD.succeed CreateLoadBalancerTlsCertificateResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




createLoadBalancerTlsCertificateResultToString : CreateLoadBalancerTlsCertificateResult -> String -- List (String, String)
createLoadBalancerTlsCertificateResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createRelationalDatabaseFromSnapsh
-}
type alias CreateRelationalDatabaseFromSnapshotResult =
    { operations : Maybe (List Operation)
    }



createRelationalDatabaseFromSnapshotResultDecoder : JD.Decoder CreateRelationalDatabaseFromSnapshotResult
createRelationalDatabaseFromSnapshotResultDecoder =
    JD.succeed CreateRelationalDatabaseFromSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




createRelationalDatabaseFromSnapshotResultToString : CreateRelationalDatabaseFromSnapshotResult -> String -- List (String, String)
createRelationalDatabaseFromSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createRelationalDataba
-}
type alias CreateRelationalDatabaseResult =
    { operations : Maybe (List Operation)
    }



createRelationalDatabaseResultDecoder : JD.Decoder CreateRelationalDatabaseResult
createRelationalDatabaseResultDecoder =
    JD.succeed CreateRelationalDatabaseResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




createRelationalDatabaseResultToString : CreateRelationalDatabaseResult -> String -- List (String, String)
createRelationalDatabaseResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createRelationalDatabaseSnapsh
-}
type alias CreateRelationalDatabaseSnapshotResult =
    { operations : Maybe (List Operation)
    }



createRelationalDatabaseSnapshotResultDecoder : JD.Decoder CreateRelationalDatabaseSnapshotResult
createRelationalDatabaseSnapshotResultDecoder =
    JD.succeed CreateRelationalDatabaseSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




createRelationalDatabaseSnapshotResultToString : CreateRelationalDatabaseSnapshotResult -> String -- List (String, String)
createRelationalDatabaseSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDi
-}
type alias DeleteDiskResult =
    { operations : Maybe (List Operation)
    }



deleteDiskResultDecoder : JD.Decoder DeleteDiskResult
deleteDiskResultDecoder =
    JD.succeed DeleteDiskResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




deleteDiskResultToString : DeleteDiskResult -> String -- List (String, String)
deleteDiskResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDiskSnapsh
-}
type alias DeleteDiskSnapshotResult =
    { operations : Maybe (List Operation)
    }



deleteDiskSnapshotResultDecoder : JD.Decoder DeleteDiskSnapshotResult
deleteDiskSnapshotResultDecoder =
    JD.succeed DeleteDiskSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




deleteDiskSnapshotResultToString : DeleteDiskSnapshotResult -> String -- List (String, String)
deleteDiskSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDomainEnt
-}
type alias DeleteDomainEntryResult =
    { operation : Maybe Operation
    }



deleteDomainEntryResultDecoder : JD.Decoder DeleteDomainEntryResult
deleteDomainEntryResultDecoder =
    JD.succeed DeleteDomainEntryResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




deleteDomainEntryResultToString : DeleteDomainEntryResult -> String -- List (String, String)
deleteDomainEntryResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDoma
-}
type alias DeleteDomainResult =
    { operation : Maybe Operation
    }



deleteDomainResultDecoder : JD.Decoder DeleteDomainResult
deleteDomainResultDecoder =
    JD.succeed DeleteDomainResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




deleteDomainResultToString : DeleteDomainResult -> String -- List (String, String)
deleteDomainResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteInstan
-}
type alias DeleteInstanceResult =
    { operations : Maybe (List Operation)
    }



deleteInstanceResultDecoder : JD.Decoder DeleteInstanceResult
deleteInstanceResultDecoder =
    JD.succeed DeleteInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




deleteInstanceResultToString : DeleteInstanceResult -> String -- List (String, String)
deleteInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteInstanceSnapsh
-}
type alias DeleteInstanceSnapshotResult =
    { operations : Maybe (List Operation)
    }



deleteInstanceSnapshotResultDecoder : JD.Decoder DeleteInstanceSnapshotResult
deleteInstanceSnapshotResultDecoder =
    JD.succeed DeleteInstanceSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




deleteInstanceSnapshotResultToString : DeleteInstanceSnapshotResult -> String -- List (String, String)
deleteInstanceSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteKeyPa
-}
type alias DeleteKeyPairResult =
    { operation : Maybe Operation
    }



deleteKeyPairResultDecoder : JD.Decoder DeleteKeyPairResult
deleteKeyPairResultDecoder =
    JD.succeed DeleteKeyPairResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




deleteKeyPairResultToString : DeleteKeyPairResult -> String -- List (String, String)
deleteKeyPairResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteKnownHostKe
-}
type alias DeleteKnownHostKeysResult =
    { operations : Maybe (List Operation)
    }



deleteKnownHostKeysResultDecoder : JD.Decoder DeleteKnownHostKeysResult
deleteKnownHostKeysResultDecoder =
    JD.succeed DeleteKnownHostKeysResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




deleteKnownHostKeysResultToString : DeleteKnownHostKeysResult -> String -- List (String, String)
deleteKnownHostKeysResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteLoadBalanc
-}
type alias DeleteLoadBalancerResult =
    { operations : Maybe (List Operation)
    }



deleteLoadBalancerResultDecoder : JD.Decoder DeleteLoadBalancerResult
deleteLoadBalancerResultDecoder =
    JD.succeed DeleteLoadBalancerResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




deleteLoadBalancerResultToString : DeleteLoadBalancerResult -> String -- List (String, String)
deleteLoadBalancerResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteLoadBalancerTlsCertifica
-}
type alias DeleteLoadBalancerTlsCertificateResult =
    { operations : Maybe (List Operation)
    }



deleteLoadBalancerTlsCertificateResultDecoder : JD.Decoder DeleteLoadBalancerTlsCertificateResult
deleteLoadBalancerTlsCertificateResultDecoder =
    JD.succeed DeleteLoadBalancerTlsCertificateResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




deleteLoadBalancerTlsCertificateResultToString : DeleteLoadBalancerTlsCertificateResult -> String -- List (String, String)
deleteLoadBalancerTlsCertificateResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteRelationalDataba
-}
type alias DeleteRelationalDatabaseResult =
    { operations : Maybe (List Operation)
    }



deleteRelationalDatabaseResultDecoder : JD.Decoder DeleteRelationalDatabaseResult
deleteRelationalDatabaseResultDecoder =
    JD.succeed DeleteRelationalDatabaseResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




deleteRelationalDatabaseResultToString : DeleteRelationalDatabaseResult -> String -- List (String, String)
deleteRelationalDatabaseResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteRelationalDatabaseSnapsh
-}
type alias DeleteRelationalDatabaseSnapshotResult =
    { operations : Maybe (List Operation)
    }



deleteRelationalDatabaseSnapshotResultDecoder : JD.Decoder DeleteRelationalDatabaseSnapshotResult
deleteRelationalDatabaseSnapshotResultDecoder =
    JD.succeed DeleteRelationalDatabaseSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




deleteRelationalDatabaseSnapshotResultToString : DeleteRelationalDatabaseSnapshotResult -> String -- List (String, String)
deleteRelationalDatabaseSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| <p>Describes the destination of a record.</p>
-}
type alias DestinationInfo =
    { id : Maybe String
    , service : Maybe String
    }



destinationInfoDecoder : JD.Decoder DestinationInfo
destinationInfoDecoder =
    JD.succeed DestinationInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["service", "Service"]
            JD.string
        )
        




destinationInfoToString : DestinationInfo -> String -- List (String, String)
destinationInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "service" "" -- val.service
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from detachDi
-}
type alias DetachDiskResult =
    { operations : Maybe (List Operation)
    }



detachDiskResultDecoder : JD.Decoder DetachDiskResult
detachDiskResultDecoder =
    JD.succeed DetachDiskResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




detachDiskResultToString : DetachDiskResult -> String -- List (String, String)
detachDiskResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from detachInstancesFromLoadBalanc
-}
type alias DetachInstancesFromLoadBalancerResult =
    { operations : Maybe (List Operation)
    }



detachInstancesFromLoadBalancerResultDecoder : JD.Decoder DetachInstancesFromLoadBalancerResult
detachInstancesFromLoadBalancerResultDecoder =
    JD.succeed DetachInstancesFromLoadBalancerResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




detachInstancesFromLoadBalancerResultToString : DetachInstancesFromLoadBalancerResult -> String -- List (String, String)
detachInstancesFromLoadBalancerResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from detachStatic
-}
type alias DetachStaticIpResult =
    { operations : Maybe (List Operation)
    }



detachStaticIpResultDecoder : JD.Decoder DetachStaticIpResult
detachStaticIpResultDecoder =
    JD.succeed DetachStaticIpResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




detachStaticIpResultToString : DetachStaticIpResult -> String -- List (String, String)
detachStaticIpResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| <p>Describes a system disk or an block storage disk.</p>
-}
type alias Disk =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , tags : Maybe (List Tag)
    , sizeInGb : Maybe Int
    , isSystemDisk : Maybe Bool
    , iops : Maybe Int
    , path : Maybe String
    , state : Maybe DiskState
    , attachedTo : Maybe String
    , isAttached : Maybe Bool
    , attachmentState : Maybe String
    , gbInUse : Maybe Int
    }



diskDecoder : JD.Decoder Disk
diskDecoder =
    JD.succeed Disk
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["supportCode", "SupportCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sizeInGb", "SizeInGb"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isSystemDisk", "IsSystemDisk"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["iops", "Iops"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["path", "Path"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            diskStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attachedTo", "AttachedTo"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isAttached", "IsAttached"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attachmentState", "AttachmentState"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["gbInUse", "GbInUse"]
            JD.int
        )
        




diskToString : Disk -> String -- List (String, String)
diskToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "supportCode" "" -- val.supportCode
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "sizeInGb" "" -- val.sizeInGb
        
    --     |> Dict.insert
    --         "isSystemDisk" "" -- val.isSystemDisk
        
    --     |> Dict.insert
    --         "iops" "" -- val.iops
        
    --     |> Dict.insert
    --         "path" "" -- val.path
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "attachedTo" "" -- val.attachedTo
        
    --     |> Dict.insert
    --         "isAttached" "" -- val.isAttached
        
    --     |> Dict.insert
    --         "attachmentState" "" -- val.attachmentState
        
    --     |> Dict.insert
    --         "gbInUse" "" -- val.gbInUse
        
    --     |> Dict.toList
    ""



{-| <p>Describes a disk.</p>
-}
type alias DiskInfo =
    { name : Maybe String
    , path : Maybe String
    , sizeInGb : Maybe Int
    , isSystemDisk : Maybe Bool
    }



diskInfoDecoder : JD.Decoder DiskInfo
diskInfoDecoder =
    JD.succeed DiskInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["path", "Path"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sizeInGb", "SizeInGb"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isSystemDisk", "IsSystemDisk"]
            JD.bool
        )
        




diskInfoToString : DiskInfo -> String -- List (String, String)
diskInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "path" "" -- val.path
        
    --     |> Dict.insert
    --         "sizeInGb" "" -- val.sizeInGb
        
    --     |> Dict.insert
    --         "isSystemDisk" "" -- val.isSystemDisk
        
    --     |> Dict.toList
    ""



{-| <p>Describes a block storage disk mapping.</p>
-}
type alias DiskMap =
    { originalDiskPath : Maybe String
    , newDiskName : Maybe String
    }



diskMapDecoder : JD.Decoder DiskMap
diskMapDecoder =
    JD.succeed DiskMap
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["originalDiskPath", "OriginalDiskPath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["newDiskName", "NewDiskName"]
            JD.string
        )
        




diskMapToString : DiskMap -> String -- List (String, String)
diskMapToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "originalDiskPath" "" -- val.originalDiskPath
        
    --     |> Dict.insert
    --         "newDiskName" "" -- val.newDiskName
        
    --     |> Dict.toList
    ""



{-| <p>Describes a block storage disk snapshot.</p>
-}
type alias DiskSnapshot =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , tags : Maybe (List Tag)
    , sizeInGb : Maybe Int
    , state : Maybe DiskSnapshotState
    , progress : Maybe String
    , fromDiskName : Maybe String
    , fromDiskArn : Maybe String
    , fromInstanceName : Maybe String
    , fromInstanceArn : Maybe String
    }



diskSnapshotDecoder : JD.Decoder DiskSnapshot
diskSnapshotDecoder =
    JD.succeed DiskSnapshot
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["supportCode", "SupportCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sizeInGb", "SizeInGb"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            diskSnapshotStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["progress", "Progress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromDiskName", "FromDiskName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromDiskArn", "FromDiskArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromInstanceName", "FromInstanceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromInstanceArn", "FromInstanceArn"]
            JD.string
        )
        




diskSnapshotToString : DiskSnapshot -> String -- List (String, String)
diskSnapshotToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "supportCode" "" -- val.supportCode
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "sizeInGb" "" -- val.sizeInGb
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "progress" "" -- val.progress
        
    --     |> Dict.insert
    --         "fromDiskName" "" -- val.fromDiskName
        
    --     |> Dict.insert
    --         "fromDiskArn" "" -- val.fromDiskArn
        
    --     |> Dict.insert
    --         "fromInstanceName" "" -- val.fromInstanceName
        
    --     |> Dict.insert
    --         "fromInstanceArn" "" -- val.fromInstanceArn
        
    --     |> Dict.toList
    ""



{-| <p>Describes a disk snapshot.</p>
-}
type alias DiskSnapshotInfo =
    { sizeInGb : Maybe Int
    }



diskSnapshotInfoDecoder : JD.Decoder DiskSnapshotInfo
diskSnapshotInfoDecoder =
    JD.succeed DiskSnapshotInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sizeInGb", "SizeInGb"]
            JD.int
        )
        




diskSnapshotInfoToString : DiskSnapshotInfo -> String -- List (String, String)
diskSnapshotInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sizeInGb" "" -- val.sizeInGb
        
    --     |> Dict.toList
    ""



{-| One of

* `DiskSnapshotState_pending`
* `DiskSnapshotState_completed`
* `DiskSnapshotState_error`
* `DiskSnapshotState_unknown`

-}
type DiskSnapshotState
    = DiskSnapshotState_pending
    | DiskSnapshotState_completed
    | DiskSnapshotState_error
    | DiskSnapshotState_unknown



diskSnapshotStateDecoder : JD.Decoder DiskSnapshotState
diskSnapshotStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed DiskSnapshotState_pending

                    "completed" ->
                        JD.succeed DiskSnapshotState_completed

                    "error" ->
                        JD.succeed DiskSnapshotState_error

                    "unknown" ->
                        JD.succeed DiskSnapshotState_unknown


                    _ ->
                        JD.fail "bad thing"
            )




diskSnapshotStateToString : DiskSnapshotState -> String
diskSnapshotStateToString val =
    case val of
        DiskSnapshotState_pending ->
            "pending"

        DiskSnapshotState_completed ->
            "completed"

        DiskSnapshotState_error ->
            "error"

        DiskSnapshotState_unknown ->
            "unknown"




{-| One of

* `DiskState_pending`
* `DiskState_error`
* `DiskState_available`
* `DiskState_in-use`
* `DiskState_unknown`

-}
type DiskState
    = DiskState_pending
    | DiskState_error
    | DiskState_available
    | DiskState_in_use
    | DiskState_unknown



diskStateDecoder : JD.Decoder DiskState
diskStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed DiskState_pending

                    "error" ->
                        JD.succeed DiskState_error

                    "available" ->
                        JD.succeed DiskState_available

                    "in_use" ->
                        JD.succeed DiskState_in_use

                    "unknown" ->
                        JD.succeed DiskState_unknown


                    _ ->
                        JD.fail "bad thing"
            )




diskStateToString : DiskState -> String
diskStateToString val =
    case val of
        DiskState_pending ->
            "pending"

        DiskState_error ->
            "error"

        DiskState_available ->
            "available"

        DiskState_in_use ->
            "in_use"

        DiskState_unknown ->
            "unknown"




{-| <p>Describes a domain where you are storing recordsets in Lightsail.</p>
-}
type alias Domain =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , tags : Maybe (List Tag)
    , domainEntries : Maybe (List DomainEntry)
    }



domainDecoder : JD.Decoder Domain
domainDecoder =
    JD.succeed Domain
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["supportCode", "SupportCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["domainEntries", "DomainEntries"]
            (JD.list domainEntryDecoder)
        )
        




domainToString : Domain -> String -- List (String, String)
domainToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "supportCode" "" -- val.supportCode
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "domainEntries" "" -- val.domainEntries
        
    --     |> Dict.toList
    ""



{-| <p>Describes a domain recordset entry.</p>
-}
type alias DomainEntry =
    { id : Maybe String
    , name : Maybe String
    , target : Maybe String
    , isAlias : Maybe Bool
    , type_ : Maybe String
    , options : Maybe (Dict String String)
    }



domainEntryDecoder : JD.Decoder DomainEntry
domainEntryDecoder =
    JD.succeed DomainEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["target", "Target"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isAlias", "IsAlias"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["options", "Options"]
            (AWS.Core.Decode.dict JD.string)
        )
        




domainEntryToString : DomainEntry -> String -- List (String, String)
domainEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "target" "" -- val.target
        
    --     |> Dict.insert
    --         "isAlias" "" -- val.isAlias
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "options" "" -- val.options
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from downloadDefaultKeyPa
-}
type alias DownloadDefaultKeyPairResult =
    { publicKeyBase64 : Maybe String
    , privateKeyBase64 : Maybe String
    }



downloadDefaultKeyPairResultDecoder : JD.Decoder DownloadDefaultKeyPairResult
downloadDefaultKeyPairResultDecoder =
    JD.succeed DownloadDefaultKeyPairResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["publicKeyBase64", "PublicKeyBase64"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["privateKeyBase64", "PrivateKeyBase64"]
            JD.string
        )
        




downloadDefaultKeyPairResultToString : DownloadDefaultKeyPairResult -> String -- List (String, String)
downloadDefaultKeyPairResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "publicKeyBase64" "" -- val.publicKeyBase64
        
    --     |> Dict.insert
    --         "privateKeyBase64" "" -- val.privateKeyBase64
        
    --     |> Dict.toList
    ""



{-| <p>Describes an export snapshot record.</p>
-}
type alias ExportSnapshotRecord =
    { name : Maybe String
    , arn : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , state : Maybe RecordState
    , sourceInfo : Maybe ExportSnapshotRecordSourceInfo
    , destinationInfo : Maybe DestinationInfo
    }



exportSnapshotRecordDecoder : JD.Decoder ExportSnapshotRecord
exportSnapshotRecordDecoder =
    JD.succeed ExportSnapshotRecord
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            recordStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sourceInfo", "SourceInfo"]
            exportSnapshotRecordSourceInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinationInfo", "DestinationInfo"]
            destinationInfoDecoder
        )
        




exportSnapshotRecordToString : ExportSnapshotRecord -> String -- List (String, String)
exportSnapshotRecordToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "sourceInfo" "" -- val.sourceInfo
        
    --     |> Dict.insert
    --         "destinationInfo" "" -- val.destinationInfo
        
    --     |> Dict.toList
    ""



{-| <p>Describes the source of an export snapshot record.</p>
-}
type alias ExportSnapshotRecordSourceInfo =
    { resourceType : Maybe ExportSnapshotRecordSourceType
    , createdAt : Maybe Posix
    , name : Maybe String
    , arn : Maybe String
    , fromResourceName : Maybe String
    , fromResourceArn : Maybe String
    , instanceSnapshotInfo : Maybe InstanceSnapshotInfo
    , diskSnapshotInfo : Maybe DiskSnapshotInfo
    }



exportSnapshotRecordSourceInfoDecoder : JD.Decoder ExportSnapshotRecordSourceInfo
exportSnapshotRecordSourceInfoDecoder =
    JD.succeed ExportSnapshotRecordSourceInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            exportSnapshotRecordSourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromResourceName", "FromResourceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromResourceArn", "FromResourceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceSnapshotInfo", "InstanceSnapshotInfo"]
            instanceSnapshotInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["diskSnapshotInfo", "DiskSnapshotInfo"]
            diskSnapshotInfoDecoder
        )
        




exportSnapshotRecordSourceInfoToString : ExportSnapshotRecordSourceInfo -> String -- List (String, String)
exportSnapshotRecordSourceInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "fromResourceName" "" -- val.fromResourceName
        
    --     |> Dict.insert
    --         "fromResourceArn" "" -- val.fromResourceArn
        
    --     |> Dict.insert
    --         "instanceSnapshotInfo" "" -- val.instanceSnapshotInfo
        
    --     |> Dict.insert
    --         "diskSnapshotInfo" "" -- val.diskSnapshotInfo
        
    --     |> Dict.toList
    ""



{-| One of

* `ExportSnapshotRecordSourceType_InstanceSnapshot`
* `ExportSnapshotRecordSourceType_DiskSnapshot`

-}
type ExportSnapshotRecordSourceType
    = ExportSnapshotRecordSourceType_InstanceSnapshot
    | ExportSnapshotRecordSourceType_DiskSnapshot



exportSnapshotRecordSourceTypeDecoder : JD.Decoder ExportSnapshotRecordSourceType
exportSnapshotRecordSourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InstanceSnapshot" ->
                        JD.succeed ExportSnapshotRecordSourceType_InstanceSnapshot

                    "DiskSnapshot" ->
                        JD.succeed ExportSnapshotRecordSourceType_DiskSnapshot


                    _ ->
                        JD.fail "bad thing"
            )




exportSnapshotRecordSourceTypeToString : ExportSnapshotRecordSourceType -> String
exportSnapshotRecordSourceTypeToString val =
    case val of
        ExportSnapshotRecordSourceType_InstanceSnapshot ->
            "InstanceSnapshot"

        ExportSnapshotRecordSourceType_DiskSnapshot ->
            "DiskSnapshot"




{-| Type of HTTP response from exportSnapsh
-}
type alias ExportSnapshotResult =
    { operations : Maybe (List Operation)
    }



exportSnapshotResultDecoder : JD.Decoder ExportSnapshotResult
exportSnapshotResultDecoder =
    JD.succeed ExportSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




exportSnapshotResultToString : ExportSnapshotResult -> String -- List (String, String)
exportSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getActiveNam
-}
type alias GetActiveNamesResult =
    { activeNames : Maybe (List String)
    , nextPageToken : Maybe String
    }



getActiveNamesResultDecoder : JD.Decoder GetActiveNamesResult
getActiveNamesResultDecoder =
    JD.succeed GetActiveNamesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["activeNames", "ActiveNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getActiveNamesResultToString : GetActiveNamesResult -> String -- List (String, String)
getActiveNamesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "activeNames" "" -- val.activeNames
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getBlueprin
-}
type alias GetBlueprintsResult =
    { blueprints : Maybe (List Blueprint)
    , nextPageToken : Maybe String
    }



getBlueprintsResultDecoder : JD.Decoder GetBlueprintsResult
getBlueprintsResultDecoder =
    JD.succeed GetBlueprintsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["blueprints", "Blueprints"]
            (JD.list blueprintDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getBlueprintsResultToString : GetBlueprintsResult -> String -- List (String, String)
getBlueprintsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "blueprints" "" -- val.blueprints
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getBundl
-}
type alias GetBundlesResult =
    { bundles : Maybe (List Bundle)
    , nextPageToken : Maybe String
    }



getBundlesResultDecoder : JD.Decoder GetBundlesResult
getBundlesResultDecoder =
    JD.succeed GetBundlesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bundles", "Bundles"]
            (JD.list bundleDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getBundlesResultToString : GetBundlesResult -> String -- List (String, String)
getBundlesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bundles" "" -- val.bundles
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getCloudFormationStackRecor
-}
type alias GetCloudFormationStackRecordsResult =
    { cloudFormationStackRecords : Maybe (List CloudFormationStackRecord)
    , nextPageToken : Maybe String
    }



getCloudFormationStackRecordsResultDecoder : JD.Decoder GetCloudFormationStackRecordsResult
getCloudFormationStackRecordsResultDecoder =
    JD.succeed GetCloudFormationStackRecordsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cloudFormationStackRecords", "CloudFormationStackRecords"]
            (JD.list cloudFormationStackRecordDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getCloudFormationStackRecordsResultToString : GetCloudFormationStackRecordsResult -> String -- List (String, String)
getCloudFormationStackRecordsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cloudFormationStackRecords" "" -- val.cloudFormationStackRecords
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDi
-}
type alias GetDiskResult =
    { disk : Maybe Disk
    }



getDiskResultDecoder : JD.Decoder GetDiskResult
getDiskResultDecoder =
    JD.succeed GetDiskResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["disk", "Disk"]
            diskDecoder
        )
        




getDiskResultToString : GetDiskResult -> String -- List (String, String)
getDiskResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "disk" "" -- val.disk
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDiskSnapsh
-}
type alias GetDiskSnapshotResult =
    { diskSnapshot : Maybe DiskSnapshot
    }



getDiskSnapshotResultDecoder : JD.Decoder GetDiskSnapshotResult
getDiskSnapshotResultDecoder =
    JD.succeed GetDiskSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["diskSnapshot", "DiskSnapshot"]
            diskSnapshotDecoder
        )
        




getDiskSnapshotResultToString : GetDiskSnapshotResult -> String -- List (String, String)
getDiskSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "diskSnapshot" "" -- val.diskSnapshot
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDiskSnapsho
-}
type alias GetDiskSnapshotsResult =
    { diskSnapshots : Maybe (List DiskSnapshot)
    , nextPageToken : Maybe String
    }



getDiskSnapshotsResultDecoder : JD.Decoder GetDiskSnapshotsResult
getDiskSnapshotsResultDecoder =
    JD.succeed GetDiskSnapshotsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["diskSnapshots", "DiskSnapshots"]
            (JD.list diskSnapshotDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getDiskSnapshotsResultToString : GetDiskSnapshotsResult -> String -- List (String, String)
getDiskSnapshotsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "diskSnapshots" "" -- val.diskSnapshots
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDis
-}
type alias GetDisksResult =
    { disks : Maybe (List Disk)
    , nextPageToken : Maybe String
    }



getDisksResultDecoder : JD.Decoder GetDisksResult
getDisksResultDecoder =
    JD.succeed GetDisksResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["disks", "Disks"]
            (JD.list diskDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getDisksResultToString : GetDisksResult -> String -- List (String, String)
getDisksResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "disks" "" -- val.disks
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDoma
-}
type alias GetDomainResult =
    { domain : Maybe Domain
    }



getDomainResultDecoder : JD.Decoder GetDomainResult
getDomainResultDecoder =
    JD.succeed GetDomainResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["domain", "Domain"]
            domainDecoder
        )
        




getDomainResultToString : GetDomainResult -> String -- List (String, String)
getDomainResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "domain" "" -- val.domain
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDomai
-}
type alias GetDomainsResult =
    { domains : Maybe (List Domain)
    , nextPageToken : Maybe String
    }



getDomainsResultDecoder : JD.Decoder GetDomainsResult
getDomainsResultDecoder =
    JD.succeed GetDomainsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["domains", "Domains"]
            (JD.list domainDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getDomainsResultToString : GetDomainsResult -> String -- List (String, String)
getDomainsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "domains" "" -- val.domains
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getExportSnapshotRecor
-}
type alias GetExportSnapshotRecordsResult =
    { exportSnapshotRecords : Maybe (List ExportSnapshotRecord)
    , nextPageToken : Maybe String
    }



getExportSnapshotRecordsResultDecoder : JD.Decoder GetExportSnapshotRecordsResult
getExportSnapshotRecordsResultDecoder =
    JD.succeed GetExportSnapshotRecordsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["exportSnapshotRecords", "ExportSnapshotRecords"]
            (JD.list exportSnapshotRecordDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getExportSnapshotRecordsResultToString : GetExportSnapshotRecordsResult -> String -- List (String, String)
getExportSnapshotRecordsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "exportSnapshotRecords" "" -- val.exportSnapshotRecords
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getInstanceAccessDetai
-}
type alias GetInstanceAccessDetailsResult =
    { accessDetails : Maybe InstanceAccessDetails
    }



getInstanceAccessDetailsResultDecoder : JD.Decoder GetInstanceAccessDetailsResult
getInstanceAccessDetailsResultDecoder =
    JD.succeed GetInstanceAccessDetailsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["accessDetails", "AccessDetails"]
            instanceAccessDetailsDecoder
        )
        




getInstanceAccessDetailsResultToString : GetInstanceAccessDetailsResult -> String -- List (String, String)
getInstanceAccessDetailsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accessDetails" "" -- val.accessDetails
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getInstanceMetricDa
-}
type alias GetInstanceMetricDataResult =
    { metricName : Maybe InstanceMetricName
    , metricData : Maybe (List MetricDatapoint)
    }



getInstanceMetricDataResultDecoder : JD.Decoder GetInstanceMetricDataResult
getInstanceMetricDataResultDecoder =
    JD.succeed GetInstanceMetricDataResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["metricName", "MetricName"]
            instanceMetricNameDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["metricData", "MetricData"]
            (JD.list metricDatapointDecoder)
        )
        




getInstanceMetricDataResultToString : GetInstanceMetricDataResult -> String -- List (String, String)
getInstanceMetricDataResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "metricName" "" -- val.metricName
        
    --     |> Dict.insert
    --         "metricData" "" -- val.metricData
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getInstancePortStat
-}
type alias GetInstancePortStatesResult =
    { portStates : Maybe (List InstancePortState)
    }



getInstancePortStatesResultDecoder : JD.Decoder GetInstancePortStatesResult
getInstancePortStatesResultDecoder =
    JD.succeed GetInstancePortStatesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["portStates", "PortStates"]
            (JD.list instancePortStateDecoder)
        )
        




getInstancePortStatesResultToString : GetInstancePortStatesResult -> String -- List (String, String)
getInstancePortStatesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "portStates" "" -- val.portStates
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getInstan
-}
type alias GetInstanceResult =
    { instance : Maybe Instance
    }



getInstanceResultDecoder : JD.Decoder GetInstanceResult
getInstanceResultDecoder =
    JD.succeed GetInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instance", "Instance"]
            instanceDecoder
        )
        




getInstanceResultToString : GetInstanceResult -> String -- List (String, String)
getInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instance" "" -- val.instance
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getInstanceSnapsh
-}
type alias GetInstanceSnapshotResult =
    { instanceSnapshot : Maybe InstanceSnapshot
    }



getInstanceSnapshotResultDecoder : JD.Decoder GetInstanceSnapshotResult
getInstanceSnapshotResultDecoder =
    JD.succeed GetInstanceSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceSnapshot", "InstanceSnapshot"]
            instanceSnapshotDecoder
        )
        




getInstanceSnapshotResultToString : GetInstanceSnapshotResult -> String -- List (String, String)
getInstanceSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceSnapshot" "" -- val.instanceSnapshot
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getInstanceSnapsho
-}
type alias GetInstanceSnapshotsResult =
    { instanceSnapshots : Maybe (List InstanceSnapshot)
    , nextPageToken : Maybe String
    }



getInstanceSnapshotsResultDecoder : JD.Decoder GetInstanceSnapshotsResult
getInstanceSnapshotsResultDecoder =
    JD.succeed GetInstanceSnapshotsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceSnapshots", "InstanceSnapshots"]
            (JD.list instanceSnapshotDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getInstanceSnapshotsResultToString : GetInstanceSnapshotsResult -> String -- List (String, String)
getInstanceSnapshotsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceSnapshots" "" -- val.instanceSnapshots
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getInstanceSta
-}
type alias GetInstanceStateResult =
    { state : Maybe InstanceState
    }



getInstanceStateResultDecoder : JD.Decoder GetInstanceStateResult
getInstanceStateResultDecoder =
    JD.succeed GetInstanceStateResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            instanceStateDecoder
        )
        




getInstanceStateResultToString : GetInstanceStateResult -> String -- List (String, String)
getInstanceStateResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getInstanc
-}
type alias GetInstancesResult =
    { instances : Maybe (List Instance)
    , nextPageToken : Maybe String
    }



getInstancesResultDecoder : JD.Decoder GetInstancesResult
getInstancesResultDecoder =
    JD.succeed GetInstancesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instances", "Instances"]
            (JD.list instanceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getInstancesResultToString : GetInstancesResult -> String -- List (String, String)
getInstancesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instances" "" -- val.instances
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getKeyPa
-}
type alias GetKeyPairResult =
    { keyPair : Maybe KeyPair
    }



getKeyPairResultDecoder : JD.Decoder GetKeyPairResult
getKeyPairResultDecoder =
    JD.succeed GetKeyPairResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["keyPair", "KeyPair"]
            keyPairDecoder
        )
        




getKeyPairResultToString : GetKeyPairResult -> String -- List (String, String)
getKeyPairResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keyPair" "" -- val.keyPair
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getKeyPai
-}
type alias GetKeyPairsResult =
    { keyPairs : Maybe (List KeyPair)
    , nextPageToken : Maybe String
    }



getKeyPairsResultDecoder : JD.Decoder GetKeyPairsResult
getKeyPairsResultDecoder =
    JD.succeed GetKeyPairsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["keyPairs", "KeyPairs"]
            (JD.list keyPairDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getKeyPairsResultToString : GetKeyPairsResult -> String -- List (String, String)
getKeyPairsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keyPairs" "" -- val.keyPairs
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getLoadBalancerMetricDa
-}
type alias GetLoadBalancerMetricDataResult =
    { metricName : Maybe LoadBalancerMetricName
    , metricData : Maybe (List MetricDatapoint)
    }



getLoadBalancerMetricDataResultDecoder : JD.Decoder GetLoadBalancerMetricDataResult
getLoadBalancerMetricDataResultDecoder =
    JD.succeed GetLoadBalancerMetricDataResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["metricName", "MetricName"]
            loadBalancerMetricNameDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["metricData", "MetricData"]
            (JD.list metricDatapointDecoder)
        )
        




getLoadBalancerMetricDataResultToString : GetLoadBalancerMetricDataResult -> String -- List (String, String)
getLoadBalancerMetricDataResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "metricName" "" -- val.metricName
        
    --     |> Dict.insert
    --         "metricData" "" -- val.metricData
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getLoadBalanc
-}
type alias GetLoadBalancerResult =
    { loadBalancer : Maybe LoadBalancer
    }



getLoadBalancerResultDecoder : JD.Decoder GetLoadBalancerResult
getLoadBalancerResultDecoder =
    JD.succeed GetLoadBalancerResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["loadBalancer", "LoadBalancer"]
            loadBalancerDecoder
        )
        




getLoadBalancerResultToString : GetLoadBalancerResult -> String -- List (String, String)
getLoadBalancerResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loadBalancer" "" -- val.loadBalancer
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getLoadBalancerTlsCertificat
-}
type alias GetLoadBalancerTlsCertificatesResult =
    { tlsCertificates : Maybe (List LoadBalancerTlsCertificate)
    }



getLoadBalancerTlsCertificatesResultDecoder : JD.Decoder GetLoadBalancerTlsCertificatesResult
getLoadBalancerTlsCertificatesResultDecoder =
    JD.succeed GetLoadBalancerTlsCertificatesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tlsCertificates", "TlsCertificates"]
            (JD.list loadBalancerTlsCertificateDecoder)
        )
        




getLoadBalancerTlsCertificatesResultToString : GetLoadBalancerTlsCertificatesResult -> String -- List (String, String)
getLoadBalancerTlsCertificatesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tlsCertificates" "" -- val.tlsCertificates
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getLoadBalance
-}
type alias GetLoadBalancersResult =
    { loadBalancers : Maybe (List LoadBalancer)
    , nextPageToken : Maybe String
    }



getLoadBalancersResultDecoder : JD.Decoder GetLoadBalancersResult
getLoadBalancersResultDecoder =
    JD.succeed GetLoadBalancersResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["loadBalancers", "LoadBalancers"]
            (JD.list loadBalancerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getLoadBalancersResultToString : GetLoadBalancersResult -> String -- List (String, String)
getLoadBalancersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loadBalancers" "" -- val.loadBalancers
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getOperati
-}
type alias GetOperationResult =
    { operation : Maybe Operation
    }



getOperationResultDecoder : JD.Decoder GetOperationResult
getOperationResultDecoder =
    JD.succeed GetOperationResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




getOperationResultToString : GetOperationResult -> String -- List (String, String)
getOperationResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getOperationsForResour
-}
type alias GetOperationsForResourceResult =
    { operations : Maybe (List Operation)
    , nextPageCount : Maybe String
    , nextPageToken : Maybe String
    }



getOperationsForResourceResultDecoder : JD.Decoder GetOperationsForResourceResult
getOperationsForResourceResultDecoder =
    JD.succeed GetOperationsForResourceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageCount", "NextPageCount"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getOperationsForResourceResultToString : GetOperationsForResourceResult -> String -- List (String, String)
getOperationsForResourceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.insert
    --         "nextPageCount" "" -- val.nextPageCount
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getOperatio
-}
type alias GetOperationsResult =
    { operations : Maybe (List Operation)
    , nextPageToken : Maybe String
    }



getOperationsResultDecoder : JD.Decoder GetOperationsResult
getOperationsResultDecoder =
    JD.succeed GetOperationsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getOperationsResultToString : GetOperationsResult -> String -- List (String, String)
getOperationsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRegio
-}
type alias GetRegionsResult =
    { regions : Maybe (List Region)
    }



getRegionsResultDecoder : JD.Decoder GetRegionsResult
getRegionsResultDecoder =
    JD.succeed GetRegionsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["regions", "Regions"]
            (JD.list regionDecoder)
        )
        




getRegionsResultToString : GetRegionsResult -> String -- List (String, String)
getRegionsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "regions" "" -- val.regions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRelationalDatabaseBlueprin
-}
type alias GetRelationalDatabaseBlueprintsResult =
    { blueprints : Maybe (List RelationalDatabaseBlueprint)
    , nextPageToken : Maybe String
    }



getRelationalDatabaseBlueprintsResultDecoder : JD.Decoder GetRelationalDatabaseBlueprintsResult
getRelationalDatabaseBlueprintsResultDecoder =
    JD.succeed GetRelationalDatabaseBlueprintsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["blueprints", "Blueprints"]
            (JD.list relationalDatabaseBlueprintDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getRelationalDatabaseBlueprintsResultToString : GetRelationalDatabaseBlueprintsResult -> String -- List (String, String)
getRelationalDatabaseBlueprintsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "blueprints" "" -- val.blueprints
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRelationalDatabaseBundl
-}
type alias GetRelationalDatabaseBundlesResult =
    { bundles : Maybe (List RelationalDatabaseBundle)
    , nextPageToken : Maybe String
    }



getRelationalDatabaseBundlesResultDecoder : JD.Decoder GetRelationalDatabaseBundlesResult
getRelationalDatabaseBundlesResultDecoder =
    JD.succeed GetRelationalDatabaseBundlesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bundles", "Bundles"]
            (JD.list relationalDatabaseBundleDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getRelationalDatabaseBundlesResultToString : GetRelationalDatabaseBundlesResult -> String -- List (String, String)
getRelationalDatabaseBundlesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bundles" "" -- val.bundles
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRelationalDatabaseEven
-}
type alias GetRelationalDatabaseEventsResult =
    { relationalDatabaseEvents : Maybe (List RelationalDatabaseEvent)
    , nextPageToken : Maybe String
    }



getRelationalDatabaseEventsResultDecoder : JD.Decoder GetRelationalDatabaseEventsResult
getRelationalDatabaseEventsResultDecoder =
    JD.succeed GetRelationalDatabaseEventsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relationalDatabaseEvents", "RelationalDatabaseEvents"]
            (JD.list relationalDatabaseEventDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getRelationalDatabaseEventsResultToString : GetRelationalDatabaseEventsResult -> String -- List (String, String)
getRelationalDatabaseEventsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "relationalDatabaseEvents" "" -- val.relationalDatabaseEvents
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRelationalDatabaseLogEven
-}
type alias GetRelationalDatabaseLogEventsResult =
    { resourceLogEvents : Maybe (List LogEvent)
    , nextBackwardToken : Maybe String
    , nextForwardToken : Maybe String
    }



getRelationalDatabaseLogEventsResultDecoder : JD.Decoder GetRelationalDatabaseLogEventsResult
getRelationalDatabaseLogEventsResultDecoder =
    JD.succeed GetRelationalDatabaseLogEventsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceLogEvents", "ResourceLogEvents"]
            (JD.list logEventDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextBackwardToken", "NextBackwardToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextForwardToken", "NextForwardToken"]
            JD.string
        )
        




getRelationalDatabaseLogEventsResultToString : GetRelationalDatabaseLogEventsResult -> String -- List (String, String)
getRelationalDatabaseLogEventsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceLogEvents" "" -- val.resourceLogEvents
        
    --     |> Dict.insert
    --         "nextBackwardToken" "" -- val.nextBackwardToken
        
    --     |> Dict.insert
    --         "nextForwardToken" "" -- val.nextForwardToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRelationalDatabaseLogStrea
-}
type alias GetRelationalDatabaseLogStreamsResult =
    { logStreams : Maybe (List String)
    }



getRelationalDatabaseLogStreamsResultDecoder : JD.Decoder GetRelationalDatabaseLogStreamsResult
getRelationalDatabaseLogStreamsResultDecoder =
    JD.succeed GetRelationalDatabaseLogStreamsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["logStreams", "LogStreams"]
            (JD.list JD.string)
        )
        




getRelationalDatabaseLogStreamsResultToString : GetRelationalDatabaseLogStreamsResult -> String -- List (String, String)
getRelationalDatabaseLogStreamsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logStreams" "" -- val.logStreams
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRelationalDatabaseMasterUserPasswo
-}
type alias GetRelationalDatabaseMasterUserPasswordResult =
    { masterUserPassword : Maybe String
    , createdAt : Maybe Posix
    }



getRelationalDatabaseMasterUserPasswordResultDecoder : JD.Decoder GetRelationalDatabaseMasterUserPasswordResult
getRelationalDatabaseMasterUserPasswordResultDecoder =
    JD.succeed GetRelationalDatabaseMasterUserPasswordResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["masterUserPassword", "MasterUserPassword"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        




getRelationalDatabaseMasterUserPasswordResultToString : GetRelationalDatabaseMasterUserPasswordResult -> String -- List (String, String)
getRelationalDatabaseMasterUserPasswordResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "masterUserPassword" "" -- val.masterUserPassword
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRelationalDatabaseMetricDa
-}
type alias GetRelationalDatabaseMetricDataResult =
    { metricName : Maybe RelationalDatabaseMetricName
    , metricData : Maybe (List MetricDatapoint)
    }



getRelationalDatabaseMetricDataResultDecoder : JD.Decoder GetRelationalDatabaseMetricDataResult
getRelationalDatabaseMetricDataResultDecoder =
    JD.succeed GetRelationalDatabaseMetricDataResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["metricName", "MetricName"]
            relationalDatabaseMetricNameDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["metricData", "MetricData"]
            (JD.list metricDatapointDecoder)
        )
        




getRelationalDatabaseMetricDataResultToString : GetRelationalDatabaseMetricDataResult -> String -- List (String, String)
getRelationalDatabaseMetricDataResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "metricName" "" -- val.metricName
        
    --     |> Dict.insert
    --         "metricData" "" -- val.metricData
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRelationalDatabaseParamete
-}
type alias GetRelationalDatabaseParametersResult =
    { parameters : Maybe (List RelationalDatabaseParameter)
    , nextPageToken : Maybe String
    }



getRelationalDatabaseParametersResultDecoder : JD.Decoder GetRelationalDatabaseParametersResult
getRelationalDatabaseParametersResultDecoder =
    JD.succeed GetRelationalDatabaseParametersResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["parameters", "Parameters"]
            (JD.list relationalDatabaseParameterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getRelationalDatabaseParametersResultToString : GetRelationalDatabaseParametersResult -> String -- List (String, String)
getRelationalDatabaseParametersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRelationalDataba
-}
type alias GetRelationalDatabaseResult =
    { relationalDatabase : Maybe RelationalDatabase
    }



getRelationalDatabaseResultDecoder : JD.Decoder GetRelationalDatabaseResult
getRelationalDatabaseResultDecoder =
    JD.succeed GetRelationalDatabaseResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relationalDatabase", "RelationalDatabase"]
            relationalDatabaseDecoder
        )
        




getRelationalDatabaseResultToString : GetRelationalDatabaseResult -> String -- List (String, String)
getRelationalDatabaseResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "relationalDatabase" "" -- val.relationalDatabase
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRelationalDatabaseSnapsh
-}
type alias GetRelationalDatabaseSnapshotResult =
    { relationalDatabaseSnapshot : Maybe RelationalDatabaseSnapshot
    }



getRelationalDatabaseSnapshotResultDecoder : JD.Decoder GetRelationalDatabaseSnapshotResult
getRelationalDatabaseSnapshotResultDecoder =
    JD.succeed GetRelationalDatabaseSnapshotResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relationalDatabaseSnapshot", "RelationalDatabaseSnapshot"]
            relationalDatabaseSnapshotDecoder
        )
        




getRelationalDatabaseSnapshotResultToString : GetRelationalDatabaseSnapshotResult -> String -- List (String, String)
getRelationalDatabaseSnapshotResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "relationalDatabaseSnapshot" "" -- val.relationalDatabaseSnapshot
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRelationalDatabaseSnapsho
-}
type alias GetRelationalDatabaseSnapshotsResult =
    { relationalDatabaseSnapshots : Maybe (List RelationalDatabaseSnapshot)
    , nextPageToken : Maybe String
    }



getRelationalDatabaseSnapshotsResultDecoder : JD.Decoder GetRelationalDatabaseSnapshotsResult
getRelationalDatabaseSnapshotsResultDecoder =
    JD.succeed GetRelationalDatabaseSnapshotsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relationalDatabaseSnapshots", "RelationalDatabaseSnapshots"]
            (JD.list relationalDatabaseSnapshotDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getRelationalDatabaseSnapshotsResultToString : GetRelationalDatabaseSnapshotsResult -> String -- List (String, String)
getRelationalDatabaseSnapshotsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "relationalDatabaseSnapshots" "" -- val.relationalDatabaseSnapshots
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRelationalDatabas
-}
type alias GetRelationalDatabasesResult =
    { relationalDatabases : Maybe (List RelationalDatabase)
    , nextPageToken : Maybe String
    }



getRelationalDatabasesResultDecoder : JD.Decoder GetRelationalDatabasesResult
getRelationalDatabasesResultDecoder =
    JD.succeed GetRelationalDatabasesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relationalDatabases", "RelationalDatabases"]
            (JD.list relationalDatabaseDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getRelationalDatabasesResultToString : GetRelationalDatabasesResult -> String -- List (String, String)
getRelationalDatabasesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "relationalDatabases" "" -- val.relationalDatabases
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getStatic
-}
type alias GetStaticIpResult =
    { staticIp : Maybe StaticIp
    }



getStaticIpResultDecoder : JD.Decoder GetStaticIpResult
getStaticIpResultDecoder =
    JD.succeed GetStaticIpResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["staticIp", "StaticIp"]
            staticIpDecoder
        )
        




getStaticIpResultToString : GetStaticIpResult -> String -- List (String, String)
getStaticIpResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "staticIp" "" -- val.staticIp
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getStaticI
-}
type alias GetStaticIpsResult =
    { staticIps : Maybe (List StaticIp)
    , nextPageToken : Maybe String
    }



getStaticIpsResultDecoder : JD.Decoder GetStaticIpsResult
getStaticIpsResultDecoder =
    JD.succeed GetStaticIpsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["staticIps", "StaticIps"]
            (JD.list staticIpDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextPageToken", "NextPageToken"]
            JD.string
        )
        




getStaticIpsResultToString : GetStaticIpsResult -> String -- List (String, String)
getStaticIpsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "staticIps" "" -- val.staticIps
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| <p>Describes the public SSH host keys or the RDP certificate.</p>
-}
type alias HostKeyAttributes =
    { algorithm : Maybe String
    , publicKey : Maybe String
    , witnessedAt : Maybe Posix
    , fingerprintSHA1 : Maybe String
    , fingerprintSHA256 : Maybe String
    , notValidBefore : Maybe Posix
    , notValidAfter : Maybe Posix
    }



hostKeyAttributesDecoder : JD.Decoder HostKeyAttributes
hostKeyAttributesDecoder =
    JD.succeed HostKeyAttributes
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["algorithm", "Algorithm"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["publicKey", "PublicKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["witnessedAt", "WitnessedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fingerprintSHA1", "FingerprintSHA1"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fingerprintSHA256", "FingerprintSHA256"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["notValidBefore", "NotValidBefore"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["notValidAfter", "NotValidAfter"]
            JDX.datetime
        )
        




hostKeyAttributesToString : HostKeyAttributes -> String -- List (String, String)
hostKeyAttributesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "algorithm" "" -- val.algorithm
        
    --     |> Dict.insert
    --         "publicKey" "" -- val.publicKey
        
    --     |> Dict.insert
    --         "witnessedAt" "" -- val.witnessedAt
        
    --     |> Dict.insert
    --         "fingerprintSHA1" "" -- val.fingerprintSHA1
        
    --     |> Dict.insert
    --         "fingerprintSHA256" "" -- val.fingerprintSHA256
        
    --     |> Dict.insert
    --         "notValidBefore" "" -- val.notValidBefore
        
    --     |> Dict.insert
    --         "notValidAfter" "" -- val.notValidAfter
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from importKeyPa
-}
type alias ImportKeyPairResult =
    { operation : Maybe Operation
    }



importKeyPairResultDecoder : JD.Decoder ImportKeyPairResult
importKeyPairResultDecoder =
    JD.succeed ImportKeyPairResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




importKeyPairResultToString : ImportKeyPairResult -> String -- List (String, String)
importKeyPairResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| <p>Describes an instance (a virtual private server).</p>
-}
type alias Instance =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , tags : Maybe (List Tag)
    , blueprintId : Maybe String
    , blueprintName : Maybe String
    , bundleId : Maybe String
    , isStaticIp : Maybe Bool
    , privateIpAddress : Maybe String
    , publicIpAddress : Maybe String
    , ipv6Address : Maybe String
    , hardware : Maybe InstanceHardware
    , networking : Maybe InstanceNetworking
    , state : Maybe InstanceState
    , username : Maybe String
    , sshKeyName : Maybe String
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JD.succeed Instance
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["supportCode", "SupportCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["blueprintId", "BlueprintId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["blueprintName", "BlueprintName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bundleId", "BundleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isStaticIp", "IsStaticIp"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["privateIpAddress", "PrivateIpAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["publicIpAddress", "PublicIpAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ipv6Address", "Ipv6Address"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hardware", "Hardware"]
            instanceHardwareDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["networking", "Networking"]
            instanceNetworkingDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            instanceStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["username", "Username"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sshKeyName", "SshKeyName"]
            JD.string
        )
        




instanceToString : Instance -> String -- List (String, String)
instanceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "supportCode" "" -- val.supportCode
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "blueprintId" "" -- val.blueprintId
        
    --     |> Dict.insert
    --         "blueprintName" "" -- val.blueprintName
        
    --     |> Dict.insert
    --         "bundleId" "" -- val.bundleId
        
    --     |> Dict.insert
    --         "isStaticIp" "" -- val.isStaticIp
        
    --     |> Dict.insert
    --         "privateIpAddress" "" -- val.privateIpAddress
        
    --     |> Dict.insert
    --         "publicIpAddress" "" -- val.publicIpAddress
        
    --     |> Dict.insert
    --         "ipv6Address" "" -- val.ipv6Address
        
    --     |> Dict.insert
    --         "hardware" "" -- val.hardware
        
    --     |> Dict.insert
    --         "networking" "" -- val.networking
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "username" "" -- val.username
        
    --     |> Dict.insert
    --         "sshKeyName" "" -- val.sshKeyName
        
    --     |> Dict.toList
    ""



{-| <p>The parameters for gaining temporary access to one of your Amazon Lightsail instances.</p>
-}
type alias InstanceAccessDetails =
    { certKey : Maybe String
    , expiresAt : Maybe Posix
    , ipAddress : Maybe String
    , password : Maybe String
    , passwordData : Maybe PasswordData
    , privateKey : Maybe String
    , protocol : Maybe InstanceAccessProtocol
    , instanceName : Maybe String
    , username : Maybe String
    , hostKeys : Maybe (List HostKeyAttributes)
    }



instanceAccessDetailsDecoder : JD.Decoder InstanceAccessDetails
instanceAccessDetailsDecoder =
    JD.succeed InstanceAccessDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["certKey", "CertKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["expiresAt", "ExpiresAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ipAddress", "IpAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["password", "Password"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["passwordData", "PasswordData"]
            passwordDataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["privateKey", "PrivateKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["protocol", "Protocol"]
            instanceAccessProtocolDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceName", "InstanceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["username", "Username"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hostKeys", "HostKeys"]
            (JD.list hostKeyAttributesDecoder)
        )
        




instanceAccessDetailsToString : InstanceAccessDetails -> String -- List (String, String)
instanceAccessDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certKey" "" -- val.certKey
        
    --     |> Dict.insert
    --         "expiresAt" "" -- val.expiresAt
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "password" "" -- val.password
        
    --     |> Dict.insert
    --         "passwordData" "" -- val.passwordData
        
    --     |> Dict.insert
    --         "privateKey" "" -- val.privateKey
        
    --     |> Dict.insert
    --         "protocol" "" -- val.protocol
        
    --     |> Dict.insert
    --         "instanceName" "" -- val.instanceName
        
    --     |> Dict.insert
    --         "username" "" -- val.username
        
    --     |> Dict.insert
    --         "hostKeys" "" -- val.hostKeys
        
    --     |> Dict.toList
    ""



{-| One of

* `InstanceAccessProtocol_ssh`
* `InstanceAccessProtocol_rdp`

-}
type InstanceAccessProtocol
    = InstanceAccessProtocol_ssh
    | InstanceAccessProtocol_rdp



instanceAccessProtocolDecoder : JD.Decoder InstanceAccessProtocol
instanceAccessProtocolDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ssh" ->
                        JD.succeed InstanceAccessProtocol_ssh

                    "rdp" ->
                        JD.succeed InstanceAccessProtocol_rdp


                    _ ->
                        JD.fail "bad thing"
            )




instanceAccessProtocolToString : InstanceAccessProtocol -> String
instanceAccessProtocolToString val =
    case val of
        InstanceAccessProtocol_ssh ->
            "ssh"

        InstanceAccessProtocol_rdp ->
            "rdp"




{-| <p>Describes the Amazon Elastic Compute Cloud instance and related resources to be created using the <code>create cloud formation stack</code> operation.</p>
-}
type alias InstanceEntry =
    { sourceName : String
    , instanceType : String
    , portInfoSource : PortInfoSourceType
    , userData : Maybe String
    , availabilityZone : String
    }



instanceEntryDecoder : JD.Decoder InstanceEntry
instanceEntryDecoder =
    JD.succeed InstanceEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["sourceName", "SourceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["instanceType", "InstanceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["portInfoSource", "PortInfoSource"]
            portInfoSourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["userData", "UserData"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["availabilityZone", "AvailabilityZone"]
            JD.string
        )
        




instanceEntryToString : InstanceEntry -> String -- List (String, String)
instanceEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceName" "" -- val.sourceName
        
    --     |> Dict.insert
    --         "instanceType" "" -- val.instanceType
        
    --     |> Dict.insert
    --         "portInfoSource" "" -- val.portInfoSource
        
    --     |> Dict.insert
    --         "userData" "" -- val.userData
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.toList
    ""



{-| <p>Describes the hardware for the instance.</p>
-}
type alias InstanceHardware =
    { cpuCount : Maybe Int
    , disks : Maybe (List Disk)
    , ramSizeInGb : Maybe Float
    }



instanceHardwareDecoder : JD.Decoder InstanceHardware
instanceHardwareDecoder =
    JD.succeed InstanceHardware
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cpuCount", "CpuCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["disks", "Disks"]
            (JD.list diskDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ramSizeInGb", "RamSizeInGb"]
            JD.float
        )
        




instanceHardwareToString : InstanceHardware -> String -- List (String, String)
instanceHardwareToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cpuCount" "" -- val.cpuCount
        
    --     |> Dict.insert
    --         "disks" "" -- val.disks
        
    --     |> Dict.insert
    --         "ramSizeInGb" "" -- val.ramSizeInGb
        
    --     |> Dict.toList
    ""



{-| One of

* `InstanceHealthReason_Lb.RegistrationInProgress`
* `InstanceHealthReason_Lb.InitialHealthChecking`
* `InstanceHealthReason_Lb.InternalError`
* `InstanceHealthReason_Instance.ResponseCodeMismatch`
* `InstanceHealthReason_Instance.Timeout`
* `InstanceHealthReason_Instance.FailedHealthChecks`
* `InstanceHealthReason_Instance.NotRegistered`
* `InstanceHealthReason_Instance.NotInUse`
* `InstanceHealthReason_Instance.DeregistrationInProgress`
* `InstanceHealthReason_Instance.InvalidState`
* `InstanceHealthReason_Instance.IpUnusable`

-}
type InstanceHealthReason
    = InstanceHealthReason_Lb_RegistrationInProgress
    | InstanceHealthReason_Lb_InitialHealthChecking
    | InstanceHealthReason_Lb_InternalError
    | InstanceHealthReason_Instance_ResponseCodeMismatch
    | InstanceHealthReason_Instance_Timeout
    | InstanceHealthReason_Instance_FailedHealthChecks
    | InstanceHealthReason_Instance_NotRegistered
    | InstanceHealthReason_Instance_NotInUse
    | InstanceHealthReason_Instance_DeregistrationInProgress
    | InstanceHealthReason_Instance_InvalidState
    | InstanceHealthReason_Instance_IpUnusable



instanceHealthReasonDecoder : JD.Decoder InstanceHealthReason
instanceHealthReasonDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Lb_RegistrationInProgress" ->
                        JD.succeed InstanceHealthReason_Lb_RegistrationInProgress

                    "Lb_InitialHealthChecking" ->
                        JD.succeed InstanceHealthReason_Lb_InitialHealthChecking

                    "Lb_InternalError" ->
                        JD.succeed InstanceHealthReason_Lb_InternalError

                    "Instance_ResponseCodeMismatch" ->
                        JD.succeed InstanceHealthReason_Instance_ResponseCodeMismatch

                    "Instance_Timeout" ->
                        JD.succeed InstanceHealthReason_Instance_Timeout

                    "Instance_FailedHealthChecks" ->
                        JD.succeed InstanceHealthReason_Instance_FailedHealthChecks

                    "Instance_NotRegistered" ->
                        JD.succeed InstanceHealthReason_Instance_NotRegistered

                    "Instance_NotInUse" ->
                        JD.succeed InstanceHealthReason_Instance_NotInUse

                    "Instance_DeregistrationInProgress" ->
                        JD.succeed InstanceHealthReason_Instance_DeregistrationInProgress

                    "Instance_InvalidState" ->
                        JD.succeed InstanceHealthReason_Instance_InvalidState

                    "Instance_IpUnusable" ->
                        JD.succeed InstanceHealthReason_Instance_IpUnusable


                    _ ->
                        JD.fail "bad thing"
            )




instanceHealthReasonToString : InstanceHealthReason -> String
instanceHealthReasonToString val =
    case val of
        InstanceHealthReason_Lb_RegistrationInProgress ->
            "Lb_RegistrationInProgress"

        InstanceHealthReason_Lb_InitialHealthChecking ->
            "Lb_InitialHealthChecking"

        InstanceHealthReason_Lb_InternalError ->
            "Lb_InternalError"

        InstanceHealthReason_Instance_ResponseCodeMismatch ->
            "Instance_ResponseCodeMismatch"

        InstanceHealthReason_Instance_Timeout ->
            "Instance_Timeout"

        InstanceHealthReason_Instance_FailedHealthChecks ->
            "Instance_FailedHealthChecks"

        InstanceHealthReason_Instance_NotRegistered ->
            "Instance_NotRegistered"

        InstanceHealthReason_Instance_NotInUse ->
            "Instance_NotInUse"

        InstanceHealthReason_Instance_DeregistrationInProgress ->
            "Instance_DeregistrationInProgress"

        InstanceHealthReason_Instance_InvalidState ->
            "Instance_InvalidState"

        InstanceHealthReason_Instance_IpUnusable ->
            "Instance_IpUnusable"




{-| One of

* `InstanceHealthState_initial`
* `InstanceHealthState_healthy`
* `InstanceHealthState_unhealthy`
* `InstanceHealthState_unused`
* `InstanceHealthState_draining`
* `InstanceHealthState_unavailable`

-}
type InstanceHealthState
    = InstanceHealthState_initial
    | InstanceHealthState_healthy
    | InstanceHealthState_unhealthy
    | InstanceHealthState_unused
    | InstanceHealthState_draining
    | InstanceHealthState_unavailable



instanceHealthStateDecoder : JD.Decoder InstanceHealthState
instanceHealthStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "initial" ->
                        JD.succeed InstanceHealthState_initial

                    "healthy" ->
                        JD.succeed InstanceHealthState_healthy

                    "unhealthy" ->
                        JD.succeed InstanceHealthState_unhealthy

                    "unused" ->
                        JD.succeed InstanceHealthState_unused

                    "draining" ->
                        JD.succeed InstanceHealthState_draining

                    "unavailable" ->
                        JD.succeed InstanceHealthState_unavailable


                    _ ->
                        JD.fail "bad thing"
            )




instanceHealthStateToString : InstanceHealthState -> String
instanceHealthStateToString val =
    case val of
        InstanceHealthState_initial ->
            "initial"

        InstanceHealthState_healthy ->
            "healthy"

        InstanceHealthState_unhealthy ->
            "unhealthy"

        InstanceHealthState_unused ->
            "unused"

        InstanceHealthState_draining ->
            "draining"

        InstanceHealthState_unavailable ->
            "unavailable"




{-| <p>Describes information about the health of the instance.</p>
-}
type alias InstanceHealthSummary =
    { instanceName : Maybe String
    , instanceHealth : Maybe InstanceHealthState
    , instanceHealthReason : Maybe InstanceHealthReason
    }



instanceHealthSummaryDecoder : JD.Decoder InstanceHealthSummary
instanceHealthSummaryDecoder =
    JD.succeed InstanceHealthSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceName", "InstanceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceHealth", "InstanceHealth"]
            instanceHealthStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceHealthReason", "InstanceHealthReason"]
            instanceHealthReasonDecoder
        )
        




instanceHealthSummaryToString : InstanceHealthSummary -> String -- List (String, String)
instanceHealthSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceName" "" -- val.instanceName
        
    --     |> Dict.insert
    --         "instanceHealth" "" -- val.instanceHealth
        
    --     |> Dict.insert
    --         "instanceHealthReason" "" -- val.instanceHealthReason
        
    --     |> Dict.toList
    ""



{-| One of

* `InstanceMetricName_CPUUtilization`
* `InstanceMetricName_NetworkIn`
* `InstanceMetricName_NetworkOut`
* `InstanceMetricName_StatusCheckFailed`
* `InstanceMetricName_StatusCheckFailed_Instance`
* `InstanceMetricName_StatusCheckFailed_System`

-}
type InstanceMetricName
    = InstanceMetricName_CPUUtilization
    | InstanceMetricName_NetworkIn
    | InstanceMetricName_NetworkOut
    | InstanceMetricName_StatusCheckFailed
    | InstanceMetricName_StatusCheckFailed_Instance
    | InstanceMetricName_StatusCheckFailed_System



instanceMetricNameDecoder : JD.Decoder InstanceMetricName
instanceMetricNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CPUUtilization" ->
                        JD.succeed InstanceMetricName_CPUUtilization

                    "NetworkIn" ->
                        JD.succeed InstanceMetricName_NetworkIn

                    "NetworkOut" ->
                        JD.succeed InstanceMetricName_NetworkOut

                    "StatusCheckFailed" ->
                        JD.succeed InstanceMetricName_StatusCheckFailed

                    "StatusCheckFailed_Instance" ->
                        JD.succeed InstanceMetricName_StatusCheckFailed_Instance

                    "StatusCheckFailed_System" ->
                        JD.succeed InstanceMetricName_StatusCheckFailed_System


                    _ ->
                        JD.fail "bad thing"
            )




instanceMetricNameToString : InstanceMetricName -> String
instanceMetricNameToString val =
    case val of
        InstanceMetricName_CPUUtilization ->
            "CPUUtilization"

        InstanceMetricName_NetworkIn ->
            "NetworkIn"

        InstanceMetricName_NetworkOut ->
            "NetworkOut"

        InstanceMetricName_StatusCheckFailed ->
            "StatusCheckFailed"

        InstanceMetricName_StatusCheckFailed_Instance ->
            "StatusCheckFailed_Instance"

        InstanceMetricName_StatusCheckFailed_System ->
            "StatusCheckFailed_System"




{-| <p>Describes monthly data transfer rates and port information for an instance.</p>
-}
type alias InstanceNetworking =
    { monthlyTransfer : Maybe MonthlyTransfer
    , ports : Maybe (List InstancePortInfo)
    }



instanceNetworkingDecoder : JD.Decoder InstanceNetworking
instanceNetworkingDecoder =
    JD.succeed InstanceNetworking
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["monthlyTransfer", "MonthlyTransfer"]
            monthlyTransferDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ports", "Ports"]
            (JD.list instancePortInfoDecoder)
        )
        




instanceNetworkingToString : InstanceNetworking -> String -- List (String, String)
instanceNetworkingToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "monthlyTransfer" "" -- val.monthlyTransfer
        
    --     |> Dict.insert
    --         "ports" "" -- val.ports
        
    --     |> Dict.toList
    ""



{-| One of

* `InstancePlatform_LINUX_UNIX`
* `InstancePlatform_WINDOWS`

-}
type InstancePlatform
    = InstancePlatform_LINUX_UNIX
    | InstancePlatform_WINDOWS



instancePlatformDecoder : JD.Decoder InstancePlatform
instancePlatformDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "LINUX_UNIX" ->
                        JD.succeed InstancePlatform_LINUX_UNIX

                    "WINDOWS" ->
                        JD.succeed InstancePlatform_WINDOWS


                    _ ->
                        JD.fail "bad thing"
            )




instancePlatformToString : InstancePlatform -> String
instancePlatformToString val =
    case val of
        InstancePlatform_LINUX_UNIX ->
            "LINUX_UNIX"

        InstancePlatform_WINDOWS ->
            "WINDOWS"




{-| <p>Describes information about the instance ports.</p>
-}
type alias InstancePortInfo =
    { fromPort : Maybe Int
    , toPort : Maybe Int
    , protocol : Maybe NetworkProtocol
    , accessFrom : Maybe String
    , accessType : Maybe PortAccessType
    , commonName : Maybe String
    , accessDirection : Maybe AccessDirection
    }



instancePortInfoDecoder : JD.Decoder InstancePortInfo
instancePortInfoDecoder =
    JD.succeed InstancePortInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromPort", "FromPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["toPort", "ToPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["protocol", "Protocol"]
            networkProtocolDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["accessFrom", "AccessFrom"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["accessType", "AccessType"]
            portAccessTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["commonName", "CommonName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["accessDirection", "AccessDirection"]
            accessDirectionDecoder
        )
        




instancePortInfoToString : InstancePortInfo -> String -- List (String, String)
instancePortInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fromPort" "" -- val.fromPort
        
    --     |> Dict.insert
    --         "toPort" "" -- val.toPort
        
    --     |> Dict.insert
    --         "protocol" "" -- val.protocol
        
    --     |> Dict.insert
    --         "accessFrom" "" -- val.accessFrom
        
    --     |> Dict.insert
    --         "accessType" "" -- val.accessType
        
    --     |> Dict.insert
    --         "commonName" "" -- val.commonName
        
    --     |> Dict.insert
    --         "accessDirection" "" -- val.accessDirection
        
    --     |> Dict.toList
    ""



{-| <p>Describes the port state.</p>
-}
type alias InstancePortState =
    { fromPort : Maybe Int
    , toPort : Maybe Int
    , protocol : Maybe NetworkProtocol
    , state : Maybe PortState
    }



instancePortStateDecoder : JD.Decoder InstancePortState
instancePortStateDecoder =
    JD.succeed InstancePortState
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromPort", "FromPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["toPort", "ToPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["protocol", "Protocol"]
            networkProtocolDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            portStateDecoder
        )
        




instancePortStateToString : InstancePortState -> String -- List (String, String)
instancePortStateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fromPort" "" -- val.fromPort
        
    --     |> Dict.insert
    --         "toPort" "" -- val.toPort
        
    --     |> Dict.insert
    --         "protocol" "" -- val.protocol
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.toList
    ""



{-| <p>Describes the snapshot of the virtual private server, or <i>instance</i>.</p>
-}
type alias InstanceSnapshot =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , tags : Maybe (List Tag)
    , state : Maybe InstanceSnapshotState
    , progress : Maybe String
    , fromAttachedDisks : Maybe (List Disk)
    , fromInstanceName : Maybe String
    , fromInstanceArn : Maybe String
    , fromBlueprintId : Maybe String
    , fromBundleId : Maybe String
    , sizeInGb : Maybe Int
    }



instanceSnapshotDecoder : JD.Decoder InstanceSnapshot
instanceSnapshotDecoder =
    JD.succeed InstanceSnapshot
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["supportCode", "SupportCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            instanceSnapshotStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["progress", "Progress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromAttachedDisks", "FromAttachedDisks"]
            (JD.list diskDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromInstanceName", "FromInstanceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromInstanceArn", "FromInstanceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromBlueprintId", "FromBlueprintId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromBundleId", "FromBundleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sizeInGb", "SizeInGb"]
            JD.int
        )
        




instanceSnapshotToString : InstanceSnapshot -> String -- List (String, String)
instanceSnapshotToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "supportCode" "" -- val.supportCode
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "progress" "" -- val.progress
        
    --     |> Dict.insert
    --         "fromAttachedDisks" "" -- val.fromAttachedDisks
        
    --     |> Dict.insert
    --         "fromInstanceName" "" -- val.fromInstanceName
        
    --     |> Dict.insert
    --         "fromInstanceArn" "" -- val.fromInstanceArn
        
    --     |> Dict.insert
    --         "fromBlueprintId" "" -- val.fromBlueprintId
        
    --     |> Dict.insert
    --         "fromBundleId" "" -- val.fromBundleId
        
    --     |> Dict.insert
    --         "sizeInGb" "" -- val.sizeInGb
        
    --     |> Dict.toList
    ""



{-| <p>Describes an instance snapshot.</p>
-}
type alias InstanceSnapshotInfo =
    { fromBundleId : Maybe String
    , fromBlueprintId : Maybe String
    , fromDiskInfo : Maybe (List DiskInfo)
    }



instanceSnapshotInfoDecoder : JD.Decoder InstanceSnapshotInfo
instanceSnapshotInfoDecoder =
    JD.succeed InstanceSnapshotInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromBundleId", "FromBundleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromBlueprintId", "FromBlueprintId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromDiskInfo", "FromDiskInfo"]
            (JD.list diskInfoDecoder)
        )
        




instanceSnapshotInfoToString : InstanceSnapshotInfo -> String -- List (String, String)
instanceSnapshotInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fromBundleId" "" -- val.fromBundleId
        
    --     |> Dict.insert
    --         "fromBlueprintId" "" -- val.fromBlueprintId
        
    --     |> Dict.insert
    --         "fromDiskInfo" "" -- val.fromDiskInfo
        
    --     |> Dict.toList
    ""



{-| One of

* `InstanceSnapshotState_pending`
* `InstanceSnapshotState_error`
* `InstanceSnapshotState_available`

-}
type InstanceSnapshotState
    = InstanceSnapshotState_pending
    | InstanceSnapshotState_error
    | InstanceSnapshotState_available



instanceSnapshotStateDecoder : JD.Decoder InstanceSnapshotState
instanceSnapshotStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed InstanceSnapshotState_pending

                    "error" ->
                        JD.succeed InstanceSnapshotState_error

                    "available" ->
                        JD.succeed InstanceSnapshotState_available


                    _ ->
                        JD.fail "bad thing"
            )




instanceSnapshotStateToString : InstanceSnapshotState -> String
instanceSnapshotStateToString val =
    case val of
        InstanceSnapshotState_pending ->
            "pending"

        InstanceSnapshotState_error ->
            "error"

        InstanceSnapshotState_available ->
            "available"




{-| <p>Describes the virtual private server (or <i>instance</i>) status.</p>
-}
type alias InstanceState =
    { code : Maybe Int
    , name : Maybe String
    }



instanceStateDecoder : JD.Decoder InstanceState
instanceStateDecoder =
    JD.succeed InstanceState
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["code", "Code"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        




instanceStateToString : InstanceState -> String -- List (String, String)
instanceStateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from isVpcPeer
-}
type alias IsVpcPeeredResult =
    { isPeered : Maybe Bool
    }



isVpcPeeredResultDecoder : JD.Decoder IsVpcPeeredResult
isVpcPeeredResultDecoder =
    JD.succeed IsVpcPeeredResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isPeered", "IsPeered"]
            JD.bool
        )
        




isVpcPeeredResultToString : IsVpcPeeredResult -> String -- List (String, String)
isVpcPeeredResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "isPeered" "" -- val.isPeered
        
    --     |> Dict.toList
    ""



{-| <p>Describes the SSH key pair.</p>
-}
type alias KeyPair =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , tags : Maybe (List Tag)
    , fingerprint : Maybe String
    }



keyPairDecoder : JD.Decoder KeyPair
keyPairDecoder =
    JD.succeed KeyPair
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["supportCode", "SupportCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fingerprint", "Fingerprint"]
            JD.string
        )
        




keyPairToString : KeyPair -> String -- List (String, String)
keyPairToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "supportCode" "" -- val.supportCode
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "fingerprint" "" -- val.fingerprint
        
    --     |> Dict.toList
    ""



{-| <p>Describes the Lightsail load balancer.</p>
-}
type alias LoadBalancer =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , tags : Maybe (List Tag)
    , dnsName : Maybe String
    , state : Maybe LoadBalancerState
    , protocol : Maybe LoadBalancerProtocol
    , publicPorts : Maybe (List Int)
    , healthCheckPath : Maybe String
    , instancePort : Maybe Int
    , instanceHealthSummary : Maybe (List InstanceHealthSummary)
    , tlsCertificateSummaries : Maybe (List LoadBalancerTlsCertificateSummary)
    , configurationOptions : Maybe (Dict String String)
    }



loadBalancerDecoder : JD.Decoder LoadBalancer
loadBalancerDecoder =
    JD.succeed LoadBalancer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["supportCode", "SupportCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["dnsName", "DnsName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            loadBalancerStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["protocol", "Protocol"]
            loadBalancerProtocolDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["publicPorts", "PublicPorts"]
            (JD.list JD.int)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["healthCheckPath", "HealthCheckPath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instancePort", "InstancePort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["instanceHealthSummary", "InstanceHealthSummary"]
            (JD.list instanceHealthSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tlsCertificateSummaries", "TlsCertificateSummaries"]
            (JD.list loadBalancerTlsCertificateSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["configurationOptions", "ConfigurationOptions"]
            (AWS.Core.Decode.dict JD.string)
        )
        




loadBalancerToString : LoadBalancer -> String -- List (String, String)
loadBalancerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "supportCode" "" -- val.supportCode
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "dnsName" "" -- val.dnsName
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "protocol" "" -- val.protocol
        
    --     |> Dict.insert
    --         "publicPorts" "" -- val.publicPorts
        
    --     |> Dict.insert
    --         "healthCheckPath" "" -- val.healthCheckPath
        
    --     |> Dict.insert
    --         "instancePort" "" -- val.instancePort
        
    --     |> Dict.insert
    --         "instanceHealthSummary" "" -- val.instanceHealthSummary
        
    --     |> Dict.insert
    --         "tlsCertificateSummaries" "" -- val.tlsCertificateSummaries
        
    --     |> Dict.insert
    --         "configurationOptions" "" -- val.configurationOptions
        
    --     |> Dict.toList
    ""



{-| One of

* `LoadBalancerAttributeName_HealthCheckPath`
* `LoadBalancerAttributeName_SessionStickinessEnabled`
* `LoadBalancerAttributeName_SessionStickiness_LB_CookieDurationSeconds`

-}
type LoadBalancerAttributeName
    = LoadBalancerAttributeName_HealthCheckPath
    | LoadBalancerAttributeName_SessionStickinessEnabled
    | LoadBalancerAttributeName_SessionStickiness_LB_CookieDurationSeconds



loadBalancerAttributeNameDecoder : JD.Decoder LoadBalancerAttributeName
loadBalancerAttributeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HealthCheckPath" ->
                        JD.succeed LoadBalancerAttributeName_HealthCheckPath

                    "SessionStickinessEnabled" ->
                        JD.succeed LoadBalancerAttributeName_SessionStickinessEnabled

                    "SessionStickiness_LB_CookieDurationSeconds" ->
                        JD.succeed LoadBalancerAttributeName_SessionStickiness_LB_CookieDurationSeconds


                    _ ->
                        JD.fail "bad thing"
            )




loadBalancerAttributeNameToString : LoadBalancerAttributeName -> String
loadBalancerAttributeNameToString val =
    case val of
        LoadBalancerAttributeName_HealthCheckPath ->
            "HealthCheckPath"

        LoadBalancerAttributeName_SessionStickinessEnabled ->
            "SessionStickinessEnabled"

        LoadBalancerAttributeName_SessionStickiness_LB_CookieDurationSeconds ->
            "SessionStickiness_LB_CookieDurationSeconds"




{-| One of

* `LoadBalancerMetricName_ClientTLSNegotiationErrorCount`
* `LoadBalancerMetricName_HealthyHostCount`
* `LoadBalancerMetricName_UnhealthyHostCount`
* `LoadBalancerMetricName_HTTPCode_LB_4XX_Count`
* `LoadBalancerMetricName_HTTPCode_LB_5XX_Count`
* `LoadBalancerMetricName_HTTPCode_Instance_2XX_Count`
* `LoadBalancerMetricName_HTTPCode_Instance_3XX_Count`
* `LoadBalancerMetricName_HTTPCode_Instance_4XX_Count`
* `LoadBalancerMetricName_HTTPCode_Instance_5XX_Count`
* `LoadBalancerMetricName_InstanceResponseTime`
* `LoadBalancerMetricName_RejectedConnectionCount`
* `LoadBalancerMetricName_RequestCount`

-}
type LoadBalancerMetricName
    = LoadBalancerMetricName_ClientTLSNegotiationErrorCount
    | LoadBalancerMetricName_HealthyHostCount
    | LoadBalancerMetricName_UnhealthyHostCount
    | LoadBalancerMetricName_HTTPCode_LB_4XX_Count
    | LoadBalancerMetricName_HTTPCode_LB_5XX_Count
    | LoadBalancerMetricName_HTTPCode_Instance_2XX_Count
    | LoadBalancerMetricName_HTTPCode_Instance_3XX_Count
    | LoadBalancerMetricName_HTTPCode_Instance_4XX_Count
    | LoadBalancerMetricName_HTTPCode_Instance_5XX_Count
    | LoadBalancerMetricName_InstanceResponseTime
    | LoadBalancerMetricName_RejectedConnectionCount
    | LoadBalancerMetricName_RequestCount



loadBalancerMetricNameDecoder : JD.Decoder LoadBalancerMetricName
loadBalancerMetricNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ClientTLSNegotiationErrorCount" ->
                        JD.succeed LoadBalancerMetricName_ClientTLSNegotiationErrorCount

                    "HealthyHostCount" ->
                        JD.succeed LoadBalancerMetricName_HealthyHostCount

                    "UnhealthyHostCount" ->
                        JD.succeed LoadBalancerMetricName_UnhealthyHostCount

                    "HTTPCode_LB_4XX_Count" ->
                        JD.succeed LoadBalancerMetricName_HTTPCode_LB_4XX_Count

                    "HTTPCode_LB_5XX_Count" ->
                        JD.succeed LoadBalancerMetricName_HTTPCode_LB_5XX_Count

                    "HTTPCode_Instance_2XX_Count" ->
                        JD.succeed LoadBalancerMetricName_HTTPCode_Instance_2XX_Count

                    "HTTPCode_Instance_3XX_Count" ->
                        JD.succeed LoadBalancerMetricName_HTTPCode_Instance_3XX_Count

                    "HTTPCode_Instance_4XX_Count" ->
                        JD.succeed LoadBalancerMetricName_HTTPCode_Instance_4XX_Count

                    "HTTPCode_Instance_5XX_Count" ->
                        JD.succeed LoadBalancerMetricName_HTTPCode_Instance_5XX_Count

                    "InstanceResponseTime" ->
                        JD.succeed LoadBalancerMetricName_InstanceResponseTime

                    "RejectedConnectionCount" ->
                        JD.succeed LoadBalancerMetricName_RejectedConnectionCount

                    "RequestCount" ->
                        JD.succeed LoadBalancerMetricName_RequestCount


                    _ ->
                        JD.fail "bad thing"
            )




loadBalancerMetricNameToString : LoadBalancerMetricName -> String
loadBalancerMetricNameToString val =
    case val of
        LoadBalancerMetricName_ClientTLSNegotiationErrorCount ->
            "ClientTLSNegotiationErrorCount"

        LoadBalancerMetricName_HealthyHostCount ->
            "HealthyHostCount"

        LoadBalancerMetricName_UnhealthyHostCount ->
            "UnhealthyHostCount"

        LoadBalancerMetricName_HTTPCode_LB_4XX_Count ->
            "HTTPCode_LB_4XX_Count"

        LoadBalancerMetricName_HTTPCode_LB_5XX_Count ->
            "HTTPCode_LB_5XX_Count"

        LoadBalancerMetricName_HTTPCode_Instance_2XX_Count ->
            "HTTPCode_Instance_2XX_Count"

        LoadBalancerMetricName_HTTPCode_Instance_3XX_Count ->
            "HTTPCode_Instance_3XX_Count"

        LoadBalancerMetricName_HTTPCode_Instance_4XX_Count ->
            "HTTPCode_Instance_4XX_Count"

        LoadBalancerMetricName_HTTPCode_Instance_5XX_Count ->
            "HTTPCode_Instance_5XX_Count"

        LoadBalancerMetricName_InstanceResponseTime ->
            "InstanceResponseTime"

        LoadBalancerMetricName_RejectedConnectionCount ->
            "RejectedConnectionCount"

        LoadBalancerMetricName_RequestCount ->
            "RequestCount"




{-| One of

* `LoadBalancerProtocol_HTTP_HTTPS`
* `LoadBalancerProtocol_HTTP`

-}
type LoadBalancerProtocol
    = LoadBalancerProtocol_HTTP_HTTPS
    | LoadBalancerProtocol_HTTP



loadBalancerProtocolDecoder : JD.Decoder LoadBalancerProtocol
loadBalancerProtocolDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HTTP_HTTPS" ->
                        JD.succeed LoadBalancerProtocol_HTTP_HTTPS

                    "HTTP" ->
                        JD.succeed LoadBalancerProtocol_HTTP


                    _ ->
                        JD.fail "bad thing"
            )




loadBalancerProtocolToString : LoadBalancerProtocol -> String
loadBalancerProtocolToString val =
    case val of
        LoadBalancerProtocol_HTTP_HTTPS ->
            "HTTP_HTTPS"

        LoadBalancerProtocol_HTTP ->
            "HTTP"




{-| One of

* `LoadBalancerState_active`
* `LoadBalancerState_provisioning`
* `LoadBalancerState_active_impaired`
* `LoadBalancerState_failed`
* `LoadBalancerState_unknown`

-}
type LoadBalancerState
    = LoadBalancerState_active
    | LoadBalancerState_provisioning
    | LoadBalancerState_active_impaired
    | LoadBalancerState_failed
    | LoadBalancerState_unknown



loadBalancerStateDecoder : JD.Decoder LoadBalancerState
loadBalancerStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "active" ->
                        JD.succeed LoadBalancerState_active

                    "provisioning" ->
                        JD.succeed LoadBalancerState_provisioning

                    "active_impaired" ->
                        JD.succeed LoadBalancerState_active_impaired

                    "failed" ->
                        JD.succeed LoadBalancerState_failed

                    "unknown" ->
                        JD.succeed LoadBalancerState_unknown


                    _ ->
                        JD.fail "bad thing"
            )




loadBalancerStateToString : LoadBalancerState -> String
loadBalancerStateToString val =
    case val of
        LoadBalancerState_active ->
            "active"

        LoadBalancerState_provisioning ->
            "provisioning"

        LoadBalancerState_active_impaired ->
            "active_impaired"

        LoadBalancerState_failed ->
            "failed"

        LoadBalancerState_unknown ->
            "unknown"




{-| <p>Describes a load balancer SSL/TLS certificate.</p> <p>TLS is just an updated, more secure version of Secure Socket Layer (SSL).</p>
-}
type alias LoadBalancerTlsCertificate =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , tags : Maybe (List Tag)
    , loadBalancerName : Maybe String
    , isAttached : Maybe Bool
    , status : Maybe LoadBalancerTlsCertificateStatus
    , domainName : Maybe String
    , domainValidationRecords : Maybe (List LoadBalancerTlsCertificateDomainValidationRecord)
    , failureReason : Maybe LoadBalancerTlsCertificateFailureReason
    , issuedAt : Maybe Posix
    , issuer : Maybe String
    , keyAlgorithm : Maybe String
    , notAfter : Maybe Posix
    , notBefore : Maybe Posix
    , renewalSummary : Maybe LoadBalancerTlsCertificateRenewalSummary
    , revocationReason : Maybe LoadBalancerTlsCertificateRevocationReason
    , revokedAt : Maybe Posix
    , serial : Maybe String
    , signatureAlgorithm : Maybe String
    , subject : Maybe String
    , subjectAlternativeNames : Maybe (List String)
    }



loadBalancerTlsCertificateDecoder : JD.Decoder LoadBalancerTlsCertificate
loadBalancerTlsCertificateDecoder =
    JD.succeed LoadBalancerTlsCertificate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["supportCode", "SupportCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["loadBalancerName", "LoadBalancerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isAttached", "IsAttached"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            loadBalancerTlsCertificateStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["domainName", "DomainName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["domainValidationRecords", "DomainValidationRecords"]
            (JD.list loadBalancerTlsCertificateDomainValidationRecordDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["failureReason", "FailureReason"]
            loadBalancerTlsCertificateFailureReasonDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["issuedAt", "IssuedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["issuer", "Issuer"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["keyAlgorithm", "KeyAlgorithm"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["notAfter", "NotAfter"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["notBefore", "NotBefore"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["renewalSummary", "RenewalSummary"]
            loadBalancerTlsCertificateRenewalSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revocationReason", "RevocationReason"]
            loadBalancerTlsCertificateRevocationReasonDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["revokedAt", "RevokedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["serial", "Serial"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["signatureAlgorithm", "SignatureAlgorithm"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["subject", "Subject"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["subjectAlternativeNames", "SubjectAlternativeNames"]
            (JD.list JD.string)
        )
        




loadBalancerTlsCertificateToString : LoadBalancerTlsCertificate -> String -- List (String, String)
loadBalancerTlsCertificateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "supportCode" "" -- val.supportCode
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "loadBalancerName" "" -- val.loadBalancerName
        
    --     |> Dict.insert
    --         "isAttached" "" -- val.isAttached
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "domainName" "" -- val.domainName
        
    --     |> Dict.insert
    --         "domainValidationRecords" "" -- val.domainValidationRecords
        
    --     |> Dict.insert
    --         "failureReason" "" -- val.failureReason
        
    --     |> Dict.insert
    --         "issuedAt" "" -- val.issuedAt
        
    --     |> Dict.insert
    --         "issuer" "" -- val.issuer
        
    --     |> Dict.insert
    --         "keyAlgorithm" "" -- val.keyAlgorithm
        
    --     |> Dict.insert
    --         "notAfter" "" -- val.notAfter
        
    --     |> Dict.insert
    --         "notBefore" "" -- val.notBefore
        
    --     |> Dict.insert
    --         "renewalSummary" "" -- val.renewalSummary
        
    --     |> Dict.insert
    --         "revocationReason" "" -- val.revocationReason
        
    --     |> Dict.insert
    --         "revokedAt" "" -- val.revokedAt
        
    --     |> Dict.insert
    --         "serial" "" -- val.serial
        
    --     |> Dict.insert
    --         "signatureAlgorithm" "" -- val.signatureAlgorithm
        
    --     |> Dict.insert
    --         "subject" "" -- val.subject
        
    --     |> Dict.insert
    --         "subjectAlternativeNames" "" -- val.subjectAlternativeNames
        
    --     |> Dict.toList
    ""



{-| One of

* `LoadBalancerTlsCertificateDomainStatus_PENDING_VALIDATION`
* `LoadBalancerTlsCertificateDomainStatus_FAILED`
* `LoadBalancerTlsCertificateDomainStatus_SUCCESS`

-}
type LoadBalancerTlsCertificateDomainStatus
    = LoadBalancerTlsCertificateDomainStatus_PENDING_VALIDATION
    | LoadBalancerTlsCertificateDomainStatus_FAILED
    | LoadBalancerTlsCertificateDomainStatus_SUCCESS



loadBalancerTlsCertificateDomainStatusDecoder : JD.Decoder LoadBalancerTlsCertificateDomainStatus
loadBalancerTlsCertificateDomainStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING_VALIDATION" ->
                        JD.succeed LoadBalancerTlsCertificateDomainStatus_PENDING_VALIDATION

                    "FAILED" ->
                        JD.succeed LoadBalancerTlsCertificateDomainStatus_FAILED

                    "SUCCESS" ->
                        JD.succeed LoadBalancerTlsCertificateDomainStatus_SUCCESS


                    _ ->
                        JD.fail "bad thing"
            )




loadBalancerTlsCertificateDomainStatusToString : LoadBalancerTlsCertificateDomainStatus -> String
loadBalancerTlsCertificateDomainStatusToString val =
    case val of
        LoadBalancerTlsCertificateDomainStatus_PENDING_VALIDATION ->
            "PENDING_VALIDATION"

        LoadBalancerTlsCertificateDomainStatus_FAILED ->
            "FAILED"

        LoadBalancerTlsCertificateDomainStatus_SUCCESS ->
            "SUCCESS"




{-| <p>Contains information about the domain names on an SSL/TLS certificate that you will use to validate domain ownership.</p>
-}
type alias LoadBalancerTlsCertificateDomainValidationOption =
    { domainName : Maybe String
    , validationStatus : Maybe LoadBalancerTlsCertificateDomainStatus
    }



loadBalancerTlsCertificateDomainValidationOptionDecoder : JD.Decoder LoadBalancerTlsCertificateDomainValidationOption
loadBalancerTlsCertificateDomainValidationOptionDecoder =
    JD.succeed LoadBalancerTlsCertificateDomainValidationOption
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["domainName", "DomainName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["validationStatus", "ValidationStatus"]
            loadBalancerTlsCertificateDomainStatusDecoder
        )
        




loadBalancerTlsCertificateDomainValidationOptionToString : LoadBalancerTlsCertificateDomainValidationOption -> String -- List (String, String)
loadBalancerTlsCertificateDomainValidationOptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "domainName" "" -- val.domainName
        
    --     |> Dict.insert
    --         "validationStatus" "" -- val.validationStatus
        
    --     |> Dict.toList
    ""



{-| <p>Describes the validation record of each domain name in the SSL/TLS certificate.</p>
-}
type alias LoadBalancerTlsCertificateDomainValidationRecord =
    { name : Maybe String
    , type_ : Maybe String
    , value : Maybe String
    , validationStatus : Maybe LoadBalancerTlsCertificateDomainStatus
    , domainName : Maybe String
    }



loadBalancerTlsCertificateDomainValidationRecordDecoder : JD.Decoder LoadBalancerTlsCertificateDomainValidationRecord
loadBalancerTlsCertificateDomainValidationRecordDecoder =
    JD.succeed LoadBalancerTlsCertificateDomainValidationRecord
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["type", "Type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["value", "Value"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["validationStatus", "ValidationStatus"]
            loadBalancerTlsCertificateDomainStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["domainName", "DomainName"]
            JD.string
        )
        




loadBalancerTlsCertificateDomainValidationRecordToString : LoadBalancerTlsCertificateDomainValidationRecord -> String -- List (String, String)
loadBalancerTlsCertificateDomainValidationRecordToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "validationStatus" "" -- val.validationStatus
        
    --     |> Dict.insert
    --         "domainName" "" -- val.domainName
        
    --     |> Dict.toList
    ""



{-| One of

* `LoadBalancerTlsCertificateFailureReason_NO_AVAILABLE_CONTACTS`
* `LoadBalancerTlsCertificateFailureReason_ADDITIONAL_VERIFICATION_REQUIRED`
* `LoadBalancerTlsCertificateFailureReason_DOMAIN_NOT_ALLOWED`
* `LoadBalancerTlsCertificateFailureReason_INVALID_PUBLIC_DOMAIN`
* `LoadBalancerTlsCertificateFailureReason_OTHER`

-}
type LoadBalancerTlsCertificateFailureReason
    = LoadBalancerTlsCertificateFailureReason_NO_AVAILABLE_CONTACTS
    | LoadBalancerTlsCertificateFailureReason_ADDITIONAL_VERIFICATION_REQUIRED
    | LoadBalancerTlsCertificateFailureReason_DOMAIN_NOT_ALLOWED
    | LoadBalancerTlsCertificateFailureReason_INVALID_PUBLIC_DOMAIN
    | LoadBalancerTlsCertificateFailureReason_OTHER



loadBalancerTlsCertificateFailureReasonDecoder : JD.Decoder LoadBalancerTlsCertificateFailureReason
loadBalancerTlsCertificateFailureReasonDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NO_AVAILABLE_CONTACTS" ->
                        JD.succeed LoadBalancerTlsCertificateFailureReason_NO_AVAILABLE_CONTACTS

                    "ADDITIONAL_VERIFICATION_REQUIRED" ->
                        JD.succeed LoadBalancerTlsCertificateFailureReason_ADDITIONAL_VERIFICATION_REQUIRED

                    "DOMAIN_NOT_ALLOWED" ->
                        JD.succeed LoadBalancerTlsCertificateFailureReason_DOMAIN_NOT_ALLOWED

                    "INVALID_PUBLIC_DOMAIN" ->
                        JD.succeed LoadBalancerTlsCertificateFailureReason_INVALID_PUBLIC_DOMAIN

                    "OTHER" ->
                        JD.succeed LoadBalancerTlsCertificateFailureReason_OTHER


                    _ ->
                        JD.fail "bad thing"
            )




loadBalancerTlsCertificateFailureReasonToString : LoadBalancerTlsCertificateFailureReason -> String
loadBalancerTlsCertificateFailureReasonToString val =
    case val of
        LoadBalancerTlsCertificateFailureReason_NO_AVAILABLE_CONTACTS ->
            "NO_AVAILABLE_CONTACTS"

        LoadBalancerTlsCertificateFailureReason_ADDITIONAL_VERIFICATION_REQUIRED ->
            "ADDITIONAL_VERIFICATION_REQUIRED"

        LoadBalancerTlsCertificateFailureReason_DOMAIN_NOT_ALLOWED ->
            "DOMAIN_NOT_ALLOWED"

        LoadBalancerTlsCertificateFailureReason_INVALID_PUBLIC_DOMAIN ->
            "INVALID_PUBLIC_DOMAIN"

        LoadBalancerTlsCertificateFailureReason_OTHER ->
            "OTHER"




{-| One of

* `LoadBalancerTlsCertificateRenewalStatus_PENDING_AUTO_RENEWAL`
* `LoadBalancerTlsCertificateRenewalStatus_PENDING_VALIDATION`
* `LoadBalancerTlsCertificateRenewalStatus_SUCCESS`
* `LoadBalancerTlsCertificateRenewalStatus_FAILED`

-}
type LoadBalancerTlsCertificateRenewalStatus
    = LoadBalancerTlsCertificateRenewalStatus_PENDING_AUTO_RENEWAL
    | LoadBalancerTlsCertificateRenewalStatus_PENDING_VALIDATION
    | LoadBalancerTlsCertificateRenewalStatus_SUCCESS
    | LoadBalancerTlsCertificateRenewalStatus_FAILED



loadBalancerTlsCertificateRenewalStatusDecoder : JD.Decoder LoadBalancerTlsCertificateRenewalStatus
loadBalancerTlsCertificateRenewalStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING_AUTO_RENEWAL" ->
                        JD.succeed LoadBalancerTlsCertificateRenewalStatus_PENDING_AUTO_RENEWAL

                    "PENDING_VALIDATION" ->
                        JD.succeed LoadBalancerTlsCertificateRenewalStatus_PENDING_VALIDATION

                    "SUCCESS" ->
                        JD.succeed LoadBalancerTlsCertificateRenewalStatus_SUCCESS

                    "FAILED" ->
                        JD.succeed LoadBalancerTlsCertificateRenewalStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




loadBalancerTlsCertificateRenewalStatusToString : LoadBalancerTlsCertificateRenewalStatus -> String
loadBalancerTlsCertificateRenewalStatusToString val =
    case val of
        LoadBalancerTlsCertificateRenewalStatus_PENDING_AUTO_RENEWAL ->
            "PENDING_AUTO_RENEWAL"

        LoadBalancerTlsCertificateRenewalStatus_PENDING_VALIDATION ->
            "PENDING_VALIDATION"

        LoadBalancerTlsCertificateRenewalStatus_SUCCESS ->
            "SUCCESS"

        LoadBalancerTlsCertificateRenewalStatus_FAILED ->
            "FAILED"




{-| <p>Contains information about the status of Lightsail's managed renewal for the certificate.</p>
-}
type alias LoadBalancerTlsCertificateRenewalSummary =
    { renewalStatus : Maybe LoadBalancerTlsCertificateRenewalStatus
    , domainValidationOptions : Maybe (List LoadBalancerTlsCertificateDomainValidationOption)
    }



loadBalancerTlsCertificateRenewalSummaryDecoder : JD.Decoder LoadBalancerTlsCertificateRenewalSummary
loadBalancerTlsCertificateRenewalSummaryDecoder =
    JD.succeed LoadBalancerTlsCertificateRenewalSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["renewalStatus", "RenewalStatus"]
            loadBalancerTlsCertificateRenewalStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["domainValidationOptions", "DomainValidationOptions"]
            (JD.list loadBalancerTlsCertificateDomainValidationOptionDecoder)
        )
        




loadBalancerTlsCertificateRenewalSummaryToString : LoadBalancerTlsCertificateRenewalSummary -> String -- List (String, String)
loadBalancerTlsCertificateRenewalSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "renewalStatus" "" -- val.renewalStatus
        
    --     |> Dict.insert
    --         "domainValidationOptions" "" -- val.domainValidationOptions
        
    --     |> Dict.toList
    ""



{-| One of

* `LoadBalancerTlsCertificateRevocationReason_UNSPECIFIED`
* `LoadBalancerTlsCertificateRevocationReason_KEY_COMPROMISE`
* `LoadBalancerTlsCertificateRevocationReason_CA_COMPROMISE`
* `LoadBalancerTlsCertificateRevocationReason_AFFILIATION_CHANGED`
* `LoadBalancerTlsCertificateRevocationReason_SUPERCEDED`
* `LoadBalancerTlsCertificateRevocationReason_CESSATION_OF_OPERATION`
* `LoadBalancerTlsCertificateRevocationReason_CERTIFICATE_HOLD`
* `LoadBalancerTlsCertificateRevocationReason_REMOVE_FROM_CRL`
* `LoadBalancerTlsCertificateRevocationReason_PRIVILEGE_WITHDRAWN`
* `LoadBalancerTlsCertificateRevocationReason_A_A_COMPROMISE`

-}
type LoadBalancerTlsCertificateRevocationReason
    = LoadBalancerTlsCertificateRevocationReason_UNSPECIFIED
    | LoadBalancerTlsCertificateRevocationReason_KEY_COMPROMISE
    | LoadBalancerTlsCertificateRevocationReason_CA_COMPROMISE
    | LoadBalancerTlsCertificateRevocationReason_AFFILIATION_CHANGED
    | LoadBalancerTlsCertificateRevocationReason_SUPERCEDED
    | LoadBalancerTlsCertificateRevocationReason_CESSATION_OF_OPERATION
    | LoadBalancerTlsCertificateRevocationReason_CERTIFICATE_HOLD
    | LoadBalancerTlsCertificateRevocationReason_REMOVE_FROM_CRL
    | LoadBalancerTlsCertificateRevocationReason_PRIVILEGE_WITHDRAWN
    | LoadBalancerTlsCertificateRevocationReason_A_A_COMPROMISE



loadBalancerTlsCertificateRevocationReasonDecoder : JD.Decoder LoadBalancerTlsCertificateRevocationReason
loadBalancerTlsCertificateRevocationReasonDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNSPECIFIED" ->
                        JD.succeed LoadBalancerTlsCertificateRevocationReason_UNSPECIFIED

                    "KEY_COMPROMISE" ->
                        JD.succeed LoadBalancerTlsCertificateRevocationReason_KEY_COMPROMISE

                    "CA_COMPROMISE" ->
                        JD.succeed LoadBalancerTlsCertificateRevocationReason_CA_COMPROMISE

                    "AFFILIATION_CHANGED" ->
                        JD.succeed LoadBalancerTlsCertificateRevocationReason_AFFILIATION_CHANGED

                    "SUPERCEDED" ->
                        JD.succeed LoadBalancerTlsCertificateRevocationReason_SUPERCEDED

                    "CESSATION_OF_OPERATION" ->
                        JD.succeed LoadBalancerTlsCertificateRevocationReason_CESSATION_OF_OPERATION

                    "CERTIFICATE_HOLD" ->
                        JD.succeed LoadBalancerTlsCertificateRevocationReason_CERTIFICATE_HOLD

                    "REMOVE_FROM_CRL" ->
                        JD.succeed LoadBalancerTlsCertificateRevocationReason_REMOVE_FROM_CRL

                    "PRIVILEGE_WITHDRAWN" ->
                        JD.succeed LoadBalancerTlsCertificateRevocationReason_PRIVILEGE_WITHDRAWN

                    "A_A_COMPROMISE" ->
                        JD.succeed LoadBalancerTlsCertificateRevocationReason_A_A_COMPROMISE


                    _ ->
                        JD.fail "bad thing"
            )




loadBalancerTlsCertificateRevocationReasonToString : LoadBalancerTlsCertificateRevocationReason -> String
loadBalancerTlsCertificateRevocationReasonToString val =
    case val of
        LoadBalancerTlsCertificateRevocationReason_UNSPECIFIED ->
            "UNSPECIFIED"

        LoadBalancerTlsCertificateRevocationReason_KEY_COMPROMISE ->
            "KEY_COMPROMISE"

        LoadBalancerTlsCertificateRevocationReason_CA_COMPROMISE ->
            "CA_COMPROMISE"

        LoadBalancerTlsCertificateRevocationReason_AFFILIATION_CHANGED ->
            "AFFILIATION_CHANGED"

        LoadBalancerTlsCertificateRevocationReason_SUPERCEDED ->
            "SUPERCEDED"

        LoadBalancerTlsCertificateRevocationReason_CESSATION_OF_OPERATION ->
            "CESSATION_OF_OPERATION"

        LoadBalancerTlsCertificateRevocationReason_CERTIFICATE_HOLD ->
            "CERTIFICATE_HOLD"

        LoadBalancerTlsCertificateRevocationReason_REMOVE_FROM_CRL ->
            "REMOVE_FROM_CRL"

        LoadBalancerTlsCertificateRevocationReason_PRIVILEGE_WITHDRAWN ->
            "PRIVILEGE_WITHDRAWN"

        LoadBalancerTlsCertificateRevocationReason_A_A_COMPROMISE ->
            "A_A_COMPROMISE"




{-| One of

* `LoadBalancerTlsCertificateStatus_PENDING_VALIDATION`
* `LoadBalancerTlsCertificateStatus_ISSUED`
* `LoadBalancerTlsCertificateStatus_INACTIVE`
* `LoadBalancerTlsCertificateStatus_EXPIRED`
* `LoadBalancerTlsCertificateStatus_VALIDATION_TIMED_OUT`
* `LoadBalancerTlsCertificateStatus_REVOKED`
* `LoadBalancerTlsCertificateStatus_FAILED`
* `LoadBalancerTlsCertificateStatus_UNKNOWN`

-}
type LoadBalancerTlsCertificateStatus
    = LoadBalancerTlsCertificateStatus_PENDING_VALIDATION
    | LoadBalancerTlsCertificateStatus_ISSUED
    | LoadBalancerTlsCertificateStatus_INACTIVE
    | LoadBalancerTlsCertificateStatus_EXPIRED
    | LoadBalancerTlsCertificateStatus_VALIDATION_TIMED_OUT
    | LoadBalancerTlsCertificateStatus_REVOKED
    | LoadBalancerTlsCertificateStatus_FAILED
    | LoadBalancerTlsCertificateStatus_UNKNOWN



loadBalancerTlsCertificateStatusDecoder : JD.Decoder LoadBalancerTlsCertificateStatus
loadBalancerTlsCertificateStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING_VALIDATION" ->
                        JD.succeed LoadBalancerTlsCertificateStatus_PENDING_VALIDATION

                    "ISSUED" ->
                        JD.succeed LoadBalancerTlsCertificateStatus_ISSUED

                    "INACTIVE" ->
                        JD.succeed LoadBalancerTlsCertificateStatus_INACTIVE

                    "EXPIRED" ->
                        JD.succeed LoadBalancerTlsCertificateStatus_EXPIRED

                    "VALIDATION_TIMED_OUT" ->
                        JD.succeed LoadBalancerTlsCertificateStatus_VALIDATION_TIMED_OUT

                    "REVOKED" ->
                        JD.succeed LoadBalancerTlsCertificateStatus_REVOKED

                    "FAILED" ->
                        JD.succeed LoadBalancerTlsCertificateStatus_FAILED

                    "UNKNOWN" ->
                        JD.succeed LoadBalancerTlsCertificateStatus_UNKNOWN


                    _ ->
                        JD.fail "bad thing"
            )




loadBalancerTlsCertificateStatusToString : LoadBalancerTlsCertificateStatus -> String
loadBalancerTlsCertificateStatusToString val =
    case val of
        LoadBalancerTlsCertificateStatus_PENDING_VALIDATION ->
            "PENDING_VALIDATION"

        LoadBalancerTlsCertificateStatus_ISSUED ->
            "ISSUED"

        LoadBalancerTlsCertificateStatus_INACTIVE ->
            "INACTIVE"

        LoadBalancerTlsCertificateStatus_EXPIRED ->
            "EXPIRED"

        LoadBalancerTlsCertificateStatus_VALIDATION_TIMED_OUT ->
            "VALIDATION_TIMED_OUT"

        LoadBalancerTlsCertificateStatus_REVOKED ->
            "REVOKED"

        LoadBalancerTlsCertificateStatus_FAILED ->
            "FAILED"

        LoadBalancerTlsCertificateStatus_UNKNOWN ->
            "UNKNOWN"




{-| <p>Provides a summary of SSL/TLS certificate metadata.</p>
-}
type alias LoadBalancerTlsCertificateSummary =
    { name : Maybe String
    , isAttached : Maybe Bool
    }



loadBalancerTlsCertificateSummaryDecoder : JD.Decoder LoadBalancerTlsCertificateSummary
loadBalancerTlsCertificateSummaryDecoder =
    JD.succeed LoadBalancerTlsCertificateSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isAttached", "IsAttached"]
            JD.bool
        )
        




loadBalancerTlsCertificateSummaryToString : LoadBalancerTlsCertificateSummary -> String -- List (String, String)
loadBalancerTlsCertificateSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "isAttached" "" -- val.isAttached
        
    --     |> Dict.toList
    ""



{-| <p>Describes a database log event.</p>
-}
type alias LogEvent =
    { createdAt : Maybe Posix
    , message : Maybe String
    }



logEventDecoder : JD.Decoder LogEvent
logEventDecoder =
    JD.succeed LogEvent
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




logEventToString : LogEvent -> String -- List (String, String)
logEventToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>Describes the metric data point.</p>
-}
type alias MetricDatapoint =
    { average : Maybe Float
    , maximum : Maybe Float
    , minimum : Maybe Float
    , sampleCount : Maybe Float
    , sum : Maybe Float
    , timestamp : Maybe Posix
    , unit : Maybe MetricUnit
    }



metricDatapointDecoder : JD.Decoder MetricDatapoint
metricDatapointDecoder =
    JD.succeed MetricDatapoint
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["average", "Average"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["maximum", "Maximum"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["minimum", "Minimum"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sampleCount", "SampleCount"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sum", "Sum"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["timestamp", "Timestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["unit", "Unit"]
            metricUnitDecoder
        )
        




metricDatapointToString : MetricDatapoint -> String -- List (String, String)
metricDatapointToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "average" "" -- val.average
        
    --     |> Dict.insert
    --         "maximum" "" -- val.maximum
        
    --     |> Dict.insert
    --         "minimum" "" -- val.minimum
        
    --     |> Dict.insert
    --         "sampleCount" "" -- val.sampleCount
        
    --     |> Dict.insert
    --         "sum" "" -- val.sum
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "unit" "" -- val.unit
        
    --     |> Dict.toList
    ""



{-| One of

* `MetricStatistic_Minimum`
* `MetricStatistic_Maximum`
* `MetricStatistic_Sum`
* `MetricStatistic_Average`
* `MetricStatistic_SampleCount`

-}
type MetricStatistic
    = MetricStatistic_Minimum
    | MetricStatistic_Maximum
    | MetricStatistic_Sum
    | MetricStatistic_Average
    | MetricStatistic_SampleCount



metricStatisticDecoder : JD.Decoder MetricStatistic
metricStatisticDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Minimum" ->
                        JD.succeed MetricStatistic_Minimum

                    "Maximum" ->
                        JD.succeed MetricStatistic_Maximum

                    "Sum" ->
                        JD.succeed MetricStatistic_Sum

                    "Average" ->
                        JD.succeed MetricStatistic_Average

                    "SampleCount" ->
                        JD.succeed MetricStatistic_SampleCount


                    _ ->
                        JD.fail "bad thing"
            )




metricStatisticToString : MetricStatistic -> String
metricStatisticToString val =
    case val of
        MetricStatistic_Minimum ->
            "Minimum"

        MetricStatistic_Maximum ->
            "Maximum"

        MetricStatistic_Sum ->
            "Sum"

        MetricStatistic_Average ->
            "Average"

        MetricStatistic_SampleCount ->
            "SampleCount"




{-| One of

* `MetricUnit_Seconds`
* `MetricUnit_Microseconds`
* `MetricUnit_Milliseconds`
* `MetricUnit_Bytes`
* `MetricUnit_Kilobytes`
* `MetricUnit_Megabytes`
* `MetricUnit_Gigabytes`
* `MetricUnit_Terabytes`
* `MetricUnit_Bits`
* `MetricUnit_Kilobits`
* `MetricUnit_Megabits`
* `MetricUnit_Gigabits`
* `MetricUnit_Terabits`
* `MetricUnit_Percent`
* `MetricUnit_Count`
* `MetricUnit_Bytes/Second`
* `MetricUnit_Kilobytes/Second`
* `MetricUnit_Megabytes/Second`
* `MetricUnit_Gigabytes/Second`
* `MetricUnit_Terabytes/Second`
* `MetricUnit_Bits/Second`
* `MetricUnit_Kilobits/Second`
* `MetricUnit_Megabits/Second`
* `MetricUnit_Gigabits/Second`
* `MetricUnit_Terabits/Second`
* `MetricUnit_Count/Second`
* `MetricUnit_None`

-}
type MetricUnit
    = MetricUnit_Seconds
    | MetricUnit_Microseconds
    | MetricUnit_Milliseconds
    | MetricUnit_Bytes
    | MetricUnit_Kilobytes
    | MetricUnit_Megabytes
    | MetricUnit_Gigabytes
    | MetricUnit_Terabytes
    | MetricUnit_Bits
    | MetricUnit_Kilobits
    | MetricUnit_Megabits
    | MetricUnit_Gigabits
    | MetricUnit_Terabits
    | MetricUnit_Percent
    | MetricUnit_Count
    | MetricUnit_Bytes_Second
    | MetricUnit_Kilobytes_Second
    | MetricUnit_Megabytes_Second
    | MetricUnit_Gigabytes_Second
    | MetricUnit_Terabytes_Second
    | MetricUnit_Bits_Second
    | MetricUnit_Kilobits_Second
    | MetricUnit_Megabits_Second
    | MetricUnit_Gigabits_Second
    | MetricUnit_Terabits_Second
    | MetricUnit_Count_Second
    | MetricUnit_None



metricUnitDecoder : JD.Decoder MetricUnit
metricUnitDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Seconds" ->
                        JD.succeed MetricUnit_Seconds

                    "Microseconds" ->
                        JD.succeed MetricUnit_Microseconds

                    "Milliseconds" ->
                        JD.succeed MetricUnit_Milliseconds

                    "Bytes" ->
                        JD.succeed MetricUnit_Bytes

                    "Kilobytes" ->
                        JD.succeed MetricUnit_Kilobytes

                    "Megabytes" ->
                        JD.succeed MetricUnit_Megabytes

                    "Gigabytes" ->
                        JD.succeed MetricUnit_Gigabytes

                    "Terabytes" ->
                        JD.succeed MetricUnit_Terabytes

                    "Bits" ->
                        JD.succeed MetricUnit_Bits

                    "Kilobits" ->
                        JD.succeed MetricUnit_Kilobits

                    "Megabits" ->
                        JD.succeed MetricUnit_Megabits

                    "Gigabits" ->
                        JD.succeed MetricUnit_Gigabits

                    "Terabits" ->
                        JD.succeed MetricUnit_Terabits

                    "Percent" ->
                        JD.succeed MetricUnit_Percent

                    "Count" ->
                        JD.succeed MetricUnit_Count

                    "Bytes_Second" ->
                        JD.succeed MetricUnit_Bytes_Second

                    "Kilobytes_Second" ->
                        JD.succeed MetricUnit_Kilobytes_Second

                    "Megabytes_Second" ->
                        JD.succeed MetricUnit_Megabytes_Second

                    "Gigabytes_Second" ->
                        JD.succeed MetricUnit_Gigabytes_Second

                    "Terabytes_Second" ->
                        JD.succeed MetricUnit_Terabytes_Second

                    "Bits_Second" ->
                        JD.succeed MetricUnit_Bits_Second

                    "Kilobits_Second" ->
                        JD.succeed MetricUnit_Kilobits_Second

                    "Megabits_Second" ->
                        JD.succeed MetricUnit_Megabits_Second

                    "Gigabits_Second" ->
                        JD.succeed MetricUnit_Gigabits_Second

                    "Terabits_Second" ->
                        JD.succeed MetricUnit_Terabits_Second

                    "Count_Second" ->
                        JD.succeed MetricUnit_Count_Second

                    "None" ->
                        JD.succeed MetricUnit_None


                    _ ->
                        JD.fail "bad thing"
            )




metricUnitToString : MetricUnit -> String
metricUnitToString val =
    case val of
        MetricUnit_Seconds ->
            "Seconds"

        MetricUnit_Microseconds ->
            "Microseconds"

        MetricUnit_Milliseconds ->
            "Milliseconds"

        MetricUnit_Bytes ->
            "Bytes"

        MetricUnit_Kilobytes ->
            "Kilobytes"

        MetricUnit_Megabytes ->
            "Megabytes"

        MetricUnit_Gigabytes ->
            "Gigabytes"

        MetricUnit_Terabytes ->
            "Terabytes"

        MetricUnit_Bits ->
            "Bits"

        MetricUnit_Kilobits ->
            "Kilobits"

        MetricUnit_Megabits ->
            "Megabits"

        MetricUnit_Gigabits ->
            "Gigabits"

        MetricUnit_Terabits ->
            "Terabits"

        MetricUnit_Percent ->
            "Percent"

        MetricUnit_Count ->
            "Count"

        MetricUnit_Bytes_Second ->
            "Bytes_Second"

        MetricUnit_Kilobytes_Second ->
            "Kilobytes_Second"

        MetricUnit_Megabytes_Second ->
            "Megabytes_Second"

        MetricUnit_Gigabytes_Second ->
            "Gigabytes_Second"

        MetricUnit_Terabytes_Second ->
            "Terabytes_Second"

        MetricUnit_Bits_Second ->
            "Bits_Second"

        MetricUnit_Kilobits_Second ->
            "Kilobits_Second"

        MetricUnit_Megabits_Second ->
            "Megabits_Second"

        MetricUnit_Gigabits_Second ->
            "Gigabits_Second"

        MetricUnit_Terabits_Second ->
            "Terabits_Second"

        MetricUnit_Count_Second ->
            "Count_Second"

        MetricUnit_None ->
            "None"




{-| <p>Describes the monthly data transfer in and out of your virtual private server (or <i>instance</i>).</p>
-}
type alias MonthlyTransfer =
    { gbPerMonthAllocated : Maybe Int
    }



monthlyTransferDecoder : JD.Decoder MonthlyTransfer
monthlyTransferDecoder =
    JD.succeed MonthlyTransfer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["gbPerMonthAllocated", "GbPerMonthAllocated"]
            JD.int
        )
        




monthlyTransferToString : MonthlyTransfer -> String -- List (String, String)
monthlyTransferToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gbPerMonthAllocated" "" -- val.gbPerMonthAllocated
        
    --     |> Dict.toList
    ""



{-| One of

* `NetworkProtocol_tcp`
* `NetworkProtocol_all`
* `NetworkProtocol_udp`

-}
type NetworkProtocol
    = NetworkProtocol_tcp
    | NetworkProtocol_all
    | NetworkProtocol_udp



networkProtocolDecoder : JD.Decoder NetworkProtocol
networkProtocolDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "tcp" ->
                        JD.succeed NetworkProtocol_tcp

                    "all" ->
                        JD.succeed NetworkProtocol_all

                    "udp" ->
                        JD.succeed NetworkProtocol_udp


                    _ ->
                        JD.fail "bad thing"
            )




networkProtocolToString : NetworkProtocol -> String
networkProtocolToString val =
    case val of
        NetworkProtocol_tcp ->
            "tcp"

        NetworkProtocol_all ->
            "all"

        NetworkProtocol_udp ->
            "udp"




{-| Type of HTTP response from openInstancePublicPor
-}
type alias OpenInstancePublicPortsResult =
    { operation : Maybe Operation
    }



openInstancePublicPortsResultDecoder : JD.Decoder OpenInstancePublicPortsResult
openInstancePublicPortsResultDecoder =
    JD.succeed OpenInstancePublicPortsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




openInstancePublicPortsResultToString : OpenInstancePublicPortsResult -> String -- List (String, String)
openInstancePublicPortsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| <p>Describes the API operation.</p>
-}
type alias Operation =
    { id : Maybe String
    , resourceName : Maybe String
    , resourceType : Maybe ResourceType
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , isTerminal : Maybe Bool
    , operationDetails : Maybe String
    , operationType : Maybe OperationType
    , status : Maybe OperationStatus
    , statusChangedAt : Maybe Posix
    , errorCode : Maybe String
    , errorDetails : Maybe String
    }



operationDecoder : JD.Decoder Operation
operationDecoder =
    JD.succeed Operation
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["id", "Id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceName", "ResourceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isTerminal", "IsTerminal"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operationDetails", "OperationDetails"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operationType", "OperationType"]
            operationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["status", "Status"]
            operationStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["statusChangedAt", "StatusChangedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errorCode", "ErrorCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errorDetails", "ErrorDetails"]
            JD.string
        )
        




operationToString : Operation -> String -- List (String, String)
operationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "resourceName" "" -- val.resourceName
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "isTerminal" "" -- val.isTerminal
        
    --     |> Dict.insert
    --         "operationDetails" "" -- val.operationDetails
        
    --     |> Dict.insert
    --         "operationType" "" -- val.operationType
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusChangedAt" "" -- val.statusChangedAt
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorDetails" "" -- val.errorDetails
        
    --     |> Dict.toList
    ""



{-| One of

* `OperationStatus_NotStarted`
* `OperationStatus_Started`
* `OperationStatus_Failed`
* `OperationStatus_Completed`
* `OperationStatus_Succeeded`

-}
type OperationStatus
    = OperationStatus_NotStarted
    | OperationStatus_Started
    | OperationStatus_Failed
    | OperationStatus_Completed
    | OperationStatus_Succeeded



operationStatusDecoder : JD.Decoder OperationStatus
operationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NotStarted" ->
                        JD.succeed OperationStatus_NotStarted

                    "Started" ->
                        JD.succeed OperationStatus_Started

                    "Failed" ->
                        JD.succeed OperationStatus_Failed

                    "Completed" ->
                        JD.succeed OperationStatus_Completed

                    "Succeeded" ->
                        JD.succeed OperationStatus_Succeeded


                    _ ->
                        JD.fail "bad thing"
            )




operationStatusToString : OperationStatus -> String
operationStatusToString val =
    case val of
        OperationStatus_NotStarted ->
            "NotStarted"

        OperationStatus_Started ->
            "Started"

        OperationStatus_Failed ->
            "Failed"

        OperationStatus_Completed ->
            "Completed"

        OperationStatus_Succeeded ->
            "Succeeded"




{-| One of

* `OperationType_DeleteKnownHostKeys`
* `OperationType_DeleteInstance`
* `OperationType_CreateInstance`
* `OperationType_StopInstance`
* `OperationType_StartInstance`
* `OperationType_RebootInstance`
* `OperationType_OpenInstancePublicPorts`
* `OperationType_PutInstancePublicPorts`
* `OperationType_CloseInstancePublicPorts`
* `OperationType_AllocateStaticIp`
* `OperationType_ReleaseStaticIp`
* `OperationType_AttachStaticIp`
* `OperationType_DetachStaticIp`
* `OperationType_UpdateDomainEntry`
* `OperationType_DeleteDomainEntry`
* `OperationType_CreateDomain`
* `OperationType_DeleteDomain`
* `OperationType_CreateInstanceSnapshot`
* `OperationType_DeleteInstanceSnapshot`
* `OperationType_CreateInstancesFromSnapshot`
* `OperationType_CreateLoadBalancer`
* `OperationType_DeleteLoadBalancer`
* `OperationType_AttachInstancesToLoadBalancer`
* `OperationType_DetachInstancesFromLoadBalancer`
* `OperationType_UpdateLoadBalancerAttribute`
* `OperationType_CreateLoadBalancerTlsCertificate`
* `OperationType_DeleteLoadBalancerTlsCertificate`
* `OperationType_AttachLoadBalancerTlsCertificate`
* `OperationType_CreateDisk`
* `OperationType_DeleteDisk`
* `OperationType_AttachDisk`
* `OperationType_DetachDisk`
* `OperationType_CreateDiskSnapshot`
* `OperationType_DeleteDiskSnapshot`
* `OperationType_CreateDiskFromSnapshot`
* `OperationType_CreateRelationalDatabase`
* `OperationType_UpdateRelationalDatabase`
* `OperationType_DeleteRelationalDatabase`
* `OperationType_CreateRelationalDatabaseFromSnapshot`
* `OperationType_CreateRelationalDatabaseSnapshot`
* `OperationType_DeleteRelationalDatabaseSnapshot`
* `OperationType_UpdateRelationalDatabaseParameters`
* `OperationType_StartRelationalDatabase`
* `OperationType_RebootRelationalDatabase`
* `OperationType_StopRelationalDatabase`

-}
type OperationType
    = OperationType_DeleteKnownHostKeys
    | OperationType_DeleteInstance
    | OperationType_CreateInstance
    | OperationType_StopInstance
    | OperationType_StartInstance
    | OperationType_RebootInstance
    | OperationType_OpenInstancePublicPorts
    | OperationType_PutInstancePublicPorts
    | OperationType_CloseInstancePublicPorts
    | OperationType_AllocateStaticIp
    | OperationType_ReleaseStaticIp
    | OperationType_AttachStaticIp
    | OperationType_DetachStaticIp
    | OperationType_UpdateDomainEntry
    | OperationType_DeleteDomainEntry
    | OperationType_CreateDomain
    | OperationType_DeleteDomain
    | OperationType_CreateInstanceSnapshot
    | OperationType_DeleteInstanceSnapshot
    | OperationType_CreateInstancesFromSnapshot
    | OperationType_CreateLoadBalancer
    | OperationType_DeleteLoadBalancer
    | OperationType_AttachInstancesToLoadBalancer
    | OperationType_DetachInstancesFromLoadBalancer
    | OperationType_UpdateLoadBalancerAttribute
    | OperationType_CreateLoadBalancerTlsCertificate
    | OperationType_DeleteLoadBalancerTlsCertificate
    | OperationType_AttachLoadBalancerTlsCertificate
    | OperationType_CreateDisk
    | OperationType_DeleteDisk
    | OperationType_AttachDisk
    | OperationType_DetachDisk
    | OperationType_CreateDiskSnapshot
    | OperationType_DeleteDiskSnapshot
    | OperationType_CreateDiskFromSnapshot
    | OperationType_CreateRelationalDatabase
    | OperationType_UpdateRelationalDatabase
    | OperationType_DeleteRelationalDatabase
    | OperationType_CreateRelationalDatabaseFromSnapshot
    | OperationType_CreateRelationalDatabaseSnapshot
    | OperationType_DeleteRelationalDatabaseSnapshot
    | OperationType_UpdateRelationalDatabaseParameters
    | OperationType_StartRelationalDatabase
    | OperationType_RebootRelationalDatabase
    | OperationType_StopRelationalDatabase



operationTypeDecoder : JD.Decoder OperationType
operationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DeleteKnownHostKeys" ->
                        JD.succeed OperationType_DeleteKnownHostKeys

                    "DeleteInstance" ->
                        JD.succeed OperationType_DeleteInstance

                    "CreateInstance" ->
                        JD.succeed OperationType_CreateInstance

                    "StopInstance" ->
                        JD.succeed OperationType_StopInstance

                    "StartInstance" ->
                        JD.succeed OperationType_StartInstance

                    "RebootInstance" ->
                        JD.succeed OperationType_RebootInstance

                    "OpenInstancePublicPorts" ->
                        JD.succeed OperationType_OpenInstancePublicPorts

                    "PutInstancePublicPorts" ->
                        JD.succeed OperationType_PutInstancePublicPorts

                    "CloseInstancePublicPorts" ->
                        JD.succeed OperationType_CloseInstancePublicPorts

                    "AllocateStaticIp" ->
                        JD.succeed OperationType_AllocateStaticIp

                    "ReleaseStaticIp" ->
                        JD.succeed OperationType_ReleaseStaticIp

                    "AttachStaticIp" ->
                        JD.succeed OperationType_AttachStaticIp

                    "DetachStaticIp" ->
                        JD.succeed OperationType_DetachStaticIp

                    "UpdateDomainEntry" ->
                        JD.succeed OperationType_UpdateDomainEntry

                    "DeleteDomainEntry" ->
                        JD.succeed OperationType_DeleteDomainEntry

                    "CreateDomain" ->
                        JD.succeed OperationType_CreateDomain

                    "DeleteDomain" ->
                        JD.succeed OperationType_DeleteDomain

                    "CreateInstanceSnapshot" ->
                        JD.succeed OperationType_CreateInstanceSnapshot

                    "DeleteInstanceSnapshot" ->
                        JD.succeed OperationType_DeleteInstanceSnapshot

                    "CreateInstancesFromSnapshot" ->
                        JD.succeed OperationType_CreateInstancesFromSnapshot

                    "CreateLoadBalancer" ->
                        JD.succeed OperationType_CreateLoadBalancer

                    "DeleteLoadBalancer" ->
                        JD.succeed OperationType_DeleteLoadBalancer

                    "AttachInstancesToLoadBalancer" ->
                        JD.succeed OperationType_AttachInstancesToLoadBalancer

                    "DetachInstancesFromLoadBalancer" ->
                        JD.succeed OperationType_DetachInstancesFromLoadBalancer

                    "UpdateLoadBalancerAttribute" ->
                        JD.succeed OperationType_UpdateLoadBalancerAttribute

                    "CreateLoadBalancerTlsCertificate" ->
                        JD.succeed OperationType_CreateLoadBalancerTlsCertificate

                    "DeleteLoadBalancerTlsCertificate" ->
                        JD.succeed OperationType_DeleteLoadBalancerTlsCertificate

                    "AttachLoadBalancerTlsCertificate" ->
                        JD.succeed OperationType_AttachLoadBalancerTlsCertificate

                    "CreateDisk" ->
                        JD.succeed OperationType_CreateDisk

                    "DeleteDisk" ->
                        JD.succeed OperationType_DeleteDisk

                    "AttachDisk" ->
                        JD.succeed OperationType_AttachDisk

                    "DetachDisk" ->
                        JD.succeed OperationType_DetachDisk

                    "CreateDiskSnapshot" ->
                        JD.succeed OperationType_CreateDiskSnapshot

                    "DeleteDiskSnapshot" ->
                        JD.succeed OperationType_DeleteDiskSnapshot

                    "CreateDiskFromSnapshot" ->
                        JD.succeed OperationType_CreateDiskFromSnapshot

                    "CreateRelationalDatabase" ->
                        JD.succeed OperationType_CreateRelationalDatabase

                    "UpdateRelationalDatabase" ->
                        JD.succeed OperationType_UpdateRelationalDatabase

                    "DeleteRelationalDatabase" ->
                        JD.succeed OperationType_DeleteRelationalDatabase

                    "CreateRelationalDatabaseFromSnapshot" ->
                        JD.succeed OperationType_CreateRelationalDatabaseFromSnapshot

                    "CreateRelationalDatabaseSnapshot" ->
                        JD.succeed OperationType_CreateRelationalDatabaseSnapshot

                    "DeleteRelationalDatabaseSnapshot" ->
                        JD.succeed OperationType_DeleteRelationalDatabaseSnapshot

                    "UpdateRelationalDatabaseParameters" ->
                        JD.succeed OperationType_UpdateRelationalDatabaseParameters

                    "StartRelationalDatabase" ->
                        JD.succeed OperationType_StartRelationalDatabase

                    "RebootRelationalDatabase" ->
                        JD.succeed OperationType_RebootRelationalDatabase

                    "StopRelationalDatabase" ->
                        JD.succeed OperationType_StopRelationalDatabase


                    _ ->
                        JD.fail "bad thing"
            )




operationTypeToString : OperationType -> String
operationTypeToString val =
    case val of
        OperationType_DeleteKnownHostKeys ->
            "DeleteKnownHostKeys"

        OperationType_DeleteInstance ->
            "DeleteInstance"

        OperationType_CreateInstance ->
            "CreateInstance"

        OperationType_StopInstance ->
            "StopInstance"

        OperationType_StartInstance ->
            "StartInstance"

        OperationType_RebootInstance ->
            "RebootInstance"

        OperationType_OpenInstancePublicPorts ->
            "OpenInstancePublicPorts"

        OperationType_PutInstancePublicPorts ->
            "PutInstancePublicPorts"

        OperationType_CloseInstancePublicPorts ->
            "CloseInstancePublicPorts"

        OperationType_AllocateStaticIp ->
            "AllocateStaticIp"

        OperationType_ReleaseStaticIp ->
            "ReleaseStaticIp"

        OperationType_AttachStaticIp ->
            "AttachStaticIp"

        OperationType_DetachStaticIp ->
            "DetachStaticIp"

        OperationType_UpdateDomainEntry ->
            "UpdateDomainEntry"

        OperationType_DeleteDomainEntry ->
            "DeleteDomainEntry"

        OperationType_CreateDomain ->
            "CreateDomain"

        OperationType_DeleteDomain ->
            "DeleteDomain"

        OperationType_CreateInstanceSnapshot ->
            "CreateInstanceSnapshot"

        OperationType_DeleteInstanceSnapshot ->
            "DeleteInstanceSnapshot"

        OperationType_CreateInstancesFromSnapshot ->
            "CreateInstancesFromSnapshot"

        OperationType_CreateLoadBalancer ->
            "CreateLoadBalancer"

        OperationType_DeleteLoadBalancer ->
            "DeleteLoadBalancer"

        OperationType_AttachInstancesToLoadBalancer ->
            "AttachInstancesToLoadBalancer"

        OperationType_DetachInstancesFromLoadBalancer ->
            "DetachInstancesFromLoadBalancer"

        OperationType_UpdateLoadBalancerAttribute ->
            "UpdateLoadBalancerAttribute"

        OperationType_CreateLoadBalancerTlsCertificate ->
            "CreateLoadBalancerTlsCertificate"

        OperationType_DeleteLoadBalancerTlsCertificate ->
            "DeleteLoadBalancerTlsCertificate"

        OperationType_AttachLoadBalancerTlsCertificate ->
            "AttachLoadBalancerTlsCertificate"

        OperationType_CreateDisk ->
            "CreateDisk"

        OperationType_DeleteDisk ->
            "DeleteDisk"

        OperationType_AttachDisk ->
            "AttachDisk"

        OperationType_DetachDisk ->
            "DetachDisk"

        OperationType_CreateDiskSnapshot ->
            "CreateDiskSnapshot"

        OperationType_DeleteDiskSnapshot ->
            "DeleteDiskSnapshot"

        OperationType_CreateDiskFromSnapshot ->
            "CreateDiskFromSnapshot"

        OperationType_CreateRelationalDatabase ->
            "CreateRelationalDatabase"

        OperationType_UpdateRelationalDatabase ->
            "UpdateRelationalDatabase"

        OperationType_DeleteRelationalDatabase ->
            "DeleteRelationalDatabase"

        OperationType_CreateRelationalDatabaseFromSnapshot ->
            "CreateRelationalDatabaseFromSnapshot"

        OperationType_CreateRelationalDatabaseSnapshot ->
            "CreateRelationalDatabaseSnapshot"

        OperationType_DeleteRelationalDatabaseSnapshot ->
            "DeleteRelationalDatabaseSnapshot"

        OperationType_UpdateRelationalDatabaseParameters ->
            "UpdateRelationalDatabaseParameters"

        OperationType_StartRelationalDatabase ->
            "StartRelationalDatabase"

        OperationType_RebootRelationalDatabase ->
            "RebootRelationalDatabase"

        OperationType_StopRelationalDatabase ->
            "StopRelationalDatabase"




{-| <p>The password data for the Windows Server-based instance, including the ciphertext and the key pair name.</p>
-}
type alias PasswordData =
    { ciphertext : Maybe String
    , keyPairName : Maybe String
    }



passwordDataDecoder : JD.Decoder PasswordData
passwordDataDecoder =
    JD.succeed PasswordData
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ciphertext", "Ciphertext"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["keyPairName", "KeyPairName"]
            JD.string
        )
        




passwordDataToString : PasswordData -> String -- List (String, String)
passwordDataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ciphertext" "" -- val.ciphertext
        
    --     |> Dict.insert
    --         "keyPairName" "" -- val.keyPairName
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from peerV
-}
type alias PeerVpcResult =
    { operation : Maybe Operation
    }



peerVpcResultDecoder : JD.Decoder PeerVpcResult
peerVpcResultDecoder =
    JD.succeed PeerVpcResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




peerVpcResultToString : PeerVpcResult -> String -- List (String, String)
peerVpcResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| <p>Describes a pending database maintenance action.</p>
-}
type alias PendingMaintenanceAction =
    { action : Maybe String
    , description : Maybe String
    , currentApplyDate : Maybe Posix
    }



pendingMaintenanceActionDecoder : JD.Decoder PendingMaintenanceAction
pendingMaintenanceActionDecoder =
    JD.succeed PendingMaintenanceAction
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["action", "Action"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["currentApplyDate", "CurrentApplyDate"]
            JDX.datetime
        )
        




pendingMaintenanceActionToString : PendingMaintenanceAction -> String -- List (String, String)
pendingMaintenanceActionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "currentApplyDate" "" -- val.currentApplyDate
        
    --     |> Dict.toList
    ""



{-| <p>Describes a pending database value modification.</p>
-}
type alias PendingModifiedRelationalDatabaseValues =
    { masterUserPassword : Maybe String
    , engineVersion : Maybe String
    , backupRetentionEnabled : Maybe Bool
    }



pendingModifiedRelationalDatabaseValuesDecoder : JD.Decoder PendingModifiedRelationalDatabaseValues
pendingModifiedRelationalDatabaseValuesDecoder =
    JD.succeed PendingModifiedRelationalDatabaseValues
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["masterUserPassword", "MasterUserPassword"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["engineVersion", "EngineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["backupRetentionEnabled", "BackupRetentionEnabled"]
            JD.bool
        )
        




pendingModifiedRelationalDatabaseValuesToString : PendingModifiedRelationalDatabaseValues -> String -- List (String, String)
pendingModifiedRelationalDatabaseValuesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "masterUserPassword" "" -- val.masterUserPassword
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "backupRetentionEnabled" "" -- val.backupRetentionEnabled
        
    --     |> Dict.toList
    ""



{-| One of

* `PortAccessType_Public`
* `PortAccessType_Private`

-}
type PortAccessType
    = PortAccessType_Public
    | PortAccessType_Private



portAccessTypeDecoder : JD.Decoder PortAccessType
portAccessTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Public" ->
                        JD.succeed PortAccessType_Public

                    "Private" ->
                        JD.succeed PortAccessType_Private


                    _ ->
                        JD.fail "bad thing"
            )




portAccessTypeToString : PortAccessType -> String
portAccessTypeToString val =
    case val of
        PortAccessType_Public ->
            "Public"

        PortAccessType_Private ->
            "Private"




{-| <p>Describes information about the ports on your virtual private server (or <i>instance</i>).</p>
-}
type alias PortInfo =
    { fromPort : Maybe Int
    , toPort : Maybe Int
    , protocol : Maybe NetworkProtocol
    }



portInfoDecoder : JD.Decoder PortInfo
portInfoDecoder =
    JD.succeed PortInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromPort", "FromPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["toPort", "ToPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["protocol", "Protocol"]
            networkProtocolDecoder
        )
        




portInfoToString : PortInfo -> String -- List (String, String)
portInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fromPort" "" -- val.fromPort
        
    --     |> Dict.insert
    --         "toPort" "" -- val.toPort
        
    --     |> Dict.insert
    --         "protocol" "" -- val.protocol
        
    --     |> Dict.toList
    ""



{-| One of

* `PortInfoSourceType_DEFAULT`
* `PortInfoSourceType_INSTANCE`
* `PortInfoSourceType_NONE`
* `PortInfoSourceType_CLOSED`

-}
type PortInfoSourceType
    = PortInfoSourceType_DEFAULT
    | PortInfoSourceType_INSTANCE
    | PortInfoSourceType_NONE
    | PortInfoSourceType_CLOSED



portInfoSourceTypeDecoder : JD.Decoder PortInfoSourceType
portInfoSourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEFAULT" ->
                        JD.succeed PortInfoSourceType_DEFAULT

                    "INSTANCE" ->
                        JD.succeed PortInfoSourceType_INSTANCE

                    "NONE" ->
                        JD.succeed PortInfoSourceType_NONE

                    "CLOSED" ->
                        JD.succeed PortInfoSourceType_CLOSED


                    _ ->
                        JD.fail "bad thing"
            )




portInfoSourceTypeToString : PortInfoSourceType -> String
portInfoSourceTypeToString val =
    case val of
        PortInfoSourceType_DEFAULT ->
            "DEFAULT"

        PortInfoSourceType_INSTANCE ->
            "INSTANCE"

        PortInfoSourceType_NONE ->
            "NONE"

        PortInfoSourceType_CLOSED ->
            "CLOSED"




{-| One of

* `PortState_open`
* `PortState_closed`

-}
type PortState
    = PortState_open
    | PortState_closed



portStateDecoder : JD.Decoder PortState
portStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "open" ->
                        JD.succeed PortState_open

                    "closed" ->
                        JD.succeed PortState_closed


                    _ ->
                        JD.fail "bad thing"
            )




portStateToString : PortState -> String
portStateToString val =
    case val of
        PortState_open ->
            "open"

        PortState_closed ->
            "closed"




{-| Type of HTTP response from putInstancePublicPor
-}
type alias PutInstancePublicPortsResult =
    { operation : Maybe Operation
    }



putInstancePublicPortsResultDecoder : JD.Decoder PutInstancePublicPortsResult
putInstancePublicPortsResultDecoder =
    JD.succeed PutInstancePublicPortsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




putInstancePublicPortsResultToString : PutInstancePublicPortsResult -> String -- List (String, String)
putInstancePublicPortsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from rebootInstan
-}
type alias RebootInstanceResult =
    { operations : Maybe (List Operation)
    }



rebootInstanceResultDecoder : JD.Decoder RebootInstanceResult
rebootInstanceResultDecoder =
    JD.succeed RebootInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




rebootInstanceResultToString : RebootInstanceResult -> String -- List (String, String)
rebootInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from rebootRelationalDataba
-}
type alias RebootRelationalDatabaseResult =
    { operations : Maybe (List Operation)
    }



rebootRelationalDatabaseResultDecoder : JD.Decoder RebootRelationalDatabaseResult
rebootRelationalDatabaseResultDecoder =
    JD.succeed RebootRelationalDatabaseResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




rebootRelationalDatabaseResultToString : RebootRelationalDatabaseResult -> String -- List (String, String)
rebootRelationalDatabaseResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| One of

* `RecordState_Started`
* `RecordState_Succeeded`
* `RecordState_Failed`

-}
type RecordState
    = RecordState_Started
    | RecordState_Succeeded
    | RecordState_Failed



recordStateDecoder : JD.Decoder RecordState
recordStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Started" ->
                        JD.succeed RecordState_Started

                    "Succeeded" ->
                        JD.succeed RecordState_Succeeded

                    "Failed" ->
                        JD.succeed RecordState_Failed


                    _ ->
                        JD.fail "bad thing"
            )




recordStateToString : RecordState -> String
recordStateToString val =
    case val of
        RecordState_Started ->
            "Started"

        RecordState_Succeeded ->
            "Succeeded"

        RecordState_Failed ->
            "Failed"




{-| <p>Describes the AWS Region.</p>
-}
type alias Region =
    { continentCode : Maybe String
    , description : Maybe String
    , displayName : Maybe String
    , name : Maybe RegionName
    , availabilityZones : Maybe (List AvailabilityZone)
    , relationalDatabaseAvailabilityZones : Maybe (List AvailabilityZone)
    }



regionDecoder : JD.Decoder Region
regionDecoder =
    JD.succeed Region
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["continentCode", "ContinentCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["displayName", "DisplayName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            regionNameDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["availabilityZones", "AvailabilityZones"]
            (JD.list availabilityZoneDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relationalDatabaseAvailabilityZones", "RelationalDatabaseAvailabilityZones"]
            (JD.list availabilityZoneDecoder)
        )
        




regionToString : Region -> String -- List (String, String)
regionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "continentCode" "" -- val.continentCode
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "displayName" "" -- val.displayName
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "availabilityZones" "" -- val.availabilityZones
        
    --     |> Dict.insert
    --         "relationalDatabaseAvailabilityZones" "" -- val.relationalDatabaseAvailabilityZones
        
    --     |> Dict.toList
    ""



{-| One of

* `RegionName_us-east-1`
* `RegionName_us-east-2`
* `RegionName_us-west-1`
* `RegionName_us-west-2`
* `RegionName_eu-west-1`
* `RegionName_eu-west-2`
* `RegionName_eu-west-3`
* `RegionName_eu-central-1`
* `RegionName_ca-central-1`
* `RegionName_ap-south-1`
* `RegionName_ap-southeast-1`
* `RegionName_ap-southeast-2`
* `RegionName_ap-northeast-1`
* `RegionName_ap-northeast-2`

-}
type RegionName
    = RegionName_us_east_1
    | RegionName_us_east_2
    | RegionName_us_west_1
    | RegionName_us_west_2
    | RegionName_eu_west_1
    | RegionName_eu_west_2
    | RegionName_eu_west_3
    | RegionName_eu_central_1
    | RegionName_ca_central_1
    | RegionName_ap_south_1
    | RegionName_ap_southeast_1
    | RegionName_ap_southeast_2
    | RegionName_ap_northeast_1
    | RegionName_ap_northeast_2



regionNameDecoder : JD.Decoder RegionName
regionNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "us_east_1" ->
                        JD.succeed RegionName_us_east_1

                    "us_east_2" ->
                        JD.succeed RegionName_us_east_2

                    "us_west_1" ->
                        JD.succeed RegionName_us_west_1

                    "us_west_2" ->
                        JD.succeed RegionName_us_west_2

                    "eu_west_1" ->
                        JD.succeed RegionName_eu_west_1

                    "eu_west_2" ->
                        JD.succeed RegionName_eu_west_2

                    "eu_west_3" ->
                        JD.succeed RegionName_eu_west_3

                    "eu_central_1" ->
                        JD.succeed RegionName_eu_central_1

                    "ca_central_1" ->
                        JD.succeed RegionName_ca_central_1

                    "ap_south_1" ->
                        JD.succeed RegionName_ap_south_1

                    "ap_southeast_1" ->
                        JD.succeed RegionName_ap_southeast_1

                    "ap_southeast_2" ->
                        JD.succeed RegionName_ap_southeast_2

                    "ap_northeast_1" ->
                        JD.succeed RegionName_ap_northeast_1

                    "ap_northeast_2" ->
                        JD.succeed RegionName_ap_northeast_2


                    _ ->
                        JD.fail "bad thing"
            )




regionNameToString : RegionName -> String
regionNameToString val =
    case val of
        RegionName_us_east_1 ->
            "us_east_1"

        RegionName_us_east_2 ->
            "us_east_2"

        RegionName_us_west_1 ->
            "us_west_1"

        RegionName_us_west_2 ->
            "us_west_2"

        RegionName_eu_west_1 ->
            "eu_west_1"

        RegionName_eu_west_2 ->
            "eu_west_2"

        RegionName_eu_west_3 ->
            "eu_west_3"

        RegionName_eu_central_1 ->
            "eu_central_1"

        RegionName_ca_central_1 ->
            "ca_central_1"

        RegionName_ap_south_1 ->
            "ap_south_1"

        RegionName_ap_southeast_1 ->
            "ap_southeast_1"

        RegionName_ap_southeast_2 ->
            "ap_southeast_2"

        RegionName_ap_northeast_1 ->
            "ap_northeast_1"

        RegionName_ap_northeast_2 ->
            "ap_northeast_2"




{-| <p>Describes a database.</p>
-}
type alias RelationalDatabase =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , tags : Maybe (List Tag)
    , relationalDatabaseBlueprintId : Maybe String
    , relationalDatabaseBundleId : Maybe String
    , masterDatabaseName : Maybe String
    , hardware : Maybe RelationalDatabaseHardware
    , state : Maybe String
    , secondaryAvailabilityZone : Maybe String
    , backupRetentionEnabled : Maybe Bool
    , pendingModifiedValues : Maybe PendingModifiedRelationalDatabaseValues
    , engine : Maybe String
    , engineVersion : Maybe String
    , latestRestorableTime : Maybe Posix
    , masterUsername : Maybe String
    , parameterApplyStatus : Maybe String
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , publiclyAccessible : Maybe Bool
    , masterEndpoint : Maybe RelationalDatabaseEndpoint
    , pendingMaintenanceActions : Maybe (List PendingMaintenanceAction)
    }



relationalDatabaseDecoder : JD.Decoder RelationalDatabase
relationalDatabaseDecoder =
    JD.succeed RelationalDatabase
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["supportCode", "SupportCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relationalDatabaseBlueprintId", "RelationalDatabaseBlueprintId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relationalDatabaseBundleId", "RelationalDatabaseBundleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["masterDatabaseName", "MasterDatabaseName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hardware", "Hardware"]
            relationalDatabaseHardwareDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["secondaryAvailabilityZone", "SecondaryAvailabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["backupRetentionEnabled", "BackupRetentionEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pendingModifiedValues", "PendingModifiedValues"]
            pendingModifiedRelationalDatabaseValuesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["engine", "Engine"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["engineVersion", "EngineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["latestRestorableTime", "LatestRestorableTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["masterUsername", "MasterUsername"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["parameterApplyStatus", "ParameterApplyStatus"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["preferredBackupWindow", "PreferredBackupWindow"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["preferredMaintenanceWindow", "PreferredMaintenanceWindow"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["publiclyAccessible", "PubliclyAccessible"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["masterEndpoint", "MasterEndpoint"]
            relationalDatabaseEndpointDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pendingMaintenanceActions", "PendingMaintenanceActions"]
            (JD.list pendingMaintenanceActionDecoder)
        )
        




relationalDatabaseToString : RelationalDatabase -> String -- List (String, String)
relationalDatabaseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "supportCode" "" -- val.supportCode
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "relationalDatabaseBlueprintId" "" -- val.relationalDatabaseBlueprintId
        
    --     |> Dict.insert
    --         "relationalDatabaseBundleId" "" -- val.relationalDatabaseBundleId
        
    --     |> Dict.insert
    --         "masterDatabaseName" "" -- val.masterDatabaseName
        
    --     |> Dict.insert
    --         "hardware" "" -- val.hardware
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "secondaryAvailabilityZone" "" -- val.secondaryAvailabilityZone
        
    --     |> Dict.insert
    --         "backupRetentionEnabled" "" -- val.backupRetentionEnabled
        
    --     |> Dict.insert
    --         "pendingModifiedValues" "" -- val.pendingModifiedValues
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "latestRestorableTime" "" -- val.latestRestorableTime
        
    --     |> Dict.insert
    --         "masterUsername" "" -- val.masterUsername
        
    --     |> Dict.insert
    --         "parameterApplyStatus" "" -- val.parameterApplyStatus
        
    --     |> Dict.insert
    --         "preferredBackupWindow" "" -- val.preferredBackupWindow
        
    --     |> Dict.insert
    --         "preferredMaintenanceWindow" "" -- val.preferredMaintenanceWindow
        
    --     |> Dict.insert
    --         "publiclyAccessible" "" -- val.publiclyAccessible
        
    --     |> Dict.insert
    --         "masterEndpoint" "" -- val.masterEndpoint
        
    --     |> Dict.insert
    --         "pendingMaintenanceActions" "" -- val.pendingMaintenanceActions
        
    --     |> Dict.toList
    ""



{-| <p>Describes a database image, or blueprint. A blueprint describes the major engine version of a database.</p>
-}
type alias RelationalDatabaseBlueprint =
    { blueprintId : Maybe String
    , engine : Maybe RelationalDatabaseEngine
    , engineVersion : Maybe String
    , engineDescription : Maybe String
    , engineVersionDescription : Maybe String
    , isEngineDefault : Maybe Bool
    }



relationalDatabaseBlueprintDecoder : JD.Decoder RelationalDatabaseBlueprint
relationalDatabaseBlueprintDecoder =
    JD.succeed RelationalDatabaseBlueprint
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["blueprintId", "BlueprintId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["engine", "Engine"]
            relationalDatabaseEngineDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["engineVersion", "EngineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["engineDescription", "EngineDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["engineVersionDescription", "EngineVersionDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isEngineDefault", "IsEngineDefault"]
            JD.bool
        )
        




relationalDatabaseBlueprintToString : RelationalDatabaseBlueprint -> String -- List (String, String)
relationalDatabaseBlueprintToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "blueprintId" "" -- val.blueprintId
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "engineDescription" "" -- val.engineDescription
        
    --     |> Dict.insert
    --         "engineVersionDescription" "" -- val.engineVersionDescription
        
    --     |> Dict.insert
    --         "isEngineDefault" "" -- val.isEngineDefault
        
    --     |> Dict.toList
    ""



{-| <p>Describes a database bundle. A bundle describes the performance specifications of the database.</p>
-}
type alias RelationalDatabaseBundle =
    { bundleId : Maybe String
    , name : Maybe String
    , price : Maybe Float
    , ramSizeInGb : Maybe Float
    , diskSizeInGb : Maybe Int
    , transferPerMonthInGb : Maybe Int
    , cpuCount : Maybe Int
    , isEncrypted : Maybe Bool
    , isActive : Maybe Bool
    }



relationalDatabaseBundleDecoder : JD.Decoder RelationalDatabaseBundle
relationalDatabaseBundleDecoder =
    JD.succeed RelationalDatabaseBundle
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["bundleId", "BundleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["price", "Price"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ramSizeInGb", "RamSizeInGb"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["diskSizeInGb", "DiskSizeInGb"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["transferPerMonthInGb", "TransferPerMonthInGb"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cpuCount", "CpuCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isEncrypted", "IsEncrypted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isActive", "IsActive"]
            JD.bool
        )
        




relationalDatabaseBundleToString : RelationalDatabaseBundle -> String -- List (String, String)
relationalDatabaseBundleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bundleId" "" -- val.bundleId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "price" "" -- val.price
        
    --     |> Dict.insert
    --         "ramSizeInGb" "" -- val.ramSizeInGb
        
    --     |> Dict.insert
    --         "diskSizeInGb" "" -- val.diskSizeInGb
        
    --     |> Dict.insert
    --         "transferPerMonthInGb" "" -- val.transferPerMonthInGb
        
    --     |> Dict.insert
    --         "cpuCount" "" -- val.cpuCount
        
    --     |> Dict.insert
    --         "isEncrypted" "" -- val.isEncrypted
        
    --     |> Dict.insert
    --         "isActive" "" -- val.isActive
        
    --     |> Dict.toList
    ""



{-| <p>Describes an endpoint for a database.</p>
-}
type alias RelationalDatabaseEndpoint =
    { port_ : Maybe Int
    , address : Maybe String
    }



relationalDatabaseEndpointDecoder : JD.Decoder RelationalDatabaseEndpoint
relationalDatabaseEndpointDecoder =
    JD.succeed RelationalDatabaseEndpoint
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["port", "Port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["address", "Address"]
            JD.string
        )
        




relationalDatabaseEndpointToString : RelationalDatabaseEndpoint -> String -- List (String, String)
relationalDatabaseEndpointToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "address" "" -- val.address
        
    --     |> Dict.toList
    ""



{-| One of

* `RelationalDatabaseEngine_mysql`

-}
type RelationalDatabaseEngine
    = RelationalDatabaseEngine_mysql



relationalDatabaseEngineDecoder : JD.Decoder RelationalDatabaseEngine
relationalDatabaseEngineDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "mysql" ->
                        JD.succeed RelationalDatabaseEngine_mysql


                    _ ->
                        JD.fail "bad thing"
            )




relationalDatabaseEngineToString : RelationalDatabaseEngine -> String
relationalDatabaseEngineToString val =
    case val of
        RelationalDatabaseEngine_mysql ->
            "mysql"




{-| <p>Describes an event for a database.</p>
-}
type alias RelationalDatabaseEvent =
    { resource : Maybe String
    , createdAt : Maybe Posix
    , message : Maybe String
    , eventCategories : Maybe (List String)
    }



relationalDatabaseEventDecoder : JD.Decoder RelationalDatabaseEvent
relationalDatabaseEventDecoder =
    JD.succeed RelationalDatabaseEvent
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resource", "Resource"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventCategories", "EventCategories"]
            (JD.list JD.string)
        )
        




relationalDatabaseEventToString : RelationalDatabaseEvent -> String -- List (String, String)
relationalDatabaseEventToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resource" "" -- val.resource
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "eventCategories" "" -- val.eventCategories
        
    --     |> Dict.toList
    ""



{-| <p>Describes the hardware of a database.</p>
-}
type alias RelationalDatabaseHardware =
    { cpuCount : Maybe Int
    , diskSizeInGb : Maybe Int
    , ramSizeInGb : Maybe Float
    }



relationalDatabaseHardwareDecoder : JD.Decoder RelationalDatabaseHardware
relationalDatabaseHardwareDecoder =
    JD.succeed RelationalDatabaseHardware
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cpuCount", "CpuCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["diskSizeInGb", "DiskSizeInGb"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ramSizeInGb", "RamSizeInGb"]
            JD.float
        )
        




relationalDatabaseHardwareToString : RelationalDatabaseHardware -> String -- List (String, String)
relationalDatabaseHardwareToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cpuCount" "" -- val.cpuCount
        
    --     |> Dict.insert
    --         "diskSizeInGb" "" -- val.diskSizeInGb
        
    --     |> Dict.insert
    --         "ramSizeInGb" "" -- val.ramSizeInGb
        
    --     |> Dict.toList
    ""



{-| One of

* `RelationalDatabaseMetricName_CPUUtilization`
* `RelationalDatabaseMetricName_DatabaseConnections`
* `RelationalDatabaseMetricName_DiskQueueDepth`
* `RelationalDatabaseMetricName_FreeStorageSpace`
* `RelationalDatabaseMetricName_NetworkReceiveThroughput`
* `RelationalDatabaseMetricName_NetworkTransmitThroughput`

-}
type RelationalDatabaseMetricName
    = RelationalDatabaseMetricName_CPUUtilization
    | RelationalDatabaseMetricName_DatabaseConnections
    | RelationalDatabaseMetricName_DiskQueueDepth
    | RelationalDatabaseMetricName_FreeStorageSpace
    | RelationalDatabaseMetricName_NetworkReceiveThroughput
    | RelationalDatabaseMetricName_NetworkTransmitThroughput



relationalDatabaseMetricNameDecoder : JD.Decoder RelationalDatabaseMetricName
relationalDatabaseMetricNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CPUUtilization" ->
                        JD.succeed RelationalDatabaseMetricName_CPUUtilization

                    "DatabaseConnections" ->
                        JD.succeed RelationalDatabaseMetricName_DatabaseConnections

                    "DiskQueueDepth" ->
                        JD.succeed RelationalDatabaseMetricName_DiskQueueDepth

                    "FreeStorageSpace" ->
                        JD.succeed RelationalDatabaseMetricName_FreeStorageSpace

                    "NetworkReceiveThroughput" ->
                        JD.succeed RelationalDatabaseMetricName_NetworkReceiveThroughput

                    "NetworkTransmitThroughput" ->
                        JD.succeed RelationalDatabaseMetricName_NetworkTransmitThroughput


                    _ ->
                        JD.fail "bad thing"
            )




relationalDatabaseMetricNameToString : RelationalDatabaseMetricName -> String
relationalDatabaseMetricNameToString val =
    case val of
        RelationalDatabaseMetricName_CPUUtilization ->
            "CPUUtilization"

        RelationalDatabaseMetricName_DatabaseConnections ->
            "DatabaseConnections"

        RelationalDatabaseMetricName_DiskQueueDepth ->
            "DiskQueueDepth"

        RelationalDatabaseMetricName_FreeStorageSpace ->
            "FreeStorageSpace"

        RelationalDatabaseMetricName_NetworkReceiveThroughput ->
            "NetworkReceiveThroughput"

        RelationalDatabaseMetricName_NetworkTransmitThroughput ->
            "NetworkTransmitThroughput"




{-| <p>Describes the parameters of a database.</p>
-}
type alias RelationalDatabaseParameter =
    { allowedValues : Maybe String
    , applyMethod : Maybe String
    , applyType : Maybe String
    , dataType : Maybe String
    , description : Maybe String
    , isModifiable : Maybe Bool
    , parameterName : Maybe String
    , parameterValue : Maybe String
    }



relationalDatabaseParameterDecoder : JD.Decoder RelationalDatabaseParameter
relationalDatabaseParameterDecoder =
    JD.succeed RelationalDatabaseParameter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["allowedValues", "AllowedValues"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["applyMethod", "ApplyMethod"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["applyType", "ApplyType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["dataType", "DataType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isModifiable", "IsModifiable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["parameterName", "ParameterName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["parameterValue", "ParameterValue"]
            JD.string
        )
        




relationalDatabaseParameterToString : RelationalDatabaseParameter -> String -- List (String, String)
relationalDatabaseParameterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "allowedValues" "" -- val.allowedValues
        
    --     |> Dict.insert
    --         "applyMethod" "" -- val.applyMethod
        
    --     |> Dict.insert
    --         "applyType" "" -- val.applyType
        
    --     |> Dict.insert
    --         "dataType" "" -- val.dataType
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "isModifiable" "" -- val.isModifiable
        
    --     |> Dict.insert
    --         "parameterName" "" -- val.parameterName
        
    --     |> Dict.insert
    --         "parameterValue" "" -- val.parameterValue
        
    --     |> Dict.toList
    ""



{-| One of

* `RelationalDatabasePasswordVersion_CURRENT`
* `RelationalDatabasePasswordVersion_PREVIOUS`
* `RelationalDatabasePasswordVersion_PENDING`

-}
type RelationalDatabasePasswordVersion
    = RelationalDatabasePasswordVersion_CURRENT
    | RelationalDatabasePasswordVersion_PREVIOUS
    | RelationalDatabasePasswordVersion_PENDING



relationalDatabasePasswordVersionDecoder : JD.Decoder RelationalDatabasePasswordVersion
relationalDatabasePasswordVersionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CURRENT" ->
                        JD.succeed RelationalDatabasePasswordVersion_CURRENT

                    "PREVIOUS" ->
                        JD.succeed RelationalDatabasePasswordVersion_PREVIOUS

                    "PENDING" ->
                        JD.succeed RelationalDatabasePasswordVersion_PENDING


                    _ ->
                        JD.fail "bad thing"
            )




relationalDatabasePasswordVersionToString : RelationalDatabasePasswordVersion -> String
relationalDatabasePasswordVersionToString val =
    case val of
        RelationalDatabasePasswordVersion_CURRENT ->
            "CURRENT"

        RelationalDatabasePasswordVersion_PREVIOUS ->
            "PREVIOUS"

        RelationalDatabasePasswordVersion_PENDING ->
            "PENDING"




{-| <p>Describes a database snapshot.</p>
-}
type alias RelationalDatabaseSnapshot =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , tags : Maybe (List Tag)
    , engine : Maybe String
    , engineVersion : Maybe String
    , sizeInGb : Maybe Int
    , state : Maybe String
    , fromRelationalDatabaseName : Maybe String
    , fromRelationalDatabaseArn : Maybe String
    , fromRelationalDatabaseBundleId : Maybe String
    , fromRelationalDatabaseBlueprintId : Maybe String
    }



relationalDatabaseSnapshotDecoder : JD.Decoder RelationalDatabaseSnapshot
relationalDatabaseSnapshotDecoder =
    JD.succeed RelationalDatabaseSnapshot
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["supportCode", "SupportCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["engine", "Engine"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["engineVersion", "EngineVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sizeInGb", "SizeInGb"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["state", "State"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromRelationalDatabaseName", "FromRelationalDatabaseName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromRelationalDatabaseArn", "FromRelationalDatabaseArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromRelationalDatabaseBundleId", "FromRelationalDatabaseBundleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fromRelationalDatabaseBlueprintId", "FromRelationalDatabaseBlueprintId"]
            JD.string
        )
        




relationalDatabaseSnapshotToString : RelationalDatabaseSnapshot -> String -- List (String, String)
relationalDatabaseSnapshotToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "supportCode" "" -- val.supportCode
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "engine" "" -- val.engine
        
    --     |> Dict.insert
    --         "engineVersion" "" -- val.engineVersion
        
    --     |> Dict.insert
    --         "sizeInGb" "" -- val.sizeInGb
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "fromRelationalDatabaseName" "" -- val.fromRelationalDatabaseName
        
    --     |> Dict.insert
    --         "fromRelationalDatabaseArn" "" -- val.fromRelationalDatabaseArn
        
    --     |> Dict.insert
    --         "fromRelationalDatabaseBundleId" "" -- val.fromRelationalDatabaseBundleId
        
    --     |> Dict.insert
    --         "fromRelationalDatabaseBlueprintId" "" -- val.fromRelationalDatabaseBlueprintId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from releaseStatic
-}
type alias ReleaseStaticIpResult =
    { operations : Maybe (List Operation)
    }



releaseStaticIpResultDecoder : JD.Decoder ReleaseStaticIpResult
releaseStaticIpResultDecoder =
    JD.succeed ReleaseStaticIpResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




releaseStaticIpResultToString : ReleaseStaticIpResult -> String -- List (String, String)
releaseStaticIpResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| <p>Describes the resource location.</p>
-}
type alias ResourceLocation =
    { availabilityZone : Maybe String
    , regionName : Maybe RegionName
    }



resourceLocationDecoder : JD.Decoder ResourceLocation
resourceLocationDecoder =
    JD.succeed ResourceLocation
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["availabilityZone", "AvailabilityZone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["regionName", "RegionName"]
            regionNameDecoder
        )
        




resourceLocationToString : ResourceLocation -> String -- List (String, String)
resourceLocationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "availabilityZone" "" -- val.availabilityZone
        
    --     |> Dict.insert
    --         "regionName" "" -- val.regionName
        
    --     |> Dict.toList
    ""



{-| One of

* `ResourceType_Instance`
* `ResourceType_StaticIp`
* `ResourceType_KeyPair`
* `ResourceType_InstanceSnapshot`
* `ResourceType_Domain`
* `ResourceType_PeeredVpc`
* `ResourceType_LoadBalancer`
* `ResourceType_LoadBalancerTlsCertificate`
* `ResourceType_Disk`
* `ResourceType_DiskSnapshot`
* `ResourceType_RelationalDatabase`
* `ResourceType_RelationalDatabaseSnapshot`
* `ResourceType_ExportSnapshotRecord`
* `ResourceType_CloudFormationStackRecord`

-}
type ResourceType
    = ResourceType_Instance
    | ResourceType_StaticIp
    | ResourceType_KeyPair
    | ResourceType_InstanceSnapshot
    | ResourceType_Domain
    | ResourceType_PeeredVpc
    | ResourceType_LoadBalancer
    | ResourceType_LoadBalancerTlsCertificate
    | ResourceType_Disk
    | ResourceType_DiskSnapshot
    | ResourceType_RelationalDatabase
    | ResourceType_RelationalDatabaseSnapshot
    | ResourceType_ExportSnapshotRecord
    | ResourceType_CloudFormationStackRecord



resourceTypeDecoder : JD.Decoder ResourceType
resourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Instance" ->
                        JD.succeed ResourceType_Instance

                    "StaticIp" ->
                        JD.succeed ResourceType_StaticIp

                    "KeyPair" ->
                        JD.succeed ResourceType_KeyPair

                    "InstanceSnapshot" ->
                        JD.succeed ResourceType_InstanceSnapshot

                    "Domain" ->
                        JD.succeed ResourceType_Domain

                    "PeeredVpc" ->
                        JD.succeed ResourceType_PeeredVpc

                    "LoadBalancer" ->
                        JD.succeed ResourceType_LoadBalancer

                    "LoadBalancerTlsCertificate" ->
                        JD.succeed ResourceType_LoadBalancerTlsCertificate

                    "Disk" ->
                        JD.succeed ResourceType_Disk

                    "DiskSnapshot" ->
                        JD.succeed ResourceType_DiskSnapshot

                    "RelationalDatabase" ->
                        JD.succeed ResourceType_RelationalDatabase

                    "RelationalDatabaseSnapshot" ->
                        JD.succeed ResourceType_RelationalDatabaseSnapshot

                    "ExportSnapshotRecord" ->
                        JD.succeed ResourceType_ExportSnapshotRecord

                    "CloudFormationStackRecord" ->
                        JD.succeed ResourceType_CloudFormationStackRecord


                    _ ->
                        JD.fail "bad thing"
            )




resourceTypeToString : ResourceType -> String
resourceTypeToString val =
    case val of
        ResourceType_Instance ->
            "Instance"

        ResourceType_StaticIp ->
            "StaticIp"

        ResourceType_KeyPair ->
            "KeyPair"

        ResourceType_InstanceSnapshot ->
            "InstanceSnapshot"

        ResourceType_Domain ->
            "Domain"

        ResourceType_PeeredVpc ->
            "PeeredVpc"

        ResourceType_LoadBalancer ->
            "LoadBalancer"

        ResourceType_LoadBalancerTlsCertificate ->
            "LoadBalancerTlsCertificate"

        ResourceType_Disk ->
            "Disk"

        ResourceType_DiskSnapshot ->
            "DiskSnapshot"

        ResourceType_RelationalDatabase ->
            "RelationalDatabase"

        ResourceType_RelationalDatabaseSnapshot ->
            "RelationalDatabaseSnapshot"

        ResourceType_ExportSnapshotRecord ->
            "ExportSnapshotRecord"

        ResourceType_CloudFormationStackRecord ->
            "CloudFormationStackRecord"




{-| Type of HTTP response from startInstan
-}
type alias StartInstanceResult =
    { operations : Maybe (List Operation)
    }



startInstanceResultDecoder : JD.Decoder StartInstanceResult
startInstanceResultDecoder =
    JD.succeed StartInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




startInstanceResultToString : StartInstanceResult -> String -- List (String, String)
startInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startRelationalDataba
-}
type alias StartRelationalDatabaseResult =
    { operations : Maybe (List Operation)
    }



startRelationalDatabaseResultDecoder : JD.Decoder StartRelationalDatabaseResult
startRelationalDatabaseResultDecoder =
    JD.succeed StartRelationalDatabaseResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




startRelationalDatabaseResultToString : StartRelationalDatabaseResult -> String -- List (String, String)
startRelationalDatabaseResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| <p>Describes the static IP.</p>
-}
type alias StaticIp =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Posix
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , ipAddress : Maybe String
    , attachedTo : Maybe String
    , isAttached : Maybe Bool
    }



staticIpDecoder : JD.Decoder StaticIp
staticIpDecoder =
    JD.succeed StaticIp
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["arn", "Arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["supportCode", "SupportCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["createdAt", "CreatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            resourceLocationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["resourceType", "ResourceType"]
            resourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ipAddress", "IpAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["attachedTo", "AttachedTo"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isAttached", "IsAttached"]
            JD.bool
        )
        




staticIpToString : StaticIp -> String -- List (String, String)
staticIpToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "supportCode" "" -- val.supportCode
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "attachedTo" "" -- val.attachedTo
        
    --     |> Dict.insert
    --         "isAttached" "" -- val.isAttached
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopInstan
-}
type alias StopInstanceResult =
    { operations : Maybe (List Operation)
    }



stopInstanceResultDecoder : JD.Decoder StopInstanceResult
stopInstanceResultDecoder =
    JD.succeed StopInstanceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




stopInstanceResultToString : StopInstanceResult -> String -- List (String, String)
stopInstanceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopRelationalDataba
-}
type alias StopRelationalDatabaseResult =
    { operations : Maybe (List Operation)
    }



stopRelationalDatabaseResultDecoder : JD.Decoder StopRelationalDatabaseResult
stopRelationalDatabaseResultDecoder =
    JD.succeed StopRelationalDatabaseResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




stopRelationalDatabaseResultToString : StopRelationalDatabaseResult -> String -- List (String, String)
stopRelationalDatabaseResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| <p>Describes a tag key and optional value assigned to an Amazon Lightsail resource.</p> <p>For more information about tags in Lightsail, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags">Lightsail Dev Guide</a>.</p>
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



{-| Type of HTTP response from tagResour
-}
type alias TagResourceResult =
    { operations : Maybe (List Operation)
    }



tagResourceResultDecoder : JD.Decoder TagResourceResult
tagResourceResultDecoder =
    JD.succeed TagResourceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




tagResourceResultToString : TagResourceResult -> String -- List (String, String)
tagResourceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from unpeerV
-}
type alias UnpeerVpcResult =
    { operation : Maybe Operation
    }



unpeerVpcResultDecoder : JD.Decoder UnpeerVpcResult
unpeerVpcResultDecoder =
    JD.succeed UnpeerVpcResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operation", "Operation"]
            operationDecoder
        )
        




unpeerVpcResultToString : UnpeerVpcResult -> String -- List (String, String)
unpeerVpcResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operation" "" -- val.operation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from untagResour
-}
type alias UntagResourceResult =
    { operations : Maybe (List Operation)
    }



untagResourceResultDecoder : JD.Decoder UntagResourceResult
untagResourceResultDecoder =
    JD.succeed UntagResourceResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




untagResourceResultToString : UntagResourceResult -> String -- List (String, String)
untagResourceResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateDomainEnt
-}
type alias UpdateDomainEntryResult =
    { operations : Maybe (List Operation)
    }



updateDomainEntryResultDecoder : JD.Decoder UpdateDomainEntryResult
updateDomainEntryResultDecoder =
    JD.succeed UpdateDomainEntryResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




updateDomainEntryResultToString : UpdateDomainEntryResult -> String -- List (String, String)
updateDomainEntryResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateLoadBalancerAttribu
-}
type alias UpdateLoadBalancerAttributeResult =
    { operations : Maybe (List Operation)
    }



updateLoadBalancerAttributeResultDecoder : JD.Decoder UpdateLoadBalancerAttributeResult
updateLoadBalancerAttributeResultDecoder =
    JD.succeed UpdateLoadBalancerAttributeResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




updateLoadBalancerAttributeResultToString : UpdateLoadBalancerAttributeResult -> String -- List (String, String)
updateLoadBalancerAttributeResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateRelationalDatabaseParamete
-}
type alias UpdateRelationalDatabaseParametersResult =
    { operations : Maybe (List Operation)
    }



updateRelationalDatabaseParametersResultDecoder : JD.Decoder UpdateRelationalDatabaseParametersResult
updateRelationalDatabaseParametersResultDecoder =
    JD.succeed UpdateRelationalDatabaseParametersResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




updateRelationalDatabaseParametersResultToString : UpdateRelationalDatabaseParametersResult -> String -- List (String, String)
updateRelationalDatabaseParametersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateRelationalDataba
-}
type alias UpdateRelationalDatabaseResult =
    { operations : Maybe (List Operation)
    }



updateRelationalDatabaseResultDecoder : JD.Decoder UpdateRelationalDatabaseResult
updateRelationalDatabaseResultDecoder =
    JD.succeed UpdateRelationalDatabaseResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["operations", "Operations"]
            (JD.list operationDecoder)
        )
        




updateRelationalDatabaseResultToString : UpdateRelationalDatabaseResult -> String -- List (String, String)
updateRelationalDatabaseResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AllocateStaticIpRequest =
    { staticIpName : String
    }


{-| undefined
-}
type alias AttachDiskRequest =
    { diskName : String
    , instanceName : String
    , diskPath : String
    }


{-| undefined
-}
type alias AttachInstancesToLoadBalancerRequest =
    { loadBalancerName : String
    , instanceNames : (List String)
    }


{-| undefined
-}
type alias AttachLoadBalancerTlsCertificateRequest =
    { loadBalancerName : String
    , certificateName : String
    }


{-| undefined
-}
type alias AttachStaticIpRequest =
    { staticIpName : String
    , instanceName : String
    }


{-| undefined
-}
type alias CloseInstancePublicPortsRequest =
    { portInfo : PortInfo
    , instanceName : String
    }


{-| undefined
-}
type alias CopySnapshotRequest =
    { sourceSnapshotName : String
    , targetSnapshotName : String
    , sourceRegion : RegionName
    }


{-| undefined
-}
type alias CreateCloudFormationStackRequest =
    { instances : (List InstanceEntry)
    }


{-| undefined
-}
type alias CreateDiskFromSnapshotRequest =
    { diskName : String
    , diskSnapshotName : String
    , availabilityZone : String
    , sizeInGb : Int
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateDiskRequest =
    { diskName : String
    , availabilityZone : String
    , sizeInGb : Int
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateDiskSnapshotRequest =
    { diskName : Maybe String
    , diskSnapshotName : String
    , instanceName : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateDomainEntryRequest =
    { domainName : String
    , domainEntry : DomainEntry
    }


{-| undefined
-}
type alias CreateDomainRequest =
    { domainName : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateInstanceSnapshotRequest =
    { instanceSnapshotName : String
    , instanceName : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateInstancesFromSnapshotRequest =
    { instanceNames : (List String)
    , attachedDiskMapping : Maybe (Dict String (List DiskMap))
    , availabilityZone : String
    , instanceSnapshotName : String
    , bundleId : String
    , userData : Maybe String
    , keyPairName : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateInstancesRequest =
    { instanceNames : (List String)
    , availabilityZone : String
    , customImageName : Maybe String
    , blueprintId : String
    , bundleId : String
    , userData : Maybe String
    , keyPairName : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateKeyPairRequest =
    { keyPairName : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateLoadBalancerRequest =
    { loadBalancerName : String
    , instancePort : Int
    , healthCheckPath : Maybe String
    , certificateName : Maybe String
    , certificateDomainName : Maybe String
    , certificateAlternativeNames : Maybe (List String)
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateLoadBalancerTlsCertificateRequest =
    { loadBalancerName : String
    , certificateName : String
    , certificateDomainName : String
    , certificateAlternativeNames : Maybe (List String)
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateRelationalDatabaseFromSnapshotRequest =
    { relationalDatabaseName : String
    , availabilityZone : Maybe String
    , publiclyAccessible : Maybe Bool
    , relationalDatabaseSnapshotName : Maybe String
    , relationalDatabaseBundleId : Maybe String
    , sourceRelationalDatabaseName : Maybe String
    , restoreTime : Maybe Posix
    , useLatestRestorableTime : Maybe Bool
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateRelationalDatabaseRequest =
    { relationalDatabaseName : String
    , availabilityZone : Maybe String
    , relationalDatabaseBlueprintId : String
    , relationalDatabaseBundleId : String
    , masterDatabaseName : String
    , masterUsername : String
    , masterUserPassword : Maybe String
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , publiclyAccessible : Maybe Bool
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateRelationalDatabaseSnapshotRequest =
    { relationalDatabaseName : String
    , relationalDatabaseSnapshotName : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias DeleteDiskRequest =
    { diskName : String
    }


{-| undefined
-}
type alias DeleteDiskSnapshotRequest =
    { diskSnapshotName : String
    }


{-| undefined
-}
type alias DeleteDomainEntryRequest =
    { domainName : String
    , domainEntry : DomainEntry
    }


{-| undefined
-}
type alias DeleteDomainRequest =
    { domainName : String
    }


{-| undefined
-}
type alias DeleteInstanceRequest =
    { instanceName : String
    }


{-| undefined
-}
type alias DeleteInstanceSnapshotRequest =
    { instanceSnapshotName : String
    }


{-| undefined
-}
type alias DeleteKeyPairRequest =
    { keyPairName : String
    }


{-| undefined
-}
type alias DeleteKnownHostKeysRequest =
    { instanceName : String
    }


{-| undefined
-}
type alias DeleteLoadBalancerRequest =
    { loadBalancerName : String
    }


{-| undefined
-}
type alias DeleteLoadBalancerTlsCertificateRequest =
    { loadBalancerName : String
    , certificateName : String
    , force : Maybe Bool
    }


{-| undefined
-}
type alias DeleteRelationalDatabaseRequest =
    { relationalDatabaseName : String
    , skipFinalSnapshot : Maybe Bool
    , finalRelationalDatabaseSnapshotName : Maybe String
    }


{-| undefined
-}
type alias DeleteRelationalDatabaseSnapshotRequest =
    { relationalDatabaseSnapshotName : String
    }


{-| undefined
-}
type alias DetachDiskRequest =
    { diskName : String
    }


{-| undefined
-}
type alias DetachInstancesFromLoadBalancerRequest =
    { loadBalancerName : String
    , instanceNames : (List String)
    }


{-| undefined
-}
type alias DetachStaticIpRequest =
    { staticIpName : String
    }


{-| undefined
-}
type alias DownloadDefaultKeyPairRequest =
    { 
    }


{-| undefined
-}
type alias ExportSnapshotRequest =
    { sourceSnapshotName : String
    }


{-| undefined
-}
type alias GetActiveNamesRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetBlueprintsRequest =
    { includeInactive : Maybe Bool
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias GetBundlesRequest =
    { includeInactive : Maybe Bool
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias GetCloudFormationStackRecordsRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetDiskRequest =
    { diskName : String
    }


{-| undefined
-}
type alias GetDiskSnapshotRequest =
    { diskSnapshotName : String
    }


{-| undefined
-}
type alias GetDiskSnapshotsRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetDisksRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetDomainRequest =
    { domainName : String
    }


{-| undefined
-}
type alias GetDomainsRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetExportSnapshotRecordsRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetInstanceAccessDetailsRequest =
    { instanceName : String
    , protocol : Maybe InstanceAccessProtocol
    }


{-| undefined
-}
type alias GetInstanceMetricDataRequest =
    { instanceName : String
    , metricName : InstanceMetricName
    , period : Int
    , startTime : Posix
    , endTime : Posix
    , unit : MetricUnit
    , statistics : (List MetricStatistic)
    }


{-| undefined
-}
type alias GetInstancePortStatesRequest =
    { instanceName : String
    }


{-| undefined
-}
type alias GetInstanceRequest =
    { instanceName : String
    }


{-| undefined
-}
type alias GetInstanceSnapshotRequest =
    { instanceSnapshotName : String
    }


{-| undefined
-}
type alias GetInstanceSnapshotsRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetInstanceStateRequest =
    { instanceName : String
    }


{-| undefined
-}
type alias GetInstancesRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetKeyPairRequest =
    { keyPairName : String
    }


{-| undefined
-}
type alias GetKeyPairsRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetLoadBalancerMetricDataRequest =
    { loadBalancerName : String
    , metricName : LoadBalancerMetricName
    , period : Int
    , startTime : Posix
    , endTime : Posix
    , unit : MetricUnit
    , statistics : (List MetricStatistic)
    }


{-| undefined
-}
type alias GetLoadBalancerRequest =
    { loadBalancerName : String
    }


{-| undefined
-}
type alias GetLoadBalancerTlsCertificatesRequest =
    { loadBalancerName : String
    }


{-| undefined
-}
type alias GetLoadBalancersRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetOperationRequest =
    { operationId : String
    }


{-| undefined
-}
type alias GetOperationsForResourceRequest =
    { resourceName : String
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias GetOperationsRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetRegionsRequest =
    { includeAvailabilityZones : Maybe Bool
    , includeRelationalDatabaseAvailabilityZones : Maybe Bool
    }


{-| undefined
-}
type alias GetRelationalDatabaseBlueprintsRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetRelationalDatabaseBundlesRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetRelationalDatabaseEventsRequest =
    { relationalDatabaseName : String
    , durationInMinutes : Maybe Int
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias GetRelationalDatabaseLogEventsRequest =
    { relationalDatabaseName : String
    , logStreamName : String
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , startFromHead : Maybe Bool
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias GetRelationalDatabaseLogStreamsRequest =
    { relationalDatabaseName : String
    }


{-| undefined
-}
type alias GetRelationalDatabaseMasterUserPasswordRequest =
    { relationalDatabaseName : String
    , passwordVersion : Maybe RelationalDatabasePasswordVersion
    }


{-| undefined
-}
type alias GetRelationalDatabaseMetricDataRequest =
    { relationalDatabaseName : String
    , metricName : RelationalDatabaseMetricName
    , period : Int
    , startTime : Posix
    , endTime : Posix
    , unit : MetricUnit
    , statistics : (List MetricStatistic)
    }


{-| undefined
-}
type alias GetRelationalDatabaseParametersRequest =
    { relationalDatabaseName : String
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias GetRelationalDatabaseRequest =
    { relationalDatabaseName : String
    }


{-| undefined
-}
type alias GetRelationalDatabaseSnapshotRequest =
    { relationalDatabaseSnapshotName : String
    }


{-| undefined
-}
type alias GetRelationalDatabaseSnapshotsRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetRelationalDatabasesRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias GetStaticIpRequest =
    { staticIpName : String
    }


{-| undefined
-}
type alias GetStaticIpsRequest =
    { pageToken : Maybe String
    }


{-| undefined
-}
type alias ImportKeyPairRequest =
    { keyPairName : String
    , publicKeyBase64 : String
    }


{-| undefined
-}
type alias IsVpcPeeredRequest =
    { 
    }


{-| undefined
-}
type alias OpenInstancePublicPortsRequest =
    { portInfo : PortInfo
    , instanceName : String
    }


{-| undefined
-}
type alias PeerVpcRequest =
    { 
    }


{-| undefined
-}
type alias PutInstancePublicPortsRequest =
    { portInfos : (List PortInfo)
    , instanceName : String
    }


{-| undefined
-}
type alias RebootInstanceRequest =
    { instanceName : String
    }


{-| undefined
-}
type alias RebootRelationalDatabaseRequest =
    { relationalDatabaseName : String
    }


{-| undefined
-}
type alias ReleaseStaticIpRequest =
    { staticIpName : String
    }


{-| undefined
-}
type alias StartInstanceRequest =
    { instanceName : String
    }


{-| undefined
-}
type alias StartRelationalDatabaseRequest =
    { relationalDatabaseName : String
    }


{-| undefined
-}
type alias StopInstanceRequest =
    { instanceName : String
    , force : Maybe Bool
    }


{-| undefined
-}
type alias StopRelationalDatabaseRequest =
    { relationalDatabaseName : String
    , relationalDatabaseSnapshotName : Maybe String
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceName : String
    , tags : (List Tag)
    }


{-| undefined
-}
type alias UnpeerVpcRequest =
    { 
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceName : String
    , tagKeys : (List String)
    }


{-| undefined
-}
type alias UpdateDomainEntryRequest =
    { domainName : String
    , domainEntry : DomainEntry
    }


{-| undefined
-}
type alias UpdateLoadBalancerAttributeRequest =
    { loadBalancerName : String
    , attributeName : LoadBalancerAttributeName
    , attributeValue : String
    }


{-| undefined
-}
type alias UpdateRelationalDatabaseParametersRequest =
    { relationalDatabaseName : String
    , parameters : (List RelationalDatabaseParameter)
    }


{-| undefined
-}
type alias UpdateRelationalDatabaseRequest =
    { relationalDatabaseName : String
    , masterUserPassword : Maybe String
    , rotateMasterUserPassword : Maybe Bool
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , enableBackupRetention : Maybe Bool
    , disableBackupRetention : Maybe Bool
    , publiclyAccessible : Maybe Bool
    , applyImmediately : Maybe Bool
    }










allocateStaticIpRequestEncoder : AllocateStaticIpRequest -> JE.Value
allocateStaticIpRequestEncoder data =
    []
        
        
        |> (::) ("staticIpName", data.staticIpName |> (JE.string))
        
        
        |> JE.object






allocateStaticIpResultEncoder : AllocateStaticIpResult -> JE.Value
allocateStaticIpResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






attachDiskRequestEncoder : AttachDiskRequest -> JE.Value
attachDiskRequestEncoder data =
    []
        
        
        |> (::) ("diskName", data.diskName |> (JE.string))
        
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        
        |> (::) ("diskPath", data.diskPath |> (JE.string))
        
        
        |> JE.object






attachDiskResultEncoder : AttachDiskResult -> JE.Value
attachDiskResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






attachInstancesToLoadBalancerRequestEncoder : AttachInstancesToLoadBalancerRequest -> JE.Value
attachInstancesToLoadBalancerRequestEncoder data =
    []
        
        
        |> (::) ("loadBalancerName", data.loadBalancerName |> (JE.string))
        
        
        
        |> (::) ("instanceNames", data.instanceNames |> (JE.list (JE.string)))
        
        
        |> JE.object






attachInstancesToLoadBalancerResultEncoder : AttachInstancesToLoadBalancerResult -> JE.Value
attachInstancesToLoadBalancerResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






attachLoadBalancerTlsCertificateRequestEncoder : AttachLoadBalancerTlsCertificateRequest -> JE.Value
attachLoadBalancerTlsCertificateRequestEncoder data =
    []
        
        
        |> (::) ("loadBalancerName", data.loadBalancerName |> (JE.string))
        
        
        
        |> (::) ("certificateName", data.certificateName |> (JE.string))
        
        
        |> JE.object






attachLoadBalancerTlsCertificateResultEncoder : AttachLoadBalancerTlsCertificateResult -> JE.Value
attachLoadBalancerTlsCertificateResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






attachStaticIpRequestEncoder : AttachStaticIpRequest -> JE.Value
attachStaticIpRequestEncoder data =
    []
        
        
        |> (::) ("staticIpName", data.staticIpName |> (JE.string))
        
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        |> JE.object






attachStaticIpResultEncoder : AttachStaticIpResult -> JE.Value
attachStaticIpResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






availabilityZoneEncoder : AvailabilityZone -> JE.Value
availabilityZoneEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("zoneName", data.zoneName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("state", data.state)
        
        
        |> JE.object






blueprintEncoder : Blueprint -> JE.Value
blueprintEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("blueprintId", data.blueprintId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("group", data.group)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (blueprintTypeToString >> JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isActive", data.isActive)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("minPower", data.minPower)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("versionCode", data.versionCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("productUrl", data.productUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("licenseUrl", data.licenseUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instancePlatformToString >> JE.string)
            ("platform", data.platform)
        
        
        |> JE.object










bundleEncoder : Bundle -> JE.Value
bundleEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("price", data.price)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("cpuCount", data.cpuCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("diskSizeInGb", data.diskSizeInGb)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("bundleId", data.bundleId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("instanceType", data.instanceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isActive", data.isActive)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("power", data.power)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("ramSizeInGb", data.ramSizeInGb)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("transferPerMonthInGb", data.transferPerMonthInGb)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (instancePlatformToString >> JE.string))
            ("supportedPlatforms", data.supportedPlatforms)
        
        
        |> JE.object






closeInstancePublicPortsRequestEncoder : CloseInstancePublicPortsRequest -> JE.Value
closeInstancePublicPortsRequestEncoder data =
    []
        
        
        |> (::) ("portInfo", data.portInfo |> (portInfoEncoder))
        
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        |> JE.object






closeInstancePublicPortsResultEncoder : CloseInstancePublicPortsResult -> JE.Value
closeInstancePublicPortsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






cloudFormationStackRecordEncoder : CloudFormationStackRecord -> JE.Value
cloudFormationStackRecordEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (recordStateToString >> JE.string)
            ("state", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (cloudFormationStackRecordSourceInfoEncoder))
            ("sourceInfo", data.sourceInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (destinationInfoEncoder)
            ("destinationInfo", data.destinationInfo)
        
        
        |> JE.object






cloudFormationStackRecordSourceInfoEncoder : CloudFormationStackRecordSourceInfo -> JE.Value
cloudFormationStackRecordSourceInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (cloudFormationStackRecordSourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        |> JE.object










copySnapshotRequestEncoder : CopySnapshotRequest -> JE.Value
copySnapshotRequestEncoder data =
    []
        
        
        |> (::) ("sourceSnapshotName", data.sourceSnapshotName |> (JE.string))
        
        
        
        |> (::) ("targetSnapshotName", data.targetSnapshotName |> (JE.string))
        
        
        
        |> (::) ("sourceRegion", data.sourceRegion |> (regionNameToString >> JE.string))
        
        
        |> JE.object






copySnapshotResultEncoder : CopySnapshotResult -> JE.Value
copySnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






createCloudFormationStackRequestEncoder : CreateCloudFormationStackRequest -> JE.Value
createCloudFormationStackRequestEncoder data =
    []
        
        
        |> (::) ("instances", data.instances |> (JE.list (instanceEntryEncoder)))
        
        
        |> JE.object






createCloudFormationStackResultEncoder : CreateCloudFormationStackResult -> JE.Value
createCloudFormationStackResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






createDiskFromSnapshotRequestEncoder : CreateDiskFromSnapshotRequest -> JE.Value
createDiskFromSnapshotRequestEncoder data =
    []
        
        
        |> (::) ("diskName", data.diskName |> (JE.string))
        
        
        
        |> (::) ("diskSnapshotName", data.diskSnapshotName |> (JE.string))
        
        
        
        |> (::) ("availabilityZone", data.availabilityZone |> (JE.string))
        
        
        
        |> (::) ("sizeInGb", data.sizeInGb |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createDiskFromSnapshotResultEncoder : CreateDiskFromSnapshotResult -> JE.Value
createDiskFromSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






createDiskRequestEncoder : CreateDiskRequest -> JE.Value
createDiskRequestEncoder data =
    []
        
        
        |> (::) ("diskName", data.diskName |> (JE.string))
        
        
        
        |> (::) ("availabilityZone", data.availabilityZone |> (JE.string))
        
        
        
        |> (::) ("sizeInGb", data.sizeInGb |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createDiskResultEncoder : CreateDiskResult -> JE.Value
createDiskResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






createDiskSnapshotRequestEncoder : CreateDiskSnapshotRequest -> JE.Value
createDiskSnapshotRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("diskName", data.diskName)
        
        
        
        |> (::) ("diskSnapshotName", data.diskSnapshotName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("instanceName", data.instanceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createDiskSnapshotResultEncoder : CreateDiskSnapshotResult -> JE.Value
createDiskSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






createDomainEntryRequestEncoder : CreateDomainEntryRequest -> JE.Value
createDomainEntryRequestEncoder data =
    []
        
        
        |> (::) ("domainName", data.domainName |> (JE.string))
        
        
        
        |> (::) ("domainEntry", data.domainEntry |> (domainEntryEncoder))
        
        
        |> JE.object






createDomainEntryResultEncoder : CreateDomainEntryResult -> JE.Value
createDomainEntryResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






createDomainRequestEncoder : CreateDomainRequest -> JE.Value
createDomainRequestEncoder data =
    []
        
        
        |> (::) ("domainName", data.domainName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createDomainResultEncoder : CreateDomainResult -> JE.Value
createDomainResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






createInstanceSnapshotRequestEncoder : CreateInstanceSnapshotRequest -> JE.Value
createInstanceSnapshotRequestEncoder data =
    []
        
        
        |> (::) ("instanceSnapshotName", data.instanceSnapshotName |> (JE.string))
        
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createInstanceSnapshotResultEncoder : CreateInstanceSnapshotResult -> JE.Value
createInstanceSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






createInstancesFromSnapshotRequestEncoder : CreateInstancesFromSnapshotRequest -> JE.Value
createInstancesFromSnapshotRequestEncoder data =
    []
        
        
        |> (::) ("instanceNames", data.instanceNames |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.list (diskMapEncoder)))
            ("attachedDiskMapping", data.attachedDiskMapping)
        
        
        
        |> (::) ("availabilityZone", data.availabilityZone |> (JE.string))
        
        
        
        |> (::) ("instanceSnapshotName", data.instanceSnapshotName |> (JE.string))
        
        
        
        |> (::) ("bundleId", data.bundleId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("userData", data.userData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("keyPairName", data.keyPairName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createInstancesFromSnapshotResultEncoder : CreateInstancesFromSnapshotResult -> JE.Value
createInstancesFromSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






createInstancesRequestEncoder : CreateInstancesRequest -> JE.Value
createInstancesRequestEncoder data =
    []
        
        
        |> (::) ("instanceNames", data.instanceNames |> (JE.list (JE.string)))
        
        
        
        |> (::) ("availabilityZone", data.availabilityZone |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customImageName", data.customImageName)
        
        
        
        |> (::) ("blueprintId", data.blueprintId |> (JE.string))
        
        
        
        |> (::) ("bundleId", data.bundleId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("userData", data.userData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("keyPairName", data.keyPairName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createInstancesResultEncoder : CreateInstancesResult -> JE.Value
createInstancesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






createKeyPairRequestEncoder : CreateKeyPairRequest -> JE.Value
createKeyPairRequestEncoder data =
    []
        
        
        |> (::) ("keyPairName", data.keyPairName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createKeyPairResultEncoder : CreateKeyPairResult -> JE.Value
createKeyPairResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (keyPairEncoder)
            ("keyPair", data.keyPair)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("publicKeyBase64", data.publicKeyBase64)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("privateKeyBase64", data.privateKeyBase64)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






createLoadBalancerRequestEncoder : CreateLoadBalancerRequest -> JE.Value
createLoadBalancerRequestEncoder data =
    []
        
        
        |> (::) ("loadBalancerName", data.loadBalancerName |> (JE.string))
        
        
        
        |> (::) ("instancePort", data.instancePort |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("healthCheckPath", data.healthCheckPath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("certificateName", data.certificateName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("certificateDomainName", data.certificateDomainName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("certificateAlternativeNames", data.certificateAlternativeNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createLoadBalancerResultEncoder : CreateLoadBalancerResult -> JE.Value
createLoadBalancerResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






createLoadBalancerTlsCertificateRequestEncoder : CreateLoadBalancerTlsCertificateRequest -> JE.Value
createLoadBalancerTlsCertificateRequestEncoder data =
    []
        
        
        |> (::) ("loadBalancerName", data.loadBalancerName |> (JE.string))
        
        
        
        |> (::) ("certificateName", data.certificateName |> (JE.string))
        
        
        
        |> (::) ("certificateDomainName", data.certificateDomainName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("certificateAlternativeNames", data.certificateAlternativeNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createLoadBalancerTlsCertificateResultEncoder : CreateLoadBalancerTlsCertificateResult -> JE.Value
createLoadBalancerTlsCertificateResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






createRelationalDatabaseFromSnapshotRequestEncoder : CreateRelationalDatabaseFromSnapshotRequest -> JE.Value
createRelationalDatabaseFromSnapshotRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("availabilityZone", data.availabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("publiclyAccessible", data.publiclyAccessible)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("relationalDatabaseSnapshotName", data.relationalDatabaseSnapshotName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("relationalDatabaseBundleId", data.relationalDatabaseBundleId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceRelationalDatabaseName", data.sourceRelationalDatabaseName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("restoreTime", data.restoreTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("useLatestRestorableTime", data.useLatestRestorableTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createRelationalDatabaseFromSnapshotResultEncoder : CreateRelationalDatabaseFromSnapshotResult -> JE.Value
createRelationalDatabaseFromSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






createRelationalDatabaseRequestEncoder : CreateRelationalDatabaseRequest -> JE.Value
createRelationalDatabaseRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("availabilityZone", data.availabilityZone)
        
        
        
        |> (::) ("relationalDatabaseBlueprintId", data.relationalDatabaseBlueprintId |> (JE.string))
        
        
        
        |> (::) ("relationalDatabaseBundleId", data.relationalDatabaseBundleId |> (JE.string))
        
        
        
        |> (::) ("masterDatabaseName", data.masterDatabaseName |> (JE.string))
        
        
        
        |> (::) ("masterUsername", data.masterUsername |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("masterUserPassword", data.masterUserPassword)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("preferredBackupWindow", data.preferredBackupWindow)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("preferredMaintenanceWindow", data.preferredMaintenanceWindow)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("publiclyAccessible", data.publiclyAccessible)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createRelationalDatabaseResultEncoder : CreateRelationalDatabaseResult -> JE.Value
createRelationalDatabaseResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






createRelationalDatabaseSnapshotRequestEncoder : CreateRelationalDatabaseSnapshotRequest -> JE.Value
createRelationalDatabaseSnapshotRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        
        |> (::) ("relationalDatabaseSnapshotName", data.relationalDatabaseSnapshotName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        |> JE.object






createRelationalDatabaseSnapshotResultEncoder : CreateRelationalDatabaseSnapshotResult -> JE.Value
createRelationalDatabaseSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






deleteDiskRequestEncoder : DeleteDiskRequest -> JE.Value
deleteDiskRequestEncoder data =
    []
        
        
        |> (::) ("diskName", data.diskName |> (JE.string))
        
        
        |> JE.object






deleteDiskResultEncoder : DeleteDiskResult -> JE.Value
deleteDiskResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






deleteDiskSnapshotRequestEncoder : DeleteDiskSnapshotRequest -> JE.Value
deleteDiskSnapshotRequestEncoder data =
    []
        
        
        |> (::) ("diskSnapshotName", data.diskSnapshotName |> (JE.string))
        
        
        |> JE.object






deleteDiskSnapshotResultEncoder : DeleteDiskSnapshotResult -> JE.Value
deleteDiskSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






deleteDomainEntryRequestEncoder : DeleteDomainEntryRequest -> JE.Value
deleteDomainEntryRequestEncoder data =
    []
        
        
        |> (::) ("domainName", data.domainName |> (JE.string))
        
        
        
        |> (::) ("domainEntry", data.domainEntry |> (domainEntryEncoder))
        
        
        |> JE.object






deleteDomainEntryResultEncoder : DeleteDomainEntryResult -> JE.Value
deleteDomainEntryResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






deleteDomainRequestEncoder : DeleteDomainRequest -> JE.Value
deleteDomainRequestEncoder data =
    []
        
        
        |> (::) ("domainName", data.domainName |> (JE.string))
        
        
        |> JE.object






deleteDomainResultEncoder : DeleteDomainResult -> JE.Value
deleteDomainResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






deleteInstanceRequestEncoder : DeleteInstanceRequest -> JE.Value
deleteInstanceRequestEncoder data =
    []
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        |> JE.object






deleteInstanceResultEncoder : DeleteInstanceResult -> JE.Value
deleteInstanceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






deleteInstanceSnapshotRequestEncoder : DeleteInstanceSnapshotRequest -> JE.Value
deleteInstanceSnapshotRequestEncoder data =
    []
        
        
        |> (::) ("instanceSnapshotName", data.instanceSnapshotName |> (JE.string))
        
        
        |> JE.object






deleteInstanceSnapshotResultEncoder : DeleteInstanceSnapshotResult -> JE.Value
deleteInstanceSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






deleteKeyPairRequestEncoder : DeleteKeyPairRequest -> JE.Value
deleteKeyPairRequestEncoder data =
    []
        
        
        |> (::) ("keyPairName", data.keyPairName |> (JE.string))
        
        
        |> JE.object






deleteKeyPairResultEncoder : DeleteKeyPairResult -> JE.Value
deleteKeyPairResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






deleteKnownHostKeysRequestEncoder : DeleteKnownHostKeysRequest -> JE.Value
deleteKnownHostKeysRequestEncoder data =
    []
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        |> JE.object






deleteKnownHostKeysResultEncoder : DeleteKnownHostKeysResult -> JE.Value
deleteKnownHostKeysResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






deleteLoadBalancerRequestEncoder : DeleteLoadBalancerRequest -> JE.Value
deleteLoadBalancerRequestEncoder data =
    []
        
        
        |> (::) ("loadBalancerName", data.loadBalancerName |> (JE.string))
        
        
        |> JE.object






deleteLoadBalancerResultEncoder : DeleteLoadBalancerResult -> JE.Value
deleteLoadBalancerResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






deleteLoadBalancerTlsCertificateRequestEncoder : DeleteLoadBalancerTlsCertificateRequest -> JE.Value
deleteLoadBalancerTlsCertificateRequestEncoder data =
    []
        
        
        |> (::) ("loadBalancerName", data.loadBalancerName |> (JE.string))
        
        
        
        |> (::) ("certificateName", data.certificateName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("force", data.force)
        
        
        |> JE.object






deleteLoadBalancerTlsCertificateResultEncoder : DeleteLoadBalancerTlsCertificateResult -> JE.Value
deleteLoadBalancerTlsCertificateResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






deleteRelationalDatabaseRequestEncoder : DeleteRelationalDatabaseRequest -> JE.Value
deleteRelationalDatabaseRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("skipFinalSnapshot", data.skipFinalSnapshot)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("finalRelationalDatabaseSnapshotName", data.finalRelationalDatabaseSnapshotName)
        
        
        |> JE.object






deleteRelationalDatabaseResultEncoder : DeleteRelationalDatabaseResult -> JE.Value
deleteRelationalDatabaseResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






deleteRelationalDatabaseSnapshotRequestEncoder : DeleteRelationalDatabaseSnapshotRequest -> JE.Value
deleteRelationalDatabaseSnapshotRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseSnapshotName", data.relationalDatabaseSnapshotName |> (JE.string))
        
        
        |> JE.object






deleteRelationalDatabaseSnapshotResultEncoder : DeleteRelationalDatabaseSnapshotResult -> JE.Value
deleteRelationalDatabaseSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






destinationInfoEncoder : DestinationInfo -> JE.Value
destinationInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("service", data.service)
        
        
        |> JE.object






detachDiskRequestEncoder : DetachDiskRequest -> JE.Value
detachDiskRequestEncoder data =
    []
        
        
        |> (::) ("diskName", data.diskName |> (JE.string))
        
        
        |> JE.object






detachDiskResultEncoder : DetachDiskResult -> JE.Value
detachDiskResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






detachInstancesFromLoadBalancerRequestEncoder : DetachInstancesFromLoadBalancerRequest -> JE.Value
detachInstancesFromLoadBalancerRequestEncoder data =
    []
        
        
        |> (::) ("loadBalancerName", data.loadBalancerName |> (JE.string))
        
        
        
        |> (::) ("instanceNames", data.instanceNames |> (JE.list (JE.string)))
        
        
        |> JE.object






detachInstancesFromLoadBalancerResultEncoder : DetachInstancesFromLoadBalancerResult -> JE.Value
detachInstancesFromLoadBalancerResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






detachStaticIpRequestEncoder : DetachStaticIpRequest -> JE.Value
detachStaticIpRequestEncoder data =
    []
        
        
        |> (::) ("staticIpName", data.staticIpName |> (JE.string))
        
        
        |> JE.object






detachStaticIpResultEncoder : DetachStaticIpResult -> JE.Value
detachStaticIpResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






diskEncoder : Disk -> JE.Value
diskEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("supportCode", data.supportCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("sizeInGb", data.sizeInGb)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isSystemDisk", data.isSystemDisk)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("iops", data.iops)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("path", data.path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (diskStateToString >> JE.string)
            ("state", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("attachedTo", data.attachedTo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isAttached", data.isAttached)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("attachmentState", data.attachmentState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("gbInUse", data.gbInUse)
        
        
        |> JE.object






diskInfoEncoder : DiskInfo -> JE.Value
diskInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("path", data.path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("sizeInGb", data.sizeInGb)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isSystemDisk", data.isSystemDisk)
        
        
        |> JE.object






diskMapEncoder : DiskMap -> JE.Value
diskMapEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("originalDiskPath", data.originalDiskPath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("newDiskName", data.newDiskName)
        
        
        |> JE.object






diskSnapshotEncoder : DiskSnapshot -> JE.Value
diskSnapshotEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("supportCode", data.supportCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("sizeInGb", data.sizeInGb)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (diskSnapshotStateToString >> JE.string)
            ("state", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("progress", data.progress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromDiskName", data.fromDiskName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromDiskArn", data.fromDiskArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromInstanceName", data.fromInstanceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromInstanceArn", data.fromInstanceArn)
        
        
        |> JE.object






diskSnapshotInfoEncoder : DiskSnapshotInfo -> JE.Value
diskSnapshotInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("sizeInGb", data.sizeInGb)
        
        
        |> JE.object














domainEncoder : Domain -> JE.Value
domainEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("supportCode", data.supportCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (domainEntryEncoder))
            ("domainEntries", data.domainEntries)
        
        
        |> JE.object






domainEntryEncoder : DomainEntry -> JE.Value
domainEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("target", data.target)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isAlias", data.isAlias)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("options", data.options)
        
        
        |> JE.object






downloadDefaultKeyPairRequestEncoder : DownloadDefaultKeyPairRequest -> JE.Value
downloadDefaultKeyPairRequestEncoder data =
    []
        
        |> JE.object






downloadDefaultKeyPairResultEncoder : DownloadDefaultKeyPairResult -> JE.Value
downloadDefaultKeyPairResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("publicKeyBase64", data.publicKeyBase64)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("privateKeyBase64", data.privateKeyBase64)
        
        
        |> JE.object






exportSnapshotRecordEncoder : ExportSnapshotRecord -> JE.Value
exportSnapshotRecordEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (recordStateToString >> JE.string)
            ("state", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (exportSnapshotRecordSourceInfoEncoder)
            ("sourceInfo", data.sourceInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (destinationInfoEncoder)
            ("destinationInfo", data.destinationInfo)
        
        
        |> JE.object






exportSnapshotRecordSourceInfoEncoder : ExportSnapshotRecordSourceInfo -> JE.Value
exportSnapshotRecordSourceInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (exportSnapshotRecordSourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromResourceName", data.fromResourceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromResourceArn", data.fromResourceArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceSnapshotInfoEncoder)
            ("instanceSnapshotInfo", data.instanceSnapshotInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (diskSnapshotInfoEncoder)
            ("diskSnapshotInfo", data.diskSnapshotInfo)
        
        
        |> JE.object










exportSnapshotRequestEncoder : ExportSnapshotRequest -> JE.Value
exportSnapshotRequestEncoder data =
    []
        
        
        |> (::) ("sourceSnapshotName", data.sourceSnapshotName |> (JE.string))
        
        
        |> JE.object






exportSnapshotResultEncoder : ExportSnapshotResult -> JE.Value
exportSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






getActiveNamesRequestEncoder : GetActiveNamesRequest -> JE.Value
getActiveNamesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getActiveNamesResultEncoder : GetActiveNamesResult -> JE.Value
getActiveNamesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("activeNames", data.activeNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getBlueprintsRequestEncoder : GetBlueprintsRequest -> JE.Value
getBlueprintsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("includeInactive", data.includeInactive)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getBlueprintsResultEncoder : GetBlueprintsResult -> JE.Value
getBlueprintsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (blueprintEncoder))
            ("blueprints", data.blueprints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getBundlesRequestEncoder : GetBundlesRequest -> JE.Value
getBundlesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("includeInactive", data.includeInactive)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getBundlesResultEncoder : GetBundlesResult -> JE.Value
getBundlesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (bundleEncoder))
            ("bundles", data.bundles)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getCloudFormationStackRecordsRequestEncoder : GetCloudFormationStackRecordsRequest -> JE.Value
getCloudFormationStackRecordsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getCloudFormationStackRecordsResultEncoder : GetCloudFormationStackRecordsResult -> JE.Value
getCloudFormationStackRecordsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (cloudFormationStackRecordEncoder))
            ("cloudFormationStackRecords", data.cloudFormationStackRecords)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getDiskRequestEncoder : GetDiskRequest -> JE.Value
getDiskRequestEncoder data =
    []
        
        
        |> (::) ("diskName", data.diskName |> (JE.string))
        
        
        |> JE.object






getDiskResultEncoder : GetDiskResult -> JE.Value
getDiskResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (diskEncoder)
            ("disk", data.disk)
        
        
        |> JE.object






getDiskSnapshotRequestEncoder : GetDiskSnapshotRequest -> JE.Value
getDiskSnapshotRequestEncoder data =
    []
        
        
        |> (::) ("diskSnapshotName", data.diskSnapshotName |> (JE.string))
        
        
        |> JE.object






getDiskSnapshotResultEncoder : GetDiskSnapshotResult -> JE.Value
getDiskSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (diskSnapshotEncoder)
            ("diskSnapshot", data.diskSnapshot)
        
        
        |> JE.object






getDiskSnapshotsRequestEncoder : GetDiskSnapshotsRequest -> JE.Value
getDiskSnapshotsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getDiskSnapshotsResultEncoder : GetDiskSnapshotsResult -> JE.Value
getDiskSnapshotsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (diskSnapshotEncoder))
            ("diskSnapshots", data.diskSnapshots)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getDisksRequestEncoder : GetDisksRequest -> JE.Value
getDisksRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getDisksResultEncoder : GetDisksResult -> JE.Value
getDisksResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (diskEncoder))
            ("disks", data.disks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getDomainRequestEncoder : GetDomainRequest -> JE.Value
getDomainRequestEncoder data =
    []
        
        
        |> (::) ("domainName", data.domainName |> (JE.string))
        
        
        |> JE.object






getDomainResultEncoder : GetDomainResult -> JE.Value
getDomainResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (domainEncoder)
            ("domain", data.domain)
        
        
        |> JE.object






getDomainsRequestEncoder : GetDomainsRequest -> JE.Value
getDomainsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getDomainsResultEncoder : GetDomainsResult -> JE.Value
getDomainsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (domainEncoder))
            ("domains", data.domains)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getExportSnapshotRecordsRequestEncoder : GetExportSnapshotRecordsRequest -> JE.Value
getExportSnapshotRecordsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getExportSnapshotRecordsResultEncoder : GetExportSnapshotRecordsResult -> JE.Value
getExportSnapshotRecordsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (exportSnapshotRecordEncoder))
            ("exportSnapshotRecords", data.exportSnapshotRecords)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getInstanceAccessDetailsRequestEncoder : GetInstanceAccessDetailsRequest -> JE.Value
getInstanceAccessDetailsRequestEncoder data =
    []
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceAccessProtocolToString >> JE.string)
            ("protocol", data.protocol)
        
        
        |> JE.object






getInstanceAccessDetailsResultEncoder : GetInstanceAccessDetailsResult -> JE.Value
getInstanceAccessDetailsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceAccessDetailsEncoder)
            ("accessDetails", data.accessDetails)
        
        
        |> JE.object






getInstanceMetricDataRequestEncoder : GetInstanceMetricDataRequest -> JE.Value
getInstanceMetricDataRequestEncoder data =
    []
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        
        |> (::) ("metricName", data.metricName |> (instanceMetricNameToString >> JE.string))
        
        
        
        |> (::) ("period", data.period |> (JE.int))
        
        
        
        |> (::) ("startTime", data.startTime |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("endTime", data.endTime |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("unit", data.unit |> (metricUnitToString >> JE.string))
        
        
        
        |> (::) ("statistics", data.statistics |> (JE.list (metricStatisticToString >> JE.string)))
        
        
        |> JE.object






getInstanceMetricDataResultEncoder : GetInstanceMetricDataResult -> JE.Value
getInstanceMetricDataResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceMetricNameToString >> JE.string)
            ("metricName", data.metricName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (metricDatapointEncoder))
            ("metricData", data.metricData)
        
        
        |> JE.object






getInstancePortStatesRequestEncoder : GetInstancePortStatesRequest -> JE.Value
getInstancePortStatesRequestEncoder data =
    []
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        |> JE.object






getInstancePortStatesResultEncoder : GetInstancePortStatesResult -> JE.Value
getInstancePortStatesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (instancePortStateEncoder))
            ("portStates", data.portStates)
        
        
        |> JE.object






getInstanceRequestEncoder : GetInstanceRequest -> JE.Value
getInstanceRequestEncoder data =
    []
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        |> JE.object






getInstanceResultEncoder : GetInstanceResult -> JE.Value
getInstanceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceEncoder)
            ("instance", data.instance)
        
        
        |> JE.object






getInstanceSnapshotRequestEncoder : GetInstanceSnapshotRequest -> JE.Value
getInstanceSnapshotRequestEncoder data =
    []
        
        
        |> (::) ("instanceSnapshotName", data.instanceSnapshotName |> (JE.string))
        
        
        |> JE.object






getInstanceSnapshotResultEncoder : GetInstanceSnapshotResult -> JE.Value
getInstanceSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceSnapshotEncoder)
            ("instanceSnapshot", data.instanceSnapshot)
        
        
        |> JE.object






getInstanceSnapshotsRequestEncoder : GetInstanceSnapshotsRequest -> JE.Value
getInstanceSnapshotsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getInstanceSnapshotsResultEncoder : GetInstanceSnapshotsResult -> JE.Value
getInstanceSnapshotsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (instanceSnapshotEncoder))
            ("instanceSnapshots", data.instanceSnapshots)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getInstanceStateRequestEncoder : GetInstanceStateRequest -> JE.Value
getInstanceStateRequestEncoder data =
    []
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        |> JE.object






getInstanceStateResultEncoder : GetInstanceStateResult -> JE.Value
getInstanceStateResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceStateEncoder)
            ("state", data.state)
        
        
        |> JE.object






getInstancesRequestEncoder : GetInstancesRequest -> JE.Value
getInstancesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getInstancesResultEncoder : GetInstancesResult -> JE.Value
getInstancesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (instanceEncoder))
            ("instances", data.instances)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getKeyPairRequestEncoder : GetKeyPairRequest -> JE.Value
getKeyPairRequestEncoder data =
    []
        
        
        |> (::) ("keyPairName", data.keyPairName |> (JE.string))
        
        
        |> JE.object






getKeyPairResultEncoder : GetKeyPairResult -> JE.Value
getKeyPairResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (keyPairEncoder)
            ("keyPair", data.keyPair)
        
        
        |> JE.object






getKeyPairsRequestEncoder : GetKeyPairsRequest -> JE.Value
getKeyPairsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getKeyPairsResultEncoder : GetKeyPairsResult -> JE.Value
getKeyPairsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (keyPairEncoder))
            ("keyPairs", data.keyPairs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getLoadBalancerMetricDataRequestEncoder : GetLoadBalancerMetricDataRequest -> JE.Value
getLoadBalancerMetricDataRequestEncoder data =
    []
        
        
        |> (::) ("loadBalancerName", data.loadBalancerName |> (JE.string))
        
        
        
        |> (::) ("metricName", data.metricName |> (loadBalancerMetricNameToString >> JE.string))
        
        
        
        |> (::) ("period", data.period |> (JE.int))
        
        
        
        |> (::) ("startTime", data.startTime |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("endTime", data.endTime |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("unit", data.unit |> (metricUnitToString >> JE.string))
        
        
        
        |> (::) ("statistics", data.statistics |> (JE.list (metricStatisticToString >> JE.string)))
        
        
        |> JE.object






getLoadBalancerMetricDataResultEncoder : GetLoadBalancerMetricDataResult -> JE.Value
getLoadBalancerMetricDataResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (loadBalancerMetricNameToString >> JE.string)
            ("metricName", data.metricName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (metricDatapointEncoder))
            ("metricData", data.metricData)
        
        
        |> JE.object






getLoadBalancerRequestEncoder : GetLoadBalancerRequest -> JE.Value
getLoadBalancerRequestEncoder data =
    []
        
        
        |> (::) ("loadBalancerName", data.loadBalancerName |> (JE.string))
        
        
        |> JE.object






getLoadBalancerResultEncoder : GetLoadBalancerResult -> JE.Value
getLoadBalancerResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (loadBalancerEncoder)
            ("loadBalancer", data.loadBalancer)
        
        
        |> JE.object






getLoadBalancerTlsCertificatesRequestEncoder : GetLoadBalancerTlsCertificatesRequest -> JE.Value
getLoadBalancerTlsCertificatesRequestEncoder data =
    []
        
        
        |> (::) ("loadBalancerName", data.loadBalancerName |> (JE.string))
        
        
        |> JE.object






getLoadBalancerTlsCertificatesResultEncoder : GetLoadBalancerTlsCertificatesResult -> JE.Value
getLoadBalancerTlsCertificatesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (loadBalancerTlsCertificateEncoder))
            ("tlsCertificates", data.tlsCertificates)
        
        
        |> JE.object






getLoadBalancersRequestEncoder : GetLoadBalancersRequest -> JE.Value
getLoadBalancersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getLoadBalancersResultEncoder : GetLoadBalancersResult -> JE.Value
getLoadBalancersResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (loadBalancerEncoder))
            ("loadBalancers", data.loadBalancers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getOperationRequestEncoder : GetOperationRequest -> JE.Value
getOperationRequestEncoder data =
    []
        
        
        |> (::) ("operationId", data.operationId |> (JE.string))
        
        
        |> JE.object






getOperationResultEncoder : GetOperationResult -> JE.Value
getOperationResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






getOperationsForResourceRequestEncoder : GetOperationsForResourceRequest -> JE.Value
getOperationsForResourceRequestEncoder data =
    []
        
        
        |> (::) ("resourceName", data.resourceName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getOperationsForResourceResultEncoder : GetOperationsForResourceResult -> JE.Value
getOperationsForResourceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageCount", data.nextPageCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getOperationsRequestEncoder : GetOperationsRequest -> JE.Value
getOperationsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getOperationsResultEncoder : GetOperationsResult -> JE.Value
getOperationsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getRegionsRequestEncoder : GetRegionsRequest -> JE.Value
getRegionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("includeAvailabilityZones", data.includeAvailabilityZones)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("includeRelationalDatabaseAvailabilityZones", data.includeRelationalDatabaseAvailabilityZones)
        
        
        |> JE.object






getRegionsResultEncoder : GetRegionsResult -> JE.Value
getRegionsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (regionEncoder))
            ("regions", data.regions)
        
        
        |> JE.object






getRelationalDatabaseBlueprintsRequestEncoder : GetRelationalDatabaseBlueprintsRequest -> JE.Value
getRelationalDatabaseBlueprintsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getRelationalDatabaseBlueprintsResultEncoder : GetRelationalDatabaseBlueprintsResult -> JE.Value
getRelationalDatabaseBlueprintsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (relationalDatabaseBlueprintEncoder))
            ("blueprints", data.blueprints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getRelationalDatabaseBundlesRequestEncoder : GetRelationalDatabaseBundlesRequest -> JE.Value
getRelationalDatabaseBundlesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getRelationalDatabaseBundlesResultEncoder : GetRelationalDatabaseBundlesResult -> JE.Value
getRelationalDatabaseBundlesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (relationalDatabaseBundleEncoder))
            ("bundles", data.bundles)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getRelationalDatabaseEventsRequestEncoder : GetRelationalDatabaseEventsRequest -> JE.Value
getRelationalDatabaseEventsRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("durationInMinutes", data.durationInMinutes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getRelationalDatabaseEventsResultEncoder : GetRelationalDatabaseEventsResult -> JE.Value
getRelationalDatabaseEventsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (relationalDatabaseEventEncoder))
            ("relationalDatabaseEvents", data.relationalDatabaseEvents)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getRelationalDatabaseLogEventsRequestEncoder : GetRelationalDatabaseLogEventsRequest -> JE.Value
getRelationalDatabaseLogEventsRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        
        |> (::) ("logStreamName", data.logStreamName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("startTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("endTime", data.endTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("startFromHead", data.startFromHead)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getRelationalDatabaseLogEventsResultEncoder : GetRelationalDatabaseLogEventsResult -> JE.Value
getRelationalDatabaseLogEventsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (logEventEncoder))
            ("resourceLogEvents", data.resourceLogEvents)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextBackwardToken", data.nextBackwardToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextForwardToken", data.nextForwardToken)
        
        
        |> JE.object






getRelationalDatabaseLogStreamsRequestEncoder : GetRelationalDatabaseLogStreamsRequest -> JE.Value
getRelationalDatabaseLogStreamsRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        |> JE.object






getRelationalDatabaseLogStreamsResultEncoder : GetRelationalDatabaseLogStreamsResult -> JE.Value
getRelationalDatabaseLogStreamsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("logStreams", data.logStreams)
        
        
        |> JE.object






getRelationalDatabaseMasterUserPasswordRequestEncoder : GetRelationalDatabaseMasterUserPasswordRequest -> JE.Value
getRelationalDatabaseMasterUserPasswordRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (relationalDatabasePasswordVersionToString >> JE.string)
            ("passwordVersion", data.passwordVersion)
        
        
        |> JE.object






getRelationalDatabaseMasterUserPasswordResultEncoder : GetRelationalDatabaseMasterUserPasswordResult -> JE.Value
getRelationalDatabaseMasterUserPasswordResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("masterUserPassword", data.masterUserPassword)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        |> JE.object






getRelationalDatabaseMetricDataRequestEncoder : GetRelationalDatabaseMetricDataRequest -> JE.Value
getRelationalDatabaseMetricDataRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        
        |> (::) ("metricName", data.metricName |> (relationalDatabaseMetricNameToString >> JE.string))
        
        
        
        |> (::) ("period", data.period |> (JE.int))
        
        
        
        |> (::) ("startTime", data.startTime |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("endTime", data.endTime |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("unit", data.unit |> (metricUnitToString >> JE.string))
        
        
        
        |> (::) ("statistics", data.statistics |> (JE.list (metricStatisticToString >> JE.string)))
        
        
        |> JE.object






getRelationalDatabaseMetricDataResultEncoder : GetRelationalDatabaseMetricDataResult -> JE.Value
getRelationalDatabaseMetricDataResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (relationalDatabaseMetricNameToString >> JE.string)
            ("metricName", data.metricName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (metricDatapointEncoder))
            ("metricData", data.metricData)
        
        
        |> JE.object






getRelationalDatabaseParametersRequestEncoder : GetRelationalDatabaseParametersRequest -> JE.Value
getRelationalDatabaseParametersRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getRelationalDatabaseParametersResultEncoder : GetRelationalDatabaseParametersResult -> JE.Value
getRelationalDatabaseParametersResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (relationalDatabaseParameterEncoder))
            ("parameters", data.parameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getRelationalDatabaseRequestEncoder : GetRelationalDatabaseRequest -> JE.Value
getRelationalDatabaseRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        |> JE.object






getRelationalDatabaseResultEncoder : GetRelationalDatabaseResult -> JE.Value
getRelationalDatabaseResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (relationalDatabaseEncoder)
            ("relationalDatabase", data.relationalDatabase)
        
        
        |> JE.object






getRelationalDatabaseSnapshotRequestEncoder : GetRelationalDatabaseSnapshotRequest -> JE.Value
getRelationalDatabaseSnapshotRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseSnapshotName", data.relationalDatabaseSnapshotName |> (JE.string))
        
        
        |> JE.object






getRelationalDatabaseSnapshotResultEncoder : GetRelationalDatabaseSnapshotResult -> JE.Value
getRelationalDatabaseSnapshotResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (relationalDatabaseSnapshotEncoder)
            ("relationalDatabaseSnapshot", data.relationalDatabaseSnapshot)
        
        
        |> JE.object






getRelationalDatabaseSnapshotsRequestEncoder : GetRelationalDatabaseSnapshotsRequest -> JE.Value
getRelationalDatabaseSnapshotsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getRelationalDatabaseSnapshotsResultEncoder : GetRelationalDatabaseSnapshotsResult -> JE.Value
getRelationalDatabaseSnapshotsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (relationalDatabaseSnapshotEncoder))
            ("relationalDatabaseSnapshots", data.relationalDatabaseSnapshots)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getRelationalDatabasesRequestEncoder : GetRelationalDatabasesRequest -> JE.Value
getRelationalDatabasesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getRelationalDatabasesResultEncoder : GetRelationalDatabasesResult -> JE.Value
getRelationalDatabasesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (relationalDatabaseEncoder))
            ("relationalDatabases", data.relationalDatabases)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






getStaticIpRequestEncoder : GetStaticIpRequest -> JE.Value
getStaticIpRequestEncoder data =
    []
        
        
        |> (::) ("staticIpName", data.staticIpName |> (JE.string))
        
        
        |> JE.object






getStaticIpResultEncoder : GetStaticIpResult -> JE.Value
getStaticIpResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (staticIpEncoder)
            ("staticIp", data.staticIp)
        
        
        |> JE.object






getStaticIpsRequestEncoder : GetStaticIpsRequest -> JE.Value
getStaticIpsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pageToken", data.pageToken)
        
        
        |> JE.object






getStaticIpsResultEncoder : GetStaticIpsResult -> JE.Value
getStaticIpsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (staticIpEncoder))
            ("staticIps", data.staticIps)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextPageToken", data.nextPageToken)
        
        
        |> JE.object






hostKeyAttributesEncoder : HostKeyAttributes -> JE.Value
hostKeyAttributesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("algorithm", data.algorithm)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("publicKey", data.publicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("witnessedAt", data.witnessedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fingerprintSHA1", data.fingerprintSHA1)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fingerprintSHA256", data.fingerprintSHA256)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("notValidBefore", data.notValidBefore)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("notValidAfter", data.notValidAfter)
        
        
        |> JE.object






importKeyPairRequestEncoder : ImportKeyPairRequest -> JE.Value
importKeyPairRequestEncoder data =
    []
        
        
        |> (::) ("keyPairName", data.keyPairName |> (JE.string))
        
        
        
        |> (::) ("publicKeyBase64", data.publicKeyBase64 |> (JE.string))
        
        
        |> JE.object






importKeyPairResultEncoder : ImportKeyPairResult -> JE.Value
importKeyPairResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






instanceEncoder : Instance -> JE.Value
instanceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("supportCode", data.supportCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("blueprintId", data.blueprintId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("blueprintName", data.blueprintName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("bundleId", data.bundleId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isStaticIp", data.isStaticIp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("privateIpAddress", data.privateIpAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("publicIpAddress", data.publicIpAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ipv6Address", data.ipv6Address)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceHardwareEncoder)
            ("hardware", data.hardware)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceNetworkingEncoder)
            ("networking", data.networking)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceStateEncoder)
            ("state", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("username", data.username)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sshKeyName", data.sshKeyName)
        
        
        |> JE.object






instanceAccessDetailsEncoder : InstanceAccessDetails -> JE.Value
instanceAccessDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("certKey", data.certKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("expiresAt", data.expiresAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ipAddress", data.ipAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("password", data.password)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (passwordDataEncoder)
            ("passwordData", data.passwordData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("privateKey", data.privateKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceAccessProtocolToString >> JE.string)
            ("protocol", data.protocol)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("instanceName", data.instanceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("username", data.username)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (hostKeyAttributesEncoder))
            ("hostKeys", data.hostKeys)
        
        
        |> JE.object










instanceEntryEncoder : InstanceEntry -> JE.Value
instanceEntryEncoder data =
    []
        
        
        |> (::) ("sourceName", data.sourceName |> (JE.string))
        
        
        
        |> (::) ("instanceType", data.instanceType |> (JE.string))
        
        
        
        |> (::) ("portInfoSource", data.portInfoSource |> (portInfoSourceTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("userData", data.userData)
        
        
        
        |> (::) ("availabilityZone", data.availabilityZone |> (JE.string))
        
        
        |> JE.object






instanceHardwareEncoder : InstanceHardware -> JE.Value
instanceHardwareEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("cpuCount", data.cpuCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (diskEncoder))
            ("disks", data.disks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("ramSizeInGb", data.ramSizeInGb)
        
        
        |> JE.object














instanceHealthSummaryEncoder : InstanceHealthSummary -> JE.Value
instanceHealthSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("instanceName", data.instanceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceHealthStateToString >> JE.string)
            ("instanceHealth", data.instanceHealth)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceHealthReasonToString >> JE.string)
            ("instanceHealthReason", data.instanceHealthReason)
        
        
        |> JE.object










instanceNetworkingEncoder : InstanceNetworking -> JE.Value
instanceNetworkingEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (monthlyTransferEncoder)
            ("monthlyTransfer", data.monthlyTransfer)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (instancePortInfoEncoder))
            ("ports", data.ports)
        
        
        |> JE.object










instancePortInfoEncoder : InstancePortInfo -> JE.Value
instancePortInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("fromPort", data.fromPort)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("toPort", data.toPort)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (networkProtocolToString >> JE.string)
            ("protocol", data.protocol)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("accessFrom", data.accessFrom)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (portAccessTypeToString >> JE.string)
            ("accessType", data.accessType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commonName", data.commonName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (accessDirectionToString >> JE.string)
            ("accessDirection", data.accessDirection)
        
        
        |> JE.object






instancePortStateEncoder : InstancePortState -> JE.Value
instancePortStateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("fromPort", data.fromPort)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("toPort", data.toPort)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (networkProtocolToString >> JE.string)
            ("protocol", data.protocol)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (portStateToString >> JE.string)
            ("state", data.state)
        
        
        |> JE.object






instanceSnapshotEncoder : InstanceSnapshot -> JE.Value
instanceSnapshotEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("supportCode", data.supportCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceSnapshotStateToString >> JE.string)
            ("state", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("progress", data.progress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (diskEncoder))
            ("fromAttachedDisks", data.fromAttachedDisks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromInstanceName", data.fromInstanceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromInstanceArn", data.fromInstanceArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromBlueprintId", data.fromBlueprintId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromBundleId", data.fromBundleId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("sizeInGb", data.sizeInGb)
        
        
        |> JE.object






instanceSnapshotInfoEncoder : InstanceSnapshotInfo -> JE.Value
instanceSnapshotInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromBundleId", data.fromBundleId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromBlueprintId", data.fromBlueprintId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (diskInfoEncoder))
            ("fromDiskInfo", data.fromDiskInfo)
        
        
        |> JE.object










instanceStateEncoder : InstanceState -> JE.Value
instanceStateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("code", data.code)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        |> JE.object






isVpcPeeredRequestEncoder : IsVpcPeeredRequest -> JE.Value
isVpcPeeredRequestEncoder data =
    []
        
        |> JE.object






isVpcPeeredResultEncoder : IsVpcPeeredResult -> JE.Value
isVpcPeeredResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isPeered", data.isPeered)
        
        
        |> JE.object






keyPairEncoder : KeyPair -> JE.Value
keyPairEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("supportCode", data.supportCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fingerprint", data.fingerprint)
        
        
        |> JE.object






loadBalancerEncoder : LoadBalancer -> JE.Value
loadBalancerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("supportCode", data.supportCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("dnsName", data.dnsName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (loadBalancerStateToString >> JE.string)
            ("state", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (loadBalancerProtocolToString >> JE.string)
            ("protocol", data.protocol)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.int))
            ("publicPorts", data.publicPorts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("healthCheckPath", data.healthCheckPath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("instancePort", data.instancePort)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (instanceHealthSummaryEncoder))
            ("instanceHealthSummary", data.instanceHealthSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (loadBalancerTlsCertificateSummaryEncoder))
            ("tlsCertificateSummaries", data.tlsCertificateSummaries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("configurationOptions", data.configurationOptions)
        
        
        |> JE.object






















loadBalancerTlsCertificateEncoder : LoadBalancerTlsCertificate -> JE.Value
loadBalancerTlsCertificateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("supportCode", data.supportCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("loadBalancerName", data.loadBalancerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isAttached", data.isAttached)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (loadBalancerTlsCertificateStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("domainName", data.domainName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (loadBalancerTlsCertificateDomainValidationRecordEncoder))
            ("domainValidationRecords", data.domainValidationRecords)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (loadBalancerTlsCertificateFailureReasonToString >> JE.string)
            ("failureReason", data.failureReason)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("issuedAt", data.issuedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("issuer", data.issuer)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("keyAlgorithm", data.keyAlgorithm)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("notAfter", data.notAfter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("notBefore", data.notBefore)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (loadBalancerTlsCertificateRenewalSummaryEncoder)
            ("renewalSummary", data.renewalSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (loadBalancerTlsCertificateRevocationReasonToString >> JE.string)
            ("revocationReason", data.revocationReason)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("revokedAt", data.revokedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("serial", data.serial)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("signatureAlgorithm", data.signatureAlgorithm)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("subject", data.subject)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("subjectAlternativeNames", data.subjectAlternativeNames)
        
        
        |> JE.object










loadBalancerTlsCertificateDomainValidationOptionEncoder : LoadBalancerTlsCertificateDomainValidationOption -> JE.Value
loadBalancerTlsCertificateDomainValidationOptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("domainName", data.domainName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (loadBalancerTlsCertificateDomainStatusToString >> JE.string)
            ("validationStatus", data.validationStatus)
        
        
        |> JE.object






loadBalancerTlsCertificateDomainValidationRecordEncoder : LoadBalancerTlsCertificateDomainValidationRecord -> JE.Value
loadBalancerTlsCertificateDomainValidationRecordEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (loadBalancerTlsCertificateDomainStatusToString >> JE.string)
            ("validationStatus", data.validationStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("domainName", data.domainName)
        
        
        |> JE.object














loadBalancerTlsCertificateRenewalSummaryEncoder : LoadBalancerTlsCertificateRenewalSummary -> JE.Value
loadBalancerTlsCertificateRenewalSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (loadBalancerTlsCertificateRenewalStatusToString >> JE.string)
            ("renewalStatus", data.renewalStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (loadBalancerTlsCertificateDomainValidationOptionEncoder))
            ("domainValidationOptions", data.domainValidationOptions)
        
        
        |> JE.object














loadBalancerTlsCertificateSummaryEncoder : LoadBalancerTlsCertificateSummary -> JE.Value
loadBalancerTlsCertificateSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isAttached", data.isAttached)
        
        
        |> JE.object






logEventEncoder : LogEvent -> JE.Value
logEventEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






metricDatapointEncoder : MetricDatapoint -> JE.Value
metricDatapointEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("average", data.average)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("maximum", data.maximum)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("minimum", data.minimum)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("sampleCount", data.sampleCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("sum", data.sum)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("timestamp", data.timestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (metricUnitToString >> JE.string)
            ("unit", data.unit)
        
        
        |> JE.object














monthlyTransferEncoder : MonthlyTransfer -> JE.Value
monthlyTransferEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("gbPerMonthAllocated", data.gbPerMonthAllocated)
        
        
        |> JE.object










openInstancePublicPortsRequestEncoder : OpenInstancePublicPortsRequest -> JE.Value
openInstancePublicPortsRequestEncoder data =
    []
        
        
        |> (::) ("portInfo", data.portInfo |> (portInfoEncoder))
        
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        |> JE.object






openInstancePublicPortsResultEncoder : OpenInstancePublicPortsResult -> JE.Value
openInstancePublicPortsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






operationEncoder : Operation -> JE.Value
operationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("resourceName", data.resourceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isTerminal", data.isTerminal)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("operationDetails", data.operationDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (operationTypeToString >> JE.string)
            ("operationType", data.operationType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (operationStatusToString >> JE.string)
            ("status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("statusChangedAt", data.statusChangedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("errorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("errorDetails", data.errorDetails)
        
        
        |> JE.object














passwordDataEncoder : PasswordData -> JE.Value
passwordDataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ciphertext", data.ciphertext)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("keyPairName", data.keyPairName)
        
        
        |> JE.object






peerVpcRequestEncoder : PeerVpcRequest -> JE.Value
peerVpcRequestEncoder data =
    []
        
        |> JE.object






peerVpcResultEncoder : PeerVpcResult -> JE.Value
peerVpcResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






pendingMaintenanceActionEncoder : PendingMaintenanceAction -> JE.Value
pendingMaintenanceActionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("action", data.action)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("currentApplyDate", data.currentApplyDate)
        
        
        |> JE.object






pendingModifiedRelationalDatabaseValuesEncoder : PendingModifiedRelationalDatabaseValues -> JE.Value
pendingModifiedRelationalDatabaseValuesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("masterUserPassword", data.masterUserPassword)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("engineVersion", data.engineVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("backupRetentionEnabled", data.backupRetentionEnabled)
        
        
        |> JE.object










portInfoEncoder : PortInfo -> JE.Value
portInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("fromPort", data.fromPort)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("toPort", data.toPort)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (networkProtocolToString >> JE.string)
            ("protocol", data.protocol)
        
        
        |> JE.object














putInstancePublicPortsRequestEncoder : PutInstancePublicPortsRequest -> JE.Value
putInstancePublicPortsRequestEncoder data =
    []
        
        
        |> (::) ("portInfos", data.portInfos |> (JE.list (portInfoEncoder)))
        
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        |> JE.object






putInstancePublicPortsResultEncoder : PutInstancePublicPortsResult -> JE.Value
putInstancePublicPortsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






rebootInstanceRequestEncoder : RebootInstanceRequest -> JE.Value
rebootInstanceRequestEncoder data =
    []
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        |> JE.object






rebootInstanceResultEncoder : RebootInstanceResult -> JE.Value
rebootInstanceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






rebootRelationalDatabaseRequestEncoder : RebootRelationalDatabaseRequest -> JE.Value
rebootRelationalDatabaseRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        |> JE.object






rebootRelationalDatabaseResultEncoder : RebootRelationalDatabaseResult -> JE.Value
rebootRelationalDatabaseResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object










regionEncoder : Region -> JE.Value
regionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("continentCode", data.continentCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("displayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (regionNameToString >> JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (availabilityZoneEncoder))
            ("availabilityZones", data.availabilityZones)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (availabilityZoneEncoder))
            ("relationalDatabaseAvailabilityZones", data.relationalDatabaseAvailabilityZones)
        
        
        |> JE.object










relationalDatabaseEncoder : RelationalDatabase -> JE.Value
relationalDatabaseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("supportCode", data.supportCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("relationalDatabaseBlueprintId", data.relationalDatabaseBlueprintId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("relationalDatabaseBundleId", data.relationalDatabaseBundleId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("masterDatabaseName", data.masterDatabaseName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (relationalDatabaseHardwareEncoder)
            ("hardware", data.hardware)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("state", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("secondaryAvailabilityZone", data.secondaryAvailabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("backupRetentionEnabled", data.backupRetentionEnabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pendingModifiedRelationalDatabaseValuesEncoder)
            ("pendingModifiedValues", data.pendingModifiedValues)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("engine", data.engine)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("engineVersion", data.engineVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("latestRestorableTime", data.latestRestorableTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("masterUsername", data.masterUsername)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("parameterApplyStatus", data.parameterApplyStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("preferredBackupWindow", data.preferredBackupWindow)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("preferredMaintenanceWindow", data.preferredMaintenanceWindow)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("publiclyAccessible", data.publiclyAccessible)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (relationalDatabaseEndpointEncoder)
            ("masterEndpoint", data.masterEndpoint)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (pendingMaintenanceActionEncoder))
            ("pendingMaintenanceActions", data.pendingMaintenanceActions)
        
        
        |> JE.object






relationalDatabaseBlueprintEncoder : RelationalDatabaseBlueprint -> JE.Value
relationalDatabaseBlueprintEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("blueprintId", data.blueprintId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (relationalDatabaseEngineToString >> JE.string)
            ("engine", data.engine)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("engineVersion", data.engineVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("engineDescription", data.engineDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("engineVersionDescription", data.engineVersionDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isEngineDefault", data.isEngineDefault)
        
        
        |> JE.object






relationalDatabaseBundleEncoder : RelationalDatabaseBundle -> JE.Value
relationalDatabaseBundleEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("bundleId", data.bundleId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("price", data.price)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("ramSizeInGb", data.ramSizeInGb)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("diskSizeInGb", data.diskSizeInGb)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("transferPerMonthInGb", data.transferPerMonthInGb)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("cpuCount", data.cpuCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isEncrypted", data.isEncrypted)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isActive", data.isActive)
        
        
        |> JE.object






relationalDatabaseEndpointEncoder : RelationalDatabaseEndpoint -> JE.Value
relationalDatabaseEndpointEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("port", data.port_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("address", data.address)
        
        
        |> JE.object










relationalDatabaseEventEncoder : RelationalDatabaseEvent -> JE.Value
relationalDatabaseEventEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("resource", data.resource)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("eventCategories", data.eventCategories)
        
        
        |> JE.object






relationalDatabaseHardwareEncoder : RelationalDatabaseHardware -> JE.Value
relationalDatabaseHardwareEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("cpuCount", data.cpuCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("diskSizeInGb", data.diskSizeInGb)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("ramSizeInGb", data.ramSizeInGb)
        
        
        |> JE.object










relationalDatabaseParameterEncoder : RelationalDatabaseParameter -> JE.Value
relationalDatabaseParameterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("allowedValues", data.allowedValues)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("applyMethod", data.applyMethod)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("applyType", data.applyType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("dataType", data.dataType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isModifiable", data.isModifiable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("parameterName", data.parameterName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("parameterValue", data.parameterValue)
        
        
        |> JE.object










relationalDatabaseSnapshotEncoder : RelationalDatabaseSnapshot -> JE.Value
relationalDatabaseSnapshotEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("supportCode", data.supportCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("engine", data.engine)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("engineVersion", data.engineVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("sizeInGb", data.sizeInGb)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("state", data.state)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromRelationalDatabaseName", data.fromRelationalDatabaseName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromRelationalDatabaseArn", data.fromRelationalDatabaseArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromRelationalDatabaseBundleId", data.fromRelationalDatabaseBundleId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fromRelationalDatabaseBlueprintId", data.fromRelationalDatabaseBlueprintId)
        
        
        |> JE.object






releaseStaticIpRequestEncoder : ReleaseStaticIpRequest -> JE.Value
releaseStaticIpRequestEncoder data =
    []
        
        
        |> (::) ("staticIpName", data.staticIpName |> (JE.string))
        
        
        |> JE.object






releaseStaticIpResultEncoder : ReleaseStaticIpResult -> JE.Value
releaseStaticIpResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






resourceLocationEncoder : ResourceLocation -> JE.Value
resourceLocationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("availabilityZone", data.availabilityZone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (regionNameToString >> JE.string)
            ("regionName", data.regionName)
        
        
        |> JE.object










startInstanceRequestEncoder : StartInstanceRequest -> JE.Value
startInstanceRequestEncoder data =
    []
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        |> JE.object






startInstanceResultEncoder : StartInstanceResult -> JE.Value
startInstanceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






startRelationalDatabaseRequestEncoder : StartRelationalDatabaseRequest -> JE.Value
startRelationalDatabaseRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        |> JE.object






startRelationalDatabaseResultEncoder : StartRelationalDatabaseResult -> JE.Value
startRelationalDatabaseResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






staticIpEncoder : StaticIp -> JE.Value
staticIpEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("supportCode", data.supportCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("createdAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceLocationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTypeToString >> JE.string)
            ("resourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ipAddress", data.ipAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("attachedTo", data.attachedTo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isAttached", data.isAttached)
        
        
        |> JE.object






stopInstanceRequestEncoder : StopInstanceRequest -> JE.Value
stopInstanceRequestEncoder data =
    []
        
        
        |> (::) ("instanceName", data.instanceName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("force", data.force)
        
        
        |> JE.object






stopInstanceResultEncoder : StopInstanceResult -> JE.Value
stopInstanceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






stopRelationalDatabaseRequestEncoder : StopRelationalDatabaseRequest -> JE.Value
stopRelationalDatabaseRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("relationalDatabaseSnapshotName", data.relationalDatabaseSnapshotName)
        
        
        |> JE.object






stopRelationalDatabaseResultEncoder : StopRelationalDatabaseResult -> JE.Value
stopRelationalDatabaseResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
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






tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        
        
        |> (::) ("resourceName", data.resourceName |> (JE.string))
        
        
        
        |> (::) ("tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






tagResourceResultEncoder : TagResourceResult -> JE.Value
tagResourceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






unpeerVpcRequestEncoder : UnpeerVpcRequest -> JE.Value
unpeerVpcRequestEncoder data =
    []
        
        |> JE.object






unpeerVpcResultEncoder : UnpeerVpcResult -> JE.Value
unpeerVpcResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (operationEncoder)
            ("operation", data.operation)
        
        
        |> JE.object






untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        
        
        |> (::) ("resourceName", data.resourceName |> (JE.string))
        
        
        
        |> (::) ("tagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






untagResourceResultEncoder : UntagResourceResult -> JE.Value
untagResourceResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






updateDomainEntryRequestEncoder : UpdateDomainEntryRequest -> JE.Value
updateDomainEntryRequestEncoder data =
    []
        
        
        |> (::) ("domainName", data.domainName |> (JE.string))
        
        
        
        |> (::) ("domainEntry", data.domainEntry |> (domainEntryEncoder))
        
        
        |> JE.object






updateDomainEntryResultEncoder : UpdateDomainEntryResult -> JE.Value
updateDomainEntryResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






updateLoadBalancerAttributeRequestEncoder : UpdateLoadBalancerAttributeRequest -> JE.Value
updateLoadBalancerAttributeRequestEncoder data =
    []
        
        
        |> (::) ("loadBalancerName", data.loadBalancerName |> (JE.string))
        
        
        
        |> (::) ("attributeName", data.attributeName |> (loadBalancerAttributeNameToString >> JE.string))
        
        
        
        |> (::) ("attributeValue", data.attributeValue |> (JE.string))
        
        
        |> JE.object






updateLoadBalancerAttributeResultEncoder : UpdateLoadBalancerAttributeResult -> JE.Value
updateLoadBalancerAttributeResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






updateRelationalDatabaseParametersRequestEncoder : UpdateRelationalDatabaseParametersRequest -> JE.Value
updateRelationalDatabaseParametersRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        
        |> (::) ("parameters", data.parameters |> (JE.list (relationalDatabaseParameterEncoder)))
        
        
        |> JE.object






updateRelationalDatabaseParametersResultEncoder : UpdateRelationalDatabaseParametersResult -> JE.Value
updateRelationalDatabaseParametersResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object






updateRelationalDatabaseRequestEncoder : UpdateRelationalDatabaseRequest -> JE.Value
updateRelationalDatabaseRequestEncoder data =
    []
        
        
        |> (::) ("relationalDatabaseName", data.relationalDatabaseName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("masterUserPassword", data.masterUserPassword)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("rotateMasterUserPassword", data.rotateMasterUserPassword)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("preferredBackupWindow", data.preferredBackupWindow)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("preferredMaintenanceWindow", data.preferredMaintenanceWindow)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("enableBackupRetention", data.enableBackupRetention)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("disableBackupRetention", data.disableBackupRetention)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("publiclyAccessible", data.publiclyAccessible)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("applyImmediately", data.applyImmediately)
        
        
        |> JE.object






updateRelationalDatabaseResultEncoder : UpdateRelationalDatabaseResult -> JE.Value
updateRelationalDatabaseResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (operationEncoder))
            ("operations", data.operations)
        
        
        |> JE.object





