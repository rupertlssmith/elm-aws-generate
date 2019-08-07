module AWS.MarketplaceMetering
    exposing
        ( service
        , batchMeterUsage
        , meterUsage
        , MeterUsageOptions
        , registerUsage
        , RegisterUsageOptions
        , resolveCustomer
        , BatchMeterUsageResult
        , MeterUsageResult
        , RegisterUsageResult
        , ResolveCustomerResult
        , UsageRecord
        , UsageRecordResult
        , UsageRecordResultStatus(..)
        )

{-| <fullname>AWS Marketplace Metering Service</fullname> <p>This reference provides descriptions of the low-level AWS Marketplace Metering Service API.</p> <p>AWS Marketplace sellers can use this API to submit usage data for custom usage dimensions.</p> <p> <b>Submitting Metering Records</b> </p> <ul> <li> <p> <i>MeterUsage</i>- Submits the metering record for a Marketplace product. MeterUsage is called from an EC2 instance.</p> </li> <li> <p> <i>BatchMeterUsage</i>- Submits the metering record for a set of customers. BatchMeterUsage is called from a software-as-a-service (SaaS) application.</p> </li> </ul> <p> <b>Accepting New Customers</b> </p> <ul> <li> <p> <i>ResolveCustomer</i>- Called by a SaaS application during the registration process. When a buyer visits your website during the registration process, the buyer submits a Registration Token through the browser. The Registration Token is resolved through this API to obtain a CustomerIdentifier and Product Code.</p> </li> </ul> <p> <b>Entitlement and Metering for Paid Container Products</b> </p> <ul> <li> <p> Paid container software products sold through AWS Marketplace must integrate with the AWS Marketplace Metering Service and call the RegisterUsage operation for software entitlement and metering. Calling RegisterUsage from containers running outside of Amazon Elastic Container Service (Amazon ECR) isn't supported. Free and BYOL products for ECS aren't required to call RegisterUsage, but you can do so if you want to receive usage data in your seller reports. For more information on using the RegisterUsage operation, see <a href="https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html">Container-Based Products</a>. </p> </li> </ul> <p>BatchMeterUsage API calls are captured by AWS CloudTrail. You can use Cloudtrail to verify that the SaaS metering records that you sent are accurate by searching for records with the eventName of BatchMeterUsage. You can also use CloudTrail to audit records over time. For more information, see the <i> <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html">AWS CloudTrail User Guide</a> </i>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [batchMeterUsage](#batchMeterUsage)
* [meterUsage](#meterUsage)
* [MeterUsageOptions](#MeterUsageOptions)
* [registerUsage](#registerUsage)
* [RegisterUsageOptions](#RegisterUsageOptions)
* [resolveCustomer](#resolveCustomer)


@docs batchMeterUsage,meterUsage,MeterUsageOptions,registerUsage,RegisterUsageOptions,resolveCustomer

## Responses

* [BatchMeterUsageResult](#BatchMeterUsageResult)
* [MeterUsageResult](#MeterUsageResult)
* [RegisterUsageResult](#RegisterUsageResult)
* [ResolveCustomerResult](#ResolveCustomerResult)


@docs BatchMeterUsageResult,MeterUsageResult,RegisterUsageResult,ResolveCustomerResult

## Records

* [UsageRecord](#UsageRecord)
* [UsageRecordResult](#UsageRecordResult)


@docs UsageRecord,UsageRecordResult

## Unions

* [UsageRecordResultStatus](#UsageRecordResultStatus)


@docs UsageRecordResultStatus

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
        "metering.marketplace"
        "2016-01-14"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setSigningName "aws-marketplace" >> AWS.Core.Service.setTargetPrefix "AWSMPMeteringService")



-- OPERATIONS

{-| <p>BatchMeterUsage is called from a SaaS application listed on the AWS Marketplace to post metering records for a set of customers.</p> <p>For identical requests, the API is idempotent; requests can be retried with the same records or a subset of the input records.</p> <p>Every request to BatchMeterUsage is for one product. If you need to meter usage for multiple products, you must make multiple calls to BatchMeterUsage.</p> <p>BatchMeterUsage can process up to 25 UsageRecords at a time.</p>

__Required Parameters__

* `usageRecords` __:__ `(List UsageRecord)`
* `productCode` __:__ `String`


-}

batchMeterUsage :
  
    (List UsageRecord) ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchMeterUsageResult)

batchMeterUsage usageRecords productCode =
    
    let
        requestInput = BatchMeterUsageRequest
            
            usageRecords
            
            productCode
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchMeterUsageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchMeterUsage"
                
                (AWS.Core.Decode.ResultDecoder "BatchMeterUsageResult" batchMeterUsageResultDecoder)
                
            )





{-| <p>API to emit metering records. For identical requests, the API is idempotent. It simply returns the metering record ID.</p> <p>MeterUsage is authenticated on the buyer's AWS account, generally when running from an EC2 instance on the AWS Marketplace.</p>

__Required Parameters__

* `productCode` __:__ `String`
* `timestamp` __:__ `Posix`
* `usageDimension` __:__ `String`


-}

meterUsage :
  
    String ->
  
    Posix ->
  
    String ->
  
  
    ( MeterUsageOptions -> MeterUsageOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper MeterUsageResult)

meterUsage productCode timestamp usageDimension setOptions =
    
    let
        requestInput = MeterUsageRequest
            
            productCode
            
            timestamp
            
            usageDimension
            
            options.usageQuantity
            
            options.dryRun
            
        
        options = setOptions (MeterUsageOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> meterUsageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "MeterUsage"
                
                (AWS.Core.Decode.ResultDecoder "MeterUsageResult" meterUsageResultDecoder)
                
            )



{-| Options for a meterUsage request
-}
type alias MeterUsageOptions =
    {
    usageQuantity : Maybe Int,dryRun : Maybe Bool
    }



{-| <p>Paid container software products sold through AWS Marketplace must integrate with the AWS Marketplace Metering Service and call the RegisterUsage operation for software entitlement and metering. Calling RegisterUsage from containers running outside of ECS is not currently supported. Free and BYOL products for ECS aren't required to call RegisterUsage, but you may choose to do so if you would like to receive usage data in your seller reports. The sections below explain the behavior of RegisterUsage. RegisterUsage performs two primary functions: metering and entitlement.</p> <ul> <li> <p> <i>Entitlement</i>: RegisterUsage allows you to verify that the customer running your paid software is subscribed to your product on AWS Marketplace, enabling you to guard against unauthorized use. Your container image that integrates with RegisterUsage is only required to guard against unauthorized use at container startup, as such a CustomerNotSubscribedException/PlatformNotSupportedException will only be thrown on the initial call to RegisterUsage. Subsequent calls from the same Amazon ECS task instance (e.g. task-id) will not throw a CustomerNotSubscribedException, even if the customer unsubscribes while the Amazon ECS task is still running.</p> </li> <li> <p> <i>Metering</i>: RegisterUsage meters software use per ECS task, per hour, with usage prorated to the second. A minimum of 1 minute of usage applies to tasks that are short lived. For example, if a customer has a 10 node ECS cluster and creates an ECS service configured as a Daemon Set, then ECS will launch a task on all 10 cluster nodes and the customer will be charged: (10 * hourly_rate). Metering for software use is automatically handled by the AWS Marketplace Metering Control Plane -- your software is not required to perform any metering specific actions, other than call RegisterUsage once for metering of software use to commence. The AWS Marketplace Metering Control Plane will also continue to bill customers for running ECS tasks, regardless of the customers subscription state, removing the need for your software to perform entitlement checks at runtime.</p> </li> </ul>

__Required Parameters__

* `productCode` __:__ `String`
* `publicKeyVersion` __:__ `Int`


-}

registerUsage :
  
    String ->
  
    Int ->
  
  
    ( RegisterUsageOptions -> RegisterUsageOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RegisterUsageResult)

registerUsage productCode publicKeyVersion setOptions =
    
    let
        requestInput = RegisterUsageRequest
            
            productCode
            
            publicKeyVersion
            
            options.nonce
            
        
        options = setOptions (RegisterUsageOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> registerUsageRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RegisterUsage"
                
                (AWS.Core.Decode.ResultDecoder "RegisterUsageResult" registerUsageResultDecoder)
                
            )



{-| Options for a registerUsage request
-}
type alias RegisterUsageOptions =
    {
    nonce : Maybe String
    }



{-| <p>ResolveCustomer is called by a SaaS application during the registration process. When a buyer visits your website during the registration process, the buyer submits a registration token through their browser. The registration token is resolved through this API to obtain a CustomerIdentifier and product code.</p>

__Required Parameters__

* `registrationToken` __:__ `String`


-}

resolveCustomer :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResolveCustomerResult)

resolveCustomer registrationToken =
    
    let
        requestInput = ResolveCustomerRequest
            
            registrationToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> resolveCustomerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ResolveCustomer"
                
                (AWS.Core.Decode.ResultDecoder "ResolveCustomerResult" resolveCustomerResultDecoder)
                
            )






{-| Type of HTTP response from batchMeterUsa
-}
type alias BatchMeterUsageResult =
    { results : Maybe (List UsageRecordResult)
    , unprocessedRecords : Maybe (List UsageRecord)
    }



batchMeterUsageResultDecoder : JD.Decoder BatchMeterUsageResult
batchMeterUsageResultDecoder =
    JD.succeed BatchMeterUsageResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Results", "results"]
            (JD.list usageRecordResultDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UnprocessedRecords", "unprocessedRecords"]
            (JD.list usageRecordDecoder)
        )
        




batchMeterUsageResultToString : BatchMeterUsageResult -> String -- List (String, String)
batchMeterUsageResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "results" "" -- val.results
        
    --     |> Dict.insert
    --         "unprocessedRecords" "" -- val.unprocessedRecords
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from meterUsa
-}
type alias MeterUsageResult =
    { meteringRecordId : Maybe String
    }



meterUsageResultDecoder : JD.Decoder MeterUsageResult
meterUsageResultDecoder =
    JD.succeed MeterUsageResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MeteringRecordId", "meteringRecordId"]
            JD.string
        )
        




meterUsageResultToString : MeterUsageResult -> String -- List (String, String)
meterUsageResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "meteringRecordId" "" -- val.meteringRecordId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from registerUsa
-}
type alias RegisterUsageResult =
    { publicKeyRotationTimestamp : Maybe Posix
    , signature : Maybe String
    }



registerUsageResultDecoder : JD.Decoder RegisterUsageResult
registerUsageResultDecoder =
    JD.succeed RegisterUsageResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PublicKeyRotationTimestamp", "publicKeyRotationTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Signature", "signature"]
            JD.string
        )
        




registerUsageResultToString : RegisterUsageResult -> String -- List (String, String)
registerUsageResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "publicKeyRotationTimestamp" "" -- val.publicKeyRotationTimestamp
        
    --     |> Dict.insert
    --         "signature" "" -- val.signature
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from resolveCustom
-}
type alias ResolveCustomerResult =
    { customerIdentifier : Maybe String
    , productCode : Maybe String
    }



resolveCustomerResultDecoder : JD.Decoder ResolveCustomerResult
resolveCustomerResultDecoder =
    JD.succeed ResolveCustomerResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomerIdentifier", "customerIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductCode", "productCode"]
            JD.string
        )
        




resolveCustomerResultToString : ResolveCustomerResult -> String -- List (String, String)
resolveCustomerResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "customerIdentifier" "" -- val.customerIdentifier
        
    --     |> Dict.insert
    --         "productCode" "" -- val.productCode
        
    --     |> Dict.toList
    ""



{-| <p>A UsageRecord indicates a quantity of usage for a given product, customer, dimension and time.</p> <p>Multiple requests with the same UsageRecords as input will be deduplicated to prevent double charges.</p>
-}
type alias UsageRecord =
    { timestamp : Posix
    , customerIdentifier : String
    , dimension : String
    , quantity : Maybe Int
    }



usageRecordDecoder : JD.Decoder UsageRecord
usageRecordDecoder =
    JD.succeed UsageRecord
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Timestamp", "timestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CustomerIdentifier", "customerIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Dimension", "dimension"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Quantity", "quantity"]
            JD.int
        )
        




