module AWS.CloudSearch
    exposing
        ( service
        , buildSuggesters
        , createDomain
        , defineAnalysisScheme
        , defineExpression
        , defineIndexField
        , defineSuggester
        , deleteAnalysisScheme
        , deleteDomain
        , deleteExpression
        , deleteIndexField
        , deleteSuggester
        , describeAnalysisSchemes
        , DescribeAnalysisSchemesOptions
        , describeAvailabilityOptions
        , DescribeAvailabilityOptionsOptions
        , describeDomains
        , DescribeDomainsOptions
        , describeExpressions
        , DescribeExpressionsOptions
        , describeIndexFields
        , DescribeIndexFieldsOptions
        , describeScalingParameters
        , describeServiceAccessPolicies
        , DescribeServiceAccessPoliciesOptions
        , describeSuggesters
        , DescribeSuggestersOptions
        , indexDocuments
        , listDomainNames
        , updateAvailabilityOptions
        , updateScalingParameters
        , updateServiceAccessPolicies
        , AccessPoliciesStatus
        , AlgorithmicStemming(..)
        , AnalysisOptions
        , AnalysisScheme
        , AnalysisSchemeLanguage(..)
        , AnalysisSchemeStatus
        , AvailabilityOptionsStatus
        , BaseException
        , BuildSuggestersResponse
        , CreateDomainResponse
        , DateArrayOptions
        , DateOptions
        , DefineAnalysisSchemeResponse
        , DefineExpressionResponse
        , DefineIndexFieldResponse
        , DefineSuggesterResponse
        , DeleteAnalysisSchemeResponse
        , DeleteDomainResponse
        , DeleteExpressionResponse
        , DeleteIndexFieldResponse
        , DeleteSuggesterResponse
        , DescribeAnalysisSchemesResponse
        , DescribeAvailabilityOptionsResponse
        , DescribeDomainsResponse
        , DescribeExpressionsResponse
        , DescribeIndexFieldsResponse
        , DescribeScalingParametersResponse
        , DescribeServiceAccessPoliciesResponse
        , DescribeSuggestersResponse
        , DisabledOperationException
        , DocumentSuggesterOptions
        , DomainStatus
        , DoubleArrayOptions
        , DoubleOptions
        , Expression
        , ExpressionStatus
        , IndexDocumentsResponse
        , IndexField
        , IndexFieldStatus
        , IndexFieldType(..)
        , IntArrayOptions
        , IntOptions
        , InternalException
        , InvalidTypeException
        , LatLonOptions
        , LimitExceededException
        , Limits
        , ListDomainNamesResponse
        , LiteralArrayOptions
        , LiteralOptions
        , OptionState(..)
        , OptionStatus
        , PartitionInstanceType(..)
        , ResourceNotFoundException
        , ScalingParameters
        , ScalingParametersStatus
        , ServiceEndpoint
        , Suggester
        , SuggesterFuzzyMatching(..)
        , SuggesterStatus
        , TextArrayOptions
        , TextOptions
        , UpdateAvailabilityOptionsResponse
        , UpdateScalingParametersResponse
        , UpdateServiceAccessPoliciesResponse
        )

