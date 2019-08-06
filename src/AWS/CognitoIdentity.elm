module AWS.CognitoIdentity exposing
    ( service
    , createIdentityPool, CreateIdentityPoolOptions, deleteIdentities, deleteIdentityPool, describeIdentity, describeIdentityPool, getCredentialsForIdentity, GetCredentialsForIdentityOptions, getId, GetIdOptions, getIdentityPoolRoles, getOpenIdToken, GetOpenIdTokenOptions, getOpenIdTokenForDeveloperIdentity, GetOpenIdTokenForDeveloperIdentityOptions, listIdentities, ListIdentitiesOptions, listIdentityPools, ListIdentityPoolsOptions, listTagsForResource, lookupDeveloperIdentity, LookupDeveloperIdentityOptions, mergeDeveloperIdentities, setIdentityPoolRoles, SetIdentityPoolRolesOptions, tagResource, TagResourceOptions, unlinkDeveloperIdentity, unlinkIdentity, untagResource, UntagResourceOptions, updateIdentityPool, UpdateIdentityPoolOptions
    , DeleteIdentitiesResponse, GetCredentialsForIdentityResponse, GetIdResponse, GetIdentityPoolRolesResponse, GetOpenIdTokenForDeveloperIdentityResponse, GetOpenIdTokenResponse, IdentityDescription, IdentityPool, ListIdentitiesResponse, ListIdentityPoolsResponse, ListTagsForResourceResponse, LookupDeveloperIdentityResponse, MergeDeveloperIdentitiesResponse, TagResourceResponse, UntagResourceResponse
    , CognitoIdentityProvider, Credentials, IdentityPoolShortDescription, MappingRule, RoleMapping, RulesConfigurationType, UnprocessedIdentityId
    , AmbiguousRoleResolutionType(..), ErrorCode(..), MappingRuleMatchType(..), RoleMappingType(..)
    )

