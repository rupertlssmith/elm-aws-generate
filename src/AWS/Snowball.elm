module AWS.Snowball
    exposing
        ( service
        , cancelCluster
        , cancelJob
        , createAddress
        , createCluster
        , CreateClusterOptions
        , createJob
        , CreateJobOptions
        , describeAddress
        , describeAddresses
        , DescribeAddressesOptions
        , describeCluster
        , describeJob
        , getJobManifest
        , getJobUnlockCode
        , getSnowballUsage
        , listClusterJobs
        , ListClusterJobsOptions
        , listClusters
        , ListClustersOptions
        , listCompatibleImages
        , ListCompatibleImagesOptions
        , listJobs
        , ListJobsOptions
        , updateCluster
        , UpdateClusterOptions
        , updateJob
        , UpdateJobOptions
        , Address
        , CancelClusterResult
        , CancelJobResult
        , ClusterListEntry
        , ClusterMetadata
        , ClusterState(..)
        , CompatibleImage
        , CreateAddressResult
        , CreateClusterResult
        , CreateJobResult
        , DataTransfer
        , DescribeAddressResult
        , DescribeAddressesResult
        , DescribeClusterResult
        , DescribeJobResult
        , Ec2AmiResource
        , EventTriggerDefinition
        , GetJobManifestResult
        , GetJobUnlockCodeResult
        , GetSnowballUsageResult
        , JobListEntry
        , JobLogs
        , JobMetadata
        , JobResource
        , JobState(..)
        , JobType(..)
        , KeyRange
        , LambdaResource
        , ListClusterJobsResult
        , ListClustersResult
        , ListCompatibleImagesResult
        , ListJobsResult
        , Notification
        , S3Resource
        , Shipment
        , ShippingDetails
        , ShippingOption(..)
        , SnowballCapacity(..)
        , SnowballType(..)
        , UpdateClusterResult
        , UpdateJobResult
        )

