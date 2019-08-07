module AWS.MachineLearning
    exposing
        ( service
        , addTags
        , createBatchPrediction
        , CreateBatchPredictionOptions
        , createDataSourceFromRDS
        , CreateDataSourceFromRDSOptions
        , createDataSourceFromRedshift
        , CreateDataSourceFromRedshiftOptions
        , createDataSourceFromS3
        , CreateDataSourceFromS3Options
        , createEvaluation
        , CreateEvaluationOptions
        , createMLModel
        , CreateMLModelOptions
        , createRealtimeEndpoint
        , deleteBatchPrediction
        , deleteDataSource
        , deleteEvaluation
        , deleteMLModel
        , deleteRealtimeEndpoint
        , deleteTags
        , describeBatchPredictions
        , DescribeBatchPredictionsOptions
        , describeDataSources
        , DescribeDataSourcesOptions
        , describeEvaluations
        , DescribeEvaluationsOptions
        , describeMLModels
        , DescribeMLModelsOptions
        , describeTags
        , getBatchPrediction
        , getDataSource
        , GetDataSourceOptions
        , getEvaluation
        , getMLModel
        , GetMLModelOptions
        , predict
        , updateBatchPrediction
        , updateDataSource
        , updateEvaluation
        , updateMLModel
        , UpdateMLModelOptions
        , AddTagsOutput
        , Algorithm(..)
        , BatchPrediction
        , BatchPredictionFilterVariable(..)
        , CreateBatchPredictionOutput
        , CreateDataSourceFromRDSOutput
        , CreateDataSourceFromRedshiftOutput
        , CreateDataSourceFromS3Output
        , CreateEvaluationOutput
        , CreateMLModelOutput
        , CreateRealtimeEndpointOutput
        , DataSource
        , DataSourceFilterVariable(..)
        , DeleteBatchPredictionOutput
        , DeleteDataSourceOutput
        , DeleteEvaluationOutput
        , DeleteMLModelOutput
        , DeleteRealtimeEndpointOutput
        , DeleteTagsOutput
        , DescribeBatchPredictionsOutput
        , DescribeDataSourcesOutput
        , DescribeEvaluationsOutput
        , DescribeMLModelsOutput
        , DescribeTagsOutput
        , DetailsAttributes(..)
        , EntityStatus(..)
        , Evaluation
        , EvaluationFilterVariable(..)
        , GetBatchPredictionOutput
        , GetDataSourceOutput
        , GetEvaluationOutput
        , GetMLModelOutput
        , IdempotentParameterMismatchException
        , InternalServerException
        , InvalidInputException
        , InvalidTagException
        , LimitExceededException
        , MLModel
        , MLModelFilterVariable(..)
        , MLModelType(..)
        , PerformanceMetrics
        , PredictOutput
        , Prediction
        , PredictorNotMountedException
        , RDSDataSpec
        , RDSDatabase
        , RDSDatabaseCredentials
        , RDSMetadata
        , RealtimeEndpointInfo
        , RealtimeEndpointStatus(..)
        , RedshiftDataSpec
        , RedshiftDatabase
        , RedshiftDatabaseCredentials
        , RedshiftMetadata
        , ResourceNotFoundException
        , S3DataSpec
        , SortOrder(..)
        , Tag
        , TagLimitExceededException
        , TaggableResourceType(..)
        , UpdateBatchPredictionOutput
        , UpdateDataSourceOutput
        , UpdateEvaluationOutput
        , UpdateMLModelOutput
        )

