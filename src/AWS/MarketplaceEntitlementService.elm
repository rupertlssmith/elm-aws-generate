module AWS.MarketplaceEntitlementService
    exposing
        ( service
        , getEntitlements
        , GetEntitlementsOptions
        , Entitlement
        , EntitlementValue
        , GetEntitlementFilterName(..)
        , GetEntitlementsResult
        , InternalServiceErrorException
        , InvalidParameterException
        , ThrottlingException
        )

{-| <fullname>AWS Marketplace Entitlement Service</fullname> <p>This reference provides descriptions of the AWS Marketplace Entitlement Service API.</p> <p>AWS Marketplace Entitlement Service is used to determine the entitlement of a customer to a given product. An entitlement represents capacity in a product owned by the customer. For example, a customer might own some number of users or seats in an SaaS application or some amount of data capacity in a multi-tenant database.</p> <p> <b>Getting Entitlement Records</b> </p> <ul> <li> <p> <i>GetEntitlements</i>- Gets the entitlements for a Marketplace product.</p> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [getEntitlements](#getEntitlements)
* [GetEntitlementsOptions](#GetEntitlementsOptions)


@docs getEntitlements,GetEntitlementsOptions

## Responses

* [GetEntitlementsResult](#GetEntitlementsResult)


@docs GetEntitlementsResult

## Records

* [Entitlement](#Entitlement)
* [EntitlementValue](#EntitlementValue)


@docs Entitlement,EntitlementValue

## Unions

* [GetEntitlementFilterName](#GetEntitlementFilterName)


@docs GetEntitlementFilterName

## Exceptions

* [InternalServiceErrorException](#InternalServiceErrorException)
* [InvalidParameterException](#InvalidParameterException)
* [ThrottlingException](#ThrottlingException)


@docs InternalServiceErrorException,InvalidParameterException,ThrottlingException

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
        "entitlement.marketplace"
        "2017-01-11"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setSigningName "aws-marketplace" >> AWS.Core.Service.setTargetPrefix "AWSMPEntitlementService")



-- OPERATIONS

{-| <p>GetEntitlements retrieves entitlement values for a given product. The results can be filtered based on customer identifier or product dimensions.</p>

__Required Parameters__

* `productCode` __:__ `String`


-}

getEntitlements :
  
    String ->
  
  
    ( GetEntitlementsOptions -> GetEntitlementsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetEntitlementsResult)

getEntitlements productCode setOptions =
    
    let
        requestInput = GetEntitlementsRequest
            
            productCode
            
            options.filter
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetEntitlementsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getEntitlementsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetEntitlements"
                
                (AWS.Core.Decode.ResultDecoder "GetEntitlementsResult" getEntitlementsResultDecoder)
                
            )



{-| Options for a getEntitlements request
-}
type alias GetEntitlementsOptions =
    {
    filter : Maybe (Dict String (List String)),nextToken : Maybe String,maxResults : Maybe Int
    }




{-| <p>An entitlement represents capacity in a product owned by the customer. For example, a customer might own some number of users or seats in an SaaS application or some amount of data capacity in a multi-tenant database.</p>
-}
type alias Entitlement =
    { productCode : Maybe String
    , dimension : Maybe String
    , customerIdentifier : Maybe String
    , value : Maybe EntitlementValue
    , expirationDate : Maybe Posix
    }



entitlementDecoder : JD.Decoder Entitlement
entitlementDecoder =
    JD.succeed Entitlement
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductCode", "productCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Dimension", "dimension"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomerIdentifier", "customerIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            entitlementValueDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExpirationDate", "expirationDate"]
            JDX.datetime
        )
        




entitlementToString : Entitlement -> String -- List (String, String)
entitlementToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "productCode" "" -- val.productCode
        
    --     |> Dict.insert
    --         "dimension" "" -- val.dimension
        
    --     |> Dict.insert
    --         "customerIdentifier" "" -- val.customerIdentifier
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "expirationDate" "" -- val.expirationDate
        
    --     |> Dict.toList
    ""



{-| <p>The EntitlementValue represents the amount of capacity that the customer is entitled to for the product.</p>
-}
type alias EntitlementValue =
    { integerValue : Maybe Int
    , doubleValue : Maybe Float
    , booleanValue : Maybe Bool
    , stringValue : Maybe String
    }



entitlementValueDecoder : JD.Decoder EntitlementValue
entitlementValueDecoder =
    JD.succeed EntitlementValue
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IntegerValue", "integerValue"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DoubleValue", "doubleValue"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BooleanValue", "booleanValue"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StringValue", "stringValue"]
            JD.string
        )
        




entitlementValueToString : EntitlementValue -> String -- List (String, String)
entitlementValueToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "integerValue" "" -- val.integerValue
        
    --     |> Dict.insert
    --         "doubleValue" "" -- val.doubleValue
        
    --     |> Dict.insert
    --         "booleanValue" "" -- val.booleanValue
        
    --     |> Dict.insert
    --         "stringValue" "" -- val.stringValue
        
    --     |> Dict.toList
    ""



{-| One of

* `GetEntitlementFilterName_CUSTOMER_IDENTIFIER`
* `GetEntitlementFilterName_DIMENSION`

-}
type GetEntitlementFilterName
    = GetEntitlementFilterName_CUSTOMER_IDENTIFIER
    | GetEntitlementFilterName_DIMENSION



getEntitlementFilterNameDecoder : JD.Decoder GetEntitlementFilterName
getEntitlementFilterNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CUSTOMER_IDENTIFIER" ->
                        JD.succeed GetEntitlementFilterName_CUSTOMER_IDENTIFIER

                    "DIMENSION" ->
                        JD.succeed GetEntitlementFilterName_DIMENSION


                    _ ->
                        JD.fail "bad thing"
            )




getEntitlementFilterNameToString : GetEntitlementFilterName -> String
getEntitlementFilterNameToString val =
    case val of
        GetEntitlementFilterName_CUSTOMER_IDENTIFIER ->
            "CUSTOMER_IDENTIFIER"

        GetEntitlementFilterName_DIMENSION ->
            "DIMENSION"




{-| Type of HTTP response from getEntitlemen
-}
type alias GetEntitlementsResult =
    { entitlements : Maybe (List Entitlement)
    , nextToken : Maybe String
    }



getEntitlementsResultDecoder : JD.Decoder GetEntitlementsResult
getEntitlementsResultDecoder =
    JD.succeed GetEntitlementsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Entitlements", "entitlements"]
            (JD.list entitlementDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getEntitlementsResultToString : GetEntitlementsResult -> String -- List (String, String)
getEntitlementsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "entitlements" "" -- val.entitlements
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.</p>
-}
type alias InternalServiceErrorException =
    { message : Maybe String
    }



internalServiceErrorExceptionDecoder : JD.Decoder InternalServiceErrorException
internalServiceErrorExceptionDecoder =
    JD.succeed InternalServiceErrorException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




internalServiceErrorExceptionToString : InternalServiceErrorException -> String -- List (String, String)
internalServiceErrorExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>One or more parameters in your request was invalid.</p>
-}
type alias InvalidParameterException =
    { message : Maybe String
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JD.succeed InvalidParameterException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




invalidParameterExceptionToString : InvalidParameterException -> String -- List (String, String)
invalidParameterExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>The calls to the GetEntitlements API are throttled.</p>
-}
type alias ThrottlingException =
    { message : Maybe String
    }



throttlingExceptionDecoder : JD.Decoder ThrottlingException
throttlingExceptionDecoder =
    JD.succeed ThrottlingException
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        




throttlingExceptionToString : ThrottlingException -> String -- List (String, String)
throttlingExceptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""






{-| <p>The GetEntitlementsRequest contains parameters for the GetEntitlements operation.</p>
-}
type alias GetEntitlementsRequest =
    { productCode : String
    , filter : Maybe (Dict String (List String))
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }






entitlementEncoder : Entitlement -> JE.Value
entitlementEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProductCode", data.productCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Dimension", data.dimension)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomerIdentifier", data.customerIdentifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (entitlementValueEncoder)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ExpirationDate", data.expirationDate)
        
        
        |> JE.object






entitlementValueEncoder : EntitlementValue -> JE.Value
entitlementValueEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("IntegerValue", data.integerValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("DoubleValue", data.doubleValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("BooleanValue", data.booleanValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StringValue", data.stringValue)
        
        
        |> JE.object










getEntitlementsRequestEncoder : GetEntitlementsRequest -> JE.Value
getEntitlementsRequestEncoder data =
    []
        
        
        |> (::) ("ProductCode", data.productCode |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.list (JE.string)))
            ("Filter", data.filter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        |> JE.object






getEntitlementsResultEncoder : GetEntitlementsResult -> JE.Value
getEntitlementsResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (entitlementEncoder))
            ("Entitlements", data.entitlements)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






internalServiceErrorExceptionEncoder : InternalServiceErrorException -> JE.Value
internalServiceErrorExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






invalidParameterExceptionEncoder : InvalidParameterException -> JE.Value
invalidParameterExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object






throttlingExceptionEncoder : ThrottlingException -> JE.Value
throttlingExceptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        |> JE.object





