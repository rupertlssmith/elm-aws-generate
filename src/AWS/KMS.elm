module AWS.KMS
    exposing
        ( service
        , cancelKeyDeletion
        , connectCustomKeyStore
        , createAlias
        , createCustomKeyStore
        , createGrant
        , CreateGrantOptions
        , createKey
        , CreateKeyOptions
        , decrypt
        , DecryptOptions
        , deleteAlias
        , deleteCustomKeyStore
        , deleteImportedKeyMaterial
        , describeCustomKeyStores
        , DescribeCustomKeyStoresOptions
        , describeKey
        , DescribeKeyOptions
        , disableKey
        , disableKeyRotation
        , disconnectCustomKeyStore
        , enableKey
        , enableKeyRotation
        , encrypt
        , EncryptOptions
        , generateDataKey
        , GenerateDataKeyOptions
        , generateDataKeyWithoutPlaintext
        , GenerateDataKeyWithoutPlaintextOptions
        , generateRandom
        , GenerateRandomOptions
        , getKeyPolicy
        , getKeyRotationStatus
        , getParametersForImport
        , importKeyMaterial
        , ImportKeyMaterialOptions
        , listAliases
        , ListAliasesOptions
        , listGrants
        , ListGrantsOptions
        , listKeyPolicies
        , ListKeyPoliciesOptions
        , listKeys
        , ListKeysOptions
        , listResourceTags
        , ListResourceTagsOptions
        , listRetirableGrants
        , ListRetirableGrantsOptions
        , putKeyPolicy
        , PutKeyPolicyOptions
        , reEncrypt
        , ReEncryptOptions
        , retireGrant
        , RetireGrantOptions
        , revokeGrant
        , scheduleKeyDeletion
        , ScheduleKeyDeletionOptions
        , tagResource
        , untagResource
        , updateAlias
        , updateCustomKeyStore
        , UpdateCustomKeyStoreOptions
        , updateKeyDescription
        , AlgorithmSpec(..)
        , AliasListEntry
        , CancelKeyDeletionResponse
        , ConnectCustomKeyStoreResponse
        , ConnectionErrorCodeType(..)
        , ConnectionStateType(..)
        , CreateCustomKeyStoreResponse
        , CreateGrantResponse
        , CreateKeyResponse
        , CustomKeyStoresListEntry
        , DataKeySpec(..)
        , DecryptResponse
        , DeleteCustomKeyStoreResponse
        , DescribeCustomKeyStoresResponse
        , DescribeKeyResponse
        , DisconnectCustomKeyStoreResponse
        , EncryptResponse
        , ExpirationModelType(..)
        , GenerateDataKeyResponse
        , GenerateDataKeyWithoutPlaintextResponse
        , GenerateRandomResponse
        , GetKeyPolicyResponse
        , GetKeyRotationStatusResponse
        , GetParametersForImportResponse
        , GrantConstraints
        , GrantListEntry
        , GrantOperation(..)
        , ImportKeyMaterialResponse
        , KeyListEntry
        , KeyManagerType(..)
        , KeyMetadata
        , KeyState(..)
        , KeyUsageType(..)
        , ListAliasesResponse
        , ListGrantsResponse
        , ListKeyPoliciesResponse
        , ListKeysResponse
        , ListResourceTagsResponse
        , OriginType(..)
        , ReEncryptResponse
        , ScheduleKeyDeletionResponse
        , Tag
        , UpdateCustomKeyStoreResponse
        , WrappingKeySpec(..)
        )