usageRecordToString : UsageRecord -> String -- List (String, String)
usageRecordToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "customerIdentifier" "" -- val.customerIdentifier
        
    --     |> Dict.insert
    --         "dimension" "" -- val.dimension
        
    --     |> Dict.insert
    --         "quantity" "" -- val.quantity
        
    --     |> Dict.toList
    ""



{-| <p>A UsageRecordResult indicates the status of a given UsageRecord processed by BatchMeterUsage.</p>
-}
type alias UsageRecordResult =
    { usageRecord : Maybe UsageRecord
    , meteringRecordId : Maybe String
    , status : Maybe UsageRecordResultStatus
    }



usageRecordResultDecoder : JD.Decoder UsageRecordResult
usageRecordResultDecoder =
    JD.succeed UsageRecordResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UsageRecord", "usageRecord"]
            usageRecordDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MeteringRecordId", "meteringRecordId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            usageRecordResultStatusDecoder
        )
        




usageRecordResultToString : UsageRecordResult -> String -- List (String, String)
usageRecordResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "usageRecord" "" -- val.usageRecord
        
    --     |> Dict.insert
    --         "meteringRecordId" "" -- val.meteringRecordId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| One of

* `UsageRecordResultStatus_Success`
* `UsageRecordResultStatus_CustomerNotSubscribed`
* `UsageRecordResultStatus_DuplicateRecord`