{-| Definition of the public APIs exposed by Amazon Machine Learning

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTags](#addTags)
* [createBatchPrediction](#createBatchPrediction)
* [CreateBatchPredictionOptions](#CreateBatchPredictionOptions)
* [createDataSourceFromRDS](#createDataSourceFromRDS)
* [CreateDataSourceFromRDSOptions](#CreateDataSourceFromRDSOptions)
* [createDataSourceFromRedshift](#createDataSourceFromRedshift)
* [CreateDataSourceFromRedshiftOptions](#CreateDataSourceFromRedshiftOptions)
* [createDataSourceFromS3](#createDataSourceFromS3)
* [CreateDataSourceFromS3Options](#CreateDataSourceFromS3Options)
* [createEvaluation](#createEvaluation)
* [CreateEvaluationOptions](#CreateEvaluationOptions)
* [createMLModel](#createMLModel)
* [CreateMLModelOptions](#CreateMLModelOptions)
* [createRealtimeEndpoint](#createRealtimeEndpoint)
* [deleteBatchPrediction](#deleteBatchPrediction)
* [deleteDataSource](#deleteDataSource)
* [deleteEvaluation](#deleteEvaluation)
* [deleteMLModel](#deleteMLModel)
* [deleteRealtimeEndpoint](#deleteRealtimeEndpoint)
* [deleteTags](#deleteTags)
* [describeBatchPredictions](#describeBatchPredictions)
* [DescribeBatchPredictionsOptions](#DescribeBatchPredictionsOptions)
* [describeDataSources](#describeDataSources)
* [DescribeDataSourcesOptions](#DescribeDataSourcesOptions)
* [describeEvaluations](#describeEvaluations)
* [DescribeEvaluationsOptions](#DescribeEvaluationsOptions)
* [describeMLModels](#describeMLModels)
* [DescribeMLModelsOptions](#DescribeMLModelsOptions)
* [describeTags](#describeTags)
* [getBatchPrediction](#getBatchPrediction)
* [getDataSource](#getDataSource)
* [GetDataSourceOptions](#GetDataSourceOptions)
* [getEvaluation](#getEvaluation)
* [getMLModel](#getMLModel)
* [GetMLModelOptions](#GetMLModelOptions)
* [predict](#predict)
* [updateBatchPrediction](#updateBatchPrediction)
* [updateDataSource](#updateDataSource)
* [updateEvaluation](#updateEvaluation)
* [updateMLModel](#updateMLModel)
* [UpdateMLModelOptions](#UpdateMLModelOptions)


@docs addTags,createBatchPrediction,CreateBatchPredictionOptions,createDataSourceFromRDS,CreateDataSourceFromRDSOptions,createDataSourceFromRedshift,CreateDataSourceFromRedshiftOptions,createDataSourceFromS3,CreateDataSourceFromS3Options,createEvaluation,CreateEvaluationOptions,createMLModel,CreateMLModelOptions,createRealtimeEndpoint,deleteBatchPrediction,deleteDataSource,deleteEvaluation,deleteMLModel,deleteRealtimeEndpoint,deleteTags,describeBatchPredictions,DescribeBatchPredictionsOptions,describeDataSources,DescribeDataSourcesOptions,describeEvaluations,DescribeEvaluationsOptions,describeMLModels,DescribeMLModelsOptions,describeTags,getBatchPrediction,getDataSource,GetDataSourceOptions,getEvaluation,getMLModel,GetMLModelOptions,predict,updateBatchPrediction,updateDataSource,updateEvaluation,updateMLModel,UpdateMLModelOptions

## Responses

* [AddTagsOutput](#AddTagsOutput)
* [CreateBatchPredictionOutput](#CreateBatchPredictionOutput)
* [CreateDataSourceFromRDSOutput](#CreateDataSourceFromRDSOutput)
* [CreateDataSourceFromRedshiftOutput](#CreateDataSourceFromRedshiftOutput)
* [CreateDataSourceFromS3Output](#CreateDataSourceFromS3Output)
* [CreateEvaluationOutput](#CreateEvaluationOutput)
* [CreateMLModelOutput](#CreateMLModelOutput)
* [CreateRealtimeEndpointOutput](#CreateRealtimeEndpointOutput)
* [DeleteBatchPredictionOutput](#DeleteBatchPredictionOutput)
* [DeleteDataSourceOutput](#DeleteDataSourceOutput)
* [DeleteEvaluationOutput](#DeleteEvaluationOutput)
* [DeleteMLModelOutput](#DeleteMLModelOutput)
* [DeleteRealtimeEndpointOutput](#DeleteRealtimeEndpointOutput)
* [DeleteTagsOutput](#DeleteTagsOutput)
* [DescribeBatchPredictionsOutput](#DescribeBatchPredictionsOutput)
* [DescribeDataSourcesOutput](#DescribeDataSourcesOutput)
* [DescribeEvaluationsOutput](#DescribeEvaluationsOutput)
* [DescribeMLModelsOutput](#DescribeMLModelsOutput)
* [DescribeTagsOutput](#DescribeTagsOutput)
* [GetBatchPredictionOutput](#GetBatchPredictionOutput)
* [GetDataSourceOutput](#GetDataSourceOutput)
* [GetEvaluationOutput](#GetEvaluationOutput)
* [GetMLModelOutput](#GetMLModelOutput)
* [PredictOutput](#PredictOutput)
* [UpdateBatchPredictionOutput](#UpdateBatchPredictionOutput)
* [UpdateDataSourceOutput](#UpdateDataSourceOutput)
* [UpdateEvaluationOutput](#UpdateEvaluationOutput)
* [UpdateMLModelOutput](#UpdateMLModelOutput)


@docs AddTagsOutput,CreateBatchPredictionOutput,CreateDataSourceFromRDSOutput,CreateDataSourceFromRedshiftOutput,CreateDataSourceFromS3Output,CreateEvaluationOutput,CreateMLModelOutput,CreateRealtimeEndpointOutput,DeleteBatchPredictionOutput,DeleteDataSourceOutput,DeleteEvaluationOutput,DeleteMLModelOutput,DeleteRealtimeEndpointOutput,DeleteTagsOutput,DescribeBatchPredictionsOutput,DescribeDataSourcesOutput,DescribeEvaluationsOutput,DescribeMLModelsOutput,DescribeTagsOutput,GetBatchPredictionOutput,GetDataSourceOutput,GetEvaluationOutput,GetMLModelOutput,PredictOutput,UpdateBatchPredictionOutput,UpdateDataSourceOutput,UpdateEvaluationOutput,UpdateMLModelOutput

## Records

* [BatchPrediction](#BatchPrediction)
* [DataSource](#DataSource)
* [Evaluation](#Evaluation)
* [MLModel](#MLModel)
* [PerformanceMetrics](#PerformanceMetrics)
* [Prediction](#Prediction)
* [RDSDataSpec](#RDSDataSpec)
* [RDSDatabase](#RDSDatabase)
* [RDSDatabaseCredentials](#RDSDatabaseCredentials)
* [RDSMetadata](#RDSMetadata)
* [RealtimeEndpointInfo](#RealtimeEndpointInfo)
* [RedshiftDataSpec](#RedshiftDataSpec)
* [RedshiftDatabase](#RedshiftDatabase)
* [RedshiftDatabaseCredentials](#RedshiftDatabaseCredentials)
* [RedshiftMetadata](#RedshiftMetadata)
* [S3DataSpec](#S3DataSpec)
* [Tag](#Tag)


@docs BatchPrediction,DataSource,Evaluation,MLModel,PerformanceMetrics,Prediction,RDSDataSpec,RDSDatabase,RDSDatabaseCredentials,RDSMetadata,RealtimeEndpointInfo,RedshiftDataSpec,RedshiftDatabase,RedshiftDatabaseCredentials,RedshiftMetadata,S3DataSpec,Tag

## Unions

* [Algorithm](#Algorithm)
* [BatchPredictionFilterVariable](#BatchPredictionFilterVariable)
* [DataSourceFilterVariable](#DataSourceFilterVariable)
* [DetailsAttributes](#DetailsAttributes)
* [EntityStatus](#EntityStatus)
* [EvaluationFilterVariable](#EvaluationFilterVariable)
* [MLModelFilterVariable](#MLModelFilterVariable)
* [MLModelType](#MLModelType)
* [RealtimeEndpointStatus](#RealtimeEndpointStatus)
* [SortOrder](#SortOrder)
* [TaggableResourceType](#TaggableResourceType)


@docs Algorithm,BatchPredictionFilterVariable,DataSourceFilterVariable,DetailsAttributes,EntityStatus,EvaluationFilterVariable,MLModelFilterVariable,MLModelType,RealtimeEndpointStatus,SortOrder,TaggableResourceType

## Exceptions

* [IdempotentParameterMismatchException](#IdempotentParameterMismatchException)
* [InternalServerException](#InternalServerException)
* [InvalidInputException](#InvalidInputException)
* [InvalidTagException](#InvalidTagException)
* [LimitExceededException](#LimitExceededException)
* [PredictorNotMountedException](#PredictorNotMountedException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [TagLimitExceededException](#TagLimitExceededException)


@docs IdempotentParameterMismatchException,InternalServerException,InvalidInputException,InvalidTagException,LimitExceededException,PredictorNotMountedException,ResourceNotFoundException,TagLimitExceededException

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
        "machinelearning"
        "2014-12-12"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AmazonML_20141212")



-- OPERATIONS

{-| <p>Adds one or more tags to an object, up to a limit of 10. Each tag consists of a key and an optional value. If you add a tag using a key that is already associated with the ML object, <code>AddTags</code> updates the tag's value.</p>

__Required Parameters__

* `tags` __:__ `(List Tag)`
* `resourceId` __:__ `String`
* `resourceType` __:__ `TaggableResourceType`


-}

addTags :
  
    (List Tag) ->
  
    String ->
  
    TaggableResourceType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddTagsOutput)

addTags tags resourceId resourceType =
    
    let
        requestInput = AddTagsInput
            
            tags
            
            resourceId
            
            resourceType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addTagsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddTags"
                
                (AWS.Core.Decode.ResultDecoder "AddTagsOutput" addTagsOutputDecoder)
                
            )





{-| <p>Generates predictions for a group of observations. The observations to process exist in one or more data files referenced by a <code>DataSource</code>. This operation creates a new <code>BatchPrediction</code>, and uses an <code>MLModel</code> and the data files referenced by the <code>DataSource</code> as information sources. </p> <p><code>CreateBatchPrediction</code> is an asynchronous operation. In response to <code>CreateBatchPrediction</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>BatchPrediction</code> status to <code>PENDING</code>. After the <code>BatchPrediction</code> completes, Amazon ML sets the status to <code>COMPLETED</code>. </p> <p>You can poll for status updates by using the <a>GetBatchPrediction</a> operation and checking the <code>Status</code> parameter of the result. After the <code>COMPLETED</code> status appears, the results are available in the location specified by the <code>OutputUri</code> parameter.</p>

__Required Parameters__

* `batchPredictionId` __:__ `String`
* `mLModelId` __:__ `String`
* `batchPredictionDataSourceId` __:__ `String`
* `outputUri` __:__ `String`


-}

createBatchPrediction :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateBatchPredictionOptions -> CreateBatchPredictionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateBatchPredictionOutput)

createBatchPrediction batchPredictionId mLModelId batchPredictionDataSourceId outputUri setOptions =
    
    let
        requestInput = CreateBatchPredictionInput
            
            batchPredictionId
            
            options.batchPredictionName
            
            mLModelId
            
            batchPredictionDataSourceId
            
            outputUri
            
        
        options = setOptions (CreateBatchPredictionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createBatchPredictionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateBatchPrediction"
                
                (AWS.Core.Decode.ResultDecoder "CreateBatchPredictionOutput" createBatchPredictionOutputDecoder)
                
            )



{-| Options for a createBatchPrediction request
-}
type alias CreateBatchPredictionOptions =
    {
    batchPredictionName : Maybe String
    }



{-| <p>Creates a <code>DataSource</code> object from an <a href="http://aws.amazon.com/rds/"> Amazon Relational Database Service</a> (Amazon RDS). A <code>DataSource</code> references data that can be used to perform <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p> <p><code>CreateDataSourceFromRDS</code> is an asynchronous operation. In response to <code>CreateDataSourceFromRDS</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the <code>DataSource</code> is created and ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in the <code>COMPLETED</code> or <code>PENDING</code> state can be used only to perform <code>&gt;CreateMLModel</code>&gt;, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations. </p> <p> If Amazon ML cannot accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response. </p>

__Required Parameters__

* `dataSourceId` __:__ `String`
* `rDSData` __:__ `RDSDataSpec`
* `roleARN` __:__ `String`


-}

createDataSourceFromRDS :
  
    String ->
  
    RDSDataSpec ->
  
    String ->
  
  
    ( CreateDataSourceFromRDSOptions -> CreateDataSourceFromRDSOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDataSourceFromRDSOutput)

createDataSourceFromRDS dataSourceId rDSData roleARN setOptions =
    
    let
        requestInput = CreateDataSourceFromRDSInput
            
            dataSourceId
            
            options.dataSourceName
            
            rDSData
            
            roleARN
            
            options.computeStatistics
            
        
        options = setOptions (CreateDataSourceFromRDSOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDataSourceFromRDSInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDataSourceFromRDS"
                
                (AWS.Core.Decode.ResultDecoder "CreateDataSourceFromRDSOutput" createDataSourceFromRDSOutputDecoder)
                
            )



{-| Options for a createDataSourceFromRDS request
-}
type alias CreateDataSourceFromRDSOptions =
    {
    dataSourceName : Maybe String,computeStatistics : Maybe Bool
    }



{-| <p>Creates a <code>DataSource</code> from a database hosted on an Amazon Redshift cluster. A <code>DataSource</code> references data that can be used to perform either <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p> <p><code>CreateDataSourceFromRedshift</code> is an asynchronous operation. In response to <code>CreateDataSourceFromRedshift</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the <code>DataSource</code> is created and ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in <code>COMPLETED</code> or <code>PENDING</code> states can be used to perform only <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations. </p> <p> If Amazon ML can't accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response. </p> <p>The observations should be contained in the database hosted on an Amazon Redshift cluster and should be specified by a <code>SelectSqlQuery</code> query. Amazon ML executes an <code>Unload</code> command in Amazon Redshift to transfer the result set of the <code>SelectSqlQuery</code> query to <code>S3StagingLocation</code>.</p> <p>After the <code>DataSource</code> has been created, it's ready for use in evaluations and batch predictions. If you plan to use the <code>DataSource</code> to train an <code>MLModel</code>, the <code>DataSource</code> also requires a recipe. A recipe describes how each input variable will be used in training an <code>MLModel</code>. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.</p> <?oxy_insert_start author="laurama" timestamp="20160406T153842-0700"><p>You can't change an existing datasource, but you can copy and modify the settings from an existing Amazon Redshift datasource to create a new datasource. To do so, call <code>GetDataSource</code> for an existing datasource and copy the values to a <code>CreateDataSource</code> call. Change the settings that you want to change and make sure that all required fields have the appropriate values.</p> <?oxy_insert_end>

__Required Parameters__

* `dataSourceId` __:__ `String`
* `dataSpec` __:__ `RedshiftDataSpec`
* `roleARN` __:__ `String`


-}

createDataSourceFromRedshift :
  
    String ->
  
    RedshiftDataSpec ->
  
    String ->
  
  
    ( CreateDataSourceFromRedshiftOptions -> CreateDataSourceFromRedshiftOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDataSourceFromRedshiftOutput)

createDataSourceFromRedshift dataSourceId dataSpec roleARN setOptions =
    
    let
        requestInput = CreateDataSourceFromRedshiftInput
            
            dataSourceId
            
            options.dataSourceName
            
            dataSpec
            
            roleARN
            
            options.computeStatistics
            
        
        options = setOptions (CreateDataSourceFromRedshiftOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDataSourceFromRedshiftInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDataSourceFromRedshift"
                
                (AWS.Core.Decode.ResultDecoder "CreateDataSourceFromRedshiftOutput" createDataSourceFromRedshiftOutputDecoder)
                
            )



{-| Options for a createDataSourceFromRedshift request
-}
type alias CreateDataSourceFromRedshiftOptions =
    {
    dataSourceName : Maybe String,computeStatistics : Maybe Bool
    }



{-| <p>Creates a <code>DataSource</code> object. A <code>DataSource</code> references data that can be used to perform <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p> <p><code>CreateDataSourceFromS3</code> is an asynchronous operation. In response to <code>CreateDataSourceFromS3</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the <code>DataSource</code> has been created and is ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in the <code>COMPLETED</code> or <code>PENDING</code> state can be used to perform only <code>CreateMLModel</code>, <code>CreateEvaluation</code> or <code>CreateBatchPrediction</code> operations. </p> <p> If Amazon ML can't accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response. </p> <p>The observation data used in a <code>DataSource</code> should be ready to use; that is, it should have a consistent structure, and missing data values should be kept to a minimum. The observation data must reside in one or more .csv files in an Amazon Simple Storage Service (Amazon S3) location, along with a schema that describes the data items by name and type. The same schema must be used for all of the data files referenced by the <code>DataSource</code>. </p> <p>After the <code>DataSource</code> has been created, it's ready to use in evaluations and batch predictions. If you plan to use the <code>DataSource</code> to train an <code>MLModel</code>, the <code>DataSource</code> also needs a recipe. A recipe describes how each input variable will be used in training an <code>MLModel</code>. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.</p>

__Required Parameters__

* `dataSourceId` __:__ `String`
* `dataSpec` __:__ `S3DataSpec`


-}

createDataSourceFromS3 :
  
    String ->
  
    S3DataSpec ->
  
  
    ( CreateDataSourceFromS3Options -> CreateDataSourceFromS3Options ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDataSourceFromS3Output)

createDataSourceFromS3 dataSourceId dataSpec setOptions =
    
    let
        requestInput = CreateDataSourceFromS3Input
            
            dataSourceId
            
            options.dataSourceName
            
            dataSpec
            
            options.computeStatistics
            
        
        options = setOptions (CreateDataSourceFromS3Options Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createDataSourceFromS3InputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDataSourceFromS3"
                
                (AWS.Core.Decode.ResultDecoder "CreateDataSourceFromS3Output" createDataSourceFromS3OutputDecoder)
                
            )



{-| Options for a createDataSourceFromS3 request
-}
type alias CreateDataSourceFromS3Options =
    {
    dataSourceName : Maybe String,computeStatistics : Maybe Bool
    }



{-| <p>Creates a new <code>Evaluation</code> of an <code>MLModel</code>. An <code>MLModel</code> is evaluated on a set of observations associated to a <code>DataSource</code>. Like a <code>DataSource</code> for an <code>MLModel</code>, the <code>DataSource</code> for an <code>Evaluation</code> contains values for the <code>Target Variable</code>. The <code>Evaluation</code> compares the predicted result for each observation to the actual outcome and provides a summary so that you know how effective the <code>MLModel</code> functions on the test data. Evaluation generates a relevant performance metric, such as BinaryAUC, RegressionRMSE or MulticlassAvgFScore based on the corresponding <code>MLModelType</code>: <code>BINARY</code>, <code>REGRESSION</code> or <code>MULTICLASS</code>. </p> <p><code>CreateEvaluation</code> is an asynchronous operation. In response to <code>CreateEvaluation</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the evaluation status to <code>PENDING</code>. After the <code>Evaluation</code> is created and ready for use, Amazon ML sets the status to <code>COMPLETED</code>. </p> <p>You can use the <code>GetEvaluation</code> operation to check progress of the evaluation during the creation operation.</p>

__Required Parameters__

* `evaluationId` __:__ `String`
* `mLModelId` __:__ `String`
* `evaluationDataSourceId` __:__ `String`


-}

createEvaluation :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateEvaluationOptions -> CreateEvaluationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateEvaluationOutput)

createEvaluation evaluationId mLModelId evaluationDataSourceId setOptions =
    
    let
        requestInput = CreateEvaluationInput
            
            evaluationId
            
            options.evaluationName
            
            mLModelId
            
            evaluationDataSourceId
            
        
        options = setOptions (CreateEvaluationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createEvaluationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateEvaluation"
                
                (AWS.Core.Decode.ResultDecoder "CreateEvaluationOutput" createEvaluationOutputDecoder)
                
            )



{-| Options for a createEvaluation request
-}
type alias CreateEvaluationOptions =
    {
    evaluationName : Maybe String
    }



{-| <p>Creates a new <code>MLModel</code> using the <code>DataSource</code> and the recipe as information sources. </p> <p>An <code>MLModel</code> is nearly immutable. Users can update only the <code>MLModelName</code> and the <code>ScoreThreshold</code> in an <code>MLModel</code> without creating a new <code>MLModel</code>. </p> <p><code>CreateMLModel</code> is an asynchronous operation. In response to <code>CreateMLModel</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>MLModel</code> status to <code>PENDING</code>. After the <code>MLModel</code> has been created and ready is for use, Amazon ML sets the status to <code>COMPLETED</code>. </p> <p>You can use the <code>GetMLModel</code> operation to check the progress of the <code>MLModel</code> during the creation operation.</p> <p> <code>CreateMLModel</code> requires a <code>DataSource</code> with computed statistics, which can be created by setting <code>ComputeStatistics</code> to <code>true</code> in <code>CreateDataSourceFromRDS</code>, <code>CreateDataSourceFromS3</code>, or <code>CreateDataSourceFromRedshift</code> operations. </p>

__Required Parameters__

* `mLModelId` __:__ `String`
* `mLModelType` __:__ `MLModelType`
* `trainingDataSourceId` __:__ `String`


-}

createMLModel :
  
    String ->
  
    MLModelType ->
  
    String ->
  
  
    ( CreateMLModelOptions -> CreateMLModelOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateMLModelOutput)

createMLModel mLModelId mLModelType trainingDataSourceId setOptions =
    
    let
        requestInput = CreateMLModelInput
            
            mLModelId
            
            options.mLModelName
            
            mLModelType
            
            options.parameters
            
            trainingDataSourceId
            
            options.recipe
            
            options.recipeUri
            
        
        options = setOptions (CreateMLModelOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createMLModelInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateMLModel"
                
                (AWS.Core.Decode.ResultDecoder "CreateMLModelOutput" createMLModelOutputDecoder)
                
            )



{-| Options for a createMLModel request
-}
type alias CreateMLModelOptions =
    {
    mLModelName : Maybe String,parameters : Maybe (Dict String String),recipe : Maybe String,recipeUri : Maybe String
    }



{-| <p>Creates a real-time endpoint for the <code>MLModel</code>. The endpoint contains the URI of the <code>MLModel</code>; that is, the location to send real-time prediction requests for the specified <code>MLModel</code>.</p>

__Required Parameters__

* `mLModelId` __:__ `String`


-}

createRealtimeEndpoint :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRealtimeEndpointOutput)

createRealtimeEndpoint mLModelId =
    
    let
        requestInput = CreateRealtimeEndpointInput
            
            mLModelId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createRealtimeEndpointInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRealtimeEndpoint"
                
                (AWS.Core.Decode.ResultDecoder "CreateRealtimeEndpointOutput" createRealtimeEndpointOutputDecoder)
                
            )





{-| <p>Assigns the DELETED status to a <code>BatchPrediction</code>, rendering it unusable.</p> <p>After using the <code>DeleteBatchPrediction</code> operation, you can use the <a>GetBatchPrediction</a> operation to verify that the status of the <code>BatchPrediction</code> changed to DELETED.</p> <p><b>Caution:</b> The result of the <code>DeleteBatchPrediction</code> operation is irreversible.</p>

__Required Parameters__

* `batchPredictionId` __:__ `String`


-}

deleteBatchPrediction :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteBatchPredictionOutput)

deleteBatchPrediction batchPredictionId =
    
    let
        requestInput = DeleteBatchPredictionInput
            
            batchPredictionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteBatchPredictionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteBatchPrediction"
                
                (AWS.Core.Decode.ResultDecoder "DeleteBatchPredictionOutput" deleteBatchPredictionOutputDecoder)
                
            )





{-| <p>Assigns the DELETED status to a <code>DataSource</code>, rendering it unusable.</p> <p>After using the <code>DeleteDataSource</code> operation, you can use the <a>GetDataSource</a> operation to verify that the status of the <code>DataSource</code> changed to DELETED.</p> <p><b>Caution:</b> The results of the <code>DeleteDataSource</code> operation are irreversible.</p>

__Required Parameters__

* `dataSourceId` __:__ `String`


-}

deleteDataSource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDataSourceOutput)

deleteDataSource dataSourceId =
    
    let
        requestInput = DeleteDataSourceInput
            
            dataSourceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteDataSourceInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDataSource"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDataSourceOutput" deleteDataSourceOutputDecoder)
                
            )





{-| <p>Assigns the <code>DELETED</code> status to an <code>Evaluation</code>, rendering it unusable.</p> <p>After invoking the <code>DeleteEvaluation</code> operation, you can use the <code>GetEvaluation</code> operation to verify that the status of the <code>Evaluation</code> changed to <code>DELETED</code>.</p> <caution><title>Caution</title> <p>The results of the <code>DeleteEvaluation</code> operation are irreversible.</p></caution>

__Required Parameters__

* `evaluationId` __:__ `String`


-}

deleteEvaluation :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteEvaluationOutput)

deleteEvaluation evaluationId =
    
    let
        requestInput = DeleteEvaluationInput
            
            evaluationId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteEvaluationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteEvaluation"
                
                (AWS.Core.Decode.ResultDecoder "DeleteEvaluationOutput" deleteEvaluationOutputDecoder)
                
            )





{-| <p>Assigns the <code>DELETED</code> status to an <code>MLModel</code>, rendering it unusable.</p> <p>After using the <code>DeleteMLModel</code> operation, you can use the <code>GetMLModel</code> operation to verify that the status of the <code>MLModel</code> changed to DELETED.</p> <p><b>Caution:</b> The result of the <code>DeleteMLModel</code> operation is irreversible.</p>

__Required Parameters__

* `mLModelId` __:__ `String`


-}

deleteMLModel :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteMLModelOutput)

deleteMLModel mLModelId =
    
    let
        requestInput = DeleteMLModelInput
            
            mLModelId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteMLModelInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteMLModel"
                
                (AWS.Core.Decode.ResultDecoder "DeleteMLModelOutput" deleteMLModelOutputDecoder)
                
            )





{-| <p>Deletes a real time endpoint of an <code>MLModel</code>.</p>

__Required Parameters__

* `mLModelId` __:__ `String`


-}

deleteRealtimeEndpoint :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRealtimeEndpointOutput)

deleteRealtimeEndpoint mLModelId =
    
    let
        requestInput = DeleteRealtimeEndpointInput
            
            mLModelId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRealtimeEndpointInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRealtimeEndpoint"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRealtimeEndpointOutput" deleteRealtimeEndpointOutputDecoder)
                
            )





{-| <p>Deletes the specified tags associated with an ML object. After this operation is complete, you can't recover deleted tags.</p> <p>If you specify a tag that doesn't exist, Amazon ML ignores it.</p>

__Required Parameters__

* `tagKeys` __:__ `(List String)`
* `resourceId` __:__ `String`
* `resourceType` __:__ `TaggableResourceType`


-}

deleteTags :
  
    (List String) ->
  
    String ->
  
    TaggableResourceType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTagsOutput)

deleteTags tagKeys resourceId resourceType =
    
    let
        requestInput = DeleteTagsInput
            
            tagKeys
            
            resourceId
            
            resourceType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteTagsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteTags"
                
                (AWS.Core.Decode.ResultDecoder "DeleteTagsOutput" deleteTagsOutputDecoder)
                
            )





{-| <p>Returns a list of <code>BatchPrediction</code> operations that match the search criteria in the request.</p>

__Required Parameters__



-}

describeBatchPredictions :
  
  
    ( DescribeBatchPredictionsOptions -> DescribeBatchPredictionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeBatchPredictionsOutput)

describeBatchPredictions setOptions =
    
    let
        requestInput = DescribeBatchPredictionsInput
            
            options.filterVariable
            
            options.eQ
            
            options.gT
            
            options.lT
            
            options.gE
            
            options.lE
            
            options.nE
            
            options.prefix
            
            options.sortOrder
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (DescribeBatchPredictionsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeBatchPredictionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeBatchPredictions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeBatchPredictionsOutput" describeBatchPredictionsOutputDecoder)
                
            )



{-| Options for a describeBatchPredictions request
-}
type alias DescribeBatchPredictionsOptions =
    {
    filterVariable : Maybe BatchPredictionFilterVariable,eQ : Maybe String,gT : Maybe String,lT : Maybe String,gE : Maybe String,lE : Maybe String,nE : Maybe String,prefix : Maybe String,sortOrder : Maybe SortOrder,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Returns a list of <code>DataSource</code> that match the search criteria in the request.</p>

__Required Parameters__



-}

describeDataSources :
  
  
    ( DescribeDataSourcesOptions -> DescribeDataSourcesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDataSourcesOutput)

describeDataSources setOptions =
    
    let
        requestInput = DescribeDataSourcesInput
            
            options.filterVariable
            
            options.eQ
            
            options.gT
            
            options.lT
            
            options.gE
            
            options.lE
            
            options.nE
            
            options.prefix
            
            options.sortOrder
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (DescribeDataSourcesOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeDataSourcesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDataSources"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDataSourcesOutput" describeDataSourcesOutputDecoder)
                
            )



{-| Options for a describeDataSources request
-}
type alias DescribeDataSourcesOptions =
    {
    filterVariable : Maybe DataSourceFilterVariable,eQ : Maybe String,gT : Maybe String,lT : Maybe String,gE : Maybe String,lE : Maybe String,nE : Maybe String,prefix : Maybe String,sortOrder : Maybe SortOrder,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Returns a list of <code>DescribeEvaluations</code> that match the search criteria in the request.</p>

__Required Parameters__



-}

describeEvaluations :
  
  
    ( DescribeEvaluationsOptions -> DescribeEvaluationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEvaluationsOutput)

describeEvaluations setOptions =
    
    let
        requestInput = DescribeEvaluationsInput
            
            options.filterVariable
            
            options.eQ
            
            options.gT
            
            options.lT
            
            options.gE
            
            options.lE
            
            options.nE
            
            options.prefix
            
            options.sortOrder
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (DescribeEvaluationsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeEvaluationsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEvaluations"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEvaluationsOutput" describeEvaluationsOutputDecoder)
                
            )



{-| Options for a describeEvaluations request
-}
type alias DescribeEvaluationsOptions =
    {
    filterVariable : Maybe EvaluationFilterVariable,eQ : Maybe String,gT : Maybe String,lT : Maybe String,gE : Maybe String,lE : Maybe String,nE : Maybe String,prefix : Maybe String,sortOrder : Maybe SortOrder,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Returns a list of <code>MLModel</code> that match the search criteria in the request.</p>

__Required Parameters__



-}

describeMLModels :
  
  
    ( DescribeMLModelsOptions -> DescribeMLModelsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeMLModelsOutput)

describeMLModels setOptions =
    
    let
        requestInput = DescribeMLModelsInput
            
            options.filterVariable
            
            options.eQ
            
            options.gT
            
            options.lT
            
            options.gE
            
            options.lE
            
            options.nE
            
            options.prefix
            
            options.sortOrder
            
            options.nextToken
            
            options.limit
            
        
        options = setOptions (DescribeMLModelsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeMLModelsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeMLModels"
                
                (AWS.Core.Decode.ResultDecoder "DescribeMLModelsOutput" describeMLModelsOutputDecoder)
                
            )



{-| Options for a describeMLModels request
-}
type alias DescribeMLModelsOptions =
    {
    filterVariable : Maybe MLModelFilterVariable,eQ : Maybe String,gT : Maybe String,lT : Maybe String,gE : Maybe String,lE : Maybe String,nE : Maybe String,prefix : Maybe String,sortOrder : Maybe SortOrder,nextToken : Maybe String,limit : Maybe Int
    }



{-| <p>Describes one or more of the tags for your Amazon ML object.</p>

__Required Parameters__

* `resourceId` __:__ `String`
* `resourceType` __:__ `TaggableResourceType`


-}

describeTags :
  
    String ->
  
    TaggableResourceType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTagsOutput)

describeTags resourceId resourceType =
    
    let
        requestInput = DescribeTagsInput
            
            resourceId
            
            resourceType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeTagsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTags"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTagsOutput" describeTagsOutputDecoder)
                
            )





{-| <p>Returns a <code>BatchPrediction</code> that includes detailed metadata, status, and data file information for a <code>Batch Prediction</code> request.</p>

__Required Parameters__

* `batchPredictionId` __:__ `String`


-}

getBatchPrediction :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBatchPredictionOutput)

getBatchPrediction batchPredictionId =
    
    let
        requestInput = GetBatchPredictionInput
            
            batchPredictionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getBatchPredictionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetBatchPrediction"
                
                (AWS.Core.Decode.ResultDecoder "GetBatchPredictionOutput" getBatchPredictionOutputDecoder)
                
            )





{-| <p>Returns a <code>DataSource</code> that includes metadata and data file information, as well as the current status of the <code>DataSource</code>.</p> <p><code>GetDataSource</code> provides results in normal or verbose format. The verbose format adds the schema description and the list of files pointed to by the DataSource to the normal format.</p>

__Required Parameters__

* `dataSourceId` __:__ `String`


-}

getDataSource :
  
    String ->
  
  
    ( GetDataSourceOptions -> GetDataSourceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDataSourceOutput)

getDataSource dataSourceId setOptions =
    
    let
        requestInput = GetDataSourceInput
            
            dataSourceId
            
            options.verbose
            
        
        options = setOptions (GetDataSourceOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDataSourceInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDataSource"
                
                (AWS.Core.Decode.ResultDecoder "GetDataSourceOutput" getDataSourceOutputDecoder)
                
            )



{-| Options for a getDataSource request
-}
type alias GetDataSourceOptions =
    {
    verbose : Maybe Bool
    }



{-| <p>Returns an <code>Evaluation</code> that includes metadata as well as the current status of the <code>Evaluation</code>.</p>

__Required Parameters__

* `evaluationId` __:__ `String`


-}

getEvaluation :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetEvaluationOutput)

getEvaluation evaluationId =
    
    let
        requestInput = GetEvaluationInput
            
            evaluationId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getEvaluationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetEvaluation"
                
                (AWS.Core.Decode.ResultDecoder "GetEvaluationOutput" getEvaluationOutputDecoder)
                
            )





{-| <p>Returns an <code>MLModel</code> that includes detailed metadata, data source information, and the current status of the <code>MLModel</code>.</p> <p><code>GetMLModel</code> provides results in normal or verbose format. </p>

__Required Parameters__

* `mLModelId` __:__ `String`


-}

getMLModel :
  
    String ->
  
  
    ( GetMLModelOptions -> GetMLModelOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetMLModelOutput)

getMLModel mLModelId setOptions =
    
    let
        requestInput = GetMLModelInput
            
            mLModelId
            
            options.verbose
            
        
        options = setOptions (GetMLModelOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getMLModelInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetMLModel"
                
                (AWS.Core.Decode.ResultDecoder "GetMLModelOutput" getMLModelOutputDecoder)
                
            )



{-| Options for a getMLModel request
-}
type alias GetMLModelOptions =
    {
    verbose : Maybe Bool
    }



{-| <p>Generates a prediction for the observation using the specified <code>ML Model</code>.</p> <note><title>Note</title> <p>Not all response parameters will be populated. Whether a response parameter is populated depends on the type of model requested.</p></note>

__Required Parameters__

* `mLModelId` __:__ `String`
* `record` __:__ `(Dict String String)`
* `predictEndpoint` __:__ `String`


-}

predict :
  
    String ->
  
    (Dict String String) ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PredictOutput)

predict mLModelId record predictEndpoint =
    
    let
        requestInput = PredictInput
            
            mLModelId
            
            record
            
            predictEndpoint
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> predictInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "Predict"
                
                (AWS.Core.Decode.ResultDecoder "PredictOutput" predictOutputDecoder)
                
            )





{-| <p>Updates the <code>BatchPredictionName</code> of a <code>BatchPrediction</code>.</p> <p>You can use the <code>GetBatchPrediction</code> operation to view the contents of the updated data element.</p>

__Required Parameters__

* `batchPredictionId` __:__ `String`
* `batchPredictionName` __:__ `String`


-}

updateBatchPrediction :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateBatchPredictionOutput)

updateBatchPrediction batchPredictionId batchPredictionName =
    
    let
        requestInput = UpdateBatchPredictionInput
            
            batchPredictionId
            
            batchPredictionName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateBatchPredictionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateBatchPrediction"
                
                (AWS.Core.Decode.ResultDecoder "UpdateBatchPredictionOutput" updateBatchPredictionOutputDecoder)
                
            )





{-| <p>Updates the <code>DataSourceName</code> of a <code>DataSource</code>.</p> <p>You can use the <code>GetDataSource</code> operation to view the contents of the updated data element.</p>

__Required Parameters__

* `dataSourceId` __:__ `String`
* `dataSourceName` __:__ `String`


-}

updateDataSource :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDataSourceOutput)

updateDataSource dataSourceId dataSourceName =
    
    let
        requestInput = UpdateDataSourceInput
            
            dataSourceId
            
            dataSourceName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateDataSourceInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateDataSource"
                
                (AWS.Core.Decode.ResultDecoder "UpdateDataSourceOutput" updateDataSourceOutputDecoder)
                
            )





{-| <p>Updates the <code>EvaluationName</code> of an <code>Evaluation</code>.</p> <p>You can use the <code>GetEvaluation</code> operation to view the contents of the updated data element.</p>

__Required Parameters__

* `evaluationId` __:__ `String`
* `evaluationName` __:__ `String`


-}

updateEvaluation :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateEvaluationOutput)

updateEvaluation evaluationId evaluationName =
    
    let
        requestInput = UpdateEvaluationInput
            
            evaluationId
            
            evaluationName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateEvaluationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateEvaluation"
                
                (AWS.Core.Decode.ResultDecoder "UpdateEvaluationOutput" updateEvaluationOutputDecoder)
                
            )





{-| <p>Updates the <code>MLModelName</code> and the <code>ScoreThreshold</code> of an <code>MLModel</code>.</p> <p>You can use the <code>GetMLModel</code> operation to view the contents of the updated data element.</p>

__Required Parameters__

* `mLModelId` __:__ `String`


-}

updateMLModel :
  
    String ->
  
  
    ( UpdateMLModelOptions -> UpdateMLModelOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateMLModelOutput)

updateMLModel mLModelId setOptions =
    
    let
        requestInput = UpdateMLModelInput
            
            mLModelId
            
            options.mLModelName
            
            options.scoreThreshold
            
        
        options = setOptions (UpdateMLModelOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateMLModelInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateMLModel"
                
                (AWS.Core.Decode.ResultDecoder "UpdateMLModelOutput" updateMLModelOutputDecoder)
                
            )



{-| Options for a updateMLModel request
-}
type alias UpdateMLModelOptions =
    {
    mLModelName : Maybe String,scoreThreshold : Maybe Float
    }




{-| Type of HTTP response from addTa
-}
type alias AddTagsOutput =
    { resourceId : Maybe String
    , resourceType : Maybe TaggableResourceType
    }



addTagsOutputDecoder : JD.Decoder AddTagsOutput
addTagsOutputDecoder =
    JD.succeed AddTagsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceId", "resourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceType", "resourceType"]
            taggableResourceTypeDecoder
        )
        




addTagsOutputToString : AddTagsOutput -> String -- List (String, String)
addTagsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.toList
    ""



{-| One of

* `Algorithm_sgd`

-}
type Algorithm
    = Algorithm_sgd



algorithmDecoder : JD.Decoder Algorithm
algorithmDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "sgd" ->
                        JD.succeed Algorithm_sgd


                    _ ->
                        JD.fail "bad thing"
            )




algorithmToString : Algorithm -> String
algorithmToString val =
    case val of
        Algorithm_sgd ->
            "sgd"




{-| <p> Represents the output of a <code>GetBatchPrediction</code> operation.</p> <p> The content consists of the detailed metadata, the status, and the data file information of a <code>Batch Prediction</code>.</p>
-}
type alias BatchPrediction =
    { batchPredictionId : Maybe String
    , mLModelId : Maybe String
    , batchPredictionDataSourceId : Maybe String
    , inputDataLocationS3 : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Posix
    , lastUpdatedAt : Maybe Posix
    , name : Maybe String
    , status : Maybe EntityStatus
    , outputUri : Maybe String
    , message : Maybe String
    , computeTime : Maybe Int
    , finishedAt : Maybe Posix
    , startedAt : Maybe Posix
    , totalRecordCount : Maybe Int
    , invalidRecordCount : Maybe Int
    }



batchPredictionDecoder : JD.Decoder BatchPrediction
batchPredictionDecoder =
    JD.succeed BatchPrediction
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BatchPredictionId", "batchPredictionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelId", "mLModelId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BatchPredictionDataSourceId", "batchPredictionDataSourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputDataLocationS3", "inputDataLocationS3"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedByIamUser", "createdByIamUser"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedAt", "lastUpdatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            entityStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OutputUri", "outputUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeTime", "computeTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FinishedAt", "finishedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartedAt", "startedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TotalRecordCount", "totalRecordCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InvalidRecordCount", "invalidRecordCount"]
            JD.int
        )
        




batchPredictionToString : BatchPrediction -> String -- List (String, String)
batchPredictionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "batchPredictionId" "" -- val.batchPredictionId
        
    --     |> Dict.insert
    --         "mLModelId" "" -- val.mLModelId
        
    --     |> Dict.insert
    --         "batchPredictionDataSourceId" "" -- val.batchPredictionDataSourceId
        
    --     |> Dict.insert
    --         "inputDataLocationS3" "" -- val.inputDataLocationS3
        
    --     |> Dict.insert
    --         "createdByIamUser" "" -- val.createdByIamUser
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "lastUpdatedAt" "" -- val.lastUpdatedAt
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "outputUri" "" -- val.outputUri
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "computeTime" "" -- val.computeTime
        
    --     |> Dict.insert
    --         "finishedAt" "" -- val.finishedAt
        
    --     |> Dict.insert
    --         "startedAt" "" -- val.startedAt
        
    --     |> Dict.insert
    --         "totalRecordCount" "" -- val.totalRecordCount
        
    --     |> Dict.insert
    --         "invalidRecordCount" "" -- val.invalidRecordCount
        
    --     |> Dict.toList
    ""



{-| One of

* `BatchPredictionFilterVariable_CreatedAt`
* `BatchPredictionFilterVariable_LastUpdatedAt`
* `BatchPredictionFilterVariable_Status`
* `BatchPredictionFilterVariable_Name`
* `BatchPredictionFilterVariable_IAMUser`
* `BatchPredictionFilterVariable_MLModelId`
* `BatchPredictionFilterVariable_DataSourceId`
* `BatchPredictionFilterVariable_DataURI`

-}
type BatchPredictionFilterVariable
    = BatchPredictionFilterVariable_CreatedAt
    | BatchPredictionFilterVariable_LastUpdatedAt
    | BatchPredictionFilterVariable_Status
    | BatchPredictionFilterVariable_Name
    | BatchPredictionFilterVariable_IAMUser
    | BatchPredictionFilterVariable_MLModelId
    | BatchPredictionFilterVariable_DataSourceId
    | BatchPredictionFilterVariable_DataURI



batchPredictionFilterVariableDecoder : JD.Decoder BatchPredictionFilterVariable
batchPredictionFilterVariableDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CreatedAt" ->
                        JD.succeed BatchPredictionFilterVariable_CreatedAt

                    "LastUpdatedAt" ->
                        JD.succeed BatchPredictionFilterVariable_LastUpdatedAt

                    "Status" ->
                        JD.succeed BatchPredictionFilterVariable_Status

                    "Name" ->
                        JD.succeed BatchPredictionFilterVariable_Name

                    "IAMUser" ->
                        JD.succeed BatchPredictionFilterVariable_IAMUser

                    "MLModelId" ->
                        JD.succeed BatchPredictionFilterVariable_MLModelId

                    "DataSourceId" ->
                        JD.succeed BatchPredictionFilterVariable_DataSourceId

                    "DataURI" ->
                        JD.succeed BatchPredictionFilterVariable_DataURI


                    _ ->
                        JD.fail "bad thing"
            )




batchPredictionFilterVariableToString : BatchPredictionFilterVariable -> String
batchPredictionFilterVariableToString val =
    case val of
        BatchPredictionFilterVariable_CreatedAt ->
            "CreatedAt"

        BatchPredictionFilterVariable_LastUpdatedAt ->
            "LastUpdatedAt"

        BatchPredictionFilterVariable_Status ->
            "Status"

        BatchPredictionFilterVariable_Name ->
            "Name"

        BatchPredictionFilterVariable_IAMUser ->
            "IAMUser"

        BatchPredictionFilterVariable_MLModelId ->
            "MLModelId"

        BatchPredictionFilterVariable_DataSourceId ->
            "DataSourceId"

        BatchPredictionFilterVariable_DataURI ->
            "DataURI"




{-| Type of HTTP response from createBatchPredicti
-}
type alias CreateBatchPredictionOutput =
    { batchPredictionId : Maybe String
    }



createBatchPredictionOutputDecoder : JD.Decoder CreateBatchPredictionOutput
createBatchPredictionOutputDecoder =
    JD.succeed CreateBatchPredictionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BatchPredictionId", "batchPredictionId"]
            JD.string
        )
        




createBatchPredictionOutputToString : CreateBatchPredictionOutput -> String -- List (String, String)
createBatchPredictionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "batchPredictionId" "" -- val.batchPredictionId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDataSourceFromR
-}
type alias CreateDataSourceFromRDSOutput =
    { dataSourceId : Maybe String
    }



createDataSourceFromRDSOutputDecoder : JD.Decoder CreateDataSourceFromRDSOutput
createDataSourceFromRDSOutputDecoder =
    JD.succeed CreateDataSourceFromRDSOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSourceId", "dataSourceId"]
            JD.string
        )
        




createDataSourceFromRDSOutputToString : CreateDataSourceFromRDSOutput -> String -- List (String, String)
createDataSourceFromRDSOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataSourceId" "" -- val.dataSourceId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDataSourceFromRedshi
-}
type alias CreateDataSourceFromRedshiftOutput =
    { dataSourceId : Maybe String
    }



createDataSourceFromRedshiftOutputDecoder : JD.Decoder CreateDataSourceFromRedshiftOutput
createDataSourceFromRedshiftOutputDecoder =
    JD.succeed CreateDataSourceFromRedshiftOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSourceId", "dataSourceId"]
            JD.string
        )
        




createDataSourceFromRedshiftOutputToString : CreateDataSourceFromRedshiftOutput -> String -- List (String, String)
createDataSourceFromRedshiftOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataSourceId" "" -- val.dataSourceId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDataSourceFrom
-}
type alias CreateDataSourceFromS3Output =
    { dataSourceId : Maybe String
    }



createDataSourceFromS3OutputDecoder : JD.Decoder CreateDataSourceFromS3Output
createDataSourceFromS3OutputDecoder =
    JD.succeed CreateDataSourceFromS3Output
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSourceId", "dataSourceId"]
            JD.string
        )
        




createDataSourceFromS3OutputToString : CreateDataSourceFromS3Output -> String -- List (String, String)
createDataSourceFromS3OutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataSourceId" "" -- val.dataSourceId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createEvaluati
-}
type alias CreateEvaluationOutput =
    { evaluationId : Maybe String
    }



createEvaluationOutputDecoder : JD.Decoder CreateEvaluationOutput
createEvaluationOutputDecoder =
    JD.succeed CreateEvaluationOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EvaluationId", "evaluationId"]
            JD.string
        )
        




createEvaluationOutputToString : CreateEvaluationOutput -> String -- List (String, String)
createEvaluationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "evaluationId" "" -- val.evaluationId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createMLMod
-}
type alias CreateMLModelOutput =
    { mLModelId : Maybe String
    }



createMLModelOutputDecoder : JD.Decoder CreateMLModelOutput
createMLModelOutputDecoder =
    JD.succeed CreateMLModelOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelId", "mLModelId"]
            JD.string
        )
        




createMLModelOutputToString : CreateMLModelOutput -> String -- List (String, String)
createMLModelOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "mLModelId" "" -- val.mLModelId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createRealtimeEndpoi
-}
type alias CreateRealtimeEndpointOutput =
    { mLModelId : Maybe String
    , realtimeEndpointInfo : Maybe RealtimeEndpointInfo
    }



createRealtimeEndpointOutputDecoder : JD.Decoder CreateRealtimeEndpointOutput
createRealtimeEndpointOutputDecoder =
    JD.succeed CreateRealtimeEndpointOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelId", "mLModelId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RealtimeEndpointInfo", "realtimeEndpointInfo"]
            realtimeEndpointInfoDecoder
        )
        




createRealtimeEndpointOutputToString : CreateRealtimeEndpointOutput -> String -- List (String, String)
createRealtimeEndpointOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "mLModelId" "" -- val.mLModelId
        
    --     |> Dict.insert
    --         "realtimeEndpointInfo" "" -- val.realtimeEndpointInfo
        
    --     |> Dict.toList
    ""



{-| <p> Represents the output of the <code>GetDataSource</code> operation. </p> <p> The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>
-}
type alias DataSource =
    { dataSourceId : Maybe String
    , dataLocationS3 : Maybe String
    , dataRearrangement : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Posix
    , lastUpdatedAt : Maybe Posix
    , dataSizeInBytes : Maybe Int
    , numberOfFiles : Maybe Int
    , name : Maybe String
    , status : Maybe EntityStatus
    , message : Maybe String
    , redshiftMetadata : Maybe RedshiftMetadata
    , rDSMetadata : Maybe RDSMetadata
    , roleARN : Maybe String
    , computeStatistics : Maybe Bool
    , computeTime : Maybe Int
    , finishedAt : Maybe Posix
    , startedAt : Maybe Posix
    }



dataSourceDecoder : JD.Decoder DataSource
dataSourceDecoder =
    JD.succeed DataSource
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSourceId", "dataSourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataLocationS3", "dataLocationS3"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataRearrangement", "dataRearrangement"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedByIamUser", "createdByIamUser"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedAt", "lastUpdatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSizeInBytes", "dataSizeInBytes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfFiles", "numberOfFiles"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            entityStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RedshiftMetadata", "redshiftMetadata"]
            redshiftMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RDSMetadata", "rDSMetadata"]
            rDSMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeStatistics", "computeStatistics"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeTime", "computeTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FinishedAt", "finishedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartedAt", "startedAt"]
            JDX.datetime
        )
        




dataSourceToString : DataSource -> String -- List (String, String)
dataSourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataSourceId" "" -- val.dataSourceId
        
    --     |> Dict.insert
    --         "dataLocationS3" "" -- val.dataLocationS3
        
    --     |> Dict.insert
    --         "dataRearrangement" "" -- val.dataRearrangement
        
    --     |> Dict.insert
    --         "createdByIamUser" "" -- val.createdByIamUser
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "lastUpdatedAt" "" -- val.lastUpdatedAt
        
    --     |> Dict.insert
    --         "dataSizeInBytes" "" -- val.dataSizeInBytes
        
    --     |> Dict.insert
    --         "numberOfFiles" "" -- val.numberOfFiles
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "redshiftMetadata" "" -- val.redshiftMetadata
        
    --     |> Dict.insert
    --         "rDSMetadata" "" -- val.rDSMetadata
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "computeStatistics" "" -- val.computeStatistics
        
    --     |> Dict.insert
    --         "computeTime" "" -- val.computeTime
        
    --     |> Dict.insert
    --         "finishedAt" "" -- val.finishedAt
        
    --     |> Dict.insert
    --         "startedAt" "" -- val.startedAt
        
    --     |> Dict.toList
    ""



{-| One of

* `DataSourceFilterVariable_CreatedAt`
* `DataSourceFilterVariable_LastUpdatedAt`
* `DataSourceFilterVariable_Status`
* `DataSourceFilterVariable_Name`
* `DataSourceFilterVariable_DataLocationS3`
* `DataSourceFilterVariable_IAMUser`

-}
type DataSourceFilterVariable
    = DataSourceFilterVariable_CreatedAt
    | DataSourceFilterVariable_LastUpdatedAt
    | DataSourceFilterVariable_Status
    | DataSourceFilterVariable_Name
    | DataSourceFilterVariable_DataLocationS3
    | DataSourceFilterVariable_IAMUser



dataSourceFilterVariableDecoder : JD.Decoder DataSourceFilterVariable
dataSourceFilterVariableDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CreatedAt" ->
                        JD.succeed DataSourceFilterVariable_CreatedAt

                    "LastUpdatedAt" ->
                        JD.succeed DataSourceFilterVariable_LastUpdatedAt

                    "Status" ->
                        JD.succeed DataSourceFilterVariable_Status

                    "Name" ->
                        JD.succeed DataSourceFilterVariable_Name

                    "DataLocationS3" ->
                        JD.succeed DataSourceFilterVariable_DataLocationS3

                    "IAMUser" ->
                        JD.succeed DataSourceFilterVariable_IAMUser


                    _ ->
                        JD.fail "bad thing"
            )




dataSourceFilterVariableToString : DataSourceFilterVariable -> String
dataSourceFilterVariableToString val =
    case val of
        DataSourceFilterVariable_CreatedAt ->
            "CreatedAt"

        DataSourceFilterVariable_LastUpdatedAt ->
            "LastUpdatedAt"

        DataSourceFilterVariable_Status ->
            "Status"

        DataSourceFilterVariable_Name ->
            "Name"

        DataSourceFilterVariable_DataLocationS3 ->
            "DataLocationS3"

        DataSourceFilterVariable_IAMUser ->
            "IAMUser"




{-| Type of HTTP response from deleteBatchPredicti
-}
type alias DeleteBatchPredictionOutput =
    { batchPredictionId : Maybe String
    }



deleteBatchPredictionOutputDecoder : JD.Decoder DeleteBatchPredictionOutput
deleteBatchPredictionOutputDecoder =
    JD.succeed DeleteBatchPredictionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BatchPredictionId", "batchPredictionId"]
            JD.string
        )
        




deleteBatchPredictionOutputToString : DeleteBatchPredictionOutput -> String -- List (String, String)
deleteBatchPredictionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "batchPredictionId" "" -- val.batchPredictionId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDataSour
-}
type alias DeleteDataSourceOutput =
    { dataSourceId : Maybe String
    }



deleteDataSourceOutputDecoder : JD.Decoder DeleteDataSourceOutput
deleteDataSourceOutputDecoder =
    JD.succeed DeleteDataSourceOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSourceId", "dataSourceId"]
            JD.string
        )
        




deleteDataSourceOutputToString : DeleteDataSourceOutput -> String -- List (String, String)
deleteDataSourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataSourceId" "" -- val.dataSourceId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteEvaluati
-}
type alias DeleteEvaluationOutput =
    { evaluationId : Maybe String
    }



deleteEvaluationOutputDecoder : JD.Decoder DeleteEvaluationOutput
deleteEvaluationOutputDecoder =
    JD.succeed DeleteEvaluationOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EvaluationId", "evaluationId"]
            JD.string
        )
        




deleteEvaluationOutputToString : DeleteEvaluationOutput -> String -- List (String, String)
deleteEvaluationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "evaluationId" "" -- val.evaluationId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteMLMod
-}
type alias DeleteMLModelOutput =
    { mLModelId : Maybe String
    }



deleteMLModelOutputDecoder : JD.Decoder DeleteMLModelOutput
deleteMLModelOutputDecoder =
    JD.succeed DeleteMLModelOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelId", "mLModelId"]
            JD.string
        )
        




deleteMLModelOutputToString : DeleteMLModelOutput -> String -- List (String, String)
deleteMLModelOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "mLModelId" "" -- val.mLModelId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteRealtimeEndpoi
-}
type alias DeleteRealtimeEndpointOutput =
    { mLModelId : Maybe String
    , realtimeEndpointInfo : Maybe RealtimeEndpointInfo
    }



deleteRealtimeEndpointOutputDecoder : JD.Decoder DeleteRealtimeEndpointOutput
deleteRealtimeEndpointOutputDecoder =
    JD.succeed DeleteRealtimeEndpointOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelId", "mLModelId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RealtimeEndpointInfo", "realtimeEndpointInfo"]
            realtimeEndpointInfoDecoder
        )
        




deleteRealtimeEndpointOutputToString : DeleteRealtimeEndpointOutput -> String -- List (String, String)
deleteRealtimeEndpointOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "mLModelId" "" -- val.mLModelId
        
    --     |> Dict.insert
    --         "realtimeEndpointInfo" "" -- val.realtimeEndpointInfo
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteTa
-}
type alias DeleteTagsOutput =
    { resourceId : Maybe String
    , resourceType : Maybe TaggableResourceType
    }



deleteTagsOutputDecoder : JD.Decoder DeleteTagsOutput
deleteTagsOutputDecoder =
    JD.succeed DeleteTagsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceId", "resourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceType", "resourceType"]
            taggableResourceTypeDecoder
        )
        




deleteTagsOutputToString : DeleteTagsOutput -> String -- List (String, String)
deleteTagsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeBatchPredictio
-}
type alias DescribeBatchPredictionsOutput =
    { results : Maybe (List BatchPrediction)
    , nextToken : Maybe String
    }



describeBatchPredictionsOutputDecoder : JD.Decoder DescribeBatchPredictionsOutput
describeBatchPredictionsOutputDecoder =
    JD.succeed DescribeBatchPredictionsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Results", "results"]
            (JD.list batchPredictionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeBatchPredictionsOutputToString : DescribeBatchPredictionsOutput -> String -- List (String, String)
describeBatchPredictionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "results" "" -- val.results
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeDataSourc
-}
type alias DescribeDataSourcesOutput =
    { results : Maybe (List DataSource)
    , nextToken : Maybe String
    }



describeDataSourcesOutputDecoder : JD.Decoder DescribeDataSourcesOutput
describeDataSourcesOutputDecoder =
    JD.succeed DescribeDataSourcesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Results", "results"]
            (JD.list dataSourceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeDataSourcesOutputToString : DescribeDataSourcesOutput -> String -- List (String, String)
describeDataSourcesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "results" "" -- val.results
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEvaluatio
-}
type alias DescribeEvaluationsOutput =
    { results : Maybe (List Evaluation)
    , nextToken : Maybe String
    }



describeEvaluationsOutputDecoder : JD.Decoder DescribeEvaluationsOutput
describeEvaluationsOutputDecoder =
    JD.succeed DescribeEvaluationsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Results", "results"]
            (JD.list evaluationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeEvaluationsOutputToString : DescribeEvaluationsOutput -> String -- List (String, String)
describeEvaluationsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "results" "" -- val.results
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeMLMode
-}
type alias DescribeMLModelsOutput =
    { results : Maybe (List MLModel)
    , nextToken : Maybe String
    }



describeMLModelsOutputDecoder : JD.Decoder DescribeMLModelsOutput
describeMLModelsOutputDecoder =
    JD.succeed DescribeMLModelsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Results", "results"]
            (JD.list mLModelDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeMLModelsOutputToString : DescribeMLModelsOutput -> String -- List (String, String)
describeMLModelsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "results" "" -- val.results
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTa
-}
type alias DescribeTagsOutput =
    { resourceId : Maybe String
    , resourceType : Maybe TaggableResourceType
    , tags : Maybe (List Tag)
    }



describeTagsOutputDecoder : JD.Decoder DescribeTagsOutput
describeTagsOutputDecoder =
    JD.succeed DescribeTagsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceId", "resourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceType", "resourceType"]
            taggableResourceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        




describeTagsOutputToString : DescribeTagsOutput -> String -- List (String, String)
describeTagsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| One of

* `DetailsAttributes_PredictiveModelType`
* `DetailsAttributes_Algorithm`

-}
type DetailsAttributes
    = DetailsAttributes_PredictiveModelType
    | DetailsAttributes_Algorithm



detailsAttributesDecoder : JD.Decoder DetailsAttributes
detailsAttributesDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PredictiveModelType" ->
                        JD.succeed DetailsAttributes_PredictiveModelType

                    "Algorithm" ->
                        JD.succeed DetailsAttributes_Algorithm


                    _ ->
                        JD.fail "bad thing"
            )




detailsAttributesToString : DetailsAttributes -> String
detailsAttributesToString val =
    case val of
        DetailsAttributes_PredictiveModelType ->
            "PredictiveModelType"

        DetailsAttributes_Algorithm ->
            "Algorithm"




{-| One of

* `EntityStatus_PENDING`
* `EntityStatus_INPROGRESS`
* `EntityStatus_FAILED`
* `EntityStatus_COMPLETED`
* `EntityStatus_DELETED`

-}
type EntityStatus
    = EntityStatus_PENDING
    | EntityStatus_INPROGRESS
    | EntityStatus_FAILED
    | EntityStatus_COMPLETED
    | EntityStatus_DELETED



entityStatusDecoder : JD.Decoder EntityStatus
entityStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed EntityStatus_PENDING

                    "INPROGRESS" ->
                        JD.succeed EntityStatus_INPROGRESS

                    "FAILED" ->
                        JD.succeed EntityStatus_FAILED

                    "COMPLETED" ->
                        JD.succeed EntityStatus_COMPLETED

                    "DELETED" ->
                        JD.succeed EntityStatus_DELETED


                    _ ->
                        JD.fail "bad thing"
            )




entityStatusToString : EntityStatus -> String
entityStatusToString val =
    case val of
        EntityStatus_PENDING ->
            "PENDING"

        EntityStatus_INPROGRESS ->
            "INPROGRESS"

        EntityStatus_FAILED ->
            "FAILED"

        EntityStatus_COMPLETED ->
            "COMPLETED"

        EntityStatus_DELETED ->
            "DELETED"




{-| <p> Represents the output of <code>GetEvaluation</code> operation. </p> <p>The content consists of the detailed metadata and data file information and the current status of the <code>Evaluation</code>.</p>
-}
type alias Evaluation =
    { evaluationId : Maybe String
    , mLModelId : Maybe String
    , evaluationDataSourceId : Maybe String
    , inputDataLocationS3 : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Posix
    , lastUpdatedAt : Maybe Posix
    , name : Maybe String
    , status : Maybe EntityStatus
    , performanceMetrics : Maybe PerformanceMetrics
    , message : Maybe String
    , computeTime : Maybe Int
    , finishedAt : Maybe Posix
    , startedAt : Maybe Posix
    }



evaluationDecoder : JD.Decoder Evaluation
evaluationDecoder =
    JD.succeed Evaluation
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EvaluationId", "evaluationId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelId", "mLModelId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EvaluationDataSourceId", "evaluationDataSourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputDataLocationS3", "inputDataLocationS3"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedByIamUser", "createdByIamUser"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedAt", "lastUpdatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            entityStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PerformanceMetrics", "performanceMetrics"]
            performanceMetricsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeTime", "computeTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FinishedAt", "finishedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartedAt", "startedAt"]
            JDX.datetime
        )
        




evaluationToString : Evaluation -> String -- List (String, String)
evaluationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "evaluationId" "" -- val.evaluationId
        
    --     |> Dict.insert
    --         "mLModelId" "" -- val.mLModelId
        
    --     |> Dict.insert
    --         "evaluationDataSourceId" "" -- val.evaluationDataSourceId
        
    --     |> Dict.insert
    --         "inputDataLocationS3" "" -- val.inputDataLocationS3
        
    --     |> Dict.insert
    --         "createdByIamUser" "" -- val.createdByIamUser
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "lastUpdatedAt" "" -- val.lastUpdatedAt
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "performanceMetrics" "" -- val.performanceMetrics
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "computeTime" "" -- val.computeTime
        
    --     |> Dict.insert
    --         "finishedAt" "" -- val.finishedAt
        
    --     |> Dict.insert
    --         "startedAt" "" -- val.startedAt
        
    --     |> Dict.toList
    ""



{-| One of

* `EvaluationFilterVariable_CreatedAt`
* `EvaluationFilterVariable_LastUpdatedAt`
* `EvaluationFilterVariable_Status`
* `EvaluationFilterVariable_Name`
* `EvaluationFilterVariable_IAMUser`
* `EvaluationFilterVariable_MLModelId`
* `EvaluationFilterVariable_DataSourceId`
* `EvaluationFilterVariable_DataURI`

-}
type EvaluationFilterVariable
    = EvaluationFilterVariable_CreatedAt
    | EvaluationFilterVariable_LastUpdatedAt
    | EvaluationFilterVariable_Status
    | EvaluationFilterVariable_Name
    | EvaluationFilterVariable_IAMUser
    | EvaluationFilterVariable_MLModelId
    | EvaluationFilterVariable_DataSourceId
    | EvaluationFilterVariable_DataURI



evaluationFilterVariableDecoder : JD.Decoder EvaluationFilterVariable
evaluationFilterVariableDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CreatedAt" ->
                        JD.succeed EvaluationFilterVariable_CreatedAt

                    "LastUpdatedAt" ->
                        JD.succeed EvaluationFilterVariable_LastUpdatedAt

                    "Status" ->
                        JD.succeed EvaluationFilterVariable_Status

                    "Name" ->
                        JD.succeed EvaluationFilterVariable_Name

                    "IAMUser" ->
                        JD.succeed EvaluationFilterVariable_IAMUser

                    "MLModelId" ->
                        JD.succeed EvaluationFilterVariable_MLModelId

                    "DataSourceId" ->
                        JD.succeed EvaluationFilterVariable_DataSourceId

                    "DataURI" ->
                        JD.succeed EvaluationFilterVariable_DataURI


                    _ ->
                        JD.fail "bad thing"
            )




evaluationFilterVariableToString : EvaluationFilterVariable -> String
evaluationFilterVariableToString val =
    case val of
        EvaluationFilterVariable_CreatedAt ->
            "CreatedAt"

        EvaluationFilterVariable_LastUpdatedAt ->
            "LastUpdatedAt"

        EvaluationFilterVariable_Status ->
            "Status"

        EvaluationFilterVariable_Name ->
            "Name"

        EvaluationFilterVariable_IAMUser ->
            "IAMUser"

        EvaluationFilterVariable_MLModelId ->
            "MLModelId"

        EvaluationFilterVariable_DataSourceId ->
            "DataSourceId"

        EvaluationFilterVariable_DataURI ->
            "DataURI"




{-| Type of HTTP response from getBatchPredicti
-}
type alias GetBatchPredictionOutput =
    { batchPredictionId : Maybe String
    , mLModelId : Maybe String
    , batchPredictionDataSourceId : Maybe String
    , inputDataLocationS3 : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Posix
    , lastUpdatedAt : Maybe Posix
    , name : Maybe String
    , status : Maybe EntityStatus
    , outputUri : Maybe String
    , logUri : Maybe String
    , message : Maybe String
    , computeTime : Maybe Int
    , finishedAt : Maybe Posix
    , startedAt : Maybe Posix
    , totalRecordCount : Maybe Int
    , invalidRecordCount : Maybe Int
    }



getBatchPredictionOutputDecoder : JD.Decoder GetBatchPredictionOutput
getBatchPredictionOutputDecoder =
    JD.succeed GetBatchPredictionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BatchPredictionId", "batchPredictionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelId", "mLModelId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BatchPredictionDataSourceId", "batchPredictionDataSourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputDataLocationS3", "inputDataLocationS3"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedByIamUser", "createdByIamUser"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedAt", "lastUpdatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            entityStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OutputUri", "outputUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogUri", "logUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeTime", "computeTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FinishedAt", "finishedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartedAt", "startedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TotalRecordCount", "totalRecordCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InvalidRecordCount", "invalidRecordCount"]
            JD.int
        )
        




getBatchPredictionOutputToString : GetBatchPredictionOutput -> String -- List (String, String)
getBatchPredictionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "batchPredictionId" "" -- val.batchPredictionId
        
    --     |> Dict.insert
    --         "mLModelId" "" -- val.mLModelId
        
    --     |> Dict.insert
    --         "batchPredictionDataSourceId" "" -- val.batchPredictionDataSourceId
        
    --     |> Dict.insert
    --         "inputDataLocationS3" "" -- val.inputDataLocationS3
        
    --     |> Dict.insert
    --         "createdByIamUser" "" -- val.createdByIamUser
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "lastUpdatedAt" "" -- val.lastUpdatedAt
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "outputUri" "" -- val.outputUri
        
    --     |> Dict.insert
    --         "logUri" "" -- val.logUri
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "computeTime" "" -- val.computeTime
        
    --     |> Dict.insert
    --         "finishedAt" "" -- val.finishedAt
        
    --     |> Dict.insert
    --         "startedAt" "" -- val.startedAt
        
    --     |> Dict.insert
    --         "totalRecordCount" "" -- val.totalRecordCount
        
    --     |> Dict.insert
    --         "invalidRecordCount" "" -- val.invalidRecordCount
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDataSour
-}
type alias GetDataSourceOutput =
    { dataSourceId : Maybe String
    , dataLocationS3 : Maybe String
    , dataRearrangement : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Posix
    , lastUpdatedAt : Maybe Posix
    , dataSizeInBytes : Maybe Int
    , numberOfFiles : Maybe Int
    , name : Maybe String
    , status : Maybe EntityStatus
    , logUri : Maybe String
    , message : Maybe String
    , redshiftMetadata : Maybe RedshiftMetadata
    , rDSMetadata : Maybe RDSMetadata
    , roleARN : Maybe String
    , computeStatistics : Maybe Bool
    , computeTime : Maybe Int
    , finishedAt : Maybe Posix
    , startedAt : Maybe Posix
    , dataSourceSchema : Maybe String
    }



getDataSourceOutputDecoder : JD.Decoder GetDataSourceOutput
getDataSourceOutputDecoder =
    JD.succeed GetDataSourceOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSourceId", "dataSourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataLocationS3", "dataLocationS3"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataRearrangement", "dataRearrangement"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedByIamUser", "createdByIamUser"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedAt", "lastUpdatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSizeInBytes", "dataSizeInBytes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberOfFiles", "numberOfFiles"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            entityStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogUri", "logUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RedshiftMetadata", "redshiftMetadata"]
            redshiftMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RDSMetadata", "rDSMetadata"]
            rDSMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleARN", "roleARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeStatistics", "computeStatistics"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeTime", "computeTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FinishedAt", "finishedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartedAt", "startedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSourceSchema", "dataSourceSchema"]
            JD.string
        )
        




getDataSourceOutputToString : GetDataSourceOutput -> String -- List (String, String)
getDataSourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataSourceId" "" -- val.dataSourceId
        
    --     |> Dict.insert
    --         "dataLocationS3" "" -- val.dataLocationS3
        
    --     |> Dict.insert
    --         "dataRearrangement" "" -- val.dataRearrangement
        
    --     |> Dict.insert
    --         "createdByIamUser" "" -- val.createdByIamUser
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "lastUpdatedAt" "" -- val.lastUpdatedAt
        
    --     |> Dict.insert
    --         "dataSizeInBytes" "" -- val.dataSizeInBytes
        
    --     |> Dict.insert
    --         "numberOfFiles" "" -- val.numberOfFiles
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "logUri" "" -- val.logUri
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "redshiftMetadata" "" -- val.redshiftMetadata
        
    --     |> Dict.insert
    --         "rDSMetadata" "" -- val.rDSMetadata
        
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
        
    --     |> Dict.insert
    --         "computeStatistics" "" -- val.computeStatistics
        
    --     |> Dict.insert
    --         "computeTime" "" -- val.computeTime
        
    --     |> Dict.insert
    --         "finishedAt" "" -- val.finishedAt
        
    --     |> Dict.insert
    --         "startedAt" "" -- val.startedAt
        
    --     |> Dict.insert
    --         "dataSourceSchema" "" -- val.dataSourceSchema
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getEvaluati
-}
type alias GetEvaluationOutput =
    { evaluationId : Maybe String
    , mLModelId : Maybe String
    , evaluationDataSourceId : Maybe String
    , inputDataLocationS3 : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Posix
    , lastUpdatedAt : Maybe Posix
    , name : Maybe String
    , status : Maybe EntityStatus
    , performanceMetrics : Maybe PerformanceMetrics
    , logUri : Maybe String
    , message : Maybe String
    , computeTime : Maybe Int
    , finishedAt : Maybe Posix
    , startedAt : Maybe Posix
    }



getEvaluationOutputDecoder : JD.Decoder GetEvaluationOutput
getEvaluationOutputDecoder =
    JD.succeed GetEvaluationOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EvaluationId", "evaluationId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelId", "mLModelId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EvaluationDataSourceId", "evaluationDataSourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputDataLocationS3", "inputDataLocationS3"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedByIamUser", "createdByIamUser"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedAt", "lastUpdatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            entityStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PerformanceMetrics", "performanceMetrics"]
            performanceMetricsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogUri", "logUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeTime", "computeTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FinishedAt", "finishedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartedAt", "startedAt"]
            JDX.datetime
        )
        




getEvaluationOutputToString : GetEvaluationOutput -> String -- List (String, String)
getEvaluationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "evaluationId" "" -- val.evaluationId
        
    --     |> Dict.insert
    --         "mLModelId" "" -- val.mLModelId
        
    --     |> Dict.insert
    --         "evaluationDataSourceId" "" -- val.evaluationDataSourceId
        
    --     |> Dict.insert
    --         "inputDataLocationS3" "" -- val.inputDataLocationS3
        
    --     |> Dict.insert
    --         "createdByIamUser" "" -- val.createdByIamUser
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "lastUpdatedAt" "" -- val.lastUpdatedAt
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "performanceMetrics" "" -- val.performanceMetrics
        
    --     |> Dict.insert
    --         "logUri" "" -- val.logUri
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "computeTime" "" -- val.computeTime
        
    --     |> Dict.insert
    --         "finishedAt" "" -- val.finishedAt
        
    --     |> Dict.insert
    --         "startedAt" "" -- val.startedAt
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getMLMod
-}
type alias GetMLModelOutput =
    { mLModelId : Maybe String
    , trainingDataSourceId : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Posix
    , lastUpdatedAt : Maybe Posix
    , name : Maybe String
    , status : Maybe EntityStatus
    , sizeInBytes : Maybe Int
    , endpointInfo : Maybe RealtimeEndpointInfo
    , trainingParameters : Maybe (Dict String String)
    , inputDataLocationS3 : Maybe String
    , mLModelType : Maybe MLModelType
    , scoreThreshold : Maybe Float
    , scoreThresholdLastUpdatedAt : Maybe Posix
    , logUri : Maybe String
    , message : Maybe String
    , computeTime : Maybe Int
    , finishedAt : Maybe Posix
    , startedAt : Maybe Posix
    , recipe : Maybe String
    , schema : Maybe String
    }



getMLModelOutputDecoder : JD.Decoder GetMLModelOutput
getMLModelOutputDecoder =
    JD.succeed GetMLModelOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelId", "mLModelId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TrainingDataSourceId", "trainingDataSourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedByIamUser", "createdByIamUser"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedAt", "lastUpdatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            entityStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SizeInBytes", "sizeInBytes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndpointInfo", "endpointInfo"]
            realtimeEndpointInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TrainingParameters", "trainingParameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputDataLocationS3", "inputDataLocationS3"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelType", "mLModelType"]
            mLModelTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScoreThreshold", "scoreThreshold"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScoreThresholdLastUpdatedAt", "scoreThresholdLastUpdatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogUri", "logUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeTime", "computeTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FinishedAt", "finishedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartedAt", "startedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Recipe", "recipe"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Schema", "schema"]
            JD.string
        )
        




getMLModelOutputToString : GetMLModelOutput -> String -- List (String, String)
getMLModelOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "mLModelId" "" -- val.mLModelId
        
    --     |> Dict.insert
    --         "trainingDataSourceId" "" -- val.trainingDataSourceId
        
    --     |> Dict.insert
    --         "createdByIamUser" "" -- val.createdByIamUser
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "lastUpdatedAt" "" -- val.lastUpdatedAt
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "sizeInBytes" "" -- val.sizeInBytes
        
    --     |> Dict.insert
    --         "endpointInfo" "" -- val.endpointInfo
        
    --     |> Dict.insert
    --         "trainingParameters" "" -- val.trainingParameters
        
    --     |> Dict.insert
    --         "inputDataLocationS3" "" -- val.inputDataLocationS3
        
    --     |> Dict.insert
    --         "mLModelType" "" -- val.mLModelType
        
    --     |> Dict.insert
    --         "scoreThreshold" "" -- val.scoreThreshold
        
    --     |> Dict.insert
    --         "scoreThresholdLastUpdatedAt" "" -- val.scoreThresholdLastUpdatedAt
        
    --     |> Dict.insert
    --         "logUri" "" -- val.logUri
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "computeTime" "" -- val.computeTime
        
    --     |> Dict.insert
    --         "finishedAt" "" -- val.finishedAt
        
    --     |> Dict.insert
    --         "startedAt" "" -- val.startedAt
        
    --     |> Dict.insert
    --         "recipe" "" -- val.recipe
        
    --     |> Dict.insert
    --         "schema" "" -- val.schema
        
    --     |> Dict.toList
    ""



{-| <p>A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.</p>
-}
type alias IdempotentParameterMismatchException =
    { message : Maybe String
    , code : Maybe Int
    }



idempotentParameterMismatchExceptionDecoder : JD.Decoder IdempotentParameterMismatchException
idempotentParameterMismatchExceptionDecoder =
    JD.succeed IdempotentParameterMismatchException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["code", "Code"]
            JD.int
        )
        




idempotentParameterMismatchExceptionToString : IdempotentParameterMismatchException -> String -- List (String, String)
idempotentParameterMismatchExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.toList
    ""



{-| <p>An error on the server occurred when trying to process a request.</p>
-}
type alias InternalServerException =
    { message : Maybe String
    , code : Maybe Int
    }



internalServerExceptionDecoder : JD.Decoder InternalServerException
internalServerExceptionDecoder =
    JD.succeed InternalServerException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["code", "Code"]
            JD.int
        )
        




internalServerExceptionToString : InternalServerException -> String -- List (String, String)
internalServerExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.toList
    ""



{-| <p>An error on the client occurred. Typically, the cause is an invalid input value.</p>
-}
type alias InvalidInputException =
    { message : Maybe String
    , code : Maybe Int
    }



invalidInputExceptionDecoder : JD.Decoder InvalidInputException
invalidInputExceptionDecoder =
    JD.succeed InvalidInputException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["code", "Code"]
            JD.int
        )
        




invalidInputExceptionToString : InvalidInputException -> String -- List (String, String)
invalidInputExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.toList
    ""



{-| undefined
-}
type alias InvalidTagException =
    { message : Maybe String
    }



invalidTagExceptionDecoder : JD.Decoder InvalidTagException
invalidTagExceptionDecoder =
    JD.succeed InvalidTagException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




invalidTagExceptionToString : InvalidTagException -> String -- List (String, String)
invalidTagExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as <code>DataSource</code>.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    , code : Maybe Int
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JD.succeed LimitExceededException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["code", "Code"]
            JD.int
        )
        




limitExceededExceptionToString : LimitExceededException -> String -- List (String, String)
limitExceededExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.toList
    ""



{-| <p> Represents the output of a <code>GetMLModel</code> operation. </p> <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>
-}
type alias MLModel =
    { mLModelId : Maybe String
    , trainingDataSourceId : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Posix
    , lastUpdatedAt : Maybe Posix
    , name : Maybe String
    , status : Maybe EntityStatus
    , sizeInBytes : Maybe Int
    , endpointInfo : Maybe RealtimeEndpointInfo
    , trainingParameters : Maybe (Dict String String)
    , inputDataLocationS3 : Maybe String
    , algorithm : Maybe Algorithm
    , mLModelType : Maybe MLModelType
    , scoreThreshold : Maybe Float
    , scoreThresholdLastUpdatedAt : Maybe Posix
    , message : Maybe String
    , computeTime : Maybe Int
    , finishedAt : Maybe Posix
    , startedAt : Maybe Posix
    }



mLModelDecoder : JD.Decoder MLModel
mLModelDecoder =
    JD.succeed MLModel
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelId", "mLModelId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TrainingDataSourceId", "trainingDataSourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedByIamUser", "createdByIamUser"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedAt", "lastUpdatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            entityStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SizeInBytes", "sizeInBytes"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndpointInfo", "endpointInfo"]
            realtimeEndpointInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TrainingParameters", "trainingParameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InputDataLocationS3", "inputDataLocationS3"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Algorithm", "algorithm"]
            algorithmDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelType", "mLModelType"]
            mLModelTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScoreThreshold", "scoreThreshold"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScoreThresholdLastUpdatedAt", "scoreThresholdLastUpdatedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComputeTime", "computeTime"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FinishedAt", "finishedAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartedAt", "startedAt"]
            JDX.datetime
        )
        




mLModelToString : MLModel -> String -- List (String, String)
mLModelToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "mLModelId" "" -- val.mLModelId
        
    --     |> Dict.insert
    --         "trainingDataSourceId" "" -- val.trainingDataSourceId
        
    --     |> Dict.insert
    --         "createdByIamUser" "" -- val.createdByIamUser
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "lastUpdatedAt" "" -- val.lastUpdatedAt
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "sizeInBytes" "" -- val.sizeInBytes
        
    --     |> Dict.insert
    --         "endpointInfo" "" -- val.endpointInfo
        
    --     |> Dict.insert
    --         "trainingParameters" "" -- val.trainingParameters
        
    --     |> Dict.insert
    --         "inputDataLocationS3" "" -- val.inputDataLocationS3
        
    --     |> Dict.insert
    --         "algorithm" "" -- val.algorithm
        
    --     |> Dict.insert
    --         "mLModelType" "" -- val.mLModelType
        
    --     |> Dict.insert
    --         "scoreThreshold" "" -- val.scoreThreshold
        
    --     |> Dict.insert
    --         "scoreThresholdLastUpdatedAt" "" -- val.scoreThresholdLastUpdatedAt
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "computeTime" "" -- val.computeTime
        
    --     |> Dict.insert
    --         "finishedAt" "" -- val.finishedAt
        
    --     |> Dict.insert
    --         "startedAt" "" -- val.startedAt
        
    --     |> Dict.toList
    ""



{-| One of

* `MLModelFilterVariable_CreatedAt`
* `MLModelFilterVariable_LastUpdatedAt`
* `MLModelFilterVariable_Status`
* `MLModelFilterVariable_Name`
* `MLModelFilterVariable_IAMUser`
* `MLModelFilterVariable_TrainingDataSourceId`
* `MLModelFilterVariable_RealtimeEndpointStatus`
* `MLModelFilterVariable_MLModelType`
* `MLModelFilterVariable_Algorithm`
* `MLModelFilterVariable_TrainingDataURI`

-}
type MLModelFilterVariable
    = MLModelFilterVariable_CreatedAt
    | MLModelFilterVariable_LastUpdatedAt
    | MLModelFilterVariable_Status
    | MLModelFilterVariable_Name
    | MLModelFilterVariable_IAMUser
    | MLModelFilterVariable_TrainingDataSourceId
    | MLModelFilterVariable_RealtimeEndpointStatus
    | MLModelFilterVariable_MLModelType
    | MLModelFilterVariable_Algorithm
    | MLModelFilterVariable_TrainingDataURI



mLModelFilterVariableDecoder : JD.Decoder MLModelFilterVariable
mLModelFilterVariableDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CreatedAt" ->
                        JD.succeed MLModelFilterVariable_CreatedAt

                    "LastUpdatedAt" ->
                        JD.succeed MLModelFilterVariable_LastUpdatedAt

                    "Status" ->
                        JD.succeed MLModelFilterVariable_Status

                    "Name" ->
                        JD.succeed MLModelFilterVariable_Name

                    "IAMUser" ->
                        JD.succeed MLModelFilterVariable_IAMUser

                    "TrainingDataSourceId" ->
                        JD.succeed MLModelFilterVariable_TrainingDataSourceId

                    "RealtimeEndpointStatus" ->
                        JD.succeed MLModelFilterVariable_RealtimeEndpointStatus

                    "MLModelType" ->
                        JD.succeed MLModelFilterVariable_MLModelType

                    "Algorithm" ->
                        JD.succeed MLModelFilterVariable_Algorithm

                    "TrainingDataURI" ->
                        JD.succeed MLModelFilterVariable_TrainingDataURI


                    _ ->
                        JD.fail "bad thing"
            )




mLModelFilterVariableToString : MLModelFilterVariable -> String
mLModelFilterVariableToString val =
    case val of
        MLModelFilterVariable_CreatedAt ->
            "CreatedAt"

        MLModelFilterVariable_LastUpdatedAt ->
            "LastUpdatedAt"

        MLModelFilterVariable_Status ->
            "Status"

        MLModelFilterVariable_Name ->
            "Name"

        MLModelFilterVariable_IAMUser ->
            "IAMUser"

        MLModelFilterVariable_TrainingDataSourceId ->
            "TrainingDataSourceId"

        MLModelFilterVariable_RealtimeEndpointStatus ->
            "RealtimeEndpointStatus"

        MLModelFilterVariable_MLModelType ->
            "MLModelType"

        MLModelFilterVariable_Algorithm ->
            "Algorithm"

        MLModelFilterVariable_TrainingDataURI ->
            "TrainingDataURI"




{-| One of

* `MLModelType_REGRESSION`
* `MLModelType_BINARY`
* `MLModelType_MULTICLASS`

-}
type MLModelType
    = MLModelType_REGRESSION
    | MLModelType_BINARY
    | MLModelType_MULTICLASS



mLModelTypeDecoder : JD.Decoder MLModelType
mLModelTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "REGRESSION" ->
                        JD.succeed MLModelType_REGRESSION

                    "BINARY" ->
                        JD.succeed MLModelType_BINARY

                    "MULTICLASS" ->
                        JD.succeed MLModelType_MULTICLASS


                    _ ->
                        JD.fail "bad thing"
            )




mLModelTypeToString : MLModelType -> String
mLModelTypeToString val =
    case val of
        MLModelType_REGRESSION ->
            "REGRESSION"

        MLModelType_BINARY ->
            "BINARY"

        MLModelType_MULTICLASS ->
            "MULTICLASS"




{-| <p>Measurements of how well the <code>MLModel</code> performed on known observations. One of the following metrics is returned, based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: The binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: The regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: The multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>
-}
type alias PerformanceMetrics =
    { properties : Maybe (Dict String String)
    }



performanceMetricsDecoder : JD.Decoder PerformanceMetrics
performanceMetricsDecoder =
    JD.succeed PerformanceMetrics
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Properties", "properties"]
            (AWS.Core.Decode.dict JD.string)
        )
        




performanceMetricsToString : PerformanceMetrics -> String -- List (String, String)
performanceMetricsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "properties" "" -- val.properties
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from predi
-}
type alias PredictOutput =
    { prediction : Maybe Prediction
    }



predictOutputDecoder : JD.Decoder PredictOutput
predictOutputDecoder =
    JD.succeed PredictOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Prediction", "prediction"]
            predictionDecoder
        )
        




predictOutputToString : PredictOutput -> String -- List (String, String)
predictOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "prediction" "" -- val.prediction
        
    --     |> Dict.toList
    ""



{-| <p>The output from a <code>Predict</code> operation: </p> <ul> <li> <p> <code>Details</code> - Contains the following attributes: <code>DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS</code> <code>DetailsAttributes.ALGORITHM - SGD</code> </p> </li> <li> <p> <code>PredictedLabel</code> - Present for either a <code>BINARY</code> or <code>MULTICLASS</code> <code>MLModel</code> request. </p> </li> <li> <p> <code>PredictedScores</code> - Contains the raw classification score corresponding to each label. </p> </li> <li> <p> <code>PredictedValue</code> - Present for a <code>REGRESSION</code> <code>MLModel</code> request. </p> </li> </ul>
-}
type alias Prediction =
    { predictedLabel : Maybe String
    , predictedValue : Maybe Float
    , predictedScores : Maybe (Dict String Float)
    , details : Maybe (Dict String String)
    }



predictionDecoder : JD.Decoder Prediction
predictionDecoder =
    JD.succeed Prediction
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["predictedLabel", "PredictedLabel"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["predictedValue", "PredictedValue"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["predictedScores", "PredictedScores"]
            (AWS.Core.Decode.dict JD.float)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["details", "Details"]
            (AWS.Core.Decode.dict JD.string)
        )
        




predictionToString : Prediction -> String -- List (String, String)
predictionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "predictedLabel" "" -- val.predictedLabel
        
    --     |> Dict.insert
    --         "predictedValue" "" -- val.predictedValue
        
    --     |> Dict.insert
    --         "predictedScores" "" -- val.predictedScores
        
    --     |> Dict.insert
    --         "details" "" -- val.details
        
    --     |> Dict.toList
    ""



{-| <p>The exception is thrown when a predict request is made to an unmounted <code>MLModel</code>.</p>
-}
type alias PredictorNotMountedException =
    { message : Maybe String
    }



predictorNotMountedExceptionDecoder : JD.Decoder PredictorNotMountedException
predictorNotMountedExceptionDecoder =
    JD.succeed PredictorNotMountedException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




predictorNotMountedExceptionToString : PredictorNotMountedException -> String -- List (String, String)
predictorNotMountedExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The data specification of an Amazon Relational Database Service (Amazon RDS) <code>DataSource</code>.</p>
-}
type alias RDSDataSpec =
    { databaseInformation : RDSDatabase
    , selectSqlQuery : String
    , databaseCredentials : RDSDatabaseCredentials
    , s3StagingLocation : String
    , dataRearrangement : Maybe String
    , dataSchema : Maybe String
    , dataSchemaUri : Maybe String
    , resourceRole : String
    , serviceRole : String
    , subnetId : String
    , securityGroupIds : (List String)
    }



rDSDataSpecDecoder : JD.Decoder RDSDataSpec
rDSDataSpecDecoder =
    JD.succeed RDSDataSpec
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DatabaseInformation", "databaseInformation"]
            rDSDatabaseDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SelectSqlQuery", "selectSqlQuery"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DatabaseCredentials", "databaseCredentials"]
            rDSDatabaseCredentialsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["S3StagingLocation", "s3StagingLocation"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataRearrangement", "dataRearrangement"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSchema", "dataSchema"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSchemaUri", "dataSchemaUri"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceRole", "resourceRole"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ServiceRole", "serviceRole"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SubnetId", "subnetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SecurityGroupIds", "securityGroupIds"]
            (JD.list JD.string)
        )
        




rDSDataSpecToString : RDSDataSpec -> String -- List (String, String)
rDSDataSpecToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "databaseInformation" "" -- val.databaseInformation
        
    --     |> Dict.insert
    --         "selectSqlQuery" "" -- val.selectSqlQuery
        
    --     |> Dict.insert
    --         "databaseCredentials" "" -- val.databaseCredentials
        
    --     |> Dict.insert
    --         "s3StagingLocation" "" -- val.s3StagingLocation
        
    --     |> Dict.insert
    --         "dataRearrangement" "" -- val.dataRearrangement
        
    --     |> Dict.insert
    --         "dataSchema" "" -- val.dataSchema
        
    --     |> Dict.insert
    --         "dataSchemaUri" "" -- val.dataSchemaUri
        
    --     |> Dict.insert
    --         "resourceRole" "" -- val.resourceRole
        
    --     |> Dict.insert
    --         "serviceRole" "" -- val.serviceRole
        
    --     |> Dict.insert
    --         "subnetId" "" -- val.subnetId
        
    --     |> Dict.insert
    --         "securityGroupIds" "" -- val.securityGroupIds
        
    --     |> Dict.toList
    ""



{-| <p>The database details of an Amazon RDS database.</p>
-}
type alias RDSDatabase =
    { instanceIdentifier : String
    , databaseName : String
    }



rDSDatabaseDecoder : JD.Decoder RDSDatabase
rDSDatabaseDecoder =
    JD.succeed RDSDatabase
        
        |> JDP.custom (AWS.Core.Decode.required
            ["InstanceIdentifier", "instanceIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DatabaseName", "databaseName"]
            JD.string
        )
        




rDSDatabaseToString : RDSDatabase -> String -- List (String, String)
rDSDatabaseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceIdentifier" "" -- val.instanceIdentifier
        
    --     |> Dict.insert
    --         "databaseName" "" -- val.databaseName
        
    --     |> Dict.toList
    ""



{-| <p>The database credentials to connect to a database on an RDS DB instance.</p>
-}
type alias RDSDatabaseCredentials =
    { username : String
    , password : String
    }



rDSDatabaseCredentialsDecoder : JD.Decoder RDSDatabaseCredentials
rDSDatabaseCredentialsDecoder =
    JD.succeed RDSDatabaseCredentials
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Username", "username"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Password", "password"]
            JD.string
        )
        




rDSDatabaseCredentialsToString : RDSDatabaseCredentials -> String -- List (String, String)
rDSDatabaseCredentialsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "username" "" -- val.username
        
    --     |> Dict.insert
    --         "password" "" -- val.password
        
    --     |> Dict.toList
    ""



{-| <p>The datasource details that are specific to Amazon RDS.</p>
-}
type alias RDSMetadata =
    { database : Maybe RDSDatabase
    , databaseUserName : Maybe String
    , selectSqlQuery : Maybe String
    , resourceRole : Maybe String
    , serviceRole : Maybe String
    , dataPipelineId : Maybe String
    }



rDSMetadataDecoder : JD.Decoder RDSMetadata
rDSMetadataDecoder =
    JD.succeed RDSMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Database", "database"]
            rDSDatabaseDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DatabaseUserName", "databaseUserName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SelectSqlQuery", "selectSqlQuery"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceRole", "resourceRole"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceRole", "serviceRole"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataPipelineId", "dataPipelineId"]
            JD.string
        )
        




rDSMetadataToString : RDSMetadata -> String -- List (String, String)
rDSMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "database" "" -- val.database
        
    --     |> Dict.insert
    --         "databaseUserName" "" -- val.databaseUserName
        
    --     |> Dict.insert
    --         "selectSqlQuery" "" -- val.selectSqlQuery
        
    --     |> Dict.insert
    --         "resourceRole" "" -- val.resourceRole
        
    --     |> Dict.insert
    --         "serviceRole" "" -- val.serviceRole
        
    --     |> Dict.insert
    --         "dataPipelineId" "" -- val.dataPipelineId
        
    --     |> Dict.toList
    ""



{-| <p> Describes the real-time endpoint information for an <code>MLModel</code>.</p>
-}
type alias RealtimeEndpointInfo =
    { peakRequestsPerSecond : Maybe Int
    , createdAt : Maybe Posix
    , endpointUrl : Maybe String
    , endpointStatus : Maybe RealtimeEndpointStatus
    }



realtimeEndpointInfoDecoder : JD.Decoder RealtimeEndpointInfo
realtimeEndpointInfoDecoder =
    JD.succeed RealtimeEndpointInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PeakRequestsPerSecond", "peakRequestsPerSecond"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedAt", "createdAt"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndpointUrl", "endpointUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndpointStatus", "endpointStatus"]
            realtimeEndpointStatusDecoder
        )
        




realtimeEndpointInfoToString : RealtimeEndpointInfo -> String -- List (String, String)
realtimeEndpointInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "peakRequestsPerSecond" "" -- val.peakRequestsPerSecond
        
    --     |> Dict.insert
    --         "createdAt" "" -- val.createdAt
        
    --     |> Dict.insert
    --         "endpointUrl" "" -- val.endpointUrl
        
    --     |> Dict.insert
    --         "endpointStatus" "" -- val.endpointStatus
        
    --     |> Dict.toList
    ""



{-| One of

* `RealtimeEndpointStatus_NONE`
* `RealtimeEndpointStatus_READY`
* `RealtimeEndpointStatus_UPDATING`
* `RealtimeEndpointStatus_FAILED`

-}
type RealtimeEndpointStatus
    = RealtimeEndpointStatus_NONE
    | RealtimeEndpointStatus_READY
    | RealtimeEndpointStatus_UPDATING
    | RealtimeEndpointStatus_FAILED



realtimeEndpointStatusDecoder : JD.Decoder RealtimeEndpointStatus
realtimeEndpointStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed RealtimeEndpointStatus_NONE

                    "READY" ->
                        JD.succeed RealtimeEndpointStatus_READY

                    "UPDATING" ->
                        JD.succeed RealtimeEndpointStatus_UPDATING

                    "FAILED" ->
                        JD.succeed RealtimeEndpointStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




realtimeEndpointStatusToString : RealtimeEndpointStatus -> String
realtimeEndpointStatusToString val =
    case val of
        RealtimeEndpointStatus_NONE ->
            "NONE"

        RealtimeEndpointStatus_READY ->
            "READY"

        RealtimeEndpointStatus_UPDATING ->
            "UPDATING"

        RealtimeEndpointStatus_FAILED ->
            "FAILED"




{-| <p>Describes the data specification of an Amazon Redshift <code>DataSource</code>.</p>
-}
type alias RedshiftDataSpec =
    { databaseInformation : RedshiftDatabase
    , selectSqlQuery : String
    , databaseCredentials : RedshiftDatabaseCredentials
    , s3StagingLocation : String
    , dataRearrangement : Maybe String
    , dataSchema : Maybe String
    , dataSchemaUri : Maybe String
    }



redshiftDataSpecDecoder : JD.Decoder RedshiftDataSpec
redshiftDataSpecDecoder =
    JD.succeed RedshiftDataSpec
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DatabaseInformation", "databaseInformation"]
            redshiftDatabaseDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SelectSqlQuery", "selectSqlQuery"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DatabaseCredentials", "databaseCredentials"]
            redshiftDatabaseCredentialsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["S3StagingLocation", "s3StagingLocation"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataRearrangement", "dataRearrangement"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSchema", "dataSchema"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSchemaUri", "dataSchemaUri"]
            JD.string
        )
        