{-| <p>AWS Snowball is a petabyte-scale data transport solution that uses secure devices to transfer large amounts of data between your on-premises data centers and Amazon Simple Storage Service (Amazon S3). The commands described here provide access to the same functionality that is available in the AWS Snowball Management Console, which enables you to create and manage jobs for Snowball and Snowball Edge devices. To transfer data locally with a device, you'll need to use the Snowball client or the Amazon S3 API adapter for Snowball.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [cancelCluster](#cancelCluster)
* [cancelJob](#cancelJob)
* [createAddress](#createAddress)
* [createCluster](#createCluster)
* [CreateClusterOptions](#CreateClusterOptions)
* [createJob](#createJob)
* [CreateJobOptions](#CreateJobOptions)
* [describeAddress](#describeAddress)
* [describeAddresses](#describeAddresses)
* [DescribeAddressesOptions](#DescribeAddressesOptions)
* [describeCluster](#describeCluster)
* [describeJob](#describeJob)
* [getJobManifest](#getJobManifest)
* [getJobUnlockCode](#getJobUnlockCode)
* [getSnowballUsage](#getSnowballUsage)
* [listClusterJobs](#listClusterJobs)
* [ListClusterJobsOptions](#ListClusterJobsOptions)
* [listClusters](#listClusters)
* [ListClustersOptions](#ListClustersOptions)
* [listCompatibleImages](#listCompatibleImages)
* [ListCompatibleImagesOptions](#ListCompatibleImagesOptions)
* [listJobs](#listJobs)
* [ListJobsOptions](#ListJobsOptions)
* [updateCluster](#updateCluster)
* [UpdateClusterOptions](#UpdateClusterOptions)
* [updateJob](#updateJob)
* [UpdateJobOptions](#UpdateJobOptions)


@docs cancelCluster,cancelJob,createAddress,createCluster,CreateClusterOptions,createJob,CreateJobOptions,describeAddress,describeAddresses,DescribeAddressesOptions,describeCluster,describeJob,getJobManifest,getJobUnlockCode,getSnowballUsage,listClusterJobs,ListClusterJobsOptions,listClusters,ListClustersOptions,listCompatibleImages,ListCompatibleImagesOptions,listJobs,ListJobsOptions,updateCluster,UpdateClusterOptions,updateJob,UpdateJobOptions

## Responses

* [CancelClusterResult](#CancelClusterResult)
* [CancelJobResult](#CancelJobResult)
* [CreateAddressResult](#CreateAddressResult)
* [CreateClusterResult](#CreateClusterResult)
* [CreateJobResult](#CreateJobResult)
* [DescribeAddressResult](#DescribeAddressResult)
* [DescribeAddressesResult](#DescribeAddressesResult)
* [DescribeClusterResult](#DescribeClusterResult)
* [DescribeJobResult](#DescribeJobResult)
* [GetJobManifestResult](#GetJobManifestResult)
* [GetJobUnlockCodeResult](#GetJobUnlockCodeResult)
* [GetSnowballUsageResult](#GetSnowballUsageResult)
* [ListClusterJobsResult](#ListClusterJobsResult)
* [ListClustersResult](#ListClustersResult)
* [ListCompatibleImagesResult](#ListCompatibleImagesResult)
* [ListJobsResult](#ListJobsResult)
* [UpdateClusterResult](#UpdateClusterResult)
* [UpdateJobResult](#UpdateJobResult)


@docs CancelClusterResult,CancelJobResult,CreateAddressResult,CreateClusterResult,CreateJobResult,DescribeAddressResult,DescribeAddressesResult,DescribeClusterResult,DescribeJobResult,GetJobManifestResult,GetJobUnlockCodeResult,GetSnowballUsageResult,ListClusterJobsResult,ListClustersResult,ListCompatibleImagesResult,ListJobsResult,UpdateClusterResult,UpdateJobResult

## Records

* [Address](#Address)
* [ClusterListEntry](#ClusterListEntry)
* [ClusterMetadata](#ClusterMetadata)
* [CompatibleImage](#CompatibleImage)
* [DataTransfer](#DataTransfer)
* [Ec2AmiResource](#Ec2AmiResource)
* [EventTriggerDefinition](#EventTriggerDefinition)
* [JobListEntry](#JobListEntry)
* [JobLogs](#JobLogs)
* [JobMetadata](#JobMetadata)
* [JobResource](#JobResource)
* [KeyRange](#KeyRange)
* [LambdaResource](#LambdaResource)
* [Notification](#Notification)
* [S3Resource](#S3Resource)
* [Shipment](#Shipment)
* [ShippingDetails](#ShippingDetails)


@docs Address,ClusterListEntry,ClusterMetadata,CompatibleImage,DataTransfer,Ec2AmiResource,EventTriggerDefinition,JobListEntry,JobLogs,JobMetadata,JobResource,KeyRange,LambdaResource,Notification,S3Resource,Shipment,ShippingDetails

## Unions

* [ClusterState](#ClusterState)
* [JobState](#JobState)
* [JobType](#JobType)
* [ShippingOption](#ShippingOption)
* [SnowballCapacity](#SnowballCapacity)
* [SnowballType](#SnowballType)


@docs ClusterState,JobState,JobType,ShippingOption,SnowballCapacity,SnowballType

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
        "snowball"
        "2016-06-30"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSIESnowballJobManagementService")



-- OPERATIONS

{-| <p>Cancels a cluster job. You can only cancel a cluster job while it's in the <code>AwaitingQuorum</code> status. You'll have at least an hour after creating a cluster job to cancel it.</p>

__Required Parameters__

* `clusterId` __:__ `String`


-}

cancelCluster :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CancelClusterResult)

cancelCluster clusterId =
    
    let
        requestInput = CancelClusterRequest
            
            clusterId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> cancelClusterRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CancelCluster"
                
                (AWS.Core.Decode.ResultDecoder "CancelClusterResult" cancelClusterResultDecoder)
                
            )





{-| <p>Cancels the specified job. You can only cancel a job before its <code>JobState</code> value changes to <code>PreparingAppliance</code>. Requesting the <code>ListJobs</code> or <code>DescribeJob</code> action returns a job's <code>JobState</code> as part of the response element data returned.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}

cancelJob :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CancelJobResult)

cancelJob jobId =
    
    let
        requestInput = CancelJobRequest
            
            jobId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> cancelJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CancelJob"
                
                (AWS.Core.Decode.ResultDecoder "CancelJobResult" cancelJobResultDecoder)
                
            )





{-| <p>Creates an address for a Snowball to be shipped to. In most regions, addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.</p>

__Required Parameters__

* `address` __:__ `Address`


-}

createAddress :
  
    Address ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateAddressResult)

createAddress address =
    
    let
        requestInput = CreateAddressRequest
            
            address
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createAddressRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateAddress"
                
                (AWS.Core.Decode.ResultDecoder "CreateAddressResult" createAddressResultDecoder)
                
            )





{-| <p>Creates an empty cluster. Each cluster supports five nodes. You use the <a>CreateJob</a> action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.</p>

__Required Parameters__

* `jobType` __:__ `JobType`
* `resources` __:__ `JobResource`
* `addressId` __:__ `String`
* `roleARN` __:__ `String`
* `shippingOption` __:__ `ShippingOption`


-}

createCluster :
  
    JobType ->
  
    JobResource ->
  
    String ->
  
    String ->
  
    ShippingOption ->
  
  
    ( CreateClusterOptions -> CreateClusterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateClusterResult)

createCluster jobType resources addressId roleARN shippingOption setOptions =
    
    let
        requestInput = CreateClusterRequest
            
            jobType
            
            resources
            
            options.description
            
            addressId
            
            options.kmsKeyARN
            
            roleARN
            
            options.snowballType
            
            shippingOption
            
            options.notification
            
            options.forwardingAddressId
            
        
        options = setOptions (CreateClusterOptions Nothing Nothing Nothing Nothing Nothing)
        
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
                
                (AWS.Core.Decode.ResultDecoder "CreateClusterResult" createClusterResultDecoder)
                
            )



{-| Options for a createCluster request
-}
type alias CreateClusterOptions =
    {
    description : Maybe String,kmsKeyARN : Maybe String,snowballType : Maybe SnowballType,notification : Maybe Notification,forwardingAddressId : Maybe String
    }



{-| <p>Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for Snowball. If you're creating a job for a node in a cluster, you only need to provide the <code>clusterId</code> value; the other job attributes are inherited from the cluster. </p>

__Required Parameters__



-}

createJob :
  
  
    ( CreateJobOptions -> CreateJobOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateJobResult)

createJob setOptions =
    
    let
        requestInput = CreateJobRequest
            
            options.jobType
            
            options.resources
            
            options.description
            
            options.addressId
            
            options.kmsKeyARN
            
            options.roleARN
            
            options.snowballCapacityPreference
            
            options.shippingOption
            
            options.notification
            
            options.clusterId
            
            options.snowballType
            
            options.forwardingAddressId
            
        
        options = setOptions (CreateJobOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateJob"
                
                (AWS.Core.Decode.ResultDecoder "CreateJobResult" createJobResultDecoder)
                
            )



{-| Options for a createJob request
-}
type alias CreateJobOptions =
    {
    jobType : Maybe JobType,resources : Maybe JobResource,description : Maybe String,addressId : Maybe String,kmsKeyARN : Maybe String,roleARN : Maybe String,snowballCapacityPreference : Maybe SnowballCapacity,shippingOption : Maybe ShippingOption,notification : Maybe Notification,clusterId : Maybe String,snowballType : Maybe SnowballType,forwardingAddressId : Maybe String
    }



{-| <p>Takes an <code>AddressId</code> and returns specific details about that address in the form of an <code>Address</code> object.</p>

__Required Parameters__

* `addressId` __:__ `String`


-}

describeAddress :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAddressResult)

describeAddress addressId =
    
    let
        requestInput = DescribeAddressRequest
            
            addressId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAddressRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAddress"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAddressResult" describeAddressResultDecoder)
                
            )





{-| <p>Returns a specified number of <code>ADDRESS</code> objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.</p>

__Required Parameters__



-}

describeAddresses :
  
  
    ( DescribeAddressesOptions -> DescribeAddressesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAddressesResult)

describeAddresses setOptions =
    
    let
        requestInput = DescribeAddressesRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeAddressesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAddressesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAddresses"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAddressesResult" describeAddressesResultDecoder)
                
            )



{-| Options for a describeAddresses request
-}
type alias DescribeAddressesOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Returns information about a specific cluster including shipping information, cluster status, and other important metadata.</p>

__Required Parameters__

* `clusterId` __:__ `String`


-}

describeCluster :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeClusterResult)

describeCluster clusterId =
    
    let
        requestInput = DescribeClusterRequest
            
            clusterId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeClusterRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeCluster"
                
                (AWS.Core.Decode.ResultDecoder "DescribeClusterResult" describeClusterResultDecoder)
                
            )





{-| <p>Returns information about a specific job including shipping information, job status, and other important metadata. </p>

__Required Parameters__

* `jobId` __:__ `String`


-}

describeJob :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeJobResult)

describeJob jobId =
    
    let
        requestInput = DescribeJobRequest
            
            jobId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeJob"
                
                (AWS.Core.Decode.ResultDecoder "DescribeJobResult" describeJobResultDecoder)
                
            )





{-| <p>Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified <code>JobId</code> value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the <code>GetJobManifest</code> action.</p> <p>The manifest is an encrypted file that you can download after your job enters the <code>WithCustomer</code> status. The manifest is decrypted by using the <code>UnlockCode</code> code value, when you pass both values to the Snowball through the Snowball client when the client is started for the first time.</p> <p>As a best practice, we recommend that you don't save a copy of an <code>UnlockCode</code> value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.</p> <p>The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}

getJobManifest :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetJobManifestResult)

getJobManifest jobId =
    
    let
        requestInput = GetJobManifestRequest
            
            jobId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getJobManifestRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetJobManifest"
                
                (AWS.Core.Decode.ResultDecoder "GetJobManifestResult" getJobManifestResultDecoder)
                
            )





{-| <p>Returns the <code>UnlockCode</code> code value for the specified job. A particular <code>UnlockCode</code> value can be accessed for up to 90 days after the associated job has been created.</p> <p>The <code>UnlockCode</code> value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snowball through the Snowball client when the client is started for the first time.</p> <p>As a best practice, we recommend that you don't save a copy of the <code>UnlockCode</code> in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}

getJobUnlockCode :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetJobUnlockCodeResult)

getJobUnlockCode jobId =
    
    let
        requestInput = GetJobUnlockCodeRequest
            
            jobId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getJobUnlockCodeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetJobUnlockCode"
                
                (AWS.Core.Decode.ResultDecoder "GetJobUnlockCodeResult" getJobUnlockCodeResultDecoder)
                
            )





{-| <p>Returns information about the Snowball service limit for your account, and also the number of Snowballs your account has in use.</p> <p>The default service limit for the number of Snowballs that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.</p>

__Required Parameters__



-}

getSnowballUsage :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSnowballUsageResult)

getSnowballUsage =
    
    let
        requestInput = GetSnowballUsageRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getSnowballUsageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetSnowballUsage"
                
                (AWS.Core.Decode.ResultDecoder "GetSnowballUsageResult" getSnowballUsageResultDecoder)
                
            )





{-| <p>Returns an array of <code>JobListEntry</code> objects of the specified length. Each <code>JobListEntry</code> object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.</p>

__Required Parameters__

* `clusterId` __:__ `String`


-}

listClusterJobs :
  
    String ->
  
  
    ( ListClusterJobsOptions -> ListClusterJobsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListClusterJobsResult)

listClusterJobs clusterId setOptions =
    
    let
        requestInput = ListClusterJobsRequest
            
            clusterId
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListClusterJobsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listClusterJobsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListClusterJobs"
                
                (AWS.Core.Decode.ResultDecoder "ListClusterJobsResult" listClusterJobsResultDecoder)
                
            )



{-| Options for a listClusterJobs request
-}
type alias ListClusterJobsOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Returns an array of <code>ClusterListEntry</code> objects of the specified length. Each <code>ClusterListEntry</code> object contains a cluster's state, a cluster's ID, and other important status information.</p>

__Required Parameters__



-}

listClusters :
  
  
    ( ListClustersOptions -> ListClustersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListClustersResult)

listClusters setOptions =
    
    let
        requestInput = ListClustersRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListClustersOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listClustersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListClusters"
                
                (AWS.Core.Decode.ResultDecoder "ListClustersResult" listClustersResultDecoder)
                
            )



{-| Options for a listClusters request
-}
type alias ListClustersOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>This action returns a list of the different Amazon EC2 Amazon Machine Images (AMIs) that are owned by your AWS account that would be supported for use on <code>EDGE</code>, <code>EDGE_C</code>, and <code>EDGE_CG</code> devices. For more information on compatible AMIs, see <a href="http://docs.aws.amazon.com/snowball/latest/developer-guide/using-ec2.html">Using Amazon EC2 Compute Instances</a> in the <i>AWS Snowball Developer Guide</i>.</p>

__Required Parameters__



-}

listCompatibleImages :
  
  
    ( ListCompatibleImagesOptions -> ListCompatibleImagesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListCompatibleImagesResult)

listCompatibleImages setOptions =
    
    let
        requestInput = ListCompatibleImagesRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListCompatibleImagesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listCompatibleImagesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListCompatibleImages"
                
                (AWS.Core.Decode.ResultDecoder "ListCompatibleImagesResult" listCompatibleImagesResultDecoder)
                
            )



{-| Options for a listCompatibleImages request
-}
type alias ListCompatibleImagesOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Returns an array of <code>JobListEntry</code> objects of the specified length. Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.</p>

__Required Parameters__



-}

listJobs :
  
  
    ( ListJobsOptions -> ListJobsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListJobsResult)

listJobs setOptions =
    
    let
        requestInput = ListJobsRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListJobsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listJobsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListJobs"
                
                (AWS.Core.Decode.ResultDecoder "ListJobsResult" listJobsResultDecoder)
                
            )



{-| Options for a listJobs request
-}
type alias ListJobsOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>While a cluster's <code>ClusterState</code> value is in the <code>AwaitingQuorum</code> state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.</p>

__Required Parameters__

* `clusterId` __:__ `String`


-}

updateCluster :
  
    String ->
  
  
    ( UpdateClusterOptions -> UpdateClusterOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateClusterResult)

updateCluster clusterId setOptions =
    
    let
        requestInput = UpdateClusterRequest
            
            clusterId
            
            options.roleARN
            
            options.description
            
            options.resources
            
            options.addressId
            
            options.shippingOption
            
            options.notification
            
            options.forwardingAddressId
            
        
        options = setOptions (UpdateClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
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
                
                (AWS.Core.Decode.ResultDecoder "UpdateClusterResult" updateClusterResultDecoder)
                
            )



{-| Options for a updateCluster request
-}
type alias UpdateClusterOptions =
    {
    roleARN : Maybe String,description : Maybe String,resources : Maybe JobResource,addressId : Maybe String,shippingOption : Maybe ShippingOption,notification : Maybe Notification,forwardingAddressId : Maybe String
    }



{-| <p>While a job's <code>JobState</code> value is <code>New</code>, you can update some of the information associated with a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}

updateJob :
  
    String ->
  
  
    ( UpdateJobOptions -> UpdateJobOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateJobResult)

updateJob jobId setOptions =
    
    let
        requestInput = UpdateJobRequest
            
            jobId
            
            options.roleARN
            
            options.notification
            
            options.resources
            
            options.addressId
            
            options.shippingOption
            
            options.description
            
            options.snowballCapacityPreference
            
            options.forwardingAddressId
            
        
        options = setOptions (UpdateJobOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateJob"
                
                (AWS.Core.Decode.ResultDecoder "UpdateJobResult" updateJobResultDecoder)
                
            )



{-| Options for a updateJob request
-}
type alias UpdateJobOptions =
    {
    roleARN : Maybe String,notification : Maybe Notification,resources : Maybe JobResource,addressId : Maybe String,shippingOption : Maybe ShippingOption,description : Maybe String,snowballCapacityPreference : Maybe SnowballCapacity,forwardingAddressId : Maybe String
    }




{-| <p>The address that you want the Snowball or Snowballs associated with a specific job to be shipped to. Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. Although no individual elements of the <code>Address</code> are required, if the address is invalid or unsupported, then an exception is thrown.</p>
-}
type alias Address =
    { addressId : Maybe String
    , name : Maybe String
    , company : Maybe String
    , street1 : Maybe String
    , street2 : Maybe String
    , street3 : Maybe String
    , city : Maybe String
    , stateOrProvince : Maybe String
    , prefectureOrDistrict : Maybe String
    , landmark : Maybe String
    , country : Maybe String
    , postalCode : Maybe String
    , phoneNumber : Maybe String
    , isRestricted : Maybe Bool
    }



addressDecoder : JD.Decoder Address
addressDecoder =
    JD.succeed Address
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AddressId", "addressId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Company", "company"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Street1", "street1"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Street2", "street2"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Street3", "street3"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["City", "city"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StateOrProvince", "stateOrProvince"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PrefectureOrDistrict", "prefectureOrDistrict"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Landmark", "landmark"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Country", "country"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PostalCode", "postalCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PhoneNumber", "phoneNumber"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsRestricted", "isRestricted"]
            JD.bool
        )
        




addressToString : Address -> String -- List (String, String)
addressToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "addressId" "" -- val.addressId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "company" "" -- val.company
        
    --     |> Dict.insert
    --         "street1" "" -- val.street1
        
    --     |> Dict.insert
    --         "street2" "" -- val.street2
        
    --     |> Dict.insert
    --         "street3" "" -- val.street3
        
    --     |> Dict.insert
    --         "city" "" -- val.city
        
    --     |> Dict.insert
    --         "stateOrProvince" "" -- val.stateOrProvince
        
    --     |> Dict.insert
    --         "prefectureOrDistrict" "" -- val.prefectureOrDistrict
        
    --     |> Dict.insert
    --         "landmark" "" -- val.landmark
        
    --     |> Dict.insert
    --         "country" "" -- val.country
        
    --     |> Dict.insert
    --         "postalCode" "" -- val.postalCode
        
    --     |> Dict.insert
    --         "phoneNumber" "" -- val.phoneNumber
        
    --     |> Dict.insert
    --         "isRestricted" "" -- val.isRestricted
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from cancelClust
-}
type alias CancelClusterResult =
    { 
    }



cancelClusterResultDecoder : JD.Decoder CancelClusterResult
cancelClusterResultDecoder =
    JD.succeed CancelClusterResult
        




cancelClusterResultToString : CancelClusterResult -> String -- List (String, String)
cancelClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from cancelJ
-}
type alias CancelJobResult =
    { 
    }



cancelJobResultDecoder : JD.Decoder CancelJobResult
cancelJobResultDecoder =
    JD.succeed CancelJobResult
        




cancelJobResultToString : CancelJobResult -> String -- List (String, String)
cancelJobResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Contains a cluster's state, a cluster's ID, and other important information.</p>
-}
type alias ClusterListEntry =
    { clusterId : Maybe String
    , clusterState : Maybe ClusterState
    , creationDate : Maybe Posix
    , description : Maybe String
    }



clusterListEntryDecoder : JD.Decoder ClusterListEntry
clusterListEntryDecoder =
    JD.succeed ClusterListEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClusterId", "clusterId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClusterState", "clusterState"]
            clusterStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        




clusterListEntryToString : ClusterListEntry -> String -- List (String, String)
clusterListEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clusterId" "" -- val.clusterId
        
    --     |> Dict.insert
    --         "clusterState" "" -- val.clusterState
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| <p>Contains metadata about a specific cluster.</p>
-}
type alias ClusterMetadata =
    { clusterId : Maybe String
    , description : Maybe String
    , kmsKeyARN : Maybe String
    , roleARN : Maybe String
    , clusterState : Maybe ClusterState
    , jobType : Maybe JobType
    , snowballType : Maybe SnowballType
    , creationDate : Maybe Posix
    , resources : Maybe JobResource
    , addressId : Maybe String
    , shippingOption : Maybe ShippingOption
    , notification : Maybe Notification
    , forwardingAddressId : Maybe String
    }



clusterMetadataDecoder : JD.Decoder ClusterMetadata
clusterMetadataDecoder =
    JD.succeed ClusterMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClusterId", "clusterId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KmsKeyARN", "kmsKeyARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClusterState", "clusterState"]
            clusterStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobType", "jobType"]
            jobTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnowballType", "snowballType"]
            snowballTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Resources", "resources"]
            jobResourceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AddressId", "addressId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ShippingOption", "shippingOption"]
            shippingOptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Notification", "notification"]
            notificationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ForwardingAddressId", "forwardingAddressId"]
            JD.string
        )
        




clusterMetadataToString : ClusterMetadata -> String -- List (String, String)
clusterMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clusterId" "" -- val.clusterId
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "kmsKeyARN" "" -- val.kmsKeyARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "clusterState" "" -- val.clusterState
        
    --     |> Dict.insert
    --         "jobType" "" -- val.jobType
        
    --     |> Dict.insert
    --         "snowballType" "" -- val.snowballType
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "resources" "" -- val.resources
        
    --     |> Dict.insert
    --         "addressId" "" -- val.addressId
        
    --     |> Dict.insert
    --         "shippingOption" "" -- val.shippingOption
        
    --     |> Dict.insert
    --         "notification" "" -- val.notification
        
    --     |> Dict.insert
    --         "forwardingAddressId" "" -- val.forwardingAddressId
        
    --     |> Dict.toList
    ""



{-| One of

* `ClusterState_AwaitingQuorum`
* `ClusterState_Pending`
* `ClusterState_InUse`
* `ClusterState_Complete`
* `ClusterState_Cancelled`

-}
type ClusterState
    = ClusterState_AwaitingQuorum
    | ClusterState_Pending
    | ClusterState_InUse
    | ClusterState_Complete
    | ClusterState_Cancelled



clusterStateDecoder : JD.Decoder ClusterState
clusterStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AwaitingQuorum" ->
                        JD.succeed ClusterState_AwaitingQuorum

                    "Pending" ->
                        JD.succeed ClusterState_Pending

                    "InUse" ->
                        JD.succeed ClusterState_InUse

                    "Complete" ->
                        JD.succeed ClusterState_Complete

                    "Cancelled" ->
                        JD.succeed ClusterState_Cancelled


                    _ ->
                        JD.fail "bad thing"
            )




clusterStateToString : ClusterState -> String
clusterStateToString val =
    case val of
        ClusterState_AwaitingQuorum ->
            "AwaitingQuorum"

        ClusterState_Pending ->
            "Pending"

        ClusterState_InUse ->
            "InUse"

        ClusterState_Complete ->
            "Complete"

        ClusterState_Cancelled ->
            "Cancelled"




{-| <p>A JSON-formatted object that describes a compatible Amazon Machine Image (AMI). For more information on compatible AMIs, see <a href="http://docs.aws.amazon.com/snowball/latest/developer-guide/using-ec2.html">Using Amazon EC2 Compute Instances</a> in the <i>AWS Snowball Developer Guide</i>.</p>
-}
type alias CompatibleImage =
    { amiId : Maybe String
    , name : Maybe String
    }



compatibleImageDecoder : JD.Decoder CompatibleImage
compatibleImageDecoder =
    JD.succeed CompatibleImage
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AmiId", "amiId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




compatibleImageToString : CompatibleImage -> String -- List (String, String)
compatibleImageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "amiId" "" -- val.amiId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createAddre
-}
type alias CreateAddressResult =
    { addressId : Maybe String
    }



createAddressResultDecoder : JD.Decoder CreateAddressResult
createAddressResultDecoder =
    JD.succeed CreateAddressResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AddressId", "addressId"]
            JD.string
        )
        




createAddressResultToString : CreateAddressResult -> String -- List (String, String)
createAddressResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "addressId" "" -- val.addressId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createClust
-}
type alias CreateClusterResult =
    { clusterId : Maybe String
    }



createClusterResultDecoder : JD.Decoder CreateClusterResult
createClusterResultDecoder =
    JD.succeed CreateClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClusterId", "clusterId"]
            JD.string
        )
        




createClusterResultToString : CreateClusterResult -> String -- List (String, String)
createClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clusterId" "" -- val.clusterId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createJ
-}
type alias CreateJobResult =
    { jobId : Maybe String
    }



createJobResultDecoder : JD.Decoder CreateJobResult
createJobResultDecoder =
    JD.succeed CreateJobResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobId", "jobId"]
            JD.string
        )
        




createJobResultToString : CreateJobResult -> String -- List (String, String)
createJobResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobId" "" -- val.jobId
        
    --     |> Dict.toList
    ""



{-| <p>Defines the real-time status of a Snowball's data transfer while the device is at AWS. This data is only available while a job has a <code>JobState</code> value of <code>InProgress</code>, for both import and export jobs.</p>
-}
type alias DataTransfer =
    { bytesTransferred : Maybe Int
    , objectsTransferred : Maybe Int
    , totalBytes : Maybe Int
    , totalObjects : Maybe Int
    }



dataTransferDecoder : JD.Decoder DataTransfer
dataTransferDecoder =
    JD.succeed DataTransfer
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BytesTransferred", "bytesTransferred"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ObjectsTransferred", "objectsTransferred"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TotalBytes", "totalBytes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TotalObjects", "totalObjects"]
            JD.int
        )
        




dataTransferToString : DataTransfer -> String -- List (String, String)
dataTransferToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bytesTransferred" "" -- val.bytesTransferred
        
    --     |> Dict.insert
    --         "objectsTransferred" "" -- val.objectsTransferred
        
    --     |> Dict.insert
    --         "totalBytes" "" -- val.totalBytes
        
    --     |> Dict.insert
    --         "totalObjects" "" -- val.totalObjects
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAddre
-}
type alias DescribeAddressResult =
    { address : Maybe Address
    }



describeAddressResultDecoder : JD.Decoder DescribeAddressResult
describeAddressResultDecoder =
    JD.succeed DescribeAddressResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Address", "address"]
            addressDecoder
        )
        




describeAddressResultToString : DescribeAddressResult -> String -- List (String, String)
describeAddressResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "address" "" -- val.address
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAddress
-}
type alias DescribeAddressesResult =
    { addresses : Maybe (List Address)
    , nextToken : Maybe String
    }



describeAddressesResultDecoder : JD.Decoder DescribeAddressesResult
describeAddressesResultDecoder =
    JD.succeed DescribeAddressesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Addresses", "addresses"]
            (JD.list addressDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeAddressesResultToString : DescribeAddressesResult -> String -- List (String, String)
describeAddressesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "addresses" "" -- val.addresses
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeClust
-}
type alias DescribeClusterResult =
    { clusterMetadata : Maybe ClusterMetadata
    }



describeClusterResultDecoder : JD.Decoder DescribeClusterResult
describeClusterResultDecoder =
    JD.succeed DescribeClusterResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClusterMetadata", "clusterMetadata"]
            clusterMetadataDecoder
        )
        




describeClusterResultToString : DescribeClusterResult -> String -- List (String, String)
describeClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clusterMetadata" "" -- val.clusterMetadata
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeJ
-}
type alias DescribeJobResult =
    { jobMetadata : Maybe JobMetadata
    , subJobMetadata : Maybe (List JobMetadata)
    }



describeJobResultDecoder : JD.Decoder DescribeJobResult
describeJobResultDecoder =
    JD.succeed DescribeJobResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobMetadata", "jobMetadata"]
            jobMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SubJobMetadata", "subJobMetadata"]
            (JD.list jobMetadataDecoder)
        )
        




describeJobResultToString : DescribeJobResult -> String -- List (String, String)
describeJobResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobMetadata" "" -- val.jobMetadata
        
    --     |> Dict.insert
    --         "subJobMetadata" "" -- val.subJobMetadata
        
    --     |> Dict.toList
    ""



{-| <p>A JSON-formatted object that contains the IDs for an Amazon Machine Image (AMI), including the Amazon EC2 AMI ID and the Snowball Edge AMI ID. Each AMI has these two IDs to simplify identifying the AMI in both the AWS Cloud and on the device.</p>
-}
type alias Ec2AmiResource =
    { amiId : String
    , snowballAmiId : Maybe String
    }



ec2AmiResourceDecoder : JD.Decoder Ec2AmiResource
ec2AmiResourceDecoder =
    JD.succeed Ec2AmiResource
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AmiId", "amiId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnowballAmiId", "snowballAmiId"]
            JD.string
        )
        




ec2AmiResourceToString : Ec2AmiResource -> String -- List (String, String)
ec2AmiResourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "amiId" "" -- val.amiId
        
    --     |> Dict.insert
    --         "snowballAmiId" "" -- val.snowballAmiId
        
    --     |> Dict.toList
    ""



{-| <p>The container for the <a>EventTriggerDefinition$EventResourceARN</a>.</p>
-}
type alias EventTriggerDefinition =
    { eventResourceARN : Maybe String
    }



eventTriggerDefinitionDecoder : JD.Decoder EventTriggerDefinition
eventTriggerDefinitionDecoder =
    JD.succeed EventTriggerDefinition
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventResourceARN", "eventResourceARN"]
            JD.string
        )
        




eventTriggerDefinitionToString : EventTriggerDefinition -> String -- List (String, String)
eventTriggerDefinitionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventResourceARN" "" -- val.eventResourceARN
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getJobManife
-}
type alias GetJobManifestResult =
    { manifestURI : Maybe String
    }



getJobManifestResultDecoder : JD.Decoder GetJobManifestResult
getJobManifestResultDecoder =
    JD.succeed GetJobManifestResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ManifestURI", "manifestURI"]
            JD.string
        )
        




getJobManifestResultToString : GetJobManifestResult -> String -- List (String, String)
getJobManifestResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "manifestURI" "" -- val.manifestURI
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getJobUnlockCo
-}
type alias GetJobUnlockCodeResult =
    { unlockCode : Maybe String
    }



getJobUnlockCodeResultDecoder : JD.Decoder GetJobUnlockCodeResult
getJobUnlockCodeResultDecoder =
    JD.succeed GetJobUnlockCodeResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UnlockCode", "unlockCode"]
            JD.string
        )
        




getJobUnlockCodeResultToString : GetJobUnlockCodeResult -> String -- List (String, String)
getJobUnlockCodeResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "unlockCode" "" -- val.unlockCode
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getSnowballUsa
-}
type alias GetSnowballUsageResult =
    { snowballLimit : Maybe Int
    , snowballsInUse : Maybe Int
    }



getSnowballUsageResultDecoder : JD.Decoder GetSnowballUsageResult
getSnowballUsageResultDecoder =
    JD.succeed GetSnowballUsageResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnowballLimit", "snowballLimit"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnowballsInUse", "snowballsInUse"]
            JD.int
        )
        




getSnowballUsageResultToString : GetSnowballUsageResult -> String -- List (String, String)
getSnowballUsageResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "snowballLimit" "" -- val.snowballLimit
        
    --     |> Dict.insert
    --         "snowballsInUse" "" -- val.snowballsInUse
        
    --     |> Dict.toList
    ""



{-| <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of an export job.</p>
-}
type alias JobListEntry =
    { jobId : Maybe String
    , jobState : Maybe JobState
    , isMaster : Maybe Bool
    , jobType : Maybe JobType
    , snowballType : Maybe SnowballType
    , creationDate : Maybe Posix
    , description : Maybe String
    }



jobListEntryDecoder : JD.Decoder JobListEntry
jobListEntryDecoder =
    JD.succeed JobListEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobId", "jobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobState", "jobState"]
            jobStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsMaster", "isMaster"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobType", "jobType"]
            jobTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnowballType", "snowballType"]
            snowballTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        




jobListEntryToString : JobListEntry -> String -- List (String, String)
jobListEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobId" "" -- val.jobId
        
    --     |> Dict.insert
    --         "jobState" "" -- val.jobState
        
    --     |> Dict.insert
    --         "isMaster" "" -- val.isMaster
        
    --     |> Dict.insert
    --         "jobType" "" -- val.jobType
        
    --     |> Dict.insert
    --         "snowballType" "" -- val.snowballType
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| <p>Contains job logs. Whenever Snowball is used to import data into or export data out of Amazon S3, you'll have the option of downloading a PDF job report. Job logs are returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type. The job logs can be accessed for up to 60 minutes after this request has been made. To access any of the job logs after 60 minutes have passed, you'll have to make another call to the <code>DescribeJob</code> action.</p> <p>For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snowball for your job part is being delivered to you.</p> <p>The job report provides you insight into the state of your Amazon S3 data transfer. The report includes details about your job or job part for your records.</p> <p>For deeper visibility into the status of your transferred objects, you can look at the two associated logs: a success log and a failure log. The logs are saved in comma-separated value (CSV) format, and the name of each log includes the ID of the job or job part that the log describes.</p>
-}
type alias JobLogs =
    { jobCompletionReportURI : Maybe String
    , jobSuccessLogURI : Maybe String
    , jobFailureLogURI : Maybe String
    }



jobLogsDecoder : JD.Decoder JobLogs
jobLogsDecoder =
    JD.succeed JobLogs
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobCompletionReportURI", "jobCompletionReportURI"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobSuccessLogURI", "jobSuccessLogURI"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobFailureLogURI", "jobFailureLogURI"]
            JD.string
        )
        




jobLogsToString : JobLogs -> String -- List (String, String)
jobLogsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobCompletionReportURI" "" -- val.jobCompletionReportURI
        
    --     |> Dict.insert
    --         "jobSuccessLogURI" "" -- val.jobSuccessLogURI
        
    --     |> Dict.insert
    --         "jobFailureLogURI" "" -- val.jobFailureLogURI
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about a specific job including shipping information, job status, and other important metadata. This information is returned as a part of the response syntax of the <code>DescribeJob</code> action.</p>
-}
type alias JobMetadata =
    { jobId : Maybe String
    , jobState : Maybe JobState
    , jobType : Maybe JobType
    , snowballType : Maybe SnowballType
    , creationDate : Maybe Posix
    , resources : Maybe JobResource
    , description : Maybe String
    , kmsKeyARN : Maybe String
    , roleARN : Maybe String
    , addressId : Maybe String
    , shippingDetails : Maybe ShippingDetails
    , snowballCapacityPreference : Maybe SnowballCapacity
    , notification : Maybe Notification
    , dataTransferProgress : Maybe DataTransfer
    , jobLogInfo : Maybe JobLogs
    , clusterId : Maybe String
    , forwardingAddressId : Maybe String
    }



jobMetadataDecoder : JD.Decoder JobMetadata
jobMetadataDecoder =
    JD.succeed JobMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobId", "jobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobState", "jobState"]
            jobStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobType", "jobType"]
            jobTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnowballType", "snowballType"]
            snowballTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Resources", "resources"]
            jobResourceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KmsKeyARN", "kmsKeyARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AddressId", "addressId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ShippingDetails", "shippingDetails"]
            shippingDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnowballCapacityPreference", "snowballCapacityPreference"]
            snowballCapacityDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Notification", "notification"]
            notificationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataTransferProgress", "dataTransferProgress"]
            dataTransferDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobLogInfo", "jobLogInfo"]
            jobLogsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClusterId", "clusterId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ForwardingAddressId", "forwardingAddressId"]
            JD.string
        )
        




jobMetadataToString : JobMetadata -> String -- List (String, String)
jobMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobId" "" -- val.jobId
        
    --     |> Dict.insert
    --         "jobState" "" -- val.jobState
        
    --     |> Dict.insert
    --         "jobType" "" -- val.jobType
        
    --     |> Dict.insert
    --         "snowballType" "" -- val.snowballType
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "resources" "" -- val.resources
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "kmsKeyARN" "" -- val.kmsKeyARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "addressId" "" -- val.addressId
        
    --     |> Dict.insert
    --         "shippingDetails" "" -- val.shippingDetails
        
    --     |> Dict.insert
    --         "snowballCapacityPreference" "" -- val.snowballCapacityPreference
        
    --     |> Dict.insert
    --         "notification" "" -- val.notification
        
    --     |> Dict.insert
    --         "dataTransferProgress" "" -- val.dataTransferProgress
        
    --     |> Dict.insert
    --         "jobLogInfo" "" -- val.jobLogInfo
        
    --     |> Dict.insert
    --         "clusterId" "" -- val.clusterId
        
    --     |> Dict.insert
    --         "forwardingAddressId" "" -- val.forwardingAddressId
        
    --     |> Dict.toList
    ""



{-| <p>Contains an array of AWS resource objects. Each object represents an Amazon S3 bucket, an AWS Lambda function, or an Amazon Machine Image (AMI) based on Amazon EC2 that is associated with a particular job.</p>
-}
type alias JobResource =
    { s3Resources : Maybe (List S3Resource)
    , lambdaResources : Maybe (List LambdaResource)
    , ec2AmiResources : Maybe (List Ec2AmiResource)
    }



jobResourceDecoder : JD.Decoder JobResource
jobResourceDecoder =
    JD.succeed JobResource
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3Resources", "s3Resources"]
            (JD.list s3ResourceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LambdaResources", "lambdaResources"]
            (JD.list lambdaResourceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Ec2AmiResources", "ec2AmiResources"]
            (JD.list ec2AmiResourceDecoder)
        )
        




jobResourceToString : JobResource -> String -- List (String, String)
jobResourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s3Resources" "" -- val.s3Resources
        
    --     |> Dict.insert
    --         "lambdaResources" "" -- val.lambdaResources
        
    --     |> Dict.insert
    --         "ec2AmiResources" "" -- val.ec2AmiResources
        
    --     |> Dict.toList
    ""



{-| One of

* `JobState_New`
* `JobState_PreparingAppliance`
* `JobState_PreparingShipment`
* `JobState_InTransitToCustomer`
* `JobState_WithCustomer`
* `JobState_InTransitToAWS`
* `JobState_WithAWSSortingFacility`
* `JobState_WithAWS`
* `JobState_InProgress`
* `JobState_Complete`
* `JobState_Cancelled`
* `JobState_Listing`
* `JobState_Pending`

-}
type JobState
    = JobState_New
    | JobState_PreparingAppliance
    | JobState_PreparingShipment
    | JobState_InTransitToCustomer
    | JobState_WithCustomer
    | JobState_InTransitToAWS
    | JobState_WithAWSSortingFacility
    | JobState_WithAWS
    | JobState_InProgress
    | JobState_Complete
    | JobState_Cancelled
    | JobState_Listing
    | JobState_Pending



jobStateDecoder : JD.Decoder JobState
jobStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "New" ->
                        JD.succeed JobState_New

                    "PreparingAppliance" ->
                        JD.succeed JobState_PreparingAppliance

                    "PreparingShipment" ->
                        JD.succeed JobState_PreparingShipment

                    "InTransitToCustomer" ->
                        JD.succeed JobState_InTransitToCustomer

                    "WithCustomer" ->
                        JD.succeed JobState_WithCustomer

                    "InTransitToAWS" ->
                        JD.succeed JobState_InTransitToAWS

                    "WithAWSSortingFacility" ->
                        JD.succeed JobState_WithAWSSortingFacility

                    "WithAWS" ->
                        JD.succeed JobState_WithAWS

                    "InProgress" ->
                        JD.succeed JobState_InProgress

                    "Complete" ->
                        JD.succeed JobState_Complete

                    "Cancelled" ->
                        JD.succeed JobState_Cancelled

                    "Listing" ->
                        JD.succeed JobState_Listing

                    "Pending" ->
                        JD.succeed JobState_Pending


                    _ ->
                        JD.fail "bad thing"
            )




jobStateToString : JobState -> String
jobStateToString val =
    case val of
        JobState_New ->
            "New"

        JobState_PreparingAppliance ->
            "PreparingAppliance"

        JobState_PreparingShipment ->
            "PreparingShipment"

        JobState_InTransitToCustomer ->
            "InTransitToCustomer"

        JobState_WithCustomer ->
            "WithCustomer"

        JobState_InTransitToAWS ->
            "InTransitToAWS"

        JobState_WithAWSSortingFacility ->
            "WithAWSSortingFacility"

        JobState_WithAWS ->
            "WithAWS"

        JobState_InProgress ->
            "InProgress"

        JobState_Complete ->
            "Complete"

        JobState_Cancelled ->
            "Cancelled"

        JobState_Listing ->
            "Listing"

        JobState_Pending ->
            "Pending"




{-| One of

* `JobType_IMPORT`
* `JobType_EXPORT`
* `JobType_LOCAL_USE`

-}
type JobType
    = JobType_IMPORT
    | JobType_EXPORT
    | JobType_LOCAL_USE



jobTypeDecoder : JD.Decoder JobType
jobTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IMPORT" ->
                        JD.succeed JobType_IMPORT

                    "EXPORT" ->
                        JD.succeed JobType_EXPORT

                    "LOCAL_USE" ->
                        JD.succeed JobType_LOCAL_USE


                    _ ->
                        JD.fail "bad thing"
            )




jobTypeToString : JobType -> String
jobTypeToString val =
    case val of
        JobType_IMPORT ->
            "IMPORT"

        JobType_EXPORT ->
            "EXPORT"

        JobType_LOCAL_USE ->
            "LOCAL_USE"




{-| <p>Contains a key range. For export jobs, a <code>S3Resource</code> object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
-}
type alias KeyRange =
    { beginMarker : Maybe String
    , endMarker : Maybe String
    }



keyRangeDecoder : JD.Decoder KeyRange
keyRangeDecoder =
    JD.succeed KeyRange
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BeginMarker", "beginMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndMarker", "endMarker"]
            JD.string
        )
        




keyRangeToString : KeyRange -> String -- List (String, String)
keyRangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "beginMarker" "" -- val.beginMarker
        
    --     |> Dict.insert
    --         "endMarker" "" -- val.endMarker
        
    --     |> Dict.toList
    ""



{-| <p>Identifies </p>
-}
type alias LambdaResource =
    { lambdaArn : Maybe String
    , eventTriggers : Maybe (List EventTriggerDefinition)
    }



lambdaResourceDecoder : JD.Decoder LambdaResource
lambdaResourceDecoder =
    JD.succeed LambdaResource
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LambdaArn", "lambdaArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventTriggers", "eventTriggers"]
            (JD.list eventTriggerDefinitionDecoder)
        )
        




lambdaResourceToString : LambdaResource -> String -- List (String, String)
lambdaResourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "lambdaArn" "" -- val.lambdaArn
        
    --     |> Dict.insert
    --         "eventTriggers" "" -- val.eventTriggers
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listClusterJo
-}
type alias ListClusterJobsResult =
    { jobListEntries : Maybe (List JobListEntry)
    , nextToken : Maybe String
    }



listClusterJobsResultDecoder : JD.Decoder ListClusterJobsResult
listClusterJobsResultDecoder =
    JD.succeed ListClusterJobsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobListEntries", "jobListEntries"]
            (JD.list jobListEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listClusterJobsResultToString : ListClusterJobsResult -> String -- List (String, String)
listClusterJobsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobListEntries" "" -- val.jobListEntries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listCluste
-}
type alias ListClustersResult =
    { clusterListEntries : Maybe (List ClusterListEntry)
    , nextToken : Maybe String
    }



listClustersResultDecoder : JD.Decoder ListClustersResult
listClustersResultDecoder =
    JD.succeed ListClustersResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClusterListEntries", "clusterListEntries"]
            (JD.list clusterListEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listClustersResultToString : ListClustersResult -> String -- List (String, String)
listClustersResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clusterListEntries" "" -- val.clusterListEntries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listCompatibleImag
-}
type alias ListCompatibleImagesResult =
    { compatibleImages : Maybe (List CompatibleImage)
    , nextToken : Maybe String
    }



listCompatibleImagesResultDecoder : JD.Decoder ListCompatibleImagesResult
listCompatibleImagesResultDecoder =
    JD.succeed ListCompatibleImagesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompatibleImages", "compatibleImages"]
            (JD.list compatibleImageDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listCompatibleImagesResultToString : ListCompatibleImagesResult -> String -- List (String, String)
listCompatibleImagesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "compatibleImages" "" -- val.compatibleImages
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listJo
-}
type alias ListJobsResult =
    { jobListEntries : Maybe (List JobListEntry)
    , nextToken : Maybe String
    }



listJobsResultDecoder : JD.Decoder ListJobsResult
listJobsResultDecoder =
    JD.succeed ListJobsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobListEntries", "jobListEntries"]
            (JD.list jobListEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listJobsResultToString : ListJobsResult -> String -- List (String, String)
listJobsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobListEntries" "" -- val.jobListEntries
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The <code>Notification</code> object is returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type.</p> <p>When the notification settings are defined during job creation, you can choose to notify based on a specific set of job states using the <code>JobStatesToNotify</code> array of strings, or you can specify that you want to have Amazon SNS notifications sent out for all job states with <code>NotifyAll</code> set to true.</p>
-}
type alias Notification =
    { snsTopicARN : Maybe String
    , jobStatesToNotify : Maybe (List JobState)
    , notifyAll : Maybe Bool
    }



notificationDecoder : JD.Decoder Notification
notificationDecoder =
    JD.succeed Notification
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SnsTopicARN", "snsTopicARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobStatesToNotify", "jobStatesToNotify"]
            (JD.list jobStateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotifyAll", "notifyAll"]
            JD.bool
        )
        




notificationToString : Notification -> String -- List (String, String)
notificationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "snsTopicARN" "" -- val.snsTopicARN
        
    --     |> Dict.insert
    --         "jobStatesToNotify" "" -- val.jobStatesToNotify
        
    --     |> Dict.insert
    --         "notifyAll" "" -- val.notifyAll
        
    --     |> Dict.toList
    ""



{-| <p>Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into. For export jobs, this object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
-}
type alias S3Resource =
    { bucketArn : Maybe String
    , keyRange : Maybe KeyRange
    }



s3ResourceDecoder : JD.Decoder S3Resource
s3ResourceDecoder =
    JD.succeed S3Resource
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BucketArn", "bucketArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyRange", "keyRange"]
            keyRangeDecoder
        )
        




s3ResourceToString : S3Resource -> String -- List (String, String)
s3ResourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bucketArn" "" -- val.bucketArn
        
    --     |> Dict.insert
    --         "keyRange" "" -- val.keyRange
        
    --     |> Dict.toList
    ""



{-| <p>The <code>Status</code> and <code>TrackingNumber</code> information for an inbound or outbound shipment.</p>
-}
type alias Shipment =
    { status : Maybe String
    , trackingNumber : Maybe String
    }



shipmentDecoder : JD.Decoder Shipment
shipmentDecoder =
    JD.succeed Shipment
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TrackingNumber", "trackingNumber"]
            JD.string
        )
        




shipmentToString : Shipment -> String -- List (String, String)
shipmentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "trackingNumber" "" -- val.trackingNumber
        
    --     |> Dict.toList
    ""



{-| <p>A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.</p>
-}
type alias ShippingDetails =
    { shippingOption : Maybe ShippingOption
    , inboundShipment : Maybe Shipment
    , outboundShipment : Maybe Shipment
    }



shippingDetailsDecoder : JD.Decoder ShippingDetails
shippingDetailsDecoder =
    JD.succeed ShippingDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ShippingOption", "shippingOption"]
            shippingOptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InboundShipment", "inboundShipment"]
            shipmentDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OutboundShipment", "outboundShipment"]
            shipmentDecoder
        )
        




