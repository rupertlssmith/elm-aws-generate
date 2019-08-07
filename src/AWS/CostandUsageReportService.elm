module AWS.CostandUsageReportService
    exposing
        ( service
        , deleteReportDefinition
        , DeleteReportDefinitionOptions
        , describeReportDefinitions
        , DescribeReportDefinitionsOptions
        , putReportDefinition
        , AWSRegion(..)
        , AdditionalArtifact(..)
        , CompressionFormat(..)
        , DeleteReportDefinitionResponse
        , DescribeReportDefinitionsResponse
        , PutReportDefinitionResponse
        , ReportDefinition
        , ReportFormat(..)
        , ReportVersioning(..)
        , SchemaElement(..)
        , TimeUnit(..)
        )

{-| <p>The AWS Cost and Usage Report API enables you to programmatically create, query, and delete AWS Cost and Usage report definitions.</p> <p>AWS Cost and Usage reports track the monthly AWS costs and usage associated with your AWS account. The report contains line items for each unique combination of AWS product, usage type, and operation that your AWS account uses. You can configure the AWS Cost and Usage report to show only the data that you want, using the AWS Cost and Usage API.</p> <p>Service Endpoint</p> <p>The AWS Cost and Usage Report API provides the following endpoint:</p> <ul> <li> <p>cur.us-east-1.amazonaws.com</p> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [deleteReportDefinition](#deleteReportDefinition)
* [DeleteReportDefinitionOptions](#DeleteReportDefinitionOptions)
* [describeReportDefinitions](#describeReportDefinitions)
* [DescribeReportDefinitionsOptions](#DescribeReportDefinitionsOptions)
* [putReportDefinition](#putReportDefinition)


@docs deleteReportDefinition,DeleteReportDefinitionOptions,describeReportDefinitions,DescribeReportDefinitionsOptions,putReportDefinition

## Responses

* [DeleteReportDefinitionResponse](#DeleteReportDefinitionResponse)
* [DescribeReportDefinitionsResponse](#DescribeReportDefinitionsResponse)
* [PutReportDefinitionResponse](#PutReportDefinitionResponse)


@docs DeleteReportDefinitionResponse,DescribeReportDefinitionsResponse,PutReportDefinitionResponse

## Records

* [ReportDefinition](#ReportDefinition)


@docs ReportDefinition

## Unions

* [AWSRegion](#AWSRegion)
* [AdditionalArtifact](#AdditionalArtifact)
* [CompressionFormat](#CompressionFormat)
* [ReportFormat](#ReportFormat)
* [ReportVersioning](#ReportVersioning)
* [SchemaElement](#SchemaElement)
* [TimeUnit](#TimeUnit)


@docs AWSRegion,AdditionalArtifact,CompressionFormat,ReportFormat,ReportVersioning,SchemaElement,TimeUnit

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE



{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "cur"
        "2017-01-06"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setSigningName "cur" >> AWS.Core.Service.setTargetPrefix "AWSOrigamiServiceGatewayService")



-- OPERATIONS

{-| <p>Deletes the specified report.</p>

__Required Parameters__



-}

deleteReportDefinition :
  
  
    ( DeleteReportDefinitionOptions -> DeleteReportDefinitionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteReportDefinitionResponse)

deleteReportDefinition setOptions =
    
    let
        requestInput = DeleteReportDefinitionRequest
            
            options.reportName
            
        
        options = setOptions (DeleteReportDefinitionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteReportDefinitionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteReportDefinition"
                
                (AWS.Core.Decode.ResultDecoder "DeleteReportDefinitionResponse" deleteReportDefinitionResponseDecoder)
                
            )



{-| Options for a deleteReportDefinition request
-}
type alias DeleteReportDefinitionOptions =
    {
    reportName : Maybe String
    }



{-| <p>Lists the AWS Cost and Usage reports available to this account.</p>

__Required Parameters__



-}

describeReportDefinitions :
  
  
    ( DescribeReportDefinitionsOptions -> DescribeReportDefinitionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeReportDefinitionsResponse)

describeReportDefinitions setOptions =
    
    let
        requestInput = DescribeReportDefinitionsRequest
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (DescribeReportDefinitionsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeReportDefinitionsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeReportDefinitions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeReportDefinitionsResponse" describeReportDefinitionsResponseDecoder)
                
            )



{-| Options for a describeReportDefinitions request
-}
type alias DescribeReportDefinitionsOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Creates a new report using the description that you provide.</p>

__Required Parameters__

* `reportDefinition` __:__ `ReportDefinition`


-}

putReportDefinition :
  
    ReportDefinition ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutReportDefinitionResponse)

putReportDefinition reportDefinition =
    
    let
        requestInput = PutReportDefinitionRequest
            
            reportDefinition
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putReportDefinitionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutReportDefinition"
                
                (AWS.Core.Decode.ResultDecoder "PutReportDefinitionResponse" putReportDefinitionResponseDecoder)
                
            )






{-| One of

* `AWSRegion_us-east-1`
* `AWSRegion_us-west-1`
* `AWSRegion_us-west-2`
* `AWSRegion_eu-central-1`
* `AWSRegion_eu-west-1`
* `AWSRegion_ap-southeast-1`
* `AWSRegion_ap-southeast-2`
* `AWSRegion_ap-northeast-1`
* `AWSRegion_eu-north-1`
* `AWSRegion_ap-northeast-3`

-}
type AWSRegion
    = AWSRegion_us_east_1
    | AWSRegion_us_west_1
    | AWSRegion_us_west_2
    | AWSRegion_eu_central_1
    | AWSRegion_eu_west_1
    | AWSRegion_ap_southeast_1
    | AWSRegion_ap_southeast_2
    | AWSRegion_ap_northeast_1
    | AWSRegion_eu_north_1
    | AWSRegion_ap_northeast_3



aWSRegionDecoder : JD.Decoder AWSRegion
aWSRegionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "us_east_1" ->
                        JD.succeed AWSRegion_us_east_1

                    "us_west_1" ->
                        JD.succeed AWSRegion_us_west_1

                    "us_west_2" ->
                        JD.succeed AWSRegion_us_west_2

                    "eu_central_1" ->
                        JD.succeed AWSRegion_eu_central_1

                    "eu_west_1" ->
                        JD.succeed AWSRegion_eu_west_1

                    "ap_southeast_1" ->
                        JD.succeed AWSRegion_ap_southeast_1

                    "ap_southeast_2" ->
                        JD.succeed AWSRegion_ap_southeast_2

                    "ap_northeast_1" ->
                        JD.succeed AWSRegion_ap_northeast_1

                    "eu_north_1" ->
                        JD.succeed AWSRegion_eu_north_1

                    "ap_northeast_3" ->
                        JD.succeed AWSRegion_ap_northeast_3


                    _ ->
                        JD.fail "bad thing"
            )




aWSRegionToString : AWSRegion -> String
aWSRegionToString val =
    case val of
        AWSRegion_us_east_1 ->
            "us_east_1"

        AWSRegion_us_west_1 ->
            "us_west_1"

        AWSRegion_us_west_2 ->
            "us_west_2"

        AWSRegion_eu_central_1 ->
            "eu_central_1"

        AWSRegion_eu_west_1 ->
            "eu_west_1"

        AWSRegion_ap_southeast_1 ->
            "ap_southeast_1"

        AWSRegion_ap_southeast_2 ->
            "ap_southeast_2"

        AWSRegion_ap_northeast_1 ->
            "ap_northeast_1"

        AWSRegion_eu_north_1 ->
            "eu_north_1"

        AWSRegion_ap_northeast_3 ->
            "ap_northeast_3"




{-| One of

* `AdditionalArtifact_REDSHIFT`
* `AdditionalArtifact_QUICKSIGHT`
* `AdditionalArtifact_ATHENA`

-}
type AdditionalArtifact
    = AdditionalArtifact_REDSHIFT
    | AdditionalArtifact_QUICKSIGHT
    | AdditionalArtifact_ATHENA



additionalArtifactDecoder : JD.Decoder AdditionalArtifact
additionalArtifactDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "REDSHIFT" ->
                        JD.succeed AdditionalArtifact_REDSHIFT

                    "QUICKSIGHT" ->
                        JD.succeed AdditionalArtifact_QUICKSIGHT

                    "ATHENA" ->
                        JD.succeed AdditionalArtifact_ATHENA


                    _ ->
                        JD.fail "bad thing"
            )




additionalArtifactToString : AdditionalArtifact -> String
additionalArtifactToString val =
    case val of
        AdditionalArtifact_REDSHIFT ->
            "REDSHIFT"

        AdditionalArtifact_QUICKSIGHT ->
            "QUICKSIGHT"

        AdditionalArtifact_ATHENA ->
            "ATHENA"




{-| One of

* `CompressionFormat_ZIP`
* `CompressionFormat_GZIP`
* `CompressionFormat_Parquet`

-}
type CompressionFormat
    = CompressionFormat_ZIP
    | CompressionFormat_GZIP
    | CompressionFormat_Parquet



compressionFormatDecoder : JD.Decoder CompressionFormat
compressionFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ZIP" ->
                        JD.succeed CompressionFormat_ZIP

                    "GZIP" ->
                        JD.succeed CompressionFormat_GZIP

                    "Parquet" ->
                        JD.succeed CompressionFormat_Parquet


                    _ ->
                        JD.fail "bad thing"
            )




compressionFormatToString : CompressionFormat -> String
compressionFormatToString val =
    case val of
        CompressionFormat_ZIP ->
            "ZIP"

        CompressionFormat_GZIP ->
            "GZIP"

        CompressionFormat_Parquet ->
            "Parquet"




{-| Type of HTTP response from deleteReportDefinition
-}
type alias DeleteReportDefinitionResponse =
    { responseMessage : Maybe String
    }



deleteReportDefinitionResponseDecoder : JD.Decoder DeleteReportDefinitionResponse
deleteReportDefinitionResponseDecoder =
    JD.succeed DeleteReportDefinitionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResponseMessage", "responseMessage"]
            JD.string
        )
        




deleteReportDefinitionResponseToString : DeleteReportDefinitionResponse -> String -- List (String, String)
deleteReportDefinitionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "responseMessage" "" -- val.responseMessage
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeReportDefinitions
-}
type alias DescribeReportDefinitionsResponse =
    { reportDefinitions : Maybe (List ReportDefinition)
    , nextToken : Maybe String
    }



describeReportDefinitionsResponseDecoder : JD.Decoder DescribeReportDefinitionsResponse
describeReportDefinitionsResponseDecoder =
    JD.succeed DescribeReportDefinitionsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReportDefinitions", "reportDefinitions"]
            (JD.list reportDefinitionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeReportDefinitionsResponseToString : DescribeReportDefinitionsResponse -> String -- List (String, String)
describeReportDefinitionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "reportDefinitions" "" -- val.reportDefinitions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putReportDefinition
-}
type alias PutReportDefinitionResponse =
    { 
    }



putReportDefinitionResponseDecoder : JD.Decoder PutReportDefinitionResponse
putReportDefinitionResponseDecoder =
    JD.succeed PutReportDefinitionResponse
        




putReportDefinitionResponseToString : PutReportDefinitionResponse -> String -- List (String, String)
putReportDefinitionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>The definition of AWS Cost and Usage Report. You can specify the report name, time unit, report format, compression format, S3 bucket, additional artifacts, and schema elements in the definition. </p>
-}
type alias ReportDefinition =
    { reportName : String
    , timeUnit : TimeUnit
    , format : ReportFormat
    , compression : CompressionFormat
    , additionalSchemaElements : (List SchemaElement)
    , s3Bucket : String
    , s3Prefix : String
    , s3Region : AWSRegion
    , additionalArtifacts : Maybe (List AdditionalArtifact)
    , refreshClosedReports : Maybe Bool
    , reportVersioning : Maybe ReportVersioning
    }



reportDefinitionDecoder : JD.Decoder ReportDefinition
reportDefinitionDecoder =
    JD.succeed ReportDefinition
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ReportName", "reportName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TimeUnit", "timeUnit"]
            timeUnitDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Format", "format"]
            reportFormatDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Compression", "compression"]
            compressionFormatDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AdditionalSchemaElements", "additionalSchemaElements"]
            (JD.list schemaElementDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["S3Bucket", "s3Bucket"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["S3Prefix", "s3Prefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["S3Region", "s3Region"]
            aWSRegionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AdditionalArtifacts", "additionalArtifacts"]
            (JD.list additionalArtifactDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RefreshClosedReports", "refreshClosedReports"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReportVersioning", "reportVersioning"]
            reportVersioningDecoder
        )
        




reportDefinitionToString : ReportDefinition -> String -- List (String, String)
reportDefinitionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "reportName" "" -- val.reportName
        
    --     |> Dict.insert
    --         "timeUnit" "" -- val.timeUnit
        
    --     |> Dict.insert
    --         "format" "" -- val.format
        
    --     |> Dict.insert
    --         "compression" "" -- val.compression
        
    --     |> Dict.insert
    --         "additionalSchemaElements" "" -- val.additionalSchemaElements
        
    --     |> Dict.insert
    --         "s3Bucket" "" -- val.s3Bucket
        
    --     |> Dict.insert
    --         "s3Prefix" "" -- val.s3Prefix
        
    --     |> Dict.insert
    --         "s3Region" "" -- val.s3Region
        
    --     |> Dict.insert
    --         "additionalArtifacts" "" -- val.additionalArtifacts
        
    --     |> Dict.insert
    --         "refreshClosedReports" "" -- val.refreshClosedReports
        
    --     |> Dict.insert
    --         "reportVersioning" "" -- val.reportVersioning
        
    --     |> Dict.toList
    ""



{-| One of

* `ReportFormat_textORcsv`
* `ReportFormat_Parquet`

-}
type ReportFormat
    = ReportFormat_textORcsv
    | ReportFormat_Parquet



reportFormatDecoder : JD.Decoder ReportFormat
reportFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "textORcsv" ->
                        JD.succeed ReportFormat_textORcsv

                    "Parquet" ->
                        JD.succeed ReportFormat_Parquet


                    _ ->
                        JD.fail "bad thing"
            )




reportFormatToString : ReportFormat -> String
reportFormatToString val =
    case val of
        ReportFormat_textORcsv ->
            "textORcsv"

        ReportFormat_Parquet ->
            "Parquet"




{-| One of

* `ReportVersioning_CREATE_NEW_REPORT`
* `ReportVersioning_OVERWRITE_REPORT`

-}
type ReportVersioning
    = ReportVersioning_CREATE_NEW_REPORT
    | ReportVersioning_OVERWRITE_REPORT



reportVersioningDecoder : JD.Decoder ReportVersioning
reportVersioningDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_NEW_REPORT" ->
                        JD.succeed ReportVersioning_CREATE_NEW_REPORT

                    "OVERWRITE_REPORT" ->
                        JD.succeed ReportVersioning_OVERWRITE_REPORT


                    _ ->
                        JD.fail "bad thing"
            )




reportVersioningToString : ReportVersioning -> String
reportVersioningToString val =
    case val of
        ReportVersioning_CREATE_NEW_REPORT ->
            "CREATE_NEW_REPORT"

        ReportVersioning_OVERWRITE_REPORT ->
            "OVERWRITE_REPORT"




{-| One of

* `SchemaElement_RESOURCES`

-}
type SchemaElement
    = SchemaElement_RESOURCES



schemaElementDecoder : JD.Decoder SchemaElement
schemaElementDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RESOURCES" ->
                        JD.succeed SchemaElement_RESOURCES


                    _ ->
                        JD.fail "bad thing"
            )




schemaElementToString : SchemaElement -> String
schemaElementToString val =
    case val of
        SchemaElement_RESOURCES ->
            "RESOURCES"




{-| One of

* `TimeUnit_HOURLY`
* `TimeUnit_DAILY`

-}
type TimeUnit
    = TimeUnit_HOURLY
    | TimeUnit_DAILY



timeUnitDecoder : JD.Decoder TimeUnit
timeUnitDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HOURLY" ->
                        JD.succeed TimeUnit_HOURLY

                    "DAILY" ->
                        JD.succeed TimeUnit_DAILY


                    _ ->
                        JD.fail "bad thing"
            )




timeUnitToString : TimeUnit -> String
timeUnitToString val =
    case val of
        TimeUnit_HOURLY ->
            "HOURLY"

        TimeUnit_DAILY ->
            "DAILY"







{-| <p>Deletes the specified report.</p>
-}
type alias DeleteReportDefinitionRequest =
    { reportName : Maybe String
    }


{-| <p>Requests a list of AWS Cost and Usage reports owned by the account.</p>
-}
type alias DescribeReportDefinitionsRequest =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Creates a Cost and Usage Report.</p>
-}
type alias PutReportDefinitionRequest =
    { reportDefinition : ReportDefinition
    }


















deleteReportDefinitionRequestEncoder : DeleteReportDefinitionRequest -> JE.Value
deleteReportDefinitionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ReportName", data.reportName)
        
        
        |> JE.object






deleteReportDefinitionResponseEncoder : DeleteReportDefinitionResponse -> JE.Value
deleteReportDefinitionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResponseMessage", data.responseMessage)
        
        
        |> JE.object






describeReportDefinitionsRequestEncoder : DescribeReportDefinitionsRequest -> JE.Value
describeReportDefinitionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeReportDefinitionsResponseEncoder : DescribeReportDefinitionsResponse -> JE.Value
describeReportDefinitionsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (reportDefinitionEncoder))
            ("ReportDefinitions", data.reportDefinitions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






putReportDefinitionRequestEncoder : PutReportDefinitionRequest -> JE.Value
putReportDefinitionRequestEncoder data =
    []
        
        
        |> (::) ("ReportDefinition", data.reportDefinition |> (reportDefinitionEncoder))
        
        
        |> JE.object






putReportDefinitionResponseEncoder : PutReportDefinitionResponse -> JE.Value
putReportDefinitionResponseEncoder data =
    []
        
        |> JE.object






reportDefinitionEncoder : ReportDefinition -> JE.Value
reportDefinitionEncoder data =
    []
        
        
        |> (::) ("ReportName", data.reportName |> (JE.string))
        
        
        
        |> (::) ("TimeUnit", data.timeUnit |> (timeUnitToString >> JE.string))
        
        
        
        |> (::) ("Format", data.format |> (reportFormatToString >> JE.string))
        
        
        
        |> (::) ("Compression", data.compression |> (compressionFormatToString >> JE.string))
        
        
        
        |> (::) ("AdditionalSchemaElements", data.additionalSchemaElements |> (JE.list (schemaElementToString >> JE.string)))
        
        
        
        |> (::) ("S3Bucket", data.s3Bucket |> (JE.string))
        
        
        
        |> (::) ("S3Prefix", data.s3Prefix |> (JE.string))
        
        
        
        |> (::) ("S3Region", data.s3Region |> (aWSRegionToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (additionalArtifactToString >> JE.string))
            ("AdditionalArtifacts", data.additionalArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("RefreshClosedReports", data.refreshClosedReports)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (reportVersioningToString >> JE.string)
            ("ReportVersioning", data.reportVersioning)
        
        
        |> JE.object





















