module AWS.ResourceGroupsTaggingAPI
    exposing
        ( service
        , getResources
        , GetResourcesOptions
        , getTagKeys
        , GetTagKeysOptions
        , getTagValues
        , GetTagValuesOptions
        , tagResources
        , untagResources
        , ErrorCode(..)
        , FailureInfo
        , GetResourcesOutput
        , GetTagKeysOutput
        , GetTagValuesOutput
        , ResourceTagMapping
        , Tag
        , TagFilter
        , TagResourcesOutput
        , UntagResourcesOutput
        )

{-| <fullname>Resource Groups Tagging API</fullname> <p>This guide describes the API operations for the resource groups tagging.</p> <p>A tag is a label that you assign to an AWS resource. A tag consists of a key and a value, both of which you define. For example, if you have two Amazon EC2 instances, you might assign both a tag key of "Stack." But the value of "Stack" might be "Testing" for one and "Production" for the other.</p> <p>Tagging can help you organize your resources and enables you to simplify resource management, access management and cost allocation. </p> <p>You can use the resource groups tagging API operations to complete the following tasks:</p> <ul> <li> <p>Tag and untag supported resources located in the specified region for the AWS account</p> </li> <li> <p>Use tag-based filters to search for resources located in the specified region for the AWS account</p> </li> <li> <p>List all existing tag keys in the specified region for the AWS account</p> </li> <li> <p>List all existing values for the specified key in the specified region for the AWS account</p> </li> </ul> <p>To make full use of the resource groups tagging API operations, you might need additional IAM permissions, including permission to access the resources of individual services as well as permission to view and apply tags to those resources. For more information, see <a href="http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-resource-groups.html">Obtaining Permissions for Resource Groups and Tag Editor</a>.</p> <p>You can use the Resource Groups Tagging API to tag resources for the following AWS services.</p> <ul> <li> <p>Alexa for Business (a4b)</p> </li> <li> <p>API Gateway</p> </li> <li> <p>AWS AppStream</p> </li> <li> <p>AWS AppSync</p> </li> <li> <p>Amazon Athena</p> </li> <li> <p>Amazon Aurora</p> </li> <li> <p>AWS Certificate Manager</p> </li> <li> <p>AWS Certificate Manager Private CA</p> </li> <li> <p>Amazon Cloud Directory</p> </li> <li> <p>AWS CloudFormation</p> </li> <li> <p>Amazon CloudFront</p> </li> <li> <p>AWS CloudHSM</p> </li> <li> <p>AWS CloudTrail</p> </li> <li> <p>Amazon CloudWatch (alarms only)</p> </li> <li> <p>Amazon CloudWatch Events</p> </li> <li> <p>Amazon CloudWatch Logs</p> </li> <li> <p>AWS CodeBuild</p> </li> <li> <p>AWS CodeStar</p> </li> <li> <p>Amazon Cognito Identity</p> </li> <li> <p>Amazon Cognito User Pools</p> </li> <li> <p>Amazon Comprehend</p> </li> <li> <p>AWS Config</p> </li> <li> <p>AWS Data Pipeline</p> </li> <li> <p>AWS Database Migration Service</p> </li> <li> <p>AWS Datasync</p> </li> <li> <p>AWS Direct Connect</p> </li> <li> <p>AWS Directory Service</p> </li> <li> <p>Amazon DynamoDB</p> </li> <li> <p>Amazon EBS</p> </li> <li> <p>Amazon EC2</p> </li> <li> <p>Amazon ECR</p> </li> <li> <p>Amazon ECS</p> </li> <li> <p>AWS Elastic Beanstalk</p> </li> <li> <p>Amazon Elastic File System</p> </li> <li> <p>Elastic Load Balancing</p> </li> <li> <p>Amazon ElastiCache</p> </li> <li> <p>Amazon Elasticsearch Service</p> </li> <li> <p>AWS Elemental MediaLive</p> </li> <li> <p>AWS Elemental MediaPackage</p> </li> <li> <p>AWS Elemental MediaTailor</p> </li> <li> <p>Amazon EMR</p> </li> <li> <p>Amazon FSx</p> </li> <li> <p>Amazon Glacier</p> </li> <li> <p>AWS Glue</p> </li> <li> <p>Amazon Inspector</p> </li> <li> <p>AWS IoT Analytics</p> </li> <li> <p>AWS IoT Core</p> </li> <li> <p>AWS IoT Device Defender</p> </li> <li> <p>AWS IoT Device Management</p> </li> <li> <p>AWS IoT Greengrass</p> </li> <li> <p>AWS Key Management Service</p> </li> <li> <p>Amazon Kinesis</p> </li> <li> <p>Amazon Kinesis Data Analytics</p> </li> <li> <p>Amazon Kinesis Data Firehose</p> </li> <li> <p>AWS Lambda</p> </li> <li> <p>AWS License Manager</p> </li> <li> <p>Amazon Machine Learning</p> </li> <li> <p>Amazon MQ</p> </li> <li> <p>Amazon MSK</p> </li> <li> <p>Amazon Neptune</p> </li> <li> <p>AWS OpsWorks</p> </li> <li> <p>Amazon RDS</p> </li> <li> <p>Amazon Redshift</p> </li> <li> <p>AWS Resource Access Manager</p> </li> <li> <p>AWS Resource Groups</p> </li> <li> <p>AWS RoboMaker</p> </li> <li> <p>Amazon Route 53</p> </li> <li> <p>Amazon Route 53 Resolver</p> </li> <li> <p>Amazon S3 (buckets only)</p> </li> <li> <p>Amazon SageMaker</p> </li> <li> <p>AWS Secrets Manager</p> </li> <li> <p>AWS Service Catalog</p> </li> <li> <p>Amazon Simple Notification Service (SNS)</p> </li> <li> <p>Amazon Simple Queue Service (SQS)</p> </li> <li> <p>AWS Simple System Manager (SSM)</p> </li> <li> <p>AWS Step Functions</p> </li> <li> <p>AWS Storage Gateway</p> </li> <li> <p>AWS Transfer for SFTP</p> </li> <li> <p>Amazon VPC</p> </li> <li> <p>Amazon WorkSpaces</p> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [getResources](#getResources)
* [GetResourcesOptions](#GetResourcesOptions)
* [getTagKeys](#getTagKeys)
* [GetTagKeysOptions](#GetTagKeysOptions)
* [getTagValues](#getTagValues)
* [GetTagValuesOptions](#GetTagValuesOptions)
* [tagResources](#tagResources)
* [untagResources](#untagResources)


@docs getResources,GetResourcesOptions,getTagKeys,GetTagKeysOptions,getTagValues,GetTagValuesOptions,tagResources,untagResources

## Responses

* [GetResourcesOutput](#GetResourcesOutput)
* [GetTagKeysOutput](#GetTagKeysOutput)
* [GetTagValuesOutput](#GetTagValuesOutput)
* [TagResourcesOutput](#TagResourcesOutput)
* [UntagResourcesOutput](#UntagResourcesOutput)


@docs GetResourcesOutput,GetTagKeysOutput,GetTagValuesOutput,TagResourcesOutput,UntagResourcesOutput

## Records

* [FailureInfo](#FailureInfo)
* [ResourceTagMapping](#ResourceTagMapping)
* [Tag](#Tag)
* [TagFilter](#TagFilter)


@docs FailureInfo,ResourceTagMapping,Tag,TagFilter

## Unions

* [ErrorCode](#ErrorCode)


@docs ErrorCode

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE

import Dict exposing (Dict)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "tagging"
        "2017-01-26"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "ResourceGroupsTaggingAPI_20170126")



-- OPERATIONS

{-| <p>Returns all the tagged or previously tagged resources that are located in the specified region for the AWS account. You can optionally specify <i>filters</i> (tags and resource types) in your request, depending on what information you want returned. The response includes all tags that are associated with the requested resources.</p> <note> <p>You can check the <code>PaginationToken</code> response parameter to determine if a query completed. Queries can occasionally return fewer results on a page than allowed. The <code>PaginationToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display. </p> </note>

__Required Parameters__



-}

getResources :
  
  
    ( GetResourcesOptions -> GetResourcesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetResourcesOutput)

getResources setOptions =
    
    let
        requestInput = GetResourcesInput
            
            options.paginationToken
            
            options.tagFilters
            
            options.resourcesPerPage
            
            options.tagsPerPage
            
            options.resourceTypeFilters
            
        
        options = setOptions (GetResourcesOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getResourcesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetResources"
                
                (AWS.Core.Decode.ResultDecoder "GetResourcesOutput" getResourcesOutputDecoder)
                
            )



{-| Options for a getResources request
-}
type alias GetResourcesOptions =
    {
    paginationToken : Maybe String,tagFilters : Maybe (List TagFilter),resourcesPerPage : Maybe Int,tagsPerPage : Maybe Int,resourceTypeFilters : Maybe (List String)
    }



{-| <p>Returns all tag keys in the specified region for the AWS account.</p>

__Required Parameters__



-}

getTagKeys :
  
  
    ( GetTagKeysOptions -> GetTagKeysOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTagKeysOutput)

getTagKeys setOptions =
    
    let
        requestInput = GetTagKeysInput
            
            options.paginationToken
            
        
        options = setOptions (GetTagKeysOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getTagKeysInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTagKeys"
                
                (AWS.Core.Decode.ResultDecoder "GetTagKeysOutput" getTagKeysOutputDecoder)
                
            )



{-| Options for a getTagKeys request
-}
type alias GetTagKeysOptions =
    {
    paginationToken : Maybe String
    }



{-| <p>Returns all tag values for the specified key in the specified region for the AWS account.</p>

__Required Parameters__

* `key` __:__ `String`


-}

getTagValues :
  
    String ->
  
  
    ( GetTagValuesOptions -> GetTagValuesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetTagValuesOutput)

getTagValues key setOptions =
    
    let
        requestInput = GetTagValuesInput
            
            options.paginationToken
            
            key
            
        
        options = setOptions (GetTagValuesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getTagValuesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetTagValues"
                
                (AWS.Core.Decode.ResultDecoder "GetTagValuesOutput" getTagValuesOutputDecoder)
                
            )



{-| Options for a getTagValues request
-}
type alias GetTagValuesOptions =
    {
    paginationToken : Maybe String
    }



{-| <p>Applies one or more tags to the specified resources. Note the following:</p> <ul> <li> <p>Not all resources can have tags. For a list of resources that support tagging, see <a href="http://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html">Supported Resources</a> in the <i>AWS Resource Groups User Guide</i>.</p> </li> <li> <p>Each resource can have up to 50 tags. For other limits, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-restrictions">Tag Restrictions</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p> </li> <li> <p>You can only tag resources that are located in the specified region for the AWS account.</p> </li> <li> <p>To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see <a href="http://docs.aws.amazon.com/ARG/latest/userguide/obtaining-permissions-for-tagging.html">Obtaining Permissions for Tagging</a> in the <i>AWS Resource Groups User Guide</i>.</p> </li> </ul>

__Required Parameters__

* `resourceARNList` __:__ `(List String)`
* `tags` __:__ `(Dict String String)`


-}

tagResources :
  
    (List String) ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourcesOutput)

tagResources resourceARNList tags =
    
    let
        requestInput = TagResourcesInput
            
            resourceARNList
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> tagResourcesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TagResources"
                
                (AWS.Core.Decode.ResultDecoder "TagResourcesOutput" tagResourcesOutputDecoder)
                
            )





{-| <p>Removes the specified tags from the specified resources. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you attempt to remove tags from a resource that were already removed. Note the following:</p> <ul> <li> <p>To remove tags from a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for removing tags. For more information, see <a href="http://docs.aws.amazon.com/ARG/latest/userguide/obtaining-permissions-for-tagging.html">Obtaining Permissions for Tagging</a> in the <i>AWS Resource Groups User Guide</i>.</p> </li> <li> <p>You can only tag resources that are located in the specified region for the AWS account.</p> </li> </ul>

__Required Parameters__

* `resourceARNList` __:__ `(List String)`
* `tagKeys` __:__ `(List String)`


-}

untagResources :
  
    (List String) ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourcesOutput)

untagResources resourceARNList tagKeys =
    
    let
        requestInput = UntagResourcesInput
            
            resourceARNList
            
            tagKeys
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> untagResourcesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UntagResources"
                
                (AWS.Core.Decode.ResultDecoder "UntagResourcesOutput" untagResourcesOutputDecoder)
                
            )






{-| One of

* `ErrorCode_InternalServiceException`
* `ErrorCode_InvalidParameterException`

-}
type ErrorCode
    = ErrorCode_InternalServiceException
    | ErrorCode_InvalidParameterException



errorCodeDecoder : JD.Decoder ErrorCode
errorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InternalServiceException" ->
                        JD.succeed ErrorCode_InternalServiceException

                    "InvalidParameterException" ->
                        JD.succeed ErrorCode_InvalidParameterException


                    _ ->
                        JD.fail "bad thing"
            )




errorCodeToString : ErrorCode -> String
errorCodeToString val =
    case val of
        ErrorCode_InternalServiceException ->
            "InternalServiceException"

        ErrorCode_InvalidParameterException ->
            "InvalidParameterException"




{-| <p>Details of the common errors that all actions return.</p>
-}
type alias FailureInfo =
    { statusCode : Maybe Int
    , errorCode : Maybe ErrorCode
    , errorMessage : Maybe String
    }



failureInfoDecoder : JD.Decoder FailureInfo
failureInfoDecoder =
    JD.succeed FailureInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusCode", "statusCode"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            errorCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        




failureInfoToString : FailureInfo -> String -- List (String, String)
failureInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "statusCode" "" -- val.statusCode
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getResourc
-}
type alias GetResourcesOutput =
    { paginationToken : Maybe String
    , resourceTagMappingList : Maybe (List ResourceTagMapping)
    }



getResourcesOutputDecoder : JD.Decoder GetResourcesOutput
getResourcesOutputDecoder =
    JD.succeed GetResourcesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PaginationToken", "paginationToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceTagMappingList", "resourceTagMappingList"]
            (JD.list resourceTagMappingDecoder)
        )
        




getResourcesOutputToString : GetResourcesOutput -> String -- List (String, String)
getResourcesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "paginationToken" "" -- val.paginationToken
        
    --     |> Dict.insert
    --         "resourceTagMappingList" "" -- val.resourceTagMappingList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTagKe
-}
type alias GetTagKeysOutput =
    { paginationToken : Maybe String
    , tagKeys : Maybe (List String)
    }



getTagKeysOutputDecoder : JD.Decoder GetTagKeysOutput
getTagKeysOutputDecoder =
    JD.succeed GetTagKeysOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PaginationToken", "paginationToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagKeys", "tagKeys"]
            (JD.list JD.string)
        )
        




getTagKeysOutputToString : GetTagKeysOutput -> String -- List (String, String)
getTagKeysOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "paginationToken" "" -- val.paginationToken
        
    --     |> Dict.insert
    --         "tagKeys" "" -- val.tagKeys
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getTagValu
-}
type alias GetTagValuesOutput =
    { paginationToken : Maybe String
    , tagValues : Maybe (List String)
    }



getTagValuesOutputDecoder : JD.Decoder GetTagValuesOutput
getTagValuesOutputDecoder =
    JD.succeed GetTagValuesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PaginationToken", "paginationToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagValues", "tagValues"]
            (JD.list JD.string)
        )
        




getTagValuesOutputToString : GetTagValuesOutput -> String -- List (String, String)
getTagValuesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "paginationToken" "" -- val.paginationToken
        
    --     |> Dict.insert
    --         "tagValues" "" -- val.tagValues
        
    --     |> Dict.toList
    ""



{-| <p>A list of resource ARNs and the tags (keys and values) that are associated with each.</p>
-}
type alias ResourceTagMapping =
    { resourceARN : Maybe String
    , tags : Maybe (List Tag)
    }



resourceTagMappingDecoder : JD.Decoder ResourceTagMapping
resourceTagMappingDecoder =
    JD.succeed ResourceTagMapping
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        




resourceTagMappingToString : ResourceTagMapping -> String -- List (String, String)
resourceTagMappingToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>The metadata that you apply to AWS resources to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-basics">Tag Basics</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
-}
type alias Tag =
    { key : String
    , value : String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Value", "value"]
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



{-| <p>A list of tags (keys and values) that are used to specify the associated resources.</p>
-}
type alias TagFilter =
    { key : Maybe String
    , values : Maybe (List String)
    }



tagFilterDecoder : JD.Decoder TagFilter
tagFilterDecoder =
    JD.succeed TagFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        




tagFilterToString : TagFilter -> String -- List (String, String)
tagFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from tagResourc
-}
type alias TagResourcesOutput =
    { failedResourcesMap : Maybe (Dict String FailureInfo)
    }



tagResourcesOutputDecoder : JD.Decoder TagResourcesOutput
tagResourcesOutputDecoder =
    JD.succeed TagResourcesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedResourcesMap", "failedResourcesMap"]
            (AWS.Core.Decode.dict failureInfoDecoder)
        )
        




tagResourcesOutputToString : TagResourcesOutput -> String -- List (String, String)
tagResourcesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedResourcesMap" "" -- val.failedResourcesMap
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from untagResourc
-}
type alias UntagResourcesOutput =
    { failedResourcesMap : Maybe (Dict String FailureInfo)
    }



untagResourcesOutputDecoder : JD.Decoder UntagResourcesOutput
untagResourcesOutputDecoder =
    JD.succeed UntagResourcesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedResourcesMap", "failedResourcesMap"]
            (AWS.Core.Decode.dict failureInfoDecoder)
        )
        




untagResourcesOutputToString : UntagResourcesOutput -> String -- List (String, String)
untagResourcesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedResourcesMap" "" -- val.failedResourcesMap
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias GetResourcesInput =
    { paginationToken : Maybe String
    , tagFilters : Maybe (List TagFilter)
    , resourcesPerPage : Maybe Int
    , tagsPerPage : Maybe Int
    , resourceTypeFilters : Maybe (List String)
    }


{-| undefined
-}
type alias GetTagKeysInput =
    { paginationToken : Maybe String
    }


{-| undefined
-}
type alias GetTagValuesInput =
    { paginationToken : Maybe String
    , key : String
    }


{-| undefined
-}
type alias TagResourcesInput =
    { resourceARNList : (List String)
    , tags : (Dict String String)
    }


{-| undefined
-}
type alias UntagResourcesInput =
    { resourceARNList : (List String)
    , tagKeys : (List String)
    }










failureInfoEncoder : FailureInfo -> JE.Value
failureInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StatusCode", data.statusCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (errorCodeToString >> JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






getResourcesInputEncoder : GetResourcesInput -> JE.Value
getResourcesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagFilterEncoder))
            ("TagFilters", data.tagFilters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ResourcesPerPage", data.resourcesPerPage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TagsPerPage", data.tagsPerPage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ResourceTypeFilters", data.resourceTypeFilters)
        
        
        |> JE.object






getResourcesOutputEncoder : GetResourcesOutput -> JE.Value
getResourcesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceTagMappingEncoder))
            ("ResourceTagMappingList", data.resourceTagMappingList)
        
        
        |> JE.object