shippingDetailsToString : ShippingDetails -> String -- List (String, String)
shippingDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "shippingOption" "" -- val.shippingOption
        
    --     |> Dict.insert
    --         "inboundShipment" "" -- val.inboundShipment
        
    --     |> Dict.insert
    --         "outboundShipment" "" -- val.outboundShipment
        
    --     |> Dict.toList
    ""



{-| One of

* `ShippingOption_SECOND_DAY`
* `ShippingOption_NEXT_DAY`
* `ShippingOption_EXPRESS`
* `ShippingOption_STANDARD`

-}
type ShippingOption
    = ShippingOption_SECOND_DAY
    | ShippingOption_NEXT_DAY
    | ShippingOption_EXPRESS
    | ShippingOption_STANDARD



shippingOptionDecoder : JD.Decoder ShippingOption
shippingOptionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SECOND_DAY" ->
                        JD.succeed ShippingOption_SECOND_DAY

                    "NEXT_DAY" ->
                        JD.succeed ShippingOption_NEXT_DAY

                    "EXPRESS" ->
                        JD.succeed ShippingOption_EXPRESS

                    "STANDARD" ->
                        JD.succeed ShippingOption_STANDARD


                    _ ->
                        JD.fail "bad thing"
            )




shippingOptionToString : ShippingOption -> String
shippingOptionToString val =
    case val of
        ShippingOption_SECOND_DAY ->
            "SECOND_DAY"

        ShippingOption_NEXT_DAY ->
            "NEXT_DAY"

        ShippingOption_EXPRESS ->
            "EXPRESS"

        ShippingOption_STANDARD ->
            "STANDARD"