{-| <fullname>Amazon Cognito Federated Identities</fullname> <p>Amazon Cognito Federated Identities is a web service that delivers scoped temporary credentials to mobile devices and other untrusted environments. It uniquely identifies a device and supplies the user with a consistent identity over the lifetime of an application.</p> <p>Using Amazon Cognito Federated Identities, you can enable authentication with one or more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon Cognito user pool, and you can also choose to support unauthenticated access from your app. Cognito delivers a unique identifier for each user and acts as an OpenID token provider trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS credentials.</p> <p>For a description of the authentication flow from the Amazon Cognito Developer Guide see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Authentication Flow</a>.</p> <p>For more information see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html">Amazon Cognito Federated Identities</a>.</p>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [createIdentityPool](#createIdentityPool)
  - [CreateIdentityPoolOptions](#CreateIdentityPoolOptions)
  - [deleteIdentities](#deleteIdentities)
  - [deleteIdentityPool](#deleteIdentityPool)
  - [describeIdentity](#describeIdentity)
  - [describeIdentityPool](#describeIdentityPool)
  - [getCredentialsForIdentity](#getCredentialsForIdentity)
  - [GetCredentialsForIdentityOptions](#GetCredentialsForIdentityOptions)
  - [getId](#getId)
  - [GetIdOptions](#GetIdOptions)
  - [getIdentityPoolRoles](#getIdentityPoolRoles)
  - [getOpenIdToken](#getOpenIdToken)
  - [GetOpenIdTokenOptions](#GetOpenIdTokenOptions)
  - [getOpenIdTokenForDeveloperIdentity](#getOpenIdTokenForDeveloperIdentity)
  - [GetOpenIdTokenForDeveloperIdentityOptions](#GetOpenIdTokenForDeveloperIdentityOptions)
  - [listIdentities](#listIdentities)
  - [ListIdentitiesOptions](#ListIdentitiesOptions)
  - [listIdentityPools](#listIdentityPools)
  - [ListIdentityPoolsOptions](#ListIdentityPoolsOptions)
  - [listTagsForResource](#listTagsForResource)
  - [lookupDeveloperIdentity](#lookupDeveloperIdentity)
  - [LookupDeveloperIdentityOptions](#LookupDeveloperIdentityOptions)
  - [mergeDeveloperIdentities](#mergeDeveloperIdentities)
  - [setIdentityPoolRoles](#setIdentityPoolRoles)
  - [SetIdentityPoolRolesOptions](#SetIdentityPoolRolesOptions)
  - [tagResource](#tagResource)
  - [TagResourceOptions](#TagResourceOptions)
  - [unlinkDeveloperIdentity](#unlinkDeveloperIdentity)
  - [unlinkIdentity](#unlinkIdentity)
  - [untagResource](#untagResource)
  - [UntagResourceOptions](#UntagResourceOptions)
  - [updateIdentityPool](#updateIdentityPool)
  - [UpdateIdentityPoolOptions](#UpdateIdentityPoolOptions)

@docs createIdentityPool, CreateIdentityPoolOptions, deleteIdentities, deleteIdentityPool, describeIdentity, describeIdentityPool, getCredentialsForIdentity, GetCredentialsForIdentityOptions, getId, GetIdOptions, getIdentityPoolRoles, getOpenIdToken, GetOpenIdTokenOptions, getOpenIdTokenForDeveloperIdentity, GetOpenIdTokenForDeveloperIdentityOptions, listIdentities, ListIdentitiesOptions, listIdentityPools, ListIdentityPoolsOptions, listTagsForResource, lookupDeveloperIdentity, LookupDeveloperIdentityOptions, mergeDeveloperIdentities, setIdentityPoolRoles, SetIdentityPoolRolesOptions, tagResource, TagResourceOptions, unlinkDeveloperIdentity, unlinkIdentity, untagResource, UntagResourceOptions, updateIdentityPool, UpdateIdentityPoolOptions


## Responses

  - [DeleteIdentitiesResponse](#DeleteIdentitiesResponse)
  - [GetCredentialsForIdentityResponse](#GetCredentialsForIdentityResponse)
  - [GetIdResponse](#GetIdResponse)
  - [GetIdentityPoolRolesResponse](#GetIdentityPoolRolesResponse)
  - [GetOpenIdTokenForDeveloperIdentityResponse](#GetOpenIdTokenForDeveloperIdentityResponse)
  - [GetOpenIdTokenResponse](#GetOpenIdTokenResponse)
  - [IdentityDescription](#IdentityDescription)
  - [IdentityPool](#IdentityPool)
  - [ListIdentitiesResponse](#ListIdentitiesResponse)
  - [ListIdentityPoolsResponse](#ListIdentityPoolsResponse)
  - [ListTagsForResourceResponse](#ListTagsForResourceResponse)
  - [LookupDeveloperIdentityResponse](#LookupDeveloperIdentityResponse)
  - [MergeDeveloperIdentitiesResponse](#MergeDeveloperIdentitiesResponse)
  - [TagResourceResponse](#TagResourceResponse)
  - [UntagResourceResponse](#UntagResourceResponse)

@docs DeleteIdentitiesResponse, GetCredentialsForIdentityResponse, GetIdResponse, GetIdentityPoolRolesResponse, GetOpenIdTokenForDeveloperIdentityResponse, GetOpenIdTokenResponse, IdentityDescription, IdentityPool, ListIdentitiesResponse, ListIdentityPoolsResponse, ListTagsForResourceResponse, LookupDeveloperIdentityResponse, MergeDeveloperIdentitiesResponse, TagResourceResponse, UntagResourceResponse


## Records

  - [CognitoIdentityProvider](#CognitoIdentityProvider)
  - [Credentials](#Credentials)
  - [IdentityPoolShortDescription](#IdentityPoolShortDescription)
  - [MappingRule](#MappingRule)
  - [RoleMapping](#RoleMapping)
  - [RulesConfigurationType](#RulesConfigurationType)
  - [UnprocessedIdentityId](#UnprocessedIdentityId)

@docs CognitoIdentityProvider, Credentials, IdentityPoolShortDescription, MappingRule, RoleMapping, RulesConfigurationType, UnprocessedIdentityId


## Unions

  - [AmbiguousRoleResolutionType](#AmbiguousRoleResolutionType)
  - [ErrorCode](#ErrorCode)
  - [MappingRuleMatchType](#MappingRuleMatchType)
  - [RoleMappingType](#RoleMappingType)

@docs AmbiguousRoleResolutionType, ErrorCode, MappingRuleMatchType, RoleMappingType

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
import Json.Encode as JE
import Time exposing (Posix)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "cognito-identity"
        "2014-06-30"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSCognitoIdentityService")



-- OPERATIONS


{-|

<p>Creates a new identity pool. The identity pool is a store of user identity information that is specific to your AWS account. The limit on identity pools is 60 per account. The keys for <code>SupportedLoginProviders</code> are as follows:</p> <ul> <li> <p>Facebook: <code>graph.facebook.com</code> </p> </li> <li> <p>Google: <code>accounts.google.com</code> </p> </li> <li> <p>Amazon: <code>www.amazon.com</code> </p> </li> <li> <p>Twitter: <code>api.twitter.com</code> </p> </li> <li> <p>Digits: <code>www.digits.com</code> </p> </li> </ul> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `identityPoolName` **:** `String`
  - `allowUnauthenticatedIdentities` **:** `Bool`

-}
createIdentityPool :
    String
    -> Bool
    -> (CreateIdentityPoolOptions -> CreateIdentityPoolOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IdentityPool)
createIdentityPool identityPoolName allowUnauthenticatedIdentities setOptions =
    let
        requestInput =
            CreateIdentityPoolInput
                identityPoolName
                allowUnauthenticatedIdentities
                options.supportedLoginProviders
                options.developerProviderName
                options.openIdConnectProviderARNs
                options.cognitoIdentityProviders
                options.samlProviderARNs
                options.identityPoolTags

        options =
            setOptions (CreateIdentityPoolOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> createIdentityPoolInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateIdentityPool"
            (AWS.Core.Decode.ResultDecoder "IdentityPool" identityPoolDecoder)
        )


{-| Options for a createIdentityPool request
-}
type alias CreateIdentityPoolOptions =
    { supportedLoginProviders : Maybe (Dict String String)
    , developerProviderName : Maybe String
    , openIdConnectProviderARNs : Maybe (List String)
    , cognitoIdentityProviders : Maybe (List CognitoIdentityProvider)
    , samlProviderARNs : Maybe (List String)
    , identityPoolTags : Maybe (Dict String String)
    }


{-|

<p>Deletes identities from an identity pool. You can specify a list of 1-60 identities that you want to delete.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `identityIdsToDelete` **:** `(List String)`

-}
deleteIdentities :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteIdentitiesResponse)
deleteIdentities identityIdsToDelete =
    let
        requestInput =
            DeleteIdentitiesInput
                identityIdsToDelete
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteIdentitiesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteIdentities"
            (AWS.Core.Decode.ResultDecoder "DeleteIdentitiesResponse" deleteIdentitiesResponseDecoder)
        )


{-|

<p>Deletes an identity pool. Once a pool is deleted, users will not be able to authenticate with the pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `identityPoolId` **:** `String`

-}
deleteIdentityPool :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
deleteIdentityPool identityPoolId =
    let
        requestInput =
            DeleteIdentityPoolInput
                identityPoolId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> deleteIdentityPoolInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteIdentityPool"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Returns metadata related to the given identity, including when the identity was created and any associated linked logins.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `identityId` **:** `String`

-}
describeIdentity :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IdentityDescription)
describeIdentity identityId =
    let
        requestInput =
            DescribeIdentityInput
                identityId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeIdentityInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeIdentity"
            (AWS.Core.Decode.ResultDecoder "IdentityDescription" identityDescriptionDecoder)
        )


{-|

<p>Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `identityPoolId` **:** `String`

-}
describeIdentityPool :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IdentityPool)
describeIdentityPool identityPoolId =
    let
        requestInput =
            DescribeIdentityPoolInput
                identityPoolId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> describeIdentityPoolInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "DescribeIdentityPool"
            (AWS.Core.Decode.ResultDecoder "IdentityPool" identityPoolDecoder)
        )


{-|

<p>Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

**Required Parameters**

  - `identityId` **:** `String`

-}
getCredentialsForIdentity :
    String
    -> (GetCredentialsForIdentityOptions -> GetCredentialsForIdentityOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCredentialsForIdentityResponse)
getCredentialsForIdentity identityId setOptions =
    let
        requestInput =
            GetCredentialsForIdentityInput
                identityId
                options.logins
                options.customRoleArn

        options =
            setOptions (GetCredentialsForIdentityOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getCredentialsForIdentityInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetCredentialsForIdentity"
            (AWS.Core.Decode.ResultDecoder "GetCredentialsForIdentityResponse" getCredentialsForIdentityResponseDecoder)
        )


{-| Options for a getCredentialsForIdentity request
-}
type alias GetCredentialsForIdentityOptions =
    { logins : Maybe (Dict String String)
    , customRoleArn : Maybe String
    }


{-|

<p>Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

**Required Parameters**

  - `identityPoolId` **:** `String`

-}
getId :
    String
    -> (GetIdOptions -> GetIdOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetIdResponse)
getId identityPoolId setOptions =
    let
        requestInput =
            GetIdInput
                options.accountId
                identityPoolId
                options.logins

        options =
            setOptions (GetIdOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getIdInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetId"
            (AWS.Core.Decode.ResultDecoder "GetIdResponse" getIdResponseDecoder)
        )


{-| Options for a getId request
-}
type alias GetIdOptions =
    { accountId : Maybe String
    , logins : Maybe (Dict String String)
    }


{-|

<p>Gets the roles for an identity pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `identityPoolId` **:** `String`

-}
getIdentityPoolRoles :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetIdentityPoolRolesResponse)
getIdentityPoolRoles identityPoolId =
    let
        requestInput =
            GetIdentityPoolRolesInput
                identityPoolId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getIdentityPoolRolesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetIdentityPoolRoles"
            (AWS.Core.Decode.ResultDecoder "GetIdentityPoolRolesResponse" getIdentityPoolRolesResponseDecoder)
        )


{-|

<p>Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by <a>GetId</a>. You can optionally add additional logins for the identity. Supplying multiple logins creates an implicit link.</p> <p>The OpenId token is valid for 10 minutes.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

**Required Parameters**

  - `identityId` **:** `String`

-}
getOpenIdToken :
    String
    -> (GetOpenIdTokenOptions -> GetOpenIdTokenOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOpenIdTokenResponse)
getOpenIdToken identityId setOptions =
    let
        requestInput =
            GetOpenIdTokenInput
                identityId
                options.logins

        options =
            setOptions (GetOpenIdTokenOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getOpenIdTokenInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetOpenIdToken"
            (AWS.Core.Decode.ResultDecoder "GetOpenIdTokenResponse" getOpenIdTokenResponseDecoder)
        )


{-| Options for a getOpenIdToken request
-}
type alias GetOpenIdTokenOptions =
    { logins : Maybe (Dict String String)
    }


{-|

<p>Registers (or retrieves) a Cognito <code>IdentityId</code> and an OpenID Connect token for a user authenticated by your backend authentication process. Supplying multiple logins will create an implicit linked account. You can only specify one developer provider as part of the <code>Logins</code> map, which is linked to the identity pool. The developer provider is the "domain" by which Cognito will refer to your users.</p> <p>You can use <code>GetOpenIdTokenForDeveloperIdentity</code> to create a new identity and to link new logins (that is, user credentials issued by a public provider or developer provider) to an existing identity. When you want to create a new identity, the <code>IdentityId</code> should be null. When you want to associate a new login with an existing authenticated/unauthenticated identity, you can do so by providing the existing <code>IdentityId</code>. This API will create the identity in the specified <code>IdentityPoolId</code>.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `identityPoolId` **:** `String`
  - `logins` **:** `(Dict String String)`

-}
getOpenIdTokenForDeveloperIdentity :
    String
    -> Dict String String
    -> (GetOpenIdTokenForDeveloperIdentityOptions -> GetOpenIdTokenForDeveloperIdentityOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetOpenIdTokenForDeveloperIdentityResponse)
getOpenIdTokenForDeveloperIdentity identityPoolId logins setOptions =
    let
        requestInput =
            GetOpenIdTokenForDeveloperIdentityInput
                identityPoolId
                options.identityId
                logins
                options.tokenDuration

        options =
            setOptions (GetOpenIdTokenForDeveloperIdentityOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> getOpenIdTokenForDeveloperIdentityInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "GetOpenIdTokenForDeveloperIdentity"
            (AWS.Core.Decode.ResultDecoder "GetOpenIdTokenForDeveloperIdentityResponse" getOpenIdTokenForDeveloperIdentityResponseDecoder)
        )


{-| Options for a getOpenIdTokenForDeveloperIdentity request
-}
type alias GetOpenIdTokenForDeveloperIdentityOptions =
    { identityId : Maybe String
    , tokenDuration : Maybe Int
    }


{-|

<p>Lists the identities in an identity pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `identityPoolId` **:** `String`
  - `maxResults` **:** `Int`

-}
listIdentities :
    String
    -> Int
    -> (ListIdentitiesOptions -> ListIdentitiesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListIdentitiesResponse)
listIdentities identityPoolId maxResults setOptions =
    let
        requestInput =
            ListIdentitiesInput
                identityPoolId
                maxResults
                options.nextToken
                options.hideDisabled

        options =
            setOptions (ListIdentitiesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listIdentitiesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListIdentities"
            (AWS.Core.Decode.ResultDecoder "ListIdentitiesResponse" listIdentitiesResponseDecoder)
        )


{-| Options for a listIdentities request
-}
type alias ListIdentitiesOptions =
    { nextToken : Maybe String
    , hideDisabled : Maybe Bool
    }


{-|

<p>Lists all of the Cognito identity pools registered for your account.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `maxResults` **:** `Int`

-}
listIdentityPools :
    Int
    -> (ListIdentityPoolsOptions -> ListIdentityPoolsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListIdentityPoolsResponse)
listIdentityPools maxResults setOptions =
    let
        requestInput =
            ListIdentityPoolsInput
                maxResults
                options.nextToken

        options =
            setOptions (ListIdentityPoolsOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listIdentityPoolsInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListIdentityPools"
            (AWS.Core.Decode.ResultDecoder "ListIdentityPoolsResponse" listIdentityPoolsResponseDecoder)
        )


{-| Options for a listIdentityPools request
-}
type alias ListIdentityPoolsOptions =
    { nextToken : Maybe String
    }


{-|

<p>Lists the tags that are assigned to an Amazon Cognito identity pool.</p> <p>A tag is a label that you can apply to identity pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria.</p> <p>You can use this action up to 10 times per second, per account.</p>

**Required Parameters**

  - `resourceArn` **:** `String`

-}
listTagsForResource :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)
listTagsForResource resourceArn =
    let
        requestInput =
            ListTagsForResourceInput
                resourceArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> listTagsForResourceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "ListTagsForResource"
            (AWS.Core.Decode.ResultDecoder "ListTagsForResourceResponse" listTagsForResourceResponseDecoder)
        )


{-|

<p>Retrieves the <code>IdentityID</code> associated with a <code>DeveloperUserIdentifier</code> or the list of <code>DeveloperUserIdentifier</code> values associated with an <code>IdentityId</code> for an existing identity. Either <code>IdentityID</code> or <code>DeveloperUserIdentifier</code> must not be null. If you supply only one of these values, the other value will be searched in the database and returned as a part of the response. If you supply both, <code>DeveloperUserIdentifier</code> will be matched against <code>IdentityID</code>. If the values are verified against the database, the response returns both values and is the same as the request. Otherwise a <code>ResourceConflictException</code> is thrown.</p> <p> <code>LookupDeveloperIdentity</code> is intended for low-throughput control plane operations: for example, to enable customer service to locate an identity ID by username. If you are using it for higher-volume operations such as user authentication, your requests are likely to be throttled. <a>GetOpenIdTokenForDeveloperIdentity</a> is a better option for higher-volume operations for user authentication.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `identityPoolId` **:** `String`

-}
lookupDeveloperIdentity :
    String
    -> (LookupDeveloperIdentityOptions -> LookupDeveloperIdentityOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper LookupDeveloperIdentityResponse)
lookupDeveloperIdentity identityPoolId setOptions =
    let
        requestInput =
            LookupDeveloperIdentityInput
                identityPoolId
                options.identityId
                options.developerUserIdentifier
                options.maxResults
                options.nextToken

        options =
            setOptions (LookupDeveloperIdentityOptions Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> lookupDeveloperIdentityInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "LookupDeveloperIdentity"
            (AWS.Core.Decode.ResultDecoder "LookupDeveloperIdentityResponse" lookupDeveloperIdentityResponseDecoder)
        )


{-| Options for a lookupDeveloperIdentity request
-}
type alias LookupDeveloperIdentityOptions =
    { identityId : Maybe String
    , developerUserIdentifier : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Merges two users having different <code>IdentityId</code>s, existing in the same identity pool, and identified by the same developer provider. You can use this action to request that discrete users be merged and identified as a single user in the Cognito environment. Cognito associates the given source user (<code>SourceUserIdentifier</code>) with the <code>IdentityId</code> of the <code>DestinationUserIdentifier</code>. Only developer-authenticated users can be merged. If the users to be merged are associated with the same public provider, but as two different users, an exception will be thrown.</p> <p>The number of linked logins is limited to 20. So, the number of linked logins for the source user, <code>SourceUserIdentifier</code>, and the destination user, <code>DestinationUserIdentifier</code>, together should not be larger than 20. Otherwise, an exception will be thrown.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `sourceUserIdentifier` **:** `String`
  - `destinationUserIdentifier` **:** `String`
  - `developerProviderName` **:** `String`
  - `identityPoolId` **:** `String`

-}
mergeDeveloperIdentities :
    String
    -> String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper MergeDeveloperIdentitiesResponse)
mergeDeveloperIdentities sourceUserIdentifier destinationUserIdentifier developerProviderName identityPoolId =
    let
        requestInput =
            MergeDeveloperIdentitiesInput
                sourceUserIdentifier
                destinationUserIdentifier
                developerProviderName
                identityPoolId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> mergeDeveloperIdentitiesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "MergeDeveloperIdentities"
            (AWS.Core.Decode.ResultDecoder "MergeDeveloperIdentitiesResponse" mergeDeveloperIdentitiesResponseDecoder)
        )


{-|

<p>Sets the roles for an identity pool. These roles are used when making calls to <a>GetCredentialsForIdentity</a> action.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `identityPoolId` **:** `String`
  - `roles` **:** `(Dict String String)`

-}
setIdentityPoolRoles :
    String
    -> Dict String String
    -> (SetIdentityPoolRolesOptions -> SetIdentityPoolRolesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
setIdentityPoolRoles identityPoolId roles setOptions =
    let
        requestInput =
            SetIdentityPoolRolesInput
                identityPoolId
                roles
                options.roleMappings

        options =
            setOptions (SetIdentityPoolRolesOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> setIdentityPoolRolesInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "SetIdentityPoolRoles"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a setIdentityPoolRoles request
-}
type alias SetIdentityPoolRolesOptions =
    { roleMappings : Maybe (Dict String RoleMapping)
    }


{-|

<p>Assigns a set of tags to an Amazon Cognito identity pool. A tag is a label that you can use to categorize and manage identity pools in different ways, such as by purpose, owner, environment, or other criteria.</p> <p>Each tag consists of a key and value, both of which you define. A key is a general category for more specific values. For example, if you have two versions of an identity pool, one for testing and another for production, you might assign an <code>Environment</code> tag key to both identity pools. The value of this key might be <code>Test</code> for one identity pool and <code>Production</code> for the other.</p> <p>Tags are useful for cost tracking and access control. You can activate your tags so that they appear on the Billing and Cost Management console, where you can track the costs associated with your identity pools. In an IAM policy, you can constrain permissions for identity pools based on specific tags or tag values.</p> <p>You can use this action up to 5 times per second, per account. An identity pool can have as many as 50 tags.</p>

**Required Parameters**

  - `resourceArn` **:** `String`

-}
tagResource :
    String
    -> (TagResourceOptions -> TagResourceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceResponse)
tagResource resourceArn setOptions =
    let
        requestInput =
            TagResourceInput
                resourceArn
                options.tags

        options =
            setOptions (TagResourceOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> tagResourceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "TagResource"
            (AWS.Core.Decode.ResultDecoder "TagResourceResponse" tagResourceResponseDecoder)
        )


{-| Options for a tagResource request
-}
type alias TagResourceOptions =
    { tags : Maybe (Dict String String)
    }


{-|

<p>Unlinks a <code>DeveloperUserIdentifier</code> from an existing identity. Unlinked developer users will be considered new identities next time they are seen. If, for a given Cognito identity, you remove all federated identities as well as the developer user identifier, the Cognito identity becomes inaccessible.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `identityId` **:** `String`
  - `identityPoolId` **:** `String`
  - `developerProviderName` **:** `String`
  - `developerUserIdentifier` **:** `String`

-}
unlinkDeveloperIdentity :
    String
    -> String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
unlinkDeveloperIdentity identityId identityPoolId developerProviderName developerUserIdentifier =
    let
        requestInput =
            UnlinkDeveloperIdentityInput
                identityId
                identityPoolId
                developerProviderName
                developerUserIdentifier
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> unlinkDeveloperIdentityInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UnlinkDeveloperIdentity"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Unlinks a federated identity from an existing account. Unlinked logins will be considered new identities next time they are seen. Removing the last linked login will make this identity inaccessible.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

**Required Parameters**

  - `identityId` **:** `String`
  - `logins` **:** `(Dict String String)`
  - `loginsToRemove` **:** `(List String)`

-}
unlinkIdentity :
    String
    -> Dict String String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())
unlinkIdentity identityId logins loginsToRemove =
    let
        requestInput =
            UnlinkIdentityInput
                identityId
                logins
                loginsToRemove
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> unlinkIdentityInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UnlinkIdentity"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Removes the specified tags from an Amazon Cognito identity pool. You can use this action up to 5 times per second, per account</p>

**Required Parameters**

  - `resourceArn` **:** `String`

-}
untagResource :
    String
    -> (UntagResourceOptions -> UntagResourceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceResponse)
untagResource resourceArn setOptions =
    let
        requestInput =
            UntagResourceInput
                resourceArn
                options.tagKeys

        options =
            setOptions (UntagResourceOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> untagResourceInputEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UntagResource"
            (AWS.Core.Decode.ResultDecoder "UntagResourceResponse" untagResourceResponseDecoder)
        )


{-| Options for a untagResource request
-}
type alias UntagResourceOptions =
    { tagKeys : Maybe (List String)
    }


{-|

<p>Updates an identity pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

**Required Parameters**

  - `identityPoolId` **:** `String`
  - `identityPoolName` **:** `String`
  - `allowUnauthenticatedIdentities` **:** `Bool`

-}
updateIdentityPool :
    String
    -> String
    -> Bool
    -> (UpdateIdentityPoolOptions -> UpdateIdentityPoolOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper IdentityPool)
updateIdentityPool identityPoolId identityPoolName allowUnauthenticatedIdentities setOptions =
    let
        requestInput =
            IdentityPool
                identityPoolId
                identityPoolName
                allowUnauthenticatedIdentities
                options.supportedLoginProviders
                options.developerProviderName
                options.openIdConnectProviderARNs
                options.cognitoIdentityProviders
                options.samlProviderARNs
                options.identityPoolTags

        options =
            setOptions (UpdateIdentityPoolOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        -- []
        (requestInput
            |> identityPoolEncoder
            |> AWS.Core.Http.jsonBody
        )
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateIdentityPool"
            (AWS.Core.Decode.ResultDecoder "IdentityPool" identityPoolDecoder)
        )


{-| Options for a updateIdentityPool request
-}
type alias UpdateIdentityPoolOptions =
    { supportedLoginProviders : Maybe (Dict String String)
    , developerProviderName : Maybe String
    , openIdConnectProviderARNs : Maybe (List String)
    , cognitoIdentityProviders : Maybe (List CognitoIdentityProvider)
    , samlProviderARNs : Maybe (List String)
    , identityPoolTags : Maybe (Dict String String)
    }


{-| One of

  - `AmbiguousRoleResolutionType_AuthenticatedRole`
  - `AmbiguousRoleResolutionType_Deny`

-}
type AmbiguousRoleResolutionType
    = AmbiguousRoleResolutionType_AuthenticatedRole
    | AmbiguousRoleResolutionType_Deny


ambiguousRoleResolutionTypeDecoder : JD.Decoder AmbiguousRoleResolutionType
ambiguousRoleResolutionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AuthenticatedRole" ->
                        JD.succeed AmbiguousRoleResolutionType_AuthenticatedRole

                    "Deny" ->
                        JD.succeed AmbiguousRoleResolutionType_Deny

                    _ ->
                        JD.fail "bad thing"
            )


ambiguousRoleResolutionTypeToString : AmbiguousRoleResolutionType -> String
ambiguousRoleResolutionTypeToString val =
    case val of
        AmbiguousRoleResolutionType_AuthenticatedRole ->
            "AuthenticatedRole"

        AmbiguousRoleResolutionType_Deny ->
            "Deny"


{-|

<p>A provider representing an Amazon Cognito user pool and its client ID.</p>

-}
type alias CognitoIdentityProvider =
    { providerName : Maybe String
    , clientId : Maybe String
    , serverSideTokenCheck : Maybe Bool
    }


cognitoIdentityProviderDecoder : JD.Decoder CognitoIdentityProvider
cognitoIdentityProviderDecoder =
    JD.succeed CognitoIdentityProvider
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ProviderName", "providerName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClientId", "clientId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerSideTokenCheck", "serverSideTokenCheck" ]
                JD.bool
            )


cognitoIdentityProviderToString :
    CognitoIdentityProvider
    -> String -- List (String, String)
cognitoIdentityProviderToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "providerName" "" -- val.providerName
    --     |> Dict.insert
    --         "clientId" "" -- val.clientId
    --     |> Dict.insert
    --         "serverSideTokenCheck" "" -- val.serverSideTokenCheck
    --     |> Dict.toList
    ""


{-|

<p>Credentials for the provided identity ID.</p>

-}
type alias Credentials =
    { accessKeyId : Maybe String
    , secretKey : Maybe String
    , sessionToken : Maybe String
    , expiration : Maybe Posix
    }


credentialsDecoder : JD.Decoder Credentials
credentialsDecoder =
    JD.succeed Credentials
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccessKeyId", "accessKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SecretKey", "secretKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SessionToken", "sessionToken" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Expiration", "expiration" ]
                JDX.datetime
            )


credentialsToString :
    Credentials
    -> String -- List (String, String)
credentialsToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "accessKeyId" "" -- val.accessKeyId
    --     |> Dict.insert
    --         "secretKey" "" -- val.secretKey
    --     |> Dict.insert
    --         "sessionToken" "" -- val.sessionToken
    --     |> Dict.insert
    --         "expiration" "" -- val.expiration
    --     |> Dict.toList
    ""


{-| Type of HTTP response from deleteIdentities
-}
type alias DeleteIdentitiesResponse =
    { unprocessedIdentityIds : Maybe (List UnprocessedIdentityId)
    }


deleteIdentitiesResponseDecoder : JD.Decoder DeleteIdentitiesResponse
deleteIdentitiesResponseDecoder =
    JD.succeed DeleteIdentitiesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UnprocessedIdentityIds", "unprocessedIdentityIds" ]
                (JD.list unprocessedIdentityIdDecoder)
            )


deleteIdentitiesResponseToString :
    DeleteIdentitiesResponse
    -> String -- List (String, String)
deleteIdentitiesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "unprocessedIdentityIds" "" -- val.unprocessedIdentityIds
    --     |> Dict.toList
    ""


{-| One of

  - `ErrorCode_AccessDenied`
  - `ErrorCode_InternalServerError`

-}
type ErrorCode
    = ErrorCode_AccessDenied
    | ErrorCode_InternalServerError


errorCodeDecoder : JD.Decoder ErrorCode
errorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AccessDenied" ->
                        JD.succeed ErrorCode_AccessDenied

                    "InternalServerError" ->
                        JD.succeed ErrorCode_InternalServerError

                    _ ->
                        JD.fail "bad thing"
            )


errorCodeToString : ErrorCode -> String
errorCodeToString val =
    case val of
        ErrorCode_AccessDenied ->
            "AccessDenied"

        ErrorCode_InternalServerError ->
            "InternalServerError"


{-| Type of HTTP response from getCredentialsForIdentity
-}
type alias GetCredentialsForIdentityResponse =
    { identityId : Maybe String
    , credentials : Maybe Credentials
    }


getCredentialsForIdentityResponseDecoder : JD.Decoder GetCredentialsForIdentityResponse
getCredentialsForIdentityResponseDecoder =
    JD.succeed GetCredentialsForIdentityResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityId", "identityId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Credentials", "credentials" ]
                credentialsDecoder
            )


getCredentialsForIdentityResponseToString :
    GetCredentialsForIdentityResponse
    -> String -- List (String, String)
getCredentialsForIdentityResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityId" "" -- val.identityId
    --     |> Dict.insert
    --         "credentials" "" -- val.credentials
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getId
-}
type alias GetIdResponse =
    { identityId : Maybe String
    }


getIdResponseDecoder : JD.Decoder GetIdResponse
getIdResponseDecoder =
    JD.succeed GetIdResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityId", "identityId" ]
                JD.string
            )


getIdResponseToString :
    GetIdResponse
    -> String -- List (String, String)
getIdResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityId" "" -- val.identityId
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getIdentityPoolRoles
-}
type alias GetIdentityPoolRolesResponse =
    { identityPoolId : Maybe String
    , roles : Maybe (Dict String String)
    , roleMappings : Maybe (Dict String RoleMapping)
    }


getIdentityPoolRolesResponseDecoder : JD.Decoder GetIdentityPoolRolesResponse
getIdentityPoolRolesResponseDecoder =
    JD.succeed GetIdentityPoolRolesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityPoolId", "identityPoolId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Roles", "roles" ]
                (AWS.Core.Decode.dict JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RoleMappings", "roleMappings" ]
                (AWS.Core.Decode.dict roleMappingDecoder)
            )


getIdentityPoolRolesResponseToString :
    GetIdentityPoolRolesResponse
    -> String -- List (String, String)
getIdentityPoolRolesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityPoolId" "" -- val.identityPoolId
    --     |> Dict.insert
    --         "roles" "" -- val.roles
    --     |> Dict.insert
    --         "roleMappings" "" -- val.roleMappings
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getOpenIdTokenForDeveloperIdentity
-}
type alias GetOpenIdTokenForDeveloperIdentityResponse =
    { identityId : Maybe String
    , token : Maybe String
    }


getOpenIdTokenForDeveloperIdentityResponseDecoder : JD.Decoder GetOpenIdTokenForDeveloperIdentityResponse
getOpenIdTokenForDeveloperIdentityResponseDecoder =
    JD.succeed GetOpenIdTokenForDeveloperIdentityResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityId", "identityId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Token", "token" ]
                JD.string
            )


getOpenIdTokenForDeveloperIdentityResponseToString :
    GetOpenIdTokenForDeveloperIdentityResponse
    -> String -- List (String, String)
getOpenIdTokenForDeveloperIdentityResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityId" "" -- val.identityId
    --     |> Dict.insert
    --         "token" "" -- val.token
    --     |> Dict.toList
    ""


{-| Type of HTTP response from getOpenIdToken
-}
type alias GetOpenIdTokenResponse =
    { identityId : Maybe String
    , token : Maybe String
    }


getOpenIdTokenResponseDecoder : JD.Decoder GetOpenIdTokenResponse
getOpenIdTokenResponseDecoder =
    JD.succeed GetOpenIdTokenResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityId", "identityId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Token", "token" ]
                JD.string
            )


getOpenIdTokenResponseToString :
    GetOpenIdTokenResponse
    -> String -- List (String, String)
getOpenIdTokenResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityId" "" -- val.identityId
    --     |> Dict.insert
    --         "token" "" -- val.token
    --     |> Dict.toList
    ""


{-| Type of HTTP response from identityDes
-}
type alias IdentityDescription =
    { identityId : Maybe String
    , logins : Maybe (List String)
    , creationDate : Maybe Posix
    , lastModifiedDate : Maybe Posix
    }


identityDescriptionDecoder : JD.Decoder IdentityDescription
identityDescriptionDecoder =
    JD.succeed IdentityDescription
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityId", "identityId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Logins", "logins" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreationDate", "creationDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastModifiedDate", "lastModifiedDate" ]
                JDX.datetime
            )


identityDescriptionToString :
    IdentityDescription
    -> String -- List (String, String)
identityDescriptionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityId" "" -- val.identityId
    --     |> Dict.insert
    --         "logins" "" -- val.logins
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
    --     |> Dict.insert
    --         "lastModifiedDate" "" -- val.lastModifiedDate
    --     |> Dict.toList
    ""


{-| Type of HTTP response from iden
-}
type alias IdentityPool =
    { identityPoolId : String
    , identityPoolName : String
    , allowUnauthenticatedIdentities : Bool
    , supportedLoginProviders : Maybe (Dict String String)
    , developerProviderName : Maybe String
    , openIdConnectProviderARNs : Maybe (List String)
    , cognitoIdentityProviders : Maybe (List CognitoIdentityProvider)
    , samlProviderARNs : Maybe (List String)
    , identityPoolTags : Maybe (Dict String String)
    }


identityPoolDecoder : JD.Decoder IdentityPool
identityPoolDecoder =
    JD.succeed IdentityPool
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "IdentityPoolId", "identityPoolId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "IdentityPoolName", "identityPoolName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AllowUnauthenticatedIdentities", "allowUnauthenticatedIdentities" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SupportedLoginProviders", "supportedLoginProviders" ]
                (AWS.Core.Decode.dict JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeveloperProviderName", "developerProviderName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OpenIdConnectProviderARNs", "openIdConnectProviderARNs" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CognitoIdentityProviders", "cognitoIdentityProviders" ]
                (JD.list cognitoIdentityProviderDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SamlProviderARNs", "samlProviderARNs" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityPoolTags", "identityPoolTags" ]
                (AWS.Core.Decode.dict JD.string)
            )


identityPoolToString :
    IdentityPool
    -> String -- List (String, String)
identityPoolToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityPoolId" "" -- val.identityPoolId
    --     |> Dict.insert
    --         "identityPoolName" "" -- val.identityPoolName
    --     |> Dict.insert
    --         "allowUnauthenticatedIdentities" "" -- val.allowUnauthenticatedIdentities
    --     |> Dict.insert
    --         "supportedLoginProviders" "" -- val.supportedLoginProviders
    --     |> Dict.insert
    --         "developerProviderName" "" -- val.developerProviderName
    --     |> Dict.insert
    --         "openIdConnectProviderARNs" "" -- val.openIdConnectProviderARNs
    --     |> Dict.insert
    --         "cognitoIdentityProviders" "" -- val.cognitoIdentityProviders
    --     |> Dict.insert
    --         "samlProviderARNs" "" -- val.samlProviderARNs
    --     |> Dict.insert
    --         "identityPoolTags" "" -- val.identityPoolTags
    --     |> Dict.toList
    ""


{-|

<p>A description of the identity pool.</p>

-}
type alias IdentityPoolShortDescription =
    { identityPoolId : Maybe String
    , identityPoolName : Maybe String
    }


identityPoolShortDescriptionDecoder : JD.Decoder IdentityPoolShortDescription
identityPoolShortDescriptionDecoder =
    JD.succeed IdentityPoolShortDescription
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityPoolId", "identityPoolId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityPoolName", "identityPoolName" ]
                JD.string
            )


identityPoolShortDescriptionToString :
    IdentityPoolShortDescription
    -> String -- List (String, String)
identityPoolShortDescriptionToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityPoolId" "" -- val.identityPoolId
    --     |> Dict.insert
    --         "identityPoolName" "" -- val.identityPoolName
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listIdentities
-}
type alias ListIdentitiesResponse =
    { identityPoolId : Maybe String
    , identities : Maybe (List IdentityDescription)
    , nextToken : Maybe String
    }


listIdentitiesResponseDecoder : JD.Decoder ListIdentitiesResponse
listIdentitiesResponseDecoder =
    JD.succeed ListIdentitiesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityPoolId", "identityPoolId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Identities", "identities" ]
                (JD.list identityDescriptionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


listIdentitiesResponseToString :
    ListIdentitiesResponse
    -> String -- List (String, String)
listIdentitiesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityPoolId" "" -- val.identityPoolId
    --     |> Dict.insert
    --         "identities" "" -- val.identities
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listIdentityPools
-}
type alias ListIdentityPoolsResponse =
    { identityPools : Maybe (List IdentityPoolShortDescription)
    , nextToken : Maybe String
    }


listIdentityPoolsResponseDecoder : JD.Decoder ListIdentityPoolsResponse
listIdentityPoolsResponseDecoder =
    JD.succeed ListIdentityPoolsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityPools", "identityPools" ]
                (JD.list identityPoolShortDescriptionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


listIdentityPoolsResponseToString :
    ListIdentityPoolsResponse
    -> String -- List (String, String)
listIdentityPoolsResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityPools" "" -- val.identityPools
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tags : Maybe (Dict String String)
    }


listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JD.succeed ListTagsForResourceResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (AWS.Core.Decode.dict JD.string)
            )


listTagsForResourceResponseToString :
    ListTagsForResourceResponse
    -> String -- List (String, String)
listTagsForResourceResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "tags" "" -- val.tags
    --     |> Dict.toList
    ""


{-| Type of HTTP response from lookupDeveloperIdentity
-}
type alias LookupDeveloperIdentityResponse =
    { identityId : Maybe String
    , developerUserIdentifierList : Maybe (List String)
    , nextToken : Maybe String
    }


lookupDeveloperIdentityResponseDecoder : JD.Decoder LookupDeveloperIdentityResponse
lookupDeveloperIdentityResponseDecoder =
    JD.succeed LookupDeveloperIdentityResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityId", "identityId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DeveloperUserIdentifierList", "developerUserIdentifierList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NextToken", "nextToken" ]
                JD.string
            )


lookupDeveloperIdentityResponseToString :
    LookupDeveloperIdentityResponse
    -> String -- List (String, String)
lookupDeveloperIdentityResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityId" "" -- val.identityId
    --     |> Dict.insert
    --         "developerUserIdentifierList" "" -- val.developerUserIdentifierList
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
    --     |> Dict.toList
    ""


{-|

<p>A rule that maps a claim name, a claim value, and a match type to a role ARN.</p>

-}
type alias MappingRule =
    { claim : String
    , matchType : MappingRuleMatchType
    , value : String
    , roleARN : String
    }


mappingRuleDecoder : JD.Decoder MappingRule
mappingRuleDecoder =
    JD.succeed MappingRule
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Claim", "claim" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MatchType", "matchType" ]
                mappingRuleMatchTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Value", "value" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "RoleARN", "roleARN" ]
                JD.string
            )


mappingRuleToString :
    MappingRule
    -> String -- List (String, String)
mappingRuleToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "claim" "" -- val.claim
    --     |> Dict.insert
    --         "matchType" "" -- val.matchType
    --     |> Dict.insert
    --         "value" "" -- val.value
    --     |> Dict.insert
    --         "roleARN" "" -- val.roleARN
    --     |> Dict.toList
    ""


{-| One of

  - `MappingRuleMatchType_Equals`
  - `MappingRuleMatchType_Contains`
  - `MappingRuleMatchType_StartsWith`
  - `MappingRuleMatchType_NotEqual`

-}
type MappingRuleMatchType
    = MappingRuleMatchType_Equals
    | MappingRuleMatchType_Contains
    | MappingRuleMatchType_StartsWith
    | MappingRuleMatchType_NotEqual


mappingRuleMatchTypeDecoder : JD.Decoder MappingRuleMatchType
mappingRuleMatchTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Equals" ->
                        JD.succeed MappingRuleMatchType_Equals

                    "Contains" ->
                        JD.succeed MappingRuleMatchType_Contains

                    "StartsWith" ->
                        JD.succeed MappingRuleMatchType_StartsWith

                    "NotEqual" ->
                        JD.succeed MappingRuleMatchType_NotEqual

                    _ ->
                        JD.fail "bad thing"
            )


mappingRuleMatchTypeToString : MappingRuleMatchType -> String
mappingRuleMatchTypeToString val =
    case val of
        MappingRuleMatchType_Equals ->
            "Equals"

        MappingRuleMatchType_Contains ->
            "Contains"

        MappingRuleMatchType_StartsWith ->
            "StartsWith"

        MappingRuleMatchType_NotEqual ->
            "NotEqual"


{-| Type of HTTP response from mergeDeveloperIdentities
-}
type alias MergeDeveloperIdentitiesResponse =
    { identityId : Maybe String
    }


mergeDeveloperIdentitiesResponseDecoder : JD.Decoder MergeDeveloperIdentitiesResponse
mergeDeveloperIdentitiesResponseDecoder =
    JD.succeed MergeDeveloperIdentitiesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityId", "identityId" ]
                JD.string
            )


mergeDeveloperIdentitiesResponseToString :
    MergeDeveloperIdentitiesResponse
    -> String -- List (String, String)
mergeDeveloperIdentitiesResponseToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityId" "" -- val.identityId
    --     |> Dict.toList
    ""


{-|

<p>A role mapping.</p>

-}
type alias RoleMapping =
    { type_ : RoleMappingType
    , ambiguousRoleResolution : Maybe AmbiguousRoleResolutionType
    , rulesConfiguration : Maybe RulesConfigurationType
    }


roleMappingDecoder : JD.Decoder RoleMapping
roleMappingDecoder =
    JD.succeed RoleMapping
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Type", "type" ]
                roleMappingTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AmbiguousRoleResolution", "ambiguousRoleResolution" ]
                ambiguousRoleResolutionTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RulesConfiguration", "rulesConfiguration" ]
                rulesConfigurationTypeDecoder
            )


roleMappingToString :
    RoleMapping
    -> String -- List (String, String)
roleMappingToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "type_" "" -- val.type_
    --     |> Dict.insert
    --         "ambiguousRoleResolution" "" -- val.ambiguousRoleResolution
    --     |> Dict.insert
    --         "rulesConfiguration" "" -- val.rulesConfiguration
    --     |> Dict.toList
    ""


{-| One of

  - `RoleMappingType_Token`
  - `RoleMappingType_Rules`

-}
type RoleMappingType
    = RoleMappingType_Token
    | RoleMappingType_Rules


roleMappingTypeDecoder : JD.Decoder RoleMappingType
roleMappingTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Token" ->
                        JD.succeed RoleMappingType_Token

                    "Rules" ->
                        JD.succeed RoleMappingType_Rules

                    _ ->
                        JD.fail "bad thing"
            )


roleMappingTypeToString : RoleMappingType -> String
roleMappingTypeToString val =
    case val of
        RoleMappingType_Token ->
            "Token"

        RoleMappingType_Rules ->
            "Rules"


{-|

<p>A container for rules.</p>

-}
type alias RulesConfigurationType =
    { rules : List MappingRule
    }


rulesConfigurationTypeDecoder : JD.Decoder RulesConfigurationType
rulesConfigurationTypeDecoder =
    JD.succeed RulesConfigurationType
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Rules", "rules" ]
                (JD.list mappingRuleDecoder)
            )


rulesConfigurationTypeToString :
    RulesConfigurationType
    -> String -- List (String, String)
rulesConfigurationTypeToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "rules" "" -- val.rules
    --     |> Dict.toList
    ""


{-| Type of HTTP response from tagResource
-}
type alias TagResourceResponse =
    {}


tagResourceResponseDecoder : JD.Decoder TagResourceResponse
tagResourceResponseDecoder =
    JD.succeed TagResourceResponse


tagResourceResponseToString :
    TagResourceResponse
    -> String -- List (String, String)
tagResourceResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-|

<p>An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and IdentityId.</p>

-}
type alias UnprocessedIdentityId =
    { identityId : Maybe String
    , errorCode : Maybe ErrorCode
    }


unprocessedIdentityIdDecoder : JD.Decoder UnprocessedIdentityId
unprocessedIdentityIdDecoder =
    JD.succeed UnprocessedIdentityId
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IdentityId", "identityId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorCode", "errorCode" ]
                errorCodeDecoder
            )


unprocessedIdentityIdToString :
    UnprocessedIdentityId
    -> String -- List (String, String)
unprocessedIdentityIdToString val =
    -- Dict.empty
    --     |> Dict.insert
    --         "identityId" "" -- val.identityId
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
    --     |> Dict.toList
    ""


{-| Type of HTTP response from untagResource
-}
type alias UntagResourceResponse =
    {}


untagResourceResponseDecoder : JD.Decoder UntagResourceResponse
untagResourceResponseDecoder =
    JD.succeed UntagResourceResponse


untagResourceResponseToString :
    UntagResourceResponse
    -> String -- List (String, String)
untagResourceResponseToString val =
    -- Dict.empty
    --     |> Dict.toList
    ""


{-|

<p>Input to the CreateIdentityPool action.</p>

-}
type alias CreateIdentityPoolInput =
    { identityPoolName : String
    , allowUnauthenticatedIdentities : Bool
    , supportedLoginProviders : Maybe (Dict String String)
    , developerProviderName : Maybe String
    , openIdConnectProviderARNs : Maybe (List String)
    , cognitoIdentityProviders : Maybe (List CognitoIdentityProvider)
    , samlProviderARNs : Maybe (List String)
    , identityPoolTags : Maybe (Dict String String)
    }


{-|

<p>Input to the <code>DeleteIdentities</code> action.</p>

-}
type alias DeleteIdentitiesInput =
    { identityIdsToDelete : List String
    }


{-|

<p>Input to the DeleteIdentityPool action.</p>

-}
type alias DeleteIdentityPoolInput =
    { identityPoolId : String
    }


{-|

<p>Input to the <code>DescribeIdentity</code> action.</p>

-}
type alias DescribeIdentityInput =
    { identityId : String
    }


{-|

<p>Input to the DescribeIdentityPool action.</p>

-}
type alias DescribeIdentityPoolInput =
    { identityPoolId : String
    }


{-|

<p>Input to the <code>GetCredentialsForIdentity</code> action.</p>

-}
type alias GetCredentialsForIdentityInput =
    { identityId : String
    , logins : Maybe (Dict String String)
    , customRoleArn : Maybe String
    }


{-|

<p>Input to the GetId action.</p>

-}
type alias GetIdInput =
    { accountId : Maybe String
    , identityPoolId : String
    , logins : Maybe (Dict String String)
    }


{-|

<p>Input to the <code>GetIdentityPoolRoles</code> action.</p>

-}
type alias GetIdentityPoolRolesInput =
    { identityPoolId : String
    }


{-|

<p>Input to the <code>GetOpenIdTokenForDeveloperIdentity</code> action.</p>

-}
type alias GetOpenIdTokenForDeveloperIdentityInput =
    { identityPoolId : String
    , identityId : Maybe String
    , logins : Dict String String
    , tokenDuration : Maybe Int
    }


{-|

<p>Input to the GetOpenIdToken action.</p>

-}
type alias GetOpenIdTokenInput =
    { identityId : String
    , logins : Maybe (Dict String String)
    }


{-|

<p>Input to the ListIdentities action.</p>

-}
type alias ListIdentitiesInput =
    { identityPoolId : String
    , maxResults : Int
    , nextToken : Maybe String
    , hideDisabled : Maybe Bool
    }


{-|

<p>Input to the ListIdentityPools action.</p>

-}
type alias ListIdentityPoolsInput =
    { maxResults : Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceInput =
    { resourceArn : String
    }


{-|

<p>Input to the <code>LookupDeveloperIdentityInput</code> action.</p>

-}
type alias LookupDeveloperIdentityInput =
    { identityPoolId : String
    , identityId : Maybe String
    , developerUserIdentifier : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-|

<p>Input to the <code>MergeDeveloperIdentities</code> action.</p>

-}
type alias MergeDeveloperIdentitiesInput =
    { sourceUserIdentifier : String
    , destinationUserIdentifier : String
    , developerProviderName : String
    , identityPoolId : String
    }


{-|

<p>Input to the <code>SetIdentityPoolRoles</code> action.</p>

-}
type alias SetIdentityPoolRolesInput =
    { identityPoolId : String
    , roles : Dict String String
    , roleMappings : Maybe (Dict String RoleMapping)
    }


{-| undefined
-}
type alias TagResourceInput =
    { resourceArn : String
    , tags : Maybe (Dict String String)
    }


{-|

<p>Input to the <code>UnlinkDeveloperIdentity</code> action.</p>

-}
type alias UnlinkDeveloperIdentityInput =
    { identityId : String
    , identityPoolId : String
    , developerProviderName : String
    , developerUserIdentifier : String
    }


{-|

<p>Input to the UnlinkIdentity action.</p>

-}
type alias UnlinkIdentityInput =
    { identityId : String
    , logins : Dict String String
    , loginsToRemove : List String
    }


{-| undefined
-}
type alias UntagResourceInput =
    { resourceArn : String
    , tagKeys : Maybe (List String)
    }


cognitoIdentityProviderEncoder : CognitoIdentityProvider -> JE.Value
cognitoIdentityProviderEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ProviderName", data.providerName )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "ClientId", data.clientId )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "ServerSideTokenCheck", data.serverSideTokenCheck )
        |> JE.object


createIdentityPoolInputEncoder : CreateIdentityPoolInput -> JE.Value
createIdentityPoolInputEncoder data =
    []
        |> (::) ( "IdentityPoolName", data.identityPoolName |> JE.string )
        |> (::) ( "AllowUnauthenticatedIdentities", data.allowUnauthenticatedIdentities |> JE.bool )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "SupportedLoginProviders", data.supportedLoginProviders )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DeveloperProviderName", data.developerProviderName )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "OpenIdConnectProviderARNs", data.openIdConnectProviderARNs )
        |> AWS.Core.Encode.optionalMember
            (JE.list cognitoIdentityProviderEncoder)
            ( "CognitoIdentityProviders", data.cognitoIdentityProviders )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SamlProviderARNs", data.samlProviderARNs )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "IdentityPoolTags", data.identityPoolTags )
        |> JE.object


credentialsEncoder : Credentials -> JE.Value
credentialsEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccessKeyId", data.accessKeyId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SecretKey", data.secretKey )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "SessionToken", data.sessionToken )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "Expiration", data.expiration )
        |> JE.object


deleteIdentitiesInputEncoder : DeleteIdentitiesInput -> JE.Value
deleteIdentitiesInputEncoder data =
    []
        |> (::) ( "IdentityIdsToDelete", data.identityIdsToDelete |> JE.list JE.string )
        |> JE.object


deleteIdentitiesResponseEncoder : DeleteIdentitiesResponse -> JE.Value
deleteIdentitiesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list unprocessedIdentityIdEncoder)
            ( "UnprocessedIdentityIds", data.unprocessedIdentityIds )
        |> JE.object


deleteIdentityPoolInputEncoder : DeleteIdentityPoolInput -> JE.Value
deleteIdentityPoolInputEncoder data =
    []
        |> (::) ( "IdentityPoolId", data.identityPoolId |> JE.string )
        |> JE.object


describeIdentityInputEncoder : DescribeIdentityInput -> JE.Value
describeIdentityInputEncoder data =
    []
        |> (::) ( "IdentityId", data.identityId |> JE.string )
        |> JE.object


describeIdentityPoolInputEncoder : DescribeIdentityPoolInput -> JE.Value
describeIdentityPoolInputEncoder data =
    []
        |> (::) ( "IdentityPoolId", data.identityPoolId |> JE.string )
        |> JE.object


getCredentialsForIdentityInputEncoder : GetCredentialsForIdentityInput -> JE.Value
getCredentialsForIdentityInputEncoder data =
    []
        |> (::) ( "IdentityId", data.identityId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "Logins", data.logins )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "CustomRoleArn", data.customRoleArn )
        |> JE.object


getCredentialsForIdentityResponseEncoder : GetCredentialsForIdentityResponse -> JE.Value
getCredentialsForIdentityResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityId", data.identityId )
        |> AWS.Core.Encode.optionalMember
            credentialsEncoder
            ( "Credentials", data.credentials )
        |> JE.object


getIdInputEncoder : GetIdInput -> JE.Value
getIdInputEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "AccountId", data.accountId )
        |> (::) ( "IdentityPoolId", data.identityPoolId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "Logins", data.logins )
        |> JE.object


getIdResponseEncoder : GetIdResponse -> JE.Value
getIdResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityId", data.identityId )
        |> JE.object


getIdentityPoolRolesInputEncoder : GetIdentityPoolRolesInput -> JE.Value
getIdentityPoolRolesInputEncoder data =
    []
        |> (::) ( "IdentityPoolId", data.identityPoolId |> JE.string )
        |> JE.object


getIdentityPoolRolesResponseEncoder : GetIdentityPoolRolesResponse -> JE.Value
getIdentityPoolRolesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityPoolId", data.identityPoolId )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "Roles", data.roles )
        |> AWS.Core.Encode.optionalMember
            roleMappingEncoder
            ( "RoleMappings", data.roleMappings )
        |> JE.object


getOpenIdTokenForDeveloperIdentityInputEncoder : GetOpenIdTokenForDeveloperIdentityInput -> JE.Value
getOpenIdTokenForDeveloperIdentityInputEncoder data =
    []
        |> (::) ( "IdentityPoolId", data.identityPoolId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityId", data.identityId )
        |> (::) ( "Logins", data.logins |> JE.dict identity JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "TokenDuration", data.tokenDuration )
        |> JE.object


getOpenIdTokenForDeveloperIdentityResponseEncoder : GetOpenIdTokenForDeveloperIdentityResponse -> JE.Value
getOpenIdTokenForDeveloperIdentityResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityId", data.identityId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Token", data.token )
        |> JE.object


getOpenIdTokenInputEncoder : GetOpenIdTokenInput -> JE.Value
getOpenIdTokenInputEncoder data =
    []
        |> (::) ( "IdentityId", data.identityId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "Logins", data.logins )
        |> JE.object


getOpenIdTokenResponseEncoder : GetOpenIdTokenResponse -> JE.Value
getOpenIdTokenResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityId", data.identityId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "Token", data.token )
        |> JE.object


identityDescriptionEncoder : IdentityDescription -> JE.Value
identityDescriptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityId", data.identityId )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "Logins", data.logins )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "CreationDate", data.creationDate )
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ( "LastModifiedDate", data.lastModifiedDate )
        |> JE.object


identityPoolEncoder : IdentityPool -> JE.Value
identityPoolEncoder data =
    []
        |> (::) ( "IdentityPoolId", data.identityPoolId |> JE.string )
        |> (::) ( "IdentityPoolName", data.identityPoolName |> JE.string )
        |> (::) ( "AllowUnauthenticatedIdentities", data.allowUnauthenticatedIdentities |> JE.bool )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "SupportedLoginProviders", data.supportedLoginProviders )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DeveloperProviderName", data.developerProviderName )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "OpenIdConnectProviderARNs", data.openIdConnectProviderARNs )
        |> AWS.Core.Encode.optionalMember
            (JE.list cognitoIdentityProviderEncoder)
            ( "CognitoIdentityProviders", data.cognitoIdentityProviders )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "SamlProviderARNs", data.samlProviderARNs )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "IdentityPoolTags", data.identityPoolTags )
        |> JE.object


identityPoolShortDescriptionEncoder : IdentityPoolShortDescription -> JE.Value
identityPoolShortDescriptionEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityPoolId", data.identityPoolId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityPoolName", data.identityPoolName )
        |> JE.object


listIdentitiesInputEncoder : ListIdentitiesInput -> JE.Value
listIdentitiesInputEncoder data =
    []
        |> (::) ( "IdentityPoolId", data.identityPoolId |> JE.string )
        |> (::) ( "MaxResults", data.maxResults |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> AWS.Core.Encode.optionalMember
            JE.bool
            ( "HideDisabled", data.hideDisabled )
        |> JE.object


listIdentitiesResponseEncoder : ListIdentitiesResponse -> JE.Value
listIdentitiesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityPoolId", data.identityPoolId )
        |> AWS.Core.Encode.optionalMember
            (JE.list identityDescriptionEncoder)
            ( "Identities", data.identities )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listIdentityPoolsInputEncoder : ListIdentityPoolsInput -> JE.Value
listIdentityPoolsInputEncoder data =
    []
        |> (::) ( "MaxResults", data.maxResults |> JE.int )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listIdentityPoolsResponseEncoder : ListIdentityPoolsResponse -> JE.Value
listIdentityPoolsResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.list identityPoolShortDescriptionEncoder)
            ( "IdentityPools", data.identityPools )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


listTagsForResourceInputEncoder : ListTagsForResourceInput -> JE.Value
listTagsForResourceInputEncoder data =
    []
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> JE.object


listTagsForResourceResponseEncoder : ListTagsForResourceResponse -> JE.Value
listTagsForResourceResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "Tags", data.tags )
        |> JE.object


lookupDeveloperIdentityInputEncoder : LookupDeveloperIdentityInput -> JE.Value
lookupDeveloperIdentityInputEncoder data =
    []
        |> (::) ( "IdentityPoolId", data.identityPoolId |> JE.string )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityId", data.identityId )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "DeveloperUserIdentifier", data.developerUserIdentifier )
        |> AWS.Core.Encode.optionalMember
            JE.int
            ( "MaxResults", data.maxResults )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


lookupDeveloperIdentityResponseEncoder : LookupDeveloperIdentityResponse -> JE.Value
lookupDeveloperIdentityResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityId", data.identityId )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "DeveloperUserIdentifierList", data.developerUserIdentifierList )
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "NextToken", data.nextToken )
        |> JE.object


mappingRuleEncoder : MappingRule -> JE.Value
mappingRuleEncoder data =
    []
        |> (::) ( "Claim", data.claim |> JE.string )
        |> (::) ( "MatchType", data.matchType |> (mappingRuleMatchTypeToString >> JE.string) )
        |> (::) ( "Value", data.value |> JE.string )
        |> (::) ( "RoleARN", data.roleARN |> JE.string )
        |> JE.object


mergeDeveloperIdentitiesInputEncoder : MergeDeveloperIdentitiesInput -> JE.Value
mergeDeveloperIdentitiesInputEncoder data =
    []
        |> (::) ( "SourceUserIdentifier", data.sourceUserIdentifier |> JE.string )
        |> (::) ( "DestinationUserIdentifier", data.destinationUserIdentifier |> JE.string )
        |> (::) ( "DeveloperProviderName", data.developerProviderName |> JE.string )
        |> (::) ( "IdentityPoolId", data.identityPoolId |> JE.string )
        |> JE.object


mergeDeveloperIdentitiesResponseEncoder : MergeDeveloperIdentitiesResponse -> JE.Value
mergeDeveloperIdentitiesResponseEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityId", data.identityId )
        |> JE.object


roleMappingEncoder : RoleMapping -> JE.Value
roleMappingEncoder data =
    []
        |> (::) ( "Type", data.type_ |> (roleMappingTypeToString >> JE.string) )
        |> AWS.Core.Encode.optionalMember
            (ambiguousRoleResolutionTypeToString >> JE.string)
            ( "AmbiguousRoleResolution", data.ambiguousRoleResolution )
        |> AWS.Core.Encode.optionalMember
            rulesConfigurationTypeEncoder
            ( "RulesConfiguration", data.rulesConfiguration )
        |> JE.object


rulesConfigurationTypeEncoder : RulesConfigurationType -> JE.Value
rulesConfigurationTypeEncoder data =
    []
        |> (::) ( "Rules", data.rules |> JE.list mappingRuleEncoder )
        |> JE.object


setIdentityPoolRolesInputEncoder : SetIdentityPoolRolesInput -> JE.Value
setIdentityPoolRolesInputEncoder data =
    []
        |> (::) ( "IdentityPoolId", data.identityPoolId |> JE.string )
        |> (::) ( "Roles", data.roles |> JE.dict identity JE.string )
        |> AWS.Core.Encode.optionalMember
            roleMappingEncoder
            ( "RoleMappings", data.roleMappings )
        |> JE.object


tagResourceInputEncoder : TagResourceInput -> JE.Value
tagResourceInputEncoder data =
    []
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity JE.string)
            ( "Tags", data.tags )
        |> JE.object


tagResourceResponseEncoder : TagResourceResponse -> JE.Value
tagResourceResponseEncoder data =
    []
        |> JE.object


unlinkDeveloperIdentityInputEncoder : UnlinkDeveloperIdentityInput -> JE.Value
unlinkDeveloperIdentityInputEncoder data =
    []
        |> (::) ( "IdentityId", data.identityId |> JE.string )
        |> (::) ( "IdentityPoolId", data.identityPoolId |> JE.string )
        |> (::) ( "DeveloperProviderName", data.developerProviderName |> JE.string )
        |> (::) ( "DeveloperUserIdentifier", data.developerUserIdentifier |> JE.string )
        |> JE.object


unlinkIdentityInputEncoder : UnlinkIdentityInput -> JE.Value
unlinkIdentityInputEncoder data =
    []
        |> (::) ( "IdentityId", data.identityId |> JE.string )
        |> (::) ( "Logins", data.logins |> JE.dict identity JE.string )
        |> (::) ( "LoginsToRemove", data.loginsToRemove |> JE.list JE.string )
        |> JE.object


unprocessedIdentityIdEncoder : UnprocessedIdentityId -> JE.Value
unprocessedIdentityIdEncoder data =
    []
        |> AWS.Core.Encode.optionalMember
            JE.string
            ( "IdentityId", data.identityId )
        |> AWS.Core.Encode.optionalMember
            (errorCodeToString >> JE.string)
            ( "ErrorCode", data.errorCode )
        |> JE.object


untagResourceInputEncoder : UntagResourceInput -> JE.Value
untagResourceInputEncoder data =
    []
        |> (::) ( "ResourceArn", data.resourceArn |> JE.string )
        |> AWS.Core.Encode.optionalMember
            (JE.list JE.string)
            ( "TagKeys", data.tagKeys )
        |> JE.object


untagResourceResponseEncoder : UntagResourceResponse -> JE.Value
untagResourceResponseEncoder data =
    []
        |> JE.object