getTagKeysInputEncoder : GetTagKeysInput -> JE.Value
getTagKeysInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        |> JE.object






getTagKeysOutputEncoder : GetTagKeysOutput -> JE.Value
getTagKeysOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("TagKeys", data.tagKeys)
        
        
        |> JE.object






getTagValuesInputEncoder : GetTagValuesInput -> JE.Value
getTagValuesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        |> JE.object






getTagValuesOutputEncoder : GetTagValuesOutput -> JE.Value
getTagValuesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("TagValues", data.tagValues)
        
        
        |> JE.object






resourceTagMappingEncoder : ResourceTagMapping -> JE.Value
resourceTagMappingEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARN", data.resourceARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        |> JE.object






tagFilterEncoder : TagFilter -> JE.Value
tagFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Values", data.values)
        
        
        |> JE.object






tagResourcesInputEncoder : TagResourcesInput -> JE.Value
tagResourcesInputEncoder data =
    []
        
        
        |> (::) ("ResourceARNList", data.resourceARNList |> (JE.list (JE.string)))
        
        
        
        |> (::) ("Tags", data.tags |> (JE.dict identity (JE.string)))
        
        
        |> JE.object






tagResourcesOutputEncoder : TagResourcesOutput -> JE.Value
tagResourcesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (failureInfoEncoder))
            ("FailedResourcesMap", data.failedResourcesMap)
        
        
        |> JE.object






untagResourcesInputEncoder : UntagResourcesInput -> JE.Value
untagResourcesInputEncoder data =
    []
        
        
        |> (::) ("ResourceARNList", data.resourceARNList |> (JE.list (JE.string)))
        
        
        
        |> (::) ("TagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






untagResourcesOutputEncoder : UntagResourcesOutput -> JE.Value
untagResourcesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (failureInfoEncoder))
            ("FailedResourcesMap", data.failedResourcesMap)
        
        
        |> JE.object