{-| One of

* `SnowballCapacity_T50`
* `SnowballCapacity_T80`
* `SnowballCapacity_T100`
* `SnowballCapacity_T42`
* `SnowballCapacity_NoPreference`

-}
type SnowballCapacity
    = SnowballCapacity_T50
    | SnowballCapacity_T80
    | SnowballCapacity_T100
    | SnowballCapacity_T42
    | SnowballCapacity_NoPreference



snowballCapacityDecoder : JD.Decoder SnowballCapacity
snowballCapacityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "T50" ->
                        JD.succeed SnowballCapacity_T50

                    "T80" ->
                        JD.succeed SnowballCapacity_T80

                    "T100" ->
                        JD.succeed SnowballCapacity_T100

                    "T42" ->
                        JD.succeed SnowballCapacity_T42

                    "NoPreference" ->
                        JD.succeed SnowballCapacity_NoPreference


                    _ ->
                        JD.fail "bad thing"
            )




snowballCapacityToString : SnowballCapacity -> String
snowballCapacityToString val =
    case val of
        SnowballCapacity_T50 ->
            "T50"

        SnowballCapacity_T80 ->
            "T80"

        SnowballCapacity_T100 ->
            "T100"

        SnowballCapacity_T42 ->
            "T42"

        SnowballCapacity_NoPreference ->
            "NoPreference"