redshiftDataSpecToString : RedshiftDataSpec -> String -- List (String, String)
redshiftDataSpecToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "databaseInformation" "" -- val.databaseInformation
        
    --     |> Dict.insert
    --         "selectSqlQuery" "" -- val.selectSqlQuery
        
    --     |> Dict.insert
    --         "databaseCredentials" "" -- val.databaseCredentials
        
    --     |> Dict.insert
    --         "s3StagingLocation" "" -- val.s3StagingLocation
        
    --     |> Dict.insert
    --         "dataRearrangement" "" -- val.dataRearrangement
        
    --     |> Dict.insert
    --         "dataSchema" "" -- val.dataSchema
        
    --     |> Dict.insert
    --         "dataSchemaUri" "" -- val.dataSchemaUri
        
    --     |> Dict.toList
    ""



{-| <p>Describes the database details required to connect to an Amazon Redshift database.</p>
-}
type alias RedshiftDatabase =
    { databaseName : String
    , clusterIdentifier : String
    }



redshiftDatabaseDecoder : JD.Decoder RedshiftDatabase
redshiftDatabaseDecoder =
    JD.succeed RedshiftDatabase
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DatabaseName", "databaseName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ClusterIdentifier", "clusterIdentifier"]
            JD.string
        )
        




redshiftDatabaseToString : RedshiftDatabase -> String -- List (String, String)
redshiftDatabaseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "databaseName" "" -- val.databaseName
        
    --     |> Dict.insert
    --         "clusterIdentifier" "" -- val.clusterIdentifier
        
    --     |> Dict.toList
    ""