{-| <fullname>Amazon CloudSearch Configuration Service</fullname> <p>You use the Amazon CloudSearch configuration service to create, configure, and manage search domains. Configuration service requests are submitted using the AWS Query protocol. AWS Query requests are HTTP or HTTPS requests submitted via HTTP GET or POST with a query parameter named Action.</p> <p>The endpoint for configuration service requests is region-specific: cloudsearch.<i>region</i>.amazonaws.com. For example, cloudsearch.us-east-1.amazonaws.com. For a current list of supported regions and endpoints, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region" target="_blank">Regions and Endpoints</a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [buildSuggesters](#buildSuggesters)
* [createDomain](#createDomain)
* [defineAnalysisScheme](#defineAnalysisScheme)
* [defineExpression](#defineExpression)
* [defineIndexField](#defineIndexField)
* [defineSuggester](#defineSuggester)
* [deleteAnalysisScheme](#deleteAnalysisScheme)
* [deleteDomain](#deleteDomain)
* [deleteExpression](#deleteExpression)
* [deleteIndexField](#deleteIndexField)
* [deleteSuggester](#deleteSuggester)
* [describeAnalysisSchemes](#describeAnalysisSchemes)
* [DescribeAnalysisSchemesOptions](#DescribeAnalysisSchemesOptions)
* [describeAvailabilityOptions](#describeAvailabilityOptions)
* [DescribeAvailabilityOptionsOptions](#DescribeAvailabilityOptionsOptions)
* [describeDomains](#describeDomains)
* [DescribeDomainsOptions](#DescribeDomainsOptions)
* [describeExpressions](#describeExpressions)
* [DescribeExpressionsOptions](#DescribeExpressionsOptions)
* [describeIndexFields](#describeIndexFields)
* [DescribeIndexFieldsOptions](#DescribeIndexFieldsOptions)
* [describeScalingParameters](#describeScalingParameters)
* [describeServiceAccessPolicies](#describeServiceAccessPolicies)
* [DescribeServiceAccessPoliciesOptions](#DescribeServiceAccessPoliciesOptions)
* [describeSuggesters](#describeSuggesters)
* [DescribeSuggestersOptions](#DescribeSuggestersOptions)
* [indexDocuments](#indexDocuments)
* [listDomainNames](#listDomainNames)
* [updateAvailabilityOptions](#updateAvailabilityOptions)
* [updateScalingParameters](#updateScalingParameters)
* [updateServiceAccessPolicies](#updateServiceAccessPolicies)


@docs buildSuggesters,createDomain,defineAnalysisScheme,defineExpression,defineIndexField,defineSuggester,deleteAnalysisScheme,deleteDomain,deleteExpression,deleteIndexField,deleteSuggester,describeAnalysisSchemes,DescribeAnalysisSchemesOptions,describeAvailabilityOptions,DescribeAvailabilityOptionsOptions,describeDomains,DescribeDomainsOptions,describeExpressions,DescribeExpressionsOptions,describeIndexFields,DescribeIndexFieldsOptions,describeScalingParameters,describeServiceAccessPolicies,DescribeServiceAccessPoliciesOptions,describeSuggesters,DescribeSuggestersOptions,indexDocuments,listDomainNames,updateAvailabilityOptions,updateScalingParameters,updateServiceAccessPolicies

## Responses

* [BuildSuggestersResponse](#BuildSuggestersResponse)
* [CreateDomainResponse](#CreateDomainResponse)
* [DefineAnalysisSchemeResponse](#DefineAnalysisSchemeResponse)
* [DefineExpressionResponse](#DefineExpressionResponse)
* [DefineIndexFieldResponse](#DefineIndexFieldResponse)
* [DefineSuggesterResponse](#DefineSuggesterResponse)
* [DeleteAnalysisSchemeResponse](#DeleteAnalysisSchemeResponse)
* [DeleteDomainResponse](#DeleteDomainResponse)
* [DeleteExpressionResponse](#DeleteExpressionResponse)
* [DeleteIndexFieldResponse](#DeleteIndexFieldResponse)
* [DeleteSuggesterResponse](#DeleteSuggesterResponse)
* [DescribeAnalysisSchemesResponse](#DescribeAnalysisSchemesResponse)
* [DescribeAvailabilityOptionsResponse](#DescribeAvailabilityOptionsResponse)
* [DescribeDomainsResponse](#DescribeDomainsResponse)
* [DescribeExpressionsResponse](#DescribeExpressionsResponse)
* [DescribeIndexFieldsResponse](#DescribeIndexFieldsResponse)
* [DescribeScalingParametersResponse](#DescribeScalingParametersResponse)
* [DescribeServiceAccessPoliciesResponse](#DescribeServiceAccessPoliciesResponse)
* [DescribeSuggestersResponse](#DescribeSuggestersResponse)
* [IndexDocumentsResponse](#IndexDocumentsResponse)
* [ListDomainNamesResponse](#ListDomainNamesResponse)
* [UpdateAvailabilityOptionsResponse](#UpdateAvailabilityOptionsResponse)
* [UpdateScalingParametersResponse](#UpdateScalingParametersResponse)
* [UpdateServiceAccessPoliciesResponse](#UpdateServiceAccessPoliciesResponse)


@docs BuildSuggestersResponse,CreateDomainResponse,DefineAnalysisSchemeResponse,DefineExpressionResponse,DefineIndexFieldResponse,DefineSuggesterResponse,DeleteAnalysisSchemeResponse,DeleteDomainResponse,DeleteExpressionResponse,DeleteIndexFieldResponse,DeleteSuggesterResponse,DescribeAnalysisSchemesResponse,DescribeAvailabilityOptionsResponse,DescribeDomainsResponse,DescribeExpressionsResponse,DescribeIndexFieldsResponse,DescribeScalingParametersResponse,DescribeServiceAccessPoliciesResponse,DescribeSuggestersResponse,IndexDocumentsResponse,ListDomainNamesResponse,UpdateAvailabilityOptionsResponse,UpdateScalingParametersResponse,UpdateServiceAccessPoliciesResponse

## Records

* [AccessPoliciesStatus](#AccessPoliciesStatus)
* [AnalysisOptions](#AnalysisOptions)
* [AnalysisScheme](#AnalysisScheme)
* [AnalysisSchemeStatus](#AnalysisSchemeStatus)
* [AvailabilityOptionsStatus](#AvailabilityOptionsStatus)
* [DateArrayOptions](#DateArrayOptions)
* [DateOptions](#DateOptions)
* [DocumentSuggesterOptions](#DocumentSuggesterOptions)
* [DomainStatus](#DomainStatus)
* [DoubleArrayOptions](#DoubleArrayOptions)
* [DoubleOptions](#DoubleOptions)
* [Expression](#Expression)
* [ExpressionStatus](#ExpressionStatus)
* [IndexField](#IndexField)
* [IndexFieldStatus](#IndexFieldStatus)
* [IntArrayOptions](#IntArrayOptions)
* [IntOptions](#IntOptions)
* [LatLonOptions](#LatLonOptions)
* [Limits](#Limits)
* [LiteralArrayOptions](#LiteralArrayOptions)
* [LiteralOptions](#LiteralOptions)
* [OptionStatus](#OptionStatus)
* [ScalingParameters](#ScalingParameters)
* [ScalingParametersStatus](#ScalingParametersStatus)
* [ServiceEndpoint](#ServiceEndpoint)
* [Suggester](#Suggester)
* [SuggesterStatus](#SuggesterStatus)
* [TextArrayOptions](#TextArrayOptions)
* [TextOptions](#TextOptions)


@docs AccessPoliciesStatus,AnalysisOptions,AnalysisScheme,AnalysisSchemeStatus,AvailabilityOptionsStatus,DateArrayOptions,DateOptions,DocumentSuggesterOptions,DomainStatus,DoubleArrayOptions,DoubleOptions,Expression,ExpressionStatus,IndexField,IndexFieldStatus,IntArrayOptions,IntOptions,LatLonOptions,Limits,LiteralArrayOptions,LiteralOptions,OptionStatus,ScalingParameters,ScalingParametersStatus,ServiceEndpoint,Suggester,SuggesterStatus,TextArrayOptions,TextOptions

## Unions

* [AlgorithmicStemming](#AlgorithmicStemming)
* [AnalysisSchemeLanguage](#AnalysisSchemeLanguage)
* [IndexFieldType](#IndexFieldType)
* [OptionState](#OptionState)
* [PartitionInstanceType](#PartitionInstanceType)
* [SuggesterFuzzyMatching](#SuggesterFuzzyMatching)


@docs AlgorithmicStemming,AnalysisSchemeLanguage,IndexFieldType,OptionState,PartitionInstanceType,SuggesterFuzzyMatching

## Exceptions

* [BaseException](#BaseException)
* [DisabledOperationException](#DisabledOperationException)
* [InternalException](#InternalException)
* [InvalidTypeException](#InvalidTypeException)
* [LimitExceededException](#LimitExceededException)
* [ResourceNotFoundException](#ResourceNotFoundException)


@docs BaseException,DisabledOperationException,InternalException,InvalidTypeException,LimitExceededException,ResourceNotFoundException

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP

import Dict exposing (Dict)
import Time exposing (Posix)
import Iso8601
import Json.Decode.Extra as JDX


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "cloudsearch"
        "2013-01-01"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "http://cloudsearch.amazonaws.com/doc/2013-01-01/")



-- OPERATIONS

{-| <p>Indexes the search suggestions. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters">Configuring Suggesters</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

buildSuggesters :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BuildSuggestersResponse)

buildSuggesters domainName =
    
    let
        requestInput = BuildSuggestersRequest
            
            domainName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "BuildSuggesters")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs buildSuggestersRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BuildSuggesters"
                
                (AWS.Core.Decode.ResultDecoder "BuildSuggestersResult" buildSuggestersResponseDecoder)
                
            )





{-| <p>Creates a new search domain. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html" target="_blank">Creating a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

createDomain :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateDomainResponse)

createDomain domainName =
    
    let
        requestInput = CreateDomainRequest
            
            domainName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateDomain")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createDomainRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateDomain"
                
                (AWS.Core.Decode.ResultDecoder "CreateDomainResult" createDomainResponseDecoder)
                
            )





{-| <p>Configures an analysis scheme that can be applied to a <code>text</code> or <code>text-array</code> field to define language-specific text processing options. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html" target="_blank">Configuring Analysis Schemes</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `analysisScheme` __:__ `AnalysisScheme`


-}

defineAnalysisScheme :
  
    String ->
  
    AnalysisScheme ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DefineAnalysisSchemeResponse)

defineAnalysisScheme domainName analysisScheme =
    
    let
        requestInput = DefineAnalysisSchemeRequest
            
            domainName
            
            analysisScheme
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DefineAnalysisScheme")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs defineAnalysisSchemeRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DefineAnalysisScheme"
                
                (AWS.Core.Decode.ResultDecoder "DefineAnalysisSchemeResult" defineAnalysisSchemeResponseDecoder)
                
            )





{-| <p>Configures an <code><a>Expression</a></code> for the search domain. Used to create new expressions and modify existing ones. If the expression exists, the new configuration replaces the old one. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `expression` __:__ `Expression`


-}

defineExpression :
  
    String ->
  
    Expression ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DefineExpressionResponse)

defineExpression domainName expression =
    
    let
        requestInput = DefineExpressionRequest
            
            domainName
            
            expression
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DefineExpression")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs defineExpressionRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DefineExpression"
                
                (AWS.Core.Decode.ResultDecoder "DefineExpressionResult" defineExpressionResponseDecoder)
                
            )





{-| <p>Configures an <code><a>IndexField</a></code> for the search domain. Used to create new fields and modify existing ones. You must specify the name of the domain you are configuring and an index field configuration. The index field configuration specifies a unique name, the index field type, and the options you want to configure for the field. The options you can specify depend on the <code><a>IndexFieldType</a></code>. If the field exists, the new configuration replaces the old one. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html" target="_blank">Configuring Index Fields</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>

__Required Parameters__

* `domainName` __:__ `String`
* `indexField` __:__ `IndexField`


-}

defineIndexField :
  
    String ->
  
    IndexField ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DefineIndexFieldResponse)

defineIndexField domainName indexField =
    
    let
        requestInput = DefineIndexFieldRequest
            
            domainName
            
            indexField
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DefineIndexField")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs defineIndexFieldRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DefineIndexField"
                
                (AWS.Core.Decode.ResultDecoder "DefineIndexFieldResult" defineIndexFieldResponseDecoder)
                
            )





{-| <p>Configures a suggester for a domain. A suggester enables you to display possible matches before users finish typing their queries. When you configure a suggester, you must specify the name of the text field you want to search for possible matches and a unique name for the suggester. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html" target="_blank">Getting Search Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `suggester` __:__ `Suggester`


-}

defineSuggester :
  
    String ->
  
    Suggester ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DefineSuggesterResponse)

defineSuggester domainName suggester =
    
    let
        requestInput = DefineSuggesterRequest
            
            domainName
            
            suggester
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DefineSuggester")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs defineSuggesterRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DefineSuggester"
                
                (AWS.Core.Decode.ResultDecoder "DefineSuggesterResult" defineSuggesterResponseDecoder)
                
            )





{-| <p>Deletes an analysis scheme. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html" target="_blank">Configuring Analysis Schemes</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>

__Required Parameters__

* `domainName` __:__ `String`
* `analysisSchemeName` __:__ `String`


-}

deleteAnalysisScheme :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteAnalysisSchemeResponse)

deleteAnalysisScheme domainName analysisSchemeName =
    
    let
        requestInput = DeleteAnalysisSchemeRequest
            
            domainName
            
            analysisSchemeName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteAnalysisScheme")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteAnalysisSchemeRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteAnalysisScheme"
                
                (AWS.Core.Decode.ResultDecoder "DeleteAnalysisSchemeResult" deleteAnalysisSchemeResponseDecoder)
                
            )





{-| <p>Permanently deletes a search domain and all of its data. Once a domain has been deleted, it cannot be recovered. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html" target="_blank">Deleting a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>

__Required Parameters__

* `domainName` __:__ `String`


-}

deleteDomain :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteDomainResponse)

deleteDomain domainName =
    
    let
        requestInput = DeleteDomainRequest
            
            domainName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteDomain")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteDomainRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteDomain"
                
                (AWS.Core.Decode.ResultDecoder "DeleteDomainResult" deleteDomainResponseDecoder)
                
            )





{-| <p>Removes an <code><a>Expression</a></code> from the search domain. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `expressionName` __:__ `String`


-}

deleteExpression :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteExpressionResponse)

deleteExpression domainName expressionName =
    
    let
        requestInput = DeleteExpressionRequest
            
            domainName
            
            expressionName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteExpression")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteExpressionRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteExpression"
                
                (AWS.Core.Decode.ResultDecoder "DeleteExpressionResult" deleteExpressionResponseDecoder)
                
            )





{-| <p>Removes an <code><a>IndexField</a></code> from the search domain. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html" target="_blank">Configuring Index Fields</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `indexFieldName` __:__ `String`


-}

deleteIndexField :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteIndexFieldResponse)

deleteIndexField domainName indexFieldName =
    
    let
        requestInput = DeleteIndexFieldRequest
            
            domainName
            
            indexFieldName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteIndexField")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteIndexFieldRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteIndexField"
                
                (AWS.Core.Decode.ResultDecoder "DeleteIndexFieldResult" deleteIndexFieldResponseDecoder)
                
            )





{-| <p>Deletes a suggester. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html" target="_blank">Getting Search Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `suggesterName` __:__ `String`


-}

deleteSuggester :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteSuggesterResponse)

deleteSuggester domainName suggesterName =
    
    let
        requestInput = DeleteSuggesterRequest
            
            domainName
            
            suggesterName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteSuggester")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteSuggesterRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteSuggester"
                
                (AWS.Core.Decode.ResultDecoder "DeleteSuggesterResult" deleteSuggesterResponseDecoder)
                
            )





{-| <p>Gets the analysis schemes configured for a domain. An analysis scheme defines language-specific text processing options for a <code>text</code> field. Can be limited to specific analysis schemes by name. By default, shows all analysis schemes and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html" target="_blank">Configuring Analysis Schemes</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

describeAnalysisSchemes :
  
    String ->
  
  
    ( DescribeAnalysisSchemesOptions -> DescribeAnalysisSchemesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAnalysisSchemesResponse)

describeAnalysisSchemes domainName setOptions =
    
    let
        requestInput = DescribeAnalysisSchemesRequest
            
            domainName
            
            options.analysisSchemeNames
            
            options.deployed
            
        
        options = setOptions (DescribeAnalysisSchemesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeAnalysisSchemes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeAnalysisSchemesRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAnalysisSchemes"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAnalysisSchemesResult" describeAnalysisSchemesResponseDecoder)
                
            )



{-| Options for a describeAnalysisSchemes request
-}
type alias DescribeAnalysisSchemesOptions =
    {
    analysisSchemeNames : Maybe (List String),deployed : Maybe Bool
    }



{-| <p>Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

describeAvailabilityOptions :
  
    String ->
  
  
    ( DescribeAvailabilityOptionsOptions -> DescribeAvailabilityOptionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAvailabilityOptionsResponse)

describeAvailabilityOptions domainName setOptions =
    
    let
        requestInput = DescribeAvailabilityOptionsRequest
            
            domainName
            
            options.deployed
            
        
        options = setOptions (DescribeAvailabilityOptionsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeAvailabilityOptions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeAvailabilityOptionsRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAvailabilityOptions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAvailabilityOptionsResult" describeAvailabilityOptionsResponseDecoder)
                
            )



{-| Options for a describeAvailabilityOptions request
-}
type alias DescribeAvailabilityOptionsOptions =
    {
    deployed : Maybe Bool
    }



{-| <p>Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default. To get the number of searchable documents in a domain, use the console or submit a <code>matchall</code> request to your domain's search endpoint: <code>q=matchall&amp;amp;q.parser=structured&amp;amp;size=0</code>. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html" target="_blank">Getting Information about a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__



-}

describeDomains :
  
  
    ( DescribeDomainsOptions -> DescribeDomainsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeDomainsResponse)

describeDomains setOptions =
    
    let
        requestInput = DescribeDomainsRequest
            
            options.domainNames
            
        
        options = setOptions (DescribeDomainsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeDomains")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeDomainsRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeDomains"
                
                (AWS.Core.Decode.ResultDecoder "DescribeDomainsResult" describeDomainsResponseDecoder)
                
            )



{-| Options for a describeDomains request
-}
type alias DescribeDomainsOptions =
    {
    domainNames : Maybe (List String)
    }



{-| <p>Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

describeExpressions :
  
    String ->
  
  
    ( DescribeExpressionsOptions -> DescribeExpressionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeExpressionsResponse)

describeExpressions domainName setOptions =
    
    let
        requestInput = DescribeExpressionsRequest
            
            domainName
            
            options.expressionNames
            
            options.deployed
            
        
        options = setOptions (DescribeExpressionsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeExpressions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeExpressionsRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeExpressions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeExpressionsResult" describeExpressionsResponseDecoder)
                
            )



{-| Options for a describeExpressions request
-}
type alias DescribeExpressionsOptions =
    {
    expressionNames : Maybe (List String),deployed : Maybe Bool
    }



{-| <p>Gets information about the index fields configured for the search domain. Can be limited to specific fields by name. By default, shows all fields and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html" target="_blank">Getting Domain Information</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

describeIndexFields :
  
    String ->
  
  
    ( DescribeIndexFieldsOptions -> DescribeIndexFieldsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeIndexFieldsResponse)

describeIndexFields domainName setOptions =
    
    let
        requestInput = DescribeIndexFieldsRequest
            
            domainName
            
            options.fieldNames
            
            options.deployed
            
        
        options = setOptions (DescribeIndexFieldsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeIndexFields")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeIndexFieldsRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeIndexFields"
                
                (AWS.Core.Decode.ResultDecoder "DescribeIndexFieldsResult" describeIndexFieldsResponseDecoder)
                
            )



{-| Options for a describeIndexFields request
-}
type alias DescribeIndexFieldsOptions =
    {
    fieldNames : Maybe (List String),deployed : Maybe Bool
    }



{-| <p>Gets the scaling parameters configured for a domain. A domain's scaling parameters specify the desired search instance type and replication count. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html" target="_blank">Configuring Scaling Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

describeScalingParameters :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeScalingParametersResponse)

describeScalingParameters domainName =
    
    let
        requestInput = DescribeScalingParametersRequest
            
            domainName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeScalingParameters")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeScalingParametersRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeScalingParameters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeScalingParametersResult" describeScalingParametersResponseDecoder)
                
            )





{-| <p>Gets information about the access policies that control access to the domain's document and search endpoints. By default, shows the configuration with any pending changes. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html" target="_blank">Configuring Access for a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

describeServiceAccessPolicies :
  
    String ->
  
  
    ( DescribeServiceAccessPoliciesOptions -> DescribeServiceAccessPoliciesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeServiceAccessPoliciesResponse)

describeServiceAccessPolicies domainName setOptions =
    
    let
        requestInput = DescribeServiceAccessPoliciesRequest
            
            domainName
            
            options.deployed
            
        
        options = setOptions (DescribeServiceAccessPoliciesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeServiceAccessPolicies")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeServiceAccessPoliciesRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeServiceAccessPolicies"
                
                (AWS.Core.Decode.ResultDecoder "DescribeServiceAccessPoliciesResult" describeServiceAccessPoliciesResponseDecoder)
                
            )



{-| Options for a describeServiceAccessPolicies request
-}
type alias DescribeServiceAccessPoliciesOptions =
    {
    deployed : Maybe Bool
    }



{-| <p>Gets the suggesters configured for a domain. A suggester enables you to display possible matches before users finish typing their queries. Can be limited to specific suggesters by name. By default, shows all suggesters and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html" target="_blank">Getting Search Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

describeSuggesters :
  
    String ->
  
  
    ( DescribeSuggestersOptions -> DescribeSuggestersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeSuggestersResponse)

describeSuggesters domainName setOptions =
    
    let
        requestInput = DescribeSuggestersRequest
            
            domainName
            
            options.suggesterNames
            
            options.deployed
            
        
        options = setOptions (DescribeSuggestersOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DescribeSuggesters")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs describeSuggestersRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeSuggesters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeSuggestersResult" describeSuggestersResponseDecoder)
                
            )



{-| Options for a describeSuggesters request
-}
type alias DescribeSuggestersOptions =
    {
    suggesterNames : Maybe (List String),deployed : Maybe Bool
    }



{-| <p>Tells the search domain to start indexing its documents using the latest indexing options. This operation must be invoked to activate options whose <a>OptionStatus</a> is <code>RequiresIndexDocuments</code>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}

indexDocuments :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IndexDocumentsResponse)

indexDocuments domainName =
    
    let
        requestInput = IndexDocumentsRequest
            
            domainName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "IndexDocuments")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs indexDocumentsRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "IndexDocuments"
                
                (AWS.Core.Decode.ResultDecoder "IndexDocumentsResult" indexDocumentsResponseDecoder)
                
            )





{-| <p>Lists all search domains owned by an account.</p>

__Required Parameters__



-}

listDomainNames :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDomainNamesResponse)

listDomainNames =
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListDomainNames")]
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListDomainNames"
                
                (AWS.Core.Decode.ResultDecoder "ListDomainNamesResult" listDomainNamesResponseDecoder)
                
            )





{-| <p>Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `multiAZ` __:__ `Bool`


-}

updateAvailabilityOptions :
  
    String ->
  
    Bool ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateAvailabilityOptionsResponse)

updateAvailabilityOptions domainName multiAZ =
    
    let
        requestInput = UpdateAvailabilityOptionsRequest
            
            domainName
            
            multiAZ
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateAvailabilityOptions")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateAvailabilityOptionsRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateAvailabilityOptions"
                
                (AWS.Core.Decode.ResultDecoder "UpdateAvailabilityOptionsResult" updateAvailabilityOptionsResponseDecoder)
                
            )





{-| <p>Configures scaling parameters for a domain. A domain's scaling parameters specify the desired search instance type and replication count. Amazon CloudSearch will still automatically scale your domain based on the volume of data and traffic, but not below the desired instance type and replication count. If the Multi-AZ option is enabled, these values control the resources used per Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html" target="_blank">Configuring Scaling Options</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>

__Required Parameters__

* `domainName` __:__ `String`
* `scalingParameters` __:__ `ScalingParameters`


-}

updateScalingParameters :
  
    String ->
  
    ScalingParameters ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateScalingParametersResponse)

updateScalingParameters domainName scalingParameters =
    
    let
        requestInput = UpdateScalingParametersRequest
            
            domainName
            
            scalingParameters
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateScalingParameters")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateScalingParametersRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateScalingParameters"
                
                (AWS.Core.Decode.ResultDecoder "UpdateScalingParametersResult" updateScalingParametersResponseDecoder)
                
            )





{-| <p>Configures the access rules that control access to the domain's document and search endpoints. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html" target="_blank"> Configuring Access for an Amazon CloudSearch Domain</a>.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `accessPolicies` __:__ `String`


-}

updateServiceAccessPolicies :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateServiceAccessPoliciesResponse)

updateServiceAccessPolicies domainName accessPolicies =
    
    let
        requestInput = UpdateServiceAccessPoliciesRequest
            
            domainName
            
            accessPolicies
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UpdateServiceAccessPolicies")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs updateServiceAccessPoliciesRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateServiceAccessPolicies"
                
                (AWS.Core.Decode.ResultDecoder "UpdateServiceAccessPoliciesResult" updateServiceAccessPoliciesResponseDecoder)
                
            )






{-| <p>The configured access rules for the domain's document and search endpoints, and the current status of those rules.</p>
-}
type alias AccessPoliciesStatus =
    { options : String
    , status : OptionStatus
    }



accessPoliciesStatusDecoder : JD.Decoder AccessPoliciesStatus
accessPoliciesStatusDecoder =
    JD.succeed AccessPoliciesStatus
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Options", "options"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Status", "status"]
            optionStatusDecoder
        )
        




accessPoliciesStatusToString : AccessPoliciesStatus -> String -- List (String, String)
accessPoliciesStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "options" "" -- val.options
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| One of

* `AlgorithmicStemming_none`
* `AlgorithmicStemming_minimal`
* `AlgorithmicStemming_light`
* `AlgorithmicStemming_full`

-}
type AlgorithmicStemming
    = AlgorithmicStemming_none
    | AlgorithmicStemming_minimal
    | AlgorithmicStemming_light
    | AlgorithmicStemming_full



algorithmicStemmingDecoder : JD.Decoder AlgorithmicStemming
algorithmicStemmingDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "none" ->
                        JD.succeed AlgorithmicStemming_none

                    "minimal" ->
                        JD.succeed AlgorithmicStemming_minimal

                    "light" ->
                        JD.succeed AlgorithmicStemming_light

                    "full" ->
                        JD.succeed AlgorithmicStemming_full


                    _ ->
                        JD.fail "bad thing"
            )




algorithmicStemmingToString : AlgorithmicStemming -> String
algorithmicStemmingToString val =
    case val of
        AlgorithmicStemming_none ->
            "none"

        AlgorithmicStemming_minimal ->
            "minimal"

        AlgorithmicStemming_light ->
            "light"

        AlgorithmicStemming_full ->
            "full"




{-| <p>Synonyms, stopwords, and stemming options for an analysis scheme. Includes tokenization dictionary for Japanese.</p>
-}
type alias AnalysisOptions =
    { synonyms : Maybe String
    , stopwords : Maybe String
    , stemmingDictionary : Maybe String
    , japaneseTokenizationDictionary : Maybe String
    , algorithmicStemming : Maybe AlgorithmicStemming
    }



analysisOptionsDecoder : JD.Decoder AnalysisOptions
analysisOptionsDecoder =
    JD.succeed AnalysisOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Synonyms", "synonyms"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Stopwords", "stopwords"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StemmingDictionary", "stemmingDictionary"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JapaneseTokenizationDictionary", "japaneseTokenizationDictionary"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AlgorithmicStemming", "algorithmicStemming"]
            algorithmicStemmingDecoder
        )
        




analysisOptionsToString : AnalysisOptions -> String -- List (String, String)
analysisOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "synonyms" "" -- val.synonyms
        
    --     |> Dict.insert
    --         "stopwords" "" -- val.stopwords
        
    --     |> Dict.insert
    --         "stemmingDictionary" "" -- val.stemmingDictionary
        
    --     |> Dict.insert
    --         "japaneseTokenizationDictionary" "" -- val.japaneseTokenizationDictionary
        
    --     |> Dict.insert
    --         "algorithmicStemming" "" -- val.algorithmicStemming
        
    --     |> Dict.toList
    ""



{-| <p>Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: <code>Synonyms</code>, <code>Stopwords</code>, <code>StemmingDictionary</code>, <code>JapaneseTokenizationDictionary</code> and <code>AlgorithmicStemming</code>.</p>
-}
type alias AnalysisScheme =
    { analysisSchemeName : String
    , analysisSchemeLanguage : AnalysisSchemeLanguage
    , analysisOptions : Maybe AnalysisOptions
    }



analysisSchemeDecoder : JD.Decoder AnalysisScheme
analysisSchemeDecoder =
    JD.succeed AnalysisScheme
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AnalysisSchemeName", "analysisSchemeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AnalysisSchemeLanguage", "analysisSchemeLanguage"]
            analysisSchemeLanguageDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AnalysisOptions", "analysisOptions"]
            analysisOptionsDecoder
        )
        




analysisSchemeToString : AnalysisScheme -> String -- List (String, String)
analysisSchemeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "analysisSchemeName" "" -- val.analysisSchemeName
        
    --     |> Dict.insert
    --         "analysisSchemeLanguage" "" -- val.analysisSchemeLanguage
        
    --     |> Dict.insert
    --         "analysisOptions" "" -- val.analysisOptions
        
    --     |> Dict.toList
    ""



{-| One of

* `AnalysisSchemeLanguage_ar`
* `AnalysisSchemeLanguage_bg`
* `AnalysisSchemeLanguage_ca`
* `AnalysisSchemeLanguage_cs`
* `AnalysisSchemeLanguage_da`
* `AnalysisSchemeLanguage_de`
* `AnalysisSchemeLanguage_el`
* `AnalysisSchemeLanguage_en`
* `AnalysisSchemeLanguage_es`
* `AnalysisSchemeLanguage_eu`
* `AnalysisSchemeLanguage_fa`
* `AnalysisSchemeLanguage_fi`
* `AnalysisSchemeLanguage_fr`
* `AnalysisSchemeLanguage_ga`
* `AnalysisSchemeLanguage_gl`
* `AnalysisSchemeLanguage_he`
* `AnalysisSchemeLanguage_hi`
* `AnalysisSchemeLanguage_hu`
* `AnalysisSchemeLanguage_hy`
* `AnalysisSchemeLanguage_id`
* `AnalysisSchemeLanguage_it`
* `AnalysisSchemeLanguage_ja`
* `AnalysisSchemeLanguage_ko`
* `AnalysisSchemeLanguage_lv`
* `AnalysisSchemeLanguage_mul`
* `AnalysisSchemeLanguage_nl`
* `AnalysisSchemeLanguage_no`
* `AnalysisSchemeLanguage_pt`
* `AnalysisSchemeLanguage_ro`
* `AnalysisSchemeLanguage_ru`
* `AnalysisSchemeLanguage_sv`
* `AnalysisSchemeLanguage_th`
* `AnalysisSchemeLanguage_tr`
* `AnalysisSchemeLanguage_zh-Hans`
* `AnalysisSchemeLanguage_zh-Hant`

-}
type AnalysisSchemeLanguage
    = AnalysisSchemeLanguage_ar
    | AnalysisSchemeLanguage_bg
    | AnalysisSchemeLanguage_ca
    | AnalysisSchemeLanguage_cs
    | AnalysisSchemeLanguage_da
    | AnalysisSchemeLanguage_de
    | AnalysisSchemeLanguage_el
    | AnalysisSchemeLanguage_en
    | AnalysisSchemeLanguage_es
    | AnalysisSchemeLanguage_eu
    | AnalysisSchemeLanguage_fa
    | AnalysisSchemeLanguage_fi
    | AnalysisSchemeLanguage_fr
    | AnalysisSchemeLanguage_ga
    | AnalysisSchemeLanguage_gl
    | AnalysisSchemeLanguage_he
    | AnalysisSchemeLanguage_hi
    | AnalysisSchemeLanguage_hu
    | AnalysisSchemeLanguage_hy
    | AnalysisSchemeLanguage_id
    | AnalysisSchemeLanguage_it
    | AnalysisSchemeLanguage_ja
    | AnalysisSchemeLanguage_ko
    | AnalysisSchemeLanguage_lv
    | AnalysisSchemeLanguage_mul
    | AnalysisSchemeLanguage_nl
    | AnalysisSchemeLanguage_no
    | AnalysisSchemeLanguage_pt
    | AnalysisSchemeLanguage_ro
    | AnalysisSchemeLanguage_ru
    | AnalysisSchemeLanguage_sv
    | AnalysisSchemeLanguage_th
    | AnalysisSchemeLanguage_tr
    | AnalysisSchemeLanguage_zh_Hans
    | AnalysisSchemeLanguage_zh_Hant



analysisSchemeLanguageDecoder : JD.Decoder AnalysisSchemeLanguage
analysisSchemeLanguageDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ar" ->
                        JD.succeed AnalysisSchemeLanguage_ar

                    "bg" ->
                        JD.succeed AnalysisSchemeLanguage_bg

                    "ca" ->
                        JD.succeed AnalysisSchemeLanguage_ca

                    "cs" ->
                        JD.succeed AnalysisSchemeLanguage_cs

                    "da" ->
                        JD.succeed AnalysisSchemeLanguage_da

                    "de" ->
                        JD.succeed AnalysisSchemeLanguage_de

                    "el" ->
                        JD.succeed AnalysisSchemeLanguage_el

                    "en" ->
                        JD.succeed AnalysisSchemeLanguage_en

                    "es" ->
                        JD.succeed AnalysisSchemeLanguage_es

                    "eu" ->
                        JD.succeed AnalysisSchemeLanguage_eu

                    "fa" ->
                        JD.succeed AnalysisSchemeLanguage_fa

                    "fi" ->
                        JD.succeed AnalysisSchemeLanguage_fi

                    "fr" ->
                        JD.succeed AnalysisSchemeLanguage_fr

                    "ga" ->
                        JD.succeed AnalysisSchemeLanguage_ga

                    "gl" ->
                        JD.succeed AnalysisSchemeLanguage_gl

                    "he" ->
                        JD.succeed AnalysisSchemeLanguage_he

                    "hi" ->
                        JD.succeed AnalysisSchemeLanguage_hi

                    "hu" ->
                        JD.succeed AnalysisSchemeLanguage_hu

                    "hy" ->
                        JD.succeed AnalysisSchemeLanguage_hy

                    "id" ->
                        JD.succeed AnalysisSchemeLanguage_id

                    "it" ->
                        JD.succeed AnalysisSchemeLanguage_it

                    "ja" ->
                        JD.succeed AnalysisSchemeLanguage_ja

                    "ko" ->
                        JD.succeed AnalysisSchemeLanguage_ko

                    "lv" ->
                        JD.succeed AnalysisSchemeLanguage_lv

                    "mul" ->
                        JD.succeed AnalysisSchemeLanguage_mul

                    "nl" ->
                        JD.succeed AnalysisSchemeLanguage_nl

                    "no" ->
                        JD.succeed AnalysisSchemeLanguage_no

                    "pt" ->
                        JD.succeed AnalysisSchemeLanguage_pt

                    "ro" ->
                        JD.succeed AnalysisSchemeLanguage_ro

                    "ru" ->
                        JD.succeed AnalysisSchemeLanguage_ru

                    "sv" ->
                        JD.succeed AnalysisSchemeLanguage_sv

                    "th" ->
                        JD.succeed AnalysisSchemeLanguage_th

                    "tr" ->
                        JD.succeed AnalysisSchemeLanguage_tr

                    "zh_Hans" ->
                        JD.succeed AnalysisSchemeLanguage_zh_Hans

                    "zh_Hant" ->
                        JD.succeed AnalysisSchemeLanguage_zh_Hant


                    _ ->
                        JD.fail "bad thing"
            )




analysisSchemeLanguageToString : AnalysisSchemeLanguage -> String
analysisSchemeLanguageToString val =
    case val of
        AnalysisSchemeLanguage_ar ->
            "ar"

        AnalysisSchemeLanguage_bg ->
            "bg"

        AnalysisSchemeLanguage_ca ->
            "ca"

        AnalysisSchemeLanguage_cs ->
            "cs"

        AnalysisSchemeLanguage_da ->
            "da"

        AnalysisSchemeLanguage_de ->
            "de"

        AnalysisSchemeLanguage_el ->
            "el"

        AnalysisSchemeLanguage_en ->
            "en"

        AnalysisSchemeLanguage_es ->
            "es"

        AnalysisSchemeLanguage_eu ->
            "eu"

        AnalysisSchemeLanguage_fa ->
            "fa"

        AnalysisSchemeLanguage_fi ->
            "fi"

        AnalysisSchemeLanguage_fr ->
            "fr"

        AnalysisSchemeLanguage_ga ->
            "ga"

        AnalysisSchemeLanguage_gl ->
            "gl"

        AnalysisSchemeLanguage_he ->
            "he"

        AnalysisSchemeLanguage_hi ->
            "hi"

        AnalysisSchemeLanguage_hu ->
            "hu"

        AnalysisSchemeLanguage_hy ->
            "hy"

        AnalysisSchemeLanguage_id ->
            "id"

        AnalysisSchemeLanguage_it ->
            "it"

        AnalysisSchemeLanguage_ja ->
            "ja"

        AnalysisSchemeLanguage_ko ->
            "ko"

        AnalysisSchemeLanguage_lv ->
            "lv"

        AnalysisSchemeLanguage_mul ->
            "mul"

        AnalysisSchemeLanguage_nl ->
            "nl"

        AnalysisSchemeLanguage_no ->
            "no"

        AnalysisSchemeLanguage_pt ->
            "pt"

        AnalysisSchemeLanguage_ro ->
            "ro"

        AnalysisSchemeLanguage_ru ->
            "ru"

        AnalysisSchemeLanguage_sv ->
            "sv"

        AnalysisSchemeLanguage_th ->
            "th"

        AnalysisSchemeLanguage_tr ->
            "tr"

        AnalysisSchemeLanguage_zh_Hans ->
            "zh_Hans"

        AnalysisSchemeLanguage_zh_Hant ->
            "zh_Hant"




{-| <p>The status and configuration of an <code>AnalysisScheme</code>.</p>
-}
type alias AnalysisSchemeStatus =
    { options : AnalysisScheme
    , status : OptionStatus
    }



analysisSchemeStatusDecoder : JD.Decoder AnalysisSchemeStatus
analysisSchemeStatusDecoder =
    JD.succeed AnalysisSchemeStatus
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Options", "options"]
            analysisSchemeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Status", "status"]
            optionStatusDecoder
        )
        




analysisSchemeStatusToString : AnalysisSchemeStatus -> String -- List (String, String)
analysisSchemeStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "options" "" -- val.options
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p>The status and configuration of the domain's availability options.</p>
-}
type alias AvailabilityOptionsStatus =
    { options : Bool
    , status : OptionStatus
    }



availabilityOptionsStatusDecoder : JD.Decoder AvailabilityOptionsStatus
availabilityOptionsStatusDecoder =
    JD.succeed AvailabilityOptionsStatus
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Options", "options"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Status", "status"]
            optionStatusDecoder
        )
        




availabilityOptionsStatusToString : AvailabilityOptionsStatus -> String -- List (String, String)
availabilityOptionsStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "options" "" -- val.options
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p>An error occurred while processing the request.</p>
-}
type alias BaseException =
    { code : Maybe String
    , message : Maybe String
    }



baseExceptionDecoder : JD.Decoder BaseException
baseExceptionDecoder =
    JD.succeed BaseException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Code", "code"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        




baseExceptionToString : BaseException -> String -- List (String, String)
baseExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from buildSuggesters
-}
type alias BuildSuggestersResponse =
    { fieldNames : Maybe (List String)
    }



buildSuggestersResponseDecoder : JD.Decoder BuildSuggestersResponse
buildSuggestersResponseDecoder =
    JD.succeed BuildSuggestersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FieldNames", "fieldNames"]
            (JD.list JD.string)
        )
        




buildSuggestersResponseToString : BuildSuggestersResponse -> String -- List (String, String)
buildSuggestersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fieldNames" "" -- val.fieldNames
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createDomain
-}
type alias CreateDomainResponse =
    { domainStatus : Maybe DomainStatus
    }



createDomainResponseDecoder : JD.Decoder CreateDomainResponse
createDomainResponseDecoder =
    JD.succeed CreateDomainResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DomainStatus", "domainStatus"]
            domainStatusDecoder
        )
        




createDomainResponseToString : CreateDomainResponse -> String -- List (String, String)
createDomainResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "domainStatus" "" -- val.domainStatus
        
    --     |> Dict.toList
    ""



{-| <p>Options for a field that contains an array of dates. Present if <code>IndexFieldType</code> specifies the field is of type <code>date-array</code>. All options are enabled by default.</p>
-}
type alias DateArrayOptions =
    { defaultValue : Maybe String
    , sourceFields : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    }



dateArrayOptionsDecoder : JD.Decoder DateArrayOptions
dateArrayOptionsDecoder =
    JD.succeed DateArrayOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceFields", "sourceFields"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FacetEnabled", "facetEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchEnabled", "searchEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReturnEnabled", "returnEnabled"]
            JD.bool
        )
        




dateArrayOptionsToString : DateArrayOptions -> String -- List (String, String)
dateArrayOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "sourceFields" "" -- val.sourceFields
        
    --     |> Dict.insert
    --         "facetEnabled" "" -- val.facetEnabled
        
    --     |> Dict.insert
    --         "searchEnabled" "" -- val.searchEnabled
        
    --     |> Dict.insert
    --         "returnEnabled" "" -- val.returnEnabled
        
    --     |> Dict.toList
    ""



{-| <p>Options for a date field. Dates and times are specified in UTC (Coordinated Universal Time) according to IETF RFC3339: yyyy-mm-ddT00:00:00Z. Present if <code>IndexFieldType</code> specifies the field is of type <code>date</code>. All options are enabled by default.</p>
-}
type alias DateOptions =
    { defaultValue : Maybe String
    , sourceField : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    , sortEnabled : Maybe Bool
    }



dateOptionsDecoder : JD.Decoder DateOptions
dateOptionsDecoder =
    JD.succeed DateOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceField", "sourceField"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FacetEnabled", "facetEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchEnabled", "searchEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReturnEnabled", "returnEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SortEnabled", "sortEnabled"]
            JD.bool
        )
        




dateOptionsToString : DateOptions -> String -- List (String, String)
dateOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "sourceField" "" -- val.sourceField
        
    --     |> Dict.insert
    --         "facetEnabled" "" -- val.facetEnabled
        
    --     |> Dict.insert
    --         "searchEnabled" "" -- val.searchEnabled
        
    --     |> Dict.insert
    --         "returnEnabled" "" -- val.returnEnabled
        
    --     |> Dict.insert
    --         "sortEnabled" "" -- val.sortEnabled
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from defineAnalysisScheme
-}
type alias DefineAnalysisSchemeResponse =
    { analysisScheme : AnalysisSchemeStatus
    }



defineAnalysisSchemeResponseDecoder : JD.Decoder DefineAnalysisSchemeResponse
defineAnalysisSchemeResponseDecoder =
    JD.succeed DefineAnalysisSchemeResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AnalysisScheme", "analysisScheme"]
            analysisSchemeStatusDecoder
        )
        




defineAnalysisSchemeResponseToString : DefineAnalysisSchemeResponse -> String -- List (String, String)
defineAnalysisSchemeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "analysisScheme" "" -- val.analysisScheme
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from defineExpression
-}
type alias DefineExpressionResponse =
    { expression : ExpressionStatus
    }



defineExpressionResponseDecoder : JD.Decoder DefineExpressionResponse
defineExpressionResponseDecoder =
    JD.succeed DefineExpressionResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Expression", "expression"]
            expressionStatusDecoder
        )
        




defineExpressionResponseToString : DefineExpressionResponse -> String -- List (String, String)
defineExpressionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "expression" "" -- val.expression
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from defineIndexField
-}
type alias DefineIndexFieldResponse =
    { indexField : IndexFieldStatus
    }



defineIndexFieldResponseDecoder : JD.Decoder DefineIndexFieldResponse
defineIndexFieldResponseDecoder =
    JD.succeed DefineIndexFieldResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IndexField", "indexField"]
            indexFieldStatusDecoder
        )
        




defineIndexFieldResponseToString : DefineIndexFieldResponse -> String -- List (String, String)
defineIndexFieldResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "indexField" "" -- val.indexField
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from defineSuggester
-}
type alias DefineSuggesterResponse =
    { suggester : SuggesterStatus
    }



defineSuggesterResponseDecoder : JD.Decoder DefineSuggesterResponse
defineSuggesterResponseDecoder =
    JD.succeed DefineSuggesterResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Suggester", "suggester"]
            suggesterStatusDecoder
        )
        




defineSuggesterResponseToString : DefineSuggesterResponse -> String -- List (String, String)
defineSuggesterResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "suggester" "" -- val.suggester
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteAnalysisScheme
-}
type alias DeleteAnalysisSchemeResponse =
    { analysisScheme : AnalysisSchemeStatus
    }



deleteAnalysisSchemeResponseDecoder : JD.Decoder DeleteAnalysisSchemeResponse
deleteAnalysisSchemeResponseDecoder =
    JD.succeed DeleteAnalysisSchemeResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AnalysisScheme", "analysisScheme"]
            analysisSchemeStatusDecoder
        )
        




deleteAnalysisSchemeResponseToString : DeleteAnalysisSchemeResponse -> String -- List (String, String)
deleteAnalysisSchemeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "analysisScheme" "" -- val.analysisScheme
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteDomain
-}
type alias DeleteDomainResponse =
    { domainStatus : Maybe DomainStatus
    }



deleteDomainResponseDecoder : JD.Decoder DeleteDomainResponse
deleteDomainResponseDecoder =
    JD.succeed DeleteDomainResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DomainStatus", "domainStatus"]
            domainStatusDecoder
        )
        




deleteDomainResponseToString : DeleteDomainResponse -> String -- List (String, String)
deleteDomainResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "domainStatus" "" -- val.domainStatus
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteExpression
-}
type alias DeleteExpressionResponse =
    { expression : ExpressionStatus
    }



deleteExpressionResponseDecoder : JD.Decoder DeleteExpressionResponse
deleteExpressionResponseDecoder =
    JD.succeed DeleteExpressionResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Expression", "expression"]
            expressionStatusDecoder
        )
        




deleteExpressionResponseToString : DeleteExpressionResponse -> String -- List (String, String)
deleteExpressionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "expression" "" -- val.expression
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteIndexField
-}
type alias DeleteIndexFieldResponse =
    { indexField : IndexFieldStatus
    }



deleteIndexFieldResponseDecoder : JD.Decoder DeleteIndexFieldResponse
deleteIndexFieldResponseDecoder =
    JD.succeed DeleteIndexFieldResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IndexField", "indexField"]
            indexFieldStatusDecoder
        )
        




deleteIndexFieldResponseToString : DeleteIndexFieldResponse -> String -- List (String, String)
deleteIndexFieldResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "indexField" "" -- val.indexField
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteSuggester
-}
type alias DeleteSuggesterResponse =
    { suggester : SuggesterStatus
    }



deleteSuggesterResponseDecoder : JD.Decoder DeleteSuggesterResponse
deleteSuggesterResponseDecoder =
    JD.succeed DeleteSuggesterResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Suggester", "suggester"]
            suggesterStatusDecoder
        )
        




deleteSuggesterResponseToString : DeleteSuggesterResponse -> String -- List (String, String)
deleteSuggesterResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "suggester" "" -- val.suggester
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAnalysisSchemes
-}
type alias DescribeAnalysisSchemesResponse =
    { analysisSchemes : (List AnalysisSchemeStatus)
    }



describeAnalysisSchemesResponseDecoder : JD.Decoder DescribeAnalysisSchemesResponse
describeAnalysisSchemesResponseDecoder =
    JD.succeed DescribeAnalysisSchemesResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AnalysisSchemes", "analysisSchemes"]
            (JD.list analysisSchemeStatusDecoder)
        )
        




describeAnalysisSchemesResponseToString : DescribeAnalysisSchemesResponse -> String -- List (String, String)
describeAnalysisSchemesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "analysisSchemes" "" -- val.analysisSchemes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAvailabilityOptions
-}
type alias DescribeAvailabilityOptionsResponse =
    { availabilityOptions : Maybe AvailabilityOptionsStatus
    }



describeAvailabilityOptionsResponseDecoder : JD.Decoder DescribeAvailabilityOptionsResponse
describeAvailabilityOptionsResponseDecoder =
    JD.succeed DescribeAvailabilityOptionsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityOptions", "availabilityOptions"]
            availabilityOptionsStatusDecoder
        )
        




describeAvailabilityOptionsResponseToString : DescribeAvailabilityOptionsResponse -> String -- List (String, String)
describeAvailabilityOptionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "availabilityOptions" "" -- val.availabilityOptions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeDomains
-}
type alias DescribeDomainsResponse =
    { domainStatusList : (List DomainStatus)
    }



describeDomainsResponseDecoder : JD.Decoder DescribeDomainsResponse
describeDomainsResponseDecoder =
    JD.succeed DescribeDomainsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DomainStatusList", "domainStatusList"]
            (JD.list domainStatusDecoder)
        )
        




describeDomainsResponseToString : DescribeDomainsResponse -> String -- List (String, String)
describeDomainsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "domainStatusList" "" -- val.domainStatusList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeExpressions
-}
type alias DescribeExpressionsResponse =
    { expressions : (List ExpressionStatus)
    }



describeExpressionsResponseDecoder : JD.Decoder DescribeExpressionsResponse
describeExpressionsResponseDecoder =
    JD.succeed DescribeExpressionsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Expressions", "expressions"]
            (JD.list expressionStatusDecoder)
        )
        




describeExpressionsResponseToString : DescribeExpressionsResponse -> String -- List (String, String)
describeExpressionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "expressions" "" -- val.expressions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeIndexFields
-}
type alias DescribeIndexFieldsResponse =
    { indexFields : (List IndexFieldStatus)
    }



describeIndexFieldsResponseDecoder : JD.Decoder DescribeIndexFieldsResponse
describeIndexFieldsResponseDecoder =
    JD.succeed DescribeIndexFieldsResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IndexFields", "indexFields"]
            (JD.list indexFieldStatusDecoder)
        )
        




describeIndexFieldsResponseToString : DescribeIndexFieldsResponse -> String -- List (String, String)
describeIndexFieldsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "indexFields" "" -- val.indexFields
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeScalingParameters
-}
type alias DescribeScalingParametersResponse =
    { scalingParameters : ScalingParametersStatus
    }



describeScalingParametersResponseDecoder : JD.Decoder DescribeScalingParametersResponse
describeScalingParametersResponseDecoder =
    JD.succeed DescribeScalingParametersResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ScalingParameters", "scalingParameters"]
            scalingParametersStatusDecoder
        )
        




describeScalingParametersResponseToString : DescribeScalingParametersResponse -> String -- List (String, String)
describeScalingParametersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "scalingParameters" "" -- val.scalingParameters
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeServiceAccessPolicies
-}
type alias DescribeServiceAccessPoliciesResponse =
    { accessPolicies : AccessPoliciesStatus
    }



describeServiceAccessPoliciesResponseDecoder : JD.Decoder DescribeServiceAccessPoliciesResponse
describeServiceAccessPoliciesResponseDecoder =
    JD.succeed DescribeServiceAccessPoliciesResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AccessPolicies", "accessPolicies"]
            accessPoliciesStatusDecoder
        )
        




describeServiceAccessPoliciesResponseToString : DescribeServiceAccessPoliciesResponse -> String -- List (String, String)
describeServiceAccessPoliciesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accessPolicies" "" -- val.accessPolicies
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeSuggesters
-}
type alias DescribeSuggestersResponse =
    { suggesters : (List SuggesterStatus)
    }



describeSuggestersResponseDecoder : JD.Decoder DescribeSuggestersResponse
describeSuggestersResponseDecoder =
    JD.succeed DescribeSuggestersResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Suggesters", "suggesters"]
            (JD.list suggesterStatusDecoder)
        )
        




describeSuggestersResponseToString : DescribeSuggestersResponse -> String -- List (String, String)
describeSuggestersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "suggesters" "" -- val.suggesters
        
    --     |> Dict.toList
    ""



{-| <p>The request was rejected because it attempted an operation which is not enabled.</p>
-}
type alias DisabledOperationException =
    { 
    }



disabledOperationExceptionDecoder : JD.Decoder DisabledOperationException
disabledOperationExceptionDecoder =
    JD.succeed DisabledOperationException
        




disabledOperationExceptionToString : DisabledOperationException -> String -- List (String, String)
disabledOperationExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Options for a search suggester.</p>
-}
type alias DocumentSuggesterOptions =
    { sourceField : String
    , fuzzyMatching : Maybe SuggesterFuzzyMatching
    , sortExpression : Maybe String
    }



documentSuggesterOptionsDecoder : JD.Decoder DocumentSuggesterOptions
documentSuggesterOptionsDecoder =
    JD.succeed DocumentSuggesterOptions
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SourceField", "sourceField"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FuzzyMatching", "fuzzyMatching"]
            suggesterFuzzyMatchingDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SortExpression", "sortExpression"]
            JD.string
        )
        




documentSuggesterOptionsToString : DocumentSuggesterOptions -> String -- List (String, String)
documentSuggesterOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceField" "" -- val.sourceField
        
    --     |> Dict.insert
    --         "fuzzyMatching" "" -- val.fuzzyMatching
        
    --     |> Dict.insert
    --         "sortExpression" "" -- val.sortExpression
        
    --     |> Dict.toList
    ""



{-| <p>The current status of the search domain.</p>
-}
type alias DomainStatus =
    { domainId : String
    , domainName : String
    , aRN : Maybe String
    , created : Maybe Bool
    , deleted : Maybe Bool
    , docService : Maybe ServiceEndpoint
    , searchService : Maybe ServiceEndpoint
    , requiresIndexDocuments : Bool
    , processing : Maybe Bool
    , searchInstanceType : Maybe String
    , searchPartitionCount : Maybe Int
    , searchInstanceCount : Maybe Int
    , limits : Maybe Limits
    }



domainStatusDecoder : JD.Decoder DomainStatus
domainStatusDecoder =
    JD.succeed DomainStatus
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DomainId", "domainId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DomainName", "domainName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ARN", "aRN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Created", "created"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Deleted", "deleted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DocService", "docService"]
            serviceEndpointDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchService", "searchService"]
            serviceEndpointDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RequiresIndexDocuments", "requiresIndexDocuments"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Processing", "processing"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchInstanceType", "searchInstanceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchPartitionCount", "searchPartitionCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchInstanceCount", "searchInstanceCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Limits", "limits"]
            limitsDecoder
        )
        




domainStatusToString : DomainStatus -> String -- List (String, String)
domainStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "domainId" "" -- val.domainId
        
    --     |> Dict.insert
    --         "domainName" "" -- val.domainName
        
    --     |> Dict.insert
    --         "aRN" "" -- val.aRN
        
    --     |> Dict.insert
    --         "created" "" -- val.created
        
    --     |> Dict.insert
    --         "deleted" "" -- val.deleted
        
    --     |> Dict.insert
    --         "docService" "" -- val.docService
        
    --     |> Dict.insert
    --         "searchService" "" -- val.searchService
        
    --     |> Dict.insert
    --         "requiresIndexDocuments" "" -- val.requiresIndexDocuments
        
    --     |> Dict.insert
    --         "processing" "" -- val.processing
        
    --     |> Dict.insert
    --         "searchInstanceType" "" -- val.searchInstanceType
        
    --     |> Dict.insert
    --         "searchPartitionCount" "" -- val.searchPartitionCount
        
    --     |> Dict.insert
    --         "searchInstanceCount" "" -- val.searchInstanceCount
        
    --     |> Dict.insert
    --         "limits" "" -- val.limits
        
    --     |> Dict.toList
    ""



{-| <p>Options for a field that contains an array of double-precision 64-bit floating point values. Present if <code>IndexFieldType</code> specifies the field is of type <code>double-array</code>. All options are enabled by default.</p>
-}
type alias DoubleArrayOptions =
    { defaultValue : Maybe Float
    , sourceFields : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    }



doubleArrayOptionsDecoder : JD.Decoder DoubleArrayOptions
doubleArrayOptionsDecoder =
    JD.succeed DoubleArrayOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceFields", "sourceFields"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FacetEnabled", "facetEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchEnabled", "searchEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReturnEnabled", "returnEnabled"]
            JD.bool
        )
        




doubleArrayOptionsToString : DoubleArrayOptions -> String -- List (String, String)
doubleArrayOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "sourceFields" "" -- val.sourceFields
        
    --     |> Dict.insert
    --         "facetEnabled" "" -- val.facetEnabled
        
    --     |> Dict.insert
    --         "searchEnabled" "" -- val.searchEnabled
        
    --     |> Dict.insert
    --         "returnEnabled" "" -- val.returnEnabled
        
    --     |> Dict.toList
    ""



{-| <p>Options for a double-precision 64-bit floating point field. Present if <code>IndexFieldType</code> specifies the field is of type <code>double</code>. All options are enabled by default.</p>
-}
type alias DoubleOptions =
    { defaultValue : Maybe Float
    , sourceField : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    , sortEnabled : Maybe Bool
    }



doubleOptionsDecoder : JD.Decoder DoubleOptions
doubleOptionsDecoder =
    JD.succeed DoubleOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceField", "sourceField"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FacetEnabled", "facetEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchEnabled", "searchEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReturnEnabled", "returnEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SortEnabled", "sortEnabled"]
            JD.bool
        )
        




doubleOptionsToString : DoubleOptions -> String -- List (String, String)
doubleOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "sourceField" "" -- val.sourceField
        
    --     |> Dict.insert
    --         "facetEnabled" "" -- val.facetEnabled
        
    --     |> Dict.insert
    --         "searchEnabled" "" -- val.searchEnabled
        
    --     |> Dict.insert
    --         "returnEnabled" "" -- val.returnEnabled
        
    --     |> Dict.insert
    --         "sortEnabled" "" -- val.sortEnabled
        
    --     |> Dict.toList
    ""



{-| <p>A named expression that can be evaluated at search time. Can be used to sort the search results, define other expressions, or return computed information in the search results. </p>
-}
type alias Expression =
    { expressionName : String
    , expressionValue : String
    }



expressionDecoder : JD.Decoder Expression
expressionDecoder =
    JD.succeed Expression
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ExpressionName", "expressionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ExpressionValue", "expressionValue"]
            JD.string
        )
        




expressionToString : Expression -> String -- List (String, String)
expressionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "expressionName" "" -- val.expressionName
        
    --     |> Dict.insert
    --         "expressionValue" "" -- val.expressionValue
        
    --     |> Dict.toList
    ""



{-| <p>The value of an <code>Expression</code> and its current status.</p>
-}
type alias ExpressionStatus =
    { options : Expression
    , status : OptionStatus
    }



expressionStatusDecoder : JD.Decoder ExpressionStatus
expressionStatusDecoder =
    JD.succeed ExpressionStatus
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Options", "options"]
            expressionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Status", "status"]
            optionStatusDecoder
        )
        




