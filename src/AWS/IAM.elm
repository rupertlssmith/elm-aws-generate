module AWS.IAM exposing
    ( service
    , addClientIDToOpenIDConnectProvider, addRoleToInstanceProfile, addUserToGroup, attachGroupPolicy, attachRolePolicy, attachUserPolicy, changePassword, createAccessKey, CreateAccessKeyOptions, createAccountAlias, createGroup, CreateGroupOptions, createInstanceProfile, CreateInstanceProfileOptions, createLoginProfile, CreateLoginProfileOptions, createOpenIDConnectProvider, CreateOpenIDConnectProviderOptions, createPolicy, CreatePolicyOptions, createPolicyVersion, CreatePolicyVersionOptions, createRole, CreateRoleOptions, createSAMLProvider, createServiceLinkedRole, CreateServiceLinkedRoleOptions, createServiceSpecificCredential, createUser, CreateUserOptions, createVirtualMFADevice, CreateVirtualMFADeviceOptions, deactivateMFADevice, deleteAccessKey, DeleteAccessKeyOptions, deleteAccountAlias, deleteAccountPasswordPolicy, deleteGroup, deleteGroupPolicy, deleteInstanceProfile, deleteLoginProfile, deleteOpenIDConnectProvider, deletePolicy, deletePolicyVersion, deleteRole, deleteRolePermissionsBoundary, deleteRolePolicy, deleteSAMLProvider, deleteSSHPublicKey, deleteServerCertificate, deleteServiceLinkedRole, deleteServiceSpecificCredential, DeleteServiceSpecificCredentialOptions, deleteSigningCertificate, DeleteSigningCertificateOptions, deleteUser, deleteUserPermissionsBoundary, deleteUserPolicy, deleteVirtualMFADevice, detachGroupPolicy, detachRolePolicy, detachUserPolicy, enableMFADevice, generateCredentialReport, generateOrganizationsAccessReport, GenerateOrganizationsAccessReportOptions, generateServiceLastAccessedDetails, getAccessKeyLastUsed, getAccountAuthorizationDetails, GetAccountAuthorizationDetailsOptions, getAccountPasswordPolicy, getAccountSummary, getContextKeysForCustomPolicy, getContextKeysForPrincipalPolicy, GetContextKeysForPrincipalPolicyOptions, getCredentialReport, getGroup, GetGroupOptions, getGroupPolicy, getInstanceProfile, getLoginProfile, getOpenIDConnectProvider, getOrganizationsAccessReport, GetOrganizationsAccessReportOptions, getPolicy, getPolicyVersion, getRole, getRolePolicy, getSAMLProvider, getSSHPublicKey, getServerCertificate, getServiceLastAccessedDetails, GetServiceLastAccessedDetailsOptions, getServiceLastAccessedDetailsWithEntities, GetServiceLastAccessedDetailsWithEntitiesOptions, getServiceLinkedRoleDeletionStatus, getUser, GetUserOptions, getUserPolicy, listAccessKeys, ListAccessKeysOptions, listAccountAliases, ListAccountAliasesOptions, listAttachedGroupPolicies, ListAttachedGroupPoliciesOptions, listAttachedRolePolicies, ListAttachedRolePoliciesOptions, listAttachedUserPolicies, ListAttachedUserPoliciesOptions, listEntitiesForPolicy, ListEntitiesForPolicyOptions, listGroupPolicies, ListGroupPoliciesOptions, listGroups, ListGroupsOptions, listGroupsForUser, ListGroupsForUserOptions, listInstanceProfiles, ListInstanceProfilesOptions, listInstanceProfilesForRole, ListInstanceProfilesForRoleOptions, listMFADevices, ListMFADevicesOptions, listOpenIDConnectProviders, listPolicies, ListPoliciesOptions, listPoliciesGrantingServiceAccess, ListPoliciesGrantingServiceAccessOptions, listPolicyVersions, ListPolicyVersionsOptions, listRolePolicies, ListRolePoliciesOptions, listRoleTags, ListRoleTagsOptions, listRoles, ListRolesOptions, listSAMLProviders, listSSHPublicKeys, ListSSHPublicKeysOptions, listServerCertificates, ListServerCertificatesOptions, listServiceSpecificCredentials, ListServiceSpecificCredentialsOptions, listSigningCertificates, ListSigningCertificatesOptions, listUserPolicies, ListUserPoliciesOptions, listUserTags, ListUserTagsOptions, listUsers, ListUsersOptions, listVirtualMFADevices, ListVirtualMFADevicesOptions, putGroupPolicy, putRolePermissionsBoundary, putRolePolicy, putUserPermissionsBoundary, putUserPolicy, removeClientIDFromOpenIDConnectProvider, removeRoleFromInstanceProfile, removeUserFromGroup, resetServiceSpecificCredential, ResetServiceSpecificCredentialOptions, resyncMFADevice, setDefaultPolicyVersion, setSecurityTokenServicePreferences, simulateCustomPolicy, SimulateCustomPolicyOptions, simulatePrincipalPolicy, SimulatePrincipalPolicyOptions, tagRole, tagUser, untagRole, untagUser, updateAccessKey, UpdateAccessKeyOptions, updateAccountPasswordPolicy, UpdateAccountPasswordPolicyOptions, updateAssumeRolePolicy, updateGroup, UpdateGroupOptions, updateLoginProfile, UpdateLoginProfileOptions, updateOpenIDConnectProviderThumbprint, updateRole, UpdateRoleOptions, updateRoleDescription, updateSAMLProvider, updateSSHPublicKey, updateServerCertificate, UpdateServerCertificateOptions, updateServiceSpecificCredential, UpdateServiceSpecificCredentialOptions, updateSigningCertificate, UpdateSigningCertificateOptions, updateUser, UpdateUserOptions, uploadSSHPublicKey, uploadServerCertificate, UploadServerCertificateOptions, uploadSigningCertificate, UploadSigningCertificateOptions
    , CreateAccessKeyResponse, CreateGroupResponse, CreateInstanceProfileResponse, CreateLoginProfileResponse, CreateOpenIDConnectProviderResponse, CreatePolicyResponse, CreatePolicyVersionResponse, CreateRoleResponse, CreateSAMLProviderResponse, CreateServiceLinkedRoleResponse, CreateServiceSpecificCredentialResponse, CreateUserResponse, CreateVirtualMFADeviceResponse, DeleteServiceLinkedRoleResponse, GenerateCredentialReportResponse, GenerateOrganizationsAccessReportResponse, GenerateServiceLastAccessedDetailsResponse, GetAccessKeyLastUsedResponse, GetAccountAuthorizationDetailsResponse, GetAccountPasswordPolicyResponse, GetAccountSummaryResponse, GetContextKeysForPolicyResponse, GetCredentialReportResponse, GetGroupPolicyResponse, GetGroupResponse, GetInstanceProfileResponse, GetLoginProfileResponse, GetOpenIDConnectProviderResponse, GetOrganizationsAccessReportResponse, GetPolicyResponse, GetPolicyVersionResponse, GetRolePolicyResponse, GetRoleResponse, GetSAMLProviderResponse, GetSSHPublicKeyResponse, GetServerCertificateResponse, GetServiceLastAccessedDetailsResponse, GetServiceLastAccessedDetailsWithEntitiesResponse, GetServiceLinkedRoleDeletionStatusResponse, GetUserPolicyResponse, GetUserResponse, ListAccessKeysResponse, ListAccountAliasesResponse, ListAttachedGroupPoliciesResponse, ListAttachedRolePoliciesResponse, ListAttachedUserPoliciesResponse, ListEntitiesForPolicyResponse, ListGroupPoliciesResponse, ListGroupsForUserResponse, ListGroupsResponse, ListInstanceProfilesForRoleResponse, ListInstanceProfilesResponse, ListMFADevicesResponse, ListOpenIDConnectProvidersResponse, ListPoliciesGrantingServiceAccessResponse, ListPoliciesResponse, ListPolicyVersionsResponse, ListRolePoliciesResponse, ListRoleTagsResponse, ListRolesResponse, ListSAMLProvidersResponse, ListSSHPublicKeysResponse, ListServerCertificatesResponse, ListServiceSpecificCredentialsResponse, ListSigningCertificatesResponse, ListUserPoliciesResponse, ListUserTagsResponse, ListUsersResponse, ListVirtualMFADevicesResponse, ResetServiceSpecificCredentialResponse, SimulatePolicyResponse, UpdateRoleDescriptionResponse, UpdateRoleResponse, UpdateSAMLProviderResponse, UploadSSHPublicKeyResponse, UploadServerCertificateResponse, UploadSigningCertificateResponse
    , AccessDetail, AccessKey, AccessKeyLastUsed, AccessKeyMetadata, AttachedPermissionsBoundary, AttachedPolicy, ContextEntry, DeletionTaskFailureReasonType, EntityDetails, EntityInfo, ErrorDetails, EvaluationResult, Group, GroupDetail, InstanceProfile, ListPoliciesGrantingServiceAccessEntry, LoginProfile, MFADevice, ManagedPolicyDetail, OpenIDConnectProviderListEntry, OrganizationsDecisionDetail, PasswordPolicy, Policy, PolicyDetail, PolicyGrantingServiceAccess, PolicyGroup, PolicyRole, PolicyUser, PolicyVersion, Position, ResourceSpecificResult, Role, RoleDetail, RoleUsageType, SAMLProviderListEntry, SSHPublicKey, SSHPublicKeyMetadata, ServerCertificate, ServerCertificateMetadata, ServiceLastAccessed, ServiceSpecificCredential, ServiceSpecificCredentialMetadata, SigningCertificate, Statement, Tag, User, UserDetail, VirtualMFADevice
    , ContextKeyTypeEnum(..), DeletionTaskStatusType(..), EntityType(..), PermissionsBoundaryAttachmentType(..), PolicyEvaluationDecisionType(..), PolicySourceType(..), PolicyUsageType(..), ReportFormatType(..), ReportStateType(..), AssignmentStatusType(..), EncodingType(..), GlobalEndpointTokenVersion(..), JobStatusType(..), PolicyOwnerEntityType(..), PolicyScopeType(..), PolicyType(..), SortKeyType(..), StatusType(..), SummaryKeyType(..)
    )

{-| <fullname>AWS Identity and Access Management</fullname> <p>AWS Identity and Access Management (IAM) is a web service that you can use to manage users and user permissions under your AWS account. This guide provides descriptions of IAM actions that you can call programmatically. For general information about IAM, see <a href="http://aws.amazon.com/iam/">AWS Identity and Access Management (IAM)</a>. For the user guide for IAM, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/">Using IAM</a>. </p> <note> <p>AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to IAM and AWS. For example, the SDKs take care of tasks such as cryptographically signing requests (see below), managing errors, and retrying requests automatically. For information about the AWS SDKs, including how to download and install them, see the <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a> page. </p> </note> <p>We recommend that you use the AWS SDKs to make programmatic API calls to IAM. However, you can also use the IAM Query API to make direct calls to the IAM web service. To learn more about the IAM Query API, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>Using IAM</i> guide. IAM supports GET and POST requests for all actions. That is, the API does not require you to use GET for some actions and POST for others. However, GET requests are subject to the limitation size of a URL. Therefore, for operations that require larger sizes, use a POST request. </p> <p> <b>Signing Requests</b> </p> <p>Requests must be signed using an access key ID and a secret access key. We strongly recommend that you do not use your AWS account access key ID and secret access key for everyday work with IAM. You can use the access key ID and secret access key for an IAM user or you can use the AWS Security Token Service to generate temporary security credentials and use those to sign requests.</p> <p>To sign requests, we recommend that you use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>. If you have an existing application that uses Signature Version 2, you do not have to update it to use Signature Version 4. However, some operations now require Signature Version 4. The documentation for operations that require version 4 indicate this requirement. </p> <p> <b>Additional Resources</b> </p> <p>For more information, see the following:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html">AWS Security Credentials</a>. This topic provides general information about the types of credentials used for accessing AWS. </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAMBestPractices.html">IAM Best Practices</a>. This topic presents a list of suggestions for using the IAM service to help secure your AWS resources. </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing AWS API Requests</a>. This set of topics walk you through the process of signing a request using an access key ID and secret access key. </p> </li> </ul>

@docs service


## Table of Contents

  - [Operations](#operations)
  - [Responses](#responses)
  - [Records](#records)
  - [Unions](#unions)


## Operations

  - [addClientIDToOpenIDConnectProvider](#addClientIDToOpenIDConnectProvider)
  - [addRoleToInstanceProfile](#addRoleToInstanceProfile)
  - [addUserToGroup](#addUserToGroup)
  - [attachGroupPolicy](#attachGroupPolicy)
  - [attachRolePolicy](#attachRolePolicy)
  - [attachUserPolicy](#attachUserPolicy)
  - [changePassword](#changePassword)
  - [createAccessKey](#createAccessKey)
  - [CreateAccessKeyOptions](#CreateAccessKeyOptions)
  - [createAccountAlias](#createAccountAlias)
  - [createGroup](#createGroup)
  - [CreateGroupOptions](#CreateGroupOptions)
  - [createInstanceProfile](#createInstanceProfile)
  - [CreateInstanceProfileOptions](#CreateInstanceProfileOptions)
  - [createLoginProfile](#createLoginProfile)
  - [CreateLoginProfileOptions](#CreateLoginProfileOptions)
  - [createOpenIDConnectProvider](#createOpenIDConnectProvider)
  - [CreateOpenIDConnectProviderOptions](#CreateOpenIDConnectProviderOptions)
  - [createPolicy](#createPolicy)
  - [CreatePolicyOptions](#CreatePolicyOptions)
  - [createPolicyVersion](#createPolicyVersion)
  - [CreatePolicyVersionOptions](#CreatePolicyVersionOptions)
  - [createRole](#createRole)
  - [CreateRoleOptions](#CreateRoleOptions)
  - [createSAMLProvider](#createSAMLProvider)
  - [createServiceLinkedRole](#createServiceLinkedRole)
  - [CreateServiceLinkedRoleOptions](#CreateServiceLinkedRoleOptions)
  - [createServiceSpecificCredential](#createServiceSpecificCredential)
  - [createUser](#createUser)
  - [CreateUserOptions](#CreateUserOptions)
  - [createVirtualMFADevice](#createVirtualMFADevice)
  - [CreateVirtualMFADeviceOptions](#CreateVirtualMFADeviceOptions)
  - [deactivateMFADevice](#deactivateMFADevice)
  - [deleteAccessKey](#deleteAccessKey)
  - [DeleteAccessKeyOptions](#DeleteAccessKeyOptions)
  - [deleteAccountAlias](#deleteAccountAlias)
  - [deleteAccountPasswordPolicy](#deleteAccountPasswordPolicy)
  - [deleteGroup](#deleteGroup)
  - [deleteGroupPolicy](#deleteGroupPolicy)
  - [deleteInstanceProfile](#deleteInstanceProfile)
  - [deleteLoginProfile](#deleteLoginProfile)
  - [deleteOpenIDConnectProvider](#deleteOpenIDConnectProvider)
  - [deletePolicy](#deletePolicy)
  - [deletePolicyVersion](#deletePolicyVersion)
  - [deleteRole](#deleteRole)
  - [deleteRolePermissionsBoundary](#deleteRolePermissionsBoundary)
  - [deleteRolePolicy](#deleteRolePolicy)
  - [deleteSAMLProvider](#deleteSAMLProvider)
  - [deleteSSHPublicKey](#deleteSSHPublicKey)
  - [deleteServerCertificate](#deleteServerCertificate)
  - [deleteServiceLinkedRole](#deleteServiceLinkedRole)
  - [deleteServiceSpecificCredential](#deleteServiceSpecificCredential)
  - [DeleteServiceSpecificCredentialOptions](#DeleteServiceSpecificCredentialOptions)
  - [deleteSigningCertificate](#deleteSigningCertificate)
  - [DeleteSigningCertificateOptions](#DeleteSigningCertificateOptions)
  - [deleteUser](#deleteUser)
  - [deleteUserPermissionsBoundary](#deleteUserPermissionsBoundary)
  - [deleteUserPolicy](#deleteUserPolicy)
  - [deleteVirtualMFADevice](#deleteVirtualMFADevice)
  - [detachGroupPolicy](#detachGroupPolicy)
  - [detachRolePolicy](#detachRolePolicy)
  - [detachUserPolicy](#detachUserPolicy)
  - [enableMFADevice](#enableMFADevice)
  - [generateCredentialReport](#generateCredentialReport)
  - [generateOrganizationsAccessReport](#generateOrganizationsAccessReport)
  - [GenerateOrganizationsAccessReportOptions](#GenerateOrganizationsAccessReportOptions)
  - [generateServiceLastAccessedDetails](#generateServiceLastAccessedDetails)
  - [getAccessKeyLastUsed](#getAccessKeyLastUsed)
  - [getAccountAuthorizationDetails](#getAccountAuthorizationDetails)
  - [GetAccountAuthorizationDetailsOptions](#GetAccountAuthorizationDetailsOptions)
  - [getAccountPasswordPolicy](#getAccountPasswordPolicy)
  - [getAccountSummary](#getAccountSummary)
  - [getContextKeysForCustomPolicy](#getContextKeysForCustomPolicy)
  - [getContextKeysForPrincipalPolicy](#getContextKeysForPrincipalPolicy)
  - [GetContextKeysForPrincipalPolicyOptions](#GetContextKeysForPrincipalPolicyOptions)
  - [getCredentialReport](#getCredentialReport)
  - [getGroup](#getGroup)
  - [GetGroupOptions](#GetGroupOptions)
  - [getGroupPolicy](#getGroupPolicy)
  - [getInstanceProfile](#getInstanceProfile)
  - [getLoginProfile](#getLoginProfile)
  - [getOpenIDConnectProvider](#getOpenIDConnectProvider)
  - [getOrganizationsAccessReport](#getOrganizationsAccessReport)
  - [GetOrganizationsAccessReportOptions](#GetOrganizationsAccessReportOptions)
  - [getPolicy](#getPolicy)
  - [getPolicyVersion](#getPolicyVersion)
  - [getRole](#getRole)
  - [getRolePolicy](#getRolePolicy)
  - [getSAMLProvider](#getSAMLProvider)
  - [getSSHPublicKey](#getSSHPublicKey)
  - [getServerCertificate](#getServerCertificate)
  - [getServiceLastAccessedDetails](#getServiceLastAccessedDetails)
  - [GetServiceLastAccessedDetailsOptions](#GetServiceLastAccessedDetailsOptions)
  - [getServiceLastAccessedDetailsWithEntities](#getServiceLastAccessedDetailsWithEntities)
  - [GetServiceLastAccessedDetailsWithEntitiesOptions](#GetServiceLastAccessedDetailsWithEntitiesOptions)
  - [getServiceLinkedRoleDeletionStatus](#getServiceLinkedRoleDeletionStatus)
  - [getUser](#getUser)
  - [GetUserOptions](#GetUserOptions)
  - [getUserPolicy](#getUserPolicy)
  - [listAccessKeys](#listAccessKeys)
  - [ListAccessKeysOptions](#ListAccessKeysOptions)
  - [listAccountAliases](#listAccountAliases)
  - [ListAccountAliasesOptions](#ListAccountAliasesOptions)
  - [listAttachedGroupPolicies](#listAttachedGroupPolicies)
  - [ListAttachedGroupPoliciesOptions](#ListAttachedGroupPoliciesOptions)
  - [listAttachedRolePolicies](#listAttachedRolePolicies)
  - [ListAttachedRolePoliciesOptions](#ListAttachedRolePoliciesOptions)
  - [listAttachedUserPolicies](#listAttachedUserPolicies)
  - [ListAttachedUserPoliciesOptions](#ListAttachedUserPoliciesOptions)
  - [listEntitiesForPolicy](#listEntitiesForPolicy)
  - [ListEntitiesForPolicyOptions](#ListEntitiesForPolicyOptions)
  - [listGroupPolicies](#listGroupPolicies)
  - [ListGroupPoliciesOptions](#ListGroupPoliciesOptions)
  - [listGroups](#listGroups)
  - [ListGroupsOptions](#ListGroupsOptions)
  - [listGroupsForUser](#listGroupsForUser)
  - [ListGroupsForUserOptions](#ListGroupsForUserOptions)
  - [listInstanceProfiles](#listInstanceProfiles)
  - [ListInstanceProfilesOptions](#ListInstanceProfilesOptions)
  - [listInstanceProfilesForRole](#listInstanceProfilesForRole)
  - [ListInstanceProfilesForRoleOptions](#ListInstanceProfilesForRoleOptions)
  - [listMFADevices](#listMFADevices)
  - [ListMFADevicesOptions](#ListMFADevicesOptions)
  - [listOpenIDConnectProviders](#listOpenIDConnectProviders)
  - [listPolicies](#listPolicies)
  - [ListPoliciesOptions](#ListPoliciesOptions)
  - [listPoliciesGrantingServiceAccess](#listPoliciesGrantingServiceAccess)
  - [ListPoliciesGrantingServiceAccessOptions](#ListPoliciesGrantingServiceAccessOptions)
  - [listPolicyVersions](#listPolicyVersions)
  - [ListPolicyVersionsOptions](#ListPolicyVersionsOptions)
  - [listRolePolicies](#listRolePolicies)
  - [ListRolePoliciesOptions](#ListRolePoliciesOptions)
  - [listRoleTags](#listRoleTags)
  - [ListRoleTagsOptions](#ListRoleTagsOptions)
  - [listRoles](#listRoles)
  - [ListRolesOptions](#ListRolesOptions)
  - [listSAMLProviders](#listSAMLProviders)
  - [listSSHPublicKeys](#listSSHPublicKeys)
  - [ListSSHPublicKeysOptions](#ListSSHPublicKeysOptions)
  - [listServerCertificates](#listServerCertificates)
  - [ListServerCertificatesOptions](#ListServerCertificatesOptions)
  - [listServiceSpecificCredentials](#listServiceSpecificCredentials)
  - [ListServiceSpecificCredentialsOptions](#ListServiceSpecificCredentialsOptions)
  - [listSigningCertificates](#listSigningCertificates)
  - [ListSigningCertificatesOptions](#ListSigningCertificatesOptions)
  - [listUserPolicies](#listUserPolicies)
  - [ListUserPoliciesOptions](#ListUserPoliciesOptions)
  - [listUserTags](#listUserTags)
  - [ListUserTagsOptions](#ListUserTagsOptions)
  - [listUsers](#listUsers)
  - [ListUsersOptions](#ListUsersOptions)
  - [listVirtualMFADevices](#listVirtualMFADevices)
  - [ListVirtualMFADevicesOptions](#ListVirtualMFADevicesOptions)
  - [putGroupPolicy](#putGroupPolicy)
  - [putRolePermissionsBoundary](#putRolePermissionsBoundary)
  - [putRolePolicy](#putRolePolicy)
  - [putUserPermissionsBoundary](#putUserPermissionsBoundary)
  - [putUserPolicy](#putUserPolicy)
  - [removeClientIDFromOpenIDConnectProvider](#removeClientIDFromOpenIDConnectProvider)
  - [removeRoleFromInstanceProfile](#removeRoleFromInstanceProfile)
  - [removeUserFromGroup](#removeUserFromGroup)
  - [resetServiceSpecificCredential](#resetServiceSpecificCredential)
  - [ResetServiceSpecificCredentialOptions](#ResetServiceSpecificCredentialOptions)
  - [resyncMFADevice](#resyncMFADevice)
  - [setDefaultPolicyVersion](#setDefaultPolicyVersion)
  - [setSecurityTokenServicePreferences](#setSecurityTokenServicePreferences)
  - [simulateCustomPolicy](#simulateCustomPolicy)
  - [SimulateCustomPolicyOptions](#SimulateCustomPolicyOptions)
  - [simulatePrincipalPolicy](#simulatePrincipalPolicy)
  - [SimulatePrincipalPolicyOptions](#SimulatePrincipalPolicyOptions)
  - [tagRole](#tagRole)
  - [tagUser](#tagUser)
  - [untagRole](#untagRole)
  - [untagUser](#untagUser)
  - [updateAccessKey](#updateAccessKey)
  - [UpdateAccessKeyOptions](#UpdateAccessKeyOptions)
  - [updateAccountPasswordPolicy](#updateAccountPasswordPolicy)
  - [UpdateAccountPasswordPolicyOptions](#UpdateAccountPasswordPolicyOptions)
  - [updateAssumeRolePolicy](#updateAssumeRolePolicy)
  - [updateGroup](#updateGroup)
  - [UpdateGroupOptions](#UpdateGroupOptions)
  - [updateLoginProfile](#updateLoginProfile)
  - [UpdateLoginProfileOptions](#UpdateLoginProfileOptions)
  - [updateOpenIDConnectProviderThumbprint](#updateOpenIDConnectProviderThumbprint)
  - [updateRole](#updateRole)
  - [UpdateRoleOptions](#UpdateRoleOptions)
  - [updateRoleDescription](#updateRoleDescription)
  - [updateSAMLProvider](#updateSAMLProvider)
  - [updateSSHPublicKey](#updateSSHPublicKey)
  - [updateServerCertificate](#updateServerCertificate)
  - [UpdateServerCertificateOptions](#UpdateServerCertificateOptions)
  - [updateServiceSpecificCredential](#updateServiceSpecificCredential)
  - [UpdateServiceSpecificCredentialOptions](#UpdateServiceSpecificCredentialOptions)
  - [updateSigningCertificate](#updateSigningCertificate)
  - [UpdateSigningCertificateOptions](#UpdateSigningCertificateOptions)
  - [updateUser](#updateUser)
  - [UpdateUserOptions](#UpdateUserOptions)
  - [uploadSSHPublicKey](#uploadSSHPublicKey)
  - [uploadServerCertificate](#uploadServerCertificate)
  - [UploadServerCertificateOptions](#UploadServerCertificateOptions)
  - [uploadSigningCertificate](#uploadSigningCertificate)
  - [UploadSigningCertificateOptions](#UploadSigningCertificateOptions)

@docs addClientIDToOpenIDConnectProvider, addRoleToInstanceProfile, addUserToGroup, attachGroupPolicy, attachRolePolicy, attachUserPolicy, changePassword, createAccessKey, CreateAccessKeyOptions, createAccountAlias, createGroup, CreateGroupOptions, createInstanceProfile, CreateInstanceProfileOptions, createLoginProfile, CreateLoginProfileOptions, createOpenIDConnectProvider, CreateOpenIDConnectProviderOptions, createPolicy, CreatePolicyOptions, createPolicyVersion, CreatePolicyVersionOptions, createRole, CreateRoleOptions, createSAMLProvider, createServiceLinkedRole, CreateServiceLinkedRoleOptions, createServiceSpecificCredential, createUser, CreateUserOptions, createVirtualMFADevice, CreateVirtualMFADeviceOptions, deactivateMFADevice, deleteAccessKey, DeleteAccessKeyOptions, deleteAccountAlias, deleteAccountPasswordPolicy, deleteGroup, deleteGroupPolicy, deleteInstanceProfile, deleteLoginProfile, deleteOpenIDConnectProvider, deletePolicy, deletePolicyVersion, deleteRole, deleteRolePermissionsBoundary, deleteRolePolicy, deleteSAMLProvider, deleteSSHPublicKey, deleteServerCertificate, deleteServiceLinkedRole, deleteServiceSpecificCredential, DeleteServiceSpecificCredentialOptions, deleteSigningCertificate, DeleteSigningCertificateOptions, deleteUser, deleteUserPermissionsBoundary, deleteUserPolicy, deleteVirtualMFADevice, detachGroupPolicy, detachRolePolicy, detachUserPolicy, enableMFADevice, generateCredentialReport, generateOrganizationsAccessReport, GenerateOrganizationsAccessReportOptions, generateServiceLastAccessedDetails, getAccessKeyLastUsed, getAccountAuthorizationDetails, GetAccountAuthorizationDetailsOptions, getAccountPasswordPolicy, getAccountSummary, getContextKeysForCustomPolicy, getContextKeysForPrincipalPolicy, GetContextKeysForPrincipalPolicyOptions, getCredentialReport, getGroup, GetGroupOptions, getGroupPolicy, getInstanceProfile, getLoginProfile, getOpenIDConnectProvider, getOrganizationsAccessReport, GetOrganizationsAccessReportOptions, getPolicy, getPolicyVersion, getRole, getRolePolicy, getSAMLProvider, getSSHPublicKey, getServerCertificate, getServiceLastAccessedDetails, GetServiceLastAccessedDetailsOptions, getServiceLastAccessedDetailsWithEntities, GetServiceLastAccessedDetailsWithEntitiesOptions, getServiceLinkedRoleDeletionStatus, getUser, GetUserOptions, getUserPolicy, listAccessKeys, ListAccessKeysOptions, listAccountAliases, ListAccountAliasesOptions, listAttachedGroupPolicies, ListAttachedGroupPoliciesOptions, listAttachedRolePolicies, ListAttachedRolePoliciesOptions, listAttachedUserPolicies, ListAttachedUserPoliciesOptions, listEntitiesForPolicy, ListEntitiesForPolicyOptions, listGroupPolicies, ListGroupPoliciesOptions, listGroups, ListGroupsOptions, listGroupsForUser, ListGroupsForUserOptions, listInstanceProfiles, ListInstanceProfilesOptions, listInstanceProfilesForRole, ListInstanceProfilesForRoleOptions, listMFADevices, ListMFADevicesOptions, listOpenIDConnectProviders, listPolicies, ListPoliciesOptions, listPoliciesGrantingServiceAccess, ListPoliciesGrantingServiceAccessOptions, listPolicyVersions, ListPolicyVersionsOptions, listRolePolicies, ListRolePoliciesOptions, listRoleTags, ListRoleTagsOptions, listRoles, ListRolesOptions, listSAMLProviders, listSSHPublicKeys, ListSSHPublicKeysOptions, listServerCertificates, ListServerCertificatesOptions, listServiceSpecificCredentials, ListServiceSpecificCredentialsOptions, listSigningCertificates, ListSigningCertificatesOptions, listUserPolicies, ListUserPoliciesOptions, listUserTags, ListUserTagsOptions, listUsers, ListUsersOptions, listVirtualMFADevices, ListVirtualMFADevicesOptions, putGroupPolicy, putRolePermissionsBoundary, putRolePolicy, putUserPermissionsBoundary, putUserPolicy, removeClientIDFromOpenIDConnectProvider, removeRoleFromInstanceProfile, removeUserFromGroup, resetServiceSpecificCredential, ResetServiceSpecificCredentialOptions, resyncMFADevice, setDefaultPolicyVersion, setSecurityTokenServicePreferences, simulateCustomPolicy, SimulateCustomPolicyOptions, simulatePrincipalPolicy, SimulatePrincipalPolicyOptions, tagRole, tagUser, untagRole, untagUser, updateAccessKey, UpdateAccessKeyOptions, updateAccountPasswordPolicy, UpdateAccountPasswordPolicyOptions, updateAssumeRolePolicy, updateGroup, UpdateGroupOptions, updateLoginProfile, UpdateLoginProfileOptions, updateOpenIDConnectProviderThumbprint, updateRole, UpdateRoleOptions, updateRoleDescription, updateSAMLProvider, updateSSHPublicKey, updateServerCertificate, UpdateServerCertificateOptions, updateServiceSpecificCredential, UpdateServiceSpecificCredentialOptions, updateSigningCertificate, UpdateSigningCertificateOptions, updateUser, UpdateUserOptions, uploadSSHPublicKey, uploadServerCertificate, UploadServerCertificateOptions, uploadSigningCertificate, UploadSigningCertificateOptions


## Responses

  - [CreateAccessKeyResponse](#CreateAccessKeyResponse)
  - [CreateGroupResponse](#CreateGroupResponse)
  - [CreateInstanceProfileResponse](#CreateInstanceProfileResponse)
  - [CreateLoginProfileResponse](#CreateLoginProfileResponse)
  - [CreateOpenIDConnectProviderResponse](#CreateOpenIDConnectProviderResponse)
  - [CreatePolicyResponse](#CreatePolicyResponse)
  - [CreatePolicyVersionResponse](#CreatePolicyVersionResponse)
  - [CreateRoleResponse](#CreateRoleResponse)
  - [CreateSAMLProviderResponse](#CreateSAMLProviderResponse)
  - [CreateServiceLinkedRoleResponse](#CreateServiceLinkedRoleResponse)
  - [CreateServiceSpecificCredentialResponse](#CreateServiceSpecificCredentialResponse)
  - [CreateUserResponse](#CreateUserResponse)
  - [CreateVirtualMFADeviceResponse](#CreateVirtualMFADeviceResponse)
  - [DeleteServiceLinkedRoleResponse](#DeleteServiceLinkedRoleResponse)
  - [GenerateCredentialReportResponse](#GenerateCredentialReportResponse)
  - [GenerateOrganizationsAccessReportResponse](#GenerateOrganizationsAccessReportResponse)
  - [GenerateServiceLastAccessedDetailsResponse](#GenerateServiceLastAccessedDetailsResponse)
  - [GetAccessKeyLastUsedResponse](#GetAccessKeyLastUsedResponse)
  - [GetAccountAuthorizationDetailsResponse](#GetAccountAuthorizationDetailsResponse)
  - [GetAccountPasswordPolicyResponse](#GetAccountPasswordPolicyResponse)
  - [GetAccountSummaryResponse](#GetAccountSummaryResponse)
  - [GetContextKeysForPolicyResponse](#GetContextKeysForPolicyResponse)
  - [GetCredentialReportResponse](#GetCredentialReportResponse)
  - [GetGroupPolicyResponse](#GetGroupPolicyResponse)
  - [GetGroupResponse](#GetGroupResponse)
  - [GetInstanceProfileResponse](#GetInstanceProfileResponse)
  - [GetLoginProfileResponse](#GetLoginProfileResponse)
  - [GetOpenIDConnectProviderResponse](#GetOpenIDConnectProviderResponse)
  - [GetOrganizationsAccessReportResponse](#GetOrganizationsAccessReportResponse)
  - [GetPolicyResponse](#GetPolicyResponse)
  - [GetPolicyVersionResponse](#GetPolicyVersionResponse)
  - [GetRolePolicyResponse](#GetRolePolicyResponse)
  - [GetRoleResponse](#GetRoleResponse)
  - [GetSAMLProviderResponse](#GetSAMLProviderResponse)
  - [GetSSHPublicKeyResponse](#GetSSHPublicKeyResponse)
  - [GetServerCertificateResponse](#GetServerCertificateResponse)
  - [GetServiceLastAccessedDetailsResponse](#GetServiceLastAccessedDetailsResponse)
  - [GetServiceLastAccessedDetailsWithEntitiesResponse](#GetServiceLastAccessedDetailsWithEntitiesResponse)
  - [GetServiceLinkedRoleDeletionStatusResponse](#GetServiceLinkedRoleDeletionStatusResponse)
  - [GetUserPolicyResponse](#GetUserPolicyResponse)
  - [GetUserResponse](#GetUserResponse)
  - [ListAccessKeysResponse](#ListAccessKeysResponse)
  - [ListAccountAliasesResponse](#ListAccountAliasesResponse)
  - [ListAttachedGroupPoliciesResponse](#ListAttachedGroupPoliciesResponse)
  - [ListAttachedRolePoliciesResponse](#ListAttachedRolePoliciesResponse)
  - [ListAttachedUserPoliciesResponse](#ListAttachedUserPoliciesResponse)
  - [ListEntitiesForPolicyResponse](#ListEntitiesForPolicyResponse)
  - [ListGroupPoliciesResponse](#ListGroupPoliciesResponse)
  - [ListGroupsForUserResponse](#ListGroupsForUserResponse)
  - [ListGroupsResponse](#ListGroupsResponse)
  - [ListInstanceProfilesForRoleResponse](#ListInstanceProfilesForRoleResponse)
  - [ListInstanceProfilesResponse](#ListInstanceProfilesResponse)
  - [ListMFADevicesResponse](#ListMFADevicesResponse)
  - [ListOpenIDConnectProvidersResponse](#ListOpenIDConnectProvidersResponse)
  - [ListPoliciesGrantingServiceAccessResponse](#ListPoliciesGrantingServiceAccessResponse)
  - [ListPoliciesResponse](#ListPoliciesResponse)
  - [ListPolicyVersionsResponse](#ListPolicyVersionsResponse)
  - [ListRolePoliciesResponse](#ListRolePoliciesResponse)
  - [ListRoleTagsResponse](#ListRoleTagsResponse)
  - [ListRolesResponse](#ListRolesResponse)
  - [ListSAMLProvidersResponse](#ListSAMLProvidersResponse)
  - [ListSSHPublicKeysResponse](#ListSSHPublicKeysResponse)
  - [ListServerCertificatesResponse](#ListServerCertificatesResponse)
  - [ListServiceSpecificCredentialsResponse](#ListServiceSpecificCredentialsResponse)
  - [ListSigningCertificatesResponse](#ListSigningCertificatesResponse)
  - [ListUserPoliciesResponse](#ListUserPoliciesResponse)
  - [ListUserTagsResponse](#ListUserTagsResponse)
  - [ListUsersResponse](#ListUsersResponse)
  - [ListVirtualMFADevicesResponse](#ListVirtualMFADevicesResponse)
  - [ResetServiceSpecificCredentialResponse](#ResetServiceSpecificCredentialResponse)
  - [SimulatePolicyResponse](#SimulatePolicyResponse)
  - [UpdateRoleDescriptionResponse](#UpdateRoleDescriptionResponse)
  - [UpdateRoleResponse](#UpdateRoleResponse)
  - [UpdateSAMLProviderResponse](#UpdateSAMLProviderResponse)
  - [UploadSSHPublicKeyResponse](#UploadSSHPublicKeyResponse)
  - [UploadServerCertificateResponse](#UploadServerCertificateResponse)
  - [UploadSigningCertificateResponse](#UploadSigningCertificateResponse)

@docs CreateAccessKeyResponse, CreateGroupResponse, CreateInstanceProfileResponse, CreateLoginProfileResponse, CreateOpenIDConnectProviderResponse, CreatePolicyResponse, CreatePolicyVersionResponse, CreateRoleResponse, CreateSAMLProviderResponse, CreateServiceLinkedRoleResponse, CreateServiceSpecificCredentialResponse, CreateUserResponse, CreateVirtualMFADeviceResponse, DeleteServiceLinkedRoleResponse, GenerateCredentialReportResponse, GenerateOrganizationsAccessReportResponse, GenerateServiceLastAccessedDetailsResponse, GetAccessKeyLastUsedResponse, GetAccountAuthorizationDetailsResponse, GetAccountPasswordPolicyResponse, GetAccountSummaryResponse, GetContextKeysForPolicyResponse, GetCredentialReportResponse, GetGroupPolicyResponse, GetGroupResponse, GetInstanceProfileResponse, GetLoginProfileResponse, GetOpenIDConnectProviderResponse, GetOrganizationsAccessReportResponse, GetPolicyResponse, GetPolicyVersionResponse, GetRolePolicyResponse, GetRoleResponse, GetSAMLProviderResponse, GetSSHPublicKeyResponse, GetServerCertificateResponse, GetServiceLastAccessedDetailsResponse, GetServiceLastAccessedDetailsWithEntitiesResponse, GetServiceLinkedRoleDeletionStatusResponse, GetUserPolicyResponse, GetUserResponse, ListAccessKeysResponse, ListAccountAliasesResponse, ListAttachedGroupPoliciesResponse, ListAttachedRolePoliciesResponse, ListAttachedUserPoliciesResponse, ListEntitiesForPolicyResponse, ListGroupPoliciesResponse, ListGroupsForUserResponse, ListGroupsResponse, ListInstanceProfilesForRoleResponse, ListInstanceProfilesResponse, ListMFADevicesResponse, ListOpenIDConnectProvidersResponse, ListPoliciesGrantingServiceAccessResponse, ListPoliciesResponse, ListPolicyVersionsResponse, ListRolePoliciesResponse, ListRoleTagsResponse, ListRolesResponse, ListSAMLProvidersResponse, ListSSHPublicKeysResponse, ListServerCertificatesResponse, ListServiceSpecificCredentialsResponse, ListSigningCertificatesResponse, ListUserPoliciesResponse, ListUserTagsResponse, ListUsersResponse, ListVirtualMFADevicesResponse, ResetServiceSpecificCredentialResponse, SimulatePolicyResponse, UpdateRoleDescriptionResponse, UpdateRoleResponse, UpdateSAMLProviderResponse, UploadSSHPublicKeyResponse, UploadServerCertificateResponse, UploadSigningCertificateResponse


## Records

  - [AccessDetail](#AccessDetail)
  - [AccessKey](#AccessKey)
  - [AccessKeyLastUsed](#AccessKeyLastUsed)
  - [AccessKeyMetadata](#AccessKeyMetadata)
  - [AttachedPermissionsBoundary](#AttachedPermissionsBoundary)
  - [AttachedPolicy](#AttachedPolicy)
  - [ContextEntry](#ContextEntry)
  - [DeletionTaskFailureReasonType](#DeletionTaskFailureReasonType)
  - [EntityDetails](#EntityDetails)
  - [EntityInfo](#EntityInfo)
  - [ErrorDetails](#ErrorDetails)
  - [EvaluationResult](#EvaluationResult)
  - [Group](#Group)
  - [GroupDetail](#GroupDetail)
  - [InstanceProfile](#InstanceProfile)
  - [ListPoliciesGrantingServiceAccessEntry](#ListPoliciesGrantingServiceAccessEntry)
  - [LoginProfile](#LoginProfile)
  - [MFADevice](#MFADevice)
  - [ManagedPolicyDetail](#ManagedPolicyDetail)
  - [OpenIDConnectProviderListEntry](#OpenIDConnectProviderListEntry)
  - [OrganizationsDecisionDetail](#OrganizationsDecisionDetail)
  - [PasswordPolicy](#PasswordPolicy)
  - [Policy](#Policy)
  - [PolicyDetail](#PolicyDetail)
  - [PolicyGrantingServiceAccess](#PolicyGrantingServiceAccess)
  - [PolicyGroup](#PolicyGroup)
  - [PolicyRole](#PolicyRole)
  - [PolicyUser](#PolicyUser)
  - [PolicyVersion](#PolicyVersion)
  - [Position](#Position)
  - [ResourceSpecificResult](#ResourceSpecificResult)
  - [Role](#Role)
  - [RoleDetail](#RoleDetail)
  - [RoleUsageType](#RoleUsageType)
  - [SAMLProviderListEntry](#SAMLProviderListEntry)
  - [SSHPublicKey](#SSHPublicKey)
  - [SSHPublicKeyMetadata](#SSHPublicKeyMetadata)
  - [ServerCertificate](#ServerCertificate)
  - [ServerCertificateMetadata](#ServerCertificateMetadata)
  - [ServiceLastAccessed](#ServiceLastAccessed)
  - [ServiceSpecificCredential](#ServiceSpecificCredential)
  - [ServiceSpecificCredentialMetadata](#ServiceSpecificCredentialMetadata)
  - [SigningCertificate](#SigningCertificate)
  - [Statement](#Statement)
  - [Tag](#Tag)
  - [User](#User)
  - [UserDetail](#UserDetail)
  - [VirtualMFADevice](#VirtualMFADevice)

@docs AccessDetail, AccessKey, AccessKeyLastUsed, AccessKeyMetadata, AttachedPermissionsBoundary, AttachedPolicy, ContextEntry, DeletionTaskFailureReasonType, EntityDetails, EntityInfo, ErrorDetails, EvaluationResult, Group, GroupDetail, InstanceProfile, ListPoliciesGrantingServiceAccessEntry, LoginProfile, MFADevice, ManagedPolicyDetail, OpenIDConnectProviderListEntry, OrganizationsDecisionDetail, PasswordPolicy, Policy, PolicyDetail, PolicyGrantingServiceAccess, PolicyGroup, PolicyRole, PolicyUser, PolicyVersion, Position, ResourceSpecificResult, Role, RoleDetail, RoleUsageType, SAMLProviderListEntry, SSHPublicKey, SSHPublicKeyMetadata, ServerCertificate, ServerCertificateMetadata, ServiceLastAccessed, ServiceSpecificCredential, ServiceSpecificCredentialMetadata, SigningCertificate, Statement, Tag, User, UserDetail, VirtualMFADevice


## Unions

  - [ContextKeyTypeEnum](#ContextKeyTypeEnum)
  - [DeletionTaskStatusType](#DeletionTaskStatusType)
  - [EntityType](#EntityType)
  - [PermissionsBoundaryAttachmentType](#PermissionsBoundaryAttachmentType)
  - [PolicyEvaluationDecisionType](#PolicyEvaluationDecisionType)
  - [PolicySourceType](#PolicySourceType)
  - [PolicyUsageType](#PolicyUsageType)
  - [ReportFormatType](#ReportFormatType)
  - [ReportStateType](#ReportStateType)
  - [AssignmentStatusType](#AssignmentStatusType)
  - [EncodingType](#EncodingType)
  - [GlobalEndpointTokenVersion](#GlobalEndpointTokenVersion)
  - [JobStatusType](#JobStatusType)
  - [PolicyOwnerEntityType](#PolicyOwnerEntityType)
  - [PolicyScopeType](#PolicyScopeType)
  - [PolicyType](#PolicyType)
  - [SortKeyType](#SortKeyType)
  - [StatusType](#StatusType)
  - [SummaryKeyType](#SummaryKeyType)

@docs ContextKeyTypeEnum, DeletionTaskStatusType, EntityType, PermissionsBoundaryAttachmentType, PolicyEvaluationDecisionType, PolicySourceType, PolicyUsageType, ReportFormatType, ReportStateType, AssignmentStatusType, EncodingType, GlobalEndpointTokenVersion, JobStatusType, PolicyOwnerEntityType, PolicyScopeType, PolicyType, SortKeyType, StatusType, SummaryKeyType

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
service : AWS.Core.Service.Service
service =
    AWS.Core.Service.defineGlobal
        "iam"
        "2010-05-08"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "https://iam.amazonaws.com/doc/2010-05-08/")



-- OPERATIONS


{-|

<p>Adds a new client ID (also known as audience) to the list of client IDs already registered for the specified IAM OpenID Connect (OIDC) provider resource.</p> <p>This operation is idempotent; it does not fail or return an error if you add an existing client ID to the provider.</p>

**Required Parameters**

  - `openIDConnectProviderArn` **:** `String`
  - `clientID` **:** `String`

-}
addClientIDToOpenIDConnectProvider :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
addClientIDToOpenIDConnectProvider openIDConnectProviderArn clientID =
    let
        requestInput =
            AddClientIDToOpenIDConnectProviderRequest
                openIDConnectProviderArn
                clientID
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "AddClientIDToOpenIDConnectProvider" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs addClientIDToOpenIDConnectProviderRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AddClientIDToOpenIDConnectProvider"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Adds the specified IAM role to the specified instance profile. An instance profile can contain only one role, and this limit cannot be increased. You can remove the existing role and then add a different role to an instance profile. You must then wait for the change to appear across all of AWS because of <a href="https://en.wikipedia.org/wiki/Eventual_consistency">eventual consistency</a>. To force the change, you must <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIamInstanceProfile.html">disassociate the instance profile</a> and then <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AssociateIamInstanceProfile.html">associate the instance profile</a>, or you can stop your instance and then restart it.</p> <note> <p>The caller of this API must be granted the <code>PassRole</code> permission on the IAM role by a permissions policy.</p> </note> <p>For more information about roles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>. For more information about instance profiles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p>

**Required Parameters**

  - `instanceProfileName` **:** `String`
  - `roleName` **:** `String`

-}
addRoleToInstanceProfile :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
addRoleToInstanceProfile instanceProfileName roleName =
    let
        requestInput =
            AddRoleToInstanceProfileRequest
                instanceProfileName
                roleName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "AddRoleToInstanceProfile" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs addRoleToInstanceProfileRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AddRoleToInstanceProfile"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Adds the specified user to the specified group.</p>

**Required Parameters**

  - `groupName` **:** `String`
  - `userName` **:** `String`

-}
addUserToGroup :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
addUserToGroup groupName userName =
    let
        requestInput =
            AddUserToGroupRequest
                groupName
                userName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "AddUserToGroup" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs addUserToGroupRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AddUserToGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Attaches the specified managed policy to the specified IAM group.</p> <p>You use this API to attach a managed policy to a group. To embed an inline policy in a group, use <a>PutGroupPolicy</a>.</p> <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `groupName` **:** `String`
  - `policyArn` **:** `String`

-}
attachGroupPolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
attachGroupPolicy groupName policyArn =
    let
        requestInput =
            AttachGroupPolicyRequest
                groupName
                policyArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "AttachGroupPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs attachGroupPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AttachGroupPolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Attaches the specified managed policy to the specified IAM role. When you attach a managed policy to a role, the managed policy becomes part of the role's permission (access) policy.</p> <note> <p>You cannot use a managed policy as the role's trust policy. The role's trust policy is created at the same time as the role, using <a>CreateRole</a>. You can update a role's trust policy using <a>UpdateAssumeRolePolicy</a>.</p> </note> <p>Use this API to attach a <i>managed</i> policy to a role. To embed an inline policy in a role, use <a>PutRolePolicy</a>. For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `roleName` **:** `String`
  - `policyArn` **:** `String`

-}
attachRolePolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
attachRolePolicy roleName policyArn =
    let
        requestInput =
            AttachRolePolicyRequest
                roleName
                policyArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "AttachRolePolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs attachRolePolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AttachRolePolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Attaches the specified managed policy to the specified user.</p> <p>You use this API to attach a <i>managed</i> policy to a user. To embed an inline policy in a user, use <a>PutUserPolicy</a>.</p> <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `policyArn` **:** `String`

-}
attachUserPolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
attachUserPolicy userName policyArn =
    let
        requestInput =
            AttachUserPolicyRequest
                userName
                policyArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "AttachUserPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs attachUserPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "AttachUserPolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Changes the password of the IAM user who is calling this operation. The AWS account root user password is not affected by this operation.</p> <p>To change the password for a different user, see <a>UpdateLoginProfile</a>. For more information about modifying passwords, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `oldPassword` **:** `String`
  - `newPassword` **:** `String`

-}
changePassword :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
changePassword oldPassword newPassword =
    let
        requestInput =
            ChangePasswordRequest
                oldPassword
                newPassword
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ChangePassword" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs changePasswordRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ChangePassword"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p> Creates a new AWS secret access key and corresponding AWS access key ID for the specified user. The default status for new keys is <code>Active</code>.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials. This is true even if the AWS account has no associated users.</p> <p> For information about limits on the number of keys you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <important> <p>To ensure the security of your AWS account, the secret access key is accessible only during key and user creation. You must save the key (for example, in a text file) if you want to be able to access it again. If a secret key is lost, you can delete the access keys for the associated user and then create new keys.</p> </important>

**Required Parameters**

-}
createAccessKey :
    (CreateAccessKeyOptions -> CreateAccessKeyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateAccessKeyResponse)
createAccessKey setOptions =
    let
        requestInput =
            CreateAccessKeyRequest
                options.userName

        options =
            setOptions (CreateAccessKeyOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreateAccessKey" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createAccessKeyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateAccessKey"
            (AWS.Core.Decode.ResultDecoder "CreateAccessKeyResult" createAccessKeyResponseDecoder)
        )


{-| Options for a createAccessKey request
-}
type alias CreateAccessKeyOptions =
    { userName : Maybe String
    }


{-|

<p>Creates an alias for your AWS account. For information about using an AWS account alias, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `accountAlias` **:** `String`

-}
createAccountAlias :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
createAccountAlias accountAlias =
    let
        requestInput =
            CreateAccountAliasRequest
                accountAlias
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreateAccountAlias" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createAccountAliasRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateAccountAlias"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Creates a new group.</p> <p> For information about the number of groups you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `groupName` **:** `String`

-}
createGroup :
    String
    -> (CreateGroupOptions -> CreateGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateGroupResponse)
createGroup groupName setOptions =
    let
        requestInput =
            CreateGroupRequest
                options.path
                groupName

        options =
            setOptions (CreateGroupOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreateGroup" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createGroupRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateGroup"
            (AWS.Core.Decode.ResultDecoder "CreateGroupResult" createGroupResponseDecoder)
        )


{-| Options for a createGroup request
-}
type alias CreateGroupOptions =
    { path : Maybe String
    }


{-|

<p> Creates a new instance profile. For information about instance profiles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p> <p> For information about the number of instance profiles you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `instanceProfileName` **:** `String`

-}
createInstanceProfile :
    String
    -> (CreateInstanceProfileOptions -> CreateInstanceProfileOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateInstanceProfileResponse)
createInstanceProfile instanceProfileName setOptions =
    let
        requestInput =
            CreateInstanceProfileRequest
                instanceProfileName
                options.path

        options =
            setOptions (CreateInstanceProfileOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreateInstanceProfile" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createInstanceProfileRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateInstanceProfile"
            (AWS.Core.Decode.ResultDecoder "CreateInstanceProfileResult" createInstanceProfileResponseDecoder)
        )


{-| Options for a createInstanceProfile request
-}
type alias CreateInstanceProfileOptions =
    { path : Maybe String
    }


{-|

<p> Creates a password for the specified user, giving the user the ability to access AWS services through the AWS Management Console. For more information about managing passwords, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `password` **:** `String`

-}
createLoginProfile :
    String
    -> String
    -> (CreateLoginProfileOptions -> CreateLoginProfileOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateLoginProfileResponse)
createLoginProfile userName password setOptions =
    let
        requestInput =
            CreateLoginProfileRequest
                userName
                password
                options.passwordResetRequired

        options =
            setOptions (CreateLoginProfileOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreateLoginProfile" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createLoginProfileRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateLoginProfile"
            (AWS.Core.Decode.ResultDecoder "CreateLoginProfileResult" createLoginProfileResponseDecoder)
        )


{-| Options for a createLoginProfile request
-}
type alias CreateLoginProfileOptions =
    { passwordResetRequired : Maybe Bool
    }


{-|

<p>Creates an IAM entity to describe an identity provider (IdP) that supports <a href="http://openid.net/connect/">OpenID Connect (OIDC)</a>.</p> <p>The OIDC provider that you create with this operation can be used as a principal in a role's trust policy. Such a policy establishes a trust relationship between AWS and the OIDC provider.</p> <p>When you create the IAM OIDC provider, you specify the following:</p> <ul> <li> <p>The URL of the OIDC identity provider (IdP) to trust</p> </li> <li> <p>A list of client IDs (also known as audiences) that identify the application or applications that are allowed to authenticate using the OIDC provider</p> </li> <li> <p>A list of thumbprints of the server certificate(s) that the IdP uses</p> </li> </ul> <p>You get all of this information from the OIDC IdP that you want to use to access AWS.</p> <note> <p>The trust for the OIDC provider is derived from the IAM provider that this operation creates. Therefore, it is best to limit access to the <a>CreateOpenIDConnectProvider</a> operation to highly privileged users.</p> </note>

**Required Parameters**

  - `url` **:** `String`
  - `thumbprintList` **:** `(List String)`

-}
createOpenIDConnectProvider :
    String
    -> List String
    -> (CreateOpenIDConnectProviderOptions -> CreateOpenIDConnectProviderOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateOpenIDConnectProviderResponse)
createOpenIDConnectProvider url thumbprintList setOptions =
    let
        requestInput =
            CreateOpenIDConnectProviderRequest
                url
                options.clientIDList
                thumbprintList

        options =
            setOptions (CreateOpenIDConnectProviderOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreateOpenIDConnectProvider" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createOpenIDConnectProviderRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateOpenIDConnectProvider"
            (AWS.Core.Decode.ResultDecoder "CreateOpenIDConnectProviderResult" createOpenIDConnectProviderResponseDecoder)
        )


{-| Options for a createOpenIDConnectProvider request
-}
type alias CreateOpenIDConnectProviderOptions =
    { clientIDList : Maybe (List String)
    }


{-|

<p>Creates a new managed policy for your AWS account.</p> <p>This operation creates a policy version with a version identifier of <code>v1</code> and sets v1 as the policy's default version. For more information about policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about managed policies in general, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `policyName` **:** `String`
  - `policyDocument` **:** `String`

-}
createPolicy :
    String
    -> String
    -> (CreatePolicyOptions -> CreatePolicyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreatePolicyResponse)
createPolicy policyName policyDocument setOptions =
    let
        requestInput =
            CreatePolicyRequest
                policyName
                options.path
                policyDocument
                options.description

        options =
            setOptions (CreatePolicyOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreatePolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreatePolicy"
            (AWS.Core.Decode.ResultDecoder "CreatePolicyResult" createPolicyResponseDecoder)
        )


{-| Options for a createPolicy request
-}
type alias CreatePolicyOptions =
    { path : Maybe String
    , description : Maybe String
    }


{-|

<p>Creates a new version of the specified managed policy. To update a managed policy, you create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must delete an existing version using <a>DeletePolicyVersion</a> before you create a new version.</p> <p>Optionally, you can set the new version as the policy's default version. The default version is the version that is in effect for the IAM users, groups, and roles to which the policy is attached.</p> <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `policyArn` **:** `String`
  - `policyDocument` **:** `String`

-}
createPolicyVersion :
    String
    -> String
    -> (CreatePolicyVersionOptions -> CreatePolicyVersionOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreatePolicyVersionResponse)
createPolicyVersion policyArn policyDocument setOptions =
    let
        requestInput =
            CreatePolicyVersionRequest
                policyArn
                policyDocument
                options.setAsDefault

        options =
            setOptions (CreatePolicyVersionOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreatePolicyVersion" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createPolicyVersionRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreatePolicyVersion"
            (AWS.Core.Decode.ResultDecoder "CreatePolicyVersionResult" createPolicyVersionResponseDecoder)
        )


{-| Options for a createPolicyVersion request
-}
type alias CreatePolicyVersionOptions =
    { setAsDefault : Maybe Bool
    }


{-|

<p>Creates a new role for your AWS account. For more information about roles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">IAM Roles</a>. For information about limitations on role names and the number of roles you can create, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `roleName` **:** `String`
  - `assumeRolePolicyDocument` **:** `String`

-}
createRole :
    String
    -> String
    -> (CreateRoleOptions -> CreateRoleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateRoleResponse)
createRole roleName assumeRolePolicyDocument setOptions =
    let
        requestInput =
            CreateRoleRequest
                options.path
                roleName
                assumeRolePolicyDocument
                options.description
                options.maxSessionDuration
                options.permissionsBoundary
                options.tags

        options =
            setOptions (CreateRoleOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreateRole" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createRoleRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateRole"
            (AWS.Core.Decode.ResultDecoder "CreateRoleResult" createRoleResponseDecoder)
        )


{-| Options for a createRole request
-}
type alias CreateRoleOptions =
    { path : Maybe String
    , description : Maybe String
    , maxSessionDuration : Maybe Int
    , permissionsBoundary : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates an IAM resource that describes an identity provider (IdP) that supports SAML 2.0.</p> <p>The SAML provider resource that you create with this operation can be used as a principal in an IAM role's trust policy. Such a policy can enable federated users who sign in using the SAML IdP to assume the role. You can create an IAM role that supports Web-based single sign-on (SSO) to the AWS Management Console or one that supports API access to AWS.</p> <p>When you create the SAML provider resource, you upload a SAML metadata document that you get from your IdP. That document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that the IdP sends. You must generate the metadata document using the identity management software that is used as your organization's IdP.</p> <note> <p> This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note> <p> For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html">Enabling SAML 2.0 Federated Users to Access the AWS Management Console</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based Federation</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `sAMLMetadataDocument` **:** `String`
  - `name` **:** `String`

-}
createSAMLProvider :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateSAMLProviderResponse)
createSAMLProvider sAMLMetadataDocument name =
    let
        requestInput =
            CreateSAMLProviderRequest
                sAMLMetadataDocument
                name
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreateSAMLProvider" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createSAMLProviderRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateSAMLProvider"
            (AWS.Core.Decode.ResultDecoder "CreateSAMLProviderResult" createSAMLProviderResponseDecoder)
        )


{-|

<p>Creates an IAM role that is linked to a specific AWS service. The service controls the attached policies and when the role can be deleted. This helps ensure that the service is not broken by an unexpectedly changed or deleted role, which could put your AWS resources into an unknown state. Allowing the service to control the role helps improve service stability and proper cleanup when a service and its role are no longer needed. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">Using Service-Linked Roles</a> in the <i>IAM User Guide</i>. </p> <p>To attach a policy to this service-linked role, you must make the request using the AWS service that depends on this role.</p>

**Required Parameters**

  - `aWSServiceName` **:** `String`

-}
createServiceLinkedRole :
    String
    -> (CreateServiceLinkedRoleOptions -> CreateServiceLinkedRoleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateServiceLinkedRoleResponse)
createServiceLinkedRole aWSServiceName setOptions =
    let
        requestInput =
            CreateServiceLinkedRoleRequest
                aWSServiceName
                options.description
                options.customSuffix

        options =
            setOptions (CreateServiceLinkedRoleOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreateServiceLinkedRole" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createServiceLinkedRoleRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateServiceLinkedRole"
            (AWS.Core.Decode.ResultDecoder "CreateServiceLinkedRoleResult" createServiceLinkedRoleResponseDecoder)
        )


{-| Options for a createServiceLinkedRole request
-}
type alias CreateServiceLinkedRoleOptions =
    { description : Maybe String
    , customSuffix : Maybe String
    }


{-|

<p>Generates a set of credentials consisting of a user name and password that can be used to access the service specified in the request. These credentials are generated by IAM, and can be used only for the specified service. </p> <p>You can have a maximum of two sets of service-specific credentials for each supported service per user.</p> <p>The only supported service at this time is AWS CodeCommit.</p> <p>You can reset the password to a new service-generated value by calling <a>ResetServiceSpecificCredential</a>.</p> <p>For more information about service-specific credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html">Using IAM with AWS CodeCommit: Git Credentials, SSH Keys, and AWS Access Keys</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `serviceName` **:** `String`

-}
createServiceSpecificCredential :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateServiceSpecificCredentialResponse)
createServiceSpecificCredential userName serviceName =
    let
        requestInput =
            CreateServiceSpecificCredentialRequest
                userName
                serviceName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreateServiceSpecificCredential" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createServiceSpecificCredentialRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateServiceSpecificCredential"
            (AWS.Core.Decode.ResultDecoder "CreateServiceSpecificCredentialResult" createServiceSpecificCredentialResponseDecoder)
        )


{-|

<p>Creates a new IAM user for your AWS account.</p> <p> For information about limitations on the number of IAM users you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`

-}
createUser :
    String
    -> (CreateUserOptions -> CreateUserOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateUserResponse)
createUser userName setOptions =
    let
        requestInput =
            CreateUserRequest
                options.path
                userName
                options.permissionsBoundary
                options.tags

        options =
            setOptions (CreateUserOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreateUser" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createUserRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateUser"
            (AWS.Core.Decode.ResultDecoder "CreateUserResult" createUserResponseDecoder)
        )


{-| Options for a createUser request
-}
type alias CreateUserOptions =
    { path : Maybe String
    , permissionsBoundary : Maybe String
    , tags : Maybe (List Tag)
    }


{-|

<p>Creates a new virtual MFA device for the AWS account. After creating the virtual MFA, use <a>EnableMFADevice</a> to attach the MFA device to an IAM user. For more information about creating and working with virtual MFA devices, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of MFA devices you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on Entities</a> in the <i>IAM User Guide</i>.</p> <important> <p>The seed information contained in the QR code and the Base32 string should be treated like any other secret access information. In other words, protect the seed information as you would your AWS access keys or your passwords. After you provision your virtual device, you should ensure that the information is destroyed following secure procedures.</p> </important>

**Required Parameters**

  - `virtualMFADeviceName` **:** `String`

-}
createVirtualMFADevice :
    String
    -> (CreateVirtualMFADeviceOptions -> CreateVirtualMFADeviceOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response CreateVirtualMFADeviceResponse)
createVirtualMFADevice virtualMFADeviceName setOptions =
    let
        requestInput =
            CreateVirtualMFADeviceRequest
                options.path
                virtualMFADeviceName

        options =
            setOptions (CreateVirtualMFADeviceOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "CreateVirtualMFADevice" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs createVirtualMFADeviceRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "CreateVirtualMFADevice"
            (AWS.Core.Decode.ResultDecoder "CreateVirtualMFADeviceResult" createVirtualMFADeviceResponseDecoder)
        )


{-| Options for a createVirtualMFADevice request
-}
type alias CreateVirtualMFADeviceOptions =
    { path : Maybe String
    }


{-|

<p>Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled.</p> <p>For more information about creating and working with virtual MFA devices, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Enabling a Virtual Multi-factor Authentication (MFA) Device</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `serialNumber` **:** `String`

-}
deactivateMFADevice :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deactivateMFADevice userName serialNumber =
    let
        requestInput =
            DeactivateMFADeviceRequest
                userName
                serialNumber
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeactivateMFADevice" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deactivateMFADeviceRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeactivateMFADevice"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the access key pair associated with the specified IAM user.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p>

**Required Parameters**

  - `accessKeyId` **:** `String`

-}
deleteAccessKey :
    String
    -> (DeleteAccessKeyOptions -> DeleteAccessKeyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteAccessKey accessKeyId setOptions =
    let
        requestInput =
            DeleteAccessKeyRequest
                options.userName
                accessKeyId

        options =
            setOptions (DeleteAccessKeyOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteAccessKey" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteAccessKeyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteAccessKey"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a deleteAccessKey request
-}
type alias DeleteAccessKeyOptions =
    { userName : Maybe String
    }


{-|

<p> Deletes the specified AWS account alias. For information about using an AWS account alias, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `accountAlias` **:** `String`

-}
deleteAccountAlias :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteAccountAlias accountAlias =
    let
        requestInput =
            DeleteAccountAliasRequest
                accountAlias
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteAccountAlias" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteAccountAliasRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteAccountAlias"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the password policy for the AWS account. There are no parameters.</p>

**Required Parameters**

-}
deleteAccountPasswordPolicy : AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteAccountPasswordPolicy =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        [ ( "Action", "DeleteAccountPasswordPolicy" ) ]
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteAccountPasswordPolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified IAM group. The group must not contain any users or have any attached policies.</p>

**Required Parameters**

  - `groupName` **:** `String`

-}
deleteGroup :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteGroup groupName =
    let
        requestInput =
            DeleteGroupRequest
                groupName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteGroup" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteGroupRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified inline policy that is embedded in the specified IAM group.</p> <p>A group can also have managed policies attached to it. To detach a managed policy from a group, use <a>DetachGroupPolicy</a>. For more information about policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `groupName` **:** `String`
  - `policyName` **:** `String`

-}
deleteGroupPolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteGroupPolicy groupName policyName =
    let
        requestInput =
            DeleteGroupPolicyRequest
                groupName
                policyName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteGroupPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteGroupPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteGroupPolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified instance profile. The instance profile must not have an associated role.</p> <important> <p>Make sure that you do not have any Amazon EC2 instances running with the instance profile you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.</p> </important> <p>For more information about instance profiles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p>

**Required Parameters**

  - `instanceProfileName` **:** `String`

-}
deleteInstanceProfile :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteInstanceProfile instanceProfileName =
    let
        requestInput =
            DeleteInstanceProfileRequest
                instanceProfileName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteInstanceProfile" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteInstanceProfileRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteInstanceProfile"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the password for the specified IAM user, which terminates the user's ability to access AWS services through the AWS Management Console.</p> <important> <p> Deleting a user's password does not prevent a user from accessing AWS through the command line interface or the API. To prevent all user access, you must also either make any access keys inactive or delete them. For more information about making keys inactive or deleting them, see <a>UpdateAccessKey</a> and <a>DeleteAccessKey</a>. </p> </important>

**Required Parameters**

  - `userName` **:** `String`

-}
deleteLoginProfile :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteLoginProfile userName =
    let
        requestInput =
            DeleteLoginProfileRequest
                userName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteLoginProfile" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteLoginProfileRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteLoginProfile"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes an OpenID Connect identity provider (IdP) resource object in IAM.</p> <p>Deleting an IAM OIDC provider resource does not update any roles that reference the provider as a principal in their trust policies. Any attempt to assume a role that references a deleted provider fails.</p> <p>This operation is idempotent; it does not fail or return an error if you call the operation for a provider that does not exist.</p>

**Required Parameters**

  - `openIDConnectProviderArn` **:** `String`

-}
deleteOpenIDConnectProvider :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteOpenIDConnectProvider openIDConnectProviderArn =
    let
        requestInput =
            DeleteOpenIDConnectProviderRequest
                openIDConnectProviderArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteOpenIDConnectProvider" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteOpenIDConnectProviderRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteOpenIDConnectProvider"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified managed policy.</p> <p>Before you can delete a managed policy, you must first detach the policy from all users, groups, and roles that it is attached to. In addition, you must delete all the policy's versions. The following steps describe the process for deleting a managed policy:</p> <ul> <li> <p>Detach the policy from all users, groups, and roles that the policy is attached to, using the <a>DetachUserPolicy</a>, <a>DetachGroupPolicy</a>, or <a>DetachRolePolicy</a> API operations. To list all the users, groups, and roles that a policy is attached to, use <a>ListEntitiesForPolicy</a>.</p> </li> <li> <p>Delete all versions of the policy using <a>DeletePolicyVersion</a>. To list the policy's versions, use <a>ListPolicyVersions</a>. You cannot use <a>DeletePolicyVersion</a> to delete the version that is marked as the default version. You delete the policy's default version in the next step of the process.</p> </li> <li> <p>Delete the policy (this automatically deletes the policy's default version) using this API.</p> </li> </ul> <p>For information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `policyArn` **:** `String`

-}
deletePolicy :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deletePolicy policyArn =
    let
        requestInput =
            DeletePolicyRequest
                policyArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeletePolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deletePolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeletePolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified version from the specified managed policy.</p> <p>You cannot delete the default version from a policy using this API. To delete the default version from a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default version, use <a>ListPolicyVersions</a>.</p> <p>For information about versions for managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `policyArn` **:** `String`
  - `versionId` **:** `String`

-}
deletePolicyVersion :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deletePolicyVersion policyArn versionId =
    let
        requestInput =
            DeletePolicyVersionRequest
                policyArn
                versionId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeletePolicyVersion" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deletePolicyVersionRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeletePolicyVersion"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified role. The role must not have any policies attached. For more information about roles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>.</p> <important> <p>Make sure that you do not have any Amazon EC2 instances running with the role you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.</p> </important>

**Required Parameters**

  - `roleName` **:** `String`

-}
deleteRole :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteRole roleName =
    let
        requestInput =
            DeleteRoleRequest
                roleName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteRole" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteRoleRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteRole"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the permissions boundary for the specified IAM role. </p> <important> <p>Deleting the permissions boundary for a role might increase its permissions. For example, it might allow anyone who assumes the role to perform all the actions granted in its permissions policies. </p> </important>

**Required Parameters**

  - `roleName` **:** `String`

-}
deleteRolePermissionsBoundary :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteRolePermissionsBoundary roleName =
    let
        requestInput =
            DeleteRolePermissionsBoundaryRequest
                roleName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteRolePermissionsBoundary" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteRolePermissionsBoundaryRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteRolePermissionsBoundary"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified inline policy that is embedded in the specified IAM role.</p> <p>A role can also have managed policies attached to it. To detach a managed policy from a role, use <a>DetachRolePolicy</a>. For more information about policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `roleName` **:** `String`
  - `policyName` **:** `String`

-}
deleteRolePolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteRolePolicy roleName policyName =
    let
        requestInput =
            DeleteRolePolicyRequest
                roleName
                policyName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteRolePolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteRolePolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteRolePolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes a SAML provider resource in IAM.</p> <p>Deleting the provider resource from IAM does not update any roles that reference the SAML provider resource's ARN as a principal in their trust policies. Any attempt to assume a role that references a non-existent provider resource ARN fails.</p> <note> <p> This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>

**Required Parameters**

  - `sAMLProviderArn` **:** `String`

-}
deleteSAMLProvider :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteSAMLProvider sAMLProviderArn =
    let
        requestInput =
            DeleteSAMLProviderRequest
                sAMLProviderArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteSAMLProvider" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteSAMLProviderRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteSAMLProvider"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified SSH public key.</p> <p>The SSH public key deleted by this operation is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `sSHPublicKeyId` **:** `String`

-}
deleteSSHPublicKey :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteSSHPublicKey userName sSHPublicKeyId =
    let
        requestInput =
            DeleteSSHPublicKeyRequest
                userName
                sSHPublicKeyId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteSSHPublicKey" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteSSHPublicKeyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteSSHPublicKey"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified server certificate.</p> <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.</p> <important> <p> If you are using a server certificate with Elastic Load Balancing, deleting the certificate could have implications for your application. If Elastic Load Balancing doesn't detect the deletion of bound certificates, it may continue to use the certificates. This could cause Elastic Load Balancing to stop accepting traffic. We recommend that you remove the reference to the certificate from Elastic Load Balancing before using this command to delete the certificate. For more information, go to <a href="https://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html">DeleteLoadBalancerListeners</a> in the <i>Elastic Load Balancing API Reference</i>.</p> </important>

**Required Parameters**

  - `serverCertificateName` **:** `String`

-}
deleteServerCertificate :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteServerCertificate serverCertificateName =
    let
        requestInput =
            DeleteServerCertificateRequest
                serverCertificateName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteServerCertificate" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteServerCertificateRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteServerCertificate"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Submits a service-linked role deletion request and returns a <code>DeletionTaskId</code>, which you can use to check the status of the deletion. Before you call this operation, confirm that the role has no active sessions and that any resources used by the role in the linked service are deleted. If you call this operation more than once for the same service-linked role and an earlier deletion task is not complete, then the <code>DeletionTaskId</code> of the earlier request is returned.</p> <p>If you submit a deletion request for a service-linked role whose linked service is still accessing a resource, then the deletion task fails. If it fails, the <a>GetServiceLinkedRoleDeletionStatus</a> API operation returns the reason for the failure, usually including the resources that must be deleted. To delete the service-linked role, you must first remove those resources from the linked service and then submit the deletion request again. Resources are specific to the service that is linked to the role. For more information about removing resources from a service, see the <a href="http://docs.aws.amazon.com/">AWS documentation</a> for your service.</p> <p>For more information about service-linked roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role">Roles Terms and Concepts: AWS Service-Linked Role</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `roleName` **:** `String`

-}
deleteServiceLinkedRole :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response DeleteServiceLinkedRoleResponse)
deleteServiceLinkedRole roleName =
    let
        requestInput =
            DeleteServiceLinkedRoleRequest
                roleName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteServiceLinkedRole" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteServiceLinkedRoleRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteServiceLinkedRole"
            (AWS.Core.Decode.ResultDecoder "DeleteServiceLinkedRoleResult" deleteServiceLinkedRoleResponseDecoder)
        )


{-|

<p>Deletes the specified service-specific credential.</p>

**Required Parameters**

  - `serviceSpecificCredentialId` **:** `String`

-}
deleteServiceSpecificCredential :
    String
    -> (DeleteServiceSpecificCredentialOptions -> DeleteServiceSpecificCredentialOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteServiceSpecificCredential serviceSpecificCredentialId setOptions =
    let
        requestInput =
            DeleteServiceSpecificCredentialRequest
                options.userName
                serviceSpecificCredentialId

        options =
            setOptions (DeleteServiceSpecificCredentialOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteServiceSpecificCredential" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteServiceSpecificCredentialRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteServiceSpecificCredential"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a deleteServiceSpecificCredential request
-}
type alias DeleteServiceSpecificCredentialOptions =
    { userName : Maybe String
    }


{-|

<p>Deletes a signing certificate associated with the specified IAM user.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated IAM users.</p>

**Required Parameters**

  - `certificateId` **:** `String`

-}
deleteSigningCertificate :
    String
    -> (DeleteSigningCertificateOptions -> DeleteSigningCertificateOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteSigningCertificate certificateId setOptions =
    let
        requestInput =
            DeleteSigningCertificateRequest
                options.userName
                certificateId

        options =
            setOptions (DeleteSigningCertificateOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteSigningCertificate" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteSigningCertificateRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteSigningCertificate"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a deleteSigningCertificate request
-}
type alias DeleteSigningCertificateOptions =
    { userName : Maybe String
    }


{-|

<p>Deletes the specified IAM user. Unlike the AWS Management Console, when you delete a user programmatically, you must delete the items attached to the user manually, or the deletion fails. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_deleting_cli">Deleting an IAM User</a>. Before attempting to delete a user, remove the following items:</p> <ul> <li> <p>Password (<a>DeleteLoginProfile</a>)</p> </li> <li> <p>Access keys (<a>DeleteAccessKey</a>)</p> </li> <li> <p>Signing certificate (<a>DeleteSigningCertificate</a>)</p> </li> <li> <p>SSH public key (<a>DeleteSSHPublicKey</a>)</p> </li> <li> <p>Git credentials (<a>DeleteServiceSpecificCredential</a>)</p> </li> <li> <p>Multi-factor authentication (MFA) device (<a>DeactivateMFADevice</a>, <a>DeleteVirtualMFADevice</a>)</p> </li> <li> <p>Inline policies (<a>DeleteUserPolicy</a>)</p> </li> <li> <p>Attached managed policies (<a>DetachUserPolicy</a>)</p> </li> <li> <p>Group memberships (<a>RemoveUserFromGroup</a>)</p> </li> </ul>

**Required Parameters**

  - `userName` **:** `String`

-}
deleteUser :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteUser userName =
    let
        requestInput =
            DeleteUserRequest
                userName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteUser" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteUserRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteUser"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the permissions boundary for the specified IAM user.</p> <important> <p>Deleting the permissions boundary for a user might increase its permissions by allowing the user to perform all the actions granted in its permissions policies. </p> </important>

**Required Parameters**

  - `userName` **:** `String`

-}
deleteUserPermissionsBoundary :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteUserPermissionsBoundary userName =
    let
        requestInput =
            DeleteUserPermissionsBoundaryRequest
                userName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteUserPermissionsBoundary" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteUserPermissionsBoundaryRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteUserPermissionsBoundary"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes the specified inline policy that is embedded in the specified IAM user.</p> <p>A user can also have managed policies attached to it. To detach a managed policy from a user, use <a>DetachUserPolicy</a>. For more information about policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `policyName` **:** `String`

-}
deleteUserPolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteUserPolicy userName policyName =
    let
        requestInput =
            DeleteUserPolicyRequest
                userName
                policyName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteUserPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteUserPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteUserPolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Deletes a virtual MFA device.</p> <note> <p> You must deactivate a user's virtual MFA device before you can delete it. For information about deactivating MFA devices, see <a>DeactivateMFADevice</a>. </p> </note>

**Required Parameters**

  - `serialNumber` **:** `String`

-}
deleteVirtualMFADevice :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
deleteVirtualMFADevice serialNumber =
    let
        requestInput =
            DeleteVirtualMFADeviceRequest
                serialNumber
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DeleteVirtualMFADevice" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs deleteVirtualMFADeviceRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DeleteVirtualMFADevice"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Removes the specified managed policy from the specified IAM group.</p> <p>A group can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteGroupPolicy</a> API. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `groupName` **:** `String`
  - `policyArn` **:** `String`

-}
detachGroupPolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
detachGroupPolicy groupName policyArn =
    let
        requestInput =
            DetachGroupPolicyRequest
                groupName
                policyArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DetachGroupPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs detachGroupPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DetachGroupPolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Removes the specified managed policy from the specified role.</p> <p>A role can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteRolePolicy</a> API. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `roleName` **:** `String`
  - `policyArn` **:** `String`

-}
detachRolePolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
detachRolePolicy roleName policyArn =
    let
        requestInput =
            DetachRolePolicyRequest
                roleName
                policyArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DetachRolePolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs detachRolePolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DetachRolePolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Removes the specified managed policy from the specified user.</p> <p>A user can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteUserPolicy</a> API. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `policyArn` **:** `String`

-}
detachUserPolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
detachUserPolicy userName policyArn =
    let
        requestInput =
            DetachUserPolicyRequest
                userName
                policyArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "DetachUserPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs detachUserPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "DetachUserPolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Enables the specified MFA device and associates it with the specified IAM user. When enabled, the MFA device is required for every subsequent login by the IAM user associated with the device.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `serialNumber` **:** `String`
  - `authenticationCode1` **:** `String`
  - `authenticationCode2` **:** `String`

-}
enableMFADevice :
    String
    -> String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
enableMFADevice userName serialNumber authenticationCode1 authenticationCode2 =
    let
        requestInput =
            EnableMFADeviceRequest
                userName
                serialNumber
                authenticationCode1
                authenticationCode2
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "EnableMFADevice" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs enableMFADeviceRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "EnableMFADevice"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p> Generates a credential report for the AWS account. For more information about the credential report, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

-}
generateCredentialReport : AWS.Core.Http.Request (AWS.Core.Decode.Response GenerateCredentialReportResponse)
generateCredentialReport =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        [ ( "Action", "GenerateCredentialReport" ) ]
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GenerateCredentialReport"
            (AWS.Core.Decode.ResultDecoder "GenerateCredentialReportResult" generateCredentialReportResponseDecoder)
        )


{-|

<p>Generates a report for service last accessed data for AWS Organizations. You can generate a report for any entities (organization root, organizational unit, or account) or policies in your organization.</p> <p>To call this operation, you must be signed in using your AWS Organizations master account credentials. You can use your long-term IAM user or root user credentials, or temporary credentials from assuming an IAM role. SCPs must be enabled for your organization root. You must have the required IAM and AWS Organizations permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Refining Permissions Using Service Last Accessed Data</a> in the <i>IAM User Guide</i>.</p> <p>You can generate a service last accessed data report for entities by specifying only the entity's path. This data includes a list of services that are allowed by any service control policies (SCPs) that apply to the entity.</p> <p>You can generate a service last accessed data report for a policy by specifying an entity's path and an optional AWS Organizations policy ID. This data includes a list of services that are allowed by the specified SCP.</p> <p>For each service in both report types, the data includes the most recent account activity that the policy allows to account principals in the entity or the entity's children. For important information about the data, reporting period, permissions required, troubleshooting, and supported Regions see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Reducing Permissions Using Service Last Accessed Data</a> in the <i>IAM User Guide</i>.</p> <important> <p>The data includes all attempts to access AWS, not just the successful ones. This includes all attempts that were made using the AWS Management Console, the AWS API through any of the SDKs, or any of the command line tools. An unexpected entry in the service last accessed data does not mean that an account has been compromised, because the request might have been denied. Refer to your CloudTrail logs as the authoritative source for information about all API calls and whether they were successful or denied access. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html">Logging IAM Events with CloudTrail</a> in the <i>IAM User Guide</i>.</p> </important> <p>This operation returns a <code>JobId</code>. Use this parameter in the <code> <a>GetOrganizationsAccessReport</a> </code> operation to check the status of the report generation. To check the status of this request, use the <code>JobId</code> parameter in the <code> <a>GetOrganizationsAccessReport</a> </code> operation and test the <code>JobStatus</code> response parameter. When the job is complete, you can retrieve the report.</p> <p>To generate a service last accessed data report for entities, specify an entity path without specifying the optional AWS Organizations policy ID. The type of entity that you specify determines the data returned in the report.</p> <ul> <li> <p> <b>Root</b> – When you specify the organizations root as the entity, the resulting report lists all of the services allowed by SCPs that are attached to your root. For each service, the report includes data for all accounts in your organization except the master account, because the master account is not limited by SCPs.</p> </li> <li> <p> <b>OU</b> – When you specify an organizational unit (OU) as the entity, the resulting report lists all of the services allowed by SCPs that are attached to the OU and its parents. For each service, the report includes data for all accounts in the OU or its children. This data excludes the master account, because the master account is not limited by SCPs.</p> </li> <li> <p> <b>Master account</b> – When you specify the master account, the resulting report lists all AWS services, because the master account is not limited by SCPs. For each service, the report includes data for only the master account.</p> </li> <li> <p> <b>Account</b> – When you specify another account as the entity, the resulting report lists all of the services allowed by SCPs that are attached to the account and its parents. For each service, the report includes data for only the specified account.</p> </li> </ul> <p>To generate a service last accessed data report for policies, specify an entity path and the optional AWS Organizations policy ID. The type of entity that you specify determines the data returned for each service.</p> <ul> <li> <p> <b>Root</b> – When you specify the root entity and a policy ID, the resulting report lists all of the services that are allowed by the specified SCP. For each service, the report includes data for all accounts in your organization to which the SCP applies. This data excludes the master account, because the master account is not limited by SCPs. If the SCP is not attached to any entities in the organization, then the report will return a list of services with no data.</p> </li> <li> <p> <b>OU</b> – When you specify an OU entity and a policy ID, the resulting report lists all of the services that are allowed by the specified SCP. For each service, the report includes data for all accounts in the OU or its children to which the SCP applies. This means that other accounts outside the OU that are affected by the SCP might not be included in the data. This data excludes the master account, because the master account is not limited by SCPs. If the SCP is not attached to the OU or one of its children, the report will return a list of services with no data.</p> </li> <li> <p> <b>Master account</b> – When you specify the master account, the resulting report lists all AWS services, because the master account is not limited by SCPs. If you specify a policy ID in the CLI or API, the policy is ignored. For each service, the report includes data for only the master account.</p> </li> <li> <p> <b>Account</b> – When you specify another account entity and a policy ID, the resulting report lists all of the services that are allowed by the specified SCP. For each service, the report includes data for only the specified account. This means that other accounts in the organization that are affected by the SCP might not be included in the data. If the SCP is not attached to the account, the report will return a list of services with no data.</p> </li> </ul> <note> <p>Service last accessed data does not use other policy types when determining whether a principal could access a service. These other policy types include identity-based policies, resource-based policies, access control lists, IAM permissions boundaries, and STS assume role policies. It only applies SCP logic. For more about the evaluation of policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating Policies</a> in the <i>IAM User Guide</i>.</p> </note> <p>For more information about service last accessed data, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Reducing Policy Scope by Viewing User Activity</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `entityPath` **:** `String`

-}
generateOrganizationsAccessReport :
    String
    -> (GenerateOrganizationsAccessReportOptions -> GenerateOrganizationsAccessReportOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GenerateOrganizationsAccessReportResponse)
generateOrganizationsAccessReport entityPath setOptions =
    let
        requestInput =
            GenerateOrganizationsAccessReportRequest
                entityPath
                options.organizationsPolicyId

        options =
            setOptions (GenerateOrganizationsAccessReportOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GenerateOrganizationsAccessReport" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs generateOrganizationsAccessReportRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GenerateOrganizationsAccessReport"
            (AWS.Core.Decode.ResultDecoder "GenerateOrganizationsAccessReportResult" generateOrganizationsAccessReportResponseDecoder)
        )


{-| Options for a generateOrganizationsAccessReport request
-}
type alias GenerateOrganizationsAccessReportOptions =
    { organizationsPolicyId : Maybe String
    }


{-|

<p>Generates a report that includes details about when an IAM resource (user, group, role, or policy) was last used in an attempt to access AWS services. Recent activity usually appears within four hours. IAM reports activity for the last 365 days, or less if your Region began supporting this feature within the last year. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period">Regions Where Data Is Tracked</a>.</p> <important> <p>The service last accessed data includes all attempts to access an AWS API, not just the successful ones. This includes all attempts that were made using the AWS Management Console, the AWS API through any of the SDKs, or any of the command line tools. An unexpected entry in the service last accessed data does not mean that your account has been compromised, because the request might have been denied. Refer to your CloudTrail logs as the authoritative source for information about all API calls and whether they were successful or denied access. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html">Logging IAM Events with CloudTrail</a> in the <i>IAM User Guide</i>.</p> </important> <p>The <code>GenerateServiceLastAccessedDetails</code> operation returns a <code>JobId</code>. Use this parameter in the following operations to retrieve the following details from your report: </p> <ul> <li> <p> <a>GetServiceLastAccessedDetails</a> – Use this operation for users, groups, roles, or policies to list every AWS service that the resource could access using permissions policies. For each service, the response includes information about the most recent access attempt. </p> </li> <li> <p> <a>GetServiceLastAccessedDetailsWithEntities</a> – Use this operation for groups and policies to list information about the associated entities (users or roles) that attempted to access a specific AWS service. </p> </li> </ul> <p>To check the status of the <code>GenerateServiceLastAccessedDetails</code> request, use the <code>JobId</code> parameter in the same operations and test the <code>JobStatus</code> response parameter.</p> <p>For additional information about the permissions policies that allow an identity (user, group, or role) to access specific services, use the <a>ListPoliciesGrantingServiceAccess</a> operation.</p> <note> <p>Service last accessed data does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, AWS Organizations policies, IAM permissions boundaries, and AWS STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating Policies</a> in the <i>IAM User Guide</i>.</p> </note> <p>For more information about service last accessed data, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Reducing Policy Scope by Viewing User Activity</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `arn` **:** `String`

-}
generateServiceLastAccessedDetails :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GenerateServiceLastAccessedDetailsResponse)
generateServiceLastAccessedDetails arn =
    let
        requestInput =
            GenerateServiceLastAccessedDetailsRequest
                arn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GenerateServiceLastAccessedDetails" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs generateServiceLastAccessedDetailsRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GenerateServiceLastAccessedDetails"
            (AWS.Core.Decode.ResultDecoder "GenerateServiceLastAccessedDetailsResult" generateServiceLastAccessedDetailsResponseDecoder)
        )


{-|

<p>Retrieves information about when the specified access key was last used. The information includes the date and time of last use, along with the AWS service and Region that were specified in the last request made with that key.</p>

**Required Parameters**

  - `accessKeyId` **:** `String`

-}
getAccessKeyLastUsed :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetAccessKeyLastUsedResponse)
getAccessKeyLastUsed accessKeyId =
    let
        requestInput =
            GetAccessKeyLastUsedRequest
                accessKeyId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetAccessKeyLastUsed" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getAccessKeyLastUsedRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetAccessKeyLastUsed"
            (AWS.Core.Decode.ResultDecoder "GetAccessKeyLastUsedResult" getAccessKeyLastUsedResponseDecoder)
        )


{-|

<p>Retrieves information about all IAM users, groups, roles, and policies in your AWS account, including their relationships to one another. Use this API to obtain a snapshot of the configuration of IAM permissions (users, groups, roles, and policies) in your account.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>You can optionally filter the results using the <code>Filter</code> parameter. You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

**Required Parameters**

-}
getAccountAuthorizationDetails :
    (GetAccountAuthorizationDetailsOptions -> GetAccountAuthorizationDetailsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetAccountAuthorizationDetailsResponse)
getAccountAuthorizationDetails setOptions =
    let
        requestInput =
            GetAccountAuthorizationDetailsRequest
                options.filter
                options.maxItems
                options.marker

        options =
            setOptions (GetAccountAuthorizationDetailsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetAccountAuthorizationDetails" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getAccountAuthorizationDetailsRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetAccountAuthorizationDetails"
            (AWS.Core.Decode.ResultDecoder "GetAccountAuthorizationDetailsResult" getAccountAuthorizationDetailsResponseDecoder)
        )


{-| Options for a getAccountAuthorizationDetails request
-}
type alias GetAccountAuthorizationDetailsOptions =
    { filter : Maybe (List EntityType)
    , maxItems : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Retrieves the password policy for the AWS account. For more information about using a password policy, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html">Managing an IAM Password Policy</a>.</p>

**Required Parameters**

-}
getAccountPasswordPolicy : AWS.Core.Http.Request (AWS.Core.Decode.Response GetAccountPasswordPolicyResponse)
getAccountPasswordPolicy =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        [ ( "Action", "GetAccountPasswordPolicy" ) ]
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetAccountPasswordPolicy"
            (AWS.Core.Decode.ResultDecoder "GetAccountPasswordPolicyResult" getAccountPasswordPolicyResponseDecoder)
        )


{-|

<p>Retrieves information about IAM entity usage and IAM quotas in the AWS account.</p> <p> For information about limitations on IAM entities, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

-}
getAccountSummary : AWS.Core.Http.Request (AWS.Core.Decode.Response GetAccountSummaryResponse)
getAccountSummary =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        [ ( "Action", "GetAccountSummary" ) ]
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetAccountSummary"
            (AWS.Core.Decode.ResultDecoder "GetAccountSummaryResult" getAccountSummaryResponseDecoder)
        )


{-|

<p>Gets a list of all of the context keys referenced in the input policies. The policies are supplied as a list of one or more strings. To get the context keys from policies associated with an IAM user, group, or role, use <a>GetContextKeysForPrincipalPolicy</a>.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. Context keys can be evaluated by testing against a value specified in an IAM policy. Use <code>GetContextKeysForCustomPolicy</code> to understand what key names and values you must supply when you call <a>SimulateCustomPolicy</a>. Note that all parameters are shown in unencoded form here for clarity but must be URL encoded to be included as a part of a real HTML request.</p>

**Required Parameters**

  - `policyInputList` **:** `(List String)`

-}
getContextKeysForCustomPolicy :
    List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetContextKeysForPolicyResponse)
getContextKeysForCustomPolicy policyInputList =
    let
        requestInput =
            GetContextKeysForCustomPolicyRequest
                policyInputList
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetContextKeysForCustomPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getContextKeysForCustomPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetContextKeysForCustomPolicy"
            (AWS.Core.Decode.ResultDecoder "GetContextKeysForCustomPolicyResult" getContextKeysForPolicyResponseDecoder)
        )


{-|

<p>Gets a list of all of the context keys referenced in all the IAM policies that are attached to the specified IAM entity. The entity can be an IAM user, group, or role. If you specify a user, then the request also includes all of the policies attached to groups that the user is a member of.</p> <p>You can optionally include a list of one or more additional policies, specified as strings. If you want to include <i>only</i> a list of policies by string, use <a>GetContextKeysForCustomPolicy</a> instead.</p> <p> <b>Note:</b> This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use <a>GetContextKeysForCustomPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. Context keys can be evaluated by testing against a value in an IAM policy. Use <a>GetContextKeysForPrincipalPolicy</a> to understand what key names and values you must supply when you call <a>SimulatePrincipalPolicy</a>.</p>

**Required Parameters**

  - `policySourceArn` **:** `String`

-}
getContextKeysForPrincipalPolicy :
    String
    -> (GetContextKeysForPrincipalPolicyOptions -> GetContextKeysForPrincipalPolicyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetContextKeysForPolicyResponse)
getContextKeysForPrincipalPolicy policySourceArn setOptions =
    let
        requestInput =
            GetContextKeysForPrincipalPolicyRequest
                policySourceArn
                options.policyInputList

        options =
            setOptions (GetContextKeysForPrincipalPolicyOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetContextKeysForPrincipalPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getContextKeysForPrincipalPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetContextKeysForPrincipalPolicy"
            (AWS.Core.Decode.ResultDecoder "GetContextKeysForPrincipalPolicyResult" getContextKeysForPolicyResponseDecoder)
        )


{-| Options for a getContextKeysForPrincipalPolicy request
-}
type alias GetContextKeysForPrincipalPolicyOptions =
    { policyInputList : Maybe (List String)
    }


{-|

<p> Retrieves a credential report for the AWS account. For more information about the credential report, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

-}
getCredentialReport : AWS.Core.Http.Request (AWS.Core.Decode.Response GetCredentialReportResponse)
getCredentialReport =
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        [ ( "Action", "GetCredentialReport" ) ]
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetCredentialReport"
            (AWS.Core.Decode.ResultDecoder "GetCredentialReportResult" getCredentialReportResponseDecoder)
        )


{-|

<p> Returns a list of IAM users that are in the specified IAM group. You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

**Required Parameters**

  - `groupName` **:** `String`

-}
getGroup :
    String
    -> (GetGroupOptions -> GetGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetGroupResponse)
getGroup groupName setOptions =
    let
        requestInput =
            GetGroupRequest
                groupName
                options.marker
                options.maxItems

        options =
            setOptions (GetGroupOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetGroup" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getGroupRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetGroup"
            (AWS.Core.Decode.ResultDecoder "GetGroupResult" getGroupResponseDecoder)
        )


{-| Options for a getGroup request
-}
type alias GetGroupOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Retrieves the specified inline policy document that is embedded in the specified IAM group.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM group can also have managed policies attached to it. To retrieve a managed policy document that is attached to a group, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `groupName` **:** `String`
  - `policyName` **:** `String`

-}
getGroupPolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetGroupPolicyResponse)
getGroupPolicy groupName policyName =
    let
        requestInput =
            GetGroupPolicyRequest
                groupName
                policyName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetGroupPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getGroupPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetGroupPolicy"
            (AWS.Core.Decode.ResultDecoder "GetGroupPolicyResult" getGroupPolicyResponseDecoder)
        )


{-|

<p> Retrieves information about the specified instance profile, including the instance profile's path, GUID, ARN, and role. For more information about instance profiles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `instanceProfileName` **:** `String`

-}
getInstanceProfile :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetInstanceProfileResponse)
getInstanceProfile instanceProfileName =
    let
        requestInput =
            GetInstanceProfileRequest
                instanceProfileName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetInstanceProfile" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getInstanceProfileRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetInstanceProfile"
            (AWS.Core.Decode.ResultDecoder "GetInstanceProfileResult" getInstanceProfileResponseDecoder)
        )


{-|

<p>Retrieves the user name and password-creation date for the specified IAM user. If the user has not been assigned a password, the operation returns a 404 (<code>NoSuchEntity</code>) error.</p>

**Required Parameters**

  - `userName` **:** `String`

-}
getLoginProfile :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetLoginProfileResponse)
getLoginProfile userName =
    let
        requestInput =
            GetLoginProfileRequest
                userName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetLoginProfile" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getLoginProfileRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetLoginProfile"
            (AWS.Core.Decode.ResultDecoder "GetLoginProfileResult" getLoginProfileResponseDecoder)
        )


{-|

<p>Returns information about the specified OpenID Connect (OIDC) provider resource object in IAM.</p>

**Required Parameters**

  - `openIDConnectProviderArn` **:** `String`

-}
getOpenIDConnectProvider :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetOpenIDConnectProviderResponse)
getOpenIDConnectProvider openIDConnectProviderArn =
    let
        requestInput =
            GetOpenIDConnectProviderRequest
                openIDConnectProviderArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetOpenIDConnectProvider" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getOpenIDConnectProviderRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetOpenIDConnectProvider"
            (AWS.Core.Decode.ResultDecoder "GetOpenIDConnectProviderResult" getOpenIDConnectProviderResponseDecoder)
        )


{-|

<p>Retrieves the service last accessed data report for AWS Organizations that was previously generated using the <code> <a>GenerateOrganizationsAccessReport</a> </code> operation. This operation retrieves the status of your report job and the report contents.</p> <p>Depending on the parameters that you passed when you generated the report, the data returned could include different information. For details, see <a>GenerateOrganizationsAccessReport</a>.</p> <p>To call this operation, you must be signed in to the master account in your organization. SCPs must be enabled for your organization root. You must have permissions to perform this operation. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Refining Permissions Using Service Last Accessed Data</a> in the <i>IAM User Guide</i>.</p> <p>For each service that principals in an account (root users, IAM users, or IAM roles) could access using SCPs, the operation returns details about the most recent access attempt. If there was no attempt, the service is listed without details about the most recent attempt to access the service. If the operation fails, it returns the reason that it failed.</p> <p>By default, the list is sorted by service namespace.</p>

**Required Parameters**

  - `jobId` **:** `String`

-}
getOrganizationsAccessReport :
    String
    -> (GetOrganizationsAccessReportOptions -> GetOrganizationsAccessReportOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetOrganizationsAccessReportResponse)
getOrganizationsAccessReport jobId setOptions =
    let
        requestInput =
            GetOrganizationsAccessReportRequest
                jobId
                options.maxItems
                options.marker
                options.sortKey

        options =
            setOptions (GetOrganizationsAccessReportOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetOrganizationsAccessReport" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getOrganizationsAccessReportRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetOrganizationsAccessReport"
            (AWS.Core.Decode.ResultDecoder "GetOrganizationsAccessReportResult" getOrganizationsAccessReportResponseDecoder)
        )


{-| Options for a getOrganizationsAccessReport request
-}
type alias GetOrganizationsAccessReportOptions =
    { maxItems : Maybe Int
    , marker : Maybe String
    , sortKey : Maybe SortKeyType
    }


{-|

<p>Retrieves information about the specified managed policy, including the policy's default version and the total number of IAM users, groups, and roles to which the policy is attached. To retrieve the list of the specific users, groups, and roles that the policy is attached to, use the <a>ListEntitiesForPolicy</a> API. This API returns metadata about the policy. To retrieve the actual policy document for a specific version of the policy, use <a>GetPolicyVersion</a>.</p> <p>This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded with an IAM user, group, or role, use the <a>GetUserPolicy</a>, <a>GetGroupPolicy</a>, or <a>GetRolePolicy</a> API.</p> <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `policyArn` **:** `String`

-}
getPolicy :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetPolicyResponse)
getPolicy policyArn =
    let
        requestInput =
            GetPolicyRequest
                policyArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetPolicy"
            (AWS.Core.Decode.ResultDecoder "GetPolicyResult" getPolicyResponseDecoder)
        )


{-|

<p>Retrieves information about the specified version of the specified managed policy, including the policy document.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>To list the available versions for a policy, use <a>ListPolicyVersions</a>.</p> <p>This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded in a user, group, or role, use the <a>GetUserPolicy</a>, <a>GetGroupPolicy</a>, or <a>GetRolePolicy</a> API.</p> <p>For more information about the types of policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `policyArn` **:** `String`
  - `versionId` **:** `String`

-}
getPolicyVersion :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetPolicyVersionResponse)
getPolicyVersion policyArn versionId =
    let
        requestInput =
            GetPolicyVersionRequest
                policyArn
                versionId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetPolicyVersion" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getPolicyVersionRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetPolicyVersion"
            (AWS.Core.Decode.ResultDecoder "GetPolicyVersionResult" getPolicyVersionResponseDecoder)
        )


{-|

<p>Retrieves information about the specified role, including the role's path, GUID, ARN, and the role's trust policy that grants permission to assume the role. For more information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note>

**Required Parameters**

  - `roleName` **:** `String`

-}
getRole :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetRoleResponse)
getRole roleName =
    let
        requestInput =
            GetRoleRequest
                roleName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetRole" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getRoleRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetRole"
            (AWS.Core.Decode.ResultDecoder "GetRoleResult" getRoleResponseDecoder)
        )


{-|

<p>Retrieves the specified inline policy document that is embedded with the specified IAM role.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM role can also have managed policies attached to it. To retrieve a managed policy document that is attached to a role, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using Roles to Delegate Permissions and Federate Identities</a>.</p>

**Required Parameters**

  - `roleName` **:** `String`
  - `policyName` **:** `String`

-}
getRolePolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetRolePolicyResponse)
getRolePolicy roleName policyName =
    let
        requestInput =
            GetRolePolicyRequest
                roleName
                policyName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetRolePolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getRolePolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetRolePolicy"
            (AWS.Core.Decode.ResultDecoder "GetRolePolicyResult" getRolePolicyResponseDecoder)
        )


{-|

<p>Returns the SAML provider metadocument that was uploaded when the IAM SAML provider resource object was created or updated.</p> <note> <p>This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>

**Required Parameters**

  - `sAMLProviderArn` **:** `String`

-}
getSAMLProvider :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetSAMLProviderResponse)
getSAMLProvider sAMLProviderArn =
    let
        requestInput =
            GetSAMLProviderRequest
                sAMLProviderArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetSAMLProvider" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getSAMLProviderRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetSAMLProvider"
            (AWS.Core.Decode.ResultDecoder "GetSAMLProviderResult" getSAMLProviderResponseDecoder)
        )


{-|

<p>Retrieves the specified SSH public key, including metadata about the key.</p> <p>The SSH public key retrieved by this operation is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `sSHPublicKeyId` **:** `String`
  - `encoding` **:** `EncodingType`

-}
getSSHPublicKey :
    String
    -> String
    -> EncodingType
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetSSHPublicKeyResponse)
getSSHPublicKey userName sSHPublicKeyId encoding =
    let
        requestInput =
            GetSSHPublicKeyRequest
                userName
                sSHPublicKeyId
                encoding
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetSSHPublicKey" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getSSHPublicKeyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetSSHPublicKey"
            (AWS.Core.Decode.ResultDecoder "GetSSHPublicKeyResult" getSSHPublicKeyResponseDecoder)
        )


{-|

<p>Retrieves information about the specified server certificate stored in IAM.</p> <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>. This topic includes a list of AWS services that can use the server certificates that you manage with IAM.</p>

**Required Parameters**

  - `serverCertificateName` **:** `String`

-}
getServerCertificate :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetServerCertificateResponse)
getServerCertificate serverCertificateName =
    let
        requestInput =
            GetServerCertificateRequest
                serverCertificateName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetServerCertificate" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getServerCertificateRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetServerCertificate"
            (AWS.Core.Decode.ResultDecoder "GetServerCertificateResult" getServerCertificateResponseDecoder)
        )


{-|

<p>Retrieves a service last accessed report that was created using the <code>GenerateServiceLastAccessedDetails</code> operation. You can use the <code>JobId</code> parameter in <code>GetServiceLastAccessedDetails</code> to retrieve the status of your report job. When the report is complete, you can retrieve the generated report. The report includes a list of AWS services that the resource (user, group, role, or managed policy) can access.</p> <note> <p>Service last accessed data does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, AWS Organizations policies, IAM permissions boundaries, and AWS STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating Policies</a> in the <i>IAM User Guide</i>.</p> </note> <p>For each service that the resource could access using permissions policies, the operation returns details about the most recent access attempt. If there was no attempt, the service is listed without details about the most recent attempt to access the service. If the operation fails, the <code>GetServiceLastAccessedDetails</code> operation returns the reason that it failed.</p> <p>The <code>GetServiceLastAccessedDetails</code> operation returns a list of services. This list includes the number of entities that have attempted to access the service and the date and time of the last attempt. It also returns the ARN of the following entity, depending on the resource ARN that you used to generate the report:</p> <ul> <li> <p> <b>User</b> – Returns the user ARN that you used to generate the report</p> </li> <li> <p> <b>Group</b> – Returns the ARN of the group member (user) that last attempted to access the service</p> </li> <li> <p> <b>Role</b> – Returns the role ARN that you used to generate the report</p> </li> <li> <p> <b>Policy</b> – Returns the ARN of the user or role that last used the policy to attempt to access the service</p> </li> </ul> <p>By default, the list is sorted by service namespace.</p>

**Required Parameters**

  - `jobId` **:** `String`

-}
getServiceLastAccessedDetails :
    String
    -> (GetServiceLastAccessedDetailsOptions -> GetServiceLastAccessedDetailsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetServiceLastAccessedDetailsResponse)
getServiceLastAccessedDetails jobId setOptions =
    let
        requestInput =
            GetServiceLastAccessedDetailsRequest
                jobId
                options.maxItems
                options.marker

        options =
            setOptions (GetServiceLastAccessedDetailsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetServiceLastAccessedDetails" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getServiceLastAccessedDetailsRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetServiceLastAccessedDetails"
            (AWS.Core.Decode.ResultDecoder "GetServiceLastAccessedDetailsResult" getServiceLastAccessedDetailsResponseDecoder)
        )


{-| Options for a getServiceLastAccessedDetails request
-}
type alias GetServiceLastAccessedDetailsOptions =
    { maxItems : Maybe Int
    , marker : Maybe String
    }


{-|

<p>After you generate a group or policy report using the <code>GenerateServiceLastAccessedDetails</code> operation, you can use the <code>JobId</code> parameter in <code>GetServiceLastAccessedDetailsWithEntities</code>. This operation retrieves the status of your report job and a list of entities that could have used group or policy permissions to access the specified service.</p> <ul> <li> <p> <b>Group</b> – For a group report, this operation returns a list of users in the group that could have used the group’s policies in an attempt to access the service.</p> </li> <li> <p> <b>Policy</b> – For a policy report, this operation returns a list of entities (users or roles) that could have used the policy in an attempt to access the service.</p> </li> </ul> <p>You can also use this operation for user or role reports to retrieve details about those entities.</p> <p>If the operation fails, the <code>GetServiceLastAccessedDetailsWithEntities</code> operation returns the reason that it failed.</p> <p>By default, the list of associated entities is sorted by date, with the most recent access listed first.</p>

**Required Parameters**

  - `jobId` **:** `String`
  - `serviceNamespace` **:** `String`

-}
getServiceLastAccessedDetailsWithEntities :
    String
    -> String
    -> (GetServiceLastAccessedDetailsWithEntitiesOptions -> GetServiceLastAccessedDetailsWithEntitiesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetServiceLastAccessedDetailsWithEntitiesResponse)
getServiceLastAccessedDetailsWithEntities jobId serviceNamespace setOptions =
    let
        requestInput =
            GetServiceLastAccessedDetailsWithEntitiesRequest
                jobId
                serviceNamespace
                options.maxItems
                options.marker

        options =
            setOptions (GetServiceLastAccessedDetailsWithEntitiesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetServiceLastAccessedDetailsWithEntities" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getServiceLastAccessedDetailsWithEntitiesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetServiceLastAccessedDetailsWithEntities"
            (AWS.Core.Decode.ResultDecoder "GetServiceLastAccessedDetailsWithEntitiesResult" getServiceLastAccessedDetailsWithEntitiesResponseDecoder)
        )


{-| Options for a getServiceLastAccessedDetailsWithEntities request
-}
type alias GetServiceLastAccessedDetailsWithEntitiesOptions =
    { maxItems : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Retrieves the status of your service-linked role deletion. After you use the <a>DeleteServiceLinkedRole</a> API operation to submit a service-linked role for deletion, you can use the <code>DeletionTaskId</code> parameter in <code>GetServiceLinkedRoleDeletionStatus</code> to check the status of the deletion. If the deletion fails, this operation returns the reason that it failed, if that information is returned by the service.</p>

**Required Parameters**

  - `deletionTaskId` **:** `String`

-}
getServiceLinkedRoleDeletionStatus :
    String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetServiceLinkedRoleDeletionStatusResponse)
getServiceLinkedRoleDeletionStatus deletionTaskId =
    let
        requestInput =
            GetServiceLinkedRoleDeletionStatusRequest
                deletionTaskId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetServiceLinkedRoleDeletionStatus" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getServiceLinkedRoleDeletionStatusRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetServiceLinkedRoleDeletionStatus"
            (AWS.Core.Decode.ResultDecoder "GetServiceLinkedRoleDeletionStatusResult" getServiceLinkedRoleDeletionStatusResponseDecoder)
        )


{-|

<p>Retrieves information about the specified IAM user, including the user's creation date, path, unique ID, and ARN.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID used to sign the request to this API.</p>

**Required Parameters**

-}
getUser :
    (GetUserOptions -> GetUserOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetUserResponse)
getUser setOptions =
    let
        requestInput =
            GetUserRequest
                options.userName

        options =
            setOptions (GetUserOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetUser" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getUserRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetUser"
            (AWS.Core.Decode.ResultDecoder "GetUserResult" getUserResponseDecoder)
        )


{-| Options for a getUser request
-}
type alias GetUserOptions =
    { userName : Maybe String
    }


{-|

<p>Retrieves the specified inline policy document that is embedded in the specified IAM user.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM user can also have managed policies attached to it. To retrieve a managed policy document that is attached to a user, use <a>GetPolicy</a> to determine the policy's default version. Then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `policyName` **:** `String`

-}
getUserPolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response GetUserPolicyResponse)
getUserPolicy userName policyName =
    let
        requestInput =
            GetUserPolicyRequest
                userName
                policyName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "GetUserPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs getUserPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "GetUserPolicy"
            (AWS.Core.Decode.ResultDecoder "GetUserPolicyResult" getUserPolicyResponseDecoder)
        )


{-|

<p>Returns information about the access key IDs associated with the specified IAM user. If there is none, the operation returns an empty list.</p> <p>Although each user is limited to a small number of keys, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>If the <code>UserName</code> field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p> <note> <p>To ensure the security of your AWS account, the secret access key is accessible only during key and user creation.</p> </note>

**Required Parameters**

-}
listAccessKeys :
    (ListAccessKeysOptions -> ListAccessKeysOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListAccessKeysResponse)
listAccessKeys setOptions =
    let
        requestInput =
            ListAccessKeysRequest
                options.userName
                options.marker
                options.maxItems

        options =
            setOptions (ListAccessKeysOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListAccessKeys" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listAccessKeysRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListAccessKeys"
            (AWS.Core.Decode.ResultDecoder "ListAccessKeysResult" listAccessKeysResponseDecoder)
        )


{-| Options for a listAccessKeys request
-}
type alias ListAccessKeysOptions =
    { userName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the account alias associated with the AWS account (Note: you can have only one). For information about using an AWS account alias, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

-}
listAccountAliases :
    (ListAccountAliasesOptions -> ListAccountAliasesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListAccountAliasesResponse)
listAccountAliases setOptions =
    let
        requestInput =
            ListAccountAliasesRequest
                options.marker
                options.maxItems

        options =
            setOptions (ListAccountAliasesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListAccountAliases" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listAccountAliasesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListAccountAliases"
            (AWS.Core.Decode.ResultDecoder "ListAccountAliasesResult" listAccountAliasesResponseDecoder)
        )


{-| Options for a listAccountAliases request
-}
type alias ListAccountAliasesOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists all managed policies that are attached to the specified IAM group.</p> <p>An IAM group can also have inline policies embedded with it. To list the inline policies for a group, use the <a>ListGroupPolicies</a> API. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.</p>

**Required Parameters**

  - `groupName` **:** `String`

-}
listAttachedGroupPolicies :
    String
    -> (ListAttachedGroupPoliciesOptions -> ListAttachedGroupPoliciesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListAttachedGroupPoliciesResponse)
listAttachedGroupPolicies groupName setOptions =
    let
        requestInput =
            ListAttachedGroupPoliciesRequest
                groupName
                options.pathPrefix
                options.marker
                options.maxItems

        options =
            setOptions (ListAttachedGroupPoliciesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListAttachedGroupPolicies" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listAttachedGroupPoliciesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListAttachedGroupPolicies"
            (AWS.Core.Decode.ResultDecoder "ListAttachedGroupPoliciesResult" listAttachedGroupPoliciesResponseDecoder)
        )


{-| Options for a listAttachedGroupPolicies request
-}
type alias ListAttachedGroupPoliciesOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists all managed policies that are attached to the specified IAM role.</p> <p>An IAM role can also have inline policies embedded with it. To list the inline policies for a role, use the <a>ListRolePolicies</a> API. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified role (or none that match the specified path prefix), the operation returns an empty list.</p>

**Required Parameters**

  - `roleName` **:** `String`

-}
listAttachedRolePolicies :
    String
    -> (ListAttachedRolePoliciesOptions -> ListAttachedRolePoliciesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListAttachedRolePoliciesResponse)
listAttachedRolePolicies roleName setOptions =
    let
        requestInput =
            ListAttachedRolePoliciesRequest
                roleName
                options.pathPrefix
                options.marker
                options.maxItems

        options =
            setOptions (ListAttachedRolePoliciesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListAttachedRolePolicies" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listAttachedRolePoliciesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListAttachedRolePolicies"
            (AWS.Core.Decode.ResultDecoder "ListAttachedRolePoliciesResult" listAttachedRolePoliciesResponseDecoder)
        )


{-| Options for a listAttachedRolePolicies request
-}
type alias ListAttachedRolePoliciesOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists all managed policies that are attached to the specified IAM user.</p> <p>An IAM user can also have inline policies embedded with it. To list the inline policies for a user, use the <a>ListUserPolicies</a> API. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.</p>

**Required Parameters**

  - `userName` **:** `String`

-}
listAttachedUserPolicies :
    String
    -> (ListAttachedUserPoliciesOptions -> ListAttachedUserPoliciesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListAttachedUserPoliciesResponse)
listAttachedUserPolicies userName setOptions =
    let
        requestInput =
            ListAttachedUserPoliciesRequest
                userName
                options.pathPrefix
                options.marker
                options.maxItems

        options =
            setOptions (ListAttachedUserPoliciesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListAttachedUserPolicies" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listAttachedUserPoliciesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListAttachedUserPolicies"
            (AWS.Core.Decode.ResultDecoder "ListAttachedUserPoliciesResult" listAttachedUserPoliciesResponseDecoder)
        )


{-| Options for a listAttachedUserPolicies request
-}
type alias ListAttachedUserPoliciesOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists all IAM users, groups, and roles that the specified managed policy is attached to.</p> <p>You can use the optional <code>EntityFilter</code> parameter to limit the results to a particular type of entity (users, groups, or roles). For example, to list only the roles that are attached to the specified policy, set <code>EntityFilter</code> to <code>Role</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

**Required Parameters**

  - `policyArn` **:** `String`

-}
listEntitiesForPolicy :
    String
    -> (ListEntitiesForPolicyOptions -> ListEntitiesForPolicyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListEntitiesForPolicyResponse)
listEntitiesForPolicy policyArn setOptions =
    let
        requestInput =
            ListEntitiesForPolicyRequest
                policyArn
                options.entityFilter
                options.pathPrefix
                options.policyUsageFilter
                options.marker
                options.maxItems

        options =
            setOptions (ListEntitiesForPolicyOptions Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListEntitiesForPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listEntitiesForPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListEntitiesForPolicy"
            (AWS.Core.Decode.ResultDecoder "ListEntitiesForPolicyResult" listEntitiesForPolicyResponseDecoder)
        )


{-| Options for a listEntitiesForPolicy request
-}
type alias ListEntitiesForPolicyOptions =
    { entityFilter : Maybe EntityType
    , pathPrefix : Maybe String
    , policyUsageFilter : Maybe PolicyUsageType
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the names of the inline policies that are embedded in the specified IAM group.</p> <p>An IAM group can also have managed policies attached to it. To list the managed policies that are attached to a group, use <a>ListAttachedGroupPolicies</a>. For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified group, the operation returns an empty list.</p>

**Required Parameters**

  - `groupName` **:** `String`

-}
listGroupPolicies :
    String
    -> (ListGroupPoliciesOptions -> ListGroupPoliciesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListGroupPoliciesResponse)
listGroupPolicies groupName setOptions =
    let
        requestInput =
            ListGroupPoliciesRequest
                groupName
                options.marker
                options.maxItems

        options =
            setOptions (ListGroupPoliciesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListGroupPolicies" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listGroupPoliciesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListGroupPolicies"
            (AWS.Core.Decode.ResultDecoder "ListGroupPoliciesResult" listGroupPoliciesResponseDecoder)
        )


{-| Options for a listGroupPolicies request
-}
type alias ListGroupPoliciesOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the IAM groups that have the specified path prefix.</p> <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

**Required Parameters**

-}
listGroups :
    (ListGroupsOptions -> ListGroupsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListGroupsResponse)
listGroups setOptions =
    let
        requestInput =
            ListGroupsRequest
                options.pathPrefix
                options.marker
                options.maxItems

        options =
            setOptions (ListGroupsOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListGroups" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listGroupsRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListGroups"
            (AWS.Core.Decode.ResultDecoder "ListGroupsResult" listGroupsResponseDecoder)
        )


{-| Options for a listGroups request
-}
type alias ListGroupsOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the IAM groups that the specified IAM user belongs to.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

**Required Parameters**

  - `userName` **:** `String`

-}
listGroupsForUser :
    String
    -> (ListGroupsForUserOptions -> ListGroupsForUserOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListGroupsForUserResponse)
listGroupsForUser userName setOptions =
    let
        requestInput =
            ListGroupsForUserRequest
                userName
                options.marker
                options.maxItems

        options =
            setOptions (ListGroupsForUserOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListGroupsForUser" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listGroupsForUserRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListGroupsForUser"
            (AWS.Core.Decode.ResultDecoder "ListGroupsForUserResult" listGroupsForUserResponseDecoder)
        )


{-| Options for a listGroupsForUser request
-}
type alias ListGroupsForUserOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the instance profiles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about instance profiles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

**Required Parameters**

-}
listInstanceProfiles :
    (ListInstanceProfilesOptions -> ListInstanceProfilesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListInstanceProfilesResponse)
listInstanceProfiles setOptions =
    let
        requestInput =
            ListInstanceProfilesRequest
                options.pathPrefix
                options.marker
                options.maxItems

        options =
            setOptions (ListInstanceProfilesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListInstanceProfiles" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listInstanceProfilesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListInstanceProfiles"
            (AWS.Core.Decode.ResultDecoder "ListInstanceProfilesResult" listInstanceProfilesResponseDecoder)
        )


{-| Options for a listInstanceProfiles request
-}
type alias ListInstanceProfilesOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the instance profiles that have the specified associated IAM role. If there are none, the operation returns an empty list. For more information about instance profiles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

**Required Parameters**

  - `roleName` **:** `String`

-}
listInstanceProfilesForRole :
    String
    -> (ListInstanceProfilesForRoleOptions -> ListInstanceProfilesForRoleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListInstanceProfilesForRoleResponse)
listInstanceProfilesForRole roleName setOptions =
    let
        requestInput =
            ListInstanceProfilesForRoleRequest
                roleName
                options.marker
                options.maxItems

        options =
            setOptions (ListInstanceProfilesForRoleOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListInstanceProfilesForRole" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listInstanceProfilesForRoleRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListInstanceProfilesForRole"
            (AWS.Core.Decode.ResultDecoder "ListInstanceProfilesForRoleResult" listInstanceProfilesForRoleResponseDecoder)
        )


{-| Options for a listInstanceProfilesForRole request
-}
type alias ListInstanceProfilesForRoleOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the MFA devices for an IAM user. If the request includes a IAM user name, then this operation lists all the MFA devices associated with the specified user. If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request for this API.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

**Required Parameters**

-}
listMFADevices :
    (ListMFADevicesOptions -> ListMFADevicesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListMFADevicesResponse)
listMFADevices setOptions =
    let
        requestInput =
            ListMFADevicesRequest
                options.userName
                options.marker
                options.maxItems

        options =
            setOptions (ListMFADevicesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListMFADevices" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listMFADevicesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListMFADevices"
            (AWS.Core.Decode.ResultDecoder "ListMFADevicesResult" listMFADevicesResponseDecoder)
        )


{-| Options for a listMFADevices request
-}
type alias ListMFADevicesOptions =
    { userName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists information about the IAM OpenID Connect (OIDC) provider resource objects defined in the AWS account.</p>

**Required Parameters**

-}
listOpenIDConnectProviders : AWS.Core.Http.Request (AWS.Core.Decode.Response ListOpenIDConnectProvidersResponse)
listOpenIDConnectProviders =
    let
        requestInput =
            ListOpenIDConnectProvidersRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListOpenIDConnectProviders" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listOpenIDConnectProvidersRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListOpenIDConnectProviders"
            (AWS.Core.Decode.ResultDecoder "ListOpenIDConnectProvidersResult" listOpenIDConnectProvidersResponseDecoder)
        )


{-|

<p>Lists all the managed policies that are available in your AWS account, including your own customer-defined managed policies and all AWS managed policies.</p> <p>You can filter the list of policies that is returned using the optional <code>OnlyAttached</code>, <code>Scope</code>, and <code>PathPrefix</code> parameters. For example, to list only the customer managed policies in your AWS account, set <code>Scope</code> to <code>Local</code>. To list only AWS managed policies, set <code>Scope</code> to <code>AWS</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>For more information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

-}
listPolicies :
    (ListPoliciesOptions -> ListPoliciesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListPoliciesResponse)
listPolicies setOptions =
    let
        requestInput =
            ListPoliciesRequest
                options.scope
                options.onlyAttached
                options.pathPrefix
                options.policyUsageFilter
                options.marker
                options.maxItems

        options =
            setOptions (ListPoliciesOptions Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListPolicies" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listPoliciesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListPolicies"
            (AWS.Core.Decode.ResultDecoder "ListPoliciesResult" listPoliciesResponseDecoder)
        )


{-| Options for a listPolicies request
-}
type alias ListPoliciesOptions =
    { scope : Maybe PolicyScopeType
    , onlyAttached : Maybe Bool
    , pathPrefix : Maybe String
    , policyUsageFilter : Maybe PolicyUsageType
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Retrieves a list of policies that the IAM identity (user, group, or role) can use to access each specified service.</p> <note> <p>This operation does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, AWS Organizations policies, IAM permissions boundaries, and AWS STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating Policies</a> in the <i>IAM User Guide</i>.</p> </note> <p>The list of policies returned by the operation depends on the ARN of the identity that you provide.</p> <ul> <li> <p> <b>User</b> – The list of policies includes the managed and inline policies that are attached to the user directly. The list also includes any additional managed and inline policies that are attached to the group to which the user belongs. </p> </li> <li> <p> <b>Group</b> – The list of policies includes only the managed and inline policies that are attached to the group directly. Policies that are attached to the group’s user are not included.</p> </li> <li> <p> <b>Role</b> – The list of policies includes only the managed and inline policies that are attached to the role.</p> </li> </ul> <p>For each managed policy, this operation returns the ARN and policy name. For each inline policy, it returns the policy name and the entity to which it is attached. Inline policies do not have an ARN. For more information about these policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>Policies that are attached to users and roles as permissions boundaries are not returned. To view which managed policy is currently used to set the permissions boundary for a user or role, use the <a>GetUser</a> or <a>GetRole</a> operations.</p>

**Required Parameters**

  - `arn` **:** `String`
  - `serviceNamespaces` **:** `(List String)`

-}
listPoliciesGrantingServiceAccess :
    String
    -> List String
    -> (ListPoliciesGrantingServiceAccessOptions -> ListPoliciesGrantingServiceAccessOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListPoliciesGrantingServiceAccessResponse)
listPoliciesGrantingServiceAccess arn serviceNamespaces setOptions =
    let
        requestInput =
            ListPoliciesGrantingServiceAccessRequest
                options.marker
                arn
                serviceNamespaces

        options =
            setOptions (ListPoliciesGrantingServiceAccessOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListPoliciesGrantingServiceAccess" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listPoliciesGrantingServiceAccessRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListPoliciesGrantingServiceAccess"
            (AWS.Core.Decode.ResultDecoder "ListPoliciesGrantingServiceAccessResult" listPoliciesGrantingServiceAccessResponseDecoder)
        )


{-| Options for a listPoliciesGrantingServiceAccess request
-}
type alias ListPoliciesGrantingServiceAccessOptions =
    { marker : Maybe String
    }


{-|

<p>Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version.</p> <p>For more information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `policyArn` **:** `String`

-}
listPolicyVersions :
    String
    -> (ListPolicyVersionsOptions -> ListPolicyVersionsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListPolicyVersionsResponse)
listPolicyVersions policyArn setOptions =
    let
        requestInput =
            ListPolicyVersionsRequest
                policyArn
                options.marker
                options.maxItems

        options =
            setOptions (ListPolicyVersionsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListPolicyVersions" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listPolicyVersionsRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListPolicyVersions"
            (AWS.Core.Decode.ResultDecoder "ListPolicyVersionsResult" listPolicyVersionsResponseDecoder)
        )


{-| Options for a listPolicyVersions request
-}
type alias ListPolicyVersionsOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the names of the inline policies that are embedded in the specified IAM role.</p> <p>An IAM role can also have managed policies attached to it. To list the managed policies that are attached to a role, use <a>ListAttachedRolePolicies</a>. For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified role, the operation returns an empty list.</p>

**Required Parameters**

  - `roleName` **:** `String`

-}
listRolePolicies :
    String
    -> (ListRolePoliciesOptions -> ListRolePoliciesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListRolePoliciesResponse)
listRolePolicies roleName setOptions =
    let
        requestInput =
            ListRolePoliciesRequest
                roleName
                options.marker
                options.maxItems

        options =
            setOptions (ListRolePoliciesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListRolePolicies" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listRolePoliciesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListRolePolicies"
            (AWS.Core.Decode.ResultDecoder "ListRolePoliciesResult" listRolePoliciesResponseDecoder)
        )


{-| Options for a listRolePolicies request
-}
type alias ListRolePoliciesOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the tags that are attached to the specified role. The returned list of tags is sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `roleName` **:** `String`

-}
listRoleTags :
    String
    -> (ListRoleTagsOptions -> ListRoleTagsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListRoleTagsResponse)
listRoleTags roleName setOptions =
    let
        requestInput =
            ListRoleTagsRequest
                roleName
                options.marker
                options.maxItems

        options =
            setOptions (ListRoleTagsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListRoleTags" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listRoleTagsRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListRoleTags"
            (AWS.Core.Decode.ResultDecoder "ListRoleTagsResult" listRoleTagsResponseDecoder)
        )


{-| Options for a listRoleTags request
-}
type alias ListRoleTagsOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the IAM roles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about roles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

**Required Parameters**

-}
listRoles :
    (ListRolesOptions -> ListRolesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListRolesResponse)
listRoles setOptions =
    let
        requestInput =
            ListRolesRequest
                options.pathPrefix
                options.marker
                options.maxItems

        options =
            setOptions (ListRolesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListRoles" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listRolesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListRoles"
            (AWS.Core.Decode.ResultDecoder "ListRolesResult" listRolesResponseDecoder)
        )


{-| Options for a listRoles request
-}
type alias ListRolesOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the SAML provider resource objects defined in IAM in the account.</p> <note> <p> This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>

**Required Parameters**

-}
listSAMLProviders : AWS.Core.Http.Request (AWS.Core.Decode.Response ListSAMLProvidersResponse)
listSAMLProviders =
    let
        requestInput =
            ListSAMLProvidersRequest
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListSAMLProviders" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listSAMLProvidersRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListSAMLProviders"
            (AWS.Core.Decode.ResultDecoder "ListSAMLProvidersResult" listSAMLProvidersResponseDecoder)
        )


{-|

<p>Returns information about the SSH public keys associated with the specified IAM user. If none exists, the operation returns an empty list.</p> <p>The SSH public keys returned by this operation are used only for authenticating the IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p> <p>Although each user is limited to a small number of keys, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

**Required Parameters**

-}
listSSHPublicKeys :
    (ListSSHPublicKeysOptions -> ListSSHPublicKeysOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListSSHPublicKeysResponse)
listSSHPublicKeys setOptions =
    let
        requestInput =
            ListSSHPublicKeysRequest
                options.userName
                options.marker
                options.maxItems

        options =
            setOptions (ListSSHPublicKeysOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListSSHPublicKeys" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listSSHPublicKeysRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListSSHPublicKeys"
            (AWS.Core.Decode.ResultDecoder "ListSSHPublicKeysResult" listSSHPublicKeysResponseDecoder)
        )


{-| Options for a listSSHPublicKeys request
-}
type alias ListSSHPublicKeysOptions =
    { userName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the server certificates stored in IAM that have the specified path prefix. If none exist, the operation returns an empty list.</p> <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.</p>

**Required Parameters**

-}
listServerCertificates :
    (ListServerCertificatesOptions -> ListServerCertificatesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListServerCertificatesResponse)
listServerCertificates setOptions =
    let
        requestInput =
            ListServerCertificatesRequest
                options.pathPrefix
                options.marker
                options.maxItems

        options =
            setOptions (ListServerCertificatesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListServerCertificates" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listServerCertificatesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListServerCertificates"
            (AWS.Core.Decode.ResultDecoder "ListServerCertificatesResult" listServerCertificatesResponseDecoder)
        )


{-| Options for a listServerCertificates request
-}
type alias ListServerCertificatesOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Returns information about the service-specific credentials associated with the specified IAM user. If none exists, the operation returns an empty list. The service-specific credentials returned by this operation are used only for authenticating the IAM user to a specific service. For more information about using service-specific credentials to authenticate to an AWS service, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html">Set Up service-specific credentials</a> in the AWS CodeCommit User Guide.</p>

**Required Parameters**

-}
listServiceSpecificCredentials :
    (ListServiceSpecificCredentialsOptions -> ListServiceSpecificCredentialsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListServiceSpecificCredentialsResponse)
listServiceSpecificCredentials setOptions =
    let
        requestInput =
            ListServiceSpecificCredentialsRequest
                options.userName
                options.serviceName

        options =
            setOptions (ListServiceSpecificCredentialsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListServiceSpecificCredentials" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listServiceSpecificCredentialsRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListServiceSpecificCredentials"
            (AWS.Core.Decode.ResultDecoder "ListServiceSpecificCredentialsResult" listServiceSpecificCredentialsResponseDecoder)
        )


{-| Options for a listServiceSpecificCredentials request
-}
type alias ListServiceSpecificCredentialsOptions =
    { userName : Maybe String
    , serviceName : Maybe String
    }


{-|

<p>Returns information about the signing certificates associated with the specified IAM user. If none exists, the operation returns an empty list.</p> <p>Although each user is limited to a small number of signing certificates, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>If the <code>UserName</code> field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request for this API. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p>

**Required Parameters**

-}
listSigningCertificates :
    (ListSigningCertificatesOptions -> ListSigningCertificatesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListSigningCertificatesResponse)
listSigningCertificates setOptions =
    let
        requestInput =
            ListSigningCertificatesRequest
                options.userName
                options.marker
                options.maxItems

        options =
            setOptions (ListSigningCertificatesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListSigningCertificates" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listSigningCertificatesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListSigningCertificates"
            (AWS.Core.Decode.ResultDecoder "ListSigningCertificatesResult" listSigningCertificatesResponseDecoder)
        )


{-| Options for a listSigningCertificates request
-}
type alias ListSigningCertificatesOptions =
    { userName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the names of the inline policies embedded in the specified IAM user.</p> <p>An IAM user can also have managed policies attached to it. To list the managed policies that are attached to a user, use <a>ListAttachedUserPolicies</a>. For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified user, the operation returns an empty list.</p>

**Required Parameters**

  - `userName` **:** `String`

-}
listUserPolicies :
    String
    -> (ListUserPoliciesOptions -> ListUserPoliciesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListUserPoliciesResponse)
listUserPolicies userName setOptions =
    let
        requestInput =
            ListUserPoliciesRequest
                userName
                options.marker
                options.maxItems

        options =
            setOptions (ListUserPoliciesOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListUserPolicies" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listUserPoliciesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListUserPolicies"
            (AWS.Core.Decode.ResultDecoder "ListUserPoliciesResult" listUserPoliciesResponseDecoder)
        )


{-| Options for a listUserPolicies request
-}
type alias ListUserPoliciesOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the tags that are attached to the specified user. The returned list of tags is sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`

-}
listUserTags :
    String
    -> (ListUserTagsOptions -> ListUserTagsOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListUserTagsResponse)
listUserTags userName setOptions =
    let
        requestInput =
            ListUserTagsRequest
                userName
                options.marker
                options.maxItems

        options =
            setOptions (ListUserTagsOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListUserTags" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listUserTagsRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListUserTags"
            (AWS.Core.Decode.ResultDecoder "ListUserTagsResult" listUserTagsResponseDecoder)
        )


{-| Options for a listUserTags request
-}
type alias ListUserTagsOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the IAM users that have the specified path prefix. If no path prefix is specified, the operation returns all users in the AWS account. If there are none, the operation returns an empty list.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

**Required Parameters**

-}
listUsers :
    (ListUsersOptions -> ListUsersOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListUsersResponse)
listUsers setOptions =
    let
        requestInput =
            ListUsersRequest
                options.pathPrefix
                options.marker
                options.maxItems

        options =
            setOptions (ListUsersOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListUsers" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listUsersRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListUsers"
            (AWS.Core.Decode.ResultDecoder "ListUsersResult" listUsersResponseDecoder)
        )


{-| Options for a listUsers request
-}
type alias ListUsersOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Lists the virtual MFA devices defined in the AWS account by assignment status. If you do not specify an assignment status, the operation returns a list of all virtual MFA devices. Assignment status can be <code>Assigned</code>, <code>Unassigned</code>, or <code>Any</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

**Required Parameters**

-}
listVirtualMFADevices :
    (ListVirtualMFADevicesOptions -> ListVirtualMFADevicesOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ListVirtualMFADevicesResponse)
listVirtualMFADevices setOptions =
    let
        requestInput =
            ListVirtualMFADevicesRequest
                options.assignmentStatus
                options.marker
                options.maxItems

        options =
            setOptions (ListVirtualMFADevicesOptions Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ListVirtualMFADevices" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs listVirtualMFADevicesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ListVirtualMFADevices"
            (AWS.Core.Decode.ResultDecoder "ListVirtualMFADevicesResult" listVirtualMFADevicesResponseDecoder)
        )


{-| Options for a listVirtualMFADevices request
-}
type alias ListVirtualMFADevicesOptions =
    { assignmentStatus : Maybe AssignmentStatusType
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-|

<p>Adds or updates an inline policy document that is embedded in the specified IAM group.</p> <p>A user can also have managed policies attached to it. To attach a managed policy to a group, use <a>AttachGroupPolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed in a group, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutGroupPolicy</code>. For general information about using the Query API with IAM, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>

**Required Parameters**

  - `groupName` **:** `String`
  - `policyName` **:** `String`
  - `policyDocument` **:** `String`

-}
putGroupPolicy :
    String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
putGroupPolicy groupName policyName policyDocument =
    let
        requestInput =
            PutGroupPolicyRequest
                groupName
                policyName
                policyDocument
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "PutGroupPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs putGroupPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutGroupPolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Adds or updates the policy that is specified as the IAM role's permissions boundary. You can use an AWS managed policy or a customer managed policy to set the boundary for a role. Use the boundary to control the maximum permissions that the role can have. Setting a permissions boundary is an advanced feature that can affect the permissions for the role.</p> <p>You cannot set the boundary for a service-linked role. </p> <important> <p>Policies used as permissions boundaries do not provide permissions. You must also attach a permissions policy to the role. To learn how the effective permissions for a role are evaluated, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html">IAM JSON Policy Evaluation Logic</a> in the IAM User Guide. </p> </important>

**Required Parameters**

  - `roleName` **:** `String`
  - `permissionsBoundary` **:** `String`

-}
putRolePermissionsBoundary :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
putRolePermissionsBoundary roleName permissionsBoundary =
    let
        requestInput =
            PutRolePermissionsBoundaryRequest
                roleName
                permissionsBoundary
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "PutRolePermissionsBoundary" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs putRolePermissionsBoundaryRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutRolePermissionsBoundary"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Adds or updates an inline policy document that is embedded in the specified IAM role.</p> <p>When you embed an inline policy in a role, the inline policy is used as part of the role's access (permissions) policy. The role's trust policy is created at the same time as the role, using <a>CreateRole</a>. You can update a role's trust policy using <a>UpdateAssumeRolePolicy</a>. For more information about IAM roles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using Roles to Delegate Permissions and Federate Identities</a>.</p> <p>A role can also have a managed policy attached to it. To attach a managed policy to a role, use <a>AttachRolePolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed with a role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutRolePolicy</code>. For general information about using the Query API with IAM, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>

**Required Parameters**

  - `roleName` **:** `String`
  - `policyName` **:** `String`
  - `policyDocument` **:** `String`

-}
putRolePolicy :
    String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
putRolePolicy roleName policyName policyDocument =
    let
        requestInput =
            PutRolePolicyRequest
                roleName
                policyName
                policyDocument
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "PutRolePolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs putRolePolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutRolePolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Adds or updates the policy that is specified as the IAM user's permissions boundary. You can use an AWS managed policy or a customer managed policy to set the boundary for a user. Use the boundary to control the maximum permissions that the user can have. Setting a permissions boundary is an advanced feature that can affect the permissions for the user.</p> <important> <p>Policies that are used as permissions boundaries do not provide permissions. You must also attach a permissions policy to the user. To learn how the effective permissions for a user are evaluated, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html">IAM JSON Policy Evaluation Logic</a> in the IAM User Guide. </p> </important>

**Required Parameters**

  - `userName` **:** `String`
  - `permissionsBoundary` **:** `String`

-}
putUserPermissionsBoundary :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
putUserPermissionsBoundary userName permissionsBoundary =
    let
        requestInput =
            PutUserPermissionsBoundaryRequest
                userName
                permissionsBoundary
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "PutUserPermissionsBoundary" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs putUserPermissionsBoundaryRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutUserPermissionsBoundary"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Adds or updates an inline policy document that is embedded in the specified IAM user.</p> <p>An IAM user can also have a managed policy attached to it. To attach a managed policy to a user, use <a>AttachUserPolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed in a user, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutUserPolicy</code>. For general information about using the Query API with IAM, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>

**Required Parameters**

  - `userName` **:** `String`
  - `policyName` **:** `String`
  - `policyDocument` **:** `String`

-}
putUserPolicy :
    String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
putUserPolicy userName policyName policyDocument =
    let
        requestInput =
            PutUserPolicyRequest
                userName
                policyName
                policyDocument
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "PutUserPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs putUserPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "PutUserPolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Removes the specified client ID (also known as audience) from the list of client IDs registered for the specified IAM OpenID Connect (OIDC) provider resource object.</p> <p>This operation is idempotent; it does not fail or return an error if you try to remove a client ID that does not exist.</p>

**Required Parameters**

  - `openIDConnectProviderArn` **:** `String`
  - `clientID` **:** `String`

-}
removeClientIDFromOpenIDConnectProvider :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
removeClientIDFromOpenIDConnectProvider openIDConnectProviderArn clientID =
    let
        requestInput =
            RemoveClientIDFromOpenIDConnectProviderRequest
                openIDConnectProviderArn
                clientID
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "RemoveClientIDFromOpenIDConnectProvider" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs removeClientIDFromOpenIDConnectProviderRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "RemoveClientIDFromOpenIDConnectProvider"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Removes the specified IAM role from the specified EC2 instance profile.</p> <important> <p>Make sure that you do not have any Amazon EC2 instances running with the role you are about to remove from the instance profile. Removing a role from an instance profile that is associated with a running instance might break any applications running on the instance.</p> </important> <p> For more information about IAM roles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>. For more information about instance profiles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p>

**Required Parameters**

  - `instanceProfileName` **:** `String`
  - `roleName` **:** `String`

-}
removeRoleFromInstanceProfile :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
removeRoleFromInstanceProfile instanceProfileName roleName =
    let
        requestInput =
            RemoveRoleFromInstanceProfileRequest
                instanceProfileName
                roleName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "RemoveRoleFromInstanceProfile" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs removeRoleFromInstanceProfileRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "RemoveRoleFromInstanceProfile"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Removes the specified user from the specified group.</p>

**Required Parameters**

  - `groupName` **:** `String`
  - `userName` **:** `String`

-}
removeUserFromGroup :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
removeUserFromGroup groupName userName =
    let
        requestInput =
            RemoveUserFromGroupRequest
                groupName
                userName
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "RemoveUserFromGroup" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs removeUserFromGroupRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "RemoveUserFromGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Resets the password for a service-specific credential. The new password is AWS generated and cryptographically strong. It cannot be configured by the user. Resetting the password immediately invalidates the previous password associated with this user.</p>

**Required Parameters**

  - `serviceSpecificCredentialId` **:** `String`

-}
resetServiceSpecificCredential :
    String
    -> (ResetServiceSpecificCredentialOptions -> ResetServiceSpecificCredentialOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ResetServiceSpecificCredentialResponse)
resetServiceSpecificCredential serviceSpecificCredentialId setOptions =
    let
        requestInput =
            ResetServiceSpecificCredentialRequest
                options.userName
                serviceSpecificCredentialId

        options =
            setOptions (ResetServiceSpecificCredentialOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ResetServiceSpecificCredential" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs resetServiceSpecificCredentialRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ResetServiceSpecificCredential"
            (AWS.Core.Decode.ResultDecoder "ResetServiceSpecificCredentialResult" resetServiceSpecificCredentialResponseDecoder)
        )


{-| Options for a resetServiceSpecificCredential request
-}
type alias ResetServiceSpecificCredentialOptions =
    { userName : Maybe String
    }


{-|

<p>Synchronizes the specified MFA device with its IAM resource object on the AWS servers.</p> <p>For more information about creating and working with virtual MFA devices, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `serialNumber` **:** `String`
  - `authenticationCode1` **:** `String`
  - `authenticationCode2` **:** `String`

-}
resyncMFADevice :
    String
    -> String
    -> String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
resyncMFADevice userName serialNumber authenticationCode1 authenticationCode2 =
    let
        requestInput =
            ResyncMFADeviceRequest
                userName
                serialNumber
                authenticationCode1
                authenticationCode2
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "ResyncMFADevice" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs resyncMFADeviceRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "ResyncMFADevice"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Sets the specified version of the specified policy as the policy's default (operative) version.</p> <p>This operation affects all users, groups, and roles that the policy is attached to. To list the users, groups, and roles that the policy is attached to, use the <a>ListEntitiesForPolicy</a> API.</p> <p>For information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `policyArn` **:** `String`
  - `versionId` **:** `String`

-}
setDefaultPolicyVersion :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
setDefaultPolicyVersion policyArn versionId =
    let
        requestInput =
            SetDefaultPolicyVersionRequest
                policyArn
                versionId
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "SetDefaultPolicyVersion" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs setDefaultPolicyVersionRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetDefaultPolicyVersion"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Sets the specified version of the global endpoint token as the token version used for the AWS account.</p> <p>By default, AWS Security Token Service (STS) is available as a global service, and all STS requests go to a single endpoint at <code>https://sts.amazonaws.com</code>. AWS recommends using Regional STS endpoints to reduce latency, build in redundancy, and increase session token availability. For information about Regional endpoints for STS, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#sts_region">AWS Regions and Endpoints</a> in the <i>AWS General Reference</i>.</p> <p>If you make an STS call to the global endpoint, the resulting session tokens might be valid in some Regions but not others. It depends on the version that is set in this operation. Version 1 tokens are valid only in AWS Regions that are available by default. These tokens do not work in manually enabled Regions, such as Asia Pacific (Hong Kong). Version 2 tokens are valid in all Regions. However, version 2 tokens are longer and might affect systems where you temporarily store tokens. For information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and Deactivating STS in an AWS Region</a> in the <i>IAM User Guide</i>.</p> <p>To view the current session token version, see the <code>GlobalEndpointTokenVersion</code> entry in the response of the <a>GetAccountSummary</a> operation.</p>

**Required Parameters**

  - `globalEndpointTokenVersion` **:** `GlobalEndpointTokenVersion`

-}
setSecurityTokenServicePreferences :
    GlobalEndpointTokenVersion
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
setSecurityTokenServicePreferences globalEndpointTokenVersion =
    let
        requestInput =
            SetSecurityTokenServicePreferencesRequest
                globalEndpointTokenVersion
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "SetSecurityTokenServicePreferences" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs setSecurityTokenServicePreferencesRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SetSecurityTokenServicePreferences"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Simulate how a set of IAM policies and optionally a resource-based policy works with a list of API operations and AWS resources to determine the policies' effective permissions. The policies are provided as strings.</p> <p>The simulation does not perform the API operations; it only checks the authorization to determine if the simulated policies allow or deny the operations.</p> <p>If you want to simulate existing policies attached to an IAM user, group, or role, use <a>SimulatePrincipalPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. You can use the <code>Condition</code> element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use <a>GetContextKeysForCustomPolicy</a>.</p> <p>If the output is long, you can use <code>MaxItems</code> and <code>Marker</code> parameters to paginate the results.</p>

**Required Parameters**

  - `policyInputList` **:** `(List String)`
  - `actionNames` **:** `(List String)`

-}
simulateCustomPolicy :
    List String
    -> List String
    -> (SimulateCustomPolicyOptions -> SimulateCustomPolicyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response SimulatePolicyResponse)
simulateCustomPolicy policyInputList actionNames setOptions =
    let
        requestInput =
            SimulateCustomPolicyRequest
                policyInputList
                actionNames
                options.resourceArns
                options.resourcePolicy
                options.resourceOwner
                options.callerArn
                options.contextEntries
                options.resourceHandlingOption
                options.maxItems
                options.marker

        options =
            setOptions (SimulateCustomPolicyOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "SimulateCustomPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs simulateCustomPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SimulateCustomPolicy"
            (AWS.Core.Decode.ResultDecoder "SimulateCustomPolicyResult" simulatePolicyResponseDecoder)
        )


{-| Options for a simulateCustomPolicy request
-}
type alias SimulateCustomPolicyOptions =
    { resourceArns : Maybe (List String)
    , resourcePolicy : Maybe String
    , resourceOwner : Maybe String
    , callerArn : Maybe String
    , contextEntries : Maybe (List ContextEntry)
    , resourceHandlingOption : Maybe String
    , maxItems : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Simulate how a set of IAM policies attached to an IAM entity works with a list of API operations and AWS resources to determine the policies' effective permissions. The entity can be an IAM user, group, or role. If you specify a user, then the simulation also includes all of the policies that are attached to groups that the user belongs to.</p> <p>You can optionally include a list of one or more additional policies specified as strings to include in the simulation. If you want to simulate only policies specified as strings, use <a>SimulateCustomPolicy</a> instead.</p> <p>You can also optionally include one resource-based policy to be evaluated with each of the resources included in the simulation.</p> <p>The simulation does not perform the API operations; it only checks the authorization to determine if the simulated policies allow or deny the operations.</p> <p> <b>Note:</b> This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use <a>SimulateCustomPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. You can use the <code>Condition</code> element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use <a>GetContextKeysForPrincipalPolicy</a>.</p> <p>If the output is long, you can use the <code>MaxItems</code> and <code>Marker</code> parameters to paginate the results.</p>

**Required Parameters**

  - `policySourceArn` **:** `String`
  - `actionNames` **:** `(List String)`

-}
simulatePrincipalPolicy :
    String
    -> List String
    -> (SimulatePrincipalPolicyOptions -> SimulatePrincipalPolicyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response SimulatePolicyResponse)
simulatePrincipalPolicy policySourceArn actionNames setOptions =
    let
        requestInput =
            SimulatePrincipalPolicyRequest
                policySourceArn
                options.policyInputList
                actionNames
                options.resourceArns
                options.resourcePolicy
                options.resourceOwner
                options.callerArn
                options.contextEntries
                options.resourceHandlingOption
                options.maxItems
                options.marker

        options =
            setOptions (SimulatePrincipalPolicyOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "SimulatePrincipalPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs simulatePrincipalPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "SimulatePrincipalPolicy"
            (AWS.Core.Decode.ResultDecoder "SimulatePrincipalPolicyResult" simulatePolicyResponseDecoder)
        )


{-| Options for a simulatePrincipalPolicy request
-}
type alias SimulatePrincipalPolicyOptions =
    { policyInputList : Maybe (List String)
    , resourceArns : Maybe (List String)
    , resourcePolicy : Maybe String
    , resourceOwner : Maybe String
    , callerArn : Maybe String
    , contextEntries : Maybe (List ContextEntry)
    , resourceHandlingOption : Maybe String
    , maxItems : Maybe Int
    , marker : Maybe String
    }


{-|

<p>Adds one or more tags to an IAM role. The role can be a regular role or a service-linked role. If a tag with the same key name already exists, then that tag is overwritten with the new value.</p> <p>A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:</p> <ul> <li> <p> <b>Administrative grouping and discovery</b> - Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name <i>Project</i> and the value <i>MyImportantProject</i>. Or search for all resources with the key name <i>Cost Center</i> and the value <i>41200</i>. </p> </li> <li> <p> <b>Access control</b> - Reference tags in IAM user-based and resource-based policies. You can use tags to restrict access to only an IAM user or role that has a specified tag attached. You can also restrict access to only those resources that have a certain tag attached. For examples of policies that show how to use tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control Access Using IAM Tags</a> in the <i>IAM User Guide</i>.</p> </li> <li> <p> <b>Cost allocation</b> - Use tags to help track which individuals and teams are using which AWS resources.</p> </li> </ul> <note> <ul> <li> <p>Make sure that you have no invalid tags and that you do not exceed the allowed number of tags per role. In either case, the entire request fails and <i>no</i> tags are added to the role.</p> </li> <li> <p>AWS always interprets the tag <code>Value</code> as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.</p> </li> </ul> </note> <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `roleName` **:** `String`
  - `tags` **:** `(List Tag)`

-}
tagRole :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
tagRole roleName tags =
    let
        requestInput =
            TagRoleRequest
                roleName
                tags
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "TagRole" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs tagRoleRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "TagRole"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Adds one or more tags to an IAM user. If a tag with the same key name already exists, then that tag is overwritten with the new value.</p> <p>A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:</p> <ul> <li> <p> <b>Administrative grouping and discovery</b> - Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name <i>Project</i> and the value <i>MyImportantProject</i>. Or search for all resources with the key name <i>Cost Center</i> and the value <i>41200</i>. </p> </li> <li> <p> <b>Access control</b> - Reference tags in IAM user-based and resource-based policies. You can use tags to restrict access to only an IAM requesting user or to a role that has a specified tag attached. You can also restrict access to only those resources that have a certain tag attached. For examples of policies that show how to use tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control Access Using IAM Tags</a> in the <i>IAM User Guide</i>.</p> </li> <li> <p> <b>Cost allocation</b> - Use tags to help track which individuals and teams are using which AWS resources.</p> </li> </ul> <note> <ul> <li> <p>Make sure that you have no invalid tags and that you do not exceed the allowed number of tags per role. In either case, the entire request fails and <i>no</i> tags are added to the role.</p> </li> <li> <p>AWS always interprets the tag <code>Value</code> as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.</p> </li> </ul> </note> <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `tags` **:** `(List Tag)`

-}
tagUser :
    String
    -> List Tag
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
tagUser userName tags =
    let
        requestInput =
            TagUserRequest
                userName
                tags
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "TagUser" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs tagUserRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "TagUser"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Removes the specified tags from the role. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `roleName` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
untagRole :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
untagRole roleName tagKeys =
    let
        requestInput =
            UntagRoleRequest
                roleName
                tagKeys
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UntagRole" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs untagRoleRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UntagRole"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Removes the specified tags from the user. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `tagKeys` **:** `(List String)`

-}
untagUser :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
untagUser userName tagKeys =
    let
        requestInput =
            UntagUserRequest
                userName
                tagKeys
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UntagUser" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs untagUserRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UntagUser"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Changes the status of the specified access key from Active to Inactive, or vice versa. This operation can be used to disable a user's key as part of a key rotation workflow.</p> <p>If the <code>UserName</code> is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p> <p>For information about rotating keys, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html">Managing Keys and Certificates</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `accessKeyId` **:** `String`
  - `status` **:** `StatusType`

-}
updateAccessKey :
    String
    -> StatusType
    -> (UpdateAccessKeyOptions -> UpdateAccessKeyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
updateAccessKey accessKeyId status setOptions =
    let
        requestInput =
            UpdateAccessKeyRequest
                options.userName
                accessKeyId
                status

        options =
            setOptions (UpdateAccessKeyOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateAccessKey" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateAccessKeyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateAccessKey"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a updateAccessKey request
-}
type alias UpdateAccessKeyOptions =
    { userName : Maybe String
    }


{-|

<p>Updates the password policy settings for the AWS account.</p> <note> <ul> <li> <p>This operation does not support partial updates. No parameters are required, but if you do not specify a parameter, that parameter's value reverts to its default value. See the <b>Request Parameters</b> section for each parameter's default value. Also note that some parameters do not allow the default parameter to be explicitly set. Instead, to invoke the default value, do not include that parameter when you invoke the operation.</p> </li> </ul> </note> <p> For more information about using a password policy, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html">Managing an IAM Password Policy</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

-}
updateAccountPasswordPolicy :
    (UpdateAccountPasswordPolicyOptions -> UpdateAccountPasswordPolicyOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
updateAccountPasswordPolicy setOptions =
    let
        requestInput =
            UpdateAccountPasswordPolicyRequest
                options.minimumPasswordLength
                options.requireSymbols
                options.requireNumbers
                options.requireUppercaseCharacters
                options.requireLowercaseCharacters
                options.allowUsersToChangePassword
                options.maxPasswordAge
                options.passwordReusePrevention
                options.hardExpiry

        options =
            setOptions (UpdateAccountPasswordPolicyOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateAccountPasswordPolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateAccountPasswordPolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateAccountPasswordPolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a updateAccountPasswordPolicy request
-}
type alias UpdateAccountPasswordPolicyOptions =
    { minimumPasswordLength : Maybe Int
    , requireSymbols : Maybe Bool
    , requireNumbers : Maybe Bool
    , requireUppercaseCharacters : Maybe Bool
    , requireLowercaseCharacters : Maybe Bool
    , allowUsersToChangePassword : Maybe Bool
    , maxPasswordAge : Maybe Int
    , passwordReusePrevention : Maybe Int
    , hardExpiry : Maybe Bool
    }


{-|

<p>Updates the policy that grants an IAM entity permission to assume a role. This is typically referred to as the "role trust policy". For more information about roles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using Roles to Delegate Permissions and Federate Identities</a>.</p>

**Required Parameters**

  - `roleName` **:** `String`
  - `policyDocument` **:** `String`

-}
updateAssumeRolePolicy :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
updateAssumeRolePolicy roleName policyDocument =
    let
        requestInput =
            UpdateAssumeRolePolicyRequest
                roleName
                policyDocument
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateAssumeRolePolicy" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateAssumeRolePolicyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateAssumeRolePolicy"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Updates the name and/or the path of the specified IAM group.</p> <important> <p> You should understand the implications of changing a group's path or name. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html">Renaming Users and Groups</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p>The person making the request (the principal), must have permission to change the role group with the old name and the new name. For example, to change the group named <code>Managers</code> to <code>MGRs</code>, the principal must have a policy that allows them to update both groups. If the principal has permission to update the <code>Managers</code> group, but not the <code>MGRs</code> group, then the update fails. For more information about permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a>. </p> </note>

**Required Parameters**

  - `groupName` **:** `String`

-}
updateGroup :
    String
    -> (UpdateGroupOptions -> UpdateGroupOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
updateGroup groupName setOptions =
    let
        requestInput =
            UpdateGroupRequest
                groupName
                options.newPath
                options.newGroupName

        options =
            setOptions (UpdateGroupOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateGroup" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateGroupRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateGroup"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a updateGroup request
-}
type alias UpdateGroupOptions =
    { newPath : Maybe String
    , newGroupName : Maybe String
    }


{-|

<p>Changes the password for the specified IAM user.</p> <p>IAM users can change their own passwords by calling <a>ChangePassword</a>. For more information about modifying passwords, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`

-}
updateLoginProfile :
    String
    -> (UpdateLoginProfileOptions -> UpdateLoginProfileOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
updateLoginProfile userName setOptions =
    let
        requestInput =
            UpdateLoginProfileRequest
                userName
                options.password
                options.passwordResetRequired

        options =
            setOptions (UpdateLoginProfileOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateLoginProfile" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateLoginProfileRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateLoginProfile"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a updateLoginProfile request
-}
type alias UpdateLoginProfileOptions =
    { password : Maybe String
    , passwordResetRequired : Maybe Bool
    }


{-|

<p>Replaces the existing list of server certificate thumbprints associated with an OpenID Connect (OIDC) provider resource object with a new list of thumbprints.</p> <p>The list that you pass with this operation completely replaces the existing list of thumbprints. (The lists are not merged.)</p> <p>Typically, you need to update a thumbprint only when the identity provider's certificate changes, which occurs rarely. However, if the provider's certificate <i>does</i> change, any attempt to assume an IAM role that specifies the OIDC provider as a principal fails until the certificate thumbprint is updated.</p> <note> <p>Trust for the OIDC provider is derived from the provider's certificate and is validated by the thumbprint. Therefore, it is best to limit access to the <code>UpdateOpenIDConnectProviderThumbprint</code> operation to highly privileged users.</p> </note>

**Required Parameters**

  - `openIDConnectProviderArn` **:** `String`
  - `thumbprintList` **:** `(List String)`

-}
updateOpenIDConnectProviderThumbprint :
    String
    -> List String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
updateOpenIDConnectProviderThumbprint openIDConnectProviderArn thumbprintList =
    let
        requestInput =
            UpdateOpenIDConnectProviderThumbprintRequest
                openIDConnectProviderArn
                thumbprintList
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateOpenIDConnectProviderThumbprint" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateOpenIDConnectProviderThumbprintRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateOpenIDConnectProviderThumbprint"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Updates the description or maximum session duration setting of a role.</p>

**Required Parameters**

  - `roleName` **:** `String`

-}
updateRole :
    String
    -> (UpdateRoleOptions -> UpdateRoleOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response UpdateRoleResponse)
updateRole roleName setOptions =
    let
        requestInput =
            UpdateRoleRequest
                roleName
                options.description
                options.maxSessionDuration

        options =
            setOptions (UpdateRoleOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateRole" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateRoleRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateRole"
            (AWS.Core.Decode.ResultDecoder "UpdateRoleResult" updateRoleResponseDecoder)
        )


{-| Options for a updateRole request
-}
type alias UpdateRoleOptions =
    { description : Maybe String
    , maxSessionDuration : Maybe Int
    }


{-|

<p>Use <a>UpdateRole</a> instead.</p> <p>Modifies only the description of a role. This operation performs the same function as the <code>Description</code> parameter in the <code>UpdateRole</code> operation.</p>

**Required Parameters**

  - `roleName` **:** `String`
  - `description` **:** `String`

-}
updateRoleDescription :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response UpdateRoleDescriptionResponse)
updateRoleDescription roleName description =
    let
        requestInput =
            UpdateRoleDescriptionRequest
                roleName
                description
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateRoleDescription" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateRoleDescriptionRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateRoleDescription"
            (AWS.Core.Decode.ResultDecoder "UpdateRoleDescriptionResult" updateRoleDescriptionResponseDecoder)
        )


{-|

<p>Updates the metadata document for an existing SAML provider resource object.</p> <note> <p>This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>

**Required Parameters**

  - `sAMLMetadataDocument` **:** `String`
  - `sAMLProviderArn` **:** `String`

-}
updateSAMLProvider :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response UpdateSAMLProviderResponse)
updateSAMLProvider sAMLMetadataDocument sAMLProviderArn =
    let
        requestInput =
            UpdateSAMLProviderRequest
                sAMLMetadataDocument
                sAMLProviderArn
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateSAMLProvider" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateSAMLProviderRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateSAMLProvider"
            (AWS.Core.Decode.ResultDecoder "UpdateSAMLProviderResult" updateSAMLProviderResponseDecoder)
        )


{-|

<p>Sets the status of an IAM user's SSH public key to active or inactive. SSH public keys that are inactive cannot be used for authentication. This operation can be used to disable a user's SSH public key as part of a key rotation work flow.</p> <p>The SSH public key affected by this operation is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `sSHPublicKeyId` **:** `String`
  - `status` **:** `StatusType`

-}
updateSSHPublicKey :
    String
    -> String
    -> StatusType
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
updateSSHPublicKey userName sSHPublicKeyId status =
    let
        requestInput =
            UpdateSSHPublicKeyRequest
                userName
                sSHPublicKeyId
                status
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateSSHPublicKey" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateSSHPublicKeyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateSSHPublicKey"
            (AWS.Core.Decode.FixedResult ())
        )


{-|

<p>Updates the name and/or the path of the specified server certificate stored in IAM.</p> <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.</p> <important> <p>You should understand the implications of changing a server certificate's path or name. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts">Renaming a Server Certificate</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p>The person making the request (the principal), must have permission to change the server certificate with the old name and the new name. For example, to change the certificate named <code>ProductionCert</code> to <code>ProdCert</code>, the principal must have a policy that allows them to update both certificates. If the principal has permission to update the <code>ProductionCert</code> group, but not the <code>ProdCert</code> certificate, then the update fails. For more information about permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the <i>IAM User Guide</i>.</p> </note>

**Required Parameters**

  - `serverCertificateName` **:** `String`

-}
updateServerCertificate :
    String
    -> (UpdateServerCertificateOptions -> UpdateServerCertificateOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
updateServerCertificate serverCertificateName setOptions =
    let
        requestInput =
            UpdateServerCertificateRequest
                serverCertificateName
                options.newPath
                options.newServerCertificateName

        options =
            setOptions (UpdateServerCertificateOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateServerCertificate" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateServerCertificateRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateServerCertificate"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a updateServerCertificate request
-}
type alias UpdateServerCertificateOptions =
    { newPath : Maybe String
    , newServerCertificateName : Maybe String
    }


{-|

<p>Sets the status of a service-specific credential to <code>Active</code> or <code>Inactive</code>. Service-specific credentials that are inactive cannot be used for authentication to the service. This operation can be used to disable a user's service-specific credential as part of a credential rotation work flow.</p>

**Required Parameters**

  - `serviceSpecificCredentialId` **:** `String`
  - `status` **:** `StatusType`

-}
updateServiceSpecificCredential :
    String
    -> StatusType
    -> (UpdateServiceSpecificCredentialOptions -> UpdateServiceSpecificCredentialOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
updateServiceSpecificCredential serviceSpecificCredentialId status setOptions =
    let
        requestInput =
            UpdateServiceSpecificCredentialRequest
                options.userName
                serviceSpecificCredentialId
                status

        options =
            setOptions (UpdateServiceSpecificCredentialOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateServiceSpecificCredential" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateServiceSpecificCredentialRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateServiceSpecificCredential"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a updateServiceSpecificCredential request
-}
type alias UpdateServiceSpecificCredentialOptions =
    { userName : Maybe String
    }


{-|

<p>Changes the status of the specified user signing certificate from active to disabled, or vice versa. This operation can be used to disable an IAM user's signing certificate as part of a certificate rotation work flow.</p> <p>If the <code>UserName</code> field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p>

**Required Parameters**

  - `certificateId` **:** `String`
  - `status` **:** `StatusType`

-}
updateSigningCertificate :
    String
    -> StatusType
    -> (UpdateSigningCertificateOptions -> UpdateSigningCertificateOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
updateSigningCertificate certificateId status setOptions =
    let
        requestInput =
            UpdateSigningCertificateRequest
                options.userName
                certificateId
                status

        options =
            setOptions (UpdateSigningCertificateOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateSigningCertificate" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateSigningCertificateRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateSigningCertificate"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a updateSigningCertificate request
-}
type alias UpdateSigningCertificateOptions =
    { userName : Maybe String
    }


{-|

<p>Updates the name and/or the path of the specified IAM user.</p> <important> <p> You should understand the implications of changing an IAM user's path or name. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming">Renaming an IAM User</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html">Renaming an IAM Group</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p> To change a user name, the requester must have appropriate permissions on both the source object and the target object. For example, to change Bob to Robert, the entity making the request must have permission on Bob and Robert, or must have permission on all (*). For more information about permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html">Permissions and Policies</a>. </p> </note>

**Required Parameters**

  - `userName` **:** `String`

-}
updateUser :
    String
    -> (UpdateUserOptions -> UpdateUserOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response ())
updateUser userName setOptions =
    let
        requestInput =
            UpdateUserRequest
                userName
                options.newPath
                options.newUserName

        options =
            setOptions (UpdateUserOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UpdateUser" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs updateUserRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UpdateUser"
            (AWS.Core.Decode.FixedResult ())
        )


{-| Options for a updateUser request
-}
type alias UpdateUserOptions =
    { newPath : Maybe String
    , newUserName : Maybe String
    }


{-|

<p>Uploads an SSH public key and associates it with the specified IAM user.</p> <p>The SSH public key uploaded by this operation can be used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>

**Required Parameters**

  - `userName` **:** `String`
  - `sSHPublicKeyBody` **:** `String`

-}
uploadSSHPublicKey :
    String
    -> String
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response UploadSSHPublicKeyResponse)
uploadSSHPublicKey userName sSHPublicKeyBody =
    let
        requestInput =
            UploadSSHPublicKeyRequest
                userName
                sSHPublicKeyBody
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UploadSSHPublicKey" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs uploadSSHPublicKeyRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UploadSSHPublicKey"
            (AWS.Core.Decode.ResultDecoder "UploadSSHPublicKeyResult" uploadSSHPublicKeyResponseDecoder)
        )


{-|

<p>Uploads a server certificate entity for the AWS account. The server certificate entity includes a public key certificate, a private key, and an optional certificate chain, which should all be PEM-encoded.</p> <p>We recommend that you use <a href="https://docs.aws.amazon.com/acm/">AWS Certificate Manager</a> to provision, manage, and deploy your server certificates. With ACM you can request a certificate, deploy it to AWS resources, and let ACM handle certificate renewals for you. Certificates provided by ACM are free. For more information about using ACM, see the <a href="https://docs.aws.amazon.com/acm/latest/userguide/">AWS Certificate Manager User Guide</a>.</p> <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>. This topic includes a list of AWS services that can use the server certificates that you manage with IAM.</p> <p>For information about the number of server certificates you can upload, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html">Limitations on IAM Entities and Objects</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because the body of the public key certificate, private key, and the certificate chain can be large, you should use POST rather than GET when calling <code>UploadServerCertificate</code>. For information about setting up signatures and authorization through the API, go to <a href="https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing AWS API Requests</a> in the <i>AWS General Reference</i>. For general information about using the Query API with IAM, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html">Calling the API by Making HTTP Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>

**Required Parameters**

  - `serverCertificateName` **:** `String`
  - `certificateBody` **:** `String`
  - `privateKey` **:** `String`

-}
uploadServerCertificate :
    String
    -> String
    -> String
    -> (UploadServerCertificateOptions -> UploadServerCertificateOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response UploadServerCertificateResponse)
uploadServerCertificate serverCertificateName certificateBody privateKey setOptions =
    let
        requestInput =
            UploadServerCertificateRequest
                options.path
                serverCertificateName
                certificateBody
                privateKey
                options.certificateChain

        options =
            setOptions (UploadServerCertificateOptions Nothing Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UploadServerCertificate" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs uploadServerCertificateRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UploadServerCertificate"
            (AWS.Core.Decode.ResultDecoder "UploadServerCertificateResult" uploadServerCertificateResponseDecoder)
        )


{-| Options for a uploadServerCertificate request
-}
type alias UploadServerCertificateOptions =
    { path : Maybe String
    , certificateChain : Maybe String
    }


{-|

<p>Uploads an X.509 signing certificate and associates it with the specified IAM user. Some AWS services use X.509 signing certificates to validate requests that are signed with a corresponding private key. When you upload the certificate, its default status is <code>Active</code>.</p> <p>If the <code>UserName</code> is not specified, the IAM user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p> <note> <p>Because the body of an X.509 certificate can be large, you should use POST rather than GET when calling <code>UploadSigningCertificate</code>. For information about setting up signatures and authorization through the API, go to <a href="https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing AWS API Requests</a> in the <i>AWS General Reference</i>. For general information about using the Query API with IAM, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>

**Required Parameters**

  - `certificateBody` **:** `String`

-}
uploadSigningCertificate :
    String
    -> (UploadSigningCertificateOptions -> UploadSigningCertificateOptions)
    -> AWS.Core.Http.Request (AWS.Core.Decode.Response UploadSigningCertificateResponse)
uploadSigningCertificate certificateBody setOptions =
    let
        requestInput =
            UploadSigningCertificateRequest
                options.userName
                certificateBody

        options =
            setOptions (UploadSigningCertificateOptions Nothing)
    in
    AWS.Core.Http.request
        AWS.Core.Http.POST
        "/"
        ([ ( "Action", "UploadSigningCertificate" ) ]
            |> AWS.Core.Encode.addRecordToQueryArgs uploadSigningCertificateRequestEncoder "" requestInput
        )
        AWS.Core.Http.emptyBody
        (AWS.Core.Decode.responseWrapperDecoder
            "UploadSigningCertificate"
            (AWS.Core.Decode.ResultDecoder "UploadSigningCertificateResult" uploadSigningCertificateResponseDecoder)
        )


{-| Options for a uploadSigningCertificate request
-}
type alias UploadSigningCertificateOptions =
    { userName : Maybe String
    }


{-|

<p>An object that contains details about when a principal in the reported AWS Organizations entity last attempted to access an AWS service. A principal can be an IAM user, an IAM role, or the AWS account root user within the reported Organizations entity.</p> <p>This data type is a response element in the <a>GetOrganizationsAccessReport</a> operation.</p>

-}
type alias AccessDetail =
    { serviceName : String
    , serviceNamespace : String
    , region : Maybe String
    , entityPath : Maybe String
    , lastAuthenticatedTime : Maybe Posix
    , totalAuthenticatedEntities : Maybe Int
    }


accessDetailDecoder : JD.Decoder AccessDetail
accessDetailDecoder =
    JD.succeed AccessDetail
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceName", "serviceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceNamespace", "serviceNamespace" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Region", "region" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EntityPath", "entityPath" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastAuthenticatedTime", "lastAuthenticatedTime" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TotalAuthenticatedEntities", "totalAuthenticatedEntities" ]
                JD.int
            )


{-|

<p>Contains information about an AWS access key.</p> <p> This data type is used as a response element in the <a>CreateAccessKey</a> and <a>ListAccessKeys</a> operations. </p> <note> <p>The <code>SecretAccessKey</code> value is returned only in response to <a>CreateAccessKey</a>. You can get a secret access key only when you first create an access key; you cannot recover the secret access key later. If you lose a secret access key, you must create a new access key.</p> </note>

-}
type alias AccessKey =
    { userName : String
    , accessKeyId : String
    , status : StatusType
    , secretAccessKey : String
    , createDate : Maybe Posix
    }


accessKeyDecoder : JD.Decoder AccessKey
accessKeyDecoder =
    JD.succeed AccessKey
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AccessKeyId", "accessKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Status", "status" ]
                statusTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SecretAccessKey", "secretAccessKey" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )


{-|

<p>Contains information about the last time an AWS access key was used since IAM began tracking this information on April 22, 2015.</p> <p>This data type is used as a response element in the <a>GetAccessKeyLastUsed</a> operation.</p>

-}
type alias AccessKeyLastUsed =
    { lastUsedDate : Posix
    , serviceName : String
    , region : String
    }


accessKeyLastUsedDecoder : JD.Decoder AccessKeyLastUsed
accessKeyLastUsedDecoder =
    JD.succeed AccessKeyLastUsed
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "LastUsedDate", "lastUsedDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceName", "serviceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Region", "region" ]
                JD.string
            )


{-|

<p>Contains information about an AWS access key, without its secret key.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> operation.</p>

-}
type alias AccessKeyMetadata =
    { userName : Maybe String
    , accessKeyId : Maybe String
    , status : Maybe StatusType
    , createDate : Maybe Posix
    }


accessKeyMetadataDecoder : JD.Decoder AccessKeyMetadata
accessKeyMetadataDecoder =
    JD.succeed AccessKeyMetadata
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccessKeyId", "accessKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Status", "status" ]
                statusTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )


{-|

<p>Contains information about an attached permissions boundary.</p> <p>An attached permissions boundary is a managed policy that has been attached to a user or role to set the permissions boundary.</p> <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>

-}
type alias AttachedPermissionsBoundary =
    { permissionsBoundaryType : Maybe PermissionsBoundaryAttachmentType
    , permissionsBoundaryArn : Maybe String
    }


attachedPermissionsBoundaryDecoder : JD.Decoder AttachedPermissionsBoundary
attachedPermissionsBoundaryDecoder =
    JD.succeed AttachedPermissionsBoundary
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PermissionsBoundaryType", "permissionsBoundaryType" ]
                permissionsBoundaryAttachmentTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PermissionsBoundaryArn", "permissionsBoundaryArn" ]
                JD.string
            )


{-|

<p>Contains information about an attached policy.</p> <p>An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the <a>ListAttachedGroupPolicies</a>, <a>ListAttachedRolePolicies</a>, <a>ListAttachedUserPolicies</a>, and <a>GetAccountAuthorizationDetails</a> operations. </p> <p>For more information about managed policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

-}
type alias AttachedPolicy =
    { policyName : Maybe String
    , policyArn : Maybe String
    }


attachedPolicyDecoder : JD.Decoder AttachedPolicy
attachedPolicyDecoder =
    JD.succeed AttachedPolicy
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyName", "policyName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyArn", "policyArn" ]
                JD.string
            )


{-|

<p>Contains information about a condition context key. It includes the name of the key and specifies the value (or values, if the context key supports multiple values) to use in the simulation. This information is used when evaluating the <code>Condition</code> elements of the input policies.</p> <p>This data type is used as an input parameter to <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulateCustomPolicy</a> </code>.</p>

-}
type alias ContextEntry =
    { contextKeyName : Maybe String
    , contextKeyValues : Maybe (List String)
    , contextKeyType : Maybe ContextKeyTypeEnum
    }


contextEntryDecoder : JD.Decoder ContextEntry
contextEntryDecoder =
    JD.succeed ContextEntry
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ContextKeyName", "contextKeyName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ContextKeyValues", "contextKeyValues" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ContextKeyType", "contextKeyType" ]
                contextKeyTypeEnumDecoder
            )


{-| One of

  - `ContextKeyTypeEnum_string`
  - `ContextKeyTypeEnum_stringList`
  - `ContextKeyTypeEnum_numeric`
  - `ContextKeyTypeEnum_numericList`
  - `ContextKeyTypeEnum_boolean`
  - `ContextKeyTypeEnum_booleanList`
  - `ContextKeyTypeEnum_ip`
  - `ContextKeyTypeEnum_ipList`
  - `ContextKeyTypeEnum_binary`
  - `ContextKeyTypeEnum_binaryList`
  - `ContextKeyTypeEnum_date`
  - `ContextKeyTypeEnum_dateList`

-}
type ContextKeyTypeEnum
    = ContextKeyTypeEnum_string
    | ContextKeyTypeEnum_stringList
    | ContextKeyTypeEnum_numeric
    | ContextKeyTypeEnum_numericList
    | ContextKeyTypeEnum_boolean
    | ContextKeyTypeEnum_booleanList
    | ContextKeyTypeEnum_ip
    | ContextKeyTypeEnum_ipList
    | ContextKeyTypeEnum_binary
    | ContextKeyTypeEnum_binaryList
    | ContextKeyTypeEnum_date
    | ContextKeyTypeEnum_dateList


contextKeyTypeEnumDecoder : JD.Decoder ContextKeyTypeEnum
contextKeyTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "string" ->
                        JD.succeed ContextKeyTypeEnum_string

                    "stringList" ->
                        JD.succeed ContextKeyTypeEnum_stringList

                    "numeric" ->
                        JD.succeed ContextKeyTypeEnum_numeric

                    "numericList" ->
                        JD.succeed ContextKeyTypeEnum_numericList

                    "boolean" ->
                        JD.succeed ContextKeyTypeEnum_boolean

                    "booleanList" ->
                        JD.succeed ContextKeyTypeEnum_booleanList

                    "ip" ->
                        JD.succeed ContextKeyTypeEnum_ip

                    "ipList" ->
                        JD.succeed ContextKeyTypeEnum_ipList

                    "binary" ->
                        JD.succeed ContextKeyTypeEnum_binary

                    "binaryList" ->
                        JD.succeed ContextKeyTypeEnum_binaryList

                    "date" ->
                        JD.succeed ContextKeyTypeEnum_date

                    "dateList" ->
                        JD.succeed ContextKeyTypeEnum_dateList

                    _ ->
                        JD.fail "bad thing"
            )


{-| Type of HTTP response from createAccessKey
-}
type alias CreateAccessKeyResponse =
    { accessKey : AccessKey
    }


createAccessKeyResponseDecoder : JD.Decoder CreateAccessKeyResponse
createAccessKeyResponseDecoder =
    JD.succeed CreateAccessKeyResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AccessKey", "accessKey" ]
                accessKeyDecoder
            )


{-| Type of HTTP response from createGroup
-}
type alias CreateGroupResponse =
    { group : Group
    }


createGroupResponseDecoder : JD.Decoder CreateGroupResponse
createGroupResponseDecoder =
    JD.succeed CreateGroupResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Group", "group" ]
                groupDecoder
            )


{-| Type of HTTP response from createInstanceProfile
-}
type alias CreateInstanceProfileResponse =
    { instanceProfile : InstanceProfile
    }


createInstanceProfileResponseDecoder : JD.Decoder CreateInstanceProfileResponse
createInstanceProfileResponseDecoder =
    JD.succeed CreateInstanceProfileResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "InstanceProfile", "instanceProfile" ]
                instanceProfileDecoder
            )


{-| Type of HTTP response from createLoginProfile
-}
type alias CreateLoginProfileResponse =
    { loginProfile : LoginProfile
    }


createLoginProfileResponseDecoder : JD.Decoder CreateLoginProfileResponse
createLoginProfileResponseDecoder =
    JD.succeed CreateLoginProfileResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "LoginProfile", "loginProfile" ]
                loginProfileDecoder
            )


{-| Type of HTTP response from createOpenIDConnectProvider
-}
type alias CreateOpenIDConnectProviderResponse =
    { openIDConnectProviderArn : Maybe String
    }


createOpenIDConnectProviderResponseDecoder : JD.Decoder CreateOpenIDConnectProviderResponse
createOpenIDConnectProviderResponseDecoder =
    JD.succeed CreateOpenIDConnectProviderResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OpenIDConnectProviderArn", "openIDConnectProviderArn" ]
                JD.string
            )


{-| Type of HTTP response from createPolicy
-}
type alias CreatePolicyResponse =
    { policy : Maybe Policy
    }


createPolicyResponseDecoder : JD.Decoder CreatePolicyResponse
createPolicyResponseDecoder =
    JD.succeed CreatePolicyResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Policy", "policy" ]
                policyDecoder
            )


{-| Type of HTTP response from createPolicyVersion
-}
type alias CreatePolicyVersionResponse =
    { policyVersion : Maybe PolicyVersion
    }


createPolicyVersionResponseDecoder : JD.Decoder CreatePolicyVersionResponse
createPolicyVersionResponseDecoder =
    JD.succeed CreatePolicyVersionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyVersion", "policyVersion" ]
                policyVersionDecoder
            )


{-| Type of HTTP response from createRole
-}
type alias CreateRoleResponse =
    { role : Role
    }


createRoleResponseDecoder : JD.Decoder CreateRoleResponse
createRoleResponseDecoder =
    JD.succeed CreateRoleResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Role", "role" ]
                roleDecoder
            )


{-| Type of HTTP response from createSAMLProvider
-}
type alias CreateSAMLProviderResponse =
    { sAMLProviderArn : Maybe String
    }


createSAMLProviderResponseDecoder : JD.Decoder CreateSAMLProviderResponse
createSAMLProviderResponseDecoder =
    JD.succeed CreateSAMLProviderResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SAMLProviderArn", "sAMLProviderArn" ]
                JD.string
            )


{-| Type of HTTP response from createServiceLinkedRole
-}
type alias CreateServiceLinkedRoleResponse =
    { role : Maybe Role
    }


createServiceLinkedRoleResponseDecoder : JD.Decoder CreateServiceLinkedRoleResponse
createServiceLinkedRoleResponseDecoder =
    JD.succeed CreateServiceLinkedRoleResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Role", "role" ]
                roleDecoder
            )


{-| Type of HTTP response from createServiceSpecificCredential
-}
type alias CreateServiceSpecificCredentialResponse =
    { serviceSpecificCredential : Maybe ServiceSpecificCredential
    }


createServiceSpecificCredentialResponseDecoder : JD.Decoder CreateServiceSpecificCredentialResponse
createServiceSpecificCredentialResponseDecoder =
    JD.succeed CreateServiceSpecificCredentialResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceSpecificCredential", "serviceSpecificCredential" ]
                serviceSpecificCredentialDecoder
            )


{-| Type of HTTP response from createUser
-}
type alias CreateUserResponse =
    { user : Maybe User
    }


createUserResponseDecoder : JD.Decoder CreateUserResponse
createUserResponseDecoder =
    JD.succeed CreateUserResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "User", "user" ]
                userDecoder
            )


{-| Type of HTTP response from createVirtualMFADevice
-}
type alias CreateVirtualMFADeviceResponse =
    { virtualMFADevice : VirtualMFADevice
    }


createVirtualMFADeviceResponseDecoder : JD.Decoder CreateVirtualMFADeviceResponse
createVirtualMFADeviceResponseDecoder =
    JD.succeed CreateVirtualMFADeviceResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "VirtualMFADevice", "virtualMFADevice" ]
                virtualMFADeviceDecoder
            )


{-| Type of HTTP response from deleteServiceLinkedRole
-}
type alias DeleteServiceLinkedRoleResponse =
    { deletionTaskId : String
    }


deleteServiceLinkedRoleResponseDecoder : JD.Decoder DeleteServiceLinkedRoleResponse
deleteServiceLinkedRoleResponseDecoder =
    JD.succeed DeleteServiceLinkedRoleResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "DeletionTaskId", "deletionTaskId" ]
                JD.string
            )


{-|

<p>The reason that the service-linked role deletion failed.</p> <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>

-}
type alias DeletionTaskFailureReasonType =
    { reason : Maybe String
    , roleUsageList : Maybe (List RoleUsageType)
    }


deletionTaskFailureReasonTypeDecoder : JD.Decoder DeletionTaskFailureReasonType
deletionTaskFailureReasonTypeDecoder =
    JD.succeed DeletionTaskFailureReasonType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Reason", "reason" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RoleUsageList", "roleUsageList" ]
                (JD.list roleUsageTypeDecoder)
            )


{-| One of

  - `DeletionTaskStatusType_SUCCEEDED`
  - `DeletionTaskStatusType_IN_PROGRESS`
  - `DeletionTaskStatusType_FAILED`
  - `DeletionTaskStatusType_NOT_STARTED`

-}
type DeletionTaskStatusType
    = DeletionTaskStatusType_SUCCEEDED
    | DeletionTaskStatusType_IN_PROGRESS
    | DeletionTaskStatusType_FAILED
    | DeletionTaskStatusType_NOT_STARTED


deletionTaskStatusTypeDecoder : JD.Decoder DeletionTaskStatusType
deletionTaskStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCEEDED" ->
                        JD.succeed DeletionTaskStatusType_SUCCEEDED

                    "IN_PROGRESS" ->
                        JD.succeed DeletionTaskStatusType_IN_PROGRESS

                    "FAILED" ->
                        JD.succeed DeletionTaskStatusType_FAILED

                    "NOT_STARTED" ->
                        JD.succeed DeletionTaskStatusType_NOT_STARTED

                    _ ->
                        JD.fail "bad thing"
            )


{-|

<p>An object that contains details about when the IAM entities (users or roles) were last used in an attempt to access the specified AWS service.</p> <p>This data type is a response element in the <a>GetServiceLastAccessedDetailsWithEntities</a> operation.</p>

-}
type alias EntityDetails =
    { entityInfo : EntityInfo
    , lastAuthenticated : Maybe Posix
    }


entityDetailsDecoder : JD.Decoder EntityDetails
entityDetailsDecoder =
    JD.succeed EntityDetails
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "EntityInfo", "entityInfo" ]
                entityInfoDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastAuthenticated", "lastAuthenticated" ]
                JDX.datetime
            )


{-|

<p>Contains details about the specified entity (user or role).</p> <p>This data type is an element of the <a>EntityDetails</a> object.</p>

-}
type alias EntityInfo =
    { arn : String
    , name : String
    , type_ : PolicyOwnerEntityType
    , id : String
    , path : Maybe String
    }


entityInfoDecoder : JD.Decoder EntityInfo
entityInfoDecoder =
    JD.succeed EntityInfo
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Arn", "arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Name", "name" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Type", "type" ]
                policyOwnerEntityTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Id", "id" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Path", "path" ]
                JD.string
            )


{-| One of

  - `EntityType_User`
  - `EntityType_Role`
  - `EntityType_Group`
  - `EntityType_LocalManagedPolicy`
  - `EntityType_AWSManagedPolicy`

-}
type EntityType
    = EntityType_User
    | EntityType_Role
    | EntityType_Group
    | EntityType_LocalManagedPolicy
    | EntityType_AWSManagedPolicy


entityTypeDecoder : JD.Decoder EntityType
entityTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "User" ->
                        JD.succeed EntityType_User

                    "Role" ->
                        JD.succeed EntityType_Role

                    "Group" ->
                        JD.succeed EntityType_Group

                    "LocalManagedPolicy" ->
                        JD.succeed EntityType_LocalManagedPolicy

                    "AWSManagedPolicy" ->
                        JD.succeed EntityType_AWSManagedPolicy

                    _ ->
                        JD.fail "bad thing"
            )


{-|

<p>Contains information about the reason that the operation failed.</p> <p>This data type is used as a response element in the <a>GetOrganizationsAccessReport</a>, <a>GetServiceLastAccessedDetails</a>, and <a>GetServiceLastAccessedDetailsWithEntities</a> operations.</p>

-}
type alias ErrorDetails =
    { message : String
    , code : String
    }


errorDetailsDecoder : JD.Decoder ErrorDetails
errorDetailsDecoder =
    JD.succeed ErrorDetails
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Message", "message" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Code", "code" ]
                JD.string
            )


{-|

<p>Contains the results of a simulation.</p> <p>This data type is used by the return parameter of <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulatePrincipalPolicy</a> </code>.</p>

-}
type alias EvaluationResult =
    { evalActionName : String
    , evalResourceName : Maybe String
    , evalDecision : PolicyEvaluationDecisionType
    , matchedStatements : Maybe (List Statement)
    , missingContextValues : Maybe (List String)
    , organizationsDecisionDetail : Maybe OrganizationsDecisionDetail
    , evalDecisionDetails : Maybe (Dict String PolicyEvaluationDecisionType)
    , resourceSpecificResults : Maybe (List ResourceSpecificResult)
    }


evaluationResultDecoder : JD.Decoder EvaluationResult
evaluationResultDecoder =
    JD.succeed EvaluationResult
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "EvalActionName", "evalActionName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EvalResourceName", "evalResourceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "EvalDecision", "evalDecision" ]
                policyEvaluationDecisionTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MatchedStatements", "matchedStatements" ]
                (JD.list statementDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MissingContextValues", "missingContextValues" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OrganizationsDecisionDetail", "organizationsDecisionDetail" ]
                organizationsDecisionDetailDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EvalDecisionDetails", "evalDecisionDetails" ]
                (AWS.Core.Decode.dict policyEvaluationDecisionTypeDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ResourceSpecificResults", "resourceSpecificResults" ]
                (JD.list resourceSpecificResultDecoder)
            )


{-| Type of HTTP response from generateCredentialReport
-}
type alias GenerateCredentialReportResponse =
    { state : Maybe ReportStateType
    , description : Maybe String
    }


generateCredentialReportResponseDecoder : JD.Decoder GenerateCredentialReportResponse
generateCredentialReportResponseDecoder =
    JD.succeed GenerateCredentialReportResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "State", "state" ]
                reportStateTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )


{-| Type of HTTP response from generateOrganizationsAccessReport
-}
type alias GenerateOrganizationsAccessReportResponse =
    { jobId : Maybe String
    }


generateOrganizationsAccessReportResponseDecoder : JD.Decoder GenerateOrganizationsAccessReportResponse
generateOrganizationsAccessReportResponseDecoder =
    JD.succeed GenerateOrganizationsAccessReportResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "JobId", "jobId" ]
                JD.string
            )


{-| Type of HTTP response from generateServiceLastAccessedDetails
-}
type alias GenerateServiceLastAccessedDetailsResponse =
    { jobId : Maybe String
    }


generateServiceLastAccessedDetailsResponseDecoder : JD.Decoder GenerateServiceLastAccessedDetailsResponse
generateServiceLastAccessedDetailsResponseDecoder =
    JD.succeed GenerateServiceLastAccessedDetailsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "JobId", "jobId" ]
                JD.string
            )


{-| Type of HTTP response from getAccessKeyLastUsed
-}
type alias GetAccessKeyLastUsedResponse =
    { userName : Maybe String
    , accessKeyLastUsed : Maybe AccessKeyLastUsed
    }


getAccessKeyLastUsedResponseDecoder : JD.Decoder GetAccessKeyLastUsedResponse
getAccessKeyLastUsedResponseDecoder =
    JD.succeed GetAccessKeyLastUsedResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccessKeyLastUsed", "accessKeyLastUsed" ]
                accessKeyLastUsedDecoder
            )


{-| Type of HTTP response from getAccountAuthorizationDetails
-}
type alias GetAccountAuthorizationDetailsResponse =
    { userDetailList : Maybe (List UserDetail)
    , groupDetailList : Maybe (List GroupDetail)
    , roleDetailList : Maybe (List RoleDetail)
    , policies : Maybe (List ManagedPolicyDetail)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


getAccountAuthorizationDetailsResponseDecoder : JD.Decoder GetAccountAuthorizationDetailsResponse
getAccountAuthorizationDetailsResponseDecoder =
    JD.succeed GetAccountAuthorizationDetailsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UserDetailList", "userDetailList" ]
                (JD.list userDetailDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GroupDetailList", "groupDetailList" ]
                (JD.list groupDetailDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RoleDetailList", "roleDetailList" ]
                (JD.list roleDetailDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Policies", "policies" ]
                (JD.list managedPolicyDetailDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from getAccountPasswordPolicy
-}
type alias GetAccountPasswordPolicyResponse =
    { passwordPolicy : PasswordPolicy
    }


getAccountPasswordPolicyResponseDecoder : JD.Decoder GetAccountPasswordPolicyResponse
getAccountPasswordPolicyResponseDecoder =
    JD.succeed GetAccountPasswordPolicyResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PasswordPolicy", "passwordPolicy" ]
                passwordPolicyDecoder
            )


{-| Type of HTTP response from getAccountSummary
-}
type alias GetAccountSummaryResponse =
    { summaryMap : Maybe (Dict String Int)
    }


getAccountSummaryResponseDecoder : JD.Decoder GetAccountSummaryResponse
getAccountSummaryResponseDecoder =
    JD.succeed GetAccountSummaryResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SummaryMap", "summaryMap" ]
                (AWS.Core.Decode.dict JD.int)
            )


{-| Type of HTTP response from getContextKeysForPolicy
-}
type alias GetContextKeysForPolicyResponse =
    { contextKeyNames : Maybe (List String)
    }


getContextKeysForPolicyResponseDecoder : JD.Decoder GetContextKeysForPolicyResponse
getContextKeysForPolicyResponseDecoder =
    JD.succeed GetContextKeysForPolicyResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ContextKeyNames", "contextKeyNames" ]
                (JD.list JD.string)
            )


{-| Type of HTTP response from getCredentialReport
-}
type alias GetCredentialReportResponse =
    { content : Maybe String
    , reportFormat : Maybe ReportFormatType
    , generatedTime : Maybe Posix
    }


getCredentialReportResponseDecoder : JD.Decoder GetCredentialReportResponse
getCredentialReportResponseDecoder =
    JD.succeed GetCredentialReportResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Content", "content" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ReportFormat", "reportFormat" ]
                reportFormatTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GeneratedTime", "generatedTime" ]
                JDX.datetime
            )


{-| Type of HTTP response from getGroupPolicy
-}
type alias GetGroupPolicyResponse =
    { groupName : String
    , policyName : String
    , policyDocument : String
    }


getGroupPolicyResponseDecoder : JD.Decoder GetGroupPolicyResponse
getGroupPolicyResponseDecoder =
    JD.succeed GetGroupPolicyResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "GroupName", "groupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PolicyName", "policyName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PolicyDocument", "policyDocument" ]
                JD.string
            )


{-| Type of HTTP response from getGroup
-}
type alias GetGroupResponse =
    { group : Group
    , users : List User
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


getGroupResponseDecoder : JD.Decoder GetGroupResponse
getGroupResponseDecoder =
    JD.succeed GetGroupResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Group", "group" ]
                groupDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Users", "users" ]
                (JD.list userDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from getInstanceProfile
-}
type alias GetInstanceProfileResponse =
    { instanceProfile : InstanceProfile
    }


getInstanceProfileResponseDecoder : JD.Decoder GetInstanceProfileResponse
getInstanceProfileResponseDecoder =
    JD.succeed GetInstanceProfileResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "InstanceProfile", "instanceProfile" ]
                instanceProfileDecoder
            )


{-| Type of HTTP response from getLoginProfile
-}
type alias GetLoginProfileResponse =
    { loginProfile : LoginProfile
    }


getLoginProfileResponseDecoder : JD.Decoder GetLoginProfileResponse
getLoginProfileResponseDecoder =
    JD.succeed GetLoginProfileResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "LoginProfile", "loginProfile" ]
                loginProfileDecoder
            )


{-| Type of HTTP response from getOpenIDConnectProvider
-}
type alias GetOpenIDConnectProviderResponse =
    { url : Maybe String
    , clientIDList : Maybe (List String)
    , thumbprintList : Maybe (List String)
    , createDate : Maybe Posix
    }


getOpenIDConnectProviderResponseDecoder : JD.Decoder GetOpenIDConnectProviderResponse
getOpenIDConnectProviderResponseDecoder =
    JD.succeed GetOpenIDConnectProviderResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Url", "url" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ClientIDList", "clientIDList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ThumbprintList", "thumbprintList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )


{-| Type of HTTP response from getOrganizationsAccessReport
-}
type alias GetOrganizationsAccessReportResponse =
    { jobStatus : JobStatusType
    , jobCreationDate : Posix
    , jobCompletionDate : Maybe Posix
    , numberOfServicesAccessible : Maybe Int
    , numberOfServicesNotAccessed : Maybe Int
    , accessDetails : Maybe (List AccessDetail)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    , errorDetails : Maybe ErrorDetails
    }


getOrganizationsAccessReportResponseDecoder : JD.Decoder GetOrganizationsAccessReportResponse
getOrganizationsAccessReportResponseDecoder =
    JD.succeed GetOrganizationsAccessReportResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "JobStatus", "jobStatus" ]
                jobStatusTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "JobCreationDate", "jobCreationDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "JobCompletionDate", "jobCompletionDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NumberOfServicesAccessible", "numberOfServicesAccessible" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "NumberOfServicesNotAccessed", "numberOfServicesNotAccessed" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AccessDetails", "accessDetails" ]
                (JD.list accessDetailDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ErrorDetails", "errorDetails" ]
                errorDetailsDecoder
            )


{-| Type of HTTP response from getPolicy
-}
type alias GetPolicyResponse =
    { policy : Maybe Policy
    }


getPolicyResponseDecoder : JD.Decoder GetPolicyResponse
getPolicyResponseDecoder =
    JD.succeed GetPolicyResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Policy", "policy" ]
                policyDecoder
            )


{-| Type of HTTP response from getPolicyVersion
-}
type alias GetPolicyVersionResponse =
    { policyVersion : Maybe PolicyVersion
    }


getPolicyVersionResponseDecoder : JD.Decoder GetPolicyVersionResponse
getPolicyVersionResponseDecoder =
    JD.succeed GetPolicyVersionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyVersion", "policyVersion" ]
                policyVersionDecoder
            )


{-| Type of HTTP response from getRolePolicy
-}
type alias GetRolePolicyResponse =
    { roleName : String
    , policyName : String
    , policyDocument : String
    }


getRolePolicyResponseDecoder : JD.Decoder GetRolePolicyResponse
getRolePolicyResponseDecoder =
    JD.succeed GetRolePolicyResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "RoleName", "roleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PolicyName", "policyName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PolicyDocument", "policyDocument" ]
                JD.string
            )


{-| Type of HTTP response from getRole
-}
type alias GetRoleResponse =
    { role : Role
    }


getRoleResponseDecoder : JD.Decoder GetRoleResponse
getRoleResponseDecoder =
    JD.succeed GetRoleResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Role", "role" ]
                roleDecoder
            )


{-| Type of HTTP response from getSAMLProvider
-}
type alias GetSAMLProviderResponse =
    { sAMLMetadataDocument : Maybe String
    , createDate : Maybe Posix
    , validUntil : Maybe Posix
    }


getSAMLProviderResponseDecoder : JD.Decoder GetSAMLProviderResponse
getSAMLProviderResponseDecoder =
    JD.succeed GetSAMLProviderResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SAMLMetadataDocument", "sAMLMetadataDocument" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ValidUntil", "validUntil" ]
                JDX.datetime
            )


{-| Type of HTTP response from getSSHPublicKey
-}
type alias GetSSHPublicKeyResponse =
    { sSHPublicKey : Maybe SSHPublicKey
    }


getSSHPublicKeyResponseDecoder : JD.Decoder GetSSHPublicKeyResponse
getSSHPublicKeyResponseDecoder =
    JD.succeed GetSSHPublicKeyResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SSHPublicKey", "sSHPublicKey" ]
                sSHPublicKeyDecoder
            )


{-| Type of HTTP response from getServerCertificate
-}
type alias GetServerCertificateResponse =
    { serverCertificate : ServerCertificate
    }


getServerCertificateResponseDecoder : JD.Decoder GetServerCertificateResponse
getServerCertificateResponseDecoder =
    JD.succeed GetServerCertificateResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServerCertificate", "serverCertificate" ]
                serverCertificateDecoder
            )


{-| Type of HTTP response from getServiceLastAccessedDetails
-}
type alias GetServiceLastAccessedDetailsResponse =
    { jobStatus : JobStatusType
    , jobCreationDate : Posix
    , servicesLastAccessed : List ServiceLastAccessed
    , jobCompletionDate : Posix
    , isTruncated : Maybe Bool
    , marker : Maybe String
    , error : Maybe ErrorDetails
    }


getServiceLastAccessedDetailsResponseDecoder : JD.Decoder GetServiceLastAccessedDetailsResponse
getServiceLastAccessedDetailsResponseDecoder =
    JD.succeed GetServiceLastAccessedDetailsResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "JobStatus", "jobStatus" ]
                jobStatusTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "JobCreationDate", "jobCreationDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServicesLastAccessed", "servicesLastAccessed" ]
                (JD.list serviceLastAccessedDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "JobCompletionDate", "jobCompletionDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Error", "error" ]
                errorDetailsDecoder
            )


{-| Type of HTTP response from getServiceLastAccessedDetailsWithEntities
-}
type alias GetServiceLastAccessedDetailsWithEntitiesResponse =
    { jobStatus : JobStatusType
    , jobCreationDate : Posix
    , jobCompletionDate : Posix
    , entityDetailsList : List EntityDetails
    , isTruncated : Maybe Bool
    , marker : Maybe String
    , error : Maybe ErrorDetails
    }


getServiceLastAccessedDetailsWithEntitiesResponseDecoder : JD.Decoder GetServiceLastAccessedDetailsWithEntitiesResponse
getServiceLastAccessedDetailsWithEntitiesResponseDecoder =
    JD.succeed GetServiceLastAccessedDetailsWithEntitiesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "JobStatus", "jobStatus" ]
                jobStatusTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "JobCreationDate", "jobCreationDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "JobCompletionDate", "jobCompletionDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "EntityDetailsList", "entityDetailsList" ]
                (JD.list entityDetailsDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Error", "error" ]
                errorDetailsDecoder
            )


{-| Type of HTTP response from getServiceLinkedRoleDeletionStatus
-}
type alias GetServiceLinkedRoleDeletionStatusResponse =
    { status : DeletionTaskStatusType
    , reason : Maybe DeletionTaskFailureReasonType
    }


getServiceLinkedRoleDeletionStatusResponseDecoder : JD.Decoder GetServiceLinkedRoleDeletionStatusResponse
getServiceLinkedRoleDeletionStatusResponseDecoder =
    JD.succeed GetServiceLinkedRoleDeletionStatusResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Status", "status" ]
                deletionTaskStatusTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Reason", "reason" ]
                deletionTaskFailureReasonTypeDecoder
            )


{-| Type of HTTP response from getUserPolicy
-}
type alias GetUserPolicyResponse =
    { userName : String
    , policyName : String
    , policyDocument : String
    }


getUserPolicyResponseDecoder : JD.Decoder GetUserPolicyResponse
getUserPolicyResponseDecoder =
    JD.succeed GetUserPolicyResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PolicyName", "policyName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PolicyDocument", "policyDocument" ]
                JD.string
            )


{-| Type of HTTP response from getUser
-}
type alias GetUserResponse =
    { user : User
    }


getUserResponseDecoder : JD.Decoder GetUserResponse
getUserResponseDecoder =
    JD.succeed GetUserResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "User", "user" ]
                userDecoder
            )


{-|

<p>Contains information about an IAM group entity.</p> <p>This data type is used as a response element in the following operations:</p> <ul> <li> <p> <a>CreateGroup</a> </p> </li> <li> <p> <a>GetGroup</a> </p> </li> <li> <p> <a>ListGroups</a> </p> </li> </ul>

-}
type alias Group =
    { path : String
    , groupName : String
    , groupId : String
    , arn : String
    , createDate : Posix
    }


groupDecoder : JD.Decoder Group
groupDecoder =
    JD.succeed Group
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Path", "path" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "GroupName", "groupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "GroupId", "groupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Arn", "arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )


{-|

<p>Contains information about an IAM group, including all of the group's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>

-}
type alias GroupDetail =
    { path : Maybe String
    , groupName : Maybe String
    , groupId : Maybe String
    , arn : Maybe String
    , createDate : Maybe Posix
    , groupPolicyList : Maybe (List PolicyDetail)
    , attachedManagedPolicies : Maybe (List AttachedPolicy)
    }


groupDetailDecoder : JD.Decoder GroupDetail
groupDetailDecoder =
    JD.succeed GroupDetail
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Path", "path" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GroupName", "groupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GroupId", "groupId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Arn", "arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GroupPolicyList", "groupPolicyList" ]
                (JD.list policyDetailDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttachedManagedPolicies", "attachedManagedPolicies" ]
                (JD.list attachedPolicyDecoder)
            )


{-|

<p>Contains information about an instance profile.</p> <p>This data type is used as a response element in the following operations:</p> <ul> <li> <p> <a>CreateInstanceProfile</a> </p> </li> <li> <p> <a>GetInstanceProfile</a> </p> </li> <li> <p> <a>ListInstanceProfiles</a> </p> </li> <li> <p> <a>ListInstanceProfilesForRole</a> </p> </li> </ul>

-}
type alias InstanceProfile =
    { path : String
    , instanceProfileName : String
    , instanceProfileId : String
    , arn : String
    , createDate : Posix
    , roles : List Role
    }


instanceProfileDecoder : JD.Decoder InstanceProfile
instanceProfileDecoder =
    JD.succeed InstanceProfile
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Path", "path" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "InstanceProfileName", "instanceProfileName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "InstanceProfileId", "instanceProfileId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Arn", "arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Roles", "roles" ]
                (JD.list roleDecoder)
            )


{-| Type of HTTP response from listAccessKeys
-}
type alias ListAccessKeysResponse =
    { accessKeyMetadata : List AccessKeyMetadata
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listAccessKeysResponseDecoder : JD.Decoder ListAccessKeysResponse
listAccessKeysResponseDecoder =
    JD.succeed ListAccessKeysResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AccessKeyMetadata", "accessKeyMetadata" ]
                (JD.list accessKeyMetadataDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listAccountAliases
-}
type alias ListAccountAliasesResponse =
    { accountAliases : List String
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listAccountAliasesResponseDecoder : JD.Decoder ListAccountAliasesResponse
listAccountAliasesResponseDecoder =
    JD.succeed ListAccountAliasesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "AccountAliases", "accountAliases" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listAttachedGroupPolicies
-}
type alias ListAttachedGroupPoliciesResponse =
    { attachedPolicies : Maybe (List AttachedPolicy)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listAttachedGroupPoliciesResponseDecoder : JD.Decoder ListAttachedGroupPoliciesResponse
listAttachedGroupPoliciesResponseDecoder =
    JD.succeed ListAttachedGroupPoliciesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttachedPolicies", "attachedPolicies" ]
                (JD.list attachedPolicyDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listAttachedRolePolicies
-}
type alias ListAttachedRolePoliciesResponse =
    { attachedPolicies : Maybe (List AttachedPolicy)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listAttachedRolePoliciesResponseDecoder : JD.Decoder ListAttachedRolePoliciesResponse
listAttachedRolePoliciesResponseDecoder =
    JD.succeed ListAttachedRolePoliciesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttachedPolicies", "attachedPolicies" ]
                (JD.list attachedPolicyDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listAttachedUserPolicies
-}
type alias ListAttachedUserPoliciesResponse =
    { attachedPolicies : Maybe (List AttachedPolicy)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listAttachedUserPoliciesResponseDecoder : JD.Decoder ListAttachedUserPoliciesResponse
listAttachedUserPoliciesResponseDecoder =
    JD.succeed ListAttachedUserPoliciesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttachedPolicies", "attachedPolicies" ]
                (JD.list attachedPolicyDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listEntitiesForPolicy
-}
type alias ListEntitiesForPolicyResponse =
    { policyGroups : Maybe (List PolicyGroup)
    , policyUsers : Maybe (List PolicyUser)
    , policyRoles : Maybe (List PolicyRole)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listEntitiesForPolicyResponseDecoder : JD.Decoder ListEntitiesForPolicyResponse
listEntitiesForPolicyResponseDecoder =
    JD.succeed ListEntitiesForPolicyResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyGroups", "policyGroups" ]
                (JD.list policyGroupDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyUsers", "policyUsers" ]
                (JD.list policyUserDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyRoles", "policyRoles" ]
                (JD.list policyRoleDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listGroupPolicies
-}
type alias ListGroupPoliciesResponse =
    { policyNames : List String
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listGroupPoliciesResponseDecoder : JD.Decoder ListGroupPoliciesResponse
listGroupPoliciesResponseDecoder =
    JD.succeed ListGroupPoliciesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PolicyNames", "policyNames" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listGroupsForUser
-}
type alias ListGroupsForUserResponse =
    { groups : List Group
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listGroupsForUserResponseDecoder : JD.Decoder ListGroupsForUserResponse
listGroupsForUserResponseDecoder =
    JD.succeed ListGroupsForUserResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Groups", "groups" ]
                (JD.list groupDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listGroups
-}
type alias ListGroupsResponse =
    { groups : List Group
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listGroupsResponseDecoder : JD.Decoder ListGroupsResponse
listGroupsResponseDecoder =
    JD.succeed ListGroupsResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Groups", "groups" ]
                (JD.list groupDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listInstanceProfilesForRole
-}
type alias ListInstanceProfilesForRoleResponse =
    { instanceProfiles : List InstanceProfile
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listInstanceProfilesForRoleResponseDecoder : JD.Decoder ListInstanceProfilesForRoleResponse
listInstanceProfilesForRoleResponseDecoder =
    JD.succeed ListInstanceProfilesForRoleResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "InstanceProfiles", "instanceProfiles" ]
                (JD.list instanceProfileDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listInstanceProfiles
-}
type alias ListInstanceProfilesResponse =
    { instanceProfiles : List InstanceProfile
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listInstanceProfilesResponseDecoder : JD.Decoder ListInstanceProfilesResponse
listInstanceProfilesResponseDecoder =
    JD.succeed ListInstanceProfilesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "InstanceProfiles", "instanceProfiles" ]
                (JD.list instanceProfileDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listMFADevices
-}
type alias ListMFADevicesResponse =
    { mFADevices : List MFADevice
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listMFADevicesResponseDecoder : JD.Decoder ListMFADevicesResponse
listMFADevicesResponseDecoder =
    JD.succeed ListMFADevicesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "MFADevices", "mFADevices" ]
                (JD.list mFADeviceDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listOpenIDConnectProviders
-}
type alias ListOpenIDConnectProvidersResponse =
    { openIDConnectProviderList : Maybe (List OpenIDConnectProviderListEntry)
    }


listOpenIDConnectProvidersResponseDecoder : JD.Decoder ListOpenIDConnectProvidersResponse
listOpenIDConnectProvidersResponseDecoder =
    JD.succeed ListOpenIDConnectProvidersResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "OpenIDConnectProviderList", "openIDConnectProviderList" ]
                (JD.list openIDConnectProviderListEntryDecoder)
            )


{-|

<p>Contains details about the permissions policies that are attached to the specified identity (user, group, or role).</p> <p>This data type is used as a response element in the <a>ListPoliciesGrantingServiceAccess</a> operation.</p>

-}
type alias ListPoliciesGrantingServiceAccessEntry =
    { serviceNamespace : Maybe String
    , policies : Maybe (List PolicyGrantingServiceAccess)
    }


listPoliciesGrantingServiceAccessEntryDecoder : JD.Decoder ListPoliciesGrantingServiceAccessEntry
listPoliciesGrantingServiceAccessEntryDecoder =
    JD.succeed ListPoliciesGrantingServiceAccessEntry
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceNamespace", "serviceNamespace" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Policies", "policies" ]
                (JD.list policyGrantingServiceAccessDecoder)
            )


{-| Type of HTTP response from listPoliciesGrantingServiceAccess
-}
type alias ListPoliciesGrantingServiceAccessResponse =
    { policiesGrantingServiceAccess : List ListPoliciesGrantingServiceAccessEntry
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listPoliciesGrantingServiceAccessResponseDecoder : JD.Decoder ListPoliciesGrantingServiceAccessResponse
listPoliciesGrantingServiceAccessResponseDecoder =
    JD.succeed ListPoliciesGrantingServiceAccessResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PoliciesGrantingServiceAccess", "policiesGrantingServiceAccess" ]
                (JD.list listPoliciesGrantingServiceAccessEntryDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listPolicies
-}
type alias ListPoliciesResponse =
    { policies : Maybe (List Policy)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listPoliciesResponseDecoder : JD.Decoder ListPoliciesResponse
listPoliciesResponseDecoder =
    JD.succeed ListPoliciesResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Policies", "policies" ]
                (JD.list policyDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listPolicyVersions
-}
type alias ListPolicyVersionsResponse =
    { versions : Maybe (List PolicyVersion)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listPolicyVersionsResponseDecoder : JD.Decoder ListPolicyVersionsResponse
listPolicyVersionsResponseDecoder =
    JD.succeed ListPolicyVersionsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Versions", "versions" ]
                (JD.list policyVersionDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listRolePolicies
-}
type alias ListRolePoliciesResponse =
    { policyNames : List String
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listRolePoliciesResponseDecoder : JD.Decoder ListRolePoliciesResponse
listRolePoliciesResponseDecoder =
    JD.succeed ListRolePoliciesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PolicyNames", "policyNames" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listRoleTags
-}
type alias ListRoleTagsResponse =
    { tags : List Tag
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listRoleTagsResponseDecoder : JD.Decoder ListRoleTagsResponse
listRoleTagsResponseDecoder =
    JD.succeed ListRoleTagsResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listRoles
-}
type alias ListRolesResponse =
    { roles : List Role
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listRolesResponseDecoder : JD.Decoder ListRolesResponse
listRolesResponseDecoder =
    JD.succeed ListRolesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Roles", "roles" ]
                (JD.list roleDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listSAMLProviders
-}
type alias ListSAMLProvidersResponse =
    { sAMLProviderList : Maybe (List SAMLProviderListEntry)
    }


listSAMLProvidersResponseDecoder : JD.Decoder ListSAMLProvidersResponse
listSAMLProvidersResponseDecoder =
    JD.succeed ListSAMLProvidersResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SAMLProviderList", "sAMLProviderList" ]
                (JD.list sAMLProviderListEntryDecoder)
            )


{-| Type of HTTP response from listSSHPublicKeys
-}
type alias ListSSHPublicKeysResponse =
    { sSHPublicKeys : Maybe (List SSHPublicKeyMetadata)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listSSHPublicKeysResponseDecoder : JD.Decoder ListSSHPublicKeysResponse
listSSHPublicKeysResponseDecoder =
    JD.succeed ListSSHPublicKeysResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SSHPublicKeys", "sSHPublicKeys" ]
                (JD.list sSHPublicKeyMetadataDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listServerCertificates
-}
type alias ListServerCertificatesResponse =
    { serverCertificateMetadataList : List ServerCertificateMetadata
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listServerCertificatesResponseDecoder : JD.Decoder ListServerCertificatesResponse
listServerCertificatesResponseDecoder =
    JD.succeed ListServerCertificatesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServerCertificateMetadataList", "serverCertificateMetadataList" ]
                (JD.list serverCertificateMetadataDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listServiceSpecificCredentials
-}
type alias ListServiceSpecificCredentialsResponse =
    { serviceSpecificCredentials : Maybe (List ServiceSpecificCredentialMetadata)
    }


listServiceSpecificCredentialsResponseDecoder : JD.Decoder ListServiceSpecificCredentialsResponse
listServiceSpecificCredentialsResponseDecoder =
    JD.succeed ListServiceSpecificCredentialsResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceSpecificCredentials", "serviceSpecificCredentials" ]
                (JD.list serviceSpecificCredentialMetadataDecoder)
            )


{-| Type of HTTP response from listSigningCertificates
-}
type alias ListSigningCertificatesResponse =
    { certificates : List SigningCertificate
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listSigningCertificatesResponseDecoder : JD.Decoder ListSigningCertificatesResponse
listSigningCertificatesResponseDecoder =
    JD.succeed ListSigningCertificatesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Certificates", "certificates" ]
                (JD.list signingCertificateDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listUserPolicies
-}
type alias ListUserPoliciesResponse =
    { policyNames : List String
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listUserPoliciesResponseDecoder : JD.Decoder ListUserPoliciesResponse
listUserPoliciesResponseDecoder =
    JD.succeed ListUserPoliciesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PolicyNames", "policyNames" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listUserTags
-}
type alias ListUserTagsResponse =
    { tags : List Tag
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listUserTagsResponseDecoder : JD.Decoder ListUserTagsResponse
listUserTagsResponseDecoder =
    JD.succeed ListUserTagsResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listUsers
-}
type alias ListUsersResponse =
    { users : List User
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listUsersResponseDecoder : JD.Decoder ListUsersResponse
listUsersResponseDecoder =
    JD.succeed ListUsersResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Users", "users" ]
                (JD.list userDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-| Type of HTTP response from listVirtualMFADevices
-}
type alias ListVirtualMFADevicesResponse =
    { virtualMFADevices : List VirtualMFADevice
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


listVirtualMFADevicesResponseDecoder : JD.Decoder ListVirtualMFADevicesResponse
listVirtualMFADevicesResponseDecoder =
    JD.succeed ListVirtualMFADevicesResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "VirtualMFADevices", "virtualMFADevices" ]
                (JD.list virtualMFADeviceDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-|

<p>Contains the user name and password create date for a user.</p> <p> This data type is used as a response element in the <a>CreateLoginProfile</a> and <a>GetLoginProfile</a> operations. </p>

-}
type alias LoginProfile =
    { userName : String
    , createDate : Posix
    , passwordResetRequired : Maybe Bool
    }


loginProfileDecoder : JD.Decoder LoginProfile
loginProfileDecoder =
    JD.succeed LoginProfile
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PasswordResetRequired", "passwordResetRequired" ]
                JD.bool
            )


{-|

<p>Contains information about an MFA device.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> operation.</p>

-}
type alias MFADevice =
    { userName : String
    , serialNumber : String
    , enableDate : Posix
    }


mFADeviceDecoder : JD.Decoder MFADevice
mFADeviceDecoder =
    JD.succeed MFADevice
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SerialNumber", "serialNumber" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "EnableDate", "enableDate" ]
                JDX.datetime
            )


{-|

<p>Contains information about a managed policy, including the policy's ARN, versions, and the number of principal entities (users, groups, and roles) that the policy is attached to.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p> <p>For more information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

-}
type alias ManagedPolicyDetail =
    { policyName : Maybe String
    , policyId : Maybe String
    , arn : Maybe String
    , path : Maybe String
    , defaultVersionId : Maybe String
    , attachmentCount : Maybe Int
    , permissionsBoundaryUsageCount : Maybe Int
    , isAttachable : Maybe Bool
    , description : Maybe String
    , createDate : Maybe Posix
    , updateDate : Maybe Posix
    , policyVersionList : Maybe (List PolicyVersion)
    }


managedPolicyDetailDecoder : JD.Decoder ManagedPolicyDetail
managedPolicyDetailDecoder =
    JD.succeed ManagedPolicyDetail
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyName", "policyName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyId", "policyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Arn", "arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Path", "path" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DefaultVersionId", "defaultVersionId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttachmentCount", "attachmentCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PermissionsBoundaryUsageCount", "permissionsBoundaryUsageCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsAttachable", "isAttachable" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UpdateDate", "updateDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyVersionList", "policyVersionList" ]
                (JD.list policyVersionDecoder)
            )


{-|

<p>Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.</p>

-}
type alias OpenIDConnectProviderListEntry =
    { arn : Maybe String
    }


openIDConnectProviderListEntryDecoder : JD.Decoder OpenIDConnectProviderListEntry
openIDConnectProviderListEntryDecoder =
    JD.succeed OpenIDConnectProviderListEntry
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Arn", "arn" ]
                JD.string
            )


{-|

<p>Contains information about the effect that Organizations has on a policy simulation.</p>

-}
type alias OrganizationsDecisionDetail =
    { allowedByOrganizations : Maybe Bool
    }


organizationsDecisionDetailDecoder : JD.Decoder OrganizationsDecisionDetail
organizationsDecisionDetailDecoder =
    JD.succeed OrganizationsDecisionDetail
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AllowedByOrganizations", "allowedByOrganizations" ]
                JD.bool
            )


{-|

<p>Contains information about the account password policy.</p> <p> This data type is used as a response element in the <a>GetAccountPasswordPolicy</a> operation. </p>

-}
type alias PasswordPolicy =
    { minimumPasswordLength : Maybe Int
    , requireSymbols : Maybe Bool
    , requireNumbers : Maybe Bool
    , requireUppercaseCharacters : Maybe Bool
    , requireLowercaseCharacters : Maybe Bool
    , allowUsersToChangePassword : Maybe Bool
    , expirePasswords : Maybe Bool
    , maxPasswordAge : Maybe Int
    , passwordReusePrevention : Maybe Int
    , hardExpiry : Maybe Bool
    }


passwordPolicyDecoder : JD.Decoder PasswordPolicy
passwordPolicyDecoder =
    JD.succeed PasswordPolicy
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MinimumPasswordLength", "minimumPasswordLength" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RequireSymbols", "requireSymbols" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RequireNumbers", "requireNumbers" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RequireUppercaseCharacters", "requireUppercaseCharacters" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RequireLowercaseCharacters", "requireLowercaseCharacters" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AllowUsersToChangePassword", "allowUsersToChangePassword" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ExpirePasswords", "expirePasswords" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaxPasswordAge", "maxPasswordAge" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PasswordReusePrevention", "passwordReusePrevention" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "HardExpiry", "hardExpiry" ]
                JD.bool
            )


{-| One of

  - `PermissionsBoundaryAttachmentType_PermissionsBoundaryPolicy`

-}
type PermissionsBoundaryAttachmentType
    = PermissionsBoundaryAttachmentType_PermissionsBoundaryPolicy


permissionsBoundaryAttachmentTypeDecoder : JD.Decoder PermissionsBoundaryAttachmentType
permissionsBoundaryAttachmentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PermissionsBoundaryPolicy" ->
                        JD.succeed PermissionsBoundaryAttachmentType_PermissionsBoundaryPolicy

                    _ ->
                        JD.fail "bad thing"
            )


{-|

<p>Contains information about a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicy</a>, <a>GetPolicy</a>, and <a>ListPolicies</a> operations. </p> <p>For more information about managed policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

-}
type alias Policy =
    { policyName : Maybe String
    , policyId : Maybe String
    , arn : Maybe String
    , path : Maybe String
    , defaultVersionId : Maybe String
    , attachmentCount : Maybe Int
    , permissionsBoundaryUsageCount : Maybe Int
    , isAttachable : Maybe Bool
    , description : Maybe String
    , createDate : Maybe Posix
    , updateDate : Maybe Posix
    }


policyDecoder : JD.Decoder Policy
policyDecoder =
    JD.succeed Policy
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyName", "policyName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyId", "policyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Arn", "arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Path", "path" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "DefaultVersionId", "defaultVersionId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttachmentCount", "attachmentCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PermissionsBoundaryUsageCount", "permissionsBoundaryUsageCount" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsAttachable", "isAttachable" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UpdateDate", "updateDate" ]
                JDX.datetime
            )


{-|

<p>Contains information about an IAM policy, including the policy document.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>

-}
type alias PolicyDetail =
    { policyName : Maybe String
    , policyDocument : Maybe String
    }


policyDetailDecoder : JD.Decoder PolicyDetail
policyDetailDecoder =
    JD.succeed PolicyDetail
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyName", "policyName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyDocument", "policyDocument" ]
                JD.string
            )


{-| One of

  - `PolicyEvaluationDecisionType_allowed`
  - `PolicyEvaluationDecisionType_explicitDeny`
  - `PolicyEvaluationDecisionType_implicitDeny`

-}
type PolicyEvaluationDecisionType
    = PolicyEvaluationDecisionType_allowed
    | PolicyEvaluationDecisionType_explicitDeny
    | PolicyEvaluationDecisionType_implicitDeny


policyEvaluationDecisionTypeDecoder : JD.Decoder PolicyEvaluationDecisionType
policyEvaluationDecisionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "allowed" ->
                        JD.succeed PolicyEvaluationDecisionType_allowed

                    "explicitDeny" ->
                        JD.succeed PolicyEvaluationDecisionType_explicitDeny

                    "implicitDeny" ->
                        JD.succeed PolicyEvaluationDecisionType_implicitDeny

                    _ ->
                        JD.fail "bad thing"
            )


{-|

<p>Contains details about the permissions policies that are attached to the specified identity (user, group, or role).</p> <p>This data type is an element of the <a>ListPoliciesGrantingServiceAccessEntry</a> object.</p>

-}
type alias PolicyGrantingServiceAccess =
    { policyName : String
    , policyType : PolicyType
    , policyArn : Maybe String
    , entityType : Maybe PolicyOwnerEntityType
    , entityName : Maybe String
    }


policyGrantingServiceAccessDecoder : JD.Decoder PolicyGrantingServiceAccess
policyGrantingServiceAccessDecoder =
    JD.succeed PolicyGrantingServiceAccess
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PolicyName", "policyName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "PolicyType", "policyType" ]
                policyTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PolicyArn", "policyArn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EntityType", "entityType" ]
                policyOwnerEntityTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EntityName", "entityName" ]
                JD.string
            )


{-|

<p>Contains information about a group that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> operation. </p> <p>For more information about managed policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

-}
type alias PolicyGroup =
    { groupName : Maybe String
    , groupId : Maybe String
    }


policyGroupDecoder : JD.Decoder PolicyGroup
policyGroupDecoder =
    JD.succeed PolicyGroup
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GroupName", "groupName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GroupId", "groupId" ]
                JD.string
            )


{-|

<p>Contains information about a role that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> operation. </p> <p>For more information about managed policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

-}
type alias PolicyRole =
    { roleName : Maybe String
    , roleId : Maybe String
    }


policyRoleDecoder : JD.Decoder PolicyRole
policyRoleDecoder =
    JD.succeed PolicyRole
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RoleName", "roleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RoleId", "roleId" ]
                JD.string
            )


{-| One of

  - `PolicySourceType_user`
  - `PolicySourceType_group`
  - `PolicySourceType_role`
  - `PolicySourceType_aws-managed`
  - `PolicySourceType_user-managed`
  - `PolicySourceType_resource`
  - `PolicySourceType_none`

-}
type PolicySourceType
    = PolicySourceType_user
    | PolicySourceType_group
    | PolicySourceType_role
    | PolicySourceType_aws_managed
    | PolicySourceType_user_managed
    | PolicySourceType_resource
    | PolicySourceType_none


policySourceTypeDecoder : JD.Decoder PolicySourceType
policySourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "user" ->
                        JD.succeed PolicySourceType_user

                    "group" ->
                        JD.succeed PolicySourceType_group

                    "role" ->
                        JD.succeed PolicySourceType_role

                    "aws_managed" ->
                        JD.succeed PolicySourceType_aws_managed

                    "user_managed" ->
                        JD.succeed PolicySourceType_user_managed

                    "resource" ->
                        JD.succeed PolicySourceType_resource

                    "none" ->
                        JD.succeed PolicySourceType_none

                    _ ->
                        JD.fail "bad thing"
            )


{-| One of

  - `PolicyUsageType_PermissionsPolicy`
  - `PolicyUsageType_PermissionsBoundary`

-}
type PolicyUsageType
    = PolicyUsageType_PermissionsPolicy
    | PolicyUsageType_PermissionsBoundary


policyUsageTypeDecoder : JD.Decoder PolicyUsageType
policyUsageTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PermissionsPolicy" ->
                        JD.succeed PolicyUsageType_PermissionsPolicy

                    "PermissionsBoundary" ->
                        JD.succeed PolicyUsageType_PermissionsBoundary

                    _ ->
                        JD.fail "bad thing"
            )


{-|

<p>Contains information about a user that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> operation. </p> <p>For more information about managed policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

-}
type alias PolicyUser =
    { userName : Maybe String
    , userId : Maybe String
    }


policyUserDecoder : JD.Decoder PolicyUser
policyUserDecoder =
    JD.succeed PolicyUser
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UserId", "userId" ]
                JD.string
            )


{-|

<p>Contains information about a version of a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicyVersion</a>, <a>GetPolicyVersion</a>, <a>ListPolicyVersions</a>, and <a>GetAccountAuthorizationDetails</a> operations. </p> <p>For more information about managed policies, refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>

-}
type alias PolicyVersion =
    { document : Maybe String
    , versionId : Maybe String
    , isDefaultVersion : Maybe Bool
    , createDate : Maybe Posix
    }


policyVersionDecoder : JD.Decoder PolicyVersion
policyVersionDecoder =
    JD.succeed PolicyVersion
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Document", "document" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "VersionId", "versionId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsDefaultVersion", "isDefaultVersion" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )


{-|

<p>Contains the row and column of a location of a <code>Statement</code> element in a policy document.</p> <p>This data type is used as a member of the <code> <a>Statement</a> </code> type.</p>

-}
type alias Position =
    { line : Maybe Int
    , column : Maybe Int
    }


positionDecoder : JD.Decoder Position
positionDecoder =
    JD.succeed Position
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Line", "line" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Column", "column" ]
                JD.int
            )


{-| One of

  - `ReportFormatType_text/csv`

-}
type ReportFormatType
    = ReportFormatType_text_csv


reportFormatTypeDecoder : JD.Decoder ReportFormatType
reportFormatTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "text_csv" ->
                        JD.succeed ReportFormatType_text_csv

                    _ ->
                        JD.fail "bad thing"
            )


{-| One of

  - `ReportStateType_STARTED`
  - `ReportStateType_INPROGRESS`
  - `ReportStateType_COMPLETE`

-}
type ReportStateType
    = ReportStateType_STARTED
    | ReportStateType_INPROGRESS
    | ReportStateType_COMPLETE


reportStateTypeDecoder : JD.Decoder ReportStateType
reportStateTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STARTED" ->
                        JD.succeed ReportStateType_STARTED

                    "INPROGRESS" ->
                        JD.succeed ReportStateType_INPROGRESS

                    "COMPLETE" ->
                        JD.succeed ReportStateType_COMPLETE

                    _ ->
                        JD.fail "bad thing"
            )


{-| Type of HTTP response from resetServiceSpecificCredential
-}
type alias ResetServiceSpecificCredentialResponse =
    { serviceSpecificCredential : Maybe ServiceSpecificCredential
    }


resetServiceSpecificCredentialResponseDecoder : JD.Decoder ResetServiceSpecificCredentialResponse
resetServiceSpecificCredentialResponseDecoder =
    JD.succeed ResetServiceSpecificCredentialResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServiceSpecificCredential", "serviceSpecificCredential" ]
                serviceSpecificCredentialDecoder
            )


{-|

<p>Contains the result of the simulation of a single API operation call on a single resource.</p> <p>This data type is used by a member of the <a>EvaluationResult</a> data type.</p>

-}
type alias ResourceSpecificResult =
    { evalResourceName : String
    , evalResourceDecision : PolicyEvaluationDecisionType
    , matchedStatements : Maybe (List Statement)
    , missingContextValues : Maybe (List String)
    , evalDecisionDetails : Maybe (Dict String PolicyEvaluationDecisionType)
    }


resourceSpecificResultDecoder : JD.Decoder ResourceSpecificResult
resourceSpecificResultDecoder =
    JD.succeed ResourceSpecificResult
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "EvalResourceName", "evalResourceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "EvalResourceDecision", "evalResourceDecision" ]
                policyEvaluationDecisionTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MatchedStatements", "matchedStatements" ]
                (JD.list statementDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MissingContextValues", "missingContextValues" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EvalDecisionDetails", "evalDecisionDetails" ]
                (AWS.Core.Decode.dict policyEvaluationDecisionTypeDecoder)
            )


{-|

<p>Contains information about an IAM role. This structure is returned as a response element in several API operations that interact with roles.</p>

-}
type alias Role =
    { path : String
    , roleName : String
    , roleId : String
    , arn : String
    , createDate : Posix
    , assumeRolePolicyDocument : Maybe String
    , description : Maybe String
    , maxSessionDuration : Maybe Int
    , permissionsBoundary : Maybe AttachedPermissionsBoundary
    , tags : Maybe (List Tag)
    }


roleDecoder : JD.Decoder Role
roleDecoder =
    JD.succeed Role
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Path", "path" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "RoleName", "roleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "RoleId", "roleId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Arn", "arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AssumeRolePolicyDocument", "assumeRolePolicyDocument" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Description", "description" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "MaxSessionDuration", "maxSessionDuration" ]
                JD.int
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PermissionsBoundary", "permissionsBoundary" ]
                attachedPermissionsBoundaryDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-|

<p>Contains information about an IAM role, including all of the role's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>

-}
type alias RoleDetail =
    { path : Maybe String
    , roleName : Maybe String
    , roleId : Maybe String
    , arn : Maybe String
    , createDate : Maybe Posix
    , assumeRolePolicyDocument : Maybe String
    , instanceProfileList : Maybe (List InstanceProfile)
    , rolePolicyList : Maybe (List PolicyDetail)
    , attachedManagedPolicies : Maybe (List AttachedPolicy)
    , permissionsBoundary : Maybe AttachedPermissionsBoundary
    , tags : Maybe (List Tag)
    }


roleDetailDecoder : JD.Decoder RoleDetail
roleDetailDecoder =
    JD.succeed RoleDetail
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Path", "path" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RoleName", "roleName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RoleId", "roleId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Arn", "arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AssumeRolePolicyDocument", "assumeRolePolicyDocument" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "InstanceProfileList", "instanceProfileList" ]
                (JD.list instanceProfileDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "RolePolicyList", "rolePolicyList" ]
                (JD.list policyDetailDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttachedManagedPolicies", "attachedManagedPolicies" ]
                (JD.list attachedPolicyDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PermissionsBoundary", "permissionsBoundary" ]
                attachedPermissionsBoundaryDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-|

<p>An object that contains details about how a service-linked role is used, if that information is returned by the service.</p> <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>

-}
type alias RoleUsageType =
    { region : Maybe String
    , resources : Maybe (List String)
    }


roleUsageTypeDecoder : JD.Decoder RoleUsageType
roleUsageTypeDecoder =
    JD.succeed RoleUsageType
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Region", "region" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Resources", "resources" ]
                (JD.list JD.string)
            )


{-|

<p>Contains the list of SAML providers for this account.</p>

-}
type alias SAMLProviderListEntry =
    { arn : Maybe String
    , validUntil : Maybe Posix
    , createDate : Maybe Posix
    }


sAMLProviderListEntryDecoder : JD.Decoder SAMLProviderListEntry
sAMLProviderListEntryDecoder =
    JD.succeed SAMLProviderListEntry
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Arn", "arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ValidUntil", "validUntil" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )


{-|

<p>Contains information about an SSH public key.</p> <p>This data type is used as a response element in the <a>GetSSHPublicKey</a> and <a>UploadSSHPublicKey</a> operations. </p>

-}
type alias SSHPublicKey =
    { userName : String
    , sSHPublicKeyId : String
    , fingerprint : String
    , sSHPublicKeyBody : String
    , status : StatusType
    , uploadDate : Maybe Posix
    }


sSHPublicKeyDecoder : JD.Decoder SSHPublicKey
sSHPublicKeyDecoder =
    JD.succeed SSHPublicKey
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SSHPublicKeyId", "sSHPublicKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Fingerprint", "fingerprint" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SSHPublicKeyBody", "sSHPublicKeyBody" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Status", "status" ]
                statusTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UploadDate", "uploadDate" ]
                JDX.datetime
            )


{-|

<p>Contains information about an SSH public key, without the key's body or fingerprint.</p> <p>This data type is used as a response element in the <a>ListSSHPublicKeys</a> operation.</p>

-}
type alias SSHPublicKeyMetadata =
    { userName : String
    , sSHPublicKeyId : String
    , status : StatusType
    , uploadDate : Posix
    }


sSHPublicKeyMetadataDecoder : JD.Decoder SSHPublicKeyMetadata
sSHPublicKeyMetadataDecoder =
    JD.succeed SSHPublicKeyMetadata
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SSHPublicKeyId", "sSHPublicKeyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Status", "status" ]
                statusTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "UploadDate", "uploadDate" ]
                JDX.datetime
            )


{-|

<p>Contains information about a server certificate.</p> <p> This data type is used as a response element in the <a>GetServerCertificate</a> operation. </p>

-}
type alias ServerCertificate =
    { serverCertificateMetadata : ServerCertificateMetadata
    , certificateBody : String
    , certificateChain : Maybe String
    }


serverCertificateDecoder : JD.Decoder ServerCertificate
serverCertificateDecoder =
    JD.succeed ServerCertificate
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServerCertificateMetadata", "serverCertificateMetadata" ]
                serverCertificateMetadataDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CertificateBody", "certificateBody" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CertificateChain", "certificateChain" ]
                JD.string
            )


{-|

<p>Contains information about a server certificate without its certificate body, certificate chain, and private key.</p> <p> This data type is used as a response element in the <a>UploadServerCertificate</a> and <a>ListServerCertificates</a> operations. </p>

-}
type alias ServerCertificateMetadata =
    { path : String
    , serverCertificateName : String
    , serverCertificateId : String
    , arn : String
    , uploadDate : Maybe Posix
    , expiration : Maybe Posix
    }


serverCertificateMetadataDecoder : JD.Decoder ServerCertificateMetadata
serverCertificateMetadataDecoder =
    JD.succeed ServerCertificateMetadata
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Path", "path" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServerCertificateName", "serverCertificateName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServerCertificateId", "serverCertificateId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Arn", "arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UploadDate", "uploadDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Expiration", "expiration" ]
                JDX.datetime
            )


{-|

<p>Contains details about the most recent attempt to access the service.</p> <p>This data type is used as a response element in the <a>GetServiceLastAccessedDetails</a> operation.</p>

-}
type alias ServiceLastAccessed =
    { serviceName : String
    , lastAuthenticated : Maybe Posix
    , serviceNamespace : String
    , lastAuthenticatedEntity : Maybe String
    , totalAuthenticatedEntities : Maybe Int
    }


serviceLastAccessedDecoder : JD.Decoder ServiceLastAccessed
serviceLastAccessedDecoder =
    JD.succeed ServiceLastAccessed
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceName", "serviceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastAuthenticated", "lastAuthenticated" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceNamespace", "serviceNamespace" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "LastAuthenticatedEntity", "lastAuthenticatedEntity" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "TotalAuthenticatedEntities", "totalAuthenticatedEntities" ]
                JD.int
            )


{-|

<p>Contains the details of a service-specific credential.</p>

-}
type alias ServiceSpecificCredential =
    { createDate : Posix
    , serviceName : String
    , serviceUserName : String
    , servicePassword : String
    , serviceSpecificCredentialId : String
    , userName : String
    , status : StatusType
    }


serviceSpecificCredentialDecoder : JD.Decoder ServiceSpecificCredential
serviceSpecificCredentialDecoder =
    JD.succeed ServiceSpecificCredential
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceName", "serviceName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceUserName", "serviceUserName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServicePassword", "servicePassword" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceSpecificCredentialId", "serviceSpecificCredentialId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Status", "status" ]
                statusTypeDecoder
            )


{-|

<p>Contains additional details about a service-specific credential.</p>

-}
type alias ServiceSpecificCredentialMetadata =
    { userName : String
    , status : StatusType
    , serviceUserName : String
    , createDate : Posix
    , serviceSpecificCredentialId : String
    , serviceName : String
    }


serviceSpecificCredentialMetadataDecoder : JD.Decoder ServiceSpecificCredentialMetadata
serviceSpecificCredentialMetadataDecoder =
    JD.succeed ServiceSpecificCredentialMetadata
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Status", "status" ]
                statusTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceUserName", "serviceUserName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceSpecificCredentialId", "serviceSpecificCredentialId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "ServiceName", "serviceName" ]
                JD.string
            )


{-|

<p>Contains information about an X.509 signing certificate.</p> <p>This data type is used as a response element in the <a>UploadSigningCertificate</a> and <a>ListSigningCertificates</a> operations. </p>

-}
type alias SigningCertificate =
    { userName : String
    , certificateId : String
    , certificateBody : String
    , status : StatusType
    , uploadDate : Maybe Posix
    }


signingCertificateDecoder : JD.Decoder SigningCertificate
signingCertificateDecoder =
    JD.succeed SigningCertificate
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CertificateId", "certificateId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CertificateBody", "certificateBody" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Status", "status" ]
                statusTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UploadDate", "uploadDate" ]
                JDX.datetime
            )


{-| Type of HTTP response from simulatePolicy
-}
type alias SimulatePolicyResponse =
    { evaluationResults : Maybe (List EvaluationResult)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }


simulatePolicyResponseDecoder : JD.Decoder SimulatePolicyResponse
simulatePolicyResponseDecoder =
    JD.succeed SimulatePolicyResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EvaluationResults", "evaluationResults" ]
                (JD.list evaluationResultDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "IsTruncated", "isTruncated" ]
                JD.bool
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Marker", "marker" ]
                JD.string
            )


{-|

<p>Contains a reference to a <code>Statement</code> element in a policy document that determines the result of the simulation.</p> <p>This data type is used by the <code>MatchedStatements</code> member of the <code> <a>EvaluationResult</a> </code> type.</p>

-}
type alias Statement =
    { sourcePolicyId : Maybe String
    , sourcePolicyType : Maybe PolicySourceType
    , startPosition : Maybe Position
    , endPosition : Maybe Position
    }


statementDecoder : JD.Decoder Statement
statementDecoder =
    JD.succeed Statement
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourcePolicyId", "sourcePolicyId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SourcePolicyType", "sourcePolicyType" ]
                policySourceTypeDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "StartPosition", "startPosition" ]
                positionDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EndPosition", "endPosition" ]
                positionDecoder
            )


{-|

<p>A structure that represents user-provided metadata that can be associated with a resource such as an IAM user or role. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>

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


{-| Type of HTTP response from updateRoleDescription
-}
type alias UpdateRoleDescriptionResponse =
    { role : Maybe Role
    }


updateRoleDescriptionResponseDecoder : JD.Decoder UpdateRoleDescriptionResponse
updateRoleDescriptionResponseDecoder =
    JD.succeed UpdateRoleDescriptionResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Role", "role" ]
                roleDecoder
            )


{-| Type of HTTP response from updateRole
-}
type alias UpdateRoleResponse =
    {}


updateRoleResponseDecoder : JD.Decoder UpdateRoleResponse
updateRoleResponseDecoder =
    JD.succeed UpdateRoleResponse


{-| Type of HTTP response from updateSAMLProvider
-}
type alias UpdateSAMLProviderResponse =
    { sAMLProviderArn : Maybe String
    }


updateSAMLProviderResponseDecoder : JD.Decoder UpdateSAMLProviderResponse
updateSAMLProviderResponseDecoder =
    JD.succeed UpdateSAMLProviderResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SAMLProviderArn", "sAMLProviderArn" ]
                JD.string
            )


{-| Type of HTTP response from uploadSSHPublicKey
-}
type alias UploadSSHPublicKeyResponse =
    { sSHPublicKey : Maybe SSHPublicKey
    }


uploadSSHPublicKeyResponseDecoder : JD.Decoder UploadSSHPublicKeyResponse
uploadSSHPublicKeyResponseDecoder =
    JD.succeed UploadSSHPublicKeyResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "SSHPublicKey", "sSHPublicKey" ]
                sSHPublicKeyDecoder
            )


{-| Type of HTTP response from uploadServerCertificate
-}
type alias UploadServerCertificateResponse =
    { serverCertificateMetadata : Maybe ServerCertificateMetadata
    }


uploadServerCertificateResponseDecoder : JD.Decoder UploadServerCertificateResponse
uploadServerCertificateResponseDecoder =
    JD.succeed UploadServerCertificateResponse
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "ServerCertificateMetadata", "serverCertificateMetadata" ]
                serverCertificateMetadataDecoder
            )


{-| Type of HTTP response from uploadSigningCertificate
-}
type alias UploadSigningCertificateResponse =
    { certificate : SigningCertificate
    }


uploadSigningCertificateResponseDecoder : JD.Decoder UploadSigningCertificateResponse
uploadSigningCertificateResponseDecoder =
    JD.succeed UploadSigningCertificateResponse
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Certificate", "certificate" ]
                signingCertificateDecoder
            )


{-|

<p>Contains information about an IAM user entity.</p> <p>This data type is used as a response element in the following operations:</p> <ul> <li> <p> <a>CreateUser</a> </p> </li> <li> <p> <a>GetUser</a> </p> </li> <li> <p> <a>ListUsers</a> </p> </li> </ul>

-}
type alias User =
    { path : String
    , userName : String
    , userId : String
    , arn : String
    , createDate : Posix
    , passwordLastUsed : Maybe Posix
    , permissionsBoundary : Maybe AttachedPermissionsBoundary
    , tags : Maybe (List Tag)
    }


userDecoder : JD.Decoder User
userDecoder =
    JD.succeed User
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Path", "path" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "UserId", "userId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "Arn", "arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PasswordLastUsed", "passwordLastUsed" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PermissionsBoundary", "permissionsBoundary" ]
                attachedPermissionsBoundaryDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-|

<p>Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>

-}
type alias UserDetail =
    { path : Maybe String
    , userName : Maybe String
    , userId : Maybe String
    , arn : Maybe String
    , createDate : Maybe Posix
    , userPolicyList : Maybe (List PolicyDetail)
    , groupList : Maybe (List String)
    , attachedManagedPolicies : Maybe (List AttachedPolicy)
    , permissionsBoundary : Maybe AttachedPermissionsBoundary
    , tags : Maybe (List Tag)
    }


userDetailDecoder : JD.Decoder UserDetail
userDetailDecoder =
    JD.succeed UserDetail
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Path", "path" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UserName", "userName" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UserId", "userId" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Arn", "arn" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "CreateDate", "createDate" ]
                JDX.datetime
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "UserPolicyList", "userPolicyList" ]
                (JD.list policyDetailDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "GroupList", "groupList" ]
                (JD.list JD.string)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "AttachedManagedPolicies", "attachedManagedPolicies" ]
                (JD.list attachedPolicyDecoder)
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "PermissionsBoundary", "permissionsBoundary" ]
                attachedPermissionsBoundaryDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Tags", "tags" ]
                (JD.list tagDecoder)
            )


{-|

<p>Contains information about a virtual MFA device.</p>

-}
type alias VirtualMFADevice =
    { serialNumber : String
    , base32StringSeed : Maybe String
    , qRCodePNG : Maybe String
    , user : Maybe User
    , enableDate : Maybe Posix
    }


virtualMFADeviceDecoder : JD.Decoder VirtualMFADevice
virtualMFADeviceDecoder =
    JD.succeed VirtualMFADevice
        |> JDP.custom
            (AWS.Core.Decode.required
                [ "SerialNumber", "serialNumber" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "Base32StringSeed", "base32StringSeed" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "QRCodePNG", "qRCodePNG" ]
                JD.string
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "User", "user" ]
                userDecoder
            )
        |> JDP.custom
            (AWS.Core.Decode.optional
                [ "EnableDate", "enableDate" ]
                JDX.datetime
            )


{-| One of

  - `AssignmentStatusType_Assigned`
  - `AssignmentStatusType_Unassigned`
  - `AssignmentStatusType_Any`

-}
type AssignmentStatusType
    = AssignmentStatusType_Assigned
    | AssignmentStatusType_Unassigned
    | AssignmentStatusType_Any


assignmentStatusTypeDecoder : JD.Decoder AssignmentStatusType
assignmentStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Assigned" ->
                        JD.succeed AssignmentStatusType_Assigned

                    "Unassigned" ->
                        JD.succeed AssignmentStatusType_Unassigned

                    "Any" ->
                        JD.succeed AssignmentStatusType_Any

                    _ ->
                        JD.fail "bad thing"
            )


{-| One of

  - `EncodingType_SSH`
  - `EncodingType_PEM`

-}
type EncodingType
    = EncodingType_SSH
    | EncodingType_PEM


encodingTypeDecoder : JD.Decoder EncodingType
encodingTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SSH" ->
                        JD.succeed EncodingType_SSH

                    "PEM" ->
                        JD.succeed EncodingType_PEM

                    _ ->
                        JD.fail "bad thing"
            )


{-| One of

  - `GlobalEndpointTokenVersion_v1Token`
  - `GlobalEndpointTokenVersion_v2Token`

-}
type GlobalEndpointTokenVersion
    = GlobalEndpointTokenVersion_v1Token
    | GlobalEndpointTokenVersion_v2Token


globalEndpointTokenVersionDecoder : JD.Decoder GlobalEndpointTokenVersion
globalEndpointTokenVersionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "v1Token" ->
                        JD.succeed GlobalEndpointTokenVersion_v1Token

                    "v2Token" ->
                        JD.succeed GlobalEndpointTokenVersion_v2Token

                    _ ->
                        JD.fail "bad thing"
            )


{-| One of

  - `JobStatusType_IN_PROGRESS`
  - `JobStatusType_COMPLETED`
  - `JobStatusType_FAILED`

-}
type JobStatusType
    = JobStatusType_IN_PROGRESS
    | JobStatusType_COMPLETED
    | JobStatusType_FAILED


jobStatusTypeDecoder : JD.Decoder JobStatusType
jobStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IN_PROGRESS" ->
                        JD.succeed JobStatusType_IN_PROGRESS

                    "COMPLETED" ->
                        JD.succeed JobStatusType_COMPLETED

                    "FAILED" ->
                        JD.succeed JobStatusType_FAILED

                    _ ->
                        JD.fail "bad thing"
            )


{-| One of

  - `PolicyOwnerEntityType_USER`
  - `PolicyOwnerEntityType_ROLE`
  - `PolicyOwnerEntityType_GROUP`

-}
type PolicyOwnerEntityType
    = PolicyOwnerEntityType_USER
    | PolicyOwnerEntityType_ROLE
    | PolicyOwnerEntityType_GROUP


policyOwnerEntityTypeDecoder : JD.Decoder PolicyOwnerEntityType
policyOwnerEntityTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "USER" ->
                        JD.succeed PolicyOwnerEntityType_USER

                    "ROLE" ->
                        JD.succeed PolicyOwnerEntityType_ROLE

                    "GROUP" ->
                        JD.succeed PolicyOwnerEntityType_GROUP

                    _ ->
                        JD.fail "bad thing"
            )


{-| One of

  - `PolicyScopeType_All`
  - `PolicyScopeType_AWS`
  - `PolicyScopeType_Local`

-}
type PolicyScopeType
    = PolicyScopeType_All
    | PolicyScopeType_AWS
    | PolicyScopeType_Local


policyScopeTypeDecoder : JD.Decoder PolicyScopeType
policyScopeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "All" ->
                        JD.succeed PolicyScopeType_All

                    "AWS" ->
                        JD.succeed PolicyScopeType_AWS

                    "Local" ->
                        JD.succeed PolicyScopeType_Local

                    _ ->
                        JD.fail "bad thing"
            )


{-| One of

  - `PolicyType_INLINE`
  - `PolicyType_MANAGED`

-}
type PolicyType
    = PolicyType_INLINE
    | PolicyType_MANAGED


policyTypeDecoder : JD.Decoder PolicyType
policyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INLINE" ->
                        JD.succeed PolicyType_INLINE

                    "MANAGED" ->
                        JD.succeed PolicyType_MANAGED

                    _ ->
                        JD.fail "bad thing"
            )


{-| One of

  - `SortKeyType_SERVICE_NAMESPACE_ASCENDING`
  - `SortKeyType_SERVICE_NAMESPACE_DESCENDING`
  - `SortKeyType_LAST_AUTHENTICATED_TIME_ASCENDING`
  - `SortKeyType_LAST_AUTHENTICATED_TIME_DESCENDING`

-}
type SortKeyType
    = SortKeyType_SERVICE_NAMESPACE_ASCENDING
    | SortKeyType_SERVICE_NAMESPACE_DESCENDING
    | SortKeyType_LAST_AUTHENTICATED_TIME_ASCENDING
    | SortKeyType_LAST_AUTHENTICATED_TIME_DESCENDING


sortKeyTypeDecoder : JD.Decoder SortKeyType
sortKeyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SERVICE_NAMESPACE_ASCENDING" ->
                        JD.succeed SortKeyType_SERVICE_NAMESPACE_ASCENDING

                    "SERVICE_NAMESPACE_DESCENDING" ->
                        JD.succeed SortKeyType_SERVICE_NAMESPACE_DESCENDING

                    "LAST_AUTHENTICATED_TIME_ASCENDING" ->
                        JD.succeed SortKeyType_LAST_AUTHENTICATED_TIME_ASCENDING

                    "LAST_AUTHENTICATED_TIME_DESCENDING" ->
                        JD.succeed SortKeyType_LAST_AUTHENTICATED_TIME_DESCENDING

                    _ ->
                        JD.fail "bad thing"
            )


{-| One of

  - `StatusType_Active`
  - `StatusType_Inactive`

-}
type StatusType
    = StatusType_Active
    | StatusType_Inactive


statusTypeDecoder : JD.Decoder StatusType
statusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Active" ->
                        JD.succeed StatusType_Active

                    "Inactive" ->
                        JD.succeed StatusType_Inactive

                    _ ->
                        JD.fail "bad thing"
            )


{-| One of

  - `SummaryKeyType_Users`
  - `SummaryKeyType_UsersQuota`
  - `SummaryKeyType_Groups`
  - `SummaryKeyType_GroupsQuota`
  - `SummaryKeyType_ServerCertificates`
  - `SummaryKeyType_ServerCertificatesQuota`
  - `SummaryKeyType_UserPolicySizeQuota`
  - `SummaryKeyType_GroupPolicySizeQuota`
  - `SummaryKeyType_GroupsPerUserQuota`
  - `SummaryKeyType_SigningCertificatesPerUserQuota`
  - `SummaryKeyType_AccessKeysPerUserQuota`
  - `SummaryKeyType_MFADevices`
  - `SummaryKeyType_MFADevicesInUse`
  - `SummaryKeyType_AccountMFAEnabled`
  - `SummaryKeyType_AccountAccessKeysPresent`
  - `SummaryKeyType_AccountSigningCertificatesPresent`
  - `SummaryKeyType_AttachedPoliciesPerGroupQuota`
  - `SummaryKeyType_AttachedPoliciesPerRoleQuota`
  - `SummaryKeyType_AttachedPoliciesPerUserQuota`
  - `SummaryKeyType_Policies`
  - `SummaryKeyType_PoliciesQuota`
  - `SummaryKeyType_PolicySizeQuota`
  - `SummaryKeyType_PolicyVersionsInUse`
  - `SummaryKeyType_PolicyVersionsInUseQuota`
  - `SummaryKeyType_VersionsPerPolicyQuota`
  - `SummaryKeyType_GlobalEndpointTokenVersion`

-}
type SummaryKeyType
    = SummaryKeyType_Users
    | SummaryKeyType_UsersQuota
    | SummaryKeyType_Groups
    | SummaryKeyType_GroupsQuota
    | SummaryKeyType_ServerCertificates
    | SummaryKeyType_ServerCertificatesQuota
    | SummaryKeyType_UserPolicySizeQuota
    | SummaryKeyType_GroupPolicySizeQuota
    | SummaryKeyType_GroupsPerUserQuota
    | SummaryKeyType_SigningCertificatesPerUserQuota
    | SummaryKeyType_AccessKeysPerUserQuota
    | SummaryKeyType_MFADevices
    | SummaryKeyType_MFADevicesInUse
    | SummaryKeyType_AccountMFAEnabled
    | SummaryKeyType_AccountAccessKeysPresent
    | SummaryKeyType_AccountSigningCertificatesPresent
    | SummaryKeyType_AttachedPoliciesPerGroupQuota
    | SummaryKeyType_AttachedPoliciesPerRoleQuota
    | SummaryKeyType_AttachedPoliciesPerUserQuota
    | SummaryKeyType_Policies
    | SummaryKeyType_PoliciesQuota
    | SummaryKeyType_PolicySizeQuota
    | SummaryKeyType_PolicyVersionsInUse
    | SummaryKeyType_PolicyVersionsInUseQuota
    | SummaryKeyType_VersionsPerPolicyQuota
    | SummaryKeyType_GlobalEndpointTokenVersion


summaryKeyTypeDecoder : JD.Decoder SummaryKeyType
summaryKeyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Users" ->
                        JD.succeed SummaryKeyType_Users

                    "UsersQuota" ->
                        JD.succeed SummaryKeyType_UsersQuota

                    "Groups" ->
                        JD.succeed SummaryKeyType_Groups

                    "GroupsQuota" ->
                        JD.succeed SummaryKeyType_GroupsQuota

                    "ServerCertificates" ->
                        JD.succeed SummaryKeyType_ServerCertificates

                    "ServerCertificatesQuota" ->
                        JD.succeed SummaryKeyType_ServerCertificatesQuota

                    "UserPolicySizeQuota" ->
                        JD.succeed SummaryKeyType_UserPolicySizeQuota

                    "GroupPolicySizeQuota" ->
                        JD.succeed SummaryKeyType_GroupPolicySizeQuota

                    "GroupsPerUserQuota" ->
                        JD.succeed SummaryKeyType_GroupsPerUserQuota

                    "SigningCertificatesPerUserQuota" ->
                        JD.succeed SummaryKeyType_SigningCertificatesPerUserQuota

                    "AccessKeysPerUserQuota" ->
                        JD.succeed SummaryKeyType_AccessKeysPerUserQuota

                    "MFADevices" ->
                        JD.succeed SummaryKeyType_MFADevices

                    "MFADevicesInUse" ->
                        JD.succeed SummaryKeyType_MFADevicesInUse

                    "AccountMFAEnabled" ->
                        JD.succeed SummaryKeyType_AccountMFAEnabled

                    "AccountAccessKeysPresent" ->
                        JD.succeed SummaryKeyType_AccountAccessKeysPresent

                    "AccountSigningCertificatesPresent" ->
                        JD.succeed SummaryKeyType_AccountSigningCertificatesPresent

                    "AttachedPoliciesPerGroupQuota" ->
                        JD.succeed SummaryKeyType_AttachedPoliciesPerGroupQuota

                    "AttachedPoliciesPerRoleQuota" ->
                        JD.succeed SummaryKeyType_AttachedPoliciesPerRoleQuota

                    "AttachedPoliciesPerUserQuota" ->
                        JD.succeed SummaryKeyType_AttachedPoliciesPerUserQuota

                    "Policies" ->
                        JD.succeed SummaryKeyType_Policies

                    "PoliciesQuota" ->
                        JD.succeed SummaryKeyType_PoliciesQuota

                    "PolicySizeQuota" ->
                        JD.succeed SummaryKeyType_PolicySizeQuota

                    "PolicyVersionsInUse" ->
                        JD.succeed SummaryKeyType_PolicyVersionsInUse

                    "PolicyVersionsInUseQuota" ->
                        JD.succeed SummaryKeyType_PolicyVersionsInUseQuota

                    "VersionsPerPolicyQuota" ->
                        JD.succeed SummaryKeyType_VersionsPerPolicyQuota

                    "GlobalEndpointTokenVersion" ->
                        JD.succeed SummaryKeyType_GlobalEndpointTokenVersion

                    _ ->
                        JD.fail "bad thing"
            )


{-| undefined
-}
type alias AddClientIDToOpenIDConnectProviderRequest =
    { openIDConnectProviderArn : String
    , clientID : String
    }


{-| undefined
-}
type alias AddRoleToInstanceProfileRequest =
    { instanceProfileName : String
    , roleName : String
    }


{-| undefined
-}
type alias AddUserToGroupRequest =
    { groupName : String
    , userName : String
    }


{-| undefined
-}
type alias AttachGroupPolicyRequest =
    { groupName : String
    , policyArn : String
    }


{-| undefined
-}
type alias AttachRolePolicyRequest =
    { roleName : String
    , policyArn : String
    }


{-| undefined
-}
type alias AttachUserPolicyRequest =
    { userName : String
    , policyArn : String
    }


{-| undefined
-}
type alias ChangePasswordRequest =
    { oldPassword : String
    , newPassword : String
    }


{-| undefined
-}
type alias CreateAccessKeyRequest =
    { userName : Maybe String
    }


{-| undefined
-}
type alias CreateAccountAliasRequest =
    { accountAlias : String
    }


{-| undefined
-}
type alias CreateGroupRequest =
    { path : Maybe String
    , groupName : String
    }


{-| undefined
-}
type alias CreateInstanceProfileRequest =
    { instanceProfileName : String
    , path : Maybe String
    }


{-| undefined
-}
type alias CreateLoginProfileRequest =
    { userName : String
    , password : String
    , passwordResetRequired : Maybe Bool
    }


{-| undefined
-}
type alias CreateOpenIDConnectProviderRequest =
    { url : String
    , clientIDList : Maybe (List String)
    , thumbprintList : List String
    }


{-| undefined
-}
type alias CreatePolicyRequest =
    { policyName : String
    , path : Maybe String
    , policyDocument : String
    , description : Maybe String
    }


{-| undefined
-}
type alias CreatePolicyVersionRequest =
    { policyArn : String
    , policyDocument : String
    , setAsDefault : Maybe Bool
    }


{-| undefined
-}
type alias CreateRoleRequest =
    { path : Maybe String
    , roleName : String
    , assumeRolePolicyDocument : String
    , description : Maybe String
    , maxSessionDuration : Maybe Int
    , permissionsBoundary : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateSAMLProviderRequest =
    { sAMLMetadataDocument : String
    , name : String
    }


{-| undefined
-}
type alias CreateServiceLinkedRoleRequest =
    { aWSServiceName : String
    , description : Maybe String
    , customSuffix : Maybe String
    }


{-| undefined
-}
type alias CreateServiceSpecificCredentialRequest =
    { userName : String
    , serviceName : String
    }


{-| undefined
-}
type alias CreateUserRequest =
    { path : Maybe String
    , userName : String
    , permissionsBoundary : Maybe String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateVirtualMFADeviceRequest =
    { path : Maybe String
    , virtualMFADeviceName : String
    }


{-| undefined
-}
type alias DeactivateMFADeviceRequest =
    { userName : String
    , serialNumber : String
    }


{-| undefined
-}
type alias DeleteAccessKeyRequest =
    { userName : Maybe String
    , accessKeyId : String
    }


{-| undefined
-}
type alias DeleteAccountAliasRequest =
    { accountAlias : String
    }


{-| undefined
-}
type alias DeleteGroupPolicyRequest =
    { groupName : String
    , policyName : String
    }


{-| undefined
-}
type alias DeleteGroupRequest =
    { groupName : String
    }


{-| undefined
-}
type alias DeleteInstanceProfileRequest =
    { instanceProfileName : String
    }


{-| undefined
-}
type alias DeleteLoginProfileRequest =
    { userName : String
    }


{-| undefined
-}
type alias DeleteOpenIDConnectProviderRequest =
    { openIDConnectProviderArn : String
    }


{-| undefined
-}
type alias DeletePolicyRequest =
    { policyArn : String
    }


{-| undefined
-}
type alias DeletePolicyVersionRequest =
    { policyArn : String
    , versionId : String
    }


{-| undefined
-}
type alias DeleteRolePermissionsBoundaryRequest =
    { roleName : String
    }


{-| undefined
-}
type alias DeleteRolePolicyRequest =
    { roleName : String
    , policyName : String
    }


{-| undefined
-}
type alias DeleteRoleRequest =
    { roleName : String
    }


{-| undefined
-}
type alias DeleteSAMLProviderRequest =
    { sAMLProviderArn : String
    }


{-| undefined
-}
type alias DeleteSSHPublicKeyRequest =
    { userName : String
    , sSHPublicKeyId : String
    }


{-| undefined
-}
type alias DeleteServerCertificateRequest =
    { serverCertificateName : String
    }


{-| undefined
-}
type alias DeleteServiceLinkedRoleRequest =
    { roleName : String
    }


{-| undefined
-}
type alias DeleteServiceSpecificCredentialRequest =
    { userName : Maybe String
    , serviceSpecificCredentialId : String
    }


{-| undefined
-}
type alias DeleteSigningCertificateRequest =
    { userName : Maybe String
    , certificateId : String
    }


{-| undefined
-}
type alias DeleteUserPermissionsBoundaryRequest =
    { userName : String
    }


{-| undefined
-}
type alias DeleteUserPolicyRequest =
    { userName : String
    , policyName : String
    }


{-| undefined
-}
type alias DeleteUserRequest =
    { userName : String
    }


{-| undefined
-}
type alias DeleteVirtualMFADeviceRequest =
    { serialNumber : String
    }


{-| undefined
-}
type alias DetachGroupPolicyRequest =
    { groupName : String
    , policyArn : String
    }


{-| undefined
-}
type alias DetachRolePolicyRequest =
    { roleName : String
    , policyArn : String
    }


{-| undefined
-}
type alias DetachUserPolicyRequest =
    { userName : String
    , policyArn : String
    }


{-| undefined
-}
type alias EnableMFADeviceRequest =
    { userName : String
    , serialNumber : String
    , authenticationCode1 : String
    , authenticationCode2 : String
    }


{-| undefined
-}
type alias GenerateOrganizationsAccessReportRequest =
    { entityPath : String
    , organizationsPolicyId : Maybe String
    }


{-| undefined
-}
type alias GenerateServiceLastAccessedDetailsRequest =
    { arn : String
    }


{-| undefined
-}
type alias GetAccessKeyLastUsedRequest =
    { accessKeyId : String
    }


{-| undefined
-}
type alias GetAccountAuthorizationDetailsRequest =
    { filter : Maybe (List EntityType)
    , maxItems : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias GetContextKeysForCustomPolicyRequest =
    { policyInputList : List String
    }


{-| undefined
-}
type alias GetContextKeysForPrincipalPolicyRequest =
    { policySourceArn : String
    , policyInputList : Maybe (List String)
    }


{-| undefined
-}
type alias GetGroupPolicyRequest =
    { groupName : String
    , policyName : String
    }


{-| undefined
-}
type alias GetGroupRequest =
    { groupName : String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias GetInstanceProfileRequest =
    { instanceProfileName : String
    }


{-| undefined
-}
type alias GetLoginProfileRequest =
    { userName : String
    }


{-| undefined
-}
type alias GetOpenIDConnectProviderRequest =
    { openIDConnectProviderArn : String
    }


{-| undefined
-}
type alias GetOrganizationsAccessReportRequest =
    { jobId : String
    , maxItems : Maybe Int
    , marker : Maybe String
    , sortKey : Maybe SortKeyType
    }


{-| undefined
-}
type alias GetPolicyRequest =
    { policyArn : String
    }


{-| undefined
-}
type alias GetPolicyVersionRequest =
    { policyArn : String
    , versionId : String
    }


{-| undefined
-}
type alias GetRolePolicyRequest =
    { roleName : String
    , policyName : String
    }


{-| undefined
-}
type alias GetRoleRequest =
    { roleName : String
    }


{-| undefined
-}
type alias GetSAMLProviderRequest =
    { sAMLProviderArn : String
    }


{-| undefined
-}
type alias GetSSHPublicKeyRequest =
    { userName : String
    , sSHPublicKeyId : String
    , encoding : EncodingType
    }


{-| undefined
-}
type alias GetServerCertificateRequest =
    { serverCertificateName : String
    }


{-| undefined
-}
type alias GetServiceLastAccessedDetailsRequest =
    { jobId : String
    , maxItems : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias GetServiceLastAccessedDetailsWithEntitiesRequest =
    { jobId : String
    , serviceNamespace : String
    , maxItems : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias GetServiceLinkedRoleDeletionStatusRequest =
    { deletionTaskId : String
    }


{-| undefined
-}
type alias GetUserPolicyRequest =
    { userName : String
    , policyName : String
    }


{-| undefined
-}
type alias GetUserRequest =
    { userName : Maybe String
    }


{-| undefined
-}
type alias ListAccessKeysRequest =
    { userName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListAccountAliasesRequest =
    { marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListAttachedGroupPoliciesRequest =
    { groupName : String
    , pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListAttachedRolePoliciesRequest =
    { roleName : String
    , pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListAttachedUserPoliciesRequest =
    { userName : String
    , pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListEntitiesForPolicyRequest =
    { policyArn : String
    , entityFilter : Maybe EntityType
    , pathPrefix : Maybe String
    , policyUsageFilter : Maybe PolicyUsageType
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListGroupPoliciesRequest =
    { groupName : String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListGroupsForUserRequest =
    { userName : String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListGroupsRequest =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListInstanceProfilesForRoleRequest =
    { roleName : String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListInstanceProfilesRequest =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListMFADevicesRequest =
    { userName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListOpenIDConnectProvidersRequest =
    {}


{-| undefined
-}
type alias ListPoliciesGrantingServiceAccessRequest =
    { marker : Maybe String
    , arn : String
    , serviceNamespaces : List String
    }


{-| undefined
-}
type alias ListPoliciesRequest =
    { scope : Maybe PolicyScopeType
    , onlyAttached : Maybe Bool
    , pathPrefix : Maybe String
    , policyUsageFilter : Maybe PolicyUsageType
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListPolicyVersionsRequest =
    { policyArn : String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListRolePoliciesRequest =
    { roleName : String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListRoleTagsRequest =
    { roleName : String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListRolesRequest =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListSAMLProvidersRequest =
    {}


{-| undefined
-}
type alias ListSSHPublicKeysRequest =
    { userName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListServerCertificatesRequest =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListServiceSpecificCredentialsRequest =
    { userName : Maybe String
    , serviceName : Maybe String
    }


{-| undefined
-}
type alias ListSigningCertificatesRequest =
    { userName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListUserPoliciesRequest =
    { userName : String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListUserTagsRequest =
    { userName : String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListUsersRequest =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias ListVirtualMFADevicesRequest =
    { assignmentStatus : Maybe AssignmentStatusType
    , marker : Maybe String
    , maxItems : Maybe Int
    }


{-| undefined
-}
type alias PutGroupPolicyRequest =
    { groupName : String
    , policyName : String
    , policyDocument : String
    }


{-| undefined
-}
type alias PutRolePermissionsBoundaryRequest =
    { roleName : String
    , permissionsBoundary : String
    }


{-| undefined
-}
type alias PutRolePolicyRequest =
    { roleName : String
    , policyName : String
    , policyDocument : String
    }


{-| undefined
-}
type alias PutUserPermissionsBoundaryRequest =
    { userName : String
    , permissionsBoundary : String
    }


{-| undefined
-}
type alias PutUserPolicyRequest =
    { userName : String
    , policyName : String
    , policyDocument : String
    }


{-| undefined
-}
type alias RemoveClientIDFromOpenIDConnectProviderRequest =
    { openIDConnectProviderArn : String
    , clientID : String
    }


{-| undefined
-}
type alias RemoveRoleFromInstanceProfileRequest =
    { instanceProfileName : String
    , roleName : String
    }


{-| undefined
-}
type alias RemoveUserFromGroupRequest =
    { groupName : String
    , userName : String
    }


{-| undefined
-}
type alias ResetServiceSpecificCredentialRequest =
    { userName : Maybe String
    , serviceSpecificCredentialId : String
    }


{-| undefined
-}
type alias ResyncMFADeviceRequest =
    { userName : String
    , serialNumber : String
    , authenticationCode1 : String
    , authenticationCode2 : String
    }


{-| undefined
-}
type alias SetDefaultPolicyVersionRequest =
    { policyArn : String
    , versionId : String
    }


{-| undefined
-}
type alias SetSecurityTokenServicePreferencesRequest =
    { globalEndpointTokenVersion : GlobalEndpointTokenVersion
    }


{-| undefined
-}
type alias SimulateCustomPolicyRequest =
    { policyInputList : List String
    , actionNames : List String
    , resourceArns : Maybe (List String)
    , resourcePolicy : Maybe String
    , resourceOwner : Maybe String
    , callerArn : Maybe String
    , contextEntries : Maybe (List ContextEntry)
    , resourceHandlingOption : Maybe String
    , maxItems : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias SimulatePrincipalPolicyRequest =
    { policySourceArn : String
    , policyInputList : Maybe (List String)
    , actionNames : List String
    , resourceArns : Maybe (List String)
    , resourcePolicy : Maybe String
    , resourceOwner : Maybe String
    , callerArn : Maybe String
    , contextEntries : Maybe (List ContextEntry)
    , resourceHandlingOption : Maybe String
    , maxItems : Maybe Int
    , marker : Maybe String
    }


{-| undefined
-}
type alias TagRoleRequest =
    { roleName : String
    , tags : List Tag
    }


{-| undefined
-}
type alias TagUserRequest =
    { userName : String
    , tags : List Tag
    }


{-| undefined
-}
type alias UntagRoleRequest =
    { roleName : String
    , tagKeys : List String
    }


{-| undefined
-}
type alias UntagUserRequest =
    { userName : String
    , tagKeys : List String
    }


{-| undefined
-}
type alias UpdateAccessKeyRequest =
    { userName : Maybe String
    , accessKeyId : String
    , status : StatusType
    }


{-| undefined
-}
type alias UpdateAccountPasswordPolicyRequest =
    { minimumPasswordLength : Maybe Int
    , requireSymbols : Maybe Bool
    , requireNumbers : Maybe Bool
    , requireUppercaseCharacters : Maybe Bool
    , requireLowercaseCharacters : Maybe Bool
    , allowUsersToChangePassword : Maybe Bool
    , maxPasswordAge : Maybe Int
    , passwordReusePrevention : Maybe Int
    , hardExpiry : Maybe Bool
    }


{-| undefined
-}
type alias UpdateAssumeRolePolicyRequest =
    { roleName : String
    , policyDocument : String
    }


{-| undefined
-}
type alias UpdateGroupRequest =
    { groupName : String
    , newPath : Maybe String
    , newGroupName : Maybe String
    }


{-| undefined
-}
type alias UpdateLoginProfileRequest =
    { userName : String
    , password : Maybe String
    , passwordResetRequired : Maybe Bool
    }


{-| undefined
-}
type alias UpdateOpenIDConnectProviderThumbprintRequest =
    { openIDConnectProviderArn : String
    , thumbprintList : List String
    }


{-| undefined
-}
type alias UpdateRoleDescriptionRequest =
    { roleName : String
    , description : String
    }


{-| undefined
-}
type alias UpdateRoleRequest =
    { roleName : String
    , description : Maybe String
    , maxSessionDuration : Maybe Int
    }


{-| undefined
-}
type alias UpdateSAMLProviderRequest =
    { sAMLMetadataDocument : String
    , sAMLProviderArn : String
    }


{-| undefined
-}
type alias UpdateSSHPublicKeyRequest =
    { userName : String
    , sSHPublicKeyId : String
    , status : StatusType
    }


{-| undefined
-}
type alias UpdateServerCertificateRequest =
    { serverCertificateName : String
    , newPath : Maybe String
    , newServerCertificateName : Maybe String
    }


{-| undefined
-}
type alias UpdateServiceSpecificCredentialRequest =
    { userName : Maybe String
    , serviceSpecificCredentialId : String
    , status : StatusType
    }


{-| undefined
-}
type alias UpdateSigningCertificateRequest =
    { userName : Maybe String
    , certificateId : String
    , status : StatusType
    }


{-| undefined
-}
type alias UpdateUserRequest =
    { userName : String
    , newPath : Maybe String
    , newUserName : Maybe String
    }


{-| undefined
-}
type alias UploadSSHPublicKeyRequest =
    { userName : String
    , sSHPublicKeyBody : String
    }


{-| undefined
-}
type alias UploadServerCertificateRequest =
    { path : Maybe String
    , serverCertificateName : String
    , certificateBody : String
    , privateKey : String
    , certificateChain : Maybe String
    }


{-| undefined
-}
type alias UploadSigningCertificateRequest =
    { userName : Maybe String
    , certificateBody : String
    }


accessDetailEncoder : AccessDetail -> List ( String, String )
accessDetailEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceName" data.serviceName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceNamespace" data.serviceNamespace
        |> (case data.region of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Region" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.entityPath of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "EntityPath" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.lastAuthenticatedTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastAuthenticatedTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.totalAuthenticatedEntities of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "TotalAuthenticatedEntities" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


accessKeyEncoder : AccessKey -> List ( String, String )
accessKeyEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AccessKeyId" data.accessKeyId
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Status" data.status
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SecretAccessKey" data.secretAccessKey
        |> (case data.createDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


accessKeyLastUsedEncoder : AccessKeyLastUsed -> List ( String, String )
accessKeyLastUsedEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastUsedDate" data.lastUsedDate
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceName" data.serviceName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Region" data.region


accessKeyMetadataEncoder : AccessKeyMetadata -> List ( String, String )
accessKeyMetadataEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.accessKeyId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AccessKeyId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.status of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Status" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.createDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


addClientIDToOpenIDConnectProviderRequestEncoder : AddClientIDToOpenIDConnectProviderRequest -> List ( String, String )
addClientIDToOpenIDConnectProviderRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "OpenIDConnectProviderArn" data.openIDConnectProviderArn
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ClientID" data.clientID


addRoleToInstanceProfileRequestEncoder : AddRoleToInstanceProfileRequest -> List ( String, String )
addRoleToInstanceProfileRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "InstanceProfileName" data.instanceProfileName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName


addUserToGroupRequestEncoder : AddUserToGroupRequest -> List ( String, String )
addUserToGroupRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName


attachGroupPolicyRequestEncoder : AttachGroupPolicyRequest -> List ( String, String )
attachGroupPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn


attachRolePolicyRequestEncoder : AttachRolePolicyRequest -> List ( String, String )
attachRolePolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn


attachUserPolicyRequestEncoder : AttachUserPolicyRequest -> List ( String, String )
attachUserPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn


attachedPermissionsBoundaryEncoder : AttachedPermissionsBoundary -> List ( String, String )
attachedPermissionsBoundaryEncoder data =
    []
        |> (case data.permissionsBoundaryType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "PermissionsBoundaryType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.permissionsBoundaryArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PermissionsBoundaryArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


attachedPolicyEncoder : AttachedPolicy -> List ( String, String )
attachedPolicyEncoder data =
    []
        |> (case data.policyName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


changePasswordRequestEncoder : ChangePasswordRequest -> List ( String, String )
changePasswordRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "OldPassword" data.oldPassword
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "NewPassword" data.newPassword


contextEntryEncoder : ContextEntry -> List ( String, String )
contextEntryEncoder data =
    []
        |> (case data.contextKeyName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ContextKeyName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.contextKeyValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "ContextKeyValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.contextKeyType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "ContextKeyType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createAccessKeyRequestEncoder : CreateAccessKeyRequest -> List ( String, String )
createAccessKeyRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createAccessKeyResponseEncoder : CreateAccessKeyResponse -> List ( String, String )
createAccessKeyResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs accessKeyEncoder "AccessKey" data.accessKey


createAccountAliasRequestEncoder : CreateAccountAliasRequest -> List ( String, String )
createAccountAliasRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AccountAlias" data.accountAlias


createGroupRequestEncoder : CreateGroupRequest -> List ( String, String )
createGroupRequestEncoder data =
    []
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName


createGroupResponseEncoder : CreateGroupResponse -> List ( String, String )
createGroupResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs groupEncoder "Group" data.group


createInstanceProfileRequestEncoder : CreateInstanceProfileRequest -> List ( String, String )
createInstanceProfileRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "InstanceProfileName" data.instanceProfileName
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createInstanceProfileResponseEncoder : CreateInstanceProfileResponse -> List ( String, String )
createInstanceProfileResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs instanceProfileEncoder "InstanceProfile" data.instanceProfile


createLoginProfileRequestEncoder : CreateLoginProfileRequest -> List ( String, String )
createLoginProfileRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Password" data.password
        |> (case data.passwordResetRequired of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PasswordResetRequired" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createLoginProfileResponseEncoder : CreateLoginProfileResponse -> List ( String, String )
createLoginProfileResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs loginProfileEncoder "LoginProfile" data.loginProfile


createOpenIDConnectProviderRequestEncoder : CreateOpenIDConnectProviderRequest -> List ( String, String )
createOpenIDConnectProviderRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Url" data.url
        |> (case data.clientIDList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "ClientIDList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "ThumbprintList" data.thumbprintList


createOpenIDConnectProviderResponseEncoder : CreateOpenIDConnectProviderResponse -> List ( String, String )
createOpenIDConnectProviderResponseEncoder data =
    []
        |> (case data.openIDConnectProviderArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "OpenIDConnectProviderArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createPolicyRequestEncoder : CreatePolicyRequest -> List ( String, String )
createPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyDocument" data.policyDocument
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createPolicyResponseEncoder : CreatePolicyResponse -> List ( String, String )
createPolicyResponseEncoder data =
    []
        |> (case data.policy of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs policyEncoder "Policy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createPolicyVersionRequestEncoder : CreatePolicyVersionRequest -> List ( String, String )
createPolicyVersionRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyDocument" data.policyDocument
        |> (case data.setAsDefault of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SetAsDefault" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createPolicyVersionResponseEncoder : CreatePolicyVersionResponse -> List ( String, String )
createPolicyVersionResponseEncoder data =
    []
        |> (case data.policyVersion of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs policyVersionEncoder "PolicyVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createRoleRequestEncoder : CreateRoleRequest -> List ( String, String )
createRoleRequestEncoder data =
    []
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AssumeRolePolicyDocument" data.assumeRolePolicyDocument
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxSessionDuration of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxSessionDuration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.permissionsBoundary of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PermissionsBoundary" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createRoleResponseEncoder : CreateRoleResponse -> List ( String, String )
createRoleResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs roleEncoder "Role" data.role


createSAMLProviderRequestEncoder : CreateSAMLProviderRequest -> List ( String, String )
createSAMLProviderRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SAMLMetadataDocument" data.sAMLMetadataDocument
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Name" data.name


createSAMLProviderResponseEncoder : CreateSAMLProviderResponse -> List ( String, String )
createSAMLProviderResponseEncoder data =
    []
        |> (case data.sAMLProviderArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SAMLProviderArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createServiceLinkedRoleRequestEncoder : CreateServiceLinkedRoleRequest -> List ( String, String )
createServiceLinkedRoleRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AWSServiceName" data.aWSServiceName
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.customSuffix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "CustomSuffix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createServiceLinkedRoleResponseEncoder : CreateServiceLinkedRoleResponse -> List ( String, String )
createServiceLinkedRoleResponseEncoder data =
    []
        |> (case data.role of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs roleEncoder "Role" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createServiceSpecificCredentialRequestEncoder : CreateServiceSpecificCredentialRequest -> List ( String, String )
createServiceSpecificCredentialRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceName" data.serviceName


createServiceSpecificCredentialResponseEncoder : CreateServiceSpecificCredentialResponse -> List ( String, String )
createServiceSpecificCredentialResponseEncoder data =
    []
        |> (case data.serviceSpecificCredential of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs serviceSpecificCredentialEncoder "ServiceSpecificCredential" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createUserRequestEncoder : CreateUserRequest -> List ( String, String )
createUserRequestEncoder data =
    []
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> (case data.permissionsBoundary of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PermissionsBoundary" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createUserResponseEncoder : CreateUserResponse -> List ( String, String )
createUserResponseEncoder data =
    []
        |> (case data.user of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs userEncoder "User" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


createVirtualMFADeviceRequestEncoder : CreateVirtualMFADeviceRequest -> List ( String, String )
createVirtualMFADeviceRequestEncoder data =
    []
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "VirtualMFADeviceName" data.virtualMFADeviceName


createVirtualMFADeviceResponseEncoder : CreateVirtualMFADeviceResponse -> List ( String, String )
createVirtualMFADeviceResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs virtualMFADeviceEncoder "VirtualMFADevice" data.virtualMFADevice


deactivateMFADeviceRequestEncoder : DeactivateMFADeviceRequest -> List ( String, String )
deactivateMFADeviceRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SerialNumber" data.serialNumber


deleteAccessKeyRequestEncoder : DeleteAccessKeyRequest -> List ( String, String )
deleteAccessKeyRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AccessKeyId" data.accessKeyId


deleteAccountAliasRequestEncoder : DeleteAccountAliasRequest -> List ( String, String )
deleteAccountAliasRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AccountAlias" data.accountAlias


deleteGroupPolicyRequestEncoder : DeleteGroupPolicyRequest -> List ( String, String )
deleteGroupPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName


deleteGroupRequestEncoder : DeleteGroupRequest -> List ( String, String )
deleteGroupRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName


deleteInstanceProfileRequestEncoder : DeleteInstanceProfileRequest -> List ( String, String )
deleteInstanceProfileRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "InstanceProfileName" data.instanceProfileName


deleteLoginProfileRequestEncoder : DeleteLoginProfileRequest -> List ( String, String )
deleteLoginProfileRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName


deleteOpenIDConnectProviderRequestEncoder : DeleteOpenIDConnectProviderRequest -> List ( String, String )
deleteOpenIDConnectProviderRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "OpenIDConnectProviderArn" data.openIDConnectProviderArn


deletePolicyRequestEncoder : DeletePolicyRequest -> List ( String, String )
deletePolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn


deletePolicyVersionRequestEncoder : DeletePolicyVersionRequest -> List ( String, String )
deletePolicyVersionRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "VersionId" data.versionId


deleteRolePermissionsBoundaryRequestEncoder : DeleteRolePermissionsBoundaryRequest -> List ( String, String )
deleteRolePermissionsBoundaryRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName


deleteRolePolicyRequestEncoder : DeleteRolePolicyRequest -> List ( String, String )
deleteRolePolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName


deleteRoleRequestEncoder : DeleteRoleRequest -> List ( String, String )
deleteRoleRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName


deleteSAMLProviderRequestEncoder : DeleteSAMLProviderRequest -> List ( String, String )
deleteSAMLProviderRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SAMLProviderArn" data.sAMLProviderArn


deleteSSHPublicKeyRequestEncoder : DeleteSSHPublicKeyRequest -> List ( String, String )
deleteSSHPublicKeyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SSHPublicKeyId" data.sSHPublicKeyId


deleteServerCertificateRequestEncoder : DeleteServerCertificateRequest -> List ( String, String )
deleteServerCertificateRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServerCertificateName" data.serverCertificateName


deleteServiceLinkedRoleRequestEncoder : DeleteServiceLinkedRoleRequest -> List ( String, String )
deleteServiceLinkedRoleRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName


deleteServiceLinkedRoleResponseEncoder : DeleteServiceLinkedRoleResponse -> List ( String, String )
deleteServiceLinkedRoleResponseEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "DeletionTaskId" data.deletionTaskId


deleteServiceSpecificCredentialRequestEncoder : DeleteServiceSpecificCredentialRequest -> List ( String, String )
deleteServiceSpecificCredentialRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceSpecificCredentialId" data.serviceSpecificCredentialId


deleteSigningCertificateRequestEncoder : DeleteSigningCertificateRequest -> List ( String, String )
deleteSigningCertificateRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "CertificateId" data.certificateId


deleteUserPermissionsBoundaryRequestEncoder : DeleteUserPermissionsBoundaryRequest -> List ( String, String )
deleteUserPermissionsBoundaryRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName


deleteUserPolicyRequestEncoder : DeleteUserPolicyRequest -> List ( String, String )
deleteUserPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName


deleteUserRequestEncoder : DeleteUserRequest -> List ( String, String )
deleteUserRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName


deleteVirtualMFADeviceRequestEncoder : DeleteVirtualMFADeviceRequest -> List ( String, String )
deleteVirtualMFADeviceRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SerialNumber" data.serialNumber


deletionTaskFailureReasonTypeEncoder : DeletionTaskFailureReasonType -> List ( String, String )
deletionTaskFailureReasonTypeEncoder data =
    []
        |> (case data.reason of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Reason" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.roleUsageList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs roleUsageTypeEncoder "") "RoleUsageList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


detachGroupPolicyRequestEncoder : DetachGroupPolicyRequest -> List ( String, String )
detachGroupPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn


detachRolePolicyRequestEncoder : DetachRolePolicyRequest -> List ( String, String )
detachRolePolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn


detachUserPolicyRequestEncoder : DetachUserPolicyRequest -> List ( String, String )
detachUserPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn


enableMFADeviceRequestEncoder : EnableMFADeviceRequest -> List ( String, String )
enableMFADeviceRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SerialNumber" data.serialNumber
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AuthenticationCode1" data.authenticationCode1
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AuthenticationCode2" data.authenticationCode2


entityDetailsEncoder : EntityDetails -> List ( String, String )
entityDetailsEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs entityInfoEncoder "EntityInfo" data.entityInfo
        |> (case data.lastAuthenticated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastAuthenticated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


entityInfoEncoder : EntityInfo -> List ( String, String )
entityInfoEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" data.arn
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Name" data.name
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Type" data.type_
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Id" data.id
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


errorDetailsEncoder : ErrorDetails -> List ( String, String )
errorDetailsEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Message" data.message
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Code" data.code


evaluationResultEncoder : EvaluationResult -> List ( String, String )
evaluationResultEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "EvalActionName" data.evalActionName
        |> (case data.evalResourceName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "EvalResourceName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "EvalDecision" data.evalDecision
        |> (case data.matchedStatements of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs statementEncoder "") "MatchedStatements" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.missingContextValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "MissingContextValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.organizationsDecisionDetail of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs organizationsDecisionDetailEncoder "OrganizationsDecisionDetail" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.evalDecisionDetails of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "EvalDecisionDetails" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resourceSpecificResults of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs resourceSpecificResultEncoder "") "ResourceSpecificResults" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


generateCredentialReportResponseEncoder : GenerateCredentialReportResponse -> List ( String, String )
generateCredentialReportResponseEncoder data =
    []
        |> (case data.state of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "State" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


generateOrganizationsAccessReportRequestEncoder : GenerateOrganizationsAccessReportRequest -> List ( String, String )
generateOrganizationsAccessReportRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "EntityPath" data.entityPath
        |> (case data.organizationsPolicyId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "OrganizationsPolicyId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


generateOrganizationsAccessReportResponseEncoder : GenerateOrganizationsAccessReportResponse -> List ( String, String )
generateOrganizationsAccessReportResponseEncoder data =
    []
        |> (case data.jobId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "JobId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


generateServiceLastAccessedDetailsRequestEncoder : GenerateServiceLastAccessedDetailsRequest -> List ( String, String )
generateServiceLastAccessedDetailsRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" data.arn


generateServiceLastAccessedDetailsResponseEncoder : GenerateServiceLastAccessedDetailsResponse -> List ( String, String )
generateServiceLastAccessedDetailsResponseEncoder data =
    []
        |> (case data.jobId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "JobId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getAccessKeyLastUsedRequestEncoder : GetAccessKeyLastUsedRequest -> List ( String, String )
getAccessKeyLastUsedRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AccessKeyId" data.accessKeyId


getAccessKeyLastUsedResponseEncoder : GetAccessKeyLastUsedResponse -> List ( String, String )
getAccessKeyLastUsedResponseEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.accessKeyLastUsed of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs accessKeyLastUsedEncoder "AccessKeyLastUsed" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getAccountAuthorizationDetailsRequestEncoder : GetAccountAuthorizationDetailsRequest -> List ( String, String )
getAccountAuthorizationDetailsRequestEncoder data =
    []
        |> (case data.filter of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "") "Filter" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getAccountAuthorizationDetailsResponseEncoder : GetAccountAuthorizationDetailsResponse -> List ( String, String )
getAccountAuthorizationDetailsResponseEncoder data =
    []
        |> (case data.userDetailList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs userDetailEncoder "") "UserDetailList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.groupDetailList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs groupDetailEncoder "") "GroupDetailList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.roleDetailList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs roleDetailEncoder "") "RoleDetailList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs managedPolicyDetailEncoder "") "Policies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getAccountPasswordPolicyResponseEncoder : GetAccountPasswordPolicyResponse -> List ( String, String )
getAccountPasswordPolicyResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs passwordPolicyEncoder "PasswordPolicy" data.passwordPolicy


getAccountSummaryResponseEncoder : GetAccountSummaryResponse -> List ( String, String )
getAccountSummaryResponseEncoder data =
    []
        |> (case data.summaryMap of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "SummaryMap" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getContextKeysForCustomPolicyRequestEncoder : GetContextKeysForCustomPolicyRequest -> List ( String, String )
getContextKeysForCustomPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "PolicyInputList" data.policyInputList


getContextKeysForPolicyResponseEncoder : GetContextKeysForPolicyResponse -> List ( String, String )
getContextKeysForPolicyResponseEncoder data =
    []
        |> (case data.contextKeyNames of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "ContextKeyNames" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getContextKeysForPrincipalPolicyRequestEncoder : GetContextKeysForPrincipalPolicyRequest -> List ( String, String )
getContextKeysForPrincipalPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicySourceArn" data.policySourceArn
        |> (case data.policyInputList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "PolicyInputList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getCredentialReportResponseEncoder : GetCredentialReportResponse -> List ( String, String )
getCredentialReportResponseEncoder data =
    []
        |> (case data.content of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Content" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.reportFormat of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "ReportFormat" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.generatedTime of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "GeneratedTime" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getGroupPolicyRequestEncoder : GetGroupPolicyRequest -> List ( String, String )
getGroupPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName


getGroupPolicyResponseEncoder : GetGroupPolicyResponse -> List ( String, String )
getGroupPolicyResponseEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyDocument" data.policyDocument


getGroupRequestEncoder : GetGroupRequest -> List ( String, String )
getGroupRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getGroupResponseEncoder : GetGroupResponse -> List ( String, String )
getGroupResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs groupEncoder "Group" data.group
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs userEncoder "") "Users" data.users
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getInstanceProfileRequestEncoder : GetInstanceProfileRequest -> List ( String, String )
getInstanceProfileRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "InstanceProfileName" data.instanceProfileName


getInstanceProfileResponseEncoder : GetInstanceProfileResponse -> List ( String, String )
getInstanceProfileResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs instanceProfileEncoder "InstanceProfile" data.instanceProfile


getLoginProfileRequestEncoder : GetLoginProfileRequest -> List ( String, String )
getLoginProfileRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName


getLoginProfileResponseEncoder : GetLoginProfileResponse -> List ( String, String )
getLoginProfileResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs loginProfileEncoder "LoginProfile" data.loginProfile


getOpenIDConnectProviderRequestEncoder : GetOpenIDConnectProviderRequest -> List ( String, String )
getOpenIDConnectProviderRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "OpenIDConnectProviderArn" data.openIDConnectProviderArn


getOpenIDConnectProviderResponseEncoder : GetOpenIDConnectProviderResponse -> List ( String, String )
getOpenIDConnectProviderResponseEncoder data =
    []
        |> (case data.url of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Url" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.clientIDList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "ClientIDList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.thumbprintList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "ThumbprintList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.createDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getOrganizationsAccessReportRequestEncoder : GetOrganizationsAccessReportRequest -> List ( String, String )
getOrganizationsAccessReportRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "JobId" data.jobId
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sortKey of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "SortKey" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getOrganizationsAccessReportResponseEncoder : GetOrganizationsAccessReportResponse -> List ( String, String )
getOrganizationsAccessReportResponseEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "JobStatus" data.jobStatus
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "JobCreationDate" data.jobCreationDate
        |> (case data.jobCompletionDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "JobCompletionDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numberOfServicesAccessible of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "NumberOfServicesAccessible" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.numberOfServicesNotAccessed of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "NumberOfServicesNotAccessed" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.accessDetails of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs accessDetailEncoder "") "AccessDetails" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.errorDetails of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs errorDetailsEncoder "ErrorDetails" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getPolicyRequestEncoder : GetPolicyRequest -> List ( String, String )
getPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn


getPolicyResponseEncoder : GetPolicyResponse -> List ( String, String )
getPolicyResponseEncoder data =
    []
        |> (case data.policy of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs policyEncoder "Policy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getPolicyVersionRequestEncoder : GetPolicyVersionRequest -> List ( String, String )
getPolicyVersionRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "VersionId" data.versionId


getPolicyVersionResponseEncoder : GetPolicyVersionResponse -> List ( String, String )
getPolicyVersionResponseEncoder data =
    []
        |> (case data.policyVersion of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs policyVersionEncoder "PolicyVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getRolePolicyRequestEncoder : GetRolePolicyRequest -> List ( String, String )
getRolePolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName


getRolePolicyResponseEncoder : GetRolePolicyResponse -> List ( String, String )
getRolePolicyResponseEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyDocument" data.policyDocument


getRoleRequestEncoder : GetRoleRequest -> List ( String, String )
getRoleRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName


getRoleResponseEncoder : GetRoleResponse -> List ( String, String )
getRoleResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs roleEncoder "Role" data.role


getSAMLProviderRequestEncoder : GetSAMLProviderRequest -> List ( String, String )
getSAMLProviderRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SAMLProviderArn" data.sAMLProviderArn


getSAMLProviderResponseEncoder : GetSAMLProviderResponse -> List ( String, String )
getSAMLProviderResponseEncoder data =
    []
        |> (case data.sAMLMetadataDocument of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SAMLMetadataDocument" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.createDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.validUntil of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ValidUntil" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getSSHPublicKeyRequestEncoder : GetSSHPublicKeyRequest -> List ( String, String )
getSSHPublicKeyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SSHPublicKeyId" data.sSHPublicKeyId
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Encoding" data.encoding


getSSHPublicKeyResponseEncoder : GetSSHPublicKeyResponse -> List ( String, String )
getSSHPublicKeyResponseEncoder data =
    []
        |> (case data.sSHPublicKey of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs sSHPublicKeyEncoder "SSHPublicKey" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getServerCertificateRequestEncoder : GetServerCertificateRequest -> List ( String, String )
getServerCertificateRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServerCertificateName" data.serverCertificateName


getServerCertificateResponseEncoder : GetServerCertificateResponse -> List ( String, String )
getServerCertificateResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs serverCertificateEncoder "ServerCertificate" data.serverCertificate


getServiceLastAccessedDetailsRequestEncoder : GetServiceLastAccessedDetailsRequest -> List ( String, String )
getServiceLastAccessedDetailsRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "JobId" data.jobId
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getServiceLastAccessedDetailsResponseEncoder : GetServiceLastAccessedDetailsResponse -> List ( String, String )
getServiceLastAccessedDetailsResponseEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "JobStatus" data.jobStatus
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "JobCreationDate" data.jobCreationDate
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs serviceLastAccessedEncoder "") "ServicesLastAccessed" data.servicesLastAccessed
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "JobCompletionDate" data.jobCompletionDate
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.error of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs errorDetailsEncoder "Error" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getServiceLastAccessedDetailsWithEntitiesRequestEncoder : GetServiceLastAccessedDetailsWithEntitiesRequest -> List ( String, String )
getServiceLastAccessedDetailsWithEntitiesRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "JobId" data.jobId
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceNamespace" data.serviceNamespace
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getServiceLastAccessedDetailsWithEntitiesResponseEncoder : GetServiceLastAccessedDetailsWithEntitiesResponse -> List ( String, String )
getServiceLastAccessedDetailsWithEntitiesResponseEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "JobStatus" data.jobStatus
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "JobCreationDate" data.jobCreationDate
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "JobCompletionDate" data.jobCompletionDate
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs entityDetailsEncoder "") "EntityDetailsList" data.entityDetailsList
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.error of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs errorDetailsEncoder "Error" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getServiceLinkedRoleDeletionStatusRequestEncoder : GetServiceLinkedRoleDeletionStatusRequest -> List ( String, String )
getServiceLinkedRoleDeletionStatusRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "DeletionTaskId" data.deletionTaskId


getServiceLinkedRoleDeletionStatusResponseEncoder : GetServiceLinkedRoleDeletionStatusResponse -> List ( String, String )
getServiceLinkedRoleDeletionStatusResponseEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Status" data.status
        |> (case data.reason of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs deletionTaskFailureReasonTypeEncoder "Reason" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getUserPolicyRequestEncoder : GetUserPolicyRequest -> List ( String, String )
getUserPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName


getUserPolicyResponseEncoder : GetUserPolicyResponse -> List ( String, String )
getUserPolicyResponseEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyDocument" data.policyDocument


getUserRequestEncoder : GetUserRequest -> List ( String, String )
getUserRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


getUserResponseEncoder : GetUserResponse -> List ( String, String )
getUserResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs userEncoder "User" data.user


groupEncoder : Group -> List ( String, String )
groupEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" data.path
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupId" data.groupId
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" data.arn
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" data.createDate


groupDetailEncoder : GroupDetail -> List ( String, String )
groupDetailEncoder data =
    []
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.groupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.groupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.arn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.createDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.groupPolicyList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyDetailEncoder "") "GroupPolicyList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.attachedManagedPolicies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs attachedPolicyEncoder "") "AttachedManagedPolicies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


instanceProfileEncoder : InstanceProfile -> List ( String, String )
instanceProfileEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" data.path
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "InstanceProfileName" data.instanceProfileName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "InstanceProfileId" data.instanceProfileId
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" data.arn
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" data.createDate
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs roleEncoder "") "Roles" data.roles


listAccessKeysRequestEncoder : ListAccessKeysRequest -> List ( String, String )
listAccessKeysRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listAccessKeysResponseEncoder : ListAccessKeysResponse -> List ( String, String )
listAccessKeysResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs accessKeyMetadataEncoder "") "AccessKeyMetadata" data.accessKeyMetadata
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listAccountAliasesRequestEncoder : ListAccountAliasesRequest -> List ( String, String )
listAccountAliasesRequestEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listAccountAliasesResponseEncoder : ListAccountAliasesResponse -> List ( String, String )
listAccountAliasesResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "AccountAliases" data.accountAliases
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listAttachedGroupPoliciesRequestEncoder : ListAttachedGroupPoliciesRequest -> List ( String, String )
listAttachedGroupPoliciesRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> (case data.pathPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PathPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listAttachedGroupPoliciesResponseEncoder : ListAttachedGroupPoliciesResponse -> List ( String, String )
listAttachedGroupPoliciesResponseEncoder data =
    []
        |> (case data.attachedPolicies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs attachedPolicyEncoder "") "AttachedPolicies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listAttachedRolePoliciesRequestEncoder : ListAttachedRolePoliciesRequest -> List ( String, String )
listAttachedRolePoliciesRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> (case data.pathPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PathPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listAttachedRolePoliciesResponseEncoder : ListAttachedRolePoliciesResponse -> List ( String, String )
listAttachedRolePoliciesResponseEncoder data =
    []
        |> (case data.attachedPolicies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs attachedPolicyEncoder "") "AttachedPolicies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listAttachedUserPoliciesRequestEncoder : ListAttachedUserPoliciesRequest -> List ( String, String )
listAttachedUserPoliciesRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> (case data.pathPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PathPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listAttachedUserPoliciesResponseEncoder : ListAttachedUserPoliciesResponse -> List ( String, String )
listAttachedUserPoliciesResponseEncoder data =
    []
        |> (case data.attachedPolicies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs attachedPolicyEncoder "") "AttachedPolicies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listEntitiesForPolicyRequestEncoder : ListEntitiesForPolicyRequest -> List ( String, String )
listEntitiesForPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn
        |> (case data.entityFilter of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "EntityFilter" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.pathPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PathPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyUsageFilter of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "PolicyUsageFilter" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listEntitiesForPolicyResponseEncoder : ListEntitiesForPolicyResponse -> List ( String, String )
listEntitiesForPolicyResponseEncoder data =
    []
        |> (case data.policyGroups of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyGroupEncoder "") "PolicyGroups" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyUsers of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyUserEncoder "") "PolicyUsers" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyRoles of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyRoleEncoder "") "PolicyRoles" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listGroupPoliciesRequestEncoder : ListGroupPoliciesRequest -> List ( String, String )
listGroupPoliciesRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listGroupPoliciesResponseEncoder : ListGroupPoliciesResponse -> List ( String, String )
listGroupPoliciesResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "PolicyNames" data.policyNames
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listGroupsForUserRequestEncoder : ListGroupsForUserRequest -> List ( String, String )
listGroupsForUserRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listGroupsForUserResponseEncoder : ListGroupsForUserResponse -> List ( String, String )
listGroupsForUserResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs groupEncoder "") "Groups" data.groups
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listGroupsRequestEncoder : ListGroupsRequest -> List ( String, String )
listGroupsRequestEncoder data =
    []
        |> (case data.pathPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PathPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listGroupsResponseEncoder : ListGroupsResponse -> List ( String, String )
listGroupsResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs groupEncoder "") "Groups" data.groups
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listInstanceProfilesForRoleRequestEncoder : ListInstanceProfilesForRoleRequest -> List ( String, String )
listInstanceProfilesForRoleRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listInstanceProfilesForRoleResponseEncoder : ListInstanceProfilesForRoleResponse -> List ( String, String )
listInstanceProfilesForRoleResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs instanceProfileEncoder "") "InstanceProfiles" data.instanceProfiles
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listInstanceProfilesRequestEncoder : ListInstanceProfilesRequest -> List ( String, String )
listInstanceProfilesRequestEncoder data =
    []
        |> (case data.pathPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PathPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listInstanceProfilesResponseEncoder : ListInstanceProfilesResponse -> List ( String, String )
listInstanceProfilesResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs instanceProfileEncoder "") "InstanceProfiles" data.instanceProfiles
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listMFADevicesRequestEncoder : ListMFADevicesRequest -> List ( String, String )
listMFADevicesRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listMFADevicesResponseEncoder : ListMFADevicesResponse -> List ( String, String )
listMFADevicesResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs mFADeviceEncoder "") "MFADevices" data.mFADevices
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listOpenIDConnectProvidersRequestEncoder : ListOpenIDConnectProvidersRequest -> List ( String, String )
listOpenIDConnectProvidersRequestEncoder data =
    []


listOpenIDConnectProvidersResponseEncoder : ListOpenIDConnectProvidersResponse -> List ( String, String )
listOpenIDConnectProvidersResponseEncoder data =
    []
        |> (case data.openIDConnectProviderList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs openIDConnectProviderListEntryEncoder "") "OpenIDConnectProviderList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listPoliciesGrantingServiceAccessEntryEncoder : ListPoliciesGrantingServiceAccessEntry -> List ( String, String )
listPoliciesGrantingServiceAccessEntryEncoder data =
    []
        |> (case data.serviceNamespace of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceNamespace" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyGrantingServiceAccessEncoder "") "Policies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listPoliciesGrantingServiceAccessRequestEncoder : ListPoliciesGrantingServiceAccessRequest -> List ( String, String )
listPoliciesGrantingServiceAccessRequestEncoder data =
    []
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" data.arn
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "ServiceNamespaces" data.serviceNamespaces


listPoliciesGrantingServiceAccessResponseEncoder : ListPoliciesGrantingServiceAccessResponse -> List ( String, String )
listPoliciesGrantingServiceAccessResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs listPoliciesGrantingServiceAccessEntryEncoder "") "PoliciesGrantingServiceAccess" data.policiesGrantingServiceAccess
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listPoliciesRequestEncoder : ListPoliciesRequest -> List ( String, String )
listPoliciesRequestEncoder data =
    []
        |> (case data.scope of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Scope" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.onlyAttached of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "OnlyAttached" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.pathPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PathPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyUsageFilter of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "PolicyUsageFilter" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listPoliciesResponseEncoder : ListPoliciesResponse -> List ( String, String )
listPoliciesResponseEncoder data =
    []
        |> (case data.policies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyEncoder "") "Policies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listPolicyVersionsRequestEncoder : ListPolicyVersionsRequest -> List ( String, String )
listPolicyVersionsRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listPolicyVersionsResponseEncoder : ListPolicyVersionsResponse -> List ( String, String )
listPolicyVersionsResponseEncoder data =
    []
        |> (case data.versions of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyVersionEncoder "") "Versions" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listRolePoliciesRequestEncoder : ListRolePoliciesRequest -> List ( String, String )
listRolePoliciesRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listRolePoliciesResponseEncoder : ListRolePoliciesResponse -> List ( String, String )
listRolePoliciesResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "PolicyNames" data.policyNames
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listRoleTagsRequestEncoder : ListRoleTagsRequest -> List ( String, String )
listRoleTagsRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listRoleTagsResponseEncoder : ListRoleTagsResponse -> List ( String, String )
listRoleTagsResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listRolesRequestEncoder : ListRolesRequest -> List ( String, String )
listRolesRequestEncoder data =
    []
        |> (case data.pathPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PathPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listRolesResponseEncoder : ListRolesResponse -> List ( String, String )
listRolesResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs roleEncoder "") "Roles" data.roles
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listSAMLProvidersRequestEncoder : ListSAMLProvidersRequest -> List ( String, String )
listSAMLProvidersRequestEncoder data =
    []


listSAMLProvidersResponseEncoder : ListSAMLProvidersResponse -> List ( String, String )
listSAMLProvidersResponseEncoder data =
    []
        |> (case data.sAMLProviderList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs sAMLProviderListEntryEncoder "") "SAMLProviderList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listSSHPublicKeysRequestEncoder : ListSSHPublicKeysRequest -> List ( String, String )
listSSHPublicKeysRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listSSHPublicKeysResponseEncoder : ListSSHPublicKeysResponse -> List ( String, String )
listSSHPublicKeysResponseEncoder data =
    []
        |> (case data.sSHPublicKeys of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs sSHPublicKeyMetadataEncoder "") "SSHPublicKeys" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listServerCertificatesRequestEncoder : ListServerCertificatesRequest -> List ( String, String )
listServerCertificatesRequestEncoder data =
    []
        |> (case data.pathPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PathPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listServerCertificatesResponseEncoder : ListServerCertificatesResponse -> List ( String, String )
listServerCertificatesResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs serverCertificateMetadataEncoder "") "ServerCertificateMetadataList" data.serverCertificateMetadataList
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listServiceSpecificCredentialsRequestEncoder : ListServiceSpecificCredentialsRequest -> List ( String, String )
listServiceSpecificCredentialsRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.serviceName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listServiceSpecificCredentialsResponseEncoder : ListServiceSpecificCredentialsResponse -> List ( String, String )
listServiceSpecificCredentialsResponseEncoder data =
    []
        |> (case data.serviceSpecificCredentials of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs serviceSpecificCredentialMetadataEncoder "") "ServiceSpecificCredentials" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listSigningCertificatesRequestEncoder : ListSigningCertificatesRequest -> List ( String, String )
listSigningCertificatesRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listSigningCertificatesResponseEncoder : ListSigningCertificatesResponse -> List ( String, String )
listSigningCertificatesResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs signingCertificateEncoder "") "Certificates" data.certificates
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listUserPoliciesRequestEncoder : ListUserPoliciesRequest -> List ( String, String )
listUserPoliciesRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listUserPoliciesResponseEncoder : ListUserPoliciesResponse -> List ( String, String )
listUserPoliciesResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "PolicyNames" data.policyNames
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listUserTagsRequestEncoder : ListUserTagsRequest -> List ( String, String )
listUserTagsRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listUserTagsResponseEncoder : ListUserTagsResponse -> List ( String, String )
listUserTagsResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listUsersRequestEncoder : ListUsersRequest -> List ( String, String )
listUsersRequestEncoder data =
    []
        |> (case data.pathPrefix of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PathPrefix" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listUsersResponseEncoder : ListUsersResponse -> List ( String, String )
listUsersResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs userEncoder "") "Users" data.users
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listVirtualMFADevicesRequestEncoder : ListVirtualMFADevicesRequest -> List ( String, String )
listVirtualMFADevicesRequestEncoder data =
    []
        |> (case data.assignmentStatus of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "AssignmentStatus" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


listVirtualMFADevicesResponseEncoder : ListVirtualMFADevicesResponse -> List ( String, String )
listVirtualMFADevicesResponseEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs virtualMFADeviceEncoder "") "VirtualMFADevices" data.virtualMFADevices
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


loginProfileEncoder : LoginProfile -> List ( String, String )
loginProfileEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" data.createDate
        |> (case data.passwordResetRequired of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PasswordResetRequired" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


mFADeviceEncoder : MFADevice -> List ( String, String )
mFADeviceEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SerialNumber" data.serialNumber
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EnableDate" data.enableDate


managedPolicyDetailEncoder : ManagedPolicyDetail -> List ( String, String )
managedPolicyDetailEncoder data =
    []
        |> (case data.policyName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.arn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.defaultVersionId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "DefaultVersionId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.attachmentCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "AttachmentCount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.permissionsBoundaryUsageCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "PermissionsBoundaryUsageCount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isAttachable of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsAttachable" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.createDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.updateDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "UpdateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyVersionList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyVersionEncoder "") "PolicyVersionList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


openIDConnectProviderListEntryEncoder : OpenIDConnectProviderListEntry -> List ( String, String )
openIDConnectProviderListEntryEncoder data =
    []
        |> (case data.arn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


organizationsDecisionDetailEncoder : OrganizationsDecisionDetail -> List ( String, String )
organizationsDecisionDetailEncoder data =
    []
        |> (case data.allowedByOrganizations of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AllowedByOrganizations" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


passwordPolicyEncoder : PasswordPolicy -> List ( String, String )
passwordPolicyEncoder data =
    []
        |> (case data.minimumPasswordLength of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MinimumPasswordLength" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.requireSymbols of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RequireSymbols" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.requireNumbers of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RequireNumbers" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.requireUppercaseCharacters of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RequireUppercaseCharacters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.requireLowercaseCharacters of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RequireLowercaseCharacters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.allowUsersToChangePassword of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AllowUsersToChangePassword" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.expirePasswords of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "ExpirePasswords" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxPasswordAge of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxPasswordAge" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.passwordReusePrevention of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "PasswordReusePrevention" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hardExpiry of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HardExpiry" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


policyEncoder : Policy -> List ( String, String )
policyEncoder data =
    []
        |> (case data.policyName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.arn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.defaultVersionId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "DefaultVersionId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.attachmentCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "AttachmentCount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.permissionsBoundaryUsageCount of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "PermissionsBoundaryUsageCount" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isAttachable of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsAttachable" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.createDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.updateDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "UpdateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


policyDetailEncoder : PolicyDetail -> List ( String, String )
policyDetailEncoder data =
    []
        |> (case data.policyName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.policyDocument of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyDocument" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


policyGrantingServiceAccessEncoder : PolicyGrantingServiceAccess -> List ( String, String )
policyGrantingServiceAccessEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "PolicyType" data.policyType
        |> (case data.policyArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.entityType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "EntityType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.entityName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "EntityName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


policyGroupEncoder : PolicyGroup -> List ( String, String )
policyGroupEncoder data =
    []
        |> (case data.groupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.groupId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


policyRoleEncoder : PolicyRole -> List ( String, String )
policyRoleEncoder data =
    []
        |> (case data.roleName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.roleId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


policyUserEncoder : PolicyUser -> List ( String, String )
policyUserEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.userId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


policyVersionEncoder : PolicyVersion -> List ( String, String )
policyVersionEncoder data =
    []
        |> (case data.document of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Document" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.versionId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "VersionId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isDefaultVersion of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsDefaultVersion" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.createDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


positionEncoder : Position -> List ( String, String )
positionEncoder data =
    []
        |> (case data.line of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "Line" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.column of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "Column" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


putGroupPolicyRequestEncoder : PutGroupPolicyRequest -> List ( String, String )
putGroupPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyDocument" data.policyDocument


putRolePermissionsBoundaryRequestEncoder : PutRolePermissionsBoundaryRequest -> List ( String, String )
putRolePermissionsBoundaryRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PermissionsBoundary" data.permissionsBoundary


putRolePolicyRequestEncoder : PutRolePolicyRequest -> List ( String, String )
putRolePolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyDocument" data.policyDocument


putUserPermissionsBoundaryRequestEncoder : PutUserPermissionsBoundaryRequest -> List ( String, String )
putUserPermissionsBoundaryRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PermissionsBoundary" data.permissionsBoundary


putUserPolicyRequestEncoder : PutUserPolicyRequest -> List ( String, String )
putUserPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyName" data.policyName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyDocument" data.policyDocument


removeClientIDFromOpenIDConnectProviderRequestEncoder : RemoveClientIDFromOpenIDConnectProviderRequest -> List ( String, String )
removeClientIDFromOpenIDConnectProviderRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "OpenIDConnectProviderArn" data.openIDConnectProviderArn
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ClientID" data.clientID


removeRoleFromInstanceProfileRequestEncoder : RemoveRoleFromInstanceProfileRequest -> List ( String, String )
removeRoleFromInstanceProfileRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "InstanceProfileName" data.instanceProfileName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName


removeUserFromGroupRequestEncoder : RemoveUserFromGroupRequest -> List ( String, String )
removeUserFromGroupRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName


resetServiceSpecificCredentialRequestEncoder : ResetServiceSpecificCredentialRequest -> List ( String, String )
resetServiceSpecificCredentialRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceSpecificCredentialId" data.serviceSpecificCredentialId


resetServiceSpecificCredentialResponseEncoder : ResetServiceSpecificCredentialResponse -> List ( String, String )
resetServiceSpecificCredentialResponseEncoder data =
    []
        |> (case data.serviceSpecificCredential of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs serviceSpecificCredentialEncoder "ServiceSpecificCredential" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


resourceSpecificResultEncoder : ResourceSpecificResult -> List ( String, String )
resourceSpecificResultEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "EvalResourceName" data.evalResourceName
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "EvalResourceDecision" data.evalResourceDecision
        |> (case data.matchedStatements of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs statementEncoder "") "MatchedStatements" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.missingContextValues of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "MissingContextValues" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.evalDecisionDetails of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "EvalDecisionDetails" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


resyncMFADeviceRequestEncoder : ResyncMFADeviceRequest -> List ( String, String )
resyncMFADeviceRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SerialNumber" data.serialNumber
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AuthenticationCode1" data.authenticationCode1
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AuthenticationCode2" data.authenticationCode2


roleEncoder : Role -> List ( String, String )
roleEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" data.path
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleId" data.roleId
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" data.arn
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" data.createDate
        |> (case data.assumeRolePolicyDocument of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AssumeRolePolicyDocument" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxSessionDuration of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxSessionDuration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.permissionsBoundary of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs attachedPermissionsBoundaryEncoder "PermissionsBoundary" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


roleDetailEncoder : RoleDetail -> List ( String, String )
roleDetailEncoder data =
    []
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.roleName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.roleId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.arn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.createDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.assumeRolePolicyDocument of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AssumeRolePolicyDocument" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.instanceProfileList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs instanceProfileEncoder "") "InstanceProfileList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.rolePolicyList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyDetailEncoder "") "RolePolicyList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.attachedManagedPolicies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs attachedPolicyEncoder "") "AttachedManagedPolicies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.permissionsBoundary of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs attachedPermissionsBoundaryEncoder "PermissionsBoundary" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


roleUsageTypeEncoder : RoleUsageType -> List ( String, String )
roleUsageTypeEncoder data =
    []
        |> (case data.region of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Region" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resources of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "Resources" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


sAMLProviderListEntryEncoder : SAMLProviderListEntry -> List ( String, String )
sAMLProviderListEntryEncoder data =
    []
        |> (case data.arn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.validUntil of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "ValidUntil" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.createDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


sSHPublicKeyEncoder : SSHPublicKey -> List ( String, String )
sSHPublicKeyEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SSHPublicKeyId" data.sSHPublicKeyId
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Fingerprint" data.fingerprint
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SSHPublicKeyBody" data.sSHPublicKeyBody
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Status" data.status
        |> (case data.uploadDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "UploadDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


sSHPublicKeyMetadataEncoder : SSHPublicKeyMetadata -> List ( String, String )
sSHPublicKeyMetadataEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SSHPublicKeyId" data.sSHPublicKeyId
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Status" data.status
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "UploadDate" data.uploadDate


serverCertificateEncoder : ServerCertificate -> List ( String, String )
serverCertificateEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs serverCertificateMetadataEncoder "ServerCertificateMetadata" data.serverCertificateMetadata
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "CertificateBody" data.certificateBody
        |> (case data.certificateChain of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "CertificateChain" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


serverCertificateMetadataEncoder : ServerCertificateMetadata -> List ( String, String )
serverCertificateMetadataEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" data.path
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServerCertificateName" data.serverCertificateName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServerCertificateId" data.serverCertificateId
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" data.arn
        |> (case data.uploadDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "UploadDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.expiration of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "Expiration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


serviceLastAccessedEncoder : ServiceLastAccessed -> List ( String, String )
serviceLastAccessedEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceName" data.serviceName
        |> (case data.lastAuthenticated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "LastAuthenticated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceNamespace" data.serviceNamespace
        |> (case data.lastAuthenticatedEntity of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "LastAuthenticatedEntity" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.totalAuthenticatedEntities of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "TotalAuthenticatedEntities" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


serviceSpecificCredentialEncoder : ServiceSpecificCredential -> List ( String, String )
serviceSpecificCredentialEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" data.createDate
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceName" data.serviceName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceUserName" data.serviceUserName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServicePassword" data.servicePassword
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceSpecificCredentialId" data.serviceSpecificCredentialId
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Status" data.status


serviceSpecificCredentialMetadataEncoder : ServiceSpecificCredentialMetadata -> List ( String, String )
serviceSpecificCredentialMetadataEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Status" data.status
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceUserName" data.serviceUserName
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" data.createDate
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceSpecificCredentialId" data.serviceSpecificCredentialId
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceName" data.serviceName


setDefaultPolicyVersionRequestEncoder : SetDefaultPolicyVersionRequest -> List ( String, String )
setDefaultPolicyVersionRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyArn" data.policyArn
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "VersionId" data.versionId


setSecurityTokenServicePreferencesRequestEncoder : SetSecurityTokenServicePreferencesRequest -> List ( String, String )
setSecurityTokenServicePreferencesRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "GlobalEndpointTokenVersion" data.globalEndpointTokenVersion


signingCertificateEncoder : SigningCertificate -> List ( String, String )
signingCertificateEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "CertificateId" data.certificateId
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "CertificateBody" data.certificateBody
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Status" data.status
        |> (case data.uploadDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "UploadDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


simulateCustomPolicyRequestEncoder : SimulateCustomPolicyRequest -> List ( String, String )
simulateCustomPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "PolicyInputList" data.policyInputList
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "ActionNames" data.actionNames
        |> (case data.resourceArns of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "ResourceArns" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resourcePolicy of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ResourcePolicy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resourceOwner of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ResourceOwner" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.callerArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "CallerArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.contextEntries of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs contextEntryEncoder "") "ContextEntries" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resourceHandlingOption of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ResourceHandlingOption" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


simulatePolicyResponseEncoder : SimulatePolicyResponse -> List ( String, String )
simulatePolicyResponseEncoder data =
    []
        |> (case data.evaluationResults of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs evaluationResultEncoder "") "EvaluationResults" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.isTruncated of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "IsTruncated" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


simulatePrincipalPolicyRequestEncoder : SimulatePrincipalPolicyRequest -> List ( String, String )
simulatePrincipalPolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicySourceArn" data.policySourceArn
        |> (case data.policyInputList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "PolicyInputList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "ActionNames" data.actionNames
        |> (case data.resourceArns of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "ResourceArns" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resourcePolicy of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ResourcePolicy" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resourceOwner of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ResourceOwner" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.callerArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "CallerArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.contextEntries of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs contextEntryEncoder "") "ContextEntries" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.resourceHandlingOption of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ResourceHandlingOption" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxItems of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxItems" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.marker of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Marker" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


statementEncoder : Statement -> List ( String, String )
statementEncoder data =
    []
        |> (case data.sourcePolicyId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SourcePolicyId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.sourcePolicyType of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "SourcePolicyType" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.startPosition of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs positionEncoder "StartPosition" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.endPosition of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs positionEncoder "EndPosition" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


tagEncoder : Tag -> List ( String, String )
tagEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Key" data.key
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Value" data.value


tagRoleRequestEncoder : TagRoleRequest -> List ( String, String )
tagRoleRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags


tagUserRequestEncoder : TagUserRequest -> List ( String, String )
tagUserRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" data.tags


untagRoleRequestEncoder : UntagRoleRequest -> List ( String, String )
untagRoleRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "TagKeys" data.tagKeys


untagUserRequestEncoder : UntagUserRequest -> List ( String, String )
untagUserRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "TagKeys" data.tagKeys


updateAccessKeyRequestEncoder : UpdateAccessKeyRequest -> List ( String, String )
updateAccessKeyRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "AccessKeyId" data.accessKeyId
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Status" data.status


updateAccountPasswordPolicyRequestEncoder : UpdateAccountPasswordPolicyRequest -> List ( String, String )
updateAccountPasswordPolicyRequestEncoder data =
    []
        |> (case data.minimumPasswordLength of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MinimumPasswordLength" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.requireSymbols of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RequireSymbols" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.requireNumbers of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RequireNumbers" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.requireUppercaseCharacters of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RequireUppercaseCharacters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.requireLowercaseCharacters of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "RequireLowercaseCharacters" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.allowUsersToChangePassword of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "AllowUsersToChangePassword" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxPasswordAge of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxPasswordAge" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.passwordReusePrevention of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "PasswordReusePrevention" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.hardExpiry of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "HardExpiry" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateAssumeRolePolicyRequestEncoder : UpdateAssumeRolePolicyRequest -> List ( String, String )
updateAssumeRolePolicyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PolicyDocument" data.policyDocument


updateGroupRequestEncoder : UpdateGroupRequest -> List ( String, String )
updateGroupRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "GroupName" data.groupName
        |> (case data.newPath of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "NewPath" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.newGroupName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "NewGroupName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateLoginProfileRequestEncoder : UpdateLoginProfileRequest -> List ( String, String )
updateLoginProfileRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> (case data.password of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Password" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.passwordResetRequired of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "PasswordResetRequired" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateOpenIDConnectProviderThumbprintRequestEncoder : UpdateOpenIDConnectProviderThumbprintRequest -> List ( String, String )
updateOpenIDConnectProviderThumbprintRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "OpenIDConnectProviderArn" data.openIDConnectProviderArn
        |> AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "ThumbprintList" data.thumbprintList


updateRoleDescriptionRequestEncoder : UpdateRoleDescriptionRequest -> List ( String, String )
updateRoleDescriptionRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Description" data.description


updateRoleDescriptionResponseEncoder : UpdateRoleDescriptionResponse -> List ( String, String )
updateRoleDescriptionResponseEncoder data =
    []
        |> (case data.role of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs roleEncoder "Role" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateRoleRequestEncoder : UpdateRoleRequest -> List ( String, String )
updateRoleRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "RoleName" data.roleName
        |> (case data.description of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Description" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.maxSessionDuration of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs toString "MaxSessionDuration" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateRoleResponseEncoder : UpdateRoleResponse -> List ( String, String )
updateRoleResponseEncoder data =
    []


updateSAMLProviderRequestEncoder : UpdateSAMLProviderRequest -> List ( String, String )
updateSAMLProviderRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SAMLMetadataDocument" data.sAMLMetadataDocument
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SAMLProviderArn" data.sAMLProviderArn


updateSAMLProviderResponseEncoder : UpdateSAMLProviderResponse -> List ( String, String )
updateSAMLProviderResponseEncoder data =
    []
        |> (case data.sAMLProviderArn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SAMLProviderArn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateSSHPublicKeyRequestEncoder : UpdateSSHPublicKeyRequest -> List ( String, String )
updateSSHPublicKeyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SSHPublicKeyId" data.sSHPublicKeyId
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Status" data.status


updateServerCertificateRequestEncoder : UpdateServerCertificateRequest -> List ( String, String )
updateServerCertificateRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServerCertificateName" data.serverCertificateName
        |> (case data.newPath of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "NewPath" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.newServerCertificateName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "NewServerCertificateName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


updateServiceSpecificCredentialRequestEncoder : UpdateServiceSpecificCredentialRequest -> List ( String, String )
updateServiceSpecificCredentialRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServiceSpecificCredentialId" data.serviceSpecificCredentialId
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Status" data.status


updateSigningCertificateRequestEncoder : UpdateSigningCertificateRequest -> List ( String, String )
updateSigningCertificateRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "CertificateId" data.certificateId
        |> AWS.Core.Encode.addOneToQueryArgs (AWS.Core.Enum.toString >> Result.withDefault "") "Status" data.status


updateUserRequestEncoder : UpdateUserRequest -> List ( String, String )
updateUserRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> (case data.newPath of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "NewPath" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.newUserName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "NewUserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


uploadSSHPublicKeyRequestEncoder : UploadSSHPublicKeyRequest -> List ( String, String )
uploadSSHPublicKeyRequestEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SSHPublicKeyBody" data.sSHPublicKeyBody


uploadSSHPublicKeyResponseEncoder : UploadSSHPublicKeyResponse -> List ( String, String )
uploadSSHPublicKeyResponseEncoder data =
    []
        |> (case data.sSHPublicKey of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs sSHPublicKeyEncoder "SSHPublicKey" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


uploadServerCertificateRequestEncoder : UploadServerCertificateRequest -> List ( String, String )
uploadServerCertificateRequestEncoder data =
    []
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "ServerCertificateName" data.serverCertificateName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "CertificateBody" data.certificateBody
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "PrivateKey" data.privateKey
        |> (case data.certificateChain of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "CertificateChain" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


uploadServerCertificateResponseEncoder : UploadServerCertificateResponse -> List ( String, String )
uploadServerCertificateResponseEncoder data =
    []
        |> (case data.serverCertificateMetadata of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs serverCertificateMetadataEncoder "ServerCertificateMetadata" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


uploadSigningCertificateRequestEncoder : UploadSigningCertificateRequest -> List ( String, String )
uploadSigningCertificateRequestEncoder data =
    []
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "CertificateBody" data.certificateBody


uploadSigningCertificateResponseEncoder : UploadSigningCertificateResponse -> List ( String, String )
uploadSigningCertificateResponseEncoder data =
    []
        |> AWS.Core.Encode.addRecordToQueryArgs signingCertificateEncoder "Certificate" data.certificate


userEncoder : User -> List ( String, String )
userEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" data.path
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" data.userName
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserId" data.userId
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" data.arn
        |> AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" data.createDate
        |> (case data.passwordLastUsed of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "PasswordLastUsed" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.permissionsBoundary of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs attachedPermissionsBoundaryEncoder "PermissionsBoundary" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


userDetailEncoder : UserDetail -> List ( String, String )
userDetailEncoder data =
    []
        |> (case data.path of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Path" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.userName of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserName" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.userId of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "UserId" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.arn of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Arn" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.createDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "CreateDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.userPolicyList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs policyDetailEncoder "") "UserPolicyList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.groupList of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs (\x -> x) "") "GroupList" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.attachedManagedPolicies of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs attachedPolicyEncoder "") "AttachedManagedPolicies" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.permissionsBoundary of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs attachedPermissionsBoundaryEncoder "PermissionsBoundary" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.tags of
                Just value ->
                    AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addRecordToQueryArgs tagEncoder "") "Tags" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )


virtualMFADeviceEncoder : VirtualMFADevice -> List ( String, String )
virtualMFADeviceEncoder data =
    []
        |> AWS.Core.Encode.addOneToQueryArgs (\x -> x) "SerialNumber" data.serialNumber
        |> (case data.base32StringSeed of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "Base32StringSeed" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.qRCodePNG of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs (\x -> x) "QRCodePNG" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.user of
                Just value ->
                    AWS.Core.Encode.addRecordToQueryArgs userEncoder "User" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
        |> (case data.enableDate of
                Just value ->
                    AWS.Core.Encode.addOneToQueryArgs Iso8601.fromTime "EnableDate" value

                Nothing ->
                    AWS.Core.Encode.unchangedQueryArgs
           )