{-| <p> Describes the database credentials for connecting to a database on an Amazon Redshift cluster.</p>
-}
type alias RedshiftDatabaseCredentials =
    { username : String
    , password : String
    }



redshiftDatabaseCredentialsDecoder : JD.Decoder RedshiftDatabaseCredentials
redshiftDatabaseCredentialsDecoder =
    JD.succeed RedshiftDatabaseCredentials
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Username", "username"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Password", "password"]
            JD.string
        )
        




redshiftDatabaseCredentialsToString : RedshiftDatabaseCredentials -> String -- List (String, String)
redshiftDatabaseCredentialsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "username" "" -- val.username
        
    --     |> Dict.insert
    --         "password" "" -- val.password
        
    --     |> Dict.toList
    ""



{-| <p>Describes the <code>DataSource</code> details specific to Amazon Redshift.</p>
-}
type alias RedshiftMetadata =
    { redshiftDatabase : Maybe RedshiftDatabase
    , databaseUserName : Maybe String
    , selectSqlQuery : Maybe String
    }



redshiftMetadataDecoder : JD.Decoder RedshiftMetadata
redshiftMetadataDecoder =
    JD.succeed RedshiftMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RedshiftDatabase", "redshiftDatabase"]
            redshiftDatabaseDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DatabaseUserName", "databaseUserName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SelectSqlQuery", "selectSqlQuery"]
            JD.string
        )
        