expressionStatusToString : ExpressionStatus -> String -- List (String, String)
expressionStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "options" "" -- val.options
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from indexDocuments
-}
type alias IndexDocumentsResponse =
    { fieldNames : Maybe (List String)
    }



indexDocumentsResponseDecoder : JD.Decoder IndexDocumentsResponse
indexDocumentsResponseDecoder =
    JD.succeed IndexDocumentsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FieldNames", "fieldNames"]
            (JD.list JD.string)
        )
        




indexDocumentsResponseToString : IndexDocumentsResponse -> String -- List (String, String)
indexDocumentsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fieldNames" "" -- val.fieldNames
        
    --     |> Dict.toList
    ""



{-| <p>Configuration information for a field in the index, including its name, type, and options. The supported options depend on the <code><a>IndexFieldType</a></code>.</p>
-}
type alias IndexField =
    { indexFieldName : String
    , indexFieldType : IndexFieldType
    , intOptions : Maybe IntOptions
    , doubleOptions : Maybe DoubleOptions
    , literalOptions : Maybe LiteralOptions
    , textOptions : Maybe TextOptions
    , dateOptions : Maybe DateOptions
    , latLonOptions : Maybe LatLonOptions
    , intArrayOptions : Maybe IntArrayOptions
    , doubleArrayOptions : Maybe DoubleArrayOptions
    , literalArrayOptions : Maybe LiteralArrayOptions
    , textArrayOptions : Maybe TextArrayOptions
    , dateArrayOptions : Maybe DateArrayOptions
    }



