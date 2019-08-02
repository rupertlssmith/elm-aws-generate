module AWS.Athena exposing
    ( service
    , batchGetNamedQuery, batchGetQueryExecution, createNamedQuery, CreateNamedQueryOptions, createWorkGroup, CreateWorkGroupOptions, deleteNamedQuery, deleteWorkGroup, DeleteWorkGroupOptions, getNamedQuery, getQueryExecution, getQueryResults, GetQueryResultsOptions, getWorkGroup, listNamedQueries, ListNamedQueriesOptions, listQueryExecutions, ListQueryExecutionsOptions, listTagsForResource, ListTagsForResourceOptions, listWorkGroups, ListWorkGroupsOptions, startQueryExecution, StartQueryExecutionOptions, stopQueryExecution, tagResource, untagResource, updateWorkGroup, UpdateWorkGroupOptions
    , BatchGetNamedQueryOutput, BatchGetQueryExecutionOutput, CreateNamedQueryOutput, CreateWorkGroupOutput, DeleteNamedQueryOutput, DeleteWorkGroupOutput, GetNamedQueryOutput, GetQueryExecutionOutput, GetQueryResultsOutput, GetWorkGroupOutput, ListNamedQueriesOutput, ListQueryExecutionsOutput, ListTagsForResourceOutput, ListWorkGroupsOutput, StartQueryExecutionOutput, StopQueryExecutionOutput, TagResourceOutput, UntagResourceOutput, UpdateWorkGroupOutput
    , ColumnInfo, Datum, EncryptionConfiguration, NamedQuery, QueryExecution, QueryExecutionContext, QueryExecutionStatistics, QueryExecutionStatus, ResultConfiguration, ResultConfigurationUpdates, ResultSet, ResultSetMetadata, Row, Tag, UnprocessedNamedQueryId, UnprocessedQueryExecutionId, WorkGroup, WorkGroupConfiguration, WorkGroupConfigurationUpdates, WorkGroupSummary
    , ColumnNullable(..), EncryptionOption(..), QueryExecutionState(..), StatementType(..), WorkGroupState(..)
    )