redshiftMetadataToString : RedshiftMetadata -> String -- List (String, String)
redshiftMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "redshiftDatabase" "" -- val.redshiftDatabase
        
    --     |> Dict.insert
    --         "databaseUserName" "" -- val.databaseUserName
        
    --     |> Dict.insert
    --         "selectSqlQuery" "" -- val.selectSqlQuery
        
    --     |> Dict.toList
    ""



{-| <p>A specified resource cannot be located.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    , code : Maybe Int
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JD.succeed ResourceNotFoundException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["code", "Code"]
            JD.int
        )
        




resourceNotFoundExceptionToString : ResourceNotFoundException -> String -- List (String, String)
resourceNotFoundExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.toList
    ""



{-| <p> Describes the data specification of a <code>DataSource</code>.</p>
-}
type alias S3DataSpec =
    { dataLocationS3 : String
    , dataRearrangement : Maybe String
    , dataSchema : Maybe String
    , dataSchemaLocationS3 : Maybe String
    }



s3DataSpecDecoder : JD.Decoder S3DataSpec
s3DataSpecDecoder =
    JD.succeed S3DataSpec
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DataLocationS3", "dataLocationS3"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataRearrangement", "dataRearrangement"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSchema", "dataSchema"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSchemaLocationS3", "dataSchemaLocationS3"]
            JD.string
        )
        