indexFieldDecoder : JD.Decoder IndexField
indexFieldDecoder =
    JD.succeed IndexField
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IndexFieldName", "indexFieldName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IndexFieldType", "indexFieldType"]
            indexFieldTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IntOptions", "intOptions"]
            intOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DoubleOptions", "doubleOptions"]
            doubleOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LiteralOptions", "literalOptions"]
            literalOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TextOptions", "textOptions"]
            textOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DateOptions", "dateOptions"]
            dateOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LatLonOptions", "latLonOptions"]
            latLonOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IntArrayOptions", "intArrayOptions"]
            intArrayOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DoubleArrayOptions", "doubleArrayOptions"]
            doubleArrayOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LiteralArrayOptions", "literalArrayOptions"]
            literalArrayOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TextArrayOptions", "textArrayOptions"]
            textArrayOptionsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DateArrayOptions", "dateArrayOptions"]
            dateArrayOptionsDecoder
        )
        




indexFieldToString : IndexField -> String -- List (String, String)
indexFieldToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "indexFieldName" "" -- val.indexFieldName
        
    --     |> Dict.insert
    --         "indexFieldType" "" -- val.indexFieldType
        
    --     |> Dict.insert
    --         "intOptions" "" -- val.intOptions
        
    --     |> Dict.insert
    --         "doubleOptions" "" -- val.doubleOptions
        
    --     |> Dict.insert
    --         "literalOptions" "" -- val.literalOptions
        
    --     |> Dict.insert
    --         "textOptions" "" -- val.textOptions
        
    --     |> Dict.insert
    --         "dateOptions" "" -- val.dateOptions
        
    --     |> Dict.insert
    --         "latLonOptions" "" -- val.latLonOptions
        
    --     |> Dict.insert
    --         "intArrayOptions" "" -- val.intArrayOptions
        
    --     |> Dict.insert
    --         "doubleArrayOptions" "" -- val.doubleArrayOptions
        
    --     |> Dict.insert
    --         "literalArrayOptions" "" -- val.literalArrayOptions
        
    --     |> Dict.insert
    --         "textArrayOptions" "" -- val.textArrayOptions
        
    --     |> Dict.insert
    --         "dateArrayOptions" "" -- val.dateArrayOptions
        
    --     |> Dict.toList
    ""