{-| One of

* `SnowballType_STANDARD`
* `SnowballType_EDGE`
* `SnowballType_EDGE_C`
* `SnowballType_EDGE_CG`

-}
type SnowballType
    = SnowballType_STANDARD
    | SnowballType_EDGE
    | SnowballType_EDGE_C
    | SnowballType_EDGE_CG



snowballTypeDecoder : JD.Decoder SnowballType
snowballTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STANDARD" ->
                        JD.succeed SnowballType_STANDARD

                    "EDGE" ->
                        JD.succeed SnowballType_EDGE

                    "EDGE_C" ->
                        JD.succeed SnowballType_EDGE_C

                    "EDGE_CG" ->
                        JD.succeed SnowballType_EDGE_CG


                    _ ->
                        JD.fail "bad thing"
            )




snowballTypeToString : SnowballType -> String
snowballTypeToString val =
    case val of
        SnowballType_STANDARD ->
            "STANDARD"

        SnowballType_EDGE ->
            "EDGE"

        SnowballType_EDGE_C ->
            "EDGE_C"

        SnowballType_EDGE_CG ->
            "EDGE_CG"




{-| Type of HTTP response from updateClust
-}
type alias UpdateClusterResult =
    { 
    }



updateClusterResultDecoder : JD.Decoder UpdateClusterResult
updateClusterResultDecoder =
    JD.succeed UpdateClusterResult
        