s3DataSpecToString : S3DataSpec -> String -- List (String, String)
s3DataSpecToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataLocationS3" "" -- val.dataLocationS3
        
    --     |> Dict.insert
    --         "dataRearrangement" "" -- val.dataRearrangement
        
    --     |> Dict.insert
    --         "dataSchema" "" -- val.dataSchema
        
    --     |> Dict.insert
    --         "dataSchemaLocationS3" "" -- val.dataSchemaLocationS3
        
    --     |> Dict.toList
    ""



{-| One of

* `SortOrder_asc`
* `SortOrder_dsc`

-}
type SortOrder
    = SortOrder_asc
    | SortOrder_dsc



sortOrderDecoder : JD.Decoder SortOrder
sortOrderDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "asc" ->
                        JD.succeed SortOrder_asc

                    "dsc" ->
                        JD.succeed SortOrder_dsc


                    _ ->
                        JD.fail "bad thing"
            )




sortOrderToString : SortOrder -> String
sortOrderToString val =
    case val of
        SortOrder_asc ->
            "asc"

        SortOrder_dsc ->
            "dsc"




{-| <p>A custom key-value pair associated with an ML object, such as an ML model.</p>
-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.optional
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



{-| undefined
-}
type alias TagLimitExceededException =
    { message : Maybe String
    }



tagLimitExceededExceptionDecoder : JD.Decoder TagLimitExceededException
tagLimitExceededExceptionDecoder =
    JD.succeed TagLimitExceededException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




tagLimitExceededExceptionToString : TagLimitExceededException -> String -- List (String, String)
tagLimitExceededExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| One of

* `TaggableResourceType_BatchPrediction`
* `TaggableResourceType_DataSource`
* `TaggableResourceType_Evaluation`
* `TaggableResourceType_MLModel`

-}
type TaggableResourceType
    = TaggableResourceType_BatchPrediction
    | TaggableResourceType_DataSource
    | TaggableResourceType_Evaluation
    | TaggableResourceType_MLModel