{-| <p>The value of an <code>IndexField</code> and its current status.</p>
-}
type alias IndexFieldStatus =
    { options : IndexField
    , status : OptionStatus
    }



indexFieldStatusDecoder : JD.Decoder IndexFieldStatus
indexFieldStatusDecoder =
    JD.succeed IndexFieldStatus
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Options", "options"]
            indexFieldDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Status", "status"]
            optionStatusDecoder
        )
        




indexFieldStatusToString : IndexFieldStatus -> String -- List (String, String)
indexFieldStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "options" "" -- val.options
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| One of

* `IndexFieldType_int`
* `IndexFieldType_double`
* `IndexFieldType_literal`
* `IndexFieldType_text`
* `IndexFieldType_date`
* `IndexFieldType_latlon`
* `IndexFieldType_int-array`
* `IndexFieldType_double-array`
* `IndexFieldType_literal-array`
* `IndexFieldType_text-array`
* `IndexFieldType_date-array`

-}
type IndexFieldType
    = IndexFieldType_int
    | IndexFieldType_double
    | IndexFieldType_literal
    | IndexFieldType_text
    | IndexFieldType_date
    | IndexFieldType_latlon
    | IndexFieldType_int_array
    | IndexFieldType_double_array
    | IndexFieldType_literal_array
    | IndexFieldType_text_array
    | IndexFieldType_date_array



indexFieldTypeDecoder : JD.Decoder IndexFieldType
indexFieldTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "int" ->
                        JD.succeed IndexFieldType_int

                    "double" ->
                        JD.succeed IndexFieldType_double

                    "literal" ->
                        JD.succeed IndexFieldType_literal

                    "text" ->
                        JD.succeed IndexFieldType_text

                    "date" ->
                        JD.succeed IndexFieldType_date

                    "latlon" ->
                        JD.succeed IndexFieldType_latlon

                    "int_array" ->
                        JD.succeed IndexFieldType_int_array

                    "double_array" ->
                        JD.succeed IndexFieldType_double_array

                    "literal_array" ->
                        JD.succeed IndexFieldType_literal_array

                    "text_array" ->
                        JD.succeed IndexFieldType_text_array

                    "date_array" ->
                        JD.succeed IndexFieldType_date_array


                    _ ->
                        JD.fail "bad thing"
            )




indexFieldTypeToString : IndexFieldType -> String
indexFieldTypeToString val =
    case val of
        IndexFieldType_int ->
            "int"

        IndexFieldType_double ->
            "double"

        IndexFieldType_literal ->
            "literal"

        IndexFieldType_text ->
            "text"

        IndexFieldType_date ->
            "date"

        IndexFieldType_latlon ->
            "latlon"

        IndexFieldType_int_array ->
            "int_array"

        IndexFieldType_double_array ->
            "double_array"

        IndexFieldType_literal_array ->
            "literal_array"

        IndexFieldType_text_array ->
            "text_array"

        IndexFieldType_date_array ->
            "date_array"




{-| <p>Options for a field that contains an array of 64-bit signed integers. Present if <code>IndexFieldType</code> specifies the field is of type <code>int-array</code>. All options are enabled by default.</p>
-}
type alias IntArrayOptions =
    { defaultValue : Maybe Int
    , sourceFields : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    }



intArrayOptionsDecoder : JD.Decoder IntArrayOptions
intArrayOptionsDecoder =
    JD.succeed IntArrayOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceFields", "sourceFields"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FacetEnabled", "facetEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchEnabled", "searchEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReturnEnabled", "returnEnabled"]
            JD.bool
        )
        




intArrayOptionsToString : IntArrayOptions -> String -- List (String, String)
intArrayOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "sourceFields" "" -- val.sourceFields
        
    --     |> Dict.insert
    --         "facetEnabled" "" -- val.facetEnabled
        
    --     |> Dict.insert
    --         "searchEnabled" "" -- val.searchEnabled
        
    --     |> Dict.insert
    --         "returnEnabled" "" -- val.returnEnabled
        
    --     |> Dict.toList
    ""



{-| <p>Options for a 64-bit signed integer field. Present if <code>IndexFieldType</code> specifies the field is of type <code>int</code>. All options are enabled by default.</p>
-}
type alias IntOptions =
    { defaultValue : Maybe Int
    , sourceField : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    , sortEnabled : Maybe Bool
    }



intOptionsDecoder : JD.Decoder IntOptions
intOptionsDecoder =
    JD.succeed IntOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceField", "sourceField"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FacetEnabled", "facetEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchEnabled", "searchEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReturnEnabled", "returnEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SortEnabled", "sortEnabled"]
            JD.bool
        )
        




intOptionsToString : IntOptions -> String -- List (String, String)
intOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "sourceField" "" -- val.sourceField
        
    --     |> Dict.insert
    --         "facetEnabled" "" -- val.facetEnabled
        
    --     |> Dict.insert
    --         "searchEnabled" "" -- val.searchEnabled
        
    --     |> Dict.insert
    --         "returnEnabled" "" -- val.returnEnabled
        
    --     |> Dict.insert
    --         "sortEnabled" "" -- val.sortEnabled
        
    --     |> Dict.toList
    ""



{-| <p>An internal error occurred while processing the request. If this problem persists, report an issue from the <a href="http://status.aws.amazon.com/" target="_blank">Service Health Dashboard</a>.</p>
-}
type alias InternalException =
    { 
    }



internalExceptionDecoder : JD.Decoder InternalException
internalExceptionDecoder =
    JD.succeed InternalException
        