{-|

<p>Amazon Athena is an interactive query service that lets you use standard SQL to analyze data directly in Amazon S3. You can point Athena at your data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena is serverless, so there is no infrastructure to set up or manage. You pay only for the queries you run. Athena scales automatically—executing queries in parallel—so results are fast, even with large datasets and complex queries. For more information, see <a href="http://docs.aws.amazon.com/athena/latest/ug/what-is.html">What is Amazon Athena</a> in the <i>Amazon Athena User Guide</i>.</p> <p>If you connect to Athena using the JDBC driver, use version 1.1.0 of the driver or later with the Amazon Athena API. Earlier version drivers do not support the API. For more information and to download the driver, see <a href="https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html">Accessing Amazon Athena with JDBC</a>.</p> <p>For code samples using the AWS SDK for Java, see <a href="https://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [batchGetNamedQuery](#batchGetNamedQuery)
  - [batchGetQueryExecution](#batchGetQueryExecution)
  - [createNamedQuery](#createNamedQuery)
  - [CreateNamedQueryOptions](#CreateNamedQueryOptions)
  - [createWorkGroup](#createWorkGroup)
  - [CreateWorkGroupOptions](#CreateWorkGroupOptions)
  - [deleteNamedQuery](#deleteNamedQuery)
  - [deleteWorkGroup](#deleteWorkGroup)
  - [DeleteWorkGroupOptions](#DeleteWorkGroupOptions)
  - [getNamedQuery](#getNamedQuery)
  - [getQueryExecution](#getQueryExecution)
  - [getQueryResults](#getQueryResults)
  - [GetQueryResultsOptions](#GetQueryResultsOptions)
  - [getWorkGroup](#getWorkGroup)
  - [listNamedQueries](#listNamedQueries)
  - [ListNamedQueriesOptions](#ListNamedQueriesOptions)
  - [listQueryExecutions](#listQueryExecutions)
  - [ListQueryExecutionsOptions](#ListQueryExecutionsOptions)
  - [listTagsForResource](#listTagsForResource)
  - [ListTagsForResourceOptions](#ListTagsForResourceOptions)
  - [listWorkGroups](#listWorkGroups)
  - [ListWorkGroupsOptions](#ListWorkGroupsOptions)
  - [startQueryExecution](#startQueryExecution)
  - [StartQueryExecutionOptions](#StartQueryExecutionOptions)
  - [stopQueryExecution](#stopQueryExecution)
  - [tagResource](#tagResource)
  - [untagResource](#untagResource)
  - [updateWorkGroup](#updateWorkGroup)
  - [UpdateWorkGroupOptions](#UpdateWorkGroupOptions)

@docs batchGetNamedQuery, batchGetQueryExecution, createNamedQuery, CreateNamedQueryOptions, createWorkGroup, CreateWorkGroupOptions, deleteNamedQuery, deleteWorkGroup, DeleteWorkGroupOptions, getNamedQuery, getQueryExecution, getQueryResults, GetQueryResultsOptions, getWorkGroup, listNamedQueries, ListNamedQueriesOptions, listQueryExecutions, ListQueryExecutionsOptions, listTagsForResource, ListTagsForResourceOptions, listWorkGroups, ListWorkGroupsOptions, startQueryExecution, StartQueryExecutionOptions, stopQueryExecution, tagResource, untagResource, updateWorkGroup, UpdateWorkGroupOptions


## Responses

  - [BatchGetNamedQueryOutput](#BatchGetNamedQueryOutput)
  - [BatchGetQueryExecutionOutput](#BatchGetQueryExecutionOutput)
  - [CreateNamedQueryOutput](#CreateNamedQueryOutput)
  - [CreateWorkGroupOutput](#CreateWorkGroupOutput)
  - [DeleteNamedQueryOutput](#DeleteNamedQueryOutput)
  - [DeleteWorkGroupOutput](#DeleteWorkGroupOutput)
  - [GetNamedQueryOutput](#GetNamedQueryOutput)
  - [GetQueryExecutionOutput](#GetQueryExecutionOutput)
  - [GetQueryResultsOutput](#GetQueryResultsOutput)
  - [GetWorkGroupOutput](#GetWorkGroupOutput)
  - [ListNamedQueriesOutput](#ListNamedQueriesOutput)
  - [ListQueryExecutionsOutput](#ListQueryExecutionsOutput)
  - [ListTagsForResourceOutput](#ListTagsForResourceOutput)
  - [ListWorkGroupsOutput](#ListWorkGroupsOutput)
  - [StartQueryExecutionOutput](#StartQueryExecutionOutput)
  - [StopQueryExecutionOutput](#StopQueryExecutionOutput)
  - [TagResourceOutput](#TagResourceOutput)
  - [UntagResourceOutput](#UntagResourceOutput)
  - [UpdateWorkGroupOutput](#UpdateWorkGroupOutput)

@docs BatchGetNamedQueryOutput, BatchGetQueryExecutionOutput, CreateNamedQueryOutput, CreateWorkGroupOutput, DeleteNamedQueryOutput, DeleteWorkGroupOutput, GetNamedQueryOutput, GetQueryExecutionOutput, GetQueryResultsOutput, GetWorkGroupOutput, ListNamedQueriesOutput, ListQueryExecutionsOutput, ListTagsForResourceOutput, ListWorkGroupsOutput, StartQueryExecutionOutput, StopQueryExecutionOutput, TagResourceOutput, UntagResourceOutput, UpdateWorkGroupOutput


## Records

  - [ColumnInfo](#ColumnInfo)
  - [Datum](#Datum)
  - [EncryptionConfiguration](#EncryptionConfiguration)
  - [NamedQuery](#NamedQuery)
  - [QueryExecution](#QueryExecution)
  - [QueryExecutionContext](#QueryExecutionContext)
  - [QueryExecutionStatistics](#QueryExecutionStatistics)
  - [QueryExecutionStatus](#QueryExecutionStatus)
  - [ResultConfiguration](#ResultConfiguration)
  - [ResultConfigurationUpdates](#ResultConfigurationUpdates)
  - [ResultSet](#ResultSet)
  - [ResultSetMetadata](#ResultSetMetadata)
  - [Row](#Row)
  - [Tag](#Tag)
  - [UnprocessedNamedQueryId](#UnprocessedNamedQueryId)
  - [UnprocessedQueryExecutionId](#UnprocessedQueryExecutionId)
  - [WorkGroup](#WorkGroup)
  - [WorkGroupConfiguration](#WorkGroupConfiguration)
  - [WorkGroupConfigurationUpdates](#WorkGroupConfigurationUpdates)
  - [WorkGroupSummary](#WorkGroupSummary)

@docs ColumnInfo, Datum, EncryptionConfiguration, NamedQuery, QueryExecution, QueryExecutionContext, QueryExecutionStatistics, QueryExecutionStatus, ResultConfiguration, ResultConfigurationUpdates, ResultSet, ResultSetMetadata, Row, Tag, UnprocessedNamedQueryId, UnprocessedQueryExecutionId, WorkGroup, WorkGroupConfiguration, WorkGroupConfigurationUpdates, WorkGroupSummary


## Unions

  - [ColumnNullable](#ColumnNullable)
  - [EncryptionOption](#EncryptionOption)
  - [QueryExecutionState](#QueryExecutionState)
  - [StatementType](#StatementType)
  - [WorkGroupState](#WorkGroupState)

@docs ColumnNullable, EncryptionOption, QueryExecutionState, StatementType, WorkGroupState

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
        "athena"
        "2017-05-18"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AmazonAthena")



-- OPERATIONS


{-|

<p>Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings. Requires you to have access to the workgroup in which the queries were saved. Use <a>ListNamedQueriesInput</a> to get the list of named query IDs in the specified workgroup. If information could not be retrieved for a submitted query ID, information about the query ID submitted is listed under <a>UnprocessedNamedQueryId</a>. Named queries differ from executed queries. Use <a>BatchGetQueryExecutionInput</a> to get details about each unique query execution, and <a>ListQueryExecutionsInput</a> to get a list of query execution IDs.</p>

**Required Parameters**

  - `namedQueryIds` **:** `(List String)`

-}
batchGetNamedQuery :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response BatchGetNamedQueryOutput)
batchGetNamedQuery namedQueryIds =
    let
        requestInput =
            BatchGetNamedQueryInput
                namedQueryIds
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> batchGetNamedQueryInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchGetNamedQuery"
            (AWS.Core.Decode.ResultDecoder "BatchGetNamedQueryOutput" batchGetNamedQueryOutputDecoder)
        )


{-|

<p>Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. Requires you to have access to the workgroup in which the queries ran. To get a list of query execution IDs, use <a>ListQueryExecutionsInput$WorkGroup</a>. Query executions differ from named (saved) queries. Use <a>BatchGetNamedQueryInput</a> to get details about named queries.</p>

**Required Parameters**

  - `queryExecutionIds` **:** `(List String)`

-}
batchGetQueryExecution :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response BatchGetQueryExecutionOutput)
batchGetQueryExecution queryExecutionIds =
    let
        requestInput =
            BatchGetQueryExecutionInput
                queryExecutionIds
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> batchGetQueryExecutionInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "BatchGetQueryExecution"
            (AWS.Core.Decode.ResultDecoder "BatchGetQueryExecutionOutput" batchGetQueryExecutionOutputDecoder)
        )


{-|

<p>Creates a named query in the specified workgroup. Requires that you have access to the workgroup.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>

**Required Parameters**

  - `name` **:** `String`
  - `database` **:** `String`
  - `queryString` **:** `String`

-}
createNamedQuery :
    String
    -> String
    -> String
    -> (CreateNamedQueryOptions -> CreateNamedQueryOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateNamedQueryOutput)
createNamedQuery name database queryString setOptions =
    let
        requestInput =
            CreateNamedQueryInput
                name
                options.description
                database
                queryString
                options.clientRequestToken
                options.workGroup

        options =
            setOptions (CreateNamedQueryOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> createNamedQueryInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateNamedQuery"
            (AWS.Core.Decode.ResultDecoder "CreateNamedQueryOutput" createNamedQueryOutputDecoder)
        )


{-| Options for a createNamedQuery request
-}
type alias CreateNamedQueryOptions =
    { description : Maybe String
    , clientRequestToken : Maybe String
    , workGroup : Maybe String
    }


{-|

<p>Creates a workgroup with the specified name.</p>

**Required Parameters**

  - `name` **:** `String`

-}
createWorkGroup :
    String
    -> (CreateWorkGroupOptions -> CreateWorkGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateWorkGroupOutput)
createWorkGroup name setOptions =
    let
        requestInput =
            CreateWorkGroupInput
                name
                options.configuration
                options.description
                options.tags

        options =
            setOptions (CreateWorkGroupOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> createWorkGroupInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateWorkGroup"
            (AWS.Core.Decode.ResultDecoder "CreateWorkGroupOutput" createWorkGroupOutputDecoder)
        )


{-| Options for a createWorkGroup request
-}
type alias CreateWorkGroupOptions =
    { configuration : Maybe WorkGroupConfiguration
    , description : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Deletes the named query if you have access to the workgroup in which the query was saved.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>

**Required Parameters**

  - `namedQueryId` **:** `String`

-}
deleteNamedQuery :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response DeleteNamedQueryOutput)
deleteNamedQuery namedQueryId =
    let
        requestInput =
            DeleteNamedQueryInput
                namedQueryId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> deleteNamedQueryInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteNamedQuery"
            (AWS.Core.Decode.ResultDecoder "DeleteNamedQueryOutput" deleteNamedQueryOutputDecoder)
        )


{-|

<p>Deletes the workgroup with the specified name. The primary workgroup cannot be deleted.</p>

**Required Parameters**

  - `workGroup` **:** `String`

-}
deleteWorkGroup :
    String
    -> (DeleteWorkGroupOptions -> DeleteWorkGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response DeleteWorkGroupOutput)
deleteWorkGroup workGroup setOptions =
    let
        requestInput =
            DeleteWorkGroupInput
                workGroup
                options.recursiveDeleteOption

        options =
            setOptions (DeleteWorkGroupOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> deleteWorkGroupInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteWorkGroup"
            (AWS.Core.Decode.ResultDecoder "DeleteWorkGroupOutput" deleteWorkGroupOutputDecoder)
        )


{-| Options for a deleteWorkGroup request
-}
type alias DeleteWorkGroupOptions =
    { recursiveDeleteOption : Maybe Bool
    }


{-|

<p>Returns information about a single query. Requires that you have access to the workgroup in which the query was saved.</p>

**Required Parameters**

  - `namedQueryId` **:** `String`

-}
getNamedQuery :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetNamedQueryOutput)
getNamedQuery namedQueryId =
    let
        requestInput =
            GetNamedQueryInput
                namedQueryId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> getNamedQueryInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetNamedQuery"
            (AWS.Core.Decode.ResultDecoder "GetNamedQueryOutput" getNamedQueryOutputDecoder)
        )


{-|

<p>Returns information about a single execution of a query if you have access to the workgroup in which the query ran. Each time a query executes, information about the query execution is saved with a unique ID.</p>

**Required Parameters**

  - `queryExecutionId` **:** `String`

-}
getQueryExecution :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetQueryExecutionOutput)
getQueryExecution queryExecutionId =
    let
        requestInput =
            GetQueryExecutionInput
                queryExecutionId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> getQueryExecutionInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetQueryExecution"
            (AWS.Core.Decode.ResultDecoder "GetQueryExecutionOutput" getQueryExecutionOutputDecoder)
        )


{-|

<p>Returns the results of a single query execution specified by <code>QueryExecutionId</code> if you have access to the workgroup in which the query ran. This request does not execute the query but returns results. Use <a>StartQueryExecution</a> to run a query.</p>

**Required Parameters**

  - `queryExecutionId` **:** `String`

-}
getQueryResults :
    String
    -> (GetQueryResultsOptions -> GetQueryResultsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetQueryResultsOutput)
getQueryResults queryExecutionId setOptions =
    let
        requestInput =
            GetQueryResultsInput
                queryExecutionId
                options.nextToken
                options.maxResults

        options =
            setOptions (GetQueryResultsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> getQueryResultsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetQueryResults"
            (AWS.Core.Decode.ResultDecoder "GetQueryResultsOutput" getQueryResultsOutputDecoder)
        )


{-| Options for a getQueryResults request
-}
type alias GetQueryResultsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p>Returns information about the workgroup with the specified name.</p>

**Required Parameters**

  - `workGroup` **:** `String`

-}
getWorkGroup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetWorkGroupOutput)
getWorkGroup workGroup =
    let
        requestInput =
            GetWorkGroupInput
                workGroup
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> getWorkGroupInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetWorkGroup"
            (AWS.Core.Decode.ResultDecoder "GetWorkGroupOutput" getWorkGroupOutputDecoder)
        )


{-|

<p>Provides a list of available query IDs only for queries saved in the specified workgroup. Requires that you have access to the workgroup.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>

**Required Parameters**

-}
listNamedQueries :
    (ListNamedQueriesOptions -> ListNamedQueriesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListNamedQueriesOutput)
listNamedQueries setOptions =
    let
        requestInput =
            ListNamedQueriesInput
                options.nextToken
                options.maxResults
                options.workGroup

        options =
            setOptions (ListNamedQueriesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> listNamedQueriesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListNamedQueries"
            (AWS.Core.Decode.ResultDecoder "ListNamedQueriesOutput" listNamedQueriesOutputDecoder)
        )


{-| Options for a listNamedQueries request
-}
type alias ListNamedQueriesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , workGroup : Maybe String
    }


{-|

<p>Provides a list of available query execution IDs for the queries in the specified workgroup. Requires you to have access to the workgroup in which the queries ran.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>

**Required Parameters**

-}
listQueryExecutions :
    (ListQueryExecutionsOptions -> ListQueryExecutionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListQueryExecutionsOutput)
listQueryExecutions setOptions =
    let
        requestInput =
            ListQueryExecutionsInput
                options.nextToken
                options.maxResults
                options.workGroup

        options =
            setOptions (ListQueryExecutionsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> listQueryExecutionsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListQueryExecutions"
            (AWS.Core.Decode.ResultDecoder "ListQueryExecutionsOutput" listQueryExecutionsOutputDecoder)
        )


{-| Options for a listQueryExecutions request
-}
type alias ListQueryExecutionsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , workGroup : Maybe String
    }


{-|

<p>Lists the tags associated with this workgroup.</p>

**Required Parameters**

  - `resourceARN` **:** `String`

-}
listTagsForResource :
    String
    -> (ListTagsForResourceOptions -> ListTagsForResourceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListTagsForResourceOutput)
listTagsForResource resourceARN setOptions =
    let
        requestInput =
            ListTagsForResourceInput
                resourceARN
                options.nextToken
                options.maxResults

        options =
            setOptions (ListTagsForResourceOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
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
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p>Lists available workgroups for the account.</p>

**Required Parameters**

-}
listWorkGroups :
    (ListWorkGroupsOptions -> ListWorkGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListWorkGroupsOutput)
listWorkGroups setOptions =
    let
        requestInput =
            ListWorkGroupsInput
                options.nextToken
                options.maxResults

        options =
            setOptions (ListWorkGroupsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> listWorkGroupsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListWorkGroups"
            (AWS.Core.Decode.ResultDecoder "ListWorkGroupsOutput" listWorkGroupsOutputDecoder)
        )


{-| Options for a listWorkGroups request
-}
type alias ListWorkGroupsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-|

<p>Runs the SQL query statements contained in the <code>Query</code>. Requires you to have access to the workgroup in which the query ran.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>

**Required Parameters**

  - `queryString` **:** `String`

-}
startQueryExecution :
    String
    -> (StartQueryExecutionOptions -> StartQueryExecutionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response StartQueryExecutionOutput)
startQueryExecution queryString setOptions =
    let
        requestInput =
            StartQueryExecutionInput
                queryString
                options.clientRequestToken
                options.queryExecutionContext
                options.resultConfiguration
                options.workGroup

        options =
            setOptions (StartQueryExecutionOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> startQueryExecutionInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StartQueryExecution"
            (AWS.Core.Decode.ResultDecoder "StartQueryExecutionOutput" startQueryExecutionOutputDecoder)
        )


{-| Options for a startQueryExecution request
-}
type alias StartQueryExecutionOptions =
    { clientRequestToken : Maybe String
    , queryExecutionContext : Maybe QueryExecutionContext
    , resultConfiguration : Maybe ResultConfiguration
    , workGroup : Maybe String
    }


{-|

<p>Stops a query execution. Requires you to have access to the workgroup in which the query ran.</p> <p>For code samples using the AWS SDK for Java, see <a href="http://docs.aws.amazon.com/athena/latest/ug/code-samples.html">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>

**Required Parameters**

  - `queryExecutionId` **:** `String`

-}
stopQueryExecution :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response StopQueryExecutionOutput)
stopQueryExecution queryExecutionId =
    let
        requestInput =
            StopQueryExecutionInput
                queryExecutionId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> stopQueryExecutionInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "StopQueryExecution"
            (AWS.Core.Decode.ResultDecoder "StopQueryExecutionOutput" stopQueryExecutionOutputDecoder)
        )


{-|

<p>Adds one or more tags to the resource, such as a workgroup. A tag is a label that you assign to an AWS Athena resource (a workgroup). Each tag consists of a key and an optional value, both of which you define. Tags enable you to categorize resources (workgroups) in Athena, for example, by purpose, owner, or environment. Use a consistent set of tag keys to make it easier to search and filter workgroups in your account. For best practices, see <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">AWS Tagging Strategies</a>. The key length is from 1 (minimum) to 128 (maximum) Unicode characters in UTF-8. The tag value length is from 0 (minimum) to 256 (maximum) Unicode characters in UTF-8. You can use letters and numbers representable in UTF-8, and the following characters: + - = . _ : / @. Tag keys and values are case-sensitive. Tag keys must be unique per resource. If you specify more than one, separate them by commas.</p>

**Required Parameters**

  - `resourceARN` **:** `String`
  - `tags` **:** `(List Tag)`

-}
tagResource :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response TagResourceOutput)
tagResource resourceARN tags =
    let
        requestInput =
            TagResourceInput
                resourceARN
                tags
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> tagResourceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "TagResource"
            (AWS.Core.Decode.ResultDecoder "TagResourceOutput" tagResourceOutputDecoder)
        )


{-|

<p>Removes one or more tags from the workgroup resource. Takes as an input a list of TagKey Strings separated by commas, and removes their tags at the same time.</p>

**Required Parameters**

  - `resourceARN` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
untagResource :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response UntagResourceOutput)
untagResource resourceARN tagKeys =
    let
        requestInput =
            UntagResourceInput
                resourceARN
                tagKeys
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> untagResourceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UntagResource"
            (AWS.Core.Decode.ResultDecoder "UntagResourceOutput" untagResourceOutputDecoder)
        )


{-|

<p>Updates the workgroup with the specified name. The workgroup's name cannot be changed.</p>

**Required Parameters**

  - `workGroup` **:** `String`

-}
updateWorkGroup :
    String
    -> (UpdateWorkGroupOptions -> UpdateWorkGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response UpdateWorkGroupOutput)
updateWorkGroup workGroup setOptions =
    let
        requestInput =
            UpdateWorkGroupInput
                workGroup
                options.description
                options.configurationUpdates
                options.state

        options =
            setOptions (UpdateWorkGroupOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        []
        (requestInput
            |> updateWorkGroupInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateWorkGroup"
            (AWS.Core.Decode.ResultDecoder "UpdateWorkGroupOutput" updateWorkGroupOutputDecoder)
        )


{-| Options for a updateWorkGroup request
-}
type alias UpdateWorkGroupOptions =
    { description : Maybe String
    , configurationUpdates : Maybe WorkGroupConfigurationUpdates
    , state : Maybe WorkGroupState
    }


{-| Type of HTTP response from batchGetNamedQue
-}
type alias BatchGetNamedQueryOutput =
    { namedQueries : Maybe (List NamedQuery)
    , unprocessedNamedQueryIds : Maybe (List UnprocessedNamedQueryId)
    }


batchGetNamedQueryOutputDecoder : JD.Decoder BatchGetNamedQueryOutput
batchGetNamedQueryOutputDecoder =
    JD.succeed BatchGetNamedQueryOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NamedQueries", "namedQueries" ]
                (JD.list namedQueryDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UnprocessedNamedQueryIds", "unprocessedNamedQueryIds" ]
                (JD.list unprocessedNamedQueryIdDecoder)
            )


{-| Type of HTTP response from batchGetQueryExecuti
-}
type alias BatchGetQueryExecutionOutput =
    { queryExecutions : Maybe (List QueryExecution)
    , unprocessedQueryExecutionIds : Maybe (List UnprocessedQueryExecutionId)
    }


batchGetQueryExecutionOutputDecoder : JD.Decoder BatchGetQueryExecutionOutput
batchGetQueryExecutionOutputDecoder =
    JD.succeed BatchGetQueryExecutionOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "QueryExecutions", "queryExecutions" ]
                (JD.list queryExecutionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UnprocessedQueryExecutionIds", "unprocessedQueryExecutionIds" ]
                (JD.list unprocessedQueryExecutionIdDecoder)
            )


{-|

<p>Information about the columns in a query execution result.</p>

-}
type alias ColumnInfo =
    { catalogName : Maybe String
    , schemaName : Maybe String
    , tableName : Maybe String
    , name : String
    , label : Maybe String
    , type_ : String
    , precision : Maybe Int
    , scale : Maybe Int
    , nullable : Maybe ColumnNullable
    , caseSensitive : Maybe Bool
    }


columnInfoDecoder : JD.Decoder ColumnInfo
columnInfoDecoder =
    JD.succeed ColumnInfo
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CatalogName", "catalogName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SchemaName", "schemaName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TableName", "tableName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Label", "label" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Type", "type" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Precision", "precision" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Scale", "scale" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Nullable", "nullable" ]
                columnNullableDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CaseSensitive", "caseSensitive" ]
                JD.bool
            )


{-| One of

  - `ColumnNullable_NOT_NULL`
  - `ColumnNullable_NULLABLE`
  - `ColumnNullable_UNKNOWN`

-}
type ColumnNullable
    = ColumnNullable_NOT_NULL
    | ColumnNullable_NULLABLE
    | ColumnNullable_UNKNOWN


columnNullableDecoder : JD.Decoder ColumnNullable
columnNullableDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NOT_NULL" ->
                        JD.succeed ColumnNullable_NOT_NULL

                    "NULLABLE" ->
                        JD.succeed ColumnNullable_NULLABLE

                    "UNKNOWN" ->
                        JD.succeed ColumnNullable_UNKNOWN

                    _ ->
                        JD.fail "bad thing"
            )


columnNullableToString : ColumnNullable -> String
columnNullableToString val =
    case val of
        ColumnNullable_NOT_NULL ->
            "NOT_NULL"

        ColumnNullable_NULLABLE ->
            "NULLABLE"

        ColumnNullable_UNKNOWN ->
            "UNKNOWN"


{-| Type of HTTP response from createNamedQue
-}
type alias CreateNamedQueryOutput =
    { namedQueryId : Maybe String
    }


createNamedQueryOutputDecoder : JD.Decoder CreateNamedQueryOutput
createNamedQueryOutputDecoder =
    JD.succeed CreateNamedQueryOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NamedQueryId", "namedQueryId" ]
                JD.string
            )


{-| Type of HTTP response from createWorkGro
-}
type alias CreateWorkGroupOutput =
    {}


createWorkGroupOutputDecoder : JD.Decoder CreateWorkGroupOutput
createWorkGroupOutputDecoder =
    JD.succeed CreateWorkGroupOutput


{-|

<p>A piece of data (a field in the table).</p>

-}
type alias Datum =
    { varCharValue : Maybe String
    }


datumDecoder : JD.Decoder Datum
datumDecoder =
    JD.succeed Datum
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VarCharValue", "varCharValue" ]
                JD.string
            )


{-| Type of HTTP response from deleteNamedQue
-}
type alias DeleteNamedQueryOutput =
    {}


deleteNamedQueryOutputDecoder : JD.Decoder DeleteNamedQueryOutput
deleteNamedQueryOutputDecoder =
    JD.succeed DeleteNamedQueryOutput


{-| Type of HTTP response from deleteWorkGro
-}
type alias DeleteWorkGroupOutput =
    {}


deleteWorkGroupOutputDecoder : JD.Decoder DeleteWorkGroupOutput
deleteWorkGroupOutputDecoder =
    JD.succeed DeleteWorkGroupOutput


{-|

<p>If query results are encrypted in Amazon S3, indicates the encryption option used (for example, <code>SSE-KMS</code> or <code>CSE-KMS</code>) and key information.</p>

-}
type alias EncryptionConfiguration =
    { encryptionOption : EncryptionOption
    , kmsKey : Maybe String
    }


encryptionConfigurationDecoder : JD.Decoder EncryptionConfiguration
encryptionConfigurationDecoder =
    JD.succeed EncryptionConfiguration
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "EncryptionOption", "encryptionOption" ]
                encryptionOptionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "KmsKey", "kmsKey" ]
                JD.string
            )


{-| One of

  - `EncryptionOption_SSE_S3`
  - `EncryptionOption_SSE_KMS`
  - `EncryptionOption_CSE_KMS`

-}
type EncryptionOption
    = EncryptionOption_SSE_S3
    | EncryptionOption_SSE_KMS
    | EncryptionOption_CSE_KMS


encryptionOptionDecoder : JD.Decoder EncryptionOption
encryptionOptionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SSE_S3" ->
                        JD.succeed EncryptionOption_SSE_S3

                    "SSE_KMS" ->
                        JD.succeed EncryptionOption_SSE_KMS

                    "CSE_KMS" ->
                        JD.succeed EncryptionOption_CSE_KMS

                    _ ->
                        JD.fail "bad thing"
            )


encryptionOptionToString : EncryptionOption -> String
encryptionOptionToString val =
    case val of
        EncryptionOption_SSE_S3 ->
            "SSE_S3"

        EncryptionOption_SSE_KMS ->
            "SSE_KMS"

        EncryptionOption_CSE_KMS ->
            "CSE_KMS"


{-| Type of HTTP response from getNamedQue
-}
type alias GetNamedQueryOutput =
    { namedQuery : Maybe NamedQuery
    }


getNamedQueryOutputDecoder : JD.Decoder GetNamedQueryOutput
getNamedQueryOutputDecoder =
    JD.succeed GetNamedQueryOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NamedQuery", "namedQuery" ]
                namedQueryDecoder
            )


{-| Type of HTTP response from getQueryExecuti
-}
type alias GetQueryExecutionOutput =
    { queryExecution : Maybe QueryExecution
    }


getQueryExecutionOutputDecoder : JD.Decoder GetQueryExecutionOutput
getQueryExecutionOutputDecoder =
    JD.succeed GetQueryExecutionOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "QueryExecution", "queryExecution" ]
                queryExecutionDecoder
            )


{-| Type of HTTP response from getQueryResul
-}
type alias GetQueryResultsOutput =
    { updateCount : Maybe Int
    , resultSet : Maybe ResultSet
    , nextToken : Maybe String
    }


getQueryResultsOutputDecoder : JD.Decoder GetQueryResultsOutput
getQueryResultsOutputDecoder =
    JD.succeed GetQueryResultsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UpdateCount", "updateCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResultSet", "resultSet" ]
                resultSetDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from getWorkGro
-}
type alias GetWorkGroupOutput =
    { workGroup : Maybe WorkGroup
    }


getWorkGroupOutputDecoder : JD.Decoder GetWorkGroupOutput
getWorkGroupOutputDecoder =
    JD.succeed GetWorkGroupOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "WorkGroup", "workGroup" ]
                workGroupDecoder
            )


{-| Type of HTTP response from listNamedQueri
-}
type alias ListNamedQueriesOutput =
    { namedQueryIds : Maybe (List String)
    , nextToken : Maybe String
    }


listNamedQueriesOutputDecoder : JD.Decoder ListNamedQueriesOutput
listNamedQueriesOutputDecoder =
    JD.succeed ListNamedQueriesOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NamedQueryIds", "namedQueryIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from listQueryExecutio
-}
type alias ListQueryExecutionsOutput =
    { queryExecutionIds : Maybe (List String)
    , nextToken : Maybe String
    }


listQueryExecutionsOutputDecoder : JD.Decoder ListQueryExecutionsOutput
listQueryExecutionsOutputDecoder =
    JD.succeed ListQueryExecutionsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "QueryExecutionIds", "queryExecutionIds" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from listTagsForResour
-}
type alias ListTagsForResourceOutput =
    { tags : Maybe (List Tag)
    , nextToken : Maybe String
    }


listTagsForResourceOutputDecoder : JD.Decoder ListTagsForResourceOutput
listTagsForResourceOutputDecoder =
    JD.succeed ListTagsForResourceOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from listWorkGrou
-}
type alias ListWorkGroupsOutput =
    { workGroups : Maybe (List WorkGroupSummary)
    , nextToken : Maybe String
    }


listWorkGroupsOutputDecoder : JD.Decoder ListWorkGroupsOutput
listWorkGroupsOutputDecoder =
    JD.succeed ListWorkGroupsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "WorkGroups", "workGroups" ]
                (JD.list workGroupSummaryDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>A query, where <code>QueryString</code> is the list of SQL query statements that comprise the query.</p>

-}
type alias NamedQuery =
    { name : String
    , description : Maybe String
    , database : String
    , queryString : String
    , namedQueryId : Maybe String
    , workGroup : Maybe String
    }


namedQueryDecoder : JD.Decoder NamedQuery
namedQueryDecoder =
    JD.succeed NamedQuery
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Database", "database" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "QueryString", "queryString" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NamedQueryId", "namedQueryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "WorkGroup", "workGroup" ]
                JD.string
            )


{-|

<p>Information about a single instance of a query execution.</p>

-}
type alias QueryExecution =
    { queryExecutionId : Maybe String
    , query : Maybe String
    , statementType : Maybe StatementType
    , resultConfiguration : Maybe ResultConfiguration
    , queryExecutionContext : Maybe QueryExecutionContext
    , status : Maybe QueryExecutionStatus
    , statistics : Maybe QueryExecutionStatistics
    , workGroup : Maybe String
    }


queryExecutionDecoder : JD.Decoder QueryExecution
queryExecutionDecoder =
    JD.succeed QueryExecution
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "QueryExecutionId", "queryExecutionId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Query", "query" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StatementType", "statementType" ]
                statementTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResultConfiguration", "resultConfiguration" ]
                resultConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "QueryExecutionContext", "queryExecutionContext" ]
                queryExecutionContextDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                queryExecutionStatusDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Statistics", "statistics" ]
                queryExecutionStatisticsDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "WorkGroup", "workGroup" ]
                JD.string
            )


{-|

<p>The database in which the query execution occurs.</p>

-}
type alias QueryExecutionContext =
    { database : Maybe String
    }


queryExecutionContextDecoder : JD.Decoder QueryExecutionContext
queryExecutionContextDecoder =
    JD.succeed QueryExecutionContext
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Database", "database" ]
                JD.string
            )


{-| One of

  - `QueryExecutionState_QUEUED`
  - `QueryExecutionState_RUNNING`
  - `QueryExecutionState_SUCCEEDED`
  - `QueryExecutionState_FAILED`
  - `QueryExecutionState_CANCELLED`

-}
type QueryExecutionState
    = QueryExecutionState_QUEUED
    | QueryExecutionState_RUNNING
    | QueryExecutionState_SUCCEEDED
    | QueryExecutionState_FAILED
    | QueryExecutionState_CANCELLED


queryExecutionStateDecoder : JD.Decoder QueryExecutionState
queryExecutionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "QUEUED" ->
                        JD.succeed QueryExecutionState_QUEUED

                    "RUNNING" ->
                        JD.succeed QueryExecutionState_RUNNING

                    "SUCCEEDED" ->
                        JD.succeed QueryExecutionState_SUCCEEDED

                    "FAILED" ->
                        JD.succeed QueryExecutionState_FAILED

                    "CANCELLED" ->
                        JD.succeed QueryExecutionState_CANCELLED

                    _ ->
                        JD.fail "bad thing"
            )


queryExecutionStateToString : QueryExecutionState -> String
queryExecutionStateToString val =
    case val of
        QueryExecutionState_QUEUED ->
            "QUEUED"

        QueryExecutionState_RUNNING ->
            "RUNNING"

        QueryExecutionState_SUCCEEDED ->
            "SUCCEEDED"

        QueryExecutionState_FAILED ->
            "FAILED"

        QueryExecutionState_CANCELLED ->
            "CANCELLED"


{-|

<p>The amount of data scanned during the query execution and the amount of time that it took to execute, and the type of statement that was run.</p>

-}
type alias QueryExecutionStatistics =
    { engineExecutionTimeInMillis : Maybe Int
    , dataScannedInBytes : Maybe Int
    }


queryExecutionStatisticsDecoder : JD.Decoder QueryExecutionStatistics
queryExecutionStatisticsDecoder =
    JD.succeed QueryExecutionStatistics
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EngineExecutionTimeInMillis", "engineExecutionTimeInMillis" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DataScannedInBytes", "dataScannedInBytes" ]
                JD.int
            )


{-|

<p>The completion date, current state, submission time, and state change reason (if applicable) for the query execution.</p>

-}
type alias QueryExecutionStatus =
    { state : Maybe QueryExecutionState
    , stateChangeReason : Maybe String
    , submissionDateTime : Maybe Posix
    , completionDateTime : Maybe Posix
    }


queryExecutionStatusDecoder : JD.Decoder QueryExecutionStatus
queryExecutionStatusDecoder =
    JD.succeed QueryExecutionStatus
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                queryExecutionStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StateChangeReason", "stateChangeReason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SubmissionDateTime", "submissionDateTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CompletionDateTime", "completionDateTime" ]
                JDX.datetime
            )


{-|

<p>The location in Amazon S3 where query results are stored and the encryption option, if any, used for query results. These are known as "client-side settings". If workgroup settings override client-side settings, then the query uses the location for the query results and the encryption configuration that are specified for the workgroup.</p>

-}
type alias ResultConfiguration =
    { outputLocation : Maybe String
    , encryptionConfiguration : Maybe EncryptionConfiguration
    }


resultConfigurationDecoder : JD.Decoder ResultConfiguration
resultConfigurationDecoder =
    JD.succeed ResultConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OutputLocation", "outputLocation" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EncryptionConfiguration", "encryptionConfiguration" ]
                encryptionConfigurationDecoder
            )


{-|

<p>The information about the updates in the query results, such as output location and encryption configuration for the query results.</p>

-}
type alias ResultConfigurationUpdates =
    { outputLocation : Maybe String
    , removeOutputLocation : Maybe Bool
    , encryptionConfiguration : Maybe EncryptionConfiguration
    , removeEncryptionConfiguration : Maybe Bool
    }


resultConfigurationUpdatesDecoder : JD.Decoder ResultConfigurationUpdates
resultConfigurationUpdatesDecoder =
    JD.succeed ResultConfigurationUpdates
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OutputLocation", "outputLocation" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RemoveOutputLocation", "removeOutputLocation" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EncryptionConfiguration", "encryptionConfiguration" ]
                encryptionConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RemoveEncryptionConfiguration", "removeEncryptionConfiguration" ]
                JD.bool
            )


{-|

<p>The metadata and rows that comprise a query result set. The metadata describes the column structure and data types.</p>

-}
type alias ResultSet =
    { rows : Maybe (List Row)
    , resultSetMetadata : Maybe ResultSetMetadata
    }


resultSetDecoder : JD.Decoder ResultSet
resultSetDecoder =
    JD.succeed ResultSet
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Rows", "rows" ]
                (JD.list rowDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResultSetMetadata", "resultSetMetadata" ]
                resultSetMetadataDecoder
            )


{-|

<p>The metadata that describes the column structure and data types of a table of query results. </p>

-}
type alias ResultSetMetadata =
    { columnInfo : Maybe (List ColumnInfo)
    }


resultSetMetadataDecoder : JD.Decoder ResultSetMetadata
resultSetMetadataDecoder =
    JD.succeed ResultSetMetadata
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ColumnInfo", "columnInfo" ]
                (JD.list columnInfoDecoder)
            )


{-|

<p>The rows that comprise a query result table.</p>

-}
type alias Row =
    { data : Maybe (List Datum)
    }


rowDecoder : JD.Decoder Row
rowDecoder =
    JD.succeed Row
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Data", "data" ]
                (JD.list datumDecoder)
            )


{-| Type of HTTP response from startQueryExecuti
-}
type alias StartQueryExecutionOutput =
    { queryExecutionId : Maybe String
    }


startQueryExecutionOutputDecoder : JD.Decoder StartQueryExecutionOutput
startQueryExecutionOutputDecoder =
    JD.succeed StartQueryExecutionOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "QueryExecutionId", "queryExecutionId" ]
                JD.string
            )


{-| One of

  - `StatementType_DDL`
  - `StatementType_DML`
  - `StatementType_UTILITY`

-}
type StatementType
    = StatementType_DDL
    | StatementType_DML
    | StatementType_UTILITY


statementTypeDecoder : JD.Decoder StatementType
statementTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DDL" ->
                        JD.succeed StatementType_DDL

                    "DML" ->
                        JD.succeed StatementType_DML

                    "UTILITY" ->
                        JD.succeed StatementType_UTILITY

                    _ ->
                        JD.fail "bad thing"
            )


statementTypeToString : StatementType -> String
statementTypeToString val =
    case val of
        StatementType_DDL ->
            "DDL"

        StatementType_DML ->
            "DML"

        StatementType_UTILITY ->
            "UTILITY"


{-| Type of HTTP response from stopQueryExecuti
-}
type alias StopQueryExecutionOutput =
    {}


stopQueryExecutionOutputDecoder : JD.Decoder StopQueryExecutionOutput
stopQueryExecutionOutputDecoder =
    JD.succeed StopQueryExecutionOutput


{-|

<p>A tag that you can add to a resource. A tag is a label that you assign to an AWS Athena resource (a workgroup). Each tag consists of a key and an optional value, both of which you define. Tags enable you to categorize workgroups in Athena, for example, by purpose, owner, or environment. Use a consistent set of tag keys to make it easier to search and filter workgroups in your account. The maximum tag key length is 128 Unicode characters in UTF-8. The maximum tag value length is 256 Unicode characters in UTF-8. You can use letters and numbers representable in UTF-8, and the following characters: + - = . _ : / @. Tag keys and values are case-sensitive. Tag keys must be unique per resource. </p>

-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }


tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Key", "key" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.string
            )


{-| Type of HTTP response from tagResour
-}
type alias TagResourceOutput =
    {}


tagResourceOutputDecoder : JD.Decoder TagResourceOutput
tagResourceOutputDecoder =
    JD.succeed TagResourceOutput


{-|

<p>Information about a named query ID that could not be processed.</p>

-}
type alias UnprocessedNamedQueryId =
    { namedQueryId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }


unprocessedNamedQueryIdDecoder : JD.Decoder UnprocessedNamedQueryId
unprocessedNamedQueryIdDecoder =
    JD.succeed UnprocessedNamedQueryId
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NamedQueryId", "namedQueryId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorCode", "errorCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorMessage", "errorMessage" ]
                JD.string
            )


{-|

<p>Describes a query execution that failed to process.</p>

-}
type alias UnprocessedQueryExecutionId =
    { queryExecutionId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }


unprocessedQueryExecutionIdDecoder : JD.Decoder UnprocessedQueryExecutionId
unprocessedQueryExecutionIdDecoder =
    JD.succeed UnprocessedQueryExecutionId
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "QueryExecutionId", "queryExecutionId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorCode", "errorCode" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorMessage", "errorMessage" ]
                JD.string
            )


{-| Type of HTTP response from untagResour
-}
type alias UntagResourceOutput =
    {}


untagResourceOutputDecoder : JD.Decoder UntagResourceOutput
untagResourceOutputDecoder =
    JD.succeed UntagResourceOutput


{-| Type of HTTP response from updateWorkGro
-}
type alias UpdateWorkGroupOutput =
    {}


updateWorkGroupOutputDecoder : JD.Decoder UpdateWorkGroupOutput
updateWorkGroupOutputDecoder =
    JD.succeed UpdateWorkGroupOutput


{-|

<p>A workgroup, which contains a name, description, creation time, state, and other configuration, listed under <a>WorkGroup$Configuration</a>. Each workgroup enables you to isolate queries for you or your group of users from other queries in the same account, to configure the query results location and the encryption configuration (known as workgroup settings), to enable sending query metrics to Amazon CloudWatch, and to establish per-query data usage control limits for all queries in a workgroup. The workgroup settings override is specified in EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>

-}
type alias WorkGroup =
    { name : String
    , state : Maybe WorkGroupState
    , configuration : Maybe WorkGroupConfiguration
    , description : Maybe String
    , creationTime : Maybe Posix
    }


workGroupDecoder : JD.Decoder WorkGroup
workGroupDecoder =
    JD.succeed WorkGroup
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                workGroupStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Configuration", "configuration" ]
                workGroupConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreationTime", "creationTime" ]
                JDX.datetime
            )


{-|

<p>The configuration of the workgroup, which includes the location in Amazon S3 where query results are stored, the encryption option, if any, used for query results, whether the Amazon CloudWatch Metrics are enabled for the workgroup and whether workgroup settings override query settings, and the data usage limit for the amount of data scanned per query, if it is specified. The workgroup settings override is specified in EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>

-}
type alias WorkGroupConfiguration =
    { resultConfiguration : Maybe ResultConfiguration
    , enforceWorkGroupConfiguration : Maybe Bool
    , publishCloudWatchMetricsEnabled : Maybe Bool
    , bytesScannedCutoffPerQuery : Maybe Int
    }


workGroupConfigurationDecoder : JD.Decoder WorkGroupConfiguration
workGroupConfigurationDecoder =
    JD.succeed WorkGroupConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResultConfiguration", "resultConfiguration" ]
                resultConfigurationDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EnforceWorkGroupConfiguration", "enforceWorkGroupConfiguration" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PublishCloudWatchMetricsEnabled", "publishCloudWatchMetricsEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BytesScannedCutoffPerQuery", "bytesScannedCutoffPerQuery" ]
                JD.int
            )


{-|

<p>The configuration information that will be updated for this workgroup, which includes the location in Amazon S3 where query results are stored, the encryption option, if any, used for query results, whether the Amazon CloudWatch Metrics are enabled for the workgroup, whether the workgroup settings override the client-side settings, and the data usage limit for the amount of bytes scanned per query, if it is specified.</p>

-}
type alias WorkGroupConfigurationUpdates =
    { enforceWorkGroupConfiguration : Maybe Bool
    , resultConfigurationUpdates : Maybe ResultConfigurationUpdates
    , publishCloudWatchMetricsEnabled : Maybe Bool
    , bytesScannedCutoffPerQuery : Maybe Int
    , removeBytesScannedCutoffPerQuery : Maybe Bool
    }


workGroupConfigurationUpdatesDecoder : JD.Decoder WorkGroupConfigurationUpdates
workGroupConfigurationUpdatesDecoder =
    JD.succeed WorkGroupConfigurationUpdates
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EnforceWorkGroupConfiguration", "enforceWorkGroupConfiguration" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResultConfigurationUpdates", "resultConfigurationUpdates" ]
                resultConfigurationUpdatesDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PublishCloudWatchMetricsEnabled", "publishCloudWatchMetricsEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "BytesScannedCutoffPerQuery", "bytesScannedCutoffPerQuery" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RemoveBytesScannedCutoffPerQuery", "removeBytesScannedCutoffPerQuery" ]
                JD.bool
            )


{-| One of

  - `WorkGroupState_ENABLED`
  - `WorkGroupState_DISABLED`

-}
type WorkGroupState
    = WorkGroupState_ENABLED
    | WorkGroupState_DISABLED


workGroupStateDecoder : JD.Decoder WorkGroupState
workGroupStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed WorkGroupState_ENABLED

                    "DISABLED" ->
                        JD.succeed WorkGroupState_DISABLED

                    _ ->
                        JD.fail "bad thing"
            )


workGroupStateToString : WorkGroupState -> String
workGroupStateToString val =
    case val of
        WorkGroupState_ENABLED ->
            "ENABLED"

        WorkGroupState_DISABLED ->
            "DISABLED"


{-|

<p>The summary information for the workgroup, which includes its name, state, description, and the date and time it was created.</p>

-}
type alias WorkGroupSummary =
    { name : Maybe String
    , state : Maybe WorkGroupState
    , description : Maybe String
    , creationTime : Maybe Posix
    }


workGroupSummaryDecoder : JD.Decoder WorkGroupSummary
workGroupSummaryDecoder =
    JD.succeed WorkGroupSummary
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                workGroupStateDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreationTime", "creationTime" ]
                JDX.datetime
            )


{-| undefined
-}
type alias BatchGetNamedQueryInput =
    { namedQueryIds : List String
    }


{-| undefined
-}
type alias BatchGetQueryExecutionInput =
    { queryExecutionIds : List String
    }


{-| undefined
-}
type alias CreateNamedQueryInput =
    { name : String
    , description : Maybe String
    , database : String
    , queryString : String
    , clientRequestToken : Maybe String
    , workGroup : Maybe String
    }


{-| undefined
-}
type alias CreateWorkGroupInput =
    { name : String
    , configuration : Maybe WorkGroupConfiguration
    , description : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias DeleteNamedQueryInput =
    { namedQueryId : String
    }


{-| undefined
-}
type alias DeleteWorkGroupInput =
    { workGroup : String
    , recursiveDeleteOption : Maybe Bool
    }


{-| undefined
-}
type alias GetNamedQueryInput =
    { namedQueryId : String
    }


{-| undefined
-}
type alias GetQueryExecutionInput =
    { queryExecutionId : String
    }


{-| undefined
-}
type alias GetQueryResultsInput =
    { queryExecutionId : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetWorkGroupInput =
    { workGroup : String
    }


{-| undefined
-}
type alias ListNamedQueriesInput =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , workGroup : Maybe String
    }


{-| undefined
-}
type alias ListQueryExecutionsInput =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , workGroup : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceInput =
    { resourceARN : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias ListWorkGroupsInput =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias StartQueryExecutionInput =
    { queryString : String
    , clientRequestToken : Maybe String
    , queryExecutionContext : Maybe QueryExecutionContext
    , resultConfiguration : Maybe ResultConfiguration
    , workGroup : Maybe String
    }


{-| undefined
-}
type alias StopQueryExecutionInput =
    { queryExecutionId : String
    }


{-| undefined
-}
type alias TagResourceInput =
    { resourceARN : String
    , tags : List Tag
    }


{-| undefined
-}
type alias UntagResourceInput =
    { resourceARN : String
    , tagKeys : List String
    }


{-| undefined
-}
type alias UpdateWorkGroupInput =
    { workGroup : String
    , description : Maybe String
    , configurationUpdates : Maybe WorkGroupConfigurationUpdates
    , state : Maybe WorkGroupState
    }


batchGetNamedQueryInputEncoder : BatchGetNamedQueryInput -> JE.Value
batchGetNamedQueryInputEncoder data =
    []
        |> (::) ( "NamedQueryIds", data.namedQueryIds |> (List.map JE.string >> JE.list) )
        |> JE.object


batchGetNamedQueryOutputEncoder : BatchGetNamedQueryOutput -> JE.Value
batchGetNamedQueryOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (List.map namedQueryEncoder >> JE.list)
            ( "NamedQueries", data.namedQueries )
        |> AWS.Core.Encode.optionalMember
            (List.map unprocessedNamedQueryIdEncoder >> JE.list)
            ( "UnprocessedNamedQueryIds", data.unprocessedNamedQueryIds )
        |> JE.object


batchGetQueryExecutionInputEncoder : BatchGetQueryExecutionInput -> JE.Value
batchGetQueryExecutionInputEncoder data =
    []
        |> (::) ( "QueryExecutionIds", data.queryExecutionIds |> (List.map JE.string >> JE.list) )
        |> JE.object


batchGetQueryExecutionOutputEncoder : BatchGetQueryExecutionOutput -> JE.Value
batchGetQueryExecutionOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (List.map queryExecutionEncoder >> JE.list)
            ( "QueryExecutions", data.queryExecutions )
        |> AWS.Core.Encode.optionalMember
            (List.map unprocessedQueryExecutionIdEncoder >> JE.list)
            ( "UnprocessedQueryExecutionIds", data.unprocessedQueryExecutionIds )
        |> JE.object


columnInfoEncoder : ColumnInfo -> JE.Value
columnInfoEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CatalogName", data.catalogName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SchemaName", data.schemaName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "TableName", data.tableName )
        |> (::) ( "Name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Label", data.label )
        |> (::) ( "Type", data.type_ |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Precision", data.precision )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "Scale", data.scale )
        |> AWS.Core.Encode.optionalMember
            (columnNullableToString >> JE.string)
            ( "Nullable", data.nullable )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "CaseSensitive", data.caseSensitive )
        |> JE.object


createNamedQueryInputEncoder : CreateNamedQueryInput -> JE.Value
createNamedQueryInputEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> (::) ( "Database", data.database |> JE.string )
        |> (::) ( "QueryString", data.queryString |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ClientRequestToken", data.clientRequestToken )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "WorkGroup", data.workGroup )
        |> JE.object


createNamedQueryOutputEncoder : CreateNamedQueryOutput -> JE.Value
createNamedQueryOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NamedQueryId", data.namedQueryId )
        |> JE.object


createWorkGroupInputEncoder : CreateWorkGroupInput -> JE.Value
createWorkGroupInputEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            workGroupConfigurationEncoder
            ( "Configuration", data.configuration )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            (List.map tagEncoder >> JE.list)
            ( "Tags", data.tags )
        |> JE.object


createWorkGroupOutputEncoder : CreateWorkGroupOutput -> JE.Value
createWorkGroupOutputEncoder data =
    []
        |> JE.object


datumEncoder : Datum -> JE.Value
datumEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "VarCharValue", data.varCharValue )
        |> JE.object


deleteNamedQueryInputEncoder : DeleteNamedQueryInput -> JE.Value
deleteNamedQueryInputEncoder data =
    []
        |> (::) ( "NamedQueryId", data.namedQueryId |> JE.string )
        |> JE.object


deleteNamedQueryOutputEncoder : DeleteNamedQueryOutput -> JE.Value
deleteNamedQueryOutputEncoder data =
    []
        |> JE.object


deleteWorkGroupInputEncoder : DeleteWorkGroupInput -> JE.Value
deleteWorkGroupInputEncoder data =
    []
        |> (::) ( "WorkGroup", data.workGroup |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RecursiveDeleteOption", data.recursiveDeleteOption )
        |> JE.object


deleteWorkGroupOutputEncoder : DeleteWorkGroupOutput -> JE.Value
deleteWorkGroupOutputEncoder data =
    []
        |> JE.object


encryptionConfigurationEncoder : EncryptionConfiguration -> JE.Value
encryptionConfigurationEncoder data =
    []
        |> (::) ( "EncryptionOption", data.encryptionOption |> (encryptionOptionToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "KmsKey", data.kmsKey )
        |> JE.object


getNamedQueryInputEncoder : GetNamedQueryInput -> JE.Value
getNamedQueryInputEncoder data =
    []
        |> (::) ( "NamedQueryId", data.namedQueryId |> JE.string )
        |> JE.object


getNamedQueryOutputEncoder : GetNamedQueryOutput -> JE.Value
getNamedQueryOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            namedQueryEncoder
            ( "NamedQuery", data.namedQuery )
        |> JE.object


getQueryExecutionInputEncoder : GetQueryExecutionInput -> JE.Value
getQueryExecutionInputEncoder data =
    []
        |> (::) ( "QueryExecutionId", data.queryExecutionId |> JE.string )
        |> JE.object


getQueryExecutionOutputEncoder : GetQueryExecutionOutput -> JE.Value
getQueryExecutionOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            queryExecutionEncoder
            ( "QueryExecution", data.queryExecution )
        |> JE.object


getQueryResultsInputEncoder : GetQueryResultsInput -> JE.Value
getQueryResultsInputEncoder data =
    []
        |> (::) ( "QueryExecutionId", data.queryExecutionId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> JE.object


getQueryResultsOutputEncoder : GetQueryResultsOutput -> JE.Value
getQueryResultsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "UpdateCount", data.updateCount )
        |> AWS.Core.Encode.optionalMember
            resultSetEncoder
            ( "ResultSet", data.resultSet )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


getWorkGroupInputEncoder : GetWorkGroupInput -> JE.Value
getWorkGroupInputEncoder data =
    []
        |> (::) ( "WorkGroup", data.workGroup |> JE.string )
        |> JE.object


getWorkGroupOutputEncoder : GetWorkGroupOutput -> JE.Value
getWorkGroupOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            workGroupEncoder
            ( "WorkGroup", data.workGroup )
        |> JE.object


listNamedQueriesInputEncoder : ListNamedQueriesInput -> JE.Value
listNamedQueriesInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "WorkGroup", data.workGroup )
        |> JE.object


listNamedQueriesOutputEncoder : ListNamedQueriesOutput -> JE.Value
listNamedQueriesOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (List.map JE.string >> JE.list)
            ( "NamedQueryIds", data.namedQueryIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listQueryExecutionsInputEncoder : ListQueryExecutionsInput -> JE.Value
listQueryExecutionsInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "WorkGroup", data.workGroup )
        |> JE.object


listQueryExecutionsOutputEncoder : ListQueryExecutionsOutput -> JE.Value
listQueryExecutionsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (List.map JE.string >> JE.list)
            ( "QueryExecutionIds", data.queryExecutionIds )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listTagsForResourceInputEncoder : ListTagsForResourceInput -> JE.Value
listTagsForResourceInputEncoder data =
    []
        |> (::) ( "ResourceARN", data.resourceARN |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> JE.object


listTagsForResourceOutputEncoder : ListTagsForResourceOutput -> JE.Value
listTagsForResourceOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (List.map tagEncoder >> JE.list)
            ( "Tags", data.tags )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listWorkGroupsInputEncoder : ListWorkGroupsInput -> JE.Value
listWorkGroupsInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> JE.object


listWorkGroupsOutputEncoder : ListWorkGroupsOutput -> JE.Value
listWorkGroupsOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (List.map workGroupSummaryEncoder >> JE.list)
            ( "WorkGroups", data.workGroups )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


namedQueryEncoder : NamedQuery -> JE.Value
namedQueryEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> (::) ( "Database", data.database |> JE.string )
        |> (::) ( "QueryString", data.queryString |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NamedQueryId", data.namedQueryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "WorkGroup", data.workGroup )
        |> JE.object


queryExecutionEncoder : QueryExecution -> JE.Value
queryExecutionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "QueryExecutionId", data.queryExecutionId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Query", data.query )
        |> AWS.Core.Encode.optionalMember
            (statementTypeToString >> JE.string)
            ( "StatementType", data.statementType )
        |> AWS.Core.Encode.optionalMember
            resultConfigurationEncoder
            ( "ResultConfiguration", data.resultConfiguration )
        |> AWS.Core.Encode.optionalMember
            queryExecutionContextEncoder
            ( "QueryExecutionContext", data.queryExecutionContext )
        |> AWS.Core.Encode.optionalMember
            queryExecutionStatusEncoder
            ( "Status", data.status )
        |> AWS.Core.Encode.optionalMember
            queryExecutionStatisticsEncoder
            ( "Statistics", data.statistics )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "WorkGroup", data.workGroup )
        |> JE.object


queryExecutionContextEncoder : QueryExecutionContext -> JE.Value
queryExecutionContextEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Database", data.database )
        |> JE.object


queryExecutionStatisticsEncoder : QueryExecutionStatistics -> JE.Value
queryExecutionStatisticsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "EngineExecutionTimeInMillis", data.engineExecutionTimeInMillis )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "DataScannedInBytes", data.dataScannedInBytes )
        |> JE.object


queryExecutionStatusEncoder : QueryExecutionStatus -> JE.Value
queryExecutionStatusEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (queryExecutionStateToString >> JE.string)
            ( "State", data.state )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "StateChangeReason", data.stateChangeReason )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "SubmissionDateTime", data.submissionDateTime )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CompletionDateTime", data.completionDateTime )
        |> JE.object


resultConfigurationEncoder : ResultConfiguration -> JE.Value
resultConfigurationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "OutputLocation", data.outputLocation )
        |> AWS.Core.Encode.optionalMember
            encryptionConfigurationEncoder
            ( "EncryptionConfiguration", data.encryptionConfiguration )
        |> JE.object


resultConfigurationUpdatesEncoder : ResultConfigurationUpdates -> JE.Value
resultConfigurationUpdatesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "OutputLocation", data.outputLocation )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RemoveOutputLocation", data.removeOutputLocation )
        |> AWS.Core.Encode.optionalMember
            encryptionConfigurationEncoder
            ( "EncryptionConfiguration", data.encryptionConfiguration )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RemoveEncryptionConfiguration", data.removeEncryptionConfiguration )
        |> JE.object


resultSetEncoder : ResultSet -> JE.Value
resultSetEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (List.map rowEncoder >> JE.list)
            ( "Rows", data.rows )
        |> AWS.Core.Encode.optionalMember
            resultSetMetadataEncoder
            ( "ResultSetMetadata", data.resultSetMetadata )
        |> JE.object


resultSetMetadataEncoder : ResultSetMetadata -> JE.Value
resultSetMetadataEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (List.map columnInfoEncoder >> JE.list)
            ( "ColumnInfo", data.columnInfo )
        |> JE.object


rowEncoder : Row -> JE.Value
rowEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (List.map datumEncoder >> JE.list)
            ( "Data", data.data )
        |> JE.object


startQueryExecutionInputEncoder : StartQueryExecutionInput -> JE.Value
startQueryExecutionInputEncoder data =
    []
        |> (::) ( "QueryString", data.queryString |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ClientRequestToken", data.clientRequestToken )
        |> AWS.Core.Encode.optionalMember
            queryExecutionContextEncoder
            ( "QueryExecutionContext", data.queryExecutionContext )
        |> AWS.Core.Encode.optionalMember
            resultConfigurationEncoder
            ( "ResultConfiguration", data.resultConfiguration )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "WorkGroup", data.workGroup )
        |> JE.object


startQueryExecutionOutputEncoder : StartQueryExecutionOutput -> JE.Value
startQueryExecutionOutputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "QueryExecutionId", data.queryExecutionId )
        |> JE.object


stopQueryExecutionInputEncoder : StopQueryExecutionInput -> JE.Value
stopQueryExecutionInputEncoder data =
    []
        |> (::) ( "QueryExecutionId", data.queryExecutionId |> JE.string )
        |> JE.object


stopQueryExecutionOutputEncoder : StopQueryExecutionOutput -> JE.Value
stopQueryExecutionOutputEncoder data =
    []
        |> JE.object


tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Key", data.key )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Value", data.value )
        |> JE.object


tagResourceInputEncoder : TagResourceInput -> JE.Value
tagResourceInputEncoder data =
    []
        |> (::) ( "ResourceARN", data.resourceARN |> JE.string )
        |> (::) ( "Tags", data.tags |> (List.map tagEncoder >> JE.list) )
        |> JE.object


tagResourceOutputEncoder : TagResourceOutput -> JE.Value
tagResourceOutputEncoder data =
    []
        |> JE.object


unprocessedNamedQueryIdEncoder : UnprocessedNamedQueryId -> JE.Value
unprocessedNamedQueryIdEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NamedQueryId", data.namedQueryId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ErrorCode", data.errorCode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ErrorMessage", data.errorMessage )
        |> JE.object


unprocessedQueryExecutionIdEncoder : UnprocessedQueryExecutionId -> JE.Value
unprocessedQueryExecutionIdEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "QueryExecutionId", data.queryExecutionId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ErrorCode", data.errorCode )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ErrorMessage", data.errorMessage )
        |> JE.object


untagResourceInputEncoder : UntagResourceInput -> JE.Value
untagResourceInputEncoder data =
    []
        |> (::) ( "ResourceARN", data.resourceARN |> JE.string )
        |> (::) ( "TagKeys", data.tagKeys |> (List.map JE.string >> JE.list) )
        |> JE.object


untagResourceOutputEncoder : UntagResourceOutput -> JE.Value
untagResourceOutputEncoder data =
    []
        |> JE.object


updateWorkGroupInputEncoder : UpdateWorkGroupInput -> JE.Value
updateWorkGroupInputEncoder data =
    []
        |> (::) ( "WorkGroup", data.workGroup |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            workGroupConfigurationUpdatesEncoder
            ( "ConfigurationUpdates", data.configurationUpdates )
        |> AWS.Core.Encode.optionalMember
            (workGroupStateToString >> JE.string)
            ( "State", data.state )
        |> JE.object


updateWorkGroupOutputEncoder : UpdateWorkGroupOutput -> JE.Value
updateWorkGroupOutputEncoder data =
    []
        |> JE.object


workGroupEncoder : WorkGroup -> JE.Value
workGroupEncoder data =
    []
        |> (::) ( "Name", data.name |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (workGroupStateToString >> JE.string)
            ( "State", data.state )
        |> AWS.Core.Encode.optionalMember
            workGroupConfigurationEncoder
            ( "Configuration", data.configuration )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreationTime", data.creationTime )
        |> JE.object


workGroupConfigurationEncoder : WorkGroupConfiguration -> JE.Value
workGroupConfigurationEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            resultConfigurationEncoder
            ( "ResultConfiguration", data.resultConfiguration )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "EnforceWorkGroupConfiguration", data.enforceWorkGroupConfiguration )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "PublishCloudWatchMetricsEnabled", data.publishCloudWatchMetricsEnabled )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "BytesScannedCutoffPerQuery", data.bytesScannedCutoffPerQuery )
        |> JE.object


workGroupConfigurationUpdatesEncoder : WorkGroupConfigurationUpdates -> JE.Value
workGroupConfigurationUpdatesEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "EnforceWorkGroupConfiguration", data.enforceWorkGroupConfiguration )
        |> AWS.Core.Encode.optionalMember
            resultConfigurationUpdatesEncoder
            ( "ResultConfigurationUpdates", data.resultConfigurationUpdates )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "PublishCloudWatchMetricsEnabled", data.publishCloudWatchMetricsEnabled )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "BytesScannedCutoffPerQuery", data.bytesScannedCutoffPerQuery )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "RemoveBytesScannedCutoffPerQuery", data.removeBytesScannedCutoffPerQuery )
        |> JE.object


workGroupSummaryEncoder : WorkGroupSummary -> JE.Value
workGroupSummaryEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Name", data.name )
        |> AWS.Core.Encode.optionalMember
            (workGroupStateToString >> JE.string)
            ( "State", data.state )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Description", data.description )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreationTime", data.creationTime )
        |> JE.object
