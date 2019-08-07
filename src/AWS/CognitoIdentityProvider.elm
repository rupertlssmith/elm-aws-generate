module AWS.CognitoIdentityProvider
    exposing
        ( service
        , addCustomAttributes
        , adminAddUserToGroup
        , adminConfirmSignUp
        , adminCreateUser
        , AdminCreateUserOptions
        , adminDeleteUser
        , adminDeleteUserAttributes
        , adminDisableProviderForUser
        , adminDisableUser
        , adminEnableUser
        , adminForgetDevice
        , adminGetDevice
        , adminGetUser
        , adminInitiateAuth
        , AdminInitiateAuthOptions
        , adminLinkProviderForUser
        , adminListDevices
        , AdminListDevicesOptions
        , adminListGroupsForUser
        , AdminListGroupsForUserOptions
        , adminListUserAuthEvents
        , AdminListUserAuthEventsOptions
        , adminRemoveUserFromGroup
        , adminResetUserPassword
        , adminRespondToAuthChallenge
        , AdminRespondToAuthChallengeOptions
        , adminSetUserMFAPreference
        , AdminSetUserMFAPreferenceOptions
        , adminSetUserPassword
        , AdminSetUserPasswordOptions
        , adminSetUserSettings
        , adminUpdateAuthEventFeedback
        , adminUpdateDeviceStatus
        , AdminUpdateDeviceStatusOptions
        , adminUpdateUserAttributes
        , adminUserGlobalSignOut
        , associateSoftwareToken
        , AssociateSoftwareTokenOptions
        , changePassword
        , confirmDevice
        , ConfirmDeviceOptions
        , confirmForgotPassword
        , ConfirmForgotPasswordOptions
        , confirmSignUp
        , ConfirmSignUpOptions
        , createGroup
        , CreateGroupOptions
        , createIdentityProvider
        , CreateIdentityProviderOptions
        , createResourceServer
        , CreateResourceServerOptions
        , createUserImportJob
        , createUserPool
        , CreateUserPoolOptions
        , createUserPoolClient
        , CreateUserPoolClientOptions
        , createUserPoolDomain
        , CreateUserPoolDomainOptions
        , deleteGroup
        , deleteIdentityProvider
        , deleteResourceServer
        , deleteUser
        , deleteUserAttributes
        , deleteUserPool
        , deleteUserPoolClient
        , deleteUserPoolDomain
        , describeIdentityProvider
        , describeResourceServer
        , describeRiskConfiguration
        , DescribeRiskConfigurationOptions
        , describeUserImportJob
        , describeUserPool
        , describeUserPoolClient
        , describeUserPoolDomain
        , forgetDevice
        , ForgetDeviceOptions
        , forgotPassword
        , ForgotPasswordOptions
        , getCSVHeader
        , getDevice
        , GetDeviceOptions
        , getGroup
        , getIdentityProviderByIdentifier
        , getSigningCertificate
        , getUICustomization
        , GetUICustomizationOptions
        , getUser
        , getUserAttributeVerificationCode
        , getUserPoolMfaConfig
        , globalSignOut
        , initiateAuth
        , InitiateAuthOptions
        , listDevices
        , ListDevicesOptions
        , listGroups
        , ListGroupsOptions
        , listIdentityProviders
        , ListIdentityProvidersOptions
        , listResourceServers
        , ListResourceServersOptions
        , listTagsForResource
        , listUserImportJobs
        , ListUserImportJobsOptions
        , listUserPoolClients
        , ListUserPoolClientsOptions
        , listUserPools
        , ListUserPoolsOptions
        , listUsers
        , ListUsersOptions
        , listUsersInGroup
        , ListUsersInGroupOptions
        , resendConfirmationCode
        , ResendConfirmationCodeOptions
        , respondToAuthChallenge
        , RespondToAuthChallengeOptions
        , setRiskConfiguration
        , SetRiskConfigurationOptions
        , setUICustomization
        , SetUICustomizationOptions
        , setUserMFAPreference
        , SetUserMFAPreferenceOptions
        , setUserPoolMfaConfig
        , SetUserPoolMfaConfigOptions
        , setUserSettings
        , signUp
        , SignUpOptions
        , startUserImportJob
        , stopUserImportJob
        , tagResource
        , TagResourceOptions
        , untagResource
        , UntagResourceOptions
        , updateAuthEventFeedback
        , updateDeviceStatus
        , UpdateDeviceStatusOptions
        , updateGroup
        , UpdateGroupOptions
        , updateIdentityProvider
        , UpdateIdentityProviderOptions
        , updateResourceServer
        , UpdateResourceServerOptions
        , updateUserAttributes
        , updateUserPool
        , UpdateUserPoolOptions
        , updateUserPoolClient
        , UpdateUserPoolClientOptions
        , updateUserPoolDomain
        , verifySoftwareToken
        , VerifySoftwareTokenOptions
        , verifyUserAttribute
        , AccountTakeoverActionType
        , AccountTakeoverActionsType
        , AccountTakeoverEventActionType(..)
        , AccountTakeoverRiskConfigurationType
        , AddCustomAttributesResponse
        , AdminConfirmSignUpResponse
        , AdminCreateUserConfigType
        , AdminCreateUserResponse
        , AdminDeleteUserAttributesResponse
        , AdminDisableProviderForUserResponse
        , AdminDisableUserResponse
        , AdminEnableUserResponse
        , AdminGetDeviceResponse
        , AdminGetUserResponse
        , AdminInitiateAuthResponse
        , AdminLinkProviderForUserResponse
        , AdminListDevicesResponse
        , AdminListGroupsForUserResponse
        , AdminListUserAuthEventsResponse
        , AdminResetUserPasswordResponse
        , AdminRespondToAuthChallengeResponse
        , AdminSetUserMFAPreferenceResponse
        , AdminSetUserPasswordResponse
        , AdminSetUserSettingsResponse
        , AdminUpdateAuthEventFeedbackResponse
        , AdminUpdateDeviceStatusResponse
        , AdminUpdateUserAttributesResponse
        , AdminUserGlobalSignOutResponse
        , AdvancedSecurityModeType(..)
        , AliasAttributeType(..)
        , AnalyticsConfigurationType
        , AnalyticsMetadataType
        , AssociateSoftwareTokenResponse
        , AttributeDataType(..)
        , AttributeType
        , AuthEventType
        , AuthFlowType(..)
        , AuthenticationResultType
        , ChallengeName(..)
        , ChallengeNameType(..)
        , ChallengeResponse(..)
        , ChallengeResponseType
        , ChangePasswordResponse
        , CodeDeliveryDetailsType
        , CompromisedCredentialsActionsType
        , CompromisedCredentialsEventActionType(..)
        , CompromisedCredentialsRiskConfigurationType
        , ConfirmDeviceResponse
        , ConfirmForgotPasswordResponse
        , ConfirmSignUpResponse
        , ContextDataType
        , CreateGroupResponse
        , CreateIdentityProviderResponse
        , CreateResourceServerResponse
        , CreateUserImportJobResponse
        , CreateUserPoolClientResponse
        , CreateUserPoolDomainResponse
        , CreateUserPoolResponse
        , CustomDomainConfigType
        , DefaultEmailOptionType(..)
        , DeleteUserAttributesResponse
        , DeleteUserPoolDomainResponse
        , DeliveryMediumType(..)
        , DescribeIdentityProviderResponse
        , DescribeResourceServerResponse
        , DescribeRiskConfigurationResponse
        , DescribeUserImportJobResponse
        , DescribeUserPoolClientResponse
        , DescribeUserPoolDomainResponse
        , DescribeUserPoolResponse
        , DeviceConfigurationType
        , DeviceRememberedStatusType(..)
        , DeviceSecretVerifierConfigType
        , DeviceType
        , DomainDescriptionType
        , DomainStatusType(..)
        , EmailConfigurationType
        , EmailSendingAccountType(..)
        , EventContextDataType
        , EventFeedbackType
        , EventFilterType(..)
        , EventResponseType(..)
        , EventRiskType
        , EventType(..)
        , ExplicitAuthFlowsType(..)
        , FeedbackValueType(..)
        , ForgotPasswordResponse
        , GetCSVHeaderResponse
        , GetDeviceResponse
        , GetGroupResponse
        , GetIdentityProviderByIdentifierResponse
        , GetSigningCertificateResponse
        , GetUICustomizationResponse
        , GetUserAttributeVerificationCodeResponse
        , GetUserPoolMfaConfigResponse
        , GetUserResponse
        , GlobalSignOutResponse
        , GroupType
        , HttpHeader
        , IdentityProviderType
        , IdentityProviderTypeType(..)
        , InitiateAuthResponse
        , LambdaConfigType
        , ListDevicesResponse
        , ListGroupsResponse
        , ListIdentityProvidersResponse
        , ListResourceServersResponse
        , ListTagsForResourceResponse
        , ListUserImportJobsResponse
        , ListUserPoolClientsResponse
        , ListUserPoolsResponse
        , ListUsersInGroupResponse
        , ListUsersResponse
        , MFAOptionType
        , MessageActionType(..)
        , MessageTemplateType
        , NewDeviceMetadataType
        , NotifyConfigurationType
        , NotifyEmailType
        , NumberAttributeConstraintsType
        , OAuthFlowType(..)
        , PasswordPolicyType
        , ProviderDescription
        , ProviderUserIdentifierType
        , ResendConfirmationCodeResponse
        , ResourceServerScopeType
        , ResourceServerType
        , RespondToAuthChallengeResponse
        , RiskConfigurationType
        , RiskDecisionType(..)
        , RiskExceptionConfigurationType
        , RiskLevelType(..)
        , SMSMfaSettingsType
        , SchemaAttributeType
        , SetRiskConfigurationResponse
        , SetUICustomizationResponse
        , SetUserMFAPreferenceResponse
        , SetUserPoolMfaConfigResponse
        , SetUserSettingsResponse
        , SignUpResponse
        , SmsConfigurationType
        , SmsMfaConfigType
        , SoftwareTokenMfaConfigType
        , SoftwareTokenMfaSettingsType
        , StartUserImportJobResponse
        , StatusType(..)
        , StopUserImportJobResponse
        , StringAttributeConstraintsType
        , TagResourceResponse
        , UICustomizationType
        , UntagResourceResponse
        , UpdateAuthEventFeedbackResponse
        , UpdateDeviceStatusResponse
        , UpdateGroupResponse
        , UpdateIdentityProviderResponse
        , UpdateResourceServerResponse
        , UpdateUserAttributesResponse
        , UpdateUserPoolClientResponse
        , UpdateUserPoolDomainResponse
        , UpdateUserPoolResponse
        , UserContextDataType
        , UserImportJobStatusType(..)
        , UserImportJobType
        , UserPoolAddOnsType
        , UserPoolClientDescription
        , UserPoolClientType
        , UserPoolDescriptionType
        , UserPoolMfaType(..)
        , UserPoolPolicyType
        , UserPoolType
        , UserStatusType(..)
        , UserType
        , UsernameAttributeType(..)
        , VerificationMessageTemplateType
        , VerifiedAttributeType(..)
        , VerifySoftwareTokenResponse
        , VerifySoftwareTokenResponseType(..)
        , VerifyUserAttributeResponse
        )

{-| <p>Using the Amazon Cognito User Pools API, you can create a user pool to manage directories and users. You can authenticate a user to obtain tokens related to user identity and access policies.</p> <p>This API reference provides information about user pools in Amazon Cognito User Pools.</p> <p>For more information, see the Amazon Cognito Documentation.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [addCustomAttributes](#addCustomAttributes)
* [adminAddUserToGroup](#adminAddUserToGroup)
* [adminConfirmSignUp](#adminConfirmSignUp)
* [adminCreateUser](#adminCreateUser)
* [AdminCreateUserOptions](#AdminCreateUserOptions)
* [adminDeleteUser](#adminDeleteUser)
* [adminDeleteUserAttributes](#adminDeleteUserAttributes)
* [adminDisableProviderForUser](#adminDisableProviderForUser)
* [adminDisableUser](#adminDisableUser)
* [adminEnableUser](#adminEnableUser)
* [adminForgetDevice](#adminForgetDevice)
* [adminGetDevice](#adminGetDevice)
* [adminGetUser](#adminGetUser)
* [adminInitiateAuth](#adminInitiateAuth)
* [AdminInitiateAuthOptions](#AdminInitiateAuthOptions)
* [adminLinkProviderForUser](#adminLinkProviderForUser)
* [adminListDevices](#adminListDevices)
* [AdminListDevicesOptions](#AdminListDevicesOptions)
* [adminListGroupsForUser](#adminListGroupsForUser)
* [AdminListGroupsForUserOptions](#AdminListGroupsForUserOptions)
* [adminListUserAuthEvents](#adminListUserAuthEvents)
* [AdminListUserAuthEventsOptions](#AdminListUserAuthEventsOptions)
* [adminRemoveUserFromGroup](#adminRemoveUserFromGroup)
* [adminResetUserPassword](#adminResetUserPassword)
* [adminRespondToAuthChallenge](#adminRespondToAuthChallenge)
* [AdminRespondToAuthChallengeOptions](#AdminRespondToAuthChallengeOptions)
* [adminSetUserMFAPreference](#adminSetUserMFAPreference)
* [AdminSetUserMFAPreferenceOptions](#AdminSetUserMFAPreferenceOptions)
* [adminSetUserPassword](#adminSetUserPassword)
* [AdminSetUserPasswordOptions](#AdminSetUserPasswordOptions)
* [adminSetUserSettings](#adminSetUserSettings)
* [adminUpdateAuthEventFeedback](#adminUpdateAuthEventFeedback)
* [adminUpdateDeviceStatus](#adminUpdateDeviceStatus)
* [AdminUpdateDeviceStatusOptions](#AdminUpdateDeviceStatusOptions)
* [adminUpdateUserAttributes](#adminUpdateUserAttributes)
* [adminUserGlobalSignOut](#adminUserGlobalSignOut)
* [associateSoftwareToken](#associateSoftwareToken)
* [AssociateSoftwareTokenOptions](#AssociateSoftwareTokenOptions)
* [changePassword](#changePassword)
* [confirmDevice](#confirmDevice)
* [ConfirmDeviceOptions](#ConfirmDeviceOptions)
* [confirmForgotPassword](#confirmForgotPassword)
* [ConfirmForgotPasswordOptions](#ConfirmForgotPasswordOptions)
* [confirmSignUp](#confirmSignUp)
* [ConfirmSignUpOptions](#ConfirmSignUpOptions)
* [createGroup](#createGroup)
* [CreateGroupOptions](#CreateGroupOptions)
* [createIdentityProvider](#createIdentityProvider)
* [CreateIdentityProviderOptions](#CreateIdentityProviderOptions)
* [createResourceServer](#createResourceServer)
* [CreateResourceServerOptions](#CreateResourceServerOptions)
* [createUserImportJob](#createUserImportJob)
* [createUserPool](#createUserPool)
* [CreateUserPoolOptions](#CreateUserPoolOptions)
* [createUserPoolClient](#createUserPoolClient)
* [CreateUserPoolClientOptions](#CreateUserPoolClientOptions)
* [createUserPoolDomain](#createUserPoolDomain)
* [CreateUserPoolDomainOptions](#CreateUserPoolDomainOptions)
* [deleteGroup](#deleteGroup)
* [deleteIdentityProvider](#deleteIdentityProvider)
* [deleteResourceServer](#deleteResourceServer)
* [deleteUser](#deleteUser)
* [deleteUserAttributes](#deleteUserAttributes)
* [deleteUserPool](#deleteUserPool)
* [deleteUserPoolClient](#deleteUserPoolClient)
* [deleteUserPoolDomain](#deleteUserPoolDomain)
* [describeIdentityProvider](#describeIdentityProvider)
* [describeResourceServer](#describeResourceServer)
* [describeRiskConfiguration](#describeRiskConfiguration)
* [DescribeRiskConfigurationOptions](#DescribeRiskConfigurationOptions)
* [describeUserImportJob](#describeUserImportJob)
* [describeUserPool](#describeUserPool)
* [describeUserPoolClient](#describeUserPoolClient)
* [describeUserPoolDomain](#describeUserPoolDomain)
* [forgetDevice](#forgetDevice)
* [ForgetDeviceOptions](#ForgetDeviceOptions)
* [forgotPassword](#forgotPassword)
* [ForgotPasswordOptions](#ForgotPasswordOptions)
* [getCSVHeader](#getCSVHeader)
* [getDevice](#getDevice)
* [GetDeviceOptions](#GetDeviceOptions)
* [getGroup](#getGroup)
* [getIdentityProviderByIdentifier](#getIdentityProviderByIdentifier)
* [getSigningCertificate](#getSigningCertificate)
* [getUICustomization](#getUICustomization)
* [GetUICustomizationOptions](#GetUICustomizationOptions)
* [getUser](#getUser)
* [getUserAttributeVerificationCode](#getUserAttributeVerificationCode)
* [getUserPoolMfaConfig](#getUserPoolMfaConfig)
* [globalSignOut](#globalSignOut)
* [initiateAuth](#initiateAuth)
* [InitiateAuthOptions](#InitiateAuthOptions)
* [listDevices](#listDevices)
* [ListDevicesOptions](#ListDevicesOptions)
* [listGroups](#listGroups)
* [ListGroupsOptions](#ListGroupsOptions)
* [listIdentityProviders](#listIdentityProviders)
* [ListIdentityProvidersOptions](#ListIdentityProvidersOptions)
* [listResourceServers](#listResourceServers)
* [ListResourceServersOptions](#ListResourceServersOptions)
* [listTagsForResource](#listTagsForResource)
* [listUserImportJobs](#listUserImportJobs)
* [ListUserImportJobsOptions](#ListUserImportJobsOptions)
* [listUserPoolClients](#listUserPoolClients)
* [ListUserPoolClientsOptions](#ListUserPoolClientsOptions)
* [listUserPools](#listUserPools)
* [ListUserPoolsOptions](#ListUserPoolsOptions)
* [listUsers](#listUsers)
* [ListUsersOptions](#ListUsersOptions)
* [listUsersInGroup](#listUsersInGroup)
* [ListUsersInGroupOptions](#ListUsersInGroupOptions)
* [resendConfirmationCode](#resendConfirmationCode)
* [ResendConfirmationCodeOptions](#ResendConfirmationCodeOptions)
* [respondToAuthChallenge](#respondToAuthChallenge)
* [RespondToAuthChallengeOptions](#RespondToAuthChallengeOptions)
* [setRiskConfiguration](#setRiskConfiguration)
* [SetRiskConfigurationOptions](#SetRiskConfigurationOptions)
* [setUICustomization](#setUICustomization)
* [SetUICustomizationOptions](#SetUICustomizationOptions)
* [setUserMFAPreference](#setUserMFAPreference)
* [SetUserMFAPreferenceOptions](#SetUserMFAPreferenceOptions)
* [setUserPoolMfaConfig](#setUserPoolMfaConfig)
* [SetUserPoolMfaConfigOptions](#SetUserPoolMfaConfigOptions)
* [setUserSettings](#setUserSettings)
* [signUp](#signUp)
* [SignUpOptions](#SignUpOptions)
* [startUserImportJob](#startUserImportJob)
* [stopUserImportJob](#stopUserImportJob)
* [tagResource](#tagResource)
* [TagResourceOptions](#TagResourceOptions)
* [untagResource](#untagResource)
* [UntagResourceOptions](#UntagResourceOptions)
* [updateAuthEventFeedback](#updateAuthEventFeedback)
* [updateDeviceStatus](#updateDeviceStatus)
* [UpdateDeviceStatusOptions](#UpdateDeviceStatusOptions)
* [updateGroup](#updateGroup)
* [UpdateGroupOptions](#UpdateGroupOptions)
* [updateIdentityProvider](#updateIdentityProvider)
* [UpdateIdentityProviderOptions](#UpdateIdentityProviderOptions)
* [updateResourceServer](#updateResourceServer)
* [UpdateResourceServerOptions](#UpdateResourceServerOptions)
* [updateUserAttributes](#updateUserAttributes)
* [updateUserPool](#updateUserPool)
* [UpdateUserPoolOptions](#UpdateUserPoolOptions)
* [updateUserPoolClient](#updateUserPoolClient)
* [UpdateUserPoolClientOptions](#UpdateUserPoolClientOptions)
* [updateUserPoolDomain](#updateUserPoolDomain)
* [verifySoftwareToken](#verifySoftwareToken)
* [VerifySoftwareTokenOptions](#VerifySoftwareTokenOptions)
* [verifyUserAttribute](#verifyUserAttribute)


@docs addCustomAttributes,adminAddUserToGroup,adminConfirmSignUp,adminCreateUser,AdminCreateUserOptions,adminDeleteUser,adminDeleteUserAttributes,adminDisableProviderForUser,adminDisableUser,adminEnableUser,adminForgetDevice,adminGetDevice,adminGetUser,adminInitiateAuth,AdminInitiateAuthOptions,adminLinkProviderForUser,adminListDevices,AdminListDevicesOptions,adminListGroupsForUser,AdminListGroupsForUserOptions,adminListUserAuthEvents,AdminListUserAuthEventsOptions,adminRemoveUserFromGroup,adminResetUserPassword,adminRespondToAuthChallenge,AdminRespondToAuthChallengeOptions,adminSetUserMFAPreference,AdminSetUserMFAPreferenceOptions,adminSetUserPassword,AdminSetUserPasswordOptions,adminSetUserSettings,adminUpdateAuthEventFeedback,adminUpdateDeviceStatus,AdminUpdateDeviceStatusOptions,adminUpdateUserAttributes,adminUserGlobalSignOut,associateSoftwareToken,AssociateSoftwareTokenOptions,changePassword,confirmDevice,ConfirmDeviceOptions,confirmForgotPassword,ConfirmForgotPasswordOptions,confirmSignUp,ConfirmSignUpOptions,createGroup,CreateGroupOptions,createIdentityProvider,CreateIdentityProviderOptions,createResourceServer,CreateResourceServerOptions,createUserImportJob,createUserPool,CreateUserPoolOptions,createUserPoolClient,CreateUserPoolClientOptions,createUserPoolDomain,CreateUserPoolDomainOptions,deleteGroup,deleteIdentityProvider,deleteResourceServer,deleteUser,deleteUserAttributes,deleteUserPool,deleteUserPoolClient,deleteUserPoolDomain,describeIdentityProvider,describeResourceServer,describeRiskConfiguration,DescribeRiskConfigurationOptions,describeUserImportJob,describeUserPool,describeUserPoolClient,describeUserPoolDomain,forgetDevice,ForgetDeviceOptions,forgotPassword,ForgotPasswordOptions,getCSVHeader,getDevice,GetDeviceOptions,getGroup,getIdentityProviderByIdentifier,getSigningCertificate,getUICustomization,GetUICustomizationOptions,getUser,getUserAttributeVerificationCode,getUserPoolMfaConfig,globalSignOut,initiateAuth,InitiateAuthOptions,listDevices,ListDevicesOptions,listGroups,ListGroupsOptions,listIdentityProviders,ListIdentityProvidersOptions,listResourceServers,ListResourceServersOptions,listTagsForResource,listUserImportJobs,ListUserImportJobsOptions,listUserPoolClients,ListUserPoolClientsOptions,listUserPools,ListUserPoolsOptions,listUsers,ListUsersOptions,listUsersInGroup,ListUsersInGroupOptions,resendConfirmationCode,ResendConfirmationCodeOptions,respondToAuthChallenge,RespondToAuthChallengeOptions,setRiskConfiguration,SetRiskConfigurationOptions,setUICustomization,SetUICustomizationOptions,setUserMFAPreference,SetUserMFAPreferenceOptions,setUserPoolMfaConfig,SetUserPoolMfaConfigOptions,setUserSettings,signUp,SignUpOptions,startUserImportJob,stopUserImportJob,tagResource,TagResourceOptions,untagResource,UntagResourceOptions,updateAuthEventFeedback,updateDeviceStatus,UpdateDeviceStatusOptions,updateGroup,UpdateGroupOptions,updateIdentityProvider,UpdateIdentityProviderOptions,updateResourceServer,UpdateResourceServerOptions,updateUserAttributes,updateUserPool,UpdateUserPoolOptions,updateUserPoolClient,UpdateUserPoolClientOptions,updateUserPoolDomain,verifySoftwareToken,VerifySoftwareTokenOptions,verifyUserAttribute

## Responses

* [AddCustomAttributesResponse](#AddCustomAttributesResponse)
* [AdminConfirmSignUpResponse](#AdminConfirmSignUpResponse)
* [AdminCreateUserResponse](#AdminCreateUserResponse)
* [AdminDeleteUserAttributesResponse](#AdminDeleteUserAttributesResponse)
* [AdminDisableProviderForUserResponse](#AdminDisableProviderForUserResponse)
* [AdminDisableUserResponse](#AdminDisableUserResponse)
* [AdminEnableUserResponse](#AdminEnableUserResponse)
* [AdminGetDeviceResponse](#AdminGetDeviceResponse)
* [AdminGetUserResponse](#AdminGetUserResponse)
* [AdminInitiateAuthResponse](#AdminInitiateAuthResponse)
* [AdminLinkProviderForUserResponse](#AdminLinkProviderForUserResponse)
* [AdminListDevicesResponse](#AdminListDevicesResponse)
* [AdminListGroupsForUserResponse](#AdminListGroupsForUserResponse)
* [AdminListUserAuthEventsResponse](#AdminListUserAuthEventsResponse)
* [AdminResetUserPasswordResponse](#AdminResetUserPasswordResponse)
* [AdminRespondToAuthChallengeResponse](#AdminRespondToAuthChallengeResponse)
* [AdminSetUserMFAPreferenceResponse](#AdminSetUserMFAPreferenceResponse)
* [AdminSetUserPasswordResponse](#AdminSetUserPasswordResponse)
* [AdminSetUserSettingsResponse](#AdminSetUserSettingsResponse)
* [AdminUpdateAuthEventFeedbackResponse](#AdminUpdateAuthEventFeedbackResponse)
* [AdminUpdateDeviceStatusResponse](#AdminUpdateDeviceStatusResponse)
* [AdminUpdateUserAttributesResponse](#AdminUpdateUserAttributesResponse)
* [AdminUserGlobalSignOutResponse](#AdminUserGlobalSignOutResponse)
* [AssociateSoftwareTokenResponse](#AssociateSoftwareTokenResponse)
* [ChangePasswordResponse](#ChangePasswordResponse)
* [ConfirmDeviceResponse](#ConfirmDeviceResponse)
* [ConfirmForgotPasswordResponse](#ConfirmForgotPasswordResponse)
* [ConfirmSignUpResponse](#ConfirmSignUpResponse)
* [CreateGroupResponse](#CreateGroupResponse)
* [CreateIdentityProviderResponse](#CreateIdentityProviderResponse)
* [CreateResourceServerResponse](#CreateResourceServerResponse)
* [CreateUserImportJobResponse](#CreateUserImportJobResponse)
* [CreateUserPoolClientResponse](#CreateUserPoolClientResponse)
* [CreateUserPoolDomainResponse](#CreateUserPoolDomainResponse)
* [CreateUserPoolResponse](#CreateUserPoolResponse)
* [DeleteUserAttributesResponse](#DeleteUserAttributesResponse)
* [DeleteUserPoolDomainResponse](#DeleteUserPoolDomainResponse)
* [DescribeIdentityProviderResponse](#DescribeIdentityProviderResponse)
* [DescribeResourceServerResponse](#DescribeResourceServerResponse)
* [DescribeRiskConfigurationResponse](#DescribeRiskConfigurationResponse)
* [DescribeUserImportJobResponse](#DescribeUserImportJobResponse)
* [DescribeUserPoolClientResponse](#DescribeUserPoolClientResponse)
* [DescribeUserPoolDomainResponse](#DescribeUserPoolDomainResponse)
* [DescribeUserPoolResponse](#DescribeUserPoolResponse)
* [ForgotPasswordResponse](#ForgotPasswordResponse)
* [GetCSVHeaderResponse](#GetCSVHeaderResponse)
* [GetDeviceResponse](#GetDeviceResponse)
* [GetGroupResponse](#GetGroupResponse)
* [GetIdentityProviderByIdentifierResponse](#GetIdentityProviderByIdentifierResponse)
* [GetSigningCertificateResponse](#GetSigningCertificateResponse)
* [GetUICustomizationResponse](#GetUICustomizationResponse)
* [GetUserAttributeVerificationCodeResponse](#GetUserAttributeVerificationCodeResponse)
* [GetUserPoolMfaConfigResponse](#GetUserPoolMfaConfigResponse)
* [GetUserResponse](#GetUserResponse)
* [GlobalSignOutResponse](#GlobalSignOutResponse)
* [InitiateAuthResponse](#InitiateAuthResponse)
* [ListDevicesResponse](#ListDevicesResponse)
* [ListGroupsResponse](#ListGroupsResponse)
* [ListIdentityProvidersResponse](#ListIdentityProvidersResponse)
* [ListResourceServersResponse](#ListResourceServersResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [ListUserImportJobsResponse](#ListUserImportJobsResponse)
* [ListUserPoolClientsResponse](#ListUserPoolClientsResponse)
* [ListUserPoolsResponse](#ListUserPoolsResponse)
* [ListUsersInGroupResponse](#ListUsersInGroupResponse)
* [ListUsersResponse](#ListUsersResponse)
* [ResendConfirmationCodeResponse](#ResendConfirmationCodeResponse)
* [RespondToAuthChallengeResponse](#RespondToAuthChallengeResponse)
* [SetRiskConfigurationResponse](#SetRiskConfigurationResponse)
* [SetUICustomizationResponse](#SetUICustomizationResponse)
* [SetUserMFAPreferenceResponse](#SetUserMFAPreferenceResponse)
* [SetUserPoolMfaConfigResponse](#SetUserPoolMfaConfigResponse)
* [SetUserSettingsResponse](#SetUserSettingsResponse)
* [SignUpResponse](#SignUpResponse)
* [StartUserImportJobResponse](#StartUserImportJobResponse)
* [StopUserImportJobResponse](#StopUserImportJobResponse)
* [TagResourceResponse](#TagResourceResponse)
* [UntagResourceResponse](#UntagResourceResponse)
* [UpdateAuthEventFeedbackResponse](#UpdateAuthEventFeedbackResponse)
* [UpdateDeviceStatusResponse](#UpdateDeviceStatusResponse)
* [UpdateGroupResponse](#UpdateGroupResponse)
* [UpdateIdentityProviderResponse](#UpdateIdentityProviderResponse)
* [UpdateResourceServerResponse](#UpdateResourceServerResponse)
* [UpdateUserAttributesResponse](#UpdateUserAttributesResponse)
* [UpdateUserPoolClientResponse](#UpdateUserPoolClientResponse)
* [UpdateUserPoolDomainResponse](#UpdateUserPoolDomainResponse)
* [UpdateUserPoolResponse](#UpdateUserPoolResponse)
* [VerifySoftwareTokenResponse](#VerifySoftwareTokenResponse)
* [VerifyUserAttributeResponse](#VerifyUserAttributeResponse)


@docs AddCustomAttributesResponse,AdminConfirmSignUpResponse,AdminCreateUserResponse,AdminDeleteUserAttributesResponse,AdminDisableProviderForUserResponse,AdminDisableUserResponse,AdminEnableUserResponse,AdminGetDeviceResponse,AdminGetUserResponse,AdminInitiateAuthResponse,AdminLinkProviderForUserResponse,AdminListDevicesResponse,AdminListGroupsForUserResponse,AdminListUserAuthEventsResponse,AdminResetUserPasswordResponse,AdminRespondToAuthChallengeResponse,AdminSetUserMFAPreferenceResponse,AdminSetUserPasswordResponse,AdminSetUserSettingsResponse,AdminUpdateAuthEventFeedbackResponse,AdminUpdateDeviceStatusResponse,AdminUpdateUserAttributesResponse,AdminUserGlobalSignOutResponse,AssociateSoftwareTokenResponse,ChangePasswordResponse,ConfirmDeviceResponse,ConfirmForgotPasswordResponse,ConfirmSignUpResponse,CreateGroupResponse,CreateIdentityProviderResponse,CreateResourceServerResponse,CreateUserImportJobResponse,CreateUserPoolClientResponse,CreateUserPoolDomainResponse,CreateUserPoolResponse,DeleteUserAttributesResponse,DeleteUserPoolDomainResponse,DescribeIdentityProviderResponse,DescribeResourceServerResponse,DescribeRiskConfigurationResponse,DescribeUserImportJobResponse,DescribeUserPoolClientResponse,DescribeUserPoolDomainResponse,DescribeUserPoolResponse,ForgotPasswordResponse,GetCSVHeaderResponse,GetDeviceResponse,GetGroupResponse,GetIdentityProviderByIdentifierResponse,GetSigningCertificateResponse,GetUICustomizationResponse,GetUserAttributeVerificationCodeResponse,GetUserPoolMfaConfigResponse,GetUserResponse,GlobalSignOutResponse,InitiateAuthResponse,ListDevicesResponse,ListGroupsResponse,ListIdentityProvidersResponse,ListResourceServersResponse,ListTagsForResourceResponse,ListUserImportJobsResponse,ListUserPoolClientsResponse,ListUserPoolsResponse,ListUsersInGroupResponse,ListUsersResponse,ResendConfirmationCodeResponse,RespondToAuthChallengeResponse,SetRiskConfigurationResponse,SetUICustomizationResponse,SetUserMFAPreferenceResponse,SetUserPoolMfaConfigResponse,SetUserSettingsResponse,SignUpResponse,StartUserImportJobResponse,StopUserImportJobResponse,TagResourceResponse,UntagResourceResponse,UpdateAuthEventFeedbackResponse,UpdateDeviceStatusResponse,UpdateGroupResponse,UpdateIdentityProviderResponse,UpdateResourceServerResponse,UpdateUserAttributesResponse,UpdateUserPoolClientResponse,UpdateUserPoolDomainResponse,UpdateUserPoolResponse,VerifySoftwareTokenResponse,VerifyUserAttributeResponse

## Records

* [AccountTakeoverActionType](#AccountTakeoverActionType)
* [AccountTakeoverActionsType](#AccountTakeoverActionsType)
* [AccountTakeoverRiskConfigurationType](#AccountTakeoverRiskConfigurationType)
* [AdminCreateUserConfigType](#AdminCreateUserConfigType)
* [AnalyticsConfigurationType](#AnalyticsConfigurationType)
* [AnalyticsMetadataType](#AnalyticsMetadataType)
* [AttributeType](#AttributeType)
* [AuthEventType](#AuthEventType)
* [AuthenticationResultType](#AuthenticationResultType)
* [ChallengeResponseType](#ChallengeResponseType)
* [CodeDeliveryDetailsType](#CodeDeliveryDetailsType)
* [CompromisedCredentialsActionsType](#CompromisedCredentialsActionsType)
* [CompromisedCredentialsRiskConfigurationType](#CompromisedCredentialsRiskConfigurationType)
* [ContextDataType](#ContextDataType)
* [CustomDomainConfigType](#CustomDomainConfigType)
* [DeviceConfigurationType](#DeviceConfigurationType)
* [DeviceSecretVerifierConfigType](#DeviceSecretVerifierConfigType)
* [DeviceType](#DeviceType)
* [DomainDescriptionType](#DomainDescriptionType)
* [EmailConfigurationType](#EmailConfigurationType)
* [EventContextDataType](#EventContextDataType)
* [EventFeedbackType](#EventFeedbackType)
* [EventRiskType](#EventRiskType)
* [GroupType](#GroupType)
* [HttpHeader](#HttpHeader)
* [IdentityProviderType](#IdentityProviderType)
* [LambdaConfigType](#LambdaConfigType)
* [MFAOptionType](#MFAOptionType)
* [MessageTemplateType](#MessageTemplateType)
* [NewDeviceMetadataType](#NewDeviceMetadataType)
* [NotifyConfigurationType](#NotifyConfigurationType)
* [NotifyEmailType](#NotifyEmailType)
* [NumberAttributeConstraintsType](#NumberAttributeConstraintsType)
* [PasswordPolicyType](#PasswordPolicyType)
* [ProviderDescription](#ProviderDescription)
* [ProviderUserIdentifierType](#ProviderUserIdentifierType)
* [ResourceServerScopeType](#ResourceServerScopeType)
* [ResourceServerType](#ResourceServerType)
* [RiskConfigurationType](#RiskConfigurationType)
* [RiskExceptionConfigurationType](#RiskExceptionConfigurationType)
* [SMSMfaSettingsType](#SMSMfaSettingsType)
* [SchemaAttributeType](#SchemaAttributeType)
* [SmsConfigurationType](#SmsConfigurationType)
* [SmsMfaConfigType](#SmsMfaConfigType)
* [SoftwareTokenMfaConfigType](#SoftwareTokenMfaConfigType)
* [SoftwareTokenMfaSettingsType](#SoftwareTokenMfaSettingsType)
* [StringAttributeConstraintsType](#StringAttributeConstraintsType)
* [UICustomizationType](#UICustomizationType)
* [UserContextDataType](#UserContextDataType)
* [UserImportJobType](#UserImportJobType)
* [UserPoolAddOnsType](#UserPoolAddOnsType)
* [UserPoolClientDescription](#UserPoolClientDescription)
* [UserPoolClientType](#UserPoolClientType)
* [UserPoolDescriptionType](#UserPoolDescriptionType)
* [UserPoolPolicyType](#UserPoolPolicyType)
* [UserPoolType](#UserPoolType)
* [UserType](#UserType)
* [VerificationMessageTemplateType](#VerificationMessageTemplateType)


@docs AccountTakeoverActionType,AccountTakeoverActionsType,AccountTakeoverRiskConfigurationType,AdminCreateUserConfigType,AnalyticsConfigurationType,AnalyticsMetadataType,AttributeType,AuthEventType,AuthenticationResultType,ChallengeResponseType,CodeDeliveryDetailsType,CompromisedCredentialsActionsType,CompromisedCredentialsRiskConfigurationType,ContextDataType,CustomDomainConfigType,DeviceConfigurationType,DeviceSecretVerifierConfigType,DeviceType,DomainDescriptionType,EmailConfigurationType,EventContextDataType,EventFeedbackType,EventRiskType,GroupType,HttpHeader,IdentityProviderType,LambdaConfigType,MFAOptionType,MessageTemplateType,NewDeviceMetadataType,NotifyConfigurationType,NotifyEmailType,NumberAttributeConstraintsType,PasswordPolicyType,ProviderDescription,ProviderUserIdentifierType,ResourceServerScopeType,ResourceServerType,RiskConfigurationType,RiskExceptionConfigurationType,SMSMfaSettingsType,SchemaAttributeType,SmsConfigurationType,SmsMfaConfigType,SoftwareTokenMfaConfigType,SoftwareTokenMfaSettingsType,StringAttributeConstraintsType,UICustomizationType,UserContextDataType,UserImportJobType,UserPoolAddOnsType,UserPoolClientDescription,UserPoolClientType,UserPoolDescriptionType,UserPoolPolicyType,UserPoolType,UserType,VerificationMessageTemplateType

## Unions

* [AccountTakeoverEventActionType](#AccountTakeoverEventActionType)
* [AdvancedSecurityModeType](#AdvancedSecurityModeType)
* [AliasAttributeType](#AliasAttributeType)
* [AttributeDataType](#AttributeDataType)
* [AuthFlowType](#AuthFlowType)
* [ChallengeName](#ChallengeName)
* [ChallengeNameType](#ChallengeNameType)
* [ChallengeResponse](#ChallengeResponse)
* [CompromisedCredentialsEventActionType](#CompromisedCredentialsEventActionType)
* [DefaultEmailOptionType](#DefaultEmailOptionType)
* [DeliveryMediumType](#DeliveryMediumType)
* [DeviceRememberedStatusType](#DeviceRememberedStatusType)
* [DomainStatusType](#DomainStatusType)
* [EmailSendingAccountType](#EmailSendingAccountType)
* [EventFilterType](#EventFilterType)
* [EventResponseType](#EventResponseType)
* [EventType](#EventType)
* [ExplicitAuthFlowsType](#ExplicitAuthFlowsType)
* [FeedbackValueType](#FeedbackValueType)
* [IdentityProviderTypeType](#IdentityProviderTypeType)
* [MessageActionType](#MessageActionType)
* [OAuthFlowType](#OAuthFlowType)
* [RiskDecisionType](#RiskDecisionType)
* [RiskLevelType](#RiskLevelType)
* [StatusType](#StatusType)
* [UserImportJobStatusType](#UserImportJobStatusType)
* [UserPoolMfaType](#UserPoolMfaType)
* [UserStatusType](#UserStatusType)
* [UsernameAttributeType](#UsernameAttributeType)
* [VerifiedAttributeType](#VerifiedAttributeType)
* [VerifySoftwareTokenResponseType](#VerifySoftwareTokenResponseType)


@docs AccountTakeoverEventActionType,AdvancedSecurityModeType,AliasAttributeType,AttributeDataType,AuthFlowType,ChallengeName,ChallengeNameType,ChallengeResponse,CompromisedCredentialsEventActionType,DefaultEmailOptionType,DeliveryMediumType,DeviceRememberedStatusType,DomainStatusType,EmailSendingAccountType,EventFilterType,EventResponseType,EventType,ExplicitAuthFlowsType,FeedbackValueType,IdentityProviderTypeType,MessageActionType,OAuthFlowType,RiskDecisionType,RiskLevelType,StatusType,UserImportJobStatusType,UserPoolMfaType,UserStatusType,UsernameAttributeType,VerifiedAttributeType,VerifySoftwareTokenResponseType

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
        "cognito-idp"
        "2016-04-18"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSCognitoIdentityProviderService")



-- OPERATIONS

{-| <p>Adds additional user attributes to the user pool schema.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `customAttributes` __:__ `(List SchemaAttributeType)`


-}

addCustomAttributes :
  
    String ->
  
    (List SchemaAttributeType) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AddCustomAttributesResponse)

addCustomAttributes userPoolId customAttributes =
    
    let
        requestInput = AddCustomAttributesRequest
            
            userPoolId
            
            customAttributes
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> addCustomAttributesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddCustomAttributes"
                
                (AWS.Core.Decode.ResultDecoder "AddCustomAttributesResponse" addCustomAttributesResponseDecoder)
                
            )





{-| <p>Adds the specified user to the specified group.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `groupName` __:__ `String`


-}

adminAddUserToGroup :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

adminAddUserToGroup userPoolId username groupName =
    
    let
        requestInput = AdminAddUserToGroupRequest
            
            userPoolId
            
            username
            
            groupName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminAddUserToGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminAddUserToGroup"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Confirms user registration as an admin without using a confirmation code. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}

adminConfirmSignUp :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminConfirmSignUpResponse)

adminConfirmSignUp userPoolId username =
    
    let
        requestInput = AdminConfirmSignUpRequest
            
            userPoolId
            
            username
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminConfirmSignUpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminConfirmSignUp"
                
                (AWS.Core.Decode.ResultDecoder "AdminConfirmSignUpResponse" adminConfirmSignUpResponseDecoder)
                
            )





{-| <p>Creates a new user in the specified user pool.</p> <p>If <code>MessageAction</code> is not set, the default is to send a welcome message via email or phone (SMS).</p> <note> <p>This message is based on a template that you configured in your call to or . This template includes your custom sign-up instructions and placeholders for user name and temporary password.</p> </note> <p>Alternatively, you can call AdminCreateUser with “SUPPRESS” for the <code>MessageAction</code> parameter, and Amazon Cognito will not send any email. </p> <p>In either case, the user will be in the <code>FORCE_CHANGE_PASSWORD</code> state until they sign in and change their password.</p> <p>AdminCreateUser requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}

adminCreateUser :
  
    String ->
  
    String ->
  
  
    ( AdminCreateUserOptions -> AdminCreateUserOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminCreateUserResponse)

adminCreateUser userPoolId username setOptions =
    
    let
        requestInput = AdminCreateUserRequest
            
            userPoolId
            
            username
            
            options.userAttributes
            
            options.validationData
            
            options.temporaryPassword
            
            options.forceAliasCreation
            
            options.messageAction
            
            options.desiredDeliveryMediums
            
        
        options = setOptions (AdminCreateUserOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminCreateUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminCreateUser"
                
                (AWS.Core.Decode.ResultDecoder "AdminCreateUserResponse" adminCreateUserResponseDecoder)
                
            )



{-| Options for a adminCreateUser request
-}
type alias AdminCreateUserOptions =
    {
    userAttributes : Maybe (List AttributeType),validationData : Maybe (List AttributeType),temporaryPassword : Maybe String,forceAliasCreation : Maybe Bool,messageAction : Maybe MessageActionType,desiredDeliveryMediums : Maybe (List DeliveryMediumType)
    }



{-| <p>Deletes a user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}

adminDeleteUser :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

adminDeleteUser userPoolId username =
    
    let
        requestInput = AdminDeleteUserRequest
            
            userPoolId
            
            username
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminDeleteUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminDeleteUser"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the user attributes in a user pool as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `userAttributeNames` __:__ `(List String)`


-}

adminDeleteUserAttributes :
  
    String ->
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminDeleteUserAttributesResponse)

adminDeleteUserAttributes userPoolId username userAttributeNames =
    
    let
        requestInput = AdminDeleteUserAttributesRequest
            
            userPoolId
            
            username
            
            userAttributeNames
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminDeleteUserAttributesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminDeleteUserAttributes"
                
                (AWS.Core.Decode.ResultDecoder "AdminDeleteUserAttributesResponse" adminDeleteUserAttributesResponseDecoder)
                
            )





{-| <p>Disables the user from signing in with the specified external (SAML or social) identity provider. If the user to disable is a Cognito User Pools native username + password user, they are not permitted to use their password to sign-in. If the user to disable is a linked external IdP user, any link between that user and an existing user is removed. The next time the external user (no longer attached to the previously linked <code>DestinationUser</code>) signs in, they must create a new user account. See .</p> <p>This action is enabled only for admin access and requires developer credentials.</p> <p>The <code>ProviderName</code> must match the value specified when creating an IdP for the pool. </p> <p>To disable a native username + password user, the <code>ProviderName</code> value must be <code>Cognito</code> and the <code>ProviderAttributeName</code> must be <code>Cognito_Subject</code>, with the <code>ProviderAttributeValue</code> being the name that is used in the user pool for the user.</p> <p>The <code>ProviderAttributeName</code> must always be <code>Cognito_Subject</code> for social identity providers. The <code>ProviderAttributeValue</code> must always be the exact subject that was used when the user was originally linked as a source user.</p> <p>For de-linking a SAML identity, there are two scenarios. If the linked identity has not yet been used to sign-in, the <code>ProviderAttributeName</code> and <code>ProviderAttributeValue</code> must be the same values that were used for the <code>SourceUser</code> when the identities were originally linked in the call. (If the linking was done with <code>ProviderAttributeName</code> set to <code>Cognito_Subject</code>, the same applies here). However, if the user has already signed in, the <code>ProviderAttributeName</code> must be <code>Cognito_Subject</code> and <code>ProviderAttributeValue</code> must be the subject of the SAML assertion.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `user` __:__ `ProviderUserIdentifierType`


-}

adminDisableProviderForUser :
  
    String ->
  
    ProviderUserIdentifierType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminDisableProviderForUserResponse)

adminDisableProviderForUser userPoolId user =
    
    let
        requestInput = AdminDisableProviderForUserRequest
            
            userPoolId
            
            user
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminDisableProviderForUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminDisableProviderForUser"
                
                (AWS.Core.Decode.ResultDecoder "AdminDisableProviderForUserResponse" adminDisableProviderForUserResponseDecoder)
                
            )





{-| <p>Disables the specified user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}

adminDisableUser :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminDisableUserResponse)

adminDisableUser userPoolId username =
    
    let
        requestInput = AdminDisableUserRequest
            
            userPoolId
            
            username
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminDisableUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminDisableUser"
                
                (AWS.Core.Decode.ResultDecoder "AdminDisableUserResponse" adminDisableUserResponseDecoder)
                
            )





{-| <p>Enables the specified user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}

adminEnableUser :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminEnableUserResponse)

adminEnableUser userPoolId username =
    
    let
        requestInput = AdminEnableUserRequest
            
            userPoolId
            
            username
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminEnableUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminEnableUser"
                
                (AWS.Core.Decode.ResultDecoder "AdminEnableUserResponse" adminEnableUserResponseDecoder)
                
            )





{-| <p>Forgets the device, as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `deviceKey` __:__ `String`


-}

adminForgetDevice :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

adminForgetDevice userPoolId username deviceKey =
    
    let
        requestInput = AdminForgetDeviceRequest
            
            userPoolId
            
            username
            
            deviceKey
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminForgetDeviceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminForgetDevice"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Gets the device, as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `deviceKey` __:__ `String`
* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}

adminGetDevice :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminGetDeviceResponse)

adminGetDevice deviceKey userPoolId username =
    
    let
        requestInput = AdminGetDeviceRequest
            
            deviceKey
            
            userPoolId
            
            username
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminGetDeviceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminGetDevice"
                
                (AWS.Core.Decode.ResultDecoder "AdminGetDeviceResponse" adminGetDeviceResponseDecoder)
                
            )





{-| <p>Gets the specified user by user name in a user pool as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}

adminGetUser :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminGetUserResponse)

adminGetUser userPoolId username =
    
    let
        requestInput = AdminGetUserRequest
            
            userPoolId
            
            username
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminGetUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminGetUser"
                
                (AWS.Core.Decode.ResultDecoder "AdminGetUserResponse" adminGetUserResponseDecoder)
                
            )





{-| <p>Initiates the authentication flow, as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `clientId` __:__ `String`
* `authFlow` __:__ `AuthFlowType`


-}

adminInitiateAuth :
  
    String ->
  
    String ->
  
    AuthFlowType ->
  
  
    ( AdminInitiateAuthOptions -> AdminInitiateAuthOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminInitiateAuthResponse)

adminInitiateAuth userPoolId clientId authFlow setOptions =
    
    let
        requestInput = AdminInitiateAuthRequest
            
            userPoolId
            
            clientId
            
            authFlow
            
            options.authParameters
            
            options.clientMetadata
            
            options.analyticsMetadata
            
            options.contextData
            
        
        options = setOptions (AdminInitiateAuthOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminInitiateAuthRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminInitiateAuth"
                
                (AWS.Core.Decode.ResultDecoder "AdminInitiateAuthResponse" adminInitiateAuthResponseDecoder)
                
            )



{-| Options for a adminInitiateAuth request
-}
type alias AdminInitiateAuthOptions =
    {
    authParameters : Maybe (Dict String String),clientMetadata : Maybe (Dict String String),analyticsMetadata : Maybe AnalyticsMetadataType,contextData : Maybe ContextDataType
    }



{-| <p>Links an existing user account in a user pool (<code>DestinationUser</code>) to an identity from an external identity provider (<code>SourceUser</code>) based on a specified attribute name and value from the external identity provider. This allows you to create a link from the existing user account to an external federated user identity that has not yet been used to sign in, so that the federated user identity can be used to sign in as the existing user account. </p> <p> For example, if there is an existing user with a username and password, this API links that user to a federated user identity, so that when the federated user identity is used, the user signs in as the existing user account. </p> <important> <p>Because this API allows a user with an external federated identity to sign in as an existing user in the user pool, it is critical that it only be used with external identity providers and provider attributes that have been trusted by the application owner.</p> </important> <p>See also .</p> <p>This action is enabled only for admin access and requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `destinationUser` __:__ `ProviderUserIdentifierType`
* `sourceUser` __:__ `ProviderUserIdentifierType`


-}

adminLinkProviderForUser :
  
    String ->
  
    ProviderUserIdentifierType ->
  
    ProviderUserIdentifierType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminLinkProviderForUserResponse)

adminLinkProviderForUser userPoolId destinationUser sourceUser =
    
    let
        requestInput = AdminLinkProviderForUserRequest
            
            userPoolId
            
            destinationUser
            
            sourceUser
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminLinkProviderForUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminLinkProviderForUser"
                
                (AWS.Core.Decode.ResultDecoder "AdminLinkProviderForUserResponse" adminLinkProviderForUserResponseDecoder)
                
            )





{-| <p>Lists devices, as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}

adminListDevices :
  
    String ->
  
    String ->
  
  
    ( AdminListDevicesOptions -> AdminListDevicesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminListDevicesResponse)

adminListDevices userPoolId username setOptions =
    
    let
        requestInput = AdminListDevicesRequest
            
            userPoolId
            
            username
            
            options.limit
            
            options.paginationToken
            
        
        options = setOptions (AdminListDevicesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminListDevicesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminListDevices"
                
                (AWS.Core.Decode.ResultDecoder "AdminListDevicesResponse" adminListDevicesResponseDecoder)
                
            )



{-| Options for a adminListDevices request
-}
type alias AdminListDevicesOptions =
    {
    limit : Maybe Int,paginationToken : Maybe String
    }



{-| <p>Lists the groups that the user belongs to.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `username` __:__ `String`
* `userPoolId` __:__ `String`


-}

adminListGroupsForUser :
  
    String ->
  
    String ->
  
  
    ( AdminListGroupsForUserOptions -> AdminListGroupsForUserOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminListGroupsForUserResponse)

adminListGroupsForUser username userPoolId setOptions =
    
    let
        requestInput = AdminListGroupsForUserRequest
            
            username
            
            userPoolId
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (AdminListGroupsForUserOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminListGroupsForUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminListGroupsForUser"
                
                (AWS.Core.Decode.ResultDecoder "AdminListGroupsForUserResponse" adminListGroupsForUserResponseDecoder)
                
            )



{-| Options for a adminListGroupsForUser request
-}
type alias AdminListGroupsForUserOptions =
    {
    limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}

adminListUserAuthEvents :
  
    String ->
  
    String ->
  
  
    ( AdminListUserAuthEventsOptions -> AdminListUserAuthEventsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminListUserAuthEventsResponse)

adminListUserAuthEvents userPoolId username setOptions =
    
    let
        requestInput = AdminListUserAuthEventsRequest
            
            userPoolId
            
            username
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (AdminListUserAuthEventsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminListUserAuthEventsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminListUserAuthEvents"
                
                (AWS.Core.Decode.ResultDecoder "AdminListUserAuthEventsResponse" adminListUserAuthEventsResponseDecoder)
                
            )



{-| Options for a adminListUserAuthEvents request
-}
type alias AdminListUserAuthEventsOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Removes the specified user from the specified group.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `groupName` __:__ `String`


-}

adminRemoveUserFromGroup :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

adminRemoveUserFromGroup userPoolId username groupName =
    
    let
        requestInput = AdminRemoveUserFromGroupRequest
            
            userPoolId
            
            username
            
            groupName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminRemoveUserFromGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminRemoveUserFromGroup"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Resets the specified user's password in a user pool as an administrator. Works on any user.</p> <p>When a developer calls this API, the current password is invalidated, so it must be changed. If a user tries to sign in after the API is called, the app will get a PasswordResetRequiredException exception back and should direct the user down the flow to reset the password, which is the same as the forgot password flow. In addition, if the user pool has phone verification selected and a verified phone number exists for the user, or if email verification is selected and a verified email exists for the user, calling this API will also result in sending a message to the end user with the code to change their password.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}

adminResetUserPassword :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminResetUserPasswordResponse)

adminResetUserPassword userPoolId username =
    
    let
        requestInput = AdminResetUserPasswordRequest
            
            userPoolId
            
            username
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminResetUserPasswordRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminResetUserPassword"
                
                (AWS.Core.Decode.ResultDecoder "AdminResetUserPasswordResponse" adminResetUserPasswordResponseDecoder)
                
            )





{-| <p>Responds to an authentication challenge, as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `clientId` __:__ `String`
* `challengeName` __:__ `ChallengeNameType`


-}

adminRespondToAuthChallenge :
  
    String ->
  
    String ->
  
    ChallengeNameType ->
  
  
    ( AdminRespondToAuthChallengeOptions -> AdminRespondToAuthChallengeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminRespondToAuthChallengeResponse)

adminRespondToAuthChallenge userPoolId clientId challengeName setOptions =
    
    let
        requestInput = AdminRespondToAuthChallengeRequest
            
            userPoolId
            
            clientId
            
            challengeName
            
            options.challengeResponses
            
            options.session
            
            options.analyticsMetadata
            
            options.contextData
            
        
        options = setOptions (AdminRespondToAuthChallengeOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminRespondToAuthChallengeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminRespondToAuthChallenge"
                
                (AWS.Core.Decode.ResultDecoder "AdminRespondToAuthChallengeResponse" adminRespondToAuthChallengeResponseDecoder)
                
            )



{-| Options for a adminRespondToAuthChallenge request
-}
type alias AdminRespondToAuthChallengeOptions =
    {
    challengeResponses : Maybe (Dict String String),session : Maybe String,analyticsMetadata : Maybe AnalyticsMetadataType,contextData : Maybe ContextDataType
    }



{-| <p>Sets the user's multi-factor authentication (MFA) preference.</p>

__Required Parameters__

* `username` __:__ `String`
* `userPoolId` __:__ `String`


-}

adminSetUserMFAPreference :
  
    String ->
  
    String ->
  
  
    ( AdminSetUserMFAPreferenceOptions -> AdminSetUserMFAPreferenceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminSetUserMFAPreferenceResponse)

adminSetUserMFAPreference username userPoolId setOptions =
    
    let
        requestInput = AdminSetUserMFAPreferenceRequest
            
            options.sMSMfaSettings
            
            options.softwareTokenMfaSettings
            
            username
            
            userPoolId
            
        
        options = setOptions (AdminSetUserMFAPreferenceOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminSetUserMFAPreferenceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminSetUserMFAPreference"
                
                (AWS.Core.Decode.ResultDecoder "AdminSetUserMFAPreferenceResponse" adminSetUserMFAPreferenceResponseDecoder)
                
            )



{-| Options for a adminSetUserMFAPreference request
-}
type alias AdminSetUserMFAPreferenceOptions =
    {
    sMSMfaSettings : Maybe SMSMfaSettingsType,softwareTokenMfaSettings : Maybe SoftwareTokenMfaSettingsType
    }



{-| undefined

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `password` __:__ `String`


-}

adminSetUserPassword :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( AdminSetUserPasswordOptions -> AdminSetUserPasswordOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminSetUserPasswordResponse)

adminSetUserPassword userPoolId username password setOptions =
    
    let
        requestInput = AdminSetUserPasswordRequest
            
            userPoolId
            
            username
            
            password
            
            options.permanent
            
        
        options = setOptions (AdminSetUserPasswordOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminSetUserPasswordRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminSetUserPassword"
                
                (AWS.Core.Decode.ResultDecoder "AdminSetUserPasswordResponse" adminSetUserPasswordResponseDecoder)
                
            )



{-| Options for a adminSetUserPassword request
-}
type alias AdminSetUserPasswordOptions =
    {
    permanent : Maybe Bool
    }



{-| <p>Sets all the user settings for a specified user name. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `mFAOptions` __:__ `(List MFAOptionType)`


-}

adminSetUserSettings :
  
    String ->
  
    String ->
  
    (List MFAOptionType) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminSetUserSettingsResponse)

adminSetUserSettings userPoolId username mFAOptions =
    
    let
        requestInput = AdminSetUserSettingsRequest
            
            userPoolId
            
            username
            
            mFAOptions
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminSetUserSettingsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminSetUserSettings"
                
                (AWS.Core.Decode.ResultDecoder "AdminSetUserSettingsResponse" adminSetUserSettingsResponseDecoder)
                
            )





{-| <p>Provides feedback for an authentication event as to whether it was from a valid user. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `eventId` __:__ `String`
* `feedbackValue` __:__ `FeedbackValueType`


-}

adminUpdateAuthEventFeedback :
  
    String ->
  
    String ->
  
    String ->
  
    FeedbackValueType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminUpdateAuthEventFeedbackResponse)

adminUpdateAuthEventFeedback userPoolId username eventId feedbackValue =
    
    let
        requestInput = AdminUpdateAuthEventFeedbackRequest
            
            userPoolId
            
            username
            
            eventId
            
            feedbackValue
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminUpdateAuthEventFeedbackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminUpdateAuthEventFeedback"
                
                (AWS.Core.Decode.ResultDecoder "AdminUpdateAuthEventFeedbackResponse" adminUpdateAuthEventFeedbackResponseDecoder)
                
            )





{-| <p>Updates the device status as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `deviceKey` __:__ `String`


-}

adminUpdateDeviceStatus :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( AdminUpdateDeviceStatusOptions -> AdminUpdateDeviceStatusOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminUpdateDeviceStatusResponse)

adminUpdateDeviceStatus userPoolId username deviceKey setOptions =
    
    let
        requestInput = AdminUpdateDeviceStatusRequest
            
            userPoolId
            
            username
            
            deviceKey
            
            options.deviceRememberedStatus
            
        
        options = setOptions (AdminUpdateDeviceStatusOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminUpdateDeviceStatusRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminUpdateDeviceStatus"
                
                (AWS.Core.Decode.ResultDecoder "AdminUpdateDeviceStatusResponse" adminUpdateDeviceStatusResponseDecoder)
                
            )



{-| Options for a adminUpdateDeviceStatus request
-}
type alias AdminUpdateDeviceStatusOptions =
    {
    deviceRememberedStatus : Maybe DeviceRememberedStatusType
    }



{-| <p>Updates the specified user's attributes, including developer attributes, as an administrator. Works on any user.</p> <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the attribute name.</p> <p>In addition to updating user attributes, this API can also be used to mark phone and email as verified.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `userAttributes` __:__ `(List AttributeType)`


-}

adminUpdateUserAttributes :
  
    String ->
  
    String ->
  
    (List AttributeType) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminUpdateUserAttributesResponse)

adminUpdateUserAttributes userPoolId username userAttributes =
    
    let
        requestInput = AdminUpdateUserAttributesRequest
            
            userPoolId
            
            username
            
            userAttributes
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminUpdateUserAttributesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminUpdateUserAttributes"
                
                (AWS.Core.Decode.ResultDecoder "AdminUpdateUserAttributesResponse" adminUpdateUserAttributesResponseDecoder)
                
            )





{-| <p>Signs out users from all devices, as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}

adminUserGlobalSignOut :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AdminUserGlobalSignOutResponse)

adminUserGlobalSignOut userPoolId username =
    
    let
        requestInput = AdminUserGlobalSignOutRequest
            
            userPoolId
            
            username
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> adminUserGlobalSignOutRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AdminUserGlobalSignOut"
                
                (AWS.Core.Decode.ResultDecoder "AdminUserGlobalSignOutResponse" adminUserGlobalSignOutResponseDecoder)
                
            )





{-| <p>Returns a unique generated shared secret key code for the user account. The request takes an access token or a session string, but not both.</p>

__Required Parameters__



-}

associateSoftwareToken :
  
  
    ( AssociateSoftwareTokenOptions -> AssociateSoftwareTokenOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateSoftwareTokenResponse)

associateSoftwareToken setOptions =
    
    let
        requestInput = AssociateSoftwareTokenRequest
            
            options.accessToken
            
            options.session
            
        
        options = setOptions (AssociateSoftwareTokenOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateSoftwareTokenRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateSoftwareToken"
                
                (AWS.Core.Decode.ResultDecoder "AssociateSoftwareTokenResponse" associateSoftwareTokenResponseDecoder)
                
            )



{-| Options for a associateSoftwareToken request
-}
type alias AssociateSoftwareTokenOptions =
    {
    accessToken : Maybe String,session : Maybe String
    }



{-| <p>Changes the password for a specified user in a user pool.</p>

__Required Parameters__

* `previousPassword` __:__ `String`
* `proposedPassword` __:__ `String`
* `accessToken` __:__ `String`


-}

changePassword :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ChangePasswordResponse)

changePassword previousPassword proposedPassword accessToken =
    
    let
        requestInput = ChangePasswordRequest
            
            previousPassword
            
            proposedPassword
            
            accessToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> changePasswordRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ChangePassword"
                
                (AWS.Core.Decode.ResultDecoder "ChangePasswordResponse" changePasswordResponseDecoder)
                
            )





{-| <p>Confirms tracking of the device. This API call is the call that begins device tracking.</p>

__Required Parameters__

* `accessToken` __:__ `String`
* `deviceKey` __:__ `String`


-}

confirmDevice :
  
    String ->
  
    String ->
  
  
    ( ConfirmDeviceOptions -> ConfirmDeviceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfirmDeviceResponse)

confirmDevice accessToken deviceKey setOptions =
    
    let
        requestInput = ConfirmDeviceRequest
            
            accessToken
            
            deviceKey
            
            options.deviceSecretVerifierConfig
            
            options.deviceName
            
        
        options = setOptions (ConfirmDeviceOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> confirmDeviceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ConfirmDevice"
                
                (AWS.Core.Decode.ResultDecoder "ConfirmDeviceResponse" confirmDeviceResponseDecoder)
                
            )



{-| Options for a confirmDevice request
-}
type alias ConfirmDeviceOptions =
    {
    deviceSecretVerifierConfig : Maybe DeviceSecretVerifierConfigType,deviceName : Maybe String
    }



{-| <p>Allows a user to enter a confirmation code to reset a forgotten password.</p>

__Required Parameters__

* `clientId` __:__ `String`
* `username` __:__ `String`
* `confirmationCode` __:__ `String`
* `password` __:__ `String`


-}

confirmForgotPassword :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( ConfirmForgotPasswordOptions -> ConfirmForgotPasswordOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfirmForgotPasswordResponse)

confirmForgotPassword clientId username confirmationCode password setOptions =
    
    let
        requestInput = ConfirmForgotPasswordRequest
            
            clientId
            
            options.secretHash
            
            username
            
            confirmationCode
            
            password
            
            options.analyticsMetadata
            
            options.userContextData
            
        
        options = setOptions (ConfirmForgotPasswordOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> confirmForgotPasswordRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ConfirmForgotPassword"
                
                (AWS.Core.Decode.ResultDecoder "ConfirmForgotPasswordResponse" confirmForgotPasswordResponseDecoder)
                
            )



{-| Options for a confirmForgotPassword request
-}
type alias ConfirmForgotPasswordOptions =
    {
    secretHash : Maybe String,analyticsMetadata : Maybe AnalyticsMetadataType,userContextData : Maybe UserContextDataType
    }



{-| <p>Confirms registration of a user and handles the existing alias from a previous user.</p>

__Required Parameters__

* `clientId` __:__ `String`
* `username` __:__ `String`
* `confirmationCode` __:__ `String`


-}

confirmSignUp :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( ConfirmSignUpOptions -> ConfirmSignUpOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ConfirmSignUpResponse)

confirmSignUp clientId username confirmationCode setOptions =
    
    let
        requestInput = ConfirmSignUpRequest
            
            clientId
            
            options.secretHash
            
            username
            
            confirmationCode
            
            options.forceAliasCreation
            
            options.analyticsMetadata
            
            options.userContextData
            
        
        options = setOptions (ConfirmSignUpOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> confirmSignUpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ConfirmSignUp"
                
                (AWS.Core.Decode.ResultDecoder "ConfirmSignUpResponse" confirmSignUpResponseDecoder)
                
            )



{-| Options for a confirmSignUp request
-}
type alias ConfirmSignUpOptions =
    {
    secretHash : Maybe String,forceAliasCreation : Maybe Bool,analyticsMetadata : Maybe AnalyticsMetadataType,userContextData : Maybe UserContextDataType
    }



{-| <p>Creates a new group in the specified user pool.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `userPoolId` __:__ `String`


-}

createGroup :
  
    String ->
  
    String ->
  
  
    ( CreateGroupOptions -> CreateGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateGroupResponse)

createGroup groupName userPoolId setOptions =
    
    let
        requestInput = CreateGroupRequest
            
            groupName
            
            userPoolId
            
            options.description
            
            options.roleArn
            
            options.precedence
            
        
        options = setOptions (CreateGroupOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateGroup"
                
                (AWS.Core.Decode.ResultDecoder "CreateGroupResponse" createGroupResponseDecoder)
                
            )



{-| Options for a createGroup request
-}
type alias CreateGroupOptions =
    {
    description : Maybe String,roleArn : Maybe String,precedence : Maybe Int
    }



{-| <p>Creates an identity provider for a user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `providerName` __:__ `String`
* `providerType` __:__ `IdentityProviderTypeType`
* `providerDetails` __:__ `(Dict String String)`


-}

createIdentityProvider :
  
    String ->
  
    String ->
  
    IdentityProviderTypeType ->
  
    (Dict String String) ->
  
  
    ( CreateIdentityProviderOptions -> CreateIdentityProviderOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateIdentityProviderResponse)

createIdentityProvider userPoolId providerName providerType providerDetails setOptions =
    
    let
        requestInput = CreateIdentityProviderRequest
            
            userPoolId
            
            providerName
            
            providerType
            
            providerDetails
            
            options.attributeMapping
            
            options.idpIdentifiers
            
        
        options = setOptions (CreateIdentityProviderOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createIdentityProviderRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateIdentityProvider"
                
                (AWS.Core.Decode.ResultDecoder "CreateIdentityProviderResponse" createIdentityProviderResponseDecoder)
                
            )



{-| Options for a createIdentityProvider request
-}
type alias CreateIdentityProviderOptions =
    {
    attributeMapping : Maybe (Dict String String),idpIdentifiers : Maybe (List String)
    }



{-| <p>Creates a new OAuth2.0 resource server and defines custom scopes in it.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `identifier` __:__ `String`
* `name` __:__ `String`


-}

createResourceServer :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateResourceServerOptions -> CreateResourceServerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateResourceServerResponse)

createResourceServer userPoolId identifier name setOptions =
    
    let
        requestInput = CreateResourceServerRequest
            
            userPoolId
            
            identifier
            
            name
            
            options.scopes
            
        
        options = setOptions (CreateResourceServerOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createResourceServerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateResourceServer"
                
                (AWS.Core.Decode.ResultDecoder "CreateResourceServerResponse" createResourceServerResponseDecoder)
                
            )



{-| Options for a createResourceServer request
-}
type alias CreateResourceServerOptions =
    {
    scopes : Maybe (List ResourceServerScopeType)
    }



{-| <p>Creates the user import job.</p>

__Required Parameters__

* `jobName` __:__ `String`
* `userPoolId` __:__ `String`
* `cloudWatchLogsRoleArn` __:__ `String`


-}

createUserImportJob :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateUserImportJobResponse)

createUserImportJob jobName userPoolId cloudWatchLogsRoleArn =
    
    let
        requestInput = CreateUserImportJobRequest
            
            jobName
            
            userPoolId
            
            cloudWatchLogsRoleArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createUserImportJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateUserImportJob"
                
                (AWS.Core.Decode.ResultDecoder "CreateUserImportJobResponse" createUserImportJobResponseDecoder)
                
            )





{-| <p>Creates a new Amazon Cognito user pool and sets the password policy for the pool.</p>

__Required Parameters__

* `poolName` __:__ `String`


-}

createUserPool :
  
    String ->
  
  
    ( CreateUserPoolOptions -> CreateUserPoolOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateUserPoolResponse)

createUserPool poolName setOptions =
    
    let
        requestInput = CreateUserPoolRequest
            
            poolName
            
            options.policies
            
            options.lambdaConfig
            
            options.autoVerifiedAttributes
            
            options.aliasAttributes
            
            options.usernameAttributes
            
            options.smsVerificationMessage
            
            options.emailVerificationMessage
            
            options.emailVerificationSubject
            
            options.verificationMessageTemplate
            
            options.smsAuthenticationMessage
            
            options.mfaConfiguration
            
            options.deviceConfiguration
            
            options.emailConfiguration
            
            options.smsConfiguration
            
            options.userPoolTags
            
            options.adminCreateUserConfig
            
            options.schema
            
            options.userPoolAddOns
            
        
        options = setOptions (CreateUserPoolOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createUserPoolRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateUserPool"
                
                (AWS.Core.Decode.ResultDecoder "CreateUserPoolResponse" createUserPoolResponseDecoder)
                
            )



{-| Options for a createUserPool request
-}
type alias CreateUserPoolOptions =
    {
    policies : Maybe UserPoolPolicyType,lambdaConfig : Maybe LambdaConfigType,autoVerifiedAttributes : Maybe (List VerifiedAttributeType),aliasAttributes : Maybe (List AliasAttributeType),usernameAttributes : Maybe (List UsernameAttributeType),smsVerificationMessage : Maybe String,emailVerificationMessage : Maybe String,emailVerificationSubject : Maybe String,verificationMessageTemplate : Maybe VerificationMessageTemplateType,smsAuthenticationMessage : Maybe String,mfaConfiguration : Maybe UserPoolMfaType,deviceConfiguration : Maybe DeviceConfigurationType,emailConfiguration : Maybe EmailConfigurationType,smsConfiguration : Maybe SmsConfigurationType,userPoolTags : Maybe (Dict String String),adminCreateUserConfig : Maybe AdminCreateUserConfigType,schema : Maybe (List SchemaAttributeType),userPoolAddOns : Maybe UserPoolAddOnsType
    }



{-| <p>Creates the user pool client.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `clientName` __:__ `String`


-}

createUserPoolClient :
  
    String ->
  
    String ->
  
  
    ( CreateUserPoolClientOptions -> CreateUserPoolClientOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateUserPoolClientResponse)

createUserPoolClient userPoolId clientName setOptions =
    
    let
        requestInput = CreateUserPoolClientRequest
            
            userPoolId
            
            clientName
            
            options.generateSecret
            
            options.refreshTokenValidity
            
            options.readAttributes
            
            options.writeAttributes
            
            options.explicitAuthFlows
            
            options.supportedIdentityProviders
            
            options.callbackURLs
            
            options.logoutURLs
            
            options.defaultRedirectURI
            
            options.allowedOAuthFlows
            
            options.allowedOAuthScopes
            
            options.allowedOAuthFlowsUserPoolClient
            
            options.analyticsConfiguration
            
        
        options = setOptions (CreateUserPoolClientOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createUserPoolClientRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateUserPoolClient"
                
                (AWS.Core.Decode.ResultDecoder "CreateUserPoolClientResponse" createUserPoolClientResponseDecoder)
                
            )



{-| Options for a createUserPoolClient request
-}
type alias CreateUserPoolClientOptions =
    {
    generateSecret : Maybe Bool,refreshTokenValidity : Maybe Int,readAttributes : Maybe (List String),writeAttributes : Maybe (List String),explicitAuthFlows : Maybe (List ExplicitAuthFlowsType),supportedIdentityProviders : Maybe (List String),callbackURLs : Maybe (List String),logoutURLs : Maybe (List String),defaultRedirectURI : Maybe String,allowedOAuthFlows : Maybe (List OAuthFlowType),allowedOAuthScopes : Maybe (List String),allowedOAuthFlowsUserPoolClient : Maybe Bool,analyticsConfiguration : Maybe AnalyticsConfigurationType
    }



{-| <p>Creates a new domain for a user pool.</p>

__Required Parameters__

* `domain` __:__ `String`
* `userPoolId` __:__ `String`


-}

createUserPoolDomain :
  
    String ->
  
    String ->
  
  
    ( CreateUserPoolDomainOptions -> CreateUserPoolDomainOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateUserPoolDomainResponse)

createUserPoolDomain domain userPoolId setOptions =
    
    let
        requestInput = CreateUserPoolDomainRequest
            
            domain
            
            userPoolId
            
            options.customDomainConfig
            
        
        options = setOptions (CreateUserPoolDomainOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createUserPoolDomainRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateUserPoolDomain"
                
                (AWS.Core.Decode.ResultDecoder "CreateUserPoolDomainResponse" createUserPoolDomainResponseDecoder)
                
            )



{-| Options for a createUserPoolDomain request
-}
type alias CreateUserPoolDomainOptions =
    {
    customDomainConfig : Maybe CustomDomainConfigType
    }



{-| <p>Deletes a group. Currently only groups with no members can be deleted.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `userPoolId` __:__ `String`


-}

deleteGroup :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteGroup groupName userPoolId =
    
    let
        requestInput = DeleteGroupRequest
            
            groupName
            
            userPoolId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteGroup"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes an identity provider for a user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `providerName` __:__ `String`


-}

deleteIdentityProvider :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteIdentityProvider userPoolId providerName =
    
    let
        requestInput = DeleteIdentityProviderRequest
            
            userPoolId
            
            providerName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteIdentityProviderRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteIdentityProvider"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a resource server.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `identifier` __:__ `String`


-}

deleteResourceServer :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteResourceServer userPoolId identifier =
    
    let
        requestInput = DeleteResourceServerRequest
            
            userPoolId
            
            identifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteResourceServerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteResourceServer"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Allows a user to delete himself or herself.</p>

__Required Parameters__

* `accessToken` __:__ `String`


-}

deleteUser :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteUser accessToken =
    
    let
        requestInput = DeleteUserRequest
            
            accessToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteUser"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes the attributes for a user.</p>

__Required Parameters__

* `userAttributeNames` __:__ `(List String)`
* `accessToken` __:__ `String`


-}

deleteUserAttributes :
  
    (List String) ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteUserAttributesResponse)

deleteUserAttributes userAttributeNames accessToken =
    
    let
        requestInput = DeleteUserAttributesRequest
            
            userAttributeNames
            
            accessToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteUserAttributesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteUserAttributes"
                
                (AWS.Core.Decode.ResultDecoder "DeleteUserAttributesResponse" deleteUserAttributesResponseDecoder)
                
            )





{-| <p>Deletes the specified Amazon Cognito user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

deleteUserPool :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteUserPool userPoolId =
    
    let
        requestInput = DeleteUserPoolRequest
            
            userPoolId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteUserPoolRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteUserPool"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Allows the developer to delete the user pool client.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `clientId` __:__ `String`


-}

deleteUserPoolClient :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteUserPoolClient userPoolId clientId =
    
    let
        requestInput = DeleteUserPoolClientRequest
            
            userPoolId
            
            clientId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteUserPoolClientRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteUserPoolClient"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a domain for a user pool.</p>

__Required Parameters__

* `domain` __:__ `String`
* `userPoolId` __:__ `String`


-}

deleteUserPoolDomain :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteUserPoolDomainResponse)

deleteUserPoolDomain domain userPoolId =
    
    let
        requestInput = DeleteUserPoolDomainRequest
            
            domain
            
            userPoolId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteUserPoolDomainRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteUserPoolDomain"
                
                (AWS.Core.Decode.ResultDecoder "DeleteUserPoolDomainResponse" deleteUserPoolDomainResponseDecoder)
                
            )





{-| <p>Gets information about a specific identity provider.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `providerName` __:__ `String`


-}

describeIdentityProvider :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeIdentityProviderResponse)

describeIdentityProvider userPoolId providerName =
    
    let
        requestInput = DescribeIdentityProviderRequest
            
            userPoolId
            
            providerName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeIdentityProviderRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeIdentityProvider"
                
                (AWS.Core.Decode.ResultDecoder "DescribeIdentityProviderResponse" describeIdentityProviderResponseDecoder)
                
            )





{-| <p>Describes a resource server.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `identifier` __:__ `String`


-}

describeResourceServer :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeResourceServerResponse)

describeResourceServer userPoolId identifier =
    
    let
        requestInput = DescribeResourceServerRequest
            
            userPoolId
            
            identifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeResourceServerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeResourceServer"
                
                (AWS.Core.Decode.ResultDecoder "DescribeResourceServerResponse" describeResourceServerResponseDecoder)
                
            )





{-| <p>Describes the risk configuration.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

describeRiskConfiguration :
  
    String ->
  
  
    ( DescribeRiskConfigurationOptions -> DescribeRiskConfigurationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRiskConfigurationResponse)

describeRiskConfiguration userPoolId setOptions =
    
    let
        requestInput = DescribeRiskConfigurationRequest
            
            userPoolId
            
            options.clientId
            
        
        options = setOptions (DescribeRiskConfigurationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeRiskConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeRiskConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "DescribeRiskConfigurationResponse" describeRiskConfigurationResponseDecoder)
                
            )



{-| Options for a describeRiskConfiguration request
-}
type alias DescribeRiskConfigurationOptions =
    {
    clientId : Maybe String
    }



{-| <p>Describes the user import job.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `jobId` __:__ `String`


-}

describeUserImportJob :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeUserImportJobResponse)

describeUserImportJob userPoolId jobId =
    
    let
        requestInput = DescribeUserImportJobRequest
            
            userPoolId
            
            jobId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeUserImportJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeUserImportJob"
                
                (AWS.Core.Decode.ResultDecoder "DescribeUserImportJobResponse" describeUserImportJobResponseDecoder)
                
            )





{-| <p>Returns the configuration information and metadata of the specified user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

describeUserPool :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeUserPoolResponse)

describeUserPool userPoolId =
    
    let
        requestInput = DescribeUserPoolRequest
            
            userPoolId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeUserPoolRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeUserPool"
                
                (AWS.Core.Decode.ResultDecoder "DescribeUserPoolResponse" describeUserPoolResponseDecoder)
                
            )





{-| <p>Client method for returning the configuration information and metadata of the specified user pool app client.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `clientId` __:__ `String`


-}

describeUserPoolClient :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeUserPoolClientResponse)

describeUserPoolClient userPoolId clientId =
    
    let
        requestInput = DescribeUserPoolClientRequest
            
            userPoolId
            
            clientId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeUserPoolClientRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeUserPoolClient"
                
                (AWS.Core.Decode.ResultDecoder "DescribeUserPoolClientResponse" describeUserPoolClientResponseDecoder)
                
            )





{-| <p>Gets information about a domain.</p>

__Required Parameters__

* `domain` __:__ `String`


-}

describeUserPoolDomain :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeUserPoolDomainResponse)

describeUserPoolDomain domain =
    
    let
        requestInput = DescribeUserPoolDomainRequest
            
            domain
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeUserPoolDomainRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeUserPoolDomain"
                
                (AWS.Core.Decode.ResultDecoder "DescribeUserPoolDomainResponse" describeUserPoolDomainResponseDecoder)
                
            )





{-| <p>Forgets the specified device.</p>

__Required Parameters__

* `deviceKey` __:__ `String`


-}

forgetDevice :
  
    String ->
  
  
    ( ForgetDeviceOptions -> ForgetDeviceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

forgetDevice deviceKey setOptions =
    
    let
        requestInput = ForgetDeviceRequest
            
            options.accessToken
            
            deviceKey
            
        
        options = setOptions (ForgetDeviceOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> forgetDeviceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ForgetDevice"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a forgetDevice request
-}
type alias ForgetDeviceOptions =
    {
    accessToken : Maybe String
    }



{-| <p>Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password. For the <code>Username</code> parameter, you can use the username or user alias. If a verified phone number exists for the user, the confirmation code is sent to the phone number. Otherwise, if a verified email exists, the confirmation code is sent to the email. If neither a verified phone number nor a verified email exists, <code>InvalidParameterException</code> is thrown. To use the confirmation code for resetting the password, call .</p>

__Required Parameters__

* `clientId` __:__ `String`
* `username` __:__ `String`


-}

forgotPassword :
  
    String ->
  
    String ->
  
  
    ( ForgotPasswordOptions -> ForgotPasswordOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ForgotPasswordResponse)

forgotPassword clientId username setOptions =
    
    let
        requestInput = ForgotPasswordRequest
            
            clientId
            
            options.secretHash
            
            options.userContextData
            
            username
            
            options.analyticsMetadata
            
        
        options = setOptions (ForgotPasswordOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> forgotPasswordRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ForgotPassword"
                
                (AWS.Core.Decode.ResultDecoder "ForgotPasswordResponse" forgotPasswordResponseDecoder)
                
            )



{-| Options for a forgotPassword request
-}
type alias ForgotPasswordOptions =
    {
    secretHash : Maybe String,userContextData : Maybe UserContextDataType,analyticsMetadata : Maybe AnalyticsMetadataType
    }



{-| <p>Gets the header information for the .csv file to be used as input for the user import job.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

getCSVHeader :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCSVHeaderResponse)

getCSVHeader userPoolId =
    
    let
        requestInput = GetCSVHeaderRequest
            
            userPoolId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCSVHeaderRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetCSVHeader"
                
                (AWS.Core.Decode.ResultDecoder "GetCSVHeaderResponse" getCSVHeaderResponseDecoder)
                
            )





{-| <p>Gets the device.</p>

__Required Parameters__

* `deviceKey` __:__ `String`


-}

getDevice :
  
    String ->
  
  
    ( GetDeviceOptions -> GetDeviceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDeviceResponse)

getDevice deviceKey setOptions =
    
    let
        requestInput = GetDeviceRequest
            
            deviceKey
            
            options.accessToken
            
        
        options = setOptions (GetDeviceOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDeviceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDevice"
                
                (AWS.Core.Decode.ResultDecoder "GetDeviceResponse" getDeviceResponseDecoder)
                
            )



{-| Options for a getDevice request
-}
type alias GetDeviceOptions =
    {
    accessToken : Maybe String
    }



{-| <p>Gets a group.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `userPoolId` __:__ `String`


-}

getGroup :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetGroupResponse)

getGroup groupName userPoolId =
    
    let
        requestInput = GetGroupRequest
            
            groupName
            
            userPoolId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetGroup"
                
                (AWS.Core.Decode.ResultDecoder "GetGroupResponse" getGroupResponseDecoder)
                
            )





{-| <p>Gets the specified identity provider.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `idpIdentifier` __:__ `String`


-}

getIdentityProviderByIdentifier :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetIdentityProviderByIdentifierResponse)

getIdentityProviderByIdentifier userPoolId idpIdentifier =
    
    let
        requestInput = GetIdentityProviderByIdentifierRequest
            
            userPoolId
            
            idpIdentifier
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getIdentityProviderByIdentifierRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetIdentityProviderByIdentifier"
                
                (AWS.Core.Decode.ResultDecoder "GetIdentityProviderByIdentifierResponse" getIdentityProviderByIdentifierResponseDecoder)
                
            )





{-| <p>This method takes a user pool ID, and returns the signing certificate.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

getSigningCertificate :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSigningCertificateResponse)

getSigningCertificate userPoolId =
    
    let
        requestInput = GetSigningCertificateRequest
            
            userPoolId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getSigningCertificateRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetSigningCertificate"
                
                (AWS.Core.Decode.ResultDecoder "GetSigningCertificateResponse" getSigningCertificateResponseDecoder)
                
            )





{-| <p>Gets the UI Customization information for a particular app client's app UI, if there is something set. If nothing is set for the particular client, but there is an existing pool level customization (app <code>clientId</code> will be <code>ALL</code>), then that is returned. If nothing is present, then an empty shape is returned.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

getUICustomization :
  
    String ->
  
  
    ( GetUICustomizationOptions -> GetUICustomizationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetUICustomizationResponse)

getUICustomization userPoolId setOptions =
    
    let
        requestInput = GetUICustomizationRequest
            
            userPoolId
            
            options.clientId
            
        
        options = setOptions (GetUICustomizationOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getUICustomizationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetUICustomization"
                
                (AWS.Core.Decode.ResultDecoder "GetUICustomizationResponse" getUICustomizationResponseDecoder)
                
            )



{-| Options for a getUICustomization request
-}
type alias GetUICustomizationOptions =
    {
    clientId : Maybe String
    }



{-| <p>Gets the user attributes and metadata for a user.</p>

__Required Parameters__

* `accessToken` __:__ `String`


-}

getUser :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetUserResponse)

getUser accessToken =
    
    let
        requestInput = GetUserRequest
            
            accessToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getUserRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetUser"
                
                (AWS.Core.Decode.ResultDecoder "GetUserResponse" getUserResponseDecoder)
                
            )





{-| <p>Gets the user attribute verification code for the specified attribute name.</p>

__Required Parameters__

* `accessToken` __:__ `String`
* `attributeName` __:__ `String`


-}

getUserAttributeVerificationCode :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetUserAttributeVerificationCodeResponse)

getUserAttributeVerificationCode accessToken attributeName =
    
    let
        requestInput = GetUserAttributeVerificationCodeRequest
            
            accessToken
            
            attributeName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getUserAttributeVerificationCodeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetUserAttributeVerificationCode"
                
                (AWS.Core.Decode.ResultDecoder "GetUserAttributeVerificationCodeResponse" getUserAttributeVerificationCodeResponseDecoder)
                
            )





{-| <p>Gets the user pool multi-factor authentication (MFA) configuration.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

getUserPoolMfaConfig :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetUserPoolMfaConfigResponse)

getUserPoolMfaConfig userPoolId =
    
    let
        requestInput = GetUserPoolMfaConfigRequest
            
            userPoolId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getUserPoolMfaConfigRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetUserPoolMfaConfig"
                
                (AWS.Core.Decode.ResultDecoder "GetUserPoolMfaConfigResponse" getUserPoolMfaConfigResponseDecoder)
                
            )





{-| <p>Signs out users from all devices.</p>

__Required Parameters__

* `accessToken` __:__ `String`


-}

globalSignOut :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GlobalSignOutResponse)

globalSignOut accessToken =
    
    let
        requestInput = GlobalSignOutRequest
            
            accessToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> globalSignOutRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GlobalSignOut"
                
                (AWS.Core.Decode.ResultDecoder "GlobalSignOutResponse" globalSignOutResponseDecoder)
                
            )





{-| <p>Initiates the authentication flow.</p>

__Required Parameters__

* `authFlow` __:__ `AuthFlowType`
* `clientId` __:__ `String`


-}

initiateAuth :
  
    AuthFlowType ->
  
    String ->
  
  
    ( InitiateAuthOptions -> InitiateAuthOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper InitiateAuthResponse)

initiateAuth authFlow clientId setOptions =
    
    let
        requestInput = InitiateAuthRequest
            
            authFlow
            
            options.authParameters
            
            options.clientMetadata
            
            clientId
            
            options.analyticsMetadata
            
            options.userContextData
            
        
        options = setOptions (InitiateAuthOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> initiateAuthRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "InitiateAuth"
                
                (AWS.Core.Decode.ResultDecoder "InitiateAuthResponse" initiateAuthResponseDecoder)
                
            )



{-| Options for a initiateAuth request
-}
type alias InitiateAuthOptions =
    {
    authParameters : Maybe (Dict String String),clientMetadata : Maybe (Dict String String),analyticsMetadata : Maybe AnalyticsMetadataType,userContextData : Maybe UserContextDataType
    }



{-| <p>Lists the devices.</p>

__Required Parameters__

* `accessToken` __:__ `String`


-}

listDevices :
  
    String ->
  
  
    ( ListDevicesOptions -> ListDevicesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDevicesResponse)

listDevices accessToken setOptions =
    
    let
        requestInput = ListDevicesRequest
            
            accessToken
            
            options.limit
            
            options.paginationToken
            
        
        options = setOptions (ListDevicesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listDevicesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListDevices"
                
                (AWS.Core.Decode.ResultDecoder "ListDevicesResponse" listDevicesResponseDecoder)
                
            )



{-| Options for a listDevices request
-}
type alias ListDevicesOptions =
    {
    limit : Maybe Int,paginationToken : Maybe String
    }



{-| <p>Lists the groups associated with a user pool.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

listGroups :
  
    String ->
  
  
    ( ListGroupsOptions -> ListGroupsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListGroupsResponse)

listGroups userPoolId setOptions =
    
    let
        requestInput = ListGroupsRequest
            
            userPoolId
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (ListGroupsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listGroupsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListGroups"
                
                (AWS.Core.Decode.ResultDecoder "ListGroupsResponse" listGroupsResponseDecoder)
                
            )



{-| Options for a listGroups request
-}
type alias ListGroupsOptions =
    {
    limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists information about all identity providers for a user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

listIdentityProviders :
  
    String ->
  
  
    ( ListIdentityProvidersOptions -> ListIdentityProvidersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListIdentityProvidersResponse)

listIdentityProviders userPoolId setOptions =
    
    let
        requestInput = ListIdentityProvidersRequest
            
            userPoolId
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListIdentityProvidersOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listIdentityProvidersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListIdentityProviders"
                
                (AWS.Core.Decode.ResultDecoder "ListIdentityProvidersResponse" listIdentityProvidersResponseDecoder)
                
            )



{-| Options for a listIdentityProviders request
-}
type alias ListIdentityProvidersOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists the resource servers for a user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

listResourceServers :
  
    String ->
  
  
    ( ListResourceServersOptions -> ListResourceServersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListResourceServersResponse)

listResourceServers userPoolId setOptions =
    
    let
        requestInput = ListResourceServersRequest
            
            userPoolId
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListResourceServersOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listResourceServersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListResourceServers"
                
                (AWS.Core.Decode.ResultDecoder "ListResourceServersResponse" listResourceServersResponseDecoder)
                
            )



{-| Options for a listResourceServers request
-}
type alias ListResourceServersOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists the tags that are assigned to an Amazon Cognito user pool.</p> <p>A tag is a label that you can apply to user pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria.</p> <p>You can use this action up to 10 times per second, per account.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)

listTagsForResource resourceArn =
    
    let
        requestInput = ListTagsForResourceRequest
            
            resourceArn
            
        
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





{-| <p>Lists the user import jobs.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `maxResults` __:__ `Int`


-}

listUserImportJobs :
  
    String ->
  
    Int ->
  
  
    ( ListUserImportJobsOptions -> ListUserImportJobsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListUserImportJobsResponse)

listUserImportJobs userPoolId maxResults setOptions =
    
    let
        requestInput = ListUserImportJobsRequest
            
            userPoolId
            
            maxResults
            
            options.paginationToken
            
        
        options = setOptions (ListUserImportJobsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listUserImportJobsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListUserImportJobs"
                
                (AWS.Core.Decode.ResultDecoder "ListUserImportJobsResponse" listUserImportJobsResponseDecoder)
                
            )



{-| Options for a listUserImportJobs request
-}
type alias ListUserImportJobsOptions =
    {
    paginationToken : Maybe String
    }



{-| <p>Lists the clients that have been created for the specified user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

listUserPoolClients :
  
    String ->
  
  
    ( ListUserPoolClientsOptions -> ListUserPoolClientsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListUserPoolClientsResponse)

listUserPoolClients userPoolId setOptions =
    
    let
        requestInput = ListUserPoolClientsRequest
            
            userPoolId
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (ListUserPoolClientsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listUserPoolClientsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListUserPoolClients"
                
                (AWS.Core.Decode.ResultDecoder "ListUserPoolClientsResponse" listUserPoolClientsResponseDecoder)
                
            )



{-| Options for a listUserPoolClients request
-}
type alias ListUserPoolClientsOptions =
    {
    maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Lists the user pools associated with an AWS account.</p>

__Required Parameters__

* `maxResults` __:__ `Int`


-}

listUserPools :
  
    Int ->
  
  
    ( ListUserPoolsOptions -> ListUserPoolsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListUserPoolsResponse)

listUserPools maxResults setOptions =
    
    let
        requestInput = ListUserPoolsRequest
            
            options.nextToken
            
            maxResults
            
        
        options = setOptions (ListUserPoolsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listUserPoolsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListUserPools"
                
                (AWS.Core.Decode.ResultDecoder "ListUserPoolsResponse" listUserPoolsResponseDecoder)
                
            )



{-| Options for a listUserPools request
-}
type alias ListUserPoolsOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Lists the users in the Amazon Cognito user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

listUsers :
  
    String ->
  
  
    ( ListUsersOptions -> ListUsersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListUsersResponse)

listUsers userPoolId setOptions =
    
    let
        requestInput = ListUsersRequest
            
            userPoolId
            
            options.attributesToGet
            
            options.limit
            
            options.paginationToken
            
            options.filter
            
        
        options = setOptions (ListUsersOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listUsersRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListUsers"
                
                (AWS.Core.Decode.ResultDecoder "ListUsersResponse" listUsersResponseDecoder)
                
            )



{-| Options for a listUsers request
-}
type alias ListUsersOptions =
    {
    attributesToGet : Maybe (List String),limit : Maybe Int,paginationToken : Maybe String,filter : Maybe String
    }



{-| <p>Lists the users in the specified group.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `groupName` __:__ `String`


-}

listUsersInGroup :
  
    String ->
  
    String ->
  
  
    ( ListUsersInGroupOptions -> ListUsersInGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListUsersInGroupResponse)

listUsersInGroup userPoolId groupName setOptions =
    
    let
        requestInput = ListUsersInGroupRequest
            
            userPoolId
            
            groupName
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (ListUsersInGroupOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listUsersInGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListUsersInGroup"
                
                (AWS.Core.Decode.ResultDecoder "ListUsersInGroupResponse" listUsersInGroupResponseDecoder)
                
            )



{-| Options for a listUsersInGroup request
-}
type alias ListUsersInGroupOptions =
    {
    limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Resends the confirmation (for confirmation of registration) to a specific user in the user pool.</p>

__Required Parameters__

* `clientId` __:__ `String`
* `username` __:__ `String`


-}

resendConfirmationCode :
  
    String ->
  
    String ->
  
  
    ( ResendConfirmationCodeOptions -> ResendConfirmationCodeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResendConfirmationCodeResponse)

resendConfirmationCode clientId username setOptions =
    
    let
        requestInput = ResendConfirmationCodeRequest
            
            clientId
            
            options.secretHash
            
            options.userContextData
            
            username
            
            options.analyticsMetadata
            
        
        options = setOptions (ResendConfirmationCodeOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> resendConfirmationCodeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ResendConfirmationCode"
                
                (AWS.Core.Decode.ResultDecoder "ResendConfirmationCodeResponse" resendConfirmationCodeResponseDecoder)
                
            )



{-| Options for a resendConfirmationCode request
-}
type alias ResendConfirmationCodeOptions =
    {
    secretHash : Maybe String,userContextData : Maybe UserContextDataType,analyticsMetadata : Maybe AnalyticsMetadataType
    }



{-| <p>Responds to the authentication challenge.</p>

__Required Parameters__

* `clientId` __:__ `String`
* `challengeName` __:__ `ChallengeNameType`


-}

respondToAuthChallenge :
  
    String ->
  
    ChallengeNameType ->
  
  
    ( RespondToAuthChallengeOptions -> RespondToAuthChallengeOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RespondToAuthChallengeResponse)

respondToAuthChallenge clientId challengeName setOptions =
    
    let
        requestInput = RespondToAuthChallengeRequest
            
            clientId
            
            challengeName
            
            options.session
            
            options.challengeResponses
            
            options.analyticsMetadata
            
            options.userContextData
            
        
        options = setOptions (RespondToAuthChallengeOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> respondToAuthChallengeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RespondToAuthChallenge"
                
                (AWS.Core.Decode.ResultDecoder "RespondToAuthChallengeResponse" respondToAuthChallengeResponseDecoder)
                
            )



{-| Options for a respondToAuthChallenge request
-}
type alias RespondToAuthChallengeOptions =
    {
    session : Maybe String,challengeResponses : Maybe (Dict String String),analyticsMetadata : Maybe AnalyticsMetadataType,userContextData : Maybe UserContextDataType
    }



{-| <p>Configures actions on detected risks. To delete the risk configuration for <code>UserPoolId</code> or <code>ClientId</code>, pass null values for all four configuration types.</p> <p>To enable Amazon Cognito advanced security features, update the user pool to include the <code>UserPoolAddOns</code> key<code>AdvancedSecurityMode</code>.</p> <p>See .</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

setRiskConfiguration :
  
    String ->
  
  
    ( SetRiskConfigurationOptions -> SetRiskConfigurationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetRiskConfigurationResponse)

setRiskConfiguration userPoolId setOptions =
    
    let
        requestInput = SetRiskConfigurationRequest
            
            userPoolId
            
            options.clientId
            
            options.compromisedCredentialsRiskConfiguration
            
            options.accountTakeoverRiskConfiguration
            
            options.riskExceptionConfiguration
            
        
        options = setOptions (SetRiskConfigurationOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> setRiskConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetRiskConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "SetRiskConfigurationResponse" setRiskConfigurationResponseDecoder)
                
            )



{-| Options for a setRiskConfiguration request
-}
type alias SetRiskConfigurationOptions =
    {
    clientId : Maybe String,compromisedCredentialsRiskConfiguration : Maybe CompromisedCredentialsRiskConfigurationType,accountTakeoverRiskConfiguration : Maybe AccountTakeoverRiskConfigurationType,riskExceptionConfiguration : Maybe RiskExceptionConfigurationType
    }



{-| <p>Sets the UI customization information for a user pool's built-in app UI.</p> <p>You can specify app UI customization settings for a single client (with a specific <code>clientId</code>) or for all clients (by setting the <code>clientId</code> to <code>ALL</code>). If you specify <code>ALL</code>, the default configuration will be used for every client that has no UI customization set previously. If you specify UI customization settings for a particular client, it will no longer fall back to the <code>ALL</code> configuration. </p> <note> <p>To use this API, your user pool must have a domain associated with it. Otherwise, there is no place to host the app's pages, and the service will throw an error.</p> </note>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

setUICustomization :
  
    String ->
  
  
    ( SetUICustomizationOptions -> SetUICustomizationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetUICustomizationResponse)

setUICustomization userPoolId setOptions =
    
    let
        requestInput = SetUICustomizationRequest
            
            userPoolId
            
            options.clientId
            
            options.cSS
            
            options.imageFile
            
        
        options = setOptions (SetUICustomizationOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> setUICustomizationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetUICustomization"
                
                (AWS.Core.Decode.ResultDecoder "SetUICustomizationResponse" setUICustomizationResponseDecoder)
                
            )



{-| Options for a setUICustomization request
-}
type alias SetUICustomizationOptions =
    {
    clientId : Maybe String,cSS : Maybe String,imageFile : Maybe String
    }



{-| <p>Set the user's multi-factor authentication (MFA) method preference.</p>

__Required Parameters__

* `accessToken` __:__ `String`


-}

setUserMFAPreference :
  
    String ->
  
  
    ( SetUserMFAPreferenceOptions -> SetUserMFAPreferenceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetUserMFAPreferenceResponse)

setUserMFAPreference accessToken setOptions =
    
    let
        requestInput = SetUserMFAPreferenceRequest
            
            options.sMSMfaSettings
            
            options.softwareTokenMfaSettings
            
            accessToken
            
        
        options = setOptions (SetUserMFAPreferenceOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> setUserMFAPreferenceRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetUserMFAPreference"
                
                (AWS.Core.Decode.ResultDecoder "SetUserMFAPreferenceResponse" setUserMFAPreferenceResponseDecoder)
                
            )



{-| Options for a setUserMFAPreference request
-}
type alias SetUserMFAPreferenceOptions =
    {
    sMSMfaSettings : Maybe SMSMfaSettingsType,softwareTokenMfaSettings : Maybe SoftwareTokenMfaSettingsType
    }



{-| <p>Set the user pool MFA configuration.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

setUserPoolMfaConfig :
  
    String ->
  
  
    ( SetUserPoolMfaConfigOptions -> SetUserPoolMfaConfigOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetUserPoolMfaConfigResponse)

setUserPoolMfaConfig userPoolId setOptions =
    
    let
        requestInput = SetUserPoolMfaConfigRequest
            
            userPoolId
            
            options.smsMfaConfiguration
            
            options.softwareTokenMfaConfiguration
            
            options.mfaConfiguration
            
        
        options = setOptions (SetUserPoolMfaConfigOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> setUserPoolMfaConfigRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetUserPoolMfaConfig"
                
                (AWS.Core.Decode.ResultDecoder "SetUserPoolMfaConfigResponse" setUserPoolMfaConfigResponseDecoder)
                
            )



{-| Options for a setUserPoolMfaConfig request
-}
type alias SetUserPoolMfaConfigOptions =
    {
    smsMfaConfiguration : Maybe SmsMfaConfigType,softwareTokenMfaConfiguration : Maybe SoftwareTokenMfaConfigType,mfaConfiguration : Maybe UserPoolMfaType
    }



{-| <p>Sets the user settings like multi-factor authentication (MFA). If MFA is to be removed for a particular attribute pass the attribute with code delivery as null. If null list is passed, all MFA options are removed.</p>

__Required Parameters__

* `accessToken` __:__ `String`
* `mFAOptions` __:__ `(List MFAOptionType)`


-}

setUserSettings :
  
    String ->
  
    (List MFAOptionType) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SetUserSettingsResponse)

setUserSettings accessToken mFAOptions =
    
    let
        requestInput = SetUserSettingsRequest
            
            accessToken
            
            mFAOptions
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> setUserSettingsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetUserSettings"
                
                (AWS.Core.Decode.ResultDecoder "SetUserSettingsResponse" setUserSettingsResponseDecoder)
                
            )





{-| <p>Registers the user in the specified user pool and creates a user name, password, and user attributes.</p>

__Required Parameters__

* `clientId` __:__ `String`
* `username` __:__ `String`
* `password` __:__ `String`


-}

signUp :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( SignUpOptions -> SignUpOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SignUpResponse)

signUp clientId username password setOptions =
    
    let
        requestInput = SignUpRequest
            
            clientId
            
            options.secretHash
            
            username
            
            password
            
            options.userAttributes
            
            options.validationData
            
            options.analyticsMetadata
            
            options.userContextData
            
        
        options = setOptions (SignUpOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> signUpRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SignUp"
                
                (AWS.Core.Decode.ResultDecoder "SignUpResponse" signUpResponseDecoder)
                
            )



{-| Options for a signUp request
-}
type alias SignUpOptions =
    {
    secretHash : Maybe String,userAttributes : Maybe (List AttributeType),validationData : Maybe (List AttributeType),analyticsMetadata : Maybe AnalyticsMetadataType,userContextData : Maybe UserContextDataType
    }



{-| <p>Starts the user import.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `jobId` __:__ `String`


-}

startUserImportJob :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartUserImportJobResponse)

startUserImportJob userPoolId jobId =
    
    let
        requestInput = StartUserImportJobRequest
            
            userPoolId
            
            jobId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startUserImportJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartUserImportJob"
                
                (AWS.Core.Decode.ResultDecoder "StartUserImportJobResponse" startUserImportJobResponseDecoder)
                
            )





{-| <p>Stops the user import job.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `jobId` __:__ `String`


-}

stopUserImportJob :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopUserImportJobResponse)

stopUserImportJob userPoolId jobId =
    
    let
        requestInput = StopUserImportJobRequest
            
            userPoolId
            
            jobId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopUserImportJobRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopUserImportJob"
                
                (AWS.Core.Decode.ResultDecoder "StopUserImportJobResponse" stopUserImportJobResponseDecoder)
                
            )





{-| <p>Assigns a set of tags to an Amazon Cognito user pool. A tag is a label that you can use to categorize and manage user pools in different ways, such as by purpose, owner, environment, or other criteria.</p> <p>Each tag consists of a key and value, both of which you define. A key is a general category for more specific values. For example, if you have two versions of a user pool, one for testing and another for production, you might assign an <code>Environment</code> tag key to both user pools. The value of this key might be <code>Test</code> for one user pool and <code>Production</code> for the other.</p> <p>Tags are useful for cost tracking and access control. You can activate your tags so that they appear on the Billing and Cost Management console, where you can track the costs associated with your user pools. In an IAM policy, you can constrain permissions for user pools based on specific tags or tag values.</p> <p>You can use this action up to 5 times per second, per account. A user pool can have as many as 50 tags.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

tagResource :
  
    String ->
  
  
    ( TagResourceOptions -> TagResourceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TagResourceResponse)

tagResource resourceArn setOptions =
    
    let
        requestInput = TagResourceRequest
            
            resourceArn
            
            options.tags
            
        
        options = setOptions (TagResourceOptions Nothing)
        
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



{-| Options for a tagResource request
-}
type alias TagResourceOptions =
    {
    tags : Maybe (Dict String String)
    }



{-| <p>Removes the specified tags from an Amazon Cognito user pool. You can use this action up to 5 times per second, per account</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

untagResource :
  
    String ->
  
  
    ( UntagResourceOptions -> UntagResourceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UntagResourceResponse)

untagResource resourceArn setOptions =
    
    let
        requestInput = UntagResourceRequest
            
            resourceArn
            
            options.tagKeys
            
        
        options = setOptions (UntagResourceOptions Nothing)
        
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



{-| Options for a untagResource request
-}
type alias UntagResourceOptions =
    {
    tagKeys : Maybe (List String)
    }



{-| <p>Provides the feedback for an authentication event whether it was from a valid user or not. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `eventId` __:__ `String`
* `feedbackToken` __:__ `String`
* `feedbackValue` __:__ `FeedbackValueType`


-}

updateAuthEventFeedback :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    FeedbackValueType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateAuthEventFeedbackResponse)

updateAuthEventFeedback userPoolId username eventId feedbackToken feedbackValue =
    
    let
        requestInput = UpdateAuthEventFeedbackRequest
            
            userPoolId
            
            username
            
            eventId
            
            feedbackToken
            
            feedbackValue
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateAuthEventFeedbackRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateAuthEventFeedback"
                
                (AWS.Core.Decode.ResultDecoder "UpdateAuthEventFeedbackResponse" updateAuthEventFeedbackResponseDecoder)
                
            )





{-| <p>Updates the device status.</p>

__Required Parameters__

* `accessToken` __:__ `String`
* `deviceKey` __:__ `String`


-}

updateDeviceStatus :
  
    String ->
  
    String ->
  
  
    ( UpdateDeviceStatusOptions -> UpdateDeviceStatusOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateDeviceStatusResponse)

updateDeviceStatus accessToken deviceKey setOptions =
    
    let
        requestInput = UpdateDeviceStatusRequest
            
            accessToken
            
            deviceKey
            
            options.deviceRememberedStatus
            
        
        options = setOptions (UpdateDeviceStatusOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateDeviceStatusRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateDeviceStatus"
                
                (AWS.Core.Decode.ResultDecoder "UpdateDeviceStatusResponse" updateDeviceStatusResponseDecoder)
                
            )



{-| Options for a updateDeviceStatus request
-}
type alias UpdateDeviceStatusOptions =
    {
    deviceRememberedStatus : Maybe DeviceRememberedStatusType
    }



{-| <p>Updates the specified group with the specified attributes.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `userPoolId` __:__ `String`


-}

updateGroup :
  
    String ->
  
    String ->
  
  
    ( UpdateGroupOptions -> UpdateGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateGroupResponse)

updateGroup groupName userPoolId setOptions =
    
    let
        requestInput = UpdateGroupRequest
            
            groupName
            
            userPoolId
            
            options.description
            
            options.roleArn
            
            options.precedence
            
        
        options = setOptions (UpdateGroupOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateGroup"
                
                (AWS.Core.Decode.ResultDecoder "UpdateGroupResponse" updateGroupResponseDecoder)
                
            )



{-| Options for a updateGroup request
-}
type alias UpdateGroupOptions =
    {
    description : Maybe String,roleArn : Maybe String,precedence : Maybe Int
    }



{-| <p>Updates identity provider information for a user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `providerName` __:__ `String`


-}

updateIdentityProvider :
  
    String ->
  
    String ->
  
  
    ( UpdateIdentityProviderOptions -> UpdateIdentityProviderOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateIdentityProviderResponse)

updateIdentityProvider userPoolId providerName setOptions =
    
    let
        requestInput = UpdateIdentityProviderRequest
            
            userPoolId
            
            providerName
            
            options.providerDetails
            
            options.attributeMapping
            
            options.idpIdentifiers
            
        
        options = setOptions (UpdateIdentityProviderOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateIdentityProviderRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateIdentityProvider"
                
                (AWS.Core.Decode.ResultDecoder "UpdateIdentityProviderResponse" updateIdentityProviderResponseDecoder)
                
            )



{-| Options for a updateIdentityProvider request
-}
type alias UpdateIdentityProviderOptions =
    {
    providerDetails : Maybe (Dict String String),attributeMapping : Maybe (Dict String String),idpIdentifiers : Maybe (List String)
    }



{-| <p>Updates the name and scopes of resource server. All other fields are read-only.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `identifier` __:__ `String`
* `name` __:__ `String`


-}

updateResourceServer :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( UpdateResourceServerOptions -> UpdateResourceServerOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateResourceServerResponse)

updateResourceServer userPoolId identifier name setOptions =
    
    let
        requestInput = UpdateResourceServerRequest
            
            userPoolId
            
            identifier
            
            name
            
            options.scopes
            
        
        options = setOptions (UpdateResourceServerOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateResourceServerRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateResourceServer"
                
                (AWS.Core.Decode.ResultDecoder "UpdateResourceServerResponse" updateResourceServerResponseDecoder)
                
            )



{-| Options for a updateResourceServer request
-}
type alias UpdateResourceServerOptions =
    {
    scopes : Maybe (List ResourceServerScopeType)
    }



{-| <p>Allows a user to update a specific attribute (one at a time).</p>

__Required Parameters__

* `userAttributes` __:__ `(List AttributeType)`
* `accessToken` __:__ `String`


-}

updateUserAttributes :
  
    (List AttributeType) ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateUserAttributesResponse)

updateUserAttributes userAttributes accessToken =
    
    let
        requestInput = UpdateUserAttributesRequest
            
            userAttributes
            
            accessToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateUserAttributesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateUserAttributes"
                
                (AWS.Core.Decode.ResultDecoder "UpdateUserAttributesResponse" updateUserAttributesResponseDecoder)
                
            )





{-| <p>Updates the specified user pool with the specified attributes. If you don't provide a value for an attribute, it will be set to the default value. You can get a list of the current user pool settings with .</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}

updateUserPool :
  
    String ->
  
  
    ( UpdateUserPoolOptions -> UpdateUserPoolOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateUserPoolResponse)

updateUserPool userPoolId setOptions =
    
    let
        requestInput = UpdateUserPoolRequest
            
            userPoolId
            
            options.policies
            
            options.lambdaConfig
            
            options.autoVerifiedAttributes
            
            options.smsVerificationMessage
            
            options.emailVerificationMessage
            
            options.emailVerificationSubject
            
            options.verificationMessageTemplate
            
            options.smsAuthenticationMessage
            
            options.mfaConfiguration
            
            options.deviceConfiguration
            
            options.emailConfiguration
            
            options.smsConfiguration
            
            options.userPoolTags
            
            options.adminCreateUserConfig
            
            options.userPoolAddOns
            
        
        options = setOptions (UpdateUserPoolOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateUserPoolRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateUserPool"
                
                (AWS.Core.Decode.ResultDecoder "UpdateUserPoolResponse" updateUserPoolResponseDecoder)
                
            )



{-| Options for a updateUserPool request
-}
type alias UpdateUserPoolOptions =
    {
    policies : Maybe UserPoolPolicyType,lambdaConfig : Maybe LambdaConfigType,autoVerifiedAttributes : Maybe (List VerifiedAttributeType),smsVerificationMessage : Maybe String,emailVerificationMessage : Maybe String,emailVerificationSubject : Maybe String,verificationMessageTemplate : Maybe VerificationMessageTemplateType,smsAuthenticationMessage : Maybe String,mfaConfiguration : Maybe UserPoolMfaType,deviceConfiguration : Maybe DeviceConfigurationType,emailConfiguration : Maybe EmailConfigurationType,smsConfiguration : Maybe SmsConfigurationType,userPoolTags : Maybe (Dict String String),adminCreateUserConfig : Maybe AdminCreateUserConfigType,userPoolAddOns : Maybe UserPoolAddOnsType
    }



{-| <p>Updates the specified user pool app client with the specified attributes. If you don't provide a value for an attribute, it will be set to the default value. You can get a list of the current user pool app client settings with .</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `clientId` __:__ `String`


-}

updateUserPoolClient :
  
    String ->
  
    String ->
  
  
    ( UpdateUserPoolClientOptions -> UpdateUserPoolClientOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateUserPoolClientResponse)

updateUserPoolClient userPoolId clientId setOptions =
    
    let
        requestInput = UpdateUserPoolClientRequest
            
            userPoolId
            
            clientId
            
            options.clientName
            
            options.refreshTokenValidity
            
            options.readAttributes
            
            options.writeAttributes
            
            options.explicitAuthFlows
            
            options.supportedIdentityProviders
            
            options.callbackURLs
            
            options.logoutURLs
            
            options.defaultRedirectURI
            
            options.allowedOAuthFlows
            
            options.allowedOAuthScopes
            
            options.allowedOAuthFlowsUserPoolClient
            
            options.analyticsConfiguration
            
        
        options = setOptions (UpdateUserPoolClientOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateUserPoolClientRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateUserPoolClient"
                
                (AWS.Core.Decode.ResultDecoder "UpdateUserPoolClientResponse" updateUserPoolClientResponseDecoder)
                
            )



{-| Options for a updateUserPoolClient request
-}
type alias UpdateUserPoolClientOptions =
    {
    clientName : Maybe String,refreshTokenValidity : Maybe Int,readAttributes : Maybe (List String),writeAttributes : Maybe (List String),explicitAuthFlows : Maybe (List ExplicitAuthFlowsType),supportedIdentityProviders : Maybe (List String),callbackURLs : Maybe (List String),logoutURLs : Maybe (List String),defaultRedirectURI : Maybe String,allowedOAuthFlows : Maybe (List OAuthFlowType),allowedOAuthScopes : Maybe (List String),allowedOAuthFlowsUserPoolClient : Maybe Bool,analyticsConfiguration : Maybe AnalyticsConfigurationType
    }



{-| <p>Updates the Secure Sockets Layer (SSL) certificate for the custom domain for your user pool.</p> <p>You can use this operation to provide the Amazon Resource Name (ARN) of a new certificate to Amazon Cognito. You cannot use it to change the domain for a user pool.</p> <p>A custom domain is used to host the Amazon Cognito hosted UI, which provides sign-up and sign-in pages for your application. When you set up a custom domain, you provide a certificate that you manage with AWS Certificate Manager (ACM). When necessary, you can use this operation to change the certificate that you applied to your custom domain.</p> <p>Usually, this is unnecessary following routine certificate renewal with ACM. When you renew your existing certificate in ACM, the ARN for your certificate remains the same, and your custom domain uses the new certificate automatically.</p> <p>However, if you replace your existing certificate with a new one, ACM gives the new certificate a new ARN. To apply the new certificate to your custom domain, you must provide this ARN to Amazon Cognito.</p> <p>When you add your new certificate in ACM, you must choose US East (N. Virginia) as the AWS Region.</p> <p>After you submit your request, Amazon Cognito requires up to 1 hour to distribute your new certificate to your custom domain.</p> <p>For more information about adding a custom domain to your user pool, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html">Using Your Own Domain for the Hosted UI</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `userPoolId` __:__ `String`
* `customDomainConfig` __:__ `CustomDomainConfigType`


-}

updateUserPoolDomain :
  
    String ->
  
    String ->
  
    CustomDomainConfigType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateUserPoolDomainResponse)

updateUserPoolDomain domain userPoolId customDomainConfig =
    
    let
        requestInput = UpdateUserPoolDomainRequest
            
            domain
            
            userPoolId
            
            customDomainConfig
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateUserPoolDomainRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateUserPoolDomain"
                
                (AWS.Core.Decode.ResultDecoder "UpdateUserPoolDomainResponse" updateUserPoolDomainResponseDecoder)
                
            )





{-| <p>Use this API to register a user's entered TOTP code and mark the user's software token MFA status as "verified" if successful. The request takes an access token or a session string, but not both.</p>

__Required Parameters__

* `userCode` __:__ `String`


-}

verifySoftwareToken :
  
    String ->
  
  
    ( VerifySoftwareTokenOptions -> VerifySoftwareTokenOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VerifySoftwareTokenResponse)

verifySoftwareToken userCode setOptions =
    
    let
        requestInput = VerifySoftwareTokenRequest
            
            options.accessToken
            
            options.session
            
            userCode
            
            options.friendlyDeviceName
            
        
        options = setOptions (VerifySoftwareTokenOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> verifySoftwareTokenRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "VerifySoftwareToken"
                
                (AWS.Core.Decode.ResultDecoder "VerifySoftwareTokenResponse" verifySoftwareTokenResponseDecoder)
                
            )



{-| Options for a verifySoftwareToken request
-}
type alias VerifySoftwareTokenOptions =
    {
    accessToken : Maybe String,session : Maybe String,friendlyDeviceName : Maybe String
    }



{-| <p>Verifies the specified user attributes in the user pool.</p>

__Required Parameters__

* `accessToken` __:__ `String`
* `attributeName` __:__ `String`
* `code` __:__ `String`


-}

verifyUserAttribute :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper VerifyUserAttributeResponse)

verifyUserAttribute accessToken attributeName code =
    
    let
        requestInput = VerifyUserAttributeRequest
            
            accessToken
            
            attributeName
            
            code
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> verifyUserAttributeRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "VerifyUserAttribute"
                
                (AWS.Core.Decode.ResultDecoder "VerifyUserAttributeResponse" verifyUserAttributeResponseDecoder)
                
            )






{-| <p>Account takeover action type.</p>
-}
type alias AccountTakeoverActionType =
    { notify : Bool
    , eventAction : AccountTakeoverEventActionType
    }



accountTakeoverActionTypeDecoder : JD.Decoder AccountTakeoverActionType
accountTakeoverActionTypeDecoder =
    JD.succeed AccountTakeoverActionType
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Notify", "notify"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["EventAction", "eventAction"]
            accountTakeoverEventActionTypeDecoder
        )
        




accountTakeoverActionTypeToString : AccountTakeoverActionType -> String -- List (String, String)
accountTakeoverActionTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "notify" "" -- val.notify
        
    --     |> Dict.insert
    --         "eventAction" "" -- val.eventAction
        
    --     |> Dict.toList
    ""



{-| <p>Account takeover actions type.</p>
-}
type alias AccountTakeoverActionsType =
    { lowAction : Maybe AccountTakeoverActionType
    , mediumAction : Maybe AccountTakeoverActionType
    , highAction : Maybe AccountTakeoverActionType
    }



accountTakeoverActionsTypeDecoder : JD.Decoder AccountTakeoverActionsType
accountTakeoverActionsTypeDecoder =
    JD.succeed AccountTakeoverActionsType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LowAction", "lowAction"]
            accountTakeoverActionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MediumAction", "mediumAction"]
            accountTakeoverActionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HighAction", "highAction"]
            accountTakeoverActionTypeDecoder
        )
        




accountTakeoverActionsTypeToString : AccountTakeoverActionsType -> String -- List (String, String)
accountTakeoverActionsTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "lowAction" "" -- val.lowAction
        
    --     |> Dict.insert
    --         "mediumAction" "" -- val.mediumAction
        
    --     |> Dict.insert
    --         "highAction" "" -- val.highAction
        
    --     |> Dict.toList
    ""



{-| One of

* `AccountTakeoverEventActionType_BLOCK`
* `AccountTakeoverEventActionType_MFA_IF_CONFIGURED`
* `AccountTakeoverEventActionType_MFA_REQUIRED`
* `AccountTakeoverEventActionType_NO_ACTION`

-}
type AccountTakeoverEventActionType
    = AccountTakeoverEventActionType_BLOCK
    | AccountTakeoverEventActionType_MFA_IF_CONFIGURED
    | AccountTakeoverEventActionType_MFA_REQUIRED
    | AccountTakeoverEventActionType_NO_ACTION



accountTakeoverEventActionTypeDecoder : JD.Decoder AccountTakeoverEventActionType
accountTakeoverEventActionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BLOCK" ->
                        JD.succeed AccountTakeoverEventActionType_BLOCK

                    "MFA_IF_CONFIGURED" ->
                        JD.succeed AccountTakeoverEventActionType_MFA_IF_CONFIGURED

                    "MFA_REQUIRED" ->
                        JD.succeed AccountTakeoverEventActionType_MFA_REQUIRED

                    "NO_ACTION" ->
                        JD.succeed AccountTakeoverEventActionType_NO_ACTION


                    _ ->
                        JD.fail "bad thing"
            )




accountTakeoverEventActionTypeToString : AccountTakeoverEventActionType -> String
accountTakeoverEventActionTypeToString val =
    case val of
        AccountTakeoverEventActionType_BLOCK ->
            "BLOCK"

        AccountTakeoverEventActionType_MFA_IF_CONFIGURED ->
            "MFA_IF_CONFIGURED"

        AccountTakeoverEventActionType_MFA_REQUIRED ->
            "MFA_REQUIRED"

        AccountTakeoverEventActionType_NO_ACTION ->
            "NO_ACTION"




{-| <p>Configuration for mitigation actions and notification for different levels of risk detected for a potential account takeover.</p>
-}
type alias AccountTakeoverRiskConfigurationType =
    { notifyConfiguration : Maybe NotifyConfigurationType
    , actions : AccountTakeoverActionsType
    }



accountTakeoverRiskConfigurationTypeDecoder : JD.Decoder AccountTakeoverRiskConfigurationType
accountTakeoverRiskConfigurationTypeDecoder =
    JD.succeed AccountTakeoverRiskConfigurationType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotifyConfiguration", "notifyConfiguration"]
            notifyConfigurationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Actions", "actions"]
            accountTakeoverActionsTypeDecoder
        )
        




accountTakeoverRiskConfigurationTypeToString : AccountTakeoverRiskConfigurationType -> String -- List (String, String)
accountTakeoverRiskConfigurationTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "notifyConfiguration" "" -- val.notifyConfiguration
        
    --     |> Dict.insert
    --         "actions" "" -- val.actions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from addCustomAttributes
-}
type alias AddCustomAttributesResponse =
    { 
    }



addCustomAttributesResponseDecoder : JD.Decoder AddCustomAttributesResponse
addCustomAttributesResponseDecoder =
    JD.succeed AddCustomAttributesResponse
        




addCustomAttributesResponseToString : AddCustomAttributesResponse -> String -- List (String, String)
addCustomAttributesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminConfirmSignUp
-}
type alias AdminConfirmSignUpResponse =
    { 
    }



adminConfirmSignUpResponseDecoder : JD.Decoder AdminConfirmSignUpResponse
adminConfirmSignUpResponseDecoder =
    JD.succeed AdminConfirmSignUpResponse
        




adminConfirmSignUpResponseToString : AdminConfirmSignUpResponse -> String -- List (String, String)
adminConfirmSignUpResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>The configuration for creating a new user profile.</p>
-}
type alias AdminCreateUserConfigType =
    { allowAdminCreateUserOnly : Maybe Bool
    , unusedAccountValidityDays : Maybe Int
    , inviteMessageTemplate : Maybe MessageTemplateType
    }



adminCreateUserConfigTypeDecoder : JD.Decoder AdminCreateUserConfigType
adminCreateUserConfigTypeDecoder =
    JD.succeed AdminCreateUserConfigType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowAdminCreateUserOnly", "allowAdminCreateUserOnly"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UnusedAccountValidityDays", "unusedAccountValidityDays"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InviteMessageTemplate", "inviteMessageTemplate"]
            messageTemplateTypeDecoder
        )
        




adminCreateUserConfigTypeToString : AdminCreateUserConfigType -> String -- List (String, String)
adminCreateUserConfigTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "allowAdminCreateUserOnly" "" -- val.allowAdminCreateUserOnly
        
    --     |> Dict.insert
    --         "unusedAccountValidityDays" "" -- val.unusedAccountValidityDays
        
    --     |> Dict.insert
    --         "inviteMessageTemplate" "" -- val.inviteMessageTemplate
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminCreateUser
-}
type alias AdminCreateUserResponse =
    { user : Maybe UserType
    }



adminCreateUserResponseDecoder : JD.Decoder AdminCreateUserResponse
adminCreateUserResponseDecoder =
    JD.succeed AdminCreateUserResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["User", "user"]
            userTypeDecoder
        )
        




adminCreateUserResponseToString : AdminCreateUserResponse -> String -- List (String, String)
adminCreateUserResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "user" "" -- val.user
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminDeleteUserAttributes
-}
type alias AdminDeleteUserAttributesResponse =
    { 
    }



adminDeleteUserAttributesResponseDecoder : JD.Decoder AdminDeleteUserAttributesResponse
adminDeleteUserAttributesResponseDecoder =
    JD.succeed AdminDeleteUserAttributesResponse
        




adminDeleteUserAttributesResponseToString : AdminDeleteUserAttributesResponse -> String -- List (String, String)
adminDeleteUserAttributesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminDisableProviderForUser
-}
type alias AdminDisableProviderForUserResponse =
    { 
    }



adminDisableProviderForUserResponseDecoder : JD.Decoder AdminDisableProviderForUserResponse
adminDisableProviderForUserResponseDecoder =
    JD.succeed AdminDisableProviderForUserResponse
        




adminDisableProviderForUserResponseToString : AdminDisableProviderForUserResponse -> String -- List (String, String)
adminDisableProviderForUserResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminDisableUser
-}
type alias AdminDisableUserResponse =
    { 
    }



adminDisableUserResponseDecoder : JD.Decoder AdminDisableUserResponse
adminDisableUserResponseDecoder =
    JD.succeed AdminDisableUserResponse
        




adminDisableUserResponseToString : AdminDisableUserResponse -> String -- List (String, String)
adminDisableUserResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminEnableUser
-}
type alias AdminEnableUserResponse =
    { 
    }



adminEnableUserResponseDecoder : JD.Decoder AdminEnableUserResponse
adminEnableUserResponseDecoder =
    JD.succeed AdminEnableUserResponse
        




adminEnableUserResponseToString : AdminEnableUserResponse -> String -- List (String, String)
adminEnableUserResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminGetDevice
-}
type alias AdminGetDeviceResponse =
    { device : DeviceType
    }



adminGetDeviceResponseDecoder : JD.Decoder AdminGetDeviceResponse
adminGetDeviceResponseDecoder =
    JD.succeed AdminGetDeviceResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Device", "device"]
            deviceTypeDecoder
        )
        




adminGetDeviceResponseToString : AdminGetDeviceResponse -> String -- List (String, String)
adminGetDeviceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "device" "" -- val.device
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminGetUser
-}
type alias AdminGetUserResponse =
    { username : String
    , userAttributes : Maybe (List AttributeType)
    , userCreateDate : Maybe Posix
    , userLastModifiedDate : Maybe Posix
    , enabled : Maybe Bool
    , userStatus : Maybe UserStatusType
    , mFAOptions : Maybe (List MFAOptionType)
    , preferredMfaSetting : Maybe String
    , userMFASettingList : Maybe (List String)
    }



adminGetUserResponseDecoder : JD.Decoder AdminGetUserResponse
adminGetUserResponseDecoder =
    JD.succeed AdminGetUserResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Username", "username"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserAttributes", "userAttributes"]
            (JD.list attributeTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserCreateDate", "userCreateDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserLastModifiedDate", "userLastModifiedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserStatus", "userStatus"]
            userStatusTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MFAOptions", "mFAOptions"]
            (JD.list mFAOptionTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreferredMfaSetting", "preferredMfaSetting"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserMFASettingList", "userMFASettingList"]
            (JD.list JD.string)
        )
        




adminGetUserResponseToString : AdminGetUserResponse -> String -- List (String, String)
adminGetUserResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "username" "" -- val.username
        
    --     |> Dict.insert
    --         "userAttributes" "" -- val.userAttributes
        
    --     |> Dict.insert
    --         "userCreateDate" "" -- val.userCreateDate
        
    --     |> Dict.insert
    --         "userLastModifiedDate" "" -- val.userLastModifiedDate
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "userStatus" "" -- val.userStatus
        
    --     |> Dict.insert
    --         "mFAOptions" "" -- val.mFAOptions
        
    --     |> Dict.insert
    --         "preferredMfaSetting" "" -- val.preferredMfaSetting
        
    --     |> Dict.insert
    --         "userMFASettingList" "" -- val.userMFASettingList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminInitiateAuth
-}
type alias AdminInitiateAuthResponse =
    { challengeName : Maybe ChallengeNameType
    , session : Maybe String
    , challengeParameters : Maybe (Dict String String)
    , authenticationResult : Maybe AuthenticationResultType
    }



adminInitiateAuthResponseDecoder : JD.Decoder AdminInitiateAuthResponse
adminInitiateAuthResponseDecoder =
    JD.succeed AdminInitiateAuthResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChallengeName", "challengeName"]
            challengeNameTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Session", "session"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChallengeParameters", "challengeParameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AuthenticationResult", "authenticationResult"]
            authenticationResultTypeDecoder
        )
        




adminInitiateAuthResponseToString : AdminInitiateAuthResponse -> String -- List (String, String)
adminInitiateAuthResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "challengeName" "" -- val.challengeName
        
    --     |> Dict.insert
    --         "session" "" -- val.session
        
    --     |> Dict.insert
    --         "challengeParameters" "" -- val.challengeParameters
        
    --     |> Dict.insert
    --         "authenticationResult" "" -- val.authenticationResult
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminLinkProviderForUser
-}
type alias AdminLinkProviderForUserResponse =
    { 
    }



adminLinkProviderForUserResponseDecoder : JD.Decoder AdminLinkProviderForUserResponse
adminLinkProviderForUserResponseDecoder =
    JD.succeed AdminLinkProviderForUserResponse
        




adminLinkProviderForUserResponseToString : AdminLinkProviderForUserResponse -> String -- List (String, String)
adminLinkProviderForUserResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminListDevices
-}
type alias AdminListDevicesResponse =
    { devices : Maybe (List DeviceType)
    , paginationToken : Maybe String
    }



adminListDevicesResponseDecoder : JD.Decoder AdminListDevicesResponse
adminListDevicesResponseDecoder =
    JD.succeed AdminListDevicesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Devices", "devices"]
            (JD.list deviceTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PaginationToken", "paginationToken"]
            JD.string
        )
        




adminListDevicesResponseToString : AdminListDevicesResponse -> String -- List (String, String)
adminListDevicesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "devices" "" -- val.devices
        
    --     |> Dict.insert
    --         "paginationToken" "" -- val.paginationToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminListGroupsForUser
-}
type alias AdminListGroupsForUserResponse =
    { groups : Maybe (List GroupType)
    , nextToken : Maybe String
    }



adminListGroupsForUserResponseDecoder : JD.Decoder AdminListGroupsForUserResponse
adminListGroupsForUserResponseDecoder =
    JD.succeed AdminListGroupsForUserResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Groups", "groups"]
            (JD.list groupTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




adminListGroupsForUserResponseToString : AdminListGroupsForUserResponse -> String -- List (String, String)
adminListGroupsForUserResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "groups" "" -- val.groups
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminListUserAuthEvents
-}
type alias AdminListUserAuthEventsResponse =
    { authEvents : Maybe (List AuthEventType)
    , nextToken : Maybe String
    }



adminListUserAuthEventsResponseDecoder : JD.Decoder AdminListUserAuthEventsResponse
adminListUserAuthEventsResponseDecoder =
    JD.succeed AdminListUserAuthEventsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AuthEvents", "authEvents"]
            (JD.list authEventTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




adminListUserAuthEventsResponseToString : AdminListUserAuthEventsResponse -> String -- List (String, String)
adminListUserAuthEventsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "authEvents" "" -- val.authEvents
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminResetUserPassword
-}
type alias AdminResetUserPasswordResponse =
    { 
    }



adminResetUserPasswordResponseDecoder : JD.Decoder AdminResetUserPasswordResponse
adminResetUserPasswordResponseDecoder =
    JD.succeed AdminResetUserPasswordResponse
        




adminResetUserPasswordResponseToString : AdminResetUserPasswordResponse -> String -- List (String, String)
adminResetUserPasswordResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminRespondToAuthChallenge
-}
type alias AdminRespondToAuthChallengeResponse =
    { challengeName : Maybe ChallengeNameType
    , session : Maybe String
    , challengeParameters : Maybe (Dict String String)
    , authenticationResult : Maybe AuthenticationResultType
    }



adminRespondToAuthChallengeResponseDecoder : JD.Decoder AdminRespondToAuthChallengeResponse
adminRespondToAuthChallengeResponseDecoder =
    JD.succeed AdminRespondToAuthChallengeResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChallengeName", "challengeName"]
            challengeNameTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Session", "session"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChallengeParameters", "challengeParameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AuthenticationResult", "authenticationResult"]
            authenticationResultTypeDecoder
        )
        




adminRespondToAuthChallengeResponseToString : AdminRespondToAuthChallengeResponse -> String -- List (String, String)
adminRespondToAuthChallengeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "challengeName" "" -- val.challengeName
        
    --     |> Dict.insert
    --         "session" "" -- val.session
        
    --     |> Dict.insert
    --         "challengeParameters" "" -- val.challengeParameters
        
    --     |> Dict.insert
    --         "authenticationResult" "" -- val.authenticationResult
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminSetUserMFAPreference
-}
type alias AdminSetUserMFAPreferenceResponse =
    { 
    }



adminSetUserMFAPreferenceResponseDecoder : JD.Decoder AdminSetUserMFAPreferenceResponse
adminSetUserMFAPreferenceResponseDecoder =
    JD.succeed AdminSetUserMFAPreferenceResponse
        




adminSetUserMFAPreferenceResponseToString : AdminSetUserMFAPreferenceResponse -> String -- List (String, String)
adminSetUserMFAPreferenceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminSetUserPassword
-}
type alias AdminSetUserPasswordResponse =
    { 
    }



adminSetUserPasswordResponseDecoder : JD.Decoder AdminSetUserPasswordResponse
adminSetUserPasswordResponseDecoder =
    JD.succeed AdminSetUserPasswordResponse
        




adminSetUserPasswordResponseToString : AdminSetUserPasswordResponse -> String -- List (String, String)
adminSetUserPasswordResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminSetUserSettings
-}
type alias AdminSetUserSettingsResponse =
    { 
    }



adminSetUserSettingsResponseDecoder : JD.Decoder AdminSetUserSettingsResponse
adminSetUserSettingsResponseDecoder =
    JD.succeed AdminSetUserSettingsResponse
        




adminSetUserSettingsResponseToString : AdminSetUserSettingsResponse -> String -- List (String, String)
adminSetUserSettingsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminUpdateAuthEventFeedback
-}
type alias AdminUpdateAuthEventFeedbackResponse =
    { 
    }



adminUpdateAuthEventFeedbackResponseDecoder : JD.Decoder AdminUpdateAuthEventFeedbackResponse
adminUpdateAuthEventFeedbackResponseDecoder =
    JD.succeed AdminUpdateAuthEventFeedbackResponse
        




adminUpdateAuthEventFeedbackResponseToString : AdminUpdateAuthEventFeedbackResponse -> String -- List (String, String)
adminUpdateAuthEventFeedbackResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminUpdateDeviceStatus
-}
type alias AdminUpdateDeviceStatusResponse =
    { 
    }



adminUpdateDeviceStatusResponseDecoder : JD.Decoder AdminUpdateDeviceStatusResponse
adminUpdateDeviceStatusResponseDecoder =
    JD.succeed AdminUpdateDeviceStatusResponse
        




adminUpdateDeviceStatusResponseToString : AdminUpdateDeviceStatusResponse -> String -- List (String, String)
adminUpdateDeviceStatusResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminUpdateUserAttributes
-}
type alias AdminUpdateUserAttributesResponse =
    { 
    }



adminUpdateUserAttributesResponseDecoder : JD.Decoder AdminUpdateUserAttributesResponse
adminUpdateUserAttributesResponseDecoder =
    JD.succeed AdminUpdateUserAttributesResponse
        




adminUpdateUserAttributesResponseToString : AdminUpdateUserAttributesResponse -> String -- List (String, String)
adminUpdateUserAttributesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from adminUserGlobalSignOut
-}
type alias AdminUserGlobalSignOutResponse =
    { 
    }



adminUserGlobalSignOutResponseDecoder : JD.Decoder AdminUserGlobalSignOutResponse
adminUserGlobalSignOutResponseDecoder =
    JD.succeed AdminUserGlobalSignOutResponse
        




adminUserGlobalSignOutResponseToString : AdminUserGlobalSignOutResponse -> String -- List (String, String)
adminUserGlobalSignOutResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `AdvancedSecurityModeType_OFF`
* `AdvancedSecurityModeType_AUDIT`
* `AdvancedSecurityModeType_ENFORCED`

-}
type AdvancedSecurityModeType
    = AdvancedSecurityModeType_OFF
    | AdvancedSecurityModeType_AUDIT
    | AdvancedSecurityModeType_ENFORCED



advancedSecurityModeTypeDecoder : JD.Decoder AdvancedSecurityModeType
advancedSecurityModeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OFF" ->
                        JD.succeed AdvancedSecurityModeType_OFF

                    "AUDIT" ->
                        JD.succeed AdvancedSecurityModeType_AUDIT

                    "ENFORCED" ->
                        JD.succeed AdvancedSecurityModeType_ENFORCED


                    _ ->
                        JD.fail "bad thing"
            )




advancedSecurityModeTypeToString : AdvancedSecurityModeType -> String
advancedSecurityModeTypeToString val =
    case val of
        AdvancedSecurityModeType_OFF ->
            "OFF"

        AdvancedSecurityModeType_AUDIT ->
            "AUDIT"

        AdvancedSecurityModeType_ENFORCED ->
            "ENFORCED"




{-| One of

* `AliasAttributeType_phone_number`
* `AliasAttributeType_email`
* `AliasAttributeType_preferred_username`

-}
type AliasAttributeType
    = AliasAttributeType_phone_number
    | AliasAttributeType_email
    | AliasAttributeType_preferred_username



aliasAttributeTypeDecoder : JD.Decoder AliasAttributeType
aliasAttributeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "phone_number" ->
                        JD.succeed AliasAttributeType_phone_number

                    "email" ->
                        JD.succeed AliasAttributeType_email

                    "preferred_username" ->
                        JD.succeed AliasAttributeType_preferred_username


                    _ ->
                        JD.fail "bad thing"
            )




aliasAttributeTypeToString : AliasAttributeType -> String
aliasAttributeTypeToString val =
    case val of
        AliasAttributeType_phone_number ->
            "phone_number"

        AliasAttributeType_email ->
            "email"

        AliasAttributeType_preferred_username ->
            "preferred_username"




{-| <p>The Amazon Pinpoint analytics configuration for collecting metrics for a user pool.</p>
-}
type alias AnalyticsConfigurationType =
    { applicationId : String
    , roleArn : String
    , externalId : String
    , userDataShared : Maybe Bool
    }



analyticsConfigurationTypeDecoder : JD.Decoder AnalyticsConfigurationType
analyticsConfigurationTypeDecoder =
    JD.succeed AnalyticsConfigurationType
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ApplicationId", "applicationId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RoleArn", "roleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ExternalId", "externalId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserDataShared", "userDataShared"]
            JD.bool
        )
        




analyticsConfigurationTypeToString : AnalyticsConfigurationType -> String -- List (String, String)
analyticsConfigurationTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "applicationId" "" -- val.applicationId
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "externalId" "" -- val.externalId
        
    --     |> Dict.insert
    --         "userDataShared" "" -- val.userDataShared
        
    --     |> Dict.toList
    ""



{-| <p>An Amazon Pinpoint analytics endpoint.</p> <p>An endpoint uniquely identifies a mobile device, email address, or phone number that can receive messages from Amazon Pinpoint analytics.</p>
-}
type alias AnalyticsMetadataType =
    { analyticsEndpointId : Maybe String
    }



analyticsMetadataTypeDecoder : JD.Decoder AnalyticsMetadataType
analyticsMetadataTypeDecoder =
    JD.succeed AnalyticsMetadataType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AnalyticsEndpointId", "analyticsEndpointId"]
            JD.string
        )
        




analyticsMetadataTypeToString : AnalyticsMetadataType -> String -- List (String, String)
analyticsMetadataTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "analyticsEndpointId" "" -- val.analyticsEndpointId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from associateSoftwareToken
-}
type alias AssociateSoftwareTokenResponse =
    { secretCode : Maybe String
    , session : Maybe String
    }



associateSoftwareTokenResponseDecoder : JD.Decoder AssociateSoftwareTokenResponse
associateSoftwareTokenResponseDecoder =
    JD.succeed AssociateSoftwareTokenResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecretCode", "secretCode"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Session", "session"]
            JD.string
        )
        




associateSoftwareTokenResponseToString : AssociateSoftwareTokenResponse -> String -- List (String, String)
associateSoftwareTokenResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "secretCode" "" -- val.secretCode
        
    --     |> Dict.insert
    --         "session" "" -- val.session
        
    --     |> Dict.toList
    ""



{-| One of

* `AttributeDataType_String`
* `AttributeDataType_Number`
* `AttributeDataType_DateTime`
* `AttributeDataType_Boolean`

-}
type AttributeDataType
    = AttributeDataType_String
    | AttributeDataType_Number
    | AttributeDataType_DateTime
    | AttributeDataType_Boolean



attributeDataTypeDecoder : JD.Decoder AttributeDataType
attributeDataTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "String" ->
                        JD.succeed AttributeDataType_String

                    "Number" ->
                        JD.succeed AttributeDataType_Number

                    "DateTime" ->
                        JD.succeed AttributeDataType_DateTime

                    "Boolean" ->
                        JD.succeed AttributeDataType_Boolean


                    _ ->
                        JD.fail "bad thing"
            )




attributeDataTypeToString : AttributeDataType -> String
attributeDataTypeToString val =
    case val of
        AttributeDataType_String ->
            "String"

        AttributeDataType_Number ->
            "Number"

        AttributeDataType_DateTime ->
            "DateTime"

        AttributeDataType_Boolean ->
            "Boolean"




{-| <p>Specifies whether the attribute is standard or custom.</p>
-}
type alias AttributeType =
    { name : String
    , value : Maybe String
    }



attributeTypeDecoder : JD.Decoder AttributeType
attributeTypeDecoder =
    JD.succeed AttributeType
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




attributeTypeToString : AttributeType -> String -- List (String, String)
attributeTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| <p>The authentication event type.</p>
-}
type alias AuthEventType =
    { eventId : Maybe String
    , eventType : Maybe EventType
    , creationDate : Maybe Posix
    , eventResponse : Maybe EventResponseType
    , eventRisk : Maybe EventRiskType
    , challengeResponses : Maybe (List ChallengeResponseType)
    , eventContextData : Maybe EventContextDataType
    , eventFeedback : Maybe EventFeedbackType
    }



authEventTypeDecoder : JD.Decoder AuthEventType
authEventTypeDecoder =
    JD.succeed AuthEventType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventId", "eventId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventType", "eventType"]
            eventTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventResponse", "eventResponse"]
            eventResponseTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventRisk", "eventRisk"]
            eventRiskTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChallengeResponses", "challengeResponses"]
            (JD.list challengeResponseTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventContextData", "eventContextData"]
            eventContextDataTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventFeedback", "eventFeedback"]
            eventFeedbackTypeDecoder
        )
        




authEventTypeToString : AuthEventType -> String -- List (String, String)
authEventTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventId" "" -- val.eventId
        
    --     |> Dict.insert
    --         "eventType" "" -- val.eventType
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "eventResponse" "" -- val.eventResponse
        
    --     |> Dict.insert
    --         "eventRisk" "" -- val.eventRisk
        
    --     |> Dict.insert
    --         "challengeResponses" "" -- val.challengeResponses
        
    --     |> Dict.insert
    --         "eventContextData" "" -- val.eventContextData
        
    --     |> Dict.insert
    --         "eventFeedback" "" -- val.eventFeedback
        
    --     |> Dict.toList
    ""



{-| One of

* `AuthFlowType_USER_SRP_AUTH`
* `AuthFlowType_REFRESH_TOKEN_AUTH`
* `AuthFlowType_REFRESH_TOKEN`
* `AuthFlowType_CUSTOM_AUTH`
* `AuthFlowType_ADMIN_NO_SRP_AUTH`
* `AuthFlowType_USER_PASSWORD_AUTH`

-}
type AuthFlowType
    = AuthFlowType_USER_SRP_AUTH
    | AuthFlowType_REFRESH_TOKEN_AUTH
    | AuthFlowType_REFRESH_TOKEN
    | AuthFlowType_CUSTOM_AUTH
    | AuthFlowType_ADMIN_NO_SRP_AUTH
    | AuthFlowType_USER_PASSWORD_AUTH



authFlowTypeDecoder : JD.Decoder AuthFlowType
authFlowTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "USER_SRP_AUTH" ->
                        JD.succeed AuthFlowType_USER_SRP_AUTH

                    "REFRESH_TOKEN_AUTH" ->
                        JD.succeed AuthFlowType_REFRESH_TOKEN_AUTH

                    "REFRESH_TOKEN" ->
                        JD.succeed AuthFlowType_REFRESH_TOKEN

                    "CUSTOM_AUTH" ->
                        JD.succeed AuthFlowType_CUSTOM_AUTH

                    "ADMIN_NO_SRP_AUTH" ->
                        JD.succeed AuthFlowType_ADMIN_NO_SRP_AUTH

                    "USER_PASSWORD_AUTH" ->
                        JD.succeed AuthFlowType_USER_PASSWORD_AUTH


                    _ ->
                        JD.fail "bad thing"
            )




authFlowTypeToString : AuthFlowType -> String
authFlowTypeToString val =
    case val of
        AuthFlowType_USER_SRP_AUTH ->
            "USER_SRP_AUTH"

        AuthFlowType_REFRESH_TOKEN_AUTH ->
            "REFRESH_TOKEN_AUTH"

        AuthFlowType_REFRESH_TOKEN ->
            "REFRESH_TOKEN"

        AuthFlowType_CUSTOM_AUTH ->
            "CUSTOM_AUTH"

        AuthFlowType_ADMIN_NO_SRP_AUTH ->
            "ADMIN_NO_SRP_AUTH"

        AuthFlowType_USER_PASSWORD_AUTH ->
            "USER_PASSWORD_AUTH"




{-| <p>The authentication result.</p>
-}
type alias AuthenticationResultType =
    { accessToken : Maybe String
    , expiresIn : Maybe Int
    , tokenType : Maybe String
    , refreshToken : Maybe String
    , idToken : Maybe String
    , newDeviceMetadata : Maybe NewDeviceMetadataType
    }



authenticationResultTypeDecoder : JD.Decoder AuthenticationResultType
authenticationResultTypeDecoder =
    JD.succeed AuthenticationResultType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AccessToken", "accessToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExpiresIn", "expiresIn"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TokenType", "tokenType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RefreshToken", "refreshToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IdToken", "idToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NewDeviceMetadata", "newDeviceMetadata"]
            newDeviceMetadataTypeDecoder
        )
        




authenticationResultTypeToString : AuthenticationResultType -> String -- List (String, String)
authenticationResultTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accessToken" "" -- val.accessToken
        
    --     |> Dict.insert
    --         "expiresIn" "" -- val.expiresIn
        
    --     |> Dict.insert
    --         "tokenType" "" -- val.tokenType
        
    --     |> Dict.insert
    --         "refreshToken" "" -- val.refreshToken
        
    --     |> Dict.insert
    --         "idToken" "" -- val.idToken
        
    --     |> Dict.insert
    --         "newDeviceMetadata" "" -- val.newDeviceMetadata
        
    --     |> Dict.toList
    ""



{-| One of

* `ChallengeName_Password`
* `ChallengeName_Mfa`

-}
type ChallengeName
    = ChallengeName_Password
    | ChallengeName_Mfa



challengeNameDecoder : JD.Decoder ChallengeName
challengeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Password" ->
                        JD.succeed ChallengeName_Password

                    "Mfa" ->
                        JD.succeed ChallengeName_Mfa


                    _ ->
                        JD.fail "bad thing"
            )




challengeNameToString : ChallengeName -> String
challengeNameToString val =
    case val of
        ChallengeName_Password ->
            "Password"

        ChallengeName_Mfa ->
            "Mfa"




{-| One of

* `ChallengeNameType_SMS_MFA`
* `ChallengeNameType_SOFTWARE_TOKEN_MFA`
* `ChallengeNameType_SELECT_MFA_TYPE`
* `ChallengeNameType_MFA_SETUP`
* `ChallengeNameType_PASSWORD_VERIFIER`
* `ChallengeNameType_CUSTOM_CHALLENGE`
* `ChallengeNameType_DEVICE_SRP_AUTH`
* `ChallengeNameType_DEVICE_PASSWORD_VERIFIER`
* `ChallengeNameType_ADMIN_NO_SRP_AUTH`
* `ChallengeNameType_NEW_PASSWORD_REQUIRED`

-}
type ChallengeNameType
    = ChallengeNameType_SMS_MFA
    | ChallengeNameType_SOFTWARE_TOKEN_MFA
    | ChallengeNameType_SELECT_MFA_TYPE
    | ChallengeNameType_MFA_SETUP
    | ChallengeNameType_PASSWORD_VERIFIER
    | ChallengeNameType_CUSTOM_CHALLENGE
    | ChallengeNameType_DEVICE_SRP_AUTH
    | ChallengeNameType_DEVICE_PASSWORD_VERIFIER
    | ChallengeNameType_ADMIN_NO_SRP_AUTH
    | ChallengeNameType_NEW_PASSWORD_REQUIRED



challengeNameTypeDecoder : JD.Decoder ChallengeNameType
challengeNameTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SMS_MFA" ->
                        JD.succeed ChallengeNameType_SMS_MFA

                    "SOFTWARE_TOKEN_MFA" ->
                        JD.succeed ChallengeNameType_SOFTWARE_TOKEN_MFA

                    "SELECT_MFA_TYPE" ->
                        JD.succeed ChallengeNameType_SELECT_MFA_TYPE

                    "MFA_SETUP" ->
                        JD.succeed ChallengeNameType_MFA_SETUP

                    "PASSWORD_VERIFIER" ->
                        JD.succeed ChallengeNameType_PASSWORD_VERIFIER

                    "CUSTOM_CHALLENGE" ->
                        JD.succeed ChallengeNameType_CUSTOM_CHALLENGE

                    "DEVICE_SRP_AUTH" ->
                        JD.succeed ChallengeNameType_DEVICE_SRP_AUTH

                    "DEVICE_PASSWORD_VERIFIER" ->
                        JD.succeed ChallengeNameType_DEVICE_PASSWORD_VERIFIER

                    "ADMIN_NO_SRP_AUTH" ->
                        JD.succeed ChallengeNameType_ADMIN_NO_SRP_AUTH

                    "NEW_PASSWORD_REQUIRED" ->
                        JD.succeed ChallengeNameType_NEW_PASSWORD_REQUIRED


                    _ ->
                        JD.fail "bad thing"
            )




challengeNameTypeToString : ChallengeNameType -> String
challengeNameTypeToString val =
    case val of
        ChallengeNameType_SMS_MFA ->
            "SMS_MFA"

        ChallengeNameType_SOFTWARE_TOKEN_MFA ->
            "SOFTWARE_TOKEN_MFA"

        ChallengeNameType_SELECT_MFA_TYPE ->
            "SELECT_MFA_TYPE"

        ChallengeNameType_MFA_SETUP ->
            "MFA_SETUP"

        ChallengeNameType_PASSWORD_VERIFIER ->
            "PASSWORD_VERIFIER"

        ChallengeNameType_CUSTOM_CHALLENGE ->
            "CUSTOM_CHALLENGE"

        ChallengeNameType_DEVICE_SRP_AUTH ->
            "DEVICE_SRP_AUTH"

        ChallengeNameType_DEVICE_PASSWORD_VERIFIER ->
            "DEVICE_PASSWORD_VERIFIER"

        ChallengeNameType_ADMIN_NO_SRP_AUTH ->
            "ADMIN_NO_SRP_AUTH"

        ChallengeNameType_NEW_PASSWORD_REQUIRED ->
            "NEW_PASSWORD_REQUIRED"




{-| One of

* `ChallengeResponse_Success`
* `ChallengeResponse_Failure`

-}
type ChallengeResponse
    = ChallengeResponse_Success
    | ChallengeResponse_Failure



challengeResponseDecoder : JD.Decoder ChallengeResponse
challengeResponseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Success" ->
                        JD.succeed ChallengeResponse_Success

                    "Failure" ->
                        JD.succeed ChallengeResponse_Failure


                    _ ->
                        JD.fail "bad thing"
            )




challengeResponseToString : ChallengeResponse -> String
challengeResponseToString val =
    case val of
        ChallengeResponse_Success ->
            "Success"

        ChallengeResponse_Failure ->
            "Failure"




{-| <p>The challenge response type.</p>
-}
type alias ChallengeResponseType =
    { challengeName : Maybe ChallengeName
    , challengeResponse : Maybe ChallengeResponse
    }



challengeResponseTypeDecoder : JD.Decoder ChallengeResponseType
challengeResponseTypeDecoder =
    JD.succeed ChallengeResponseType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChallengeName", "challengeName"]
            challengeNameDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChallengeResponse", "challengeResponse"]
            challengeResponseDecoder
        )
        




challengeResponseTypeToString : ChallengeResponseType -> String -- List (String, String)
challengeResponseTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "challengeName" "" -- val.challengeName
        
    --     |> Dict.insert
    --         "challengeResponse" "" -- val.challengeResponse
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from changePassword
-}
type alias ChangePasswordResponse =
    { 
    }



changePasswordResponseDecoder : JD.Decoder ChangePasswordResponse
changePasswordResponseDecoder =
    JD.succeed ChangePasswordResponse
        




changePasswordResponseToString : ChangePasswordResponse -> String -- List (String, String)
changePasswordResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>The code delivery details being returned from the server.</p>
-}
type alias CodeDeliveryDetailsType =
    { destination : Maybe String
    , deliveryMedium : Maybe DeliveryMediumType
    , attributeName : Maybe String
    }



codeDeliveryDetailsTypeDecoder : JD.Decoder CodeDeliveryDetailsType
codeDeliveryDetailsTypeDecoder =
    JD.succeed CodeDeliveryDetailsType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Destination", "destination"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeliveryMedium", "deliveryMedium"]
            deliveryMediumTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeName", "attributeName"]
            JD.string
        )
        




codeDeliveryDetailsTypeToString : CodeDeliveryDetailsType -> String -- List (String, String)
codeDeliveryDetailsTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "destination" "" -- val.destination
        
    --     |> Dict.insert
    --         "deliveryMedium" "" -- val.deliveryMedium
        
    --     |> Dict.insert
    --         "attributeName" "" -- val.attributeName
        
    --     |> Dict.toList
    ""



{-| <p>The compromised credentials actions type</p>
-}
type alias CompromisedCredentialsActionsType =
    { eventAction : CompromisedCredentialsEventActionType
    }



compromisedCredentialsActionsTypeDecoder : JD.Decoder CompromisedCredentialsActionsType
compromisedCredentialsActionsTypeDecoder =
    JD.succeed CompromisedCredentialsActionsType
        
        |> JDP.custom (AWS.Core.Decode.required
            ["EventAction", "eventAction"]
            compromisedCredentialsEventActionTypeDecoder
        )
        




compromisedCredentialsActionsTypeToString : CompromisedCredentialsActionsType -> String -- List (String, String)
compromisedCredentialsActionsTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventAction" "" -- val.eventAction
        
    --     |> Dict.toList
    ""



{-| One of

* `CompromisedCredentialsEventActionType_BLOCK`
* `CompromisedCredentialsEventActionType_NO_ACTION`

-}
type CompromisedCredentialsEventActionType
    = CompromisedCredentialsEventActionType_BLOCK
    | CompromisedCredentialsEventActionType_NO_ACTION



compromisedCredentialsEventActionTypeDecoder : JD.Decoder CompromisedCredentialsEventActionType
compromisedCredentialsEventActionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BLOCK" ->
                        JD.succeed CompromisedCredentialsEventActionType_BLOCK

                    "NO_ACTION" ->
                        JD.succeed CompromisedCredentialsEventActionType_NO_ACTION


                    _ ->
                        JD.fail "bad thing"
            )




compromisedCredentialsEventActionTypeToString : CompromisedCredentialsEventActionType -> String
compromisedCredentialsEventActionTypeToString val =
    case val of
        CompromisedCredentialsEventActionType_BLOCK ->
            "BLOCK"

        CompromisedCredentialsEventActionType_NO_ACTION ->
            "NO_ACTION"




{-| <p>The compromised credentials risk configuration type.</p>
-}
type alias CompromisedCredentialsRiskConfigurationType =
    { eventFilter : Maybe (List EventFilterType)
    , actions : CompromisedCredentialsActionsType
    }



compromisedCredentialsRiskConfigurationTypeDecoder : JD.Decoder CompromisedCredentialsRiskConfigurationType
compromisedCredentialsRiskConfigurationTypeDecoder =
    JD.succeed CompromisedCredentialsRiskConfigurationType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventFilter", "eventFilter"]
            (JD.list eventFilterTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Actions", "actions"]
            compromisedCredentialsActionsTypeDecoder
        )
        




compromisedCredentialsRiskConfigurationTypeToString : CompromisedCredentialsRiskConfigurationType -> String -- List (String, String)
compromisedCredentialsRiskConfigurationTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventFilter" "" -- val.eventFilter
        
    --     |> Dict.insert
    --         "actions" "" -- val.actions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from confirmDevice
-}
type alias ConfirmDeviceResponse =
    { userConfirmationNecessary : Maybe Bool
    }



confirmDeviceResponseDecoder : JD.Decoder ConfirmDeviceResponse
confirmDeviceResponseDecoder =
    JD.succeed ConfirmDeviceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserConfirmationNecessary", "userConfirmationNecessary"]
            JD.bool
        )
        




confirmDeviceResponseToString : ConfirmDeviceResponse -> String -- List (String, String)
confirmDeviceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userConfirmationNecessary" "" -- val.userConfirmationNecessary
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from confirmForgotPassword
-}
type alias ConfirmForgotPasswordResponse =
    { 
    }



confirmForgotPasswordResponseDecoder : JD.Decoder ConfirmForgotPasswordResponse
confirmForgotPasswordResponseDecoder =
    JD.succeed ConfirmForgotPasswordResponse
        




confirmForgotPasswordResponseToString : ConfirmForgotPasswordResponse -> String -- List (String, String)
confirmForgotPasswordResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from confirmSignUp
-}
type alias ConfirmSignUpResponse =
    { 
    }



confirmSignUpResponseDecoder : JD.Decoder ConfirmSignUpResponse
confirmSignUpResponseDecoder =
    JD.succeed ConfirmSignUpResponse
        




confirmSignUpResponseToString : ConfirmSignUpResponse -> String -- List (String, String)
confirmSignUpResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Contextual user data type used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-}
type alias ContextDataType =
    { ipAddress : String
    , serverName : String
    , serverPath : String
    , httpHeaders : (List HttpHeader)
    , encodedData : Maybe String
    }



contextDataTypeDecoder : JD.Decoder ContextDataType
contextDataTypeDecoder =
    JD.succeed ContextDataType
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IpAddress", "ipAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ServerName", "serverName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ServerPath", "serverPath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["HttpHeaders", "httpHeaders"]
            (JD.list httpHeaderDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncodedData", "encodedData"]
            JD.string
        )
        




contextDataTypeToString : ContextDataType -> String -- List (String, String)
contextDataTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "serverName" "" -- val.serverName
        
    --     |> Dict.insert
    --         "serverPath" "" -- val.serverPath
        
    --     |> Dict.insert
    --         "httpHeaders" "" -- val.httpHeaders
        
    --     |> Dict.insert
    --         "encodedData" "" -- val.encodedData
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createGroup
-}
type alias CreateGroupResponse =
    { group : Maybe GroupType
    }



createGroupResponseDecoder : JD.Decoder CreateGroupResponse
createGroupResponseDecoder =
    JD.succeed CreateGroupResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Group", "group"]
            groupTypeDecoder
        )
        




createGroupResponseToString : CreateGroupResponse -> String -- List (String, String)
createGroupResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "group" "" -- val.group
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createIdentityProvider
-}
type alias CreateIdentityProviderResponse =
    { identityProvider : IdentityProviderType
    }



createIdentityProviderResponseDecoder : JD.Decoder CreateIdentityProviderResponse
createIdentityProviderResponseDecoder =
    JD.succeed CreateIdentityProviderResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IdentityProvider", "identityProvider"]
            identityProviderTypeDecoder
        )
        




createIdentityProviderResponseToString : CreateIdentityProviderResponse -> String -- List (String, String)
createIdentityProviderResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "identityProvider" "" -- val.identityProvider
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createResourceServer
-}
type alias CreateResourceServerResponse =
    { resourceServer : ResourceServerType
    }



createResourceServerResponseDecoder : JD.Decoder CreateResourceServerResponse
createResourceServerResponseDecoder =
    JD.succeed CreateResourceServerResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceServer", "resourceServer"]
            resourceServerTypeDecoder
        )
        




createResourceServerResponseToString : CreateResourceServerResponse -> String -- List (String, String)
createResourceServerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceServer" "" -- val.resourceServer
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createUserImportJob
-}
type alias CreateUserImportJobResponse =
    { userImportJob : Maybe UserImportJobType
    }



createUserImportJobResponseDecoder : JD.Decoder CreateUserImportJobResponse
createUserImportJobResponseDecoder =
    JD.succeed CreateUserImportJobResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserImportJob", "userImportJob"]
            userImportJobTypeDecoder
        )
        




createUserImportJobResponseToString : CreateUserImportJobResponse -> String -- List (String, String)
createUserImportJobResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userImportJob" "" -- val.userImportJob
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createUserPoolClient
-}
type alias CreateUserPoolClientResponse =
    { userPoolClient : Maybe UserPoolClientType
    }



createUserPoolClientResponseDecoder : JD.Decoder CreateUserPoolClientResponse
createUserPoolClientResponseDecoder =
    JD.succeed CreateUserPoolClientResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolClient", "userPoolClient"]
            userPoolClientTypeDecoder
        )
        




createUserPoolClientResponseToString : CreateUserPoolClientResponse -> String -- List (String, String)
createUserPoolClientResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPoolClient" "" -- val.userPoolClient
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createUserPoolDomain
-}
type alias CreateUserPoolDomainResponse =
    { cloudFrontDomain : Maybe String
    }



createUserPoolDomainResponseDecoder : JD.Decoder CreateUserPoolDomainResponse
createUserPoolDomainResponseDecoder =
    JD.succeed CreateUserPoolDomainResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudFrontDomain", "cloudFrontDomain"]
            JD.string
        )
        




createUserPoolDomainResponseToString : CreateUserPoolDomainResponse -> String -- List (String, String)
createUserPoolDomainResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cloudFrontDomain" "" -- val.cloudFrontDomain
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createUserPool
-}
type alias CreateUserPoolResponse =
    { userPool : Maybe UserPoolType
    }



createUserPoolResponseDecoder : JD.Decoder CreateUserPoolResponse
createUserPoolResponseDecoder =
    JD.succeed CreateUserPoolResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPool", "userPool"]
            userPoolTypeDecoder
        )
        




createUserPoolResponseToString : CreateUserPoolResponse -> String -- List (String, String)
createUserPoolResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPool" "" -- val.userPool
        
    --     |> Dict.toList
    ""



{-| <p>The configuration for a custom domain that hosts the sign-up and sign-in webpages for your application.</p>
-}
type alias CustomDomainConfigType =
    { certificateArn : String
    }



customDomainConfigTypeDecoder : JD.Decoder CustomDomainConfigType
customDomainConfigTypeDecoder =
    JD.succeed CustomDomainConfigType
        
        |> JDP.custom (AWS.Core.Decode.required
            ["CertificateArn", "certificateArn"]
            JD.string
        )
        




customDomainConfigTypeToString : CustomDomainConfigType -> String -- List (String, String)
customDomainConfigTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificateArn" "" -- val.certificateArn
        
    --     |> Dict.toList
    ""



{-| One of

* `DefaultEmailOptionType_CONFIRM_WITH_LINK`
* `DefaultEmailOptionType_CONFIRM_WITH_CODE`

-}
type DefaultEmailOptionType
    = DefaultEmailOptionType_CONFIRM_WITH_LINK
    | DefaultEmailOptionType_CONFIRM_WITH_CODE



defaultEmailOptionTypeDecoder : JD.Decoder DefaultEmailOptionType
defaultEmailOptionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CONFIRM_WITH_LINK" ->
                        JD.succeed DefaultEmailOptionType_CONFIRM_WITH_LINK

                    "CONFIRM_WITH_CODE" ->
                        JD.succeed DefaultEmailOptionType_CONFIRM_WITH_CODE


                    _ ->
                        JD.fail "bad thing"
            )




defaultEmailOptionTypeToString : DefaultEmailOptionType -> String
defaultEmailOptionTypeToString val =
    case val of
        DefaultEmailOptionType_CONFIRM_WITH_LINK ->
            "CONFIRM_WITH_LINK"

        DefaultEmailOptionType_CONFIRM_WITH_CODE ->
            "CONFIRM_WITH_CODE"




{-| Type of HTTP response from deleteUserAttributes
-}
type alias DeleteUserAttributesResponse =
    { 
    }



deleteUserAttributesResponseDecoder : JD.Decoder DeleteUserAttributesResponse
deleteUserAttributesResponseDecoder =
    JD.succeed DeleteUserAttributesResponse
        




deleteUserAttributesResponseToString : DeleteUserAttributesResponse -> String -- List (String, String)
deleteUserAttributesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteUserPoolDomain
-}
type alias DeleteUserPoolDomainResponse =
    { 
    }



deleteUserPoolDomainResponseDecoder : JD.Decoder DeleteUserPoolDomainResponse
deleteUserPoolDomainResponseDecoder =
    JD.succeed DeleteUserPoolDomainResponse
        




deleteUserPoolDomainResponseToString : DeleteUserPoolDomainResponse -> String -- List (String, String)
deleteUserPoolDomainResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `DeliveryMediumType_SMS`
* `DeliveryMediumType_EMAIL`

-}
type DeliveryMediumType
    = DeliveryMediumType_SMS
    | DeliveryMediumType_EMAIL



deliveryMediumTypeDecoder : JD.Decoder DeliveryMediumType
deliveryMediumTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SMS" ->
                        JD.succeed DeliveryMediumType_SMS

                    "EMAIL" ->
                        JD.succeed DeliveryMediumType_EMAIL


                    _ ->
                        JD.fail "bad thing"
            )




deliveryMediumTypeToString : DeliveryMediumType -> String
deliveryMediumTypeToString val =
    case val of
        DeliveryMediumType_SMS ->
            "SMS"

        DeliveryMediumType_EMAIL ->
            "EMAIL"




{-| Type of HTTP response from describeIdentityProvider
-}
type alias DescribeIdentityProviderResponse =
    { identityProvider : IdentityProviderType
    }



describeIdentityProviderResponseDecoder : JD.Decoder DescribeIdentityProviderResponse
describeIdentityProviderResponseDecoder =
    JD.succeed DescribeIdentityProviderResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IdentityProvider", "identityProvider"]
            identityProviderTypeDecoder
        )
        




describeIdentityProviderResponseToString : DescribeIdentityProviderResponse -> String -- List (String, String)
describeIdentityProviderResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "identityProvider" "" -- val.identityProvider
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeResourceServer
-}
type alias DescribeResourceServerResponse =
    { resourceServer : ResourceServerType
    }



describeResourceServerResponseDecoder : JD.Decoder DescribeResourceServerResponse
describeResourceServerResponseDecoder =
    JD.succeed DescribeResourceServerResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceServer", "resourceServer"]
            resourceServerTypeDecoder
        )
        




describeResourceServerResponseToString : DescribeResourceServerResponse -> String -- List (String, String)
describeResourceServerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceServer" "" -- val.resourceServer
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeRiskConfiguration
-}
type alias DescribeRiskConfigurationResponse =
    { riskConfiguration : RiskConfigurationType
    }



describeRiskConfigurationResponseDecoder : JD.Decoder DescribeRiskConfigurationResponse
describeRiskConfigurationResponseDecoder =
    JD.succeed DescribeRiskConfigurationResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RiskConfiguration", "riskConfiguration"]
            riskConfigurationTypeDecoder
        )
        




describeRiskConfigurationResponseToString : DescribeRiskConfigurationResponse -> String -- List (String, String)
describeRiskConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "riskConfiguration" "" -- val.riskConfiguration
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeUserImportJob
-}
type alias DescribeUserImportJobResponse =
    { userImportJob : Maybe UserImportJobType
    }



describeUserImportJobResponseDecoder : JD.Decoder DescribeUserImportJobResponse
describeUserImportJobResponseDecoder =
    JD.succeed DescribeUserImportJobResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserImportJob", "userImportJob"]
            userImportJobTypeDecoder
        )
        




describeUserImportJobResponseToString : DescribeUserImportJobResponse -> String -- List (String, String)
describeUserImportJobResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userImportJob" "" -- val.userImportJob
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeUserPoolClient
-}
type alias DescribeUserPoolClientResponse =
    { userPoolClient : Maybe UserPoolClientType
    }



describeUserPoolClientResponseDecoder : JD.Decoder DescribeUserPoolClientResponse
describeUserPoolClientResponseDecoder =
    JD.succeed DescribeUserPoolClientResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolClient", "userPoolClient"]
            userPoolClientTypeDecoder
        )
        




describeUserPoolClientResponseToString : DescribeUserPoolClientResponse -> String -- List (String, String)
describeUserPoolClientResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPoolClient" "" -- val.userPoolClient
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeUserPoolDomain
-}
type alias DescribeUserPoolDomainResponse =
    { domainDescription : Maybe DomainDescriptionType
    }



describeUserPoolDomainResponseDecoder : JD.Decoder DescribeUserPoolDomainResponse
describeUserPoolDomainResponseDecoder =
    JD.succeed DescribeUserPoolDomainResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DomainDescription", "domainDescription"]
            domainDescriptionTypeDecoder
        )
        




describeUserPoolDomainResponseToString : DescribeUserPoolDomainResponse -> String -- List (String, String)
describeUserPoolDomainResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "domainDescription" "" -- val.domainDescription
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeUserPool
-}
type alias DescribeUserPoolResponse =
    { userPool : Maybe UserPoolType
    }



describeUserPoolResponseDecoder : JD.Decoder DescribeUserPoolResponse
describeUserPoolResponseDecoder =
    JD.succeed DescribeUserPoolResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPool", "userPool"]
            userPoolTypeDecoder
        )
        




describeUserPoolResponseToString : DescribeUserPoolResponse -> String -- List (String, String)
describeUserPoolResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPool" "" -- val.userPool
        
    --     |> Dict.toList
    ""



{-| <p>The configuration for the user pool's device tracking.</p>
-}
type alias DeviceConfigurationType =
    { challengeRequiredOnNewDevice : Maybe Bool
    , deviceOnlyRememberedOnUserPrompt : Maybe Bool
    }



deviceConfigurationTypeDecoder : JD.Decoder DeviceConfigurationType
deviceConfigurationTypeDecoder =
    JD.succeed DeviceConfigurationType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChallengeRequiredOnNewDevice", "challengeRequiredOnNewDevice"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeviceOnlyRememberedOnUserPrompt", "deviceOnlyRememberedOnUserPrompt"]
            JD.bool
        )
        




deviceConfigurationTypeToString : DeviceConfigurationType -> String -- List (String, String)
deviceConfigurationTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "challengeRequiredOnNewDevice" "" -- val.challengeRequiredOnNewDevice
        
    --     |> Dict.insert
    --         "deviceOnlyRememberedOnUserPrompt" "" -- val.deviceOnlyRememberedOnUserPrompt
        
    --     |> Dict.toList
    ""



{-| One of

* `DeviceRememberedStatusType_remembered`
* `DeviceRememberedStatusType_not_remembered`

-}
type DeviceRememberedStatusType
    = DeviceRememberedStatusType_remembered
    | DeviceRememberedStatusType_not_remembered



deviceRememberedStatusTypeDecoder : JD.Decoder DeviceRememberedStatusType
deviceRememberedStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "remembered" ->
                        JD.succeed DeviceRememberedStatusType_remembered

                    "not_remembered" ->
                        JD.succeed DeviceRememberedStatusType_not_remembered


                    _ ->
                        JD.fail "bad thing"
            )




deviceRememberedStatusTypeToString : DeviceRememberedStatusType -> String
deviceRememberedStatusTypeToString val =
    case val of
        DeviceRememberedStatusType_remembered ->
            "remembered"

        DeviceRememberedStatusType_not_remembered ->
            "not_remembered"




{-| <p>The device verifier against which it will be authenticated.</p>
-}
type alias DeviceSecretVerifierConfigType =
    { passwordVerifier : Maybe String
    , salt : Maybe String
    }



deviceSecretVerifierConfigTypeDecoder : JD.Decoder DeviceSecretVerifierConfigType
deviceSecretVerifierConfigTypeDecoder =
    JD.succeed DeviceSecretVerifierConfigType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PasswordVerifier", "passwordVerifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Salt", "salt"]
            JD.string
        )
        




deviceSecretVerifierConfigTypeToString : DeviceSecretVerifierConfigType -> String -- List (String, String)
deviceSecretVerifierConfigTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "passwordVerifier" "" -- val.passwordVerifier
        
    --     |> Dict.insert
    --         "salt" "" -- val.salt
        
    --     |> Dict.toList
    ""



{-| <p>The device type.</p>
-}
type alias DeviceType =
    { deviceKey : Maybe String
    , deviceAttributes : Maybe (List AttributeType)
    , deviceCreateDate : Maybe Posix
    , deviceLastModifiedDate : Maybe Posix
    , deviceLastAuthenticatedDate : Maybe Posix
    }



deviceTypeDecoder : JD.Decoder DeviceType
deviceTypeDecoder =
    JD.succeed DeviceType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeviceKey", "deviceKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeviceAttributes", "deviceAttributes"]
            (JD.list attributeTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeviceCreateDate", "deviceCreateDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeviceLastModifiedDate", "deviceLastModifiedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeviceLastAuthenticatedDate", "deviceLastAuthenticatedDate"]
            JDX.datetime
        )
        




deviceTypeToString : DeviceType -> String -- List (String, String)
deviceTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deviceKey" "" -- val.deviceKey
        
    --     |> Dict.insert
    --         "deviceAttributes" "" -- val.deviceAttributes
        
    --     |> Dict.insert
    --         "deviceCreateDate" "" -- val.deviceCreateDate
        
    --     |> Dict.insert
    --         "deviceLastModifiedDate" "" -- val.deviceLastModifiedDate
        
    --     |> Dict.insert
    --         "deviceLastAuthenticatedDate" "" -- val.deviceLastAuthenticatedDate
        
    --     |> Dict.toList
    ""



{-| <p>A container for information about a domain.</p>
-}
type alias DomainDescriptionType =
    { userPoolId : Maybe String
    , aWSAccountId : Maybe String
    , domain : Maybe String
    , s3Bucket : Maybe String
    , cloudFrontDistribution : Maybe String
    , version : Maybe String
    , status : Maybe DomainStatusType
    , customDomainConfig : Maybe CustomDomainConfigType
    }



domainDescriptionTypeDecoder : JD.Decoder DomainDescriptionType
domainDescriptionTypeDecoder =
    JD.succeed DomainDescriptionType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolId", "userPoolId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AWSAccountId", "aWSAccountId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Domain", "domain"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S3Bucket", "s3Bucket"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudFrontDistribution", "cloudFrontDistribution"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            domainStatusTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomDomainConfig", "customDomainConfig"]
            customDomainConfigTypeDecoder
        )
        




domainDescriptionTypeToString : DomainDescriptionType -> String -- List (String, String)
domainDescriptionTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPoolId" "" -- val.userPoolId
        
    --     |> Dict.insert
    --         "aWSAccountId" "" -- val.aWSAccountId
        
    --     |> Dict.insert
    --         "domain" "" -- val.domain
        
    --     |> Dict.insert
    --         "s3Bucket" "" -- val.s3Bucket
        
    --     |> Dict.insert
    --         "cloudFrontDistribution" "" -- val.cloudFrontDistribution
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "customDomainConfig" "" -- val.customDomainConfig
        
    --     |> Dict.toList
    ""



{-| One of

* `DomainStatusType_CREATING`
* `DomainStatusType_DELETING`
* `DomainStatusType_UPDATING`
* `DomainStatusType_ACTIVE`
* `DomainStatusType_FAILED`

-}
type DomainStatusType
    = DomainStatusType_CREATING
    | DomainStatusType_DELETING
    | DomainStatusType_UPDATING
    | DomainStatusType_ACTIVE
    | DomainStatusType_FAILED



domainStatusTypeDecoder : JD.Decoder DomainStatusType
domainStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATING" ->
                        JD.succeed DomainStatusType_CREATING

                    "DELETING" ->
                        JD.succeed DomainStatusType_DELETING

                    "UPDATING" ->
                        JD.succeed DomainStatusType_UPDATING

                    "ACTIVE" ->
                        JD.succeed DomainStatusType_ACTIVE

                    "FAILED" ->
                        JD.succeed DomainStatusType_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




domainStatusTypeToString : DomainStatusType -> String
domainStatusTypeToString val =
    case val of
        DomainStatusType_CREATING ->
            "CREATING"

        DomainStatusType_DELETING ->
            "DELETING"

        DomainStatusType_UPDATING ->
            "UPDATING"

        DomainStatusType_ACTIVE ->
            "ACTIVE"

        DomainStatusType_FAILED ->
            "FAILED"




{-| <p>The email configuration type.</p>
-}
type alias EmailConfigurationType =
    { sourceArn : Maybe String
    , replyToEmailAddress : Maybe String
    , emailSendingAccount : Maybe EmailSendingAccountType
    }



emailConfigurationTypeDecoder : JD.Decoder EmailConfigurationType
emailConfigurationTypeDecoder =
    JD.succeed EmailConfigurationType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SourceArn", "sourceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReplyToEmailAddress", "replyToEmailAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EmailSendingAccount", "emailSendingAccount"]
            emailSendingAccountTypeDecoder
        )
        




emailConfigurationTypeToString : EmailConfigurationType -> String -- List (String, String)
emailConfigurationTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceArn" "" -- val.sourceArn
        
    --     |> Dict.insert
    --         "replyToEmailAddress" "" -- val.replyToEmailAddress
        
    --     |> Dict.insert
    --         "emailSendingAccount" "" -- val.emailSendingAccount
        
    --     |> Dict.toList
    ""



{-| One of

* `EmailSendingAccountType_COGNITO_DEFAULT`
* `EmailSendingAccountType_DEVELOPER`

-}
type EmailSendingAccountType
    = EmailSendingAccountType_COGNITO_DEFAULT
    | EmailSendingAccountType_DEVELOPER



emailSendingAccountTypeDecoder : JD.Decoder EmailSendingAccountType
emailSendingAccountTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "COGNITO_DEFAULT" ->
                        JD.succeed EmailSendingAccountType_COGNITO_DEFAULT

                    "DEVELOPER" ->
                        JD.succeed EmailSendingAccountType_DEVELOPER


                    _ ->
                        JD.fail "bad thing"
            )




emailSendingAccountTypeToString : EmailSendingAccountType -> String
emailSendingAccountTypeToString val =
    case val of
        EmailSendingAccountType_COGNITO_DEFAULT ->
            "COGNITO_DEFAULT"

        EmailSendingAccountType_DEVELOPER ->
            "DEVELOPER"




{-| <p>Specifies the user context data captured at the time of an event request.</p>
-}
type alias EventContextDataType =
    { ipAddress : Maybe String
    , deviceName : Maybe String
    , timezone : Maybe String
    , city : Maybe String
    , country : Maybe String
    }



eventContextDataTypeDecoder : JD.Decoder EventContextDataType
eventContextDataTypeDecoder =
    JD.succeed EventContextDataType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IpAddress", "ipAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeviceName", "deviceName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timezone", "timezone"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["City", "city"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Country", "country"]
            JD.string
        )
        




eventContextDataTypeToString : EventContextDataType -> String -- List (String, String)
eventContextDataTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "deviceName" "" -- val.deviceName
        
    --     |> Dict.insert
    --         "timezone" "" -- val.timezone
        
    --     |> Dict.insert
    --         "city" "" -- val.city
        
    --     |> Dict.insert
    --         "country" "" -- val.country
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the event feedback type.</p>
-}
type alias EventFeedbackType =
    { feedbackValue : FeedbackValueType
    , provider : String
    , feedbackDate : Maybe Posix
    }



eventFeedbackTypeDecoder : JD.Decoder EventFeedbackType
eventFeedbackTypeDecoder =
    JD.succeed EventFeedbackType
        
        |> JDP.custom (AWS.Core.Decode.required
            ["FeedbackValue", "feedbackValue"]
            feedbackValueTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Provider", "provider"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FeedbackDate", "feedbackDate"]
            JDX.datetime
        )
        




eventFeedbackTypeToString : EventFeedbackType -> String -- List (String, String)
eventFeedbackTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "feedbackValue" "" -- val.feedbackValue
        
    --     |> Dict.insert
    --         "provider" "" -- val.provider
        
    --     |> Dict.insert
    --         "feedbackDate" "" -- val.feedbackDate
        
    --     |> Dict.toList
    ""



{-| One of

* `EventFilterType_SIGN_IN`
* `EventFilterType_PASSWORD_CHANGE`
* `EventFilterType_SIGN_UP`

-}
type EventFilterType
    = EventFilterType_SIGN_IN
    | EventFilterType_PASSWORD_CHANGE
    | EventFilterType_SIGN_UP



eventFilterTypeDecoder : JD.Decoder EventFilterType
eventFilterTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SIGN_IN" ->
                        JD.succeed EventFilterType_SIGN_IN

                    "PASSWORD_CHANGE" ->
                        JD.succeed EventFilterType_PASSWORD_CHANGE

                    "SIGN_UP" ->
                        JD.succeed EventFilterType_SIGN_UP


                    _ ->
                        JD.fail "bad thing"
            )




eventFilterTypeToString : EventFilterType -> String
eventFilterTypeToString val =
    case val of
        EventFilterType_SIGN_IN ->
            "SIGN_IN"

        EventFilterType_PASSWORD_CHANGE ->
            "PASSWORD_CHANGE"

        EventFilterType_SIGN_UP ->
            "SIGN_UP"




{-| One of

* `EventResponseType_Success`
* `EventResponseType_Failure`

-}
type EventResponseType
    = EventResponseType_Success
    | EventResponseType_Failure



eventResponseTypeDecoder : JD.Decoder EventResponseType
eventResponseTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Success" ->
                        JD.succeed EventResponseType_Success

                    "Failure" ->
                        JD.succeed EventResponseType_Failure


                    _ ->
                        JD.fail "bad thing"
            )




eventResponseTypeToString : EventResponseType -> String
eventResponseTypeToString val =
    case val of
        EventResponseType_Success ->
            "Success"

        EventResponseType_Failure ->
            "Failure"




{-| <p>The event risk type.</p>
-}
type alias EventRiskType =
    { riskDecision : Maybe RiskDecisionType
    , riskLevel : Maybe RiskLevelType
    }



eventRiskTypeDecoder : JD.Decoder EventRiskType
eventRiskTypeDecoder =
    JD.succeed EventRiskType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RiskDecision", "riskDecision"]
            riskDecisionTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RiskLevel", "riskLevel"]
            riskLevelTypeDecoder
        )
        




eventRiskTypeToString : EventRiskType -> String -- List (String, String)
eventRiskTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "riskDecision" "" -- val.riskDecision
        
    --     |> Dict.insert
    --         "riskLevel" "" -- val.riskLevel
        
    --     |> Dict.toList
    ""



{-| One of

* `EventType_SignIn`
* `EventType_SignUp`
* `EventType_ForgotPassword`

-}
type EventType
    = EventType_SignIn
    | EventType_SignUp
    | EventType_ForgotPassword



eventTypeDecoder : JD.Decoder EventType
eventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SignIn" ->
                        JD.succeed EventType_SignIn

                    "SignUp" ->
                        JD.succeed EventType_SignUp

                    "ForgotPassword" ->
                        JD.succeed EventType_ForgotPassword


                    _ ->
                        JD.fail "bad thing"
            )




eventTypeToString : EventType -> String
eventTypeToString val =
    case val of
        EventType_SignIn ->
            "SignIn"

        EventType_SignUp ->
            "SignUp"

        EventType_ForgotPassword ->
            "ForgotPassword"




{-| One of

* `ExplicitAuthFlowsType_ADMIN_NO_SRP_AUTH`
* `ExplicitAuthFlowsType_CUSTOM_AUTH_FLOW_ONLY`
* `ExplicitAuthFlowsType_USER_PASSWORD_AUTH`

-}
type ExplicitAuthFlowsType
    = ExplicitAuthFlowsType_ADMIN_NO_SRP_AUTH
    | ExplicitAuthFlowsType_CUSTOM_AUTH_FLOW_ONLY
    | ExplicitAuthFlowsType_USER_PASSWORD_AUTH



explicitAuthFlowsTypeDecoder : JD.Decoder ExplicitAuthFlowsType
explicitAuthFlowsTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ADMIN_NO_SRP_AUTH" ->
                        JD.succeed ExplicitAuthFlowsType_ADMIN_NO_SRP_AUTH

                    "CUSTOM_AUTH_FLOW_ONLY" ->
                        JD.succeed ExplicitAuthFlowsType_CUSTOM_AUTH_FLOW_ONLY

                    "USER_PASSWORD_AUTH" ->
                        JD.succeed ExplicitAuthFlowsType_USER_PASSWORD_AUTH


                    _ ->
                        JD.fail "bad thing"
            )




explicitAuthFlowsTypeToString : ExplicitAuthFlowsType -> String
explicitAuthFlowsTypeToString val =
    case val of
        ExplicitAuthFlowsType_ADMIN_NO_SRP_AUTH ->
            "ADMIN_NO_SRP_AUTH"

        ExplicitAuthFlowsType_CUSTOM_AUTH_FLOW_ONLY ->
            "CUSTOM_AUTH_FLOW_ONLY"

        ExplicitAuthFlowsType_USER_PASSWORD_AUTH ->
            "USER_PASSWORD_AUTH"




{-| One of

* `FeedbackValueType_Valid`
* `FeedbackValueType_Invalid`

-}
type FeedbackValueType
    = FeedbackValueType_Valid
    | FeedbackValueType_Invalid



feedbackValueTypeDecoder : JD.Decoder FeedbackValueType
feedbackValueTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Valid" ->
                        JD.succeed FeedbackValueType_Valid

                    "Invalid" ->
                        JD.succeed FeedbackValueType_Invalid


                    _ ->
                        JD.fail "bad thing"
            )




feedbackValueTypeToString : FeedbackValueType -> String
feedbackValueTypeToString val =
    case val of
        FeedbackValueType_Valid ->
            "Valid"

        FeedbackValueType_Invalid ->
            "Invalid"




{-| Type of HTTP response from forgotPassword
-}
type alias ForgotPasswordResponse =
    { codeDeliveryDetails : Maybe CodeDeliveryDetailsType
    }



forgotPasswordResponseDecoder : JD.Decoder ForgotPasswordResponse
forgotPasswordResponseDecoder =
    JD.succeed ForgotPasswordResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CodeDeliveryDetails", "codeDeliveryDetails"]
            codeDeliveryDetailsTypeDecoder
        )
        




forgotPasswordResponseToString : ForgotPasswordResponse -> String -- List (String, String)
forgotPasswordResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "codeDeliveryDetails" "" -- val.codeDeliveryDetails
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getCSVHeader
-}
type alias GetCSVHeaderResponse =
    { userPoolId : Maybe String
    , cSVHeader : Maybe (List String)
    }



getCSVHeaderResponseDecoder : JD.Decoder GetCSVHeaderResponse
getCSVHeaderResponseDecoder =
    JD.succeed GetCSVHeaderResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolId", "userPoolId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CSVHeader", "cSVHeader"]
            (JD.list JD.string)
        )
        




getCSVHeaderResponseToString : GetCSVHeaderResponse -> String -- List (String, String)
getCSVHeaderResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPoolId" "" -- val.userPoolId
        
    --     |> Dict.insert
    --         "cSVHeader" "" -- val.cSVHeader
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDevice
-}
type alias GetDeviceResponse =
    { device : DeviceType
    }



getDeviceResponseDecoder : JD.Decoder GetDeviceResponse
getDeviceResponseDecoder =
    JD.succeed GetDeviceResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Device", "device"]
            deviceTypeDecoder
        )
        




getDeviceResponseToString : GetDeviceResponse -> String -- List (String, String)
getDeviceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "device" "" -- val.device
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getGroup
-}
type alias GetGroupResponse =
    { group : Maybe GroupType
    }



getGroupResponseDecoder : JD.Decoder GetGroupResponse
getGroupResponseDecoder =
    JD.succeed GetGroupResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Group", "group"]
            groupTypeDecoder
        )
        




getGroupResponseToString : GetGroupResponse -> String -- List (String, String)
getGroupResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "group" "" -- val.group
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getIdentityProviderByIdentifier
-}
type alias GetIdentityProviderByIdentifierResponse =
    { identityProvider : IdentityProviderType
    }



getIdentityProviderByIdentifierResponseDecoder : JD.Decoder GetIdentityProviderByIdentifierResponse
getIdentityProviderByIdentifierResponseDecoder =
    JD.succeed GetIdentityProviderByIdentifierResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IdentityProvider", "identityProvider"]
            identityProviderTypeDecoder
        )
        




getIdentityProviderByIdentifierResponseToString : GetIdentityProviderByIdentifierResponse -> String -- List (String, String)
getIdentityProviderByIdentifierResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "identityProvider" "" -- val.identityProvider
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getSigningCertificate
-}
type alias GetSigningCertificateResponse =
    { certificate : Maybe String
    }



getSigningCertificateResponseDecoder : JD.Decoder GetSigningCertificateResponse
getSigningCertificateResponseDecoder =
    JD.succeed GetSigningCertificateResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Certificate", "certificate"]
            JD.string
        )
        




getSigningCertificateResponseToString : GetSigningCertificateResponse -> String -- List (String, String)
getSigningCertificateResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "certificate" "" -- val.certificate
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getUICustomization
-}
type alias GetUICustomizationResponse =
    { uICustomization : UICustomizationType
    }



getUICustomizationResponseDecoder : JD.Decoder GetUICustomizationResponse
getUICustomizationResponseDecoder =
    JD.succeed GetUICustomizationResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UICustomization", "uICustomization"]
            uICustomizationTypeDecoder
        )
        




getUICustomizationResponseToString : GetUICustomizationResponse -> String -- List (String, String)
getUICustomizationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "uICustomization" "" -- val.uICustomization
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getUserAttributeVerificationCode
-}
type alias GetUserAttributeVerificationCodeResponse =
    { codeDeliveryDetails : Maybe CodeDeliveryDetailsType
    }



getUserAttributeVerificationCodeResponseDecoder : JD.Decoder GetUserAttributeVerificationCodeResponse
getUserAttributeVerificationCodeResponseDecoder =
    JD.succeed GetUserAttributeVerificationCodeResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CodeDeliveryDetails", "codeDeliveryDetails"]
            codeDeliveryDetailsTypeDecoder
        )
        




getUserAttributeVerificationCodeResponseToString : GetUserAttributeVerificationCodeResponse -> String -- List (String, String)
getUserAttributeVerificationCodeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "codeDeliveryDetails" "" -- val.codeDeliveryDetails
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getUserPoolMfaConfig
-}
type alias GetUserPoolMfaConfigResponse =
    { smsMfaConfiguration : Maybe SmsMfaConfigType
    , softwareTokenMfaConfiguration : Maybe SoftwareTokenMfaConfigType
    , mfaConfiguration : Maybe UserPoolMfaType
    }



getUserPoolMfaConfigResponseDecoder : JD.Decoder GetUserPoolMfaConfigResponse
getUserPoolMfaConfigResponseDecoder =
    JD.succeed GetUserPoolMfaConfigResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SmsMfaConfiguration", "smsMfaConfiguration"]
            smsMfaConfigTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SoftwareTokenMfaConfiguration", "softwareTokenMfaConfiguration"]
            softwareTokenMfaConfigTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MfaConfiguration", "mfaConfiguration"]
            userPoolMfaTypeDecoder
        )
        




getUserPoolMfaConfigResponseToString : GetUserPoolMfaConfigResponse -> String -- List (String, String)
getUserPoolMfaConfigResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "smsMfaConfiguration" "" -- val.smsMfaConfiguration
        
    --     |> Dict.insert
    --         "softwareTokenMfaConfiguration" "" -- val.softwareTokenMfaConfiguration
        
    --     |> Dict.insert
    --         "mfaConfiguration" "" -- val.mfaConfiguration
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getUser
-}
type alias GetUserResponse =
    { username : String
    , userAttributes : (List AttributeType)
    , mFAOptions : Maybe (List MFAOptionType)
    , preferredMfaSetting : Maybe String
    , userMFASettingList : Maybe (List String)
    }



getUserResponseDecoder : JD.Decoder GetUserResponse
getUserResponseDecoder =
    JD.succeed GetUserResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Username", "username"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UserAttributes", "userAttributes"]
            (JD.list attributeTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MFAOptions", "mFAOptions"]
            (JD.list mFAOptionTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreferredMfaSetting", "preferredMfaSetting"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserMFASettingList", "userMFASettingList"]
            (JD.list JD.string)
        )
        




getUserResponseToString : GetUserResponse -> String -- List (String, String)
getUserResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "username" "" -- val.username
        
    --     |> Dict.insert
    --         "userAttributes" "" -- val.userAttributes
        
    --     |> Dict.insert
    --         "mFAOptions" "" -- val.mFAOptions
        
    --     |> Dict.insert
    --         "preferredMfaSetting" "" -- val.preferredMfaSetting
        
    --     |> Dict.insert
    --         "userMFASettingList" "" -- val.userMFASettingList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from globalSignOut
-}
type alias GlobalSignOutResponse =
    { 
    }



globalSignOutResponseDecoder : JD.Decoder GlobalSignOutResponse
globalSignOutResponseDecoder =
    JD.succeed GlobalSignOutResponse
        




globalSignOutResponseToString : GlobalSignOutResponse -> String -- List (String, String)
globalSignOutResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>The group type.</p>
-}
type alias GroupType =
    { groupName : Maybe String
    , userPoolId : Maybe String
    , description : Maybe String
    , roleArn : Maybe String
    , precedence : Maybe Int
    , lastModifiedDate : Maybe Posix
    , creationDate : Maybe Posix
    }



groupTypeDecoder : JD.Decoder GroupType
groupTypeDecoder =
    JD.succeed GroupType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GroupName", "groupName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolId", "userPoolId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleArn", "roleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Precedence", "precedence"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedDate", "lastModifiedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        




groupTypeToString : GroupType -> String -- List (String, String)
groupTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "groupName" "" -- val.groupName
        
    --     |> Dict.insert
    --         "userPoolId" "" -- val.userPoolId
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "precedence" "" -- val.precedence
        
    --     |> Dict.insert
    --         "lastModifiedDate" "" -- val.lastModifiedDate
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.toList
    ""



{-| <p>The HTTP header.</p>
-}
type alias HttpHeader =
    { headerName : Maybe String
    , headerValue : Maybe String
    }



httpHeaderDecoder : JD.Decoder HttpHeader
httpHeaderDecoder =
    JD.succeed HttpHeader
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["headerName", "HeaderName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["headerValue", "HeaderValue"]
            JD.string
        )
        




httpHeaderToString : HttpHeader -> String -- List (String, String)
httpHeaderToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "headerName" "" -- val.headerName
        
    --     |> Dict.insert
    --         "headerValue" "" -- val.headerValue
        
    --     |> Dict.toList
    ""



{-| <p>A container for information about an identity provider.</p>
-}
type alias IdentityProviderType =
    { userPoolId : Maybe String
    , providerName : Maybe String
    , providerType : Maybe IdentityProviderTypeType
    , providerDetails : Maybe (Dict String String)
    , attributeMapping : Maybe (Dict String String)
    , idpIdentifiers : Maybe (List String)
    , lastModifiedDate : Maybe Posix
    , creationDate : Maybe Posix
    }



identityProviderTypeDecoder : JD.Decoder IdentityProviderType
identityProviderTypeDecoder =
    JD.succeed IdentityProviderType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolId", "userPoolId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProviderName", "providerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProviderType", "providerType"]
            identityProviderTypeTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProviderDetails", "providerDetails"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeMapping", "attributeMapping"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IdpIdentifiers", "idpIdentifiers"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedDate", "lastModifiedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        




identityProviderTypeToString : IdentityProviderType -> String -- List (String, String)
identityProviderTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPoolId" "" -- val.userPoolId
        
    --     |> Dict.insert
    --         "providerName" "" -- val.providerName
        
    --     |> Dict.insert
    --         "providerType" "" -- val.providerType
        
    --     |> Dict.insert
    --         "providerDetails" "" -- val.providerDetails
        
    --     |> Dict.insert
    --         "attributeMapping" "" -- val.attributeMapping
        
    --     |> Dict.insert
    --         "idpIdentifiers" "" -- val.idpIdentifiers
        
    --     |> Dict.insert
    --         "lastModifiedDate" "" -- val.lastModifiedDate
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.toList
    ""



{-| One of

* `IdentityProviderTypeType_SAML`
* `IdentityProviderTypeType_Facebook`
* `IdentityProviderTypeType_Google`
* `IdentityProviderTypeType_LoginWithAmazon`
* `IdentityProviderTypeType_OIDC`

-}
type IdentityProviderTypeType
    = IdentityProviderTypeType_SAML
    | IdentityProviderTypeType_Facebook
    | IdentityProviderTypeType_Google
    | IdentityProviderTypeType_LoginWithAmazon
    | IdentityProviderTypeType_OIDC



identityProviderTypeTypeDecoder : JD.Decoder IdentityProviderTypeType
identityProviderTypeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SAML" ->
                        JD.succeed IdentityProviderTypeType_SAML

                    "Facebook" ->
                        JD.succeed IdentityProviderTypeType_Facebook

                    "Google" ->
                        JD.succeed IdentityProviderTypeType_Google

                    "LoginWithAmazon" ->
                        JD.succeed IdentityProviderTypeType_LoginWithAmazon

                    "OIDC" ->
                        JD.succeed IdentityProviderTypeType_OIDC


                    _ ->
                        JD.fail "bad thing"
            )




identityProviderTypeTypeToString : IdentityProviderTypeType -> String
identityProviderTypeTypeToString val =
    case val of
        IdentityProviderTypeType_SAML ->
            "SAML"

        IdentityProviderTypeType_Facebook ->
            "Facebook"

        IdentityProviderTypeType_Google ->
            "Google"

        IdentityProviderTypeType_LoginWithAmazon ->
            "LoginWithAmazon"

        IdentityProviderTypeType_OIDC ->
            "OIDC"




{-| Type of HTTP response from initiateAuth
-}
type alias InitiateAuthResponse =
    { challengeName : Maybe ChallengeNameType
    , session : Maybe String
    , challengeParameters : Maybe (Dict String String)
    , authenticationResult : Maybe AuthenticationResultType
    }



initiateAuthResponseDecoder : JD.Decoder InitiateAuthResponse
initiateAuthResponseDecoder =
    JD.succeed InitiateAuthResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChallengeName", "challengeName"]
            challengeNameTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Session", "session"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChallengeParameters", "challengeParameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AuthenticationResult", "authenticationResult"]
            authenticationResultTypeDecoder
        )
        




initiateAuthResponseToString : InitiateAuthResponse -> String -- List (String, String)
initiateAuthResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "challengeName" "" -- val.challengeName
        
    --     |> Dict.insert
    --         "session" "" -- val.session
        
    --     |> Dict.insert
    --         "challengeParameters" "" -- val.challengeParameters
        
    --     |> Dict.insert
    --         "authenticationResult" "" -- val.authenticationResult
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the configuration for AWS Lambda triggers.</p>
-}
type alias LambdaConfigType =
    { preSignUp : Maybe String
    , customMessage : Maybe String
    , postConfirmation : Maybe String
    , preAuthentication : Maybe String
    , postAuthentication : Maybe String
    , defineAuthChallenge : Maybe String
    , createAuthChallenge : Maybe String
    , verifyAuthChallengeResponse : Maybe String
    , preTokenGeneration : Maybe String
    , userMigration : Maybe String
    }



lambdaConfigTypeDecoder : JD.Decoder LambdaConfigType
lambdaConfigTypeDecoder =
    JD.succeed LambdaConfigType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreSignUp", "preSignUp"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomMessage", "customMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PostConfirmation", "postConfirmation"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreAuthentication", "preAuthentication"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PostAuthentication", "postAuthentication"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefineAuthChallenge", "defineAuthChallenge"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreateAuthChallenge", "createAuthChallenge"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VerifyAuthChallengeResponse", "verifyAuthChallengeResponse"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreTokenGeneration", "preTokenGeneration"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserMigration", "userMigration"]
            JD.string
        )
        




lambdaConfigTypeToString : LambdaConfigType -> String -- List (String, String)
lambdaConfigTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "preSignUp" "" -- val.preSignUp
        
    --     |> Dict.insert
    --         "customMessage" "" -- val.customMessage
        
    --     |> Dict.insert
    --         "postConfirmation" "" -- val.postConfirmation
        
    --     |> Dict.insert
    --         "preAuthentication" "" -- val.preAuthentication
        
    --     |> Dict.insert
    --         "postAuthentication" "" -- val.postAuthentication
        
    --     |> Dict.insert
    --         "defineAuthChallenge" "" -- val.defineAuthChallenge
        
    --     |> Dict.insert
    --         "createAuthChallenge" "" -- val.createAuthChallenge
        
    --     |> Dict.insert
    --         "verifyAuthChallengeResponse" "" -- val.verifyAuthChallengeResponse
        
    --     |> Dict.insert
    --         "preTokenGeneration" "" -- val.preTokenGeneration
        
    --     |> Dict.insert
    --         "userMigration" "" -- val.userMigration
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listDevices
-}
type alias ListDevicesResponse =
    { devices : Maybe (List DeviceType)
    , paginationToken : Maybe String
    }



listDevicesResponseDecoder : JD.Decoder ListDevicesResponse
listDevicesResponseDecoder =
    JD.succeed ListDevicesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Devices", "devices"]
            (JD.list deviceTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PaginationToken", "paginationToken"]
            JD.string
        )
        




listDevicesResponseToString : ListDevicesResponse -> String -- List (String, String)
listDevicesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "devices" "" -- val.devices
        
    --     |> Dict.insert
    --         "paginationToken" "" -- val.paginationToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listGroups
-}
type alias ListGroupsResponse =
    { groups : Maybe (List GroupType)
    , nextToken : Maybe String
    }



listGroupsResponseDecoder : JD.Decoder ListGroupsResponse
listGroupsResponseDecoder =
    JD.succeed ListGroupsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Groups", "groups"]
            (JD.list groupTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listGroupsResponseToString : ListGroupsResponse -> String -- List (String, String)
listGroupsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "groups" "" -- val.groups
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listIdentityProviders
-}
type alias ListIdentityProvidersResponse =
    { providers : (List ProviderDescription)
    , nextToken : Maybe String
    }



listIdentityProvidersResponseDecoder : JD.Decoder ListIdentityProvidersResponse
listIdentityProvidersResponseDecoder =
    JD.succeed ListIdentityProvidersResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Providers", "providers"]
            (JD.list providerDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listIdentityProvidersResponseToString : ListIdentityProvidersResponse -> String -- List (String, String)
listIdentityProvidersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "providers" "" -- val.providers
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listResourceServers
-}
type alias ListResourceServersResponse =
    { resourceServers : (List ResourceServerType)
    , nextToken : Maybe String
    }



listResourceServersResponseDecoder : JD.Decoder ListResourceServersResponse
listResourceServersResponseDecoder =
    JD.succeed ListResourceServersResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceServers", "resourceServers"]
            (JD.list resourceServerTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listResourceServersResponseToString : ListResourceServersResponse -> String -- List (String, String)
listResourceServersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceServers" "" -- val.resourceServers
        
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
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (AWS.Core.Decode.dict JD.string)
        )
        




listTagsForResourceResponseToString : ListTagsForResourceResponse -> String -- List (String, String)
listTagsForResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listUserImportJobs
-}
type alias ListUserImportJobsResponse =
    { userImportJobs : Maybe (List UserImportJobType)
    , paginationToken : Maybe String
    }



listUserImportJobsResponseDecoder : JD.Decoder ListUserImportJobsResponse
listUserImportJobsResponseDecoder =
    JD.succeed ListUserImportJobsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserImportJobs", "userImportJobs"]
            (JD.list userImportJobTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PaginationToken", "paginationToken"]
            JD.string
        )
        




listUserImportJobsResponseToString : ListUserImportJobsResponse -> String -- List (String, String)
listUserImportJobsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userImportJobs" "" -- val.userImportJobs
        
    --     |> Dict.insert
    --         "paginationToken" "" -- val.paginationToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listUserPoolClients
-}
type alias ListUserPoolClientsResponse =
    { userPoolClients : Maybe (List UserPoolClientDescription)
    , nextToken : Maybe String
    }



listUserPoolClientsResponseDecoder : JD.Decoder ListUserPoolClientsResponse
listUserPoolClientsResponseDecoder =
    JD.succeed ListUserPoolClientsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolClients", "userPoolClients"]
            (JD.list userPoolClientDescriptionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listUserPoolClientsResponseToString : ListUserPoolClientsResponse -> String -- List (String, String)
listUserPoolClientsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPoolClients" "" -- val.userPoolClients
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listUserPools
-}
type alias ListUserPoolsResponse =
    { userPools : Maybe (List UserPoolDescriptionType)
    , nextToken : Maybe String
    }



listUserPoolsResponseDecoder : JD.Decoder ListUserPoolsResponse
listUserPoolsResponseDecoder =
    JD.succeed ListUserPoolsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPools", "userPools"]
            (JD.list userPoolDescriptionTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listUserPoolsResponseToString : ListUserPoolsResponse -> String -- List (String, String)
listUserPoolsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPools" "" -- val.userPools
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listUsersInGroup
-}
type alias ListUsersInGroupResponse =
    { users : Maybe (List UserType)
    , nextToken : Maybe String
    }



listUsersInGroupResponseDecoder : JD.Decoder ListUsersInGroupResponse
listUsersInGroupResponseDecoder =
    JD.succeed ListUsersInGroupResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Users", "users"]
            (JD.list userTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listUsersInGroupResponseToString : ListUsersInGroupResponse -> String -- List (String, String)
listUsersInGroupResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "users" "" -- val.users
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listUsers
-}
type alias ListUsersResponse =
    { users : Maybe (List UserType)
    , paginationToken : Maybe String
    }



listUsersResponseDecoder : JD.Decoder ListUsersResponse
listUsersResponseDecoder =
    JD.succeed ListUsersResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Users", "users"]
            (JD.list userTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PaginationToken", "paginationToken"]
            JD.string
        )
        




listUsersResponseToString : ListUsersResponse -> String -- List (String, String)
listUsersResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "users" "" -- val.users
        
    --     |> Dict.insert
    --         "paginationToken" "" -- val.paginationToken
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the different settings for multi-factor authentication (MFA).</p>
-}
type alias MFAOptionType =
    { deliveryMedium : Maybe DeliveryMediumType
    , attributeName : Maybe String
    }



mFAOptionTypeDecoder : JD.Decoder MFAOptionType
mFAOptionTypeDecoder =
    JD.succeed MFAOptionType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeliveryMedium", "deliveryMedium"]
            deliveryMediumTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeName", "attributeName"]
            JD.string
        )
        




mFAOptionTypeToString : MFAOptionType -> String -- List (String, String)
mFAOptionTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deliveryMedium" "" -- val.deliveryMedium
        
    --     |> Dict.insert
    --         "attributeName" "" -- val.attributeName
        
    --     |> Dict.toList
    ""



{-| One of

* `MessageActionType_RESEND`
* `MessageActionType_SUPPRESS`

-}
type MessageActionType
    = MessageActionType_RESEND
    | MessageActionType_SUPPRESS



messageActionTypeDecoder : JD.Decoder MessageActionType
messageActionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RESEND" ->
                        JD.succeed MessageActionType_RESEND

                    "SUPPRESS" ->
                        JD.succeed MessageActionType_SUPPRESS


                    _ ->
                        JD.fail "bad thing"
            )




messageActionTypeToString : MessageActionType -> String
messageActionTypeToString val =
    case val of
        MessageActionType_RESEND ->
            "RESEND"

        MessageActionType_SUPPRESS ->
            "SUPPRESS"




{-| <p>The message template structure.</p>
-}
type alias MessageTemplateType =
    { sMSMessage : Maybe String
    , emailMessage : Maybe String
    , emailSubject : Maybe String
    }



messageTemplateTypeDecoder : JD.Decoder MessageTemplateType
messageTemplateTypeDecoder =
    JD.succeed MessageTemplateType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SMSMessage", "sMSMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EmailMessage", "emailMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EmailSubject", "emailSubject"]
            JD.string
        )
        




messageTemplateTypeToString : MessageTemplateType -> String -- List (String, String)
messageTemplateTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sMSMessage" "" -- val.sMSMessage
        
    --     |> Dict.insert
    --         "emailMessage" "" -- val.emailMessage
        
    --     |> Dict.insert
    --         "emailSubject" "" -- val.emailSubject
        
    --     |> Dict.toList
    ""



{-| <p>The new device metadata type.</p>
-}
type alias NewDeviceMetadataType =
    { deviceKey : Maybe String
    , deviceGroupKey : Maybe String
    }



newDeviceMetadataTypeDecoder : JD.Decoder NewDeviceMetadataType
newDeviceMetadataTypeDecoder =
    JD.succeed NewDeviceMetadataType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeviceKey", "deviceKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeviceGroupKey", "deviceGroupKey"]
            JD.string
        )
        




newDeviceMetadataTypeToString : NewDeviceMetadataType -> String -- List (String, String)
newDeviceMetadataTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deviceKey" "" -- val.deviceKey
        
    --     |> Dict.insert
    --         "deviceGroupKey" "" -- val.deviceGroupKey
        
    --     |> Dict.toList
    ""



{-| <p>The notify configuration type.</p>
-}
type alias NotifyConfigurationType =
    { from : Maybe String
    , replyTo : Maybe String
    , sourceArn : String
    , blockEmail : Maybe NotifyEmailType
    , noActionEmail : Maybe NotifyEmailType
    , mfaEmail : Maybe NotifyEmailType
    }



notifyConfigurationTypeDecoder : JD.Decoder NotifyConfigurationType
notifyConfigurationTypeDecoder =
    JD.succeed NotifyConfigurationType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["From", "from"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReplyTo", "replyTo"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SourceArn", "sourceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BlockEmail", "blockEmail"]
            notifyEmailTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NoActionEmail", "noActionEmail"]
            notifyEmailTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MfaEmail", "mfaEmail"]
            notifyEmailTypeDecoder
        )
        




notifyConfigurationTypeToString : NotifyConfigurationType -> String -- List (String, String)
notifyConfigurationTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "from" "" -- val.from
        
    --     |> Dict.insert
    --         "replyTo" "" -- val.replyTo
        
    --     |> Dict.insert
    --         "sourceArn" "" -- val.sourceArn
        
    --     |> Dict.insert
    --         "blockEmail" "" -- val.blockEmail
        
    --     |> Dict.insert
    --         "noActionEmail" "" -- val.noActionEmail
        
    --     |> Dict.insert
    --         "mfaEmail" "" -- val.mfaEmail
        
    --     |> Dict.toList
    ""



{-| <p>The notify email type.</p>
-}
type alias NotifyEmailType =
    { subject : String
    , htmlBody : Maybe String
    , textBody : Maybe String
    }



notifyEmailTypeDecoder : JD.Decoder NotifyEmailType
notifyEmailTypeDecoder =
    JD.succeed NotifyEmailType
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Subject", "subject"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HtmlBody", "htmlBody"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TextBody", "textBody"]
            JD.string
        )
        




notifyEmailTypeToString : NotifyEmailType -> String -- List (String, String)
notifyEmailTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "subject" "" -- val.subject
        
    --     |> Dict.insert
    --         "htmlBody" "" -- val.htmlBody
        
    --     |> Dict.insert
    --         "textBody" "" -- val.textBody
        
    --     |> Dict.toList
    ""



{-| <p>The minimum and maximum value of an attribute that is of the number data type.</p>
-}
type alias NumberAttributeConstraintsType =
    { minValue : Maybe String
    , maxValue : Maybe String
    }



numberAttributeConstraintsTypeDecoder : JD.Decoder NumberAttributeConstraintsType
numberAttributeConstraintsTypeDecoder =
    JD.succeed NumberAttributeConstraintsType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinValue", "minValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxValue", "maxValue"]
            JD.string
        )
        




numberAttributeConstraintsTypeToString : NumberAttributeConstraintsType -> String -- List (String, String)
numberAttributeConstraintsTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "minValue" "" -- val.minValue
        
    --     |> Dict.insert
    --         "maxValue" "" -- val.maxValue
        
    --     |> Dict.toList
    ""



{-| One of

* `OAuthFlowType_code`
* `OAuthFlowType_implicit`
* `OAuthFlowType_client_credentials`

-}
type OAuthFlowType
    = OAuthFlowType_code
    | OAuthFlowType_implicit
    | OAuthFlowType_client_credentials



oAuthFlowTypeDecoder : JD.Decoder OAuthFlowType
oAuthFlowTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "code" ->
                        JD.succeed OAuthFlowType_code

                    "implicit" ->
                        JD.succeed OAuthFlowType_implicit

                    "client_credentials" ->
                        JD.succeed OAuthFlowType_client_credentials


                    _ ->
                        JD.fail "bad thing"
            )




oAuthFlowTypeToString : OAuthFlowType -> String
oAuthFlowTypeToString val =
    case val of
        OAuthFlowType_code ->
            "code"

        OAuthFlowType_implicit ->
            "implicit"

        OAuthFlowType_client_credentials ->
            "client_credentials"




{-| <p>The password policy type.</p>
-}
type alias PasswordPolicyType =
    { minimumLength : Maybe Int
    , requireUppercase : Maybe Bool
    , requireLowercase : Maybe Bool
    , requireNumbers : Maybe Bool
    , requireSymbols : Maybe Bool
    , temporaryPasswordValidityDays : Maybe Int
    }



passwordPolicyTypeDecoder : JD.Decoder PasswordPolicyType
passwordPolicyTypeDecoder =
    JD.succeed PasswordPolicyType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinimumLength", "minimumLength"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequireUppercase", "requireUppercase"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequireLowercase", "requireLowercase"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequireNumbers", "requireNumbers"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequireSymbols", "requireSymbols"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TemporaryPasswordValidityDays", "temporaryPasswordValidityDays"]
            JD.int
        )
        




passwordPolicyTypeToString : PasswordPolicyType -> String -- List (String, String)
passwordPolicyTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "minimumLength" "" -- val.minimumLength
        
    --     |> Dict.insert
    --         "requireUppercase" "" -- val.requireUppercase
        
    --     |> Dict.insert
    --         "requireLowercase" "" -- val.requireLowercase
        
    --     |> Dict.insert
    --         "requireNumbers" "" -- val.requireNumbers
        
    --     |> Dict.insert
    --         "requireSymbols" "" -- val.requireSymbols
        
    --     |> Dict.insert
    --         "temporaryPasswordValidityDays" "" -- val.temporaryPasswordValidityDays
        
    --     |> Dict.toList
    ""



{-| <p>A container for identity provider details.</p>
-}
type alias ProviderDescription =
    { providerName : Maybe String
    , providerType : Maybe IdentityProviderTypeType
    , lastModifiedDate : Maybe Posix
    , creationDate : Maybe Posix
    }



providerDescriptionDecoder : JD.Decoder ProviderDescription
providerDescriptionDecoder =
    JD.succeed ProviderDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProviderName", "providerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProviderType", "providerType"]
            identityProviderTypeTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedDate", "lastModifiedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        




providerDescriptionToString : ProviderDescription -> String -- List (String, String)
providerDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "providerName" "" -- val.providerName
        
    --     |> Dict.insert
    --         "providerType" "" -- val.providerType
        
    --     |> Dict.insert
    --         "lastModifiedDate" "" -- val.lastModifiedDate
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.toList
    ""



{-| <p>A container for information about an identity provider for a user pool.</p>
-}
type alias ProviderUserIdentifierType =
    { providerName : Maybe String
    , providerAttributeName : Maybe String
    , providerAttributeValue : Maybe String
    }



providerUserIdentifierTypeDecoder : JD.Decoder ProviderUserIdentifierType
providerUserIdentifierTypeDecoder =
    JD.succeed ProviderUserIdentifierType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProviderName", "providerName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProviderAttributeName", "providerAttributeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProviderAttributeValue", "providerAttributeValue"]
            JD.string
        )
        




providerUserIdentifierTypeToString : ProviderUserIdentifierType -> String -- List (String, String)
providerUserIdentifierTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "providerName" "" -- val.providerName
        
    --     |> Dict.insert
    --         "providerAttributeName" "" -- val.providerAttributeName
        
    --     |> Dict.insert
    --         "providerAttributeValue" "" -- val.providerAttributeValue
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from resendConfirmationCode
-}
type alias ResendConfirmationCodeResponse =
    { codeDeliveryDetails : Maybe CodeDeliveryDetailsType
    }



resendConfirmationCodeResponseDecoder : JD.Decoder ResendConfirmationCodeResponse
resendConfirmationCodeResponseDecoder =
    JD.succeed ResendConfirmationCodeResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CodeDeliveryDetails", "codeDeliveryDetails"]
            codeDeliveryDetailsTypeDecoder
        )
        




resendConfirmationCodeResponseToString : ResendConfirmationCodeResponse -> String -- List (String, String)
resendConfirmationCodeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "codeDeliveryDetails" "" -- val.codeDeliveryDetails
        
    --     |> Dict.toList
    ""



{-| <p>A resource server scope.</p>
-}
type alias ResourceServerScopeType =
    { scopeName : String
    , scopeDescription : String
    }



resourceServerScopeTypeDecoder : JD.Decoder ResourceServerScopeType
resourceServerScopeTypeDecoder =
    JD.succeed ResourceServerScopeType
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ScopeName", "scopeName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ScopeDescription", "scopeDescription"]
            JD.string
        )
        




resourceServerScopeTypeToString : ResourceServerScopeType -> String -- List (String, String)
resourceServerScopeTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "scopeName" "" -- val.scopeName
        
    --     |> Dict.insert
    --         "scopeDescription" "" -- val.scopeDescription
        
    --     |> Dict.toList
    ""



{-| <p>A container for information about a resource server for a user pool.</p>
-}
type alias ResourceServerType =
    { userPoolId : Maybe String
    , identifier : Maybe String
    , name : Maybe String
    , scopes : Maybe (List ResourceServerScopeType)
    }



resourceServerTypeDecoder : JD.Decoder ResourceServerType
resourceServerTypeDecoder =
    JD.succeed ResourceServerType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolId", "userPoolId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Identifier", "identifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Scopes", "scopes"]
            (JD.list resourceServerScopeTypeDecoder)
        )
        




resourceServerTypeToString : ResourceServerType -> String -- List (String, String)
resourceServerTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPoolId" "" -- val.userPoolId
        
    --     |> Dict.insert
    --         "identifier" "" -- val.identifier
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "scopes" "" -- val.scopes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from respondToAuthChallenge
-}
type alias RespondToAuthChallengeResponse =
    { challengeName : Maybe ChallengeNameType
    , session : Maybe String
    , challengeParameters : Maybe (Dict String String)
    , authenticationResult : Maybe AuthenticationResultType
    }



respondToAuthChallengeResponseDecoder : JD.Decoder RespondToAuthChallengeResponse
respondToAuthChallengeResponseDecoder =
    JD.succeed RespondToAuthChallengeResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChallengeName", "challengeName"]
            challengeNameTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Session", "session"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChallengeParameters", "challengeParameters"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AuthenticationResult", "authenticationResult"]
            authenticationResultTypeDecoder
        )
        




respondToAuthChallengeResponseToString : RespondToAuthChallengeResponse -> String -- List (String, String)
respondToAuthChallengeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "challengeName" "" -- val.challengeName
        
    --     |> Dict.insert
    --         "session" "" -- val.session
        
    --     |> Dict.insert
    --         "challengeParameters" "" -- val.challengeParameters
        
    --     |> Dict.insert
    --         "authenticationResult" "" -- val.authenticationResult
        
    --     |> Dict.toList
    ""



{-| <p>The risk configuration type.</p>
-}
type alias RiskConfigurationType =
    { userPoolId : Maybe String
    , clientId : Maybe String
    , compromisedCredentialsRiskConfiguration : Maybe CompromisedCredentialsRiskConfigurationType
    , accountTakeoverRiskConfiguration : Maybe AccountTakeoverRiskConfigurationType
    , riskExceptionConfiguration : Maybe RiskExceptionConfigurationType
    , lastModifiedDate : Maybe Posix
    }



riskConfigurationTypeDecoder : JD.Decoder RiskConfigurationType
riskConfigurationTypeDecoder =
    JD.succeed RiskConfigurationType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolId", "userPoolId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientId", "clientId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompromisedCredentialsRiskConfiguration", "compromisedCredentialsRiskConfiguration"]
            compromisedCredentialsRiskConfigurationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AccountTakeoverRiskConfiguration", "accountTakeoverRiskConfiguration"]
            accountTakeoverRiskConfigurationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RiskExceptionConfiguration", "riskExceptionConfiguration"]
            riskExceptionConfigurationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedDate", "lastModifiedDate"]
            JDX.datetime
        )
        




riskConfigurationTypeToString : RiskConfigurationType -> String -- List (String, String)
riskConfigurationTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPoolId" "" -- val.userPoolId
        
    --     |> Dict.insert
    --         "clientId" "" -- val.clientId
        
    --     |> Dict.insert
    --         "compromisedCredentialsRiskConfiguration" "" -- val.compromisedCredentialsRiskConfiguration
        
    --     |> Dict.insert
    --         "accountTakeoverRiskConfiguration" "" -- val.accountTakeoverRiskConfiguration
        
    --     |> Dict.insert
    --         "riskExceptionConfiguration" "" -- val.riskExceptionConfiguration
        
    --     |> Dict.insert
    --         "lastModifiedDate" "" -- val.lastModifiedDate
        
    --     |> Dict.toList
    ""



{-| One of

* `RiskDecisionType_NoRisk`
* `RiskDecisionType_AccountTakeover`
* `RiskDecisionType_Block`

-}
type RiskDecisionType
    = RiskDecisionType_NoRisk
    | RiskDecisionType_AccountTakeover
    | RiskDecisionType_Block



riskDecisionTypeDecoder : JD.Decoder RiskDecisionType
riskDecisionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NoRisk" ->
                        JD.succeed RiskDecisionType_NoRisk

                    "AccountTakeover" ->
                        JD.succeed RiskDecisionType_AccountTakeover

                    "Block" ->
                        JD.succeed RiskDecisionType_Block


                    _ ->
                        JD.fail "bad thing"
            )




riskDecisionTypeToString : RiskDecisionType -> String
riskDecisionTypeToString val =
    case val of
        RiskDecisionType_NoRisk ->
            "NoRisk"

        RiskDecisionType_AccountTakeover ->
            "AccountTakeover"

        RiskDecisionType_Block ->
            "Block"




{-| <p>The type of the configuration to override the risk decision.</p>
-}
type alias RiskExceptionConfigurationType =
    { blockedIPRangeList : Maybe (List String)
    , skippedIPRangeList : Maybe (List String)
    }



riskExceptionConfigurationTypeDecoder : JD.Decoder RiskExceptionConfigurationType
riskExceptionConfigurationTypeDecoder =
    JD.succeed RiskExceptionConfigurationType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BlockedIPRangeList", "blockedIPRangeList"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SkippedIPRangeList", "skippedIPRangeList"]
            (JD.list JD.string)
        )
        




riskExceptionConfigurationTypeToString : RiskExceptionConfigurationType -> String -- List (String, String)
riskExceptionConfigurationTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "blockedIPRangeList" "" -- val.blockedIPRangeList
        
    --     |> Dict.insert
    --         "skippedIPRangeList" "" -- val.skippedIPRangeList
        
    --     |> Dict.toList
    ""



{-| One of

* `RiskLevelType_Low`
* `RiskLevelType_Medium`
* `RiskLevelType_High`

-}
type RiskLevelType
    = RiskLevelType_Low
    | RiskLevelType_Medium
    | RiskLevelType_High



riskLevelTypeDecoder : JD.Decoder RiskLevelType
riskLevelTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Low" ->
                        JD.succeed RiskLevelType_Low

                    "Medium" ->
                        JD.succeed RiskLevelType_Medium

                    "High" ->
                        JD.succeed RiskLevelType_High


                    _ ->
                        JD.fail "bad thing"
            )




riskLevelTypeToString : RiskLevelType -> String
riskLevelTypeToString val =
    case val of
        RiskLevelType_Low ->
            "Low"

        RiskLevelType_Medium ->
            "Medium"

        RiskLevelType_High ->
            "High"




{-| <p>The SMS multi-factor authentication (MFA) settings type.</p>
-}
type alias SMSMfaSettingsType =
    { enabled : Maybe Bool
    , preferredMfa : Maybe Bool
    }



sMSMfaSettingsTypeDecoder : JD.Decoder SMSMfaSettingsType
sMSMfaSettingsTypeDecoder =
    JD.succeed SMSMfaSettingsType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreferredMfa", "preferredMfa"]
            JD.bool
        )
        




sMSMfaSettingsTypeToString : SMSMfaSettingsType -> String -- List (String, String)
sMSMfaSettingsTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "preferredMfa" "" -- val.preferredMfa
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about the schema attribute.</p>
-}
type alias SchemaAttributeType =
    { name : Maybe String
    , attributeDataType : Maybe AttributeDataType
    , developerOnlyAttribute : Maybe Bool
    , mutable : Maybe Bool
    , required : Maybe Bool
    , numberAttributeConstraints : Maybe NumberAttributeConstraintsType
    , stringAttributeConstraints : Maybe StringAttributeConstraintsType
    }



schemaAttributeTypeDecoder : JD.Decoder SchemaAttributeType
schemaAttributeTypeDecoder =
    JD.succeed SchemaAttributeType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AttributeDataType", "attributeDataType"]
            attributeDataTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeveloperOnlyAttribute", "developerOnlyAttribute"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Mutable", "mutable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Required", "required"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NumberAttributeConstraints", "numberAttributeConstraints"]
            numberAttributeConstraintsTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StringAttributeConstraints", "stringAttributeConstraints"]
            stringAttributeConstraintsTypeDecoder
        )
        




schemaAttributeTypeToString : SchemaAttributeType -> String -- List (String, String)
schemaAttributeTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "attributeDataType" "" -- val.attributeDataType
        
    --     |> Dict.insert
    --         "developerOnlyAttribute" "" -- val.developerOnlyAttribute
        
    --     |> Dict.insert
    --         "mutable" "" -- val.mutable
        
    --     |> Dict.insert
    --         "required" "" -- val.required
        
    --     |> Dict.insert
    --         "numberAttributeConstraints" "" -- val.numberAttributeConstraints
        
    --     |> Dict.insert
    --         "stringAttributeConstraints" "" -- val.stringAttributeConstraints
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setRiskConfiguration
-}
type alias SetRiskConfigurationResponse =
    { riskConfiguration : RiskConfigurationType
    }



setRiskConfigurationResponseDecoder : JD.Decoder SetRiskConfigurationResponse
setRiskConfigurationResponseDecoder =
    JD.succeed SetRiskConfigurationResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RiskConfiguration", "riskConfiguration"]
            riskConfigurationTypeDecoder
        )
        




setRiskConfigurationResponseToString : SetRiskConfigurationResponse -> String -- List (String, String)
setRiskConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "riskConfiguration" "" -- val.riskConfiguration
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setUICustomization
-}
type alias SetUICustomizationResponse =
    { uICustomization : UICustomizationType
    }



setUICustomizationResponseDecoder : JD.Decoder SetUICustomizationResponse
setUICustomizationResponseDecoder =
    JD.succeed SetUICustomizationResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UICustomization", "uICustomization"]
            uICustomizationTypeDecoder
        )
        




setUICustomizationResponseToString : SetUICustomizationResponse -> String -- List (String, String)
setUICustomizationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "uICustomization" "" -- val.uICustomization
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setUserMFAPreference
-}
type alias SetUserMFAPreferenceResponse =
    { 
    }



setUserMFAPreferenceResponseDecoder : JD.Decoder SetUserMFAPreferenceResponse
setUserMFAPreferenceResponseDecoder =
    JD.succeed SetUserMFAPreferenceResponse
        




setUserMFAPreferenceResponseToString : SetUserMFAPreferenceResponse -> String -- List (String, String)
setUserMFAPreferenceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setUserPoolMfaConfig
-}
type alias SetUserPoolMfaConfigResponse =
    { smsMfaConfiguration : Maybe SmsMfaConfigType
    , softwareTokenMfaConfiguration : Maybe SoftwareTokenMfaConfigType
    , mfaConfiguration : Maybe UserPoolMfaType
    }



setUserPoolMfaConfigResponseDecoder : JD.Decoder SetUserPoolMfaConfigResponse
setUserPoolMfaConfigResponseDecoder =
    JD.succeed SetUserPoolMfaConfigResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SmsMfaConfiguration", "smsMfaConfiguration"]
            smsMfaConfigTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SoftwareTokenMfaConfiguration", "softwareTokenMfaConfiguration"]
            softwareTokenMfaConfigTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MfaConfiguration", "mfaConfiguration"]
            userPoolMfaTypeDecoder
        )
        




setUserPoolMfaConfigResponseToString : SetUserPoolMfaConfigResponse -> String -- List (String, String)
setUserPoolMfaConfigResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "smsMfaConfiguration" "" -- val.smsMfaConfiguration
        
    --     |> Dict.insert
    --         "softwareTokenMfaConfiguration" "" -- val.softwareTokenMfaConfiguration
        
    --     |> Dict.insert
    --         "mfaConfiguration" "" -- val.mfaConfiguration
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from setUserSettings
-}
type alias SetUserSettingsResponse =
    { 
    }



setUserSettingsResponseDecoder : JD.Decoder SetUserSettingsResponse
setUserSettingsResponseDecoder =
    JD.succeed SetUserSettingsResponse
        




setUserSettingsResponseToString : SetUserSettingsResponse -> String -- List (String, String)
setUserSettingsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from signUp
-}
type alias SignUpResponse =
    { userConfirmed : Bool
    , codeDeliveryDetails : Maybe CodeDeliveryDetailsType
    , userSub : String
    }



signUpResponseDecoder : JD.Decoder SignUpResponse
signUpResponseDecoder =
    JD.succeed SignUpResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UserConfirmed", "userConfirmed"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CodeDeliveryDetails", "codeDeliveryDetails"]
            codeDeliveryDetailsTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["UserSub", "userSub"]
            JD.string
        )
        




signUpResponseToString : SignUpResponse -> String -- List (String, String)
signUpResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userConfirmed" "" -- val.userConfirmed
        
    --     |> Dict.insert
    --         "codeDeliveryDetails" "" -- val.codeDeliveryDetails
        
    --     |> Dict.insert
    --         "userSub" "" -- val.userSub
        
    --     |> Dict.toList
    ""



{-| <p>The SMS configuration type.</p>
-}
type alias SmsConfigurationType =
    { snsCallerArn : String
    , externalId : Maybe String
    }



smsConfigurationTypeDecoder : JD.Decoder SmsConfigurationType
smsConfigurationTypeDecoder =
    JD.succeed SmsConfigurationType
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SnsCallerArn", "snsCallerArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExternalId", "externalId"]
            JD.string
        )
        




smsConfigurationTypeToString : SmsConfigurationType -> String -- List (String, String)
smsConfigurationTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "snsCallerArn" "" -- val.snsCallerArn
        
    --     |> Dict.insert
    --         "externalId" "" -- val.externalId
        
    --     |> Dict.toList
    ""



{-| <p>The SMS text message multi-factor authentication (MFA) configuration type.</p>
-}
type alias SmsMfaConfigType =
    { smsAuthenticationMessage : Maybe String
    , smsConfiguration : Maybe SmsConfigurationType
    }



smsMfaConfigTypeDecoder : JD.Decoder SmsMfaConfigType
smsMfaConfigTypeDecoder =
    JD.succeed SmsMfaConfigType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SmsAuthenticationMessage", "smsAuthenticationMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SmsConfiguration", "smsConfiguration"]
            smsConfigurationTypeDecoder
        )
        




smsMfaConfigTypeToString : SmsMfaConfigType -> String -- List (String, String)
smsMfaConfigTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "smsAuthenticationMessage" "" -- val.smsAuthenticationMessage
        
    --     |> Dict.insert
    --         "smsConfiguration" "" -- val.smsConfiguration
        
    --     |> Dict.toList
    ""



{-| <p>The type used for enabling software token MFA at the user pool level.</p>
-}
type alias SoftwareTokenMfaConfigType =
    { enabled : Maybe Bool
    }



softwareTokenMfaConfigTypeDecoder : JD.Decoder SoftwareTokenMfaConfigType
softwareTokenMfaConfigTypeDecoder =
    JD.succeed SoftwareTokenMfaConfigType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        




softwareTokenMfaConfigTypeToString : SoftwareTokenMfaConfigType -> String -- List (String, String)
softwareTokenMfaConfigTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.toList
    ""



{-| <p>The type used for enabling software token MFA at the user level.</p>
-}
type alias SoftwareTokenMfaSettingsType =
    { enabled : Maybe Bool
    , preferredMfa : Maybe Bool
    }



softwareTokenMfaSettingsTypeDecoder : JD.Decoder SoftwareTokenMfaSettingsType
softwareTokenMfaSettingsTypeDecoder =
    JD.succeed SoftwareTokenMfaSettingsType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreferredMfa", "preferredMfa"]
            JD.bool
        )
        




softwareTokenMfaSettingsTypeToString : SoftwareTokenMfaSettingsType -> String -- List (String, String)
softwareTokenMfaSettingsTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "preferredMfa" "" -- val.preferredMfa
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startUserImportJob
-}
type alias StartUserImportJobResponse =
    { userImportJob : Maybe UserImportJobType
    }



startUserImportJobResponseDecoder : JD.Decoder StartUserImportJobResponse
startUserImportJobResponseDecoder =
    JD.succeed StartUserImportJobResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserImportJob", "userImportJob"]
            userImportJobTypeDecoder
        )
        




startUserImportJobResponseToString : StartUserImportJobResponse -> String -- List (String, String)
startUserImportJobResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userImportJob" "" -- val.userImportJob
        
    --     |> Dict.toList
    ""



{-| One of

* `StatusType_Enabled`
* `StatusType_Disabled`

-}
type StatusType
    = StatusType_Enabled
    | StatusType_Disabled



statusTypeDecoder : JD.Decoder StatusType
statusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Enabled" ->
                        JD.succeed StatusType_Enabled

                    "Disabled" ->
                        JD.succeed StatusType_Disabled


                    _ ->
                        JD.fail "bad thing"
            )




statusTypeToString : StatusType -> String
statusTypeToString val =
    case val of
        StatusType_Enabled ->
            "Enabled"

        StatusType_Disabled ->
            "Disabled"




{-| Type of HTTP response from stopUserImportJob
-}
type alias StopUserImportJobResponse =
    { userImportJob : Maybe UserImportJobType
    }



stopUserImportJobResponseDecoder : JD.Decoder StopUserImportJobResponse
stopUserImportJobResponseDecoder =
    JD.succeed StopUserImportJobResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserImportJob", "userImportJob"]
            userImportJobTypeDecoder
        )
        




stopUserImportJobResponseToString : StopUserImportJobResponse -> String -- List (String, String)
stopUserImportJobResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userImportJob" "" -- val.userImportJob
        
    --     |> Dict.toList
    ""



{-| <p>The constraints associated with a string attribute.</p>
-}
type alias StringAttributeConstraintsType =
    { minLength : Maybe String
    , maxLength : Maybe String
    }



stringAttributeConstraintsTypeDecoder : JD.Decoder StringAttributeConstraintsType
stringAttributeConstraintsTypeDecoder =
    JD.succeed StringAttributeConstraintsType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MinLength", "minLength"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxLength", "maxLength"]
            JD.string
        )
        




stringAttributeConstraintsTypeToString : StringAttributeConstraintsType -> String -- List (String, String)
stringAttributeConstraintsTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "minLength" "" -- val.minLength
        
    --     |> Dict.insert
    --         "maxLength" "" -- val.maxLength
        
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



{-| <p>A container for the UI customization information for a user pool's built-in app UI.</p>
-}
type alias UICustomizationType =
    { userPoolId : Maybe String
    , clientId : Maybe String
    , imageUrl : Maybe String
    , cSS : Maybe String
    , cSSVersion : Maybe String
    , lastModifiedDate : Maybe Posix
    , creationDate : Maybe Posix
    }



uICustomizationTypeDecoder : JD.Decoder UICustomizationType
uICustomizationTypeDecoder =
    JD.succeed UICustomizationType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolId", "userPoolId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientId", "clientId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImageUrl", "imageUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CSS", "cSS"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CSSVersion", "cSSVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedDate", "lastModifiedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        




uICustomizationTypeToString : UICustomizationType -> String -- List (String, String)
uICustomizationTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPoolId" "" -- val.userPoolId
        
    --     |> Dict.insert
    --         "clientId" "" -- val.clientId
        
    --     |> Dict.insert
    --         "imageUrl" "" -- val.imageUrl
        
    --     |> Dict.insert
    --         "cSS" "" -- val.cSS
        
    --     |> Dict.insert
    --         "cSSVersion" "" -- val.cSSVersion
        
    --     |> Dict.insert
    --         "lastModifiedDate" "" -- val.lastModifiedDate
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
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



{-| Type of HTTP response from updateAuthEventFeedback
-}
type alias UpdateAuthEventFeedbackResponse =
    { 
    }



updateAuthEventFeedbackResponseDecoder : JD.Decoder UpdateAuthEventFeedbackResponse
updateAuthEventFeedbackResponseDecoder =
    JD.succeed UpdateAuthEventFeedbackResponse
        




updateAuthEventFeedbackResponseToString : UpdateAuthEventFeedbackResponse -> String -- List (String, String)
updateAuthEventFeedbackResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateDeviceStatus
-}
type alias UpdateDeviceStatusResponse =
    { 
    }



updateDeviceStatusResponseDecoder : JD.Decoder UpdateDeviceStatusResponse
updateDeviceStatusResponseDecoder =
    JD.succeed UpdateDeviceStatusResponse
        




updateDeviceStatusResponseToString : UpdateDeviceStatusResponse -> String -- List (String, String)
updateDeviceStatusResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateGroup
-}
type alias UpdateGroupResponse =
    { group : Maybe GroupType
    }



updateGroupResponseDecoder : JD.Decoder UpdateGroupResponse
updateGroupResponseDecoder =
    JD.succeed UpdateGroupResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Group", "group"]
            groupTypeDecoder
        )
        




updateGroupResponseToString : UpdateGroupResponse -> String -- List (String, String)
updateGroupResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "group" "" -- val.group
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateIdentityProvider
-}
type alias UpdateIdentityProviderResponse =
    { identityProvider : IdentityProviderType
    }



updateIdentityProviderResponseDecoder : JD.Decoder UpdateIdentityProviderResponse
updateIdentityProviderResponseDecoder =
    JD.succeed UpdateIdentityProviderResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IdentityProvider", "identityProvider"]
            identityProviderTypeDecoder
        )
        




updateIdentityProviderResponseToString : UpdateIdentityProviderResponse -> String -- List (String, String)
updateIdentityProviderResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "identityProvider" "" -- val.identityProvider
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateResourceServer
-}
type alias UpdateResourceServerResponse =
    { resourceServer : ResourceServerType
    }



updateResourceServerResponseDecoder : JD.Decoder UpdateResourceServerResponse
updateResourceServerResponseDecoder =
    JD.succeed UpdateResourceServerResponse
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceServer", "resourceServer"]
            resourceServerTypeDecoder
        )
        




updateResourceServerResponseToString : UpdateResourceServerResponse -> String -- List (String, String)
updateResourceServerResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceServer" "" -- val.resourceServer
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateUserAttributes
-}
type alias UpdateUserAttributesResponse =
    { codeDeliveryDetailsList : Maybe (List CodeDeliveryDetailsType)
    }



updateUserAttributesResponseDecoder : JD.Decoder UpdateUserAttributesResponse
updateUserAttributesResponseDecoder =
    JD.succeed UpdateUserAttributesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CodeDeliveryDetailsList", "codeDeliveryDetailsList"]
            (JD.list codeDeliveryDetailsTypeDecoder)
        )
        




updateUserAttributesResponseToString : UpdateUserAttributesResponse -> String -- List (String, String)
updateUserAttributesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "codeDeliveryDetailsList" "" -- val.codeDeliveryDetailsList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateUserPoolClient
-}
type alias UpdateUserPoolClientResponse =
    { userPoolClient : Maybe UserPoolClientType
    }



updateUserPoolClientResponseDecoder : JD.Decoder UpdateUserPoolClientResponse
updateUserPoolClientResponseDecoder =
    JD.succeed UpdateUserPoolClientResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolClient", "userPoolClient"]
            userPoolClientTypeDecoder
        )
        




updateUserPoolClientResponseToString : UpdateUserPoolClientResponse -> String -- List (String, String)
updateUserPoolClientResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPoolClient" "" -- val.userPoolClient
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateUserPoolDomain
-}
type alias UpdateUserPoolDomainResponse =
    { cloudFrontDomain : Maybe String
    }



updateUserPoolDomainResponseDecoder : JD.Decoder UpdateUserPoolDomainResponse
updateUserPoolDomainResponseDecoder =
    JD.succeed UpdateUserPoolDomainResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudFrontDomain", "cloudFrontDomain"]
            JD.string
        )
        




updateUserPoolDomainResponseToString : UpdateUserPoolDomainResponse -> String -- List (String, String)
updateUserPoolDomainResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "cloudFrontDomain" "" -- val.cloudFrontDomain
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateUserPool
-}
type alias UpdateUserPoolResponse =
    { 
    }



updateUserPoolResponseDecoder : JD.Decoder UpdateUserPoolResponse
updateUserPoolResponseDecoder =
    JD.succeed UpdateUserPoolResponse
        




updateUserPoolResponseToString : UpdateUserPoolResponse -> String -- List (String, String)
updateUserPoolResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.</p>
-}
type alias UserContextDataType =
    { encodedData : Maybe String
    }



userContextDataTypeDecoder : JD.Decoder UserContextDataType
userContextDataTypeDecoder =
    JD.succeed UserContextDataType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EncodedData", "encodedData"]
            JD.string
        )
        




userContextDataTypeToString : UserContextDataType -> String -- List (String, String)
userContextDataTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "encodedData" "" -- val.encodedData
        
    --     |> Dict.toList
    ""



{-| One of

* `UserImportJobStatusType_Created`
* `UserImportJobStatusType_Pending`
* `UserImportJobStatusType_InProgress`
* `UserImportJobStatusType_Stopping`
* `UserImportJobStatusType_Expired`
* `UserImportJobStatusType_Stopped`
* `UserImportJobStatusType_Failed`
* `UserImportJobStatusType_Succeeded`

-}
type UserImportJobStatusType
    = UserImportJobStatusType_Created
    | UserImportJobStatusType_Pending
    | UserImportJobStatusType_InProgress
    | UserImportJobStatusType_Stopping
    | UserImportJobStatusType_Expired
    | UserImportJobStatusType_Stopped
    | UserImportJobStatusType_Failed
    | UserImportJobStatusType_Succeeded



userImportJobStatusTypeDecoder : JD.Decoder UserImportJobStatusType
userImportJobStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Created" ->
                        JD.succeed UserImportJobStatusType_Created

                    "Pending" ->
                        JD.succeed UserImportJobStatusType_Pending

                    "InProgress" ->
                        JD.succeed UserImportJobStatusType_InProgress

                    "Stopping" ->
                        JD.succeed UserImportJobStatusType_Stopping

                    "Expired" ->
                        JD.succeed UserImportJobStatusType_Expired

                    "Stopped" ->
                        JD.succeed UserImportJobStatusType_Stopped

                    "Failed" ->
                        JD.succeed UserImportJobStatusType_Failed

                    "Succeeded" ->
                        JD.succeed UserImportJobStatusType_Succeeded


                    _ ->
                        JD.fail "bad thing"
            )




userImportJobStatusTypeToString : UserImportJobStatusType -> String
userImportJobStatusTypeToString val =
    case val of
        UserImportJobStatusType_Created ->
            "Created"

        UserImportJobStatusType_Pending ->
            "Pending"

        UserImportJobStatusType_InProgress ->
            "InProgress"

        UserImportJobStatusType_Stopping ->
            "Stopping"

        UserImportJobStatusType_Expired ->
            "Expired"

        UserImportJobStatusType_Stopped ->
            "Stopped"

        UserImportJobStatusType_Failed ->
            "Failed"

        UserImportJobStatusType_Succeeded ->
            "Succeeded"




{-| <p>The user import job type.</p>
-}
type alias UserImportJobType =
    { jobName : Maybe String
    , jobId : Maybe String
    , userPoolId : Maybe String
    , preSignedUrl : Maybe String
    , creationDate : Maybe Posix
    , startDate : Maybe Posix
    , completionDate : Maybe Posix
    , status : Maybe UserImportJobStatusType
    , cloudWatchLogsRoleArn : Maybe String
    , importedUsers : Maybe Int
    , skippedUsers : Maybe Int
    , failedUsers : Maybe Int
    , completionMessage : Maybe String
    }



userImportJobTypeDecoder : JD.Decoder UserImportJobType
userImportJobTypeDecoder =
    JD.succeed UserImportJobType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobName", "jobName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["JobId", "jobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolId", "userPoolId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreSignedUrl", "preSignedUrl"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartDate", "startDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompletionDate", "completionDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            userImportJobStatusTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchLogsRoleArn", "cloudWatchLogsRoleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ImportedUsers", "importedUsers"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SkippedUsers", "skippedUsers"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedUsers", "failedUsers"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CompletionMessage", "completionMessage"]
            JD.string
        )
        




userImportJobTypeToString : UserImportJobType -> String -- List (String, String)
userImportJobTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "jobName" "" -- val.jobName
        
    --     |> Dict.insert
    --         "jobId" "" -- val.jobId
        
    --     |> Dict.insert
    --         "userPoolId" "" -- val.userPoolId
        
    --     |> Dict.insert
    --         "preSignedUrl" "" -- val.preSignedUrl
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "startDate" "" -- val.startDate
        
    --     |> Dict.insert
    --         "completionDate" "" -- val.completionDate
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "cloudWatchLogsRoleArn" "" -- val.cloudWatchLogsRoleArn
        
    --     |> Dict.insert
    --         "importedUsers" "" -- val.importedUsers
        
    --     |> Dict.insert
    --         "skippedUsers" "" -- val.skippedUsers
        
    --     |> Dict.insert
    --         "failedUsers" "" -- val.failedUsers
        
    --     |> Dict.insert
    --         "completionMessage" "" -- val.completionMessage
        
    --     |> Dict.toList
    ""



{-| <p>The user pool add-ons type.</p>
-}
type alias UserPoolAddOnsType =
    { advancedSecurityMode : AdvancedSecurityModeType
    }



userPoolAddOnsTypeDecoder : JD.Decoder UserPoolAddOnsType
userPoolAddOnsTypeDecoder =
    JD.succeed UserPoolAddOnsType
        
        |> JDP.custom (AWS.Core.Decode.required
            ["AdvancedSecurityMode", "advancedSecurityMode"]
            advancedSecurityModeTypeDecoder
        )
        




userPoolAddOnsTypeToString : UserPoolAddOnsType -> String -- List (String, String)
userPoolAddOnsTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "advancedSecurityMode" "" -- val.advancedSecurityMode
        
    --     |> Dict.toList
    ""



{-| <p>The description of the user pool client.</p>
-}
type alias UserPoolClientDescription =
    { clientId : Maybe String
    , userPoolId : Maybe String
    , clientName : Maybe String
    }



userPoolClientDescriptionDecoder : JD.Decoder UserPoolClientDescription
userPoolClientDescriptionDecoder =
    JD.succeed UserPoolClientDescription
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientId", "clientId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolId", "userPoolId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientName", "clientName"]
            JD.string
        )
        




userPoolClientDescriptionToString : UserPoolClientDescription -> String -- List (String, String)
userPoolClientDescriptionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clientId" "" -- val.clientId
        
    --     |> Dict.insert
    --         "userPoolId" "" -- val.userPoolId
        
    --     |> Dict.insert
    --         "clientName" "" -- val.clientName
        
    --     |> Dict.toList
    ""



{-| <p>Contains information about a user pool client.</p>
-}
type alias UserPoolClientType =
    { userPoolId : Maybe String
    , clientName : Maybe String
    , clientId : Maybe String
    , clientSecret : Maybe String
    , lastModifiedDate : Maybe Posix
    , creationDate : Maybe Posix
    , refreshTokenValidity : Maybe Int
    , readAttributes : Maybe (List String)
    , writeAttributes : Maybe (List String)
    , explicitAuthFlows : Maybe (List ExplicitAuthFlowsType)
    , supportedIdentityProviders : Maybe (List String)
    , callbackURLs : Maybe (List String)
    , logoutURLs : Maybe (List String)
    , defaultRedirectURI : Maybe String
    , allowedOAuthFlows : Maybe (List OAuthFlowType)
    , allowedOAuthScopes : Maybe (List String)
    , allowedOAuthFlowsUserPoolClient : Maybe Bool
    , analyticsConfiguration : Maybe AnalyticsConfigurationType
    }



userPoolClientTypeDecoder : JD.Decoder UserPoolClientType
userPoolClientTypeDecoder =
    JD.succeed UserPoolClientType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolId", "userPoolId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientName", "clientName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientId", "clientId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientSecret", "clientSecret"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedDate", "lastModifiedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RefreshTokenValidity", "refreshTokenValidity"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReadAttributes", "readAttributes"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WriteAttributes", "writeAttributes"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExplicitAuthFlows", "explicitAuthFlows"]
            (JD.list explicitAuthFlowsTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportedIdentityProviders", "supportedIdentityProviders"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CallbackURLs", "callbackURLs"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogoutURLs", "logoutURLs"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultRedirectURI", "defaultRedirectURI"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowedOAuthFlows", "allowedOAuthFlows"]
            (JD.list oAuthFlowTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowedOAuthScopes", "allowedOAuthScopes"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowedOAuthFlowsUserPoolClient", "allowedOAuthFlowsUserPoolClient"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AnalyticsConfiguration", "analyticsConfiguration"]
            analyticsConfigurationTypeDecoder
        )
        




userPoolClientTypeToString : UserPoolClientType -> String -- List (String, String)
userPoolClientTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userPoolId" "" -- val.userPoolId
        
    --     |> Dict.insert
    --         "clientName" "" -- val.clientName
        
    --     |> Dict.insert
    --         "clientId" "" -- val.clientId
        
    --     |> Dict.insert
    --         "clientSecret" "" -- val.clientSecret
        
    --     |> Dict.insert
    --         "lastModifiedDate" "" -- val.lastModifiedDate
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "refreshTokenValidity" "" -- val.refreshTokenValidity
        
    --     |> Dict.insert
    --         "readAttributes" "" -- val.readAttributes
        
    --     |> Dict.insert
    --         "writeAttributes" "" -- val.writeAttributes
        
    --     |> Dict.insert
    --         "explicitAuthFlows" "" -- val.explicitAuthFlows
        
    --     |> Dict.insert
    --         "supportedIdentityProviders" "" -- val.supportedIdentityProviders
        
    --     |> Dict.insert
    --         "callbackURLs" "" -- val.callbackURLs
        
    --     |> Dict.insert
    --         "logoutURLs" "" -- val.logoutURLs
        
    --     |> Dict.insert
    --         "defaultRedirectURI" "" -- val.defaultRedirectURI
        
    --     |> Dict.insert
    --         "allowedOAuthFlows" "" -- val.allowedOAuthFlows
        
    --     |> Dict.insert
    --         "allowedOAuthScopes" "" -- val.allowedOAuthScopes
        
    --     |> Dict.insert
    --         "allowedOAuthFlowsUserPoolClient" "" -- val.allowedOAuthFlowsUserPoolClient
        
    --     |> Dict.insert
    --         "analyticsConfiguration" "" -- val.analyticsConfiguration
        
    --     |> Dict.toList
    ""



{-| <p>A user pool description.</p>
-}
type alias UserPoolDescriptionType =
    { id : Maybe String
    , name : Maybe String
    , lambdaConfig : Maybe LambdaConfigType
    , status : Maybe StatusType
    , lastModifiedDate : Maybe Posix
    , creationDate : Maybe Posix
    }



userPoolDescriptionTypeDecoder : JD.Decoder UserPoolDescriptionType
userPoolDescriptionTypeDecoder =
    JD.succeed UserPoolDescriptionType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LambdaConfig", "lambdaConfig"]
            lambdaConfigTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            statusTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedDate", "lastModifiedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        




userPoolDescriptionTypeToString : UserPoolDescriptionType -> String -- List (String, String)
userPoolDescriptionTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "lambdaConfig" "" -- val.lambdaConfig
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "lastModifiedDate" "" -- val.lastModifiedDate
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.toList
    ""



{-| One of

* `UserPoolMfaType_OFF`
* `UserPoolMfaType_ON`
* `UserPoolMfaType_OPTIONAL`

-}
type UserPoolMfaType
    = UserPoolMfaType_OFF
    | UserPoolMfaType_ON
    | UserPoolMfaType_OPTIONAL



userPoolMfaTypeDecoder : JD.Decoder UserPoolMfaType
userPoolMfaTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OFF" ->
                        JD.succeed UserPoolMfaType_OFF

                    "ON" ->
                        JD.succeed UserPoolMfaType_ON

                    "OPTIONAL" ->
                        JD.succeed UserPoolMfaType_OPTIONAL


                    _ ->
                        JD.fail "bad thing"
            )




userPoolMfaTypeToString : UserPoolMfaType -> String
userPoolMfaTypeToString val =
    case val of
        UserPoolMfaType_OFF ->
            "OFF"

        UserPoolMfaType_ON ->
            "ON"

        UserPoolMfaType_OPTIONAL ->
            "OPTIONAL"




{-| <p>The policy associated with a user pool.</p>
-}
type alias UserPoolPolicyType =
    { passwordPolicy : Maybe PasswordPolicyType
    }



userPoolPolicyTypeDecoder : JD.Decoder UserPoolPolicyType
userPoolPolicyTypeDecoder =
    JD.succeed UserPoolPolicyType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PasswordPolicy", "passwordPolicy"]
            passwordPolicyTypeDecoder
        )
        




userPoolPolicyTypeToString : UserPoolPolicyType -> String -- List (String, String)
userPoolPolicyTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "passwordPolicy" "" -- val.passwordPolicy
        
    --     |> Dict.toList
    ""



{-| <p>A container for information about the user pool.</p>
-}
type alias UserPoolType =
    { id : Maybe String
    , name : Maybe String
    , policies : Maybe UserPoolPolicyType
    , lambdaConfig : Maybe LambdaConfigType
    , status : Maybe StatusType
    , lastModifiedDate : Maybe Posix
    , creationDate : Maybe Posix
    , schemaAttributes : Maybe (List SchemaAttributeType)
    , autoVerifiedAttributes : Maybe (List VerifiedAttributeType)
    , aliasAttributes : Maybe (List AliasAttributeType)
    , usernameAttributes : Maybe (List UsernameAttributeType)
    , smsVerificationMessage : Maybe String
    , emailVerificationMessage : Maybe String
    , emailVerificationSubject : Maybe String
    , verificationMessageTemplate : Maybe VerificationMessageTemplateType
    , smsAuthenticationMessage : Maybe String
    , mfaConfiguration : Maybe UserPoolMfaType
    , deviceConfiguration : Maybe DeviceConfigurationType
    , estimatedNumberOfUsers : Maybe Int
    , emailConfiguration : Maybe EmailConfigurationType
    , smsConfiguration : Maybe SmsConfigurationType
    , userPoolTags : Maybe (Dict String String)
    , smsConfigurationFailure : Maybe String
    , emailConfigurationFailure : Maybe String
    , domain : Maybe String
    , customDomain : Maybe String
    , adminCreateUserConfig : Maybe AdminCreateUserConfigType
    , userPoolAddOns : Maybe UserPoolAddOnsType
    , arn : Maybe String
    }



userPoolTypeDecoder : JD.Decoder UserPoolType
userPoolTypeDecoder =
    JD.succeed UserPoolType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Policies", "policies"]
            userPoolPolicyTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LambdaConfig", "lambdaConfig"]
            lambdaConfigTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            statusTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastModifiedDate", "lastModifiedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationDate", "creationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SchemaAttributes", "schemaAttributes"]
            (JD.list schemaAttributeTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AutoVerifiedAttributes", "autoVerifiedAttributes"]
            (JD.list verifiedAttributeTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AliasAttributes", "aliasAttributes"]
            (JD.list aliasAttributeTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UsernameAttributes", "usernameAttributes"]
            (JD.list usernameAttributeTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SmsVerificationMessage", "smsVerificationMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EmailVerificationMessage", "emailVerificationMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EmailVerificationSubject", "emailVerificationSubject"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VerificationMessageTemplate", "verificationMessageTemplate"]
            verificationMessageTemplateTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SmsAuthenticationMessage", "smsAuthenticationMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MfaConfiguration", "mfaConfiguration"]
            userPoolMfaTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DeviceConfiguration", "deviceConfiguration"]
            deviceConfigurationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EstimatedNumberOfUsers", "estimatedNumberOfUsers"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EmailConfiguration", "emailConfiguration"]
            emailConfigurationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SmsConfiguration", "smsConfiguration"]
            smsConfigurationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolTags", "userPoolTags"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SmsConfigurationFailure", "smsConfigurationFailure"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EmailConfigurationFailure", "emailConfigurationFailure"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Domain", "domain"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomDomain", "customDomain"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AdminCreateUserConfig", "adminCreateUserConfig"]
            adminCreateUserConfigTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserPoolAddOns", "userPoolAddOns"]
            userPoolAddOnsTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        




userPoolTypeToString : UserPoolType -> String -- List (String, String)
userPoolTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "policies" "" -- val.policies
        
    --     |> Dict.insert
    --         "lambdaConfig" "" -- val.lambdaConfig
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "lastModifiedDate" "" -- val.lastModifiedDate
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "schemaAttributes" "" -- val.schemaAttributes
        
    --     |> Dict.insert
    --         "autoVerifiedAttributes" "" -- val.autoVerifiedAttributes
        
    --     |> Dict.insert
    --         "aliasAttributes" "" -- val.aliasAttributes
        
    --     |> Dict.insert
    --         "usernameAttributes" "" -- val.usernameAttributes
        
    --     |> Dict.insert
    --         "smsVerificationMessage" "" -- val.smsVerificationMessage
        
    --     |> Dict.insert
    --         "emailVerificationMessage" "" -- val.emailVerificationMessage
        
    --     |> Dict.insert
    --         "emailVerificationSubject" "" -- val.emailVerificationSubject
        
    --     |> Dict.insert
    --         "verificationMessageTemplate" "" -- val.verificationMessageTemplate
        
    --     |> Dict.insert
    --         "smsAuthenticationMessage" "" -- val.smsAuthenticationMessage
        
    --     |> Dict.insert
    --         "mfaConfiguration" "" -- val.mfaConfiguration
        
    --     |> Dict.insert
    --         "deviceConfiguration" "" -- val.deviceConfiguration
        
    --     |> Dict.insert
    --         "estimatedNumberOfUsers" "" -- val.estimatedNumberOfUsers
        
    --     |> Dict.insert
    --         "emailConfiguration" "" -- val.emailConfiguration
        
    --     |> Dict.insert
    --         "smsConfiguration" "" -- val.smsConfiguration
        
    --     |> Dict.insert
    --         "userPoolTags" "" -- val.userPoolTags
        
    --     |> Dict.insert
    --         "smsConfigurationFailure" "" -- val.smsConfigurationFailure
        
    --     |> Dict.insert
    --         "emailConfigurationFailure" "" -- val.emailConfigurationFailure
        
    --     |> Dict.insert
    --         "domain" "" -- val.domain
        
    --     |> Dict.insert
    --         "customDomain" "" -- val.customDomain
        
    --     |> Dict.insert
    --         "adminCreateUserConfig" "" -- val.adminCreateUserConfig
        
    --     |> Dict.insert
    --         "userPoolAddOns" "" -- val.userPoolAddOns
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.toList
    ""



{-| One of

* `UserStatusType_UNCONFIRMED`
* `UserStatusType_CONFIRMED`
* `UserStatusType_ARCHIVED`
* `UserStatusType_COMPROMISED`
* `UserStatusType_UNKNOWN`
* `UserStatusType_RESET_REQUIRED`
* `UserStatusType_FORCE_CHANGE_PASSWORD`

-}
type UserStatusType
    = UserStatusType_UNCONFIRMED
    | UserStatusType_CONFIRMED
    | UserStatusType_ARCHIVED
    | UserStatusType_COMPROMISED
    | UserStatusType_UNKNOWN
    | UserStatusType_RESET_REQUIRED
    | UserStatusType_FORCE_CHANGE_PASSWORD



userStatusTypeDecoder : JD.Decoder UserStatusType
userStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNCONFIRMED" ->
                        JD.succeed UserStatusType_UNCONFIRMED

                    "CONFIRMED" ->
                        JD.succeed UserStatusType_CONFIRMED

                    "ARCHIVED" ->
                        JD.succeed UserStatusType_ARCHIVED

                    "COMPROMISED" ->
                        JD.succeed UserStatusType_COMPROMISED

                    "UNKNOWN" ->
                        JD.succeed UserStatusType_UNKNOWN

                    "RESET_REQUIRED" ->
                        JD.succeed UserStatusType_RESET_REQUIRED

                    "FORCE_CHANGE_PASSWORD" ->
                        JD.succeed UserStatusType_FORCE_CHANGE_PASSWORD


                    _ ->
                        JD.fail "bad thing"
            )




userStatusTypeToString : UserStatusType -> String
userStatusTypeToString val =
    case val of
        UserStatusType_UNCONFIRMED ->
            "UNCONFIRMED"

        UserStatusType_CONFIRMED ->
            "CONFIRMED"

        UserStatusType_ARCHIVED ->
            "ARCHIVED"

        UserStatusType_COMPROMISED ->
            "COMPROMISED"

        UserStatusType_UNKNOWN ->
            "UNKNOWN"

        UserStatusType_RESET_REQUIRED ->
            "RESET_REQUIRED"

        UserStatusType_FORCE_CHANGE_PASSWORD ->
            "FORCE_CHANGE_PASSWORD"




{-| <p>The user type.</p>
-}
type alias UserType =
    { username : Maybe String
    , attributes : Maybe (List AttributeType)
    , userCreateDate : Maybe Posix
    , userLastModifiedDate : Maybe Posix
    , enabled : Maybe Bool
    , userStatus : Maybe UserStatusType
    , mFAOptions : Maybe (List MFAOptionType)
    }



userTypeDecoder : JD.Decoder UserType
userTypeDecoder =
    JD.succeed UserType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Username", "username"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (JD.list attributeTypeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserCreateDate", "userCreateDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserLastModifiedDate", "userLastModifiedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Enabled", "enabled"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserStatus", "userStatus"]
            userStatusTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MFAOptions", "mFAOptions"]
            (JD.list mFAOptionTypeDecoder)
        )
        




userTypeToString : UserType -> String -- List (String, String)
userTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "username" "" -- val.username
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.insert
    --         "userCreateDate" "" -- val.userCreateDate
        
    --     |> Dict.insert
    --         "userLastModifiedDate" "" -- val.userLastModifiedDate
        
    --     |> Dict.insert
    --         "enabled" "" -- val.enabled
        
    --     |> Dict.insert
    --         "userStatus" "" -- val.userStatus
        
    --     |> Dict.insert
    --         "mFAOptions" "" -- val.mFAOptions
        
    --     |> Dict.toList
    ""



{-| One of

* `UsernameAttributeType_phone_number`
* `UsernameAttributeType_email`

-}
type UsernameAttributeType
    = UsernameAttributeType_phone_number
    | UsernameAttributeType_email



usernameAttributeTypeDecoder : JD.Decoder UsernameAttributeType
usernameAttributeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "phone_number" ->
                        JD.succeed UsernameAttributeType_phone_number

                    "email" ->
                        JD.succeed UsernameAttributeType_email


                    _ ->
                        JD.fail "bad thing"
            )




usernameAttributeTypeToString : UsernameAttributeType -> String
usernameAttributeTypeToString val =
    case val of
        UsernameAttributeType_phone_number ->
            "phone_number"

        UsernameAttributeType_email ->
            "email"




{-| <p>The template for verification messages.</p>
-}
type alias VerificationMessageTemplateType =
    { smsMessage : Maybe String
    , emailMessage : Maybe String
    , emailSubject : Maybe String
    , emailMessageByLink : Maybe String
    , emailSubjectByLink : Maybe String
    , defaultEmailOption : Maybe DefaultEmailOptionType
    }



verificationMessageTemplateTypeDecoder : JD.Decoder VerificationMessageTemplateType
verificationMessageTemplateTypeDecoder =
    JD.succeed VerificationMessageTemplateType
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SmsMessage", "smsMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EmailMessage", "emailMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EmailSubject", "emailSubject"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EmailMessageByLink", "emailMessageByLink"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EmailSubjectByLink", "emailSubjectByLink"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultEmailOption", "defaultEmailOption"]
            defaultEmailOptionTypeDecoder
        )
        




verificationMessageTemplateTypeToString : VerificationMessageTemplateType -> String -- List (String, String)
verificationMessageTemplateTypeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "smsMessage" "" -- val.smsMessage
        
    --     |> Dict.insert
    --         "emailMessage" "" -- val.emailMessage
        
    --     |> Dict.insert
    --         "emailSubject" "" -- val.emailSubject
        
    --     |> Dict.insert
    --         "emailMessageByLink" "" -- val.emailMessageByLink
        
    --     |> Dict.insert
    --         "emailSubjectByLink" "" -- val.emailSubjectByLink
        
    --     |> Dict.insert
    --         "defaultEmailOption" "" -- val.defaultEmailOption
        
    --     |> Dict.toList
    ""



{-| One of

* `VerifiedAttributeType_phone_number`
* `VerifiedAttributeType_email`

-}
type VerifiedAttributeType
    = VerifiedAttributeType_phone_number
    | VerifiedAttributeType_email



verifiedAttributeTypeDecoder : JD.Decoder VerifiedAttributeType
verifiedAttributeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "phone_number" ->
                        JD.succeed VerifiedAttributeType_phone_number

                    "email" ->
                        JD.succeed VerifiedAttributeType_email


                    _ ->
                        JD.fail "bad thing"
            )




verifiedAttributeTypeToString : VerifiedAttributeType -> String
verifiedAttributeTypeToString val =
    case val of
        VerifiedAttributeType_phone_number ->
            "phone_number"

        VerifiedAttributeType_email ->
            "email"




{-| Type of HTTP response from verifySoftwareToken
-}
type alias VerifySoftwareTokenResponse =
    { status : Maybe VerifySoftwareTokenResponseType
    , session : Maybe String
    }



verifySoftwareTokenResponseDecoder : JD.Decoder VerifySoftwareTokenResponse
verifySoftwareTokenResponseDecoder =
    JD.succeed VerifySoftwareTokenResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            verifySoftwareTokenResponseTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Session", "session"]
            JD.string
        )
        




verifySoftwareTokenResponseToString : VerifySoftwareTokenResponse -> String -- List (String, String)
verifySoftwareTokenResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "session" "" -- val.session
        
    --     |> Dict.toList
    ""



{-| One of

* `VerifySoftwareTokenResponseType_SUCCESS`
* `VerifySoftwareTokenResponseType_ERROR`

-}
type VerifySoftwareTokenResponseType
    = VerifySoftwareTokenResponseType_SUCCESS
    | VerifySoftwareTokenResponseType_ERROR



verifySoftwareTokenResponseTypeDecoder : JD.Decoder VerifySoftwareTokenResponseType
verifySoftwareTokenResponseTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCESS" ->
                        JD.succeed VerifySoftwareTokenResponseType_SUCCESS

                    "ERROR" ->
                        JD.succeed VerifySoftwareTokenResponseType_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




verifySoftwareTokenResponseTypeToString : VerifySoftwareTokenResponseType -> String
verifySoftwareTokenResponseTypeToString val =
    case val of
        VerifySoftwareTokenResponseType_SUCCESS ->
            "SUCCESS"

        VerifySoftwareTokenResponseType_ERROR ->
            "ERROR"




{-| Type of HTTP response from verifyUserAttribute
-}
type alias VerifyUserAttributeResponse =
    { 
    }



verifyUserAttributeResponseDecoder : JD.Decoder VerifyUserAttributeResponse
verifyUserAttributeResponseDecoder =
    JD.succeed VerifyUserAttributeResponse
        




verifyUserAttributeResponseToString : VerifyUserAttributeResponse -> String -- List (String, String)
verifyUserAttributeResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""






{-| <p>Represents the request to add custom attributes.</p>
-}
type alias AddCustomAttributesRequest =
    { userPoolId : String
    , customAttributes : (List SchemaAttributeType)
    }


{-| undefined
-}
type alias AdminAddUserToGroupRequest =
    { userPoolId : String
    , username : String
    , groupName : String
    }


{-| <p>Represents the request to confirm user registration.</p>
-}
type alias AdminConfirmSignUpRequest =
    { userPoolId : String
    , username : String
    }


{-| <p>Represents the request to create a user in the specified user pool.</p>
-}
type alias AdminCreateUserRequest =
    { userPoolId : String
    , username : String
    , userAttributes : Maybe (List AttributeType)
    , validationData : Maybe (List AttributeType)
    , temporaryPassword : Maybe String
    , forceAliasCreation : Maybe Bool
    , messageAction : Maybe MessageActionType
    , desiredDeliveryMediums : Maybe (List DeliveryMediumType)
    }


{-| <p>Represents the request to delete user attributes as an administrator.</p>
-}
type alias AdminDeleteUserAttributesRequest =
    { userPoolId : String
    , username : String
    , userAttributeNames : (List String)
    }


{-| <p>Represents the request to delete a user as an administrator.</p>
-}
type alias AdminDeleteUserRequest =
    { userPoolId : String
    , username : String
    }


{-| undefined
-}
type alias AdminDisableProviderForUserRequest =
    { userPoolId : String
    , user : ProviderUserIdentifierType
    }


{-| <p>Represents the request to disable any user as an administrator.</p>
-}
type alias AdminDisableUserRequest =
    { userPoolId : String
    , username : String
    }


{-| <p>Represents the request that enables the user as an administrator.</p>
-}
type alias AdminEnableUserRequest =
    { userPoolId : String
    , username : String
    }


{-| <p>Sends the forgot device request, as an administrator.</p>
-}
type alias AdminForgetDeviceRequest =
    { userPoolId : String
    , username : String
    , deviceKey : String
    }


{-| <p>Represents the request to get the device, as an administrator.</p>
-}
type alias AdminGetDeviceRequest =
    { deviceKey : String
    , userPoolId : String
    , username : String
    }


{-| <p>Represents the request to get the specified user as an administrator.</p>
-}
type alias AdminGetUserRequest =
    { userPoolId : String
    , username : String
    }


{-| <p>Initiates the authorization request, as an administrator.</p>
-}
type alias AdminInitiateAuthRequest =
    { userPoolId : String
    , clientId : String
    , authFlow : AuthFlowType
    , authParameters : Maybe (Dict String String)
    , clientMetadata : Maybe (Dict String String)
    , analyticsMetadata : Maybe AnalyticsMetadataType
    , contextData : Maybe ContextDataType
    }


{-| undefined
-}
type alias AdminLinkProviderForUserRequest =
    { userPoolId : String
    , destinationUser : ProviderUserIdentifierType
    , sourceUser : ProviderUserIdentifierType
    }


{-| <p>Represents the request to list devices, as an administrator.</p>
-}
type alias AdminListDevicesRequest =
    { userPoolId : String
    , username : String
    , limit : Maybe Int
    , paginationToken : Maybe String
    }


{-| undefined
-}
type alias AdminListGroupsForUserRequest =
    { username : String
    , userPoolId : String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias AdminListUserAuthEventsRequest =
    { userPoolId : String
    , username : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias AdminRemoveUserFromGroupRequest =
    { userPoolId : String
    , username : String
    , groupName : String
    }


{-| <p>Represents the request to reset a user's password as an administrator.</p>
-}
type alias AdminResetUserPasswordRequest =
    { userPoolId : String
    , username : String
    }


{-| <p>The request to respond to the authentication challenge, as an administrator.</p>
-}
type alias AdminRespondToAuthChallengeRequest =
    { userPoolId : String
    , clientId : String
    , challengeName : ChallengeNameType
    , challengeResponses : Maybe (Dict String String)
    , session : Maybe String
    , analyticsMetadata : Maybe AnalyticsMetadataType
    , contextData : Maybe ContextDataType
    }


{-| undefined
-}
type alias AdminSetUserMFAPreferenceRequest =
    { sMSMfaSettings : Maybe SMSMfaSettingsType
    , softwareTokenMfaSettings : Maybe SoftwareTokenMfaSettingsType
    , username : String
    , userPoolId : String
    }


{-| undefined
-}
type alias AdminSetUserPasswordRequest =
    { userPoolId : String
    , username : String
    , password : String
    , permanent : Maybe Bool
    }


{-| <p>Represents the request to set user settings as an administrator.</p>
-}
type alias AdminSetUserSettingsRequest =
    { userPoolId : String
    , username : String
    , mFAOptions : (List MFAOptionType)
    }


{-| undefined
-}
type alias AdminUpdateAuthEventFeedbackRequest =
    { userPoolId : String
    , username : String
    , eventId : String
    , feedbackValue : FeedbackValueType
    }


{-| <p>The request to update the device status, as an administrator.</p>
-}
type alias AdminUpdateDeviceStatusRequest =
    { userPoolId : String
    , username : String
    , deviceKey : String
    , deviceRememberedStatus : Maybe DeviceRememberedStatusType
    }


{-| <p>Represents the request to update the user's attributes as an administrator.</p>
-}
type alias AdminUpdateUserAttributesRequest =
    { userPoolId : String
    , username : String
    , userAttributes : (List AttributeType)
    }


{-| <p>The request to sign out of all devices, as an administrator.</p>
-}
type alias AdminUserGlobalSignOutRequest =
    { userPoolId : String
    , username : String
    }


{-| undefined
-}
type alias AssociateSoftwareTokenRequest =
    { accessToken : Maybe String
    , session : Maybe String
    }


{-| <p>Represents the request to change a user password.</p>
-}
type alias ChangePasswordRequest =
    { previousPassword : String
    , proposedPassword : String
    , accessToken : String
    }


{-| <p>Confirms the device request.</p>
-}
type alias ConfirmDeviceRequest =
    { accessToken : String
    , deviceKey : String
    , deviceSecretVerifierConfig : Maybe DeviceSecretVerifierConfigType
    , deviceName : Maybe String
    }


{-| <p>The request representing the confirmation for a password reset.</p>
-}
type alias ConfirmForgotPasswordRequest =
    { clientId : String
    , secretHash : Maybe String
    , username : String
    , confirmationCode : String
    , password : String
    , analyticsMetadata : Maybe AnalyticsMetadataType
    , userContextData : Maybe UserContextDataType
    }


{-| <p>Represents the request to confirm registration of a user.</p>
-}
type alias ConfirmSignUpRequest =
    { clientId : String
    , secretHash : Maybe String
    , username : String
    , confirmationCode : String
    , forceAliasCreation : Maybe Bool
    , analyticsMetadata : Maybe AnalyticsMetadataType
    , userContextData : Maybe UserContextDataType
    }


{-| undefined
-}
type alias CreateGroupRequest =
    { groupName : String
    , userPoolId : String
    , description : Maybe String
    , roleArn : Maybe String
    , precedence : Maybe Int
    }


{-| undefined
-}
type alias CreateIdentityProviderRequest =
    { userPoolId : String
    , providerName : String
    , providerType : IdentityProviderTypeType
    , providerDetails : (Dict String String)
    , attributeMapping : Maybe (Dict String String)
    , idpIdentifiers : Maybe (List String)
    }


{-| undefined
-}
type alias CreateResourceServerRequest =
    { userPoolId : String
    , identifier : String
    , name : String
    , scopes : Maybe (List ResourceServerScopeType)
    }


{-| <p>Represents the request to create the user import job.</p>
-}
type alias CreateUserImportJobRequest =
    { jobName : String
    , userPoolId : String
    , cloudWatchLogsRoleArn : String
    }


{-| <p>Represents the request to create a user pool client.</p>
-}
type alias CreateUserPoolClientRequest =
    { userPoolId : String
    , clientName : String
    , generateSecret : Maybe Bool
    , refreshTokenValidity : Maybe Int
    , readAttributes : Maybe (List String)
    , writeAttributes : Maybe (List String)
    , explicitAuthFlows : Maybe (List ExplicitAuthFlowsType)
    , supportedIdentityProviders : Maybe (List String)
    , callbackURLs : Maybe (List String)
    , logoutURLs : Maybe (List String)
    , defaultRedirectURI : Maybe String
    , allowedOAuthFlows : Maybe (List OAuthFlowType)
    , allowedOAuthScopes : Maybe (List String)
    , allowedOAuthFlowsUserPoolClient : Maybe Bool
    , analyticsConfiguration : Maybe AnalyticsConfigurationType
    }


{-| undefined
-}
type alias CreateUserPoolDomainRequest =
    { domain : String
    , userPoolId : String
    , customDomainConfig : Maybe CustomDomainConfigType
    }


{-| <p>Represents the request to create a user pool.</p>
-}
type alias CreateUserPoolRequest =
    { poolName : String
    , policies : Maybe UserPoolPolicyType
    , lambdaConfig : Maybe LambdaConfigType
    , autoVerifiedAttributes : Maybe (List VerifiedAttributeType)
    , aliasAttributes : Maybe (List AliasAttributeType)
    , usernameAttributes : Maybe (List UsernameAttributeType)
    , smsVerificationMessage : Maybe String
    , emailVerificationMessage : Maybe String
    , emailVerificationSubject : Maybe String
    , verificationMessageTemplate : Maybe VerificationMessageTemplateType
    , smsAuthenticationMessage : Maybe String
    , mfaConfiguration : Maybe UserPoolMfaType
    , deviceConfiguration : Maybe DeviceConfigurationType
    , emailConfiguration : Maybe EmailConfigurationType
    , smsConfiguration : Maybe SmsConfigurationType
    , userPoolTags : Maybe (Dict String String)
    , adminCreateUserConfig : Maybe AdminCreateUserConfigType
    , schema : Maybe (List SchemaAttributeType)
    , userPoolAddOns : Maybe UserPoolAddOnsType
    }


{-| undefined
-}
type alias DeleteGroupRequest =
    { groupName : String
    , userPoolId : String
    }


{-| undefined
-}
type alias DeleteIdentityProviderRequest =
    { userPoolId : String
    , providerName : String
    }


{-| undefined
-}
type alias DeleteResourceServerRequest =
    { userPoolId : String
    , identifier : String
    }


{-| <p>Represents the request to delete user attributes.</p>
-}
type alias DeleteUserAttributesRequest =
    { userAttributeNames : (List String)
    , accessToken : String
    }


{-| <p>Represents the request to delete a user pool client.</p>
-}
type alias DeleteUserPoolClientRequest =
    { userPoolId : String
    , clientId : String
    }


{-| undefined
-}
type alias DeleteUserPoolDomainRequest =
    { domain : String
    , userPoolId : String
    }


{-| <p>Represents the request to delete a user pool.</p>
-}
type alias DeleteUserPoolRequest =
    { userPoolId : String
    }


{-| <p>Represents the request to delete a user.</p>
-}
type alias DeleteUserRequest =
    { accessToken : String
    }


{-| undefined
-}
type alias DescribeIdentityProviderRequest =
    { userPoolId : String
    , providerName : String
    }


{-| undefined
-}
type alias DescribeResourceServerRequest =
    { userPoolId : String
    , identifier : String
    }


{-| undefined
-}
type alias DescribeRiskConfigurationRequest =
    { userPoolId : String
    , clientId : Maybe String
    }


{-| <p>Represents the request to describe the user import job.</p>
-}
type alias DescribeUserImportJobRequest =
    { userPoolId : String
    , jobId : String
    }


{-| <p>Represents the request to describe a user pool client.</p>
-}
type alias DescribeUserPoolClientRequest =
    { userPoolId : String
    , clientId : String
    }


{-| undefined
-}
type alias DescribeUserPoolDomainRequest =
    { domain : String
    }


{-| <p>Represents the request to describe the user pool.</p>
-}
type alias DescribeUserPoolRequest =
    { userPoolId : String
    }


{-| <p>Represents the request to forget the device.</p>
-}
type alias ForgetDeviceRequest =
    { accessToken : Maybe String
    , deviceKey : String
    }


{-| <p>Represents the request to reset a user's password.</p>
-}
type alias ForgotPasswordRequest =
    { clientId : String
    , secretHash : Maybe String
    , userContextData : Maybe UserContextDataType
    , username : String
    , analyticsMetadata : Maybe AnalyticsMetadataType
    }


{-| <p>Represents the request to get the header information for the .csv file for the user import job.</p>
-}
type alias GetCSVHeaderRequest =
    { userPoolId : String
    }


{-| <p>Represents the request to get the device.</p>
-}
type alias GetDeviceRequest =
    { deviceKey : String
    , accessToken : Maybe String
    }


{-| undefined
-}
type alias GetGroupRequest =
    { groupName : String
    , userPoolId : String
    }


{-| undefined
-}
type alias GetIdentityProviderByIdentifierRequest =
    { userPoolId : String
    , idpIdentifier : String
    }


{-| <p>Request to get a signing certificate from Cognito.</p>
-}
type alias GetSigningCertificateRequest =
    { userPoolId : String
    }


{-| undefined
-}
type alias GetUICustomizationRequest =
    { userPoolId : String
    , clientId : Maybe String
    }


{-| <p>Represents the request to get user attribute verification.</p>
-}
type alias GetUserAttributeVerificationCodeRequest =
    { accessToken : String
    , attributeName : String
    }


{-| undefined
-}
type alias GetUserPoolMfaConfigRequest =
    { userPoolId : String
    }


{-| <p>Represents the request to get information about the user.</p>
-}
type alias GetUserRequest =
    { accessToken : String
    }


{-| <p>Represents the request to sign out all devices.</p>
-}
type alias GlobalSignOutRequest =
    { accessToken : String
    }


{-| <p>Initiates the authentication request.</p>
-}
type alias InitiateAuthRequest =
    { authFlow : AuthFlowType
    , authParameters : Maybe (Dict String String)
    , clientMetadata : Maybe (Dict String String)
    , clientId : String
    , analyticsMetadata : Maybe AnalyticsMetadataType
    , userContextData : Maybe UserContextDataType
    }


{-| <p>Represents the request to list the devices.</p>
-}
type alias ListDevicesRequest =
    { accessToken : String
    , limit : Maybe Int
    , paginationToken : Maybe String
    }


{-| undefined
-}
type alias ListGroupsRequest =
    { userPoolId : String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListIdentityProvidersRequest =
    { userPoolId : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListResourceServersRequest =
    { userPoolId : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListTagsForResourceRequest =
    { resourceArn : String
    }


{-| <p>Represents the request to list the user import jobs.</p>
-}
type alias ListUserImportJobsRequest =
    { userPoolId : String
    , maxResults : Int
    , paginationToken : Maybe String
    }


{-| <p>Represents the request to list the user pool clients.</p>
-}
type alias ListUserPoolClientsRequest =
    { userPoolId : String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the request to list user pools.</p>
-}
type alias ListUserPoolsRequest =
    { nextToken : Maybe String
    , maxResults : Int
    }


{-| undefined
-}
type alias ListUsersInGroupRequest =
    { userPoolId : String
    , groupName : String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the request to list users.</p>
-}
type alias ListUsersRequest =
    { userPoolId : String
    , attributesToGet : Maybe (List String)
    , limit : Maybe Int
    , paginationToken : Maybe String
    , filter : Maybe String
    }


{-| <p>Represents the request to resend the confirmation code.</p>
-}
type alias ResendConfirmationCodeRequest =
    { clientId : String
    , secretHash : Maybe String
    , userContextData : Maybe UserContextDataType
    , username : String
    , analyticsMetadata : Maybe AnalyticsMetadataType
    }


{-| <p>The request to respond to an authentication challenge.</p>
-}
type alias RespondToAuthChallengeRequest =
    { clientId : String
    , challengeName : ChallengeNameType
    , session : Maybe String
    , challengeResponses : Maybe (Dict String String)
    , analyticsMetadata : Maybe AnalyticsMetadataType
    , userContextData : Maybe UserContextDataType
    }


{-| undefined
-}
type alias SetRiskConfigurationRequest =
    { userPoolId : String
    , clientId : Maybe String
    , compromisedCredentialsRiskConfiguration : Maybe CompromisedCredentialsRiskConfigurationType
    , accountTakeoverRiskConfiguration : Maybe AccountTakeoverRiskConfigurationType
    , riskExceptionConfiguration : Maybe RiskExceptionConfigurationType
    }


{-| undefined
-}
type alias SetUICustomizationRequest =
    { userPoolId : String
    , clientId : Maybe String
    , cSS : Maybe String
    , imageFile : Maybe String
    }


{-| undefined
-}
type alias SetUserMFAPreferenceRequest =
    { sMSMfaSettings : Maybe SMSMfaSettingsType
    , softwareTokenMfaSettings : Maybe SoftwareTokenMfaSettingsType
    , accessToken : String
    }


{-| undefined
-}
type alias SetUserPoolMfaConfigRequest =
    { userPoolId : String
    , smsMfaConfiguration : Maybe SmsMfaConfigType
    , softwareTokenMfaConfiguration : Maybe SoftwareTokenMfaConfigType
    , mfaConfiguration : Maybe UserPoolMfaType
    }


{-| <p>Represents the request to set user settings.</p>
-}
type alias SetUserSettingsRequest =
    { accessToken : String
    , mFAOptions : (List MFAOptionType)
    }


{-| <p>Represents the request to register a user.</p>
-}
type alias SignUpRequest =
    { clientId : String
    , secretHash : Maybe String
    , username : String
    , password : String
    , userAttributes : Maybe (List AttributeType)
    , validationData : Maybe (List AttributeType)
    , analyticsMetadata : Maybe AnalyticsMetadataType
    , userContextData : Maybe UserContextDataType
    }


{-| <p>Represents the request to start the user import job.</p>
-}
type alias StartUserImportJobRequest =
    { userPoolId : String
    , jobId : String
    }


{-| <p>Represents the request to stop the user import job.</p>
-}
type alias StopUserImportJobRequest =
    { userPoolId : String
    , jobId : String
    }


{-| undefined
-}
type alias TagResourceRequest =
    { resourceArn : String
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias UntagResourceRequest =
    { resourceArn : String
    , tagKeys : Maybe (List String)
    }


{-| undefined
-}
type alias UpdateAuthEventFeedbackRequest =
    { userPoolId : String
    , username : String
    , eventId : String
    , feedbackToken : String
    , feedbackValue : FeedbackValueType
    }


{-| <p>Represents the request to update the device status.</p>
-}
type alias UpdateDeviceStatusRequest =
    { accessToken : String
    , deviceKey : String
    , deviceRememberedStatus : Maybe DeviceRememberedStatusType
    }


{-| undefined
-}
type alias UpdateGroupRequest =
    { groupName : String
    , userPoolId : String
    , description : Maybe String
    , roleArn : Maybe String
    , precedence : Maybe Int
    }


{-| undefined
-}
type alias UpdateIdentityProviderRequest =
    { userPoolId : String
    , providerName : String
    , providerDetails : Maybe (Dict String String)
    , attributeMapping : Maybe (Dict String String)
    , idpIdentifiers : Maybe (List String)
    }


{-| undefined
-}
type alias UpdateResourceServerRequest =
    { userPoolId : String
    , identifier : String
    , name : String
    , scopes : Maybe (List ResourceServerScopeType)
    }


{-| <p>Represents the request to update user attributes.</p>
-}
type alias UpdateUserAttributesRequest =
    { userAttributes : (List AttributeType)
    , accessToken : String
    }


{-| <p>Represents the request to update the user pool client.</p>
-}
type alias UpdateUserPoolClientRequest =
    { userPoolId : String
    , clientId : String
    , clientName : Maybe String
    , refreshTokenValidity : Maybe Int
    , readAttributes : Maybe (List String)
    , writeAttributes : Maybe (List String)
    , explicitAuthFlows : Maybe (List ExplicitAuthFlowsType)
    , supportedIdentityProviders : Maybe (List String)
    , callbackURLs : Maybe (List String)
    , logoutURLs : Maybe (List String)
    , defaultRedirectURI : Maybe String
    , allowedOAuthFlows : Maybe (List OAuthFlowType)
    , allowedOAuthScopes : Maybe (List String)
    , allowedOAuthFlowsUserPoolClient : Maybe Bool
    , analyticsConfiguration : Maybe AnalyticsConfigurationType
    }


{-| <p>The UpdateUserPoolDomain request input.</p>
-}
type alias UpdateUserPoolDomainRequest =
    { domain : String
    , userPoolId : String
    , customDomainConfig : CustomDomainConfigType
    }


{-| <p>Represents the request to update the user pool.</p>
-}
type alias UpdateUserPoolRequest =
    { userPoolId : String
    , policies : Maybe UserPoolPolicyType
    , lambdaConfig : Maybe LambdaConfigType
    , autoVerifiedAttributes : Maybe (List VerifiedAttributeType)
    , smsVerificationMessage : Maybe String
    , emailVerificationMessage : Maybe String
    , emailVerificationSubject : Maybe String
    , verificationMessageTemplate : Maybe VerificationMessageTemplateType
    , smsAuthenticationMessage : Maybe String
    , mfaConfiguration : Maybe UserPoolMfaType
    , deviceConfiguration : Maybe DeviceConfigurationType
    , emailConfiguration : Maybe EmailConfigurationType
    , smsConfiguration : Maybe SmsConfigurationType
    , userPoolTags : Maybe (Dict String String)
    , adminCreateUserConfig : Maybe AdminCreateUserConfigType
    , userPoolAddOns : Maybe UserPoolAddOnsType
    }


{-| undefined
-}
type alias VerifySoftwareTokenRequest =
    { accessToken : Maybe String
    , session : Maybe String
    , userCode : String
    , friendlyDeviceName : Maybe String
    }


{-| <p>Represents the request to verify user attributes.</p>
-}
type alias VerifyUserAttributeRequest =
    { accessToken : String
    , attributeName : String
    , code : String
    }






accountTakeoverActionTypeEncoder : AccountTakeoverActionType -> JE.Value
accountTakeoverActionTypeEncoder data =
    []
        
        
        |> (::) ("Notify", data.notify |> (JE.bool))
        
        
        
        |> (::) ("EventAction", data.eventAction |> (accountTakeoverEventActionTypeToString >> JE.string))
        
        
        |> JE.object






accountTakeoverActionsTypeEncoder : AccountTakeoverActionsType -> JE.Value
accountTakeoverActionsTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (accountTakeoverActionTypeEncoder)
            ("LowAction", data.lowAction)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (accountTakeoverActionTypeEncoder)
            ("MediumAction", data.mediumAction)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (accountTakeoverActionTypeEncoder)
            ("HighAction", data.highAction)
        
        
        |> JE.object










accountTakeoverRiskConfigurationTypeEncoder : AccountTakeoverRiskConfigurationType -> JE.Value
accountTakeoverRiskConfigurationTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (notifyConfigurationTypeEncoder)
            ("NotifyConfiguration", data.notifyConfiguration)
        
        
        
        |> (::) ("Actions", data.actions |> (accountTakeoverActionsTypeEncoder))
        
        
        |> JE.object






addCustomAttributesRequestEncoder : AddCustomAttributesRequest -> JE.Value
addCustomAttributesRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("CustomAttributes", data.customAttributes |> (JE.list (schemaAttributeTypeEncoder)))
        
        
        |> JE.object






addCustomAttributesResponseEncoder : AddCustomAttributesResponse -> JE.Value
addCustomAttributesResponseEncoder data =
    []
        
        |> JE.object






adminAddUserToGroupRequestEncoder : AdminAddUserToGroupRequest -> JE.Value
adminAddUserToGroupRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("GroupName", data.groupName |> (JE.string))
        
        
        |> JE.object






adminConfirmSignUpRequestEncoder : AdminConfirmSignUpRequest -> JE.Value
adminConfirmSignUpRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        |> JE.object






adminConfirmSignUpResponseEncoder : AdminConfirmSignUpResponse -> JE.Value
adminConfirmSignUpResponseEncoder data =
    []
        
        |> JE.object






adminCreateUserConfigTypeEncoder : AdminCreateUserConfigType -> JE.Value
adminCreateUserConfigTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowAdminCreateUserOnly", data.allowAdminCreateUserOnly)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("UnusedAccountValidityDays", data.unusedAccountValidityDays)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (messageTemplateTypeEncoder)
            ("InviteMessageTemplate", data.inviteMessageTemplate)
        
        
        |> JE.object






adminCreateUserRequestEncoder : AdminCreateUserRequest -> JE.Value
adminCreateUserRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeTypeEncoder))
            ("UserAttributes", data.userAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeTypeEncoder))
            ("ValidationData", data.validationData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TemporaryPassword", data.temporaryPassword)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ForceAliasCreation", data.forceAliasCreation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (messageActionTypeToString >> JE.string)
            ("MessageAction", data.messageAction)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (deliveryMediumTypeToString >> JE.string))
            ("DesiredDeliveryMediums", data.desiredDeliveryMediums)
        
        
        |> JE.object






adminCreateUserResponseEncoder : AdminCreateUserResponse -> JE.Value
adminCreateUserResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (userTypeEncoder)
            ("User", data.user)
        
        
        |> JE.object






adminDeleteUserAttributesRequestEncoder : AdminDeleteUserAttributesRequest -> JE.Value
adminDeleteUserAttributesRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("UserAttributeNames", data.userAttributeNames |> (JE.list (JE.string)))
        
        
        |> JE.object






adminDeleteUserAttributesResponseEncoder : AdminDeleteUserAttributesResponse -> JE.Value
adminDeleteUserAttributesResponseEncoder data =
    []
        
        |> JE.object






adminDeleteUserRequestEncoder : AdminDeleteUserRequest -> JE.Value
adminDeleteUserRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        |> JE.object






adminDisableProviderForUserRequestEncoder : AdminDisableProviderForUserRequest -> JE.Value
adminDisableProviderForUserRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("User", data.user |> (providerUserIdentifierTypeEncoder))
        
        
        |> JE.object






adminDisableProviderForUserResponseEncoder : AdminDisableProviderForUserResponse -> JE.Value
adminDisableProviderForUserResponseEncoder data =
    []
        
        |> JE.object






adminDisableUserRequestEncoder : AdminDisableUserRequest -> JE.Value
adminDisableUserRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        |> JE.object






adminDisableUserResponseEncoder : AdminDisableUserResponse -> JE.Value
adminDisableUserResponseEncoder data =
    []
        
        |> JE.object






adminEnableUserRequestEncoder : AdminEnableUserRequest -> JE.Value
adminEnableUserRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        |> JE.object






adminEnableUserResponseEncoder : AdminEnableUserResponse -> JE.Value
adminEnableUserResponseEncoder data =
    []
        
        |> JE.object






adminForgetDeviceRequestEncoder : AdminForgetDeviceRequest -> JE.Value
adminForgetDeviceRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("DeviceKey", data.deviceKey |> (JE.string))
        
        
        |> JE.object






adminGetDeviceRequestEncoder : AdminGetDeviceRequest -> JE.Value
adminGetDeviceRequestEncoder data =
    []
        
        
        |> (::) ("DeviceKey", data.deviceKey |> (JE.string))
        
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        |> JE.object






adminGetDeviceResponseEncoder : AdminGetDeviceResponse -> JE.Value
adminGetDeviceResponseEncoder data =
    []
        
        
        |> (::) ("Device", data.device |> (deviceTypeEncoder))
        
        
        |> JE.object






adminGetUserRequestEncoder : AdminGetUserRequest -> JE.Value
adminGetUserRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        |> JE.object






adminGetUserResponseEncoder : AdminGetUserResponse -> JE.Value
adminGetUserResponseEncoder data =
    []
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeTypeEncoder))
            ("UserAttributes", data.userAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("UserCreateDate", data.userCreateDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("UserLastModifiedDate", data.userLastModifiedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userStatusTypeToString >> JE.string)
            ("UserStatus", data.userStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (mFAOptionTypeEncoder))
            ("MFAOptions", data.mFAOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PreferredMfaSetting", data.preferredMfaSetting)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("UserMFASettingList", data.userMFASettingList)
        
        
        |> JE.object






adminInitiateAuthRequestEncoder : AdminInitiateAuthRequest -> JE.Value
adminInitiateAuthRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("ClientId", data.clientId |> (JE.string))
        
        
        
        |> (::) ("AuthFlow", data.authFlow |> (authFlowTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("AuthParameters", data.authParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ClientMetadata", data.clientMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (analyticsMetadataTypeEncoder)
            ("AnalyticsMetadata", data.analyticsMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (contextDataTypeEncoder)
            ("ContextData", data.contextData)
        
        
        |> JE.object






adminInitiateAuthResponseEncoder : AdminInitiateAuthResponse -> JE.Value
adminInitiateAuthResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (challengeNameTypeToString >> JE.string)
            ("ChallengeName", data.challengeName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Session", data.session)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ChallengeParameters", data.challengeParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (authenticationResultTypeEncoder)
            ("AuthenticationResult", data.authenticationResult)
        
        
        |> JE.object






adminLinkProviderForUserRequestEncoder : AdminLinkProviderForUserRequest -> JE.Value
adminLinkProviderForUserRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("DestinationUser", data.destinationUser |> (providerUserIdentifierTypeEncoder))
        
        
        
        |> (::) ("SourceUser", data.sourceUser |> (providerUserIdentifierTypeEncoder))
        
        
        |> JE.object






adminLinkProviderForUserResponseEncoder : AdminLinkProviderForUserResponse -> JE.Value
adminLinkProviderForUserResponseEncoder data =
    []
        
        |> JE.object






adminListDevicesRequestEncoder : AdminListDevicesRequest -> JE.Value
adminListDevicesRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        |> JE.object






adminListDevicesResponseEncoder : AdminListDevicesResponse -> JE.Value
adminListDevicesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (deviceTypeEncoder))
            ("Devices", data.devices)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        |> JE.object






adminListGroupsForUserRequestEncoder : AdminListGroupsForUserRequest -> JE.Value
adminListGroupsForUserRequestEncoder data =
    []
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






adminListGroupsForUserResponseEncoder : AdminListGroupsForUserResponse -> JE.Value
adminListGroupsForUserResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (groupTypeEncoder))
            ("Groups", data.groups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






adminListUserAuthEventsRequestEncoder : AdminListUserAuthEventsRequest -> JE.Value
adminListUserAuthEventsRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






adminListUserAuthEventsResponseEncoder : AdminListUserAuthEventsResponse -> JE.Value
adminListUserAuthEventsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (authEventTypeEncoder))
            ("AuthEvents", data.authEvents)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






adminRemoveUserFromGroupRequestEncoder : AdminRemoveUserFromGroupRequest -> JE.Value
adminRemoveUserFromGroupRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("GroupName", data.groupName |> (JE.string))
        
        
        |> JE.object






adminResetUserPasswordRequestEncoder : AdminResetUserPasswordRequest -> JE.Value
adminResetUserPasswordRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        |> JE.object






adminResetUserPasswordResponseEncoder : AdminResetUserPasswordResponse -> JE.Value
adminResetUserPasswordResponseEncoder data =
    []
        
        |> JE.object






adminRespondToAuthChallengeRequestEncoder : AdminRespondToAuthChallengeRequest -> JE.Value
adminRespondToAuthChallengeRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("ClientId", data.clientId |> (JE.string))
        
        
        
        |> (::) ("ChallengeName", data.challengeName |> (challengeNameTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ChallengeResponses", data.challengeResponses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Session", data.session)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (analyticsMetadataTypeEncoder)
            ("AnalyticsMetadata", data.analyticsMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (contextDataTypeEncoder)
            ("ContextData", data.contextData)
        
        
        |> JE.object






adminRespondToAuthChallengeResponseEncoder : AdminRespondToAuthChallengeResponse -> JE.Value
adminRespondToAuthChallengeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (challengeNameTypeToString >> JE.string)
            ("ChallengeName", data.challengeName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Session", data.session)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ChallengeParameters", data.challengeParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (authenticationResultTypeEncoder)
            ("AuthenticationResult", data.authenticationResult)
        
        
        |> JE.object






adminSetUserMFAPreferenceRequestEncoder : AdminSetUserMFAPreferenceRequest -> JE.Value
adminSetUserMFAPreferenceRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (sMSMfaSettingsTypeEncoder)
            ("SMSMfaSettings", data.sMSMfaSettings)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (softwareTokenMfaSettingsTypeEncoder)
            ("SoftwareTokenMfaSettings", data.softwareTokenMfaSettings)
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        |> JE.object






adminSetUserMFAPreferenceResponseEncoder : AdminSetUserMFAPreferenceResponse -> JE.Value
adminSetUserMFAPreferenceResponseEncoder data =
    []
        
        |> JE.object






adminSetUserPasswordRequestEncoder : AdminSetUserPasswordRequest -> JE.Value
adminSetUserPasswordRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("Password", data.password |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Permanent", data.permanent)
        
        
        |> JE.object






adminSetUserPasswordResponseEncoder : AdminSetUserPasswordResponse -> JE.Value
adminSetUserPasswordResponseEncoder data =
    []
        
        |> JE.object






adminSetUserSettingsRequestEncoder : AdminSetUserSettingsRequest -> JE.Value
adminSetUserSettingsRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("MFAOptions", data.mFAOptions |> (JE.list (mFAOptionTypeEncoder)))
        
        
        |> JE.object






adminSetUserSettingsResponseEncoder : AdminSetUserSettingsResponse -> JE.Value
adminSetUserSettingsResponseEncoder data =
    []
        
        |> JE.object






adminUpdateAuthEventFeedbackRequestEncoder : AdminUpdateAuthEventFeedbackRequest -> JE.Value
adminUpdateAuthEventFeedbackRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("EventId", data.eventId |> (JE.string))
        
        
        
        |> (::) ("FeedbackValue", data.feedbackValue |> (feedbackValueTypeToString >> JE.string))
        
        
        |> JE.object






adminUpdateAuthEventFeedbackResponseEncoder : AdminUpdateAuthEventFeedbackResponse -> JE.Value
adminUpdateAuthEventFeedbackResponseEncoder data =
    []
        
        |> JE.object






adminUpdateDeviceStatusRequestEncoder : AdminUpdateDeviceStatusRequest -> JE.Value
adminUpdateDeviceStatusRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("DeviceKey", data.deviceKey |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceRememberedStatusTypeToString >> JE.string)
            ("DeviceRememberedStatus", data.deviceRememberedStatus)
        
        
        |> JE.object






adminUpdateDeviceStatusResponseEncoder : AdminUpdateDeviceStatusResponse -> JE.Value
adminUpdateDeviceStatusResponseEncoder data =
    []
        
        |> JE.object






adminUpdateUserAttributesRequestEncoder : AdminUpdateUserAttributesRequest -> JE.Value
adminUpdateUserAttributesRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("UserAttributes", data.userAttributes |> (JE.list (attributeTypeEncoder)))
        
        
        |> JE.object






adminUpdateUserAttributesResponseEncoder : AdminUpdateUserAttributesResponse -> JE.Value
adminUpdateUserAttributesResponseEncoder data =
    []
        
        |> JE.object






adminUserGlobalSignOutRequestEncoder : AdminUserGlobalSignOutRequest -> JE.Value
adminUserGlobalSignOutRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        |> JE.object






adminUserGlobalSignOutResponseEncoder : AdminUserGlobalSignOutResponse -> JE.Value
adminUserGlobalSignOutResponseEncoder data =
    []
        
        |> JE.object














analyticsConfigurationTypeEncoder : AnalyticsConfigurationType -> JE.Value
analyticsConfigurationTypeEncoder data =
    []
        
        
        |> (::) ("ApplicationId", data.applicationId |> (JE.string))
        
        
        
        |> (::) ("RoleArn", data.roleArn |> (JE.string))
        
        
        
        |> (::) ("ExternalId", data.externalId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UserDataShared", data.userDataShared)
        
        
        |> JE.object






analyticsMetadataTypeEncoder : AnalyticsMetadataType -> JE.Value
analyticsMetadataTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AnalyticsEndpointId", data.analyticsEndpointId)
        
        
        |> JE.object






associateSoftwareTokenRequestEncoder : AssociateSoftwareTokenRequest -> JE.Value
associateSoftwareTokenRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AccessToken", data.accessToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Session", data.session)
        
        
        |> JE.object






associateSoftwareTokenResponseEncoder : AssociateSoftwareTokenResponse -> JE.Value
associateSoftwareTokenResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecretCode", data.secretCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Session", data.session)
        
        
        |> JE.object










attributeTypeEncoder : AttributeType -> JE.Value
attributeTypeEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object






authEventTypeEncoder : AuthEventType -> JE.Value
authEventTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventId", data.eventId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventTypeToString >> JE.string)
            ("EventType", data.eventType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventResponseTypeToString >> JE.string)
            ("EventResponse", data.eventResponse)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventRiskTypeEncoder)
            ("EventRisk", data.eventRisk)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (challengeResponseTypeEncoder))
            ("ChallengeResponses", data.challengeResponses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventContextDataTypeEncoder)
            ("EventContextData", data.eventContextData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventFeedbackTypeEncoder)
            ("EventFeedback", data.eventFeedback)
        
        
        |> JE.object










authenticationResultTypeEncoder : AuthenticationResultType -> JE.Value
authenticationResultTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AccessToken", data.accessToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ExpiresIn", data.expiresIn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TokenType", data.tokenType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RefreshToken", data.refreshToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IdToken", data.idToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (newDeviceMetadataTypeEncoder)
            ("NewDeviceMetadata", data.newDeviceMetadata)
        
        
        |> JE.object


















challengeResponseTypeEncoder : ChallengeResponseType -> JE.Value
challengeResponseTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (challengeNameToString >> JE.string)
            ("ChallengeName", data.challengeName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (challengeResponseToString >> JE.string)
            ("ChallengeResponse", data.challengeResponse)
        
        
        |> JE.object






changePasswordRequestEncoder : ChangePasswordRequest -> JE.Value
changePasswordRequestEncoder data =
    []
        
        
        |> (::) ("PreviousPassword", data.previousPassword |> (JE.string))
        
        
        
        |> (::) ("ProposedPassword", data.proposedPassword |> (JE.string))
        
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        |> JE.object






changePasswordResponseEncoder : ChangePasswordResponse -> JE.Value
changePasswordResponseEncoder data =
    []
        
        |> JE.object






codeDeliveryDetailsTypeEncoder : CodeDeliveryDetailsType -> JE.Value
codeDeliveryDetailsTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Destination", data.destination)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deliveryMediumTypeToString >> JE.string)
            ("DeliveryMedium", data.deliveryMedium)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AttributeName", data.attributeName)
        
        
        |> JE.object






compromisedCredentialsActionsTypeEncoder : CompromisedCredentialsActionsType -> JE.Value
compromisedCredentialsActionsTypeEncoder data =
    []
        
        
        |> (::) ("EventAction", data.eventAction |> (compromisedCredentialsEventActionTypeToString >> JE.string))
        
        
        |> JE.object










compromisedCredentialsRiskConfigurationTypeEncoder : CompromisedCredentialsRiskConfigurationType -> JE.Value
compromisedCredentialsRiskConfigurationTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventFilterTypeToString >> JE.string))
            ("EventFilter", data.eventFilter)
        
        
        
        |> (::) ("Actions", data.actions |> (compromisedCredentialsActionsTypeEncoder))
        
        
        |> JE.object






confirmDeviceRequestEncoder : ConfirmDeviceRequest -> JE.Value
confirmDeviceRequestEncoder data =
    []
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        
        |> (::) ("DeviceKey", data.deviceKey |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceSecretVerifierConfigTypeEncoder)
            ("DeviceSecretVerifierConfig", data.deviceSecretVerifierConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DeviceName", data.deviceName)
        
        
        |> JE.object






confirmDeviceResponseEncoder : ConfirmDeviceResponse -> JE.Value
confirmDeviceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UserConfirmationNecessary", data.userConfirmationNecessary)
        
        
        |> JE.object






confirmForgotPasswordRequestEncoder : ConfirmForgotPasswordRequest -> JE.Value
confirmForgotPasswordRequestEncoder data =
    []
        
        
        |> (::) ("ClientId", data.clientId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecretHash", data.secretHash)
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("ConfirmationCode", data.confirmationCode |> (JE.string))
        
        
        
        |> (::) ("Password", data.password |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (analyticsMetadataTypeEncoder)
            ("AnalyticsMetadata", data.analyticsMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userContextDataTypeEncoder)
            ("UserContextData", data.userContextData)
        
        
        |> JE.object






confirmForgotPasswordResponseEncoder : ConfirmForgotPasswordResponse -> JE.Value
confirmForgotPasswordResponseEncoder data =
    []
        
        |> JE.object






confirmSignUpRequestEncoder : ConfirmSignUpRequest -> JE.Value
confirmSignUpRequestEncoder data =
    []
        
        
        |> (::) ("ClientId", data.clientId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecretHash", data.secretHash)
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("ConfirmationCode", data.confirmationCode |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ForceAliasCreation", data.forceAliasCreation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (analyticsMetadataTypeEncoder)
            ("AnalyticsMetadata", data.analyticsMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userContextDataTypeEncoder)
            ("UserContextData", data.userContextData)
        
        
        |> JE.object






confirmSignUpResponseEncoder : ConfirmSignUpResponse -> JE.Value
confirmSignUpResponseEncoder data =
    []
        
        |> JE.object






contextDataTypeEncoder : ContextDataType -> JE.Value
contextDataTypeEncoder data =
    []
        
        
        |> (::) ("IpAddress", data.ipAddress |> (JE.string))
        
        
        
        |> (::) ("ServerName", data.serverName |> (JE.string))
        
        
        
        |> (::) ("ServerPath", data.serverPath |> (JE.string))
        
        
        
        |> (::) ("HttpHeaders", data.httpHeaders |> (JE.list (httpHeaderEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EncodedData", data.encodedData)
        
        
        |> JE.object






createGroupRequestEncoder : CreateGroupRequest -> JE.Value
createGroupRequestEncoder data =
    []
        
        
        |> (::) ("GroupName", data.groupName |> (JE.string))
        
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Precedence", data.precedence)
        
        
        |> JE.object






createGroupResponseEncoder : CreateGroupResponse -> JE.Value
createGroupResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (groupTypeEncoder)
            ("Group", data.group)
        
        
        |> JE.object






createIdentityProviderRequestEncoder : CreateIdentityProviderRequest -> JE.Value
createIdentityProviderRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("ProviderName", data.providerName |> (JE.string))
        
        
        
        |> (::) ("ProviderType", data.providerType |> (identityProviderTypeTypeToString >> JE.string))
        
        
        
        |> (::) ("ProviderDetails", data.providerDetails |> (JE.dict identity (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("AttributeMapping", data.attributeMapping)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("IdpIdentifiers", data.idpIdentifiers)
        
        
        |> JE.object






createIdentityProviderResponseEncoder : CreateIdentityProviderResponse -> JE.Value
createIdentityProviderResponseEncoder data =
    []
        
        
        |> (::) ("IdentityProvider", data.identityProvider |> (identityProviderTypeEncoder))
        
        
        |> JE.object






createResourceServerRequestEncoder : CreateResourceServerRequest -> JE.Value
createResourceServerRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Identifier", data.identifier |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceServerScopeTypeEncoder))
            ("Scopes", data.scopes)
        
        
        |> JE.object






createResourceServerResponseEncoder : CreateResourceServerResponse -> JE.Value
createResourceServerResponseEncoder data =
    []
        
        
        |> (::) ("ResourceServer", data.resourceServer |> (resourceServerTypeEncoder))
        
        
        |> JE.object






createUserImportJobRequestEncoder : CreateUserImportJobRequest -> JE.Value
createUserImportJobRequestEncoder data =
    []
        
        
        |> (::) ("JobName", data.jobName |> (JE.string))
        
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("CloudWatchLogsRoleArn", data.cloudWatchLogsRoleArn |> (JE.string))
        
        
        |> JE.object






createUserImportJobResponseEncoder : CreateUserImportJobResponse -> JE.Value
createUserImportJobResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (userImportJobTypeEncoder)
            ("UserImportJob", data.userImportJob)
        
        
        |> JE.object






createUserPoolClientRequestEncoder : CreateUserPoolClientRequest -> JE.Value
createUserPoolClientRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("ClientName", data.clientName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("GenerateSecret", data.generateSecret)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RefreshTokenValidity", data.refreshTokenValidity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ReadAttributes", data.readAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("WriteAttributes", data.writeAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (explicitAuthFlowsTypeToString >> JE.string))
            ("ExplicitAuthFlows", data.explicitAuthFlows)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SupportedIdentityProviders", data.supportedIdentityProviders)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CallbackURLs", data.callbackURLs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("LogoutURLs", data.logoutURLs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultRedirectURI", data.defaultRedirectURI)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (oAuthFlowTypeToString >> JE.string))
            ("AllowedOAuthFlows", data.allowedOAuthFlows)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("AllowedOAuthScopes", data.allowedOAuthScopes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowedOAuthFlowsUserPoolClient", data.allowedOAuthFlowsUserPoolClient)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (analyticsConfigurationTypeEncoder)
            ("AnalyticsConfiguration", data.analyticsConfiguration)
        
        
        |> JE.object






createUserPoolClientResponseEncoder : CreateUserPoolClientResponse -> JE.Value
createUserPoolClientResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolClientTypeEncoder)
            ("UserPoolClient", data.userPoolClient)
        
        
        |> JE.object






createUserPoolDomainRequestEncoder : CreateUserPoolDomainRequest -> JE.Value
createUserPoolDomainRequestEncoder data =
    []
        
        
        |> (::) ("Domain", data.domain |> (JE.string))
        
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (customDomainConfigTypeEncoder)
            ("CustomDomainConfig", data.customDomainConfig)
        
        
        |> JE.object






createUserPoolDomainResponseEncoder : CreateUserPoolDomainResponse -> JE.Value
createUserPoolDomainResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CloudFrontDomain", data.cloudFrontDomain)
        
        
        |> JE.object






createUserPoolRequestEncoder : CreateUserPoolRequest -> JE.Value
createUserPoolRequestEncoder data =
    []
        
        
        |> (::) ("PoolName", data.poolName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolPolicyTypeEncoder)
            ("Policies", data.policies)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaConfigTypeEncoder)
            ("LambdaConfig", data.lambdaConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (verifiedAttributeTypeToString >> JE.string))
            ("AutoVerifiedAttributes", data.autoVerifiedAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (aliasAttributeTypeToString >> JE.string))
            ("AliasAttributes", data.aliasAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (usernameAttributeTypeToString >> JE.string))
            ("UsernameAttributes", data.usernameAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SmsVerificationMessage", data.smsVerificationMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailVerificationMessage", data.emailVerificationMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailVerificationSubject", data.emailVerificationSubject)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (verificationMessageTemplateTypeEncoder)
            ("VerificationMessageTemplate", data.verificationMessageTemplate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SmsAuthenticationMessage", data.smsAuthenticationMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolMfaTypeToString >> JE.string)
            ("MfaConfiguration", data.mfaConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceConfigurationTypeEncoder)
            ("DeviceConfiguration", data.deviceConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (emailConfigurationTypeEncoder)
            ("EmailConfiguration", data.emailConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (smsConfigurationTypeEncoder)
            ("SmsConfiguration", data.smsConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("UserPoolTags", data.userPoolTags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (adminCreateUserConfigTypeEncoder)
            ("AdminCreateUserConfig", data.adminCreateUserConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (schemaAttributeTypeEncoder))
            ("Schema", data.schema)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolAddOnsTypeEncoder)
            ("UserPoolAddOns", data.userPoolAddOns)
        
        
        |> JE.object






createUserPoolResponseEncoder : CreateUserPoolResponse -> JE.Value
createUserPoolResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolTypeEncoder)
            ("UserPool", data.userPool)
        
        
        |> JE.object






customDomainConfigTypeEncoder : CustomDomainConfigType -> JE.Value
customDomainConfigTypeEncoder data =
    []
        
        
        |> (::) ("CertificateArn", data.certificateArn |> (JE.string))
        
        
        |> JE.object










deleteGroupRequestEncoder : DeleteGroupRequest -> JE.Value
deleteGroupRequestEncoder data =
    []
        
        
        |> (::) ("GroupName", data.groupName |> (JE.string))
        
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        |> JE.object






deleteIdentityProviderRequestEncoder : DeleteIdentityProviderRequest -> JE.Value
deleteIdentityProviderRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("ProviderName", data.providerName |> (JE.string))
        
        
        |> JE.object






deleteResourceServerRequestEncoder : DeleteResourceServerRequest -> JE.Value
deleteResourceServerRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Identifier", data.identifier |> (JE.string))
        
        
        |> JE.object






deleteUserAttributesRequestEncoder : DeleteUserAttributesRequest -> JE.Value
deleteUserAttributesRequestEncoder data =
    []
        
        
        |> (::) ("UserAttributeNames", data.userAttributeNames |> (JE.list (JE.string)))
        
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        |> JE.object






deleteUserAttributesResponseEncoder : DeleteUserAttributesResponse -> JE.Value
deleteUserAttributesResponseEncoder data =
    []
        
        |> JE.object






deleteUserPoolClientRequestEncoder : DeleteUserPoolClientRequest -> JE.Value
deleteUserPoolClientRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("ClientId", data.clientId |> (JE.string))
        
        
        |> JE.object






deleteUserPoolDomainRequestEncoder : DeleteUserPoolDomainRequest -> JE.Value
deleteUserPoolDomainRequestEncoder data =
    []
        
        
        |> (::) ("Domain", data.domain |> (JE.string))
        
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        |> JE.object






deleteUserPoolDomainResponseEncoder : DeleteUserPoolDomainResponse -> JE.Value
deleteUserPoolDomainResponseEncoder data =
    []
        
        |> JE.object






deleteUserPoolRequestEncoder : DeleteUserPoolRequest -> JE.Value
deleteUserPoolRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        |> JE.object






deleteUserRequestEncoder : DeleteUserRequest -> JE.Value
deleteUserRequestEncoder data =
    []
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        |> JE.object










describeIdentityProviderRequestEncoder : DescribeIdentityProviderRequest -> JE.Value
describeIdentityProviderRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("ProviderName", data.providerName |> (JE.string))
        
        
        |> JE.object






describeIdentityProviderResponseEncoder : DescribeIdentityProviderResponse -> JE.Value
describeIdentityProviderResponseEncoder data =
    []
        
        
        |> (::) ("IdentityProvider", data.identityProvider |> (identityProviderTypeEncoder))
        
        
        |> JE.object






describeResourceServerRequestEncoder : DescribeResourceServerRequest -> JE.Value
describeResourceServerRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Identifier", data.identifier |> (JE.string))
        
        
        |> JE.object






describeResourceServerResponseEncoder : DescribeResourceServerResponse -> JE.Value
describeResourceServerResponseEncoder data =
    []
        
        
        |> (::) ("ResourceServer", data.resourceServer |> (resourceServerTypeEncoder))
        
        
        |> JE.object






describeRiskConfigurationRequestEncoder : DescribeRiskConfigurationRequest -> JE.Value
describeRiskConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientId", data.clientId)
        
        
        |> JE.object






describeRiskConfigurationResponseEncoder : DescribeRiskConfigurationResponse -> JE.Value
describeRiskConfigurationResponseEncoder data =
    []
        
        
        |> (::) ("RiskConfiguration", data.riskConfiguration |> (riskConfigurationTypeEncoder))
        
        
        |> JE.object






describeUserImportJobRequestEncoder : DescribeUserImportJobRequest -> JE.Value
describeUserImportJobRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        |> JE.object






describeUserImportJobResponseEncoder : DescribeUserImportJobResponse -> JE.Value
describeUserImportJobResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (userImportJobTypeEncoder)
            ("UserImportJob", data.userImportJob)
        
        
        |> JE.object






describeUserPoolClientRequestEncoder : DescribeUserPoolClientRequest -> JE.Value
describeUserPoolClientRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("ClientId", data.clientId |> (JE.string))
        
        
        |> JE.object






describeUserPoolClientResponseEncoder : DescribeUserPoolClientResponse -> JE.Value
describeUserPoolClientResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolClientTypeEncoder)
            ("UserPoolClient", data.userPoolClient)
        
        
        |> JE.object






describeUserPoolDomainRequestEncoder : DescribeUserPoolDomainRequest -> JE.Value
describeUserPoolDomainRequestEncoder data =
    []
        
        
        |> (::) ("Domain", data.domain |> (JE.string))
        
        
        |> JE.object






describeUserPoolDomainResponseEncoder : DescribeUserPoolDomainResponse -> JE.Value
describeUserPoolDomainResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (domainDescriptionTypeEncoder)
            ("DomainDescription", data.domainDescription)
        
        
        |> JE.object






describeUserPoolRequestEncoder : DescribeUserPoolRequest -> JE.Value
describeUserPoolRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        |> JE.object






describeUserPoolResponseEncoder : DescribeUserPoolResponse -> JE.Value
describeUserPoolResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolTypeEncoder)
            ("UserPool", data.userPool)
        
        
        |> JE.object






deviceConfigurationTypeEncoder : DeviceConfigurationType -> JE.Value
deviceConfigurationTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("ChallengeRequiredOnNewDevice", data.challengeRequiredOnNewDevice)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DeviceOnlyRememberedOnUserPrompt", data.deviceOnlyRememberedOnUserPrompt)
        
        
        |> JE.object










deviceSecretVerifierConfigTypeEncoder : DeviceSecretVerifierConfigType -> JE.Value
deviceSecretVerifierConfigTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PasswordVerifier", data.passwordVerifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Salt", data.salt)
        
        
        |> JE.object






deviceTypeEncoder : DeviceType -> JE.Value
deviceTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DeviceKey", data.deviceKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeTypeEncoder))
            ("DeviceAttributes", data.deviceAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("DeviceCreateDate", data.deviceCreateDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("DeviceLastModifiedDate", data.deviceLastModifiedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("DeviceLastAuthenticatedDate", data.deviceLastAuthenticatedDate)
        
        
        |> JE.object






domainDescriptionTypeEncoder : DomainDescriptionType -> JE.Value
domainDescriptionTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserPoolId", data.userPoolId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AWSAccountId", data.aWSAccountId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Domain", data.domain)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("S3Bucket", data.s3Bucket)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CloudFrontDistribution", data.cloudFrontDistribution)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (domainStatusTypeToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (customDomainConfigTypeEncoder)
            ("CustomDomainConfig", data.customDomainConfig)
        
        
        |> JE.object










emailConfigurationTypeEncoder : EmailConfigurationType -> JE.Value
emailConfigurationTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SourceArn", data.sourceArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ReplyToEmailAddress", data.replyToEmailAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (emailSendingAccountTypeToString >> JE.string)
            ("EmailSendingAccount", data.emailSendingAccount)
        
        
        |> JE.object










eventContextDataTypeEncoder : EventContextDataType -> JE.Value
eventContextDataTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IpAddress", data.ipAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DeviceName", data.deviceName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Timezone", data.timezone)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("City", data.city)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Country", data.country)
        
        
        |> JE.object






eventFeedbackTypeEncoder : EventFeedbackType -> JE.Value
eventFeedbackTypeEncoder data =
    []
        
        
        |> (::) ("FeedbackValue", data.feedbackValue |> (feedbackValueTypeToString >> JE.string))
        
        
        
        |> (::) ("Provider", data.provider |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("FeedbackDate", data.feedbackDate)
        
        
        |> JE.object














eventRiskTypeEncoder : EventRiskType -> JE.Value
eventRiskTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (riskDecisionTypeToString >> JE.string)
            ("RiskDecision", data.riskDecision)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (riskLevelTypeToString >> JE.string)
            ("RiskLevel", data.riskLevel)
        
        
        |> JE.object


















forgetDeviceRequestEncoder : ForgetDeviceRequest -> JE.Value
forgetDeviceRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AccessToken", data.accessToken)
        
        
        
        |> (::) ("DeviceKey", data.deviceKey |> (JE.string))
        
        
        |> JE.object






forgotPasswordRequestEncoder : ForgotPasswordRequest -> JE.Value
forgotPasswordRequestEncoder data =
    []
        
        
        |> (::) ("ClientId", data.clientId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecretHash", data.secretHash)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userContextDataTypeEncoder)
            ("UserContextData", data.userContextData)
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (analyticsMetadataTypeEncoder)
            ("AnalyticsMetadata", data.analyticsMetadata)
        
        
        |> JE.object






forgotPasswordResponseEncoder : ForgotPasswordResponse -> JE.Value
forgotPasswordResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (codeDeliveryDetailsTypeEncoder)
            ("CodeDeliveryDetails", data.codeDeliveryDetails)
        
        
        |> JE.object






getCSVHeaderRequestEncoder : GetCSVHeaderRequest -> JE.Value
getCSVHeaderRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        |> JE.object






getCSVHeaderResponseEncoder : GetCSVHeaderResponse -> JE.Value
getCSVHeaderResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserPoolId", data.userPoolId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CSVHeader", data.cSVHeader)
        
        
        |> JE.object






getDeviceRequestEncoder : GetDeviceRequest -> JE.Value
getDeviceRequestEncoder data =
    []
        
        
        |> (::) ("DeviceKey", data.deviceKey |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AccessToken", data.accessToken)
        
        
        |> JE.object






getDeviceResponseEncoder : GetDeviceResponse -> JE.Value
getDeviceResponseEncoder data =
    []
        
        
        |> (::) ("Device", data.device |> (deviceTypeEncoder))
        
        
        |> JE.object






getGroupRequestEncoder : GetGroupRequest -> JE.Value
getGroupRequestEncoder data =
    []
        
        
        |> (::) ("GroupName", data.groupName |> (JE.string))
        
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        |> JE.object






getGroupResponseEncoder : GetGroupResponse -> JE.Value
getGroupResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (groupTypeEncoder)
            ("Group", data.group)
        
        
        |> JE.object






getIdentityProviderByIdentifierRequestEncoder : GetIdentityProviderByIdentifierRequest -> JE.Value
getIdentityProviderByIdentifierRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("IdpIdentifier", data.idpIdentifier |> (JE.string))
        
        
        |> JE.object






getIdentityProviderByIdentifierResponseEncoder : GetIdentityProviderByIdentifierResponse -> JE.Value
getIdentityProviderByIdentifierResponseEncoder data =
    []
        
        
        |> (::) ("IdentityProvider", data.identityProvider |> (identityProviderTypeEncoder))
        
        
        |> JE.object






getSigningCertificateRequestEncoder : GetSigningCertificateRequest -> JE.Value
getSigningCertificateRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        |> JE.object






getSigningCertificateResponseEncoder : GetSigningCertificateResponse -> JE.Value
getSigningCertificateResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Certificate", data.certificate)
        
        
        |> JE.object






getUICustomizationRequestEncoder : GetUICustomizationRequest -> JE.Value
getUICustomizationRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientId", data.clientId)
        
        
        |> JE.object






getUICustomizationResponseEncoder : GetUICustomizationResponse -> JE.Value
getUICustomizationResponseEncoder data =
    []
        
        
        |> (::) ("UICustomization", data.uICustomization |> (uICustomizationTypeEncoder))
        
        
        |> JE.object






getUserAttributeVerificationCodeRequestEncoder : GetUserAttributeVerificationCodeRequest -> JE.Value
getUserAttributeVerificationCodeRequestEncoder data =
    []
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        
        |> (::) ("AttributeName", data.attributeName |> (JE.string))
        
        
        |> JE.object






getUserAttributeVerificationCodeResponseEncoder : GetUserAttributeVerificationCodeResponse -> JE.Value
getUserAttributeVerificationCodeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (codeDeliveryDetailsTypeEncoder)
            ("CodeDeliveryDetails", data.codeDeliveryDetails)
        
        
        |> JE.object






getUserPoolMfaConfigRequestEncoder : GetUserPoolMfaConfigRequest -> JE.Value
getUserPoolMfaConfigRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        |> JE.object






getUserPoolMfaConfigResponseEncoder : GetUserPoolMfaConfigResponse -> JE.Value
getUserPoolMfaConfigResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (smsMfaConfigTypeEncoder)
            ("SmsMfaConfiguration", data.smsMfaConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (softwareTokenMfaConfigTypeEncoder)
            ("SoftwareTokenMfaConfiguration", data.softwareTokenMfaConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolMfaTypeToString >> JE.string)
            ("MfaConfiguration", data.mfaConfiguration)
        
        
        |> JE.object






getUserRequestEncoder : GetUserRequest -> JE.Value
getUserRequestEncoder data =
    []
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        |> JE.object






getUserResponseEncoder : GetUserResponse -> JE.Value
getUserResponseEncoder data =
    []
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("UserAttributes", data.userAttributes |> (JE.list (attributeTypeEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (mFAOptionTypeEncoder))
            ("MFAOptions", data.mFAOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PreferredMfaSetting", data.preferredMfaSetting)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("UserMFASettingList", data.userMFASettingList)
        
        
        |> JE.object






globalSignOutRequestEncoder : GlobalSignOutRequest -> JE.Value
globalSignOutRequestEncoder data =
    []
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        |> JE.object






globalSignOutResponseEncoder : GlobalSignOutResponse -> JE.Value
globalSignOutResponseEncoder data =
    []
        
        |> JE.object






groupTypeEncoder : GroupType -> JE.Value
groupTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GroupName", data.groupName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserPoolId", data.userPoolId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Precedence", data.precedence)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastModifiedDate", data.lastModifiedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        |> JE.object






httpHeaderEncoder : HttpHeader -> JE.Value
httpHeaderEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("headerName", data.headerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("headerValue", data.headerValue)
        
        
        |> JE.object






identityProviderTypeEncoder : IdentityProviderType -> JE.Value
identityProviderTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserPoolId", data.userPoolId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProviderName", data.providerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (identityProviderTypeTypeToString >> JE.string)
            ("ProviderType", data.providerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ProviderDetails", data.providerDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("AttributeMapping", data.attributeMapping)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("IdpIdentifiers", data.idpIdentifiers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastModifiedDate", data.lastModifiedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        |> JE.object










initiateAuthRequestEncoder : InitiateAuthRequest -> JE.Value
initiateAuthRequestEncoder data =
    []
        
        
        |> (::) ("AuthFlow", data.authFlow |> (authFlowTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("AuthParameters", data.authParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ClientMetadata", data.clientMetadata)
        
        
        
        |> (::) ("ClientId", data.clientId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (analyticsMetadataTypeEncoder)
            ("AnalyticsMetadata", data.analyticsMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userContextDataTypeEncoder)
            ("UserContextData", data.userContextData)
        
        
        |> JE.object






initiateAuthResponseEncoder : InitiateAuthResponse -> JE.Value
initiateAuthResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (challengeNameTypeToString >> JE.string)
            ("ChallengeName", data.challengeName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Session", data.session)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ChallengeParameters", data.challengeParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (authenticationResultTypeEncoder)
            ("AuthenticationResult", data.authenticationResult)
        
        
        |> JE.object






lambdaConfigTypeEncoder : LambdaConfigType -> JE.Value
lambdaConfigTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PreSignUp", data.preSignUp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomMessage", data.customMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PostConfirmation", data.postConfirmation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PreAuthentication", data.preAuthentication)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PostAuthentication", data.postAuthentication)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefineAuthChallenge", data.defineAuthChallenge)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreateAuthChallenge", data.createAuthChallenge)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VerifyAuthChallengeResponse", data.verifyAuthChallengeResponse)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PreTokenGeneration", data.preTokenGeneration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserMigration", data.userMigration)
        
        
        |> JE.object






listDevicesRequestEncoder : ListDevicesRequest -> JE.Value
listDevicesRequestEncoder data =
    []
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        |> JE.object






listDevicesResponseEncoder : ListDevicesResponse -> JE.Value
listDevicesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (deviceTypeEncoder))
            ("Devices", data.devices)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        |> JE.object






listGroupsRequestEncoder : ListGroupsRequest -> JE.Value
listGroupsRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listGroupsResponseEncoder : ListGroupsResponse -> JE.Value
listGroupsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (groupTypeEncoder))
            ("Groups", data.groups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listIdentityProvidersRequestEncoder : ListIdentityProvidersRequest -> JE.Value
listIdentityProvidersRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listIdentityProvidersResponseEncoder : ListIdentityProvidersResponse -> JE.Value
listIdentityProvidersResponseEncoder data =
    []
        
        
        |> (::) ("Providers", data.providers |> (JE.list (providerDescriptionEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listResourceServersRequestEncoder : ListResourceServersRequest -> JE.Value
listResourceServersRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listResourceServersResponseEncoder : ListResourceServersResponse -> JE.Value
listResourceServersResponseEncoder data =
    []
        
        
        |> (::) ("ResourceServers", data.resourceServers |> (JE.list (resourceServerTypeEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listTagsForResourceRequestEncoder : ListTagsForResourceRequest -> JE.Value
listTagsForResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        |> JE.object






listTagsForResourceResponseEncoder : ListTagsForResourceResponse -> JE.Value
listTagsForResourceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object






listUserImportJobsRequestEncoder : ListUserImportJobsRequest -> JE.Value
listUserImportJobsRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("MaxResults", data.maxResults |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        |> JE.object






listUserImportJobsResponseEncoder : ListUserImportJobsResponse -> JE.Value
listUserImportJobsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userImportJobTypeEncoder))
            ("UserImportJobs", data.userImportJobs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        |> JE.object






listUserPoolClientsRequestEncoder : ListUserPoolClientsRequest -> JE.Value
listUserPoolClientsRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listUserPoolClientsResponseEncoder : ListUserPoolClientsResponse -> JE.Value
listUserPoolClientsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userPoolClientDescriptionEncoder))
            ("UserPoolClients", data.userPoolClients)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listUserPoolsRequestEncoder : ListUserPoolsRequest -> JE.Value
listUserPoolsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        
        |> (::) ("MaxResults", data.maxResults |> (JE.int))
        
        
        |> JE.object






listUserPoolsResponseEncoder : ListUserPoolsResponse -> JE.Value
listUserPoolsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userPoolDescriptionTypeEncoder))
            ("UserPools", data.userPools)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listUsersInGroupRequestEncoder : ListUsersInGroupRequest -> JE.Value
listUsersInGroupRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("GroupName", data.groupName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listUsersInGroupResponseEncoder : ListUsersInGroupResponse -> JE.Value
listUsersInGroupResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userTypeEncoder))
            ("Users", data.users)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listUsersRequestEncoder : ListUsersRequest -> JE.Value
listUsersRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("AttributesToGet", data.attributesToGet)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Filter", data.filter)
        
        
        |> JE.object






listUsersResponseEncoder : ListUsersResponse -> JE.Value
listUsersResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (userTypeEncoder))
            ("Users", data.users)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PaginationToken", data.paginationToken)
        
        
        |> JE.object






mFAOptionTypeEncoder : MFAOptionType -> JE.Value
mFAOptionTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (deliveryMediumTypeToString >> JE.string)
            ("DeliveryMedium", data.deliveryMedium)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AttributeName", data.attributeName)
        
        
        |> JE.object










messageTemplateTypeEncoder : MessageTemplateType -> JE.Value
messageTemplateTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SMSMessage", data.sMSMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailMessage", data.emailMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailSubject", data.emailSubject)
        
        
        |> JE.object






newDeviceMetadataTypeEncoder : NewDeviceMetadataType -> JE.Value
newDeviceMetadataTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DeviceKey", data.deviceKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DeviceGroupKey", data.deviceGroupKey)
        
        
        |> JE.object






notifyConfigurationTypeEncoder : NotifyConfigurationType -> JE.Value
notifyConfigurationTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("From", data.from)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ReplyTo", data.replyTo)
        
        
        
        |> (::) ("SourceArn", data.sourceArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notifyEmailTypeEncoder)
            ("BlockEmail", data.blockEmail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notifyEmailTypeEncoder)
            ("NoActionEmail", data.noActionEmail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (notifyEmailTypeEncoder)
            ("MfaEmail", data.mfaEmail)
        
        
        |> JE.object






notifyEmailTypeEncoder : NotifyEmailType -> JE.Value
notifyEmailTypeEncoder data =
    []
        
        
        |> (::) ("Subject", data.subject |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HtmlBody", data.htmlBody)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TextBody", data.textBody)
        
        
        |> JE.object






numberAttributeConstraintsTypeEncoder : NumberAttributeConstraintsType -> JE.Value
numberAttributeConstraintsTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MinValue", data.minValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MaxValue", data.maxValue)
        
        
        |> JE.object










passwordPolicyTypeEncoder : PasswordPolicyType -> JE.Value
passwordPolicyTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MinimumLength", data.minimumLength)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("RequireUppercase", data.requireUppercase)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("RequireLowercase", data.requireLowercase)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("RequireNumbers", data.requireNumbers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("RequireSymbols", data.requireSymbols)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TemporaryPasswordValidityDays", data.temporaryPasswordValidityDays)
        
        
        |> JE.object






providerDescriptionEncoder : ProviderDescription -> JE.Value
providerDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProviderName", data.providerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (identityProviderTypeTypeToString >> JE.string)
            ("ProviderType", data.providerType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastModifiedDate", data.lastModifiedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        |> JE.object






providerUserIdentifierTypeEncoder : ProviderUserIdentifierType -> JE.Value
providerUserIdentifierTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProviderName", data.providerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProviderAttributeName", data.providerAttributeName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProviderAttributeValue", data.providerAttributeValue)
        
        
        |> JE.object






resendConfirmationCodeRequestEncoder : ResendConfirmationCodeRequest -> JE.Value
resendConfirmationCodeRequestEncoder data =
    []
        
        
        |> (::) ("ClientId", data.clientId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecretHash", data.secretHash)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userContextDataTypeEncoder)
            ("UserContextData", data.userContextData)
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (analyticsMetadataTypeEncoder)
            ("AnalyticsMetadata", data.analyticsMetadata)
        
        
        |> JE.object






resendConfirmationCodeResponseEncoder : ResendConfirmationCodeResponse -> JE.Value
resendConfirmationCodeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (codeDeliveryDetailsTypeEncoder)
            ("CodeDeliveryDetails", data.codeDeliveryDetails)
        
        
        |> JE.object






resourceServerScopeTypeEncoder : ResourceServerScopeType -> JE.Value
resourceServerScopeTypeEncoder data =
    []
        
        
        |> (::) ("ScopeName", data.scopeName |> (JE.string))
        
        
        
        |> (::) ("ScopeDescription", data.scopeDescription |> (JE.string))
        
        
        |> JE.object






resourceServerTypeEncoder : ResourceServerType -> JE.Value
resourceServerTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserPoolId", data.userPoolId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Identifier", data.identifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceServerScopeTypeEncoder))
            ("Scopes", data.scopes)
        
        
        |> JE.object






respondToAuthChallengeRequestEncoder : RespondToAuthChallengeRequest -> JE.Value
respondToAuthChallengeRequestEncoder data =
    []
        
        
        |> (::) ("ClientId", data.clientId |> (JE.string))
        
        
        
        |> (::) ("ChallengeName", data.challengeName |> (challengeNameTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Session", data.session)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ChallengeResponses", data.challengeResponses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (analyticsMetadataTypeEncoder)
            ("AnalyticsMetadata", data.analyticsMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userContextDataTypeEncoder)
            ("UserContextData", data.userContextData)
        
        
        |> JE.object






respondToAuthChallengeResponseEncoder : RespondToAuthChallengeResponse -> JE.Value
respondToAuthChallengeResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (challengeNameTypeToString >> JE.string)
            ("ChallengeName", data.challengeName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Session", data.session)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ChallengeParameters", data.challengeParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (authenticationResultTypeEncoder)
            ("AuthenticationResult", data.authenticationResult)
        
        
        |> JE.object






riskConfigurationTypeEncoder : RiskConfigurationType -> JE.Value
riskConfigurationTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserPoolId", data.userPoolId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientId", data.clientId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (compromisedCredentialsRiskConfigurationTypeEncoder)
            ("CompromisedCredentialsRiskConfiguration", data.compromisedCredentialsRiskConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (accountTakeoverRiskConfigurationTypeEncoder)
            ("AccountTakeoverRiskConfiguration", data.accountTakeoverRiskConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (riskExceptionConfigurationTypeEncoder)
            ("RiskExceptionConfiguration", data.riskExceptionConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastModifiedDate", data.lastModifiedDate)
        
        
        |> JE.object










riskExceptionConfigurationTypeEncoder : RiskExceptionConfigurationType -> JE.Value
riskExceptionConfigurationTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("BlockedIPRangeList", data.blockedIPRangeList)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SkippedIPRangeList", data.skippedIPRangeList)
        
        
        |> JE.object










sMSMfaSettingsTypeEncoder : SMSMfaSettingsType -> JE.Value
sMSMfaSettingsTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("PreferredMfa", data.preferredMfa)
        
        
        |> JE.object






schemaAttributeTypeEncoder : SchemaAttributeType -> JE.Value
schemaAttributeTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (attributeDataTypeToString >> JE.string)
            ("AttributeDataType", data.attributeDataType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DeveloperOnlyAttribute", data.developerOnlyAttribute)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Mutable", data.mutable)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Required", data.required)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (numberAttributeConstraintsTypeEncoder)
            ("NumberAttributeConstraints", data.numberAttributeConstraints)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stringAttributeConstraintsTypeEncoder)
            ("StringAttributeConstraints", data.stringAttributeConstraints)
        
        
        |> JE.object






setRiskConfigurationRequestEncoder : SetRiskConfigurationRequest -> JE.Value
setRiskConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientId", data.clientId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (compromisedCredentialsRiskConfigurationTypeEncoder)
            ("CompromisedCredentialsRiskConfiguration", data.compromisedCredentialsRiskConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (accountTakeoverRiskConfigurationTypeEncoder)
            ("AccountTakeoverRiskConfiguration", data.accountTakeoverRiskConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (riskExceptionConfigurationTypeEncoder)
            ("RiskExceptionConfiguration", data.riskExceptionConfiguration)
        
        
        |> JE.object






setRiskConfigurationResponseEncoder : SetRiskConfigurationResponse -> JE.Value
setRiskConfigurationResponseEncoder data =
    []
        
        
        |> (::) ("RiskConfiguration", data.riskConfiguration |> (riskConfigurationTypeEncoder))
        
        
        |> JE.object






setUICustomizationRequestEncoder : SetUICustomizationRequest -> JE.Value
setUICustomizationRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientId", data.clientId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CSS", data.cSS)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageFile", data.imageFile)
        
        
        |> JE.object






setUICustomizationResponseEncoder : SetUICustomizationResponse -> JE.Value
setUICustomizationResponseEncoder data =
    []
        
        
        |> (::) ("UICustomization", data.uICustomization |> (uICustomizationTypeEncoder))
        
        
        |> JE.object






setUserMFAPreferenceRequestEncoder : SetUserMFAPreferenceRequest -> JE.Value
setUserMFAPreferenceRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (sMSMfaSettingsTypeEncoder)
            ("SMSMfaSettings", data.sMSMfaSettings)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (softwareTokenMfaSettingsTypeEncoder)
            ("SoftwareTokenMfaSettings", data.softwareTokenMfaSettings)
        
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        |> JE.object






setUserMFAPreferenceResponseEncoder : SetUserMFAPreferenceResponse -> JE.Value
setUserMFAPreferenceResponseEncoder data =
    []
        
        |> JE.object






setUserPoolMfaConfigRequestEncoder : SetUserPoolMfaConfigRequest -> JE.Value
setUserPoolMfaConfigRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (smsMfaConfigTypeEncoder)
            ("SmsMfaConfiguration", data.smsMfaConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (softwareTokenMfaConfigTypeEncoder)
            ("SoftwareTokenMfaConfiguration", data.softwareTokenMfaConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolMfaTypeToString >> JE.string)
            ("MfaConfiguration", data.mfaConfiguration)
        
        
        |> JE.object






setUserPoolMfaConfigResponseEncoder : SetUserPoolMfaConfigResponse -> JE.Value
setUserPoolMfaConfigResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (smsMfaConfigTypeEncoder)
            ("SmsMfaConfiguration", data.smsMfaConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (softwareTokenMfaConfigTypeEncoder)
            ("SoftwareTokenMfaConfiguration", data.softwareTokenMfaConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolMfaTypeToString >> JE.string)
            ("MfaConfiguration", data.mfaConfiguration)
        
        
        |> JE.object






setUserSettingsRequestEncoder : SetUserSettingsRequest -> JE.Value
setUserSettingsRequestEncoder data =
    []
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        
        |> (::) ("MFAOptions", data.mFAOptions |> (JE.list (mFAOptionTypeEncoder)))
        
        
        |> JE.object






setUserSettingsResponseEncoder : SetUserSettingsResponse -> JE.Value
setUserSettingsResponseEncoder data =
    []
        
        |> JE.object






signUpRequestEncoder : SignUpRequest -> JE.Value
signUpRequestEncoder data =
    []
        
        
        |> (::) ("ClientId", data.clientId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecretHash", data.secretHash)
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("Password", data.password |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeTypeEncoder))
            ("UserAttributes", data.userAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeTypeEncoder))
            ("ValidationData", data.validationData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (analyticsMetadataTypeEncoder)
            ("AnalyticsMetadata", data.analyticsMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userContextDataTypeEncoder)
            ("UserContextData", data.userContextData)
        
        
        |> JE.object






signUpResponseEncoder : SignUpResponse -> JE.Value
signUpResponseEncoder data =
    []
        
        
        |> (::) ("UserConfirmed", data.userConfirmed |> (JE.bool))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (codeDeliveryDetailsTypeEncoder)
            ("CodeDeliveryDetails", data.codeDeliveryDetails)
        
        
        
        |> (::) ("UserSub", data.userSub |> (JE.string))
        
        
        |> JE.object






smsConfigurationTypeEncoder : SmsConfigurationType -> JE.Value
smsConfigurationTypeEncoder data =
    []
        
        
        |> (::) ("SnsCallerArn", data.snsCallerArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ExternalId", data.externalId)
        
        
        |> JE.object






smsMfaConfigTypeEncoder : SmsMfaConfigType -> JE.Value
smsMfaConfigTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SmsAuthenticationMessage", data.smsAuthenticationMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (smsConfigurationTypeEncoder)
            ("SmsConfiguration", data.smsConfiguration)
        
        
        |> JE.object






softwareTokenMfaConfigTypeEncoder : SoftwareTokenMfaConfigType -> JE.Value
softwareTokenMfaConfigTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        |> JE.object






softwareTokenMfaSettingsTypeEncoder : SoftwareTokenMfaSettingsType -> JE.Value
softwareTokenMfaSettingsTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("PreferredMfa", data.preferredMfa)
        
        
        |> JE.object






startUserImportJobRequestEncoder : StartUserImportJobRequest -> JE.Value
startUserImportJobRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        |> JE.object






startUserImportJobResponseEncoder : StartUserImportJobResponse -> JE.Value
startUserImportJobResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (userImportJobTypeEncoder)
            ("UserImportJob", data.userImportJob)
        
        
        |> JE.object










stopUserImportJobRequestEncoder : StopUserImportJobRequest -> JE.Value
stopUserImportJobRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("JobId", data.jobId |> (JE.string))
        
        
        |> JE.object






stopUserImportJobResponseEncoder : StopUserImportJobResponse -> JE.Value
stopUserImportJobResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (userImportJobTypeEncoder)
            ("UserImportJob", data.userImportJob)
        
        
        |> JE.object






stringAttributeConstraintsTypeEncoder : StringAttributeConstraintsType -> JE.Value
stringAttributeConstraintsTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MinLength", data.minLength)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MaxLength", data.maxLength)
        
        
        |> JE.object






tagResourceRequestEncoder : TagResourceRequest -> JE.Value
tagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Tags", data.tags)
        
        
        |> JE.object






tagResourceResponseEncoder : TagResourceResponse -> JE.Value
tagResourceResponseEncoder data =
    []
        
        |> JE.object






uICustomizationTypeEncoder : UICustomizationType -> JE.Value
uICustomizationTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserPoolId", data.userPoolId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientId", data.clientId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ImageUrl", data.imageUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CSS", data.cSS)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CSSVersion", data.cSSVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastModifiedDate", data.lastModifiedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        |> JE.object






untagResourceRequestEncoder : UntagResourceRequest -> JE.Value
untagResourceRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("TagKeys", data.tagKeys)
        
        
        |> JE.object






untagResourceResponseEncoder : UntagResourceResponse -> JE.Value
untagResourceResponseEncoder data =
    []
        
        |> JE.object






updateAuthEventFeedbackRequestEncoder : UpdateAuthEventFeedbackRequest -> JE.Value
updateAuthEventFeedbackRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Username", data.username |> (JE.string))
        
        
        
        |> (::) ("EventId", data.eventId |> (JE.string))
        
        
        
        |> (::) ("FeedbackToken", data.feedbackToken |> (JE.string))
        
        
        
        |> (::) ("FeedbackValue", data.feedbackValue |> (feedbackValueTypeToString >> JE.string))
        
        
        |> JE.object






updateAuthEventFeedbackResponseEncoder : UpdateAuthEventFeedbackResponse -> JE.Value
updateAuthEventFeedbackResponseEncoder data =
    []
        
        |> JE.object






updateDeviceStatusRequestEncoder : UpdateDeviceStatusRequest -> JE.Value
updateDeviceStatusRequestEncoder data =
    []
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        
        |> (::) ("DeviceKey", data.deviceKey |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceRememberedStatusTypeToString >> JE.string)
            ("DeviceRememberedStatus", data.deviceRememberedStatus)
        
        
        |> JE.object






updateDeviceStatusResponseEncoder : UpdateDeviceStatusResponse -> JE.Value
updateDeviceStatusResponseEncoder data =
    []
        
        |> JE.object






updateGroupRequestEncoder : UpdateGroupRequest -> JE.Value
updateGroupRequestEncoder data =
    []
        
        
        |> (::) ("GroupName", data.groupName |> (JE.string))
        
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Precedence", data.precedence)
        
        
        |> JE.object






updateGroupResponseEncoder : UpdateGroupResponse -> JE.Value
updateGroupResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (groupTypeEncoder)
            ("Group", data.group)
        
        
        |> JE.object






updateIdentityProviderRequestEncoder : UpdateIdentityProviderRequest -> JE.Value
updateIdentityProviderRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("ProviderName", data.providerName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ProviderDetails", data.providerDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("AttributeMapping", data.attributeMapping)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("IdpIdentifiers", data.idpIdentifiers)
        
        
        |> JE.object






updateIdentityProviderResponseEncoder : UpdateIdentityProviderResponse -> JE.Value
updateIdentityProviderResponseEncoder data =
    []
        
        
        |> (::) ("IdentityProvider", data.identityProvider |> (identityProviderTypeEncoder))
        
        
        |> JE.object






updateResourceServerRequestEncoder : UpdateResourceServerRequest -> JE.Value
updateResourceServerRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("Identifier", data.identifier |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceServerScopeTypeEncoder))
            ("Scopes", data.scopes)
        
        
        |> JE.object






updateResourceServerResponseEncoder : UpdateResourceServerResponse -> JE.Value
updateResourceServerResponseEncoder data =
    []
        
        
        |> (::) ("ResourceServer", data.resourceServer |> (resourceServerTypeEncoder))
        
        
        |> JE.object






updateUserAttributesRequestEncoder : UpdateUserAttributesRequest -> JE.Value
updateUserAttributesRequestEncoder data =
    []
        
        
        |> (::) ("UserAttributes", data.userAttributes |> (JE.list (attributeTypeEncoder)))
        
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        |> JE.object






updateUserAttributesResponseEncoder : UpdateUserAttributesResponse -> JE.Value
updateUserAttributesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (codeDeliveryDetailsTypeEncoder))
            ("CodeDeliveryDetailsList", data.codeDeliveryDetailsList)
        
        
        |> JE.object






updateUserPoolClientRequestEncoder : UpdateUserPoolClientRequest -> JE.Value
updateUserPoolClientRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("ClientId", data.clientId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientName", data.clientName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RefreshTokenValidity", data.refreshTokenValidity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ReadAttributes", data.readAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("WriteAttributes", data.writeAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (explicitAuthFlowsTypeToString >> JE.string))
            ("ExplicitAuthFlows", data.explicitAuthFlows)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SupportedIdentityProviders", data.supportedIdentityProviders)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CallbackURLs", data.callbackURLs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("LogoutURLs", data.logoutURLs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultRedirectURI", data.defaultRedirectURI)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (oAuthFlowTypeToString >> JE.string))
            ("AllowedOAuthFlows", data.allowedOAuthFlows)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("AllowedOAuthScopes", data.allowedOAuthScopes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowedOAuthFlowsUserPoolClient", data.allowedOAuthFlowsUserPoolClient)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (analyticsConfigurationTypeEncoder)
            ("AnalyticsConfiguration", data.analyticsConfiguration)
        
        
        |> JE.object






updateUserPoolClientResponseEncoder : UpdateUserPoolClientResponse -> JE.Value
updateUserPoolClientResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolClientTypeEncoder)
            ("UserPoolClient", data.userPoolClient)
        
        
        |> JE.object






updateUserPoolDomainRequestEncoder : UpdateUserPoolDomainRequest -> JE.Value
updateUserPoolDomainRequestEncoder data =
    []
        
        
        |> (::) ("Domain", data.domain |> (JE.string))
        
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> (::) ("CustomDomainConfig", data.customDomainConfig |> (customDomainConfigTypeEncoder))
        
        
        |> JE.object






updateUserPoolDomainResponseEncoder : UpdateUserPoolDomainResponse -> JE.Value
updateUserPoolDomainResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CloudFrontDomain", data.cloudFrontDomain)
        
        
        |> JE.object






updateUserPoolRequestEncoder : UpdateUserPoolRequest -> JE.Value
updateUserPoolRequestEncoder data =
    []
        
        
        |> (::) ("UserPoolId", data.userPoolId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolPolicyTypeEncoder)
            ("Policies", data.policies)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaConfigTypeEncoder)
            ("LambdaConfig", data.lambdaConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (verifiedAttributeTypeToString >> JE.string))
            ("AutoVerifiedAttributes", data.autoVerifiedAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SmsVerificationMessage", data.smsVerificationMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailVerificationMessage", data.emailVerificationMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailVerificationSubject", data.emailVerificationSubject)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (verificationMessageTemplateTypeEncoder)
            ("VerificationMessageTemplate", data.verificationMessageTemplate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SmsAuthenticationMessage", data.smsAuthenticationMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolMfaTypeToString >> JE.string)
            ("MfaConfiguration", data.mfaConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceConfigurationTypeEncoder)
            ("DeviceConfiguration", data.deviceConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (emailConfigurationTypeEncoder)
            ("EmailConfiguration", data.emailConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (smsConfigurationTypeEncoder)
            ("SmsConfiguration", data.smsConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("UserPoolTags", data.userPoolTags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (adminCreateUserConfigTypeEncoder)
            ("AdminCreateUserConfig", data.adminCreateUserConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolAddOnsTypeEncoder)
            ("UserPoolAddOns", data.userPoolAddOns)
        
        
        |> JE.object






updateUserPoolResponseEncoder : UpdateUserPoolResponse -> JE.Value
updateUserPoolResponseEncoder data =
    []
        
        |> JE.object






userContextDataTypeEncoder : UserContextDataType -> JE.Value
userContextDataTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EncodedData", data.encodedData)
        
        
        |> JE.object










userImportJobTypeEncoder : UserImportJobType -> JE.Value
userImportJobTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobName", data.jobName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("JobId", data.jobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserPoolId", data.userPoolId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PreSignedUrl", data.preSignedUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartDate", data.startDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CompletionDate", data.completionDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userImportJobStatusTypeToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CloudWatchLogsRoleArn", data.cloudWatchLogsRoleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ImportedUsers", data.importedUsers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("SkippedUsers", data.skippedUsers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("FailedUsers", data.failedUsers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CompletionMessage", data.completionMessage)
        
        
        |> JE.object






userPoolAddOnsTypeEncoder : UserPoolAddOnsType -> JE.Value
userPoolAddOnsTypeEncoder data =
    []
        
        
        |> (::) ("AdvancedSecurityMode", data.advancedSecurityMode |> (advancedSecurityModeTypeToString >> JE.string))
        
        
        |> JE.object






userPoolClientDescriptionEncoder : UserPoolClientDescription -> JE.Value
userPoolClientDescriptionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientId", data.clientId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserPoolId", data.userPoolId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientName", data.clientName)
        
        
        |> JE.object






userPoolClientTypeEncoder : UserPoolClientType -> JE.Value
userPoolClientTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserPoolId", data.userPoolId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientName", data.clientName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientId", data.clientId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientSecret", data.clientSecret)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastModifiedDate", data.lastModifiedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RefreshTokenValidity", data.refreshTokenValidity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ReadAttributes", data.readAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("WriteAttributes", data.writeAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (explicitAuthFlowsTypeToString >> JE.string))
            ("ExplicitAuthFlows", data.explicitAuthFlows)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SupportedIdentityProviders", data.supportedIdentityProviders)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("CallbackURLs", data.callbackURLs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("LogoutURLs", data.logoutURLs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultRedirectURI", data.defaultRedirectURI)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (oAuthFlowTypeToString >> JE.string))
            ("AllowedOAuthFlows", data.allowedOAuthFlows)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("AllowedOAuthScopes", data.allowedOAuthScopes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AllowedOAuthFlowsUserPoolClient", data.allowedOAuthFlowsUserPoolClient)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (analyticsConfigurationTypeEncoder)
            ("AnalyticsConfiguration", data.analyticsConfiguration)
        
        
        |> JE.object






userPoolDescriptionTypeEncoder : UserPoolDescriptionType -> JE.Value
userPoolDescriptionTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaConfigTypeEncoder)
            ("LambdaConfig", data.lambdaConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (statusTypeToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastModifiedDate", data.lastModifiedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        |> JE.object










userPoolPolicyTypeEncoder : UserPoolPolicyType -> JE.Value
userPoolPolicyTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (passwordPolicyTypeEncoder)
            ("PasswordPolicy", data.passwordPolicy)
        
        
        |> JE.object






userPoolTypeEncoder : UserPoolType -> JE.Value
userPoolTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolPolicyTypeEncoder)
            ("Policies", data.policies)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (lambdaConfigTypeEncoder)
            ("LambdaConfig", data.lambdaConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (statusTypeToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastModifiedDate", data.lastModifiedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (schemaAttributeTypeEncoder))
            ("SchemaAttributes", data.schemaAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (verifiedAttributeTypeToString >> JE.string))
            ("AutoVerifiedAttributes", data.autoVerifiedAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (aliasAttributeTypeToString >> JE.string))
            ("AliasAttributes", data.aliasAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (usernameAttributeTypeToString >> JE.string))
            ("UsernameAttributes", data.usernameAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SmsVerificationMessage", data.smsVerificationMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailVerificationMessage", data.emailVerificationMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailVerificationSubject", data.emailVerificationSubject)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (verificationMessageTemplateTypeEncoder)
            ("VerificationMessageTemplate", data.verificationMessageTemplate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SmsAuthenticationMessage", data.smsAuthenticationMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolMfaTypeToString >> JE.string)
            ("MfaConfiguration", data.mfaConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (deviceConfigurationTypeEncoder)
            ("DeviceConfiguration", data.deviceConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("EstimatedNumberOfUsers", data.estimatedNumberOfUsers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (emailConfigurationTypeEncoder)
            ("EmailConfiguration", data.emailConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (smsConfigurationTypeEncoder)
            ("SmsConfiguration", data.smsConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("UserPoolTags", data.userPoolTags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SmsConfigurationFailure", data.smsConfigurationFailure)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailConfigurationFailure", data.emailConfigurationFailure)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Domain", data.domain)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomDomain", data.customDomain)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (adminCreateUserConfigTypeEncoder)
            ("AdminCreateUserConfig", data.adminCreateUserConfig)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userPoolAddOnsTypeEncoder)
            ("UserPoolAddOns", data.userPoolAddOns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        |> JE.object










userTypeEncoder : UserType -> JE.Value
userTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Username", data.username)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (attributeTypeEncoder))
            ("Attributes", data.attributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("UserCreateDate", data.userCreateDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("UserLastModifiedDate", data.userLastModifiedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Enabled", data.enabled)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userStatusTypeToString >> JE.string)
            ("UserStatus", data.userStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (mFAOptionTypeEncoder))
            ("MFAOptions", data.mFAOptions)
        
        
        |> JE.object










verificationMessageTemplateTypeEncoder : VerificationMessageTemplateType -> JE.Value
verificationMessageTemplateTypeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SmsMessage", data.smsMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailMessage", data.emailMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailSubject", data.emailSubject)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailMessageByLink", data.emailMessageByLink)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EmailSubjectByLink", data.emailSubjectByLink)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (defaultEmailOptionTypeToString >> JE.string)
            ("DefaultEmailOption", data.defaultEmailOption)
        
        
        |> JE.object










verifySoftwareTokenRequestEncoder : VerifySoftwareTokenRequest -> JE.Value
verifySoftwareTokenRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AccessToken", data.accessToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Session", data.session)
        
        
        
        |> (::) ("UserCode", data.userCode |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FriendlyDeviceName", data.friendlyDeviceName)
        
        
        |> JE.object






verifySoftwareTokenResponseEncoder : VerifySoftwareTokenResponse -> JE.Value
verifySoftwareTokenResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (verifySoftwareTokenResponseTypeToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Session", data.session)
        
        
        |> JE.object










verifyUserAttributeRequestEncoder : VerifyUserAttributeRequest -> JE.Value
verifyUserAttributeRequestEncoder data =
    []
        
        
        |> (::) ("AccessToken", data.accessToken |> (JE.string))
        
        
        
        |> (::) ("AttributeName", data.attributeName |> (JE.string))
        
        
        
        |> (::) ("Code", data.code |> (JE.string))
        
        
        |> JE.object






verifyUserAttributeResponseEncoder : VerifyUserAttributeResponse -> JE.Value
verifyUserAttributeResponseEncoder data =
    []
        
        |> JE.object