updateClusterResultToString : UpdateClusterResult -> String -- List (String, String)
updateClusterResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateJ
-}
type alias UpdateJobResult =
    { 
    }



updateJobResultDecoder : JD.Decoder UpdateJobResult
updateJobResultDecoder =
    JD.succeed UpdateJobResult
        




updateJobResultToString : UpdateJobResult -> String -- List (String, String)
updateJobResultToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias CancelClusterRequest =
    { clusterId : String
    }


{-| undefined
-}
type alias CancelJobRequest =
    { jobId : String
    }


{-| undefined
-}
type alias CreateAddressRequest =
    { address : Address
    }


{-| undefined
-}
type alias CreateClusterRequest =
    { jobType : JobType
    , resources : JobResource
    , description : Maybe String
    , addressId : String
    , kmsKeyARN : Maybe String
    , roleARN : String
    , snowballType : Maybe SnowballType
    , shippingOption : ShippingOption
    , notification : Maybe Notification
    , forwardingAddressId : Maybe String
    }


{-| undefined
-}
type alias CreateJobRequest =
    { jobType : Maybe JobType
    , resources : Maybe JobResource
    , description : Maybe String
    , addressId : Maybe String
    , kmsKeyARN : Maybe String
    , roleARN : Maybe String
    , snowballCapacityPreference : Maybe SnowballCapacity
    , shippingOption : Maybe ShippingOption
    , notification : Maybe Notification
    , clusterId : Maybe String
    , snowballType : Maybe SnowballType
    , forwardingAddressId : Maybe String
    }