internalExceptionToString : InternalException -> String -- List (String, String)
internalExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>The request was rejected because it specified an invalid type definition.</p>
-}
type alias InvalidTypeException =
    { 
    }



invalidTypeExceptionDecoder : JD.Decoder InvalidTypeException
invalidTypeExceptionDecoder =
    JD.succeed InvalidTypeException
        




invalidTypeExceptionToString : InvalidTypeException -> String -- List (String, String)
invalidTypeExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Options for a latlon field. A latlon field contains a location stored as a latitude and longitude value pair. Present if <code>IndexFieldType</code> specifies the field is of type <code>latlon</code>. All options are enabled by default.</p>
-}
type alias LatLonOptions =
    { defaultValue : Maybe String
    , sourceField : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    , sortEnabled : Maybe Bool
    }



latLonOptionsDecoder : JD.Decoder LatLonOptions
latLonOptionsDecoder =
    JD.succeed LatLonOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceField", "sourceField"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FacetEnabled", "facetEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchEnabled", "searchEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReturnEnabled", "returnEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SortEnabled", "sortEnabled"]
            JD.bool
        )
        




latLonOptionsToString : LatLonOptions -> String -- List (String, String)
latLonOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "sourceField" "" -- val.sourceField
        
    --     |> Dict.insert
    --         "facetEnabled" "" -- val.facetEnabled
        
    --     |> Dict.insert
    --         "searchEnabled" "" -- val.searchEnabled
        
    --     |> Dict.insert
    --         "returnEnabled" "" -- val.returnEnabled
        
    --     |> Dict.insert
    --         "sortEnabled" "" -- val.sortEnabled
        
    --     |> Dict.toList
    ""



{-| <p>The request was rejected because a resource limit has already been met.</p>
-}
type alias LimitExceededException =
    { 
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JD.succeed LimitExceededException
        




limitExceededExceptionToString : LimitExceededException -> String -- List (String, String)
limitExceededExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| undefined
-}
type alias Limits =
    { maximumReplicationCount : Int
    , maximumPartitionCount : Int
    }



limitsDecoder : JD.Decoder Limits
limitsDecoder =
    JD.succeed Limits
        
        |> JDP.custom (AWS.Core.Decode.required
            ["MaximumReplicationCount", "maximumReplicationCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["MaximumPartitionCount", "maximumPartitionCount"]
            JD.int
        )
        




limitsToString : Limits -> String -- List (String, String)
limitsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "maximumReplicationCount" "" -- val.maximumReplicationCount
        
    --     |> Dict.insert
    --         "maximumPartitionCount" "" -- val.maximumPartitionCount
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listDomainNames
-}
type alias ListDomainNamesResponse =
    { domainNames : Maybe (Dict String String)
    }



listDomainNamesResponseDecoder : JD.Decoder ListDomainNamesResponse
listDomainNamesResponseDecoder =
    JD.succeed ListDomainNamesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DomainNames", "domainNames"]
            (AWS.Core.Decode.dict JD.string)
        )
        




listDomainNamesResponseToString : ListDomainNamesResponse -> String -- List (String, String)
listDomainNamesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "domainNames" "" -- val.domainNames
        
    --     |> Dict.toList
    ""



{-| <p>Options for a field that contains an array of literal strings. Present if <code>IndexFieldType</code> specifies the field is of type <code>literal-array</code>. All options are enabled by default.</p>
-}
type alias LiteralArrayOptions =
    { defaultValue : Maybe String
    , sourceFields : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    }



literalArrayOptionsDecoder : JD.Decoder LiteralArrayOptions
literalArrayOptionsDecoder =
    JD.succeed LiteralArrayOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceFields", "sourceFields"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FacetEnabled", "facetEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchEnabled", "searchEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReturnEnabled", "returnEnabled"]
            JD.bool
        )
        




literalArrayOptionsToString : LiteralArrayOptions -> String -- List (String, String)
literalArrayOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "sourceFields" "" -- val.sourceFields
        
    --     |> Dict.insert
    --         "facetEnabled" "" -- val.facetEnabled
        
    --     |> Dict.insert
    --         "searchEnabled" "" -- val.searchEnabled
        
    --     |> Dict.insert
    --         "returnEnabled" "" -- val.returnEnabled
        
    --     |> Dict.toList
    ""



{-| <p>Options for literal field. Present if <code>IndexFieldType</code> specifies the field is of type <code>literal</code>. All options are enabled by default.</p>
-}
type alias LiteralOptions =
    { defaultValue : Maybe String
    , sourceField : Maybe String
    , facetEnabled : Maybe Bool
    , searchEnabled : Maybe Bool
    , returnEnabled : Maybe Bool
    , sortEnabled : Maybe Bool
    }



literalOptionsDecoder : JD.Decoder LiteralOptions
literalOptionsDecoder =
    JD.succeed LiteralOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceField", "sourceField"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FacetEnabled", "facetEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SearchEnabled", "searchEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReturnEnabled", "returnEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SortEnabled", "sortEnabled"]
            JD.bool
        )
        




literalOptionsToString : LiteralOptions -> String -- List (String, String)
literalOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "sourceField" "" -- val.sourceField
        
    --     |> Dict.insert
    --         "facetEnabled" "" -- val.facetEnabled
        
    --     |> Dict.insert
    --         "searchEnabled" "" -- val.searchEnabled
        
    --     |> Dict.insert
    --         "returnEnabled" "" -- val.returnEnabled
        
    --     |> Dict.insert
    --         "sortEnabled" "" -- val.sortEnabled
        
    --     |> Dict.toList
    ""



{-| One of

* `OptionState_RequiresIndexDocuments`
* `OptionState_Processing`
* `OptionState_Active`
* `OptionState_FailedToValidate`

-}
type OptionState
    = OptionState_RequiresIndexDocuments
    | OptionState_Processing
    | OptionState_Active
    | OptionState_FailedToValidate



optionStateDecoder : JD.Decoder OptionState
optionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RequiresIndexDocuments" ->
                        JD.succeed OptionState_RequiresIndexDocuments

                    "Processing" ->
                        JD.succeed OptionState_Processing

                    "Active" ->
                        JD.succeed OptionState_Active

                    "FailedToValidate" ->
                        JD.succeed OptionState_FailedToValidate


                    _ ->
                        JD.fail "bad thing"
            )




optionStateToString : OptionState -> String
optionStateToString val =
    case val of
        OptionState_RequiresIndexDocuments ->
            "RequiresIndexDocuments"

        OptionState_Processing ->
            "Processing"

        OptionState_Active ->
            "Active"

        OptionState_FailedToValidate ->
            "FailedToValidate"




{-| <p>The status of domain configuration option.</p>
-}
type alias OptionStatus =
    { creationDate : Posix
    , updateDate : Posix
    , updateVersion : Maybe Int
    , state : OptionState
    , pendingDeletion : Maybe Bool
    }



optionStatusDecoder : JD.Decoder OptionStatus
optionStatusDecoder =
    JD.succeed OptionStatus
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UpdateDate", "updateDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UpdateVersion", "updateVersion"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["State", "state"]
            optionStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PendingDeletion", "pendingDeletion"]
            JD.bool
        )
        




optionStatusToString : OptionStatus -> String -- List (String, String)
optionStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "updateDate" "" -- val.updateDate
        
    --     |> Dict.insert
    --         "updateVersion" "" -- val.updateVersion
        
    --     |> Dict.insert
    --         "state" "" -- val.state
        
    --     |> Dict.insert
    --         "pendingDeletion" "" -- val.pendingDeletion
        
    --     |> Dict.toList
    ""



{-| One of

* `PartitionInstanceType_search.m1.small`
* `PartitionInstanceType_search.m1.large`
* `PartitionInstanceType_search.m2.xlarge`
* `PartitionInstanceType_search.m2.2xlarge`
* `PartitionInstanceType_search.m3.medium`
* `PartitionInstanceType_search.m3.large`
* `PartitionInstanceType_search.m3.xlarge`
* `PartitionInstanceType_search.m3.2xlarge`

-}
type PartitionInstanceType
    = PartitionInstanceType_search_m1_small
    | PartitionInstanceType_search_m1_large
    | PartitionInstanceType_search_m2_xlarge
    | PartitionInstanceType_search_m2_2xlarge
    | PartitionInstanceType_search_m3_medium
    | PartitionInstanceType_search_m3_large
    | PartitionInstanceType_search_m3_xlarge
    | PartitionInstanceType_search_m3_2xlarge



partitionInstanceTypeDecoder : JD.Decoder PartitionInstanceType
partitionInstanceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "search_m1_small" ->
                        JD.succeed PartitionInstanceType_search_m1_small

                    "search_m1_large" ->
                        JD.succeed PartitionInstanceType_search_m1_large

                    "search_m2_xlarge" ->
                        JD.succeed PartitionInstanceType_search_m2_xlarge

                    "search_m2_2xlarge" ->
                        JD.succeed PartitionInstanceType_search_m2_2xlarge

                    "search_m3_medium" ->
                        JD.succeed PartitionInstanceType_search_m3_medium

                    "search_m3_large" ->
                        JD.succeed PartitionInstanceType_search_m3_large

                    "search_m3_xlarge" ->
                        JD.succeed PartitionInstanceType_search_m3_xlarge

                    "search_m3_2xlarge" ->
                        JD.succeed PartitionInstanceType_search_m3_2xlarge


                    _ ->
                        JD.fail "bad thing"
            )




partitionInstanceTypeToString : PartitionInstanceType -> String
partitionInstanceTypeToString val =
    case val of
        PartitionInstanceType_search_m1_small ->
            "search_m1_small"

        PartitionInstanceType_search_m1_large ->
            "search_m1_large"

        PartitionInstanceType_search_m2_xlarge ->
            "search_m2_xlarge"

        PartitionInstanceType_search_m2_2xlarge ->
            "search_m2_2xlarge"

        PartitionInstanceType_search_m3_medium ->
            "search_m3_medium"

        PartitionInstanceType_search_m3_large ->
            "search_m3_large"

        PartitionInstanceType_search_m3_xlarge ->
            "search_m3_xlarge"

        PartitionInstanceType_search_m3_2xlarge ->
            "search_m3_2xlarge"




{-| <p>The request was rejected because it attempted to reference a resource that does not exist.</p>
-}
type alias ResourceNotFoundException =
    { 
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JD.succeed ResourceNotFoundException
        




resourceNotFoundExceptionToString : ResourceNotFoundException -> String -- List (String, String)
resourceNotFoundExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>The desired instance type and desired number of replicas of each index partition.</p>
-}
type alias ScalingParameters =
    { desiredInstanceType : Maybe PartitionInstanceType
    , desiredReplicationCount : Maybe Int
    , desiredPartitionCount : Maybe Int
    }



scalingParametersDecoder : JD.Decoder ScalingParameters
scalingParametersDecoder =
    JD.succeed ScalingParameters
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DesiredInstanceType", "desiredInstanceType"]
            partitionInstanceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DesiredReplicationCount", "desiredReplicationCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DesiredPartitionCount", "desiredPartitionCount"]
            JD.int
        )
        




scalingParametersToString : ScalingParameters -> String -- List (String, String)
scalingParametersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "desiredInstanceType" "" -- val.desiredInstanceType
        
    --     |> Dict.insert
    --         "desiredReplicationCount" "" -- val.desiredReplicationCount
        
    --     |> Dict.insert
    --         "desiredPartitionCount" "" -- val.desiredPartitionCount
        
    --     |> Dict.toList
    ""



{-| <p>The status and configuration of a search domain's scaling parameters. </p>
-}
type alias ScalingParametersStatus =
    { options : ScalingParameters
    , status : OptionStatus
    }



scalingParametersStatusDecoder : JD.Decoder ScalingParametersStatus
scalingParametersStatusDecoder =
    JD.succeed ScalingParametersStatus
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Options", "options"]
            scalingParametersDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Status", "status"]
            optionStatusDecoder
        )
        




scalingParametersStatusToString : ScalingParametersStatus -> String -- List (String, String)
scalingParametersStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "options" "" -- val.options
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p>The endpoint to which service requests can be submitted.</p>
-}
type alias ServiceEndpoint =
    { endpoint : Maybe String
    }



serviceEndpointDecoder : JD.Decoder ServiceEndpoint
serviceEndpointDecoder =
    JD.succeed ServiceEndpoint
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Endpoint", "endpoint"]
            JD.string
        )
        




serviceEndpointToString : ServiceEndpoint -> String -- List (String, String)
serviceEndpointToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "endpoint" "" -- val.endpoint
        
    --     |> Dict.toList
    ""



{-| <p>Configuration information for a search suggester. Each suggester has a unique name and specifies the text field you want to use for suggestions. The following options can be configured for a suggester: <code>FuzzyMatching</code>, <code>SortExpression</code>. </p>
-}
type alias Suggester =
    { suggesterName : String
    , documentSuggesterOptions : DocumentSuggesterOptions
    }



suggesterDecoder : JD.Decoder Suggester
suggesterDecoder =
    JD.succeed Suggester
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SuggesterName", "suggesterName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DocumentSuggesterOptions", "documentSuggesterOptions"]
            documentSuggesterOptionsDecoder
        )
        




suggesterToString : Suggester -> String -- List (String, String)
suggesterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "suggesterName" "" -- val.suggesterName
        
    --     |> Dict.insert
    --         "documentSuggesterOptions" "" -- val.documentSuggesterOptions
        
    --     |> Dict.toList
    ""



{-| One of

* `SuggesterFuzzyMatching_none`
* `SuggesterFuzzyMatching_low`
* `SuggesterFuzzyMatching_high`

-}
type SuggesterFuzzyMatching
    = SuggesterFuzzyMatching_none
    | SuggesterFuzzyMatching_low
    | SuggesterFuzzyMatching_high



suggesterFuzzyMatchingDecoder : JD.Decoder SuggesterFuzzyMatching
suggesterFuzzyMatchingDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "none" ->
                        JD.succeed SuggesterFuzzyMatching_none

                    "low" ->
                        JD.succeed SuggesterFuzzyMatching_low

                    "high" ->
                        JD.succeed SuggesterFuzzyMatching_high


                    _ ->
                        JD.fail "bad thing"
            )




suggesterFuzzyMatchingToString : SuggesterFuzzyMatching -> String
suggesterFuzzyMatchingToString val =
    case val of
        SuggesterFuzzyMatching_none ->
            "none"

        SuggesterFuzzyMatching_low ->
            "low"

        SuggesterFuzzyMatching_high ->
            "high"




