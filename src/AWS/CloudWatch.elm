module AWS.CloudWatch exposing
    ( service
    , deleteAlarms, deleteAnomalyDetector, DeleteAnomalyDetectorOptions, deleteDashboards, describeAlarmHistory, DescribeAlarmHistoryOptions, describeAlarms, DescribeAlarmsOptions, describeAlarmsForMetric, DescribeAlarmsForMetricOptions, describeAnomalyDetectors, DescribeAnomalyDetectorsOptions, disableAlarmActions, enableAlarmActions, getDashboard, getMetricData, GetMetricDataOptions, getMetricStatistics, GetMetricStatisticsOptions, getMetricWidgetImage, GetMetricWidgetImageOptions, listDashboards, ListDashboardsOptions, listMetrics, ListMetricsOptions, listTagsForResource, putAnomalyDetector, PutAnomalyDetectorOptions, putDashboard, putMetricAlarm, PutMetricAlarmOptions, putMetricData, setAlarmState, SetAlarmStateOptions, tagResource, untagResource
    , DeleteAnomalyDetectorOutput, DeleteDashboardsOutput, DescribeAlarmHistoryOutput, DescribeAlarmsForMetricOutput, DescribeAlarmsOutput, DescribeAnomalyDetectorsOutput, GetDashboardOutput, GetMetricDataOutput, GetMetricStatisticsOutput, GetMetricWidgetImageOutput, ListDashboardsOutput, ListMetricsOutput, ListTagsForResourceOutput, PutAnomalyDetectorOutput, PutDashboardOutput, TagResourceOutput, UntagResourceOutput
    , AlarmHistoryItem, AnomalyDetector, AnomalyDetectorConfiguration, DashboardEntry, DashboardValidationMessage, Datapoint, Dimension, DimensionFilter, MessageData, Metric, MetricAlarm, MetricDataQuery, MetricDataResult, MetricDatum, MetricStat, Range, StatisticSet, Tag
    , ComparisonOperator(..), HistoryItemType(..), ScanBy(..), StandardUnit(..), StateValue(..), Statistic(..), StatusCode(..)
    )