{-| undefined
-}
type alias DescribeAddressRequest =
    { addressId : String
    }


{-| undefined
-}
type alias DescribeAddressesRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeClusterRequest =
    { clusterId : String
    }


{-| undefined
-}
type alias DescribeJobRequest =
    { jobId : String
    }


{-| undefined
-}
type alias GetJobManifestRequest =
    { jobId : String
    }


{-| undefined
-}
type alias GetJobUnlockCodeRequest =
    { jobId : String
    }


{-| undefined
-}
type alias GetSnowballUsageRequest =
    { 
    }


{-| undefined
-}
type alias ListClusterJobsRequest =
    { clusterId : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListClustersRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListCompatibleImagesRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListJobsRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias UpdateClusterRequest =
    { clusterId : String
    , roleARN : Maybe String
    , description : Maybe String
    , resources : Maybe JobResource
    , addressId : Maybe String
    , shippingOption : Maybe ShippingOption
    , notification : Maybe Notification
    , forwardingAddressId : Maybe String
    }


{-| undefined
-}
type alias UpdateJobRequest =
    { jobId : String
    , roleARN : Maybe String
    , notification : Maybe Notification
    , resources : Maybe JobResource
    , addressId : Maybe String
    , shippingOption : Maybe ShippingOption
    , description : Maybe String
    , snowballCapacityPreference : Maybe SnowballCapacity
    , forwardingAddressId : Maybe String
    }






addressEncoder : Address -> JE.Value
addressEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AddressId", data.addressId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Company", data.company)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Street1", data.street1)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Street2", data.street2)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Street3", data.street3)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("City", data.city)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StateOrProvince", data.stateOrProvince)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PrefectureOrDistrict", data.prefectureOrDistrict)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Landmark", data.landmark)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Country", data.country)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PostalCode", data.postalCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PhoneNumber", data.phoneNumber)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IsRestricted", data.isRestricted)
        
        
        |> JE.object






cancelClusterRequestEncoder : CancelClusterRequest -> JE.Value
cancelClusterRequestEncoder data =
    []
        
        
        |> (::) ("ClusterId", data.clusterId |> (JE.string))
        
        
        |> JE.object






cancelClusterResultEncoder : CancelClusterResult -> JE.Value
cancelClusterResultEncoder data =
    []
        
        |> JE.object






cancelJobRequestEncoder : CancelJobRequest -> JE.Value
cancelJobRequestEncoder data =
    []
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        |> JE.object






cancelJobResultEncoder : CancelJobResult -> JE.Value
cancelJobResultEncoder data =
    []
        
        |> JE.object