-}
type UsageRecordResultStatus
    = UsageRecordResultStatus_Success
    | UsageRecordResultStatus_CustomerNotSubscribed
    | UsageRecordResultStatus_DuplicateRecord



usageRecordResultStatusDecoder : JD.Decoder UsageRecordResultStatus
usageRecordResultStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Success" ->
                        JD.succeed UsageRecordResultStatus_Success

                    "CustomerNotSubscribed" ->
                        JD.succeed UsageRecordResultStatus_CustomerNotSubscribed

                    "DuplicateRecord" ->
                        JD.succeed UsageRecordResultStatus_DuplicateRecord


                    _ ->
                        JD.fail "bad thing"
            )




usageRecordResultStatusToString : UsageRecordResultStatus -> String
usageRecordResultStatusToString val =
    case val of
        UsageRecordResultStatus_Success ->
            "Success"

        UsageRecordResultStatus_CustomerNotSubscribed ->
            "CustomerNotSubscribed"

        UsageRecordResultStatus_DuplicateRecord ->
            "DuplicateRecord"







{-| <p>A BatchMeterUsageRequest contains UsageRecords, which indicate quantities of usage within your application.</p>
-}
type alias BatchMeterUsageRequest =
    { usageRecords : (List UsageRecord)
    , productCode : String
    }