{-| <fullname>AWS Key Management Service</fullname> <p>AWS Key Management Service (AWS KMS) is an encryption and key management web service. This guide describes the AWS KMS operations that you can call programmatically. For general information about AWS KMS, see the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/"> <i>AWS Key Management Service Developer Guide</i> </a>.</p> <note> <p>AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .Net, macOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWS KMS and other AWS services. For example, the SDKs take care of tasks such as signing requests (see below), managing errors, and retrying requests automatically. For more information about the AWS SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p> </note> <p>We recommend that you use the AWS SDKs to make programmatic API calls to AWS KMS.</p> <p>Clients must support TLS (Transport Layer Security) 1.0. We recommend TLS 1.2. Clients must also support cipher suites with Perfect Forward Secrecy (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve Ephemeral Diffie-Hellman (ECDHE). Most modern systems such as Java 7 and later support these modes.</p> <p> <b>Signing Requests</b> </p> <p>Requests must be signed by using an access key ID and a secret access key. We strongly recommend that you <i>do not</i> use your AWS account (root) access key ID and secret key for everyday work with AWS KMS. Instead, use the access key ID and secret access key for an IAM user. You can also use the AWS Security Token Service to generate temporary security credentials that you can use to sign requests.</p> <p>All AWS KMS operations require <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> <p> <b>Logging API Requests</b> </p> <p>AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and related events for your AWS account and delivers them to an Amazon S3 bucket that you specify. By using the information collected by CloudTrail, you can determine what requests were made to AWS KMS, who made the request, when it was made, and so on. To learn more about CloudTrail, including how to turn it on and find your log files, see the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/">AWS CloudTrail User Guide</a>.</p> <p> <b>Additional Resources</b> </p> <p>For more information about credentials and request signing, see the following:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html">AWS Security Credentials</a> - This topic provides general information about the types of credentials used for accessing AWS.</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html">Temporary Security Credentials</a> - This section of the <i>IAM User Guide</i> describes how to create and use temporary security credentials.</p> </li> <li> <p> <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a> - This set of topics walks you through the process of signing a request using an access key ID and a secret access key.</p> </li> </ul> <p> <b>Commonly Used API Operations</b> </p> <p>Of the API operations discussed in this guide, the following will prove the most useful for most applications. You will likely perform operations other than these, such as creating keys and assigning policies, by using the console.</p> <ul> <li> <p> <a>Encrypt</a> </p> </li> <li> <p> <a>Decrypt</a> </p> </li> <li> <p> <a>GenerateDataKey</a> </p> </li> <li> <p> <a>GenerateDataKeyWithoutPlaintext</a> </p> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [cancelKeyDeletion](#cancelKeyDeletion)
* [connectCustomKeyStore](#connectCustomKeyStore)
* [createAlias](#createAlias)
* [createCustomKeyStore](#createCustomKeyStore)
* [createGrant](#createGrant)
* [CreateGrantOptions](#CreateGrantOptions)
* [createKey](#createKey)
* [CreateKeyOptions](#CreateKeyOptions)
* [decrypt](#decrypt)
* [DecryptOptions](#DecryptOptions)
* [deleteAlias](#deleteAlias)
* [deleteCustomKeyStore](#deleteCustomKeyStore)
* [deleteImportedKeyMaterial](#deleteImportedKeyMaterial)
* [describeCustomKeyStores](#describeCustomKeyStores)
* [DescribeCustomKeyStoresOptions](#DescribeCustomKeyStoresOptions)
* [describeKey](#describeKey)
* [DescribeKeyOptions](#DescribeKeyOptions)
* [disableKey](#disableKey)
* [disableKeyRotation](#disableKeyRotation)
* [disconnectCustomKeyStore](#disconnectCustomKeyStore)
* [enableKey](#enableKey)
* [enableKeyRotation](#enableKeyRotation)
* [encrypt](#encrypt)
* [EncryptOptions](#EncryptOptions)
* [generateDataKey](#generateDataKey)
* [GenerateDataKeyOptions](#GenerateDataKeyOptions)
* [generateDataKeyWithoutPlaintext](#generateDataKeyWithoutPlaintext)
* [GenerateDataKeyWithoutPlaintextOptions](#GenerateDataKeyWithoutPlaintextOptions)
* [generateRandom](#generateRandom)
* [GenerateRandomOptions](#GenerateRandomOptions)
* [getKeyPolicy](#getKeyPolicy)
* [getKeyRotationStatus](#getKeyRotationStatus)
* [getParametersForImport](#getParametersForImport)
* [importKeyMaterial](#importKeyMaterial)
* [ImportKeyMaterialOptions](#ImportKeyMaterialOptions)
* [listAliases](#listAliases)
* [ListAliasesOptions](#ListAliasesOptions)
* [listGrants](#listGrants)
* [ListGrantsOptions](#ListGrantsOptions)
* [listKeyPolicies](#listKeyPolicies)
* [ListKeyPoliciesOptions](#ListKeyPoliciesOptions)
* [listKeys](#listKeys)
* [ListKeysOptions](#ListKeysOptions)
* [listResourceTags](#listResourceTags)
* [ListResourceTagsOptions](#ListResourceTagsOptions)
* [listRetirableGrants](#listRetirableGrants)
* [ListRetirableGrantsOptions](#ListRetirableGrantsOptions)
* [putKeyPolicy](#putKeyPolicy)
* [PutKeyPolicyOptions](#PutKeyPolicyOptions)
* [reEncrypt](#reEncrypt)
* [ReEncryptOptions](#ReEncryptOptions)
* [retireGrant](#retireGrant)
* [RetireGrantOptions](#RetireGrantOptions)
* [revokeGrant](#revokeGrant)
* [scheduleKeyDeletion](#scheduleKeyDeletion)
* [ScheduleKeyDeletionOptions](#ScheduleKeyDeletionOptions)
* [tagResource](#tagResource)
* [untagResource](#untagResource)
* [updateAlias](#updateAlias)
* [updateCustomKeyStore](#updateCustomKeyStore)
* [UpdateCustomKeyStoreOptions](#UpdateCustomKeyStoreOptions)
* [updateKeyDescription](#updateKeyDescription)


@docs cancelKeyDeletion,connectCustomKeyStore,createAlias,createCustomKeyStore,createGrant,CreateGrantOptions,createKey,CreateKeyOptions,decrypt,DecryptOptions,deleteAlias,deleteCustomKeyStore,deleteImportedKeyMaterial,describeCustomKeyStores,DescribeCustomKeyStoresOptions,describeKey,DescribeKeyOptions,disableKey,disableKeyRotation,disconnectCustomKeyStore,enableKey,enableKeyRotation,encrypt,EncryptOptions,generateDataKey,GenerateDataKeyOptions,generateDataKeyWithoutPlaintext,GenerateDataKeyWithoutPlaintextOptions,generateRandom,GenerateRandomOptions,getKeyPolicy,getKeyRotationStatus,getParametersForImport,importKeyMaterial,ImportKeyMaterialOptions,listAliases,ListAliasesOptions,listGrants,ListGrantsOptions,listKeyPolicies,ListKeyPoliciesOptions,listKeys,ListKeysOptions,listResourceTags,ListResourceTagsOptions,listRetirableGrants,ListRetirableGrantsOptions,putKeyPolicy,PutKeyPolicyOptions,reEncrypt,ReEncryptOptions,retireGrant,RetireGrantOptions,revokeGrant,scheduleKeyDeletion,ScheduleKeyDeletionOptions,tagResource,untagResource,updateAlias,updateCustomKeyStore,UpdateCustomKeyStoreOptions,updateKeyDescription

## Responses

* [CancelKeyDeletionResponse](#CancelKeyDeletionResponse)
* [ConnectCustomKeyStoreResponse](#ConnectCustomKeyStoreResponse)
* [CreateCustomKeyStoreResponse](#CreateCustomKeyStoreResponse)
* [CreateGrantResponse](#CreateGrantResponse)
* [CreateKeyResponse](#CreateKeyResponse)
* [DecryptResponse](#DecryptResponse)
* [DeleteCustomKeyStoreResponse](#DeleteCustomKeyStoreResponse)
* [DescribeCustomKeyStoresResponse](#DescribeCustomKeyStoresResponse)
* [DescribeKeyResponse](#DescribeKeyResponse)
* [DisconnectCustomKeyStoreResponse](#DisconnectCustomKeyStoreResponse)
* [EncryptResponse](#EncryptResponse)
* [GenerateDataKeyResponse](#GenerateDataKeyResponse)
* [GenerateDataKeyWithoutPlaintextResponse](#GenerateDataKeyWithoutPlaintextResponse)
* [GenerateRandomResponse](#GenerateRandomResponse)
* [GetKeyPolicyResponse](#GetKeyPolicyResponse)
* [GetKeyRotationStatusResponse](#GetKeyRotationStatusResponse)
* [GetParametersForImportResponse](#GetParametersForImportResponse)
* [ImportKeyMaterialResponse](#ImportKeyMaterialResponse)
* [ListAliasesResponse](#ListAliasesResponse)
* [ListGrantsResponse](#ListGrantsResponse)
* [ListKeyPoliciesResponse](#ListKeyPoliciesResponse)
* [ListKeysResponse](#ListKeysResponse)
* [ListResourceTagsResponse](#ListResourceTagsResponse)
* [ReEncryptResponse](#ReEncryptResponse)
* [ScheduleKeyDeletionResponse](#ScheduleKeyDeletionResponse)
* [UpdateCustomKeyStoreResponse](#UpdateCustomKeyStoreResponse)


@docs CancelKeyDeletionResponse,ConnectCustomKeyStoreResponse,CreateCustomKeyStoreResponse,CreateGrantResponse,CreateKeyResponse,DecryptResponse,DeleteCustomKeyStoreResponse,DescribeCustomKeyStoresResponse,DescribeKeyResponse,DisconnectCustomKeyStoreResponse,EncryptResponse,GenerateDataKeyResponse,GenerateDataKeyWithoutPlaintextResponse,GenerateRandomResponse,GetKeyPolicyResponse,GetKeyRotationStatusResponse,GetParametersForImportResponse,ImportKeyMaterialResponse,ListAliasesResponse,ListGrantsResponse,ListKeyPoliciesResponse,ListKeysResponse,ListResourceTagsResponse,ReEncryptResponse,ScheduleKeyDeletionResponse,UpdateCustomKeyStoreResponse

## Records

* [AliasListEntry](#AliasListEntry)
* [CustomKeyStoresListEntry](#CustomKeyStoresListEntry)
* [GrantConstraints](#GrantConstraints)
* [GrantListEntry](#GrantListEntry)
* [KeyListEntry](#KeyListEntry)
* [KeyMetadata](#KeyMetadata)
* [Tag](#Tag)


@docs AliasListEntry,CustomKeyStoresListEntry,GrantConstraints,GrantListEntry,KeyListEntry,KeyMetadata,Tag

## Unions

* [AlgorithmSpec](#AlgorithmSpec)
* [ConnectionErrorCodeType](#ConnectionErrorCodeType)
* [ConnectionStateType](#ConnectionStateType)
* [DataKeySpec](#DataKeySpec)
* [ExpirationModelType](#ExpirationModelType)
* [GrantOperation](#GrantOperation)
* [KeyManagerType](#KeyManagerType)
* [KeyState](#KeyState)
* [KeyUsageType](#KeyUsageType)
* [OriginType](#OriginType)
* [WrappingKeySpec](#WrappingKeySpec)


@docs AlgorithmSpec,ConnectionErrorCodeType,ConnectionStateType,DataKeySpec,ExpirationModelType,GrantOperation,KeyManagerType,KeyState,KeyUsageType,OriginType,WrappingKeySpec

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
import Dict exposing (Dict)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "kms"
        "2014-11-01"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "TrentService")



-- OPERATIONS

{-| <p>Cancels the deletion of a customer master key (CMK). When this operation is successful, the CMK is set to the <code>Disabled</code> state. To enable a CMK, use <a>EnableKey</a>. You cannot perform this operation on a CMK in a different AWS account.</p> <p>For more information about scheduling and canceling deletion of a CMK, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting Customer Master Keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

cancelKeyDeletion :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CancelKeyDeletionResponse)

cancelKeyDeletion keyId =
    
    let
        requestInput = CancelKeyDeletionRequest
            
            keyId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> cancelKeyDeletionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CancelKeyDeletion"
                
                (AWS.Core.Decode.ResultDecoder "CancelKeyDeletionResponse" cancelKeyDeletionResponseDecoder)
                
            )





{-| <p>Connects or reconnects a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a> to its associated AWS CloudHSM cluster.</p> <p>The custom key store must be connected before you can create customer master keys (CMKs) in the key store or use the CMKs it contains. You can disconnect and reconnect a custom key store at any time.</p> <p>To connect a custom key store, its associated AWS CloudHSM cluster must have at least one active HSM. To get the number of active HSMs in a cluster, use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html">DescribeClusters</a> operation. To add HSMs to the cluster, use the <a href="https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html">CreateHsm</a> operation.</p> <p>The connection process can take an extended amount of time to complete; up to 20 minutes. This operation starts the connection process, but it does not wait for it to complete. When it succeeds, this operation quickly returns an HTTP 200 response and a JSON object with no properties. However, this response does not indicate that the custom key store is connected. To get the connection state of the custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p> <p>During the connection process, AWS KMS finds the AWS CloudHSM cluster that is associated with the custom key store, creates the connection infrastructure, connects to the cluster, logs into the AWS CloudHSM client as the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser"> <code>kmsuser</code> crypto user</a> (CU), and rotates its password.</p> <p>The <code>ConnectCustomKeyStore</code> operation might fail for various reasons. To find the reason, use the <a>DescribeCustomKeyStores</a> operation and see the <code>ConnectionErrorCode</code> in the response. For help interpreting the <code>ConnectionErrorCode</code>, see <a>CustomKeyStoresListEntry</a>.</p> <p>To fix the failure, use the <a>DisconnectCustomKeyStore</a> operation to disconnect the custom key store, correct the error, use the <a>UpdateCustomKeyStore</a> operation if necessary, and then use <code>ConnectCustomKeyStore</code> again.</p> <p>If you are having trouble connecting or disconnecting a custom key store, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting a Custom Key Store</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `customKeyStoreId` __:__ `String`


-}

connectCustomKeyStore :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConnectCustomKeyStoreResponse)

connectCustomKeyStore customKeyStoreId =
    
    let
        requestInput = ConnectCustomKeyStoreRequest
            
            customKeyStoreId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> connectCustomKeyStoreRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ConnectCustomKeyStore"
                
                (AWS.Core.Decode.ResultDecoder "ConnectCustomKeyStoreResponse" connectCustomKeyStoreResponseDecoder)
                
            )





{-| <p>Creates a display name for a customer managed customer master key (CMK). You can use an alias to identify a CMK in selected operations, such as <a>Encrypt</a> and <a>GenerateDataKey</a>. </p> <p>Each CMK can have multiple aliases, but each alias points to only one CMK. The alias name must be unique in the AWS account and region. To simplify code that runs in multiple regions, use the same alias name, but point it to a different CMK in each region. </p> <p>Because an alias is not a property of a CMK, you can delete and change the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the <a>DescribeKey</a> operation. To get the aliases of all CMKs, use the <a>ListAliases</a> operation.</p> <p>The alias name must begin with <code>alias/</code> followed by a name, such as <code>alias/ExampleAlias</code>. It can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). The alias name cannot begin with <code>alias/aws/</code>. The <code>alias/aws/</code> prefix is reserved for <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">AWS managed CMKs</a>. </p> <p>The alias and the CMK it is mapped to must be in the same AWS account and the same region. You cannot perform this operation on an alias in a different AWS account.</p> <p>To map an existing alias to a different CMK, call <a>UpdateAlias</a>.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `aliasName` __:__ `String`
* `targetKeyId` __:__ `String`


-}

createAlias :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

createAlias aliasName targetKeyId =
    
    let
        requestInput = CreateAliasRequest
            
            aliasName
            
            targetKeyId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createAliasRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateAlias"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Creates a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a> that is associated with an <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html">AWS CloudHSM cluster</a> that you own and manage.</p> <p>This operation is part of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">Custom Key Store feature</a> feature in AWS KMS, which combines the convenience and extensive integration of AWS KMS with the isolation and control of a single-tenant key store.</p> <p>Before you create the custom key store, you must assemble the required elements, including an AWS CloudHSM cluster that fulfills the requirements for a custom key store. For details about the required elements, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore">Assemble the Prerequisites</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>When the operation completes successfully, it returns the ID of the new custom key store. Before you can use your new custom key store, you need to use the <a>ConnectCustomKeyStore</a> operation to connect the new key store to its AWS CloudHSM cluster. Even if you are not going to use your custom key store immediately, you might want to connect it to verify that all settings are correct and then disconnect it until you are ready to use it.</p> <p>For help with failures, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting a Custom Key Store</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `customKeyStoreName` __:__ `String`
* `cloudHsmClusterId` __:__ `String`
* `trustAnchorCertificate` __:__ `String`
* `keyStorePassword` __:__ `String`


-}

createCustomKeyStore :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateCustomKeyStoreResponse)

createCustomKeyStore customKeyStoreName cloudHsmClusterId trustAnchorCertificate keyStorePassword =
    
    let
        requestInput = CreateCustomKeyStoreRequest
            
            customKeyStoreName
            
            cloudHsmClusterId
            
            trustAnchorCertificate
            
            keyStorePassword
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createCustomKeyStoreRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateCustomKeyStore"
                
                (AWS.Core.Decode.ResultDecoder "CreateCustomKeyStoreResponse" createCustomKeyStoreResponseDecoder)
                
            )





{-| <p>Adds a grant to a customer master key (CMK). The grant allows the grantee principal to use the CMK when the conditions specified in the grant are met. When setting permissions, grants are an alternative to key policies. </p> <p>To create a grant that allows a cryptographic operation only when the encryption context in the operation request matches or includes a specified encryption context, use the <code>Constraints</code> parameter. For details, see <a>GrantConstraints</a>.</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the <code>KeyId</code> parameter. For more information about grants, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants</a> in the <i> <i>AWS Key Management Service Developer Guide</i> </i>.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `granteePrincipal` __:__ `String`
* `operations` __:__ `(List GrantOperation)`


-}

createGrant :
  
    String ->
  
    String ->
  
    (List GrantOperation) ->
  
  
    ( CreateGrantOptions -> CreateGrantOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateGrantResponse)

createGrant keyId granteePrincipal operations setOptions =
    
    let
        requestInput = CreateGrantRequest
            
            keyId
            
            granteePrincipal
            
            options.retiringPrincipal
            
            operations
            
            options.constraints
            
            options.grantTokens
            
            options.name
            
        
        options = setOptions (CreateGrantOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createGrantRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateGrant"
                
                (AWS.Core.Decode.ResultDecoder "CreateGrantResponse" createGrantResponseDecoder)
                
            )



{-| Options for a createGrant request
-}
type alias CreateGrantOptions =
    {
    retiringPrincipal : Maybe String,constraints : Maybe GrantConstraints,grantTokens : Maybe (List String),name : Maybe String
    }



{-| <p>Creates a customer managed <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys">customer master key</a> (CMK) in your AWS account.</p> <p>You can use a CMK to encrypt small amounts of data (up to 4096 bytes) directly. But CMKs are more commonly used to encrypt the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys">data keys</a> that are used to encrypt data.</p> <p>To create a CMK for imported key material, use the <code>Origin</code> parameter with a value of <code>EXTERNAL</code>.</p> <p>To create a CMK in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>, use the <code>CustomKeyStoreId</code> parameter to specify the custom key store. You must also use the <code>Origin</code> parameter with a value of <code>AWS_CLOUDHSM</code>. The AWS CloudHSM cluster that is associated with the custom key store must have at least two active HSMs in different Availability Zones in the AWS Region.</p> <p>You cannot use this operation to create a CMK in a different AWS account.</p>

__Required Parameters__



-}

createKey :
  
  
    ( CreateKeyOptions -> CreateKeyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateKeyResponse)

createKey setOptions =
    
    let
        requestInput = CreateKeyRequest
            
            options.policy
            
            options.description
            
            options.keyUsage
            
            options.origin
            
            options.customKeyStoreId
            
            options.bypassPolicyLockoutSafetyCheck
            
            options.tags
            
        
        options = setOptions (CreateKeyOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createKeyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateKey"
                
                (AWS.Core.Decode.ResultDecoder "CreateKeyResponse" createKeyResponseDecoder)
                
            )



{-| Options for a createKey request
-}
type alias CreateKeyOptions =
    {
    policy : Maybe String,description : Maybe String,keyUsage : Maybe KeyUsageType,origin : Maybe OriginType,customKeyStoreId : Maybe String,bypassPolicyLockoutSafetyCheck : Maybe Bool,tags : Maybe (List Tag)
    }



{-| <p>Decrypts ciphertext. Ciphertext is plaintext that has been previously encrypted by using any of the following operations:</p> <ul> <li> <p> <a>GenerateDataKey</a> </p> </li> <li> <p> <a>GenerateDataKeyWithoutPlaintext</a> </p> </li> <li> <p> <a>Encrypt</a> </p> </li> </ul> <p>Whenever possible, use key policies to give users permission to call the Decrypt operation on the CMK, instead of IAM policies. Otherwise, you might create an IAM user policy that gives the user Decrypt permission on all CMKs. This user could decrypt ciphertext that was encrypted by CMKs in other accounts if the key policy for the cross-account CMK permits it. If you must use an IAM policy for <code>Decrypt</code> permissions, limit the user to particular CMKs or particular trusted accounts.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `ciphertextBlob` __:__ `String`


-}

decrypt :
  
    String ->
  
  
    ( DecryptOptions -> DecryptOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DecryptResponse)

decrypt ciphertextBlob setOptions =
    
    let
        requestInput = DecryptRequest
            
            ciphertextBlob
            
            options.encryptionContext
            
            options.grantTokens
            
        
        options = setOptions (DecryptOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> decryptRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "Decrypt"
                
                (AWS.Core.Decode.ResultDecoder "DecryptResponse" decryptResponseDecoder)
                
            )



{-| Options for a decrypt request
-}
type alias DecryptOptions =
    {
    encryptionContext : Maybe (Dict String String),grantTokens : Maybe (List String)
    }



{-| <p>Deletes the specified alias. You cannot perform this operation on an alias in a different AWS account. </p> <p>Because an alias is not a property of a CMK, you can delete and change the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the <a>DescribeKey</a> operation. To get the aliases of all CMKs, use the <a>ListAliases</a> operation. </p> <p>Each CMK can have multiple aliases. To change the alias of a CMK, use <a>DeleteAlias</a> to delete the current alias and <a>CreateAlias</a> to create a new alias. To associate an existing alias with a different customer master key (CMK), call <a>UpdateAlias</a>.</p>

__Required Parameters__

* `aliasName` __:__ `String`


-}

deleteAlias :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteAlias aliasName =
    
    let
        requestInput = DeleteAliasRequest
            
            aliasName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteAliasRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteAlias"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>. This operation does not delete the AWS CloudHSM cluster that is associated with the custom key store, or affect any users or keys in the cluster.</p> <p>The custom key store that you delete cannot contain any AWS KMS <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys">customer master keys (CMKs)</a>. Before deleting the key store, verify that you will never need to use any of the CMKs in the key store for any cryptographic operations. Then, use <a>ScheduleKeyDeletion</a> to delete the AWS KMS customer master keys (CMKs) from the key store. When the scheduled waiting period expires, the <code>ScheduleKeyDeletion</code> operation deletes the CMKs. Then it makes a best effort to delete the key material from the associated cluster. However, you might need to manually <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key">delete the orphaned key material</a> from the cluster and its backups.</p> <p>After all CMKs are deleted from AWS KMS, use <a>DisconnectCustomKeyStore</a> to disconnect the key store from AWS KMS. Then, you can delete the custom key store.</p> <p>Instead of deleting the custom key store, consider using <a>DisconnectCustomKeyStore</a> to disconnect it from AWS KMS. While the key store is disconnected, you cannot create or use the CMKs in the key store. But, you do not need to delete CMKs and you can reconnect a disconnected custom key store at any time.</p> <p>If the operation succeeds, it returns a JSON object with no properties.</p> <p>This operation is part of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">Custom Key Store feature</a> feature in AWS KMS, which combines the convenience and extensive integration of AWS KMS with the isolation and control of a single-tenant key store.</p>

__Required Parameters__

* `customKeyStoreId` __:__ `String`


-}

deleteCustomKeyStore :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteCustomKeyStoreResponse)

deleteCustomKeyStore customKeyStoreId =
    
    let
        requestInput = DeleteCustomKeyStoreRequest
            
            customKeyStoreId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteCustomKeyStoreRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteCustomKeyStore"
                
                (AWS.Core.Decode.ResultDecoder "DeleteCustomKeyStoreResponse" deleteCustomKeyStoreResponseDecoder)
                
            )





{-| <p>Deletes key material that you previously imported. This operation makes the specified customer master key (CMK) unusable. For more information about importing key material into AWS KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>. You cannot perform this operation on a CMK in a different AWS account.</p> <p>When the specified CMK is in the <code>PendingDeletion</code> state, this operation does not change the CMK's state. Otherwise, it changes the CMK's state to <code>PendingImport</code>.</p> <p>After you delete key material, you can use <a>ImportKeyMaterial</a> to reimport the same key material into the CMK.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

deleteImportedKeyMaterial :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteImportedKeyMaterial keyId =
    
    let
        requestInput = DeleteImportedKeyMaterialRequest
            
            keyId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteImportedKeyMaterialRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteImportedKeyMaterial"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Gets information about <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key stores</a> in the account and region.</p> <p>This operation is part of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">Custom Key Store feature</a> feature in AWS KMS, which combines the convenience and extensive integration of AWS KMS with the isolation and control of a single-tenant key store.</p> <p>By default, this operation returns information about all custom key stores in the account and region. To get only information about a particular custom key store, use either the <code>CustomKeyStoreName</code> or <code>CustomKeyStoreId</code> parameter (but not both).</p> <p>To determine whether the custom key store is connected to its AWS CloudHSM cluster, use the <code>ConnectionState</code> element in the response. If an attempt to connect the custom key store failed, the <code>ConnectionState</code> value is <code>FAILED</code> and the <code>ConnectionErrorCode</code> element in the response indicates the cause of the failure. For help interpreting the <code>ConnectionErrorCode</code>, see <a>CustomKeyStoresListEntry</a>.</p> <p>Custom key stores have a <code>DISCONNECTED</code> connection state if the key store has never been connected or you use the <a>DisconnectCustomKeyStore</a> operation to disconnect it. If your custom key store state is <code>CONNECTED</code> but you are having trouble using it, make sure that its associated AWS CloudHSM cluster is active and contains the minimum number of HSMs required for the operation, if any.</p> <p> For help repairing your custom key store, see the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html">Troubleshooting Custom Key Stores</a> topic in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__



-}

describeCustomKeyStores :
  
  
    ( DescribeCustomKeyStoresOptions -> DescribeCustomKeyStoresOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeCustomKeyStoresResponse)

describeCustomKeyStores setOptions =
    
    let
        requestInput = DescribeCustomKeyStoresRequest
            
            options.customKeyStoreId
            
            options.customKeyStoreName
            
            options.limit
            
            options.marker
            
        
        options = setOptions (DescribeCustomKeyStoresOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeCustomKeyStoresRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeCustomKeyStores"
                
                (AWS.Core.Decode.ResultDecoder "DescribeCustomKeyStoresResponse" describeCustomKeyStoresResponseDecoder)
                
            )



{-| Options for a describeCustomKeyStores request
-}
type alias DescribeCustomKeyStoresOptions =
    {
    customKeyStoreId : Maybe String,customKeyStoreName : Maybe String,limit : Maybe Int,marker : Maybe String
    }



{-| <p>Provides detailed information about the specified customer master key (CMK).</p> <p>You can use <code>DescribeKey</code> on a predefined AWS alias, that is, an AWS alias with no key ID. When you do, AWS KMS associates the alias with an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys">AWS managed CMK</a> and returns its <code>KeyId</code> and <code>Arn</code> in the response.</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

describeKey :
  
    String ->
  
  
    ( DescribeKeyOptions -> DescribeKeyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeKeyResponse)

describeKey keyId setOptions =
    
    let
        requestInput = DescribeKeyRequest
            
            keyId
            
            options.grantTokens
            
        
        options = setOptions (DescribeKeyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeKeyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeKey"
                
                (AWS.Core.Decode.ResultDecoder "DescribeKeyResponse" describeKeyResponseDecoder)
                
            )



{-| Options for a describeKey request
-}
type alias DescribeKeyOptions =
    {
    grantTokens : Maybe (List String)
    }



{-| <p>Sets the state of a customer master key (CMK) to disabled, thereby preventing its use for cryptographic operations. You cannot perform this operation on a CMK in a different AWS account.</p> <p>For more information about how key state affects the use of a CMK, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects the Use of a Customer Master Key</a> in the <i> <i>AWS Key Management Service Developer Guide</i> </i>.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

disableKey :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

disableKey keyId =
    
    let
        requestInput = DisableKeyRequest
            
            keyId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disableKeyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisableKey"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Disables <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic rotation of the key material</a> for the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

disableKeyRotation :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

disableKeyRotation keyId =
    
    let
        requestInput = DisableKeyRotationRequest
            
            keyId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disableKeyRotationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisableKeyRotation"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Disconnects the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a> from its associated AWS CloudHSM cluster. While a custom key store is disconnected, you can manage the custom key store and its customer master keys (CMKs), but you cannot create or use CMKs in the custom key store. You can reconnect the custom key store at any time.</p> <note> <p>While a custom key store is disconnected, all attempts to create customer master keys (CMKs) in the custom key store or to use existing CMKs in cryptographic operations will fail. This action can prevent users from storing and accessing sensitive data.</p> </note> <p/> <p>To find the connection state of a custom key store, use the <a>DescribeCustomKeyStores</a> operation. To reconnect a custom key store, use the <a>ConnectCustomKeyStore</a> operation.</p> <p>If the operation succeeds, it returns a JSON object with no properties.</p> <p>This operation is part of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">Custom Key Store feature</a> feature in AWS KMS, which combines the convenience and extensive integration of AWS KMS with the isolation and control of a single-tenant key store.</p>

__Required Parameters__

* `customKeyStoreId` __:__ `String`


-}

disconnectCustomKeyStore :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisconnectCustomKeyStoreResponse)

disconnectCustomKeyStore customKeyStoreId =
    
    let
        requestInput = DisconnectCustomKeyStoreRequest
            
            customKeyStoreId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disconnectCustomKeyStoreRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisconnectCustomKeyStore"
                
                (AWS.Core.Decode.ResultDecoder "DisconnectCustomKeyStoreResponse" disconnectCustomKeyStoreResponseDecoder)
                
            )





{-| <p>Sets the key state of a customer master key (CMK) to enabled. This allows you to use the CMK for cryptographic operations. You cannot perform this operation on a CMK in a different AWS account.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

enableKey :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

enableKey keyId =
    
    let
        requestInput = EnableKeyRequest
            
            keyId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> enableKeyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "EnableKey"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Enables <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic rotation of the key material</a> for the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p> <p>You cannot enable automatic rotation of CMKs with imported key material or CMKs in a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

enableKeyRotation :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

enableKeyRotation keyId =
    
    let
        requestInput = EnableKeyRotationRequest
            
            keyId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> enableKeyRotationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "EnableKeyRotation"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Encrypts plaintext into ciphertext by using a customer master key (CMK). The <code>Encrypt</code> operation has two primary use cases:</p> <ul> <li> <p>You can encrypt up to 4 kilobytes (4096 bytes) of arbitrary data such as an RSA key, a database password, or other sensitive information.</p> </li> <li> <p>You can use the <code>Encrypt</code> operation to move encrypted data from one AWS region to another. In the first region, generate a data key and use the plaintext key to encrypt the data. Then, in the new region, call the <code>Encrypt</code> method on same plaintext data key. Now, you can safely move the encrypted data and encrypted data key to the new region, and decrypt in the new region when necessary.</p> </li> </ul> <p>You don't need use this operation to encrypt a data key within a region. The <a>GenerateDataKey</a> and <a>GenerateDataKeyWithoutPlaintext</a> operations return an encrypted data key.</p> <p>Also, you don't need to use this operation to encrypt data in your application. You can use the plaintext and encrypted data keys that the <code>GenerateDataKey</code> operation returns.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `plaintext` __:__ `String`


-}

encrypt :
  
    String ->
  
    String ->
  
  
    ( EncryptOptions -> EncryptOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EncryptResponse)

encrypt keyId plaintext setOptions =
    
    let
        requestInput = EncryptRequest
            
            keyId
            
            plaintext
            
            options.encryptionContext
            
            options.grantTokens
            
        
        options = setOptions (EncryptOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> encryptRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "Encrypt"
                
                (AWS.Core.Decode.ResultDecoder "EncryptResponse" encryptResponseDecoder)
                
            )



{-| Options for a encrypt request
-}
type alias EncryptOptions =
    {
    encryptionContext : Maybe (Dict String String),grantTokens : Maybe (List String)
    }



{-| <p>Generates a unique data key. This operation returns a plaintext copy of the data key and a copy that is encrypted under a customer master key (CMK) that you specify. You can use the plaintext key to encrypt your data outside of KMS and store the encrypted data key with the encrypted data.</p> <p> <code>GenerateDataKey</code> returns a unique data key for each request. The bytes in the key are not related to the caller or CMK that is used to encrypt the data key.</p> <p>To generate a data key, you need to specify the customer master key (CMK) that will be used to encrypt the data key. You must also specify the length of the data key using either the <code>KeySpec</code> or <code>NumberOfBytes</code> field (but not both). For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use <code>KeySpec</code>. To perform this operation on a CMK in a different AWS account, specify the key ARN or alias ARN in the value of the KeyId parameter.</p> <p>You will find the plaintext copy of the data key in the <code>Plaintext</code> field of the response, and the encrypted copy of the data key in the <code>CiphertextBlob</code> field.</p> <p>We recommend that you use the following pattern to encrypt data locally in your application:</p> <ol> <li> <p>Use the <code>GenerateDataKey</code> operation to get a data encryption key.</p> </li> <li> <p>Use the plaintext data key (returned in the <code>Plaintext</code> field of the response) to encrypt data locally, then erase the plaintext data key from memory.</p> </li> <li> <p>Store the encrypted data key (returned in the <code>CiphertextBlob</code> field of the response) alongside the locally encrypted data.</p> </li> </ol> <p>To decrypt data locally:</p> <ol> <li> <p>Use the <a>Decrypt</a> operation to decrypt the encrypted data key. The operation returns a plaintext copy of the data key.</p> </li> <li> <p>Use the plaintext data key to decrypt data locally, then erase the plaintext data key from memory.</p> </li> </ol> <p>To get only an encrypted copy of the data key, use <a>GenerateDataKeyWithoutPlaintext</a>. To get a cryptographically secure random byte string, use <a>GenerateRandom</a>.</p> <p>You can use the optional encryption context to add additional security to your encryption operation. When you specify an <code>EncryptionContext</code> in the <code>GenerateDataKey</code> operation, you must specify the same encryption context (a case-sensitive exact match) in your request to <a>Decrypt</a> the data key. Otherwise, the request to decrypt fails with an <code>InvalidCiphertextException</code>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">Encryption Context</a> in the <i> <i>AWS Key Management Service Developer Guide</i> </i>.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

generateDataKey :
  
    String ->
  
  
    ( GenerateDataKeyOptions -> GenerateDataKeyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GenerateDataKeyResponse)

generateDataKey keyId setOptions =
    
    let
        requestInput = GenerateDataKeyRequest
            
            keyId
            
            options.encryptionContext
            
            options.numberOfBytes
            
            options.keySpec
            
            options.grantTokens
            
        
        options = setOptions (GenerateDataKeyOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> generateDataKeyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GenerateDataKey"
                
                (AWS.Core.Decode.ResultDecoder "GenerateDataKeyResponse" generateDataKeyResponseDecoder)
                
            )



{-| Options for a generateDataKey request
-}
type alias GenerateDataKeyOptions =
    {
    encryptionContext : Maybe (Dict String String),numberOfBytes : Maybe Int,keySpec : Maybe DataKeySpec,grantTokens : Maybe (List String)
    }



{-| <p>Generates a unique data key. This operation returns a data key that is encrypted under a customer master key (CMK) that you specify. <code>GenerateDataKeyWithoutPlaintext</code> is identical to <a>GenerateDataKey</a> except that returns only the encrypted copy of the data key.</p> <p>Like <code>GenerateDataKey</code>, <code>GenerateDataKeyWithoutPlaintext</code> returns a unique data key for each request. The bytes in the key are not related to the caller or CMK that is used to encrypt the data key.</p> <p>This operation is useful for systems that need to encrypt data at some point, but not immediately. When you need to encrypt the data, you call the <a>Decrypt</a> operation on the encrypted copy of the key.</p> <p>It's also useful in distributed systems with different levels of trust. For example, you might store encrypted data in containers. One component of your system creates new containers and stores an encrypted data key with each container. Then, a different component puts the data into the containers. That component first decrypts the data key, uses the plaintext data key to encrypt data, puts the encrypted data into the container, and then destroys the plaintext data key. In this system, the component that creates the containers never sees the plaintext data key.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

generateDataKeyWithoutPlaintext :
  
    String ->
  
  
    ( GenerateDataKeyWithoutPlaintextOptions -> GenerateDataKeyWithoutPlaintextOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GenerateDataKeyWithoutPlaintextResponse)

generateDataKeyWithoutPlaintext keyId setOptions =
    
    let
        requestInput = GenerateDataKeyWithoutPlaintextRequest
            
            keyId
            
            options.encryptionContext
            
            options.keySpec
            
            options.numberOfBytes
            
            options.grantTokens
            
        
        options = setOptions (GenerateDataKeyWithoutPlaintextOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> generateDataKeyWithoutPlaintextRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GenerateDataKeyWithoutPlaintext"
                
                (AWS.Core.Decode.ResultDecoder "GenerateDataKeyWithoutPlaintextResponse" generateDataKeyWithoutPlaintextResponseDecoder)
                
            )



{-| Options for a generateDataKeyWithoutPlaintext request
-}
type alias GenerateDataKeyWithoutPlaintextOptions =
    {
    encryptionContext : Maybe (Dict String String),keySpec : Maybe DataKeySpec,numberOfBytes : Maybe Int,grantTokens : Maybe (List String)
    }



{-| <p>Returns a random byte string that is cryptographically secure.</p> <p>By default, the random byte string is generated in AWS KMS. To generate the byte string in the AWS CloudHSM cluster that is associated with a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>, specify the custom key store ID.</p> <p>For more information about entropy and random number generation, see the <a href="https://d0.awsstatic.com/whitepapers/KMS-Cryptographic-Details.pdf">AWS Key Management Service Cryptographic Details</a> whitepaper.</p>

__Required Parameters__



-}

generateRandom :
  
  
    ( GenerateRandomOptions -> GenerateRandomOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GenerateRandomResponse)

generateRandom setOptions =
    
    let
        requestInput = GenerateRandomRequest
            
            options.numberOfBytes
            
            options.customKeyStoreId
            
        
        options = setOptions (GenerateRandomOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> generateRandomRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GenerateRandom"
                
                (AWS.Core.Decode.ResultDecoder "GenerateRandomResponse" generateRandomResponseDecoder)
                
            )



{-| Options for a generateRandom request
-}
type alias GenerateRandomOptions =
    {
    numberOfBytes : Maybe Int,customKeyStoreId : Maybe String
    }



{-| <p>Gets a key policy attached to the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `policyName` __:__ `String`


-}

getKeyPolicy :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetKeyPolicyResponse)

getKeyPolicy keyId policyName =
    
    let
        requestInput = GetKeyPolicyRequest
            
            keyId
            
            policyName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getKeyPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetKeyPolicy"
                
                (AWS.Core.Decode.ResultDecoder "GetKeyPolicyResponse" getKeyPolicyResponseDecoder)
                
            )





{-| <p>Gets a Boolean value that indicates whether <a href="https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html">automatic rotation of the key material</a> is enabled for the specified customer master key (CMK).</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <ul> <li> <p>Disabled: The key rotation status does not change when you disable a CMK. However, while the CMK is disabled, AWS KMS does not rotate the backing key.</p> </li> <li> <p>Pending deletion: While a CMK is pending deletion, its key rotation status is <code>false</code> and AWS KMS does not rotate the backing key. If you cancel the deletion, the original key rotation status is restored.</p> </li> </ul> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the <code>KeyId</code> parameter.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

getKeyRotationStatus :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetKeyRotationStatusResponse)

getKeyRotationStatus keyId =
    
    let
        requestInput = GetKeyRotationStatusRequest
            
            keyId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getKeyRotationStatusRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetKeyRotationStatus"
                
                (AWS.Core.Decode.ResultDecoder "GetKeyRotationStatusResponse" getKeyRotationStatusResponseDecoder)
                
            )





{-| <p>Returns the items you need in order to import key material into AWS KMS from your existing key management infrastructure. For more information about importing key material into AWS KMS, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>You must specify the key ID of the customer master key (CMK) into which you will import key material. This CMK's <code>Origin</code> must be <code>EXTERNAL</code>. You must also specify the wrapping algorithm and type of wrapping key (public key) that you will use to encrypt the key material. You cannot perform this operation on a CMK in a different AWS account.</p> <p>This operation returns a public key and an import token. Use the public key to encrypt the key material. Store the import token to send with a subsequent <a>ImportKeyMaterial</a> request. The public key and import token from the same response must be used together. These items are valid for 24 hours. When they expire, they cannot be used for a subsequent <a>ImportKeyMaterial</a> request. To get new ones, send another <code>GetParametersForImport</code> request.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `wrappingAlgorithm` __:__ `AlgorithmSpec`
* `wrappingKeySpec` __:__ `WrappingKeySpec`


-}

getParametersForImport :
  
    String ->
  
    AlgorithmSpec ->
  
    WrappingKeySpec ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetParametersForImportResponse)

getParametersForImport keyId wrappingAlgorithm wrappingKeySpec =
    
    let
        requestInput = GetParametersForImportRequest
            
            keyId
            
            wrappingAlgorithm
            
            wrappingKeySpec
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getParametersForImportRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetParametersForImport"
                
                (AWS.Core.Decode.ResultDecoder "GetParametersForImportResponse" getParametersForImportResponseDecoder)
                
            )





{-| <p>Imports key material into an existing AWS KMS customer master key (CMK) that was created without key material. You cannot perform this operation on a CMK in a different AWS account. For more information about creating CMKs with no key material and then importing key material, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>Before using this operation, call <a>GetParametersForImport</a>. Its response includes a public key and an import token. Use the public key to encrypt the key material. Then, submit the import token from the same <code>GetParametersForImport</code> response.</p> <p>When calling this operation, you must specify the following values:</p> <ul> <li> <p>The key ID or key ARN of a CMK with no key material. Its <code>Origin</code> must be <code>EXTERNAL</code>.</p> <p>To create a CMK with no key material, call <a>CreateKey</a> and set the value of its <code>Origin</code> parameter to <code>EXTERNAL</code>. To get the <code>Origin</code> of a CMK, call <a>DescribeKey</a>.)</p> </li> <li> <p>The encrypted key material. To get the public key to encrypt the key material, call <a>GetParametersForImport</a>.</p> </li> <li> <p>The import token that <a>GetParametersForImport</a> returned. This token and the public key used to encrypt the key material must have come from the same response.</p> </li> <li> <p>Whether the key material expires and if so, when. If you set an expiration date, you can change it only by reimporting the same key material and specifying a new expiration date. If the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. To use the CMK again, you must reimport the same key material.</p> </li> </ul> <p>When this operation is successful, the key state of the CMK changes from <code>PendingImport</code> to <code>Enabled</code>, and you can use the CMK. After you successfully import key material into a CMK, you can reimport the same key material into that CMK, but you cannot import different key material.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `importToken` __:__ `String`
* `encryptedKeyMaterial` __:__ `String`


-}

importKeyMaterial :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( ImportKeyMaterialOptions -> ImportKeyMaterialOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ImportKeyMaterialResponse)

importKeyMaterial keyId importToken encryptedKeyMaterial setOptions =
    
    let
        requestInput = ImportKeyMaterialRequest
            
            keyId
            
            importToken
            
            encryptedKeyMaterial
            
            options.validTo
            
            options.expirationModel
            
        
        options = setOptions (ImportKeyMaterialOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> importKeyMaterialRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ImportKeyMaterial"
                
                (AWS.Core.Decode.ResultDecoder "ImportKeyMaterialResponse" importKeyMaterialResponseDecoder)
                
            )



{-| Options for a importKeyMaterial request
-}
type alias ImportKeyMaterialOptions =
    {
    validTo : Maybe Posix,expirationModel : Maybe ExpirationModelType
    }



{-| <p>Gets a list of aliases in the caller's AWS account and region. You cannot list aliases in other accounts. For more information about aliases, see <a>CreateAlias</a>.</p> <p>By default, the ListAliases command returns all aliases in the account and region. To get only the aliases that point to a particular customer master key (CMK), use the <code>KeyId</code> parameter.</p> <p>The <code>ListAliases</code> response can include aliases that you created and associated with your customer managed CMKs, and aliases that AWS created and associated with AWS managed CMKs in your account. You can recognize AWS aliases because their names have the format <code>aws/&lt;service-name&gt;</code>, such as <code>aws/dynamodb</code>.</p> <p>The response might also include aliases that have no <code>TargetKeyId</code> field. These are predefined aliases that AWS has created but has not yet associated with a CMK. Aliases that AWS creates in your account, including predefined aliases, do not count against your <a href="https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit">AWS KMS aliases limit</a>.</p>

__Required Parameters__



-}

listAliases :
  
  
    ( ListAliasesOptions -> ListAliasesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAliasesResponse)

listAliases setOptions =
    
    let
        requestInput = ListAliasesRequest
            
            options.keyId
            
            options.limit
            
            options.marker
            
        
        options = setOptions (ListAliasesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAliasesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAliases"
                
                (AWS.Core.Decode.ResultDecoder "ListAliasesResponse" listAliasesResponseDecoder)
                
            )



{-| Options for a listAliases request
-}
type alias ListAliasesOptions =
    {
    keyId : Maybe String,limit : Maybe Int,marker : Maybe String
    }



{-| <p>Gets a list of all grants for the specified customer master key (CMK).</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the <code>KeyId</code> parameter.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

listGrants :
  
    String ->
  
  
    ( ListGrantsOptions -> ListGrantsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListGrantsResponse)

listGrants keyId setOptions =
    
    let
        requestInput = ListGrantsRequest
            
            options.limit
            
            options.marker
            
            keyId
            
        
        options = setOptions (ListGrantsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listGrantsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListGrants"
                
                (AWS.Core.Decode.ResultDecoder "ListGrantsResponse" listGrantsResponseDecoder)
                
            )



{-| Options for a listGrants request
-}
type alias ListGrantsOptions =
    {
    limit : Maybe Int,marker : Maybe String
    }



{-| <p>Gets the names of the key policies that are attached to a customer master key (CMK). This operation is designed to get policy names that you can use in a <a>GetKeyPolicy</a> operation. However, the only valid policy name is <code>default</code>. You cannot perform this operation on a CMK in a different AWS account.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

listKeyPolicies :
  
    String ->
  
  
    ( ListKeyPoliciesOptions -> ListKeyPoliciesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListKeyPoliciesResponse)

listKeyPolicies keyId setOptions =
    
    let
        requestInput = ListKeyPoliciesRequest
            
            keyId
            
            options.limit
            
            options.marker
            
        
        options = setOptions (ListKeyPoliciesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listKeyPoliciesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListKeyPolicies"
                
                (AWS.Core.Decode.ResultDecoder "ListKeyPoliciesResponse" listKeyPoliciesResponseDecoder)
                
            )



{-| Options for a listKeyPolicies request
-}
type alias ListKeyPoliciesOptions =
    {
    limit : Maybe Int,marker : Maybe String
    }



{-| <p>Gets a list of all customer master keys (CMKs) in the caller's AWS account and region.</p>

__Required Parameters__



-}

listKeys :
  
  
    ( ListKeysOptions -> ListKeysOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListKeysResponse)

listKeys setOptions =
    
    let
        requestInput = ListKeysRequest
            
            options.limit
            
            options.marker
            
        
        options = setOptions (ListKeysOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listKeysRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListKeys"
                
                (AWS.Core.Decode.ResultDecoder "ListKeysResponse" listKeysResponseDecoder)
                
            )



{-| Options for a listKeys request
-}
type alias ListKeysOptions =
    {
    limit : Maybe Int,marker : Maybe String
    }



{-| <p>Returns a list of all tags for the specified customer master key (CMK).</p> <p>You cannot perform this operation on a CMK in a different AWS account.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

listResourceTags :
  
    String ->
  
  
    ( ListResourceTagsOptions -> ListResourceTagsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListResourceTagsResponse)

listResourceTags keyId setOptions =
    
    let
        requestInput = ListResourceTagsRequest
            
            keyId
            
            options.limit
            
            options.marker
            
        
        options = setOptions (ListResourceTagsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listResourceTagsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListResourceTags"
                
                (AWS.Core.Decode.ResultDecoder "ListResourceTagsResponse" listResourceTagsResponseDecoder)
                
            )



{-| Options for a listResourceTags request
-}
type alias ListResourceTagsOptions =
    {
    limit : Maybe Int,marker : Maybe String
    }



{-| <p>Returns a list of all grants for which the grant's <code>RetiringPrincipal</code> matches the one specified.</p> <p>A typical use is to list all grants that you are able to retire. To retire a grant, use <a>RetireGrant</a>.</p>

__Required Parameters__

* `retiringPrincipal` __:__ `String`


-}

listRetirableGrants :
  
    String ->
  
  
    ( ListRetirableGrantsOptions -> ListRetirableGrantsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListGrantsResponse)

listRetirableGrants retiringPrincipal setOptions =
    
    let
        requestInput = ListRetirableGrantsRequest
            
            options.limit
            
            options.marker
            
            retiringPrincipal
            
        
        options = setOptions (ListRetirableGrantsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRetirableGrantsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRetirableGrants"
                
                (AWS.Core.Decode.ResultDecoder "ListGrantsResponse" listGrantsResponseDecoder)
                
            )



{-| Options for a listRetirableGrants request
-}
type alias ListRetirableGrantsOptions =
    {
    limit : Maybe Int,marker : Maybe String
    }



{-| <p>Attaches a key policy to the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p> <p>For more information about key policies, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key Policies</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `policyName` __:__ `String`
* `policy` __:__ `String`


-}

putKeyPolicy :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( PutKeyPolicyOptions -> PutKeyPolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

putKeyPolicy keyId policyName policy setOptions =
    
    let
        requestInput = PutKeyPolicyRequest
            
            keyId
            
            policyName
            
            policy
            
            options.bypassPolicyLockoutSafetyCheck
            
        
        options = setOptions (PutKeyPolicyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putKeyPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutKeyPolicy"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a putKeyPolicy request
-}
type alias PutKeyPolicyOptions =
    {
    bypassPolicyLockoutSafetyCheck : Maybe Bool
    }



{-| <p>Encrypts data on the server side with a new customer master key (CMK) without exposing the plaintext of the data on the client side. The data is first decrypted and then reencrypted. You can also use this operation to change the encryption context of a ciphertext. </p> <p>You can reencrypt data using CMKs in different AWS accounts.</p> <p>Unlike other operations, <code>ReEncrypt</code> is authorized twice, once as <code>ReEncryptFrom</code> on the source CMK and once as <code>ReEncryptTo</code> on the destination CMK. We recommend that you include the <code>"kms:ReEncrypt*"</code> permission in your <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">key policies</a> to permit reencryption from or to the CMK. This permission is automatically included in the key policy when you create a CMK through the console. But you must include it manually when you create a CMK programmatically or when you set a key policy with the <a>PutKeyPolicy</a> operation.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `ciphertextBlob` __:__ `String`
* `destinationKeyId` __:__ `String`


-}

reEncrypt :
  
    String ->
  
    String ->
  
  
    ( ReEncryptOptions -> ReEncryptOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReEncryptResponse)

reEncrypt ciphertextBlob destinationKeyId setOptions =
    
    let
        requestInput = ReEncryptRequest
            
            ciphertextBlob
            
            options.sourceEncryptionContext
            
            destinationKeyId
            
            options.destinationEncryptionContext
            
            options.grantTokens
            
        
        options = setOptions (ReEncryptOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> reEncryptRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ReEncrypt"
                
                (AWS.Core.Decode.ResultDecoder "ReEncryptResponse" reEncryptResponseDecoder)
                
            )



{-| Options for a reEncrypt request
-}
type alias ReEncryptOptions =
    {
    sourceEncryptionContext : Maybe (Dict String String),destinationEncryptionContext : Maybe (Dict String String),grantTokens : Maybe (List String)
    }



{-| <p>Retires a grant. To clean up, you can retire a grant when you're done using it. You should revoke a grant when you intend to actively deny operations that depend on it. The following are permitted to call this API:</p> <ul> <li> <p>The AWS account (root user) under which the grant was created</p> </li> <li> <p>The <code>RetiringPrincipal</code>, if present in the grant</p> </li> <li> <p>The <code>GranteePrincipal</code>, if <code>RetireGrant</code> is an operation specified in the grant</p> </li> </ul> <p>You must identify the grant to retire by its grant token or by a combination of the grant ID and the Amazon Resource Name (ARN) of the customer master key (CMK). A grant token is a unique variable-length base64-encoded string. A grant ID is a 64 character unique identifier of a grant. The <a>CreateGrant</a> operation returns both.</p>

__Required Parameters__



-}

retireGrant :
  
  
    ( RetireGrantOptions -> RetireGrantOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

retireGrant setOptions =
    
    let
        requestInput = RetireGrantRequest
            
            options.grantToken
            
            options.keyId
            
            options.grantId
            
        
        options = setOptions (RetireGrantOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> retireGrantRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RetireGrant"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a retireGrant request
-}
type alias RetireGrantOptions =
    {
    grantToken : Maybe String,keyId : Maybe String,grantId : Maybe String
    }



{-| <p>Revokes the specified grant for the specified customer master key (CMK). You can revoke a grant to actively deny operations that depend on it.</p> <p>To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the <code>KeyId</code> parameter.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `grantId` __:__ `String`


-}

revokeGrant :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

revokeGrant keyId grantId =
    
    let
        requestInput = RevokeGrantRequest
            
            keyId
            
            grantId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> revokeGrantRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RevokeGrant"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Schedules the deletion of a customer master key (CMK). You may provide a waiting period, specified in days, before deletion occurs. If you do not provide a waiting period, the default period of 30 days is used. When this operation is successful, the key state of the CMK changes to <code>PendingDeletion</code>. Before the waiting period ends, you can use <a>CancelKeyDeletion</a> to cancel the deletion of the CMK. After the waiting period ends, AWS KMS deletes the CMK and all AWS KMS data associated with it, including all aliases that refer to it.</p> <important> <p>Deleting a CMK is a destructive and potentially dangerous operation. When a CMK is deleted, all data that was encrypted under the CMK is unrecoverable. To prevent the use of a CMK without deleting it, use <a>DisableKey</a>.</p> </important> <p>If you schedule deletion of a CMK from a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">custom key store</a>, when the waiting period expires, <code>ScheduleKeyDeletion</code> deletes the CMK from AWS KMS. Then AWS KMS makes a best effort to delete the key material from the associated AWS CloudHSM cluster. However, you might need to manually <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key">delete the orphaned key material</a> from the cluster and its backups.</p> <p>You cannot perform this operation on a CMK in a different AWS account.</p> <p>For more information about scheduling a CMK for deletion, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting Customer Master Keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}

scheduleKeyDeletion :
  
    String ->
  
  
    ( ScheduleKeyDeletionOptions -> ScheduleKeyDeletionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ScheduleKeyDeletionResponse)

scheduleKeyDeletion keyId setOptions =
    
    let
        requestInput = ScheduleKeyDeletionRequest
            
            keyId
            
            options.pendingWindowInDays
            
        
        options = setOptions (ScheduleKeyDeletionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> scheduleKeyDeletionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ScheduleKeyDeletion"
                
                (AWS.Core.Decode.ResultDecoder "ScheduleKeyDeletionResponse" scheduleKeyDeletionResponseDecoder)
                
            )



{-| Options for a scheduleKeyDeletion request
-}
type alias ScheduleKeyDeletionOptions =
    {
    pendingWindowInDays : Maybe Int
    }



{-| <p>Adds or edits tags for a customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p> <p>Each tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.</p> <p>You can only use a tag key once for each CMK. If you use the tag key again, AWS KMS replaces the current tag value with the specified value.</p> <p>For information about the rules that apply to tag keys and tag values, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `tags` __:__ `(List Tag)`


-}

tagResource :
  
    String ->
  
    (List Tag) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

tagResource keyId tags =
    
    let
        requestInput = TagResourceRequest
            
            keyId
            
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
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Removes the specified tags from the specified customer master key (CMK). You cannot perform this operation on a CMK in a different AWS account.</p> <p>To remove a tag, specify the tag key. To change the tag value of an existing tag key, use <a>TagResource</a>.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

untagResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

untagResource keyId tagKeys =
    
    let
        requestInput = UntagResourceRequest
            
            keyId
            
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
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Associates an existing alias with a different customer master key (CMK). Each CMK can have multiple aliases, but the aliases must be unique within the account and region. You cannot perform this operation on an alias in a different AWS account.</p> <p>This operation works only on existing aliases. To change the alias of a CMK to a new value, use <a>CreateAlias</a> to create a new alias and <a>DeleteAlias</a> to delete the old alias.</p> <p>Because an alias is not a property of a CMK, you can create, update, and delete the aliases of a CMK without affecting the CMK. Also, aliases do not appear in the response from the <a>DescribeKey</a> operation. To get the aliases of all CMKs in the account, use the <a>ListAliases</a> operation. </p> <p>The alias name must begin with <code>alias/</code> followed by a name, such as <code>alias/ExampleAlias</code>. It can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). The alias name cannot begin with <code>alias/aws/</code>. The <code>alias/aws/</code> prefix is reserved for <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">AWS managed CMKs</a>. </p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `aliasName` __:__ `String`
* `targetKeyId` __:__ `String`


-}

updateAlias :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateAlias aliasName targetKeyId =
    
    let
        requestInput = UpdateAliasRequest
            
            aliasName
            
            targetKeyId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateAliasRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateAlias"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Changes the properties of a custom key store. Use the <code>CustomKeyStoreId</code> parameter to identify the custom key store you want to edit. Use the remaining parameters to change the properties of the custom key store.</p> <p>You can only update a custom key store that is disconnected. To disconnect the custom key store, use <a>DisconnectCustomKeyStore</a>. To reconnect the custom key store after the update completes, use <a>ConnectCustomKeyStore</a>. To find the connection state of a custom key store, use the <a>DescribeCustomKeyStores</a> operation.</p> <p>Use the parameters of <code>UpdateCustomKeyStore</code> to edit your keystore settings.</p> <ul> <li> <p>Use the <b>NewCustomKeyStoreName</b> parameter to change the friendly name of the custom key store to the value that you specify.</p> <p> </p> </li> <li> <p>Use the <b>KeyStorePassword</b> parameter tell AWS KMS the current password of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser"> <code>kmsuser</code> crypto user (CU)</a> in the associated AWS CloudHSM cluster. You can use this parameter to <a href="https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-password">fix connection failures</a> that occur when AWS KMS cannot log into the associated cluster because the <code>kmsuser</code> password has changed. This value does not change the password in the AWS CloudHSM cluster.</p> <p> </p> </li> <li> <p>Use the <b>CloudHsmClusterId</b> parameter to associate the custom key store with a different, but related, AWS CloudHSM cluster. You can use this parameter to repair a custom key store if its AWS CloudHSM cluster becomes corrupted or is deleted, or when you need to create or restore a cluster from a backup. </p> </li> </ul> <p>If the operation succeeds, it returns a JSON object with no properties.</p> <p>This operation is part of the <a href="https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html">Custom Key Store feature</a> feature in AWS KMS, which combines the convenience and extensive integration of AWS KMS with the isolation and control of a single-tenant key store.</p>

__Required Parameters__

* `customKeyStoreId` __:__ `String`


-}

updateCustomKeyStore :
  
    String ->
  
  
    ( UpdateCustomKeyStoreOptions -> UpdateCustomKeyStoreOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateCustomKeyStoreResponse)

updateCustomKeyStore customKeyStoreId setOptions =
    
    let
        requestInput = UpdateCustomKeyStoreRequest
            
            customKeyStoreId
            
            options.newCustomKeyStoreName
            
            options.keyStorePassword
            
            options.cloudHsmClusterId
            
        
        options = setOptions (UpdateCustomKeyStoreOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateCustomKeyStoreRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateCustomKeyStore"
                
                (AWS.Core.Decode.ResultDecoder "UpdateCustomKeyStoreResponse" updateCustomKeyStoreResponseDecoder)
                
            )



{-| Options for a updateCustomKeyStore request
-}
type alias UpdateCustomKeyStoreOptions =
    {
    newCustomKeyStoreName : Maybe String,keyStorePassword : Maybe String,cloudHsmClusterId : Maybe String
    }



{-| <p>Updates the description of a customer master key (CMK). To see the description of a CMK, use <a>DescribeKey</a>. </p> <p>You cannot perform this operation on a CMK in a different AWS account.</p> <p>The result of this operation varies with the key state of the CMK. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `description` __:__ `String`


-}

updateKeyDescription :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateKeyDescription keyId description =
    
    let
        requestInput = UpdateKeyDescriptionRequest
            
            keyId
            
            description
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateKeyDescriptionRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateKeyDescription"
                
                (AWS.Core.Decode.FixedResult ())
                
            )






{-| One of

* `AlgorithmSpec_RSAES_PKCS1_V1_5`
* `AlgorithmSpec_RSAES_OAEP_SHA_1`
* `AlgorithmSpec_RSAES_OAEP_SHA_256`

-}
type AlgorithmSpec
    = AlgorithmSpec_RSAES_PKCS1_V1_5
    | AlgorithmSpec_RSAES_OAEP_SHA_1
    | AlgorithmSpec_RSAES_OAEP_SHA_256



algorithmSpecDecoder : JD.Decoder AlgorithmSpec
algorithmSpecDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RSAES_PKCS1_V1_5" ->
                        JD.succeed AlgorithmSpec_RSAES_PKCS1_V1_5

                    "RSAES_OAEP_SHA_1" ->
                        JD.succeed AlgorithmSpec_RSAES_OAEP_SHA_1

                    "RSAES_OAEP_SHA_256" ->
                        JD.succeed AlgorithmSpec_RSAES_OAEP_SHA_256


                    _ ->
                        JD.fail "bad thing"
            )




algorithmSpecToString : AlgorithmSpec -> String
algorithmSpecToString val =
    case val of
        AlgorithmSpec_RSAES_PKCS1_V1_5 ->
            "RSAES_PKCS1_V1_5"

        AlgorithmSpec_RSAES_OAEP_SHA_1 ->
            "RSAES_OAEP_SHA_1"

        AlgorithmSpec_RSAES_OAEP_SHA_256 ->
            "RSAES_OAEP_SHA_256"




{-| <p>Contains information about an alias.</p>
-}
type alias AliasListEntry =
    { aliasName : Maybe String
    , aliasArn : Maybe String
    , targetKeyId : Maybe String
    }



aliasListEntryDecoder : JD.Decoder AliasListEntry
aliasListEntryDecoder =
    JD.succeed AliasListEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AliasName", "aliasName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AliasArn", "aliasArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetKeyId", "targetKeyId"]
            JD.string
        )
        




aliasListEntryToString : AliasListEntry -> String -- List (String, String)
aliasListEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "aliasName" "" -- val.aliasName
        
    --     |> Dict.insert
    --         "aliasArn" "" -- val.aliasArn
        
    --     |> Dict.insert
    --         "targetKeyId" "" -- val.targetKeyId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from cancelKeyDeletion
-}
type alias CancelKeyDeletionResponse =
    { keyId : Maybe String
    }



cancelKeyDeletionResponseDecoder : JD.Decoder CancelKeyDeletionResponse
cancelKeyDeletionResponseDecoder =
    JD.succeed CancelKeyDeletionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyId", "keyId"]
            JD.string
        )
        




cancelKeyDeletionResponseToString : CancelKeyDeletionResponse -> String -- List (String, String)
cancelKeyDeletionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from connectCustomKeyStore
-}
type alias ConnectCustomKeyStoreResponse =
    { 
    }



connectCustomKeyStoreResponseDecoder : JD.Decoder ConnectCustomKeyStoreResponse
connectCustomKeyStoreResponseDecoder =
    JD.succeed ConnectCustomKeyStoreResponse
        




connectCustomKeyStoreResponseToString : ConnectCustomKeyStoreResponse -> String -- List (String, String)
connectCustomKeyStoreResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `ConnectionErrorCodeType_INVALID_CREDENTIALS`
* `ConnectionErrorCodeType_CLUSTER_NOT_FOUND`
* `ConnectionErrorCodeType_NETWORK_ERRORS`
* `ConnectionErrorCodeType_INTERNAL_ERROR`
* `ConnectionErrorCodeType_INSUFFICIENT_CLOUDHSM_HSMS`
* `ConnectionErrorCodeType_USER_LOCKED_OUT`

-}
type ConnectionErrorCodeType
    = ConnectionErrorCodeType_INVALID_CREDENTIALS
    | ConnectionErrorCodeType_CLUSTER_NOT_FOUND
    | ConnectionErrorCodeType_NETWORK_ERRORS
    | ConnectionErrorCodeType_INTERNAL_ERROR
    | ConnectionErrorCodeType_INSUFFICIENT_CLOUDHSM_HSMS
    | ConnectionErrorCodeType_USER_LOCKED_OUT



connectionErrorCodeTypeDecoder : JD.Decoder ConnectionErrorCodeType
connectionErrorCodeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INVALID_CREDENTIALS" ->
                        JD.succeed ConnectionErrorCodeType_INVALID_CREDENTIALS

                    "CLUSTER_NOT_FOUND" ->
                        JD.succeed ConnectionErrorCodeType_CLUSTER_NOT_FOUND

                    "NETWORK_ERRORS" ->
                        JD.succeed ConnectionErrorCodeType_NETWORK_ERRORS

                    "INTERNAL_ERROR" ->
                        JD.succeed ConnectionErrorCodeType_INTERNAL_ERROR

                    "INSUFFICIENT_CLOUDHSM_HSMS" ->
                        JD.succeed ConnectionErrorCodeType_INSUFFICIENT_CLOUDHSM_HSMS

                    "USER_LOCKED_OUT" ->
                        JD.succeed ConnectionErrorCodeType_USER_LOCKED_OUT


                    _ ->
                        JD.fail "bad thing"
            )




connectionErrorCodeTypeToString : ConnectionErrorCodeType -> String
connectionErrorCodeTypeToString val =
    case val of
        ConnectionErrorCodeType_INVALID_CREDENTIALS ->
            "INVALID_CREDENTIALS"

        ConnectionErrorCodeType_CLUSTER_NOT_FOUND ->
            "CLUSTER_NOT_FOUND"

        ConnectionErrorCodeType_NETWORK_ERRORS ->
            "NETWORK_ERRORS"

        ConnectionErrorCodeType_INTERNAL_ERROR ->
            "INTERNAL_ERROR"

        ConnectionErrorCodeType_INSUFFICIENT_CLOUDHSM_HSMS ->
            "INSUFFICIENT_CLOUDHSM_HSMS"

        ConnectionErrorCodeType_USER_LOCKED_OUT ->
            "USER_LOCKED_OUT"




{-| One of

* `ConnectionStateType_CONNECTED`
* `ConnectionStateType_CONNECTING`
* `ConnectionStateType_FAILED`
* `ConnectionStateType_DISCONNECTED`
* `ConnectionStateType_DISCONNECTING`

-}
type ConnectionStateType
    = ConnectionStateType_CONNECTED
    | ConnectionStateType_CONNECTING
    | ConnectionStateType_FAILED
    | ConnectionStateType_DISCONNECTED
    | ConnectionStateType_DISCONNECTING



connectionStateTypeDecoder : JD.Decoder ConnectionStateType
connectionStateTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CONNECTED" ->
                        JD.succeed ConnectionStateType_CONNECTED

                    "CONNECTING" ->
                        JD.succeed ConnectionStateType_CONNECTING

                    "FAILED" ->
                        JD.succeed ConnectionStateType_FAILED

                    "DISCONNECTED" ->
                        JD.succeed ConnectionStateType_DISCONNECTED

                    "DISCONNECTING" ->
                        JD.succeed ConnectionStateType_DISCONNECTING


                    _ ->
                        JD.fail "bad thing"
            )




connectionStateTypeToString : ConnectionStateType -> String
connectionStateTypeToString val =
    case val of
        ConnectionStateType_CONNECTED ->
            "CONNECTED"

        ConnectionStateType_CONNECTING ->
            "CONNECTING"

        ConnectionStateType_FAILED ->
            "FAILED"

        ConnectionStateType_DISCONNECTED ->
            "DISCONNECTED"

        ConnectionStateType_DISCONNECTING ->
            "DISCONNECTING"




{-| Type of HTTP response from createCustomKeyStore
-}
type alias CreateCustomKeyStoreResponse =
    { customKeyStoreId : Maybe String
    }



createCustomKeyStoreResponseDecoder : JD.Decoder CreateCustomKeyStoreResponse
createCustomKeyStoreResponseDecoder =
    JD.succeed CreateCustomKeyStoreResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomKeyStoreId", "customKeyStoreId"]
            JD.string
        )
        




createCustomKeyStoreResponseToString : CreateCustomKeyStoreResponse -> String -- List (String, String)
createCustomKeyStoreResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "customKeyStoreId" "" -- val.customKeyStoreId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createGrant
-}
type alias CreateGrantResponse =
    { grantToken : Maybe String
    , grantId : Maybe String
    }



createGrantResponseDecoder : JD.Decoder CreateGrantResponse
createGrantResponseDecoder =
    JD.succeed CreateGrantResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GrantToken", "grantToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GrantId", "grantId"]
            JD.string
        )
        




createGrantResponseToString : CreateGrantResponse -> String -- List (String, String)
createGrantResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "grantToken" "" -- val.grantToken
        
    --     |> Dict.insert
    --         "grantId" "" -- val.grantId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createKey
-}
type alias CreateKeyResponse =
    { keyMetadata : Maybe KeyMetadata
    }



createKeyResponseDecoder : JD.Decoder CreateKeyResponse
createKeyResponseDecoder =
    JD.succeed CreateKeyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyMetadata", "keyMetadata"]
            keyMetadataDecoder
        )
        




createKeyResponseToString : CreateKeyResponse -> String -- List (String, String)
createKeyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keyMetadata" "" -- val.keyMetadata
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about each custom key store in the custom key store list.</p>
-}
type alias CustomKeyStoresListEntry =
    { customKeyStoreId : Maybe String
    , customKeyStoreName : Maybe String
    , cloudHsmClusterId : Maybe String
    , trustAnchorCertificate : Maybe String
    , connectionState : Maybe ConnectionStateType
    , connectionErrorCode : Maybe ConnectionErrorCodeType
    , creationDate : Maybe Posix
    }



customKeyStoresListEntryDecoder : JD.Decoder CustomKeyStoresListEntry
customKeyStoresListEntryDecoder =
    JD.succeed CustomKeyStoresListEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomKeyStoreId", "customKeyStoreId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomKeyStoreName", "customKeyStoreName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudHsmClusterId", "cloudHsmClusterId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TrustAnchorCertificate", "trustAnchorCertificate"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionState", "connectionState"]
            connectionStateTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConnectionErrorCode", "connectionErrorCode"]
            connectionErrorCodeTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        




customKeyStoresListEntryToString : CustomKeyStoresListEntry -> String -- List (String, String)
customKeyStoresListEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "customKeyStoreId" "" -- val.customKeyStoreId
        
    --     |> Dict.insert
    --         "customKeyStoreName" "" -- val.customKeyStoreName
        
    --     |> Dict.insert
    --         "cloudHsmClusterId" "" -- val.cloudHsmClusterId
        
    --     |> Dict.insert
    --         "trustAnchorCertificate" "" -- val.trustAnchorCertificate
        
    --     |> Dict.insert
    --         "connectionState" "" -- val.connectionState
        
    --     |> Dict.insert
    --         "connectionErrorCode" "" -- val.connectionErrorCode
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.toList
    ""



{-| One of

* `DataKeySpec_AES_256`
* `DataKeySpec_AES_128`

-}
type DataKeySpec
    = DataKeySpec_AES_256
    | DataKeySpec_AES_128



dataKeySpecDecoder : JD.Decoder DataKeySpec
dataKeySpecDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AES_256" ->
                        JD.succeed DataKeySpec_AES_256

                    "AES_128" ->
                        JD.succeed DataKeySpec_AES_128


                    _ ->
                        JD.fail "bad thing"
            )




dataKeySpecToString : DataKeySpec -> String
dataKeySpecToString val =
    case val of
        DataKeySpec_AES_256 ->
            "AES_256"

        DataKeySpec_AES_128 ->
            "AES_128"




{-| Type of HTTP response from decrypt
-}
type alias DecryptResponse =
    { keyId : Maybe String
    , plaintext : Maybe String
    }



decryptResponseDecoder : JD.Decoder DecryptResponse
decryptResponseDecoder =
    JD.succeed DecryptResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyId", "keyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Plaintext", "plaintext"]
            JD.string
        )
        




decryptResponseToString : DecryptResponse -> String -- List (String, String)
decryptResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.insert
    --         "plaintext" "" -- val.plaintext
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteCustomKeyStore
-}
type alias DeleteCustomKeyStoreResponse =
    { 
    }



deleteCustomKeyStoreResponseDecoder : JD.Decoder DeleteCustomKeyStoreResponse
deleteCustomKeyStoreResponseDecoder =
    JD.succeed DeleteCustomKeyStoreResponse
        




deleteCustomKeyStoreResponseToString : DeleteCustomKeyStoreResponse -> String -- List (String, String)
deleteCustomKeyStoreResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeCustomKeyStores
-}
type alias DescribeCustomKeyStoresResponse =
    { customKeyStores : Maybe (List CustomKeyStoresListEntry)
    , nextMarker : Maybe String
    , truncated : Maybe Bool
    }



describeCustomKeyStoresResponseDecoder : JD.Decoder DescribeCustomKeyStoresResponse
describeCustomKeyStoresResponseDecoder =
    JD.succeed DescribeCustomKeyStoresResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomKeyStores", "customKeyStores"]
            (JD.list customKeyStoresListEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Truncated", "truncated"]
            JD.bool
        )
        




describeCustomKeyStoresResponseToString : DescribeCustomKeyStoresResponse -> String -- List (String, String)
describeCustomKeyStoresResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "customKeyStores" "" -- val.customKeyStores
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "truncated" "" -- val.truncated
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeKey
-}
type alias DescribeKeyResponse =
    { keyMetadata : Maybe KeyMetadata
    }



describeKeyResponseDecoder : JD.Decoder DescribeKeyResponse
describeKeyResponseDecoder =
    JD.succeed DescribeKeyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyMetadata", "keyMetadata"]
            keyMetadataDecoder
        )
        




describeKeyResponseToString : DescribeKeyResponse -> String -- List (String, String)
describeKeyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keyMetadata" "" -- val.keyMetadata
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disconnectCustomKeyStore
-}
type alias DisconnectCustomKeyStoreResponse =
    { 
    }



disconnectCustomKeyStoreResponseDecoder : JD.Decoder DisconnectCustomKeyStoreResponse
disconnectCustomKeyStoreResponseDecoder =
    JD.succeed DisconnectCustomKeyStoreResponse
        




disconnectCustomKeyStoreResponseToString : DisconnectCustomKeyStoreResponse -> String -- List (String, String)
disconnectCustomKeyStoreResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from encrypt
-}
type alias EncryptResponse =
    { ciphertextBlob : Maybe String
    , keyId : Maybe String
    }



encryptResponseDecoder : JD.Decoder EncryptResponse
encryptResponseDecoder =
    JD.succeed EncryptResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CiphertextBlob", "ciphertextBlob"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyId", "keyId"]
            JD.string
        )
        




encryptResponseToString : EncryptResponse -> String -- List (String, String)
encryptResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ciphertextBlob" "" -- val.ciphertextBlob
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.toList
    ""



{-| One of

* `ExpirationModelType_KEY_MATERIAL_EXPIRES`
* `ExpirationModelType_KEY_MATERIAL_DOES_NOT_EXPIRE`

-}
type ExpirationModelType
    = ExpirationModelType_KEY_MATERIAL_EXPIRES
    | ExpirationModelType_KEY_MATERIAL_DOES_NOT_EXPIRE



expirationModelTypeDecoder : JD.Decoder ExpirationModelType
expirationModelTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "KEY_MATERIAL_EXPIRES" ->
                        JD.succeed ExpirationModelType_KEY_MATERIAL_EXPIRES

                    "KEY_MATERIAL_DOES_NOT_EXPIRE" ->
                        JD.succeed ExpirationModelType_KEY_MATERIAL_DOES_NOT_EXPIRE


                    _ ->
                        JD.fail "bad thing"
            )




expirationModelTypeToString : ExpirationModelType -> String
expirationModelTypeToString val =
    case val of
        ExpirationModelType_KEY_MATERIAL_EXPIRES ->
            "KEY_MATERIAL_EXPIRES"

        ExpirationModelType_KEY_MATERIAL_DOES_NOT_EXPIRE ->
            "KEY_MATERIAL_DOES_NOT_EXPIRE"




{-| Type of HTTP response from generateDataKey
-}
type alias GenerateDataKeyResponse =
    { ciphertextBlob : Maybe String
    , plaintext : Maybe String
    , keyId : Maybe String
    }



generateDataKeyResponseDecoder : JD.Decoder GenerateDataKeyResponse
generateDataKeyResponseDecoder =
    JD.succeed GenerateDataKeyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CiphertextBlob", "ciphertextBlob"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Plaintext", "plaintext"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyId", "keyId"]
            JD.string
        )
        




generateDataKeyResponseToString : GenerateDataKeyResponse -> String -- List (String, String)
generateDataKeyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ciphertextBlob" "" -- val.ciphertextBlob
        
    --     |> Dict.insert
    --         "plaintext" "" -- val.plaintext
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from generateDataKeyWithoutPlaintext
-}
type alias GenerateDataKeyWithoutPlaintextResponse =
    { ciphertextBlob : Maybe String
    , keyId : Maybe String
    }



generateDataKeyWithoutPlaintextResponseDecoder : JD.Decoder GenerateDataKeyWithoutPlaintextResponse
generateDataKeyWithoutPlaintextResponseDecoder =
    JD.succeed GenerateDataKeyWithoutPlaintextResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CiphertextBlob", "ciphertextBlob"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyId", "keyId"]
            JD.string
        )
        




generateDataKeyWithoutPlaintextResponseToString : GenerateDataKeyWithoutPlaintextResponse -> String -- List (String, String)
generateDataKeyWithoutPlaintextResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ciphertextBlob" "" -- val.ciphertextBlob
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from generateRandom
-}
type alias GenerateRandomResponse =
    { plaintext : Maybe String
    }



generateRandomResponseDecoder : JD.Decoder GenerateRandomResponse
generateRandomResponseDecoder =
    JD.succeed GenerateRandomResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Plaintext", "plaintext"]
            JD.string
        )
        




generateRandomResponseToString : GenerateRandomResponse -> String -- List (String, String)
generateRandomResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "plaintext" "" -- val.plaintext
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getKeyPolicy
-}
type alias GetKeyPolicyResponse =
    { policy : Maybe String
    }



getKeyPolicyResponseDecoder : JD.Decoder GetKeyPolicyResponse
getKeyPolicyResponseDecoder =
    JD.succeed GetKeyPolicyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Policy", "policy"]
            JD.string
        )
        




getKeyPolicyResponseToString : GetKeyPolicyResponse -> String -- List (String, String)
getKeyPolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policy" "" -- val.policy
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getKeyRotationStatus
-}
type alias GetKeyRotationStatusResponse =
    { keyRotationEnabled : Maybe Bool
    }



getKeyRotationStatusResponseDecoder : JD.Decoder GetKeyRotationStatusResponse
getKeyRotationStatusResponseDecoder =
    JD.succeed GetKeyRotationStatusResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyRotationEnabled", "keyRotationEnabled"]
            JD.bool
        )
        




getKeyRotationStatusResponseToString : GetKeyRotationStatusResponse -> String -- List (String, String)
getKeyRotationStatusResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keyRotationEnabled" "" -- val.keyRotationEnabled
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getParametersForImport
-}
type alias GetParametersForImportResponse =
    { keyId : Maybe String
    , importToken : Maybe String
    , publicKey : Maybe String
    , parametersValidTo : Maybe Posix
    }



getParametersForImportResponseDecoder : JD.Decoder GetParametersForImportResponse
getParametersForImportResponseDecoder =
    JD.succeed GetParametersForImportResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyId", "keyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImportToken", "importToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PublicKey", "publicKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParametersValidTo", "parametersValidTo"]
            JDX.datetime
        )
        




getParametersForImportResponseToString : GetParametersForImportResponse -> String -- List (String, String)
getParametersForImportResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.insert
    --         "importToken" "" -- val.importToken
        
    --     |> Dict.insert
    --         "publicKey" "" -- val.publicKey
        
    --     |> Dict.insert
    --         "parametersValidTo" "" -- val.parametersValidTo
        
    --     |> Dict.toList
    ""



{-| <p>Use this structure to allow cryptographic operations in the grant only when the operation request includes the specified <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context">encryption context</a>.</p> <p>AWS KMS applies the grant constraints only when the grant allows a cryptographic operation that accepts an encryption context as input, such as the following.</p> <ul> <li> <p> <a>Encrypt</a> </p> </li> <li> <p> <a>Decrypt</a> </p> </li> <li> <p> <a>GenerateDataKey</a> </p> </li> <li> <p> <a>GenerateDataKeyWithoutPlaintext</a> </p> </li> <li> <p> <a>ReEncrypt</a> </p> </li> </ul> <p>AWS KMS does not apply the grant constraints to other operations, such as <a>DescribeKey</a> or <a>ScheduleKeyDeletion</a>.</p> <important> <p>In a cryptographic operation, the encryption context in the decryption operation must be an exact, case-sensitive match for the keys and values in the encryption context of the encryption operation. Only the order of the pairs can vary.</p> <p>However, in a grant constraint, the key in each key-value pair is not case sensitive, but the value is case sensitive.</p> <p>To avoid confusion, do not use multiple encryption context pairs that differ only by case. To require a fully case-sensitive encryption context, use the <code>kms:EncryptionContext:</code> and <code>kms:EncryptionContextKeys</code> conditions in an IAM or key policy. For details, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/policy-conditions.html#conditions-kms-encryption-context">kms:EncryptionContext:</a> in the <i> <i>AWS Key Management Service Developer Guide</i> </i>.</p> </important>
-}
type alias GrantConstraints =
    { encryptionContextSubset : Maybe (Dict String String)
    , encryptionContextEquals : Maybe (Dict String String)
    }



grantConstraintsDecoder : JD.Decoder GrantConstraints
grantConstraintsDecoder =
    JD.succeed GrantConstraints
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionContextSubset", "encryptionContextSubset"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncryptionContextEquals", "encryptionContextEquals"]
            (AWS.Core.Decode.dict JD.string)
        )
        




grantConstraintsToString : GrantConstraints -> String -- List (String, String)
grantConstraintsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "encryptionContextSubset" "" -- val.encryptionContextSubset
        
    --     |> Dict.insert
    --         "encryptionContextEquals" "" -- val.encryptionContextEquals
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about an entry in a list of grants.</p>
-}
type alias GrantListEntry =
    { keyId : Maybe String
    , grantId : Maybe String
    , name : Maybe String
    , creationDate : Maybe Posix
    , granteePrincipal : Maybe String
    , retiringPrincipal : Maybe String
    , issuingAccount : Maybe String
    , operations : Maybe (List GrantOperation)
    , constraints : Maybe GrantConstraints
    }



grantListEntryDecoder : JD.Decoder GrantListEntry
grantListEntryDecoder =
    JD.succeed GrantListEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyId", "keyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GrantId", "grantId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GranteePrincipal", "granteePrincipal"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RetiringPrincipal", "retiringPrincipal"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IssuingAccount", "issuingAccount"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Operations", "operations"]
            (JD.list grantOperationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Constraints", "constraints"]
            grantConstraintsDecoder
        )
        




grantListEntryToString : GrantListEntry -> String -- List (String, String)
grantListEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.insert
    --         "grantId" "" -- val.grantId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "granteePrincipal" "" -- val.granteePrincipal
        
    --     |> Dict.insert
    --         "retiringPrincipal" "" -- val.retiringPrincipal
        
    --     |> Dict.insert
    --         "issuingAccount" "" -- val.issuingAccount
        
    --     |> Dict.insert
    --         "operations" "" -- val.operations
        
    --     |> Dict.insert
    --         "constraints" "" -- val.constraints
        
    --     |> Dict.toList
    ""



{-| One of

* `GrantOperation_Decrypt`
* `GrantOperation_Encrypt`
* `GrantOperation_GenerateDataKey`
* `GrantOperation_GenerateDataKeyWithoutPlaintext`
* `GrantOperation_ReEncryptFrom`
* `GrantOperation_ReEncryptTo`
* `GrantOperation_CreateGrant`
* `GrantOperation_RetireGrant`
* `GrantOperation_DescribeKey`

-}
type GrantOperation
    = GrantOperation_Decrypt
    | GrantOperation_Encrypt
    | GrantOperation_GenerateDataKey
    | GrantOperation_GenerateDataKeyWithoutPlaintext
    | GrantOperation_ReEncryptFrom
    | GrantOperation_ReEncryptTo
    | GrantOperation_CreateGrant
    | GrantOperation_RetireGrant
    | GrantOperation_DescribeKey



grantOperationDecoder : JD.Decoder GrantOperation
grantOperationDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Decrypt" ->
                        JD.succeed GrantOperation_Decrypt

                    "Encrypt" ->
                        JD.succeed GrantOperation_Encrypt

                    "GenerateDataKey" ->
                        JD.succeed GrantOperation_GenerateDataKey

                    "GenerateDataKeyWithoutPlaintext" ->
                        JD.succeed GrantOperation_GenerateDataKeyWithoutPlaintext

                    "ReEncryptFrom" ->
                        JD.succeed GrantOperation_ReEncryptFrom

                    "ReEncryptTo" ->
                        JD.succeed GrantOperation_ReEncryptTo

                    "CreateGrant" ->
                        JD.succeed GrantOperation_CreateGrant

                    "RetireGrant" ->
                        JD.succeed GrantOperation_RetireGrant

                    "DescribeKey" ->
                        JD.succeed GrantOperation_DescribeKey


                    _ ->
                        JD.fail "bad thing"
            )




grantOperationToString : GrantOperation -> String
grantOperationToString val =
    case val of
        GrantOperation_Decrypt ->
            "Decrypt"

        GrantOperation_Encrypt ->
            "Encrypt"

        GrantOperation_GenerateDataKey ->
            "GenerateDataKey"

        GrantOperation_GenerateDataKeyWithoutPlaintext ->
            "GenerateDataKeyWithoutPlaintext"

        GrantOperation_ReEncryptFrom ->
            "ReEncryptFrom"

        GrantOperation_ReEncryptTo ->
            "ReEncryptTo"

        GrantOperation_CreateGrant ->
            "CreateGrant"

        GrantOperation_RetireGrant ->
            "RetireGrant"

        GrantOperation_DescribeKey ->
            "DescribeKey"




{-| Type of HTTP response from importKeyMaterial
-}
type alias ImportKeyMaterialResponse =
    { 
    }



importKeyMaterialResponseDecoder : JD.Decoder ImportKeyMaterialResponse
importKeyMaterialResponseDecoder =
    JD.succeed ImportKeyMaterialResponse
        




importKeyMaterialResponseToString : ImportKeyMaterialResponse -> String -- List (String, String)
importKeyMaterialResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about each entry in the key list.</p>
-}
type alias KeyListEntry =
    { keyId : Maybe String
    , keyArn : Maybe String
    }



keyListEntryDecoder : JD.Decoder KeyListEntry
keyListEntryDecoder =
    JD.succeed KeyListEntry
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyId", "keyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyArn", "keyArn"]
            JD.string
        )
        




keyListEntryToString : KeyListEntry -> String -- List (String, String)
keyListEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.insert
    --         "keyArn" "" -- val.keyArn
        
    --     |> Dict.toList
    ""



{-| One of

* `KeyManagerType_AWS`
* `KeyManagerType_CUSTOMER`

-}
type KeyManagerType
    = KeyManagerType_AWS
    | KeyManagerType_CUSTOMER



keyManagerTypeDecoder : JD.Decoder KeyManagerType
keyManagerTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AWS" ->
                        JD.succeed KeyManagerType_AWS

                    "CUSTOMER" ->
                        JD.succeed KeyManagerType_CUSTOMER


                    _ ->
                        JD.fail "bad thing"
            )




keyManagerTypeToString : KeyManagerType -> String
keyManagerTypeToString val =
    case val of
        KeyManagerType_AWS ->
            "AWS"

        KeyManagerType_CUSTOMER ->
            "CUSTOMER"




{-| <p>Contains metadata about a customer master key (CMK).</p> <p>This data type is used as a response element for the <a>CreateKey</a> and <a>DescribeKey</a> operations.</p>
-}
type alias KeyMetadata =
    { aWSAccountId : Maybe String
    , keyId : String
    , arn : Maybe String
    , creationDate : Maybe Posix
    , enabled : Maybe Bool
    , description : Maybe String
    , keyUsage : Maybe KeyUsageType
    , keyState : Maybe KeyState
    , deletionDate : Maybe Posix
    , validTo : Maybe Posix
    , origin : Maybe OriginType
    , customKeyStoreId : Maybe String
    , cloudHsmClusterId : Maybe String
    , expirationModel : Maybe ExpirationModelType
    , keyManager : Maybe KeyManagerType
    }



keyMetadataDecoder : JD.Decoder KeyMetadata
keyMetadataDecoder =
    JD.succeed KeyMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AWSAccountId", "aWSAccountId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["KeyId", "keyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyUsage", "keyUsage"]
            keyUsageTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyState", "keyState"]
            keyStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeletionDate", "deletionDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ValidTo", "validTo"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Origin", "origin"]
            originTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomKeyStoreId", "customKeyStoreId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudHsmClusterId", "cloudHsmClusterId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExpirationModel", "expirationModel"]
            expirationModelTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyManager", "keyManager"]
            keyManagerTypeDecoder
        )
        




keyMetadataToString : KeyMetadata -> String -- List (String, String)
keyMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "aWSAccountId" "" -- val.aWSAccountId
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "keyUsage" "" -- val.keyUsage
        
    --     |> Dict.insert
    --         "keyState" "" -- val.keyState
        
    --     |> Dict.insert
    --         "deletionDate" "" -- val.deletionDate
        
    --     |> Dict.insert
    --         "validTo" "" -- val.validTo
        
    --     |> Dict.insert
    --         "origin" "" -- val.origin
        
    --     |> Dict.insert
    --         "customKeyStoreId" "" -- val.customKeyStoreId
        
    --     |> Dict.insert
    --         "cloudHsmClusterId" "" -- val.cloudHsmClusterId
        
    --     |> Dict.insert
    --         "expirationModel" "" -- val.expirationModel
        
    --     |> Dict.insert
    --         "keyManager" "" -- val.keyManager
        
    --     |> Dict.toList
    ""



{-| One of

* `KeyState_Enabled`
* `KeyState_Disabled`
* `KeyState_PendingDeletion`
* `KeyState_PendingImport`
* `KeyState_Unavailable`

-}
type KeyState
    = KeyState_Enabled
    | KeyState_Disabled
    | KeyState_PendingDeletion
    | KeyState_PendingImport
    | KeyState_Unavailable



keyStateDecoder : JD.Decoder KeyState
keyStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Enabled" ->
                        JD.succeed KeyState_Enabled

                    "Disabled" ->
                        JD.succeed KeyState_Disabled

                    "PendingDeletion" ->
                        JD.succeed KeyState_PendingDeletion

                    "PendingImport" ->
                        JD.succeed KeyState_PendingImport

                    "Unavailable" ->
                        JD.succeed KeyState_Unavailable


                    _ ->
                        JD.fail "bad thing"
            )




keyStateToString : KeyState -> String
keyStateToString val =
    case val of
        KeyState_Enabled ->
            "Enabled"

        KeyState_Disabled ->
            "Disabled"

        KeyState_PendingDeletion ->
            "PendingDeletion"

        KeyState_PendingImport ->
            "PendingImport"

        KeyState_Unavailable ->
            "Unavailable"




{-| One of

* `KeyUsageType_ENCRYPT_DECRYPT`

-}
type KeyUsageType
    = KeyUsageType_ENCRYPT_DECRYPT



keyUsageTypeDecoder : JD.Decoder KeyUsageType
keyUsageTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENCRYPT_DECRYPT" ->
                        JD.succeed KeyUsageType_ENCRYPT_DECRYPT


                    _ ->
                        JD.fail "bad thing"
            )




keyUsageTypeToString : KeyUsageType -> String
keyUsageTypeToString val =
    case val of
        KeyUsageType_ENCRYPT_DECRYPT ->
            "ENCRYPT_DECRYPT"




{-| Type of HTTP response from listAliases
-}
type alias ListAliasesResponse =
    { aliases : Maybe (List AliasListEntry)
    , nextMarker : Maybe String
    , truncated : Maybe Bool
    }



listAliasesResponseDecoder : JD.Decoder ListAliasesResponse
listAliasesResponseDecoder =
    JD.succeed ListAliasesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Aliases", "aliases"]
            (JD.list aliasListEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Truncated", "truncated"]
            JD.bool
        )
        




listAliasesResponseToString : ListAliasesResponse -> String -- List (String, String)
listAliasesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "aliases" "" -- val.aliases
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "truncated" "" -- val.truncated
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listGrants
-}
type alias ListGrantsResponse =
    { grants : Maybe (List GrantListEntry)
    , nextMarker : Maybe String
    , truncated : Maybe Bool
    }



listGrantsResponseDecoder : JD.Decoder ListGrantsResponse
listGrantsResponseDecoder =
    JD.succeed ListGrantsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Grants", "grants"]
            (JD.list grantListEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Truncated", "truncated"]
            JD.bool
        )
        




listGrantsResponseToString : ListGrantsResponse -> String -- List (String, String)
listGrantsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "grants" "" -- val.grants
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "truncated" "" -- val.truncated
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listKeyPolicies
-}
type alias ListKeyPoliciesResponse =
    { policyNames : Maybe (List String)
    , nextMarker : Maybe String
    , truncated : Maybe Bool
    }



listKeyPoliciesResponseDecoder : JD.Decoder ListKeyPoliciesResponse
listKeyPoliciesResponseDecoder =
    JD.succeed ListKeyPoliciesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyNames", "policyNames"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Truncated", "truncated"]
            JD.bool
        )
        




listKeyPoliciesResponseToString : ListKeyPoliciesResponse -> String -- List (String, String)
listKeyPoliciesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policyNames" "" -- val.policyNames
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "truncated" "" -- val.truncated
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listKeys
-}
type alias ListKeysResponse =
    { keys : Maybe (List KeyListEntry)
    , nextMarker : Maybe String
    , truncated : Maybe Bool
    }



listKeysResponseDecoder : JD.Decoder ListKeysResponse
listKeysResponseDecoder =
    JD.succeed ListKeysResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Keys", "keys"]
            (JD.list keyListEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Truncated", "truncated"]
            JD.bool
        )
        




listKeysResponseToString : ListKeysResponse -> String -- List (String, String)
listKeysResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keys" "" -- val.keys
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "truncated" "" -- val.truncated
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listResourceTags
-}
type alias ListResourceTagsResponse =
    { tags : Maybe (List Tag)
    , nextMarker : Maybe String
    , truncated : Maybe Bool
    }



listResourceTagsResponseDecoder : JD.Decoder ListResourceTagsResponse
listResourceTagsResponseDecoder =
    JD.succeed ListResourceTagsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Truncated", "truncated"]
            JD.bool
        )
        




listResourceTagsResponseToString : ListResourceTagsResponse -> String -- List (String, String)
listResourceTagsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "truncated" "" -- val.truncated
        
    --     |> Dict.toList
    ""



{-| One of

* `OriginType_AWS_KMS`
* `OriginType_EXTERNAL`
* `OriginType_AWS_CLOUDHSM`

-}
type OriginType
    = OriginType_AWS_KMS
    | OriginType_EXTERNAL
    | OriginType_AWS_CLOUDHSM



originTypeDecoder : JD.Decoder OriginType
originTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AWS_KMS" ->
                        JD.succeed OriginType_AWS_KMS

                    "EXTERNAL" ->
                        JD.succeed OriginType_EXTERNAL

                    "AWS_CLOUDHSM" ->
                        JD.succeed OriginType_AWS_CLOUDHSM


                    _ ->
                        JD.fail "bad thing"
            )




originTypeToString : OriginType -> String
originTypeToString val =
    case val of
        OriginType_AWS_KMS ->
            "AWS_KMS"

        OriginType_EXTERNAL ->
            "EXTERNAL"

        OriginType_AWS_CLOUDHSM ->
            "AWS_CLOUDHSM"




{-| Type of HTTP response from reEncrypt
-}
type alias ReEncryptResponse =
    { ciphertextBlob : Maybe String
    , sourceKeyId : Maybe String
    , keyId : Maybe String
    }



reEncryptResponseDecoder : JD.Decoder ReEncryptResponse
reEncryptResponseDecoder =
    JD.succeed ReEncryptResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CiphertextBlob", "ciphertextBlob"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceKeyId", "sourceKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyId", "keyId"]
            JD.string
        )
        




reEncryptResponseToString : ReEncryptResponse -> String -- List (String, String)
reEncryptResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ciphertextBlob" "" -- val.ciphertextBlob
        
    --     |> Dict.insert
    --         "sourceKeyId" "" -- val.sourceKeyId
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from scheduleKeyDeletion
-}
type alias ScheduleKeyDeletionResponse =
    { keyId : Maybe String
    , deletionDate : Maybe Posix
    }



scheduleKeyDeletionResponseDecoder : JD.Decoder ScheduleKeyDeletionResponse
scheduleKeyDeletionResponseDecoder =
    JD.succeed ScheduleKeyDeletionResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["KeyId", "keyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeletionDate", "deletionDate"]
            JDX.datetime
        )
        




scheduleKeyDeletionResponseToString : ScheduleKeyDeletionResponse -> String -- List (String, String)
scheduleKeyDeletionResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "keyId" "" -- val.keyId
        
    --     |> Dict.insert
    --         "deletionDate" "" -- val.deletionDate
        
    --     |> Dict.toList
    ""



{-| <p>A key-value pair. A tag consists of a tag key and a tag value. Tag keys and tag values are both required, but tag values can be empty (null) strings.</p> <p>For information about the rules that apply to tag keys and tag values, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>
-}
type alias Tag =
    { tagKey : String
    , tagValue : String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TagKey", "tagKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TagValue", "tagValue"]
            JD.string
        )
        




tagToString : Tag -> String -- List (String, String)
tagToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tagKey" "" -- val.tagKey
        
    --     |> Dict.insert
    --         "tagValue" "" -- val.tagValue
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateCustomKeyStore
-}
type alias UpdateCustomKeyStoreResponse =
    { 
    }



updateCustomKeyStoreResponseDecoder : JD.Decoder UpdateCustomKeyStoreResponse
updateCustomKeyStoreResponseDecoder =
    JD.succeed UpdateCustomKeyStoreResponse
        




updateCustomKeyStoreResponseToString : UpdateCustomKeyStoreResponse -> String -- List (String, String)
updateCustomKeyStoreResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `WrappingKeySpec_RSA_2048`

-}
type WrappingKeySpec
    = WrappingKeySpec_RSA_2048



wrappingKeySpecDecoder : JD.Decoder WrappingKeySpec
wrappingKeySpecDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RSA_2048" ->
                        JD.succeed WrappingKeySpec_RSA_2048


                    _ ->
                        JD.fail "bad thing"
            )




wrappingKeySpecToString : WrappingKeySpec -> String
wrappingKeySpecToString val =
    case val of
        WrappingKeySpec_RSA_2048 ->
            "RSA_2048"







{-| undefined
-}
type alias CancelKeyDeletionRequest =
    { keyId : String
    }


{-| undefined
-}
type alias ConnectCustomKeyStoreRequest =
    { customKeyStoreId : String
    }


{-| undefined
-}
type alias CreateAliasRequest =
    { aliasName : String
    , targetKeyId : String
    }


{-| undefined
-}
type alias CreateCustomKeyStoreRequest =
    { customKeyStoreName : String
    , cloudHsmClusterId : String
    , trustAnchorCertificate : String
    , keyStorePassword : String
    }


{-| undefined
-}
type alias CreateGrantRequest =
    { keyId : String
    , granteePrincipal : String
    , retiringPrincipal : Maybe String
    , operations : (List GrantOperation)
    , constraints : Maybe GrantConstraints
    , grantTokens : Maybe (List String)
    , name : Maybe String
    }


{-| undefined
-}
type alias CreateKeyRequest =
    { policy : Maybe String
    , description : Maybe String
    , keyUsage : Maybe KeyUsageType
    , origin : Maybe OriginType
    , customKeyStoreId : Maybe String
    , bypassPolicyLockoutSafetyCheck : Maybe Bool
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias DecryptRequest =
    { ciphertextBlob : String
    , encryptionContext : Maybe (Dict String String)
    , grantTokens : Maybe (List String)
    }


{-| undefined
-}
type alias DeleteAliasRequest =
    { aliasName : String
    }


{-| undefined
-}
type alias DeleteCustomKeyStoreRequest =
    { customKeyStoreId : String
    }


{-| undefined
-}
type alias DeleteImportedKeyMaterialRequest =
    { keyId : String
    }


{-| undefined
-}
type alias DescribeCustomKeyStoresRequest =
    { customKeyStoreId : Maybe String
    , customKeyStoreName : Maybe String
    , limit : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias DescribeKeyRequest =
    { keyId : String
    , grantTokens : Maybe (List String)
    }


{-| undefined
-}
type alias DisableKeyRequest =
    { keyId : String
    }


{-| undefined
-}
type alias DisableKeyRotationRequest =
    { keyId : String
    }


{-| undefined
-}
type alias DisconnectCustomKeyStoreRequest =
    { customKeyStoreId : String
    }


{-| undefined
-}
type alias EnableKeyRequest =
    { keyId : String
    }


{-| undefined
-}
type alias EnableKeyRotationRequest =
    { keyId : String
    }


{-| undefined
-}
type alias EncryptRequest =
    { keyId : String
    , plaintext : String
    , encryptionContext : Maybe (Dict String String)
    , grantTokens : Maybe (List String)
    }


{-| undefined
-}
type alias GenerateDataKeyRequest =
    { keyId : String
    , encryptionContext : Maybe (Dict String String)
    , numberOfBytes : Maybe Int
    , keySpec : Maybe DataKeySpec
    , grantTokens : Maybe (List String)
    }


{-| undefined
-}
type alias GenerateDataKeyWithoutPlaintextRequest =
    { keyId : String
    , encryptionContext : Maybe (Dict String String)
    , keySpec : Maybe DataKeySpec
    , numberOfBytes : Maybe Int
    , grantTokens : Maybe (List String)
    }


{-| undefined
-}
type alias GenerateRandomRequest =
    { numberOfBytes : Maybe Int
    , customKeyStoreId : Maybe String
    }


{-| undefined
-}
type alias GetKeyPolicyRequest =
    { keyId : String
    , policyName : String
    }


{-| undefined
-}
type alias GetKeyRotationStatusRequest =
    { keyId : String
    }


{-| undefined
-}
type alias GetParametersForImportRequest =
    { keyId : String
    , wrappingAlgorithm : AlgorithmSpec
    , wrappingKeySpec : WrappingKeySpec
    }


{-| undefined
-}
type alias ImportKeyMaterialRequest =
    { keyId : String
    , importToken : String
    , encryptedKeyMaterial : String
    , validTo : Maybe Posix
    , expirationModel : Maybe ExpirationModelType
    }


{-| undefined
-}
type alias ListAliasesRequest =
    { keyId : Maybe String
    , limit : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias ListGrantsRequest =
    { limit : Maybe Int
    , marker : Maybe String
    , keyId : String
    }


{-| undefined
-}
type alias ListKeyPoliciesRequest =
    { keyId : String
    , limit : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias ListKeysRequest =
    { limit : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias ListResourceTagsRequest =
    { keyId : String
    , limit : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias ListRetirableGrantsRequest =
    { limit : Maybe Int
    , marker : Maybe String
    , retiringPrincipal : String
    }


{-| undefined
-}
type alias PutKeyPolicyRequest =
    { keyId : String
    , policyName : String
    , policy : String
    , bypassPolicyLockoutSafetyCheck : Maybe Bool
    }


{-| undefined
-}
type alias ReEncryptRequest =
    { ciphertextBlob : String
    , sourceEncryptionContext : Maybe (Dict String String)
    , destinationKeyId : String
    , destinationEncryptionContext : Maybe (Dict String String)
    , grantTokens : Maybe (List String)
    }


{-| undefined
-}
type alias RetireGrantRequest =
    { grantToken : Maybe String
    , keyId : Maybe String
    , grantId : Maybe String
    }


{-| undefined
-}
type alias RevokeGrantRequest =
    { keyId : String
    , grantId : String
    }


{-| undefined
-}
type alias ScheduleKeyDeletionRequest =
    { keyId : String
    , pendingWindowInDays : Maybe Int
    }


{-| undefined
-}
type alias TagResourceRequest =
    { keyId : String
    , tags : (List Tag)
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { keyId : String
    , tagKeys : (List String)
    }


{-| undefined
-}
type alias UpdateAliasRequest =
    { aliasName : String
    , targetKeyId : String
    }


{-| undefined
-}
type alias UpdateCustomKeyStoreRequest =
    { customKeyStoreId : String
    , newCustomKeyStoreName : Maybe String
    , keyStorePassword : Maybe String
    , cloudHsmClusterId : Maybe String
    }


{-| undefined
-}
type alias UpdateKeyDescriptionRequest =
    { keyId : String
    , description : String
    }










aliasListEntryEncoder : AliasListEntry -> JE.Value
aliasListEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AliasName", data.aliasName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AliasArn", data.aliasArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TargetKeyId", data.targetKeyId)
        
        
        |> JE.object






cancelKeyDeletionRequestEncoder : CancelKeyDeletionRequest -> JE.Value
cancelKeyDeletionRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        |> JE.object






cancelKeyDeletionResponseEncoder : CancelKeyDeletionResponse -> JE.Value
cancelKeyDeletionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        |> JE.object






connectCustomKeyStoreRequestEncoder : ConnectCustomKeyStoreRequest -> JE.Value
connectCustomKeyStoreRequestEncoder data =
    []
        
        
        |> (::) ("CustomKeyStoreId", data.customKeyStoreId |> (JE.string))
        
        
        |> JE.object






connectCustomKeyStoreResponseEncoder : ConnectCustomKeyStoreResponse -> JE.Value
connectCustomKeyStoreResponseEncoder data =
    []
        
        |> JE.object














createAliasRequestEncoder : CreateAliasRequest -> JE.Value
createAliasRequestEncoder data =
    []
        
        
        |> (::) ("AliasName", data.aliasName |> (JE.string))
        
        
        
        |> (::) ("TargetKeyId", data.targetKeyId |> (JE.string))
        
        
        |> JE.object






createCustomKeyStoreRequestEncoder : CreateCustomKeyStoreRequest -> JE.Value
createCustomKeyStoreRequestEncoder data =
    []
        
        
        |> (::) ("CustomKeyStoreName", data.customKeyStoreName |> (JE.string))
        
        
        
        |> (::) ("CloudHsmClusterId", data.cloudHsmClusterId |> (JE.string))
        
        
        
        |> (::) ("TrustAnchorCertificate", data.trustAnchorCertificate |> (JE.string))
        
        
        
        |> (::) ("KeyStorePassword", data.keyStorePassword |> (JE.string))
        
        
        |> JE.object






createCustomKeyStoreResponseEncoder : CreateCustomKeyStoreResponse -> JE.Value
createCustomKeyStoreResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomKeyStoreId", data.customKeyStoreId)
        
        
        |> JE.object






createGrantRequestEncoder : CreateGrantRequest -> JE.Value
createGrantRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> (::) ("GranteePrincipal", data.granteePrincipal |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RetiringPrincipal", data.retiringPrincipal)
        
        
        
        |> (::) ("Operations", data.operations |> (JE.list (grantOperationToString >> JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (grantConstraintsEncoder)
            ("Constraints", data.constraints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("GrantTokens", data.grantTokens)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






createGrantResponseEncoder : CreateGrantResponse -> JE.Value
createGrantResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GrantToken", data.grantToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GrantId", data.grantId)
        
        
        |> JE.object






createKeyRequestEncoder : CreateKeyRequest -> JE.Value
createKeyRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Policy", data.policy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (keyUsageTypeToString >> JE.string)
            ("KeyUsage", data.keyUsage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (originTypeToString >> JE.string)
            ("Origin", data.origin)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomKeyStoreId", data.customKeyStoreId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("BypassPolicyLockoutSafetyCheck", data.bypassPolicyLockoutSafetyCheck)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






createKeyResponseEncoder : CreateKeyResponse -> JE.Value
createKeyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (keyMetadataEncoder)
            ("KeyMetadata", data.keyMetadata)
        
        
        |> JE.object






customKeyStoresListEntryEncoder : CustomKeyStoresListEntry -> JE.Value
customKeyStoresListEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomKeyStoreId", data.customKeyStoreId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomKeyStoreName", data.customKeyStoreName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CloudHsmClusterId", data.cloudHsmClusterId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TrustAnchorCertificate", data.trustAnchorCertificate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (connectionStateTypeToString >> JE.string)
            ("ConnectionState", data.connectionState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (connectionErrorCodeTypeToString >> JE.string)
            ("ConnectionErrorCode", data.connectionErrorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        |> JE.object










decryptRequestEncoder : DecryptRequest -> JE.Value
decryptRequestEncoder data =
    []
        
        
        |> (::) ("CiphertextBlob", data.ciphertextBlob |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("EncryptionContext", data.encryptionContext)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("GrantTokens", data.grantTokens)
        
        
        |> JE.object






decryptResponseEncoder : DecryptResponse -> JE.Value
decryptResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Plaintext", data.plaintext)
        
        
        |> JE.object






deleteAliasRequestEncoder : DeleteAliasRequest -> JE.Value
deleteAliasRequestEncoder data =
    []
        
        
        |> (::) ("AliasName", data.aliasName |> (JE.string))
        
        
        |> JE.object






deleteCustomKeyStoreRequestEncoder : DeleteCustomKeyStoreRequest -> JE.Value
deleteCustomKeyStoreRequestEncoder data =
    []
        
        
        |> (::) ("CustomKeyStoreId", data.customKeyStoreId |> (JE.string))
        
        
        |> JE.object






deleteCustomKeyStoreResponseEncoder : DeleteCustomKeyStoreResponse -> JE.Value
deleteCustomKeyStoreResponseEncoder data =
    []
        
        |> JE.object






deleteImportedKeyMaterialRequestEncoder : DeleteImportedKeyMaterialRequest -> JE.Value
deleteImportedKeyMaterialRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        |> JE.object






describeCustomKeyStoresRequestEncoder : DescribeCustomKeyStoresRequest -> JE.Value
describeCustomKeyStoresRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomKeyStoreId", data.customKeyStoreId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomKeyStoreName", data.customKeyStoreName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Marker", data.marker)
        
        
        |> JE.object






describeCustomKeyStoresResponseEncoder : DescribeCustomKeyStoresResponse -> JE.Value
describeCustomKeyStoresResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (customKeyStoresListEntryEncoder))
            ("CustomKeyStores", data.customKeyStores)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Truncated", data.truncated)
        
        
        |> JE.object






describeKeyRequestEncoder : DescribeKeyRequest -> JE.Value
describeKeyRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("GrantTokens", data.grantTokens)
        
        
        |> JE.object






describeKeyResponseEncoder : DescribeKeyResponse -> JE.Value
describeKeyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (keyMetadataEncoder)
            ("KeyMetadata", data.keyMetadata)
        
        
        |> JE.object






disableKeyRequestEncoder : DisableKeyRequest -> JE.Value
disableKeyRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        |> JE.object






disableKeyRotationRequestEncoder : DisableKeyRotationRequest -> JE.Value
disableKeyRotationRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        |> JE.object






disconnectCustomKeyStoreRequestEncoder : DisconnectCustomKeyStoreRequest -> JE.Value
disconnectCustomKeyStoreRequestEncoder data =
    []
        
        
        |> (::) ("CustomKeyStoreId", data.customKeyStoreId |> (JE.string))
        
        
        |> JE.object






disconnectCustomKeyStoreResponseEncoder : DisconnectCustomKeyStoreResponse -> JE.Value
disconnectCustomKeyStoreResponseEncoder data =
    []
        
        |> JE.object






enableKeyRequestEncoder : EnableKeyRequest -> JE.Value
enableKeyRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        |> JE.object






enableKeyRotationRequestEncoder : EnableKeyRotationRequest -> JE.Value
enableKeyRotationRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        |> JE.object






encryptRequestEncoder : EncryptRequest -> JE.Value
encryptRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> (::) ("Plaintext", data.plaintext |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("EncryptionContext", data.encryptionContext)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("GrantTokens", data.grantTokens)
        
        
        |> JE.object






encryptResponseEncoder : EncryptResponse -> JE.Value
encryptResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CiphertextBlob", data.ciphertextBlob)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        |> JE.object










generateDataKeyRequestEncoder : GenerateDataKeyRequest -> JE.Value
generateDataKeyRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("EncryptionContext", data.encryptionContext)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfBytes", data.numberOfBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (dataKeySpecToString >> JE.string)
            ("KeySpec", data.keySpec)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("GrantTokens", data.grantTokens)
        
        
        |> JE.object






generateDataKeyResponseEncoder : GenerateDataKeyResponse -> JE.Value
generateDataKeyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CiphertextBlob", data.ciphertextBlob)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Plaintext", data.plaintext)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        |> JE.object






generateDataKeyWithoutPlaintextRequestEncoder : GenerateDataKeyWithoutPlaintextRequest -> JE.Value
generateDataKeyWithoutPlaintextRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("EncryptionContext", data.encryptionContext)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (dataKeySpecToString >> JE.string)
            ("KeySpec", data.keySpec)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfBytes", data.numberOfBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("GrantTokens", data.grantTokens)
        
        
        |> JE.object






generateDataKeyWithoutPlaintextResponseEncoder : GenerateDataKeyWithoutPlaintextResponse -> JE.Value
generateDataKeyWithoutPlaintextResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CiphertextBlob", data.ciphertextBlob)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        |> JE.object






generateRandomRequestEncoder : GenerateRandomRequest -> JE.Value
generateRandomRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NumberOfBytes", data.numberOfBytes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomKeyStoreId", data.customKeyStoreId)
        
        
        |> JE.object






generateRandomResponseEncoder : GenerateRandomResponse -> JE.Value
generateRandomResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Plaintext", data.plaintext)
        
        
        |> JE.object






getKeyPolicyRequestEncoder : GetKeyPolicyRequest -> JE.Value
getKeyPolicyRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> (::) ("PolicyName", data.policyName |> (JE.string))
        
        
        |> JE.object






getKeyPolicyResponseEncoder : GetKeyPolicyResponse -> JE.Value
getKeyPolicyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Policy", data.policy)
        
        
        |> JE.object






getKeyRotationStatusRequestEncoder : GetKeyRotationStatusRequest -> JE.Value
getKeyRotationStatusRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        |> JE.object






getKeyRotationStatusResponseEncoder : GetKeyRotationStatusResponse -> JE.Value
getKeyRotationStatusResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("KeyRotationEnabled", data.keyRotationEnabled)
        
        
        |> JE.object






getParametersForImportRequestEncoder : GetParametersForImportRequest -> JE.Value
getParametersForImportRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> (::) ("WrappingAlgorithm", data.wrappingAlgorithm |> (algorithmSpecToString >> JE.string))
        
        
        
        |> (::) ("WrappingKeySpec", data.wrappingKeySpec |> (wrappingKeySpecToString >> JE.string))
        
        
        |> JE.object






getParametersForImportResponseEncoder : GetParametersForImportResponse -> JE.Value
getParametersForImportResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImportToken", data.importToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PublicKey", data.publicKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ParametersValidTo", data.parametersValidTo)
        
        
        |> JE.object






grantConstraintsEncoder : GrantConstraints -> JE.Value
grantConstraintsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("EncryptionContextSubset", data.encryptionContextSubset)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("EncryptionContextEquals", data.encryptionContextEquals)
        
        
        |> JE.object






grantListEntryEncoder : GrantListEntry -> JE.Value
grantListEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GrantId", data.grantId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GranteePrincipal", data.granteePrincipal)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RetiringPrincipal", data.retiringPrincipal)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IssuingAccount", data.issuingAccount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (grantOperationToString >> JE.string))
            ("Operations", data.operations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (grantConstraintsEncoder)
            ("Constraints", data.constraints)
        
        
        |> JE.object










importKeyMaterialRequestEncoder : ImportKeyMaterialRequest -> JE.Value
importKeyMaterialRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> (::) ("ImportToken", data.importToken |> (JE.string))
        
        
        
        |> (::) ("EncryptedKeyMaterial", data.encryptedKeyMaterial |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ValidTo", data.validTo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (expirationModelTypeToString >> JE.string)
            ("ExpirationModel", data.expirationModel)
        
        
        |> JE.object






importKeyMaterialResponseEncoder : ImportKeyMaterialResponse -> JE.Value
importKeyMaterialResponseEncoder data =
    []
        
        |> JE.object






keyListEntryEncoder : KeyListEntry -> JE.Value
keyListEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyArn", data.keyArn)
        
        
        |> JE.object










keyMetadataEncoder : KeyMetadata -> JE.Value
keyMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AWSAccountId", data.aWSAccountId)
        
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (keyUsageTypeToString >> JE.string)
            ("KeyUsage", data.keyUsage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (keyStateToString >> JE.string)
            ("KeyState", data.keyState)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("DeletionDate", data.deletionDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ValidTo", data.validTo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (originTypeToString >> JE.string)
            ("Origin", data.origin)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomKeyStoreId", data.customKeyStoreId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CloudHsmClusterId", data.cloudHsmClusterId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (expirationModelTypeToString >> JE.string)
            ("ExpirationModel", data.expirationModel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (keyManagerTypeToString >> JE.string)
            ("KeyManager", data.keyManager)
        
        
        |> JE.object














listAliasesRequestEncoder : ListAliasesRequest -> JE.Value
listAliasesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Marker", data.marker)
        
        
        |> JE.object






listAliasesResponseEncoder : ListAliasesResponse -> JE.Value
listAliasesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (aliasListEntryEncoder))
            ("Aliases", data.aliases)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Truncated", data.truncated)
        
        
        |> JE.object






listGrantsRequestEncoder : ListGrantsRequest -> JE.Value
listGrantsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Marker", data.marker)
        
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        |> JE.object






listGrantsResponseEncoder : ListGrantsResponse -> JE.Value
listGrantsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (grantListEntryEncoder))
            ("Grants", data.grants)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Truncated", data.truncated)
        
        
        |> JE.object






listKeyPoliciesRequestEncoder : ListKeyPoliciesRequest -> JE.Value
listKeyPoliciesRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Marker", data.marker)
        
        
        |> JE.object






listKeyPoliciesResponseEncoder : ListKeyPoliciesResponse -> JE.Value
listKeyPoliciesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("PolicyNames", data.policyNames)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Truncated", data.truncated)
        
        
        |> JE.object






listKeysRequestEncoder : ListKeysRequest -> JE.Value
listKeysRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Marker", data.marker)
        
        
        |> JE.object






listKeysResponseEncoder : ListKeysResponse -> JE.Value
listKeysResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (keyListEntryEncoder))
            ("Keys", data.keys)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Truncated", data.truncated)
        
        
        |> JE.object






listResourceTagsRequestEncoder : ListResourceTagsRequest -> JE.Value
listResourceTagsRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Marker", data.marker)
        
        
        |> JE.object






listResourceTagsResponseEncoder : ListResourceTagsResponse -> JE.Value
listResourceTagsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Truncated", data.truncated)
        
        
        |> JE.object






listRetirableGrantsRequestEncoder : ListRetirableGrantsRequest -> JE.Value
listRetirableGrantsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Marker", data.marker)
        
        
        
        |> (::) ("RetiringPrincipal", data.retiringPrincipal |> (JE.string))
        
        
        |> JE.object










putKeyPolicyRequestEncoder : PutKeyPolicyRequest -> JE.Value
putKeyPolicyRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> (::) ("PolicyName", data.policyName |> (JE.string))
        
        
        
        |> (::) ("Policy", data.policy |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("BypassPolicyLockoutSafetyCheck", data.bypassPolicyLockoutSafetyCheck)
        
        
        |> JE.object






reEncryptRequestEncoder : ReEncryptRequest -> JE.Value
reEncryptRequestEncoder data =
    []
        
        
        |> (::) ("CiphertextBlob", data.ciphertextBlob |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("SourceEncryptionContext", data.sourceEncryptionContext)
        
        
        
        |> (::) ("DestinationKeyId", data.destinationKeyId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("DestinationEncryptionContext", data.destinationEncryptionContext)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("GrantTokens", data.grantTokens)
        
        
        |> JE.object






reEncryptResponseEncoder : ReEncryptResponse -> JE.Value
reEncryptResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CiphertextBlob", data.ciphertextBlob)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SourceKeyId", data.sourceKeyId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        |> JE.object






retireGrantRequestEncoder : RetireGrantRequest -> JE.Value
retireGrantRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GrantToken", data.grantToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GrantId", data.grantId)
        
        
        |> JE.object






revokeGrantRequestEncoder : RevokeGrantRequest -> JE.Value
revokeGrantRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> (::) ("GrantId", data.grantId |> (JE.string))
        
        
        |> JE.object






scheduleKeyDeletionRequestEncoder : ScheduleKeyDeletionRequest -> JE.Value
scheduleKeyDeletionRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PendingWindowInDays", data.pendingWindowInDays)
        
        
        |> JE.object






scheduleKeyDeletionResponseEncoder : ScheduleKeyDeletionResponse -> JE.Value
scheduleKeyDeletionResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyId", data.keyId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("DeletionDate", data.deletionDate)
        
        
        |> JE.object






tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("TagKey", data.tagKey |> (JE.string))
        
        
        
        |> (::) ("TagValue", data.tagValue |> (JE.string))
        
        
        |> JE.object






tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> (::) ("Tags", data.tags |> (JE.list (tagEncoder)))
        
        
        |> JE.object






untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> (::) ("TagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






updateAliasRequestEncoder : UpdateAliasRequest -> JE.Value
updateAliasRequestEncoder data =
    []
        
        
        |> (::) ("AliasName", data.aliasName |> (JE.string))
        
        
        
        |> (::) ("TargetKeyId", data.targetKeyId |> (JE.string))
        
        
        |> JE.object






updateCustomKeyStoreRequestEncoder : UpdateCustomKeyStoreRequest -> JE.Value
updateCustomKeyStoreRequestEncoder data =
    []
        
        
        |> (::) ("CustomKeyStoreId", data.customKeyStoreId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NewCustomKeyStoreName", data.newCustomKeyStoreName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("KeyStorePassword", data.keyStorePassword)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CloudHsmClusterId", data.cloudHsmClusterId)
        
        
        |> JE.object






updateCustomKeyStoreResponseEncoder : UpdateCustomKeyStoreResponse -> JE.Value
updateCustomKeyStoreResponseEncoder data =
    []
        
        |> JE.object






updateKeyDescriptionRequestEncoder : UpdateKeyDescriptionRequest -> JE.Value
updateKeyDescriptionRequestEncoder data =
    []
        
        
        |> (::) ("KeyId", data.keyId |> (JE.string))
        
        
        
        |> (::) ("Description", data.description |> (JE.string))
        
        
        |> JE.object