taggableResourceTypeDecoder : JD.Decoder TaggableResourceType
taggableResourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BatchPrediction" ->
                        JD.succeed TaggableResourceType_BatchPrediction

                    "DataSource" ->
                        JD.succeed TaggableResourceType_DataSource

                    "Evaluation" ->
                        JD.succeed TaggableResourceType_Evaluation

                    "MLModel" ->
                        JD.succeed TaggableResourceType_MLModel


                    _ ->
                        JD.fail "bad thing"
            )




taggableResourceTypeToString : TaggableResourceType -> String
taggableResourceTypeToString val =
    case val of
        TaggableResourceType_BatchPrediction ->
            "BatchPrediction"

        TaggableResourceType_DataSource ->
            "DataSource"

        TaggableResourceType_Evaluation ->
            "Evaluation"

        TaggableResourceType_MLModel ->
            "MLModel"




{-| Type of HTTP response from updateBatchPredicti
-}
type alias UpdateBatchPredictionOutput =
    { batchPredictionId : Maybe String
    }



updateBatchPredictionOutputDecoder : JD.Decoder UpdateBatchPredictionOutput
updateBatchPredictionOutputDecoder =
    JD.succeed UpdateBatchPredictionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BatchPredictionId", "batchPredictionId"]
            JD.string
        )
        




updateBatchPredictionOutputToString : UpdateBatchPredictionOutput -> String -- List (String, String)
updateBatchPredictionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "batchPredictionId" "" -- val.batchPredictionId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateDataSour
-}
type alias UpdateDataSourceOutput =
    { dataSourceId : Maybe String
    }



updateDataSourceOutputDecoder : JD.Decoder UpdateDataSourceOutput
updateDataSourceOutputDecoder =
    JD.succeed UpdateDataSourceOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DataSourceId", "dataSourceId"]
            JD.string
        )
        




updateDataSourceOutputToString : UpdateDataSourceOutput -> String -- List (String, String)
updateDataSourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dataSourceId" "" -- val.dataSourceId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateEvaluati
-}
type alias UpdateEvaluationOutput =
    { evaluationId : Maybe String
    }



updateEvaluationOutputDecoder : JD.Decoder UpdateEvaluationOutput
updateEvaluationOutputDecoder =
    JD.succeed UpdateEvaluationOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EvaluationId", "evaluationId"]
            JD.string
        )
        




updateEvaluationOutputToString : UpdateEvaluationOutput -> String -- List (String, String)
updateEvaluationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "evaluationId" "" -- val.evaluationId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateMLMod
-}
type alias UpdateMLModelOutput =
    { mLModelId : Maybe String
    }



updateMLModelOutputDecoder : JD.Decoder UpdateMLModelOutput
updateMLModelOutputDecoder =
    JD.succeed UpdateMLModelOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MLModelId", "mLModelId"]
            JD.string
        )
        




updateMLModelOutputToString : UpdateMLModelOutput -> String -- List (String, String)
updateMLModelOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "mLModelId" "" -- val.mLModelId
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AddTagsInput =
    { tags : (List Tag)
    , resourceId : String
    , resourceType : TaggableResourceType
    }


{-| undefined
-}
type alias CreateBatchPredictionInput =
    { batchPredictionId : String
    , batchPredictionName : Maybe String
    , mLModelId : String
    , batchPredictionDataSourceId : String
    , outputUri : String
    }


{-| undefined
-}
type alias CreateDataSourceFromRDSInput =
    { dataSourceId : String
    , dataSourceName : Maybe String
    , rDSData : RDSDataSpec
    , roleARN : String
    , computeStatistics : Maybe Bool
    }


{-| undefined
-}
type alias CreateDataSourceFromRedshiftInput =
    { dataSourceId : String
    , dataSourceName : Maybe String
    , dataSpec : RedshiftDataSpec
    , roleARN : String
    , computeStatistics : Maybe Bool
    }


{-| undefined
-}
type alias CreateDataSourceFromS3Input =
    { dataSourceId : String
    , dataSourceName : Maybe String
    , dataSpec : S3DataSpec
    , computeStatistics : Maybe Bool
    }


{-| undefined
-}
type alias CreateEvaluationInput =
    { evaluationId : String
    , evaluationName : Maybe String
    , mLModelId : String
    , evaluationDataSourceId : String
    }


{-| undefined
-}
type alias CreateMLModelInput =
    { mLModelId : String
    , mLModelName : Maybe String
    , mLModelType : MLModelType
    , parameters : Maybe (Dict String String)
    , trainingDataSourceId : String
    , recipe : Maybe String
    , recipeUri : Maybe String
    }


{-| undefined
-}
type alias CreateRealtimeEndpointInput =
    { mLModelId : String
    }


{-| undefined
-}
type alias DeleteBatchPredictionInput =
    { batchPredictionId : String
    }


{-| undefined
-}
type alias DeleteDataSourceInput =
    { dataSourceId : String
    }


{-| undefined
-}
type alias DeleteEvaluationInput =
    { evaluationId : String
    }


{-| undefined
-}
type alias DeleteMLModelInput =
    { mLModelId : String
    }


{-| undefined
-}
type alias DeleteRealtimeEndpointInput =
    { mLModelId : String
    }


{-| undefined
-}
type alias DeleteTagsInput =
    { tagKeys : (List String)
    , resourceId : String
    , resourceType : TaggableResourceType
    }