clusterListEntryEncoder : ClusterListEntry -> JE.Value
clusterListEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClusterId", data.clusterId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (clusterStateToString >> JE.string)
            ("ClusterState", data.clusterState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        |> JE.object






clusterMetadataEncoder : ClusterMetadata -> JE.Value
clusterMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClusterId", data.clusterId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KmsKeyARN", data.kmsKeyARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (clusterStateToString >> JE.string)
            ("ClusterState", data.clusterState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobTypeToString >> JE.string)
            ("JobType", data.jobType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (snowballTypeToString >> JE.string)
            ("SnowballType", data.snowballType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobResourceEncoder)
            ("Resources", data.resources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AddressId", data.addressId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (shippingOptionToString >> JE.string)
            ("ShippingOption", data.shippingOption)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationEncoder)
            ("Notification", data.notification)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ForwardingAddressId", data.forwardingAddressId)
        
        
        |> JE.object










compatibleImageEncoder : CompatibleImage -> JE.Value
compatibleImageEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AmiId", data.amiId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






createAddressRequestEncoder : CreateAddressRequest -> JE.Value
createAddressRequestEncoder data =
    []
        
        
        |> (::) ("Address", data.address |> (addressEncoder))
        
        
        |> JE.object






createAddressResultEncoder : CreateAddressResult -> JE.Value
createAddressResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AddressId", data.addressId)
        
        
        |> JE.object






createClusterRequestEncoder : CreateClusterRequest -> JE.Value
createClusterRequestEncoder data =
    []
        
        
        |> (::) ("JobType", data.jobType |> (jobTypeToString >> JE.string))
        
        
        
        |> (::) ("Resources", data.resources |> (jobResourceEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> (::) ("AddressId", data.addressId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KmsKeyARN", data.kmsKeyARN)
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (snowballTypeToString >> JE.string)
            ("SnowballType", data.snowballType)
        
        
        
        |> (::) ("ShippingOption", data.shippingOption |> (shippingOptionToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationEncoder)
            ("Notification", data.notification)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ForwardingAddressId", data.forwardingAddressId)
        
        
        |> JE.object






createClusterResultEncoder : CreateClusterResult -> JE.Value
createClusterResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClusterId", data.clusterId)
        
        
        |> JE.object






createJobRequestEncoder : CreateJobRequest -> JE.Value
createJobRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jobTypeToString >> JE.string)
            ("JobType", data.jobType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobResourceEncoder)
            ("Resources", data.resources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AddressId", data.addressId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KmsKeyARN", data.kmsKeyARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (snowballCapacityToString >> JE.string)
            ("SnowballCapacityPreference", data.snowballCapacityPreference)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (shippingOptionToString >> JE.string)
            ("ShippingOption", data.shippingOption)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationEncoder)
            ("Notification", data.notification)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClusterId", data.clusterId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (snowballTypeToString >> JE.string)
            ("SnowballType", data.snowballType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ForwardingAddressId", data.forwardingAddressId)
        
        
        |> JE.object






createJobResultEncoder : CreateJobResult -> JE.Value
createJobResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobId", data.jobId)
        
        
        |> JE.object






dataTransferEncoder : DataTransfer -> JE.Value
dataTransferEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("BytesTransferred", data.bytesTransferred)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ObjectsTransferred", data.objectsTransferred)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TotalBytes", data.totalBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TotalObjects", data.totalObjects)
        
        
        |> JE.object






describeAddressRequestEncoder : DescribeAddressRequest -> JE.Value
describeAddressRequestEncoder data =
    []
        
        
        |> (::) ("AddressId", data.addressId |> (JE.string))
        
        
        |> JE.object






describeAddressResultEncoder : DescribeAddressResult -> JE.Value
describeAddressResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (addressEncoder)
            ("Address", data.address)
        
        
        |> JE.object






describeAddressesRequestEncoder : DescribeAddressesRequest -> JE.Value
describeAddressesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeAddressesResultEncoder : DescribeAddressesResult -> JE.Value
describeAddressesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (addressEncoder))
            ("Addresses", data.addresses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeClusterRequestEncoder : DescribeClusterRequest -> JE.Value
describeClusterRequestEncoder data =
    []
        
        
        |> (::) ("ClusterId", data.clusterId |> (JE.string))
        
        
        |> JE.object






describeClusterResultEncoder : DescribeClusterResult -> JE.Value
describeClusterResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (clusterMetadataEncoder)
            ("ClusterMetadata", data.clusterMetadata)
        
        
        |> JE.object






describeJobRequestEncoder : DescribeJobRequest -> JE.Value
describeJobRequestEncoder data =
    []
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        |> JE.object






describeJobResultEncoder : DescribeJobResult -> JE.Value
describeJobResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jobMetadataEncoder)
            ("JobMetadata", data.jobMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (jobMetadataEncoder))
            ("SubJobMetadata", data.subJobMetadata)
        
        
        |> JE.object






ec2AmiResourceEncoder : Ec2AmiResource -> JE.Value
ec2AmiResourceEncoder data =
    []
        
        
        |> (::) ("AmiId", data.amiId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SnowballAmiId", data.snowballAmiId)
        
        
        |> JE.object






eventTriggerDefinitionEncoder : EventTriggerDefinition -> JE.Value
eventTriggerDefinitionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventResourceARN", data.eventResourceARN)
        
        
        |> JE.object






getJobManifestRequestEncoder : GetJobManifestRequest -> JE.Value
getJobManifestRequestEncoder data =
    []
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        |> JE.object






getJobManifestResultEncoder : GetJobManifestResult -> JE.Value
getJobManifestResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ManifestURI", data.manifestURI)
        
        
        |> JE.object






getJobUnlockCodeRequestEncoder : GetJobUnlockCodeRequest -> JE.Value
getJobUnlockCodeRequestEncoder data =
    []
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        |> JE.object






getJobUnlockCodeResultEncoder : GetJobUnlockCodeResult -> JE.Value
getJobUnlockCodeResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UnlockCode", data.unlockCode)
        
        
        |> JE.object






getSnowballUsageRequestEncoder : GetSnowballUsageRequest -> JE.Value
getSnowballUsageRequestEncoder data =
    []
        
        |> JE.object






getSnowballUsageResultEncoder : GetSnowballUsageResult -> JE.Value
getSnowballUsageResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("SnowballLimit", data.snowballLimit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("SnowballsInUse", data.snowballsInUse)
        
        
        |> JE.object






jobListEntryEncoder : JobListEntry -> JE.Value
jobListEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobId", data.jobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobStateToString >> JE.string)
            ("JobState", data.jobState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IsMaster", data.isMaster)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobTypeToString >> JE.string)
            ("JobType", data.jobType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (snowballTypeToString >> JE.string)
            ("SnowballType", data.snowballType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        |> JE.object






jobLogsEncoder : JobLogs -> JE.Value
jobLogsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobCompletionReportURI", data.jobCompletionReportURI)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobSuccessLogURI", data.jobSuccessLogURI)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobFailureLogURI", data.jobFailureLogURI)
        
        
        |> JE.object






jobMetadataEncoder : JobMetadata -> JE.Value
jobMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobId", data.jobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobStateToString >> JE.string)
            ("JobState", data.jobState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobTypeToString >> JE.string)
            ("JobType", data.jobType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (snowballTypeToString >> JE.string)
            ("SnowballType", data.snowballType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobResourceEncoder)
            ("Resources", data.resources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KmsKeyARN", data.kmsKeyARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AddressId", data.addressId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (shippingDetailsEncoder)
            ("ShippingDetails", data.shippingDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (snowballCapacityToString >> JE.string)
            ("SnowballCapacityPreference", data.snowballCapacityPreference)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationEncoder)
            ("Notification", data.notification)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (dataTransferEncoder)
            ("DataTransferProgress", data.dataTransferProgress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobLogsEncoder)
            ("JobLogInfo", data.jobLogInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClusterId", data.clusterId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ForwardingAddressId", data.forwardingAddressId)
        
        
        |> JE.object






jobResourceEncoder : JobResource -> JE.Value
jobResourceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (s3ResourceEncoder))
            ("S3Resources", data.s3Resources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (lambdaResourceEncoder))
            ("LambdaResources", data.lambdaResources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ec2AmiResourceEncoder))
            ("Ec2AmiResources", data.ec2AmiResources)
        
        
        |> JE.object














keyRangeEncoder : KeyRange -> JE.Value
keyRangeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BeginMarker", data.beginMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EndMarker", data.endMarker)
        
        
        |> JE.object






lambdaResourceEncoder : LambdaResource -> JE.Value
lambdaResourceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LambdaArn", data.lambdaArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventTriggerDefinitionEncoder))
            ("EventTriggers", data.eventTriggers)
        
        
        |> JE.object






listClusterJobsRequestEncoder : ListClusterJobsRequest -> JE.Value
listClusterJobsRequestEncoder data =
    []
        
        
        |> (::) ("ClusterId", data.clusterId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listClusterJobsResultEncoder : ListClusterJobsResult -> JE.Value
listClusterJobsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (jobListEntryEncoder))
            ("JobListEntries", data.jobListEntries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listClustersRequestEncoder : ListClustersRequest -> JE.Value
listClustersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listClustersResultEncoder : ListClustersResult -> JE.Value
listClustersResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (clusterListEntryEncoder))
            ("ClusterListEntries", data.clusterListEntries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listCompatibleImagesRequestEncoder : ListCompatibleImagesRequest -> JE.Value
listCompatibleImagesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listCompatibleImagesResultEncoder : ListCompatibleImagesResult -> JE.Value
listCompatibleImagesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (compatibleImageEncoder))
            ("CompatibleImages", data.compatibleImages)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listJobsRequestEncoder : ListJobsRequest -> JE.Value
listJobsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listJobsResultEncoder : ListJobsResult -> JE.Value
listJobsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (jobListEntryEncoder))
            ("JobListEntries", data.jobListEntries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






notificationEncoder : Notification -> JE.Value
notificationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SnsTopicARN", data.snsTopicARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (jobStateToString >> JE.string))
            ("JobStatesToNotify", data.jobStatesToNotify)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("NotifyAll", data.notifyAll)
        
        
        |> JE.object






s3ResourceEncoder : S3Resource -> JE.Value
s3ResourceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BucketArn", data.bucketArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (keyRangeEncoder)
            ("KeyRange", data.keyRange)
        
        
        |> JE.object






shipmentEncoder : Shipment -> JE.Value
shipmentEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TrackingNumber", data.trackingNumber)
        
        
        |> JE.object






shippingDetailsEncoder : ShippingDetails -> JE.Value
shippingDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (shippingOptionToString >> JE.string)
            ("ShippingOption", data.shippingOption)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (shipmentEncoder)
            ("InboundShipment", data.inboundShipment)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (shipmentEncoder)
            ("OutboundShipment", data.outboundShipment)
        
        
        |> JE.object


















updateClusterRequestEncoder : UpdateClusterRequest -> JE.Value
updateClusterRequestEncoder data =
    []
        
        
        |> (::) ("ClusterId", data.clusterId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobResourceEncoder)
            ("Resources", data.resources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AddressId", data.addressId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (shippingOptionToString >> JE.string)
            ("ShippingOption", data.shippingOption)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationEncoder)
            ("Notification", data.notification)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ForwardingAddressId", data.forwardingAddressId)
        
        
        |> JE.object






updateClusterResultEncoder : UpdateClusterResult -> JE.Value
updateClusterResultEncoder data =
    []
        
        |> JE.object






updateJobRequestEncoder : UpdateJobRequest -> JE.Value
updateJobRequestEncoder data =
    []
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notificationEncoder)
            ("Notification", data.notification)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (jobResourceEncoder)
            ("Resources", data.resources)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AddressId", data.addressId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (shippingOptionToString >> JE.string)
            ("ShippingOption", data.shippingOption)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (snowballCapacityToString >> JE.string)
            ("SnowballCapacityPreference", data.snowballCapacityPreference)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ForwardingAddressId", data.forwardingAddressId)
        
        
        |> JE.object






updateJobResultEncoder : UpdateJobResult -> JE.Value
updateJobResultEncoder data =
    []
        
        |> JE.object





