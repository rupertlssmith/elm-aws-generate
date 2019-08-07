module AWS.MarketplaceCommerceAnalytics
    exposing
        ( service
        , generateDataSet
        , GenerateDataSetOptions
        , startSupportDataExport
        , StartSupportDataExportOptions
        , DataSetType(..)
        , GenerateDataSetResult
        , MarketplaceCommerceAnalyticsException
        , StartSupportDataExportResult
        , SupportDataSetType(..)
        )

{-| Provides AWS Marketplace business intelligence data on-demand.

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [generateDataSet](#generateDataSet)
* [GenerateDataSetOptions](#GenerateDataSetOptions)
* [startSupportDataExport](#startSupportDataExport)
* [StartSupportDataExportOptions](#StartSupportDataExportOptions)


@docs generateDataSet,GenerateDataSetOptions,startSupportDataExport,StartSupportDataExportOptions

## Responses

* [GenerateDataSetResult](#GenerateDataSetResult)
* [StartSupportDataExportResult](#StartSupportDataExportResult)


@docs GenerateDataSetResult,StartSupportDataExportResult

## Unions

* [DataSetType](#DataSetType)
* [SupportDataSetType](#SupportDataSetType)


@docs DataSetType,SupportDataSetType

## Exceptions

* [MarketplaceCommerceAnalyticsException](#MarketplaceCommerceAnalyticsException)


@docs MarketplaceCommerceAnalyticsException

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
        "marketplacecommerceanalytics"
        "2015-07-01"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setSigningName "marketplacecommerceanalytics" >> AWS.Core.Service.setTargetPrefix "MarketplaceCommerceAnalytics20150701")



-- OPERATIONS

{-| Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.

__Required Parameters__

* `dataSetType` __:__ `DataSetType`
* `dataSetPublicationDate` __:__ `Posix`
* `roleNameArn` __:__ `String`
* `destinationS3BucketName` __:__ `String`
* `snsTopicArn` __:__ `String`


-}

generateDataSet :
  
    DataSetType ->
  
    Posix ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( GenerateDataSetOptions -> GenerateDataSetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GenerateDataSetResult)

generateDataSet dataSetType dataSetPublicationDate roleNameArn destinationS3BucketName snsTopicArn setOptions =
    
    let
        requestInput = GenerateDataSetRequest
            
            dataSetType
            
            dataSetPublicationDate
            
            roleNameArn
            
            destinationS3BucketName
            
            options.destinationS3Prefix
            
            snsTopicArn
            
            options.customerDefinedValues
            
        
        options = setOptions (GenerateDataSetOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> generateDataSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GenerateDataSet"
                
                (AWS.Core.Decode.ResultDecoder "GenerateDataSetResult" generateDataSetResultDecoder)
                
            )



{-| Options for a generateDataSet request
-}
type alias GenerateDataSetOptions =
    {
    destinationS3Prefix : Maybe String,customerDefinedValues : Maybe (Dict String String)
    }



{-| Given a data set type and a from date, asynchronously publishes the requested customer support data to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.

__Required Parameters__

* `dataSetType` __:__ `SupportDataSetType`
* `fromDate` __:__ `Posix`
* `roleNameArn` __:__ `String`
* `destinationS3BucketName` __:__ `String`
* `snsTopicArn` __:__ `String`


-}

startSupportDataExport :
  
    SupportDataSetType ->
  
    Posix ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( StartSupportDataExportOptions -> StartSupportDataExportOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartSupportDataExportResult)

startSupportDataExport dataSetType fromDate roleNameArn destinationS3BucketName snsTopicArn setOptions =
    
    let
        requestInput = StartSupportDataExportRequest
            
            dataSetType
            
            fromDate
            
            roleNameArn
            
            destinationS3BucketName
            
            options.destinationS3Prefix
            
            snsTopicArn
            
            options.customerDefinedValues
            
        
        options = setOptions (StartSupportDataExportOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startSupportDataExportRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartSupportDataExport"
                
                (AWS.Core.Decode.ResultDecoder "StartSupportDataExportResult" startSupportDataExportResultDecoder)
                
            )



{-| Options for a startSupportDataExport request
-}
type alias StartSupportDataExportOptions =
    {
    destinationS3Prefix : Maybe String,customerDefinedValues : Maybe (Dict String String)
    }




{-| One of

* `DataSetType_customer_subscriber_hourly_monthly_subscriptions`
* `DataSetType_customer_subscriber_annual_subscriptions`
* `DataSetType_daily_business_usage_by_instance_type`
* `DataSetType_daily_business_fees`
* `DataSetType_daily_business_free_trial_conversions`
* `DataSetType_daily_business_new_instances`
* `DataSetType_daily_business_new_product_subscribers`
* `DataSetType_daily_business_canceled_product_subscribers`
* `DataSetType_monthly_revenue_billing_and_revenue_data`
* `DataSetType_monthly_revenue_annual_subscriptions`
* `DataSetType_disbursed_amount_by_product`
* `DataSetType_disbursed_amount_by_product_with_uncollected_funds`
* `DataSetType_disbursed_amount_by_instance_hours`
* `DataSetType_disbursed_amount_by_customer_geo`
* `DataSetType_disbursed_amount_by_age_of_uncollected_funds`
* `DataSetType_disbursed_amount_by_age_of_disbursed_funds`
* `DataSetType_customer_profile_by_industry`
* `DataSetType_customer_profile_by_revenue`
* `DataSetType_customer_profile_by_geography`
* `DataSetType_sales_compensation_billed_revenue`
* `DataSetType_us_sales_and_use_tax_records`

-}
type DataSetType
    = DataSetType_customer_subscriber_hourly_monthly_subscriptions
    | DataSetType_customer_subscriber_annual_subscriptions
    | DataSetType_daily_business_usage_by_instance_type
    | DataSetType_daily_business_fees
    | DataSetType_daily_business_free_trial_conversions
    | DataSetType_daily_business_new_instances
    | DataSetType_daily_business_new_product_subscribers
    | DataSetType_daily_business_canceled_product_subscribers
    | DataSetType_monthly_revenue_billing_and_revenue_data
    | DataSetType_monthly_revenue_annual_subscriptions
    | DataSetType_disbursed_amount_by_product
    | DataSetType_disbursed_amount_by_product_with_uncollected_funds
    | DataSetType_disbursed_amount_by_instance_hours
    | DataSetType_disbursed_amount_by_customer_geo
    | DataSetType_disbursed_amount_by_age_of_uncollected_funds
    | DataSetType_disbursed_amount_by_age_of_disbursed_funds
    | DataSetType_customer_profile_by_industry
    | DataSetType_customer_profile_by_revenue
    | DataSetType_customer_profile_by_geography
    | DataSetType_sales_compensation_billed_revenue
    | DataSetType_us_sales_and_use_tax_records



dataSetTypeDecoder : JD.Decoder DataSetType
dataSetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "customer_subscriber_hourly_monthly_subscriptions" ->
                        JD.succeed DataSetType_customer_subscriber_hourly_monthly_subscriptions

                    "customer_subscriber_annual_subscriptions" ->
                        JD.succeed DataSetType_customer_subscriber_annual_subscriptions

                    "daily_business_usage_by_instance_type" ->
                        JD.succeed DataSetType_daily_business_usage_by_instance_type

                    "daily_business_fees" ->
                        JD.succeed DataSetType_daily_business_fees

                    "daily_business_free_trial_conversions" ->
                        JD.succeed DataSetType_daily_business_free_trial_conversions

                    "daily_business_new_instances" ->
                        JD.succeed DataSetType_daily_business_new_instances

                    "daily_business_new_product_subscribers" ->
                        JD.succeed DataSetType_daily_business_new_product_subscribers

                    "daily_business_canceled_product_subscribers" ->
                        JD.succeed DataSetType_daily_business_canceled_product_subscribers

                    "monthly_revenue_billing_and_revenue_data" ->
                        JD.succeed DataSetType_monthly_revenue_billing_and_revenue_data

                    "monthly_revenue_annual_subscriptions" ->
                        JD.succeed DataSetType_monthly_revenue_annual_subscriptions

                    "disbursed_amount_by_product" ->
                        JD.succeed DataSetType_disbursed_amount_by_product

                    "disbursed_amount_by_product_with_uncollected_funds" ->
                        JD.succeed DataSetType_disbursed_amount_by_product_with_uncollected_funds

                    "disbursed_amount_by_instance_hours" ->
                        JD.succeed DataSetType_disbursed_amount_by_instance_hours

                    "disbursed_amount_by_customer_geo" ->
                        JD.succeed DataSetType_disbursed_amount_by_customer_geo

                    "disbursed_amount_by_age_of_uncollected_funds" ->
                        JD.succeed DataSetType_disbursed_amount_by_age_of_uncollected_funds

                    "disbursed_amount_by_age_of_disbursed_funds" ->
                        JD.succeed DataSetType_disbursed_amount_by_age_of_disbursed_funds

                    "customer_profile_by_industry" ->
                        JD.succeed DataSetType_customer_profile_by_industry

                    "customer_profile_by_revenue" ->
                        JD.succeed DataSetType_customer_profile_by_revenue

                    "customer_profile_by_geography" ->
                        JD.succeed DataSetType_customer_profile_by_geography

                    "sales_compensation_billed_revenue" ->
                        JD.succeed DataSetType_sales_compensation_billed_revenue

                    "us_sales_and_use_tax_records" ->
                        JD.succeed DataSetType_us_sales_and_use_tax_records


                    _ ->
                        JD.fail "bad thing"
            )




dataSetTypeToString : DataSetType -> String
dataSetTypeToString val =
    case val of
        DataSetType_customer_subscriber_hourly_monthly_subscriptions ->
            "customer_subscriber_hourly_monthly_subscriptions"

        DataSetType_customer_subscriber_annual_subscriptions ->
            "customer_subscriber_annual_subscriptions"

        DataSetType_daily_business_usage_by_instance_type ->
            "daily_business_usage_by_instance_type"

        DataSetType_daily_business_fees ->
            "daily_business_fees"

        DataSetType_daily_business_free_trial_conversions ->
            "daily_business_free_trial_conversions"

        DataSetType_daily_business_new_instances ->
            "daily_business_new_instances"

        DataSetType_daily_business_new_product_subscribers ->
            "daily_business_new_product_subscribers"

        DataSetType_daily_business_canceled_product_subscribers ->
            "daily_business_canceled_product_subscribers"

        DataSetType_monthly_revenue_billing_and_revenue_data ->
            "monthly_revenue_billing_and_revenue_data"

        DataSetType_monthly_revenue_annual_subscriptions ->
            "monthly_revenue_annual_subscriptions"

        DataSetType_disbursed_amount_by_product ->
            "disbursed_amount_by_product"

        DataSetType_disbursed_amount_by_product_with_uncollected_funds ->
            "disbursed_amount_by_product_with_uncollected_funds"

        DataSetType_disbursed_amount_by_instance_hours ->
            "disbursed_amount_by_instance_hours"

        DataSetType_disbursed_amount_by_customer_geo ->
            "disbursed_amount_by_customer_geo"

        DataSetType_disbursed_amount_by_age_of_uncollected_funds ->
            "disbursed_amount_by_age_of_uncollected_funds"

        DataSetType_disbursed_amount_by_age_of_disbursed_funds ->
            "disbursed_amount_by_age_of_disbursed_funds"

        DataSetType_customer_profile_by_industry ->
            "customer_profile_by_industry"

        DataSetType_customer_profile_by_revenue ->
            "customer_profile_by_revenue"

        DataSetType_customer_profile_by_geography ->
            "customer_profile_by_geography"

        DataSetType_sales_compensation_billed_revenue ->
            "sales_compensation_billed_revenue"

        DataSetType_us_sales_and_use_tax_records ->
            "us_sales_and_use_tax_records"




{-| Type of HTTP response from generateDataS
-}
type alias GenerateDataSetResult =
    { dataSetRequestId : Maybe String
    }



generateDataSetResultDecoder : JD.Decoder GenerateDataSetResult
generateDataSetResultDecoder =
    JD.succeed GenerateDataSetResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["dataSetRequestId", "DataSetRequestId"]
            JD.string
        )
        




generateDataSetResultToString : GenerateDataSetResult -> String -- List (String, String)
generateDataSetResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataSetRequestId" "" -- val.dataSetRequestId
        
    --     |> Dict.toList
    ""



{-| This exception is thrown when an internal service error occurs.
-}
type alias MarketplaceCommerceAnalyticsException =
    { message : Maybe String
    }



marketplaceCommerceAnalyticsExceptionDecoder : JD.Decoder MarketplaceCommerceAnalyticsException
marketplaceCommerceAnalyticsExceptionDecoder =
    JD.succeed MarketplaceCommerceAnalyticsException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




marketplaceCommerceAnalyticsExceptionToString : MarketplaceCommerceAnalyticsException -> String -- List (String, String)
marketplaceCommerceAnalyticsExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startSupportDataExpo
-}
type alias StartSupportDataExportResult =
    { dataSetRequestId : Maybe String
    }



startSupportDataExportResultDecoder : JD.Decoder StartSupportDataExportResult
startSupportDataExportResultDecoder =
    JD.succeed StartSupportDataExportResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["dataSetRequestId", "DataSetRequestId"]
            JD.string
        )
        




startSupportDataExportResultToString : StartSupportDataExportResult -> String -- List (String, String)
startSupportDataExportResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataSetRequestId" "" -- val.dataSetRequestId
        
    --     |> Dict.toList
    ""



{-| One of

* `SupportDataSetType_customer_support_contacts_data`
* `SupportDataSetType_test_customer_support_contacts_data`

-}
type SupportDataSetType
    = SupportDataSetType_customer_support_contacts_data
    | SupportDataSetType_test_customer_support_contacts_data



supportDataSetTypeDecoder : JD.Decoder SupportDataSetType
supportDataSetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "customer_support_contacts_data" ->
                        JD.succeed SupportDataSetType_customer_support_contacts_data

                    "test_customer_support_contacts_data" ->
                        JD.succeed SupportDataSetType_test_customer_support_contacts_data


                    _ ->
                        JD.fail "bad thing"
            )




supportDataSetTypeToString : SupportDataSetType -> String
supportDataSetTypeToString val =
    case val of
        SupportDataSetType_customer_support_contacts_data ->
            "customer_support_contacts_data"

        SupportDataSetType_test_customer_support_contacts_data ->
            "test_customer_support_contacts_data"







{-| Container for the parameters to the GenerateDataSet operation.
-}
type alias GenerateDataSetRequest =
    { dataSetType : DataSetType
    , dataSetPublicationDate : Posix
    , roleNameArn : String
    , destinationS3BucketName : String
    , destinationS3Prefix : Maybe String
    , snsTopicArn : String
    , customerDefinedValues : Maybe (Dict String String)
    }


{-| Container for the parameters to the StartSupportDataExport operation.
-}
type alias StartSupportDataExportRequest =
    { dataSetType : SupportDataSetType
    , fromDate : Posix
    , roleNameArn : String
    , destinationS3BucketName : String
    , destinationS3Prefix : Maybe String
    , snsTopicArn : String
    , customerDefinedValues : Maybe (Dict String String)
    }










generateDataSetRequestEncoder : GenerateDataSetRequest -> JE.Value
generateDataSetRequestEncoder data =
    []
        
        
        |> (::) ("dataSetType", data.dataSetType |> (dataSetTypeToString >> JE.string))
        
        
        
        |> (::) ("dataSetPublicationDate", data.dataSetPublicationDate |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("roleNameArn", data.roleNameArn |> (JE.string))
        
        
        
        |> (::) ("destinationS3BucketName", data.destinationS3BucketName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destinationS3Prefix", data.destinationS3Prefix)
        
        
        
        |> (::) ("snsTopicArn", data.snsTopicArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("customerDefinedValues", data.customerDefinedValues)
        
        
        |> JE.object






generateDataSetResultEncoder : GenerateDataSetResult -> JE.Value
generateDataSetResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("dataSetRequestId", data.dataSetRequestId)
        
        
        |> JE.object






marketplaceCommerceAnalyticsExceptionEncoder : MarketplaceCommerceAnalyticsException -> JE.Value
marketplaceCommerceAnalyticsExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






startSupportDataExportRequestEncoder : StartSupportDataExportRequest -> JE.Value
startSupportDataExportRequestEncoder data =
    []
        
        
        |> (::) ("dataSetType", data.dataSetType |> (supportDataSetTypeToString >> JE.string))
        
        
        
        |> (::) ("fromDate", data.fromDate |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("roleNameArn", data.roleNameArn |> (JE.string))
        
        
        
        |> (::) ("destinationS3BucketName", data.destinationS3BucketName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destinationS3Prefix", data.destinationS3Prefix)
        
        
        
        |> (::) ("snsTopicArn", data.snsTopicArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("customerDefinedValues", data.customerDefinedValues)
        
        
        |> JE.object






startSupportDataExportResultEncoder : StartSupportDataExportResult -> JE.Value
startSupportDataExportResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("dataSetRequestId", data.dataSetRequestId)
        
        
        |> JE.object