{-| undefined
-}
type alias DescribeBatchPredictionsInput =
    { filterVariable : Maybe BatchPredictionFilterVariable
    , eQ : Maybe String
    , gT : Maybe String
    , lT : Maybe String
    , gE : Maybe String
    , lE : Maybe String
    , nE : Maybe String
    , prefix : Maybe String
    , sortOrder : Maybe SortOrder
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DescribeDataSourcesInput =
    { filterVariable : Maybe DataSourceFilterVariable
    , eQ : Maybe String
    , gT : Maybe String
    , lT : Maybe String
    , gE : Maybe String
    , lE : Maybe String
    , nE : Maybe String
    , prefix : Maybe String
    , sortOrder : Maybe SortOrder
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DescribeEvaluationsInput =
    { filterVariable : Maybe EvaluationFilterVariable
    , eQ : Maybe String
    , gT : Maybe String
    , lT : Maybe String
    , gE : Maybe String
    , lE : Maybe String
    , nE : Maybe String
    , prefix : Maybe String
    , sortOrder : Maybe SortOrder
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DescribeMLModelsInput =
    { filterVariable : Maybe MLModelFilterVariable
    , eQ : Maybe String
    , gT : Maybe String
    , lT : Maybe String
    , gE : Maybe String
    , lE : Maybe String
    , nE : Maybe String
    , prefix : Maybe String
    , sortOrder : Maybe SortOrder
    , nextToken : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias DescribeTagsInput =
    { resourceId : String
    , resourceType : TaggableResourceType
    }


{-| undefined
-}
type alias GetBatchPredictionInput =
    { batchPredictionId : String
    }


{-| undefined
-}
type alias GetDataSourceInput =
    { dataSourceId : String
    , verbose : Maybe Bool
    }


{-| undefined
-}
type alias GetEvaluationInput =
    { evaluationId : String
    }


{-| undefined
-}
type alias GetMLModelInput =
    { mLModelId : String
    , verbose : Maybe Bool
    }


{-| undefined
-}
type alias PredictInput =
    { mLModelId : String
    , record : (Dict String String)
    , predictEndpoint : String
    }


{-| undefined
-}
type alias UpdateBatchPredictionInput =
    { batchPredictionId : String
    , batchPredictionName : String
    }


{-| undefined
-}
type alias UpdateDataSourceInput =
    { dataSourceId : String
    , dataSourceName : String
    }


{-| undefined
-}
type alias UpdateEvaluationInput =
    { evaluationId : String
    , evaluationName : String
    }


{-| undefined
-}
type alias UpdateMLModelInput =
    { mLModelId : String
    , mLModelName : Maybe String
    , scoreThreshold : Maybe Float
    }






addTagsInputEncoder : AddTagsInput -> JE.Value
addTagsInputEncoder data =
    []
        
        
        |> (::) ("Tags", data.tags |> (JE.list (tagEncoder)))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ResourceType", data.resourceType |> (taggableResourceTypeToString >> JE.string))
        
        
        |> JE.object






addTagsOutputEncoder : AddTagsOutput -> JE.Value
addTagsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceId", data.resourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (taggableResourceTypeToString >> JE.string)
            ("ResourceType", data.resourceType)
        
        
        |> JE.object










batchPredictionEncoder : BatchPrediction -> JE.Value
batchPredictionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BatchPredictionId", data.batchPredictionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelId", data.mLModelId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BatchPredictionDataSourceId", data.batchPredictionDataSourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InputDataLocationS3", data.inputDataLocationS3)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedByIamUser", data.createdByIamUser)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdatedAt", data.lastUpdatedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (entityStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("OutputUri", data.outputUri)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ComputeTime", data.computeTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("FinishedAt", data.finishedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartedAt", data.startedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TotalRecordCount", data.totalRecordCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("InvalidRecordCount", data.invalidRecordCount)
        
        
        |> JE.object










createBatchPredictionInputEncoder : CreateBatchPredictionInput -> JE.Value
createBatchPredictionInputEncoder data =
    []
        
        
        |> (::) ("BatchPredictionId", data.batchPredictionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BatchPredictionName", data.batchPredictionName)
        
        
        
        |> (::) ("MLModelId", data.mLModelId |> (JE.string))
        
        
        
        |> (::) ("BatchPredictionDataSourceId", data.batchPredictionDataSourceId |> (JE.string))
        
        
        
        |> (::) ("OutputUri", data.outputUri |> (JE.string))
        
        
        |> JE.object






createBatchPredictionOutputEncoder : CreateBatchPredictionOutput -> JE.Value
createBatchPredictionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BatchPredictionId", data.batchPredictionId)
        
        
        |> JE.object






createDataSourceFromRDSInputEncoder : CreateDataSourceFromRDSInput -> JE.Value
createDataSourceFromRDSInputEncoder data =
    []
        
        
        |> (::) ("DataSourceId", data.dataSourceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSourceName", data.dataSourceName)
        
        
        
        |> (::) ("RDSData", data.rDSData |> (rDSDataSpecEncoder))
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ComputeStatistics", data.computeStatistics)
        
        
        |> JE.object






createDataSourceFromRDSOutputEncoder : CreateDataSourceFromRDSOutput -> JE.Value
createDataSourceFromRDSOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSourceId", data.dataSourceId)
        
        
        |> JE.object






createDataSourceFromRedshiftInputEncoder : CreateDataSourceFromRedshiftInput -> JE.Value
createDataSourceFromRedshiftInputEncoder data =
    []
        
        
        |> (::) ("DataSourceId", data.dataSourceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSourceName", data.dataSourceName)
        
        
        
        |> (::) ("DataSpec", data.dataSpec |> (redshiftDataSpecEncoder))
        
        
        
        |> (::) ("RoleARN", data.roleARN |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ComputeStatistics", data.computeStatistics)
        
        
        |> JE.object






createDataSourceFromRedshiftOutputEncoder : CreateDataSourceFromRedshiftOutput -> JE.Value
createDataSourceFromRedshiftOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSourceId", data.dataSourceId)
        
        
        |> JE.object






createDataSourceFromS3InputEncoder : CreateDataSourceFromS3Input -> JE.Value
createDataSourceFromS3InputEncoder data =
    []
        
        
        |> (::) ("DataSourceId", data.dataSourceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSourceName", data.dataSourceName)
        
        
        
        |> (::) ("DataSpec", data.dataSpec |> (s3DataSpecEncoder))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ComputeStatistics", data.computeStatistics)
        
        
        |> JE.object






createDataSourceFromS3OutputEncoder : CreateDataSourceFromS3Output -> JE.Value
createDataSourceFromS3OutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSourceId", data.dataSourceId)
        
        
        |> JE.object






createEvaluationInputEncoder : CreateEvaluationInput -> JE.Value
createEvaluationInputEncoder data =
    []
        
        
        |> (::) ("EvaluationId", data.evaluationId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EvaluationName", data.evaluationName)
        
        
        
        |> (::) ("MLModelId", data.mLModelId |> (JE.string))
        
        
        
        |> (::) ("EvaluationDataSourceId", data.evaluationDataSourceId |> (JE.string))
        
        
        |> JE.object






createEvaluationOutputEncoder : CreateEvaluationOutput -> JE.Value
createEvaluationOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EvaluationId", data.evaluationId)
        
        
        |> JE.object






createMLModelInputEncoder : CreateMLModelInput -> JE.Value
createMLModelInputEncoder data =
    []
        
        
        |> (::) ("MLModelId", data.mLModelId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelName", data.mLModelName)
        
        
        
        |> (::) ("MLModelType", data.mLModelType |> (mLModelTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Parameters", data.parameters)
        
        
        
        |> (::) ("TrainingDataSourceId", data.trainingDataSourceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Recipe", data.recipe)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RecipeUri", data.recipeUri)
        
        
        |> JE.object






createMLModelOutputEncoder : CreateMLModelOutput -> JE.Value
createMLModelOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelId", data.mLModelId)
        
        
        |> JE.object






createRealtimeEndpointInputEncoder : CreateRealtimeEndpointInput -> JE.Value
createRealtimeEndpointInputEncoder data =
    []
        
        
        |> (::) ("MLModelId", data.mLModelId |> (JE.string))
        
        
        |> JE.object






createRealtimeEndpointOutputEncoder : CreateRealtimeEndpointOutput -> JE.Value
createRealtimeEndpointOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelId", data.mLModelId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (realtimeEndpointInfoEncoder)
            ("RealtimeEndpointInfo", data.realtimeEndpointInfo)
        
        
        |> JE.object






dataSourceEncoder : DataSource -> JE.Value
dataSourceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSourceId", data.dataSourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataLocationS3", data.dataLocationS3)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataRearrangement", data.dataRearrangement)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedByIamUser", data.createdByIamUser)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdatedAt", data.lastUpdatedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("DataSizeInBytes", data.dataSizeInBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfFiles", data.numberOfFiles)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (entityStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (redshiftMetadataEncoder)
            ("RedshiftMetadata", data.redshiftMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (rDSMetadataEncoder)
            ("RDSMetadata", data.rDSMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ComputeStatistics", data.computeStatistics)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ComputeTime", data.computeTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("FinishedAt", data.finishedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartedAt", data.startedAt)
        
        
        |> JE.object










deleteBatchPredictionInputEncoder : DeleteBatchPredictionInput -> JE.Value
deleteBatchPredictionInputEncoder data =
    []
        
        
        |> (::) ("BatchPredictionId", data.batchPredictionId |> (JE.string))
        
        
        |> JE.object






deleteBatchPredictionOutputEncoder : DeleteBatchPredictionOutput -> JE.Value
deleteBatchPredictionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BatchPredictionId", data.batchPredictionId)
        
        
        |> JE.object






deleteDataSourceInputEncoder : DeleteDataSourceInput -> JE.Value
deleteDataSourceInputEncoder data =
    []
        
        
        |> (::) ("DataSourceId", data.dataSourceId |> (JE.string))
        
        
        |> JE.object






deleteDataSourceOutputEncoder : DeleteDataSourceOutput -> JE.Value
deleteDataSourceOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSourceId", data.dataSourceId)
        
        
        |> JE.object






deleteEvaluationInputEncoder : DeleteEvaluationInput -> JE.Value
deleteEvaluationInputEncoder data =
    []
        
        
        |> (::) ("EvaluationId", data.evaluationId |> (JE.string))
        
        
        |> JE.object






deleteEvaluationOutputEncoder : DeleteEvaluationOutput -> JE.Value
deleteEvaluationOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EvaluationId", data.evaluationId)
        
        
        |> JE.object






deleteMLModelInputEncoder : DeleteMLModelInput -> JE.Value
deleteMLModelInputEncoder data =
    []
        
        
        |> (::) ("MLModelId", data.mLModelId |> (JE.string))
        
        
        |> JE.object






deleteMLModelOutputEncoder : DeleteMLModelOutput -> JE.Value
deleteMLModelOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelId", data.mLModelId)
        
        
        |> JE.object






deleteRealtimeEndpointInputEncoder : DeleteRealtimeEndpointInput -> JE.Value
deleteRealtimeEndpointInputEncoder data =
    []
        
        
        |> (::) ("MLModelId", data.mLModelId |> (JE.string))
        
        
        |> JE.object






deleteRealtimeEndpointOutputEncoder : DeleteRealtimeEndpointOutput -> JE.Value
deleteRealtimeEndpointOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelId", data.mLModelId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (realtimeEndpointInfoEncoder)
            ("RealtimeEndpointInfo", data.realtimeEndpointInfo)
        
        
        |> JE.object






deleteTagsInputEncoder : DeleteTagsInput -> JE.Value
deleteTagsInputEncoder data =
    []
        
        
        |> (::) ("TagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ResourceType", data.resourceType |> (taggableResourceTypeToString >> JE.string))
        
        
        |> JE.object






deleteTagsOutputEncoder : DeleteTagsOutput -> JE.Value
deleteTagsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceId", data.resourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (taggableResourceTypeToString >> JE.string)
            ("ResourceType", data.resourceType)
        
        
        |> JE.object






describeBatchPredictionsInputEncoder : DescribeBatchPredictionsInput -> JE.Value
describeBatchPredictionsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (batchPredictionFilterVariableToString >> JE.string)
            ("FilterVariable", data.filterVariable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EQ", data.eQ)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GT", data.gT)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LT", data.lT)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GE", data.gE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LE", data.lE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NE", data.nE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Prefix", data.prefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sortOrderToString >> JE.string)
            ("SortOrder", data.sortOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






describeBatchPredictionsOutputEncoder : DescribeBatchPredictionsOutput -> JE.Value
describeBatchPredictionsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (batchPredictionEncoder))
            ("Results", data.results)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeDataSourcesInputEncoder : DescribeDataSourcesInput -> JE.Value
describeDataSourcesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (dataSourceFilterVariableToString >> JE.string)
            ("FilterVariable", data.filterVariable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EQ", data.eQ)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GT", data.gT)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LT", data.lT)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GE", data.gE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LE", data.lE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NE", data.nE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Prefix", data.prefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sortOrderToString >> JE.string)
            ("SortOrder", data.sortOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






describeDataSourcesOutputEncoder : DescribeDataSourcesOutput -> JE.Value
describeDataSourcesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (dataSourceEncoder))
            ("Results", data.results)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeEvaluationsInputEncoder : DescribeEvaluationsInput -> JE.Value
describeEvaluationsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (evaluationFilterVariableToString >> JE.string)
            ("FilterVariable", data.filterVariable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EQ", data.eQ)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GT", data.gT)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LT", data.lT)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GE", data.gE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LE", data.lE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NE", data.nE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Prefix", data.prefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sortOrderToString >> JE.string)
            ("SortOrder", data.sortOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






describeEvaluationsOutputEncoder : DescribeEvaluationsOutput -> JE.Value
describeEvaluationsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (evaluationEncoder))
            ("Results", data.results)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeMLModelsInputEncoder : DescribeMLModelsInput -> JE.Value
describeMLModelsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (mLModelFilterVariableToString >> JE.string)
            ("FilterVariable", data.filterVariable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EQ", data.eQ)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GT", data.gT)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LT", data.lT)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GE", data.gE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LE", data.lE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NE", data.nE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Prefix", data.prefix)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sortOrderToString >> JE.string)
            ("SortOrder", data.sortOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






describeMLModelsOutputEncoder : DescribeMLModelsOutput -> JE.Value
describeMLModelsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (mLModelEncoder))
            ("Results", data.results)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeTagsInputEncoder : DescribeTagsInput -> JE.Value
describeTagsInputEncoder data =
    []
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("ResourceType", data.resourceType |> (taggableResourceTypeToString >> JE.string))
        
        
        |> JE.object






describeTagsOutputEncoder : DescribeTagsOutput -> JE.Value
describeTagsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceId", data.resourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (taggableResourceTypeToString >> JE.string)
            ("ResourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object














evaluationEncoder : Evaluation -> JE.Value
evaluationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EvaluationId", data.evaluationId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelId", data.mLModelId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EvaluationDataSourceId", data.evaluationDataSourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InputDataLocationS3", data.inputDataLocationS3)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedByIamUser", data.createdByIamUser)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdatedAt", data.lastUpdatedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (entityStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (performanceMetricsEncoder)
            ("PerformanceMetrics", data.performanceMetrics)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ComputeTime", data.computeTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("FinishedAt", data.finishedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartedAt", data.startedAt)
        
        
        |> JE.object










getBatchPredictionInputEncoder : GetBatchPredictionInput -> JE.Value
getBatchPredictionInputEncoder data =
    []
        
        
        |> (::) ("BatchPredictionId", data.batchPredictionId |> (JE.string))
        
        
        |> JE.object






getBatchPredictionOutputEncoder : GetBatchPredictionOutput -> JE.Value
getBatchPredictionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BatchPredictionId", data.batchPredictionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelId", data.mLModelId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BatchPredictionDataSourceId", data.batchPredictionDataSourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InputDataLocationS3", data.inputDataLocationS3)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedByIamUser", data.createdByIamUser)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdatedAt", data.lastUpdatedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (entityStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("OutputUri", data.outputUri)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogUri", data.logUri)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ComputeTime", data.computeTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("FinishedAt", data.finishedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartedAt", data.startedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TotalRecordCount", data.totalRecordCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("InvalidRecordCount", data.invalidRecordCount)
        
        
        |> JE.object






getDataSourceInputEncoder : GetDataSourceInput -> JE.Value
getDataSourceInputEncoder data =
    []
        
        
        |> (::) ("DataSourceId", data.dataSourceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Verbose", data.verbose)
        
        
        |> JE.object






getDataSourceOutputEncoder : GetDataSourceOutput -> JE.Value
getDataSourceOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSourceId", data.dataSourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataLocationS3", data.dataLocationS3)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataRearrangement", data.dataRearrangement)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedByIamUser", data.createdByIamUser)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdatedAt", data.lastUpdatedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("DataSizeInBytes", data.dataSizeInBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfFiles", data.numberOfFiles)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (entityStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogUri", data.logUri)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (redshiftMetadataEncoder)
            ("RedshiftMetadata", data.redshiftMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (rDSMetadataEncoder)
            ("RDSMetadata", data.rDSMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleARN", data.roleARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ComputeStatistics", data.computeStatistics)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ComputeTime", data.computeTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("FinishedAt", data.finishedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartedAt", data.startedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSourceSchema", data.dataSourceSchema)
        
        
        |> JE.object






getEvaluationInputEncoder : GetEvaluationInput -> JE.Value
getEvaluationInputEncoder data =
    []
        
        
        |> (::) ("EvaluationId", data.evaluationId |> (JE.string))
        
        
        |> JE.object






getEvaluationOutputEncoder : GetEvaluationOutput -> JE.Value
getEvaluationOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EvaluationId", data.evaluationId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelId", data.mLModelId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EvaluationDataSourceId", data.evaluationDataSourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InputDataLocationS3", data.inputDataLocationS3)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedByIamUser", data.createdByIamUser)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdatedAt", data.lastUpdatedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (entityStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (performanceMetricsEncoder)
            ("PerformanceMetrics", data.performanceMetrics)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogUri", data.logUri)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ComputeTime", data.computeTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("FinishedAt", data.finishedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartedAt", data.startedAt)
        
        
        |> JE.object






getMLModelInputEncoder : GetMLModelInput -> JE.Value
getMLModelInputEncoder data =
    []
        
        
        |> (::) ("MLModelId", data.mLModelId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Verbose", data.verbose)
        
        
        |> JE.object






getMLModelOutputEncoder : GetMLModelOutput -> JE.Value
getMLModelOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelId", data.mLModelId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TrainingDataSourceId", data.trainingDataSourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedByIamUser", data.createdByIamUser)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdatedAt", data.lastUpdatedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (entityStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("SizeInBytes", data.sizeInBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (realtimeEndpointInfoEncoder)
            ("EndpointInfo", data.endpointInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("TrainingParameters", data.trainingParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InputDataLocationS3", data.inputDataLocationS3)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (mLModelTypeToString >> JE.string)
            ("MLModelType", data.mLModelType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("ScoreThreshold", data.scoreThreshold)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ScoreThresholdLastUpdatedAt", data.scoreThresholdLastUpdatedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogUri", data.logUri)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ComputeTime", data.computeTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("FinishedAt", data.finishedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartedAt", data.startedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Recipe", data.recipe)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Schema", data.schema)
        
        
        |> JE.object






idempotentParameterMismatchExceptionEncoder : IdempotentParameterMismatchException -> JE.Value
idempotentParameterMismatchExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("code", data.code)
        
        
        |> JE.object






internalServerExceptionEncoder : InternalServerException -> JE.Value
internalServerExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("code", data.code)
        
        
        |> JE.object






invalidInputExceptionEncoder : InvalidInputException -> JE.Value
invalidInputExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("code", data.code)
        
        
        |> JE.object






invalidTagExceptionEncoder : InvalidTagException -> JE.Value
invalidTagExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






limitExceededExceptionEncoder : LimitExceededException -> JE.Value
limitExceededExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("code", data.code)
        
        
        |> JE.object






mLModelEncoder : MLModel -> JE.Value
mLModelEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelId", data.mLModelId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TrainingDataSourceId", data.trainingDataSourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatedByIamUser", data.createdByIamUser)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdatedAt", data.lastUpdatedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (entityStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("SizeInBytes", data.sizeInBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (realtimeEndpointInfoEncoder)
            ("EndpointInfo", data.endpointInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("TrainingParameters", data.trainingParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InputDataLocationS3", data.inputDataLocationS3)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (algorithmToString >> JE.string)
            ("Algorithm", data.algorithm)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (mLModelTypeToString >> JE.string)
            ("MLModelType", data.mLModelType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("ScoreThreshold", data.scoreThreshold)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ScoreThresholdLastUpdatedAt", data.scoreThresholdLastUpdatedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ComputeTime", data.computeTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("FinishedAt", data.finishedAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartedAt", data.startedAt)
        
        
        |> JE.object














performanceMetricsEncoder : PerformanceMetrics -> JE.Value
performanceMetricsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Properties", data.properties)
        
        
        |> JE.object






predictInputEncoder : PredictInput -> JE.Value
predictInputEncoder data =
    []
        
        
        |> (::) ("MLModelId", data.mLModelId |> (JE.string))
        
        
        
        |> (::) ("Record", data.record |> (JE.dict identity (JE.string)))
        
        
        
        |> (::) ("PredictEndpoint", data.predictEndpoint |> (JE.string))
        
        
        |> JE.object






predictOutputEncoder : PredictOutput -> JE.Value
predictOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (predictionEncoder)
            ("Prediction", data.prediction)
        
        
        |> JE.object






predictionEncoder : Prediction -> JE.Value
predictionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("predictedLabel", data.predictedLabel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("predictedValue", data.predictedValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.float))
            ("predictedScores", data.predictedScores)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("details", data.details)
        
        
        |> JE.object






predictorNotMountedExceptionEncoder : PredictorNotMountedException -> JE.Value
predictorNotMountedExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






rDSDataSpecEncoder : RDSDataSpec -> JE.Value
rDSDataSpecEncoder data =
    []
        
        
        |> (::) ("DatabaseInformation", data.databaseInformation |> (rDSDatabaseEncoder))
        
        
        
        |> (::) ("SelectSqlQuery", data.selectSqlQuery |> (JE.string))
        
        
        
        |> (::) ("DatabaseCredentials", data.databaseCredentials |> (rDSDatabaseCredentialsEncoder))
        
        
        
        |> (::) ("S3StagingLocation", data.s3StagingLocation |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataRearrangement", data.dataRearrangement)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSchema", data.dataSchema)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSchemaUri", data.dataSchemaUri)
        
        
        
        |> (::) ("ResourceRole", data.resourceRole |> (JE.string))
        
        
        
        |> (::) ("ServiceRole", data.serviceRole |> (JE.string))
        
        
        
        |> (::) ("SubnetId", data.subnetId |> (JE.string))
        
        
        
        |> (::) ("SecurityGroupIds", data.securityGroupIds |> (JE.list (JE.string)))
        
        
        |> JE.object






rDSDatabaseEncoder : RDSDatabase -> JE.Value
rDSDatabaseEncoder data =
    []
        
        
        |> (::) ("InstanceIdentifier", data.instanceIdentifier |> (JE.string))
        
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        |> JE.object






rDSDatabaseCredentialsEncoder : RDSDatabaseCredentials -> JE.Value
rDSDatabaseCredentialsEncoder data =
    []
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("Password", data.password |> (JE.string))
        
        
        |> JE.object






rDSMetadataEncoder : RDSMetadata -> JE.Value
rDSMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (rDSDatabaseEncoder)
            ("Database", data.database)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DatabaseUserName", data.databaseUserName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SelectSqlQuery", data.selectSqlQuery)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceRole", data.resourceRole)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ServiceRole", data.serviceRole)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataPipelineId", data.dataPipelineId)
        
        
        |> JE.object






realtimeEndpointInfoEncoder : RealtimeEndpointInfo -> JE.Value
realtimeEndpointInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PeakRequestsPerSecond", data.peakRequestsPerSecond)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedAt", data.createdAt)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EndpointUrl", data.endpointUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (realtimeEndpointStatusToString >> JE.string)
            ("EndpointStatus", data.endpointStatus)
        
        
        |> JE.object










redshiftDataSpecEncoder : RedshiftDataSpec -> JE.Value
redshiftDataSpecEncoder data =
    []
        
        
        |> (::) ("DatabaseInformation", data.databaseInformation |> (redshiftDatabaseEncoder))
        
        
        
        |> (::) ("SelectSqlQuery", data.selectSqlQuery |> (JE.string))
        
        
        
        |> (::) ("DatabaseCredentials", data.databaseCredentials |> (redshiftDatabaseCredentialsEncoder))
        
        
        
        |> (::) ("S3StagingLocation", data.s3StagingLocation |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataRearrangement", data.dataRearrangement)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSchema", data.dataSchema)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSchemaUri", data.dataSchemaUri)
        
        
        |> JE.object






redshiftDatabaseEncoder : RedshiftDatabase -> JE.Value
redshiftDatabaseEncoder data =
    []
        
        
        |> (::) ("DatabaseName", data.databaseName |> (JE.string))
        
        
        
        |> (::) ("ClusterIdentifier", data.clusterIdentifier |> (JE.string))
        
        
        |> JE.object






redshiftDatabaseCredentialsEncoder : RedshiftDatabaseCredentials -> JE.Value
redshiftDatabaseCredentialsEncoder data =
    []
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("Password", data.password |> (JE.string))
        
        
        |> JE.object






redshiftMetadataEncoder : RedshiftMetadata -> JE.Value
redshiftMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (redshiftDatabaseEncoder)
            ("RedshiftDatabase", data.redshiftDatabase)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DatabaseUserName", data.databaseUserName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SelectSqlQuery", data.selectSqlQuery)
        
        
        |> JE.object






resourceNotFoundExceptionEncoder : ResourceNotFoundException -> JE.Value
resourceNotFoundExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("code", data.code)
        
        
        |> JE.object






s3DataSpecEncoder : S3DataSpec -> JE.Value
s3DataSpecEncoder data =
    []
        
        
        |> (::) ("DataLocationS3", data.dataLocationS3 |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataRearrangement", data.dataRearrangement)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSchema", data.dataSchema)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSchemaLocationS3", data.dataSchemaLocationS3)
        
        
        |> JE.object










tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object






tagLimitExceededExceptionEncoder : TagLimitExceededException -> JE.Value
tagLimitExceededExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object










updateBatchPredictionInputEncoder : UpdateBatchPredictionInput -> JE.Value
updateBatchPredictionInputEncoder data =
    []
        
        
        |> (::) ("BatchPredictionId", data.batchPredictionId |> (JE.string))
        
        
        
        |> (::) ("BatchPredictionName", data.batchPredictionName |> (JE.string))
        
        
        |> JE.object






updateBatchPredictionOutputEncoder : UpdateBatchPredictionOutput -> JE.Value
updateBatchPredictionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BatchPredictionId", data.batchPredictionId)
        
        
        |> JE.object






updateDataSourceInputEncoder : UpdateDataSourceInput -> JE.Value
updateDataSourceInputEncoder data =
    []
        
        
        |> (::) ("DataSourceId", data.dataSourceId |> (JE.string))
        
        
        
        |> (::) ("DataSourceName", data.dataSourceName |> (JE.string))
        
        
        |> JE.object






updateDataSourceOutputEncoder : UpdateDataSourceOutput -> JE.Value
updateDataSourceOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DataSourceId", data.dataSourceId)
        
        
        |> JE.object






updateEvaluationInputEncoder : UpdateEvaluationInput -> JE.Value
updateEvaluationInputEncoder data =
    []
        
        
        |> (::) ("EvaluationId", data.evaluationId |> (JE.string))
        
        
        
        |> (::) ("EvaluationName", data.evaluationName |> (JE.string))
        
        
        |> JE.object






updateEvaluationOutputEncoder : UpdateEvaluationOutput -> JE.Value
updateEvaluationOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EvaluationId", data.evaluationId)
        
        
        |> JE.object






updateMLModelInputEncoder : UpdateMLModelInput -> JE.Value
updateMLModelInputEncoder data =
    []
        
        
        |> (::) ("MLModelId", data.mLModelId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelName", data.mLModelName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("ScoreThreshold", data.scoreThreshold)
        
        
        |> JE.object






updateMLModelOutputEncoder : UpdateMLModelOutput -> JE.Value
updateMLModelOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MLModelId", data.mLModelId)
        
        
        |> JE.object