{-| <p>The value of a <code>Suggester</code> and its current status.</p>
-}
type alias SuggesterStatus =
    { options : Suggester
    , status : OptionStatus
    }



suggesterStatusDecoder : JD.Decoder SuggesterStatus
suggesterStatusDecoder =
    JD.succeed SuggesterStatus
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Options", "options"]
            suggesterDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Status", "status"]
            optionStatusDecoder
        )
        




suggesterStatusToString : SuggesterStatus -> String -- List (String, String)
suggesterStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "options" "" -- val.options
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p>Options for a field that contains an array of text strings. Present if <code>IndexFieldType</code> specifies the field is of type <code>text-array</code>. A <code>text-array</code> field is always searchable. All options are enabled by default.</p>
-}
type alias TextArrayOptions =
    { defaultValue : Maybe String
    , sourceFields : Maybe String
    , returnEnabled : Maybe Bool
    , highlightEnabled : Maybe Bool
    , analysisScheme : Maybe String
    }



textArrayOptionsDecoder : JD.Decoder TextArrayOptions
textArrayOptionsDecoder =
    JD.succeed TextArrayOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceFields", "sourceFields"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReturnEnabled", "returnEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HighlightEnabled", "highlightEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AnalysisScheme", "analysisScheme"]
            JD.string
        )
        




textArrayOptionsToString : TextArrayOptions -> String -- List (String, String)
textArrayOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "sourceFields" "" -- val.sourceFields
        
    --     |> Dict.insert
    --         "returnEnabled" "" -- val.returnEnabled
        
    --     |> Dict.insert
    --         "highlightEnabled" "" -- val.highlightEnabled
        
    --     |> Dict.insert
    --         "analysisScheme" "" -- val.analysisScheme
        
    --     |> Dict.toList
    ""



{-| <p>Options for text field. Present if <code>IndexFieldType</code> specifies the field is of type <code>text</code>. A <code>text</code> field is always searchable. All options are enabled by default.</p>
-}
type alias TextOptions =
    { defaultValue : Maybe String
    , sourceField : Maybe String
    , returnEnabled : Maybe Bool
    , sortEnabled : Maybe Bool
    , highlightEnabled : Maybe Bool
    , analysisScheme : Maybe String
    }



textOptionsDecoder : JD.Decoder TextOptions
textOptionsDecoder =
    JD.succeed TextOptions
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceField", "sourceField"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReturnEnabled", "returnEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SortEnabled", "sortEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HighlightEnabled", "highlightEnabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AnalysisScheme", "analysisScheme"]
            JD.string
        )
        




textOptionsToString : TextOptions -> String -- List (String, String)
textOptionsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "sourceField" "" -- val.sourceField
        
    --     |> Dict.insert
    --         "returnEnabled" "" -- val.returnEnabled
        
    --     |> Dict.insert
    --         "sortEnabled" "" -- val.sortEnabled
        
    --     |> Dict.insert
    --         "highlightEnabled" "" -- val.highlightEnabled
        
    --     |> Dict.insert
    --         "analysisScheme" "" -- val.analysisScheme
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateAvailabilityOptions
-}
type alias UpdateAvailabilityOptionsResponse =
    { availabilityOptions : Maybe AvailabilityOptionsStatus
    }



updateAvailabilityOptionsResponseDecoder : JD.Decoder UpdateAvailabilityOptionsResponse
updateAvailabilityOptionsResponseDecoder =
    JD.succeed UpdateAvailabilityOptionsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AvailabilityOptions", "availabilityOptions"]
            availabilityOptionsStatusDecoder
        )
        




updateAvailabilityOptionsResponseToString : UpdateAvailabilityOptionsResponse -> String -- List (String, String)
updateAvailabilityOptionsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "availabilityOptions" "" -- val.availabilityOptions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateScalingParameters
-}
type alias UpdateScalingParametersResponse =
    { scalingParameters : ScalingParametersStatus
    }



updateScalingParametersResponseDecoder : JD.Decoder UpdateScalingParametersResponse
updateScalingParametersResponseDecoder =
    JD.succeed UpdateScalingParametersResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ScalingParameters", "scalingParameters"]
            scalingParametersStatusDecoder
        )
        




updateScalingParametersResponseToString : UpdateScalingParametersResponse -> String -- List (String, String)
updateScalingParametersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "scalingParameters" "" -- val.scalingParameters
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateServiceAccessPolicies
-}
type alias UpdateServiceAccessPoliciesResponse =
    { accessPolicies : AccessPoliciesStatus
    }



updateServiceAccessPoliciesResponseDecoder : JD.Decoder UpdateServiceAccessPoliciesResponse
updateServiceAccessPoliciesResponseDecoder =
    JD.succeed UpdateServiceAccessPoliciesResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AccessPolicies", "accessPolicies"]
            accessPoliciesStatusDecoder
        )
        




updateServiceAccessPoliciesResponseToString : UpdateServiceAccessPoliciesResponse -> String -- List (String, String)
updateServiceAccessPoliciesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accessPolicies" "" -- val.accessPolicies
        
    --     |> Dict.toList
    ""






{-| <p>Container for the parameters to the <code><a>BuildSuggester</a></code> operation. Specifies the name of the domain you want to update.</p>
-}
type alias BuildSuggestersRequest =
    { domainName : String
    }


{-| <p>Container for the parameters to the <code><a>CreateDomain</a></code> operation. Specifies a name for the new search domain.</p>
-}
type alias CreateDomainRequest =
    { domainName : String
    }


{-| <p>Container for the parameters to the <code><a>DefineAnalysisScheme</a></code> operation. Specifies the name of the domain you want to update and the analysis scheme configuration.</p>
-}
type alias DefineAnalysisSchemeRequest =
    { domainName : String
    , analysisScheme : AnalysisScheme
    }


{-| <p>Container for the parameters to the <code><a>DefineExpression</a></code> operation. Specifies the name of the domain you want to update and the expression you want to configure.</p>
-}
type alias DefineExpressionRequest =
    { domainName : String
    , expression : Expression
    }


{-| <p>Container for the parameters to the <code><a>DefineIndexField</a></code> operation. Specifies the name of the domain you want to update and the index field configuration.</p>
-}
type alias DefineIndexFieldRequest =
    { domainName : String
    , indexField : IndexField
    }


{-| <p>Container for the parameters to the <code><a>DefineSuggester</a></code> operation. Specifies the name of the domain you want to update and the suggester configuration.</p>
-}
type alias DefineSuggesterRequest =
    { domainName : String
    , suggester : Suggester
    }


{-| <p>Container for the parameters to the <code><a>DeleteAnalysisScheme</a></code> operation. Specifies the name of the domain you want to update and the analysis scheme you want to delete. </p>
-}
type alias DeleteAnalysisSchemeRequest =
    { domainName : String
    , analysisSchemeName : String
    }


{-| <p>Container for the parameters to the <code><a>DeleteDomain</a></code> operation. Specifies the name of the domain you want to delete.</p>
-}
type alias DeleteDomainRequest =
    { domainName : String
    }


{-| <p>Container for the parameters to the <code><a>DeleteExpression</a></code> operation. Specifies the name of the domain you want to update and the name of the expression you want to delete.</p>
-}
type alias DeleteExpressionRequest =
    { domainName : String
    , expressionName : String
    }


{-| <p>Container for the parameters to the <code><a>DeleteIndexField</a></code> operation. Specifies the name of the domain you want to update and the name of the index field you want to delete.</p>
-}
type alias DeleteIndexFieldRequest =
    { domainName : String
    , indexFieldName : String
    }


{-| <p>Container for the parameters to the <code><a>DeleteSuggester</a></code> operation. Specifies the name of the domain you want to update and name of the suggester you want to delete.</p>
-}
type alias DeleteSuggesterRequest =
    { domainName : String
    , suggesterName : String
    }


{-| <p>Container for the parameters to the <code><a>DescribeAnalysisSchemes</a></code> operation. Specifies the name of the domain you want to describe. To limit the response to particular analysis schemes, specify the names of the analysis schemes you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>. </p>
-}
type alias DescribeAnalysisSchemesRequest =
    { domainName : String
    , analysisSchemeNames : Maybe (List String)
    , deployed : Maybe Bool
    }


{-| <p>Container for the parameters to the <code><a>DescribeAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the Deployed option to <code>true</code>.</p>
-}
type alias DescribeAvailabilityOptionsRequest =
    { domainName : String
    , deployed : Maybe Bool
    }


{-| <p>Container for the parameters to the <code><a>DescribeDomains</a></code> operation. By default shows the status of all domains. To restrict the response to particular domains, specify the names of the domains you want to describe.</p>
-}
type alias DescribeDomainsRequest =
    { domainNames : Maybe (List String)
    }


{-| <p>Container for the parameters to the <code><a>DescribeDomains</a></code> operation. Specifies the name of the domain you want to describe. To restrict the response to particular expressions, specify the names of the expressions you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>
-}
type alias DescribeExpressionsRequest =
    { domainName : String
    , expressionNames : Maybe (List String)
    , deployed : Maybe Bool
    }


{-| <p>Container for the parameters to the <code><a>DescribeIndexFields</a></code> operation. Specifies the name of the domain you want to describe. To restrict the response to particular index fields, specify the names of the index fields you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>
-}
type alias DescribeIndexFieldsRequest =
    { domainName : String
    , fieldNames : Maybe (List String)
    , deployed : Maybe Bool
    }


{-| <p>Container for the parameters to the <code><a>DescribeScalingParameters</a></code> operation. Specifies the name of the domain you want to describe. </p>
-}
type alias DescribeScalingParametersRequest =
    { domainName : String
    }


{-| <p>Container for the parameters to the <code><a>DescribeServiceAccessPolicies</a></code> operation. Specifies the name of the domain you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>
-}
type alias DescribeServiceAccessPoliciesRequest =
    { domainName : String
    , deployed : Maybe Bool
    }


{-| <p>Container for the parameters to the <code><a>DescribeSuggester</a></code> operation. Specifies the name of the domain you want to describe. To restrict the response to particular suggesters, specify the names of the suggesters you want to describe. To show the active configuration and exclude any pending changes, set the <code>Deployed</code> option to <code>true</code>.</p>
-}
type alias DescribeSuggestersRequest =
    { domainName : String
    , suggesterNames : Maybe (List String)
    , deployed : Maybe Bool
    }


{-| <p>Container for the parameters to the <code><a>IndexDocuments</a></code> operation. Specifies the name of the domain you want to re-index.</p>
-}
type alias IndexDocumentsRequest =
    { domainName : String
    }


{-| <p>Container for the parameters to the <code><a>UpdateAvailabilityOptions</a></code> operation. Specifies the name of the domain you want to update and the Multi-AZ availability option.</p>
-}
type alias UpdateAvailabilityOptionsRequest =
    { domainName : String
    , multiAZ : Bool
    }


{-| <p>Container for the parameters to the <code><a>UpdateScalingParameters</a></code> operation. Specifies the name of the domain you want to update and the scaling parameters you want to configure.</p>
-}
type alias UpdateScalingParametersRequest =
    { domainName : String
    , scalingParameters : ScalingParameters
    }


{-| <p>Container for the parameters to the <code><a>UpdateServiceAccessPolicies</a></code> operation. Specifies the name of the domain you want to update and the access rules you want to configure.</p>
-}
type alias UpdateServiceAccessPoliciesRequest =
    { domainName : String
    , accessPolicies : String
    }








accessPoliciesStatusEncoder : AccessPoliciesStatus -> List (String, String)
accessPoliciesStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Options" data.options
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs optionStatusEncoder "Status" data.status
        
        