{-|

<p>Amazon CloudWatch monitors your Amazon Web Services (AWS) resources and the applications you run on AWS in real time. You can use CloudWatch to collect and track metrics, which are the variables you want to measure for your resources and applications.</p> <p>CloudWatch alarms send notifications or automatically change the resources you are monitoring based on rules that you define. For example, you can monitor the CPU usage and disk reads and writes of your Amazon EC2 instances. Then, use this data to determine whether you should launch additional instances to handle increased load. You can also use this data to stop under-used instances to save money.</p> <p>In addition to monitoring the built-in metrics that come with AWS, you can monitor your own custom metrics. With CloudWatch, you gain system-wide visibility into resource utilization, application performance, and operational health.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [deleteAlarms](#deleteAlarms)
  - [deleteAnomalyDetector](#deleteAnomalyDetector)
  - [DeleteAnomalyDetectorOptions](#DeleteAnomalyDetectorOptions)
  - [deleteDashboards](#deleteDashboards)
  - [describeAlarmHistory](#describeAlarmHistory)
  - [DescribeAlarmHistoryOptions](#DescribeAlarmHistoryOptions)
  - [describeAlarms](#describeAlarms)
  - [DescribeAlarmsOptions](#DescribeAlarmsOptions)
  - [describeAlarmsForMetric](#describeAlarmsForMetric)
  - [DescribeAlarmsForMetricOptions](#DescribeAlarmsForMetricOptions)
  - [describeAnomalyDetectors](#describeAnomalyDetectors)
  - [DescribeAnomalyDetectorsOptions](#DescribeAnomalyDetectorsOptions)
  - [disableAlarmActions](#disableAlarmActions)
  - [enableAlarmActions](#enableAlarmActions)
  - [getDashboard](#getDashboard)
  - [getMetricData](#getMetricData)
  - [GetMetricDataOptions](#GetMetricDataOptions)
  - [getMetricStatistics](#getMetricStatistics)
  - [GetMetricStatisticsOptions](#GetMetricStatisticsOptions)
  - [getMetricWidgetImage](#getMetricWidgetImage)
  - [GetMetricWidgetImageOptions](#GetMetricWidgetImageOptions)
  - [listDashboards](#listDashboards)
  - [ListDashboardsOptions](#ListDashboardsOptions)
  - [listMetrics](#listMetrics)
  - [ListMetricsOptions](#ListMetricsOptions)
  - [listTagsForResource](#listTagsForResource)
  - [putAnomalyDetector](#putAnomalyDetector)
  - [PutAnomalyDetectorOptions](#PutAnomalyDetectorOptions)
  - [putDashboard](#putDashboard)
  - [putMetricAlarm](#putMetricAlarm)
  - [PutMetricAlarmOptions](#PutMetricAlarmOptions)
  - [putMetricData](#putMetricData)
  - [setAlarmState](#setAlarmState)
  - [SetAlarmStateOptions](#SetAlarmStateOptions)
  - [tagResource](#tagResource)
  - [untagResource](#untagResource)

@docs deleteAlarms, deleteAnomalyDetector, DeleteAnomalyDetectorOptions, deleteDashboards, describeAlarmHistory, DescribeAlarmHistoryOptions, describeAlarms, DescribeAlarmsOptions, describeAlarmsForMetric, DescribeAlarmsForMetricOptions, describeAnomalyDetectors, DescribeAnomalyDetectorsOptions, disableAlarmActions, enableAlarmActions, getDashboard, getMetricData, GetMetricDataOptions, getMetricStatistics, GetMetricStatisticsOptions, getMetricWidgetImage, GetMetricWidgetImageOptions, listDashboards, ListDashboardsOptions, listMetrics, ListMetricsOptions, listTagsForResource, putAnomalyDetector, PutAnomalyDetectorOptions, putDashboard, putMetricAlarm, PutMetricAlarmOptions, putMetricData, setAlarmState, SetAlarmStateOptions, tagResource, untagResource


## Responses

  - [DeleteAnomalyDetectorOutput](#DeleteAnomalyDetectorOutput)
  - [DeleteDashboardsOutput](#DeleteDashboardsOutput)
  - [DescribeAlarmHistoryOutput](#DescribeAlarmHistoryOutput)
  - [DescribeAlarmsForMetricOutput](#DescribeAlarmsForMetricOutput)
  - [DescribeAlarmsOutput](#DescribeAlarmsOutput)
  - [DescribeAnomalyDetectorsOutput](#DescribeAnomalyDetectorsOutput)
  - [GetDashboardOutput](#GetDashboardOutput)
  - [GetMetricDataOutput](#GetMetricDataOutput)
  - [GetMetricStatisticsOutput](#GetMetricStatisticsOutput)
  - [GetMetricWidgetImageOutput](#GetMetricWidgetImageOutput)
  - [ListDashboardsOutput](#ListDashboardsOutput)
  - [ListMetricsOutput](#ListMetricsOutput)
  - [ListTagsForResourceOutput](#ListTagsForResourceOutput)
  - [PutAnomalyDetectorOutput](#PutAnomalyDetectorOutput)
  - [PutDashboardOutput](#PutDashboardOutput)
  - [TagResourceOutput](#TagResourceOutput)
  - [UntagResourceOutput](#UntagResourceOutput)

@docs DeleteAnomalyDetectorOutput, DeleteDashboardsOutput, DescribeAlarmHistoryOutput, DescribeAlarmsForMetricOutput, DescribeAlarmsOutput, DescribeAnomalyDetectorsOutput, GetDashboardOutput, GetMetricDataOutput, GetMetricStatisticsOutput, GetMetricWidgetImageOutput, ListDashboardsOutput, ListMetricsOutput, ListTagsForResourceOutput, PutAnomalyDetectorOutput, PutDashboardOutput, TagResourceOutput, UntagResourceOutput


## Records

  - [AlarmHistoryItem](#AlarmHistoryItem)
  - [AnomalyDetector](#AnomalyDetector)
  - [AnomalyDetectorConfiguration](#AnomalyDetectorConfiguration)
  - [DashboardEntry](#DashboardEntry)
  - [DashboardValidationMessage](#DashboardValidationMessage)
  - [Datapoint](#Datapoint)
  - [Dimension](#Dimension)
  - [DimensionFilter](#DimensionFilter)
  - [MessageData](#MessageData)
  - [Metric](#Metric)
  - [MetricAlarm](#MetricAlarm)
  - [MetricDataQuery](#MetricDataQuery)
  - [MetricDataResult](#MetricDataResult)
  - [MetricDatum](#MetricDatum)
  - [MetricStat](#MetricStat)
  - [Range](#Range)
  - [StatisticSet](#StatisticSet)
  - [Tag](#Tag)

@docs AlarmHistoryItem, AnomalyDetector, AnomalyDetectorConfiguration, DashboardEntry, DashboardValidationMessage, Datapoint, Dimension, DimensionFilter, MessageData, Metric, MetricAlarm, MetricDataQuery, MetricDataResult, MetricDatum, MetricStat, Range, StatisticSet, Tag


## Unions

  - [ComparisonOperator](#ComparisonOperator)
  - [HistoryItemType](#HistoryItemType)
  - [ScanBy](#ScanBy)
  - [StandardUnit](#StandardUnit)
  - [StateValue](#StateValue)
  - [Statistic](#Statistic)
  - [StatusCode](#StatusCode)

@docs ComparisonOperator, HistoryItemType, ScanBy, StandardUnit, StateValue, Statistic, StatusCode

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Dict exposing (Dict)
import Iso8601
import Json.Decode as JD
import Json.Decode.Extra as JDX
import Json.Decode.Pipeline as JDP
import Time exposing (Posix)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "monitoring"
        "2010-08-01"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "http://monitoring.amazonaws.com/doc/2010-08-01/")



-- OPERATIONS


{-|

<p>Deletes the specified alarms. In the event of an error, no alarms are deleted.</p>

**Required Parameters**

  - `alarmNames` **:** `(List String)`

-}
deleteAlarms :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteAlarms alarmNames =
    let
        requestInput =
            DeleteAlarmsInput
                alarmNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteAlarms")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteAlarmsInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteAlarms"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified anomaly detection model from your account.</p>

**Required Parameters**

  - `namespace` **:** `String`
  - `metricName` **:** `String`
  - `stat` **:** `String`

-}
deleteAnomalyDetector :
    String
    -> String
    -> String
    -> (DeleteAnomalyDetectorOptions -> DeleteAnomalyDetectorOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteAnomalyDetectorOutput)
deleteAnomalyDetector namespace metricName stat setOptions =
    let
        requestInput =
            DeleteAnomalyDetectorInput
                namespace
                metricName
                options.dimensions
                stat

        options =
            setOptions (DeleteAnomalyDetectorOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteAnomalyDetector")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteAnomalyDetectorInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteAnomalyDetector"
            (AWS.Core.Decode.ResultDecoder "DeleteAnomalyDetectorResult" deleteAnomalyDetectorOutputDecoder)
        )


{-| Options for a deleteAnomalyDetector request
-}
type alias DeleteAnomalyDetectorOptions =
    { dimensions : Maybe (List Dimension)
    }


{-|

<p>Deletes all dashboards that you specify. You may specify up to 100 dashboards to delete. If there is an error during this call, no dashboards are deleted.</p>

**Required Parameters**

  - `dashboardNames` **:** `(List String)`

-}
deleteDashboards :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDashboardsOutput)
deleteDashboards dashboardNames =
    let
        requestInput =
            DeleteDashboardsInput
                dashboardNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DeleteDashboards")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs deleteDashboardsInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteDashboards"
            (AWS.Core.Decode.ResultDecoder "DeleteDashboardsResult" deleteDashboardsOutputDecoder)
        )


{-|

<p>Retrieves the history for the specified alarm. You can filter the results by date range or item type. If an alarm name is not specified, the histories for all alarms are returned.</p> <p>CloudWatch retains the history of an alarm even if you delete the alarm.</p>

**Required Parameters**

-}
describeAlarmHistory :
    (DescribeAlarmHistoryOptions -> DescribeAlarmHistoryOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAlarmHistoryOutput)
describeAlarmHistory setOptions =
    let
        requestInput =
            DescribeAlarmHistoryInput
                options.alarmName
                options.historyItemType
                options.startDate
                options.endDate
                options.maxRecords
                options.nextToken

        options =
            setOptions (DescribeAlarmHistoryOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeAlarmHistory")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeAlarmHistoryInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAlarmHistory"
            (AWS.Core.Decode.ResultDecoder "DescribeAlarmHistoryResult" describeAlarmHistoryOutputDecoder)
        )


{-| Options for a describeAlarmHistory request
-}
type alias DescribeAlarmHistoryOptions =
    { alarmName : Maybe String
    , historyItemType : Maybe HistoryItemType
    , startDate : Maybe Posix
    , endDate : Maybe Posix
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Retrieves the specified alarms. If no alarms are specified, all alarms are returned. Alarms can be retrieved by using only a prefix for the alarm name, the alarm state, or a prefix for any action.</p>

**Required Parameters**

-}
describeAlarms :
    (DescribeAlarmsOptions -> DescribeAlarmsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAlarmsOutput)
describeAlarms setOptions =
    let
        requestInput =
            DescribeAlarmsInput
                options.alarmNames
                options.alarmNamePrefix
                options.stateValue
                options.actionPrefix
                options.maxRecords
                options.nextToken

        options =
            setOptions (DescribeAlarmsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeAlarms")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeAlarmsInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAlarms"
            (AWS.Core.Decode.ResultDecoder "DescribeAlarmsResult" describeAlarmsOutputDecoder)
        )


{-| Options for a describeAlarms request
-}
type alias DescribeAlarmsOptions =
    { alarmNames : Maybe (List String)
    , alarmNamePrefix : Maybe String
    , stateValue : Maybe StateValue
    , actionPrefix : Maybe String
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Retrieves the alarms for the specified metric. To filter the results, specify a statistic, period, or unit.</p>

**Required Parameters**

  - `metricName` **:** `String`
  - `namespace` **:** `String`

-}
describeAlarmsForMetric :
    String
    -> String
    -> (DescribeAlarmsForMetricOptions -> DescribeAlarmsForMetricOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAlarmsForMetricOutput)
describeAlarmsForMetric metricName namespace setOptions =
    let
        requestInput =
            DescribeAlarmsForMetricInput
                metricName
                namespace
                options.statistic
                options.extendedStatistic
                options.dimensions
                options.period
                options.unit

        options =
            setOptions (DescribeAlarmsForMetricOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeAlarmsForMetric")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeAlarmsForMetricInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAlarmsForMetric"
            (AWS.Core.Decode.ResultDecoder "DescribeAlarmsForMetricResult" describeAlarmsForMetricOutputDecoder)
        )


{-| Options for a describeAlarmsForMetric request
-}
type alias DescribeAlarmsForMetricOptions =
    { statistic : Maybe Statistic
    , extendedStatistic : Maybe String
    , dimensions : Maybe (List Dimension)
    , period : Maybe Int
    , unit : Maybe StandardUnit
    }


{-|

<p>Lists the anomaly detection models that you have created in your account. You can list all models in your account or filter the results to only the models that are related to a certain namespace, metric name, or metric dimension.</p>

**Required Parameters**

-}
describeAnomalyDetectors :
    (DescribeAnomalyDetectorsOptions -> DescribeAnomalyDetectorsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAnomalyDetectorsOutput)
describeAnomalyDetectors setOptions =
    let
        requestInput =
            DescribeAnomalyDetectorsInput
                options.nextToken
                options.maxResults
                options.namespace
                options.metricName
                options.dimensions

        options =
            setOptions (DescribeAnomalyDetectorsOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DescribeAnomalyDetectors")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs describeAnomalyDetectorsInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeAnomalyDetectors"
            (AWS.Core.Decode.ResultDecoder "DescribeAnomalyDetectorsResult" describeAnomalyDetectorsOutputDecoder)
        )


{-| Options for a describeAnomalyDetectors request
-}
type alias DescribeAnomalyDetectorsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , namespace : Maybe String
    , metricName : Maybe String
    , dimensions : Maybe (List Dimension)
    }


{-|

<p>Disables the actions for the specified alarms. When an alarm's actions are disabled, the alarm actions do not execute when the alarm state changes.</p>

**Required Parameters**

  - `alarmNames` **:** `(List String)`

-}
disableAlarmActions :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
disableAlarmActions alarmNames =
    let
        requestInput =
            DisableAlarmActionsInput
                alarmNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "DisableAlarmActions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs disableAlarmActionsInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DisableAlarmActions"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Enables the actions for the specified alarms.</p>

**Required Parameters**

  - `alarmNames` **:** `(List String)`

-}
enableAlarmActions :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
enableAlarmActions alarmNames =
    let
        requestInput =
            EnableAlarmActionsInput
                alarmNames
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "EnableAlarmActions")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs enableAlarmActionsInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "EnableAlarmActions"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Displays the details of the dashboard that you specify.</p> <p>To copy an existing dashboard, use <code>GetDashboard</code>, and then use the data returned within <code>DashboardBody</code> as the template for the new dashboard when you call <code>PutDashboard</code> to create the copy.</p>

**Required Parameters**

  - `dashboardName` **:** `String`

-}
getDashboard :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDashboardOutput)
getDashboard dashboardName =
    let
        requestInput =
            GetDashboardInput
                dashboardName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetDashboard")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getDashboardInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetDashboard"
            (AWS.Core.Decode.ResultDecoder "GetDashboardResult" getDashboardOutputDecoder)
        )


{-|

<p>You can use the <code>GetMetricData</code> API to retrieve as many as 100 different metrics in a single request, with a total of as many as 100,800 datapoints. You can also optionally perform math expressions on the values of the returned statistics, to create new time series that represent new insights into your data. For example, using Lambda metrics, you could divide the Errors metric by the Invocations metric to get an error rate time series. For more information about metric math expressions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax">Metric Math Syntax and Functions</a> in the <i>Amazon CloudWatch User Guide</i>.</p> <p>Calls to the <code>GetMetricData</code> API have a different pricing structure than calls to <code>GetMetricStatistics</code>. For more information about pricing, see <a href="https://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch Pricing</a>.</p> <p>Amazon CloudWatch retains metric data as follows:</p> <ul> <li> <p>Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution metrics and are available only for custom metrics that have been defined with a <code>StorageResolution</code> of 1.</p> </li> <li> <p>Data points with a period of 60 seconds (1-minute) are available for 15 days.</p> </li> <li> <p>Data points with a period of 300 seconds (5-minute) are available for 63 days.</p> </li> <li> <p>Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).</p> </li> </ul> <p>Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available, but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with a resolution of 1 hour.</p>

**Required Parameters**

  - `metricDataQueries` **:** `(List MetricDataQuery)`
  - `startTime` **:** `Posix`
  - `endTime` **:** `Posix`

-}
getMetricData :
    List MetricDataQuery
    -> Posix
    -> Posix
    -> (GetMetricDataOptions -> GetMetricDataOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetMetricDataOutput)
getMetricData metricDataQueries startTime endTime setOptions =
    let
        requestInput =
            GetMetricDataInput
                metricDataQueries
                startTime
                endTime
                options.nextToken
                options.scanBy
                options.maxDatapoints

        options =
            setOptions (GetMetricDataOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetMetricData")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getMetricDataInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetMetricData"
            (AWS.Core.Decode.ResultDecoder "GetMetricDataResult" getMetricDataOutputDecoder)
        )


{-| Options for a getMetricData request
-}
type alias GetMetricDataOptions =
    { nextToken : Maybe String
    , scanBy : Maybe ScanBy
    , maxDatapoints : Maybe Int
    }


{-|

<p>Gets statistics for the specified metric.</p> <p>The maximum number of data points returned from a single call is 1,440. If you request more than 1,440 data points, CloudWatch returns an error. To reduce the number of data points, you can narrow the specified time range and make multiple requests across adjacent time ranges, or you can increase the specified period. Data points are not returned in chronological order.</p> <p>CloudWatch aggregates data points based on the length of the period that you specify. For example, if you request statistics with a one-hour period, CloudWatch aggregates all data points with time stamps that fall within each one-hour period. Therefore, the number of values aggregated by CloudWatch is larger than the number of data points returned.</p> <p>CloudWatch needs raw data points to calculate percentile statistics. If you publish data using a statistic set instead, you can only retrieve percentile statistics for this data if one of the following conditions is true:</p> <ul> <li> <p>The SampleCount value of the statistic set is 1.</p> </li> <li> <p>The Min and the Max values of the statistic set are equal.</p> </li> </ul> <p>Percentile statistics are not available for metrics when any of the metric values are negative numbers.</p> <p>Amazon CloudWatch retains metric data as follows:</p> <ul> <li> <p>Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution metrics and are available only for custom metrics that have been defined with a <code>StorageResolution</code> of 1.</p> </li> <li> <p>Data points with a period of 60 seconds (1-minute) are available for 15 days.</p> </li> <li> <p>Data points with a period of 300 seconds (5-minute) are available for 63 days.</p> </li> <li> <p>Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).</p> </li> </ul> <p>Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available, but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with a resolution of 1 hour.</p> <p>CloudWatch started retaining 5-minute and 1-hour metric data as of July 9, 2016.</p> <p>For information about metrics and dimensions supported by AWS services, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html">Amazon CloudWatch Metrics and Dimensions Reference</a> in the <i>Amazon CloudWatch User Guide</i>.</p>

**Required Parameters**

  - `namespace` **:** `String`
  - `metricName` **:** `String`
  - `startTime` **:** `Posix`
  - `endTime` **:** `Posix`
  - `period` **:** `Int`

-}
getMetricStatistics :
    String
    -> String
    -> Posix
    -> Posix
    -> Int
    -> (GetMetricStatisticsOptions -> GetMetricStatisticsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetMetricStatisticsOutput)
getMetricStatistics namespace metricName startTime endTime period setOptions =
    let
        requestInput =
            GetMetricStatisticsInput
                namespace
                metricName
                options.dimensions
                startTime
                endTime
                period
                options.statistics
                options.extendedStatistics
                options.unit

        options =
            setOptions (GetMetricStatisticsOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetMetricStatistics")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getMetricStatisticsInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetMetricStatistics"
            (AWS.Core.Decode.ResultDecoder "GetMetricStatisticsResult" getMetricStatisticsOutputDecoder)
        )


{-| Options for a getMetricStatistics request
-}
type alias GetMetricStatisticsOptions =
    { dimensions : Maybe (List Dimension)
    , statistics : Maybe (List Statistic)
    , extendedStatistics : Maybe (List String)
    , unit : Maybe StandardUnit
    }


{-|

<p>You can use the <code>GetMetricWidgetImage</code> API to retrieve a snapshot graph of one or more Amazon CloudWatch metrics as a bitmap image. You can then embed this image into your services and products, such as wiki pages, reports, and documents. You could also retrieve images regularly, such as every minute, and create your own custom live dashboard.</p> <p>The graph you retrieve can include all CloudWatch metric graph features, including metric math and horizontal and vertical annotations.</p> <p>There is a limit of 20 transactions per second for this API. Each <code>GetMetricWidgetImage</code> action has the following limits:</p> <ul> <li> <p>As many as 100 metrics in the graph.</p> </li> <li> <p>Up to 100 KB uncompressed payload.</p> </li> </ul>

**Required Parameters**

  - `metricWidget` **:** `String`

-}
getMetricWidgetImage :
    String
    -> (GetMetricWidgetImageOptions -> GetMetricWidgetImageOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetMetricWidgetImageOutput)
getMetricWidgetImage metricWidget setOptions =
    let
        requestInput =
            GetMetricWidgetImageInput
                metricWidget
                options.outputFormat

        options =
            setOptions (GetMetricWidgetImageOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "GetMetricWidgetImage")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs getMetricWidgetImageInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetMetricWidgetImage"
            (AWS.Core.Decode.ResultDecoder "GetMetricWidgetImageResult" getMetricWidgetImageOutputDecoder)
        )


{-| Options for a getMetricWidgetImage request
-}
type alias GetMetricWidgetImageOptions =
    { outputFormat : Maybe String
    }


{-|

<p>Returns a list of the dashboards for your account. If you include <code>DashboardNamePrefix</code>, only those dashboards with names starting with the prefix are listed. Otherwise, all dashboards in your account are listed. </p> <p> <code>ListDashboards</code> returns up to 1000 results on one page. If there are more than 1000 dashboards, you can call <code>ListDashboards</code> again and include the value you received for <code>NextToken</code> in the first call, to receive the next 1000 results.</p>

**Required Parameters**

-}
listDashboards :
    (ListDashboardsOptions -> ListDashboardsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDashboardsOutput)
listDashboards setOptions =
    let
        requestInput =
            ListDashboardsInput
                options.dashboardNamePrefix
                options.nextToken

        options =
            setOptions (ListDashboardsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ListDashboards")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs listDashboardsInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListDashboards"
            (AWS.Core.Decode.ResultDecoder "ListDashboardsResult" listDashboardsOutputDecoder)
        )


{-| Options for a listDashboards request
-}
type alias ListDashboardsOptions =
    { dashboardNamePrefix : Maybe String
    , nextToken : Maybe String
    }


{-|

<p>List the specified metrics. You can use the returned metrics with <a>GetMetricData</a> or <a>GetMetricStatistics</a> to obtain statistical data.</p> <p>Up to 500 results are returned for any one call. To retrieve additional results, use the returned token with subsequent calls.</p> <p>After you create a metric, allow up to fifteen minutes before the metric appears. Statistics about the metric, however, are available sooner using <a>GetMetricData</a> or <a>GetMetricStatistics</a>.</p>

**Required Parameters**

-}
listMetrics :
    (ListMetricsOptions -> ListMetricsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListMetricsOutput)
listMetrics setOptions =
    let
        requestInput =
            ListMetricsInput
                options.namespace
                options.metricName
                options.dimensions
                options.nextToken

        options =
            setOptions (ListMetricsOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ListMetrics")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs listMetricsInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListMetrics"
            (AWS.Core.Decode.ResultDecoder "ListMetricsResult" listMetricsOutputDecoder)
        )


{-| Options for a listMetrics request
-}
type alias ListMetricsOptions =
    { namespace : Maybe String
    , metricName : Maybe String
    , dimensions : Maybe (List DimensionFilter)
    , nextToken : Maybe String
    }


{-|

<p>Displays the tags associated with a CloudWatch resource. Alarms support tagging.</p>

**Required Parameters**

  - `resourceARN` **:** `String`

-}
listTagsForResource :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceOutput)
listTagsForResource resourceARN =
    let
        requestInput =
            ListTagsForResourceInput
                resourceARN
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "ListTagsForResource")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs listTagsForResourceInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListTagsForResource"
            (AWS.Core.Decode.ResultDecoder "ListTagsForResourceResult" listTagsForResourceOutputDecoder)
        )


{-|

<p>Creates an anomaly detection model for a CloudWatch metric. You can use the model to display a band of expected normal values when the metric is graphed.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Anomaly_Detection.html">CloudWatch Anomaly Detection</a>.</p>

**Required Parameters**

  - `namespace` **:** `String`
  - `metricName` **:** `String`
  - `stat` **:** `String`

-}
putAnomalyDetector :
    String
    -> String
    -> String
    -> (PutAnomalyDetectorOptions -> PutAnomalyDetectorOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutAnomalyDetectorOutput)
putAnomalyDetector namespace metricName stat setOptions =
    let
        requestInput =
            PutAnomalyDetectorInput
                namespace
                metricName
                options.dimensions
                stat
                options.configuration

        options =
            setOptions (PutAnomalyDetectorOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "PutAnomalyDetector")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs putAnomalyDetectorInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutAnomalyDetector"
            (AWS.Core.Decode.ResultDecoder "PutAnomalyDetectorResult" putAnomalyDetectorOutputDecoder)
        )


{-| Options for a putAnomalyDetector request
-}
type alias PutAnomalyDetectorOptions =
    { dimensions : Maybe (List Dimension)
    , configuration : Maybe AnomalyDetectorConfiguration
    }


{-|

<p>Creates a dashboard if it does not already exist, or updates an existing dashboard. If you update a dashboard, the entire contents are replaced with what you specify here.</p> <p>All dashboards in your account are global, not region-specific.</p> <p>A simple way to create a dashboard using <code>PutDashboard</code> is to copy an existing dashboard. To copy an existing dashboard using the console, you can load the dashboard and then use the View/edit source command in the Actions menu to display the JSON block for that dashboard. Another way to copy a dashboard is to use <code>GetDashboard</code>, and then use the data returned within <code>DashboardBody</code> as the template for the new dashboard when you call <code>PutDashboard</code>.</p> <p>When you create a dashboard with <code>PutDashboard</code>, a good practice is to add a text widget at the top of the dashboard with a message that the dashboard was created by script and should not be changed in the console. This message could also point console users to the location of the <code>DashboardBody</code> script or the CloudFormation template used to create the dashboard.</p>

**Required Parameters**

  - `dashboardName` **:** `String`
  - `dashboardBody` **:** `String`

-}
putDashboard :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutDashboardOutput)
putDashboard dashboardName dashboardBody =
    let
        requestInput =
            PutDashboardInput
                dashboardName
                dashboardBody
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "PutDashboard")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs putDashboardInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutDashboard"
            (AWS.Core.Decode.ResultDecoder "PutDashboardResult" putDashboardOutputDecoder)
        )


{-|

<p>Creates or updates an alarm and associates it with the specified metric, metric math expression, or anomaly detection model.</p> <p>Alarms based on anomaly detection models cannot have Auto Scaling actions.</p> <p>When this operation creates an alarm, the alarm state is immediately set to <code>INSUFFICIENT_DATA</code>. The alarm is then evaluated and its state is set appropriately. Any actions associated with the new state are then executed.</p> <p>When you update an existing alarm, its state is left unchanged, but the update completely overwrites the previous configuration of the alarm.</p> <p>If you are an IAM user, you must have Amazon EC2 permissions for some alarm operations:</p> <ul> <li> <p> <code>iam:CreateServiceLinkedRole</code> for all alarms with EC2 actions</p> </li> <li> <p> <code>ec2:DescribeInstanceStatus</code> and <code>ec2:DescribeInstances</code> for all alarms on EC2 instance status metrics</p> </li> <li> <p> <code>ec2:StopInstances</code> for alarms with stop actions</p> </li> <li> <p> <code>ec2:TerminateInstances</code> for alarms with terminate actions</p> </li> <li> <p>No specific permissions are needed for alarms with recover actions</p> </li> </ul> <p>If you have read/write permissions for Amazon CloudWatch but not for Amazon EC2, you can still create an alarm, but the stop or terminate actions are not performed. However, if you are later granted the required permissions, the alarm actions that you created earlier are performed.</p> <p>If you are using an IAM role (for example, an EC2 instance profile), you cannot stop or terminate the instance using alarm actions. However, you can still see the alarm state and perform any other actions such as Amazon SNS notifications or Auto Scaling policies.</p> <p>If you are using temporary security credentials granted using AWS STS, you cannot stop or terminate an EC2 instance using alarm actions.</p> <p>The first time you create an alarm in the AWS Management Console, the CLI, or by using the PutMetricAlarm API, CloudWatch creates the necessary service-linked role for you. The service-linked role is called <code>AWSServiceRoleForCloudWatchEvents</code>. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role">AWS service-linked role</a>.</p>

**Required Parameters**

  - `alarmName` **:** `String`
  - `evaluationPeriods` **:** `Int`
  - `comparisonOperator` **:** `ComparisonOperator`

-}
putMetricAlarm :
    String
    -> Int
    -> ComparisonOperator
    -> (PutMetricAlarmOptions -> PutMetricAlarmOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putMetricAlarm alarmName evaluationPeriods comparisonOperator setOptions =
    let
        requestInput =
            PutMetricAlarmInput
                alarmName
                options.alarmDescription
                options.actionsEnabled
                options.oKActions
                options.alarmActions
                options.insufficientDataActions
                options.metricName
                options.namespace
                options.statistic
                options.extendedStatistic
                options.dimensions
                options.period
                options.unit
                evaluationPeriods
                options.datapointsToAlarm
                options.threshold
                comparisonOperator
                options.treatMissingData
                options.evaluateLowSampleCountPercentile
                options.metrics
                options.tags
                options.thresholdMetricId

        options =
            setOptions (PutMetricAlarmOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "PutMetricAlarm")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs putMetricAlarmInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutMetricAlarm"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a putMetricAlarm request
-}
type alias PutMetricAlarmOptions =
    { alarmDescription : Maybe String
    , actionsEnabled : Maybe Bool
    , oKActions : Maybe (List String)
    , alarmActions : Maybe (List String)
    , insufficientDataActions : Maybe (List String)
    , metricName : Maybe String
    , namespace : Maybe String
    , statistic : Maybe Statistic
    , extendedStatistic : Maybe String
    , dimensions : Maybe (List Dimension)
    , period : Maybe Int
    , unit : Maybe StandardUnit
    , datapointsToAlarm : Maybe Int
    , threshold : Maybe Float
    , treatMissingData : Maybe String
    , evaluateLowSampleCountPercentile : Maybe String
    , metrics : Maybe (List MetricDataQuery)
    , tags : Maybe (List Tag)
    , thresholdMetricId : Maybe String
    }


{-|

<p>Publishes metric data points to Amazon CloudWatch. CloudWatch associates the data points with the specified metric. If the specified metric does not exist, CloudWatch creates the metric. When CloudWatch creates a metric, it can take up to fifteen minutes for the metric to appear in calls to <a>ListMetrics</a>.</p> <p>You can publish either individual data points in the <code>Value</code> field, or arrays of values and the number of times each value occurred during the period by using the <code>Values</code> and <code>Counts</code> fields in the <code>MetricDatum</code> structure. Using the <code>Values</code> and <code>Counts</code> method enables you to publish up to 150 values per metric with one <code>PutMetricData</code> request, and supports retrieving percentile statistics on this data.</p> <p>Each <code>PutMetricData</code> request is limited to 40 KB in size for HTTP POST requests. You can send a payload compressed by gzip. Each request is also limited to no more than 20 different metrics.</p> <p>Although the <code>Value</code> parameter accepts numbers of type <code>Double</code>, CloudWatch rejects values that are either too small or too large. Values must be in the range of 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2). In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.</p> <p>You can use up to 10 dimensions per metric to further clarify what data the metric collects. Each dimension consists of a Name and Value pair. For more information about specifying dimensions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publishing Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p> <p>Data points with time stamps from 24 hours ago or longer can take at least 48 hours to become available for <a>GetMetricData</a> or <a>GetMetricStatistics</a> from the time they are submitted.</p> <p>CloudWatch needs raw data points to calculate percentile statistics. If you publish data using a statistic set instead, you can only retrieve percentile statistics for this data if one of the following conditions is true:</p> <ul> <li> <p>The <code>SampleCount</code> value of the statistic set is 1 and <code>Min</code>, <code>Max</code>, and <code>Sum</code> are all equal.</p> </li> <li> <p>The <code>Min</code> and <code>Max</code> are equal, and <code>Sum</code> is equal to <code>Min</code> multiplied by <code>SampleCount</code>.</p> </li> </ul>

**Required Parameters**

  - `namespace` **:** `String`
  - `metricData` **:** `(List MetricDatum)`

-}
putMetricData :
    String
    -> List MetricDatum
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
putMetricData namespace metricData =
    let
        requestInput =
            PutMetricDataInput
                namespace
                metricData
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "PutMetricData")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs putMetricDataInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutMetricData"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Temporarily sets the state of an alarm for testing purposes. When the updated state differs from the previous value, the action configured for the appropriate state is invoked. For example, if your alarm is configured to send an Amazon SNS message when an alarm is triggered, temporarily changing the alarm state to <code>ALARM</code> sends an SNS message. The alarm returns to its actual state (often within seconds). Because the alarm state change happens quickly, it is typically only visible in the alarm's <b>History</b> tab in the Amazon CloudWatch console or through <a>DescribeAlarmHistory</a>.</p>

**Required Parameters**

  - `alarmName` **:** `String`
  - `stateValue` **:** `StateValue`
  - `stateReason` **:** `String`

-}
setAlarmState :
    String
    -> StateValue
    -> String
    -> (SetAlarmStateOptions -> SetAlarmStateOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
setAlarmState alarmName stateValue stateReason setOptions =
    let
        requestInput =
            SetAlarmStateInput
                alarmName
                stateValue
                stateReason
                options.stateReasonData

        options =
            setOptions (SetAlarmStateOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- ([("Action", "SetAlarmState")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs setAlarmStateInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetAlarmState"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a setAlarmState request
-}
type alias SetAlarmStateOptions =
    { stateReasonData : Maybe String
    }


{-|

<p>Assigns one or more tags (key-value pairs) to the specified CloudWatch resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. In CloudWatch, alarms can be tagged.</p> <p>Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters.</p> <p>You can use the <code>TagResource</code> action with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag.</p> <p>You can associate as many as 50 tags with a resource.</p>

**Required Parameters**

  - `resourceARN` **:** `String`
  - `tags` **:** `(List Tag)`

-}
tagResource :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceOutput)
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
        -- ([("Action", "TagResource")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs tagResourceInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "TagResource"
            (AWS.Core.Decode.ResultDecoder "TagResourceResult" tagResourceOutputDecoder)
        )


{-|

<p>Removes one or more tags from the specified resource.</p>

**Required Parameters**

  - `resourceARN` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
untagResource :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceOutput)
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
        -- ([("Action", "UntagResource")]
        --
        --     |> AWS.Core.Encode.addRecordToQueryArgs untagResourceInputEncoder "" requestInput
        --
        -- )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UntagResource"
            (AWS.Core.Decode.ResultDecoder "UntagResourceResult" untagResourceOutputDecoder)
        )


{-|

<p>Represents the history of a specific alarm.</p>

-}
type alias AlarmHistoryItem =
    { alarmName : Maybe String
    , timestamp : Maybe Posix
    , historyItemType : Maybe HistoryItemType
    , historySummary : Maybe String
    , historyData : Maybe String
    }


alarmHistoryItemDecoder : JD.Decoder AlarmHistoryItem
alarmHistoryItemDecoder =
    JD.succeed AlarmHistoryItem
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AlarmName", "alarmName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Timestamp", "timestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HistoryItemType", "historyItemType" ]
                historyItemTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HistorySummary", "historySummary" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HistoryData", "historyData" ]
                JD.string
            )


{-|

<p>An anomaly detection model associated with a particular CloudWatch metric athresnd statistic. You can use the model to display a band of expected normal values when the metric is graphed.</p>

-}
type alias AnomalyDetector =
    { namespace : Maybe String
    , metricName : Maybe String
    , dimensions : Maybe (List Dimension)
    , stat : Maybe String
    , configuration : Maybe AnomalyDetectorConfiguration
    }


anomalyDetectorDecoder : JD.Decoder AnomalyDetector
anomalyDetectorDecoder =
    JD.succeed AnomalyDetector
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Namespace", "namespace" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MetricName", "metricName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Dimensions", "dimensions" ]
                (JD.list dimensionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Stat", "stat" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Configuration", "configuration" ]
                anomalyDetectorConfigurationDecoder
            )


{-|

<p>The configuration specifies details about how the anomaly detection model is to be trained, including time ranges to exclude from use for training the model and the time zone to use for the metric.</p>

-}
type alias AnomalyDetectorConfiguration =
    { excludedTimeRanges : Maybe (List Range)
    , metricTimezone : Maybe String
    }


anomalyDetectorConfigurationDecoder : JD.Decoder AnomalyDetectorConfiguration
anomalyDetectorConfigurationDecoder =
    JD.succeed AnomalyDetectorConfiguration
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExcludedTimeRanges", "excludedTimeRanges" ]
                (JD.list rangeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MetricTimezone", "metricTimezone" ]
                JD.string
            )


{-| One of

  - `ComparisonOperator_GreaterThanOrEqualToThreshold`
  - `ComparisonOperator_GreaterThanThreshold`
  - `ComparisonOperator_LessThanThreshold`
  - `ComparisonOperator_LessThanOrEqualToThreshold`
  - `ComparisonOperator_LessThanLowerOrGreaterThanUpperThreshold`
  - `ComparisonOperator_LessThanLowerThreshold`
  - `ComparisonOperator_GreaterThanUpperThreshold`

-}
type ComparisonOperator
    = ComparisonOperator_GreaterThanOrEqualToThreshold
    | ComparisonOperator_GreaterThanThreshold
    | ComparisonOperator_LessThanThreshold
    | ComparisonOperator_LessThanOrEqualToThreshold
    | ComparisonOperator_LessThanLowerOrGreaterThanUpperThreshold
    | ComparisonOperator_LessThanLowerThreshold
    | ComparisonOperator_GreaterThanUpperThreshold


comparisonOperatorDecoder : JD.Decoder ComparisonOperator
comparisonOperatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GreaterThanOrEqualToThreshold" ->
                        JD.succeed ComparisonOperator_GreaterThanOrEqualToThreshold

                    "GreaterThanThreshold" ->
                        JD.succeed ComparisonOperator_GreaterThanThreshold

                    "LessThanThreshold" ->
                        JD.succeed ComparisonOperator_LessThanThreshold

                    "LessThanOrEqualToThreshold" ->
                        JD.succeed ComparisonOperator_LessThanOrEqualToThreshold

                    "LessThanLowerOrGreaterThanUpperThreshold" ->
                        JD.succeed ComparisonOperator_LessThanLowerOrGreaterThanUpperThreshold

                    "LessThanLowerThreshold" ->
                        JD.succeed ComparisonOperator_LessThanLowerThreshold

                    "GreaterThanUpperThreshold" ->
                        JD.succeed ComparisonOperator_GreaterThanUpperThreshold

                    _ ->
                        JD.fail "bad thing"
            )


comparisonOperatorToString : ComparisonOperator -> String
comparisonOperatorToString val =
    case val of
        ComparisonOperator_GreaterThanOrEqualToThreshold ->
            "GreaterThanOrEqualToThreshold"

        ComparisonOperator_GreaterThanThreshold ->
            "GreaterThanThreshold"

        ComparisonOperator_LessThanThreshold ->
            "LessThanThreshold"

        ComparisonOperator_LessThanOrEqualToThreshold ->
            "LessThanOrEqualToThreshold"

        ComparisonOperator_LessThanLowerOrGreaterThanUpperThreshold ->
            "LessThanLowerOrGreaterThanUpperThreshold"

        ComparisonOperator_LessThanLowerThreshold ->
            "LessThanLowerThreshold"

        ComparisonOperator_GreaterThanUpperThreshold ->
            "GreaterThanUpperThreshold"


{-|

<p>Represents a specific dashboard.</p>

-}
type alias DashboardEntry =
    { dashboardName : Maybe String
    , dashboardArn : Maybe String
    , lastModified : Maybe Posix
    , size : Maybe Int
    }


dashboardEntryDecoder : JD.Decoder DashboardEntry
dashboardEntryDecoder =
    JD.succeed DashboardEntry
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DashboardName", "dashboardName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DashboardArn", "dashboardArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastModified", "lastModified" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Size", "size" ]
                JD.int
            )


{-|

<p>An error or warning for the operation.</p>

-}
type alias DashboardValidationMessage =
    { dataPath : Maybe String
    , message : Maybe String
    }


dashboardValidationMessageDecoder : JD.Decoder DashboardValidationMessage
dashboardValidationMessageDecoder =
    JD.succeed DashboardValidationMessage
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DataPath", "dataPath" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Message", "message" ]
                JD.string
            )


{-|

<p>Encapsulates the statistical data that CloudWatch computes from metric data.</p>

-}
type alias Datapoint =
    { timestamp : Maybe Posix
    , sampleCount : Maybe Float
    , average : Maybe Float
    , sum : Maybe Float
    , minimum : Maybe Float
    , maximum : Maybe Float
    , unit : Maybe StandardUnit
    , extendedStatistics : Maybe (Dict String Float)
    }


datapointDecoder : JD.Decoder Datapoint
datapointDecoder =
    JD.succeed Datapoint
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Timestamp", "timestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SampleCount", "sampleCount" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Average", "average" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Sum", "sum" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Minimum", "minimum" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Maximum", "maximum" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Unit", "unit" ]
                standardUnitDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExtendedStatistics", "extendedStatistics" ]
                (AWS.Core.Decode.dict JD.float)
            )


{-| Type of HTTP response from deleteAnomalyDetect
-}
type alias DeleteAnomalyDetectorOutput =
    {}


deleteAnomalyDetectorOutputDecoder : JD.Decoder DeleteAnomalyDetectorOutput
deleteAnomalyDetectorOutputDecoder =
    JD.succeed DeleteAnomalyDetectorOutput


{-| Type of HTTP response from deleteDashboar
-}
type alias DeleteDashboardsOutput =
    {}


deleteDashboardsOutputDecoder : JD.Decoder DeleteDashboardsOutput
deleteDashboardsOutputDecoder =
    JD.succeed DeleteDashboardsOutput


{-| Type of HTTP response from describeAlarmHisto
-}
type alias DescribeAlarmHistoryOutput =
    { alarmHistoryItems : Maybe (List AlarmHistoryItem)
    , nextToken : Maybe String
    }


describeAlarmHistoryOutputDecoder : JD.Decoder DescribeAlarmHistoryOutput
describeAlarmHistoryOutputDecoder =
    JD.succeed DescribeAlarmHistoryOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AlarmHistoryItems", "alarmHistoryItems" ]
                (JD.list alarmHistoryItemDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from describeAlarmsForMetr
-}
type alias DescribeAlarmsForMetricOutput =
    { metricAlarms : Maybe (List MetricAlarm)
    }


describeAlarmsForMetricOutputDecoder : JD.Decoder DescribeAlarmsForMetricOutput
describeAlarmsForMetricOutputDecoder =
    JD.succeed DescribeAlarmsForMetricOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MetricAlarms", "metricAlarms" ]
                (JD.list metricAlarmDecoder)
            )


{-| Type of HTTP response from describeAlar
-}
type alias DescribeAlarmsOutput =
    { metricAlarms : Maybe (List MetricAlarm)
    , nextToken : Maybe String
    }


describeAlarmsOutputDecoder : JD.Decoder DescribeAlarmsOutput
describeAlarmsOutputDecoder =
    JD.succeed DescribeAlarmsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MetricAlarms", "metricAlarms" ]
                (JD.list metricAlarmDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from describeAnomalyDetecto
-}
type alias DescribeAnomalyDetectorsOutput =
    { anomalyDetectors : Maybe (List AnomalyDetector)
    , nextToken : Maybe String
    }


describeAnomalyDetectorsOutputDecoder : JD.Decoder DescribeAnomalyDetectorsOutput
describeAnomalyDetectorsOutputDecoder =
    JD.succeed DescribeAnomalyDetectorsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AnomalyDetectors", "anomalyDetectors" ]
                (JD.list anomalyDetectorDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-|

<p>Expands the identity of a metric.</p>

-}
type alias Dimension =
    { name : String
    , value : String
    }


dimensionDecoder : JD.Decoder Dimension
dimensionDecoder =
    JD.succeed Dimension
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Value", "value" ]
                JD.string
            )


{-|

<p>Represents filters for a dimension.</p>

-}
type alias DimensionFilter =
    { name : String
    , value : Maybe String
    }


dimensionFilterDecoder : JD.Decoder DimensionFilter
dimensionFilterDecoder =
    JD.succeed DimensionFilter
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.string
            )


{-| Type of HTTP response from getDashboa
-}
type alias GetDashboardOutput =
    { dashboardArn : Maybe String
    , dashboardBody : Maybe String
    , dashboardName : Maybe String
    }


getDashboardOutputDecoder : JD.Decoder GetDashboardOutput
getDashboardOutputDecoder =
    JD.succeed GetDashboardOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DashboardArn", "dashboardArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DashboardBody", "dashboardBody" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DashboardName", "dashboardName" ]
                JD.string
            )


{-| Type of HTTP response from getMetricDa
-}
type alias GetMetricDataOutput =
    { metricDataResults : Maybe (List MetricDataResult)
    , nextToken : Maybe String
    , messages : Maybe (List MessageData)
    }


getMetricDataOutputDecoder : JD.Decoder GetMetricDataOutput
getMetricDataOutputDecoder =
    JD.succeed GetMetricDataOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MetricDataResults", "metricDataResults" ]
                (JD.list metricDataResultDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Messages", "messages" ]
                (JD.list messageDataDecoder)
            )


{-| Type of HTTP response from getMetricStatisti
-}
type alias GetMetricStatisticsOutput =
    { label : Maybe String
    , datapoints : Maybe (List Datapoint)
    }


getMetricStatisticsOutputDecoder : JD.Decoder GetMetricStatisticsOutput
getMetricStatisticsOutputDecoder =
    JD.succeed GetMetricStatisticsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Label", "label" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Datapoints", "datapoints" ]
                (JD.list datapointDecoder)
            )


{-| Type of HTTP response from getMetricWidgetIma
-}
type alias GetMetricWidgetImageOutput =
    { metricWidgetImage : Maybe String
    }


getMetricWidgetImageOutputDecoder : JD.Decoder GetMetricWidgetImageOutput
getMetricWidgetImageOutputDecoder =
    JD.succeed GetMetricWidgetImageOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MetricWidgetImage", "metricWidgetImage" ]
                JD.string
            )


{-| One of

  - `HistoryItemType_ConfigurationUpdate`
  - `HistoryItemType_StateUpdate`
  - `HistoryItemType_Action`

-}
type HistoryItemType
    = HistoryItemType_ConfigurationUpdate
    | HistoryItemType_StateUpdate
    | HistoryItemType_Action


historyItemTypeDecoder : JD.Decoder HistoryItemType
historyItemTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ConfigurationUpdate" ->
                        JD.succeed HistoryItemType_ConfigurationUpdate

                    "StateUpdate" ->
                        JD.succeed HistoryItemType_StateUpdate

                    "Action" ->
                        JD.succeed HistoryItemType_Action

                    _ ->
                        JD.fail "bad thing"
            )


historyItemTypeToString : HistoryItemType -> String
historyItemTypeToString val =
    case val of
        HistoryItemType_ConfigurationUpdate ->
            "ConfigurationUpdate"

        HistoryItemType_StateUpdate ->
            "StateUpdate"

        HistoryItemType_Action ->
            "Action"


{-| Type of HTTP response from listDashboar
-}
type alias ListDashboardsOutput =
    { dashboardEntries : Maybe (List DashboardEntry)
    , nextToken : Maybe String
    }


listDashboardsOutputDecoder : JD.Decoder ListDashboardsOutput
listDashboardsOutputDecoder =
    JD.succeed ListDashboardsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DashboardEntries", "dashboardEntries" ]
                (JD.list dashboardEntryDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


{-| Type of HTTP response from listMetri
-}
type alias ListMetricsOutput =
    { metrics : Maybe (List Metric)
    , nextToken : Maybe String
    }


listMetricsOutputDecoder : JD.Decoder ListMetricsOutput
listMetricsOutputDecoder =
    JD.succeed ListMetricsOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Metrics", "metrics" ]
                (JD.list metricDecoder)
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
    }


listTagsForResourceOutputDecoder : JD.Decoder ListTagsForResourceOutput
listTagsForResourceOutputDecoder =
    JD.succeed ListTagsForResourceOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-|

<p>A message returned by the <code>GetMetricData</code>API, including a code and a description.</p>

-}
type alias MessageData =
    { code : Maybe String
    , value : Maybe String
    }


messageDataDecoder : JD.Decoder MessageData
messageDataDecoder =
    JD.succeed MessageData
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Code", "code" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.string
            )


{-|

<p>Represents a specific metric.</p>

-}
type alias Metric =
    { namespace : Maybe String
    , metricName : Maybe String
    , dimensions : Maybe (List Dimension)
    }


metricDecoder : JD.Decoder Metric
metricDecoder =
    JD.succeed Metric
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Namespace", "namespace" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MetricName", "metricName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Dimensions", "dimensions" ]
                (JD.list dimensionDecoder)
            )


{-|

<p>Represents an alarm.</p>

-}
type alias MetricAlarm =
    { alarmName : Maybe String
    , alarmArn : Maybe String
    , alarmDescription : Maybe String
    , alarmConfigurationUpdatedTimestamp : Maybe Posix
    , actionsEnabled : Maybe Bool
    , oKActions : Maybe (List String)
    , alarmActions : Maybe (List String)
    , insufficientDataActions : Maybe (List String)
    , stateValue : Maybe StateValue
    , stateReason : Maybe String
    , stateReasonData : Maybe String
    , stateUpdatedTimestamp : Maybe Posix
    , metricName : Maybe String
    , namespace : Maybe String
    , statistic : Maybe Statistic
    , extendedStatistic : Maybe String
    , dimensions : Maybe (List Dimension)
    , period : Maybe Int
    , unit : Maybe StandardUnit
    , evaluationPeriods : Maybe Int
    , datapointsToAlarm : Maybe Int
    , threshold : Maybe Float
    , comparisonOperator : Maybe ComparisonOperator
    , treatMissingData : Maybe String
    , evaluateLowSampleCountPercentile : Maybe String
    , metrics : Maybe (List MetricDataQuery)
    , thresholdMetricId : Maybe String
    }


metricAlarmDecoder : JD.Decoder MetricAlarm
metricAlarmDecoder =
    JD.succeed MetricAlarm
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AlarmName", "alarmName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AlarmArn", "alarmArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AlarmDescription", "alarmDescription" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AlarmConfigurationUpdatedTimestamp", "alarmConfigurationUpdatedTimestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ActionsEnabled", "actionsEnabled" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OKActions", "oKActions" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AlarmActions", "alarmActions" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InsufficientDataActions", "insufficientDataActions" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StateValue", "stateValue" ]
                stateValueDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StateReason", "stateReason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StateReasonData", "stateReasonData" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StateUpdatedTimestamp", "stateUpdatedTimestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MetricName", "metricName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Namespace", "namespace" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Statistic", "statistic" ]
                statisticDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExtendedStatistic", "extendedStatistic" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Dimensions", "dimensions" ]
                (JD.list dimensionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Period", "period" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Unit", "unit" ]
                standardUnitDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EvaluationPeriods", "evaluationPeriods" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DatapointsToAlarm", "datapointsToAlarm" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Threshold", "threshold" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ComparisonOperator", "comparisonOperator" ]
                comparisonOperatorDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TreatMissingData", "treatMissingData" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EvaluateLowSampleCountPercentile", "evaluateLowSampleCountPercentile" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Metrics", "metrics" ]
                (JD.list metricDataQueryDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ThresholdMetricId", "thresholdMetricId" ]
                JD.string
            )


{-|

<p>This structure is used in both <code>GetMetricData</code> and <code>PutMetricAlarm</code>. The supported use of this structure is different for those two operations.</p> <p>When used in <code>GetMetricData</code>, it indicates the metric data to return, and whether this call is just retrieving a batch set of data for one metric, or is performing a math expression on metric data. A single <code>GetMetricData</code> call can include up to 100 <code>MetricDataQuery</code> structures.</p> <p>When used in <code>PutMetricAlarm</code>, it enables you to create an alarm based on a metric math expression. Each <code>MetricDataQuery</code> in the array specifies either a metric to retrieve, or a math expression to be performed on retrieved metrics. A single <code>PutMetricAlarm</code> call can include up to 20 <code>MetricDataQuery</code> structures in the array. The 20 structures can include as many as 10 structures that contain a <code>MetricStat</code> parameter to retrieve a metric, and as many as 10 structures that contain the <code>Expression</code> parameter to perform a math expression. Of those <code>Expression</code> structures, one must have <code>True</code> as the value for <code>ReturnData</code>. The result of this expression is the value the alarm watches.</p> <p>Any expression used in a <code>PutMetricAlarm</code> operation must return a single time series. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax">Metric Math Syntax and Functions</a> in the <i>Amazon CloudWatch User Guide</i>.</p> <p>Some of the parameters of this structure also have different uses whether you are using this structure in a <code>GetMetricData</code> operation or a <code>PutMetricAlarm</code> operation. These differences are explained in the following parameter list.</p>

-}
type alias MetricDataQuery =
    { id : String
    , metricStat : Maybe MetricStat
    , expression : Maybe String
    , label : Maybe String
    , returnData : Maybe Bool
    }


metricDataQueryDecoder : JD.Decoder MetricDataQuery
metricDataQueryDecoder =
    JD.succeed MetricDataQuery
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Id", "id" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MetricStat", "metricStat" ]
                metricStatDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Expression", "expression" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Label", "label" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReturnData", "returnData" ]
                JD.bool
            )


{-|

<p>A <code>GetMetricData</code> call returns an array of <code>MetricDataResult</code> structures. Each of these structures includes the data points for that metric, along with the timestamps of those data points and other identifying information.</p>

-}
type alias MetricDataResult =
    { id : Maybe String
    , label : Maybe String
    , timestamps : Maybe (List Posix)
    , values : Maybe (List Float)
    , statusCode : Maybe StatusCode
    , messages : Maybe (List MessageData)
    }


metricDataResultDecoder : JD.Decoder MetricDataResult
metricDataResultDecoder =
    JD.succeed MetricDataResult
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Id", "id" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Label", "label" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Timestamps", "timestamps" ]
                (JD.list JDX.datetime)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Values", "values" ]
                (JD.list JD.float)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StatusCode", "statusCode" ]
                statusCodeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Messages", "messages" ]
                (JD.list messageDataDecoder)
            )


{-|

<p>Encapsulates the information sent to either create a metric or add new values to be aggregated into an existing metric.</p>

-}
type alias MetricDatum =
    { metricName : String
    , dimensions : Maybe (List Dimension)
    , timestamp : Maybe Posix
    , value : Maybe Float
    , statisticValues : Maybe StatisticSet
    , values : Maybe (List Float)
    , counts : Maybe (List Float)
    , unit : Maybe StandardUnit
    , storageResolution : Maybe Int
    }


metricDatumDecoder : JD.Decoder MetricDatum
metricDatumDecoder =
    JD.succeed MetricDatum
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MetricName", "metricName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Dimensions", "dimensions" ]
                (JD.list dimensionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Timestamp", "timestamp" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Value", "value" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StatisticValues", "statisticValues" ]
                statisticSetDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Values", "values" ]
                (JD.list JD.float)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Counts", "counts" ]
                (JD.list JD.float)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Unit", "unit" ]
                standardUnitDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StorageResolution", "storageResolution" ]
                JD.int
            )


{-|

<p>This structure defines the metric to be returned, along with the statistics, period, and units.</p>

-}
type alias MetricStat =
    { metric : Metric
    , period : Int
    , stat : String
    , unit : Maybe StandardUnit
    }


metricStatDecoder : JD.Decoder MetricStat
metricStatDecoder =
    JD.succeed MetricStat
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Metric", "metric" ]
                metricDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Period", "period" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Stat", "stat" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Unit", "unit" ]
                standardUnitDecoder
            )


{-| Type of HTTP response from putAnomalyDetect
-}
type alias PutAnomalyDetectorOutput =
    {}


putAnomalyDetectorOutputDecoder : JD.Decoder PutAnomalyDetectorOutput
putAnomalyDetectorOutputDecoder =
    JD.succeed PutAnomalyDetectorOutput


{-| Type of HTTP response from putDashboa
-}
type alias PutDashboardOutput =
    { dashboardValidationMessages : Maybe (List DashboardValidationMessage)
    }


putDashboardOutputDecoder : JD.Decoder PutDashboardOutput
putDashboardOutputDecoder =
    JD.succeed PutDashboardOutput
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DashboardValidationMessages", "dashboardValidationMessages" ]
                (JD.list dashboardValidationMessageDecoder)
            )


{-|

<p>Specifies one range of days or times to exclude from use for training an anomaly detection model.</p>

-}
type alias Range =
    { startTime : Posix
    , endTime : Posix
    }


rangeDecoder : JD.Decoder Range
rangeDecoder =
    JD.succeed Range
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "StartTime", "startTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "EndTime", "endTime" ]
                JDX.datetime
            )


{-| One of

  - `ScanBy_TimestampDescending`
  - `ScanBy_TimestampAscending`

-}
type ScanBy
    = ScanBy_TimestampDescending
    | ScanBy_TimestampAscending


scanByDecoder : JD.Decoder ScanBy
scanByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TimestampDescending" ->
                        JD.succeed ScanBy_TimestampDescending

                    "TimestampAscending" ->
                        JD.succeed ScanBy_TimestampAscending

                    _ ->
                        JD.fail "bad thing"
            )


scanByToString : ScanBy -> String
scanByToString val =
    case val of
        ScanBy_TimestampDescending ->
            "TimestampDescending"

        ScanBy_TimestampAscending ->
            "TimestampAscending"


{-| One of

  - `StandardUnit_Seconds`
  - `StandardUnit_Microseconds`
  - `StandardUnit_Milliseconds`
  - `StandardUnit_Bytes`
  - `StandardUnit_Kilobytes`
  - `StandardUnit_Megabytes`
  - `StandardUnit_Gigabytes`
  - `StandardUnit_Terabytes`
  - `StandardUnit_Bits`
  - `StandardUnit_Kilobits`
  - `StandardUnit_Megabits`
  - `StandardUnit_Gigabits`
  - `StandardUnit_Terabits`
  - `StandardUnit_Percent`
  - `StandardUnit_Count`
  - `StandardUnit_Bytes/Second`
  - `StandardUnit_Kilobytes/Second`
  - `StandardUnit_Megabytes/Second`
  - `StandardUnit_Gigabytes/Second`
  - `StandardUnit_Terabytes/Second`
  - `StandardUnit_Bits/Second`
  - `StandardUnit_Kilobits/Second`
  - `StandardUnit_Megabits/Second`
  - `StandardUnit_Gigabits/Second`
  - `StandardUnit_Terabits/Second`
  - `StandardUnit_Count/Second`
  - `StandardUnit_None`

-}
type StandardUnit
    = StandardUnit_Seconds
    | StandardUnit_Microseconds
    | StandardUnit_Milliseconds
    | StandardUnit_Bytes
    | StandardUnit_Kilobytes
    | StandardUnit_Megabytes
    | StandardUnit_Gigabytes
    | StandardUnit_Terabytes
    | StandardUnit_Bits
    | StandardUnit_Kilobits
    | StandardUnit_Megabits
    | StandardUnit_Gigabits
    | StandardUnit_Terabits
    | StandardUnit_Percent
    | StandardUnit_Count
    | StandardUnit_Bytes_Second
    | StandardUnit_Kilobytes_Second
    | StandardUnit_Megabytes_Second
    | StandardUnit_Gigabytes_Second
    | StandardUnit_Terabytes_Second
    | StandardUnit_Bits_Second
    | StandardUnit_Kilobits_Second
    | StandardUnit_Megabits_Second
    | StandardUnit_Gigabits_Second
    | StandardUnit_Terabits_Second
    | StandardUnit_Count_Second
    | StandardUnit_None


standardUnitDecoder : JD.Decoder StandardUnit
standardUnitDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Seconds" ->
                        JD.succeed StandardUnit_Seconds

                    "Microseconds" ->
                        JD.succeed StandardUnit_Microseconds

                    "Milliseconds" ->
                        JD.succeed StandardUnit_Milliseconds

                    "Bytes" ->
                        JD.succeed StandardUnit_Bytes

                    "Kilobytes" ->
                        JD.succeed StandardUnit_Kilobytes

                    "Megabytes" ->
                        JD.succeed StandardUnit_Megabytes

                    "Gigabytes" ->
                        JD.succeed StandardUnit_Gigabytes

                    "Terabytes" ->
                        JD.succeed StandardUnit_Terabytes

                    "Bits" ->
                        JD.succeed StandardUnit_Bits

                    "Kilobits" ->
                        JD.succeed StandardUnit_Kilobits

                    "Megabits" ->
                        JD.succeed StandardUnit_Megabits

                    "Gigabits" ->
                        JD.succeed StandardUnit_Gigabits

                    "Terabits" ->
                        JD.succeed StandardUnit_Terabits

                    "Percent" ->
                        JD.succeed StandardUnit_Percent

                    "Count" ->
                        JD.succeed StandardUnit_Count

                    "Bytes_Second" ->
                        JD.succeed StandardUnit_Bytes_Second

                    "Kilobytes_Second" ->
                        JD.succeed StandardUnit_Kilobytes_Second

                    "Megabytes_Second" ->
                        JD.succeed StandardUnit_Megabytes_Second

                    "Gigabytes_Second" ->
                        JD.succeed StandardUnit_Gigabytes_Second

                    "Terabytes_Second" ->
                        JD.succeed StandardUnit_Terabytes_Second

                    "Bits_Second" ->
                        JD.succeed StandardUnit_Bits_Second

                    "Kilobits_Second" ->
                        JD.succeed StandardUnit_Kilobits_Second

                    "Megabits_Second" ->
                        JD.succeed StandardUnit_Megabits_Second

                    "Gigabits_Second" ->
                        JD.succeed StandardUnit_Gigabits_Second

                    "Terabits_Second" ->
                        JD.succeed StandardUnit_Terabits_Second

                    "Count_Second" ->
                        JD.succeed StandardUnit_Count_Second

                    "None" ->
                        JD.succeed StandardUnit_None

                    _ ->
                        JD.fail "bad thing"
            )


standardUnitToString : StandardUnit -> String
standardUnitToString val =
    case val of
        StandardUnit_Seconds ->
            "Seconds"

        StandardUnit_Microseconds ->
            "Microseconds"

        StandardUnit_Milliseconds ->
            "Milliseconds"

        StandardUnit_Bytes ->
            "Bytes"

        StandardUnit_Kilobytes ->
            "Kilobytes"

        StandardUnit_Megabytes ->
            "Megabytes"

        StandardUnit_Gigabytes ->
            "Gigabytes"

        StandardUnit_Terabytes ->
            "Terabytes"

        StandardUnit_Bits ->
            "Bits"

        StandardUnit_Kilobits ->
            "Kilobits"

        StandardUnit_Megabits ->
            "Megabits"

        StandardUnit_Gigabits ->
            "Gigabits"

        StandardUnit_Terabits ->
            "Terabits"

        StandardUnit_Percent ->
            "Percent"

        StandardUnit_Count ->
            "Count"

        StandardUnit_Bytes_Second ->
            "Bytes_Second"

        StandardUnit_Kilobytes_Second ->
            "Kilobytes_Second"

        StandardUnit_Megabytes_Second ->
            "Megabytes_Second"

        StandardUnit_Gigabytes_Second ->
            "Gigabytes_Second"

        StandardUnit_Terabytes_Second ->
            "Terabytes_Second"

        StandardUnit_Bits_Second ->
            "Bits_Second"

        StandardUnit_Kilobits_Second ->
            "Kilobits_Second"

        StandardUnit_Megabits_Second ->
            "Megabits_Second"

        StandardUnit_Gigabits_Second ->
            "Gigabits_Second"

        StandardUnit_Terabits_Second ->
            "Terabits_Second"

        StandardUnit_Count_Second ->
            "Count_Second"

        StandardUnit_None ->
            "None"


{-| One of

  - `StateValue_OK`
  - `StateValue_ALARM`
  - `StateValue_INSUFFICIENT_DATA`

-}
type StateValue
    = StateValue_OK
    | StateValue_ALARM
    | StateValue_INSUFFICIENT_DATA


stateValueDecoder : JD.Decoder StateValue
stateValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OK" ->
                        JD.succeed StateValue_OK

                    "ALARM" ->
                        JD.succeed StateValue_ALARM

                    "INSUFFICIENT_DATA" ->
                        JD.succeed StateValue_INSUFFICIENT_DATA

                    _ ->
                        JD.fail "bad thing"
            )


stateValueToString : StateValue -> String
stateValueToString val =
    case val of
        StateValue_OK ->
            "OK"

        StateValue_ALARM ->
            "ALARM"

        StateValue_INSUFFICIENT_DATA ->
            "INSUFFICIENT_DATA"


{-| One of

  - `Statistic_SampleCount`
  - `Statistic_Average`
  - `Statistic_Sum`
  - `Statistic_Minimum`
  - `Statistic_Maximum`

-}
type Statistic
    = Statistic_SampleCount
    | Statistic_Average
    | Statistic_Sum
    | Statistic_Minimum
    | Statistic_Maximum


statisticDecoder : JD.Decoder Statistic
statisticDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SampleCount" ->
                        JD.succeed Statistic_SampleCount

                    "Average" ->
                        JD.succeed Statistic_Average

                    "Sum" ->
                        JD.succeed Statistic_Sum

                    "Minimum" ->
                        JD.succeed Statistic_Minimum

                    "Maximum" ->
                        JD.succeed Statistic_Maximum

                    _ ->
                        JD.fail "bad thing"
            )


statisticToString : Statistic -> String
statisticToString val =
    case val of
        Statistic_SampleCount ->
            "SampleCount"

        Statistic_Average ->
            "Average"

        Statistic_Sum ->
            "Sum"

        Statistic_Minimum ->
            "Minimum"

        Statistic_Maximum ->
            "Maximum"


{-|

<p>Represents a set of statistics that describes a specific metric. </p>

-}
type alias StatisticSet =
    { sampleCount : Float
    , sum : Float
    , minimum : Float
    , maximum : Float
    }


statisticSetDecoder : JD.Decoder StatisticSet
statisticSetDecoder =
    JD.succeed StatisticSet
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SampleCount", "sampleCount" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Sum", "sum" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Minimum", "minimum" ]
                JD.float
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Maximum", "maximum" ]
                JD.float
            )


{-| One of

  - `StatusCode_Complete`
  - `StatusCode_InternalError`
  - `StatusCode_PartialData`

-}
type StatusCode
    = StatusCode_Complete
    | StatusCode_InternalError
    | StatusCode_PartialData


statusCodeDecoder : JD.Decoder StatusCode
statusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Complete" ->
                        JD.succeed StatusCode_Complete

                    "InternalError" ->
                        JD.succeed StatusCode_InternalError

                    "PartialData" ->
                        JD.succeed StatusCode_PartialData

                    _ ->
                        JD.fail "bad thing"
            )


statusCodeToString : StatusCode -> String
statusCodeToString val =
    case val of
        StatusCode_Complete ->
            "Complete"

        StatusCode_InternalError ->
            "InternalError"

        StatusCode_PartialData ->
            "PartialData"


{-|

<p>A key-value pair associated with a CloudWatch resource.</p>

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


{-| Type of HTTP response from tagResour
-}
type alias TagResourceOutput =
    {}


tagResourceOutputDecoder : JD.Decoder TagResourceOutput
tagResourceOutputDecoder =
    JD.succeed TagResourceOutput


{-| Type of HTTP response from untagResour
-}
type alias UntagResourceOutput =
    {}


untagResourceOutputDecoder : JD.Decoder UntagResourceOutput
untagResourceOutputDecoder =
    JD.succeed UntagResourceOutput


{-| undefined
-}
type alias DeleteAlarmsInput =
    { alarmNames : List String
    }


{-| undefined
-}
type alias DeleteAnomalyDetectorInput =
    { namespace : String
    , metricName : String
    , dimensions : Maybe (List Dimension)
    , stat : String
    }


{-| undefined
-}
type alias DeleteDashboardsInput =
    { dashboardNames : List String
    }


{-| undefined
-}
type alias DescribeAlarmHistoryInput =
    { alarmName : Maybe String
    , historyItemType : Maybe HistoryItemType
    , startDate : Maybe Posix
    , endDate : Maybe Posix
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeAlarmsForMetricInput =
    { metricName : String
    , namespace : String
    , statistic : Maybe Statistic
    , extendedStatistic : Maybe String
    , dimensions : Maybe (List Dimension)
    , period : Maybe Int
    , unit : Maybe StandardUnit
    }


{-| undefined
-}
type alias DescribeAlarmsInput =
    { alarmNames : Maybe (List String)
    , alarmNamePrefix : Maybe String
    , stateValue : Maybe StateValue
    , actionPrefix : Maybe String
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeAnomalyDetectorsInput =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , namespace : Maybe String
    , metricName : Maybe String
    , dimensions : Maybe (List Dimension)
    }


{-| undefined
-}
type alias DisableAlarmActionsInput =
    { alarmNames : List String
    }


{-| undefined
-}
type alias EnableAlarmActionsInput =
    { alarmNames : List String
    }


{-| undefined
-}
type alias GetDashboardInput =
    { dashboardName : String
    }


{-| undefined
-}
type alias GetMetricDataInput =
    { metricDataQueries : List MetricDataQuery
    , startTime : Posix
    , endTime : Posix
    , nextToken : Maybe String
    , scanBy : Maybe ScanBy
    , maxDatapoints : Maybe Int
    }


{-| undefined
-}
type alias GetMetricStatisticsInput =
    { namespace : String
    , metricName : String
    , dimensions : Maybe (List Dimension)
    , startTime : Posix
    , endTime : Posix
    , period : Int
    , statistics : Maybe (List Statistic)
    , extendedStatistics : Maybe (List String)
    , unit : Maybe StandardUnit
    }


{-| undefined
-}
type alias GetMetricWidgetImageInput =
    { metricWidget : String
    , outputFormat : Maybe String
    }


{-| undefined
-}
type alias ListDashboardsInput =
    { dashboardNamePrefix : Maybe String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListMetricsInput =
    { namespace : Maybe String
    , metricName : Maybe String
    , dimensions : Maybe (List DimensionFilter)
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceInput =
    { resourceARN : String
    }


{-| undefined
-}
type alias PutAnomalyDetectorInput =
    { namespace : String
    , metricName : String
    , dimensions : Maybe (List Dimension)
    , stat : String
    , configuration : Maybe AnomalyDetectorConfiguration
    }


{-| undefined
-}
type alias PutDashboardInput =
    { dashboardName : String
    , dashboardBody : String
    }


{-| undefined
-}
type alias PutMetricAlarmInput =
    { alarmName : String
    , alarmDescription : Maybe String
    , actionsEnabled : Maybe Bool
    , oKActions : Maybe (List String)
    , alarmActions : Maybe (List String)
    , insufficientDataActions : Maybe (List String)
    , metricName : Maybe String
    , namespace : Maybe String
    , statistic : Maybe Statistic
    , extendedStatistic : Maybe String
    , dimensions : Maybe (List Dimension)
    , period : Maybe Int
    , unit : Maybe StandardUnit
    , evaluationPeriods : Int
    , datapointsToAlarm : Maybe Int
    , threshold : Maybe Float
    , comparisonOperator : ComparisonOperator
    , treatMissingData : Maybe String
    , evaluateLowSampleCountPercentile : Maybe String
    , metrics : Maybe (List MetricDataQuery)
    , tags : Maybe (List Tag)
    , thresholdMetricId : Maybe String
    }


{-| undefined
-}
type alias PutMetricDataInput =
    { namespace : String
    , metricData : List MetricDatum
    }


{-| undefined
-}
type alias SetAlarmStateInput =
    { alarmName : String
    , stateValue : StateValue
    , stateReason : String
    , stateReasonData : Maybe String
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


alarmHistoryItemEncoder : AlarmHistoryItem -> List ( String, String )
alarmHistoryItemEncoder data =
    []
        |> (case data.alarmName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AlarmName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.timestamp of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Timestamp" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.historyItemType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs historyItemTypeToString "HistoryItemType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.historySummary of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HistorySummary" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.historyData of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "HistoryData" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


anomalyDetectorEncoder : AnomalyDetector -> List ( String, String )
anomalyDetectorEncoder data =
    []
        |> (case data.namespace of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Namespace" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metricName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MetricName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dimensions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dimensionEncoder "") "Dimensions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.stat of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Stat" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.configuration of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs anomalyDetectorConfigurationEncoder "Configuration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


anomalyDetectorConfigurationEncoder : AnomalyDetectorConfiguration -> List ( String, String )
anomalyDetectorConfigurationEncoder data =
    []
        |> (case data.excludedTimeRanges of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs rangeEncoder "") "ExcludedTimeRanges" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metricTimezone of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MetricTimezone" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


dashboardEntryEncoder : DashboardEntry -> List ( String, String )
dashboardEntryEncoder data =
    []
        |> (case data.dashboardName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DashboardName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dashboardArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DashboardArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.lastModified of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastModified" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.size of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Size" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


dashboardValidationMessageEncoder : DashboardValidationMessage -> List ( String, String )
dashboardValidationMessageEncoder data =
    []
        |> (case data.dataPath of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DataPath" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.message of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Message" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


datapointEncoder : Datapoint -> List ( String, String )
datapointEncoder data =
    []
        |> (case data.timestamp of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Timestamp" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sampleCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "SampleCount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.average of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Average" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sum of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Sum" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.minimum of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Minimum" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maximum of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Maximum" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.unit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs standardUnitToString "Unit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.extendedStatistics of
                Just value ->
                    AWS.Core.Encode.addDictToQueryArgs floatToString "ExtendedStatistics" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


deleteAlarmsInputEncoder : DeleteAlarmsInput -> List ( String, String )
deleteAlarmsInputEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AlarmNames" data.alarmNames


deleteAnomalyDetectorInputEncoder : DeleteAnomalyDetectorInput -> List ( String, String )
deleteAnomalyDetectorInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Namespace" data.namespace
        |> AWS.Core.Encode.addOneToQueryArgs identity "MetricName" data.metricName
        |> (case data.dimensions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dimensionEncoder "") "Dimensions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "Stat" data.stat


deleteAnomalyDetectorOutputEncoder : DeleteAnomalyDetectorOutput -> List ( String, String )
deleteAnomalyDetectorOutputEncoder data =
    []


deleteDashboardsInputEncoder : DeleteDashboardsInput -> List ( String, String )
deleteDashboardsInputEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "DashboardNames" data.dashboardNames


deleteDashboardsOutputEncoder : DeleteDashboardsOutput -> List ( String, String )
deleteDashboardsOutputEncoder data =
    []


describeAlarmHistoryInputEncoder : DescribeAlarmHistoryInput -> List ( String, String )
describeAlarmHistoryInputEncoder data =
    []
        |> (case data.alarmName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AlarmName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.historyItemType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs historyItemTypeToString "HistoryItemType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.startDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "StartDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.endDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EndDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeAlarmHistoryOutputEncoder : DescribeAlarmHistoryOutput -> List ( String, String )
describeAlarmHistoryOutputEncoder data =
    []
        |> (case data.alarmHistoryItems of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs alarmHistoryItemEncoder "") "AlarmHistoryItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeAlarmsForMetricInputEncoder : DescribeAlarmsForMetricInput -> List ( String, String )
describeAlarmsForMetricInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "MetricName" data.metricName
        |> AWS.Core.Encode.addOneToQueryArgs identity "Namespace" data.namespace
        |> (case data.statistic of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs statisticToString "Statistic" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.extendedStatistic of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ExtendedStatistic" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dimensions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dimensionEncoder "") "Dimensions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.period of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Period" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.unit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs standardUnitToString "Unit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeAlarmsForMetricOutputEncoder : DescribeAlarmsForMetricOutput -> List ( String, String )
describeAlarmsForMetricOutputEncoder data =
    []
        |> (case data.metricAlarms of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs metricAlarmEncoder "") "MetricAlarms" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeAlarmsInputEncoder : DescribeAlarmsInput -> List ( String, String )
describeAlarmsInputEncoder data =
    []
        |> (case data.alarmNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AlarmNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.alarmNamePrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AlarmNamePrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.stateValue of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs stateValueToString "StateValue" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.actionPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ActionPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxRecords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxRecords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeAlarmsOutputEncoder : DescribeAlarmsOutput -> List ( String, String )
describeAlarmsOutputEncoder data =
    []
        |> (case data.metricAlarms of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs metricAlarmEncoder "") "MetricAlarms" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeAnomalyDetectorsInputEncoder : DescribeAnomalyDetectorsInput -> List ( String, String )
describeAnomalyDetectorsInputEncoder data =
    []
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxResults of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxResults" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.namespace of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Namespace" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metricName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MetricName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dimensions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dimensionEncoder "") "Dimensions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


describeAnomalyDetectorsOutputEncoder : DescribeAnomalyDetectorsOutput -> List ( String, String )
describeAnomalyDetectorsOutputEncoder data =
    []
        |> (case data.anomalyDetectors of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs anomalyDetectorEncoder "") "AnomalyDetectors" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


dimensionEncoder : Dimension -> List ( String, String )
dimensionEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        |> AWS.Core.Encode.addOneToQueryArgs identity "Value" data.value


dimensionFilterEncoder : DimensionFilter -> List ( String, String )
dimensionFilterEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Name" data.name
        |> (case data.value of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Value" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


disableAlarmActionsInputEncoder : DisableAlarmActionsInput -> List ( String, String )
disableAlarmActionsInputEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AlarmNames" data.alarmNames


enableAlarmActionsInputEncoder : EnableAlarmActionsInput -> List ( String, String )
enableAlarmActionsInputEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AlarmNames" data.alarmNames


getDashboardInputEncoder : GetDashboardInput -> List ( String, String )
getDashboardInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "DashboardName" data.dashboardName


getDashboardOutputEncoder : GetDashboardOutput -> List ( String, String )
getDashboardOutputEncoder data =
    []
        |> (case data.dashboardArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DashboardArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dashboardBody of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DashboardBody" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dashboardName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DashboardName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getMetricDataInputEncoder : GetMetricDataInput -> List ( String, String )
getMetricDataInputEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs metricDataQueryEncoder "") "MetricDataQueries" data.metricDataQueries
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "StartTime" data.startTime
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EndTime" data.endTime
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.scanBy of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs scanByToString "ScanBy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxDatapoints of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxDatapoints" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getMetricDataOutputEncoder : GetMetricDataOutput -> List ( String, String )
getMetricDataOutputEncoder data =
    []
        |> (case data.metricDataResults of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs metricDataResultEncoder "") "MetricDataResults" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.messages of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs messageDataEncoder "") "Messages" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getMetricStatisticsInputEncoder : GetMetricStatisticsInput -> List ( String, String )
getMetricStatisticsInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Namespace" data.namespace
        |> AWS.Core.Encode.addOneToQueryArgs identity "MetricName" data.metricName
        |> (case data.dimensions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dimensionEncoder "") "Dimensions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "StartTime" data.startTime
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EndTime" data.endTime
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "Period" data.period
        |> (case data.statistics of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs statisticToString "") "Statistics" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.extendedStatistics of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ExtendedStatistics" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.unit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs standardUnitToString "Unit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getMetricStatisticsOutputEncoder : GetMetricStatisticsOutput -> List ( String, String )
getMetricStatisticsOutputEncoder data =
    []
        |> (case data.label of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Label" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.datapoints of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs datapointEncoder "") "Datapoints" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getMetricWidgetImageInputEncoder : GetMetricWidgetImageInput -> List ( String, String )
getMetricWidgetImageInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "MetricWidget" data.metricWidget
        |> (case data.outputFormat of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "OutputFormat" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getMetricWidgetImageOutputEncoder : GetMetricWidgetImageOutput -> List ( String, String )
getMetricWidgetImageOutputEncoder data =
    []
        |> (case data.metricWidgetImage of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MetricWidgetImage" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listDashboardsInputEncoder : ListDashboardsInput -> List ( String, String )
listDashboardsInputEncoder data =
    []
        |> (case data.dashboardNamePrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "DashboardNamePrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listDashboardsOutputEncoder : ListDashboardsOutput -> List ( String, String )
listDashboardsOutputEncoder data =
    []
        |> (case data.dashboardEntries of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dashboardEntryEncoder "") "DashboardEntries" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listMetricsInputEncoder : ListMetricsInput -> List ( String, String )
listMetricsInputEncoder data =
    []
        |> (case data.namespace of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Namespace" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metricName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MetricName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dimensions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dimensionFilterEncoder "") "Dimensions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listMetricsOutputEncoder : ListMetricsOutput -> List ( String, String )
listMetricsOutputEncoder data =
    []
        |> (case data.metrics of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs metricEncoder "") "Metrics" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.nextToken of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "NextToken" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listTagsForResourceInputEncoder : ListTagsForResourceInput -> List ( String, String )
listTagsForResourceInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceARN" data.resourceARN


listTagsForResourceOutputEncoder : ListTagsForResourceOutput -> List ( String, String )
listTagsForResourceOutputEncoder data =
    []
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


messageDataEncoder : MessageData -> List ( String, String )
messageDataEncoder data =
    []
        |> (case data.code of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Code" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.value of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Value" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


metricEncoder : Metric -> List ( String, String )
metricEncoder data =
    []
        |> (case data.namespace of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Namespace" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metricName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MetricName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dimensions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dimensionEncoder "") "Dimensions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


metricAlarmEncoder : MetricAlarm -> List ( String, String )
metricAlarmEncoder data =
    []
        |> (case data.alarmName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AlarmName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.alarmArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AlarmArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.alarmDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AlarmDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.alarmConfigurationUpdatedTimestamp of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "AlarmConfigurationUpdatedTimestamp" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.actionsEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ActionsEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.oKActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "OKActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.alarmActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AlarmActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.insufficientDataActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "InsufficientDataActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.stateValue of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs stateValueToString "StateValue" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.stateReason of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "StateReason" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.stateReasonData of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "StateReasonData" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.stateUpdatedTimestamp of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "StateUpdatedTimestamp" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metricName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MetricName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.namespace of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Namespace" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.statistic of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs statisticToString "Statistic" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.extendedStatistic of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ExtendedStatistic" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dimensions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dimensionEncoder "") "Dimensions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.period of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Period" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.unit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs standardUnitToString "Unit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.evaluationPeriods of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "EvaluationPeriods" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.datapointsToAlarm of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DatapointsToAlarm" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.threshold of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Threshold" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.comparisonOperator of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs comparisonOperatorToString "ComparisonOperator" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.treatMissingData of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TreatMissingData" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.evaluateLowSampleCountPercentile of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EvaluateLowSampleCountPercentile" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metrics of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs metricDataQueryEncoder "") "Metrics" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.thresholdMetricId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ThresholdMetricId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


metricDataQueryEncoder : MetricDataQuery -> List ( String, String )
metricDataQueryEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Id" data.id
        |> (case data.metricStat of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs metricStatEncoder "MetricStat" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.expression of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Expression" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.label of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Label" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.returnData of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnData" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


metricDataResultEncoder : MetricDataResult -> List ( String, String )
metricDataResultEncoder data =
    []
        |> (case data.id of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Id" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.label of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Label" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.timestamps of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "") "Timestamps" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.values of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs String.fromFloat "") "Values" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.statusCode of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs statusCodeToString "StatusCode" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.messages of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs messageDataEncoder "") "Messages" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


metricDatumEncoder : MetricDatum -> List ( String, String )
metricDatumEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "MetricName" data.metricName
        |> (case data.dimensions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dimensionEncoder "") "Dimensions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.timestamp of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Timestamp" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.value of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Value" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.statisticValues of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs statisticSetEncoder "StatisticValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.values of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs String.fromFloat "") "Values" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.counts of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs String.fromFloat "") "Counts" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.unit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs standardUnitToString "Unit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.storageResolution of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "StorageResolution" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


metricStatEncoder : MetricStat -> List ( String, String )
metricStatEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs metricEncoder "Metric" data.metric
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "Period" data.period
        |> AWS.Core.Encode.addOneToQueryArgs identity "Stat" data.stat
        |> (case data.unit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs standardUnitToString "Unit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


putAnomalyDetectorInputEncoder : PutAnomalyDetectorInput -> List ( String, String )
putAnomalyDetectorInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Namespace" data.namespace
        |> AWS.Core.Encode.addOneToQueryArgs identity "MetricName" data.metricName
        |> (case data.dimensions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dimensionEncoder "") "Dimensions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs identity "Stat" data.stat
        |> (case data.configuration of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs anomalyDetectorConfigurationEncoder "Configuration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


putAnomalyDetectorOutputEncoder : PutAnomalyDetectorOutput -> List ( String, String )
putAnomalyDetectorOutputEncoder data =
    []


putDashboardInputEncoder : PutDashboardInput -> List ( String, String )
putDashboardInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "DashboardName" data.dashboardName
        |> AWS.Core.Encode.addOneToQueryArgs identity "DashboardBody" data.dashboardBody


putDashboardOutputEncoder : PutDashboardOutput -> List ( String, String )
putDashboardOutputEncoder data =
    []
        |> (case data.dashboardValidationMessages of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dashboardValidationMessageEncoder "") "DashboardValidationMessages" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


putMetricAlarmInputEncoder : PutMetricAlarmInput -> List ( String, String )
putMetricAlarmInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AlarmName" data.alarmName
        |> (case data.alarmDescription of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "AlarmDescription" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.actionsEnabled of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ActionsEnabled" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.oKActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "OKActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.alarmActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AlarmActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.insufficientDataActions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "InsufficientDataActions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metricName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "MetricName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.namespace of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "Namespace" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.statistic of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs statisticToString "Statistic" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.extendedStatistic of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ExtendedStatistic" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.dimensions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs dimensionEncoder "") "Dimensions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.period of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "Period" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.unit of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs standardUnitToString "Unit" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "EvaluationPeriods" data.evaluationPeriods
        |> (case data.datapointsToAlarm of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromInt "DatapointsToAlarm" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.threshold of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Threshold" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs comparisonOperatorToString "ComparisonOperator" data.comparisonOperator
        |> (case data.treatMissingData of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "TreatMissingData" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.evaluateLowSampleCountPercentile of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "EvaluateLowSampleCountPercentile" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.metrics of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs metricDataQueryEncoder "") "Metrics" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.thresholdMetricId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "ThresholdMetricId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


putMetricDataInputEncoder : PutMetricDataInput -> List ( String, String )
putMetricDataInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Namespace" data.namespace
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs metricDatumEncoder "") "MetricData" data.metricData


rangeEncoder : Range -> List ( String, String )
rangeEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "StartTime" data.startTime
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EndTime" data.endTime


setAlarmStateInputEncoder : SetAlarmStateInput -> List ( String, String )
setAlarmStateInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "AlarmName" data.alarmName
        |> AWS.Core.Encode.addOneToQueryArgs stateValueToString "StateValue" data.stateValue
        |> AWS.Core.Encode.addOneToQueryArgs identity "StateReason" data.stateReason
        |> (case data.stateReasonData of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs identity "StateReasonData" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


statisticSetEncoder : StatisticSet -> List ( String, String )
statisticSetEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs String.fromFloat "SampleCount" data.sampleCount
        |> AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Sum" data.sum
        |> AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Minimum" data.minimum
        |> AWS.Core.Encode.addOneToQueryArgs String.fromFloat "Maximum" data.maximum


tagEncoder : Tag -> List ( String, String )
tagEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "Key" data.key
        |> AWS.Core.Encode.addOneToQueryArgs identity "Value" data.value


tagResourceInputEncoder : TagResourceInput -> List ( String, String )
tagResourceInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceARN" data.resourceARN
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags


tagResourceOutputEncoder : TagResourceOutput -> List ( String, String )
tagResourceOutputEncoder data =
    []


untagResourceInputEncoder : UntagResourceInput -> List ( String, String )
untagResourceInputEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs identity "ResourceARN" data.resourceARN
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" data.tagKeys


untagResourceOutputEncoder : UntagResourceOutput -> List ( String, String )
untagResourceOutputEncoder data =
    []