{-| undefined
-}
type alias MeterUsageRequest =
    { productCode : String
    , timestamp : Posix
    , usageDimension : String
    , usageQuantity : Maybe Int
    , dryRun : Maybe Bool
    }


{-| undefined
-}
type alias RegisterUsageRequest =
    { productCode : String
    , publicKeyVersion : Int
    , nonce : Maybe String
    }


{-| <p>Contains input to the ResolveCustomer operation.</p>
-}
type alias ResolveCustomerRequest =
    { registrationToken : String
    }






batchMeterUsageRequestEncoder : BatchMeterUsageRequest -> JE.Value
batchMeterUsageRequestEncoder data =
    []
        
        
        |> (::) ("UsageRecords", data.usageRecords |> (JE.list (usageRecordEncoder)))
        
        
        
        |> (::) ("ProductCode", data.productCode |> (JE.string))
        
        
        |> JE.object






batchMeterUsageResultEncoder : BatchMeterUsageResult -> JE.Value
batchMeterUsageResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (usageRecordResultEncoder))
            ("Results", data.results)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (usageRecordEncoder))
            ("UnprocessedRecords", data.unprocessedRecords)
        
        
        |> JE.object






meterUsageRequestEncoder : MeterUsageRequest -> JE.Value
meterUsageRequestEncoder data =
    []
        
        
        |> (::) ("ProductCode", data.productCode |> (JE.string))
        
        
        
        |> (::) ("Timestamp", data.timestamp |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("UsageDimension", data.usageDimension |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("UsageQuantity", data.usageQuantity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DryRun", data.dryRun)
        
        
        |> JE.object






meterUsageResultEncoder : MeterUsageResult -> JE.Value
meterUsageResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MeteringRecordId", data.meteringRecordId)
        
        
        |> JE.object






registerUsageRequestEncoder : RegisterUsageRequest -> JE.Value
registerUsageRequestEncoder data =
    []
        
        
        |> (::) ("ProductCode", data.productCode |> (JE.string))
        
        
        
        |> (::) ("PublicKeyVersion", data.publicKeyVersion |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Nonce", data.nonce)
        
        
        |> JE.object






registerUsageResultEncoder : RegisterUsageResult -> JE.Value
registerUsageResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("PublicKeyRotationTimestamp", data.publicKeyRotationTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Signature", data.signature)
        
        
        |> JE.object






resolveCustomerRequestEncoder : ResolveCustomerRequest -> JE.Value
resolveCustomerRequestEncoder data =
    []
        
        
        |> (::) ("RegistrationToken", data.registrationToken |> (JE.string))
        
        
        |> JE.object






resolveCustomerResultEncoder : ResolveCustomerResult -> JE.Value
resolveCustomerResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomerIdentifier", data.customerIdentifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProductCode", data.productCode)
        
        
        |> JE.object






usageRecordEncoder : UsageRecord -> JE.Value
usageRecordEncoder data =
    []
        
        
        |> (::) ("Timestamp", data.timestamp |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("CustomerIdentifier", data.customerIdentifier |> (JE.string))
        
        
        
        |> (::) ("Dimension", data.dimension |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Quantity", data.quantity)
        
        
        |> JE.object






usageRecordResultEncoder : UsageRecordResult -> JE.Value
usageRecordResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (usageRecordEncoder)
            ("UsageRecord", data.usageRecord)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MeteringRecordId", data.meteringRecordId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (usageRecordResultStatusToString >> JE.string)
            ("Status", data.status)
        
        
        |> JE.object









