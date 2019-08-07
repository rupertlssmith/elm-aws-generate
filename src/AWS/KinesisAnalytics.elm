module AWS.KinesisAnalytics
    exposing
        ( service
        , addApplicationCloudWatchLoggingOption
        , addApplicationInput
        , addApplicationInputProcessingConfiguration
        , addApplicationOutput
        , addApplicationReferenceDataSource
        , createApplication
        , CreateApplicationOptions
        , deleteApplication
        , deleteApplicationCloudWatchLoggingOption
        , deleteApplicationInputProcessingConfiguration
        , deleteApplicationOutput
        , deleteApplicationReferenceDataSource
        , describeApplication
        , discoverInputSchema
        , DiscoverInputSchemaOptions
        , listApplications
        , ListApplicationsOptions
        , listTagsForResource
        , startApplication
        , stopApplication
        , tagResource
        , untagResource
        , updateApplication
        , AddApplicationCloudWatchLoggingOptionResponse
        , AddApplicationInputProcessingConfigurationResponse
        , AddApplicationInputResponse
        , AddApplicationOutputResponse
        , AddApplicationReferenceDataSourceResponse
        , ApplicationDetail
        , ApplicationStatus(..)
        , ApplicationSummary
        , ApplicationUpdate
        , CSVMappingParameters
        , CloudWatchLoggingOption
        , CloudWatchLoggingOptionDescription
        , CloudWatchLoggingOptionUpdate
        , CreateApplicationResponse
        , DeleteApplicationCloudWatchLoggingOptionResponse
        , DeleteApplicationInputProcessingConfigurationResponse
        , DeleteApplicationOutputResponse
        , DeleteApplicationReferenceDataSourceResponse
        , DeleteApplicationResponse
        , DescribeApplicationResponse
        , DestinationSchema
        , DiscoverInputSchemaResponse
        , Input
        , InputConfiguration
        , InputDescription
        , InputLambdaProcessor
        , InputLambdaProcessorDescription
        , InputLambdaProcessorUpdate
        , InputParallelism
        , InputParallelismUpdate
        , InputProcessingConfiguration
        , InputProcessingConfigurationDescription
        , InputProcessingConfigurationUpdate
        , InputSchemaUpdate
        , InputStartingPosition(..)
        , InputStartingPositionConfiguration
        , InputUpdate
        , JSONMappingParameters
        , KinesisFirehoseInput
        , KinesisFirehoseInputDescription
        , KinesisFirehoseInputUpdate
        , KinesisFirehoseOutput
        , KinesisFirehoseOutputDescription
        , KinesisFirehoseOutputUpdate
        , KinesisStreamsInput
        , KinesisStreamsInputDescription
        , KinesisStreamsInputUpdate
        , KinesisStreamsOutput
        , KinesisStreamsOutputDescription
        , KinesisStreamsOutputUpdate
        , LambdaOutput
        , LambdaOutputDescription
        , LambdaOutputUpdate
        , ListApplicationsResponse
        , ListTagsForResourceResponse
        , MappingParameters
        , Output
        , OutputDescription
        , OutputUpdate
        , RecordColumn
        , RecordFormat
        , RecordFormatType(..)
        , ReferenceDataSource
        , ReferenceDataSourceDescription
        , ReferenceDataSourceUpdate
        , S3Configuration
        , S3ReferenceDataSource
        , S3ReferenceDataSourceDescription
        , S3ReferenceDataSourceUpdate
        , SourceSchema
        , StartApplicationResponse
        , StopApplicationResponse
        , Tag
        , TagResourceResponse
        , UntagResourceResponse
        , UpdateApplicationResponse
        )