analysisOptionsEncoder : AnalysisOptions -> List (String, String)
analysisOptionsEncoder data =
    []
        
        
        |> (case data.synonyms of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Synonyms" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stopwords of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Stopwords" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stemmingDictionary of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StemmingDictionary" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.japaneseTokenizationDictionary of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "JapaneseTokenizationDictionary" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.algorithmicStemming of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs algorithmicStemmingToString "AlgorithmicStemming" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






analysisSchemeEncoder : AnalysisScheme -> List (String, String)
analysisSchemeEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "AnalysisSchemeName" data.analysisSchemeName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs analysisSchemeLanguageToString "AnalysisSchemeLanguage" data.analysisSchemeLanguage
        
        
        
        |> (case data.analysisOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs analysisOptionsEncoder "AnalysisOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










analysisSchemeStatusEncoder : AnalysisSchemeStatus -> List (String, String)
analysisSchemeStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs analysisSchemeEncoder "Options" data.options
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs optionStatusEncoder "Status" data.status
        
        






availabilityOptionsStatusEncoder : AvailabilityOptionsStatus -> List (String, String)
availabilityOptionsStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Options" data.options
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs optionStatusEncoder "Status" data.status
        
        






baseExceptionEncoder : BaseException -> List (String, String)
baseExceptionEncoder data =
    []
        
        
        |> (case data.code of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Code" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.message of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Message" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






buildSuggestersRequestEncoder : BuildSuggestersRequest -> List (String, String)
buildSuggestersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        






buildSuggestersResponseEncoder : BuildSuggestersResponse -> List (String, String)
buildSuggestersResponseEncoder data =
    []
        
        
        |> (case data.fieldNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "FieldNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createDomainRequestEncoder : CreateDomainRequest -> List (String, String)
createDomainRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        






createDomainResponseEncoder : CreateDomainResponse -> List (String, String)
createDomainResponseEncoder data =
    []
        
        
        |> (case data.domainStatus of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs domainStatusEncoder "DomainStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dateArrayOptionsEncoder : DateArrayOptions -> List (String, String)
dateArrayOptionsEncoder data =
    []
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceFields of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceFields" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.facetEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "FacetEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SearchEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.returnEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






dateOptionsEncoder : DateOptions -> List (String, String)
dateOptionsEncoder data =
    []
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceField of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceField" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.facetEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "FacetEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SearchEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.returnEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sortEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SortEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






defineAnalysisSchemeRequestEncoder : DefineAnalysisSchemeRequest -> List (String, String)
defineAnalysisSchemeRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs analysisSchemeEncoder "AnalysisScheme" data.analysisScheme
        
        






defineAnalysisSchemeResponseEncoder : DefineAnalysisSchemeResponse -> List (String, String)
defineAnalysisSchemeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs analysisSchemeStatusEncoder "AnalysisScheme" data.analysisScheme
        
        






defineExpressionRequestEncoder : DefineExpressionRequest -> List (String, String)
defineExpressionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs expressionEncoder "Expression" data.expression
        
        






defineExpressionResponseEncoder : DefineExpressionResponse -> List (String, String)
defineExpressionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs expressionStatusEncoder "Expression" data.expression
        
        






defineIndexFieldRequestEncoder : DefineIndexFieldRequest -> List (String, String)
defineIndexFieldRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs indexFieldEncoder "IndexField" data.indexField
        
        






defineIndexFieldResponseEncoder : DefineIndexFieldResponse -> List (String, String)
defineIndexFieldResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs indexFieldStatusEncoder "IndexField" data.indexField
        
        






defineSuggesterRequestEncoder : DefineSuggesterRequest -> List (String, String)
defineSuggesterRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs suggesterEncoder "Suggester" data.suggester
        
        






defineSuggesterResponseEncoder : DefineSuggesterResponse -> List (String, String)
defineSuggesterResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs suggesterStatusEncoder "Suggester" data.suggester
        
        






deleteAnalysisSchemeRequestEncoder : DeleteAnalysisSchemeRequest -> List (String, String)
deleteAnalysisSchemeRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "AnalysisSchemeName" data.analysisSchemeName
        
        






deleteAnalysisSchemeResponseEncoder : DeleteAnalysisSchemeResponse -> List (String, String)
deleteAnalysisSchemeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs analysisSchemeStatusEncoder "AnalysisScheme" data.analysisScheme
        
        






deleteDomainRequestEncoder : DeleteDomainRequest -> List (String, String)
deleteDomainRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        






deleteDomainResponseEncoder : DeleteDomainResponse -> List (String, String)
deleteDomainResponseEncoder data =
    []
        
        
        |> (case data.domainStatus of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs domainStatusEncoder "DomainStatus" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteExpressionRequestEncoder : DeleteExpressionRequest -> List (String, String)
deleteExpressionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ExpressionName" data.expressionName
        
        






deleteExpressionResponseEncoder : DeleteExpressionResponse -> List (String, String)
deleteExpressionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs expressionStatusEncoder "Expression" data.expression
        
        






deleteIndexFieldRequestEncoder : DeleteIndexFieldRequest -> List (String, String)
deleteIndexFieldRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "IndexFieldName" data.indexFieldName
        
        






deleteIndexFieldResponseEncoder : DeleteIndexFieldResponse -> List (String, String)
deleteIndexFieldResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs indexFieldStatusEncoder "IndexField" data.indexField
        
        






deleteSuggesterRequestEncoder : DeleteSuggesterRequest -> List (String, String)
deleteSuggesterRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SuggesterName" data.suggesterName
        
        






deleteSuggesterResponseEncoder : DeleteSuggesterResponse -> List (String, String)
deleteSuggesterResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs suggesterStatusEncoder "Suggester" data.suggester
        
        






describeAnalysisSchemesRequestEncoder : DescribeAnalysisSchemesRequest -> List (String, String)
describeAnalysisSchemesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> (case data.analysisSchemeNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "AnalysisSchemeNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deployed of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Deployed" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeAnalysisSchemesResponseEncoder : DescribeAnalysisSchemesResponse -> List (String, String)
describeAnalysisSchemesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs analysisSchemeStatusEncoder "") "AnalysisSchemes" data.analysisSchemes
        
        






describeAvailabilityOptionsRequestEncoder : DescribeAvailabilityOptionsRequest -> List (String, String)
describeAvailabilityOptionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> (case data.deployed of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Deployed" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeAvailabilityOptionsResponseEncoder : DescribeAvailabilityOptionsResponse -> List (String, String)
describeAvailabilityOptionsResponseEncoder data =
    []
        
        
        |> (case data.availabilityOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs availabilityOptionsStatusEncoder "AvailabilityOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeDomainsRequestEncoder : DescribeDomainsRequest -> List (String, String)
describeDomainsRequestEncoder data =
    []
        
        
        |> (case data.domainNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "DomainNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeDomainsResponseEncoder : DescribeDomainsResponse -> List (String, String)
describeDomainsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs domainStatusEncoder "") "DomainStatusList" data.domainStatusList
        
        






describeExpressionsRequestEncoder : DescribeExpressionsRequest -> List (String, String)
describeExpressionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> (case data.expressionNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "ExpressionNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deployed of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Deployed" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeExpressionsResponseEncoder : DescribeExpressionsResponse -> List (String, String)
describeExpressionsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs expressionStatusEncoder "") "Expressions" data.expressions
        
        






describeIndexFieldsRequestEncoder : DescribeIndexFieldsRequest -> List (String, String)
describeIndexFieldsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> (case data.fieldNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "FieldNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deployed of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Deployed" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeIndexFieldsResponseEncoder : DescribeIndexFieldsResponse -> List (String, String)
describeIndexFieldsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs indexFieldStatusEncoder "") "IndexFields" data.indexFields
        
        






describeScalingParametersRequestEncoder : DescribeScalingParametersRequest -> List (String, String)
describeScalingParametersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        






describeScalingParametersResponseEncoder : DescribeScalingParametersResponse -> List (String, String)
describeScalingParametersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs scalingParametersStatusEncoder "ScalingParameters" data.scalingParameters
        
        






describeServiceAccessPoliciesRequestEncoder : DescribeServiceAccessPoliciesRequest -> List (String, String)
describeServiceAccessPoliciesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> (case data.deployed of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Deployed" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeServiceAccessPoliciesResponseEncoder : DescribeServiceAccessPoliciesResponse -> List (String, String)
describeServiceAccessPoliciesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs accessPoliciesStatusEncoder "AccessPolicies" data.accessPolicies
        
        






describeSuggestersRequestEncoder : DescribeSuggestersRequest -> List (String, String)
describeSuggestersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> (case data.suggesterNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "SuggesterNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deployed of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Deployed" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






describeSuggestersResponseEncoder : DescribeSuggestersResponse -> List (String, String)
describeSuggestersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs suggesterStatusEncoder "") "Suggesters" data.suggesters
        
        






disabledOperationExceptionEncoder : DisabledOperationException -> List (String, String)
disabledOperationExceptionEncoder data =
    []
        






documentSuggesterOptionsEncoder : DocumentSuggesterOptions -> List (String, String)
documentSuggesterOptionsEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SourceField" data.sourceField
        
        
        
        |> (case data.fuzzyMatching of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs suggesterFuzzyMatchingToString "FuzzyMatching" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sortExpression of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SortExpression" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






domainStatusEncoder : DomainStatus -> List (String, String)
domainStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainId" data.domainId
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> (case data.aRN of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ARN" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.created of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Created" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.deleted of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Deleted" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.docService of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs serviceEndpointEncoder "DocService" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchService of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs serviceEndpointEncoder "SearchService" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RequiresIndexDocuments" data.requiresIndexDocuments
        
        
        
        |> (case data.processing of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "Processing" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchInstanceType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SearchInstanceType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchPartitionCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "SearchPartitionCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchInstanceCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "SearchInstanceCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.limits of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs limitsEncoder "Limits" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






doubleArrayOptionsEncoder : DoubleArrayOptions -> List (String, String)
doubleArrayOptionsEncoder data =
    []
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceFields of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceFields" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.facetEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "FacetEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SearchEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.returnEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






doubleOptionsEncoder : DoubleOptions -> List (String, String)
doubleOptionsEncoder data =
    []
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromFloat "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceField of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceField" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.facetEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "FacetEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SearchEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.returnEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sortEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SortEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






expressionEncoder : Expression -> List (String, String)
expressionEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ExpressionName" data.expressionName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ExpressionValue" data.expressionValue
        
        






expressionStatusEncoder : ExpressionStatus -> List (String, String)
expressionStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs expressionEncoder "Options" data.options
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs optionStatusEncoder "Status" data.status
        
        






indexDocumentsRequestEncoder : IndexDocumentsRequest -> List (String, String)
indexDocumentsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        






indexDocumentsResponseEncoder : IndexDocumentsResponse -> List (String, String)
indexDocumentsResponseEncoder data =
    []
        
        
        |> (case data.fieldNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "FieldNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






indexFieldEncoder : IndexField -> List (String, String)
indexFieldEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "IndexFieldName" data.indexFieldName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs indexFieldTypeToString "IndexFieldType" data.indexFieldType
        
        
        
        |> (case data.intOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs intOptionsEncoder "IntOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.doubleOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs doubleOptionsEncoder "DoubleOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.literalOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs literalOptionsEncoder "LiteralOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.textOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs textOptionsEncoder "TextOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dateOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dateOptionsEncoder "DateOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.latLonOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs latLonOptionsEncoder "LatLonOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.intArrayOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs intArrayOptionsEncoder "IntArrayOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.doubleArrayOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs doubleArrayOptionsEncoder "DoubleArrayOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.literalArrayOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs literalArrayOptionsEncoder "LiteralArrayOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.textArrayOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs textArrayOptionsEncoder "TextArrayOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.dateArrayOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs dateArrayOptionsEncoder "DateArrayOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






indexFieldStatusEncoder : IndexFieldStatus -> List (String, String)
indexFieldStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs indexFieldEncoder "Options" data.options
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs optionStatusEncoder "Status" data.status
        
        










intArrayOptionsEncoder : IntArrayOptions -> List (String, String)
intArrayOptionsEncoder data =
    []
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceFields of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceFields" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.facetEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "FacetEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SearchEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.returnEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






intOptionsEncoder : IntOptions -> List (String, String)
intOptionsEncoder data =
    []
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceField of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceField" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.facetEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "FacetEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SearchEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.returnEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sortEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SortEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






internalExceptionEncoder : InternalException -> List (String, String)
internalExceptionEncoder data =
    []
        






invalidTypeExceptionEncoder : InvalidTypeException -> List (String, String)
invalidTypeExceptionEncoder data =
    []
        






latLonOptionsEncoder : LatLonOptions -> List (String, String)
latLonOptionsEncoder data =
    []
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceField of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceField" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.facetEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "FacetEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SearchEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.returnEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sortEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SortEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






limitExceededExceptionEncoder : LimitExceededException -> List (String, String)
limitExceededExceptionEncoder data =
    []
        






limitsEncoder : Limits -> List (String, String)
limitsEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaximumReplicationCount" data.maximumReplicationCount
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaximumPartitionCount" data.maximumPartitionCount
        
        






listDomainNamesResponseEncoder : ListDomainNamesResponse -> List (String, String)
listDomainNamesResponseEncoder data =
    []
        
        
        |> (case data.domainNames of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "DomainNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






literalArrayOptionsEncoder : LiteralArrayOptions -> List (String, String)
literalArrayOptionsEncoder data =
    []
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceFields of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceFields" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.facetEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "FacetEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SearchEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.returnEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






literalOptionsEncoder : LiteralOptions -> List (String, String)
literalOptionsEncoder data =
    []
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceField of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceField" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.facetEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "FacetEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.searchEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SearchEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.returnEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sortEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SortEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










optionStatusEncoder : OptionStatus -> List (String, String)
optionStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreationDate" data.creationDate
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "UpdateDate" data.updateDate
        
        
        
        |> (case data.updateVersion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "UpdateVersion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs optionStateToString "State" data.state
        
        
        
        |> (case data.pendingDeletion of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PendingDeletion" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        










resourceNotFoundExceptionEncoder : ResourceNotFoundException -> List (String, String)
resourceNotFoundExceptionEncoder data =
    []
        






scalingParametersEncoder : ScalingParameters -> List (String, String)
scalingParametersEncoder data =
    []
        
        
        |> (case data.desiredInstanceType of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs partitionInstanceTypeToString "DesiredInstanceType" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.desiredReplicationCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DesiredReplicationCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.desiredPartitionCount of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DesiredPartitionCount" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






scalingParametersStatusEncoder : ScalingParametersStatus -> List (String, String)
scalingParametersStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs scalingParametersEncoder "Options" data.options
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs optionStatusEncoder "Status" data.status
        
        






serviceEndpointEncoder : ServiceEndpoint -> List (String, String)
serviceEndpointEncoder data =
    []
        
        
        |> (case data.endpoint of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Endpoint" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






suggesterEncoder : Suggester -> List (String, String)
suggesterEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "SuggesterName" data.suggesterName
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs documentSuggesterOptionsEncoder "DocumentSuggesterOptions" data.documentSuggesterOptions
        
        










suggesterStatusEncoder : SuggesterStatus -> List (String, String)
suggesterStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs suggesterEncoder "Options" data.options
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs optionStatusEncoder "Status" data.status
        
        






textArrayOptionsEncoder : TextArrayOptions -> List (String, String)
textArrayOptionsEncoder data =
    []
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceFields of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceFields" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.returnEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.highlightEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HighlightEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.analysisScheme of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AnalysisScheme" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






textOptionsEncoder : TextOptions -> List (String, String)
textOptionsEncoder data =
    []
        
        
        |> (case data.defaultValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "DefaultValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sourceField of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SourceField" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.returnEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ReturnEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sortEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SortEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.highlightEnabled of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HighlightEnabled" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.analysisScheme of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "AnalysisScheme" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateAvailabilityOptionsRequestEncoder : UpdateAvailabilityOptionsRequest -> List (String, String)
updateAvailabilityOptionsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "MultiAZ" data.multiAZ
        
        






updateAvailabilityOptionsResponseEncoder : UpdateAvailabilityOptionsResponse -> List (String, String)
updateAvailabilityOptionsResponseEncoder data =
    []
        
        
        |> (case data.availabilityOptions of
            Just value ->
                AWS.Core.Encode.addRecordToQueryArgs availabilityOptionsStatusEncoder "AvailabilityOptions" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






updateScalingParametersRequestEncoder : UpdateScalingParametersRequest -> List (String, String)
updateScalingParametersRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs scalingParametersEncoder "ScalingParameters" data.scalingParameters
        
        






updateScalingParametersResponseEncoder : UpdateScalingParametersResponse -> List (String, String)
updateScalingParametersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs scalingParametersStatusEncoder "ScalingParameters" data.scalingParameters
        
        






updateServiceAccessPoliciesRequestEncoder : UpdateServiceAccessPoliciesRequest -> List (String, String)
updateServiceAccessPoliciesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DomainName" data.domainName
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "AccessPolicies" data.accessPolicies
        
        






updateServiceAccessPoliciesResponseEncoder : UpdateServiceAccessPoliciesResponse -> List (String, String)
updateServiceAccessPoliciesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.addRecordToQueryArgs accessPoliciesStatusEncoder "AccessPolicies" data.accessPolicies
        
        