{-| <fullname>Amazon Kinesis Analytics</fullname> <p> <b>Overview</b> </p> <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>This is the <i>Amazon Kinesis Analytics v1 API Reference</i>. The Amazon Kinesis Analytics Developer Guide provides additional information. </p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [addApplicationCloudWatchLoggingOption](#addApplicationCloudWatchLoggingOption)
* [addApplicationInput](#addApplicationInput)
* [addApplicationInputProcessingConfiguration](#addApplicationInputProcessingConfiguration)
* [addApplicationOutput](#addApplicationOutput)
* [addApplicationReferenceDataSource](#addApplicationReferenceDataSource)
* [createApplication](#createApplication)
* [CreateApplicationOptions](#CreateApplicationOptions)
* [deleteApplication](#deleteApplication)
* [deleteApplicationCloudWatchLoggingOption](#deleteApplicationCloudWatchLoggingOption)
* [deleteApplicationInputProcessingConfiguration](#deleteApplicationInputProcessingConfiguration)
* [deleteApplicationOutput](#deleteApplicationOutput)
* [deleteApplicationReferenceDataSource](#deleteApplicationReferenceDataSource)
* [describeApplication](#describeApplication)
* [discoverInputSchema](#discoverInputSchema)
* [DiscoverInputSchemaOptions](#DiscoverInputSchemaOptions)
* [listApplications](#listApplications)
* [ListApplicationsOptions](#ListApplicationsOptions)
* [listTagsForResource](#listTagsForResource)
* [startApplication](#startApplication)
* [stopApplication](#stopApplication)
* [tagResource](#tagResource)
* [untagResource](#untagResource)
* [updateApplication](#updateApplication)


@docs addApplicationCloudWatchLoggingOption,addApplicationInput,addApplicationInputProcessingConfiguration,addApplicationOutput,addApplicationReferenceDataSource,createApplication,CreateApplicationOptions,deleteApplication,deleteApplicationCloudWatchLoggingOption,deleteApplicationInputProcessingConfiguration,deleteApplicationOutput,deleteApplicationReferenceDataSource,describeApplication,discoverInputSchema,DiscoverInputSchemaOptions,listApplications,ListApplicationsOptions,listTagsForResource,startApplication,stopApplication,tagResource,untagResource,updateApplication

## Responses

* [AddApplicationCloudWatchLoggingOptionResponse](#AddApplicationCloudWatchLoggingOptionResponse)
* [AddApplicationInputProcessingConfigurationResponse](#AddApplicationInputProcessingConfigurationResponse)
* [AddApplicationInputResponse](#AddApplicationInputResponse)
* [AddApplicationOutputResponse](#AddApplicationOutputResponse)
* [AddApplicationReferenceDataSourceResponse](#AddApplicationReferenceDataSourceResponse)
* [CreateApplicationResponse](#CreateApplicationResponse)
* [DeleteApplicationCloudWatchLoggingOptionResponse](#DeleteApplicationCloudWatchLoggingOptionResponse)
* [DeleteApplicationInputProcessingConfigurationResponse](#DeleteApplicationInputProcessingConfigurationResponse)
* [DeleteApplicationOutputResponse](#DeleteApplicationOutputResponse)
* [DeleteApplicationReferenceDataSourceResponse](#DeleteApplicationReferenceDataSourceResponse)
* [DeleteApplicationResponse](#DeleteApplicationResponse)
* [DescribeApplicationResponse](#DescribeApplicationResponse)
* [DiscoverInputSchemaResponse](#DiscoverInputSchemaResponse)
* [ListApplicationsResponse](#ListApplicationsResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [StartApplicationResponse](#StartApplicationResponse)
* [StopApplicationResponse](#StopApplicationResponse)
* [TagResourceResponse](#TagResourceResponse)
* [UntagResourceResponse](#UntagResourceResponse)
* [UpdateApplicationResponse](#UpdateApplicationResponse)


@docs AddApplicationCloudWatchLoggingOptionResponse,AddApplicationInputProcessingConfigurationResponse,AddApplicationInputResponse,AddApplicationOutputResponse,AddApplicationReferenceDataSourceResponse,CreateApplicationResponse,DeleteApplicationCloudWatchLoggingOptionResponse,DeleteApplicationInputProcessingConfigurationResponse,DeleteApplicationOutputResponse,DeleteApplicationReferenceDataSourceResponse,DeleteApplicationResponse,DescribeApplicationResponse,DiscoverInputSchemaResponse,ListApplicationsResponse,ListTagsForResourceResponse,StartApplicationResponse,StopApplicationResponse,TagResourceResponse,UntagResourceResponse,UpdateApplicationResponse

## Records

* [ApplicationDetail](#ApplicationDetail)
* [ApplicationSummary](#ApplicationSummary)
* [ApplicationUpdate](#ApplicationUpdate)
* [CSVMappingParameters](#CSVMappingParameters)
* [CloudWatchLoggingOption](#CloudWatchLoggingOption)
* [CloudWatchLoggingOptionDescription](#CloudWatchLoggingOptionDescription)
* [CloudWatchLoggingOptionUpdate](#CloudWatchLoggingOptionUpdate)
* [DestinationSchema](#DestinationSchema)
* [Input](#Input)
* [InputConfiguration](#InputConfiguration)
* [InputDescription](#InputDescription)
* [InputLambdaProcessor](#InputLambdaProcessor)
* [InputLambdaProcessorDescription](#InputLambdaProcessorDescription)
* [InputLambdaProcessorUpdate](#InputLambdaProcessorUpdate)
* [InputParallelism](#InputParallelism)
* [InputParallelismUpdate](#InputParallelismUpdate)
* [InputProcessingConfiguration](#InputProcessingConfiguration)
* [InputProcessingConfigurationDescription](#InputProcessingConfigurationDescription)
* [InputProcessingConfigurationUpdate](#InputProcessingConfigurationUpdate)
* [InputSchemaUpdate](#InputSchemaUpdate)
* [InputStartingPositionConfiguration](#InputStartingPositionConfiguration)
* [InputUpdate](#InputUpdate)
* [JSONMappingParameters](#JSONMappingParameters)
* [KinesisFirehoseInput](#KinesisFirehoseInput)
* [KinesisFirehoseInputDescription](#KinesisFirehoseInputDescription)
* [KinesisFirehoseInputUpdate](#KinesisFirehoseInputUpdate)
* [KinesisFirehoseOutput](#KinesisFirehoseOutput)
* [KinesisFirehoseOutputDescription](#KinesisFirehoseOutputDescription)
* [KinesisFirehoseOutputUpdate](#KinesisFirehoseOutputUpdate)
* [KinesisStreamsInput](#KinesisStreamsInput)
* [KinesisStreamsInputDescription](#KinesisStreamsInputDescription)
* [KinesisStreamsInputUpdate](#KinesisStreamsInputUpdate)
* [KinesisStreamsOutput](#KinesisStreamsOutput)
* [KinesisStreamsOutputDescription](#KinesisStreamsOutputDescription)
* [KinesisStreamsOutputUpdate](#KinesisStreamsOutputUpdate)
* [LambdaOutput](#LambdaOutput)
* [LambdaOutputDescription](#LambdaOutputDescription)
* [LambdaOutputUpdate](#LambdaOutputUpdate)
* [MappingParameters](#MappingParameters)
* [Output](#Output)
* [OutputDescription](#OutputDescription)
* [OutputUpdate](#OutputUpdate)
* [RecordColumn](#RecordColumn)
* [RecordFormat](#RecordFormat)
* [ReferenceDataSource](#ReferenceDataSource)
* [ReferenceDataSourceDescription](#ReferenceDataSourceDescription)
* [ReferenceDataSourceUpdate](#ReferenceDataSourceUpdate)
* [S3Configuration](#S3Configuration)
* [S3ReferenceDataSource](#S3ReferenceDataSource)
* [S3ReferenceDataSourceDescription](#S3ReferenceDataSourceDescription)
* [S3ReferenceDataSourceUpdate](#S3ReferenceDataSourceUpdate)
* [SourceSchema](#SourceSchema)
* [Tag](#Tag)


@docs ApplicationDetail,ApplicationSummary,ApplicationUpdate,CSVMappingParameters,CloudWatchLoggingOption,CloudWatchLoggingOptionDescription,CloudWatchLoggingOptionUpdate,DestinationSchema,Input,InputConfiguration,InputDescription,InputLambdaProcessor,InputLambdaProcessorDescription,InputLambdaProcessorUpdate,InputParallelism,InputParallelismUpdate,InputProcessingConfiguration,InputProcessingConfigurationDescription,InputProcessingConfigurationUpdate,InputSchemaUpdate,InputStartingPositionConfiguration,InputUpdate,JSONMappingParameters,KinesisFirehoseInput,KinesisFirehoseInputDescription,KinesisFirehoseInputUpdate,KinesisFirehoseOutput,KinesisFirehoseOutputDescription,KinesisFirehoseOutputUpdate,KinesisStreamsInput,KinesisStreamsInputDescription,KinesisStreamsInputUpdate,KinesisStreamsOutput,KinesisStreamsOutputDescription,KinesisStreamsOutputUpdate,LambdaOutput,LambdaOutputDescription,LambdaOutputUpdate,MappingParameters,Output,OutputDescription,OutputUpdate,RecordColumn,RecordFormat,ReferenceDataSource,ReferenceDataSourceDescription,ReferenceDataSourceUpdate,S3Configuration,S3ReferenceDataSource,S3ReferenceDataSourceDescription,S3ReferenceDataSourceUpdate,SourceSchema,Tag

## Unions

* [ApplicationStatus](#ApplicationStatus)
* [InputStartingPosition](#InputStartingPosition)
* [RecordFormatType](#RecordFormatType)


@docs ApplicationStatus,InputStartingPosition,RecordFormatType

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
        "kinesisanalytics"
        "2015-08-14"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "KinesisAnalytics_20150814")



-- OPERATIONS

{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Adds a CloudWatch log stream to monitor application configuration errors. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon CloudWatch Logs</a>.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `cloudWatchLoggingOption` __:__ `CloudWatchLoggingOption`


-}

addApplicationCloudWatchLoggingOption :
  
    String ->
  
    Int ->
  
    CloudWatchLoggingOption ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddApplicationCloudWatchLoggingOptionResponse)

addApplicationCloudWatchLoggingOption applicationName currentApplicationVersionId cloudWatchLoggingOption =
    
    let
        requestInput = AddApplicationCloudWatchLoggingOptionRequest
            
            applicationName
            
            currentApplicationVersionId
            
            cloudWatchLoggingOption
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addApplicationCloudWatchLoggingOptionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddApplicationCloudWatchLoggingOption"
                
                (AWS.Core.Decode.ResultDecoder "AddApplicationCloudWatchLoggingOptionResponse" addApplicationCloudWatchLoggingOptionResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p> Adds a streaming source to your Amazon Kinesis application. For conceptual information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p> <p>You can add a streaming source either when you create an application or you can use this operation to add a streaming source after you create an application. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_CreateApplication.html">CreateApplication</a>.</p> <p>Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to find the current application version. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationInput</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `input` __:__ `Input`


-}

addApplicationInput :
  
    String ->
  
    Int ->
  
    Input ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddApplicationInputResponse)

addApplicationInput applicationName currentApplicationVersionId input =
    
    let
        requestInput = AddApplicationInputRequest
            
            applicationName
            
            currentApplicationVersionId
            
            input
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addApplicationInputRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddApplicationInput"
                
                (AWS.Core.Decode.ResultDecoder "AddApplicationInputResponse" addApplicationInputResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Adds an <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> to an application. An input processor preprocesses records on the input stream before the application's SQL code executes. Currently, the only input processor available is <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a>.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `inputId` __:__ `String`
* `inputProcessingConfiguration` __:__ `InputProcessingConfiguration`


-}

addApplicationInputProcessingConfiguration :
  
    String ->
  
    Int ->
  
    String ->
  
    InputProcessingConfiguration ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddApplicationInputProcessingConfigurationResponse)

addApplicationInputProcessingConfiguration applicationName currentApplicationVersionId inputId inputProcessingConfiguration =
    
    let
        requestInput = AddApplicationInputProcessingConfigurationRequest
            
            applicationName
            
            currentApplicationVersionId
            
            inputId
            
            inputProcessingConfiguration
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addApplicationInputProcessingConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddApplicationInputProcessingConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "AddApplicationInputProcessingConfigurationResponse" addApplicationInputProcessingConfigurationResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Adds an external destination to your Amazon Kinesis Analytics application.</p> <p>If you want Amazon Kinesis Analytics to deliver data from an in-application stream within your application to an external destination (such as an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an AWS Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.</p> <p> You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Understanding Application Output (Destination)</a>. </p> <p> Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to find the current application version.</p> <p>For the limits on the number of application inputs and outputs you can configure, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `output` __:__ `Output`


-}

addApplicationOutput :
  
    String ->
  
    Int ->
  
    Output ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddApplicationOutputResponse)

addApplicationOutput applicationName currentApplicationVersionId output =
    
    let
        requestInput = AddApplicationOutputRequest
            
            applicationName
            
            currentApplicationVersionId
            
            output
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addApplicationOutputRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddApplicationOutput"
                
                (AWS.Core.Decode.ResultDecoder "AddApplicationOutputResponse" addApplicationOutputResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Adds a reference data source to an existing application.</p> <p>Amazon Kinesis Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in Amazon S3 object maps to columns in the resulting in-application table.</p> <p> For conceptual information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. For the limits on data sources you can add to your application, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>. </p> <p> This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action. </p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `referenceDataSource` __:__ `ReferenceDataSource`


-}

addApplicationReferenceDataSource :
  
    String ->
  
    Int ->
  
    ReferenceDataSource ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddApplicationReferenceDataSourceResponse)

addApplicationReferenceDataSource applicationName currentApplicationVersionId referenceDataSource =
    
    let
        requestInput = AddApplicationReferenceDataSourceRequest
            
            applicationName
            
            currentApplicationVersionId
            
            referenceDataSource
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addApplicationReferenceDataSourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddApplicationReferenceDataSource"
                
                (AWS.Core.Decode.ResultDecoder "AddApplicationReferenceDataSourceResponse" addApplicationReferenceDataSourceResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p> Creates an Amazon Kinesis Analytics application. You can configure each application with one streaming source as input, application code to process the input, and up to three destinations where you want Amazon Kinesis Analytics to write the output data from your application. For an overview, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html">How it Works</a>. </p> <p>In the input configuration, you map the streaming source to an in-application stream, which you can think of as a constantly updating table. In the mapping, you must provide a schema for the in-application stream and map each data column in the in-application stream to a data element in the streaming source.</p> <p>Your application code is one or more SQL statements that read input data, transform it, and generate output. Your application code can create one or more SQL artifacts like SQL streams or pumps.</p> <p>In the output configuration, you can configure the application to write data from in-application streams created in your applications to up to three destinations.</p> <p> To read data from your source stream or write data to destination streams, Amazon Kinesis Analytics needs your permissions. You grant these permissions by creating IAM roles. This operation requires permissions to perform the <code>kinesisanalytics:CreateApplication</code> action. </p> <p> For introductory exercises to create an Amazon Kinesis Analytics application, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html">Getting Started</a>. </p>

__Required Parameters__

* `applicationName` __:__ `String`


-}

createApplication :
  
    String ->
  
  
    ( CreateApplicationOptions -> CreateApplicationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateApplicationResponse)

createApplication applicationName setOptions =
    
    let
        requestInput = CreateApplicationRequest
            
            applicationName
            
            options.applicationDescription
            
            options.inputs
            
            options.outputs
            
            options.cloudWatchLoggingOptions
            
            options.applicationCode
            
            options.tags
            
        
        options = setOptions (CreateApplicationOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createApplicationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateApplication"
                
                (AWS.Core.Decode.ResultDecoder "CreateApplicationResponse" createApplicationResponseDecoder)
                
            )



{-| Options for a createApplication request
-}
type alias CreateApplicationOptions =
    {
    applicationDescription : Maybe String,inputs : Maybe (List Input),outputs : Maybe (List Output),cloudWatchLoggingOptions : Maybe (List CloudWatchLoggingOption),applicationCode : Maybe String,tags : Maybe (List Tag)
    }



{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Deletes the specified application. Amazon Kinesis Analytics halts application execution and deletes the application, including any application artifacts (such as in-application streams, reference table, and application code).</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DeleteApplication</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `createTimestamp` __:__ `Posix`


-}

deleteApplication :
  
    String ->
  
    Posix ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteApplicationResponse)

deleteApplication applicationName createTimestamp =
    
    let
        requestInput = DeleteApplicationRequest
            
            applicationName
            
            createTimestamp
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteApplicationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteApplication"
                
                (AWS.Core.Decode.ResultDecoder "DeleteApplicationResponse" deleteApplicationResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Deletes a CloudWatch log stream from an application. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon CloudWatch Logs</a>.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `cloudWatchLoggingOptionId` __:__ `String`


-}

deleteApplicationCloudWatchLoggingOption :
  
    String ->
  
    Int ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteApplicationCloudWatchLoggingOptionResponse)

deleteApplicationCloudWatchLoggingOption applicationName currentApplicationVersionId cloudWatchLoggingOptionId =
    
    let
        requestInput = DeleteApplicationCloudWatchLoggingOptionRequest
            
            applicationName
            
            currentApplicationVersionId
            
            cloudWatchLoggingOptionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteApplicationCloudWatchLoggingOptionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteApplicationCloudWatchLoggingOption"
                
                (AWS.Core.Decode.ResultDecoder "DeleteApplicationCloudWatchLoggingOptionResponse" deleteApplicationCloudWatchLoggingOptionResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Deletes an <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> from an input.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `inputId` __:__ `String`


-}

deleteApplicationInputProcessingConfiguration :
  
    String ->
  
    Int ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteApplicationInputProcessingConfigurationResponse)

deleteApplicationInputProcessingConfiguration applicationName currentApplicationVersionId inputId =
    
    let
        requestInput = DeleteApplicationInputProcessingConfigurationRequest
            
            applicationName
            
            currentApplicationVersionId
            
            inputId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteApplicationInputProcessingConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteApplicationInputProcessingConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "DeleteApplicationInputProcessingConfigurationResponse" deleteApplicationInputProcessingConfigurationResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Deletes output destination configuration from your application configuration. Amazon Kinesis Analytics will no longer write data from the corresponding in-application stream to the external output destination.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DeleteApplicationOutput</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `outputId` __:__ `String`


-}

deleteApplicationOutput :
  
    String ->
  
    Int ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteApplicationOutputResponse)

deleteApplicationOutput applicationName currentApplicationVersionId outputId =
    
    let
        requestInput = DeleteApplicationOutputRequest
            
            applicationName
            
            currentApplicationVersionId
            
            outputId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteApplicationOutputRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteApplicationOutput"
                
                (AWS.Core.Decode.ResultDecoder "DeleteApplicationOutputResponse" deleteApplicationOutputResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Deletes a reference data source configuration from the specified application configuration.</p> <p>If the application is running, Amazon Kinesis Analytics immediately removes the in-application table that you created using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html">AddApplicationReferenceDataSource</a> operation. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics.DeleteApplicationReferenceDataSource</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `referenceId` __:__ `String`


-}

deleteApplicationReferenceDataSource :
  
    String ->
  
    Int ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteApplicationReferenceDataSourceResponse)

deleteApplicationReferenceDataSource applicationName currentApplicationVersionId referenceId =
    
    let
        requestInput = DeleteApplicationReferenceDataSourceRequest
            
            applicationName
            
            currentApplicationVersionId
            
            referenceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteApplicationReferenceDataSourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteApplicationReferenceDataSource"
                
                (AWS.Core.Decode.ResultDecoder "DeleteApplicationReferenceDataSourceResponse" deleteApplicationReferenceDataSourceResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Returns information about a specific Amazon Kinesis Analytics application.</p> <p>If you want to retrieve a list of all applications in your account, use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_ListApplications.html">ListApplications</a> operation.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DescribeApplication</code> action. You can use <code>DescribeApplication</code> to get the current application versionId, which you need to call other operations such as <code>Update</code>. </p>

__Required Parameters__

* `applicationName` __:__ `String`


-}

describeApplication :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeApplicationResponse)

describeApplication applicationName =
    
    let
        requestInput = DescribeApplicationRequest
            
            applicationName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeApplicationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeApplication"
                
                (AWS.Core.Decode.ResultDecoder "DescribeApplicationResponse" describeApplicationResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Infers a schema by evaluating sample records on the specified streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream) or S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.</p> <p> You can use the inferred schema when configuring a streaming source for your application. For conceptual information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. Note that when you create an application using the Amazon Kinesis Analytics console, the console uses this operation to infer a schema and show it in the console user interface. </p> <p> This operation requires permissions to perform the <code>kinesisanalytics:DiscoverInputSchema</code> action. </p>

__Required Parameters__



-}

discoverInputSchema :
  
  
    ( DiscoverInputSchemaOptions -> DiscoverInputSchemaOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DiscoverInputSchemaResponse)

discoverInputSchema setOptions =
    
    let
        requestInput = DiscoverInputSchemaRequest
            
            options.resourceARN
            
            options.roleARN
            
            options.inputStartingPositionConfiguration
            
            options.s3Configuration
            
            options.inputProcessingConfiguration
            
        
        options = setOptions (DiscoverInputSchemaOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> discoverInputSchemaRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DiscoverInputSchema"
                
                (AWS.Core.Decode.ResultDecoder "DiscoverInputSchemaResponse" discoverInputSchemaResponseDecoder)
                
            )



{-| Options for a discoverInputSchema request
-}
type alias DiscoverInputSchemaOptions =
    {
    resourceARN : Maybe String,roleARN : Maybe String,inputStartingPositionConfiguration : Maybe InputStartingPositionConfiguration,s3Configuration : Maybe S3Configuration,inputProcessingConfiguration : Maybe InputProcessingConfiguration
    }



{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Returns a list of Amazon Kinesis Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status. If the response returns the <code>HasMoreApplications</code> value as true, you can send another request by adding the <code>ExclusiveStartApplicationName</code> in the request body, and set the value of this to the last application name from the previous response. </p> <p>If you want detailed information about a specific application, use <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a>.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:ListApplications</code> action.</p>

__Required Parameters__



-}

listApplications :
  
  
    ( ListApplicationsOptions -> ListApplicationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListApplicationsResponse)

listApplications setOptions =
    
    let
        requestInput = ListApplicationsRequest
            
            options.limit
            
            options.exclusiveStartApplicationName
            
        
        options = setOptions (ListApplicationsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listApplicationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListApplications"
                
                (AWS.Core.Decode.ResultDecoder "ListApplicationsResponse" listApplicationsResponseDecoder)
                
            )



{-| Options for a listApplications request
-}
type alias ListApplicationsOptions =
    {
    limit : Maybe Int,exclusiveStartApplicationName : Maybe String
    }



{-| <p>Retrieves the list of key-value tags assigned to the application.</p>

__Required Parameters__

* `resourceARN` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)

listTagsForResource resourceARN =
    
    let
        requestInput = ListTagsForResourceRequest
            
            resourceARN
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTagsForResourceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTagsForResource"
                
                (AWS.Core.Decode.ResultDecoder "ListTagsForResourceResponse" listTagsForResourceResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Starts the specified Amazon Kinesis Analytics application. After creating an application, you must exclusively call this operation to start your application.</p> <p>After the application starts, it begins consuming the input data, processes it, and writes the output to the configured destination.</p> <p> The application status must be <code>READY</code> for you to start an application. You can get the application status in the console or using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation.</p> <p>After you start the application, you can stop the application from processing the input by calling the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_StopApplication.html">StopApplication</a> operation.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:StartApplication</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `inputConfigurations` __:__ `(List InputConfiguration)`


-}

startApplication :
  
    String ->
  
    (List InputConfiguration) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartApplicationResponse)

startApplication applicationName inputConfigurations =
    
    let
        requestInput = StartApplicationRequest
            
            applicationName
            
            inputConfigurations
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startApplicationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartApplication"
                
                (AWS.Core.Decode.ResultDecoder "StartApplicationResponse" startApplicationResponseDecoder)
                
            )





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Stops the application from processing input data. You can stop an application only if it is in the running state. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to find the application state. After the application is stopped, Amazon Kinesis Analytics stops reading data from the input, the application stops processing data, and there is no output written to the destination. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics:StopApplication</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`


-}

stopApplication :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopApplicationResponse)

stopApplication applicationName =
    
    let
        requestInput = StopApplicationRequest
            
            applicationName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopApplicationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopApplication"
                
                (AWS.Core.Decode.ResultDecoder "StopApplicationResponse" stopApplicationResponseDecoder)
                
            )





{-| <p>Adds one or more key-value tags to a Kinesis Analytics application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.</p>

__Required Parameters__

* `resourceARN` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

tagResource :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceResponse)

tagResource resourceARN tags =
    
    let
        requestInput = TagResourceRequest
            
            resourceARN
            
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





{-| <p>Removes one or more tags from a Kinesis Analytics application.</p>

__Required Parameters__

* `resourceARN` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

untagResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceResponse)

untagResource resourceARN tagKeys =
    
    let
        requestInput = UntagResourceRequest
            
            resourceARN
            
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





{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Updates an existing Amazon Kinesis Analytics application. Using this API, you can update application code, input configuration, and output configuration. </p> <p>Note that Amazon Kinesis Analytics updates the <code>CurrentApplicationVersionId</code> each time you update your application. </p> <p>This operation requires permission for the <code>kinesisanalytics:UpdateApplication</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `applicationUpdate` __:__ `ApplicationUpdate`


-}

updateApplication :
  
    String ->
  
    Int ->
  
    ApplicationUpdate ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateApplicationResponse)

updateApplication applicationName currentApplicationVersionId applicationUpdate =
    
    let
        requestInput = UpdateApplicationRequest
            
            applicationName
            
            currentApplicationVersionId
            
            applicationUpdate
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateApplicationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateApplication"
                
                (AWS.Core.Decode.ResultDecoder "UpdateApplicationResponse" updateApplicationResponseDecoder)
                
            )






{-| Type of HTTP response from addApplicationCloudWatchLoggingOption
-}
type alias AddApplicationCloudWatchLoggingOptionResponse =
    { 
    }



addApplicationCloudWatchLoggingOptionResponseDecoder : JD.Decoder AddApplicationCloudWatchLoggingOptionResponse
addApplicationCloudWatchLoggingOptionResponseDecoder =
    JD.succeed AddApplicationCloudWatchLoggingOptionResponse
        




addApplicationCloudWatchLoggingOptionResponseToString : AddApplicationCloudWatchLoggingOptionResponse -> String -- List (String, String)
addApplicationCloudWatchLoggingOptionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from addApplicationInputProcessingConfiguration
-}
type alias AddApplicationInputProcessingConfigurationResponse =
    { 
    }



addApplicationInputProcessingConfigurationResponseDecoder : JD.Decoder AddApplicationInputProcessingConfigurationResponse
addApplicationInputProcessingConfigurationResponseDecoder =
    JD.succeed AddApplicationInputProcessingConfigurationResponse
        




addApplicationInputProcessingConfigurationResponseToString : AddApplicationInputProcessingConfigurationResponse -> String -- List (String, String)
addApplicationInputProcessingConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from addApplicationInput
-}
type alias AddApplicationInputResponse =
    { 
    }



addApplicationInputResponseDecoder : JD.Decoder AddApplicationInputResponse
addApplicationInputResponseDecoder =
    JD.succeed AddApplicationInputResponse
        




addApplicationInputResponseToString : AddApplicationInputResponse -> String -- List (String, String)
addApplicationInputResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from addApplicationOutput
-}
type alias AddApplicationOutputResponse =
    { 
    }



addApplicationOutputResponseDecoder : JD.Decoder AddApplicationOutputResponse
addApplicationOutputResponseDecoder =
    JD.succeed AddApplicationOutputResponse
        




addApplicationOutputResponseToString : AddApplicationOutputResponse -> String -- List (String, String)
addApplicationOutputResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from addApplicationReferenceDataSource
-}
type alias AddApplicationReferenceDataSourceResponse =
    { 
    }



addApplicationReferenceDataSourceResponseDecoder : JD.Decoder AddApplicationReferenceDataSourceResponse
addApplicationReferenceDataSourceResponseDecoder =
    JD.succeed AddApplicationReferenceDataSourceResponse
        




addApplicationReferenceDataSourceResponseToString : AddApplicationReferenceDataSourceResponse -> String -- List (String, String)
addApplicationReferenceDataSourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Provides a description of the application, including the application Amazon Resource Name (ARN), status, latest version, and input and output configuration.</p>
-}
type alias ApplicationDetail =
    { applicationName : String
    , applicationDescription : Maybe String
    , applicationARN : String
    , applicationStatus : ApplicationStatus
    , createTimestamp : Maybe Posix
    , lastUpdateTimestamp : Maybe Posix
    , inputDescriptions : Maybe (List InputDescription)
    , outputDescriptions : Maybe (List OutputDescription)
    , referenceDataSourceDescriptions : Maybe (List ReferenceDataSourceDescription)
    , cloudWatchLoggingOptionDescriptions : Maybe (List CloudWatchLoggingOptionDescription)
    , applicationCode : Maybe String
    , applicationVersionId : Int
    }



applicationDetailDecoder : JD.Decoder ApplicationDetail
applicationDetailDecoder =
    JD.succeed ApplicationDetail
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ApplicationName", "applicationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationDescription", "applicationDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ApplicationARN", "applicationARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ApplicationStatus", "applicationStatus"]
            applicationStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreateTimestamp", "createTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdateTimestamp", "lastUpdateTimestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputDescriptions", "inputDescriptions"]
            (JD.list inputDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OutputDescriptions", "outputDescriptions"]
            (JD.list outputDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReferenceDataSourceDescriptions", "referenceDataSourceDescriptions"]
            (JD.list referenceDataSourceDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptionDescriptions", "cloudWatchLoggingOptionDescriptions"]
            (JD.list cloudWatchLoggingOptionDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationCode", "applicationCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ApplicationVersionId", "applicationVersionId"]
            JD.int
        )
        




applicationDetailToString : ApplicationDetail -> String -- List (String, String)
applicationDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
        
    --     |> Dict.insert
    --         "applicationDescription" "" -- val.applicationDescription
        
    --     |> Dict.insert
    --         "applicationARN" "" -- val.applicationARN
        
    --     |> Dict.insert
    --         "applicationStatus" "" -- val.applicationStatus
        
    --     |> Dict.insert
    --         "createTimestamp" "" -- val.createTimestamp
        
    --     |> Dict.insert
    --         "lastUpdateTimestamp" "" -- val.lastUpdateTimestamp
        
    --     |> Dict.insert
    --         "inputDescriptions" "" -- val.inputDescriptions
        
    --     |> Dict.insert
    --         "outputDescriptions" "" -- val.outputDescriptions
        
    --     |> Dict.insert
    --         "referenceDataSourceDescriptions" "" -- val.referenceDataSourceDescriptions
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptionDescriptions" "" -- val.cloudWatchLoggingOptionDescriptions
        
    --     |> Dict.insert
    --         "applicationCode" "" -- val.applicationCode
        
    --     |> Dict.insert
    --         "applicationVersionId" "" -- val.applicationVersionId
        
    --     |> Dict.toList
    ""



{-| One of

* `ApplicationStatus_DELETING`
* `ApplicationStatus_STARTING`
* `ApplicationStatus_STOPPING`
* `ApplicationStatus_READY`
* `ApplicationStatus_RUNNING`
* `ApplicationStatus_UPDATING`

-}
type ApplicationStatus
    = ApplicationStatus_DELETING
    | ApplicationStatus_STARTING
    | ApplicationStatus_STOPPING
    | ApplicationStatus_READY
    | ApplicationStatus_RUNNING
    | ApplicationStatus_UPDATING



applicationStatusDecoder : JD.Decoder ApplicationStatus
applicationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DELETING" ->
                        JD.succeed ApplicationStatus_DELETING

                    "STARTING" ->
                        JD.succeed ApplicationStatus_STARTING

                    "STOPPING" ->
                        JD.succeed ApplicationStatus_STOPPING

                    "READY" ->
                        JD.succeed ApplicationStatus_READY

                    "RUNNING" ->
                        JD.succeed ApplicationStatus_RUNNING

                    "UPDATING" ->
                        JD.succeed ApplicationStatus_UPDATING


                    _ ->
                        JD.fail "bad thing"
            )




applicationStatusToString : ApplicationStatus -> String
applicationStatusToString val =
    case val of
        ApplicationStatus_DELETING ->
            "DELETING"

        ApplicationStatus_STARTING ->
            "STARTING"

        ApplicationStatus_STOPPING ->
            "STOPPING"

        ApplicationStatus_READY ->
            "READY"

        ApplicationStatus_RUNNING ->
            "RUNNING"

        ApplicationStatus_UPDATING ->
            "UPDATING"




{-| <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Provides application summary information, including the application Amazon Resource Name (ARN), name, and status.</p>
-}
type alias ApplicationSummary =
    { applicationName : String
    , applicationARN : String
    , applicationStatus : ApplicationStatus
    }



applicationSummaryDecoder : JD.Decoder ApplicationSummary
applicationSummaryDecoder =
    JD.succeed ApplicationSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ApplicationName", "applicationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ApplicationARN", "applicationARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ApplicationStatus", "applicationStatus"]
            applicationStatusDecoder
        )
        




applicationSummaryToString : ApplicationSummary -> String -- List (String, String)
applicationSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationName" "" -- val.applicationName
        
    --     |> Dict.insert
    --         "applicationARN" "" -- val.applicationARN
        
    --     |> Dict.insert
    --         "applicationStatus" "" -- val.applicationStatus
        
    --     |> Dict.toList
    ""



{-| <p>Describes updates to apply to an existing Amazon Kinesis Analytics application.</p>
-}
type alias ApplicationUpdate =
    { inputUpdates : Maybe (List InputUpdate)
    , applicationCodeUpdate : Maybe String
    , outputUpdates : Maybe (List OutputUpdate)
    , referenceDataSourceUpdates : Maybe (List ReferenceDataSourceUpdate)
    , cloudWatchLoggingOptionUpdates : Maybe (List CloudWatchLoggingOptionUpdate)
    }



applicationUpdateDecoder : JD.Decoder ApplicationUpdate
applicationUpdateDecoder =
    JD.succeed ApplicationUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputUpdates", "inputUpdates"]
            (JD.list inputUpdateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApplicationCodeUpdate", "applicationCodeUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OutputUpdates", "outputUpdates"]
            (JD.list outputUpdateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReferenceDataSourceUpdates", "referenceDataSourceUpdates"]
            (JD.list referenceDataSourceUpdateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptionUpdates", "cloudWatchLoggingOptionUpdates"]
            (JD.list cloudWatchLoggingOptionUpdateDecoder)
        )
        




applicationUpdateToString : ApplicationUpdate -> String -- List (String, String)
applicationUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "inputUpdates" "" -- val.inputUpdates
        
    --     |> Dict.insert
    --         "applicationCodeUpdate" "" -- val.applicationCodeUpdate
        
    --     |> Dict.insert
    --         "outputUpdates" "" -- val.outputUpdates
        
    --     |> Dict.insert
    --         "referenceDataSourceUpdates" "" -- val.referenceDataSourceUpdates
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptionUpdates" "" -- val.cloudWatchLoggingOptionUpdates
        
    --     |> Dict.toList
    ""



{-| <p>Provides additional mapping information when the record format uses delimiters, such as CSV. For example, the following sample records use CSV format, where the records use the <i>'\n'</i> as the row delimiter and a comma (",") as the column delimiter: </p> <p> <code>"name1", "address1"</code> </p> <p> <code>"name2", "address2"</code> </p>
-}
type alias CSVMappingParameters =
    { recordRowDelimiter : String
    , recordColumnDelimiter : String
    }



cSVMappingParametersDecoder : JD.Decoder CSVMappingParameters
cSVMappingParametersDecoder =
    JD.succeed CSVMappingParameters
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RecordRowDelimiter", "recordRowDelimiter"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RecordColumnDelimiter", "recordColumnDelimiter"]
            JD.string
        )
        




cSVMappingParametersToString : CSVMappingParameters -> String -- List (String, String)
cSVMappingParametersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordRowDelimiter" "" -- val.recordRowDelimiter
        
    --     |> Dict.insert
    --         "recordColumnDelimiter" "" -- val.recordColumnDelimiter
        
    --     |> Dict.toList
    ""



{-| <p>Provides a description of CloudWatch logging options, including the log stream Amazon Resource Name (ARN) and the role ARN.</p>
-}
type alias CloudWatchLoggingOption =
    { logStreamARN : String
    , roleARN : String
    }



cloudWatchLoggingOptionDecoder : JD.Decoder CloudWatchLoggingOption
cloudWatchLoggingOptionDecoder =
    JD.succeed CloudWatchLoggingOption
        
        |> JDP.custom (AWS.Core.Decode.required
            ["LogStreamARN", "logStreamARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        




cloudWatchLoggingOptionToString : CloudWatchLoggingOption -> String -- List (String, String)
cloudWatchLoggingOptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "logStreamARN" "" -- val.logStreamARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p>Description of the CloudWatch logging option.</p>
-}
type alias CloudWatchLoggingOptionDescription =
    { cloudWatchLoggingOptionId : Maybe String
    , logStreamARN : String
    , roleARN : String
    }



cloudWatchLoggingOptionDescriptionDecoder : JD.Decoder CloudWatchLoggingOptionDescription
cloudWatchLoggingOptionDescriptionDecoder =
    JD.succeed CloudWatchLoggingOptionDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLoggingOptionId", "cloudWatchLoggingOptionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["LogStreamARN", "logStreamARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        




cloudWatchLoggingOptionDescriptionToString : CloudWatchLoggingOptionDescription -> String -- List (String, String)
cloudWatchLoggingOptionDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptionId" "" -- val.cloudWatchLoggingOptionId
        
    --     |> Dict.insert
    --         "logStreamARN" "" -- val.logStreamARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p>Describes CloudWatch logging option updates.</p>
-}
type alias CloudWatchLoggingOptionUpdate =
    { cloudWatchLoggingOptionId : String
    , logStreamARNUpdate : Maybe String
    , roleARNUpdate : Maybe String
    }



cloudWatchLoggingOptionUpdateDecoder : JD.Decoder CloudWatchLoggingOptionUpdate
cloudWatchLoggingOptionUpdateDecoder =
    JD.succeed CloudWatchLoggingOptionUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CloudWatchLoggingOptionId", "cloudWatchLoggingOptionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogStreamARNUpdate", "logStreamARNUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARNUpdate", "roleARNUpdate"]
            JD.string
        )
        




cloudWatchLoggingOptionUpdateToString : CloudWatchLoggingOptionUpdate -> String -- List (String, String)
cloudWatchLoggingOptionUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cloudWatchLoggingOptionId" "" -- val.cloudWatchLoggingOptionId
        
    --     |> Dict.insert
    --         "logStreamARNUpdate" "" -- val.logStreamARNUpdate
        
    --     |> Dict.insert
    --         "roleARNUpdate" "" -- val.roleARNUpdate
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createApplication
-}
type alias CreateApplicationResponse =
    { applicationSummary : ApplicationSummary
    }



createApplicationResponseDecoder : JD.Decoder CreateApplicationResponse
createApplicationResponseDecoder =
    JD.succeed CreateApplicationResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ApplicationSummary", "applicationSummary"]
            applicationSummaryDecoder
        )
        




createApplicationResponseToString : CreateApplicationResponse -> String -- List (String, String)
createApplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationSummary" "" -- val.applicationSummary
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteApplicationCloudWatchLoggingOption
-}
type alias DeleteApplicationCloudWatchLoggingOptionResponse =
    { 
    }



deleteApplicationCloudWatchLoggingOptionResponseDecoder : JD.Decoder DeleteApplicationCloudWatchLoggingOptionResponse
deleteApplicationCloudWatchLoggingOptionResponseDecoder =
    JD.succeed DeleteApplicationCloudWatchLoggingOptionResponse
        




deleteApplicationCloudWatchLoggingOptionResponseToString : DeleteApplicationCloudWatchLoggingOptionResponse -> String -- List (String, String)
deleteApplicationCloudWatchLoggingOptionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteApplicationInputProcessingConfiguration
-}
type alias DeleteApplicationInputProcessingConfigurationResponse =
    { 
    }



deleteApplicationInputProcessingConfigurationResponseDecoder : JD.Decoder DeleteApplicationInputProcessingConfigurationResponse
deleteApplicationInputProcessingConfigurationResponseDecoder =
    JD.succeed DeleteApplicationInputProcessingConfigurationResponse
        




deleteApplicationInputProcessingConfigurationResponseToString : DeleteApplicationInputProcessingConfigurationResponse -> String -- List (String, String)
deleteApplicationInputProcessingConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteApplicationOutput
-}
type alias DeleteApplicationOutputResponse =
    { 
    }



deleteApplicationOutputResponseDecoder : JD.Decoder DeleteApplicationOutputResponse
deleteApplicationOutputResponseDecoder =
    JD.succeed DeleteApplicationOutputResponse
        




deleteApplicationOutputResponseToString : DeleteApplicationOutputResponse -> String -- List (String, String)
deleteApplicationOutputResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteApplicationReferenceDataSource
-}
type alias DeleteApplicationReferenceDataSourceResponse =
    { 
    }



deleteApplicationReferenceDataSourceResponseDecoder : JD.Decoder DeleteApplicationReferenceDataSourceResponse
deleteApplicationReferenceDataSourceResponseDecoder =
    JD.succeed DeleteApplicationReferenceDataSourceResponse
        




deleteApplicationReferenceDataSourceResponseToString : DeleteApplicationReferenceDataSourceResponse -> String -- List (String, String)
deleteApplicationReferenceDataSourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteApplication
-}
type alias DeleteApplicationResponse =
    { 
    }



deleteApplicationResponseDecoder : JD.Decoder DeleteApplicationResponse
deleteApplicationResponseDecoder =
    JD.succeed DeleteApplicationResponse
        




deleteApplicationResponseToString : DeleteApplicationResponse -> String -- List (String, String)
deleteApplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeApplication
-}
type alias DescribeApplicationResponse =
    { applicationDetail : ApplicationDetail
    }



describeApplicationResponseDecoder : JD.Decoder DescribeApplicationResponse
describeApplicationResponseDecoder =
    JD.succeed DescribeApplicationResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ApplicationDetail", "applicationDetail"]
            applicationDetailDecoder
        )
        




describeApplicationResponseToString : DescribeApplicationResponse -> String -- List (String, String)
describeApplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationDetail" "" -- val.applicationDetail
        
    --     |> Dict.toList
    ""



{-| <p>Describes the data format when records are written to the destination. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Configuring Application Output</a>. </p>
-}
type alias DestinationSchema =
    { recordFormatType : RecordFormatType
    }



destinationSchemaDecoder : JD.Decoder DestinationSchema
destinationSchemaDecoder =
    JD.succeed DestinationSchema
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RecordFormatType", "recordFormatType"]
            recordFormatTypeDecoder
        )
        




destinationSchemaToString : DestinationSchema -> String -- List (String, String)
destinationSchemaToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordFormatType" "" -- val.recordFormatType
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from discoverInputSchema
-}
type alias DiscoverInputSchemaResponse =
    { inputSchema : Maybe SourceSchema
    , parsedInputRecords : Maybe (List (List String))
    , processedInputRecords : Maybe (List String)
    , rawInputRecords : Maybe (List String)
    }



discoverInputSchemaResponseDecoder : JD.Decoder DiscoverInputSchemaResponse
discoverInputSchemaResponseDecoder =
    JD.succeed DiscoverInputSchemaResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputSchema", "inputSchema"]
            sourceSchemaDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParsedInputRecords", "parsedInputRecords"]
            (JD.list (JD.list JD.string))
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProcessedInputRecords", "processedInputRecords"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RawInputRecords", "rawInputRecords"]
            (JD.list JD.string)
        )
        




discoverInputSchemaResponseToString : DiscoverInputSchemaResponse -> String -- List (String, String)
discoverInputSchemaResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "inputSchema" "" -- val.inputSchema
        
    --     |> Dict.insert
    --         "parsedInputRecords" "" -- val.parsedInputRecords
        
    --     |> Dict.insert
    --         "processedInputRecords" "" -- val.processedInputRecords
        
    --     |> Dict.insert
    --         "rawInputRecords" "" -- val.rawInputRecords
        
    --     |> Dict.toList
    ""



{-| <p>When you configure the application input, you specify the streaming source, the in-application stream name that is created, and the mapping between the two. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>
-}
type alias Input =
    { namePrefix : String
    , inputProcessingConfiguration : Maybe InputProcessingConfiguration
    , kinesisStreamsInput : Maybe KinesisStreamsInput
    , kinesisFirehoseInput : Maybe KinesisFirehoseInput
    , inputParallelism : Maybe InputParallelism
    , inputSchema : SourceSchema
    }



inputDecoder : JD.Decoder Input
inputDecoder =
    JD.succeed Input
        
        |> JDP.custom (AWS.Core.Decode.required
            ["NamePrefix", "namePrefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputProcessingConfiguration", "inputProcessingConfiguration"]
            inputProcessingConfigurationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisStreamsInput", "kinesisStreamsInput"]
            kinesisStreamsInputDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisFirehoseInput", "kinesisFirehoseInput"]
            kinesisFirehoseInputDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputParallelism", "inputParallelism"]
            inputParallelismDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["InputSchema", "inputSchema"]
            sourceSchemaDecoder
        )
        




inputToString : Input -> String -- List (String, String)
inputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "namePrefix" "" -- val.namePrefix
        
    --     |> Dict.insert
    --         "inputProcessingConfiguration" "" -- val.inputProcessingConfiguration
        
    --     |> Dict.insert
    --         "kinesisStreamsInput" "" -- val.kinesisStreamsInput
        
    --     |> Dict.insert
    --         "kinesisFirehoseInput" "" -- val.kinesisFirehoseInput
        
    --     |> Dict.insert
    --         "inputParallelism" "" -- val.inputParallelism
        
    --     |> Dict.insert
    --         "inputSchema" "" -- val.inputSchema
        
    --     |> Dict.toList
    ""



{-| <p>When you start your application, you provide this configuration, which identifies the input source and the point in the input source at which you want the application to start processing records.</p>
-}
type alias InputConfiguration =
    { id : String
    , inputStartingPositionConfiguration : InputStartingPositionConfiguration
    }



inputConfigurationDecoder : JD.Decoder InputConfiguration
inputConfigurationDecoder =
    JD.succeed InputConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["InputStartingPositionConfiguration", "inputStartingPositionConfiguration"]
            inputStartingPositionConfigurationDecoder
        )
        




inputConfigurationToString : InputConfiguration -> String -- List (String, String)
inputConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "inputStartingPositionConfiguration" "" -- val.inputStartingPositionConfiguration
        
    --     |> Dict.toList
    ""



{-| <p>Describes the application input configuration. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>
-}
type alias InputDescription =
    { inputId : Maybe String
    , namePrefix : Maybe String
    , inAppStreamNames : Maybe (List String)
    , inputProcessingConfigurationDescription : Maybe InputProcessingConfigurationDescription
    , kinesisStreamsInputDescription : Maybe KinesisStreamsInputDescription
    , kinesisFirehoseInputDescription : Maybe KinesisFirehoseInputDescription
    , inputSchema : Maybe SourceSchema
    , inputParallelism : Maybe InputParallelism
    , inputStartingPositionConfiguration : Maybe InputStartingPositionConfiguration
    }



inputDescriptionDecoder : JD.Decoder InputDescription
inputDescriptionDecoder =
    JD.succeed InputDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputId", "inputId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NamePrefix", "namePrefix"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InAppStreamNames", "inAppStreamNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputProcessingConfigurationDescription", "inputProcessingConfigurationDescription"]
            inputProcessingConfigurationDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisStreamsInputDescription", "kinesisStreamsInputDescription"]
            kinesisStreamsInputDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisFirehoseInputDescription", "kinesisFirehoseInputDescription"]
            kinesisFirehoseInputDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputSchema", "inputSchema"]
            sourceSchemaDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputParallelism", "inputParallelism"]
            inputParallelismDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputStartingPositionConfiguration", "inputStartingPositionConfiguration"]
            inputStartingPositionConfigurationDecoder
        )
        




inputDescriptionToString : InputDescription -> String -- List (String, String)
inputDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "inputId" "" -- val.inputId
        
    --     |> Dict.insert
    --         "namePrefix" "" -- val.namePrefix
        
    --     |> Dict.insert
    --         "inAppStreamNames" "" -- val.inAppStreamNames
        
    --     |> Dict.insert
    --         "inputProcessingConfigurationDescription" "" -- val.inputProcessingConfigurationDescription
        
    --     |> Dict.insert
    --         "kinesisStreamsInputDescription" "" -- val.kinesisStreamsInputDescription
        
    --     |> Dict.insert
    --         "kinesisFirehoseInputDescription" "" -- val.kinesisFirehoseInputDescription
        
    --     |> Dict.insert
    --         "inputSchema" "" -- val.inputSchema
        
    --     |> Dict.insert
    --         "inputParallelism" "" -- val.inputParallelism
        
    --     |> Dict.insert
    --         "inputStartingPositionConfiguration" "" -- val.inputStartingPositionConfiguration
        
    --     |> Dict.toList
    ""



{-| <p>An object that contains the Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a> function that is used to preprocess records in the stream, and the ARN of the IAM role that is used to access the AWS Lambda function. </p>
-}
type alias InputLambdaProcessor =
    { resourceARN : String
    , roleARN : String
    }



inputLambdaProcessorDecoder : JD.Decoder InputLambdaProcessor
inputLambdaProcessorDecoder =
    JD.succeed InputLambdaProcessor
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        




inputLambdaProcessorToString : InputLambdaProcessor -> String -- List (String, String)
inputLambdaProcessorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p>An object that contains the Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a> function that is used to preprocess records in the stream, and the ARN of the IAM role that is used to access the AWS Lambda expression.</p>
-}
type alias InputLambdaProcessorDescription =
    { resourceARN : Maybe String
    , roleARN : Maybe String
    }



inputLambdaProcessorDescriptionDecoder : JD.Decoder InputLambdaProcessorDescription
inputLambdaProcessorDescriptionDecoder =
    JD.succeed InputLambdaProcessorDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        




inputLambdaProcessorDescriptionToString : InputLambdaProcessorDescription -> String -- List (String, String)
inputLambdaProcessorDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p>Represents an update to the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html">InputLambdaProcessor</a> that is used to preprocess the records in the stream.</p>
-}
type alias InputLambdaProcessorUpdate =
    { resourceARNUpdate : Maybe String
    , roleARNUpdate : Maybe String
    }



inputLambdaProcessorUpdateDecoder : JD.Decoder InputLambdaProcessorUpdate
inputLambdaProcessorUpdateDecoder =
    JD.succeed InputLambdaProcessorUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARNUpdate", "resourceARNUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARNUpdate", "roleARNUpdate"]
            JD.string
        )
        




inputLambdaProcessorUpdateToString : InputLambdaProcessorUpdate -> String -- List (String, String)
inputLambdaProcessorUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARNUpdate" "" -- val.resourceARNUpdate
        
    --     |> Dict.insert
    --         "roleARNUpdate" "" -- val.roleARNUpdate
        
    --     |> Dict.toList
    ""



{-| <p>Describes the number of in-application streams to create for a given streaming source. For information about parallelism, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>
-}
type alias InputParallelism =
    { count : Maybe Int
    }



inputParallelismDecoder : JD.Decoder InputParallelism
inputParallelismDecoder =
    JD.succeed InputParallelism
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Count", "count"]
            JD.int
        )
        




inputParallelismToString : InputParallelism -> String -- List (String, String)
inputParallelismToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "count" "" -- val.count
        
    --     |> Dict.toList
    ""



{-| <p>Provides updates to the parallelism count.</p>
-}
type alias InputParallelismUpdate =
    { countUpdate : Maybe Int
    }



inputParallelismUpdateDecoder : JD.Decoder InputParallelismUpdate
inputParallelismUpdateDecoder =
    JD.succeed InputParallelismUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CountUpdate", "countUpdate"]
            JD.int
        )
        




inputParallelismUpdateToString : InputParallelismUpdate -> String -- List (String, String)
inputParallelismUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "countUpdate" "" -- val.countUpdate
        
    --     |> Dict.toList
    ""



{-| <p>Provides a description of a processor that is used to preprocess the records in the stream before being processed by your application code. Currently, the only input processor available is <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a>.</p>
-}
type alias InputProcessingConfiguration =
    { inputLambdaProcessor : InputLambdaProcessor
    }



inputProcessingConfigurationDecoder : JD.Decoder InputProcessingConfiguration
inputProcessingConfigurationDecoder =
    JD.succeed InputProcessingConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["InputLambdaProcessor", "inputLambdaProcessor"]
            inputLambdaProcessorDecoder
        )
        




inputProcessingConfigurationToString : InputProcessingConfiguration -> String -- List (String, String)
inputProcessingConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "inputLambdaProcessor" "" -- val.inputLambdaProcessor
        
    --     |> Dict.toList
    ""



{-| <p>Provides configuration information about an input processor. Currently, the only input processor available is <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a>.</p>
-}
type alias InputProcessingConfigurationDescription =
    { inputLambdaProcessorDescription : Maybe InputLambdaProcessorDescription
    }



inputProcessingConfigurationDescriptionDecoder : JD.Decoder InputProcessingConfigurationDescription
inputProcessingConfigurationDescriptionDecoder =
    JD.succeed InputProcessingConfigurationDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputLambdaProcessorDescription", "inputLambdaProcessorDescription"]
            inputLambdaProcessorDescriptionDecoder
        )
        




inputProcessingConfigurationDescriptionToString : InputProcessingConfigurationDescription -> String -- List (String, String)
inputProcessingConfigurationDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "inputLambdaProcessorDescription" "" -- val.inputLambdaProcessorDescription
        
    --     |> Dict.toList
    ""



{-| <p>Describes updates to an <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a>. </p>
-}
type alias InputProcessingConfigurationUpdate =
    { inputLambdaProcessorUpdate : InputLambdaProcessorUpdate
    }



inputProcessingConfigurationUpdateDecoder : JD.Decoder InputProcessingConfigurationUpdate
inputProcessingConfigurationUpdateDecoder =
    JD.succeed InputProcessingConfigurationUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["InputLambdaProcessorUpdate", "inputLambdaProcessorUpdate"]
            inputLambdaProcessorUpdateDecoder
        )
        




inputProcessingConfigurationUpdateToString : InputProcessingConfigurationUpdate -> String -- List (String, String)
inputProcessingConfigurationUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "inputLambdaProcessorUpdate" "" -- val.inputLambdaProcessorUpdate
        
    --     |> Dict.toList
    ""



{-| <p>Describes updates for the application's input schema.</p>
-}
type alias InputSchemaUpdate =
    { recordFormatUpdate : Maybe RecordFormat
    , recordEncodingUpdate : Maybe String
    , recordColumnUpdates : Maybe (List RecordColumn)
    }



inputSchemaUpdateDecoder : JD.Decoder InputSchemaUpdate
inputSchemaUpdateDecoder =
    JD.succeed InputSchemaUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordFormatUpdate", "recordFormatUpdate"]
            recordFormatDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordEncodingUpdate", "recordEncodingUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordColumnUpdates", "recordColumnUpdates"]
            (JD.list recordColumnDecoder)
        )
        




inputSchemaUpdateToString : InputSchemaUpdate -> String -- List (String, String)
inputSchemaUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordFormatUpdate" "" -- val.recordFormatUpdate
        
    --     |> Dict.insert
    --         "recordEncodingUpdate" "" -- val.recordEncodingUpdate
        
    --     |> Dict.insert
    --         "recordColumnUpdates" "" -- val.recordColumnUpdates
        
    --     |> Dict.toList
    ""



{-| One of

* `InputStartingPosition_NOW`
* `InputStartingPosition_TRIM_HORIZON`
* `InputStartingPosition_LAST_STOPPED_POINT`

-}
type InputStartingPosition
    = InputStartingPosition_NOW
    | InputStartingPosition_TRIM_HORIZON
    | InputStartingPosition_LAST_STOPPED_POINT



inputStartingPositionDecoder : JD.Decoder InputStartingPosition
inputStartingPositionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NOW" ->
                        JD.succeed InputStartingPosition_NOW

                    "TRIM_HORIZON" ->
                        JD.succeed InputStartingPosition_TRIM_HORIZON

                    "LAST_STOPPED_POINT" ->
                        JD.succeed InputStartingPosition_LAST_STOPPED_POINT


                    _ ->
                        JD.fail "bad thing"
            )




inputStartingPositionToString : InputStartingPosition -> String
inputStartingPositionToString val =
    case val of
        InputStartingPosition_NOW ->
            "NOW"

        InputStartingPosition_TRIM_HORIZON ->
            "TRIM_HORIZON"

        InputStartingPosition_LAST_STOPPED_POINT ->
            "LAST_STOPPED_POINT"




{-| <p>Describes the point at which the application reads from the streaming source.</p>
-}
type alias InputStartingPositionConfiguration =
    { inputStartingPosition : Maybe InputStartingPosition
    }



inputStartingPositionConfigurationDecoder : JD.Decoder InputStartingPositionConfiguration
inputStartingPositionConfigurationDecoder =
    JD.succeed InputStartingPositionConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputStartingPosition", "inputStartingPosition"]
            inputStartingPositionDecoder
        )
        




inputStartingPositionConfigurationToString : InputStartingPositionConfiguration -> String -- List (String, String)
inputStartingPositionConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "inputStartingPosition" "" -- val.inputStartingPosition
        
    --     |> Dict.toList
    ""



{-| <p>Describes updates to a specific input configuration (identified by the <code>InputId</code> of an application). </p>
-}
type alias InputUpdate =
    { inputId : String
    , namePrefixUpdate : Maybe String
    , inputProcessingConfigurationUpdate : Maybe InputProcessingConfigurationUpdate
    , kinesisStreamsInputUpdate : Maybe KinesisStreamsInputUpdate
    , kinesisFirehoseInputUpdate : Maybe KinesisFirehoseInputUpdate
    , inputSchemaUpdate : Maybe InputSchemaUpdate
    , inputParallelismUpdate : Maybe InputParallelismUpdate
    }



inputUpdateDecoder : JD.Decoder InputUpdate
inputUpdateDecoder =
    JD.succeed InputUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["InputId", "inputId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NamePrefixUpdate", "namePrefixUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputProcessingConfigurationUpdate", "inputProcessingConfigurationUpdate"]
            inputProcessingConfigurationUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisStreamsInputUpdate", "kinesisStreamsInputUpdate"]
            kinesisStreamsInputUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisFirehoseInputUpdate", "kinesisFirehoseInputUpdate"]
            kinesisFirehoseInputUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputSchemaUpdate", "inputSchemaUpdate"]
            inputSchemaUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputParallelismUpdate", "inputParallelismUpdate"]
            inputParallelismUpdateDecoder
        )
        




inputUpdateToString : InputUpdate -> String -- List (String, String)
inputUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "inputId" "" -- val.inputId
        
    --     |> Dict.insert
    --         "namePrefixUpdate" "" -- val.namePrefixUpdate
        
    --     |> Dict.insert
    --         "inputProcessingConfigurationUpdate" "" -- val.inputProcessingConfigurationUpdate
        
    --     |> Dict.insert
    --         "kinesisStreamsInputUpdate" "" -- val.kinesisStreamsInputUpdate
        
    --     |> Dict.insert
    --         "kinesisFirehoseInputUpdate" "" -- val.kinesisFirehoseInputUpdate
        
    --     |> Dict.insert
    --         "inputSchemaUpdate" "" -- val.inputSchemaUpdate
        
    --     |> Dict.insert
    --         "inputParallelismUpdate" "" -- val.inputParallelismUpdate
        
    --     |> Dict.toList
    ""



{-| <p>Provides additional mapping information when JSON is the record format on the streaming source.</p>
-}
type alias JSONMappingParameters =
    { recordRowPath : String
    }



jSONMappingParametersDecoder : JD.Decoder JSONMappingParameters
jSONMappingParametersDecoder =
    JD.succeed JSONMappingParameters
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RecordRowPath", "recordRowPath"]
            JD.string
        )
        




jSONMappingParametersToString : JSONMappingParameters -> String -- List (String, String)
jSONMappingParametersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordRowPath" "" -- val.recordRowPath
        
    --     |> Dict.toList
    ""



{-| <p> Identifies an Amazon Kinesis Firehose delivery stream as the streaming source. You provide the delivery stream's Amazon Resource Name (ARN) and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
-}
type alias KinesisFirehoseInput =
    { resourceARN : String
    , roleARN : String
    }



kinesisFirehoseInputDecoder : JD.Decoder KinesisFirehoseInput
kinesisFirehoseInputDecoder =
    JD.succeed KinesisFirehoseInput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        




kinesisFirehoseInputToString : KinesisFirehoseInput -> String -- List (String, String)
kinesisFirehoseInputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p> Describes the Amazon Kinesis Firehose delivery stream that is configured as the streaming source in the application input configuration. </p>
-}
type alias KinesisFirehoseInputDescription =
    { resourceARN : Maybe String
    , roleARN : Maybe String
    }



kinesisFirehoseInputDescriptionDecoder : JD.Decoder KinesisFirehoseInputDescription
kinesisFirehoseInputDescriptionDecoder =
    JD.succeed KinesisFirehoseInputDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        




kinesisFirehoseInputDescriptionToString : KinesisFirehoseInputDescription -> String -- List (String, String)
kinesisFirehoseInputDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p>When updating application input configuration, provides information about an Amazon Kinesis Firehose delivery stream as the streaming source.</p>
-}
type alias KinesisFirehoseInputUpdate =
    { resourceARNUpdate : Maybe String
    , roleARNUpdate : Maybe String
    }



kinesisFirehoseInputUpdateDecoder : JD.Decoder KinesisFirehoseInputUpdate
kinesisFirehoseInputUpdateDecoder =
    JD.succeed KinesisFirehoseInputUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARNUpdate", "resourceARNUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARNUpdate", "roleARNUpdate"]
            JD.string
        )
        




kinesisFirehoseInputUpdateToString : KinesisFirehoseInputUpdate -> String -- List (String, String)
kinesisFirehoseInputUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARNUpdate" "" -- val.resourceARNUpdate
        
    --     |> Dict.insert
    --         "roleARNUpdate" "" -- val.roleARNUpdate
        
    --     |> Dict.toList
    ""



{-| <p>When configuring application output, identifies an Amazon Kinesis Firehose delivery stream as the destination. You provide the stream Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis Analytics to write to the stream on your behalf.</p>
-}
type alias KinesisFirehoseOutput =
    { resourceARN : String
    , roleARN : String
    }



kinesisFirehoseOutputDecoder : JD.Decoder KinesisFirehoseOutput
kinesisFirehoseOutputDecoder =
    JD.succeed KinesisFirehoseOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        




kinesisFirehoseOutputToString : KinesisFirehoseOutput -> String -- List (String, String)
kinesisFirehoseOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p> For an application output, describes the Amazon Kinesis Firehose delivery stream configured as its destination. </p>
-}
type alias KinesisFirehoseOutputDescription =
    { resourceARN : Maybe String
    , roleARN : Maybe String
    }



kinesisFirehoseOutputDescriptionDecoder : JD.Decoder KinesisFirehoseOutputDescription
kinesisFirehoseOutputDescriptionDecoder =
    JD.succeed KinesisFirehoseOutputDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        




kinesisFirehoseOutputDescriptionToString : KinesisFirehoseOutputDescription -> String -- List (String, String)
kinesisFirehoseOutputDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p> When updating an output configuration using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html">UpdateApplication</a> operation, provides information about an Amazon Kinesis Firehose delivery stream configured as the destination. </p>
-}
type alias KinesisFirehoseOutputUpdate =
    { resourceARNUpdate : Maybe String
    , roleARNUpdate : Maybe String
    }



kinesisFirehoseOutputUpdateDecoder : JD.Decoder KinesisFirehoseOutputUpdate
kinesisFirehoseOutputUpdateDecoder =
    JD.succeed KinesisFirehoseOutputUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARNUpdate", "resourceARNUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARNUpdate", "roleARNUpdate"]
            JD.string
        )
        




kinesisFirehoseOutputUpdateToString : KinesisFirehoseOutputUpdate -> String -- List (String, String)
kinesisFirehoseOutputUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARNUpdate" "" -- val.resourceARNUpdate
        
    --     |> Dict.insert
    --         "roleARNUpdate" "" -- val.roleARNUpdate
        
    --     |> Dict.toList
    ""



{-| <p> Identifies an Amazon Kinesis stream as the streaming source. You provide the stream's Amazon Resource Name (ARN) and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
-}
type alias KinesisStreamsInput =
    { resourceARN : String
    , roleARN : String
    }



kinesisStreamsInputDecoder : JD.Decoder KinesisStreamsInput
kinesisStreamsInputDecoder =
    JD.succeed KinesisStreamsInput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        




kinesisStreamsInputToString : KinesisStreamsInput -> String -- List (String, String)
kinesisStreamsInputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p> Describes the Amazon Kinesis stream that is configured as the streaming source in the application input configuration. </p>
-}
type alias KinesisStreamsInputDescription =
    { resourceARN : Maybe String
    , roleARN : Maybe String
    }



kinesisStreamsInputDescriptionDecoder : JD.Decoder KinesisStreamsInputDescription
kinesisStreamsInputDescriptionDecoder =
    JD.succeed KinesisStreamsInputDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        




kinesisStreamsInputDescriptionToString : KinesisStreamsInputDescription -> String -- List (String, String)
kinesisStreamsInputDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p>When updating application input configuration, provides information about an Amazon Kinesis stream as the streaming source.</p>
-}
type alias KinesisStreamsInputUpdate =
    { resourceARNUpdate : Maybe String
    , roleARNUpdate : Maybe String
    }



kinesisStreamsInputUpdateDecoder : JD.Decoder KinesisStreamsInputUpdate
kinesisStreamsInputUpdateDecoder =
    JD.succeed KinesisStreamsInputUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARNUpdate", "resourceARNUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARNUpdate", "roleARNUpdate"]
            JD.string
        )
        




kinesisStreamsInputUpdateToString : KinesisStreamsInputUpdate -> String -- List (String, String)
kinesisStreamsInputUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARNUpdate" "" -- val.resourceARNUpdate
        
    --     |> Dict.insert
    --         "roleARNUpdate" "" -- val.roleARNUpdate
        
    --     |> Dict.toList
    ""



{-| <p>When configuring application output, identifies an Amazon Kinesis stream as the destination. You provide the stream Amazon Resource Name (ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use to write to the stream on your behalf.</p>
-}
type alias KinesisStreamsOutput =
    { resourceARN : String
    , roleARN : String
    }



kinesisStreamsOutputDecoder : JD.Decoder KinesisStreamsOutput
kinesisStreamsOutputDecoder =
    JD.succeed KinesisStreamsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        




kinesisStreamsOutputToString : KinesisStreamsOutput -> String -- List (String, String)
kinesisStreamsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p> For an application output, describes the Amazon Kinesis stream configured as its destination. </p>
-}
type alias KinesisStreamsOutputDescription =
    { resourceARN : Maybe String
    , roleARN : Maybe String
    }



kinesisStreamsOutputDescriptionDecoder : JD.Decoder KinesisStreamsOutputDescription
kinesisStreamsOutputDescriptionDecoder =
    JD.succeed KinesisStreamsOutputDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        




kinesisStreamsOutputDescriptionToString : KinesisStreamsOutputDescription -> String -- List (String, String)
kinesisStreamsOutputDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p> When updating an output configuration using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html">UpdateApplication</a> operation, provides information about an Amazon Kinesis stream configured as the destination. </p>
-}
type alias KinesisStreamsOutputUpdate =
    { resourceARNUpdate : Maybe String
    , roleARNUpdate : Maybe String
    }



kinesisStreamsOutputUpdateDecoder : JD.Decoder KinesisStreamsOutputUpdate
kinesisStreamsOutputUpdateDecoder =
    JD.succeed KinesisStreamsOutputUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARNUpdate", "resourceARNUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARNUpdate", "roleARNUpdate"]
            JD.string
        )
        




kinesisStreamsOutputUpdateToString : KinesisStreamsOutputUpdate -> String -- List (String, String)
kinesisStreamsOutputUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARNUpdate" "" -- val.resourceARNUpdate
        
    --     |> Dict.insert
    --         "roleARNUpdate" "" -- val.roleARNUpdate
        
    --     |> Dict.toList
    ""



{-| <p>When configuring application output, identifies an AWS Lambda function as the destination. You provide the function Amazon Resource Name (ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use to write to the function on your behalf. </p>
-}
type alias LambdaOutput =
    { resourceARN : String
    , roleARN : String
    }



lambdaOutputDecoder : JD.Decoder LambdaOutput
lambdaOutputDecoder =
    JD.succeed LambdaOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        




lambdaOutputToString : LambdaOutput -> String -- List (String, String)
lambdaOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p>For an application output, describes the AWS Lambda function configured as its destination. </p>
-}
type alias LambdaOutputDescription =
    { resourceARN : Maybe String
    , roleARN : Maybe String
    }



lambdaOutputDescriptionDecoder : JD.Decoder LambdaOutputDescription
lambdaOutputDescriptionDecoder =
    JD.succeed LambdaOutputDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        




lambdaOutputDescriptionToString : LambdaOutputDescription -> String -- List (String, String)
lambdaOutputDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.toList
    ""



{-| <p>When updating an output configuration using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html">UpdateApplication</a> operation, provides information about an AWS Lambda function configured as the destination.</p>
-}
type alias LambdaOutputUpdate =
    { resourceARNUpdate : Maybe String
    , roleARNUpdate : Maybe String
    }



lambdaOutputUpdateDecoder : JD.Decoder LambdaOutputUpdate
lambdaOutputUpdateDecoder =
    JD.succeed LambdaOutputUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARNUpdate", "resourceARNUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARNUpdate", "roleARNUpdate"]
            JD.string
        )
        




lambdaOutputUpdateToString : LambdaOutputUpdate -> String -- List (String, String)
lambdaOutputUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARNUpdate" "" -- val.resourceARNUpdate
        
    --     |> Dict.insert
    --         "roleARNUpdate" "" -- val.roleARNUpdate
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listApplications
-}
type alias ListApplicationsResponse =
    { applicationSummaries : (List ApplicationSummary)
    , hasMoreApplications : Bool
    }



listApplicationsResponseDecoder : JD.Decoder ListApplicationsResponse
listApplicationsResponseDecoder =
    JD.succeed ListApplicationsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ApplicationSummaries", "applicationSummaries"]
            (JD.list applicationSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HasMoreApplications", "hasMoreApplications"]
            JD.bool
        )
        




listApplicationsResponseToString : ListApplicationsResponse -> String -- List (String, String)
listApplicationsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationSummaries" "" -- val.applicationSummaries
        
    --     |> Dict.insert
    --         "hasMoreApplications" "" -- val.hasMoreApplications
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tags : Maybe (List Tag)
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JD.succeed ListTagsForResourceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        




listTagsForResourceResponseToString : ListTagsForResourceResponse -> String -- List (String, String)
listTagsForResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| <p>When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.</p>
-}
type alias MappingParameters =
    { jSONMappingParameters : Maybe JSONMappingParameters
    , cSVMappingParameters : Maybe CSVMappingParameters
    }



mappingParametersDecoder : JD.Decoder MappingParameters
mappingParametersDecoder =
    JD.succeed MappingParameters
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JSONMappingParameters", "jSONMappingParameters"]
            jSONMappingParametersDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CSVMappingParameters", "cSVMappingParameters"]
            cSVMappingParametersDecoder
        )
        




mappingParametersToString : MappingParameters -> String -- List (String, String)
mappingParametersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jSONMappingParameters" "" -- val.jSONMappingParameters
        
    --     |> Dict.insert
    --         "cSVMappingParameters" "" -- val.cSVMappingParameters
        
    --     |> Dict.toList
    ""



{-| <p> Describes application output configuration in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. </p> <p/> <p>For limits on how many destinations an application can write and other limitations, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>. </p>
-}
type alias Output =
    { name : String
    , kinesisStreamsOutput : Maybe KinesisStreamsOutput
    , kinesisFirehoseOutput : Maybe KinesisFirehoseOutput
    , lambdaOutput : Maybe LambdaOutput
    , destinationSchema : DestinationSchema
    }



outputDecoder : JD.Decoder Output
outputDecoder =
    JD.succeed Output
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisStreamsOutput", "kinesisStreamsOutput"]
            kinesisStreamsOutputDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisFirehoseOutput", "kinesisFirehoseOutput"]
            kinesisFirehoseOutputDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LambdaOutput", "lambdaOutput"]
            lambdaOutputDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DestinationSchema", "destinationSchema"]
            destinationSchemaDecoder
        )
        




outputToString : Output -> String -- List (String, String)
outputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "kinesisStreamsOutput" "" -- val.kinesisStreamsOutput
        
    --     |> Dict.insert
    --         "kinesisFirehoseOutput" "" -- val.kinesisFirehoseOutput
        
    --     |> Dict.insert
    --         "lambdaOutput" "" -- val.lambdaOutput
        
    --     |> Dict.insert
    --         "destinationSchema" "" -- val.destinationSchema
        
    --     |> Dict.toList
    ""



{-| <p>Describes the application output configuration, which includes the in-application stream name and the destination where the stream data is written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. </p>
-}
type alias OutputDescription =
    { outputId : Maybe String
    , name : Maybe String
    , kinesisStreamsOutputDescription : Maybe KinesisStreamsOutputDescription
    , kinesisFirehoseOutputDescription : Maybe KinesisFirehoseOutputDescription
    , lambdaOutputDescription : Maybe LambdaOutputDescription
    , destinationSchema : Maybe DestinationSchema
    }



outputDescriptionDecoder : JD.Decoder OutputDescription
outputDescriptionDecoder =
    JD.succeed OutputDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OutputId", "outputId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisStreamsOutputDescription", "kinesisStreamsOutputDescription"]
            kinesisStreamsOutputDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisFirehoseOutputDescription", "kinesisFirehoseOutputDescription"]
            kinesisFirehoseOutputDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LambdaOutputDescription", "lambdaOutputDescription"]
            lambdaOutputDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DestinationSchema", "destinationSchema"]
            destinationSchemaDecoder
        )
        




outputDescriptionToString : OutputDescription -> String -- List (String, String)
outputDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "outputId" "" -- val.outputId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "kinesisStreamsOutputDescription" "" -- val.kinesisStreamsOutputDescription
        
    --     |> Dict.insert
    --         "kinesisFirehoseOutputDescription" "" -- val.kinesisFirehoseOutputDescription
        
    --     |> Dict.insert
    --         "lambdaOutputDescription" "" -- val.lambdaOutputDescription
        
    --     |> Dict.insert
    --         "destinationSchema" "" -- val.destinationSchema
        
    --     |> Dict.toList
    ""



{-| <p> Describes updates to the output configuration identified by the <code>OutputId</code>. </p>
-}
type alias OutputUpdate =
    { outputId : String
    , nameUpdate : Maybe String
    , kinesisStreamsOutputUpdate : Maybe KinesisStreamsOutputUpdate
    , kinesisFirehoseOutputUpdate : Maybe KinesisFirehoseOutputUpdate
    , lambdaOutputUpdate : Maybe LambdaOutputUpdate
    , destinationSchemaUpdate : Maybe DestinationSchema
    }



outputUpdateDecoder : JD.Decoder OutputUpdate
outputUpdateDecoder =
    JD.succeed OutputUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["OutputId", "outputId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NameUpdate", "nameUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisStreamsOutputUpdate", "kinesisStreamsOutputUpdate"]
            kinesisStreamsOutputUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KinesisFirehoseOutputUpdate", "kinesisFirehoseOutputUpdate"]
            kinesisFirehoseOutputUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LambdaOutputUpdate", "lambdaOutputUpdate"]
            lambdaOutputUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DestinationSchemaUpdate", "destinationSchemaUpdate"]
            destinationSchemaDecoder
        )
        




outputUpdateToString : OutputUpdate -> String -- List (String, String)
outputUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "outputId" "" -- val.outputId
        
    --     |> Dict.insert
    --         "nameUpdate" "" -- val.nameUpdate
        
    --     |> Dict.insert
    --         "kinesisStreamsOutputUpdate" "" -- val.kinesisStreamsOutputUpdate
        
    --     |> Dict.insert
    --         "kinesisFirehoseOutputUpdate" "" -- val.kinesisFirehoseOutputUpdate
        
    --     |> Dict.insert
    --         "lambdaOutputUpdate" "" -- val.lambdaOutputUpdate
        
    --     |> Dict.insert
    --         "destinationSchemaUpdate" "" -- val.destinationSchemaUpdate
        
    --     |> Dict.toList
    ""



{-| <p>Describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream.</p> <p>Also used to describe the format of the reference data source.</p>
-}
type alias RecordColumn =
    { name : String
    , mapping : Maybe String
    , sqlType : String
    }



recordColumnDecoder : JD.Decoder RecordColumn
recordColumnDecoder =
    JD.succeed RecordColumn
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Mapping", "mapping"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SqlType", "sqlType"]
            JD.string
        )
        




recordColumnToString : RecordColumn -> String -- List (String, String)
recordColumnToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "mapping" "" -- val.mapping
        
    --     |> Dict.insert
    --         "sqlType" "" -- val.sqlType
        
    --     |> Dict.toList
    ""



{-| <p> Describes the record format and relevant mapping information that should be applied to schematize the records on the stream. </p>
-}
type alias RecordFormat =
    { recordFormatType : RecordFormatType
    , mappingParameters : Maybe MappingParameters
    }



recordFormatDecoder : JD.Decoder RecordFormat
recordFormatDecoder =
    JD.succeed RecordFormat
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RecordFormatType", "recordFormatType"]
            recordFormatTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MappingParameters", "mappingParameters"]
            mappingParametersDecoder
        )
        




recordFormatToString : RecordFormat -> String -- List (String, String)
recordFormatToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordFormatType" "" -- val.recordFormatType
        
    --     |> Dict.insert
    --         "mappingParameters" "" -- val.mappingParameters
        
    --     |> Dict.toList
    ""



{-| One of

* `RecordFormatType_JSON`
* `RecordFormatType_CSV`

-}
type RecordFormatType
    = RecordFormatType_JSON
    | RecordFormatType_CSV



recordFormatTypeDecoder : JD.Decoder RecordFormatType
recordFormatTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "JSON" ->
                        JD.succeed RecordFormatType_JSON

                    "CSV" ->
                        JD.succeed RecordFormatType_CSV


                    _ ->
                        JD.fail "bad thing"
            )




recordFormatTypeToString : RecordFormatType -> String
recordFormatTypeToString val =
    case val of
        RecordFormatType_JSON ->
            "JSON"

        RecordFormatType_CSV ->
            "CSV"




{-| <p>Describes the reference data source by providing the source information (S3 bucket name and object key name), the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.</p>
-}
type alias ReferenceDataSource =
    { tableName : String
    , s3ReferenceDataSource : Maybe S3ReferenceDataSource
    , referenceSchema : SourceSchema
    }



referenceDataSourceDecoder : JD.Decoder ReferenceDataSource
referenceDataSourceDecoder =
    JD.succeed ReferenceDataSource
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TableName", "tableName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3ReferenceDataSource", "s3ReferenceDataSource"]
            s3ReferenceDataSourceDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ReferenceSchema", "referenceSchema"]
            sourceSchemaDecoder
        )
        




referenceDataSourceToString : ReferenceDataSource -> String -- List (String, String)
referenceDataSourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tableName" "" -- val.tableName
        
    --     |> Dict.insert
    --         "s3ReferenceDataSource" "" -- val.s3ReferenceDataSource
        
    --     |> Dict.insert
    --         "referenceSchema" "" -- val.referenceSchema
        
    --     |> Dict.toList
    ""



{-| <p>Describes the reference data source configured for an application.</p>
-}
type alias ReferenceDataSourceDescription =
    { referenceId : String
    , tableName : String
    , s3ReferenceDataSourceDescription : S3ReferenceDataSourceDescription
    , referenceSchema : Maybe SourceSchema
    }



referenceDataSourceDescriptionDecoder : JD.Decoder ReferenceDataSourceDescription
referenceDataSourceDescriptionDecoder =
    JD.succeed ReferenceDataSourceDescription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ReferenceId", "referenceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TableName", "tableName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["S3ReferenceDataSourceDescription", "s3ReferenceDataSourceDescription"]
            s3ReferenceDataSourceDescriptionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReferenceSchema", "referenceSchema"]
            sourceSchemaDecoder
        )
        




referenceDataSourceDescriptionToString : ReferenceDataSourceDescription -> String -- List (String, String)
referenceDataSourceDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "referenceId" "" -- val.referenceId
        
    --     |> Dict.insert
    --         "tableName" "" -- val.tableName
        
    --     |> Dict.insert
    --         "s3ReferenceDataSourceDescription" "" -- val.s3ReferenceDataSourceDescription
        
    --     |> Dict.insert
    --         "referenceSchema" "" -- val.referenceSchema
        
    --     |> Dict.toList
    ""



{-| <p>When you update a reference data source configuration for an application, this object provides all the updated values (such as the source bucket name and object key name), the in-application table name that is created, and updated mapping information that maps the data in the Amazon S3 object to the in-application reference table that is created.</p>
-}
type alias ReferenceDataSourceUpdate =
    { referenceId : String
    , tableNameUpdate : Maybe String
    , s3ReferenceDataSourceUpdate : Maybe S3ReferenceDataSourceUpdate
    , referenceSchemaUpdate : Maybe SourceSchema
    }



referenceDataSourceUpdateDecoder : JD.Decoder ReferenceDataSourceUpdate
referenceDataSourceUpdateDecoder =
    JD.succeed ReferenceDataSourceUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ReferenceId", "referenceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TableNameUpdate", "tableNameUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3ReferenceDataSourceUpdate", "s3ReferenceDataSourceUpdate"]
            s3ReferenceDataSourceUpdateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReferenceSchemaUpdate", "referenceSchemaUpdate"]
            sourceSchemaDecoder
        )
        




referenceDataSourceUpdateToString : ReferenceDataSourceUpdate -> String -- List (String, String)
referenceDataSourceUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "referenceId" "" -- val.referenceId
        
    --     |> Dict.insert
    --         "tableNameUpdate" "" -- val.tableNameUpdate
        
    --     |> Dict.insert
    --         "s3ReferenceDataSourceUpdate" "" -- val.s3ReferenceDataSourceUpdate
        
    --     |> Dict.insert
    --         "referenceSchemaUpdate" "" -- val.referenceSchemaUpdate
        
    --     |> Dict.toList
    ""



{-| <p>Provides a description of an Amazon S3 data source, including the Amazon Resource Name (ARN) of the S3 bucket, the ARN of the IAM role that is used to access the bucket, and the name of the Amazon S3 object that contains the data.</p>
-}
type alias S3Configuration =
    { roleARN : String
    , bucketARN : String
    , fileKey : String
    }



s3ConfigurationDecoder : JD.Decoder S3Configuration
s3ConfigurationDecoder =
    JD.succeed S3Configuration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["BucketARN", "bucketARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["FileKey", "fileKey"]
            JD.string
        )
        




s3ConfigurationToString : S3Configuration -> String -- List (String, String)
s3ConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "bucketARN" "" -- val.bucketARN
        
    --     |> Dict.insert
    --         "fileKey" "" -- val.fileKey
        
    --     |> Dict.toList
    ""



{-| <p>Identifies the S3 bucket and object that contains the reference data. Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf.</p> <p>An Amazon Kinesis Analytics application loads reference data only once. If the data changes, you call the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html">UpdateApplication</a> operation to trigger reloading of data into your application.</p>
-}
type alias S3ReferenceDataSource =
    { bucketARN : String
    , fileKey : String
    , referenceRoleARN : String
    }



s3ReferenceDataSourceDecoder : JD.Decoder S3ReferenceDataSource
s3ReferenceDataSourceDecoder =
    JD.succeed S3ReferenceDataSource
        
        |> JDP.custom (AWS.Core.Decode.required
            ["BucketARN", "bucketARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["FileKey", "fileKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ReferenceRoleARN", "referenceRoleARN"]
            JD.string
        )
        




s3ReferenceDataSourceToString : S3ReferenceDataSource -> String -- List (String, String)
s3ReferenceDataSourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bucketARN" "" -- val.bucketARN
        
    --     |> Dict.insert
    --         "fileKey" "" -- val.fileKey
        
    --     |> Dict.insert
    --         "referenceRoleARN" "" -- val.referenceRoleARN
        
    --     |> Dict.toList
    ""



{-| <p>Provides the bucket name and object key name that stores the reference data.</p>
-}
type alias S3ReferenceDataSourceDescription =
    { bucketARN : String
    , fileKey : String
    , referenceRoleARN : String
    }



s3ReferenceDataSourceDescriptionDecoder : JD.Decoder S3ReferenceDataSourceDescription
s3ReferenceDataSourceDescriptionDecoder =
    JD.succeed S3ReferenceDataSourceDescription
        
        |> JDP.custom (AWS.Core.Decode.required
            ["BucketARN", "bucketARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["FileKey", "fileKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ReferenceRoleARN", "referenceRoleARN"]
            JD.string
        )
        




s3ReferenceDataSourceDescriptionToString : S3ReferenceDataSourceDescription -> String -- List (String, String)
s3ReferenceDataSourceDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bucketARN" "" -- val.bucketARN
        
    --     |> Dict.insert
    --         "fileKey" "" -- val.fileKey
        
    --     |> Dict.insert
    --         "referenceRoleARN" "" -- val.referenceRoleARN
        
    --     |> Dict.toList
    ""



{-| <p>Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>
-}
type alias S3ReferenceDataSourceUpdate =
    { bucketARNUpdate : Maybe String
    , fileKeyUpdate : Maybe String
    , referenceRoleARNUpdate : Maybe String
    }



s3ReferenceDataSourceUpdateDecoder : JD.Decoder S3ReferenceDataSourceUpdate
s3ReferenceDataSourceUpdateDecoder =
    JD.succeed S3ReferenceDataSourceUpdate
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BucketARNUpdate", "bucketARNUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FileKeyUpdate", "fileKeyUpdate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReferenceRoleARNUpdate", "referenceRoleARNUpdate"]
            JD.string
        )
        




s3ReferenceDataSourceUpdateToString : S3ReferenceDataSourceUpdate -> String -- List (String, String)
s3ReferenceDataSourceUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bucketARNUpdate" "" -- val.bucketARNUpdate
        
    --     |> Dict.insert
    --         "fileKeyUpdate" "" -- val.fileKeyUpdate
        
    --     |> Dict.insert
    --         "referenceRoleARNUpdate" "" -- val.referenceRoleARNUpdate
        
    --     |> Dict.toList
    ""



{-| <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>
-}
type alias SourceSchema =
    { recordFormat : RecordFormat
    , recordEncoding : Maybe String
    , recordColumns : (List RecordColumn)
    }



sourceSchemaDecoder : JD.Decoder SourceSchema
sourceSchemaDecoder =
    JD.succeed SourceSchema
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RecordFormat", "recordFormat"]
            recordFormatDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordEncoding", "recordEncoding"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RecordColumns", "recordColumns"]
            (JD.list recordColumnDecoder)
        )
        




sourceSchemaToString : SourceSchema -> String -- List (String, String)
sourceSchemaToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordFormat" "" -- val.recordFormat
        
    --     |> Dict.insert
    --         "recordEncoding" "" -- val.recordEncoding
        
    --     |> Dict.insert
    --         "recordColumns" "" -- val.recordColumns
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startApplication
-}
type alias StartApplicationResponse =
    { 
    }



startApplicationResponseDecoder : JD.Decoder StartApplicationResponse
startApplicationResponseDecoder =
    JD.succeed StartApplicationResponse
        




startApplicationResponseToString : StartApplicationResponse -> String -- List (String, String)
startApplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopApplication
-}
type alias StopApplicationResponse =
    { 
    }



stopApplicationResponseDecoder : JD.Decoder StopApplicationResponse
stopApplicationResponseDecoder =
    JD.succeed StopApplicationResponse
        




stopApplicationResponseToString : StopApplicationResponse -> String -- List (String, String)
stopApplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>A key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management Guide</i>.</p>
-}
type alias Tag =
    { key : String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
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



{-| Type of HTTP response from updateApplication
-}
type alias UpdateApplicationResponse =
    { 
    }



updateApplicationResponseDecoder : JD.Decoder UpdateApplicationResponse
updateApplicationResponseDecoder =
    JD.succeed UpdateApplicationResponse
        




updateApplicationResponseToString : UpdateApplicationResponse -> String -- List (String, String)
updateApplicationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AddApplicationCloudWatchLoggingOptionRequest =
    { applicationName : String
    , currentApplicationVersionId : Int
    , cloudWatchLoggingOption : CloudWatchLoggingOption
    }


{-| undefined
-}
type alias AddApplicationInputProcessingConfigurationRequest =
    { applicationName : String
    , currentApplicationVersionId : Int
    , inputId : String
    , inputProcessingConfiguration : InputProcessingConfiguration
    }


{-| <p/>
-}
type alias AddApplicationInputRequest =
    { applicationName : String
    , currentApplicationVersionId : Int
    , input : Input
    }


{-| <p/>
-}
type alias AddApplicationOutputRequest =
    { applicationName : String
    , currentApplicationVersionId : Int
    , output : Output
    }


{-| <p/>
-}
type alias AddApplicationReferenceDataSourceRequest =
    { applicationName : String
    , currentApplicationVersionId : Int
    , referenceDataSource : ReferenceDataSource
    }


{-| <p>TBD</p>
-}
type alias CreateApplicationRequest =
    { applicationName : String
    , applicationDescription : Maybe String
    , inputs : Maybe (List Input)
    , outputs : Maybe (List Output)
    , cloudWatchLoggingOptions : Maybe (List CloudWatchLoggingOption)
    , applicationCode : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias DeleteApplicationCloudWatchLoggingOptionRequest =
    { applicationName : String
    , currentApplicationVersionId : Int
    , cloudWatchLoggingOptionId : String
    }


{-| undefined
-}
type alias DeleteApplicationInputProcessingConfigurationRequest =
    { applicationName : String
    , currentApplicationVersionId : Int
    , inputId : String
    }


{-| <p/>
-}
type alias DeleteApplicationOutputRequest =
    { applicationName : String
    , currentApplicationVersionId : Int
    , outputId : String
    }


{-| undefined
-}
type alias DeleteApplicationReferenceDataSourceRequest =
    { applicationName : String
    , currentApplicationVersionId : Int
    , referenceId : String
    }


{-| <p/>
-}
type alias DeleteApplicationRequest =
    { applicationName : String
    , createTimestamp : Posix
    }


{-| <p/>
-}
type alias DescribeApplicationRequest =
    { applicationName : String
    }


{-| undefined
-}
type alias DiscoverInputSchemaRequest =
    { resourceARN : Maybe String
    , roleARN : Maybe String
    , inputStartingPositionConfiguration : Maybe InputStartingPositionConfiguration
    , s3Configuration : Maybe S3Configuration
    , inputProcessingConfiguration : Maybe InputProcessingConfiguration
    }


{-| <p/>
-}
type alias ListApplicationsRequest =
    { limit : Maybe Int
    , exclusiveStartApplicationName : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceRequest =
    { resourceARN : String
    }


{-| <p/>
-}
type alias StartApplicationRequest =
    { applicationName : String
    , inputConfigurations : (List InputConfiguration)
    }


{-| <p/>
-}
type alias StopApplicationRequest =
    { applicationName : String
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceARN : String
    , tags : (List Tag)
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceARN : String
    , tagKeys : (List String)
    }


{-| undefined
-}
type alias UpdateApplicationRequest =
    { applicationName : String
    , currentApplicationVersionId : Int
    , applicationUpdate : ApplicationUpdate
    }






addApplicationCloudWatchLoggingOptionRequestEncoder : AddApplicationCloudWatchLoggingOptionRequest -> JE.Value
addApplicationCloudWatchLoggingOptionRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("CurrentApplicationVersionId", data.currentApplicationVersionId |> (JE.int))
        
        
        
        |> (::) ("CloudWatchLoggingOption", data.cloudWatchLoggingOption |> (cloudWatchLoggingOptionEncoder))
        
        
        |> JE.object






addApplicationCloudWatchLoggingOptionResponseEncoder : AddApplicationCloudWatchLoggingOptionResponse -> JE.Value
addApplicationCloudWatchLoggingOptionResponseEncoder data =
    []
        
        |> JE.object






addApplicationInputProcessingConfigurationRequestEncoder : AddApplicationInputProcessingConfigurationRequest -> JE.Value
addApplicationInputProcessingConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("CurrentApplicationVersionId", data.currentApplicationVersionId |> (JE.int))
        
        
        
        |> (::) ("InputId", data.inputId |> (JE.string))
        
        
        
        |> (::) ("InputProcessingConfiguration", data.inputProcessingConfiguration |> (inputProcessingConfigurationEncoder))
        
        
        |> JE.object






addApplicationInputProcessingConfigurationResponseEncoder : AddApplicationInputProcessingConfigurationResponse -> JE.Value
addApplicationInputProcessingConfigurationResponseEncoder data =
    []
        
        |> JE.object






addApplicationInputRequestEncoder : AddApplicationInputRequest -> JE.Value
addApplicationInputRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("CurrentApplicationVersionId", data.currentApplicationVersionId |> (JE.int))
        
        
        
        |> (::) ("Input", data.input |> (inputEncoder))
        
        
        |> JE.object






addApplicationInputResponseEncoder : AddApplicationInputResponse -> JE.Value
addApplicationInputResponseEncoder data =
    []
        
        |> JE.object






addApplicationOutputRequestEncoder : AddApplicationOutputRequest -> JE.Value
addApplicationOutputRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("CurrentApplicationVersionId", data.currentApplicationVersionId |> (JE.int))
        
        
        
        |> (::) ("Output", data.output |> (outputEncoder))
        
        
        |> JE.object






addApplicationOutputResponseEncoder : AddApplicationOutputResponse -> JE.Value
addApplicationOutputResponseEncoder data =
    []
        
        |> JE.object






addApplicationReferenceDataSourceRequestEncoder : AddApplicationReferenceDataSourceRequest -> JE.Value
addApplicationReferenceDataSourceRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("CurrentApplicationVersionId", data.currentApplicationVersionId |> (JE.int))
        
        
        
        |> (::) ("ReferenceDataSource", data.referenceDataSource |> (referenceDataSourceEncoder))
        
        
        |> JE.object






addApplicationReferenceDataSourceResponseEncoder : AddApplicationReferenceDataSourceResponse -> JE.Value
addApplicationReferenceDataSourceResponseEncoder data =
    []
        
        |> JE.object






applicationDetailEncoder : ApplicationDetail -> JE.Value
applicationDetailEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ApplicationDescription", data.applicationDescription)
        
        
        
        |> (::) ("ApplicationARN", data.applicationARN |> (JE.string))
        
        
        
        |> (::) ("ApplicationStatus", data.applicationStatus |> (applicationStatusToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreateTimestamp", data.createTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdateTimestamp", data.lastUpdateTimestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (inputDescriptionEncoder))
            ("InputDescriptions", data.inputDescriptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (outputDescriptionEncoder))
            ("OutputDescriptions", data.outputDescriptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (referenceDataSourceDescriptionEncoder))
            ("ReferenceDataSourceDescriptions", data.referenceDataSourceDescriptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (cloudWatchLoggingOptionDescriptionEncoder))
            ("CloudWatchLoggingOptionDescriptions", data.cloudWatchLoggingOptionDescriptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ApplicationCode", data.applicationCode)
        
        
        
        |> (::) ("ApplicationVersionId", data.applicationVersionId |> (JE.int))
        
        
        |> JE.object










applicationSummaryEncoder : ApplicationSummary -> JE.Value
applicationSummaryEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("ApplicationARN", data.applicationARN |> (JE.string))
        
        
        
        |> (::) ("ApplicationStatus", data.applicationStatus |> (applicationStatusToString >> JE.string))
        
        
        |> JE.object






applicationUpdateEncoder : ApplicationUpdate -> JE.Value
applicationUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (inputUpdateEncoder))
            ("InputUpdates", data.inputUpdates)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ApplicationCodeUpdate", data.applicationCodeUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (outputUpdateEncoder))
            ("OutputUpdates", data.outputUpdates)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (referenceDataSourceUpdateEncoder))
            ("ReferenceDataSourceUpdates", data.referenceDataSourceUpdates)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (cloudWatchLoggingOptionUpdateEncoder))
            ("CloudWatchLoggingOptionUpdates", data.cloudWatchLoggingOptionUpdates)
        
        
        |> JE.object






cSVMappingParametersEncoder : CSVMappingParameters -> JE.Value
cSVMappingParametersEncoder data =
    []
        
        
        |> (::) ("RecordRowDelimiter", data.recordRowDelimiter |> (JE.string))
        
        
        
        |> (::) ("RecordColumnDelimiter", data.recordColumnDelimiter |> (JE.string))
        
        
        |> JE.object






cloudWatchLoggingOptionEncoder : CloudWatchLoggingOption -> JE.Value
cloudWatchLoggingOptionEncoder data =
    []
        
        
        |> (::) ("LogStreamARN", data.logStreamARN |> (JE.string))
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        |> JE.object






cloudWatchLoggingOptionDescriptionEncoder : CloudWatchLoggingOptionDescription -> JE.Value
cloudWatchLoggingOptionDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CloudWatchLoggingOptionId", data.cloudWatchLoggingOptionId)
        
        
        
        |> (::) ("LogStreamARN", data.logStreamARN |> (JE.string))
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        |> JE.object






cloudWatchLoggingOptionUpdateEncoder : CloudWatchLoggingOptionUpdate -> JE.Value
cloudWatchLoggingOptionUpdateEncoder data =
    []
        
        
        |> (::) ("CloudWatchLoggingOptionId", data.cloudWatchLoggingOptionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogStreamARNUpdate", data.logStreamARNUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARNUpdate", data.roleARNUpdate)
        
        
        |> JE.object






createApplicationRequestEncoder : CreateApplicationRequest -> JE.Value
createApplicationRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ApplicationDescription", data.applicationDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (inputEncoder))
            ("Inputs", data.inputs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (outputEncoder))
            ("Outputs", data.outputs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (cloudWatchLoggingOptionEncoder))
            ("CloudWatchLoggingOptions", data.cloudWatchLoggingOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ApplicationCode", data.applicationCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






createApplicationResponseEncoder : CreateApplicationResponse -> JE.Value
createApplicationResponseEncoder data =
    []
        
        
        |> (::) ("ApplicationSummary", data.applicationSummary |> (applicationSummaryEncoder))
        
        
        |> JE.object






deleteApplicationCloudWatchLoggingOptionRequestEncoder : DeleteApplicationCloudWatchLoggingOptionRequest -> JE.Value
deleteApplicationCloudWatchLoggingOptionRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("CurrentApplicationVersionId", data.currentApplicationVersionId |> (JE.int))
        
        
        
        |> (::) ("CloudWatchLoggingOptionId", data.cloudWatchLoggingOptionId |> (JE.string))
        
        
        |> JE.object






deleteApplicationCloudWatchLoggingOptionResponseEncoder : DeleteApplicationCloudWatchLoggingOptionResponse -> JE.Value
deleteApplicationCloudWatchLoggingOptionResponseEncoder data =
    []
        
        |> JE.object






deleteApplicationInputProcessingConfigurationRequestEncoder : DeleteApplicationInputProcessingConfigurationRequest -> JE.Value
deleteApplicationInputProcessingConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("CurrentApplicationVersionId", data.currentApplicationVersionId |> (JE.int))
        
        
        
        |> (::) ("InputId", data.inputId |> (JE.string))
        
        
        |> JE.object






deleteApplicationInputProcessingConfigurationResponseEncoder : DeleteApplicationInputProcessingConfigurationResponse -> JE.Value
deleteApplicationInputProcessingConfigurationResponseEncoder data =
    []
        
        |> JE.object






deleteApplicationOutputRequestEncoder : DeleteApplicationOutputRequest -> JE.Value
deleteApplicationOutputRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("CurrentApplicationVersionId", data.currentApplicationVersionId |> (JE.int))
        
        
        
        |> (::) ("OutputId", data.outputId |> (JE.string))
        
        
        |> JE.object






deleteApplicationOutputResponseEncoder : DeleteApplicationOutputResponse -> JE.Value
deleteApplicationOutputResponseEncoder data =
    []
        
        |> JE.object






deleteApplicationReferenceDataSourceRequestEncoder : DeleteApplicationReferenceDataSourceRequest -> JE.Value
deleteApplicationReferenceDataSourceRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("CurrentApplicationVersionId", data.currentApplicationVersionId |> (JE.int))
        
        
        
        |> (::) ("ReferenceId", data.referenceId |> (JE.string))
        
        
        |> JE.object






deleteApplicationReferenceDataSourceResponseEncoder : DeleteApplicationReferenceDataSourceResponse -> JE.Value
deleteApplicationReferenceDataSourceResponseEncoder data =
    []
        
        |> JE.object






deleteApplicationRequestEncoder : DeleteApplicationRequest -> JE.Value
deleteApplicationRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("CreateTimestamp", data.createTimestamp |> (Iso8601.fromTime >> JE.string))
        
        
        |> JE.object






deleteApplicationResponseEncoder : DeleteApplicationResponse -> JE.Value
deleteApplicationResponseEncoder data =
    []
        
        |> JE.object






describeApplicationRequestEncoder : DescribeApplicationRequest -> JE.Value
describeApplicationRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        |> JE.object






describeApplicationResponseEncoder : DescribeApplicationResponse -> JE.Value
describeApplicationResponseEncoder data =
    []
        
        
        |> (::) ("ApplicationDetail", data.applicationDetail |> (applicationDetailEncoder))
        
        
        |> JE.object






destinationSchemaEncoder : DestinationSchema -> JE.Value
destinationSchemaEncoder data =
    []
        
        
        |> (::) ("RecordFormatType", data.recordFormatType |> (recordFormatTypeToString >> JE.string))
        
        
        |> JE.object






discoverInputSchemaRequestEncoder : DiscoverInputSchemaRequest -> JE.Value
discoverInputSchemaRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARN", data.resourceARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inputStartingPositionConfigurationEncoder)
            ("InputStartingPositionConfiguration", data.inputStartingPositionConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3ConfigurationEncoder)
            ("S3Configuration", data.s3Configuration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inputProcessingConfigurationEncoder)
            ("InputProcessingConfiguration", data.inputProcessingConfiguration)
        
        
        |> JE.object






discoverInputSchemaResponseEncoder : DiscoverInputSchemaResponse -> JE.Value
discoverInputSchemaResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceSchemaEncoder)
            ("InputSchema", data.inputSchema)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.list (JE.string)))
            ("ParsedInputRecords", data.parsedInputRecords)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ProcessedInputRecords", data.processedInputRecords)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("RawInputRecords", data.rawInputRecords)
        
        
        |> JE.object






inputEncoder : Input -> JE.Value
inputEncoder data =
    []
        
        
        |> (::) ("NamePrefix", data.namePrefix |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inputProcessingConfigurationEncoder)
            ("InputProcessingConfiguration", data.inputProcessingConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisStreamsInputEncoder)
            ("KinesisStreamsInput", data.kinesisStreamsInput)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisFirehoseInputEncoder)
            ("KinesisFirehoseInput", data.kinesisFirehoseInput)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inputParallelismEncoder)
            ("InputParallelism", data.inputParallelism)
        
        
        
        |> (::) ("InputSchema", data.inputSchema |> (sourceSchemaEncoder))
        
        
        |> JE.object






inputConfigurationEncoder : InputConfiguration -> JE.Value
inputConfigurationEncoder data =
    []
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        
        |> (::) ("InputStartingPositionConfiguration", data.inputStartingPositionConfiguration |> (inputStartingPositionConfigurationEncoder))
        
        
        |> JE.object






inputDescriptionEncoder : InputDescription -> JE.Value
inputDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InputId", data.inputId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NamePrefix", data.namePrefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("InAppStreamNames", data.inAppStreamNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inputProcessingConfigurationDescriptionEncoder)
            ("InputProcessingConfigurationDescription", data.inputProcessingConfigurationDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisStreamsInputDescriptionEncoder)
            ("KinesisStreamsInputDescription", data.kinesisStreamsInputDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisFirehoseInputDescriptionEncoder)
            ("KinesisFirehoseInputDescription", data.kinesisFirehoseInputDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceSchemaEncoder)
            ("InputSchema", data.inputSchema)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inputParallelismEncoder)
            ("InputParallelism", data.inputParallelism)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inputStartingPositionConfigurationEncoder)
            ("InputStartingPositionConfiguration", data.inputStartingPositionConfiguration)
        
        
        |> JE.object






inputLambdaProcessorEncoder : InputLambdaProcessor -> JE.Value
inputLambdaProcessorEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        |> JE.object






inputLambdaProcessorDescriptionEncoder : InputLambdaProcessorDescription -> JE.Value
inputLambdaProcessorDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARN", data.resourceARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        |> JE.object






inputLambdaProcessorUpdateEncoder : InputLambdaProcessorUpdate -> JE.Value
inputLambdaProcessorUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARNUpdate", data.resourceARNUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARNUpdate", data.roleARNUpdate)
        
        
        |> JE.object






inputParallelismEncoder : InputParallelism -> JE.Value
inputParallelismEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Count", data.count)
        
        
        |> JE.object






inputParallelismUpdateEncoder : InputParallelismUpdate -> JE.Value
inputParallelismUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("CountUpdate", data.countUpdate)
        
        
        |> JE.object






inputProcessingConfigurationEncoder : InputProcessingConfiguration -> JE.Value
inputProcessingConfigurationEncoder data =
    []
        
        
        |> (::) ("InputLambdaProcessor", data.inputLambdaProcessor |> (inputLambdaProcessorEncoder))
        
        
        |> JE.object






inputProcessingConfigurationDescriptionEncoder : InputProcessingConfigurationDescription -> JE.Value
inputProcessingConfigurationDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (inputLambdaProcessorDescriptionEncoder)
            ("InputLambdaProcessorDescription", data.inputLambdaProcessorDescription)
        
        
        |> JE.object






inputProcessingConfigurationUpdateEncoder : InputProcessingConfigurationUpdate -> JE.Value
inputProcessingConfigurationUpdateEncoder data =
    []
        
        
        |> (::) ("InputLambdaProcessorUpdate", data.inputLambdaProcessorUpdate |> (inputLambdaProcessorUpdateEncoder))
        
        
        |> JE.object






inputSchemaUpdateEncoder : InputSchemaUpdate -> JE.Value
inputSchemaUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (recordFormatEncoder)
            ("RecordFormatUpdate", data.recordFormatUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RecordEncodingUpdate", data.recordEncodingUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (recordColumnEncoder))
            ("RecordColumnUpdates", data.recordColumnUpdates)
        
        
        |> JE.object










inputStartingPositionConfigurationEncoder : InputStartingPositionConfiguration -> JE.Value
inputStartingPositionConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (inputStartingPositionToString >> JE.string)
            ("InputStartingPosition", data.inputStartingPosition)
        
        
        |> JE.object






inputUpdateEncoder : InputUpdate -> JE.Value
inputUpdateEncoder data =
    []
        
        
        |> (::) ("InputId", data.inputId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NamePrefixUpdate", data.namePrefixUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inputProcessingConfigurationUpdateEncoder)
            ("InputProcessingConfigurationUpdate", data.inputProcessingConfigurationUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisStreamsInputUpdateEncoder)
            ("KinesisStreamsInputUpdate", data.kinesisStreamsInputUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisFirehoseInputUpdateEncoder)
            ("KinesisFirehoseInputUpdate", data.kinesisFirehoseInputUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inputSchemaUpdateEncoder)
            ("InputSchemaUpdate", data.inputSchemaUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (inputParallelismUpdateEncoder)
            ("InputParallelismUpdate", data.inputParallelismUpdate)
        
        
        |> JE.object






jSONMappingParametersEncoder : JSONMappingParameters -> JE.Value
jSONMappingParametersEncoder data =
    []
        
        
        |> (::) ("RecordRowPath", data.recordRowPath |> (JE.string))
        
        
        |> JE.object






kinesisFirehoseInputEncoder : KinesisFirehoseInput -> JE.Value
kinesisFirehoseInputEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        |> JE.object






kinesisFirehoseInputDescriptionEncoder : KinesisFirehoseInputDescription -> JE.Value
kinesisFirehoseInputDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARN", data.resourceARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        |> JE.object






kinesisFirehoseInputUpdateEncoder : KinesisFirehoseInputUpdate -> JE.Value
kinesisFirehoseInputUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARNUpdate", data.resourceARNUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARNUpdate", data.roleARNUpdate)
        
        
        |> JE.object






kinesisFirehoseOutputEncoder : KinesisFirehoseOutput -> JE.Value
kinesisFirehoseOutputEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        |> JE.object






kinesisFirehoseOutputDescriptionEncoder : KinesisFirehoseOutputDescription -> JE.Value
kinesisFirehoseOutputDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARN", data.resourceARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        |> JE.object






kinesisFirehoseOutputUpdateEncoder : KinesisFirehoseOutputUpdate -> JE.Value
kinesisFirehoseOutputUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARNUpdate", data.resourceARNUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARNUpdate", data.roleARNUpdate)
        
        
        |> JE.object






kinesisStreamsInputEncoder : KinesisStreamsInput -> JE.Value
kinesisStreamsInputEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        |> JE.object






kinesisStreamsInputDescriptionEncoder : KinesisStreamsInputDescription -> JE.Value
kinesisStreamsInputDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARN", data.resourceARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        |> JE.object






kinesisStreamsInputUpdateEncoder : KinesisStreamsInputUpdate -> JE.Value
kinesisStreamsInputUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARNUpdate", data.resourceARNUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARNUpdate", data.roleARNUpdate)
        
        
        |> JE.object






kinesisStreamsOutputEncoder : KinesisStreamsOutput -> JE.Value
kinesisStreamsOutputEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        |> JE.object






kinesisStreamsOutputDescriptionEncoder : KinesisStreamsOutputDescription -> JE.Value
kinesisStreamsOutputDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARN", data.resourceARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        |> JE.object






kinesisStreamsOutputUpdateEncoder : KinesisStreamsOutputUpdate -> JE.Value
kinesisStreamsOutputUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARNUpdate", data.resourceARNUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARNUpdate", data.roleARNUpdate)
        
        
        |> JE.object






lambdaOutputEncoder : LambdaOutput -> JE.Value
lambdaOutputEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        |> JE.object






lambdaOutputDescriptionEncoder : LambdaOutputDescription -> JE.Value
lambdaOutputDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARN", data.resourceARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        |> JE.object






lambdaOutputUpdateEncoder : LambdaOutputUpdate -> JE.Value
lambdaOutputUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARNUpdate", data.resourceARNUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARNUpdate", data.roleARNUpdate)
        
        
        |> JE.object






listApplicationsRequestEncoder : ListApplicationsRequest -> JE.Value
listApplicationsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExclusiveStartApplicationName", data.exclusiveStartApplicationName)
        
        
        |> JE.object






listApplicationsResponseEncoder : ListApplicationsResponse -> JE.Value
listApplicationsResponseEncoder data =
    []
        
        
        |> (::) ("ApplicationSummaries", data.applicationSummaries |> (JE.list (applicationSummaryEncoder)))
        
        
        
        |> (::) ("HasMoreApplications", data.hasMoreApplications |> (JE.bool))
        
        
        |> JE.object






listTagsForResourceRequestEncoder : ListTagsForResourceRequest -> JE.Value
listTagsForResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        |> JE.object






listTagsForResourceResponseEncoder : ListTagsForResourceResponse -> JE.Value
listTagsForResourceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






mappingParametersEncoder : MappingParameters -> JE.Value
mappingParametersEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (jSONMappingParametersEncoder)
            ("JSONMappingParameters", data.jSONMappingParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (cSVMappingParametersEncoder)
            ("CSVMappingParameters", data.cSVMappingParameters)
        
        
        |> JE.object






outputEncoder : Output -> JE.Value
outputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisStreamsOutputEncoder)
            ("KinesisStreamsOutput", data.kinesisStreamsOutput)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisFirehoseOutputEncoder)
            ("KinesisFirehoseOutput", data.kinesisFirehoseOutput)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaOutputEncoder)
            ("LambdaOutput", data.lambdaOutput)
        
        
        
        |> (::) ("DestinationSchema", data.destinationSchema |> (destinationSchemaEncoder))
        
        
        |> JE.object






outputDescriptionEncoder : OutputDescription -> JE.Value
outputDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("OutputId", data.outputId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisStreamsOutputDescriptionEncoder)
            ("KinesisStreamsOutputDescription", data.kinesisStreamsOutputDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisFirehoseOutputDescriptionEncoder)
            ("KinesisFirehoseOutputDescription", data.kinesisFirehoseOutputDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaOutputDescriptionEncoder)
            ("LambdaOutputDescription", data.lambdaOutputDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (destinationSchemaEncoder)
            ("DestinationSchema", data.destinationSchema)
        
        
        |> JE.object






outputUpdateEncoder : OutputUpdate -> JE.Value
outputUpdateEncoder data =
    []
        
        
        |> (::) ("OutputId", data.outputId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NameUpdate", data.nameUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisStreamsOutputUpdateEncoder)
            ("KinesisStreamsOutputUpdate", data.kinesisStreamsOutputUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (kinesisFirehoseOutputUpdateEncoder)
            ("KinesisFirehoseOutputUpdate", data.kinesisFirehoseOutputUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaOutputUpdateEncoder)
            ("LambdaOutputUpdate", data.lambdaOutputUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (destinationSchemaEncoder)
            ("DestinationSchemaUpdate", data.destinationSchemaUpdate)
        
        
        |> JE.object






recordColumnEncoder : RecordColumn -> JE.Value
recordColumnEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Mapping", data.mapping)
        
        
        
        |> (::) ("SqlType", data.sqlType |> (JE.string))
        
        
        |> JE.object






recordFormatEncoder : RecordFormat -> JE.Value
recordFormatEncoder data =
    []
        
        
        |> (::) ("RecordFormatType", data.recordFormatType |> (recordFormatTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (mappingParametersEncoder)
            ("MappingParameters", data.mappingParameters)
        
        
        |> JE.object










referenceDataSourceEncoder : ReferenceDataSource -> JE.Value
referenceDataSourceEncoder data =
    []
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3ReferenceDataSourceEncoder)
            ("S3ReferenceDataSource", data.s3ReferenceDataSource)
        
        
        
        |> (::) ("ReferenceSchema", data.referenceSchema |> (sourceSchemaEncoder))
        
        
        |> JE.object






referenceDataSourceDescriptionEncoder : ReferenceDataSourceDescription -> JE.Value
referenceDataSourceDescriptionEncoder data =
    []
        
        
        |> (::) ("ReferenceId", data.referenceId |> (JE.string))
        
        
        
        |> (::) ("TableName", data.tableName |> (JE.string))
        
        
        
        |> (::) ("S3ReferenceDataSourceDescription", data.s3ReferenceDataSourceDescription |> (s3ReferenceDataSourceDescriptionEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceSchemaEncoder)
            ("ReferenceSchema", data.referenceSchema)
        
        
        |> JE.object






referenceDataSourceUpdateEncoder : ReferenceDataSourceUpdate -> JE.Value
referenceDataSourceUpdateEncoder data =
    []
        
        
        |> (::) ("ReferenceId", data.referenceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TableNameUpdate", data.tableNameUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3ReferenceDataSourceUpdateEncoder)
            ("S3ReferenceDataSourceUpdate", data.s3ReferenceDataSourceUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceSchemaEncoder)
            ("ReferenceSchemaUpdate", data.referenceSchemaUpdate)
        
        
        |> JE.object






s3ConfigurationEncoder : S3Configuration -> JE.Value
s3ConfigurationEncoder data =
    []
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        
        |> (::) ("BucketARN", data.bucketARN |> (JE.string))
        
        
        
        |> (::) ("FileKey", data.fileKey |> (JE.string))
        
        
        |> JE.object






s3ReferenceDataSourceEncoder : S3ReferenceDataSource -> JE.Value
s3ReferenceDataSourceEncoder data =
    []
        
        
        |> (::) ("BucketARN", data.bucketARN |> (JE.string))
        
        
        
        |> (::) ("FileKey", data.fileKey |> (JE.string))
        
        
        
        |> (::) ("ReferenceRoleARN", data.referenceRoleARN |> (JE.string))
        
        
        |> JE.object






s3ReferenceDataSourceDescriptionEncoder : S3ReferenceDataSourceDescription -> JE.Value
s3ReferenceDataSourceDescriptionEncoder data =
    []
        
        
        |> (::) ("BucketARN", data.bucketARN |> (JE.string))
        
        
        
        |> (::) ("FileKey", data.fileKey |> (JE.string))
        
        
        
        |> (::) ("ReferenceRoleARN", data.referenceRoleARN |> (JE.string))
        
        
        |> JE.object






s3ReferenceDataSourceUpdateEncoder : S3ReferenceDataSourceUpdate -> JE.Value
s3ReferenceDataSourceUpdateEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BucketARNUpdate", data.bucketARNUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FileKeyUpdate", data.fileKeyUpdate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ReferenceRoleARNUpdate", data.referenceRoleARNUpdate)
        
        
        |> JE.object






sourceSchemaEncoder : SourceSchema -> JE.Value
sourceSchemaEncoder data =
    []
        
        
        |> (::) ("RecordFormat", data.recordFormat |> (recordFormatEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RecordEncoding", data.recordEncoding)
        
        
        
        |> (::) ("RecordColumns", data.recordColumns |> (JE.list (recordColumnEncoder)))
        
        
        |> JE.object






startApplicationRequestEncoder : StartApplicationRequest -> JE.Value
startApplicationRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("InputConfigurations", data.inputConfigurations |> (JE.list (inputConfigurationEncoder)))
        
        
        |> JE.object






startApplicationResponseEncoder : StartApplicationResponse -> JE.Value
startApplicationResponseEncoder data =
    []
        
        |> JE.object






stopApplicationRequestEncoder : StopApplicationRequest -> JE.Value
stopApplicationRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        |> JE.object






stopApplicationResponseEncoder : StopApplicationResponse -> JE.Value
stopApplicationResponseEncoder data =
    []
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object






tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        
        |> (::) ("Tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






tagResourceResponseEncoder : TagResourceResponse -> JE.Value
tagResourceResponseEncoder data =
    []
        
        |> JE.object






untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        
        |> (::) ("TagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






untagResourceResponseEncoder : UntagResourceResponse -> JE.Value
untagResourceResponseEncoder data =
    []
        
        |> JE.object






updateApplicationRequestEncoder : UpdateApplicationRequest -> JE.Value
updateApplicationRequestEncoder data =
    []
        
        
        |> (::) ("ApplicationName", data.applicationName |> (JE.string))
        
        
        
        |> (::) ("CurrentApplicationVersionId", data.currentApplicationVersionId |> (JE.int))
        
        
        
        |> (::) ("ApplicationUpdate", data.applicationUpdate |> (applicationUpdateEncoder))
        
        
        |> JE.object






updateApplicationResponseEncoder : UpdateApplicationResponse -> JE.Value
updateApplicationResponseEncoder data =
    []
        
        |> JE.object





