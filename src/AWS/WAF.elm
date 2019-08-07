module AWS.WAF
    exposing
        ( service
        , createByteMatchSet
        , createGeoMatchSet
        , createIPSet
        , createRateBasedRule
        , CreateRateBasedRuleOptions
        , createRegexMatchSet
        , createRegexPatternSet
        , createRule
        , CreateRuleOptions
        , createRuleGroup
        , CreateRuleGroupOptions
        , createSizeConstraintSet
        , createSqlInjectionMatchSet
        , createWebACL
        , CreateWebACLOptions
        , createXssMatchSet
        , deleteByteMatchSet
        , deleteGeoMatchSet
        , deleteIPSet
        , deleteLoggingConfiguration
        , deletePermissionPolicy
        , deleteRateBasedRule
        , deleteRegexMatchSet
        , deleteRegexPatternSet
        , deleteRule
        , deleteRuleGroup
        , deleteSizeConstraintSet
        , deleteSqlInjectionMatchSet
        , deleteWebACL
        , deleteXssMatchSet
        , getByteMatchSet
        , getChangeToken
        , getChangeTokenStatus
        , getGeoMatchSet
        , getIPSet
        , getLoggingConfiguration
        , getPermissionPolicy
        , getRateBasedRule
        , getRateBasedRuleManagedKeys
        , GetRateBasedRuleManagedKeysOptions
        , getRegexMatchSet
        , getRegexPatternSet
        , getRule
        , getRuleGroup
        , getSampledRequests
        , getSizeConstraintSet
        , getSqlInjectionMatchSet
        , getWebACL
        , getXssMatchSet
        , listActivatedRulesInRuleGroup
        , ListActivatedRulesInRuleGroupOptions
        , listByteMatchSets
        , ListByteMatchSetsOptions
        , listGeoMatchSets
        , ListGeoMatchSetsOptions
        , listIPSets
        , ListIPSetsOptions
        , listLoggingConfigurations
        , ListLoggingConfigurationsOptions
        , listRateBasedRules
        , ListRateBasedRulesOptions
        , listRegexMatchSets
        , ListRegexMatchSetsOptions
        , listRegexPatternSets
        , ListRegexPatternSetsOptions
        , listRuleGroups
        , ListRuleGroupsOptions
        , listRules
        , ListRulesOptions
        , listSizeConstraintSets
        , ListSizeConstraintSetsOptions
        , listSqlInjectionMatchSets
        , ListSqlInjectionMatchSetsOptions
        , listSubscribedRuleGroups
        , ListSubscribedRuleGroupsOptions
        , listTagsForResource
        , ListTagsForResourceOptions
        , listWebACLs
        , ListWebACLsOptions
        , listXssMatchSets
        , ListXssMatchSetsOptions
        , putLoggingConfiguration
        , putPermissionPolicy
        , tagResource
        , untagResource
        , updateByteMatchSet
        , updateGeoMatchSet
        , updateIPSet
        , updateRateBasedRule
        , updateRegexMatchSet
        , updateRegexPatternSet
        , updateRule
        , updateRuleGroup
        , updateSizeConstraintSet
        , updateSqlInjectionMatchSet
        , updateWebACL
        , UpdateWebACLOptions
        , updateXssMatchSet
        , ActivatedRule
        , ByteMatchSet
        , ByteMatchSetSummary
        , ByteMatchSetUpdate
        , ByteMatchTuple
        , ChangeAction(..)
        , ChangeTokenStatus(..)
        , ComparisonOperator(..)
        , CreateByteMatchSetResponse
        , CreateGeoMatchSetResponse
        , CreateIPSetResponse
        , CreateRateBasedRuleResponse
        , CreateRegexMatchSetResponse
        , CreateRegexPatternSetResponse
        , CreateRuleGroupResponse
        , CreateRuleResponse
        , CreateSizeConstraintSetResponse
        , CreateSqlInjectionMatchSetResponse
        , CreateWebACLResponse
        , CreateXssMatchSetResponse
        , DeleteByteMatchSetResponse
        , DeleteGeoMatchSetResponse
        , DeleteIPSetResponse
        , DeleteLoggingConfigurationResponse
        , DeletePermissionPolicyResponse
        , DeleteRateBasedRuleResponse
        , DeleteRegexMatchSetResponse
        , DeleteRegexPatternSetResponse
        , DeleteRuleGroupResponse
        , DeleteRuleResponse
        , DeleteSizeConstraintSetResponse
        , DeleteSqlInjectionMatchSetResponse
        , DeleteWebACLResponse
        , DeleteXssMatchSetResponse
        , ExcludedRule
        , FieldToMatch
        , GeoMatchConstraint
        , GeoMatchConstraintType(..)
        , GeoMatchConstraintValue(..)
        , GeoMatchSet
        , GeoMatchSetSummary
        , GeoMatchSetUpdate
        , GetByteMatchSetResponse
        , GetChangeTokenResponse
        , GetChangeTokenStatusResponse
        , GetGeoMatchSetResponse
        , GetIPSetResponse
        , GetLoggingConfigurationResponse
        , GetPermissionPolicyResponse
        , GetRateBasedRuleManagedKeysResponse
        , GetRateBasedRuleResponse
        , GetRegexMatchSetResponse
        , GetRegexPatternSetResponse
        , GetRuleGroupResponse
        , GetRuleResponse
        , GetSampledRequestsResponse
        , GetSizeConstraintSetResponse
        , GetSqlInjectionMatchSetResponse
        , GetWebACLResponse
        , GetXssMatchSetResponse
        , HTTPHeader
        , HTTPRequest
        , IPSet
        , IPSetDescriptor
        , IPSetDescriptorType(..)
        , IPSetSummary
        , IPSetUpdate
        , ListActivatedRulesInRuleGroupResponse
        , ListByteMatchSetsResponse
        , ListGeoMatchSetsResponse
        , ListIPSetsResponse
        , ListLoggingConfigurationsResponse
        , ListRateBasedRulesResponse
        , ListRegexMatchSetsResponse
        , ListRegexPatternSetsResponse
        , ListRuleGroupsResponse
        , ListRulesResponse
        , ListSizeConstraintSetsResponse
        , ListSqlInjectionMatchSetsResponse
        , ListSubscribedRuleGroupsResponse
        , ListTagsForResourceResponse
        , ListWebACLsResponse
        , ListXssMatchSetsResponse
        , LoggingConfiguration
        , MatchFieldType(..)
        , PositionalConstraint(..)
        , Predicate
        , PredicateType(..)
        , PutLoggingConfigurationResponse
        , PutPermissionPolicyResponse
        , RateBasedRule
        , RateKey(..)
        , RegexMatchSet
        , RegexMatchSetSummary
        , RegexMatchSetUpdate
        , RegexMatchTuple
        , RegexPatternSet
        , RegexPatternSetSummary
        , RegexPatternSetUpdate
        , Rule
        , RuleGroup
        , RuleGroupSummary
        , RuleGroupUpdate
        , RuleSummary
        , RuleUpdate
        , SampledHTTPRequest
        , SizeConstraint
        , SizeConstraintSet
        , SizeConstraintSetSummary
        , SizeConstraintSetUpdate
        , SqlInjectionMatchSet
        , SqlInjectionMatchSetSummary
        , SqlInjectionMatchSetUpdate
        , SqlInjectionMatchTuple
        , SubscribedRuleGroupSummary
        , Tag
        , TagInfoForResource
        , TagResourceResponse
        , TextTransformation(..)
        , TimeWindow
        , UntagResourceResponse
        , UpdateByteMatchSetResponse
        , UpdateGeoMatchSetResponse
        , UpdateIPSetResponse
        , UpdateRateBasedRuleResponse
        , UpdateRegexMatchSetResponse
        , UpdateRegexPatternSetResponse
        , UpdateRuleGroupResponse
        , UpdateRuleResponse
        , UpdateSizeConstraintSetResponse
        , UpdateSqlInjectionMatchSetResponse
        , UpdateWebACLResponse
        , UpdateXssMatchSetResponse
        , WafAction
        , WafActionType(..)
        , WafOverrideAction
        , WafOverrideActionType(..)
        , WafRuleType(..)
        , WebACL
        , WebACLSummary
        , WebACLUpdate
        , XssMatchSet
        , XssMatchSetSummary
        , XssMatchSetUpdate
        , XssMatchTuple
        )

{-| <p>This is the <i>AWS WAF API Reference</i> for using AWS WAF with Amazon CloudFront. The AWS WAF actions and data types listed in the reference are available for protecting Amazon CloudFront distributions. You can use these actions and data types via the endpoint <i>waf.amazonaws.com</i>. This guide is for developers who need detailed information about the AWS WAF API actions, data types, and errors. For detailed information about AWS WAF features and an overview of how to use the AWS WAF API, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [createByteMatchSet](#createByteMatchSet)
* [createGeoMatchSet](#createGeoMatchSet)
* [createIPSet](#createIPSet)
* [createRateBasedRule](#createRateBasedRule)
* [CreateRateBasedRuleOptions](#CreateRateBasedRuleOptions)
* [createRegexMatchSet](#createRegexMatchSet)
* [createRegexPatternSet](#createRegexPatternSet)
* [createRule](#createRule)
* [CreateRuleOptions](#CreateRuleOptions)
* [createRuleGroup](#createRuleGroup)
* [CreateRuleGroupOptions](#CreateRuleGroupOptions)
* [createSizeConstraintSet](#createSizeConstraintSet)
* [createSqlInjectionMatchSet](#createSqlInjectionMatchSet)
* [createWebACL](#createWebACL)
* [CreateWebACLOptions](#CreateWebACLOptions)
* [createXssMatchSet](#createXssMatchSet)
* [deleteByteMatchSet](#deleteByteMatchSet)
* [deleteGeoMatchSet](#deleteGeoMatchSet)
* [deleteIPSet](#deleteIPSet)
* [deleteLoggingConfiguration](#deleteLoggingConfiguration)
* [deletePermissionPolicy](#deletePermissionPolicy)
* [deleteRateBasedRule](#deleteRateBasedRule)
* [deleteRegexMatchSet](#deleteRegexMatchSet)
* [deleteRegexPatternSet](#deleteRegexPatternSet)
* [deleteRule](#deleteRule)
* [deleteRuleGroup](#deleteRuleGroup)
* [deleteSizeConstraintSet](#deleteSizeConstraintSet)
* [deleteSqlInjectionMatchSet](#deleteSqlInjectionMatchSet)
* [deleteWebACL](#deleteWebACL)
* [deleteXssMatchSet](#deleteXssMatchSet)
* [getByteMatchSet](#getByteMatchSet)
* [getChangeToken](#getChangeToken)
* [getChangeTokenStatus](#getChangeTokenStatus)
* [getGeoMatchSet](#getGeoMatchSet)
* [getIPSet](#getIPSet)
* [getLoggingConfiguration](#getLoggingConfiguration)
* [getPermissionPolicy](#getPermissionPolicy)
* [getRateBasedRule](#getRateBasedRule)
* [getRateBasedRuleManagedKeys](#getRateBasedRuleManagedKeys)
* [GetRateBasedRuleManagedKeysOptions](#GetRateBasedRuleManagedKeysOptions)
* [getRegexMatchSet](#getRegexMatchSet)
* [getRegexPatternSet](#getRegexPatternSet)
* [getRule](#getRule)
* [getRuleGroup](#getRuleGroup)
* [getSampledRequests](#getSampledRequests)
* [getSizeConstraintSet](#getSizeConstraintSet)
* [getSqlInjectionMatchSet](#getSqlInjectionMatchSet)
* [getWebACL](#getWebACL)
* [getXssMatchSet](#getXssMatchSet)
* [listActivatedRulesInRuleGroup](#listActivatedRulesInRuleGroup)
* [ListActivatedRulesInRuleGroupOptions](#ListActivatedRulesInRuleGroupOptions)
* [listByteMatchSets](#listByteMatchSets)
* [ListByteMatchSetsOptions](#ListByteMatchSetsOptions)
* [listGeoMatchSets](#listGeoMatchSets)
* [ListGeoMatchSetsOptions](#ListGeoMatchSetsOptions)
* [listIPSets](#listIPSets)
* [ListIPSetsOptions](#ListIPSetsOptions)
* [listLoggingConfigurations](#listLoggingConfigurations)
* [ListLoggingConfigurationsOptions](#ListLoggingConfigurationsOptions)
* [listRateBasedRules](#listRateBasedRules)
* [ListRateBasedRulesOptions](#ListRateBasedRulesOptions)
* [listRegexMatchSets](#listRegexMatchSets)
* [ListRegexMatchSetsOptions](#ListRegexMatchSetsOptions)
* [listRegexPatternSets](#listRegexPatternSets)
* [ListRegexPatternSetsOptions](#ListRegexPatternSetsOptions)
* [listRuleGroups](#listRuleGroups)
* [ListRuleGroupsOptions](#ListRuleGroupsOptions)
* [listRules](#listRules)
* [ListRulesOptions](#ListRulesOptions)
* [listSizeConstraintSets](#listSizeConstraintSets)
* [ListSizeConstraintSetsOptions](#ListSizeConstraintSetsOptions)
* [listSqlInjectionMatchSets](#listSqlInjectionMatchSets)
* [ListSqlInjectionMatchSetsOptions](#ListSqlInjectionMatchSetsOptions)
* [listSubscribedRuleGroups](#listSubscribedRuleGroups)
* [ListSubscribedRuleGroupsOptions](#ListSubscribedRuleGroupsOptions)
* [listTagsForResource](#listTagsForResource)
* [ListTagsForResourceOptions](#ListTagsForResourceOptions)
* [listWebACLs](#listWebACLs)
* [ListWebACLsOptions](#ListWebACLsOptions)
* [listXssMatchSets](#listXssMatchSets)
* [ListXssMatchSetsOptions](#ListXssMatchSetsOptions)
* [putLoggingConfiguration](#putLoggingConfiguration)
* [putPermissionPolicy](#putPermissionPolicy)
* [tagResource](#tagResource)
* [untagResource](#untagResource)
* [updateByteMatchSet](#updateByteMatchSet)
* [updateGeoMatchSet](#updateGeoMatchSet)
* [updateIPSet](#updateIPSet)
* [updateRateBasedRule](#updateRateBasedRule)
* [updateRegexMatchSet](#updateRegexMatchSet)
* [updateRegexPatternSet](#updateRegexPatternSet)
* [updateRule](#updateRule)
* [updateRuleGroup](#updateRuleGroup)
* [updateSizeConstraintSet](#updateSizeConstraintSet)
* [updateSqlInjectionMatchSet](#updateSqlInjectionMatchSet)
* [updateWebACL](#updateWebACL)
* [UpdateWebACLOptions](#UpdateWebACLOptions)
* [updateXssMatchSet](#updateXssMatchSet)


@docs createByteMatchSet,createGeoMatchSet,createIPSet,createRateBasedRule,CreateRateBasedRuleOptions,createRegexMatchSet,createRegexPatternSet,createRule,CreateRuleOptions,createRuleGroup,CreateRuleGroupOptions,createSizeConstraintSet,createSqlInjectionMatchSet,createWebACL,CreateWebACLOptions,createXssMatchSet,deleteByteMatchSet,deleteGeoMatchSet,deleteIPSet,deleteLoggingConfiguration,deletePermissionPolicy,deleteRateBasedRule,deleteRegexMatchSet,deleteRegexPatternSet,deleteRule,deleteRuleGroup,deleteSizeConstraintSet,deleteSqlInjectionMatchSet,deleteWebACL,deleteXssMatchSet,getByteMatchSet,getChangeToken,getChangeTokenStatus,getGeoMatchSet,getIPSet,getLoggingConfiguration,getPermissionPolicy,getRateBasedRule,getRateBasedRuleManagedKeys,GetRateBasedRuleManagedKeysOptions,getRegexMatchSet,getRegexPatternSet,getRule,getRuleGroup,getSampledRequests,getSizeConstraintSet,getSqlInjectionMatchSet,getWebACL,getXssMatchSet,listActivatedRulesInRuleGroup,ListActivatedRulesInRuleGroupOptions,listByteMatchSets,ListByteMatchSetsOptions,listGeoMatchSets,ListGeoMatchSetsOptions,listIPSets,ListIPSetsOptions,listLoggingConfigurations,ListLoggingConfigurationsOptions,listRateBasedRules,ListRateBasedRulesOptions,listRegexMatchSets,ListRegexMatchSetsOptions,listRegexPatternSets,ListRegexPatternSetsOptions,listRuleGroups,ListRuleGroupsOptions,listRules,ListRulesOptions,listSizeConstraintSets,ListSizeConstraintSetsOptions,listSqlInjectionMatchSets,ListSqlInjectionMatchSetsOptions,listSubscribedRuleGroups,ListSubscribedRuleGroupsOptions,listTagsForResource,ListTagsForResourceOptions,listWebACLs,ListWebACLsOptions,listXssMatchSets,ListXssMatchSetsOptions,putLoggingConfiguration,putPermissionPolicy,tagResource,untagResource,updateByteMatchSet,updateGeoMatchSet,updateIPSet,updateRateBasedRule,updateRegexMatchSet,updateRegexPatternSet,updateRule,updateRuleGroup,updateSizeConstraintSet,updateSqlInjectionMatchSet,updateWebACL,UpdateWebACLOptions,updateXssMatchSet

## Responses

* [CreateByteMatchSetResponse](#CreateByteMatchSetResponse)
* [CreateGeoMatchSetResponse](#CreateGeoMatchSetResponse)
* [CreateIPSetResponse](#CreateIPSetResponse)
* [CreateRateBasedRuleResponse](#CreateRateBasedRuleResponse)
* [CreateRegexMatchSetResponse](#CreateRegexMatchSetResponse)
* [CreateRegexPatternSetResponse](#CreateRegexPatternSetResponse)
* [CreateRuleGroupResponse](#CreateRuleGroupResponse)
* [CreateRuleResponse](#CreateRuleResponse)
* [CreateSizeConstraintSetResponse](#CreateSizeConstraintSetResponse)
* [CreateSqlInjectionMatchSetResponse](#CreateSqlInjectionMatchSetResponse)
* [CreateWebACLResponse](#CreateWebACLResponse)
* [CreateXssMatchSetResponse](#CreateXssMatchSetResponse)
* [DeleteByteMatchSetResponse](#DeleteByteMatchSetResponse)
* [DeleteGeoMatchSetResponse](#DeleteGeoMatchSetResponse)
* [DeleteIPSetResponse](#DeleteIPSetResponse)
* [DeleteLoggingConfigurationResponse](#DeleteLoggingConfigurationResponse)
* [DeletePermissionPolicyResponse](#DeletePermissionPolicyResponse)
* [DeleteRateBasedRuleResponse](#DeleteRateBasedRuleResponse)
* [DeleteRegexMatchSetResponse](#DeleteRegexMatchSetResponse)
* [DeleteRegexPatternSetResponse](#DeleteRegexPatternSetResponse)
* [DeleteRuleGroupResponse](#DeleteRuleGroupResponse)
* [DeleteRuleResponse](#DeleteRuleResponse)
* [DeleteSizeConstraintSetResponse](#DeleteSizeConstraintSetResponse)
* [DeleteSqlInjectionMatchSetResponse](#DeleteSqlInjectionMatchSetResponse)
* [DeleteWebACLResponse](#DeleteWebACLResponse)
* [DeleteXssMatchSetResponse](#DeleteXssMatchSetResponse)
* [GetByteMatchSetResponse](#GetByteMatchSetResponse)
* [GetChangeTokenResponse](#GetChangeTokenResponse)
* [GetChangeTokenStatusResponse](#GetChangeTokenStatusResponse)
* [GetGeoMatchSetResponse](#GetGeoMatchSetResponse)
* [GetIPSetResponse](#GetIPSetResponse)
* [GetLoggingConfigurationResponse](#GetLoggingConfigurationResponse)
* [GetPermissionPolicyResponse](#GetPermissionPolicyResponse)
* [GetRateBasedRuleManagedKeysResponse](#GetRateBasedRuleManagedKeysResponse)
* [GetRateBasedRuleResponse](#GetRateBasedRuleResponse)
* [GetRegexMatchSetResponse](#GetRegexMatchSetResponse)
* [GetRegexPatternSetResponse](#GetRegexPatternSetResponse)
* [GetRuleGroupResponse](#GetRuleGroupResponse)
* [GetRuleResponse](#GetRuleResponse)
* [GetSampledRequestsResponse](#GetSampledRequestsResponse)
* [GetSizeConstraintSetResponse](#GetSizeConstraintSetResponse)
* [GetSqlInjectionMatchSetResponse](#GetSqlInjectionMatchSetResponse)
* [GetWebACLResponse](#GetWebACLResponse)
* [GetXssMatchSetResponse](#GetXssMatchSetResponse)
* [ListActivatedRulesInRuleGroupResponse](#ListActivatedRulesInRuleGroupResponse)
* [ListByteMatchSetsResponse](#ListByteMatchSetsResponse)
* [ListGeoMatchSetsResponse](#ListGeoMatchSetsResponse)
* [ListIPSetsResponse](#ListIPSetsResponse)
* [ListLoggingConfigurationsResponse](#ListLoggingConfigurationsResponse)
* [ListRateBasedRulesResponse](#ListRateBasedRulesResponse)
* [ListRegexMatchSetsResponse](#ListRegexMatchSetsResponse)
* [ListRegexPatternSetsResponse](#ListRegexPatternSetsResponse)
* [ListRuleGroupsResponse](#ListRuleGroupsResponse)
* [ListRulesResponse](#ListRulesResponse)
* [ListSizeConstraintSetsResponse](#ListSizeConstraintSetsResponse)
* [ListSqlInjectionMatchSetsResponse](#ListSqlInjectionMatchSetsResponse)
* [ListSubscribedRuleGroupsResponse](#ListSubscribedRuleGroupsResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [ListWebACLsResponse](#ListWebACLsResponse)
* [ListXssMatchSetsResponse](#ListXssMatchSetsResponse)
* [PutLoggingConfigurationResponse](#PutLoggingConfigurationResponse)
* [PutPermissionPolicyResponse](#PutPermissionPolicyResponse)
* [TagResourceResponse](#TagResourceResponse)
* [UntagResourceResponse](#UntagResourceResponse)
* [UpdateByteMatchSetResponse](#UpdateByteMatchSetResponse)
* [UpdateGeoMatchSetResponse](#UpdateGeoMatchSetResponse)
* [UpdateIPSetResponse](#UpdateIPSetResponse)
* [UpdateRateBasedRuleResponse](#UpdateRateBasedRuleResponse)
* [UpdateRegexMatchSetResponse](#UpdateRegexMatchSetResponse)
* [UpdateRegexPatternSetResponse](#UpdateRegexPatternSetResponse)
* [UpdateRuleGroupResponse](#UpdateRuleGroupResponse)
* [UpdateRuleResponse](#UpdateRuleResponse)
* [UpdateSizeConstraintSetResponse](#UpdateSizeConstraintSetResponse)
* [UpdateSqlInjectionMatchSetResponse](#UpdateSqlInjectionMatchSetResponse)
* [UpdateWebACLResponse](#UpdateWebACLResponse)
* [UpdateXssMatchSetResponse](#UpdateXssMatchSetResponse)


@docs CreateByteMatchSetResponse,CreateGeoMatchSetResponse,CreateIPSetResponse,CreateRateBasedRuleResponse,CreateRegexMatchSetResponse,CreateRegexPatternSetResponse,CreateRuleGroupResponse,CreateRuleResponse,CreateSizeConstraintSetResponse,CreateSqlInjectionMatchSetResponse,CreateWebACLResponse,CreateXssMatchSetResponse,DeleteByteMatchSetResponse,DeleteGeoMatchSetResponse,DeleteIPSetResponse,DeleteLoggingConfigurationResponse,DeletePermissionPolicyResponse,DeleteRateBasedRuleResponse,DeleteRegexMatchSetResponse,DeleteRegexPatternSetResponse,DeleteRuleGroupResponse,DeleteRuleResponse,DeleteSizeConstraintSetResponse,DeleteSqlInjectionMatchSetResponse,DeleteWebACLResponse,DeleteXssMatchSetResponse,GetByteMatchSetResponse,GetChangeTokenResponse,GetChangeTokenStatusResponse,GetGeoMatchSetResponse,GetIPSetResponse,GetLoggingConfigurationResponse,GetPermissionPolicyResponse,GetRateBasedRuleManagedKeysResponse,GetRateBasedRuleResponse,GetRegexMatchSetResponse,GetRegexPatternSetResponse,GetRuleGroupResponse,GetRuleResponse,GetSampledRequestsResponse,GetSizeConstraintSetResponse,GetSqlInjectionMatchSetResponse,GetWebACLResponse,GetXssMatchSetResponse,ListActivatedRulesInRuleGroupResponse,ListByteMatchSetsResponse,ListGeoMatchSetsResponse,ListIPSetsResponse,ListLoggingConfigurationsResponse,ListRateBasedRulesResponse,ListRegexMatchSetsResponse,ListRegexPatternSetsResponse,ListRuleGroupsResponse,ListRulesResponse,ListSizeConstraintSetsResponse,ListSqlInjectionMatchSetsResponse,ListSubscribedRuleGroupsResponse,ListTagsForResourceResponse,ListWebACLsResponse,ListXssMatchSetsResponse,PutLoggingConfigurationResponse,PutPermissionPolicyResponse,TagResourceResponse,UntagResourceResponse,UpdateByteMatchSetResponse,UpdateGeoMatchSetResponse,UpdateIPSetResponse,UpdateRateBasedRuleResponse,UpdateRegexMatchSetResponse,UpdateRegexPatternSetResponse,UpdateRuleGroupResponse,UpdateRuleResponse,UpdateSizeConstraintSetResponse,UpdateSqlInjectionMatchSetResponse,UpdateWebACLResponse,UpdateXssMatchSetResponse

## Records

* [ActivatedRule](#ActivatedRule)
* [ByteMatchSet](#ByteMatchSet)
* [ByteMatchSetSummary](#ByteMatchSetSummary)
* [ByteMatchSetUpdate](#ByteMatchSetUpdate)
* [ByteMatchTuple](#ByteMatchTuple)
* [ExcludedRule](#ExcludedRule)
* [FieldToMatch](#FieldToMatch)
* [GeoMatchConstraint](#GeoMatchConstraint)
* [GeoMatchSet](#GeoMatchSet)
* [GeoMatchSetSummary](#GeoMatchSetSummary)
* [GeoMatchSetUpdate](#GeoMatchSetUpdate)
* [HTTPHeader](#HTTPHeader)
* [HTTPRequest](#HTTPRequest)
* [IPSet](#IPSet)
* [IPSetDescriptor](#IPSetDescriptor)
* [IPSetSummary](#IPSetSummary)
* [IPSetUpdate](#IPSetUpdate)
* [LoggingConfiguration](#LoggingConfiguration)
* [Predicate](#Predicate)
* [RateBasedRule](#RateBasedRule)
* [RegexMatchSet](#RegexMatchSet)
* [RegexMatchSetSummary](#RegexMatchSetSummary)
* [RegexMatchSetUpdate](#RegexMatchSetUpdate)
* [RegexMatchTuple](#RegexMatchTuple)
* [RegexPatternSet](#RegexPatternSet)
* [RegexPatternSetSummary](#RegexPatternSetSummary)
* [RegexPatternSetUpdate](#RegexPatternSetUpdate)
* [Rule](#Rule)
* [RuleGroup](#RuleGroup)
* [RuleGroupSummary](#RuleGroupSummary)
* [RuleGroupUpdate](#RuleGroupUpdate)
* [RuleSummary](#RuleSummary)
* [RuleUpdate](#RuleUpdate)
* [SampledHTTPRequest](#SampledHTTPRequest)
* [SizeConstraint](#SizeConstraint)
* [SizeConstraintSet](#SizeConstraintSet)
* [SizeConstraintSetSummary](#SizeConstraintSetSummary)
* [SizeConstraintSetUpdate](#SizeConstraintSetUpdate)
* [SqlInjectionMatchSet](#SqlInjectionMatchSet)
* [SqlInjectionMatchSetSummary](#SqlInjectionMatchSetSummary)
* [SqlInjectionMatchSetUpdate](#SqlInjectionMatchSetUpdate)
* [SqlInjectionMatchTuple](#SqlInjectionMatchTuple)
* [SubscribedRuleGroupSummary](#SubscribedRuleGroupSummary)
* [Tag](#Tag)
* [TagInfoForResource](#TagInfoForResource)
* [TimeWindow](#TimeWindow)
* [WafAction](#WafAction)
* [WafOverrideAction](#WafOverrideAction)
* [WebACL](#WebACL)
* [WebACLSummary](#WebACLSummary)
* [WebACLUpdate](#WebACLUpdate)
* [XssMatchSet](#XssMatchSet)
* [XssMatchSetSummary](#XssMatchSetSummary)
* [XssMatchSetUpdate](#XssMatchSetUpdate)
* [XssMatchTuple](#XssMatchTuple)


@docs ActivatedRule,ByteMatchSet,ByteMatchSetSummary,ByteMatchSetUpdate,ByteMatchTuple,ExcludedRule,FieldToMatch,GeoMatchConstraint,GeoMatchSet,GeoMatchSetSummary,GeoMatchSetUpdate,HTTPHeader,HTTPRequest,IPSet,IPSetDescriptor,IPSetSummary,IPSetUpdate,LoggingConfiguration,Predicate,RateBasedRule,RegexMatchSet,RegexMatchSetSummary,RegexMatchSetUpdate,RegexMatchTuple,RegexPatternSet,RegexPatternSetSummary,RegexPatternSetUpdate,Rule,RuleGroup,RuleGroupSummary,RuleGroupUpdate,RuleSummary,RuleUpdate,SampledHTTPRequest,SizeConstraint,SizeConstraintSet,SizeConstraintSetSummary,SizeConstraintSetUpdate,SqlInjectionMatchSet,SqlInjectionMatchSetSummary,SqlInjectionMatchSetUpdate,SqlInjectionMatchTuple,SubscribedRuleGroupSummary,Tag,TagInfoForResource,TimeWindow,WafAction,WafOverrideAction,WebACL,WebACLSummary,WebACLUpdate,XssMatchSet,XssMatchSetSummary,XssMatchSetUpdate,XssMatchTuple

## Unions

* [ChangeAction](#ChangeAction)
* [ChangeTokenStatus](#ChangeTokenStatus)
* [ComparisonOperator](#ComparisonOperator)
* [GeoMatchConstraintType](#GeoMatchConstraintType)
* [GeoMatchConstraintValue](#GeoMatchConstraintValue)
* [IPSetDescriptorType](#IPSetDescriptorType)
* [MatchFieldType](#MatchFieldType)
* [PositionalConstraint](#PositionalConstraint)
* [PredicateType](#PredicateType)
* [RateKey](#RateKey)
* [TextTransformation](#TextTransformation)
* [WafActionType](#WafActionType)
* [WafOverrideActionType](#WafOverrideActionType)
* [WafRuleType](#WafRuleType)


@docs ChangeAction,ChangeTokenStatus,ComparisonOperator,GeoMatchConstraintType,GeoMatchConstraintValue,IPSetDescriptorType,MatchFieldType,PositionalConstraint,PredicateType,RateKey,TextTransformation,WafActionType,WafOverrideActionType,WafRuleType

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
        "waf"
        "2015-08-24"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWSWAF_20150824")



-- OPERATIONS

{-| <p>Creates a <code>ByteMatchSet</code>. You then use <a>UpdateByteMatchSet</a> to identify the part of a web request that you want AWS WAF to inspect, such as the values of the <code>User-Agent</code> header or the query string. For example, you can create a <code>ByteMatchSet</code> that matches any requests with <code>User-Agent</code> headers that contain the string <code>BadBot</code>. You can then configure AWS WAF to reject those requests.</p> <p>To create and configure a <code>ByteMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateByteMatchSet</code> request.</p> </li> <li> <p>Submit a <code>CreateByteMatchSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <code>UpdateByteMatchSet</code> request.</p> </li> <li> <p>Submit an <a>UpdateByteMatchSet</a> request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}

createByteMatchSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateByteMatchSetResponse)

createByteMatchSet name changeToken =
    
    let
        requestInput = CreateByteMatchSetRequest
            
            name
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createByteMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateByteMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "CreateByteMatchSetResponse" createByteMatchSetResponseDecoder)
                
            )





{-| <p>Creates an <a>GeoMatchSet</a>, which you use to specify which web requests you want to allow or block based on the country that the requests originate from. For example, if you're receiving a lot of requests from one or more countries and you want to block the requests, you can create an <code>GeoMatchSet</code> that contains those countries and then configure AWS WAF to block the requests. </p> <p>To create and configure a <code>GeoMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateGeoMatchSet</code> request.</p> </li> <li> <p>Submit a <code>CreateGeoMatchSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateGeoMatchSet</a> request.</p> </li> <li> <p>Submit an <code>UpdateGeoMatchSetSet</code> request to specify the countries that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}

createGeoMatchSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateGeoMatchSetResponse)

createGeoMatchSet name changeToken =
    
    let
        requestInput = CreateGeoMatchSetRequest
            
            name
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createGeoMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateGeoMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "CreateGeoMatchSetResponse" createGeoMatchSetResponseDecoder)
                
            )





{-| <p>Creates an <a>IPSet</a>, which you use to specify which web requests that you want to allow or block based on the IP addresses that the requests originate from. For example, if you're receiving a lot of requests from one or more individual IP addresses or one or more ranges of IP addresses and you want to block the requests, you can create an <code>IPSet</code> that contains those IP addresses and then configure AWS WAF to block the requests. </p> <p>To create and configure an <code>IPSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateIPSet</code> request.</p> </li> <li> <p>Submit a <code>CreateIPSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a> request.</p> </li> <li> <p>Submit an <code>UpdateIPSet</code> request to specify the IP addresses that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}

createIPSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateIPSetResponse)

createIPSet name changeToken =
    
    let
        requestInput = CreateIPSetRequest
            
            name
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createIPSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateIPSet"
                
                (AWS.Core.Decode.ResultDecoder "CreateIPSetResponse" createIPSetResponseDecoder)
                
            )





{-| <p>Creates a <a>RateBasedRule</a>. The <code>RateBasedRule</code> contains a <code>RateLimit</code>, which specifies the maximum number of requests that AWS WAF allows from a specified IP address in a five-minute period. The <code>RateBasedRule</code> also contains the <code>IPSet</code> objects, <code>ByteMatchSet</code> objects, and other predicates that identify the requests that you want to count or block if these requests exceed the <code>RateLimit</code>.</p> <p>If you add more than one predicate to a <code>RateBasedRule</code>, a request not only must exceed the <code>RateLimit</code>, but it also must match all the specifications to be counted or blocked. For example, suppose you add the following to a <code>RateBasedRule</code>:</p> <ul> <li> <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44/32</code> </p> </li> <li> <p>A <code>ByteMatchSet</code> that matches <code>BadBot</code> in the <code>User-Agent</code> header</p> </li> </ul> <p>Further, you specify a <code>RateLimit</code> of 15,000.</p> <p>You then add the <code>RateBasedRule</code> to a <code>WebACL</code> and specify that you want to block requests that meet the conditions in the rule. For a request to be blocked, it must come from the IP address 192.0.2.44 <i>and</i> the <code>User-Agent</code> header in the request must contain the value <code>BadBot</code>. Further, requests that match these two conditions must be received at a rate of more than 15,000 requests every five minutes. If both conditions are met and the rate is exceeded, AWS WAF blocks the requests. If the rate drops below 15,000 for a five-minute period, AWS WAF no longer blocks the requests.</p> <p>As a second example, suppose you want to limit requests to a particular page on your site. To do this, you could add the following to a <code>RateBasedRule</code>:</p> <ul> <li> <p>A <code>ByteMatchSet</code> with <code>FieldToMatch</code> of <code>URI</code> </p> </li> <li> <p>A <code>PositionalConstraint</code> of <code>STARTS_WITH</code> </p> </li> <li> <p>A <code>TargetString</code> of <code>login</code> </p> </li> </ul> <p>Further, you specify a <code>RateLimit</code> of 15,000.</p> <p>By adding this <code>RateBasedRule</code> to a <code>WebACL</code>, you could limit requests to your login page without affecting the rest of your site.</p> <p>To create and configure a <code>RateBasedRule</code>, perform the following steps:</p> <ol> <li> <p>Create and update the predicates that you want to include in the rule. For more information, see <a>CreateByteMatchSet</a>, <a>CreateIPSet</a>, and <a>CreateSqlInjectionMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateRule</code> request.</p> </li> <li> <p>Submit a <code>CreateRateBasedRule</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateRule</a> request.</p> </li> <li> <p>Submit an <code>UpdateRateBasedRule</code> request to specify the predicates that you want to include in the rule.</p> </li> <li> <p>Create and update a <code>WebACL</code> that contains the <code>RateBasedRule</code>. For more information, see <a>CreateWebACL</a>.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `metricName` __:__ `String`
* `rateKey` __:__ `RateKey`
* `rateLimit` __:__ `Int`
* `changeToken` __:__ `String`


-}

createRateBasedRule :
  
    String ->
  
    String ->
  
    RateKey ->
  
    Int ->
  
    String ->
  
  
    ( CreateRateBasedRuleOptions -> CreateRateBasedRuleOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRateBasedRuleResponse)

createRateBasedRule name metricName rateKey rateLimit changeToken setOptions =
    
    let
        requestInput = CreateRateBasedRuleRequest
            
            name
            
            metricName
            
            rateKey
            
            rateLimit
            
            changeToken
            
            options.tags
            
        
        options = setOptions (CreateRateBasedRuleOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createRateBasedRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRateBasedRule"
                
                (AWS.Core.Decode.ResultDecoder "CreateRateBasedRuleResponse" createRateBasedRuleResponseDecoder)
                
            )



{-| Options for a createRateBasedRule request
-}
type alias CreateRateBasedRuleOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a <a>RegexMatchSet</a>. You then use <a>UpdateRegexMatchSet</a> to identify the part of a web request that you want AWS WAF to inspect, such as the values of the <code>User-Agent</code> header or the query string. For example, you can create a <code>RegexMatchSet</code> that contains a <code>RegexMatchTuple</code> that looks for any requests with <code>User-Agent</code> headers that match a <code>RegexPatternSet</code> with pattern <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p> <p>To create and configure a <code>RegexMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateRegexMatchSet</code> request.</p> </li> <li> <p>Submit a <code>CreateRegexMatchSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <code>UpdateRegexMatchSet</code> request.</p> </li> <li> <p>Submit an <a>UpdateRegexMatchSet</a> request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value, using a <code>RegexPatternSet</code>, that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}

createRegexMatchSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRegexMatchSetResponse)

createRegexMatchSet name changeToken =
    
    let
        requestInput = CreateRegexMatchSetRequest
            
            name
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createRegexMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRegexMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "CreateRegexMatchSetResponse" createRegexMatchSetResponseDecoder)
                
            )





{-| <p>Creates a <code>RegexPatternSet</code>. You then use <a>UpdateRegexPatternSet</a> to specify the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p> <p>To create and configure a <code>RegexPatternSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateRegexPatternSet</code> request.</p> </li> <li> <p>Submit a <code>CreateRegexPatternSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <code>UpdateRegexPatternSet</code> request.</p> </li> <li> <p>Submit an <a>UpdateRegexPatternSet</a> request to specify the string that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}

createRegexPatternSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRegexPatternSetResponse)

createRegexPatternSet name changeToken =
    
    let
        requestInput = CreateRegexPatternSetRequest
            
            name
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createRegexPatternSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRegexPatternSet"
                
                (AWS.Core.Decode.ResultDecoder "CreateRegexPatternSetResponse" createRegexPatternSetResponseDecoder)
                
            )





{-| <p>Creates a <code>Rule</code>, which contains the <code>IPSet</code> objects, <code>ByteMatchSet</code> objects, and other predicates that identify the requests that you want to block. If you add more than one predicate to a <code>Rule</code>, a request must match all of the specifications to be allowed or blocked. For example, suppose that you add the following to a <code>Rule</code>:</p> <ul> <li> <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44/32</code> </p> </li> <li> <p>A <code>ByteMatchSet</code> that matches <code>BadBot</code> in the <code>User-Agent</code> header</p> </li> </ul> <p>You then add the <code>Rule</code> to a <code>WebACL</code> and specify that you want to blocks requests that satisfy the <code>Rule</code>. For a request to be blocked, it must come from the IP address 192.0.2.44 <i>and</i> the <code>User-Agent</code> header in the request must contain the value <code>BadBot</code>.</p> <p>To create and configure a <code>Rule</code>, perform the following steps:</p> <ol> <li> <p>Create and update the predicates that you want to include in the <code>Rule</code>. For more information, see <a>CreateByteMatchSet</a>, <a>CreateIPSet</a>, and <a>CreateSqlInjectionMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateRule</code> request.</p> </li> <li> <p>Submit a <code>CreateRule</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateRule</a> request.</p> </li> <li> <p>Submit an <code>UpdateRule</code> request to specify the predicates that you want to include in the <code>Rule</code>.</p> </li> <li> <p>Create and update a <code>WebACL</code> that contains the <code>Rule</code>. For more information, see <a>CreateWebACL</a>.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `metricName` __:__ `String`
* `changeToken` __:__ `String`


-}

createRule :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateRuleOptions -> CreateRuleOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRuleResponse)

createRule name metricName changeToken setOptions =
    
    let
        requestInput = CreateRuleRequest
            
            name
            
            metricName
            
            changeToken
            
            options.tags
            
        
        options = setOptions (CreateRuleOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRule"
                
                (AWS.Core.Decode.ResultDecoder "CreateRuleResponse" createRuleResponseDecoder)
                
            )



{-| Options for a createRule request
-}
type alias CreateRuleOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a <code>RuleGroup</code>. A rule group is a collection of predefined rules that you add to a web ACL. You use <a>UpdateRuleGroup</a> to add rules to the rule group.</p> <p>Rule groups are subject to the following limits:</p> <ul> <li> <p>Three rule groups per account. You can request an increase to this limit by contacting customer support.</p> </li> <li> <p>One rule group per web ACL.</p> </li> <li> <p>Ten rules per rule group.</p> </li> </ul> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `metricName` __:__ `String`
* `changeToken` __:__ `String`


-}

createRuleGroup :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateRuleGroupOptions -> CreateRuleGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRuleGroupResponse)

createRuleGroup name metricName changeToken setOptions =
    
    let
        requestInput = CreateRuleGroupRequest
            
            name
            
            metricName
            
            changeToken
            
            options.tags
            
        
        options = setOptions (CreateRuleGroupOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createRuleGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRuleGroup"
                
                (AWS.Core.Decode.ResultDecoder "CreateRuleGroupResponse" createRuleGroupResponseDecoder)
                
            )



{-| Options for a createRuleGroup request
-}
type alias CreateRuleGroupOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates a <code>SizeConstraintSet</code>. You then use <a>UpdateSizeConstraintSet</a> to identify the part of a web request that you want AWS WAF to check for length, such as the length of the <code>User-Agent</code> header or the length of the query string. For example, you can create a <code>SizeConstraintSet</code> that matches any requests that have a query string that is longer than 100 bytes. You can then configure AWS WAF to reject those requests.</p> <p>To create and configure a <code>SizeConstraintSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateSizeConstraintSet</code> request.</p> </li> <li> <p>Submit a <code>CreateSizeConstraintSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <code>UpdateSizeConstraintSet</code> request.</p> </li> <li> <p>Submit an <a>UpdateSizeConstraintSet</a> request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}

createSizeConstraintSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSizeConstraintSetResponse)

createSizeConstraintSet name changeToken =
    
    let
        requestInput = CreateSizeConstraintSetRequest
            
            name
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createSizeConstraintSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateSizeConstraintSet"
                
                (AWS.Core.Decode.ResultDecoder "CreateSizeConstraintSetResponse" createSizeConstraintSetResponseDecoder)
                
            )





{-| <p>Creates a <a>SqlInjectionMatchSet</a>, which you use to allow, block, or count requests that contain snippets of SQL code in a specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.</p> <p>To create and configure a <code>SqlInjectionMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateSqlInjectionMatchSet</code> request.</p> </li> <li> <p>Submit a <code>CreateSqlInjectionMatchSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateSqlInjectionMatchSet</a> request.</p> </li> <li> <p>Submit an <a>UpdateSqlInjectionMatchSet</a> request to specify the parts of web requests in which you want to allow, block, or count malicious SQL code.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}

createSqlInjectionMatchSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateSqlInjectionMatchSetResponse)

createSqlInjectionMatchSet name changeToken =
    
    let
        requestInput = CreateSqlInjectionMatchSetRequest
            
            name
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createSqlInjectionMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateSqlInjectionMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "CreateSqlInjectionMatchSetResponse" createSqlInjectionMatchSetResponseDecoder)
                
            )





{-| <p>Creates a <code>WebACL</code>, which contains the <code>Rules</code> that identify the CloudFront web requests that you want to allow, block, or count. AWS WAF evaluates <code>Rules</code> in order based on the value of <code>Priority</code> for each <code>Rule</code>.</p> <p>You also specify a default action, either <code>ALLOW</code> or <code>BLOCK</code>. If a web request doesn't match any of the <code>Rules</code> in a <code>WebACL</code>, AWS WAF responds to the request with the default action. </p> <p>To create and configure a <code>WebACL</code>, perform the following steps:</p> <ol> <li> <p>Create and update the <code>ByteMatchSet</code> objects and other predicates that you want to include in <code>Rules</code>. For more information, see <a>CreateByteMatchSet</a>, <a>UpdateByteMatchSet</a>, <a>CreateIPSet</a>, <a>UpdateIPSet</a>, <a>CreateSqlInjectionMatchSet</a>, and <a>UpdateSqlInjectionMatchSet</a>.</p> </li> <li> <p>Create and update the <code>Rules</code> that you want to include in the <code>WebACL</code>. For more information, see <a>CreateRule</a> and <a>UpdateRule</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateWebACL</code> request.</p> </li> <li> <p>Submit a <code>CreateWebACL</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateWebACL</a> request.</p> </li> <li> <p>Submit an <a>UpdateWebACL</a> request to specify the <code>Rules</code> that you want to include in the <code>WebACL</code>, to specify the default action, and to associate the <code>WebACL</code> with a CloudFront distribution.</p> </li> </ol> <p>For more information about how to use the AWS WAF API, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `metricName` __:__ `String`
* `defaultAction` __:__ `WafAction`
* `changeToken` __:__ `String`


-}

createWebACL :
  
    String ->
  
    String ->
  
    WafAction ->
  
    String ->
  
  
    ( CreateWebACLOptions -> CreateWebACLOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateWebACLResponse)

createWebACL name metricName defaultAction changeToken setOptions =
    
    let
        requestInput = CreateWebACLRequest
            
            name
            
            metricName
            
            defaultAction
            
            changeToken
            
            options.tags
            
        
        options = setOptions (CreateWebACLOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createWebACLRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateWebACL"
                
                (AWS.Core.Decode.ResultDecoder "CreateWebACLResponse" createWebACLResponseDecoder)
                
            )



{-| Options for a createWebACL request
-}
type alias CreateWebACLOptions =
    {
    tags : Maybe (List Tag)
    }



{-| <p>Creates an <a>XssMatchSet</a>, which you use to allow, block, or count requests that contain cross-site scripting attacks in the specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.</p> <p>To create and configure an <code>XssMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateXssMatchSet</code> request.</p> </li> <li> <p>Submit a <code>CreateXssMatchSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateXssMatchSet</a> request.</p> </li> <li> <p>Submit an <a>UpdateXssMatchSet</a> request to specify the parts of web requests in which you want to allow, block, or count cross-site scripting attacks.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}

createXssMatchSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateXssMatchSetResponse)

createXssMatchSet name changeToken =
    
    let
        requestInput = CreateXssMatchSetRequest
            
            name
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createXssMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateXssMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "CreateXssMatchSetResponse" createXssMatchSetResponseDecoder)
                
            )





{-| <p>Permanently deletes a <a>ByteMatchSet</a>. You can't delete a <code>ByteMatchSet</code> if it's still used in any <code>Rules</code> or if it still includes any <a>ByteMatchTuple</a> objects (any filters).</p> <p>If you just want to remove a <code>ByteMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p> <p>To permanently delete a <code>ByteMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Update the <code>ByteMatchSet</code> to remove filters, if any. For more information, see <a>UpdateByteMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteByteMatchSet</code> request.</p> </li> <li> <p>Submit a <code>DeleteByteMatchSet</code> request.</p> </li> </ol>

__Required Parameters__

* `byteMatchSetId` __:__ `String`
* `changeToken` __:__ `String`


-}

deleteByteMatchSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteByteMatchSetResponse)

deleteByteMatchSet byteMatchSetId changeToken =
    
    let
        requestInput = DeleteByteMatchSetRequest
            
            byteMatchSetId
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteByteMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteByteMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "DeleteByteMatchSetResponse" deleteByteMatchSetResponseDecoder)
                
            )





{-| <p>Permanently deletes a <a>GeoMatchSet</a>. You can't delete a <code>GeoMatchSet</code> if it's still used in any <code>Rules</code> or if it still includes any countries.</p> <p>If you just want to remove a <code>GeoMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p> <p>To permanently delete a <code>GeoMatchSet</code> from AWS WAF, perform the following steps:</p> <ol> <li> <p>Update the <code>GeoMatchSet</code> to remove any countries. For more information, see <a>UpdateGeoMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteGeoMatchSet</code> request.</p> </li> <li> <p>Submit a <code>DeleteGeoMatchSet</code> request.</p> </li> </ol>

__Required Parameters__

* `geoMatchSetId` __:__ `String`
* `changeToken` __:__ `String`


-}

deleteGeoMatchSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteGeoMatchSetResponse)

deleteGeoMatchSet geoMatchSetId changeToken =
    
    let
        requestInput = DeleteGeoMatchSetRequest
            
            geoMatchSetId
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteGeoMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteGeoMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "DeleteGeoMatchSetResponse" deleteGeoMatchSetResponseDecoder)
                
            )





{-| <p>Permanently deletes an <a>IPSet</a>. You can't delete an <code>IPSet</code> if it's still used in any <code>Rules</code> or if it still includes any IP addresses.</p> <p>If you just want to remove an <code>IPSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p> <p>To permanently delete an <code>IPSet</code> from AWS WAF, perform the following steps:</p> <ol> <li> <p>Update the <code>IPSet</code> to remove IP address ranges, if any. For more information, see <a>UpdateIPSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteIPSet</code> request.</p> </li> <li> <p>Submit a <code>DeleteIPSet</code> request.</p> </li> </ol>

__Required Parameters__

* `iPSetId` __:__ `String`
* `changeToken` __:__ `String`


-}

deleteIPSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteIPSetResponse)

deleteIPSet iPSetId changeToken =
    
    let
        requestInput = DeleteIPSetRequest
            
            iPSetId
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteIPSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteIPSet"
                
                (AWS.Core.Decode.ResultDecoder "DeleteIPSetResponse" deleteIPSetResponseDecoder)
                
            )





{-| <p>Permanently deletes the <a>LoggingConfiguration</a> from the specified web ACL.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

deleteLoggingConfiguration :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteLoggingConfigurationResponse)

deleteLoggingConfiguration resourceArn =
    
    let
        requestInput = DeleteLoggingConfigurationRequest
            
            resourceArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteLoggingConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteLoggingConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "DeleteLoggingConfigurationResponse" deleteLoggingConfigurationResponseDecoder)
                
            )





{-| <p>Permanently deletes an IAM policy from the specified RuleGroup.</p> <p>The user making the request must be the owner of the RuleGroup.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

deletePermissionPolicy :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeletePermissionPolicyResponse)

deletePermissionPolicy resourceArn =
    
    let
        requestInput = DeletePermissionPolicyRequest
            
            resourceArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deletePermissionPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeletePermissionPolicy"
                
                (AWS.Core.Decode.ResultDecoder "DeletePermissionPolicyResponse" deletePermissionPolicyResponseDecoder)
                
            )





{-| <p>Permanently deletes a <a>RateBasedRule</a>. You can't delete a rule if it's still used in any <code>WebACL</code> objects or if it still includes any predicates, such as <code>ByteMatchSet</code> objects.</p> <p>If you just want to remove a rule from a <code>WebACL</code>, use <a>UpdateWebACL</a>.</p> <p>To permanently delete a <code>RateBasedRule</code> from AWS WAF, perform the following steps:</p> <ol> <li> <p>Update the <code>RateBasedRule</code> to remove predicates, if any. For more information, see <a>UpdateRateBasedRule</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteRateBasedRule</code> request.</p> </li> <li> <p>Submit a <code>DeleteRateBasedRule</code> request.</p> </li> </ol>

__Required Parameters__

* `ruleId` __:__ `String`
* `changeToken` __:__ `String`


-}

deleteRateBasedRule :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRateBasedRuleResponse)

deleteRateBasedRule ruleId changeToken =
    
    let
        requestInput = DeleteRateBasedRuleRequest
            
            ruleId
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRateBasedRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRateBasedRule"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRateBasedRuleResponse" deleteRateBasedRuleResponseDecoder)
                
            )





{-| <p>Permanently deletes a <a>RegexMatchSet</a>. You can't delete a <code>RegexMatchSet</code> if it's still used in any <code>Rules</code> or if it still includes any <code>RegexMatchTuples</code> objects (any filters).</p> <p>If you just want to remove a <code>RegexMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p> <p>To permanently delete a <code>RegexMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Update the <code>RegexMatchSet</code> to remove filters, if any. For more information, see <a>UpdateRegexMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteRegexMatchSet</code> request.</p> </li> <li> <p>Submit a <code>DeleteRegexMatchSet</code> request.</p> </li> </ol>

__Required Parameters__

* `regexMatchSetId` __:__ `String`
* `changeToken` __:__ `String`


-}

deleteRegexMatchSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRegexMatchSetResponse)

deleteRegexMatchSet regexMatchSetId changeToken =
    
    let
        requestInput = DeleteRegexMatchSetRequest
            
            regexMatchSetId
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRegexMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRegexMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRegexMatchSetResponse" deleteRegexMatchSetResponseDecoder)
                
            )





{-| <p>Permanently deletes a <a>RegexPatternSet</a>. You can't delete a <code>RegexPatternSet</code> if it's still used in any <code>RegexMatchSet</code> or if the <code>RegexPatternSet</code> is not empty. </p>

__Required Parameters__

* `regexPatternSetId` __:__ `String`
* `changeToken` __:__ `String`


-}

deleteRegexPatternSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRegexPatternSetResponse)

deleteRegexPatternSet regexPatternSetId changeToken =
    
    let
        requestInput = DeleteRegexPatternSetRequest
            
            regexPatternSetId
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRegexPatternSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRegexPatternSet"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRegexPatternSetResponse" deleteRegexPatternSetResponseDecoder)
                
            )





{-| <p>Permanently deletes a <a>Rule</a>. You can't delete a <code>Rule</code> if it's still used in any <code>WebACL</code> objects or if it still includes any predicates, such as <code>ByteMatchSet</code> objects.</p> <p>If you just want to remove a <code>Rule</code> from a <code>WebACL</code>, use <a>UpdateWebACL</a>.</p> <p>To permanently delete a <code>Rule</code> from AWS WAF, perform the following steps:</p> <ol> <li> <p>Update the <code>Rule</code> to remove predicates, if any. For more information, see <a>UpdateRule</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteRule</code> request.</p> </li> <li> <p>Submit a <code>DeleteRule</code> request.</p> </li> </ol>

__Required Parameters__

* `ruleId` __:__ `String`
* `changeToken` __:__ `String`


-}

deleteRule :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRuleResponse)

deleteRule ruleId changeToken =
    
    let
        requestInput = DeleteRuleRequest
            
            ruleId
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRule"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRuleResponse" deleteRuleResponseDecoder)
                
            )





{-| <p>Permanently deletes a <a>RuleGroup</a>. You can't delete a <code>RuleGroup</code> if it's still used in any <code>WebACL</code> objects or if it still includes any rules.</p> <p>If you just want to remove a <code>RuleGroup</code> from a <code>WebACL</code>, use <a>UpdateWebACL</a>.</p> <p>To permanently delete a <code>RuleGroup</code> from AWS WAF, perform the following steps:</p> <ol> <li> <p>Update the <code>RuleGroup</code> to remove rules, if any. For more information, see <a>UpdateRuleGroup</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteRuleGroup</code> request.</p> </li> <li> <p>Submit a <code>DeleteRuleGroup</code> request.</p> </li> </ol>

__Required Parameters__

* `ruleGroupId` __:__ `String`
* `changeToken` __:__ `String`


-}

deleteRuleGroup :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRuleGroupResponse)

deleteRuleGroup ruleGroupId changeToken =
    
    let
        requestInput = DeleteRuleGroupRequest
            
            ruleGroupId
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRuleGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRuleGroup"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRuleGroupResponse" deleteRuleGroupResponseDecoder)
                
            )





{-| <p>Permanently deletes a <a>SizeConstraintSet</a>. You can't delete a <code>SizeConstraintSet</code> if it's still used in any <code>Rules</code> or if it still includes any <a>SizeConstraint</a> objects (any filters).</p> <p>If you just want to remove a <code>SizeConstraintSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p> <p>To permanently delete a <code>SizeConstraintSet</code>, perform the following steps:</p> <ol> <li> <p>Update the <code>SizeConstraintSet</code> to remove filters, if any. For more information, see <a>UpdateSizeConstraintSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteSizeConstraintSet</code> request.</p> </li> <li> <p>Submit a <code>DeleteSizeConstraintSet</code> request.</p> </li> </ol>

__Required Parameters__

* `sizeConstraintSetId` __:__ `String`
* `changeToken` __:__ `String`


-}

deleteSizeConstraintSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteSizeConstraintSetResponse)

deleteSizeConstraintSet sizeConstraintSetId changeToken =
    
    let
        requestInput = DeleteSizeConstraintSetRequest
            
            sizeConstraintSetId
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteSizeConstraintSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteSizeConstraintSet"
                
                (AWS.Core.Decode.ResultDecoder "DeleteSizeConstraintSetResponse" deleteSizeConstraintSetResponseDecoder)
                
            )





{-| <p>Permanently deletes a <a>SqlInjectionMatchSet</a>. You can't delete a <code>SqlInjectionMatchSet</code> if it's still used in any <code>Rules</code> or if it still contains any <a>SqlInjectionMatchTuple</a> objects.</p> <p>If you just want to remove a <code>SqlInjectionMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p> <p>To permanently delete a <code>SqlInjectionMatchSet</code> from AWS WAF, perform the following steps:</p> <ol> <li> <p>Update the <code>SqlInjectionMatchSet</code> to remove filters, if any. For more information, see <a>UpdateSqlInjectionMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteSqlInjectionMatchSet</code> request.</p> </li> <li> <p>Submit a <code>DeleteSqlInjectionMatchSet</code> request.</p> </li> </ol>

__Required Parameters__

* `sqlInjectionMatchSetId` __:__ `String`
* `changeToken` __:__ `String`


-}

deleteSqlInjectionMatchSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteSqlInjectionMatchSetResponse)

deleteSqlInjectionMatchSet sqlInjectionMatchSetId changeToken =
    
    let
        requestInput = DeleteSqlInjectionMatchSetRequest
            
            sqlInjectionMatchSetId
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteSqlInjectionMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteSqlInjectionMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "DeleteSqlInjectionMatchSetResponse" deleteSqlInjectionMatchSetResponseDecoder)
                
            )





{-| <p>Permanently deletes a <a>WebACL</a>. You can't delete a <code>WebACL</code> if it still contains any <code>Rules</code>.</p> <p>To delete a <code>WebACL</code>, perform the following steps:</p> <ol> <li> <p>Update the <code>WebACL</code> to remove <code>Rules</code>, if any. For more information, see <a>UpdateWebACL</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteWebACL</code> request.</p> </li> <li> <p>Submit a <code>DeleteWebACL</code> request.</p> </li> </ol>

__Required Parameters__

* `webACLId` __:__ `String`
* `changeToken` __:__ `String`


-}

deleteWebACL :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteWebACLResponse)

deleteWebACL webACLId changeToken =
    
    let
        requestInput = DeleteWebACLRequest
            
            webACLId
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteWebACLRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteWebACL"
                
                (AWS.Core.Decode.ResultDecoder "DeleteWebACLResponse" deleteWebACLResponseDecoder)
                
            )





{-| <p>Permanently deletes an <a>XssMatchSet</a>. You can't delete an <code>XssMatchSet</code> if it's still used in any <code>Rules</code> or if it still contains any <a>XssMatchTuple</a> objects.</p> <p>If you just want to remove an <code>XssMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p> <p>To permanently delete an <code>XssMatchSet</code> from AWS WAF, perform the following steps:</p> <ol> <li> <p>Update the <code>XssMatchSet</code> to remove filters, if any. For more information, see <a>UpdateXssMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteXssMatchSet</code> request.</p> </li> <li> <p>Submit a <code>DeleteXssMatchSet</code> request.</p> </li> </ol>

__Required Parameters__

* `xssMatchSetId` __:__ `String`
* `changeToken` __:__ `String`


-}

deleteXssMatchSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteXssMatchSetResponse)

deleteXssMatchSet xssMatchSetId changeToken =
    
    let
        requestInput = DeleteXssMatchSetRequest
            
            xssMatchSetId
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteXssMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteXssMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "DeleteXssMatchSetResponse" deleteXssMatchSetResponseDecoder)
                
            )





{-| <p>Returns the <a>ByteMatchSet</a> specified by <code>ByteMatchSetId</code>.</p>

__Required Parameters__

* `byteMatchSetId` __:__ `String`


-}

getByteMatchSet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetByteMatchSetResponse)

getByteMatchSet byteMatchSetId =
    
    let
        requestInput = GetByteMatchSetRequest
            
            byteMatchSetId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getByteMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetByteMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "GetByteMatchSetResponse" getByteMatchSetResponseDecoder)
                
            )





{-| <p>When you want to create, update, or delete AWS WAF objects, get a change token and include the change token in the create, update, or delete request. Change tokens ensure that your application doesn't submit conflicting requests to AWS WAF.</p> <p>Each create, update, or delete request must use a unique change token. If your application submits a <code>GetChangeToken</code> request and then submits a second <code>GetChangeToken</code> request before submitting a create, update, or delete request, the second <code>GetChangeToken</code> request returns the same value as the first <code>GetChangeToken</code> request.</p> <p>When you use a change token in a create, update, or delete request, the status of the change token changes to <code>PENDING</code>, which indicates that AWS WAF is propagating the change to all AWS WAF servers. Use <code>GetChangeTokenStatus</code> to determine the status of your change token.</p>

__Required Parameters__



-}

getChangeToken :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetChangeTokenResponse)

getChangeToken =
    
    let
        requestInput = GetChangeTokenRequest
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getChangeTokenRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetChangeToken"
                
                (AWS.Core.Decode.ResultDecoder "GetChangeTokenResponse" getChangeTokenResponseDecoder)
                
            )





{-| <p>Returns the status of a <code>ChangeToken</code> that you got by calling <a>GetChangeToken</a>. <code>ChangeTokenStatus</code> is one of the following values:</p> <ul> <li> <p> <code>PROVISIONED</code>: You requested the change token by calling <code>GetChangeToken</code>, but you haven't used it yet in a call to create, update, or delete an AWS WAF object.</p> </li> <li> <p> <code>PENDING</code>: AWS WAF is propagating the create, update, or delete request to all AWS WAF servers.</p> </li> <li> <p> <code>INSYNC</code>: Propagation is complete.</p> </li> </ul>

__Required Parameters__

* `changeToken` __:__ `String`


-}

getChangeTokenStatus :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetChangeTokenStatusResponse)

getChangeTokenStatus changeToken =
    
    let
        requestInput = GetChangeTokenStatusRequest
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getChangeTokenStatusRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetChangeTokenStatus"
                
                (AWS.Core.Decode.ResultDecoder "GetChangeTokenStatusResponse" getChangeTokenStatusResponseDecoder)
                
            )





{-| <p>Returns the <a>GeoMatchSet</a> that is specified by <code>GeoMatchSetId</code>.</p>

__Required Parameters__

* `geoMatchSetId` __:__ `String`


-}

getGeoMatchSet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetGeoMatchSetResponse)

getGeoMatchSet geoMatchSetId =
    
    let
        requestInput = GetGeoMatchSetRequest
            
            geoMatchSetId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getGeoMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetGeoMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "GetGeoMatchSetResponse" getGeoMatchSetResponseDecoder)
                
            )





{-| <p>Returns the <a>IPSet</a> that is specified by <code>IPSetId</code>.</p>

__Required Parameters__

* `iPSetId` __:__ `String`


-}

getIPSet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetIPSetResponse)

getIPSet iPSetId =
    
    let
        requestInput = GetIPSetRequest
            
            iPSetId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getIPSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetIPSet"
                
                (AWS.Core.Decode.ResultDecoder "GetIPSetResponse" getIPSetResponseDecoder)
                
            )





{-| <p>Returns the <a>LoggingConfiguration</a> for the specified web ACL.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

getLoggingConfiguration :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetLoggingConfigurationResponse)

getLoggingConfiguration resourceArn =
    
    let
        requestInput = GetLoggingConfigurationRequest
            
            resourceArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getLoggingConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetLoggingConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "GetLoggingConfigurationResponse" getLoggingConfigurationResponseDecoder)
                
            )





{-| <p>Returns the IAM policy attached to the RuleGroup.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

getPermissionPolicy :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPermissionPolicyResponse)

getPermissionPolicy resourceArn =
    
    let
        requestInput = GetPermissionPolicyRequest
            
            resourceArn
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getPermissionPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetPermissionPolicy"
                
                (AWS.Core.Decode.ResultDecoder "GetPermissionPolicyResponse" getPermissionPolicyResponseDecoder)
                
            )





{-| <p>Returns the <a>RateBasedRule</a> that is specified by the <code>RuleId</code> that you included in the <code>GetRateBasedRule</code> request.</p>

__Required Parameters__

* `ruleId` __:__ `String`


-}

getRateBasedRule :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRateBasedRuleResponse)

getRateBasedRule ruleId =
    
    let
        requestInput = GetRateBasedRuleRequest
            
            ruleId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRateBasedRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRateBasedRule"
                
                (AWS.Core.Decode.ResultDecoder "GetRateBasedRuleResponse" getRateBasedRuleResponseDecoder)
                
            )





{-| <p>Returns an array of IP addresses currently being blocked by the <a>RateBasedRule</a> that is specified by the <code>RuleId</code>. The maximum number of managed keys that will be blocked is 10,000. If more than 10,000 addresses exceed the rate limit, the 10,000 addresses with the highest rates will be blocked.</p>

__Required Parameters__

* `ruleId` __:__ `String`


-}

getRateBasedRuleManagedKeys :
  
    String ->
  
  
    ( GetRateBasedRuleManagedKeysOptions -> GetRateBasedRuleManagedKeysOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRateBasedRuleManagedKeysResponse)

getRateBasedRuleManagedKeys ruleId setOptions =
    
    let
        requestInput = GetRateBasedRuleManagedKeysRequest
            
            ruleId
            
            options.nextMarker
            
        
        options = setOptions (GetRateBasedRuleManagedKeysOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRateBasedRuleManagedKeysRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRateBasedRuleManagedKeys"
                
                (AWS.Core.Decode.ResultDecoder "GetRateBasedRuleManagedKeysResponse" getRateBasedRuleManagedKeysResponseDecoder)
                
            )



{-| Options for a getRateBasedRuleManagedKeys request
-}
type alias GetRateBasedRuleManagedKeysOptions =
    {
    nextMarker : Maybe String
    }



{-| <p>Returns the <a>RegexMatchSet</a> specified by <code>RegexMatchSetId</code>.</p>

__Required Parameters__

* `regexMatchSetId` __:__ `String`


-}

getRegexMatchSet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRegexMatchSetResponse)

getRegexMatchSet regexMatchSetId =
    
    let
        requestInput = GetRegexMatchSetRequest
            
            regexMatchSetId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRegexMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRegexMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "GetRegexMatchSetResponse" getRegexMatchSetResponseDecoder)
                
            )





{-| <p>Returns the <a>RegexPatternSet</a> specified by <code>RegexPatternSetId</code>.</p>

__Required Parameters__

* `regexPatternSetId` __:__ `String`


-}

getRegexPatternSet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRegexPatternSetResponse)

getRegexPatternSet regexPatternSetId =
    
    let
        requestInput = GetRegexPatternSetRequest
            
            regexPatternSetId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRegexPatternSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRegexPatternSet"
                
                (AWS.Core.Decode.ResultDecoder "GetRegexPatternSetResponse" getRegexPatternSetResponseDecoder)
                
            )





{-| <p>Returns the <a>Rule</a> that is specified by the <code>RuleId</code> that you included in the <code>GetRule</code> request.</p>

__Required Parameters__

* `ruleId` __:__ `String`


-}

getRule :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRuleResponse)

getRule ruleId =
    
    let
        requestInput = GetRuleRequest
            
            ruleId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRule"
                
                (AWS.Core.Decode.ResultDecoder "GetRuleResponse" getRuleResponseDecoder)
                
            )





{-| <p>Returns the <a>RuleGroup</a> that is specified by the <code>RuleGroupId</code> that you included in the <code>GetRuleGroup</code> request.</p> <p>To view the rules in a rule group, use <a>ListActivatedRulesInRuleGroup</a>.</p>

__Required Parameters__

* `ruleGroupId` __:__ `String`


-}

getRuleGroup :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRuleGroupResponse)

getRuleGroup ruleGroupId =
    
    let
        requestInput = GetRuleGroupRequest
            
            ruleGroupId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRuleGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRuleGroup"
                
                (AWS.Core.Decode.ResultDecoder "GetRuleGroupResponse" getRuleGroupResponseDecoder)
                
            )





{-| <p>Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose. You can specify a sample size of up to 500 requests, and you can specify any time range in the previous three hours.</p> <p> <code>GetSampledRequests</code> returns a time range, which is usually the time range that you specified. However, if your resource (such as a CloudFront distribution) received 5,000 requests before the specified time range elapsed, <code>GetSampledRequests</code> returns an updated time range. This new time range indicates the actual period during which AWS WAF selected the requests in the sample.</p>

__Required Parameters__

* `webAclId` __:__ `String`
* `ruleId` __:__ `String`
* `timeWindow` __:__ `TimeWindow`
* `maxItems` __:__ `Int`


-}

getSampledRequests :
  
    String ->
  
    String ->
  
    TimeWindow ->
  
    Int ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSampledRequestsResponse)

getSampledRequests webAclId ruleId timeWindow maxItems =
    
    let
        requestInput = GetSampledRequestsRequest
            
            webAclId
            
            ruleId
            
            timeWindow
            
            maxItems
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getSampledRequestsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetSampledRequests"
                
                (AWS.Core.Decode.ResultDecoder "GetSampledRequestsResponse" getSampledRequestsResponseDecoder)
                
            )





{-| <p>Returns the <a>SizeConstraintSet</a> specified by <code>SizeConstraintSetId</code>.</p>

__Required Parameters__

* `sizeConstraintSetId` __:__ `String`


-}

getSizeConstraintSet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSizeConstraintSetResponse)

getSizeConstraintSet sizeConstraintSetId =
    
    let
        requestInput = GetSizeConstraintSetRequest
            
            sizeConstraintSetId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getSizeConstraintSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetSizeConstraintSet"
                
                (AWS.Core.Decode.ResultDecoder "GetSizeConstraintSetResponse" getSizeConstraintSetResponseDecoder)
                
            )





{-| <p>Returns the <a>SqlInjectionMatchSet</a> that is specified by <code>SqlInjectionMatchSetId</code>.</p>

__Required Parameters__

* `sqlInjectionMatchSetId` __:__ `String`


-}

getSqlInjectionMatchSet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetSqlInjectionMatchSetResponse)

getSqlInjectionMatchSet sqlInjectionMatchSetId =
    
    let
        requestInput = GetSqlInjectionMatchSetRequest
            
            sqlInjectionMatchSetId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getSqlInjectionMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetSqlInjectionMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "GetSqlInjectionMatchSetResponse" getSqlInjectionMatchSetResponseDecoder)
                
            )





{-| <p>Returns the <a>WebACL</a> that is specified by <code>WebACLId</code>.</p>

__Required Parameters__

* `webACLId` __:__ `String`


-}

getWebACL :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetWebACLResponse)

getWebACL webACLId =
    
    let
        requestInput = GetWebACLRequest
            
            webACLId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getWebACLRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetWebACL"
                
                (AWS.Core.Decode.ResultDecoder "GetWebACLResponse" getWebACLResponseDecoder)
                
            )





{-| <p>Returns the <a>XssMatchSet</a> that is specified by <code>XssMatchSetId</code>.</p>

__Required Parameters__

* `xssMatchSetId` __:__ `String`


-}

getXssMatchSet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetXssMatchSetResponse)

getXssMatchSet xssMatchSetId =
    
    let
        requestInput = GetXssMatchSetRequest
            
            xssMatchSetId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getXssMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetXssMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "GetXssMatchSetResponse" getXssMatchSetResponseDecoder)
                
            )





{-| <p>Returns an array of <a>ActivatedRule</a> objects.</p>

__Required Parameters__



-}

listActivatedRulesInRuleGroup :
  
  
    ( ListActivatedRulesInRuleGroupOptions -> ListActivatedRulesInRuleGroupOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListActivatedRulesInRuleGroupResponse)

listActivatedRulesInRuleGroup setOptions =
    
    let
        requestInput = ListActivatedRulesInRuleGroupRequest
            
            options.ruleGroupId
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListActivatedRulesInRuleGroupOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listActivatedRulesInRuleGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListActivatedRulesInRuleGroup"
                
                (AWS.Core.Decode.ResultDecoder "ListActivatedRulesInRuleGroupResponse" listActivatedRulesInRuleGroupResponseDecoder)
                
            )



{-| Options for a listActivatedRulesInRuleGroup request
-}
type alias ListActivatedRulesInRuleGroupOptions =
    {
    ruleGroupId : Maybe String,nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>ByteMatchSetSummary</a> objects.</p>

__Required Parameters__



-}

listByteMatchSets :
  
  
    ( ListByteMatchSetsOptions -> ListByteMatchSetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListByteMatchSetsResponse)

listByteMatchSets setOptions =
    
    let
        requestInput = ListByteMatchSetsRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListByteMatchSetsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listByteMatchSetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListByteMatchSets"
                
                (AWS.Core.Decode.ResultDecoder "ListByteMatchSetsResponse" listByteMatchSetsResponseDecoder)
                
            )



{-| Options for a listByteMatchSets request
-}
type alias ListByteMatchSetsOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>GeoMatchSetSummary</a> objects in the response.</p>

__Required Parameters__



-}

listGeoMatchSets :
  
  
    ( ListGeoMatchSetsOptions -> ListGeoMatchSetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListGeoMatchSetsResponse)

listGeoMatchSets setOptions =
    
    let
        requestInput = ListGeoMatchSetsRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListGeoMatchSetsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listGeoMatchSetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListGeoMatchSets"
                
                (AWS.Core.Decode.ResultDecoder "ListGeoMatchSetsResponse" listGeoMatchSetsResponseDecoder)
                
            )



{-| Options for a listGeoMatchSets request
-}
type alias ListGeoMatchSetsOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>IPSetSummary</a> objects in the response.</p>

__Required Parameters__



-}

listIPSets :
  
  
    ( ListIPSetsOptions -> ListIPSetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListIPSetsResponse)

listIPSets setOptions =
    
    let
        requestInput = ListIPSetsRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListIPSetsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listIPSetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListIPSets"
                
                (AWS.Core.Decode.ResultDecoder "ListIPSetsResponse" listIPSetsResponseDecoder)
                
            )



{-| Options for a listIPSets request
-}
type alias ListIPSetsOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>LoggingConfiguration</a> objects.</p>

__Required Parameters__



-}

listLoggingConfigurations :
  
  
    ( ListLoggingConfigurationsOptions -> ListLoggingConfigurationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListLoggingConfigurationsResponse)

listLoggingConfigurations setOptions =
    
    let
        requestInput = ListLoggingConfigurationsRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListLoggingConfigurationsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listLoggingConfigurationsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListLoggingConfigurations"
                
                (AWS.Core.Decode.ResultDecoder "ListLoggingConfigurationsResponse" listLoggingConfigurationsResponseDecoder)
                
            )



{-| Options for a listLoggingConfigurations request
-}
type alias ListLoggingConfigurationsOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>RuleSummary</a> objects.</p>

__Required Parameters__



-}

listRateBasedRules :
  
  
    ( ListRateBasedRulesOptions -> ListRateBasedRulesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRateBasedRulesResponse)

listRateBasedRules setOptions =
    
    let
        requestInput = ListRateBasedRulesRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListRateBasedRulesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRateBasedRulesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRateBasedRules"
                
                (AWS.Core.Decode.ResultDecoder "ListRateBasedRulesResponse" listRateBasedRulesResponseDecoder)
                
            )



{-| Options for a listRateBasedRules request
-}
type alias ListRateBasedRulesOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>RegexMatchSetSummary</a> objects.</p>

__Required Parameters__



-}

listRegexMatchSets :
  
  
    ( ListRegexMatchSetsOptions -> ListRegexMatchSetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRegexMatchSetsResponse)

listRegexMatchSets setOptions =
    
    let
        requestInput = ListRegexMatchSetsRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListRegexMatchSetsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRegexMatchSetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRegexMatchSets"
                
                (AWS.Core.Decode.ResultDecoder "ListRegexMatchSetsResponse" listRegexMatchSetsResponseDecoder)
                
            )



{-| Options for a listRegexMatchSets request
-}
type alias ListRegexMatchSetsOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>RegexPatternSetSummary</a> objects.</p>

__Required Parameters__



-}

listRegexPatternSets :
  
  
    ( ListRegexPatternSetsOptions -> ListRegexPatternSetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRegexPatternSetsResponse)

listRegexPatternSets setOptions =
    
    let
        requestInput = ListRegexPatternSetsRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListRegexPatternSetsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRegexPatternSetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRegexPatternSets"
                
                (AWS.Core.Decode.ResultDecoder "ListRegexPatternSetsResponse" listRegexPatternSetsResponseDecoder)
                
            )



{-| Options for a listRegexPatternSets request
-}
type alias ListRegexPatternSetsOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>RuleGroup</a> objects.</p>

__Required Parameters__



-}

listRuleGroups :
  
  
    ( ListRuleGroupsOptions -> ListRuleGroupsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRuleGroupsResponse)

listRuleGroups setOptions =
    
    let
        requestInput = ListRuleGroupsRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListRuleGroupsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRuleGroupsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRuleGroups"
                
                (AWS.Core.Decode.ResultDecoder "ListRuleGroupsResponse" listRuleGroupsResponseDecoder)
                
            )



{-| Options for a listRuleGroups request
-}
type alias ListRuleGroupsOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>RuleSummary</a> objects.</p>

__Required Parameters__



-}

listRules :
  
  
    ( ListRulesOptions -> ListRulesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRulesResponse)

listRules setOptions =
    
    let
        requestInput = ListRulesRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListRulesOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRulesRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRules"
                
                (AWS.Core.Decode.ResultDecoder "ListRulesResponse" listRulesResponseDecoder)
                
            )



{-| Options for a listRules request
-}
type alias ListRulesOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>SizeConstraintSetSummary</a> objects.</p>

__Required Parameters__



-}

listSizeConstraintSets :
  
  
    ( ListSizeConstraintSetsOptions -> ListSizeConstraintSetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListSizeConstraintSetsResponse)

listSizeConstraintSets setOptions =
    
    let
        requestInput = ListSizeConstraintSetsRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListSizeConstraintSetsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listSizeConstraintSetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListSizeConstraintSets"
                
                (AWS.Core.Decode.ResultDecoder "ListSizeConstraintSetsResponse" listSizeConstraintSetsResponseDecoder)
                
            )



{-| Options for a listSizeConstraintSets request
-}
type alias ListSizeConstraintSetsOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>SqlInjectionMatchSet</a> objects.</p>

__Required Parameters__



-}

listSqlInjectionMatchSets :
  
  
    ( ListSqlInjectionMatchSetsOptions -> ListSqlInjectionMatchSetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListSqlInjectionMatchSetsResponse)

listSqlInjectionMatchSets setOptions =
    
    let
        requestInput = ListSqlInjectionMatchSetsRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListSqlInjectionMatchSetsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listSqlInjectionMatchSetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListSqlInjectionMatchSets"
                
                (AWS.Core.Decode.ResultDecoder "ListSqlInjectionMatchSetsResponse" listSqlInjectionMatchSetsResponseDecoder)
                
            )



{-| Options for a listSqlInjectionMatchSets request
-}
type alias ListSqlInjectionMatchSetsOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>RuleGroup</a> objects that you are subscribed to.</p>

__Required Parameters__



-}

listSubscribedRuleGroups :
  
  
    ( ListSubscribedRuleGroupsOptions -> ListSubscribedRuleGroupsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListSubscribedRuleGroupsResponse)

listSubscribedRuleGroups setOptions =
    
    let
        requestInput = ListSubscribedRuleGroupsRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListSubscribedRuleGroupsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listSubscribedRuleGroupsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListSubscribedRuleGroups"
                
                (AWS.Core.Decode.ResultDecoder "ListSubscribedRuleGroupsResponse" listSubscribedRuleGroupsResponseDecoder)
                
            )



{-| Options for a listSubscribedRuleGroups request
-}
type alias ListSubscribedRuleGroupsOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| undefined

__Required Parameters__

* `resourceARN` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    ( ListTagsForResourceOptions -> ListTagsForResourceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceResponse)

listTagsForResource resourceARN setOptions =
    
    let
        requestInput = ListTagsForResourceRequest
            
            options.nextMarker
            
            options.limit
            
            resourceARN
            
        
        options = setOptions (ListTagsForResourceOptions Nothing Nothing)
        
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



{-| Options for a listTagsForResource request
-}
type alias ListTagsForResourceOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>WebACLSummary</a> objects in the response.</p>

__Required Parameters__



-}

listWebACLs :
  
  
    ( ListWebACLsOptions -> ListWebACLsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListWebACLsResponse)

listWebACLs setOptions =
    
    let
        requestInput = ListWebACLsRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListWebACLsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listWebACLsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListWebACLs"
                
                (AWS.Core.Decode.ResultDecoder "ListWebACLsResponse" listWebACLsResponseDecoder)
                
            )



{-| Options for a listWebACLs request
-}
type alias ListWebACLsOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Returns an array of <a>XssMatchSet</a> objects.</p>

__Required Parameters__



-}

listXssMatchSets :
  
  
    ( ListXssMatchSetsOptions -> ListXssMatchSetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListXssMatchSetsResponse)

listXssMatchSets setOptions =
    
    let
        requestInput = ListXssMatchSetsRequest
            
            options.nextMarker
            
            options.limit
            
        
        options = setOptions (ListXssMatchSetsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listXssMatchSetsRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListXssMatchSets"
                
                (AWS.Core.Decode.ResultDecoder "ListXssMatchSetsResponse" listXssMatchSetsResponseDecoder)
                
            )



{-| Options for a listXssMatchSets request
-}
type alias ListXssMatchSetsOptions =
    {
    nextMarker : Maybe String,limit : Maybe Int
    }



{-| <p>Associates a <a>LoggingConfiguration</a> with a specified web ACL.</p> <p>You can access information about all traffic that AWS WAF inspects using the following steps:</p> <ol> <li> <p>Create an Amazon Kinesis Data Firehose . </p> <p>Create the data firehose with a PUT source and in the region that you are operating. However, if you are capturing logs for Amazon CloudFront, always create the firehose in US East (N. Virginia). </p> <note> <p>Do not create the data firehose using a <code>Kinesis stream</code> as your source.</p> </note> </li> <li> <p>Associate that firehose to your web ACL using a <code>PutLoggingConfiguration</code> request.</p> </li> </ol> <p>When you successfully enable logging using a <code>PutLoggingConfiguration</code> request, AWS WAF will create a service linked role with the necessary permissions to write logs to the Amazon Kinesis Data Firehose. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging Web ACL Traffic Information</a> in the <i>AWS WAF Developer Guide</i>.</p>

__Required Parameters__

* `loggingConfiguration` __:__ `LoggingConfiguration`


-}

putLoggingConfiguration :
  
    LoggingConfiguration ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutLoggingConfigurationResponse)

putLoggingConfiguration loggingConfiguration =
    
    let
        requestInput = PutLoggingConfigurationRequest
            
            loggingConfiguration
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putLoggingConfigurationRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutLoggingConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "PutLoggingConfigurationResponse" putLoggingConfigurationResponseDecoder)
                
            )





{-| <p>Attaches a IAM policy to the specified resource. The only supported use for this action is to share a RuleGroup across accounts.</p> <p>The <code>PutPermissionPolicy</code> is subject to the following restrictions:</p> <ul> <li> <p>You can attach only one policy with each <code>PutPermissionPolicy</code> request.</p> </li> <li> <p>The policy must include an <code>Effect</code>, <code>Action</code> and <code>Principal</code>. </p> </li> <li> <p> <code>Effect</code> must specify <code>Allow</code>.</p> </li> <li> <p>The <code>Action</code> in the policy must be <code>waf:UpdateWebACL</code>, <code>waf-regional:UpdateWebACL</code>, <code>waf:GetRuleGroup</code> and <code>waf-regional:GetRuleGroup</code> . Any extra or wildcard actions in the policy will be rejected.</p> </li> <li> <p>The policy cannot include a <code>Resource</code> parameter.</p> </li> <li> <p>The ARN in the request must be a valid WAF RuleGroup ARN and the RuleGroup must exist in the same region.</p> </li> <li> <p>The user making the request must be the owner of the RuleGroup.</p> </li> <li> <p>Your policy must be composed using IAM Policy version 2012-10-17.</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM Policies</a>. </p> <p>An example of a valid policy parameter is shown in the Examples section below.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `policy` __:__ `String`


-}

putPermissionPolicy :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutPermissionPolicyResponse)

putPermissionPolicy resourceArn policy =
    
    let
        requestInput = PutPermissionPolicyRequest
            
            resourceArn
            
            policy
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putPermissionPolicyRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutPermissionPolicy"
                
                (AWS.Core.Decode.ResultDecoder "PutPermissionPolicyResponse" putPermissionPolicyResponseDecoder)
                
            )





{-| undefined

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





{-| undefined

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





{-| <p>Inserts or deletes <a>ByteMatchTuple</a> objects (filters) in a <a>ByteMatchSet</a>. For each <code>ByteMatchTuple</code> object, you specify the following values: </p> <ul> <li> <p>Whether to insert or delete the object from the array. If you want to change a <code>ByteMatchSetUpdate</code> object, you delete the existing object and add a new one.</p> </li> <li> <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p> </li> <li> <p>The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to look for. For more information, including how you specify the values for the AWS WAF API and the AWS CLI or SDKs, see <code>TargetString</code> in the <a>ByteMatchTuple</a> data type. </p> </li> <li> <p>Where to look, such as at the beginning or the end of a query string.</p> </li> <li> <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p> </li> </ul> <p>For example, you can add a <code>ByteMatchSetUpdate</code> object that matches web requests in which <code>User-Agent</code> headers contain the string <code>BadBot</code>. You can then configure AWS WAF to block those requests.</p> <p>To create and configure a <code>ByteMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Create a <code>ByteMatchSet.</code> For more information, see <a>CreateByteMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <code>UpdateByteMatchSet</code> request.</p> </li> <li> <p>Submit an <code>UpdateByteMatchSet</code> request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `byteMatchSetId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List ByteMatchSetUpdate)`


-}

updateByteMatchSet :
  
    String ->
  
    String ->
  
    (List ByteMatchSetUpdate) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateByteMatchSetResponse)

updateByteMatchSet byteMatchSetId changeToken updates =
    
    let
        requestInput = UpdateByteMatchSetRequest
            
            byteMatchSetId
            
            changeToken
            
            updates
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateByteMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateByteMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "UpdateByteMatchSetResponse" updateByteMatchSetResponseDecoder)
                
            )





{-| <p>Inserts or deletes <a>GeoMatchConstraint</a> objects in an <code>GeoMatchSet</code>. For each <code>GeoMatchConstraint</code> object, you specify the following values: </p> <ul> <li> <p>Whether to insert or delete the object from the array. If you want to change an <code>GeoMatchConstraint</code> object, you delete the existing object and add a new one.</p> </li> <li> <p>The <code>Type</code>. The only valid value for <code>Type</code> is <code>Country</code>.</p> </li> <li> <p>The <code>Value</code>, which is a two character code for the country to add to the <code>GeoMatchConstraint</code> object. Valid codes are listed in <a>GeoMatchConstraint$Value</a>.</p> </li> </ul> <p>To create and configure an <code>GeoMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Submit a <a>CreateGeoMatchSet</a> request.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateGeoMatchSet</a> request.</p> </li> <li> <p>Submit an <code>UpdateGeoMatchSet</code> request to specify the country that you want AWS WAF to watch for.</p> </li> </ol> <p>When you update an <code>GeoMatchSet</code>, you specify the country that you want to add and/or the country that you want to delete. If you want to change a country, you delete the existing country and add the new one.</p> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `geoMatchSetId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List GeoMatchSetUpdate)`


-}

updateGeoMatchSet :
  
    String ->
  
    String ->
  
    (List GeoMatchSetUpdate) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateGeoMatchSetResponse)

updateGeoMatchSet geoMatchSetId changeToken updates =
    
    let
        requestInput = UpdateGeoMatchSetRequest
            
            geoMatchSetId
            
            changeToken
            
            updates
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateGeoMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateGeoMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "UpdateGeoMatchSetResponse" updateGeoMatchSetResponseDecoder)
                
            )





{-| <p>Inserts or deletes <a>IPSetDescriptor</a> objects in an <code>IPSet</code>. For each <code>IPSetDescriptor</code> object, you specify the following values: </p> <ul> <li> <p>Whether to insert or delete the object from the array. If you want to change an <code>IPSetDescriptor</code> object, you delete the existing object and add a new one.</p> </li> <li> <p>The IP address version, <code>IPv4</code> or <code>IPv6</code>. </p> </li> <li> <p>The IP address in CIDR notation, for example, <code>192.0.2.0/24</code> (for the range of IP addresses from <code>192.0.2.0</code> to <code>192.0.2.255</code>) or <code>192.0.2.44/32</code> (for the individual IP address <code>192.0.2.44</code>). </p> </li> </ul> <p>AWS WAF supports IPv4 address ranges: /8 and any range between /16 through /32. AWS WAF supports IPv6 address ranges: /24, /32, /48, /56, /64, and /128. For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>.</p> <p>IPv6 addresses can be represented using any of the following formats:</p> <ul> <li> <p>1111:0000:0000:0000:0000:0000:0000:0111/128</p> </li> <li> <p>1111:0:0:0:0:0:0:0111/128</p> </li> <li> <p>1111::0111/128</p> </li> <li> <p>1111::111/128</p> </li> </ul> <p>You use an <code>IPSet</code> to specify which web requests you want to allow or block based on the IP addresses that the requests originated from. For example, if you're receiving a lot of requests from one or a small number of IP addresses and you want to block the requests, you can create an <code>IPSet</code> that specifies those IP addresses, and then configure AWS WAF to block the requests. </p> <p>To create and configure an <code>IPSet</code>, perform the following steps:</p> <ol> <li> <p>Submit a <a>CreateIPSet</a> request.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a> request.</p> </li> <li> <p>Submit an <code>UpdateIPSet</code> request to specify the IP addresses that you want AWS WAF to watch for.</p> </li> </ol> <p>When you update an <code>IPSet</code>, you specify the IP addresses that you want to add and/or the IP addresses that you want to delete. If you want to change an IP address, you delete the existing IP address and add the new one.</p> <p>You can insert a maximum of 1000 addresses in a single request.</p> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `iPSetId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List IPSetUpdate)`


-}

updateIPSet :
  
    String ->
  
    String ->
  
    (List IPSetUpdate) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateIPSetResponse)

updateIPSet iPSetId changeToken updates =
    
    let
        requestInput = UpdateIPSetRequest
            
            iPSetId
            
            changeToken
            
            updates
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateIPSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateIPSet"
                
                (AWS.Core.Decode.ResultDecoder "UpdateIPSetResponse" updateIPSetResponseDecoder)
                
            )





{-| <p>Inserts or deletes <a>Predicate</a> objects in a rule and updates the <code>RateLimit</code> in the rule. </p> <p>Each <code>Predicate</code> object identifies a predicate, such as a <a>ByteMatchSet</a> or an <a>IPSet</a>, that specifies the web requests that you want to block or count. The <code>RateLimit</code> specifies the number of requests every five minutes that triggers the rule.</p> <p>If you add more than one predicate to a <code>RateBasedRule</code>, a request must match all the predicates and exceed the <code>RateLimit</code> to be counted or blocked. For example, suppose you add the following to a <code>RateBasedRule</code>:</p> <ul> <li> <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44/32</code> </p> </li> <li> <p>A <code>ByteMatchSet</code> that matches <code>BadBot</code> in the <code>User-Agent</code> header</p> </li> </ul> <p>Further, you specify a <code>RateLimit</code> of 15,000.</p> <p>You then add the <code>RateBasedRule</code> to a <code>WebACL</code> and specify that you want to block requests that satisfy the rule. For a request to be blocked, it must come from the IP address 192.0.2.44 <i>and</i> the <code>User-Agent</code> header in the request must contain the value <code>BadBot</code>. Further, requests that match these two conditions much be received at a rate of more than 15,000 every five minutes. If the rate drops below this limit, AWS WAF no longer blocks the requests.</p> <p>As a second example, suppose you want to limit requests to a particular page on your site. To do this, you could add the following to a <code>RateBasedRule</code>:</p> <ul> <li> <p>A <code>ByteMatchSet</code> with <code>FieldToMatch</code> of <code>URI</code> </p> </li> <li> <p>A <code>PositionalConstraint</code> of <code>STARTS_WITH</code> </p> </li> <li> <p>A <code>TargetString</code> of <code>login</code> </p> </li> </ul> <p>Further, you specify a <code>RateLimit</code> of 15,000.</p> <p>By adding this <code>RateBasedRule</code> to a <code>WebACL</code>, you could limit requests to your login page without affecting the rest of your site.</p>

__Required Parameters__

* `ruleId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List RuleUpdate)`
* `rateLimit` __:__ `Int`


-}

updateRateBasedRule :
  
    String ->
  
    String ->
  
    (List RuleUpdate) ->
  
    Int ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateRateBasedRuleResponse)

updateRateBasedRule ruleId changeToken updates rateLimit =
    
    let
        requestInput = UpdateRateBasedRuleRequest
            
            ruleId
            
            changeToken
            
            updates
            
            rateLimit
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateRateBasedRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateRateBasedRule"
                
                (AWS.Core.Decode.ResultDecoder "UpdateRateBasedRuleResponse" updateRateBasedRuleResponseDecoder)
                
            )





{-| <p>Inserts or deletes <a>RegexMatchTuple</a> objects (filters) in a <a>RegexMatchSet</a>. For each <code>RegexMatchSetUpdate</code> object, you specify the following values: </p> <ul> <li> <p>Whether to insert or delete the object from the array. If you want to change a <code>RegexMatchSetUpdate</code> object, you delete the existing object and add a new one.</p> </li> <li> <p>The part of a web request that you want AWS WAF to inspectupdate, such as a query string or the value of the <code>User-Agent</code> header. </p> </li> <li> <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>. </p> </li> <li> <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p> </li> </ul> <p> For example, you can create a <code>RegexPatternSet</code> that matches any requests with <code>User-Agent</code> headers that contain the string <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p> <p>To create and configure a <code>RegexMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Create a <code>RegexMatchSet.</code> For more information, see <a>CreateRegexMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <code>UpdateRegexMatchSet</code> request.</p> </li> <li> <p>Submit an <code>UpdateRegexMatchSet</code> request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the identifier of the <code>RegexPatternSet</code> that contain the regular expression patters you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `regexMatchSetId` __:__ `String`
* `updates` __:__ `(List RegexMatchSetUpdate)`
* `changeToken` __:__ `String`


-}

updateRegexMatchSet :
  
    String ->
  
    (List RegexMatchSetUpdate) ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateRegexMatchSetResponse)

updateRegexMatchSet regexMatchSetId updates changeToken =
    
    let
        requestInput = UpdateRegexMatchSetRequest
            
            regexMatchSetId
            
            updates
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateRegexMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateRegexMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "UpdateRegexMatchSetResponse" updateRegexMatchSetResponseDecoder)
                
            )





{-| <p>Inserts or deletes <code>RegexPatternString</code> objects in a <a>RegexPatternSet</a>. For each <code>RegexPatternString</code> object, you specify the following values: </p> <ul> <li> <p>Whether to insert or delete the <code>RegexPatternString</code>.</p> </li> <li> <p>The regular expression pattern that you want to insert or delete. For more information, see <a>RegexPatternSet</a>. </p> </li> </ul> <p> For example, you can create a <code>RegexPatternString</code> such as <code>B[a@]dB[o0]t</code>. AWS WAF will match this <code>RegexPatternString</code> to:</p> <ul> <li> <p>BadBot</p> </li> <li> <p>BadB0t</p> </li> <li> <p>B@dBot</p> </li> <li> <p>B@dB0t</p> </li> </ul> <p>To create and configure a <code>RegexPatternSet</code>, perform the following steps:</p> <ol> <li> <p>Create a <code>RegexPatternSet.</code> For more information, see <a>CreateRegexPatternSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <code>UpdateRegexPatternSet</code> request.</p> </li> <li> <p>Submit an <code>UpdateRegexPatternSet</code> request to specify the regular expression pattern that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `regexPatternSetId` __:__ `String`
* `updates` __:__ `(List RegexPatternSetUpdate)`
* `changeToken` __:__ `String`


-}

updateRegexPatternSet :
  
    String ->
  
    (List RegexPatternSetUpdate) ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateRegexPatternSetResponse)

updateRegexPatternSet regexPatternSetId updates changeToken =
    
    let
        requestInput = UpdateRegexPatternSetRequest
            
            regexPatternSetId
            
            updates
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateRegexPatternSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateRegexPatternSet"
                
                (AWS.Core.Decode.ResultDecoder "UpdateRegexPatternSetResponse" updateRegexPatternSetResponseDecoder)
                
            )





{-| <p>Inserts or deletes <a>Predicate</a> objects in a <code>Rule</code>. Each <code>Predicate</code> object identifies a predicate, such as a <a>ByteMatchSet</a> or an <a>IPSet</a>, that specifies the web requests that you want to allow, block, or count. If you add more than one predicate to a <code>Rule</code>, a request must match all of the specifications to be allowed, blocked, or counted. For example, suppose that you add the following to a <code>Rule</code>: </p> <ul> <li> <p>A <code>ByteMatchSet</code> that matches the value <code>BadBot</code> in the <code>User-Agent</code> header</p> </li> <li> <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44</code> </p> </li> </ul> <p>You then add the <code>Rule</code> to a <code>WebACL</code> and specify that you want to block requests that satisfy the <code>Rule</code>. For a request to be blocked, the <code>User-Agent</code> header in the request must contain the value <code>BadBot</code> <i>and</i> the request must originate from the IP address 192.0.2.44.</p> <p>To create and configure a <code>Rule</code>, perform the following steps:</p> <ol> <li> <p>Create and update the predicates that you want to include in the <code>Rule</code>.</p> </li> <li> <p>Create the <code>Rule</code>. See <a>CreateRule</a>.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateRule</a> request.</p> </li> <li> <p>Submit an <code>UpdateRule</code> request to add predicates to the <code>Rule</code>.</p> </li> <li> <p>Create and update a <code>WebACL</code> that contains the <code>Rule</code>. See <a>CreateWebACL</a>.</p> </li> </ol> <p>If you want to replace one <code>ByteMatchSet</code> or <code>IPSet</code> with another, you delete the existing one and add the new one.</p> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `ruleId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List RuleUpdate)`


-}

updateRule :
  
    String ->
  
    String ->
  
    (List RuleUpdate) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateRuleResponse)

updateRule ruleId changeToken updates =
    
    let
        requestInput = UpdateRuleRequest
            
            ruleId
            
            changeToken
            
            updates
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateRuleRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateRule"
                
                (AWS.Core.Decode.ResultDecoder "UpdateRuleResponse" updateRuleResponseDecoder)
                
            )





{-| <p>Inserts or deletes <a>ActivatedRule</a> objects in a <code>RuleGroup</code>.</p> <p>You can only insert <code>REGULAR</code> rules into a rule group.</p> <p>You can have a maximum of ten rules per rule group.</p> <p>To create and configure a <code>RuleGroup</code>, perform the following steps:</p> <ol> <li> <p>Create and update the <code>Rules</code> that you want to include in the <code>RuleGroup</code>. See <a>CreateRule</a>.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateRuleGroup</a> request.</p> </li> <li> <p>Submit an <code>UpdateRuleGroup</code> request to add <code>Rules</code> to the <code>RuleGroup</code>.</p> </li> <li> <p>Create and update a <code>WebACL</code> that contains the <code>RuleGroup</code>. See <a>CreateWebACL</a>.</p> </li> </ol> <p>If you want to replace one <code>Rule</code> with another, you delete the existing one and add the new one.</p> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `ruleGroupId` __:__ `String`
* `updates` __:__ `(List RuleGroupUpdate)`
* `changeToken` __:__ `String`


-}

updateRuleGroup :
  
    String ->
  
    (List RuleGroupUpdate) ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateRuleGroupResponse)

updateRuleGroup ruleGroupId updates changeToken =
    
    let
        requestInput = UpdateRuleGroupRequest
            
            ruleGroupId
            
            updates
            
            changeToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateRuleGroupRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateRuleGroup"
                
                (AWS.Core.Decode.ResultDecoder "UpdateRuleGroupResponse" updateRuleGroupResponseDecoder)
                
            )





{-| <p>Inserts or deletes <a>SizeConstraint</a> objects (filters) in a <a>SizeConstraintSet</a>. For each <code>SizeConstraint</code> object, you specify the following values: </p> <ul> <li> <p>Whether to insert or delete the object from the array. If you want to change a <code>SizeConstraintSetUpdate</code> object, you delete the existing object and add a new one.</p> </li> <li> <p>The part of a web request that you want AWS WAF to evaluate, such as the length of a query string or the length of the <code>User-Agent</code> header.</p> </li> <li> <p>Whether to perform any transformations on the request, such as converting it to lowercase, before checking its length. Note that transformations of the request body are not supported because the AWS resource forwards only the first <code>8192</code> bytes of your request to AWS WAF.</p> <p>You can only specify a single type of TextTransformation.</p> </li> <li> <p>A <code>ComparisonOperator</code> used for evaluating the selected part of the request against the specified <code>Size</code>, such as equals, greater than, less than, and so on.</p> </li> <li> <p>The length, in bytes, that you want AWS WAF to watch for in selected part of the request. The length is computed after applying the transformation.</p> </li> </ul> <p>For example, you can add a <code>SizeConstraintSetUpdate</code> object that matches web requests in which the length of the <code>User-Agent</code> header is greater than 100 bytes. You can then configure AWS WAF to block those requests.</p> <p>To create and configure a <code>SizeConstraintSet</code>, perform the following steps:</p> <ol> <li> <p>Create a <code>SizeConstraintSet.</code> For more information, see <a>CreateSizeConstraintSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <code>UpdateSizeConstraintSet</code> request.</p> </li> <li> <p>Submit an <code>UpdateSizeConstraintSet</code> request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `sizeConstraintSetId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List SizeConstraintSetUpdate)`


-}

updateSizeConstraintSet :
  
    String ->
  
    String ->
  
    (List SizeConstraintSetUpdate) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateSizeConstraintSetResponse)

updateSizeConstraintSet sizeConstraintSetId changeToken updates =
    
    let
        requestInput = UpdateSizeConstraintSetRequest
            
            sizeConstraintSetId
            
            changeToken
            
            updates
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateSizeConstraintSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateSizeConstraintSet"
                
                (AWS.Core.Decode.ResultDecoder "UpdateSizeConstraintSetResponse" updateSizeConstraintSetResponseDecoder)
                
            )





{-| <p>Inserts or deletes <a>SqlInjectionMatchTuple</a> objects (filters) in a <a>SqlInjectionMatchSet</a>. For each <code>SqlInjectionMatchTuple</code> object, you specify the following values:</p> <ul> <li> <p> <code>Action</code>: Whether to insert the object into or delete the object from the array. To change a <code>SqlInjectionMatchTuple</code>, you delete the existing object and add a new one.</p> </li> <li> <p> <code>FieldToMatch</code>: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header or custom query parameter, the name of the header or parameter.</p> </li> <li> <p> <code>TextTransformation</code>: Which text transformation, if any, to perform on the web request before inspecting the request for snippets of malicious SQL code.</p> <p>You can only specify a single type of TextTransformation.</p> </li> </ul> <p>You use <code>SqlInjectionMatchSet</code> objects to specify which CloudFront requests that you want to allow, block, or count. For example, if you're receiving requests that contain snippets of SQL code in the query string and you want to block the requests, you can create a <code>SqlInjectionMatchSet</code> with the applicable settings, and then configure AWS WAF to block the requests. </p> <p>To create and configure a <code>SqlInjectionMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Submit a <a>CreateSqlInjectionMatchSet</a> request.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a> request.</p> </li> <li> <p>Submit an <code>UpdateSqlInjectionMatchSet</code> request to specify the parts of web requests that you want AWS WAF to inspect for snippets of SQL code.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `sqlInjectionMatchSetId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List SqlInjectionMatchSetUpdate)`


-}

updateSqlInjectionMatchSet :
  
    String ->
  
    String ->
  
    (List SqlInjectionMatchSetUpdate) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateSqlInjectionMatchSetResponse)

updateSqlInjectionMatchSet sqlInjectionMatchSetId changeToken updates =
    
    let
        requestInput = UpdateSqlInjectionMatchSetRequest
            
            sqlInjectionMatchSetId
            
            changeToken
            
            updates
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateSqlInjectionMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateSqlInjectionMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "UpdateSqlInjectionMatchSetResponse" updateSqlInjectionMatchSetResponseDecoder)
                
            )





{-| <p>Inserts or deletes <a>ActivatedRule</a> objects in a <code>WebACL</code>. Each <code>Rule</code> identifies web requests that you want to allow, block, or count. When you update a <code>WebACL</code>, you specify the following values:</p> <ul> <li> <p>A default action for the <code>WebACL</code>, either <code>ALLOW</code> or <code>BLOCK</code>. AWS WAF performs the default action if a request doesn't match the criteria in any of the <code>Rules</code> in a <code>WebACL</code>.</p> </li> <li> <p>The <code>Rules</code> that you want to add or delete. If you want to replace one <code>Rule</code> with another, you delete the existing <code>Rule</code> and add the new one.</p> </li> <li> <p>For each <code>Rule</code>, whether you want AWS WAF to allow requests, block requests, or count requests that match the conditions in the <code>Rule</code>.</p> </li> <li> <p>The order in which you want AWS WAF to evaluate the <code>Rules</code> in a <code>WebACL</code>. If you add more than one <code>Rule</code> to a <code>WebACL</code>, AWS WAF evaluates each request against the <code>Rules</code> in order based on the value of <code>Priority</code>. (The <code>Rule</code> that has the lowest value for <code>Priority</code> is evaluated first.) When a web request matches all the predicates (such as <code>ByteMatchSets</code> and <code>IPSets</code>) in a <code>Rule</code>, AWS WAF immediately takes the corresponding action, allow or block, and doesn't evaluate the request against the remaining <code>Rules</code> in the <code>WebACL</code>, if any. </p> </li> </ul> <p>To create and configure a <code>WebACL</code>, perform the following steps:</p> <ol> <li> <p>Create and update the predicates that you want to include in <code>Rules</code>. For more information, see <a>CreateByteMatchSet</a>, <a>UpdateByteMatchSet</a>, <a>CreateIPSet</a>, <a>UpdateIPSet</a>, <a>CreateSqlInjectionMatchSet</a>, and <a>UpdateSqlInjectionMatchSet</a>.</p> </li> <li> <p>Create and update the <code>Rules</code> that you want to include in the <code>WebACL</code>. For more information, see <a>CreateRule</a> and <a>UpdateRule</a>.</p> </li> <li> <p>Create a <code>WebACL</code>. See <a>CreateWebACL</a>.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateWebACL</a> request.</p> </li> <li> <p>Submit an <code>UpdateWebACL</code> request to specify the <code>Rules</code> that you want to include in the <code>WebACL</code>, to specify the default action, and to associate the <code>WebACL</code> with a CloudFront distribution. </p> <p>The <code>ActivatedRule</code> can be a rule group. If you specify a rule group as your <code>ActivatedRule</code>, you can exclude specific rules from that rule group.</p> <p>If you already have a rule group associated with a web ACL and want to submit an <code>UpdateWebACL</code> request to exclude certain rules from that rule group, you must first remove the rule group from the web ACL, the re-insert it again, specifying the excluded rules. For details, see <a>ActivatedRule$ExcludedRules</a>. </p> </li> </ol> <p>Be aware that if you try to add a RATE_BASED rule to a web ACL without setting the rule type when first creating the rule, the <a>UpdateWebACL</a> request will fail because the request tries to add a REGULAR rule (the default rule type) with the specified ID, which does not exist. </p> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `webACLId` __:__ `String`
* `changeToken` __:__ `String`


-}

updateWebACL :
  
    String ->
  
    String ->
  
  
    ( UpdateWebACLOptions -> UpdateWebACLOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateWebACLResponse)

updateWebACL webACLId changeToken setOptions =
    
    let
        requestInput = UpdateWebACLRequest
            
            webACLId
            
            changeToken
            
            options.updates
            
            options.defaultAction
            
        
        options = setOptions (UpdateWebACLOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateWebACLRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateWebACL"
                
                (AWS.Core.Decode.ResultDecoder "UpdateWebACLResponse" updateWebACLResponseDecoder)
                
            )



{-| Options for a updateWebACL request
-}
type alias UpdateWebACLOptions =
    {
    updates : Maybe (List WebACLUpdate),defaultAction : Maybe WafAction
    }



{-| <p>Inserts or deletes <a>XssMatchTuple</a> objects (filters) in an <a>XssMatchSet</a>. For each <code>XssMatchTuple</code> object, you specify the following values:</p> <ul> <li> <p> <code>Action</code>: Whether to insert the object into or delete the object from the array. To change an <code>XssMatchTuple</code>, you delete the existing object and add a new one.</p> </li> <li> <p> <code>FieldToMatch</code>: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header or custom query parameter, the name of the header or parameter.</p> </li> <li> <p> <code>TextTransformation</code>: Which text transformation, if any, to perform on the web request before inspecting the request for cross-site scripting attacks.</p> <p>You can only specify a single type of TextTransformation.</p> </li> </ul> <p>You use <code>XssMatchSet</code> objects to specify which CloudFront requests that you want to allow, block, or count. For example, if you're receiving requests that contain cross-site scripting attacks in the request body and you want to block the requests, you can create an <code>XssMatchSet</code> with the applicable settings, and then configure AWS WAF to block the requests. </p> <p>To create and configure an <code>XssMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Submit a <a>CreateXssMatchSet</a> request.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a> request.</p> </li> <li> <p>Submit an <code>UpdateXssMatchSet</code> request to specify the parts of web requests that you want AWS WAF to inspect for cross-site scripting attacks.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `xssMatchSetId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List XssMatchSetUpdate)`


-}

updateXssMatchSet :
  
    String ->
  
    String ->
  
    (List XssMatchSetUpdate) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateXssMatchSetResponse)

updateXssMatchSet xssMatchSetId changeToken updates =
    
    let
        requestInput = UpdateXssMatchSetRequest
            
            xssMatchSetId
            
            changeToken
            
            updates
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateXssMatchSetRequestEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateXssMatchSet"
                
                (AWS.Core.Decode.ResultDecoder "UpdateXssMatchSetResponse" updateXssMatchSetResponseDecoder)
                
            )






{-| <p>The <code>ActivatedRule</code> object in an <a>UpdateWebACL</a> request specifies a <code>Rule</code> that you want to insert or delete, the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code> (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p> <p>To specify whether to insert or delete a <code>Rule</code>, use the <code>Action</code> parameter in the <a>WebACLUpdate</a> data type.</p>
-}
type alias ActivatedRule =
    { priority : Int
    , ruleId : String
    , action : Maybe WafAction
    , overrideAction : Maybe WafOverrideAction
    , type_ : Maybe WafRuleType
    , excludedRules : Maybe (List ExcludedRule)
    }



activatedRuleDecoder : JD.Decoder ActivatedRule
activatedRuleDecoder =
    JD.succeed ActivatedRule
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Priority", "priority"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RuleId", "ruleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Action", "action"]
            wafActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OverrideAction", "overrideAction"]
            wafOverrideActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            wafRuleTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExcludedRules", "excludedRules"]
            (JD.list excludedRuleDecoder)
        )
        




activatedRuleToString : ActivatedRule -> String -- List (String, String)
activatedRuleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "priority" "" -- val.priority
        
    --     |> Dict.insert
    --         "ruleId" "" -- val.ruleId
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "overrideAction" "" -- val.overrideAction
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "excludedRules" "" -- val.excludedRules
        
    --     |> Dict.toList
    ""



{-| <p>In a <a>GetByteMatchSet</a> request, <code>ByteMatchSet</code> is a complex type that contains the <code>ByteMatchSetId</code> and <code>Name</code> of a <code>ByteMatchSet</code>, and the values that you specified when you updated the <code>ByteMatchSet</code>. </p> <p>A complex type that contains <code>ByteMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>ByteMatchSet</code> contains more than one <code>ByteMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code> to be considered a match.</p>
-}
type alias ByteMatchSet =
    { byteMatchSetId : String
    , name : Maybe String
    , byteMatchTuples : (List ByteMatchTuple)
    }



byteMatchSetDecoder : JD.Decoder ByteMatchSet
byteMatchSetDecoder =
    JD.succeed ByteMatchSet
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ByteMatchSetId", "byteMatchSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ByteMatchTuples", "byteMatchTuples"]
            (JD.list byteMatchTupleDecoder)
        )
        




byteMatchSetToString : ByteMatchSet -> String -- List (String, String)
byteMatchSetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "byteMatchSetId" "" -- val.byteMatchSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "byteMatchTuples" "" -- val.byteMatchTuples
        
    --     |> Dict.toList
    ""



{-| <p>Returned by <a>ListByteMatchSets</a>. Each <code>ByteMatchSetSummary</code> object includes the <code>Name</code> and <code>ByteMatchSetId</code> for one <a>ByteMatchSet</a>.</p>
-}
type alias ByteMatchSetSummary =
    { byteMatchSetId : String
    , name : String
    }



byteMatchSetSummaryDecoder : JD.Decoder ByteMatchSetSummary
byteMatchSetSummaryDecoder =
    JD.succeed ByteMatchSetSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ByteMatchSetId", "byteMatchSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        




byteMatchSetSummaryToString : ByteMatchSetSummary -> String -- List (String, String)
byteMatchSetSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "byteMatchSetId" "" -- val.byteMatchSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>In an <a>UpdateByteMatchSet</a> request, <code>ByteMatchSetUpdate</code> specifies whether to insert or delete a <a>ByteMatchTuple</a> and includes the settings for the <code>ByteMatchTuple</code>.</p>
-}
type alias ByteMatchSetUpdate =
    { action : ChangeAction
    , byteMatchTuple : ByteMatchTuple
    }



byteMatchSetUpdateDecoder : JD.Decoder ByteMatchSetUpdate
byteMatchSetUpdateDecoder =
    JD.succeed ByteMatchSetUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ByteMatchTuple", "byteMatchTuple"]
            byteMatchTupleDecoder
        )
        




byteMatchSetUpdateToString : ByteMatchSetUpdate -> String -- List (String, String)
byteMatchSetUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "byteMatchTuple" "" -- val.byteMatchTuple
        
    --     |> Dict.toList
    ""



{-| <p>The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.</p>
-}
type alias ByteMatchTuple =
    { fieldToMatch : FieldToMatch
    , targetString : String
    , textTransformation : TextTransformation
    , positionalConstraint : PositionalConstraint
    }



byteMatchTupleDecoder : JD.Decoder ByteMatchTuple
byteMatchTupleDecoder =
    JD.succeed ByteMatchTuple
        
        |> JDP.custom (AWS.Core.Decode.required
            ["FieldToMatch", "fieldToMatch"]
            fieldToMatchDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TargetString", "targetString"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TextTransformation", "textTransformation"]
            textTransformationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["PositionalConstraint", "positionalConstraint"]
            positionalConstraintDecoder
        )
        




byteMatchTupleToString : ByteMatchTuple -> String -- List (String, String)
byteMatchTupleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fieldToMatch" "" -- val.fieldToMatch
        
    --     |> Dict.insert
    --         "targetString" "" -- val.targetString
        
    --     |> Dict.insert
    --         "textTransformation" "" -- val.textTransformation
        
    --     |> Dict.insert
    --         "positionalConstraint" "" -- val.positionalConstraint
        
    --     |> Dict.toList
    ""



{-| One of

* `ChangeAction_INSERT`
* `ChangeAction_DELETE`

-}
type ChangeAction
    = ChangeAction_INSERT
    | ChangeAction_DELETE



changeActionDecoder : JD.Decoder ChangeAction
changeActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INSERT" ->
                        JD.succeed ChangeAction_INSERT

                    "DELETE" ->
                        JD.succeed ChangeAction_DELETE


                    _ ->
                        JD.fail "bad thing"
            )




changeActionToString : ChangeAction -> String
changeActionToString val =
    case val of
        ChangeAction_INSERT ->
            "INSERT"

        ChangeAction_DELETE ->
            "DELETE"




{-| One of

* `ChangeTokenStatus_PROVISIONED`
* `ChangeTokenStatus_PENDING`
* `ChangeTokenStatus_INSYNC`

-}
type ChangeTokenStatus
    = ChangeTokenStatus_PROVISIONED
    | ChangeTokenStatus_PENDING
    | ChangeTokenStatus_INSYNC



changeTokenStatusDecoder : JD.Decoder ChangeTokenStatus
changeTokenStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PROVISIONED" ->
                        JD.succeed ChangeTokenStatus_PROVISIONED

                    "PENDING" ->
                        JD.succeed ChangeTokenStatus_PENDING

                    "INSYNC" ->
                        JD.succeed ChangeTokenStatus_INSYNC


                    _ ->
                        JD.fail "bad thing"
            )




changeTokenStatusToString : ChangeTokenStatus -> String
changeTokenStatusToString val =
    case val of
        ChangeTokenStatus_PROVISIONED ->
            "PROVISIONED"

        ChangeTokenStatus_PENDING ->
            "PENDING"

        ChangeTokenStatus_INSYNC ->
            "INSYNC"




{-| One of

* `ComparisonOperator_EQ`
* `ComparisonOperator_NE`
* `ComparisonOperator_LE`
* `ComparisonOperator_LT`
* `ComparisonOperator_GE`
* `ComparisonOperator_GT`

-}
type ComparisonOperator
    = ComparisonOperator_EQ
    | ComparisonOperator_NE
    | ComparisonOperator_LE
    | ComparisonOperator_LT
    | ComparisonOperator_GE
    | ComparisonOperator_GT



comparisonOperatorDecoder : JD.Decoder ComparisonOperator
comparisonOperatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EQ" ->
                        JD.succeed ComparisonOperator_EQ

                    "NE" ->
                        JD.succeed ComparisonOperator_NE

                    "LE" ->
                        JD.succeed ComparisonOperator_LE

                    "LT" ->
                        JD.succeed ComparisonOperator_LT

                    "GE" ->
                        JD.succeed ComparisonOperator_GE

                    "GT" ->
                        JD.succeed ComparisonOperator_GT


                    _ ->
                        JD.fail "bad thing"
            )




comparisonOperatorToString : ComparisonOperator -> String
comparisonOperatorToString val =
    case val of
        ComparisonOperator_EQ ->
            "EQ"

        ComparisonOperator_NE ->
            "NE"

        ComparisonOperator_LE ->
            "LE"

        ComparisonOperator_LT ->
            "LT"

        ComparisonOperator_GE ->
            "GE"

        ComparisonOperator_GT ->
            "GT"




{-| Type of HTTP response from createByteMatchSet
-}
type alias CreateByteMatchSetResponse =
    { byteMatchSet : Maybe ByteMatchSet
    , changeToken : Maybe String
    }



createByteMatchSetResponseDecoder : JD.Decoder CreateByteMatchSetResponse
createByteMatchSetResponseDecoder =
    JD.succeed CreateByteMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ByteMatchSet", "byteMatchSet"]
            byteMatchSetDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




createByteMatchSetResponseToString : CreateByteMatchSetResponse -> String -- List (String, String)
createByteMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "byteMatchSet" "" -- val.byteMatchSet
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createGeoMatchSet
-}
type alias CreateGeoMatchSetResponse =
    { geoMatchSet : Maybe GeoMatchSet
    , changeToken : Maybe String
    }



createGeoMatchSetResponseDecoder : JD.Decoder CreateGeoMatchSetResponse
createGeoMatchSetResponseDecoder =
    JD.succeed CreateGeoMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GeoMatchSet", "geoMatchSet"]
            geoMatchSetDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




createGeoMatchSetResponseToString : CreateGeoMatchSetResponse -> String -- List (String, String)
createGeoMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "geoMatchSet" "" -- val.geoMatchSet
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createIPSet
-}
type alias CreateIPSetResponse =
    { iPSet : Maybe IPSet
    , changeToken : Maybe String
    }



createIPSetResponseDecoder : JD.Decoder CreateIPSetResponse
createIPSetResponseDecoder =
    JD.succeed CreateIPSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IPSet", "iPSet"]
            iPSetDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




createIPSetResponseToString : CreateIPSetResponse -> String -- List (String, String)
createIPSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "iPSet" "" -- val.iPSet
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createRateBasedRule
-}
type alias CreateRateBasedRuleResponse =
    { rule : Maybe RateBasedRule
    , changeToken : Maybe String
    }



createRateBasedRuleResponseDecoder : JD.Decoder CreateRateBasedRuleResponse
createRateBasedRuleResponseDecoder =
    JD.succeed CreateRateBasedRuleResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Rule", "rule"]
            rateBasedRuleDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




createRateBasedRuleResponseToString : CreateRateBasedRuleResponse -> String -- List (String, String)
createRateBasedRuleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rule" "" -- val.rule
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createRegexMatchSet
-}
type alias CreateRegexMatchSetResponse =
    { regexMatchSet : Maybe RegexMatchSet
    , changeToken : Maybe String
    }



createRegexMatchSetResponseDecoder : JD.Decoder CreateRegexMatchSetResponse
createRegexMatchSetResponseDecoder =
    JD.succeed CreateRegexMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegexMatchSet", "regexMatchSet"]
            regexMatchSetDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




createRegexMatchSetResponseToString : CreateRegexMatchSetResponse -> String -- List (String, String)
createRegexMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "regexMatchSet" "" -- val.regexMatchSet
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createRegexPatternSet
-}
type alias CreateRegexPatternSetResponse =
    { regexPatternSet : Maybe RegexPatternSet
    , changeToken : Maybe String
    }



createRegexPatternSetResponseDecoder : JD.Decoder CreateRegexPatternSetResponse
createRegexPatternSetResponseDecoder =
    JD.succeed CreateRegexPatternSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegexPatternSet", "regexPatternSet"]
            regexPatternSetDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




createRegexPatternSetResponseToString : CreateRegexPatternSetResponse -> String -- List (String, String)
createRegexPatternSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "regexPatternSet" "" -- val.regexPatternSet
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createRuleGroup
-}
type alias CreateRuleGroupResponse =
    { ruleGroup : Maybe RuleGroup
    , changeToken : Maybe String
    }



createRuleGroupResponseDecoder : JD.Decoder CreateRuleGroupResponse
createRuleGroupResponseDecoder =
    JD.succeed CreateRuleGroupResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuleGroup", "ruleGroup"]
            ruleGroupDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




createRuleGroupResponseToString : CreateRuleGroupResponse -> String -- List (String, String)
createRuleGroupResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleGroup" "" -- val.ruleGroup
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createRule
-}
type alias CreateRuleResponse =
    { rule : Maybe Rule
    , changeToken : Maybe String
    }



createRuleResponseDecoder : JD.Decoder CreateRuleResponse
createRuleResponseDecoder =
    JD.succeed CreateRuleResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Rule", "rule"]
            ruleDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




createRuleResponseToString : CreateRuleResponse -> String -- List (String, String)
createRuleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rule" "" -- val.rule
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createSizeConstraintSet
-}
type alias CreateSizeConstraintSetResponse =
    { sizeConstraintSet : Maybe SizeConstraintSet
    , changeToken : Maybe String
    }



createSizeConstraintSetResponseDecoder : JD.Decoder CreateSizeConstraintSetResponse
createSizeConstraintSetResponseDecoder =
    JD.succeed CreateSizeConstraintSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SizeConstraintSet", "sizeConstraintSet"]
            sizeConstraintSetDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




createSizeConstraintSetResponseToString : CreateSizeConstraintSetResponse -> String -- List (String, String)
createSizeConstraintSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sizeConstraintSet" "" -- val.sizeConstraintSet
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createSqlInjectionMatchSet
-}
type alias CreateSqlInjectionMatchSetResponse =
    { sqlInjectionMatchSet : Maybe SqlInjectionMatchSet
    , changeToken : Maybe String
    }



createSqlInjectionMatchSetResponseDecoder : JD.Decoder CreateSqlInjectionMatchSetResponse
createSqlInjectionMatchSetResponseDecoder =
    JD.succeed CreateSqlInjectionMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SqlInjectionMatchSet", "sqlInjectionMatchSet"]
            sqlInjectionMatchSetDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




createSqlInjectionMatchSetResponseToString : CreateSqlInjectionMatchSetResponse -> String -- List (String, String)
createSqlInjectionMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sqlInjectionMatchSet" "" -- val.sqlInjectionMatchSet
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createWebACL
-}
type alias CreateWebACLResponse =
    { webACL : Maybe WebACL
    , changeToken : Maybe String
    }



createWebACLResponseDecoder : JD.Decoder CreateWebACLResponse
createWebACLResponseDecoder =
    JD.succeed CreateWebACLResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WebACL", "webACL"]
            webACLDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




createWebACLResponseToString : CreateWebACLResponse -> String -- List (String, String)
createWebACLResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "webACL" "" -- val.webACL
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createXssMatchSet
-}
type alias CreateXssMatchSetResponse =
    { xssMatchSet : Maybe XssMatchSet
    , changeToken : Maybe String
    }



createXssMatchSetResponseDecoder : JD.Decoder CreateXssMatchSetResponse
createXssMatchSetResponseDecoder =
    JD.succeed CreateXssMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["XssMatchSet", "xssMatchSet"]
            xssMatchSetDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




createXssMatchSetResponseToString : CreateXssMatchSetResponse -> String -- List (String, String)
createXssMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "xssMatchSet" "" -- val.xssMatchSet
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteByteMatchSet
-}
type alias DeleteByteMatchSetResponse =
    { changeToken : Maybe String
    }



deleteByteMatchSetResponseDecoder : JD.Decoder DeleteByteMatchSetResponse
deleteByteMatchSetResponseDecoder =
    JD.succeed DeleteByteMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




deleteByteMatchSetResponseToString : DeleteByteMatchSetResponse -> String -- List (String, String)
deleteByteMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteGeoMatchSet
-}
type alias DeleteGeoMatchSetResponse =
    { changeToken : Maybe String
    }



deleteGeoMatchSetResponseDecoder : JD.Decoder DeleteGeoMatchSetResponse
deleteGeoMatchSetResponseDecoder =
    JD.succeed DeleteGeoMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




deleteGeoMatchSetResponseToString : DeleteGeoMatchSetResponse -> String -- List (String, String)
deleteGeoMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteIPSet
-}
type alias DeleteIPSetResponse =
    { changeToken : Maybe String
    }



deleteIPSetResponseDecoder : JD.Decoder DeleteIPSetResponse
deleteIPSetResponseDecoder =
    JD.succeed DeleteIPSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




deleteIPSetResponseToString : DeleteIPSetResponse -> String -- List (String, String)
deleteIPSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteLoggingConfiguration
-}
type alias DeleteLoggingConfigurationResponse =
    { 
    }



deleteLoggingConfigurationResponseDecoder : JD.Decoder DeleteLoggingConfigurationResponse
deleteLoggingConfigurationResponseDecoder =
    JD.succeed DeleteLoggingConfigurationResponse
        




deleteLoggingConfigurationResponseToString : DeleteLoggingConfigurationResponse -> String -- List (String, String)
deleteLoggingConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deletePermissionPolicy
-}
type alias DeletePermissionPolicyResponse =
    { 
    }



deletePermissionPolicyResponseDecoder : JD.Decoder DeletePermissionPolicyResponse
deletePermissionPolicyResponseDecoder =
    JD.succeed DeletePermissionPolicyResponse
        




deletePermissionPolicyResponseToString : DeletePermissionPolicyResponse -> String -- List (String, String)
deletePermissionPolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteRateBasedRule
-}
type alias DeleteRateBasedRuleResponse =
    { changeToken : Maybe String
    }



deleteRateBasedRuleResponseDecoder : JD.Decoder DeleteRateBasedRuleResponse
deleteRateBasedRuleResponseDecoder =
    JD.succeed DeleteRateBasedRuleResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




deleteRateBasedRuleResponseToString : DeleteRateBasedRuleResponse -> String -- List (String, String)
deleteRateBasedRuleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteRegexMatchSet
-}
type alias DeleteRegexMatchSetResponse =
    { changeToken : Maybe String
    }



deleteRegexMatchSetResponseDecoder : JD.Decoder DeleteRegexMatchSetResponse
deleteRegexMatchSetResponseDecoder =
    JD.succeed DeleteRegexMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




deleteRegexMatchSetResponseToString : DeleteRegexMatchSetResponse -> String -- List (String, String)
deleteRegexMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteRegexPatternSet
-}
type alias DeleteRegexPatternSetResponse =
    { changeToken : Maybe String
    }



deleteRegexPatternSetResponseDecoder : JD.Decoder DeleteRegexPatternSetResponse
deleteRegexPatternSetResponseDecoder =
    JD.succeed DeleteRegexPatternSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




deleteRegexPatternSetResponseToString : DeleteRegexPatternSetResponse -> String -- List (String, String)
deleteRegexPatternSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteRuleGroup
-}
type alias DeleteRuleGroupResponse =
    { changeToken : Maybe String
    }



deleteRuleGroupResponseDecoder : JD.Decoder DeleteRuleGroupResponse
deleteRuleGroupResponseDecoder =
    JD.succeed DeleteRuleGroupResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




deleteRuleGroupResponseToString : DeleteRuleGroupResponse -> String -- List (String, String)
deleteRuleGroupResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteRule
-}
type alias DeleteRuleResponse =
    { changeToken : Maybe String
    }



deleteRuleResponseDecoder : JD.Decoder DeleteRuleResponse
deleteRuleResponseDecoder =
    JD.succeed DeleteRuleResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




deleteRuleResponseToString : DeleteRuleResponse -> String -- List (String, String)
deleteRuleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteSizeConstraintSet
-}
type alias DeleteSizeConstraintSetResponse =
    { changeToken : Maybe String
    }



deleteSizeConstraintSetResponseDecoder : JD.Decoder DeleteSizeConstraintSetResponse
deleteSizeConstraintSetResponseDecoder =
    JD.succeed DeleteSizeConstraintSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




deleteSizeConstraintSetResponseToString : DeleteSizeConstraintSetResponse -> String -- List (String, String)
deleteSizeConstraintSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteSqlInjectionMatchSet
-}
type alias DeleteSqlInjectionMatchSetResponse =
    { changeToken : Maybe String
    }



deleteSqlInjectionMatchSetResponseDecoder : JD.Decoder DeleteSqlInjectionMatchSetResponse
deleteSqlInjectionMatchSetResponseDecoder =
    JD.succeed DeleteSqlInjectionMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




deleteSqlInjectionMatchSetResponseToString : DeleteSqlInjectionMatchSetResponse -> String -- List (String, String)
deleteSqlInjectionMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteWebACL
-}
type alias DeleteWebACLResponse =
    { changeToken : Maybe String
    }



deleteWebACLResponseDecoder : JD.Decoder DeleteWebACLResponse
deleteWebACLResponseDecoder =
    JD.succeed DeleteWebACLResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




deleteWebACLResponseToString : DeleteWebACLResponse -> String -- List (String, String)
deleteWebACLResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteXssMatchSet
-}
type alias DeleteXssMatchSetResponse =
    { changeToken : Maybe String
    }



deleteXssMatchSetResponseDecoder : JD.Decoder DeleteXssMatchSetResponse
deleteXssMatchSetResponseDecoder =
    JD.succeed DeleteXssMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




deleteXssMatchSetResponseToString : DeleteXssMatchSetResponse -> String -- List (String, String)
deleteXssMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| <p>The rule to exclude from a rule group. This is applicable only when the <code>ActivatedRule</code> refers to a <code>RuleGroup</code>. The rule must belong to the <code>RuleGroup</code> that is specified by the <code>ActivatedRule</code>. </p>
-}
type alias ExcludedRule =
    { ruleId : String
    }



excludedRuleDecoder : JD.Decoder ExcludedRule
excludedRuleDecoder =
    JD.succeed ExcludedRule
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RuleId", "ruleId"]
            JD.string
        )
        




excludedRuleToString : ExcludedRule -> String -- List (String, String)
excludedRuleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleId" "" -- val.ruleId
        
    --     |> Dict.toList
    ""



{-| <p>Specifies where in a web request to look for <code>TargetString</code>.</p>
-}
type alias FieldToMatch =
    { type_ : MatchFieldType
    , data : Maybe String
    }



fieldToMatchDecoder : JD.Decoder FieldToMatch
fieldToMatchDecoder =
    JD.succeed FieldToMatch
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Type", "type"]
            matchFieldTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Data", "data"]
            JD.string
        )
        




fieldToMatchToString : FieldToMatch -> String -- List (String, String)
fieldToMatchToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "data" "" -- val.data
        
    --     |> Dict.toList
    ""



{-| <p>The country from which web requests originate that you want AWS WAF to search for.</p>
-}
type alias GeoMatchConstraint =
    { type_ : GeoMatchConstraintType
    , value : GeoMatchConstraintValue
    }



geoMatchConstraintDecoder : JD.Decoder GeoMatchConstraint
geoMatchConstraintDecoder =
    JD.succeed GeoMatchConstraint
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Type", "type"]
            geoMatchConstraintTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Value", "value"]
            geoMatchConstraintValueDecoder
        )
        




geoMatchConstraintToString : GeoMatchConstraint -> String -- List (String, String)
geoMatchConstraintToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `GeoMatchConstraintType_Country`

-}
type GeoMatchConstraintType
    = GeoMatchConstraintType_Country



geoMatchConstraintTypeDecoder : JD.Decoder GeoMatchConstraintType
geoMatchConstraintTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Country" ->
                        JD.succeed GeoMatchConstraintType_Country


                    _ ->
                        JD.fail "bad thing"
            )




geoMatchConstraintTypeToString : GeoMatchConstraintType -> String
geoMatchConstraintTypeToString val =
    case val of
        GeoMatchConstraintType_Country ->
            "Country"




{-| One of

* `GeoMatchConstraintValue_AF`
* `GeoMatchConstraintValue_AX`
* `GeoMatchConstraintValue_AL`
* `GeoMatchConstraintValue_DZ`
* `GeoMatchConstraintValue_AS`
* `GeoMatchConstraintValue_AD`
* `GeoMatchConstraintValue_AO`
* `GeoMatchConstraintValue_AI`
* `GeoMatchConstraintValue_AQ`
* `GeoMatchConstraintValue_AG`
* `GeoMatchConstraintValue_AR`
* `GeoMatchConstraintValue_AM`
* `GeoMatchConstraintValue_AW`
* `GeoMatchConstraintValue_AU`
* `GeoMatchConstraintValue_AT`
* `GeoMatchConstraintValue_AZ`
* `GeoMatchConstraintValue_BS`
* `GeoMatchConstraintValue_BH`
* `GeoMatchConstraintValue_BD`
* `GeoMatchConstraintValue_BB`
* `GeoMatchConstraintValue_BY`
* `GeoMatchConstraintValue_BE`
* `GeoMatchConstraintValue_BZ`
* `GeoMatchConstraintValue_BJ`
* `GeoMatchConstraintValue_BM`
* `GeoMatchConstraintValue_BT`
* `GeoMatchConstraintValue_BO`
* `GeoMatchConstraintValue_BQ`
* `GeoMatchConstraintValue_BA`
* `GeoMatchConstraintValue_BW`
* `GeoMatchConstraintValue_BV`
* `GeoMatchConstraintValue_BR`
* `GeoMatchConstraintValue_IO`
* `GeoMatchConstraintValue_BN`
* `GeoMatchConstraintValue_BG`
* `GeoMatchConstraintValue_BF`
* `GeoMatchConstraintValue_BI`
* `GeoMatchConstraintValue_KH`
* `GeoMatchConstraintValue_CM`
* `GeoMatchConstraintValue_CA`
* `GeoMatchConstraintValue_CV`
* `GeoMatchConstraintValue_KY`
* `GeoMatchConstraintValue_CF`
* `GeoMatchConstraintValue_TD`
* `GeoMatchConstraintValue_CL`
* `GeoMatchConstraintValue_CN`
* `GeoMatchConstraintValue_CX`
* `GeoMatchConstraintValue_CC`
* `GeoMatchConstraintValue_CO`
* `GeoMatchConstraintValue_KM`
* `GeoMatchConstraintValue_CG`
* `GeoMatchConstraintValue_CD`
* `GeoMatchConstraintValue_CK`
* `GeoMatchConstraintValue_CR`
* `GeoMatchConstraintValue_CI`
* `GeoMatchConstraintValue_HR`
* `GeoMatchConstraintValue_CU`
* `GeoMatchConstraintValue_CW`
* `GeoMatchConstraintValue_CY`
* `GeoMatchConstraintValue_CZ`
* `GeoMatchConstraintValue_DK`
* `GeoMatchConstraintValue_DJ`
* `GeoMatchConstraintValue_DM`
* `GeoMatchConstraintValue_DO`
* `GeoMatchConstraintValue_EC`
* `GeoMatchConstraintValue_EG`
* `GeoMatchConstraintValue_SV`
* `GeoMatchConstraintValue_GQ`
* `GeoMatchConstraintValue_ER`
* `GeoMatchConstraintValue_EE`
* `GeoMatchConstraintValue_ET`
* `GeoMatchConstraintValue_FK`
* `GeoMatchConstraintValue_FO`
* `GeoMatchConstraintValue_FJ`
* `GeoMatchConstraintValue_FI`
* `GeoMatchConstraintValue_FR`
* `GeoMatchConstraintValue_GF`
* `GeoMatchConstraintValue_PF`
* `GeoMatchConstraintValue_TF`
* `GeoMatchConstraintValue_GA`
* `GeoMatchConstraintValue_GM`
* `GeoMatchConstraintValue_GE`
* `GeoMatchConstraintValue_DE`
* `GeoMatchConstraintValue_GH`
* `GeoMatchConstraintValue_GI`
* `GeoMatchConstraintValue_GR`
* `GeoMatchConstraintValue_GL`
* `GeoMatchConstraintValue_GD`
* `GeoMatchConstraintValue_GP`
* `GeoMatchConstraintValue_GU`
* `GeoMatchConstraintValue_GT`
* `GeoMatchConstraintValue_GG`
* `GeoMatchConstraintValue_GN`
* `GeoMatchConstraintValue_GW`
* `GeoMatchConstraintValue_GY`
* `GeoMatchConstraintValue_HT`
* `GeoMatchConstraintValue_HM`
* `GeoMatchConstraintValue_VA`
* `GeoMatchConstraintValue_HN`
* `GeoMatchConstraintValue_HK`
* `GeoMatchConstraintValue_HU`
* `GeoMatchConstraintValue_IS`
* `GeoMatchConstraintValue_IN`
* `GeoMatchConstraintValue_ID`
* `GeoMatchConstraintValue_IR`
* `GeoMatchConstraintValue_IQ`
* `GeoMatchConstraintValue_IE`
* `GeoMatchConstraintValue_IM`
* `GeoMatchConstraintValue_IL`
* `GeoMatchConstraintValue_IT`
* `GeoMatchConstraintValue_JM`
* `GeoMatchConstraintValue_JP`
* `GeoMatchConstraintValue_JE`
* `GeoMatchConstraintValue_JO`
* `GeoMatchConstraintValue_KZ`
* `GeoMatchConstraintValue_KE`
* `GeoMatchConstraintValue_KI`
* `GeoMatchConstraintValue_KP`
* `GeoMatchConstraintValue_KR`
* `GeoMatchConstraintValue_KW`
* `GeoMatchConstraintValue_KG`
* `GeoMatchConstraintValue_LA`
* `GeoMatchConstraintValue_LV`
* `GeoMatchConstraintValue_LB`
* `GeoMatchConstraintValue_LS`
* `GeoMatchConstraintValue_LR`
* `GeoMatchConstraintValue_LY`
* `GeoMatchConstraintValue_LI`
* `GeoMatchConstraintValue_LT`
* `GeoMatchConstraintValue_LU`
* `GeoMatchConstraintValue_MO`
* `GeoMatchConstraintValue_MK`
* `GeoMatchConstraintValue_MG`
* `GeoMatchConstraintValue_MW`
* `GeoMatchConstraintValue_MY`
* `GeoMatchConstraintValue_MV`
* `GeoMatchConstraintValue_ML`
* `GeoMatchConstraintValue_MT`
* `GeoMatchConstraintValue_MH`
* `GeoMatchConstraintValue_MQ`
* `GeoMatchConstraintValue_MR`
* `GeoMatchConstraintValue_MU`
* `GeoMatchConstraintValue_YT`
* `GeoMatchConstraintValue_MX`
* `GeoMatchConstraintValue_FM`
* `GeoMatchConstraintValue_MD`
* `GeoMatchConstraintValue_MC`
* `GeoMatchConstraintValue_MN`
* `GeoMatchConstraintValue_ME`
* `GeoMatchConstraintValue_MS`
* `GeoMatchConstraintValue_MA`
* `GeoMatchConstraintValue_MZ`
* `GeoMatchConstraintValue_MM`
* `GeoMatchConstraintValue_NA`
* `GeoMatchConstraintValue_NR`
* `GeoMatchConstraintValue_NP`
* `GeoMatchConstraintValue_NL`
* `GeoMatchConstraintValue_NC`
* `GeoMatchConstraintValue_NZ`
* `GeoMatchConstraintValue_NI`
* `GeoMatchConstraintValue_NE`
* `GeoMatchConstraintValue_NG`
* `GeoMatchConstraintValue_NU`
* `GeoMatchConstraintValue_NF`
* `GeoMatchConstraintValue_MP`
* `GeoMatchConstraintValue_NO`
* `GeoMatchConstraintValue_OM`
* `GeoMatchConstraintValue_PK`
* `GeoMatchConstraintValue_PW`
* `GeoMatchConstraintValue_PS`
* `GeoMatchConstraintValue_PA`
* `GeoMatchConstraintValue_PG`
* `GeoMatchConstraintValue_PY`
* `GeoMatchConstraintValue_PE`
* `GeoMatchConstraintValue_PH`
* `GeoMatchConstraintValue_PN`
* `GeoMatchConstraintValue_PL`
* `GeoMatchConstraintValue_PT`
* `GeoMatchConstraintValue_PR`
* `GeoMatchConstraintValue_QA`
* `GeoMatchConstraintValue_RE`
* `GeoMatchConstraintValue_RO`
* `GeoMatchConstraintValue_RU`
* `GeoMatchConstraintValue_RW`
* `GeoMatchConstraintValue_BL`
* `GeoMatchConstraintValue_SH`
* `GeoMatchConstraintValue_KN`
* `GeoMatchConstraintValue_LC`
* `GeoMatchConstraintValue_MF`
* `GeoMatchConstraintValue_PM`
* `GeoMatchConstraintValue_VC`
* `GeoMatchConstraintValue_WS`
* `GeoMatchConstraintValue_SM`
* `GeoMatchConstraintValue_ST`
* `GeoMatchConstraintValue_SA`
* `GeoMatchConstraintValue_SN`
* `GeoMatchConstraintValue_RS`
* `GeoMatchConstraintValue_SC`
* `GeoMatchConstraintValue_SL`
* `GeoMatchConstraintValue_SG`
* `GeoMatchConstraintValue_SX`
* `GeoMatchConstraintValue_SK`
* `GeoMatchConstraintValue_SI`
* `GeoMatchConstraintValue_SB`
* `GeoMatchConstraintValue_SO`
* `GeoMatchConstraintValue_ZA`
* `GeoMatchConstraintValue_GS`
* `GeoMatchConstraintValue_SS`
* `GeoMatchConstraintValue_ES`
* `GeoMatchConstraintValue_LK`
* `GeoMatchConstraintValue_SD`
* `GeoMatchConstraintValue_SR`
* `GeoMatchConstraintValue_SJ`
* `GeoMatchConstraintValue_SZ`
* `GeoMatchConstraintValue_SE`
* `GeoMatchConstraintValue_CH`
* `GeoMatchConstraintValue_SY`
* `GeoMatchConstraintValue_TW`
* `GeoMatchConstraintValue_TJ`
* `GeoMatchConstraintValue_TZ`
* `GeoMatchConstraintValue_TH`
* `GeoMatchConstraintValue_TL`
* `GeoMatchConstraintValue_TG`
* `GeoMatchConstraintValue_TK`
* `GeoMatchConstraintValue_TO`
* `GeoMatchConstraintValue_TT`
* `GeoMatchConstraintValue_TN`
* `GeoMatchConstraintValue_TR`
* `GeoMatchConstraintValue_TM`
* `GeoMatchConstraintValue_TC`
* `GeoMatchConstraintValue_TV`
* `GeoMatchConstraintValue_UG`
* `GeoMatchConstraintValue_UA`
* `GeoMatchConstraintValue_AE`
* `GeoMatchConstraintValue_GB`
* `GeoMatchConstraintValue_US`
* `GeoMatchConstraintValue_UM`
* `GeoMatchConstraintValue_UY`
* `GeoMatchConstraintValue_UZ`
* `GeoMatchConstraintValue_VU`
* `GeoMatchConstraintValue_VE`
* `GeoMatchConstraintValue_VN`
* `GeoMatchConstraintValue_VG`
* `GeoMatchConstraintValue_VI`
* `GeoMatchConstraintValue_WF`
* `GeoMatchConstraintValue_EH`
* `GeoMatchConstraintValue_YE`
* `GeoMatchConstraintValue_ZM`
* `GeoMatchConstraintValue_ZW`

-}
type GeoMatchConstraintValue
    = GeoMatchConstraintValue_AF
    | GeoMatchConstraintValue_AX
    | GeoMatchConstraintValue_AL
    | GeoMatchConstraintValue_DZ
    | GeoMatchConstraintValue_AS
    | GeoMatchConstraintValue_AD
    | GeoMatchConstraintValue_AO
    | GeoMatchConstraintValue_AI
    | GeoMatchConstraintValue_AQ
    | GeoMatchConstraintValue_AG
    | GeoMatchConstraintValue_AR
    | GeoMatchConstraintValue_AM
    | GeoMatchConstraintValue_AW
    | GeoMatchConstraintValue_AU
    | GeoMatchConstraintValue_AT
    | GeoMatchConstraintValue_AZ
    | GeoMatchConstraintValue_BS
    | GeoMatchConstraintValue_BH
    | GeoMatchConstraintValue_BD
    | GeoMatchConstraintValue_BB
    | GeoMatchConstraintValue_BY
    | GeoMatchConstraintValue_BE
    | GeoMatchConstraintValue_BZ
    | GeoMatchConstraintValue_BJ
    | GeoMatchConstraintValue_BM
    | GeoMatchConstraintValue_BT
    | GeoMatchConstraintValue_BO
    | GeoMatchConstraintValue_BQ
    | GeoMatchConstraintValue_BA
    | GeoMatchConstraintValue_BW
    | GeoMatchConstraintValue_BV
    | GeoMatchConstraintValue_BR
    | GeoMatchConstraintValue_IO
    | GeoMatchConstraintValue_BN
    | GeoMatchConstraintValue_BG
    | GeoMatchConstraintValue_BF
    | GeoMatchConstraintValue_BI
    | GeoMatchConstraintValue_KH
    | GeoMatchConstraintValue_CM
    | GeoMatchConstraintValue_CA
    | GeoMatchConstraintValue_CV
    | GeoMatchConstraintValue_KY
    | GeoMatchConstraintValue_CF
    | GeoMatchConstraintValue_TD
    | GeoMatchConstraintValue_CL
    | GeoMatchConstraintValue_CN
    | GeoMatchConstraintValue_CX
    | GeoMatchConstraintValue_CC
    | GeoMatchConstraintValue_CO
    | GeoMatchConstraintValue_KM
    | GeoMatchConstraintValue_CG
    | GeoMatchConstraintValue_CD
    | GeoMatchConstraintValue_CK
    | GeoMatchConstraintValue_CR
    | GeoMatchConstraintValue_CI
    | GeoMatchConstraintValue_HR
    | GeoMatchConstraintValue_CU
    | GeoMatchConstraintValue_CW
    | GeoMatchConstraintValue_CY
    | GeoMatchConstraintValue_CZ
    | GeoMatchConstraintValue_DK
    | GeoMatchConstraintValue_DJ
    | GeoMatchConstraintValue_DM
    | GeoMatchConstraintValue_DO
    | GeoMatchConstraintValue_EC
    | GeoMatchConstraintValue_EG
    | GeoMatchConstraintValue_SV
    | GeoMatchConstraintValue_GQ
    | GeoMatchConstraintValue_ER
    | GeoMatchConstraintValue_EE
    | GeoMatchConstraintValue_ET
    | GeoMatchConstraintValue_FK
    | GeoMatchConstraintValue_FO
    | GeoMatchConstraintValue_FJ
    | GeoMatchConstraintValue_FI
    | GeoMatchConstraintValue_FR
    | GeoMatchConstraintValue_GF
    | GeoMatchConstraintValue_PF
    | GeoMatchConstraintValue_TF
    | GeoMatchConstraintValue_GA
    | GeoMatchConstraintValue_GM
    | GeoMatchConstraintValue_GE
    | GeoMatchConstraintValue_DE
    | GeoMatchConstraintValue_GH
    | GeoMatchConstraintValue_GI
    | GeoMatchConstraintValue_GR
    | GeoMatchConstraintValue_GL
    | GeoMatchConstraintValue_GD
    | GeoMatchConstraintValue_GP
    | GeoMatchConstraintValue_GU
    | GeoMatchConstraintValue_GT
    | GeoMatchConstraintValue_GG
    | GeoMatchConstraintValue_GN
    | GeoMatchConstraintValue_GW
    | GeoMatchConstraintValue_GY
    | GeoMatchConstraintValue_HT
    | GeoMatchConstraintValue_HM
    | GeoMatchConstraintValue_VA
    | GeoMatchConstraintValue_HN
    | GeoMatchConstraintValue_HK
    | GeoMatchConstraintValue_HU
    | GeoMatchConstraintValue_IS
    | GeoMatchConstraintValue_IN
    | GeoMatchConstraintValue_ID
    | GeoMatchConstraintValue_IR
    | GeoMatchConstraintValue_IQ
    | GeoMatchConstraintValue_IE
    | GeoMatchConstraintValue_IM
    | GeoMatchConstraintValue_IL
    | GeoMatchConstraintValue_IT
    | GeoMatchConstraintValue_JM
    | GeoMatchConstraintValue_JP
    | GeoMatchConstraintValue_JE
    | GeoMatchConstraintValue_JO
    | GeoMatchConstraintValue_KZ
    | GeoMatchConstraintValue_KE
    | GeoMatchConstraintValue_KI
    | GeoMatchConstraintValue_KP
    | GeoMatchConstraintValue_KR
    | GeoMatchConstraintValue_KW
    | GeoMatchConstraintValue_KG
    | GeoMatchConstraintValue_LA
    | GeoMatchConstraintValue_LV
    | GeoMatchConstraintValue_LB
    | GeoMatchConstraintValue_LS
    | GeoMatchConstraintValue_LR
    | GeoMatchConstraintValue_LY
    | GeoMatchConstraintValue_LI
    | GeoMatchConstraintValue_LT
    | GeoMatchConstraintValue_LU
    | GeoMatchConstraintValue_MO
    | GeoMatchConstraintValue_MK
    | GeoMatchConstraintValue_MG
    | GeoMatchConstraintValue_MW
    | GeoMatchConstraintValue_MY
    | GeoMatchConstraintValue_MV
    | GeoMatchConstraintValue_ML
    | GeoMatchConstraintValue_MT
    | GeoMatchConstraintValue_MH
    | GeoMatchConstraintValue_MQ
    | GeoMatchConstraintValue_MR
    | GeoMatchConstraintValue_MU
    | GeoMatchConstraintValue_YT
    | GeoMatchConstraintValue_MX
    | GeoMatchConstraintValue_FM
    | GeoMatchConstraintValue_MD
    | GeoMatchConstraintValue_MC
    | GeoMatchConstraintValue_MN
    | GeoMatchConstraintValue_ME
    | GeoMatchConstraintValue_MS
    | GeoMatchConstraintValue_MA
    | GeoMatchConstraintValue_MZ
    | GeoMatchConstraintValue_MM
    | GeoMatchConstraintValue_NA
    | GeoMatchConstraintValue_NR
    | GeoMatchConstraintValue_NP
    | GeoMatchConstraintValue_NL
    | GeoMatchConstraintValue_NC
    | GeoMatchConstraintValue_NZ
    | GeoMatchConstraintValue_NI
    | GeoMatchConstraintValue_NE
    | GeoMatchConstraintValue_NG
    | GeoMatchConstraintValue_NU
    | GeoMatchConstraintValue_NF
    | GeoMatchConstraintValue_MP
    | GeoMatchConstraintValue_NO
    | GeoMatchConstraintValue_OM
    | GeoMatchConstraintValue_PK
    | GeoMatchConstraintValue_PW
    | GeoMatchConstraintValue_PS
    | GeoMatchConstraintValue_PA
    | GeoMatchConstraintValue_PG
    | GeoMatchConstraintValue_PY
    | GeoMatchConstraintValue_PE
    | GeoMatchConstraintValue_PH
    | GeoMatchConstraintValue_PN
    | GeoMatchConstraintValue_PL
    | GeoMatchConstraintValue_PT
    | GeoMatchConstraintValue_PR
    | GeoMatchConstraintValue_QA
    | GeoMatchConstraintValue_RE
    | GeoMatchConstraintValue_RO
    | GeoMatchConstraintValue_RU
    | GeoMatchConstraintValue_RW
    | GeoMatchConstraintValue_BL
    | GeoMatchConstraintValue_SH
    | GeoMatchConstraintValue_KN
    | GeoMatchConstraintValue_LC
    | GeoMatchConstraintValue_MF
    | GeoMatchConstraintValue_PM
    | GeoMatchConstraintValue_VC
    | GeoMatchConstraintValue_WS
    | GeoMatchConstraintValue_SM
    | GeoMatchConstraintValue_ST
    | GeoMatchConstraintValue_SA
    | GeoMatchConstraintValue_SN
    | GeoMatchConstraintValue_RS
    | GeoMatchConstraintValue_SC
    | GeoMatchConstraintValue_SL
    | GeoMatchConstraintValue_SG
    | GeoMatchConstraintValue_SX
    | GeoMatchConstraintValue_SK
    | GeoMatchConstraintValue_SI
    | GeoMatchConstraintValue_SB
    | GeoMatchConstraintValue_SO
    | GeoMatchConstraintValue_ZA
    | GeoMatchConstraintValue_GS
    | GeoMatchConstraintValue_SS
    | GeoMatchConstraintValue_ES
    | GeoMatchConstraintValue_LK
    | GeoMatchConstraintValue_SD
    | GeoMatchConstraintValue_SR
    | GeoMatchConstraintValue_SJ
    | GeoMatchConstraintValue_SZ
    | GeoMatchConstraintValue_SE
    | GeoMatchConstraintValue_CH
    | GeoMatchConstraintValue_SY
    | GeoMatchConstraintValue_TW
    | GeoMatchConstraintValue_TJ
    | GeoMatchConstraintValue_TZ
    | GeoMatchConstraintValue_TH
    | GeoMatchConstraintValue_TL
    | GeoMatchConstraintValue_TG
    | GeoMatchConstraintValue_TK
    | GeoMatchConstraintValue_TO
    | GeoMatchConstraintValue_TT
    | GeoMatchConstraintValue_TN
    | GeoMatchConstraintValue_TR
    | GeoMatchConstraintValue_TM
    | GeoMatchConstraintValue_TC
    | GeoMatchConstraintValue_TV
    | GeoMatchConstraintValue_UG
    | GeoMatchConstraintValue_UA
    | GeoMatchConstraintValue_AE
    | GeoMatchConstraintValue_GB
    | GeoMatchConstraintValue_US
    | GeoMatchConstraintValue_UM
    | GeoMatchConstraintValue_UY
    | GeoMatchConstraintValue_UZ
    | GeoMatchConstraintValue_VU
    | GeoMatchConstraintValue_VE
    | GeoMatchConstraintValue_VN
    | GeoMatchConstraintValue_VG
    | GeoMatchConstraintValue_VI
    | GeoMatchConstraintValue_WF
    | GeoMatchConstraintValue_EH
    | GeoMatchConstraintValue_YE
    | GeoMatchConstraintValue_ZM
    | GeoMatchConstraintValue_ZW



geoMatchConstraintValueDecoder : JD.Decoder GeoMatchConstraintValue
geoMatchConstraintValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AF" ->
                        JD.succeed GeoMatchConstraintValue_AF

                    "AX" ->
                        JD.succeed GeoMatchConstraintValue_AX

                    "AL" ->
                        JD.succeed GeoMatchConstraintValue_AL

                    "DZ" ->
                        JD.succeed GeoMatchConstraintValue_DZ

                    "AS" ->
                        JD.succeed GeoMatchConstraintValue_AS

                    "AD" ->
                        JD.succeed GeoMatchConstraintValue_AD

                    "AO" ->
                        JD.succeed GeoMatchConstraintValue_AO

                    "AI" ->
                        JD.succeed GeoMatchConstraintValue_AI

                    "AQ" ->
                        JD.succeed GeoMatchConstraintValue_AQ

                    "AG" ->
                        JD.succeed GeoMatchConstraintValue_AG

                    "AR" ->
                        JD.succeed GeoMatchConstraintValue_AR

                    "AM" ->
                        JD.succeed GeoMatchConstraintValue_AM

                    "AW" ->
                        JD.succeed GeoMatchConstraintValue_AW

                    "AU" ->
                        JD.succeed GeoMatchConstraintValue_AU

                    "AT" ->
                        JD.succeed GeoMatchConstraintValue_AT

                    "AZ" ->
                        JD.succeed GeoMatchConstraintValue_AZ

                    "BS" ->
                        JD.succeed GeoMatchConstraintValue_BS

                    "BH" ->
                        JD.succeed GeoMatchConstraintValue_BH

                    "BD" ->
                        JD.succeed GeoMatchConstraintValue_BD

                    "BB" ->
                        JD.succeed GeoMatchConstraintValue_BB

                    "BY" ->
                        JD.succeed GeoMatchConstraintValue_BY

                    "BE" ->
                        JD.succeed GeoMatchConstraintValue_BE

                    "BZ" ->
                        JD.succeed GeoMatchConstraintValue_BZ

                    "BJ" ->
                        JD.succeed GeoMatchConstraintValue_BJ

                    "BM" ->
                        JD.succeed GeoMatchConstraintValue_BM

                    "BT" ->
                        JD.succeed GeoMatchConstraintValue_BT

                    "BO" ->
                        JD.succeed GeoMatchConstraintValue_BO

                    "BQ" ->
                        JD.succeed GeoMatchConstraintValue_BQ

                    "BA" ->
                        JD.succeed GeoMatchConstraintValue_BA

                    "BW" ->
                        JD.succeed GeoMatchConstraintValue_BW

                    "BV" ->
                        JD.succeed GeoMatchConstraintValue_BV

                    "BR" ->
                        JD.succeed GeoMatchConstraintValue_BR

                    "IO" ->
                        JD.succeed GeoMatchConstraintValue_IO

                    "BN" ->
                        JD.succeed GeoMatchConstraintValue_BN

                    "BG" ->
                        JD.succeed GeoMatchConstraintValue_BG

                    "BF" ->
                        JD.succeed GeoMatchConstraintValue_BF

                    "BI" ->
                        JD.succeed GeoMatchConstraintValue_BI

                    "KH" ->
                        JD.succeed GeoMatchConstraintValue_KH

                    "CM" ->
                        JD.succeed GeoMatchConstraintValue_CM

                    "CA" ->
                        JD.succeed GeoMatchConstraintValue_CA

                    "CV" ->
                        JD.succeed GeoMatchConstraintValue_CV

                    "KY" ->
                        JD.succeed GeoMatchConstraintValue_KY

                    "CF" ->
                        JD.succeed GeoMatchConstraintValue_CF

                    "TD" ->
                        JD.succeed GeoMatchConstraintValue_TD

                    "CL" ->
                        JD.succeed GeoMatchConstraintValue_CL

                    "CN" ->
                        JD.succeed GeoMatchConstraintValue_CN

                    "CX" ->
                        JD.succeed GeoMatchConstraintValue_CX

                    "CC" ->
                        JD.succeed GeoMatchConstraintValue_CC

                    "CO" ->
                        JD.succeed GeoMatchConstraintValue_CO

                    "KM" ->
                        JD.succeed GeoMatchConstraintValue_KM

                    "CG" ->
                        JD.succeed GeoMatchConstraintValue_CG

                    "CD" ->
                        JD.succeed GeoMatchConstraintValue_CD

                    "CK" ->
                        JD.succeed GeoMatchConstraintValue_CK

                    "CR" ->
                        JD.succeed GeoMatchConstraintValue_CR

                    "CI" ->
                        JD.succeed GeoMatchConstraintValue_CI

                    "HR" ->
                        JD.succeed GeoMatchConstraintValue_HR

                    "CU" ->
                        JD.succeed GeoMatchConstraintValue_CU

                    "CW" ->
                        JD.succeed GeoMatchConstraintValue_CW

                    "CY" ->
                        JD.succeed GeoMatchConstraintValue_CY

                    "CZ" ->
                        JD.succeed GeoMatchConstraintValue_CZ

                    "DK" ->
                        JD.succeed GeoMatchConstraintValue_DK

                    "DJ" ->
                        JD.succeed GeoMatchConstraintValue_DJ

                    "DM" ->
                        JD.succeed GeoMatchConstraintValue_DM

                    "DO" ->
                        JD.succeed GeoMatchConstraintValue_DO

                    "EC" ->
                        JD.succeed GeoMatchConstraintValue_EC

                    "EG" ->
                        JD.succeed GeoMatchConstraintValue_EG

                    "SV" ->
                        JD.succeed GeoMatchConstraintValue_SV

                    "GQ" ->
                        JD.succeed GeoMatchConstraintValue_GQ

                    "ER" ->
                        JD.succeed GeoMatchConstraintValue_ER

                    "EE" ->
                        JD.succeed GeoMatchConstraintValue_EE

                    "ET" ->
                        JD.succeed GeoMatchConstraintValue_ET

                    "FK" ->
                        JD.succeed GeoMatchConstraintValue_FK

                    "FO" ->
                        JD.succeed GeoMatchConstraintValue_FO

                    "FJ" ->
                        JD.succeed GeoMatchConstraintValue_FJ

                    "FI" ->
                        JD.succeed GeoMatchConstraintValue_FI

                    "FR" ->
                        JD.succeed GeoMatchConstraintValue_FR

                    "GF" ->
                        JD.succeed GeoMatchConstraintValue_GF

                    "PF" ->
                        JD.succeed GeoMatchConstraintValue_PF

                    "TF" ->
                        JD.succeed GeoMatchConstraintValue_TF

                    "GA" ->
                        JD.succeed GeoMatchConstraintValue_GA

                    "GM" ->
                        JD.succeed GeoMatchConstraintValue_GM

                    "GE" ->
                        JD.succeed GeoMatchConstraintValue_GE

                    "DE" ->
                        JD.succeed GeoMatchConstraintValue_DE

                    "GH" ->
                        JD.succeed GeoMatchConstraintValue_GH

                    "GI" ->
                        JD.succeed GeoMatchConstraintValue_GI

                    "GR" ->
                        JD.succeed GeoMatchConstraintValue_GR

                    "GL" ->
                        JD.succeed GeoMatchConstraintValue_GL

                    "GD" ->
                        JD.succeed GeoMatchConstraintValue_GD

                    "GP" ->
                        JD.succeed GeoMatchConstraintValue_GP

                    "GU" ->
                        JD.succeed GeoMatchConstraintValue_GU

                    "GT" ->
                        JD.succeed GeoMatchConstraintValue_GT

                    "GG" ->
                        JD.succeed GeoMatchConstraintValue_GG

                    "GN" ->
                        JD.succeed GeoMatchConstraintValue_GN

                    "GW" ->
                        JD.succeed GeoMatchConstraintValue_GW

                    "GY" ->
                        JD.succeed GeoMatchConstraintValue_GY

                    "HT" ->
                        JD.succeed GeoMatchConstraintValue_HT

                    "HM" ->
                        JD.succeed GeoMatchConstraintValue_HM

                    "VA" ->
                        JD.succeed GeoMatchConstraintValue_VA

                    "HN" ->
                        JD.succeed GeoMatchConstraintValue_HN

                    "HK" ->
                        JD.succeed GeoMatchConstraintValue_HK

                    "HU" ->
                        JD.succeed GeoMatchConstraintValue_HU

                    "IS" ->
                        JD.succeed GeoMatchConstraintValue_IS

                    "IN" ->
                        JD.succeed GeoMatchConstraintValue_IN

                    "ID" ->
                        JD.succeed GeoMatchConstraintValue_ID

                    "IR" ->
                        JD.succeed GeoMatchConstraintValue_IR

                    "IQ" ->
                        JD.succeed GeoMatchConstraintValue_IQ

                    "IE" ->
                        JD.succeed GeoMatchConstraintValue_IE

                    "IM" ->
                        JD.succeed GeoMatchConstraintValue_IM

                    "IL" ->
                        JD.succeed GeoMatchConstraintValue_IL

                    "IT" ->
                        JD.succeed GeoMatchConstraintValue_IT

                    "JM" ->
                        JD.succeed GeoMatchConstraintValue_JM

                    "JP" ->
                        JD.succeed GeoMatchConstraintValue_JP

                    "JE" ->
                        JD.succeed GeoMatchConstraintValue_JE

                    "JO" ->
                        JD.succeed GeoMatchConstraintValue_JO

                    "KZ" ->
                        JD.succeed GeoMatchConstraintValue_KZ

                    "KE" ->
                        JD.succeed GeoMatchConstraintValue_KE

                    "KI" ->
                        JD.succeed GeoMatchConstraintValue_KI

                    "KP" ->
                        JD.succeed GeoMatchConstraintValue_KP

                    "KR" ->
                        JD.succeed GeoMatchConstraintValue_KR

                    "KW" ->
                        JD.succeed GeoMatchConstraintValue_KW

                    "KG" ->
                        JD.succeed GeoMatchConstraintValue_KG

                    "LA" ->
                        JD.succeed GeoMatchConstraintValue_LA

                    "LV" ->
                        JD.succeed GeoMatchConstraintValue_LV

                    "LB" ->
                        JD.succeed GeoMatchConstraintValue_LB

                    "LS" ->
                        JD.succeed GeoMatchConstraintValue_LS

                    "LR" ->
                        JD.succeed GeoMatchConstraintValue_LR

                    "LY" ->
                        JD.succeed GeoMatchConstraintValue_LY

                    "LI" ->
                        JD.succeed GeoMatchConstraintValue_LI

                    "LT" ->
                        JD.succeed GeoMatchConstraintValue_LT

                    "LU" ->
                        JD.succeed GeoMatchConstraintValue_LU

                    "MO" ->
                        JD.succeed GeoMatchConstraintValue_MO

                    "MK" ->
                        JD.succeed GeoMatchConstraintValue_MK

                    "MG" ->
                        JD.succeed GeoMatchConstraintValue_MG

                    "MW" ->
                        JD.succeed GeoMatchConstraintValue_MW

                    "MY" ->
                        JD.succeed GeoMatchConstraintValue_MY

                    "MV" ->
                        JD.succeed GeoMatchConstraintValue_MV

                    "ML" ->
                        JD.succeed GeoMatchConstraintValue_ML

                    "MT" ->
                        JD.succeed GeoMatchConstraintValue_MT

                    "MH" ->
                        JD.succeed GeoMatchConstraintValue_MH

                    "MQ" ->
                        JD.succeed GeoMatchConstraintValue_MQ

                    "MR" ->
                        JD.succeed GeoMatchConstraintValue_MR

                    "MU" ->
                        JD.succeed GeoMatchConstraintValue_MU

                    "YT" ->
                        JD.succeed GeoMatchConstraintValue_YT

                    "MX" ->
                        JD.succeed GeoMatchConstraintValue_MX

                    "FM" ->
                        JD.succeed GeoMatchConstraintValue_FM

                    "MD" ->
                        JD.succeed GeoMatchConstraintValue_MD

                    "MC" ->
                        JD.succeed GeoMatchConstraintValue_MC

                    "MN" ->
                        JD.succeed GeoMatchConstraintValue_MN

                    "ME" ->
                        JD.succeed GeoMatchConstraintValue_ME

                    "MS" ->
                        JD.succeed GeoMatchConstraintValue_MS

                    "MA" ->
                        JD.succeed GeoMatchConstraintValue_MA

                    "MZ" ->
                        JD.succeed GeoMatchConstraintValue_MZ

                    "MM" ->
                        JD.succeed GeoMatchConstraintValue_MM

                    "NA" ->
                        JD.succeed GeoMatchConstraintValue_NA

                    "NR" ->
                        JD.succeed GeoMatchConstraintValue_NR

                    "NP" ->
                        JD.succeed GeoMatchConstraintValue_NP

                    "NL" ->
                        JD.succeed GeoMatchConstraintValue_NL

                    "NC" ->
                        JD.succeed GeoMatchConstraintValue_NC

                    "NZ" ->
                        JD.succeed GeoMatchConstraintValue_NZ

                    "NI" ->
                        JD.succeed GeoMatchConstraintValue_NI

                    "NE" ->
                        JD.succeed GeoMatchConstraintValue_NE

                    "NG" ->
                        JD.succeed GeoMatchConstraintValue_NG

                    "NU" ->
                        JD.succeed GeoMatchConstraintValue_NU

                    "NF" ->
                        JD.succeed GeoMatchConstraintValue_NF

                    "MP" ->
                        JD.succeed GeoMatchConstraintValue_MP

                    "NO" ->
                        JD.succeed GeoMatchConstraintValue_NO

                    "OM" ->
                        JD.succeed GeoMatchConstraintValue_OM

                    "PK" ->
                        JD.succeed GeoMatchConstraintValue_PK

                    "PW" ->
                        JD.succeed GeoMatchConstraintValue_PW

                    "PS" ->
                        JD.succeed GeoMatchConstraintValue_PS

                    "PA" ->
                        JD.succeed GeoMatchConstraintValue_PA

                    "PG" ->
                        JD.succeed GeoMatchConstraintValue_PG

                    "PY" ->
                        JD.succeed GeoMatchConstraintValue_PY

                    "PE" ->
                        JD.succeed GeoMatchConstraintValue_PE

                    "PH" ->
                        JD.succeed GeoMatchConstraintValue_PH

                    "PN" ->
                        JD.succeed GeoMatchConstraintValue_PN

                    "PL" ->
                        JD.succeed GeoMatchConstraintValue_PL

                    "PT" ->
                        JD.succeed GeoMatchConstraintValue_PT

                    "PR" ->
                        JD.succeed GeoMatchConstraintValue_PR

                    "QA" ->
                        JD.succeed GeoMatchConstraintValue_QA

                    "RE" ->
                        JD.succeed GeoMatchConstraintValue_RE

                    "RO" ->
                        JD.succeed GeoMatchConstraintValue_RO

                    "RU" ->
                        JD.succeed GeoMatchConstraintValue_RU

                    "RW" ->
                        JD.succeed GeoMatchConstraintValue_RW

                    "BL" ->
                        JD.succeed GeoMatchConstraintValue_BL

                    "SH" ->
                        JD.succeed GeoMatchConstraintValue_SH

                    "KN" ->
                        JD.succeed GeoMatchConstraintValue_KN

                    "LC" ->
                        JD.succeed GeoMatchConstraintValue_LC

                    "MF" ->
                        JD.succeed GeoMatchConstraintValue_MF

                    "PM" ->
                        JD.succeed GeoMatchConstraintValue_PM

                    "VC" ->
                        JD.succeed GeoMatchConstraintValue_VC

                    "WS" ->
                        JD.succeed GeoMatchConstraintValue_WS

                    "SM" ->
                        JD.succeed GeoMatchConstraintValue_SM

                    "ST" ->
                        JD.succeed GeoMatchConstraintValue_ST

                    "SA" ->
                        JD.succeed GeoMatchConstraintValue_SA

                    "SN" ->
                        JD.succeed GeoMatchConstraintValue_SN

                    "RS" ->
                        JD.succeed GeoMatchConstraintValue_RS

                    "SC" ->
                        JD.succeed GeoMatchConstraintValue_SC

                    "SL" ->
                        JD.succeed GeoMatchConstraintValue_SL

                    "SG" ->
                        JD.succeed GeoMatchConstraintValue_SG

                    "SX" ->
                        JD.succeed GeoMatchConstraintValue_SX

                    "SK" ->
                        JD.succeed GeoMatchConstraintValue_SK

                    "SI" ->
                        JD.succeed GeoMatchConstraintValue_SI

                    "SB" ->
                        JD.succeed GeoMatchConstraintValue_SB

                    "SO" ->
                        JD.succeed GeoMatchConstraintValue_SO

                    "ZA" ->
                        JD.succeed GeoMatchConstraintValue_ZA

                    "GS" ->
                        JD.succeed GeoMatchConstraintValue_GS

                    "SS" ->
                        JD.succeed GeoMatchConstraintValue_SS

                    "ES" ->
                        JD.succeed GeoMatchConstraintValue_ES

                    "LK" ->
                        JD.succeed GeoMatchConstraintValue_LK

                    "SD" ->
                        JD.succeed GeoMatchConstraintValue_SD

                    "SR" ->
                        JD.succeed GeoMatchConstraintValue_SR

                    "SJ" ->
                        JD.succeed GeoMatchConstraintValue_SJ

                    "SZ" ->
                        JD.succeed GeoMatchConstraintValue_SZ

                    "SE" ->
                        JD.succeed GeoMatchConstraintValue_SE

                    "CH" ->
                        JD.succeed GeoMatchConstraintValue_CH

                    "SY" ->
                        JD.succeed GeoMatchConstraintValue_SY

                    "TW" ->
                        JD.succeed GeoMatchConstraintValue_TW

                    "TJ" ->
                        JD.succeed GeoMatchConstraintValue_TJ

                    "TZ" ->
                        JD.succeed GeoMatchConstraintValue_TZ

                    "TH" ->
                        JD.succeed GeoMatchConstraintValue_TH

                    "TL" ->
                        JD.succeed GeoMatchConstraintValue_TL

                    "TG" ->
                        JD.succeed GeoMatchConstraintValue_TG

                    "TK" ->
                        JD.succeed GeoMatchConstraintValue_TK

                    "TO" ->
                        JD.succeed GeoMatchConstraintValue_TO

                    "TT" ->
                        JD.succeed GeoMatchConstraintValue_TT

                    "TN" ->
                        JD.succeed GeoMatchConstraintValue_TN

                    "TR" ->
                        JD.succeed GeoMatchConstraintValue_TR

                    "TM" ->
                        JD.succeed GeoMatchConstraintValue_TM

                    "TC" ->
                        JD.succeed GeoMatchConstraintValue_TC

                    "TV" ->
                        JD.succeed GeoMatchConstraintValue_TV

                    "UG" ->
                        JD.succeed GeoMatchConstraintValue_UG

                    "UA" ->
                        JD.succeed GeoMatchConstraintValue_UA

                    "AE" ->
                        JD.succeed GeoMatchConstraintValue_AE

                    "GB" ->
                        JD.succeed GeoMatchConstraintValue_GB

                    "US" ->
                        JD.succeed GeoMatchConstraintValue_US

                    "UM" ->
                        JD.succeed GeoMatchConstraintValue_UM

                    "UY" ->
                        JD.succeed GeoMatchConstraintValue_UY

                    "UZ" ->
                        JD.succeed GeoMatchConstraintValue_UZ

                    "VU" ->
                        JD.succeed GeoMatchConstraintValue_VU

                    "VE" ->
                        JD.succeed GeoMatchConstraintValue_VE

                    "VN" ->
                        JD.succeed GeoMatchConstraintValue_VN

                    "VG" ->
                        JD.succeed GeoMatchConstraintValue_VG

                    "VI" ->
                        JD.succeed GeoMatchConstraintValue_VI

                    "WF" ->
                        JD.succeed GeoMatchConstraintValue_WF

                    "EH" ->
                        JD.succeed GeoMatchConstraintValue_EH

                    "YE" ->
                        JD.succeed GeoMatchConstraintValue_YE

                    "ZM" ->
                        JD.succeed GeoMatchConstraintValue_ZM

                    "ZW" ->
                        JD.succeed GeoMatchConstraintValue_ZW


                    _ ->
                        JD.fail "bad thing"
            )




geoMatchConstraintValueToString : GeoMatchConstraintValue -> String
geoMatchConstraintValueToString val =
    case val of
        GeoMatchConstraintValue_AF ->
            "AF"

        GeoMatchConstraintValue_AX ->
            "AX"

        GeoMatchConstraintValue_AL ->
            "AL"

        GeoMatchConstraintValue_DZ ->
            "DZ"

        GeoMatchConstraintValue_AS ->
            "AS"

        GeoMatchConstraintValue_AD ->
            "AD"

        GeoMatchConstraintValue_AO ->
            "AO"

        GeoMatchConstraintValue_AI ->
            "AI"

        GeoMatchConstraintValue_AQ ->
            "AQ"

        GeoMatchConstraintValue_AG ->
            "AG"

        GeoMatchConstraintValue_AR ->
            "AR"

        GeoMatchConstraintValue_AM ->
            "AM"

        GeoMatchConstraintValue_AW ->
            "AW"

        GeoMatchConstraintValue_AU ->
            "AU"

        GeoMatchConstraintValue_AT ->
            "AT"

        GeoMatchConstraintValue_AZ ->
            "AZ"

        GeoMatchConstraintValue_BS ->
            "BS"

        GeoMatchConstraintValue_BH ->
            "BH"

        GeoMatchConstraintValue_BD ->
            "BD"

        GeoMatchConstraintValue_BB ->
            "BB"

        GeoMatchConstraintValue_BY ->
            "BY"

        GeoMatchConstraintValue_BE ->
            "BE"

        GeoMatchConstraintValue_BZ ->
            "BZ"

        GeoMatchConstraintValue_BJ ->
            "BJ"

        GeoMatchConstraintValue_BM ->
            "BM"

        GeoMatchConstraintValue_BT ->
            "BT"

        GeoMatchConstraintValue_BO ->
            "BO"

        GeoMatchConstraintValue_BQ ->
            "BQ"

        GeoMatchConstraintValue_BA ->
            "BA"

        GeoMatchConstraintValue_BW ->
            "BW"

        GeoMatchConstraintValue_BV ->
            "BV"

        GeoMatchConstraintValue_BR ->
            "BR"

        GeoMatchConstraintValue_IO ->
            "IO"

        GeoMatchConstraintValue_BN ->
            "BN"

        GeoMatchConstraintValue_BG ->
            "BG"

        GeoMatchConstraintValue_BF ->
            "BF"

        GeoMatchConstraintValue_BI ->
            "BI"

        GeoMatchConstraintValue_KH ->
            "KH"

        GeoMatchConstraintValue_CM ->
            "CM"

        GeoMatchConstraintValue_CA ->
            "CA"

        GeoMatchConstraintValue_CV ->
            "CV"

        GeoMatchConstraintValue_KY ->
            "KY"

        GeoMatchConstraintValue_CF ->
            "CF"

        GeoMatchConstraintValue_TD ->
            "TD"

        GeoMatchConstraintValue_CL ->
            "CL"

        GeoMatchConstraintValue_CN ->
            "CN"

        GeoMatchConstraintValue_CX ->
            "CX"

        GeoMatchConstraintValue_CC ->
            "CC"

        GeoMatchConstraintValue_CO ->
            "CO"

        GeoMatchConstraintValue_KM ->
            "KM"

        GeoMatchConstraintValue_CG ->
            "CG"

        GeoMatchConstraintValue_CD ->
            "CD"

        GeoMatchConstraintValue_CK ->
            "CK"

        GeoMatchConstraintValue_CR ->
            "CR"

        GeoMatchConstraintValue_CI ->
            "CI"

        GeoMatchConstraintValue_HR ->
            "HR"

        GeoMatchConstraintValue_CU ->
            "CU"

        GeoMatchConstraintValue_CW ->
            "CW"

        GeoMatchConstraintValue_CY ->
            "CY"

        GeoMatchConstraintValue_CZ ->
            "CZ"

        GeoMatchConstraintValue_DK ->
            "DK"

        GeoMatchConstraintValue_DJ ->
            "DJ"

        GeoMatchConstraintValue_DM ->
            "DM"

        GeoMatchConstraintValue_DO ->
            "DO"

        GeoMatchConstraintValue_EC ->
            "EC"

        GeoMatchConstraintValue_EG ->
            "EG"

        GeoMatchConstraintValue_SV ->
            "SV"

        GeoMatchConstraintValue_GQ ->
            "GQ"

        GeoMatchConstraintValue_ER ->
            "ER"

        GeoMatchConstraintValue_EE ->
            "EE"

        GeoMatchConstraintValue_ET ->
            "ET"

        GeoMatchConstraintValue_FK ->
            "FK"

        GeoMatchConstraintValue_FO ->
            "FO"

        GeoMatchConstraintValue_FJ ->
            "FJ"

        GeoMatchConstraintValue_FI ->
            "FI"

        GeoMatchConstraintValue_FR ->
            "FR"

        GeoMatchConstraintValue_GF ->
            "GF"

        GeoMatchConstraintValue_PF ->
            "PF"

        GeoMatchConstraintValue_TF ->
            "TF"

        GeoMatchConstraintValue_GA ->
            "GA"

        GeoMatchConstraintValue_GM ->
            "GM"

        GeoMatchConstraintValue_GE ->
            "GE"

        GeoMatchConstraintValue_DE ->
            "DE"

        GeoMatchConstraintValue_GH ->
            "GH"

        GeoMatchConstraintValue_GI ->
            "GI"

        GeoMatchConstraintValue_GR ->
            "GR"

        GeoMatchConstraintValue_GL ->
            "GL"

        GeoMatchConstraintValue_GD ->
            "GD"

        GeoMatchConstraintValue_GP ->
            "GP"

        GeoMatchConstraintValue_GU ->
            "GU"

        GeoMatchConstraintValue_GT ->
            "GT"

        GeoMatchConstraintValue_GG ->
            "GG"

        GeoMatchConstraintValue_GN ->
            "GN"

        GeoMatchConstraintValue_GW ->
            "GW"

        GeoMatchConstraintValue_GY ->
            "GY"

        GeoMatchConstraintValue_HT ->
            "HT"

        GeoMatchConstraintValue_HM ->
            "HM"

        GeoMatchConstraintValue_VA ->
            "VA"

        GeoMatchConstraintValue_HN ->
            "HN"

        GeoMatchConstraintValue_HK ->
            "HK"

        GeoMatchConstraintValue_HU ->
            "HU"

        GeoMatchConstraintValue_IS ->
            "IS"

        GeoMatchConstraintValue_IN ->
            "IN"

        GeoMatchConstraintValue_ID ->
            "ID"

        GeoMatchConstraintValue_IR ->
            "IR"

        GeoMatchConstraintValue_IQ ->
            "IQ"

        GeoMatchConstraintValue_IE ->
            "IE"

        GeoMatchConstraintValue_IM ->
            "IM"

        GeoMatchConstraintValue_IL ->
            "IL"

        GeoMatchConstraintValue_IT ->
            "IT"

        GeoMatchConstraintValue_JM ->
            "JM"

        GeoMatchConstraintValue_JP ->
            "JP"

        GeoMatchConstraintValue_JE ->
            "JE"

        GeoMatchConstraintValue_JO ->
            "JO"

        GeoMatchConstraintValue_KZ ->
            "KZ"

        GeoMatchConstraintValue_KE ->
            "KE"

        GeoMatchConstraintValue_KI ->
            "KI"

        GeoMatchConstraintValue_KP ->
            "KP"

        GeoMatchConstraintValue_KR ->
            "KR"

        GeoMatchConstraintValue_KW ->
            "KW"

        GeoMatchConstraintValue_KG ->
            "KG"

        GeoMatchConstraintValue_LA ->
            "LA"

        GeoMatchConstraintValue_LV ->
            "LV"

        GeoMatchConstraintValue_LB ->
            "LB"

        GeoMatchConstraintValue_LS ->
            "LS"

        GeoMatchConstraintValue_LR ->
            "LR"

        GeoMatchConstraintValue_LY ->
            "LY"

        GeoMatchConstraintValue_LI ->
            "LI"

        GeoMatchConstraintValue_LT ->
            "LT"

        GeoMatchConstraintValue_LU ->
            "LU"

        GeoMatchConstraintValue_MO ->
            "MO"

        GeoMatchConstraintValue_MK ->
            "MK"

        GeoMatchConstraintValue_MG ->
            "MG"

        GeoMatchConstraintValue_MW ->
            "MW"

        GeoMatchConstraintValue_MY ->
            "MY"

        GeoMatchConstraintValue_MV ->
            "MV"

        GeoMatchConstraintValue_ML ->
            "ML"

        GeoMatchConstraintValue_MT ->
            "MT"

        GeoMatchConstraintValue_MH ->
            "MH"

        GeoMatchConstraintValue_MQ ->
            "MQ"

        GeoMatchConstraintValue_MR ->
            "MR"

        GeoMatchConstraintValue_MU ->
            "MU"

        GeoMatchConstraintValue_YT ->
            "YT"

        GeoMatchConstraintValue_MX ->
            "MX"

        GeoMatchConstraintValue_FM ->
            "FM"

        GeoMatchConstraintValue_MD ->
            "MD"

        GeoMatchConstraintValue_MC ->
            "MC"

        GeoMatchConstraintValue_MN ->
            "MN"

        GeoMatchConstraintValue_ME ->
            "ME"

        GeoMatchConstraintValue_MS ->
            "MS"

        GeoMatchConstraintValue_MA ->
            "MA"

        GeoMatchConstraintValue_MZ ->
            "MZ"

        GeoMatchConstraintValue_MM ->
            "MM"

        GeoMatchConstraintValue_NA ->
            "NA"

        GeoMatchConstraintValue_NR ->
            "NR"

        GeoMatchConstraintValue_NP ->
            "NP"

        GeoMatchConstraintValue_NL ->
            "NL"

        GeoMatchConstraintValue_NC ->
            "NC"

        GeoMatchConstraintValue_NZ ->
            "NZ"

        GeoMatchConstraintValue_NI ->
            "NI"

        GeoMatchConstraintValue_NE ->
            "NE"

        GeoMatchConstraintValue_NG ->
            "NG"

        GeoMatchConstraintValue_NU ->
            "NU"

        GeoMatchConstraintValue_NF ->
            "NF"

        GeoMatchConstraintValue_MP ->
            "MP"

        GeoMatchConstraintValue_NO ->
            "NO"

        GeoMatchConstraintValue_OM ->
            "OM"

        GeoMatchConstraintValue_PK ->
            "PK"

        GeoMatchConstraintValue_PW ->
            "PW"

        GeoMatchConstraintValue_PS ->
            "PS"

        GeoMatchConstraintValue_PA ->
            "PA"

        GeoMatchConstraintValue_PG ->
            "PG"

        GeoMatchConstraintValue_PY ->
            "PY"

        GeoMatchConstraintValue_PE ->
            "PE"

        GeoMatchConstraintValue_PH ->
            "PH"

        GeoMatchConstraintValue_PN ->
            "PN"

        GeoMatchConstraintValue_PL ->
            "PL"

        GeoMatchConstraintValue_PT ->
            "PT"

        GeoMatchConstraintValue_PR ->
            "PR"

        GeoMatchConstraintValue_QA ->
            "QA"

        GeoMatchConstraintValue_RE ->
            "RE"

        GeoMatchConstraintValue_RO ->
            "RO"

        GeoMatchConstraintValue_RU ->
            "RU"

        GeoMatchConstraintValue_RW ->
            "RW"

        GeoMatchConstraintValue_BL ->
            "BL"

        GeoMatchConstraintValue_SH ->
            "SH"

        GeoMatchConstraintValue_KN ->
            "KN"

        GeoMatchConstraintValue_LC ->
            "LC"

        GeoMatchConstraintValue_MF ->
            "MF"

        GeoMatchConstraintValue_PM ->
            "PM"

        GeoMatchConstraintValue_VC ->
            "VC"

        GeoMatchConstraintValue_WS ->
            "WS"

        GeoMatchConstraintValue_SM ->
            "SM"

        GeoMatchConstraintValue_ST ->
            "ST"

        GeoMatchConstraintValue_SA ->
            "SA"

        GeoMatchConstraintValue_SN ->
            "SN"

        GeoMatchConstraintValue_RS ->
            "RS"

        GeoMatchConstraintValue_SC ->
            "SC"

        GeoMatchConstraintValue_SL ->
            "SL"

        GeoMatchConstraintValue_SG ->
            "SG"

        GeoMatchConstraintValue_SX ->
            "SX"

        GeoMatchConstraintValue_SK ->
            "SK"

        GeoMatchConstraintValue_SI ->
            "SI"

        GeoMatchConstraintValue_SB ->
            "SB"

        GeoMatchConstraintValue_SO ->
            "SO"

        GeoMatchConstraintValue_ZA ->
            "ZA"

        GeoMatchConstraintValue_GS ->
            "GS"

        GeoMatchConstraintValue_SS ->
            "SS"

        GeoMatchConstraintValue_ES ->
            "ES"

        GeoMatchConstraintValue_LK ->
            "LK"

        GeoMatchConstraintValue_SD ->
            "SD"

        GeoMatchConstraintValue_SR ->
            "SR"

        GeoMatchConstraintValue_SJ ->
            "SJ"

        GeoMatchConstraintValue_SZ ->
            "SZ"

        GeoMatchConstraintValue_SE ->
            "SE"

        GeoMatchConstraintValue_CH ->
            "CH"

        GeoMatchConstraintValue_SY ->
            "SY"

        GeoMatchConstraintValue_TW ->
            "TW"

        GeoMatchConstraintValue_TJ ->
            "TJ"

        GeoMatchConstraintValue_TZ ->
            "TZ"

        GeoMatchConstraintValue_TH ->
            "TH"

        GeoMatchConstraintValue_TL ->
            "TL"

        GeoMatchConstraintValue_TG ->
            "TG"

        GeoMatchConstraintValue_TK ->
            "TK"

        GeoMatchConstraintValue_TO ->
            "TO"

        GeoMatchConstraintValue_TT ->
            "TT"

        GeoMatchConstraintValue_TN ->
            "TN"

        GeoMatchConstraintValue_TR ->
            "TR"

        GeoMatchConstraintValue_TM ->
            "TM"

        GeoMatchConstraintValue_TC ->
            "TC"

        GeoMatchConstraintValue_TV ->
            "TV"

        GeoMatchConstraintValue_UG ->
            "UG"

        GeoMatchConstraintValue_UA ->
            "UA"

        GeoMatchConstraintValue_AE ->
            "AE"

        GeoMatchConstraintValue_GB ->
            "GB"

        GeoMatchConstraintValue_US ->
            "US"

        GeoMatchConstraintValue_UM ->
            "UM"

        GeoMatchConstraintValue_UY ->
            "UY"

        GeoMatchConstraintValue_UZ ->
            "UZ"

        GeoMatchConstraintValue_VU ->
            "VU"

        GeoMatchConstraintValue_VE ->
            "VE"

        GeoMatchConstraintValue_VN ->
            "VN"

        GeoMatchConstraintValue_VG ->
            "VG"

        GeoMatchConstraintValue_VI ->
            "VI"

        GeoMatchConstraintValue_WF ->
            "WF"

        GeoMatchConstraintValue_EH ->
            "EH"

        GeoMatchConstraintValue_YE ->
            "YE"

        GeoMatchConstraintValue_ZM ->
            "ZM"

        GeoMatchConstraintValue_ZW ->
            "ZW"




{-| <p>Contains one or more countries that AWS WAF will search for.</p>
-}
type alias GeoMatchSet =
    { geoMatchSetId : String
    , name : Maybe String
    , geoMatchConstraints : (List GeoMatchConstraint)
    }



geoMatchSetDecoder : JD.Decoder GeoMatchSet
geoMatchSetDecoder =
    JD.succeed GeoMatchSet
        
        |> JDP.custom (AWS.Core.Decode.required
            ["GeoMatchSetId", "geoMatchSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["GeoMatchConstraints", "geoMatchConstraints"]
            (JD.list geoMatchConstraintDecoder)
        )
        




geoMatchSetToString : GeoMatchSet -> String -- List (String, String)
geoMatchSetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "geoMatchSetId" "" -- val.geoMatchSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "geoMatchConstraints" "" -- val.geoMatchConstraints
        
    --     |> Dict.toList
    ""



{-| <p>Contains the identifier and the name of the <code>GeoMatchSet</code>.</p>
-}
type alias GeoMatchSetSummary =
    { geoMatchSetId : String
    , name : String
    }



geoMatchSetSummaryDecoder : JD.Decoder GeoMatchSetSummary
geoMatchSetSummaryDecoder =
    JD.succeed GeoMatchSetSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["GeoMatchSetId", "geoMatchSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        




geoMatchSetSummaryToString : GeoMatchSetSummary -> String -- List (String, String)
geoMatchSetSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "geoMatchSetId" "" -- val.geoMatchSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the type of update to perform to an <a>GeoMatchSet</a> with <a>UpdateGeoMatchSet</a>.</p>
-}
type alias GeoMatchSetUpdate =
    { action : ChangeAction
    , geoMatchConstraint : GeoMatchConstraint
    }



geoMatchSetUpdateDecoder : JD.Decoder GeoMatchSetUpdate
geoMatchSetUpdateDecoder =
    JD.succeed GeoMatchSetUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["GeoMatchConstraint", "geoMatchConstraint"]
            geoMatchConstraintDecoder
        )
        




geoMatchSetUpdateToString : GeoMatchSetUpdate -> String -- List (String, String)
geoMatchSetUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "geoMatchConstraint" "" -- val.geoMatchConstraint
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getByteMatchSet
-}
type alias GetByteMatchSetResponse =
    { byteMatchSet : Maybe ByteMatchSet
    }



getByteMatchSetResponseDecoder : JD.Decoder GetByteMatchSetResponse
getByteMatchSetResponseDecoder =
    JD.succeed GetByteMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ByteMatchSet", "byteMatchSet"]
            byteMatchSetDecoder
        )
        




getByteMatchSetResponseToString : GetByteMatchSetResponse -> String -- List (String, String)
getByteMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "byteMatchSet" "" -- val.byteMatchSet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getChangeToken
-}
type alias GetChangeTokenResponse =
    { changeToken : Maybe String
    }



getChangeTokenResponseDecoder : JD.Decoder GetChangeTokenResponse
getChangeTokenResponseDecoder =
    JD.succeed GetChangeTokenResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




getChangeTokenResponseToString : GetChangeTokenResponse -> String -- List (String, String)
getChangeTokenResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getChangeTokenStatus
-}
type alias GetChangeTokenStatusResponse =
    { changeTokenStatus : Maybe ChangeTokenStatus
    }



getChangeTokenStatusResponseDecoder : JD.Decoder GetChangeTokenStatusResponse
getChangeTokenStatusResponseDecoder =
    JD.succeed GetChangeTokenStatusResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeTokenStatus", "changeTokenStatus"]
            changeTokenStatusDecoder
        )
        




getChangeTokenStatusResponseToString : GetChangeTokenStatusResponse -> String -- List (String, String)
getChangeTokenStatusResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeTokenStatus" "" -- val.changeTokenStatus
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getGeoMatchSet
-}
type alias GetGeoMatchSetResponse =
    { geoMatchSet : Maybe GeoMatchSet
    }



getGeoMatchSetResponseDecoder : JD.Decoder GetGeoMatchSetResponse
getGeoMatchSetResponseDecoder =
    JD.succeed GetGeoMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GeoMatchSet", "geoMatchSet"]
            geoMatchSetDecoder
        )
        




getGeoMatchSetResponseToString : GetGeoMatchSetResponse -> String -- List (String, String)
getGeoMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "geoMatchSet" "" -- val.geoMatchSet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getIPSet
-}
type alias GetIPSetResponse =
    { iPSet : Maybe IPSet
    }



getIPSetResponseDecoder : JD.Decoder GetIPSetResponse
getIPSetResponseDecoder =
    JD.succeed GetIPSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IPSet", "iPSet"]
            iPSetDecoder
        )
        




getIPSetResponseToString : GetIPSetResponse -> String -- List (String, String)
getIPSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "iPSet" "" -- val.iPSet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getLoggingConfiguration
-}
type alias GetLoggingConfigurationResponse =
    { loggingConfiguration : Maybe LoggingConfiguration
    }



getLoggingConfigurationResponseDecoder : JD.Decoder GetLoggingConfigurationResponse
getLoggingConfigurationResponseDecoder =
    JD.succeed GetLoggingConfigurationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoggingConfiguration", "loggingConfiguration"]
            loggingConfigurationDecoder
        )
        




getLoggingConfigurationResponseToString : GetLoggingConfigurationResponse -> String -- List (String, String)
getLoggingConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loggingConfiguration" "" -- val.loggingConfiguration
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getPermissionPolicy
-}
type alias GetPermissionPolicyResponse =
    { policy : Maybe String
    }



getPermissionPolicyResponseDecoder : JD.Decoder GetPermissionPolicyResponse
getPermissionPolicyResponseDecoder =
    JD.succeed GetPermissionPolicyResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Policy", "policy"]
            JD.string
        )
        




getPermissionPolicyResponseToString : GetPermissionPolicyResponse -> String -- List (String, String)
getPermissionPolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "policy" "" -- val.policy
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRateBasedRuleManagedKeys
-}
type alias GetRateBasedRuleManagedKeysResponse =
    { managedKeys : Maybe (List String)
    , nextMarker : Maybe String
    }



getRateBasedRuleManagedKeysResponseDecoder : JD.Decoder GetRateBasedRuleManagedKeysResponse
getRateBasedRuleManagedKeysResponseDecoder =
    JD.succeed GetRateBasedRuleManagedKeysResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ManagedKeys", "managedKeys"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        




getRateBasedRuleManagedKeysResponseToString : GetRateBasedRuleManagedKeysResponse -> String -- List (String, String)
getRateBasedRuleManagedKeysResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "managedKeys" "" -- val.managedKeys
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRateBasedRule
-}
type alias GetRateBasedRuleResponse =
    { rule : Maybe RateBasedRule
    }



getRateBasedRuleResponseDecoder : JD.Decoder GetRateBasedRuleResponse
getRateBasedRuleResponseDecoder =
    JD.succeed GetRateBasedRuleResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Rule", "rule"]
            rateBasedRuleDecoder
        )
        




getRateBasedRuleResponseToString : GetRateBasedRuleResponse -> String -- List (String, String)
getRateBasedRuleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rule" "" -- val.rule
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRegexMatchSet
-}
type alias GetRegexMatchSetResponse =
    { regexMatchSet : Maybe RegexMatchSet
    }



getRegexMatchSetResponseDecoder : JD.Decoder GetRegexMatchSetResponse
getRegexMatchSetResponseDecoder =
    JD.succeed GetRegexMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegexMatchSet", "regexMatchSet"]
            regexMatchSetDecoder
        )
        




getRegexMatchSetResponseToString : GetRegexMatchSetResponse -> String -- List (String, String)
getRegexMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "regexMatchSet" "" -- val.regexMatchSet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRegexPatternSet
-}
type alias GetRegexPatternSetResponse =
    { regexPatternSet : Maybe RegexPatternSet
    }



getRegexPatternSetResponseDecoder : JD.Decoder GetRegexPatternSetResponse
getRegexPatternSetResponseDecoder =
    JD.succeed GetRegexPatternSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegexPatternSet", "regexPatternSet"]
            regexPatternSetDecoder
        )
        




getRegexPatternSetResponseToString : GetRegexPatternSetResponse -> String -- List (String, String)
getRegexPatternSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "regexPatternSet" "" -- val.regexPatternSet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRuleGroup
-}
type alias GetRuleGroupResponse =
    { ruleGroup : Maybe RuleGroup
    }



getRuleGroupResponseDecoder : JD.Decoder GetRuleGroupResponse
getRuleGroupResponseDecoder =
    JD.succeed GetRuleGroupResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuleGroup", "ruleGroup"]
            ruleGroupDecoder
        )
        




getRuleGroupResponseToString : GetRuleGroupResponse -> String -- List (String, String)
getRuleGroupResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleGroup" "" -- val.ruleGroup
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRule
-}
type alias GetRuleResponse =
    { rule : Maybe Rule
    }



getRuleResponseDecoder : JD.Decoder GetRuleResponse
getRuleResponseDecoder =
    JD.succeed GetRuleResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Rule", "rule"]
            ruleDecoder
        )
        




getRuleResponseToString : GetRuleResponse -> String -- List (String, String)
getRuleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "rule" "" -- val.rule
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getSampledRequests
-}
type alias GetSampledRequestsResponse =
    { sampledRequests : Maybe (List SampledHTTPRequest)
    , populationSize : Maybe Int
    , timeWindow : Maybe TimeWindow
    }



getSampledRequestsResponseDecoder : JD.Decoder GetSampledRequestsResponse
getSampledRequestsResponseDecoder =
    JD.succeed GetSampledRequestsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SampledRequests", "sampledRequests"]
            (JD.list sampledHTTPRequestDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PopulationSize", "populationSize"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimeWindow", "timeWindow"]
            timeWindowDecoder
        )
        




getSampledRequestsResponseToString : GetSampledRequestsResponse -> String -- List (String, String)
getSampledRequestsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sampledRequests" "" -- val.sampledRequests
        
    --     |> Dict.insert
    --         "populationSize" "" -- val.populationSize
        
    --     |> Dict.insert
    --         "timeWindow" "" -- val.timeWindow
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getSizeConstraintSet
-}
type alias GetSizeConstraintSetResponse =
    { sizeConstraintSet : Maybe SizeConstraintSet
    }



getSizeConstraintSetResponseDecoder : JD.Decoder GetSizeConstraintSetResponse
getSizeConstraintSetResponseDecoder =
    JD.succeed GetSizeConstraintSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SizeConstraintSet", "sizeConstraintSet"]
            sizeConstraintSetDecoder
        )
        




getSizeConstraintSetResponseToString : GetSizeConstraintSetResponse -> String -- List (String, String)
getSizeConstraintSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sizeConstraintSet" "" -- val.sizeConstraintSet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getSqlInjectionMatchSet
-}
type alias GetSqlInjectionMatchSetResponse =
    { sqlInjectionMatchSet : Maybe SqlInjectionMatchSet
    }



getSqlInjectionMatchSetResponseDecoder : JD.Decoder GetSqlInjectionMatchSetResponse
getSqlInjectionMatchSetResponseDecoder =
    JD.succeed GetSqlInjectionMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SqlInjectionMatchSet", "sqlInjectionMatchSet"]
            sqlInjectionMatchSetDecoder
        )
        




getSqlInjectionMatchSetResponseToString : GetSqlInjectionMatchSetResponse -> String -- List (String, String)
getSqlInjectionMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sqlInjectionMatchSet" "" -- val.sqlInjectionMatchSet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getWebACL
-}
type alias GetWebACLResponse =
    { webACL : Maybe WebACL
    }



getWebACLResponseDecoder : JD.Decoder GetWebACLResponse
getWebACLResponseDecoder =
    JD.succeed GetWebACLResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WebACL", "webACL"]
            webACLDecoder
        )
        




getWebACLResponseToString : GetWebACLResponse -> String -- List (String, String)
getWebACLResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "webACL" "" -- val.webACL
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getXssMatchSet
-}
type alias GetXssMatchSetResponse =
    { xssMatchSet : Maybe XssMatchSet
    }



getXssMatchSetResponseDecoder : JD.Decoder GetXssMatchSetResponse
getXssMatchSetResponseDecoder =
    JD.succeed GetXssMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["XssMatchSet", "xssMatchSet"]
            xssMatchSetDecoder
        )
        




getXssMatchSetResponseToString : GetXssMatchSetResponse -> String -- List (String, String)
getXssMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "xssMatchSet" "" -- val.xssMatchSet
        
    --     |> Dict.toList
    ""



{-| <p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPHeader</code> complex type that appears as <code>Headers</code> in the response syntax. <code>HTTPHeader</code> contains the names and values of all of the headers that appear in one of the web requests that were returned by <code>GetSampledRequests</code>. </p>
-}
type alias HTTPHeader =
    { name : Maybe String
    , value : Maybe String
    }



hTTPHeaderDecoder : JD.Decoder HTTPHeader
hTTPHeaderDecoder =
    JD.succeed HTTPHeader
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




hTTPHeaderToString : HTTPHeader -> String -- List (String, String)
hTTPHeaderToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| <p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPRequest</code> complex type that appears as <code>Request</code> in the response syntax. <code>HTTPRequest</code> contains information about one of the web requests that were returned by <code>GetSampledRequests</code>. </p>
-}
type alias HTTPRequest =
    { clientIP : Maybe String
    , country : Maybe String
    , uRI : Maybe String
    , method : Maybe String
    , hTTPVersion : Maybe String
    , headers : Maybe (List HTTPHeader)
    }



hTTPRequestDecoder : JD.Decoder HTTPRequest
hTTPRequestDecoder =
    JD.succeed HTTPRequest
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ClientIP", "clientIP"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Country", "country"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["URI", "uRI"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Method", "method"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HTTPVersion", "hTTPVersion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Headers", "headers"]
            (JD.list hTTPHeaderDecoder)
        )
        




hTTPRequestToString : HTTPRequest -> String -- List (String, String)
hTTPRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "clientIP" "" -- val.clientIP
        
    --     |> Dict.insert
    --         "country" "" -- val.country
        
    --     |> Dict.insert
    --         "uRI" "" -- val.uRI
        
    --     |> Dict.insert
    --         "method" "" -- val.method
        
    --     |> Dict.insert
    --         "hTTPVersion" "" -- val.hTTPVersion
        
    --     |> Dict.insert
    --         "headers" "" -- val.headers
        
    --     |> Dict.toList
    ""



{-| <p>Contains one or more IP addresses or blocks of IP addresses specified in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports IPv4 address ranges: /8 and any range between /16 through /32. AWS WAF supports IPv6 address ranges: /24, /32, /48, /56, /64, and /128.</p> <p>To specify an individual IP address, you specify the four-part IP address followed by a <code>/32</code>, for example, 192.0.2.0/31. To block a range of IP addresses, you can specify /8 or any range between /16 through /32 (for IPv4) or /24, /32, /48, /56, /64, or /128 (for IPv6). For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>. </p>
-}
type alias IPSet =
    { iPSetId : String
    , name : Maybe String
    , iPSetDescriptors : (List IPSetDescriptor)
    }



iPSetDecoder : JD.Decoder IPSet
iPSetDecoder =
    JD.succeed IPSet
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IPSetId", "iPSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IPSetDescriptors", "iPSetDescriptors"]
            (JD.list iPSetDescriptorDecoder)
        )
        




iPSetToString : IPSet -> String -- List (String, String)
iPSetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "iPSetId" "" -- val.iPSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "iPSetDescriptors" "" -- val.iPSetDescriptors
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR format) that web requests originate from.</p>
-}
type alias IPSetDescriptor =
    { type_ : IPSetDescriptorType
    , value : String
    }



iPSetDescriptorDecoder : JD.Decoder IPSetDescriptor
iPSetDescriptorDecoder =
    JD.succeed IPSetDescriptor
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Type", "type"]
            iPSetDescriptorTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Value", "value"]
            JD.string
        )
        




iPSetDescriptorToString : IPSetDescriptor -> String -- List (String, String)
iPSetDescriptorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `IPSetDescriptorType_IPV4`
* `IPSetDescriptorType_IPV6`

-}
type IPSetDescriptorType
    = IPSetDescriptorType_IPV4
    | IPSetDescriptorType_IPV6



iPSetDescriptorTypeDecoder : JD.Decoder IPSetDescriptorType
iPSetDescriptorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IPV4" ->
                        JD.succeed IPSetDescriptorType_IPV4

                    "IPV6" ->
                        JD.succeed IPSetDescriptorType_IPV6


                    _ ->
                        JD.fail "bad thing"
            )




iPSetDescriptorTypeToString : IPSetDescriptorType -> String
iPSetDescriptorTypeToString val =
    case val of
        IPSetDescriptorType_IPV4 ->
            "IPV4"

        IPSetDescriptorType_IPV6 ->
            "IPV6"




{-| <p>Contains the identifier and the name of the <code>IPSet</code>.</p>
-}
type alias IPSetSummary =
    { iPSetId : String
    , name : String
    }



iPSetSummaryDecoder : JD.Decoder IPSetSummary
iPSetSummaryDecoder =
    JD.succeed IPSetSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IPSetId", "iPSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        




iPSetSummaryToString : IPSetSummary -> String -- List (String, String)
iPSetSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "iPSetId" "" -- val.iPSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the type of update to perform to an <a>IPSet</a> with <a>UpdateIPSet</a>.</p>
-}
type alias IPSetUpdate =
    { action : ChangeAction
    , iPSetDescriptor : IPSetDescriptor
    }



iPSetUpdateDecoder : JD.Decoder IPSetUpdate
iPSetUpdateDecoder =
    JD.succeed IPSetUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IPSetDescriptor", "iPSetDescriptor"]
            iPSetDescriptorDecoder
        )
        




iPSetUpdateToString : IPSetUpdate -> String -- List (String, String)
iPSetUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "iPSetDescriptor" "" -- val.iPSetDescriptor
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listActivatedRulesInRuleGroup
-}
type alias ListActivatedRulesInRuleGroupResponse =
    { nextMarker : Maybe String
    , activatedRules : Maybe (List ActivatedRule)
    }



listActivatedRulesInRuleGroupResponseDecoder : JD.Decoder ListActivatedRulesInRuleGroupResponse
listActivatedRulesInRuleGroupResponseDecoder =
    JD.succeed ListActivatedRulesInRuleGroupResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActivatedRules", "activatedRules"]
            (JD.list activatedRuleDecoder)
        )
        




listActivatedRulesInRuleGroupResponseToString : ListActivatedRulesInRuleGroupResponse -> String -- List (String, String)
listActivatedRulesInRuleGroupResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "activatedRules" "" -- val.activatedRules
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listByteMatchSets
-}
type alias ListByteMatchSetsResponse =
    { nextMarker : Maybe String
    , byteMatchSets : Maybe (List ByteMatchSetSummary)
    }



listByteMatchSetsResponseDecoder : JD.Decoder ListByteMatchSetsResponse
listByteMatchSetsResponseDecoder =
    JD.succeed ListByteMatchSetsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ByteMatchSets", "byteMatchSets"]
            (JD.list byteMatchSetSummaryDecoder)
        )
        




listByteMatchSetsResponseToString : ListByteMatchSetsResponse -> String -- List (String, String)
listByteMatchSetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "byteMatchSets" "" -- val.byteMatchSets
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listGeoMatchSets
-}
type alias ListGeoMatchSetsResponse =
    { nextMarker : Maybe String
    , geoMatchSets : Maybe (List GeoMatchSetSummary)
    }



listGeoMatchSetsResponseDecoder : JD.Decoder ListGeoMatchSetsResponse
listGeoMatchSetsResponseDecoder =
    JD.succeed ListGeoMatchSetsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GeoMatchSets", "geoMatchSets"]
            (JD.list geoMatchSetSummaryDecoder)
        )
        




listGeoMatchSetsResponseToString : ListGeoMatchSetsResponse -> String -- List (String, String)
listGeoMatchSetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "geoMatchSets" "" -- val.geoMatchSets
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listIPSets
-}
type alias ListIPSetsResponse =
    { nextMarker : Maybe String
    , iPSets : Maybe (List IPSetSummary)
    }



listIPSetsResponseDecoder : JD.Decoder ListIPSetsResponse
listIPSetsResponseDecoder =
    JD.succeed ListIPSetsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IPSets", "iPSets"]
            (JD.list iPSetSummaryDecoder)
        )
        




listIPSetsResponseToString : ListIPSetsResponse -> String -- List (String, String)
listIPSetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "iPSets" "" -- val.iPSets
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listLoggingConfigurations
-}
type alias ListLoggingConfigurationsResponse =
    { loggingConfigurations : Maybe (List LoggingConfiguration)
    , nextMarker : Maybe String
    }



listLoggingConfigurationsResponseDecoder : JD.Decoder ListLoggingConfigurationsResponse
listLoggingConfigurationsResponseDecoder =
    JD.succeed ListLoggingConfigurationsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoggingConfigurations", "loggingConfigurations"]
            (JD.list loggingConfigurationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        




listLoggingConfigurationsResponseToString : ListLoggingConfigurationsResponse -> String -- List (String, String)
listLoggingConfigurationsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loggingConfigurations" "" -- val.loggingConfigurations
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listRateBasedRules
-}
type alias ListRateBasedRulesResponse =
    { nextMarker : Maybe String
    , rules : Maybe (List RuleSummary)
    }



listRateBasedRulesResponseDecoder : JD.Decoder ListRateBasedRulesResponse
listRateBasedRulesResponseDecoder =
    JD.succeed ListRateBasedRulesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Rules", "rules"]
            (JD.list ruleSummaryDecoder)
        )
        




listRateBasedRulesResponseToString : ListRateBasedRulesResponse -> String -- List (String, String)
listRateBasedRulesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "rules" "" -- val.rules
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listRegexMatchSets
-}
type alias ListRegexMatchSetsResponse =
    { nextMarker : Maybe String
    , regexMatchSets : Maybe (List RegexMatchSetSummary)
    }



listRegexMatchSetsResponseDecoder : JD.Decoder ListRegexMatchSetsResponse
listRegexMatchSetsResponseDecoder =
    JD.succeed ListRegexMatchSetsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegexMatchSets", "regexMatchSets"]
            (JD.list regexMatchSetSummaryDecoder)
        )
        




listRegexMatchSetsResponseToString : ListRegexMatchSetsResponse -> String -- List (String, String)
listRegexMatchSetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "regexMatchSets" "" -- val.regexMatchSets
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listRegexPatternSets
-}
type alias ListRegexPatternSetsResponse =
    { nextMarker : Maybe String
    , regexPatternSets : Maybe (List RegexPatternSetSummary)
    }



listRegexPatternSetsResponseDecoder : JD.Decoder ListRegexPatternSetsResponse
listRegexPatternSetsResponseDecoder =
    JD.succeed ListRegexPatternSetsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegexPatternSets", "regexPatternSets"]
            (JD.list regexPatternSetSummaryDecoder)
        )
        




listRegexPatternSetsResponseToString : ListRegexPatternSetsResponse -> String -- List (String, String)
listRegexPatternSetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "regexPatternSets" "" -- val.regexPatternSets
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listRuleGroups
-}
type alias ListRuleGroupsResponse =
    { nextMarker : Maybe String
    , ruleGroups : Maybe (List RuleGroupSummary)
    }



listRuleGroupsResponseDecoder : JD.Decoder ListRuleGroupsResponse
listRuleGroupsResponseDecoder =
    JD.succeed ListRuleGroupsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuleGroups", "ruleGroups"]
            (JD.list ruleGroupSummaryDecoder)
        )
        




listRuleGroupsResponseToString : ListRuleGroupsResponse -> String -- List (String, String)
listRuleGroupsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "ruleGroups" "" -- val.ruleGroups
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listRules
-}
type alias ListRulesResponse =
    { nextMarker : Maybe String
    , rules : Maybe (List RuleSummary)
    }



listRulesResponseDecoder : JD.Decoder ListRulesResponse
listRulesResponseDecoder =
    JD.succeed ListRulesResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Rules", "rules"]
            (JD.list ruleSummaryDecoder)
        )
        




listRulesResponseToString : ListRulesResponse -> String -- List (String, String)
listRulesResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "rules" "" -- val.rules
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listSizeConstraintSets
-}
type alias ListSizeConstraintSetsResponse =
    { nextMarker : Maybe String
    , sizeConstraintSets : Maybe (List SizeConstraintSetSummary)
    }



listSizeConstraintSetsResponseDecoder : JD.Decoder ListSizeConstraintSetsResponse
listSizeConstraintSetsResponseDecoder =
    JD.succeed ListSizeConstraintSetsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SizeConstraintSets", "sizeConstraintSets"]
            (JD.list sizeConstraintSetSummaryDecoder)
        )
        




listSizeConstraintSetsResponseToString : ListSizeConstraintSetsResponse -> String -- List (String, String)
listSizeConstraintSetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "sizeConstraintSets" "" -- val.sizeConstraintSets
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listSqlInjectionMatchSets
-}
type alias ListSqlInjectionMatchSetsResponse =
    { nextMarker : Maybe String
    , sqlInjectionMatchSets : Maybe (List SqlInjectionMatchSetSummary)
    }



listSqlInjectionMatchSetsResponseDecoder : JD.Decoder ListSqlInjectionMatchSetsResponse
listSqlInjectionMatchSetsResponseDecoder =
    JD.succeed ListSqlInjectionMatchSetsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SqlInjectionMatchSets", "sqlInjectionMatchSets"]
            (JD.list sqlInjectionMatchSetSummaryDecoder)
        )
        




listSqlInjectionMatchSetsResponseToString : ListSqlInjectionMatchSetsResponse -> String -- List (String, String)
listSqlInjectionMatchSetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "sqlInjectionMatchSets" "" -- val.sqlInjectionMatchSets
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listSubscribedRuleGroups
-}
type alias ListSubscribedRuleGroupsResponse =
    { nextMarker : Maybe String
    , ruleGroups : Maybe (List SubscribedRuleGroupSummary)
    }



listSubscribedRuleGroupsResponseDecoder : JD.Decoder ListSubscribedRuleGroupsResponse
listSubscribedRuleGroupsResponseDecoder =
    JD.succeed ListSubscribedRuleGroupsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuleGroups", "ruleGroups"]
            (JD.list subscribedRuleGroupSummaryDecoder)
        )
        




listSubscribedRuleGroupsResponseToString : ListSubscribedRuleGroupsResponse -> String -- List (String, String)
listSubscribedRuleGroupsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "ruleGroups" "" -- val.ruleGroups
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { nextMarker : Maybe String
    , tagInfoForResource : Maybe TagInfoForResource
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JD.succeed ListTagsForResourceResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagInfoForResource", "tagInfoForResource"]
            tagInfoForResourceDecoder
        )
        




listTagsForResourceResponseToString : ListTagsForResourceResponse -> String -- List (String, String)
listTagsForResourceResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "tagInfoForResource" "" -- val.tagInfoForResource
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listWebACLs
-}
type alias ListWebACLsResponse =
    { nextMarker : Maybe String
    , webACLs : Maybe (List WebACLSummary)
    }



listWebACLsResponseDecoder : JD.Decoder ListWebACLsResponse
listWebACLsResponseDecoder =
    JD.succeed ListWebACLsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WebACLs", "webACLs"]
            (JD.list webACLSummaryDecoder)
        )
        




listWebACLsResponseToString : ListWebACLsResponse -> String -- List (String, String)
listWebACLsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "webACLs" "" -- val.webACLs
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listXssMatchSets
-}
type alias ListXssMatchSetsResponse =
    { nextMarker : Maybe String
    , xssMatchSets : Maybe (List XssMatchSetSummary)
    }



listXssMatchSetsResponseDecoder : JD.Decoder ListXssMatchSetsResponse
listXssMatchSetsResponseDecoder =
    JD.succeed ListXssMatchSetsResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextMarker", "nextMarker"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["XssMatchSets", "xssMatchSets"]
            (JD.list xssMatchSetSummaryDecoder)
        )
        




listXssMatchSetsResponseToString : ListXssMatchSetsResponse -> String -- List (String, String)
listXssMatchSetsResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "nextMarker" "" -- val.nextMarker
        
    --     |> Dict.insert
    --         "xssMatchSets" "" -- val.xssMatchSets
        
    --     |> Dict.toList
    ""



{-| <p>The Amazon Kinesis Data Firehose, <code>RedactedFields</code> information, and the web ACL Amazon Resource Name (ARN).</p>
-}
type alias LoggingConfiguration =
    { resourceArn : String
    , logDestinationConfigs : (List String)
    , redactedFields : Maybe (List FieldToMatch)
    }



loggingConfigurationDecoder : JD.Decoder LoggingConfiguration
loggingConfigurationDecoder =
    JD.succeed LoggingConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ResourceArn", "resourceArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["LogDestinationConfigs", "logDestinationConfigs"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RedactedFields", "redactedFields"]
            (JD.list fieldToMatchDecoder)
        )
        




loggingConfigurationToString : LoggingConfiguration -> String -- List (String, String)
loggingConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceArn" "" -- val.resourceArn
        
    --     |> Dict.insert
    --         "logDestinationConfigs" "" -- val.logDestinationConfigs
        
    --     |> Dict.insert
    --         "redactedFields" "" -- val.redactedFields
        
    --     |> Dict.toList
    ""



{-| One of

* `MatchFieldType_URI`
* `MatchFieldType_QUERY_STRING`
* `MatchFieldType_HEADER`
* `MatchFieldType_METHOD`
* `MatchFieldType_BODY`
* `MatchFieldType_SINGLE_QUERY_ARG`
* `MatchFieldType_ALL_QUERY_ARGS`

-}
type MatchFieldType
    = MatchFieldType_URI
    | MatchFieldType_QUERY_STRING
    | MatchFieldType_HEADER
    | MatchFieldType_METHOD
    | MatchFieldType_BODY
    | MatchFieldType_SINGLE_QUERY_ARG
    | MatchFieldType_ALL_QUERY_ARGS



matchFieldTypeDecoder : JD.Decoder MatchFieldType
matchFieldTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "URI" ->
                        JD.succeed MatchFieldType_URI

                    "QUERY_STRING" ->
                        JD.succeed MatchFieldType_QUERY_STRING

                    "HEADER" ->
                        JD.succeed MatchFieldType_HEADER

                    "METHOD" ->
                        JD.succeed MatchFieldType_METHOD

                    "BODY" ->
                        JD.succeed MatchFieldType_BODY

                    "SINGLE_QUERY_ARG" ->
                        JD.succeed MatchFieldType_SINGLE_QUERY_ARG

                    "ALL_QUERY_ARGS" ->
                        JD.succeed MatchFieldType_ALL_QUERY_ARGS


                    _ ->
                        JD.fail "bad thing"
            )




matchFieldTypeToString : MatchFieldType -> String
matchFieldTypeToString val =
    case val of
        MatchFieldType_URI ->
            "URI"

        MatchFieldType_QUERY_STRING ->
            "QUERY_STRING"

        MatchFieldType_HEADER ->
            "HEADER"

        MatchFieldType_METHOD ->
            "METHOD"

        MatchFieldType_BODY ->
            "BODY"

        MatchFieldType_SINGLE_QUERY_ARG ->
            "SINGLE_QUERY_ARG"

        MatchFieldType_ALL_QUERY_ARGS ->
            "ALL_QUERY_ARGS"




{-| One of

* `PositionalConstraint_EXACTLY`
* `PositionalConstraint_STARTS_WITH`
* `PositionalConstraint_ENDS_WITH`
* `PositionalConstraint_CONTAINS`
* `PositionalConstraint_CONTAINS_WORD`

-}
type PositionalConstraint
    = PositionalConstraint_EXACTLY
    | PositionalConstraint_STARTS_WITH
    | PositionalConstraint_ENDS_WITH
    | PositionalConstraint_CONTAINS
    | PositionalConstraint_CONTAINS_WORD



positionalConstraintDecoder : JD.Decoder PositionalConstraint
positionalConstraintDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EXACTLY" ->
                        JD.succeed PositionalConstraint_EXACTLY

                    "STARTS_WITH" ->
                        JD.succeed PositionalConstraint_STARTS_WITH

                    "ENDS_WITH" ->
                        JD.succeed PositionalConstraint_ENDS_WITH

                    "CONTAINS" ->
                        JD.succeed PositionalConstraint_CONTAINS

                    "CONTAINS_WORD" ->
                        JD.succeed PositionalConstraint_CONTAINS_WORD


                    _ ->
                        JD.fail "bad thing"
            )




positionalConstraintToString : PositionalConstraint -> String
positionalConstraintToString val =
    case val of
        PositionalConstraint_EXACTLY ->
            "EXACTLY"

        PositionalConstraint_STARTS_WITH ->
            "STARTS_WITH"

        PositionalConstraint_ENDS_WITH ->
            "ENDS_WITH"

        PositionalConstraint_CONTAINS ->
            "CONTAINS"

        PositionalConstraint_CONTAINS_WORD ->
            "CONTAINS_WORD"




{-| <p>Specifies the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, <a>RegexMatchSet</a>, <a>GeoMatchSet</a>, and <a>SizeConstraintSet</a> objects that you want to add to a <code>Rule</code> and, for each object, indicates whether you want to negate the settings, for example, requests that do NOT originate from the IP address 192.0.2.44. </p>
-}
type alias Predicate =
    { negated : Bool
    , type_ : PredicateType
    , dataId : String
    }



predicateDecoder : JD.Decoder Predicate
predicateDecoder =
    JD.succeed Predicate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Negated", "negated"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Type", "type"]
            predicateTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DataId", "dataId"]
            JD.string
        )
        




predicateToString : Predicate -> String -- List (String, String)
predicateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "negated" "" -- val.negated
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "dataId" "" -- val.dataId
        
    --     |> Dict.toList
    ""



{-| One of

* `PredicateType_IPMatch`
* `PredicateType_ByteMatch`
* `PredicateType_SqlInjectionMatch`
* `PredicateType_GeoMatch`
* `PredicateType_SizeConstraint`
* `PredicateType_XssMatch`
* `PredicateType_RegexMatch`

-}
type PredicateType
    = PredicateType_IPMatch
    | PredicateType_ByteMatch
    | PredicateType_SqlInjectionMatch
    | PredicateType_GeoMatch
    | PredicateType_SizeConstraint
    | PredicateType_XssMatch
    | PredicateType_RegexMatch



predicateTypeDecoder : JD.Decoder PredicateType
predicateTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IPMatch" ->
                        JD.succeed PredicateType_IPMatch

                    "ByteMatch" ->
                        JD.succeed PredicateType_ByteMatch

                    "SqlInjectionMatch" ->
                        JD.succeed PredicateType_SqlInjectionMatch

                    "GeoMatch" ->
                        JD.succeed PredicateType_GeoMatch

                    "SizeConstraint" ->
                        JD.succeed PredicateType_SizeConstraint

                    "XssMatch" ->
                        JD.succeed PredicateType_XssMatch

                    "RegexMatch" ->
                        JD.succeed PredicateType_RegexMatch


                    _ ->
                        JD.fail "bad thing"
            )




predicateTypeToString : PredicateType -> String
predicateTypeToString val =
    case val of
        PredicateType_IPMatch ->
            "IPMatch"

        PredicateType_ByteMatch ->
            "ByteMatch"

        PredicateType_SqlInjectionMatch ->
            "SqlInjectionMatch"

        PredicateType_GeoMatch ->
            "GeoMatch"

        PredicateType_SizeConstraint ->
            "SizeConstraint"

        PredicateType_XssMatch ->
            "XssMatch"

        PredicateType_RegexMatch ->
            "RegexMatch"




{-| Type of HTTP response from putLoggingConfiguration
-}
type alias PutLoggingConfigurationResponse =
    { loggingConfiguration : Maybe LoggingConfiguration
    }



putLoggingConfigurationResponseDecoder : JD.Decoder PutLoggingConfigurationResponse
putLoggingConfigurationResponseDecoder =
    JD.succeed PutLoggingConfigurationResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LoggingConfiguration", "loggingConfiguration"]
            loggingConfigurationDecoder
        )
        




putLoggingConfigurationResponseToString : PutLoggingConfigurationResponse -> String -- List (String, String)
putLoggingConfigurationResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "loggingConfiguration" "" -- val.loggingConfiguration
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putPermissionPolicy
-}
type alias PutPermissionPolicyResponse =
    { 
    }



putPermissionPolicyResponseDecoder : JD.Decoder PutPermissionPolicyResponse
putPermissionPolicyResponseDecoder =
    JD.succeed PutPermissionPolicyResponse
        




putPermissionPolicyResponseToString : PutPermissionPolicyResponse -> String -- List (String, String)
putPermissionPolicyResponseToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>A <code>RateBasedRule</code> is identical to a regular <a>Rule</a>, with one addition: a <code>RateBasedRule</code> counts the number of requests that arrive from a specified IP address every five minutes. For example, based on recent requests that you've seen from an attacker, you might create a <code>RateBasedRule</code> that includes the following conditions: </p> <ul> <li> <p>The requests come from 192.0.2.44.</p> </li> <li> <p>They contain the value <code>BadBot</code> in the <code>User-Agent</code> header.</p> </li> </ul> <p>In the rule, you also define the rate limit as 15,000.</p> <p>Requests that meet both of these conditions and exceed 15,000 requests every five minutes trigger the rule's action (block or count), which is defined in the web ACL.</p>
-}
type alias RateBasedRule =
    { ruleId : String
    , name : Maybe String
    , metricName : Maybe String
    , matchPredicates : (List Predicate)
    , rateKey : RateKey
    , rateLimit : Int
    }



rateBasedRuleDecoder : JD.Decoder RateBasedRule
rateBasedRuleDecoder =
    JD.succeed RateBasedRule
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RuleId", "ruleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MetricName", "metricName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["MatchPredicates", "matchPredicates"]
            (JD.list predicateDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RateKey", "rateKey"]
            rateKeyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RateLimit", "rateLimit"]
            JD.int
        )
        




rateBasedRuleToString : RateBasedRule -> String -- List (String, String)
rateBasedRuleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleId" "" -- val.ruleId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "metricName" "" -- val.metricName
        
    --     |> Dict.insert
    --         "matchPredicates" "" -- val.matchPredicates
        
    --     |> Dict.insert
    --         "rateKey" "" -- val.rateKey
        
    --     |> Dict.insert
    --         "rateLimit" "" -- val.rateLimit
        
    --     |> Dict.toList
    ""



{-| One of

* `RateKey_IP`

-}
type RateKey
    = RateKey_IP



rateKeyDecoder : JD.Decoder RateKey
rateKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IP" ->
                        JD.succeed RateKey_IP


                    _ ->
                        JD.fail "bad thing"
            )




rateKeyToString : RateKey -> String
rateKeyToString val =
    case val of
        RateKey_IP ->
            "IP"




{-| <p>In a <a>GetRegexMatchSet</a> request, <code>RegexMatchSet</code> is a complex type that contains the <code>RegexMatchSetId</code> and <code>Name</code> of a <code>RegexMatchSet</code>, and the values that you specified when you updated the <code>RegexMatchSet</code>.</p> <p> The values are contained in a <code>RegexMatchTuple</code> object, which specify the parts of web requests that you want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>RegexMatchSet</code> contains more than one <code>RegexMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code> to be considered a match.</p>
-}
type alias RegexMatchSet =
    { regexMatchSetId : Maybe String
    , name : Maybe String
    , regexMatchTuples : Maybe (List RegexMatchTuple)
    }



regexMatchSetDecoder : JD.Decoder RegexMatchSet
regexMatchSetDecoder =
    JD.succeed RegexMatchSet
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegexMatchSetId", "regexMatchSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegexMatchTuples", "regexMatchTuples"]
            (JD.list regexMatchTupleDecoder)
        )
        




regexMatchSetToString : RegexMatchSet -> String -- List (String, String)
regexMatchSetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "regexMatchSetId" "" -- val.regexMatchSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "regexMatchTuples" "" -- val.regexMatchTuples
        
    --     |> Dict.toList
    ""



{-| <p>Returned by <a>ListRegexMatchSets</a>. Each <code>RegexMatchSetSummary</code> object includes the <code>Name</code> and <code>RegexMatchSetId</code> for one <a>RegexMatchSet</a>.</p>
-}
type alias RegexMatchSetSummary =
    { regexMatchSetId : String
    , name : String
    }



regexMatchSetSummaryDecoder : JD.Decoder RegexMatchSetSummary
regexMatchSetSummaryDecoder =
    JD.succeed RegexMatchSetSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RegexMatchSetId", "regexMatchSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        




regexMatchSetSummaryToString : RegexMatchSetSummary -> String -- List (String, String)
regexMatchSetSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "regexMatchSetId" "" -- val.regexMatchSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>In an <a>UpdateRegexMatchSet</a> request, <code>RegexMatchSetUpdate</code> specifies whether to insert or delete a <a>RegexMatchTuple</a> and includes the settings for the <code>RegexMatchTuple</code>.</p>
-}
type alias RegexMatchSetUpdate =
    { action : ChangeAction
    , regexMatchTuple : RegexMatchTuple
    }



regexMatchSetUpdateDecoder : JD.Decoder RegexMatchSetUpdate
regexMatchSetUpdateDecoder =
    JD.succeed RegexMatchSetUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RegexMatchTuple", "regexMatchTuple"]
            regexMatchTupleDecoder
        )
        




regexMatchSetUpdateToString : RegexMatchSetUpdate -> String -- List (String, String)
regexMatchSetUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "regexMatchTuple" "" -- val.regexMatchTuple
        
    --     |> Dict.toList
    ""



{-| <p>The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. Each <code>RegexMatchTuple</code> object contains: </p> <ul> <li> <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p> </li> <li> <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>. </p> </li> <li> <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p> </li> </ul>
-}
type alias RegexMatchTuple =
    { fieldToMatch : FieldToMatch
    , textTransformation : TextTransformation
    , regexPatternSetId : String
    }



regexMatchTupleDecoder : JD.Decoder RegexMatchTuple
regexMatchTupleDecoder =
    JD.succeed RegexMatchTuple
        
        |> JDP.custom (AWS.Core.Decode.required
            ["FieldToMatch", "fieldToMatch"]
            fieldToMatchDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TextTransformation", "textTransformation"]
            textTransformationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RegexPatternSetId", "regexPatternSetId"]
            JD.string
        )
        




regexMatchTupleToString : RegexMatchTuple -> String -- List (String, String)
regexMatchTupleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fieldToMatch" "" -- val.fieldToMatch
        
    --     |> Dict.insert
    --         "textTransformation" "" -- val.textTransformation
        
    --     |> Dict.insert
    --         "regexPatternSetId" "" -- val.regexPatternSetId
        
    --     |> Dict.toList
    ""



{-| <p>The <code>RegexPatternSet</code> specifies the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p>
-}
type alias RegexPatternSet =
    { regexPatternSetId : String
    , name : Maybe String
    , regexPatternStrings : (List String)
    }



regexPatternSetDecoder : JD.Decoder RegexPatternSet
regexPatternSetDecoder =
    JD.succeed RegexPatternSet
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RegexPatternSetId", "regexPatternSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RegexPatternStrings", "regexPatternStrings"]
            (JD.list JD.string)
        )
        




regexPatternSetToString : RegexPatternSet -> String -- List (String, String)
regexPatternSetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "regexPatternSetId" "" -- val.regexPatternSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "regexPatternStrings" "" -- val.regexPatternStrings
        
    --     |> Dict.toList
    ""



{-| <p>Returned by <a>ListRegexPatternSets</a>. Each <code>RegexPatternSetSummary</code> object includes the <code>Name</code> and <code>RegexPatternSetId</code> for one <a>RegexPatternSet</a>.</p>
-}
type alias RegexPatternSetSummary =
    { regexPatternSetId : String
    , name : String
    }



regexPatternSetSummaryDecoder : JD.Decoder RegexPatternSetSummary
regexPatternSetSummaryDecoder =
    JD.succeed RegexPatternSetSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RegexPatternSetId", "regexPatternSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        




regexPatternSetSummaryToString : RegexPatternSetSummary -> String -- List (String, String)
regexPatternSetSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "regexPatternSetId" "" -- val.regexPatternSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>In an <a>UpdateRegexPatternSet</a> request, <code>RegexPatternSetUpdate</code> specifies whether to insert or delete a <code>RegexPatternString</code> and includes the settings for the <code>RegexPatternString</code>.</p>
-}
type alias RegexPatternSetUpdate =
    { action : ChangeAction
    , regexPatternString : String
    }



regexPatternSetUpdateDecoder : JD.Decoder RegexPatternSetUpdate
regexPatternSetUpdateDecoder =
    JD.succeed RegexPatternSetUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RegexPatternString", "regexPatternString"]
            JD.string
        )
        




regexPatternSetUpdateToString : RegexPatternSetUpdate -> String -- List (String, String)
regexPatternSetUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "regexPatternString" "" -- val.regexPatternString
        
    --     |> Dict.toList
    ""



{-| <p>A combination of <a>ByteMatchSet</a>, <a>IPSet</a>, and/or <a>SqlInjectionMatchSet</a> objects that identify the web requests that you want to allow, block, or count. For example, you might create a <code>Rule</code> that includes the following predicates:</p> <ul> <li> <p>An <code>IPSet</code> that causes AWS WAF to search for web requests that originate from the IP address <code>192.0.2.44</code> </p> </li> <li> <p>A <code>ByteMatchSet</code> that causes AWS WAF to search for web requests for which the value of the <code>User-Agent</code> header is <code>BadBot</code>.</p> </li> </ul> <p>To match the settings in this <code>Rule</code>, a request must originate from <code>192.0.2.44</code> AND include a <code>User-Agent</code> header for which the value is <code>BadBot</code>.</p>
-}
type alias Rule =
    { ruleId : String
    , name : Maybe String
    , metricName : Maybe String
    , predicates : (List Predicate)
    }



ruleDecoder : JD.Decoder Rule
ruleDecoder =
    JD.succeed Rule
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RuleId", "ruleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MetricName", "metricName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Predicates", "predicates"]
            (JD.list predicateDecoder)
        )
        




ruleToString : Rule -> String -- List (String, String)
ruleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleId" "" -- val.ruleId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "metricName" "" -- val.metricName
        
    --     |> Dict.insert
    --         "predicates" "" -- val.predicates
        
    --     |> Dict.toList
    ""



{-| <p>A collection of predefined rules that you can add to a web ACL.</p> <p>Rule groups are subject to the following limits:</p> <ul> <li> <p>Three rule groups per account. You can request an increase to this limit by contacting customer support.</p> </li> <li> <p>One rule group per web ACL.</p> </li> <li> <p>Ten rules per rule group.</p> </li> </ul>
-}
type alias RuleGroup =
    { ruleGroupId : String
    , name : Maybe String
    , metricName : Maybe String
    }



ruleGroupDecoder : JD.Decoder RuleGroup
ruleGroupDecoder =
    JD.succeed RuleGroup
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RuleGroupId", "ruleGroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MetricName", "metricName"]
            JD.string
        )
        




ruleGroupToString : RuleGroup -> String -- List (String, String)
ruleGroupToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleGroupId" "" -- val.ruleGroupId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "metricName" "" -- val.metricName
        
    --     |> Dict.toList
    ""



{-| <p>Contains the identifier and the friendly name or description of the <code>RuleGroup</code>.</p>
-}
type alias RuleGroupSummary =
    { ruleGroupId : String
    , name : String
    }



ruleGroupSummaryDecoder : JD.Decoder RuleGroupSummary
ruleGroupSummaryDecoder =
    JD.succeed RuleGroupSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RuleGroupId", "ruleGroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        




ruleGroupSummaryToString : RuleGroupSummary -> String -- List (String, String)
ruleGroupSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleGroupId" "" -- val.ruleGroupId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Specifies an <code>ActivatedRule</code> and indicates whether you want to add it to a <code>RuleGroup</code> or delete it from a <code>RuleGroup</code>.</p>
-}
type alias RuleGroupUpdate =
    { action : ChangeAction
    , activatedRule : ActivatedRule
    }



ruleGroupUpdateDecoder : JD.Decoder RuleGroupUpdate
ruleGroupUpdateDecoder =
    JD.succeed RuleGroupUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ActivatedRule", "activatedRule"]
            activatedRuleDecoder
        )
        




ruleGroupUpdateToString : RuleGroupUpdate -> String -- List (String, String)
ruleGroupUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "activatedRule" "" -- val.activatedRule
        
    --     |> Dict.toList
    ""



{-| <p>Contains the identifier and the friendly name or description of the <code>Rule</code>.</p>
-}
type alias RuleSummary =
    { ruleId : String
    , name : String
    }



ruleSummaryDecoder : JD.Decoder RuleSummary
ruleSummaryDecoder =
    JD.succeed RuleSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RuleId", "ruleId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        




ruleSummaryToString : RuleSummary -> String -- List (String, String)
ruleSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleId" "" -- val.ruleId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Specifies a <code>Predicate</code> (such as an <code>IPSet</code>) and indicates whether you want to add it to a <code>Rule</code> or delete it from a <code>Rule</code>.</p>
-}
type alias RuleUpdate =
    { action : ChangeAction
    , predicate : Predicate
    }



ruleUpdateDecoder : JD.Decoder RuleUpdate
ruleUpdateDecoder =
    JD.succeed RuleUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Predicate", "predicate"]
            predicateDecoder
        )
        




ruleUpdateToString : RuleUpdate -> String -- List (String, String)
ruleUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "predicate" "" -- val.predicate
        
    --     |> Dict.toList
    ""



{-| <p>The response from a <a>GetSampledRequests</a> request includes a <code>SampledHTTPRequests</code> complex type that appears as <code>SampledRequests</code> in the response syntax. <code>SampledHTTPRequests</code> contains one <code>SampledHTTPRequest</code> object for each web request that is returned by <code>GetSampledRequests</code>.</p>
-}
type alias SampledHTTPRequest =
    { request : HTTPRequest
    , weight : Int
    , timestamp : Maybe Posix
    , action : Maybe String
    , ruleWithinRuleGroup : Maybe String
    }



sampledHTTPRequestDecoder : JD.Decoder SampledHTTPRequest
sampledHTTPRequestDecoder =
    JD.succeed SampledHTTPRequest
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Request", "request"]
            hTTPRequestDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Weight", "weight"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Timestamp", "timestamp"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Action", "action"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuleWithinRuleGroup", "ruleWithinRuleGroup"]
            JD.string
        )
        




sampledHTTPRequestToString : SampledHTTPRequest -> String -- List (String, String)
sampledHTTPRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "request" "" -- val.request
        
    --     |> Dict.insert
    --         "weight" "" -- val.weight
        
    --     |> Dict.insert
    --         "timestamp" "" -- val.timestamp
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "ruleWithinRuleGroup" "" -- val.ruleWithinRuleGroup
        
    --     |> Dict.toList
    ""



{-| <p>Specifies a constraint on the size of a part of the web request. AWS WAF uses the <code>Size</code>, <code>ComparisonOperator</code>, and <code>FieldToMatch</code> to build an expression in the form of "<code>Size</code> <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>". If that expression is true, the <code>SizeConstraint</code> is considered to match.</p>
-}
type alias SizeConstraint =
    { fieldToMatch : FieldToMatch
    , textTransformation : TextTransformation
    , comparisonOperator : ComparisonOperator
    , size : Int
    }



sizeConstraintDecoder : JD.Decoder SizeConstraint
sizeConstraintDecoder =
    JD.succeed SizeConstraint
        
        |> JDP.custom (AWS.Core.Decode.required
            ["FieldToMatch", "fieldToMatch"]
            fieldToMatchDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TextTransformation", "textTransformation"]
            textTransformationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ComparisonOperator", "comparisonOperator"]
            comparisonOperatorDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Size", "size"]
            JD.int
        )
        




sizeConstraintToString : SizeConstraint -> String -- List (String, String)
sizeConstraintToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fieldToMatch" "" -- val.fieldToMatch
        
    --     |> Dict.insert
    --         "textTransformation" "" -- val.textTransformation
        
    --     |> Dict.insert
    --         "comparisonOperator" "" -- val.comparisonOperator
        
    --     |> Dict.insert
    --         "size" "" -- val.size
        
    --     |> Dict.toList
    ""



{-| <p>A complex type that contains <code>SizeConstraint</code> objects, which specify the parts of web requests that you want AWS WAF to inspect the size of. If a <code>SizeConstraintSet</code> contains more than one <code>SizeConstraint</code> object, a request only needs to match one constraint to be considered a match.</p>
-}
type alias SizeConstraintSet =
    { sizeConstraintSetId : String
    , name : Maybe String
    , sizeConstraints : (List SizeConstraint)
    }



sizeConstraintSetDecoder : JD.Decoder SizeConstraintSet
sizeConstraintSetDecoder =
    JD.succeed SizeConstraintSet
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SizeConstraintSetId", "sizeConstraintSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SizeConstraints", "sizeConstraints"]
            (JD.list sizeConstraintDecoder)
        )
        




sizeConstraintSetToString : SizeConstraintSet -> String -- List (String, String)
sizeConstraintSetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sizeConstraintSetId" "" -- val.sizeConstraintSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "sizeConstraints" "" -- val.sizeConstraints
        
    --     |> Dict.toList
    ""



{-| <p>The <code>Id</code> and <code>Name</code> of a <code>SizeConstraintSet</code>.</p>
-}
type alias SizeConstraintSetSummary =
    { sizeConstraintSetId : String
    , name : String
    }



sizeConstraintSetSummaryDecoder : JD.Decoder SizeConstraintSetSummary
sizeConstraintSetSummaryDecoder =
    JD.succeed SizeConstraintSetSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SizeConstraintSetId", "sizeConstraintSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        




sizeConstraintSetSummaryToString : SizeConstraintSetSummary -> String -- List (String, String)
sizeConstraintSetSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sizeConstraintSetId" "" -- val.sizeConstraintSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the part of a web request that you want to inspect the size of and indicates whether you want to add the specification to a <a>SizeConstraintSet</a> or delete it from a <code>SizeConstraintSet</code>.</p>
-}
type alias SizeConstraintSetUpdate =
    { action : ChangeAction
    , sizeConstraint : SizeConstraint
    }



sizeConstraintSetUpdateDecoder : JD.Decoder SizeConstraintSetUpdate
sizeConstraintSetUpdateDecoder =
    JD.succeed SizeConstraintSetUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SizeConstraint", "sizeConstraint"]
            sizeConstraintDecoder
        )
        




sizeConstraintSetUpdateToString : SizeConstraintSetUpdate -> String -- List (String, String)
sizeConstraintSetUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "sizeConstraint" "" -- val.sizeConstraint
        
    --     |> Dict.toList
    ""



{-| <p>A complex type that contains <code>SqlInjectionMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header. If a <code>SqlInjectionMatchSet</code> contains more than one <code>SqlInjectionMatchTuple</code> object, a request needs to include snippets of SQL code in only one of the specified parts of the request to be considered a match.</p>
-}
type alias SqlInjectionMatchSet =
    { sqlInjectionMatchSetId : String
    , name : Maybe String
    , sqlInjectionMatchTuples : (List SqlInjectionMatchTuple)
    }



sqlInjectionMatchSetDecoder : JD.Decoder SqlInjectionMatchSet
sqlInjectionMatchSetDecoder =
    JD.succeed SqlInjectionMatchSet
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SqlInjectionMatchSetId", "sqlInjectionMatchSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SqlInjectionMatchTuples", "sqlInjectionMatchTuples"]
            (JD.list sqlInjectionMatchTupleDecoder)
        )
        




sqlInjectionMatchSetToString : SqlInjectionMatchSet -> String -- List (String, String)
sqlInjectionMatchSetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sqlInjectionMatchSetId" "" -- val.sqlInjectionMatchSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "sqlInjectionMatchTuples" "" -- val.sqlInjectionMatchTuples
        
    --     |> Dict.toList
    ""



{-| <p>The <code>Id</code> and <code>Name</code> of a <code>SqlInjectionMatchSet</code>.</p>
-}
type alias SqlInjectionMatchSetSummary =
    { sqlInjectionMatchSetId : String
    , name : String
    }



sqlInjectionMatchSetSummaryDecoder : JD.Decoder SqlInjectionMatchSetSummary
sqlInjectionMatchSetSummaryDecoder =
    JD.succeed SqlInjectionMatchSetSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SqlInjectionMatchSetId", "sqlInjectionMatchSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        




sqlInjectionMatchSetSummaryToString : SqlInjectionMatchSetSummary -> String -- List (String, String)
sqlInjectionMatchSetSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sqlInjectionMatchSetId" "" -- val.sqlInjectionMatchSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the part of a web request that you want to inspect for snippets of malicious SQL code and indicates whether you want to add the specification to a <a>SqlInjectionMatchSet</a> or delete it from a <code>SqlInjectionMatchSet</code>.</p>
-}
type alias SqlInjectionMatchSetUpdate =
    { action : ChangeAction
    , sqlInjectionMatchTuple : SqlInjectionMatchTuple
    }



sqlInjectionMatchSetUpdateDecoder : JD.Decoder SqlInjectionMatchSetUpdate
sqlInjectionMatchSetUpdateDecoder =
    JD.succeed SqlInjectionMatchSetUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SqlInjectionMatchTuple", "sqlInjectionMatchTuple"]
            sqlInjectionMatchTupleDecoder
        )
        




sqlInjectionMatchSetUpdateToString : SqlInjectionMatchSetUpdate -> String -- List (String, String)
sqlInjectionMatchSetUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "sqlInjectionMatchTuple" "" -- val.sqlInjectionMatchTuple
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.</p>
-}
type alias SqlInjectionMatchTuple =
    { fieldToMatch : FieldToMatch
    , textTransformation : TextTransformation
    }



sqlInjectionMatchTupleDecoder : JD.Decoder SqlInjectionMatchTuple
sqlInjectionMatchTupleDecoder =
    JD.succeed SqlInjectionMatchTuple
        
        |> JDP.custom (AWS.Core.Decode.required
            ["FieldToMatch", "fieldToMatch"]
            fieldToMatchDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TextTransformation", "textTransformation"]
            textTransformationDecoder
        )
        




sqlInjectionMatchTupleToString : SqlInjectionMatchTuple -> String -- List (String, String)
sqlInjectionMatchTupleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fieldToMatch" "" -- val.fieldToMatch
        
    --     |> Dict.insert
    --         "textTransformation" "" -- val.textTransformation
        
    --     |> Dict.toList
    ""



{-| <p>A summary of the rule groups you are subscribed to.</p>
-}
type alias SubscribedRuleGroupSummary =
    { ruleGroupId : String
    , name : String
    , metricName : String
    }



subscribedRuleGroupSummaryDecoder : JD.Decoder SubscribedRuleGroupSummary
subscribedRuleGroupSummaryDecoder =
    JD.succeed SubscribedRuleGroupSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RuleGroupId", "ruleGroupId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["MetricName", "metricName"]
            JD.string
        )
        




subscribedRuleGroupSummaryToString : SubscribedRuleGroupSummary -> String -- List (String, String)
subscribedRuleGroupSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleGroupId" "" -- val.ruleGroupId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "metricName" "" -- val.metricName
        
    --     |> Dict.toList
    ""



{-| undefined
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
type alias TagInfoForResource =
    { resourceARN : Maybe String
    , tagList : Maybe (List Tag)
    }



tagInfoForResourceDecoder : JD.Decoder TagInfoForResource
tagInfoForResourceDecoder =
    JD.succeed TagInfoForResource
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceARN", "resourceARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagList", "tagList"]
            (JD.list tagDecoder)
        )
        




tagInfoForResourceToString : TagInfoForResource -> String -- List (String, String)
tagInfoForResourceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceARN" "" -- val.resourceARN
        
    --     |> Dict.insert
    --         "tagList" "" -- val.tagList
        
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



{-| One of

* `TextTransformation_NONE`
* `TextTransformation_COMPRESS_WHITE_SPACE`
* `TextTransformation_HTML_ENTITY_DECODE`
* `TextTransformation_LOWERCASE`
* `TextTransformation_CMD_LINE`
* `TextTransformation_URL_DECODE`

-}
type TextTransformation
    = TextTransformation_NONE
    | TextTransformation_COMPRESS_WHITE_SPACE
    | TextTransformation_HTML_ENTITY_DECODE
    | TextTransformation_LOWERCASE
    | TextTransformation_CMD_LINE
    | TextTransformation_URL_DECODE



textTransformationDecoder : JD.Decoder TextTransformation
textTransformationDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed TextTransformation_NONE

                    "COMPRESS_WHITE_SPACE" ->
                        JD.succeed TextTransformation_COMPRESS_WHITE_SPACE

                    "HTML_ENTITY_DECODE" ->
                        JD.succeed TextTransformation_HTML_ENTITY_DECODE

                    "LOWERCASE" ->
                        JD.succeed TextTransformation_LOWERCASE

                    "CMD_LINE" ->
                        JD.succeed TextTransformation_CMD_LINE

                    "URL_DECODE" ->
                        JD.succeed TextTransformation_URL_DECODE


                    _ ->
                        JD.fail "bad thing"
            )




textTransformationToString : TextTransformation -> String
textTransformationToString val =
    case val of
        TextTransformation_NONE ->
            "NONE"

        TextTransformation_COMPRESS_WHITE_SPACE ->
            "COMPRESS_WHITE_SPACE"

        TextTransformation_HTML_ENTITY_DECODE ->
            "HTML_ENTITY_DECODE"

        TextTransformation_LOWERCASE ->
            "LOWERCASE"

        TextTransformation_CMD_LINE ->
            "CMD_LINE"

        TextTransformation_URL_DECODE ->
            "URL_DECODE"




{-| <p>In a <a>GetSampledRequests</a> request, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range for which you want AWS WAF to return a sample of web requests.</p> <p>In a <a>GetSampledRequests</a> response, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range for which AWS WAF actually returned a sample of web requests. AWS WAF gets the specified number of requests from among the first 5,000 requests that your AWS resource receives during the specified time period. If your resource receives more than 5,000 requests during that period, AWS WAF stops sampling after the 5,000th request. In that case, <code>EndTime</code> is the time that AWS WAF received the 5,000th request. </p>
-}
type alias TimeWindow =
    { startTime : Posix
    , endTime : Posix
    }



timeWindowDecoder : JD.Decoder TimeWindow
timeWindowDecoder =
    JD.succeed TimeWindow
        
        |> JDP.custom (AWS.Core.Decode.required
            ["StartTime", "startTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["EndTime", "endTime"]
            JDX.datetime
        )
        




timeWindowToString : TimeWindow -> String -- List (String, String)
timeWindowToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "endTime" "" -- val.endTime
        
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



{-| Type of HTTP response from updateByteMatchSet
-}
type alias UpdateByteMatchSetResponse =
    { changeToken : Maybe String
    }



updateByteMatchSetResponseDecoder : JD.Decoder UpdateByteMatchSetResponse
updateByteMatchSetResponseDecoder =
    JD.succeed UpdateByteMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




updateByteMatchSetResponseToString : UpdateByteMatchSetResponse -> String -- List (String, String)
updateByteMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateGeoMatchSet
-}
type alias UpdateGeoMatchSetResponse =
    { changeToken : Maybe String
    }



updateGeoMatchSetResponseDecoder : JD.Decoder UpdateGeoMatchSetResponse
updateGeoMatchSetResponseDecoder =
    JD.succeed UpdateGeoMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




updateGeoMatchSetResponseToString : UpdateGeoMatchSetResponse -> String -- List (String, String)
updateGeoMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateIPSet
-}
type alias UpdateIPSetResponse =
    { changeToken : Maybe String
    }



updateIPSetResponseDecoder : JD.Decoder UpdateIPSetResponse
updateIPSetResponseDecoder =
    JD.succeed UpdateIPSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




updateIPSetResponseToString : UpdateIPSetResponse -> String -- List (String, String)
updateIPSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateRateBasedRule
-}
type alias UpdateRateBasedRuleResponse =
    { changeToken : Maybe String
    }



updateRateBasedRuleResponseDecoder : JD.Decoder UpdateRateBasedRuleResponse
updateRateBasedRuleResponseDecoder =
    JD.succeed UpdateRateBasedRuleResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




updateRateBasedRuleResponseToString : UpdateRateBasedRuleResponse -> String -- List (String, String)
updateRateBasedRuleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateRegexMatchSet
-}
type alias UpdateRegexMatchSetResponse =
    { changeToken : Maybe String
    }



updateRegexMatchSetResponseDecoder : JD.Decoder UpdateRegexMatchSetResponse
updateRegexMatchSetResponseDecoder =
    JD.succeed UpdateRegexMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




updateRegexMatchSetResponseToString : UpdateRegexMatchSetResponse -> String -- List (String, String)
updateRegexMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateRegexPatternSet
-}
type alias UpdateRegexPatternSetResponse =
    { changeToken : Maybe String
    }



updateRegexPatternSetResponseDecoder : JD.Decoder UpdateRegexPatternSetResponse
updateRegexPatternSetResponseDecoder =
    JD.succeed UpdateRegexPatternSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




updateRegexPatternSetResponseToString : UpdateRegexPatternSetResponse -> String -- List (String, String)
updateRegexPatternSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateRuleGroup
-}
type alias UpdateRuleGroupResponse =
    { changeToken : Maybe String
    }



updateRuleGroupResponseDecoder : JD.Decoder UpdateRuleGroupResponse
updateRuleGroupResponseDecoder =
    JD.succeed UpdateRuleGroupResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




updateRuleGroupResponseToString : UpdateRuleGroupResponse -> String -- List (String, String)
updateRuleGroupResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateRule
-}
type alias UpdateRuleResponse =
    { changeToken : Maybe String
    }



updateRuleResponseDecoder : JD.Decoder UpdateRuleResponse
updateRuleResponseDecoder =
    JD.succeed UpdateRuleResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




updateRuleResponseToString : UpdateRuleResponse -> String -- List (String, String)
updateRuleResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateSizeConstraintSet
-}
type alias UpdateSizeConstraintSetResponse =
    { changeToken : Maybe String
    }



updateSizeConstraintSetResponseDecoder : JD.Decoder UpdateSizeConstraintSetResponse
updateSizeConstraintSetResponseDecoder =
    JD.succeed UpdateSizeConstraintSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




updateSizeConstraintSetResponseToString : UpdateSizeConstraintSetResponse -> String -- List (String, String)
updateSizeConstraintSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateSqlInjectionMatchSet
-}
type alias UpdateSqlInjectionMatchSetResponse =
    { changeToken : Maybe String
    }



updateSqlInjectionMatchSetResponseDecoder : JD.Decoder UpdateSqlInjectionMatchSetResponse
updateSqlInjectionMatchSetResponseDecoder =
    JD.succeed UpdateSqlInjectionMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




updateSqlInjectionMatchSetResponseToString : UpdateSqlInjectionMatchSetResponse -> String -- List (String, String)
updateSqlInjectionMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateWebACL
-}
type alias UpdateWebACLResponse =
    { changeToken : Maybe String
    }



updateWebACLResponseDecoder : JD.Decoder UpdateWebACLResponse
updateWebACLResponseDecoder =
    JD.succeed UpdateWebACLResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




updateWebACLResponseToString : UpdateWebACLResponse -> String -- List (String, String)
updateWebACLResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateXssMatchSet
-}
type alias UpdateXssMatchSetResponse =
    { changeToken : Maybe String
    }



updateXssMatchSetResponseDecoder : JD.Decoder UpdateXssMatchSetResponse
updateXssMatchSetResponseDecoder =
    JD.succeed UpdateXssMatchSetResponse
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ChangeToken", "changeToken"]
            JD.string
        )
        




updateXssMatchSetResponseToString : UpdateXssMatchSetResponse -> String -- List (String, String)
updateXssMatchSetResponseToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "changeToken" "" -- val.changeToken
        
    --     |> Dict.toList
    ""



{-| <p>For the action that is associated with a rule in a <code>WebACL</code>, specifies the action that you want AWS WAF to perform when a web request matches all of the conditions in a rule. For the default action in a <code>WebACL</code>, specifies the action that you want AWS WAF to take when a web request doesn't match all of the conditions in any of the rules in a <code>WebACL</code>. </p>
-}
type alias WafAction =
    { type_ : WafActionType
    }



wafActionDecoder : JD.Decoder WafAction
wafActionDecoder =
    JD.succeed WafAction
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Type", "type"]
            wafActionTypeDecoder
        )
        




wafActionToString : WafAction -> String -- List (String, String)
wafActionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.toList
    ""



{-| One of

* `WafActionType_BLOCK`
* `WafActionType_ALLOW`
* `WafActionType_COUNT`

-}
type WafActionType
    = WafActionType_BLOCK
    | WafActionType_ALLOW
    | WafActionType_COUNT



wafActionTypeDecoder : JD.Decoder WafActionType
wafActionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BLOCK" ->
                        JD.succeed WafActionType_BLOCK

                    "ALLOW" ->
                        JD.succeed WafActionType_ALLOW

                    "COUNT" ->
                        JD.succeed WafActionType_COUNT


                    _ ->
                        JD.fail "bad thing"
            )




wafActionTypeToString : WafActionType -> String
wafActionTypeToString val =
    case val of
        WafActionType_BLOCK ->
            "BLOCK"

        WafActionType_ALLOW ->
            "ALLOW"

        WafActionType_COUNT ->
            "COUNT"




{-| <p>The action to take if any rule within the <code>RuleGroup</code> matches a request. </p>
-}
type alias WafOverrideAction =
    { type_ : WafOverrideActionType
    }



wafOverrideActionDecoder : JD.Decoder WafOverrideAction
wafOverrideActionDecoder =
    JD.succeed WafOverrideAction
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Type", "type"]
            wafOverrideActionTypeDecoder
        )
        




wafOverrideActionToString : WafOverrideAction -> String -- List (String, String)
wafOverrideActionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.toList
    ""



{-| One of

* `WafOverrideActionType_NONE`
* `WafOverrideActionType_COUNT`

-}
type WafOverrideActionType
    = WafOverrideActionType_NONE
    | WafOverrideActionType_COUNT



wafOverrideActionTypeDecoder : JD.Decoder WafOverrideActionType
wafOverrideActionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed WafOverrideActionType_NONE

                    "COUNT" ->
                        JD.succeed WafOverrideActionType_COUNT


                    _ ->
                        JD.fail "bad thing"
            )




wafOverrideActionTypeToString : WafOverrideActionType -> String
wafOverrideActionTypeToString val =
    case val of
        WafOverrideActionType_NONE ->
            "NONE"

        WafOverrideActionType_COUNT ->
            "COUNT"




{-| One of

* `WafRuleType_REGULAR`
* `WafRuleType_RATE_BASED`
* `WafRuleType_GROUP`

-}
type WafRuleType
    = WafRuleType_REGULAR
    | WafRuleType_RATE_BASED
    | WafRuleType_GROUP



wafRuleTypeDecoder : JD.Decoder WafRuleType
wafRuleTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "REGULAR" ->
                        JD.succeed WafRuleType_REGULAR

                    "RATE_BASED" ->
                        JD.succeed WafRuleType_RATE_BASED

                    "GROUP" ->
                        JD.succeed WafRuleType_GROUP


                    _ ->
                        JD.fail "bad thing"
            )




wafRuleTypeToString : WafRuleType -> String
wafRuleTypeToString val =
    case val of
        WafRuleType_REGULAR ->
            "REGULAR"

        WafRuleType_RATE_BASED ->
            "RATE_BASED"

        WafRuleType_GROUP ->
            "GROUP"




{-| <p>Contains the <code>Rules</code> that identify the requests that you want to allow, block, or count. In a <code>WebACL</code>, you also specify a default action (<code>ALLOW</code> or <code>BLOCK</code>), and the action for each <code>Rule</code> that you add to a <code>WebACL</code>, for example, block requests from specified IP addresses or block requests from specified referrers. You also associate the <code>WebACL</code> with a CloudFront distribution to identify the requests that you want AWS WAF to filter. If you add more than one <code>Rule</code> to a <code>WebACL</code>, a request needs to match only one of the specifications to be allowed, blocked, or counted. For more information, see <a>UpdateWebACL</a>.</p>
-}
type alias WebACL =
    { webACLId : String
    , name : Maybe String
    , metricName : Maybe String
    , defaultAction : WafAction
    , rules : (List ActivatedRule)
    , webACLArn : Maybe String
    }



webACLDecoder : JD.Decoder WebACL
webACLDecoder =
    JD.succeed WebACL
        
        |> JDP.custom (AWS.Core.Decode.required
            ["WebACLId", "webACLId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MetricName", "metricName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DefaultAction", "defaultAction"]
            wafActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Rules", "rules"]
            (JD.list activatedRuleDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["WebACLArn", "webACLArn"]
            JD.string
        )
        




webACLToString : WebACL -> String -- List (String, String)
webACLToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "webACLId" "" -- val.webACLId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "metricName" "" -- val.metricName
        
    --     |> Dict.insert
    --         "defaultAction" "" -- val.defaultAction
        
    --     |> Dict.insert
    --         "rules" "" -- val.rules
        
    --     |> Dict.insert
    --         "webACLArn" "" -- val.webACLArn
        
    --     |> Dict.toList
    ""



{-| <p>Contains the identifier and the name or description of the <a>WebACL</a>.</p>
-}
type alias WebACLSummary =
    { webACLId : String
    , name : String
    }



webACLSummaryDecoder : JD.Decoder WebACLSummary
webACLSummaryDecoder =
    JD.succeed WebACLSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["WebACLId", "webACLId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        




webACLSummaryToString : WebACLSummary -> String -- List (String, String)
webACLSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "webACLId" "" -- val.webACLId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Specifies whether to insert a <code>Rule</code> into or delete a <code>Rule</code> from a <code>WebACL</code>.</p>
-}
type alias WebACLUpdate =
    { action : ChangeAction
    , activatedRule : ActivatedRule
    }



webACLUpdateDecoder : JD.Decoder WebACLUpdate
webACLUpdateDecoder =
    JD.succeed WebACLUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ActivatedRule", "activatedRule"]
            activatedRuleDecoder
        )
        




webACLUpdateToString : WebACLUpdate -> String -- List (String, String)
webACLUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "activatedRule" "" -- val.activatedRule
        
    --     |> Dict.toList
    ""



{-| <p>A complex type that contains <code>XssMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header. If a <code>XssMatchSet</code> contains more than one <code>XssMatchTuple</code> object, a request needs to include cross-site scripting attacks in only one of the specified parts of the request to be considered a match.</p>
-}
type alias XssMatchSet =
    { xssMatchSetId : String
    , name : Maybe String
    , xssMatchTuples : (List XssMatchTuple)
    }



xssMatchSetDecoder : JD.Decoder XssMatchSet
xssMatchSetDecoder =
    JD.succeed XssMatchSet
        
        |> JDP.custom (AWS.Core.Decode.required
            ["XssMatchSetId", "xssMatchSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["XssMatchTuples", "xssMatchTuples"]
            (JD.list xssMatchTupleDecoder)
        )
        




xssMatchSetToString : XssMatchSet -> String -- List (String, String)
xssMatchSetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "xssMatchSetId" "" -- val.xssMatchSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "xssMatchTuples" "" -- val.xssMatchTuples
        
    --     |> Dict.toList
    ""



{-| <p>The <code>Id</code> and <code>Name</code> of an <code>XssMatchSet</code>.</p>
-}
type alias XssMatchSetSummary =
    { xssMatchSetId : String
    , name : String
    }



xssMatchSetSummaryDecoder : JD.Decoder XssMatchSetSummary
xssMatchSetSummaryDecoder =
    JD.succeed XssMatchSetSummary
        
        |> JDP.custom (AWS.Core.Decode.required
            ["XssMatchSetId", "xssMatchSetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Name", "name"]
            JD.string
        )
        




xssMatchSetSummaryToString : XssMatchSetSummary -> String -- List (String, String)
xssMatchSetSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "xssMatchSetId" "" -- val.xssMatchSetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the part of a web request that you want to inspect for cross-site scripting attacks and indicates whether you want to add the specification to an <a>XssMatchSet</a> or delete it from an <code>XssMatchSet</code>.</p>
-}
type alias XssMatchSetUpdate =
    { action : ChangeAction
    , xssMatchTuple : XssMatchTuple
    }



xssMatchSetUpdateDecoder : JD.Decoder XssMatchSetUpdate
xssMatchSetUpdateDecoder =
    JD.succeed XssMatchSetUpdate
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["XssMatchTuple", "xssMatchTuple"]
            xssMatchTupleDecoder
        )
        




xssMatchSetUpdateToString : XssMatchSetUpdate -> String -- List (String, String)
xssMatchSetUpdateToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "xssMatchTuple" "" -- val.xssMatchTuple
        
    --     |> Dict.toList
    ""



{-| <p>Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.</p>
-}
type alias XssMatchTuple =
    { fieldToMatch : FieldToMatch
    , textTransformation : TextTransformation
    }



xssMatchTupleDecoder : JD.Decoder XssMatchTuple
xssMatchTupleDecoder =
    JD.succeed XssMatchTuple
        
        |> JDP.custom (AWS.Core.Decode.required
            ["FieldToMatch", "fieldToMatch"]
            fieldToMatchDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TextTransformation", "textTransformation"]
            textTransformationDecoder
        )
        




xssMatchTupleToString : XssMatchTuple -> String -- List (String, String)
xssMatchTupleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fieldToMatch" "" -- val.fieldToMatch
        
    --     |> Dict.insert
    --         "textTransformation" "" -- val.textTransformation
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias CreateByteMatchSetRequest =
    { name : String
    , changeToken : String
    }


{-| undefined
-}
type alias CreateGeoMatchSetRequest =
    { name : String
    , changeToken : String
    }


{-| undefined
-}
type alias CreateIPSetRequest =
    { name : String
    , changeToken : String
    }


{-| undefined
-}
type alias CreateRateBasedRuleRequest =
    { name : String
    , metricName : String
    , rateKey : RateKey
    , rateLimit : Int
    , changeToken : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateRegexMatchSetRequest =
    { name : String
    , changeToken : String
    }


{-| undefined
-}
type alias CreateRegexPatternSetRequest =
    { name : String
    , changeToken : String
    }


{-| undefined
-}
type alias CreateRuleGroupRequest =
    { name : String
    , metricName : String
    , changeToken : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateRuleRequest =
    { name : String
    , metricName : String
    , changeToken : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateSizeConstraintSetRequest =
    { name : String
    , changeToken : String
    }


{-| <p>A request to create a <a>SqlInjectionMatchSet</a>.</p>
-}
type alias CreateSqlInjectionMatchSetRequest =
    { name : String
    , changeToken : String
    }


{-| undefined
-}
type alias CreateWebACLRequest =
    { name : String
    , metricName : String
    , defaultAction : WafAction
    , changeToken : String
    , tags : Maybe (List Tag)
    }


{-| <p>A request to create an <a>XssMatchSet</a>.</p>
-}
type alias CreateXssMatchSetRequest =
    { name : String
    , changeToken : String
    }


{-| undefined
-}
type alias DeleteByteMatchSetRequest =
    { byteMatchSetId : String
    , changeToken : String
    }


{-| undefined
-}
type alias DeleteGeoMatchSetRequest =
    { geoMatchSetId : String
    , changeToken : String
    }


{-| undefined
-}
type alias DeleteIPSetRequest =
    { iPSetId : String
    , changeToken : String
    }


{-| undefined
-}
type alias DeleteLoggingConfigurationRequest =
    { resourceArn : String
    }


{-| undefined
-}
type alias DeletePermissionPolicyRequest =
    { resourceArn : String
    }


{-| undefined
-}
type alias DeleteRateBasedRuleRequest =
    { ruleId : String
    , changeToken : String
    }


{-| undefined
-}
type alias DeleteRegexMatchSetRequest =
    { regexMatchSetId : String
    , changeToken : String
    }


{-| undefined
-}
type alias DeleteRegexPatternSetRequest =
    { regexPatternSetId : String
    , changeToken : String
    }


{-| undefined
-}
type alias DeleteRuleGroupRequest =
    { ruleGroupId : String
    , changeToken : String
    }


{-| undefined
-}
type alias DeleteRuleRequest =
    { ruleId : String
    , changeToken : String
    }


{-| undefined
-}
type alias DeleteSizeConstraintSetRequest =
    { sizeConstraintSetId : String
    , changeToken : String
    }


{-| <p>A request to delete a <a>SqlInjectionMatchSet</a> from AWS WAF.</p>
-}
type alias DeleteSqlInjectionMatchSetRequest =
    { sqlInjectionMatchSetId : String
    , changeToken : String
    }


{-| undefined
-}
type alias DeleteWebACLRequest =
    { webACLId : String
    , changeToken : String
    }


{-| <p>A request to delete an <a>XssMatchSet</a> from AWS WAF.</p>
-}
type alias DeleteXssMatchSetRequest =
    { xssMatchSetId : String
    , changeToken : String
    }


{-| undefined
-}
type alias GetByteMatchSetRequest =
    { byteMatchSetId : String
    }


{-| undefined
-}
type alias GetChangeTokenRequest =
    { 
    }


{-| undefined
-}
type alias GetChangeTokenStatusRequest =
    { changeToken : String
    }


{-| undefined
-}
type alias GetGeoMatchSetRequest =
    { geoMatchSetId : String
    }


{-| undefined
-}
type alias GetIPSetRequest =
    { iPSetId : String
    }


{-| undefined
-}
type alias GetLoggingConfigurationRequest =
    { resourceArn : String
    }


{-| undefined
-}
type alias GetPermissionPolicyRequest =
    { resourceArn : String
    }


{-| undefined
-}
type alias GetRateBasedRuleManagedKeysRequest =
    { ruleId : String
    , nextMarker : Maybe String
    }


{-| undefined
-}
type alias GetRateBasedRuleRequest =
    { ruleId : String
    }


{-| undefined
-}
type alias GetRegexMatchSetRequest =
    { regexMatchSetId : String
    }


{-| undefined
-}
type alias GetRegexPatternSetRequest =
    { regexPatternSetId : String
    }


{-| undefined
-}
type alias GetRuleGroupRequest =
    { ruleGroupId : String
    }


{-| undefined
-}
type alias GetRuleRequest =
    { ruleId : String
    }


{-| undefined
-}
type alias GetSampledRequestsRequest =
    { webAclId : String
    , ruleId : String
    , timeWindow : TimeWindow
    , maxItems : Int
    }


{-| undefined
-}
type alias GetSizeConstraintSetRequest =
    { sizeConstraintSetId : String
    }


{-| <p>A request to get a <a>SqlInjectionMatchSet</a>.</p>
-}
type alias GetSqlInjectionMatchSetRequest =
    { sqlInjectionMatchSetId : String
    }


{-| undefined
-}
type alias GetWebACLRequest =
    { webACLId : String
    }


{-| <p>A request to get an <a>XssMatchSet</a>.</p>
-}
type alias GetXssMatchSetRequest =
    { xssMatchSetId : String
    }


{-| undefined
-}
type alias ListActivatedRulesInRuleGroupRequest =
    { ruleGroupId : Maybe String
    , nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListByteMatchSetsRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListGeoMatchSetsRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListIPSetsRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListLoggingConfigurationsRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListRateBasedRulesRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListRegexMatchSetsRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListRegexPatternSetsRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListRuleGroupsRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListRulesRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListSizeConstraintSetsRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| <p>A request to list the <a>SqlInjectionMatchSet</a> objects created by the current AWS account.</p>
-}
type alias ListSqlInjectionMatchSetsRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListSubscribedRuleGroupsRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias ListTagsForResourceRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    , resourceARN : String
    }


{-| undefined
-}
type alias ListWebACLsRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| <p>A request to list the <a>XssMatchSet</a> objects created by the current AWS account.</p>
-}
type alias ListXssMatchSetsRequest =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }


{-| undefined
-}
type alias PutLoggingConfigurationRequest =
    { loggingConfiguration : LoggingConfiguration
    }


{-| undefined
-}
type alias PutPermissionPolicyRequest =
    { resourceArn : String
    , policy : String
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
type alias UpdateByteMatchSetRequest =
    { byteMatchSetId : String
    , changeToken : String
    , updates : (List ByteMatchSetUpdate)
    }


{-| undefined
-}
type alias UpdateGeoMatchSetRequest =
    { geoMatchSetId : String
    , changeToken : String
    , updates : (List GeoMatchSetUpdate)
    }


{-| undefined
-}
type alias UpdateIPSetRequest =
    { iPSetId : String
    , changeToken : String
    , updates : (List IPSetUpdate)
    }


{-| undefined
-}
type alias UpdateRateBasedRuleRequest =
    { ruleId : String
    , changeToken : String
    , updates : (List RuleUpdate)
    , rateLimit : Int
    }


{-| undefined
-}
type alias UpdateRegexMatchSetRequest =
    { regexMatchSetId : String
    , updates : (List RegexMatchSetUpdate)
    , changeToken : String
    }


{-| undefined
-}
type alias UpdateRegexPatternSetRequest =
    { regexPatternSetId : String
    , updates : (List RegexPatternSetUpdate)
    , changeToken : String
    }


{-| undefined
-}
type alias UpdateRuleGroupRequest =
    { ruleGroupId : String
    , updates : (List RuleGroupUpdate)
    , changeToken : String
    }


{-| undefined
-}
type alias UpdateRuleRequest =
    { ruleId : String
    , changeToken : String
    , updates : (List RuleUpdate)
    }


{-| undefined
-}
type alias UpdateSizeConstraintSetRequest =
    { sizeConstraintSetId : String
    , changeToken : String
    , updates : (List SizeConstraintSetUpdate)
    }


{-| <p>A request to update a <a>SqlInjectionMatchSet</a>.</p>
-}
type alias UpdateSqlInjectionMatchSetRequest =
    { sqlInjectionMatchSetId : String
    , changeToken : String
    , updates : (List SqlInjectionMatchSetUpdate)
    }


{-| undefined
-}
type alias UpdateWebACLRequest =
    { webACLId : String
    , changeToken : String
    , updates : Maybe (List WebACLUpdate)
    , defaultAction : Maybe WafAction
    }


{-| <p>A request to update an <a>XssMatchSet</a>.</p>
-}
type alias UpdateXssMatchSetRequest =
    { xssMatchSetId : String
    , changeToken : String
    , updates : (List XssMatchSetUpdate)
    }






activatedRuleEncoder : ActivatedRule -> JE.Value
activatedRuleEncoder data =
    []
        
        
        |> (::) ("Priority", data.priority |> (JE.int))
        
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (wafActionEncoder)
            ("Action", data.action)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (wafOverrideActionEncoder)
            ("OverrideAction", data.overrideAction)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (wafRuleTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (excludedRuleEncoder))
            ("ExcludedRules", data.excludedRules)
        
        
        |> JE.object






byteMatchSetEncoder : ByteMatchSet -> JE.Value
byteMatchSetEncoder data =
    []
        
        
        |> (::) ("ByteMatchSetId", data.byteMatchSetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> (::) ("ByteMatchTuples", data.byteMatchTuples |> (JE.list (byteMatchTupleEncoder)))
        
        
        |> JE.object






byteMatchSetSummaryEncoder : ByteMatchSetSummary -> JE.Value
byteMatchSetSummaryEncoder data =
    []
        
        
        |> (::) ("ByteMatchSetId", data.byteMatchSetId |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






byteMatchSetUpdateEncoder : ByteMatchSetUpdate -> JE.Value
byteMatchSetUpdateEncoder data =
    []
        
        
        |> (::) ("Action", data.action |> (changeActionToString >> JE.string))
        
        
        
        |> (::) ("ByteMatchTuple", data.byteMatchTuple |> (byteMatchTupleEncoder))
        
        
        |> JE.object






byteMatchTupleEncoder : ByteMatchTuple -> JE.Value
byteMatchTupleEncoder data =
    []
        
        
        |> (::) ("FieldToMatch", data.fieldToMatch |> (fieldToMatchEncoder))
        
        
        
        |> (::) ("TargetString", data.targetString |> (JE.string))
        
        
        
        |> (::) ("TextTransformation", data.textTransformation |> (textTransformationToString >> JE.string))
        
        
        
        |> (::) ("PositionalConstraint", data.positionalConstraint |> (positionalConstraintToString >> JE.string))
        
        
        |> JE.object


















createByteMatchSetRequestEncoder : CreateByteMatchSetRequest -> JE.Value
createByteMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






createByteMatchSetResponseEncoder : CreateByteMatchSetResponse -> JE.Value
createByteMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (byteMatchSetEncoder)
            ("ByteMatchSet", data.byteMatchSet)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






createGeoMatchSetRequestEncoder : CreateGeoMatchSetRequest -> JE.Value
createGeoMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






createGeoMatchSetResponseEncoder : CreateGeoMatchSetResponse -> JE.Value
createGeoMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (geoMatchSetEncoder)
            ("GeoMatchSet", data.geoMatchSet)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






createIPSetRequestEncoder : CreateIPSetRequest -> JE.Value
createIPSetRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






createIPSetResponseEncoder : CreateIPSetResponse -> JE.Value
createIPSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (iPSetEncoder)
            ("IPSet", data.iPSet)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






createRateBasedRuleRequestEncoder : CreateRateBasedRuleRequest -> JE.Value
createRateBasedRuleRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("MetricName", data.metricName |> (JE.string))
        
        
        
        |> (::) ("RateKey", data.rateKey |> (rateKeyToString >> JE.string))
        
        
        
        |> (::) ("RateLimit", data.rateLimit |> (JE.int))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






createRateBasedRuleResponseEncoder : CreateRateBasedRuleResponse -> JE.Value
createRateBasedRuleResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (rateBasedRuleEncoder)
            ("Rule", data.rule)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






createRegexMatchSetRequestEncoder : CreateRegexMatchSetRequest -> JE.Value
createRegexMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






createRegexMatchSetResponseEncoder : CreateRegexMatchSetResponse -> JE.Value
createRegexMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (regexMatchSetEncoder)
            ("RegexMatchSet", data.regexMatchSet)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






createRegexPatternSetRequestEncoder : CreateRegexPatternSetRequest -> JE.Value
createRegexPatternSetRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






createRegexPatternSetResponseEncoder : CreateRegexPatternSetResponse -> JE.Value
createRegexPatternSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (regexPatternSetEncoder)
            ("RegexPatternSet", data.regexPatternSet)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






createRuleGroupRequestEncoder : CreateRuleGroupRequest -> JE.Value
createRuleGroupRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("MetricName", data.metricName |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






createRuleGroupResponseEncoder : CreateRuleGroupResponse -> JE.Value
createRuleGroupResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (ruleGroupEncoder)
            ("RuleGroup", data.ruleGroup)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






createRuleRequestEncoder : CreateRuleRequest -> JE.Value
createRuleRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("MetricName", data.metricName |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






createRuleResponseEncoder : CreateRuleResponse -> JE.Value
createRuleResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (ruleEncoder)
            ("Rule", data.rule)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






createSizeConstraintSetRequestEncoder : CreateSizeConstraintSetRequest -> JE.Value
createSizeConstraintSetRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






createSizeConstraintSetResponseEncoder : CreateSizeConstraintSetResponse -> JE.Value
createSizeConstraintSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (sizeConstraintSetEncoder)
            ("SizeConstraintSet", data.sizeConstraintSet)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






createSqlInjectionMatchSetRequestEncoder : CreateSqlInjectionMatchSetRequest -> JE.Value
createSqlInjectionMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






createSqlInjectionMatchSetResponseEncoder : CreateSqlInjectionMatchSetResponse -> JE.Value
createSqlInjectionMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (sqlInjectionMatchSetEncoder)
            ("SqlInjectionMatchSet", data.sqlInjectionMatchSet)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






createWebACLRequestEncoder : CreateWebACLRequest -> JE.Value
createWebACLRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("MetricName", data.metricName |> (JE.string))
        
        
        
        |> (::) ("DefaultAction", data.defaultAction |> (wafActionEncoder))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






createWebACLResponseEncoder : CreateWebACLResponse -> JE.Value
createWebACLResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (webACLEncoder)
            ("WebACL", data.webACL)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






createXssMatchSetRequestEncoder : CreateXssMatchSetRequest -> JE.Value
createXssMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






createXssMatchSetResponseEncoder : CreateXssMatchSetResponse -> JE.Value
createXssMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (xssMatchSetEncoder)
            ("XssMatchSet", data.xssMatchSet)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






deleteByteMatchSetRequestEncoder : DeleteByteMatchSetRequest -> JE.Value
deleteByteMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("ByteMatchSetId", data.byteMatchSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






deleteByteMatchSetResponseEncoder : DeleteByteMatchSetResponse -> JE.Value
deleteByteMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






deleteGeoMatchSetRequestEncoder : DeleteGeoMatchSetRequest -> JE.Value
deleteGeoMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("GeoMatchSetId", data.geoMatchSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






deleteGeoMatchSetResponseEncoder : DeleteGeoMatchSetResponse -> JE.Value
deleteGeoMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






deleteIPSetRequestEncoder : DeleteIPSetRequest -> JE.Value
deleteIPSetRequestEncoder data =
    []
        
        
        |> (::) ("IPSetId", data.iPSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






deleteIPSetResponseEncoder : DeleteIPSetResponse -> JE.Value
deleteIPSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






deleteLoggingConfigurationRequestEncoder : DeleteLoggingConfigurationRequest -> JE.Value
deleteLoggingConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        |> JE.object






deleteLoggingConfigurationResponseEncoder : DeleteLoggingConfigurationResponse -> JE.Value
deleteLoggingConfigurationResponseEncoder data =
    []
        
        |> JE.object






deletePermissionPolicyRequestEncoder : DeletePermissionPolicyRequest -> JE.Value
deletePermissionPolicyRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        |> JE.object






deletePermissionPolicyResponseEncoder : DeletePermissionPolicyResponse -> JE.Value
deletePermissionPolicyResponseEncoder data =
    []
        
        |> JE.object






deleteRateBasedRuleRequestEncoder : DeleteRateBasedRuleRequest -> JE.Value
deleteRateBasedRuleRequestEncoder data =
    []
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






deleteRateBasedRuleResponseEncoder : DeleteRateBasedRuleResponse -> JE.Value
deleteRateBasedRuleResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






deleteRegexMatchSetRequestEncoder : DeleteRegexMatchSetRequest -> JE.Value
deleteRegexMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("RegexMatchSetId", data.regexMatchSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






deleteRegexMatchSetResponseEncoder : DeleteRegexMatchSetResponse -> JE.Value
deleteRegexMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






deleteRegexPatternSetRequestEncoder : DeleteRegexPatternSetRequest -> JE.Value
deleteRegexPatternSetRequestEncoder data =
    []
        
        
        |> (::) ("RegexPatternSetId", data.regexPatternSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






deleteRegexPatternSetResponseEncoder : DeleteRegexPatternSetResponse -> JE.Value
deleteRegexPatternSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






deleteRuleGroupRequestEncoder : DeleteRuleGroupRequest -> JE.Value
deleteRuleGroupRequestEncoder data =
    []
        
        
        |> (::) ("RuleGroupId", data.ruleGroupId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






deleteRuleGroupResponseEncoder : DeleteRuleGroupResponse -> JE.Value
deleteRuleGroupResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






deleteRuleRequestEncoder : DeleteRuleRequest -> JE.Value
deleteRuleRequestEncoder data =
    []
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






deleteRuleResponseEncoder : DeleteRuleResponse -> JE.Value
deleteRuleResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






deleteSizeConstraintSetRequestEncoder : DeleteSizeConstraintSetRequest -> JE.Value
deleteSizeConstraintSetRequestEncoder data =
    []
        
        
        |> (::) ("SizeConstraintSetId", data.sizeConstraintSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






deleteSizeConstraintSetResponseEncoder : DeleteSizeConstraintSetResponse -> JE.Value
deleteSizeConstraintSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






deleteSqlInjectionMatchSetRequestEncoder : DeleteSqlInjectionMatchSetRequest -> JE.Value
deleteSqlInjectionMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("SqlInjectionMatchSetId", data.sqlInjectionMatchSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






deleteSqlInjectionMatchSetResponseEncoder : DeleteSqlInjectionMatchSetResponse -> JE.Value
deleteSqlInjectionMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






deleteWebACLRequestEncoder : DeleteWebACLRequest -> JE.Value
deleteWebACLRequestEncoder data =
    []
        
        
        |> (::) ("WebACLId", data.webACLId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






deleteWebACLResponseEncoder : DeleteWebACLResponse -> JE.Value
deleteWebACLResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






deleteXssMatchSetRequestEncoder : DeleteXssMatchSetRequest -> JE.Value
deleteXssMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("XssMatchSetId", data.xssMatchSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






deleteXssMatchSetResponseEncoder : DeleteXssMatchSetResponse -> JE.Value
deleteXssMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






excludedRuleEncoder : ExcludedRule -> JE.Value
excludedRuleEncoder data =
    []
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        |> JE.object






fieldToMatchEncoder : FieldToMatch -> JE.Value
fieldToMatchEncoder data =
    []
        
        
        |> (::) ("Type", data.type_ |> (matchFieldTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Data", data.data)
        
        
        |> JE.object






geoMatchConstraintEncoder : GeoMatchConstraint -> JE.Value
geoMatchConstraintEncoder data =
    []
        
        
        |> (::) ("Type", data.type_ |> (geoMatchConstraintTypeToString >> JE.string))
        
        
        
        |> (::) ("Value", data.value |> (geoMatchConstraintValueToString >> JE.string))
        
        
        |> JE.object














geoMatchSetEncoder : GeoMatchSet -> JE.Value
geoMatchSetEncoder data =
    []
        
        
        |> (::) ("GeoMatchSetId", data.geoMatchSetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> (::) ("GeoMatchConstraints", data.geoMatchConstraints |> (JE.list (geoMatchConstraintEncoder)))
        
        
        |> JE.object






geoMatchSetSummaryEncoder : GeoMatchSetSummary -> JE.Value
geoMatchSetSummaryEncoder data =
    []
        
        
        |> (::) ("GeoMatchSetId", data.geoMatchSetId |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






geoMatchSetUpdateEncoder : GeoMatchSetUpdate -> JE.Value
geoMatchSetUpdateEncoder data =
    []
        
        
        |> (::) ("Action", data.action |> (changeActionToString >> JE.string))
        
        
        
        |> (::) ("GeoMatchConstraint", data.geoMatchConstraint |> (geoMatchConstraintEncoder))
        
        
        |> JE.object






getByteMatchSetRequestEncoder : GetByteMatchSetRequest -> JE.Value
getByteMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("ByteMatchSetId", data.byteMatchSetId |> (JE.string))
        
        
        |> JE.object






getByteMatchSetResponseEncoder : GetByteMatchSetResponse -> JE.Value
getByteMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (byteMatchSetEncoder)
            ("ByteMatchSet", data.byteMatchSet)
        
        
        |> JE.object






getChangeTokenRequestEncoder : GetChangeTokenRequest -> JE.Value
getChangeTokenRequestEncoder data =
    []
        
        |> JE.object






getChangeTokenResponseEncoder : GetChangeTokenResponse -> JE.Value
getChangeTokenResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






getChangeTokenStatusRequestEncoder : GetChangeTokenStatusRequest -> JE.Value
getChangeTokenStatusRequestEncoder data =
    []
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






getChangeTokenStatusResponseEncoder : GetChangeTokenStatusResponse -> JE.Value
getChangeTokenStatusResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (changeTokenStatusToString >> JE.string)
            ("ChangeTokenStatus", data.changeTokenStatus)
        
        
        |> JE.object






getGeoMatchSetRequestEncoder : GetGeoMatchSetRequest -> JE.Value
getGeoMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("GeoMatchSetId", data.geoMatchSetId |> (JE.string))
        
        
        |> JE.object






getGeoMatchSetResponseEncoder : GetGeoMatchSetResponse -> JE.Value
getGeoMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (geoMatchSetEncoder)
            ("GeoMatchSet", data.geoMatchSet)
        
        
        |> JE.object






getIPSetRequestEncoder : GetIPSetRequest -> JE.Value
getIPSetRequestEncoder data =
    []
        
        
        |> (::) ("IPSetId", data.iPSetId |> (JE.string))
        
        
        |> JE.object






getIPSetResponseEncoder : GetIPSetResponse -> JE.Value
getIPSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (iPSetEncoder)
            ("IPSet", data.iPSet)
        
        
        |> JE.object






getLoggingConfigurationRequestEncoder : GetLoggingConfigurationRequest -> JE.Value
getLoggingConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        |> JE.object






getLoggingConfigurationResponseEncoder : GetLoggingConfigurationResponse -> JE.Value
getLoggingConfigurationResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (loggingConfigurationEncoder)
            ("LoggingConfiguration", data.loggingConfiguration)
        
        
        |> JE.object






getPermissionPolicyRequestEncoder : GetPermissionPolicyRequest -> JE.Value
getPermissionPolicyRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        |> JE.object






getPermissionPolicyResponseEncoder : GetPermissionPolicyResponse -> JE.Value
getPermissionPolicyResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Policy", data.policy)
        
        
        |> JE.object






getRateBasedRuleManagedKeysRequestEncoder : GetRateBasedRuleManagedKeysRequest -> JE.Value
getRateBasedRuleManagedKeysRequestEncoder data =
    []
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        |> JE.object






getRateBasedRuleManagedKeysResponseEncoder : GetRateBasedRuleManagedKeysResponse -> JE.Value
getRateBasedRuleManagedKeysResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("ManagedKeys", data.managedKeys)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        |> JE.object






getRateBasedRuleRequestEncoder : GetRateBasedRuleRequest -> JE.Value
getRateBasedRuleRequestEncoder data =
    []
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        |> JE.object






getRateBasedRuleResponseEncoder : GetRateBasedRuleResponse -> JE.Value
getRateBasedRuleResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (rateBasedRuleEncoder)
            ("Rule", data.rule)
        
        
        |> JE.object






getRegexMatchSetRequestEncoder : GetRegexMatchSetRequest -> JE.Value
getRegexMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("RegexMatchSetId", data.regexMatchSetId |> (JE.string))
        
        
        |> JE.object






getRegexMatchSetResponseEncoder : GetRegexMatchSetResponse -> JE.Value
getRegexMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (regexMatchSetEncoder)
            ("RegexMatchSet", data.regexMatchSet)
        
        
        |> JE.object






getRegexPatternSetRequestEncoder : GetRegexPatternSetRequest -> JE.Value
getRegexPatternSetRequestEncoder data =
    []
        
        
        |> (::) ("RegexPatternSetId", data.regexPatternSetId |> (JE.string))
        
        
        |> JE.object






getRegexPatternSetResponseEncoder : GetRegexPatternSetResponse -> JE.Value
getRegexPatternSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (regexPatternSetEncoder)
            ("RegexPatternSet", data.regexPatternSet)
        
        
        |> JE.object






getRuleGroupRequestEncoder : GetRuleGroupRequest -> JE.Value
getRuleGroupRequestEncoder data =
    []
        
        
        |> (::) ("RuleGroupId", data.ruleGroupId |> (JE.string))
        
        
        |> JE.object






getRuleGroupResponseEncoder : GetRuleGroupResponse -> JE.Value
getRuleGroupResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (ruleGroupEncoder)
            ("RuleGroup", data.ruleGroup)
        
        
        |> JE.object






getRuleRequestEncoder : GetRuleRequest -> JE.Value
getRuleRequestEncoder data =
    []
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        |> JE.object






getRuleResponseEncoder : GetRuleResponse -> JE.Value
getRuleResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (ruleEncoder)
            ("Rule", data.rule)
        
        
        |> JE.object






getSampledRequestsRequestEncoder : GetSampledRequestsRequest -> JE.Value
getSampledRequestsRequestEncoder data =
    []
        
        
        |> (::) ("WebAclId", data.webAclId |> (JE.string))
        
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        
        |> (::) ("TimeWindow", data.timeWindow |> (timeWindowEncoder))
        
        
        
        |> (::) ("MaxItems", data.maxItems |> (JE.int))
        
        
        |> JE.object






getSampledRequestsResponseEncoder : GetSampledRequestsResponse -> JE.Value
getSampledRequestsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (sampledHTTPRequestEncoder))
            ("SampledRequests", data.sampledRequests)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PopulationSize", data.populationSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (timeWindowEncoder)
            ("TimeWindow", data.timeWindow)
        
        
        |> JE.object






getSizeConstraintSetRequestEncoder : GetSizeConstraintSetRequest -> JE.Value
getSizeConstraintSetRequestEncoder data =
    []
        
        
        |> (::) ("SizeConstraintSetId", data.sizeConstraintSetId |> (JE.string))
        
        
        |> JE.object






getSizeConstraintSetResponseEncoder : GetSizeConstraintSetResponse -> JE.Value
getSizeConstraintSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (sizeConstraintSetEncoder)
            ("SizeConstraintSet", data.sizeConstraintSet)
        
        
        |> JE.object






getSqlInjectionMatchSetRequestEncoder : GetSqlInjectionMatchSetRequest -> JE.Value
getSqlInjectionMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("SqlInjectionMatchSetId", data.sqlInjectionMatchSetId |> (JE.string))
        
        
        |> JE.object






getSqlInjectionMatchSetResponseEncoder : GetSqlInjectionMatchSetResponse -> JE.Value
getSqlInjectionMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (sqlInjectionMatchSetEncoder)
            ("SqlInjectionMatchSet", data.sqlInjectionMatchSet)
        
        
        |> JE.object






getWebACLRequestEncoder : GetWebACLRequest -> JE.Value
getWebACLRequestEncoder data =
    []
        
        
        |> (::) ("WebACLId", data.webACLId |> (JE.string))
        
        
        |> JE.object






getWebACLResponseEncoder : GetWebACLResponse -> JE.Value
getWebACLResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (webACLEncoder)
            ("WebACL", data.webACL)
        
        
        |> JE.object






getXssMatchSetRequestEncoder : GetXssMatchSetRequest -> JE.Value
getXssMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("XssMatchSetId", data.xssMatchSetId |> (JE.string))
        
        
        |> JE.object






getXssMatchSetResponseEncoder : GetXssMatchSetResponse -> JE.Value
getXssMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (xssMatchSetEncoder)
            ("XssMatchSet", data.xssMatchSet)
        
        
        |> JE.object






hTTPHeaderEncoder : HTTPHeader -> JE.Value
hTTPHeaderEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object






hTTPRequestEncoder : HTTPRequest -> JE.Value
hTTPRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ClientIP", data.clientIP)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Country", data.country)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("URI", data.uRI)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Method", data.method)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("HTTPVersion", data.hTTPVersion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (hTTPHeaderEncoder))
            ("Headers", data.headers)
        
        
        |> JE.object






iPSetEncoder : IPSet -> JE.Value
iPSetEncoder data =
    []
        
        
        |> (::) ("IPSetId", data.iPSetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> (::) ("IPSetDescriptors", data.iPSetDescriptors |> (JE.list (iPSetDescriptorEncoder)))
        
        
        |> JE.object






iPSetDescriptorEncoder : IPSetDescriptor -> JE.Value
iPSetDescriptorEncoder data =
    []
        
        
        |> (::) ("Type", data.type_ |> (iPSetDescriptorTypeToString >> JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        |> JE.object










iPSetSummaryEncoder : IPSetSummary -> JE.Value
iPSetSummaryEncoder data =
    []
        
        
        |> (::) ("IPSetId", data.iPSetId |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






iPSetUpdateEncoder : IPSetUpdate -> JE.Value
iPSetUpdateEncoder data =
    []
        
        
        |> (::) ("Action", data.action |> (changeActionToString >> JE.string))
        
        
        
        |> (::) ("IPSetDescriptor", data.iPSetDescriptor |> (iPSetDescriptorEncoder))
        
        
        |> JE.object






listActivatedRulesInRuleGroupRequestEncoder : ListActivatedRulesInRuleGroupRequest -> JE.Value
listActivatedRulesInRuleGroupRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RuleGroupId", data.ruleGroupId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listActivatedRulesInRuleGroupResponseEncoder : ListActivatedRulesInRuleGroupResponse -> JE.Value
listActivatedRulesInRuleGroupResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (activatedRuleEncoder))
            ("ActivatedRules", data.activatedRules)
        
        
        |> JE.object






listByteMatchSetsRequestEncoder : ListByteMatchSetsRequest -> JE.Value
listByteMatchSetsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listByteMatchSetsResponseEncoder : ListByteMatchSetsResponse -> JE.Value
listByteMatchSetsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (byteMatchSetSummaryEncoder))
            ("ByteMatchSets", data.byteMatchSets)
        
        
        |> JE.object






listGeoMatchSetsRequestEncoder : ListGeoMatchSetsRequest -> JE.Value
listGeoMatchSetsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listGeoMatchSetsResponseEncoder : ListGeoMatchSetsResponse -> JE.Value
listGeoMatchSetsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (geoMatchSetSummaryEncoder))
            ("GeoMatchSets", data.geoMatchSets)
        
        
        |> JE.object






listIPSetsRequestEncoder : ListIPSetsRequest -> JE.Value
listIPSetsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listIPSetsResponseEncoder : ListIPSetsResponse -> JE.Value
listIPSetsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (iPSetSummaryEncoder))
            ("IPSets", data.iPSets)
        
        
        |> JE.object






listLoggingConfigurationsRequestEncoder : ListLoggingConfigurationsRequest -> JE.Value
listLoggingConfigurationsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listLoggingConfigurationsResponseEncoder : ListLoggingConfigurationsResponse -> JE.Value
listLoggingConfigurationsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (loggingConfigurationEncoder))
            ("LoggingConfigurations", data.loggingConfigurations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        |> JE.object






listRateBasedRulesRequestEncoder : ListRateBasedRulesRequest -> JE.Value
listRateBasedRulesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listRateBasedRulesResponseEncoder : ListRateBasedRulesResponse -> JE.Value
listRateBasedRulesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ruleSummaryEncoder))
            ("Rules", data.rules)
        
        
        |> JE.object






listRegexMatchSetsRequestEncoder : ListRegexMatchSetsRequest -> JE.Value
listRegexMatchSetsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listRegexMatchSetsResponseEncoder : ListRegexMatchSetsResponse -> JE.Value
listRegexMatchSetsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (regexMatchSetSummaryEncoder))
            ("RegexMatchSets", data.regexMatchSets)
        
        
        |> JE.object






listRegexPatternSetsRequestEncoder : ListRegexPatternSetsRequest -> JE.Value
listRegexPatternSetsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listRegexPatternSetsResponseEncoder : ListRegexPatternSetsResponse -> JE.Value
listRegexPatternSetsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (regexPatternSetSummaryEncoder))
            ("RegexPatternSets", data.regexPatternSets)
        
        
        |> JE.object






listRuleGroupsRequestEncoder : ListRuleGroupsRequest -> JE.Value
listRuleGroupsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listRuleGroupsResponseEncoder : ListRuleGroupsResponse -> JE.Value
listRuleGroupsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ruleGroupSummaryEncoder))
            ("RuleGroups", data.ruleGroups)
        
        
        |> JE.object






listRulesRequestEncoder : ListRulesRequest -> JE.Value
listRulesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listRulesResponseEncoder : ListRulesResponse -> JE.Value
listRulesResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ruleSummaryEncoder))
            ("Rules", data.rules)
        
        
        |> JE.object






listSizeConstraintSetsRequestEncoder : ListSizeConstraintSetsRequest -> JE.Value
listSizeConstraintSetsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listSizeConstraintSetsResponseEncoder : ListSizeConstraintSetsResponse -> JE.Value
listSizeConstraintSetsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (sizeConstraintSetSummaryEncoder))
            ("SizeConstraintSets", data.sizeConstraintSets)
        
        
        |> JE.object






listSqlInjectionMatchSetsRequestEncoder : ListSqlInjectionMatchSetsRequest -> JE.Value
listSqlInjectionMatchSetsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listSqlInjectionMatchSetsResponseEncoder : ListSqlInjectionMatchSetsResponse -> JE.Value
listSqlInjectionMatchSetsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (sqlInjectionMatchSetSummaryEncoder))
            ("SqlInjectionMatchSets", data.sqlInjectionMatchSets)
        
        
        |> JE.object






listSubscribedRuleGroupsRequestEncoder : ListSubscribedRuleGroupsRequest -> JE.Value
listSubscribedRuleGroupsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listSubscribedRuleGroupsResponseEncoder : ListSubscribedRuleGroupsResponse -> JE.Value
listSubscribedRuleGroupsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (subscribedRuleGroupSummaryEncoder))
            ("RuleGroups", data.ruleGroups)
        
        
        |> JE.object






listTagsForResourceRequestEncoder : ListTagsForResourceRequest -> JE.Value
listTagsForResourceRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> (::) ("ResourceARN", data.resourceARN |> (JE.string))
        
        
        |> JE.object






listTagsForResourceResponseEncoder : ListTagsForResourceResponse -> JE.Value
listTagsForResourceResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (tagInfoForResourceEncoder)
            ("TagInfoForResource", data.tagInfoForResource)
        
        
        |> JE.object






listWebACLsRequestEncoder : ListWebACLsRequest -> JE.Value
listWebACLsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listWebACLsResponseEncoder : ListWebACLsResponse -> JE.Value
listWebACLsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (webACLSummaryEncoder))
            ("WebACLs", data.webACLs)
        
        
        |> JE.object






listXssMatchSetsRequestEncoder : ListXssMatchSetsRequest -> JE.Value
listXssMatchSetsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        |> JE.object






listXssMatchSetsResponseEncoder : ListXssMatchSetsResponse -> JE.Value
listXssMatchSetsResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextMarker", data.nextMarker)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (xssMatchSetSummaryEncoder))
            ("XssMatchSets", data.xssMatchSets)
        
        
        |> JE.object






loggingConfigurationEncoder : LoggingConfiguration -> JE.Value
loggingConfigurationEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("LogDestinationConfigs", data.logDestinationConfigs |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fieldToMatchEncoder))
            ("RedactedFields", data.redactedFields)
        
        
        |> JE.object














predicateEncoder : Predicate -> JE.Value
predicateEncoder data =
    []
        
        
        |> (::) ("Negated", data.negated |> (JE.bool))
        
        
        
        |> (::) ("Type", data.type_ |> (predicateTypeToString >> JE.string))
        
        
        
        |> (::) ("DataId", data.dataId |> (JE.string))
        
        
        |> JE.object










putLoggingConfigurationRequestEncoder : PutLoggingConfigurationRequest -> JE.Value
putLoggingConfigurationRequestEncoder data =
    []
        
        
        |> (::) ("LoggingConfiguration", data.loggingConfiguration |> (loggingConfigurationEncoder))
        
        
        |> JE.object






putLoggingConfigurationResponseEncoder : PutLoggingConfigurationResponse -> JE.Value
putLoggingConfigurationResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (loggingConfigurationEncoder)
            ("LoggingConfiguration", data.loggingConfiguration)
        
        
        |> JE.object






putPermissionPolicyRequestEncoder : PutPermissionPolicyRequest -> JE.Value
putPermissionPolicyRequestEncoder data =
    []
        
        
        |> (::) ("ResourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("Policy", data.policy |> (JE.string))
        
        
        |> JE.object






putPermissionPolicyResponseEncoder : PutPermissionPolicyResponse -> JE.Value
putPermissionPolicyResponseEncoder data =
    []
        
        |> JE.object






rateBasedRuleEncoder : RateBasedRule -> JE.Value
rateBasedRuleEncoder data =
    []
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MetricName", data.metricName)
        
        
        
        |> (::) ("MatchPredicates", data.matchPredicates |> (JE.list (predicateEncoder)))
        
        
        
        |> (::) ("RateKey", data.rateKey |> (rateKeyToString >> JE.string))
        
        
        
        |> (::) ("RateLimit", data.rateLimit |> (JE.int))
        
        
        |> JE.object










regexMatchSetEncoder : RegexMatchSet -> JE.Value
regexMatchSetEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RegexMatchSetId", data.regexMatchSetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (regexMatchTupleEncoder))
            ("RegexMatchTuples", data.regexMatchTuples)
        
        
        |> JE.object






regexMatchSetSummaryEncoder : RegexMatchSetSummary -> JE.Value
regexMatchSetSummaryEncoder data =
    []
        
        
        |> (::) ("RegexMatchSetId", data.regexMatchSetId |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






regexMatchSetUpdateEncoder : RegexMatchSetUpdate -> JE.Value
regexMatchSetUpdateEncoder data =
    []
        
        
        |> (::) ("Action", data.action |> (changeActionToString >> JE.string))
        
        
        
        |> (::) ("RegexMatchTuple", data.regexMatchTuple |> (regexMatchTupleEncoder))
        
        
        |> JE.object






regexMatchTupleEncoder : RegexMatchTuple -> JE.Value
regexMatchTupleEncoder data =
    []
        
        
        |> (::) ("FieldToMatch", data.fieldToMatch |> (fieldToMatchEncoder))
        
        
        
        |> (::) ("TextTransformation", data.textTransformation |> (textTransformationToString >> JE.string))
        
        
        
        |> (::) ("RegexPatternSetId", data.regexPatternSetId |> (JE.string))
        
        
        |> JE.object






regexPatternSetEncoder : RegexPatternSet -> JE.Value
regexPatternSetEncoder data =
    []
        
        
        |> (::) ("RegexPatternSetId", data.regexPatternSetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> (::) ("RegexPatternStrings", data.regexPatternStrings |> (JE.list (JE.string)))
        
        
        |> JE.object






regexPatternSetSummaryEncoder : RegexPatternSetSummary -> JE.Value
regexPatternSetSummaryEncoder data =
    []
        
        
        |> (::) ("RegexPatternSetId", data.regexPatternSetId |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






regexPatternSetUpdateEncoder : RegexPatternSetUpdate -> JE.Value
regexPatternSetUpdateEncoder data =
    []
        
        
        |> (::) ("Action", data.action |> (changeActionToString >> JE.string))
        
        
        
        |> (::) ("RegexPatternString", data.regexPatternString |> (JE.string))
        
        
        |> JE.object






ruleEncoder : Rule -> JE.Value
ruleEncoder data =
    []
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MetricName", data.metricName)
        
        
        
        |> (::) ("Predicates", data.predicates |> (JE.list (predicateEncoder)))
        
        
        |> JE.object






ruleGroupEncoder : RuleGroup -> JE.Value
ruleGroupEncoder data =
    []
        
        
        |> (::) ("RuleGroupId", data.ruleGroupId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MetricName", data.metricName)
        
        
        |> JE.object






ruleGroupSummaryEncoder : RuleGroupSummary -> JE.Value
ruleGroupSummaryEncoder data =
    []
        
        
        |> (::) ("RuleGroupId", data.ruleGroupId |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






ruleGroupUpdateEncoder : RuleGroupUpdate -> JE.Value
ruleGroupUpdateEncoder data =
    []
        
        
        |> (::) ("Action", data.action |> (changeActionToString >> JE.string))
        
        
        
        |> (::) ("ActivatedRule", data.activatedRule |> (activatedRuleEncoder))
        
        
        |> JE.object






ruleSummaryEncoder : RuleSummary -> JE.Value
ruleSummaryEncoder data =
    []
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






ruleUpdateEncoder : RuleUpdate -> JE.Value
ruleUpdateEncoder data =
    []
        
        
        |> (::) ("Action", data.action |> (changeActionToString >> JE.string))
        
        
        
        |> (::) ("Predicate", data.predicate |> (predicateEncoder))
        
        
        |> JE.object






sampledHTTPRequestEncoder : SampledHTTPRequest -> JE.Value
sampledHTTPRequestEncoder data =
    []
        
        
        |> (::) ("Request", data.request |> (hTTPRequestEncoder))
        
        
        
        |> (::) ("Weight", data.weight |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("Timestamp", data.timestamp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Action", data.action)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RuleWithinRuleGroup", data.ruleWithinRuleGroup)
        
        
        |> JE.object






sizeConstraintEncoder : SizeConstraint -> JE.Value
sizeConstraintEncoder data =
    []
        
        
        |> (::) ("FieldToMatch", data.fieldToMatch |> (fieldToMatchEncoder))
        
        
        
        |> (::) ("TextTransformation", data.textTransformation |> (textTransformationToString >> JE.string))
        
        
        
        |> (::) ("ComparisonOperator", data.comparisonOperator |> (comparisonOperatorToString >> JE.string))
        
        
        
        |> (::) ("Size", data.size |> (JE.int))
        
        
        |> JE.object






sizeConstraintSetEncoder : SizeConstraintSet -> JE.Value
sizeConstraintSetEncoder data =
    []
        
        
        |> (::) ("SizeConstraintSetId", data.sizeConstraintSetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> (::) ("SizeConstraints", data.sizeConstraints |> (JE.list (sizeConstraintEncoder)))
        
        
        |> JE.object






sizeConstraintSetSummaryEncoder : SizeConstraintSetSummary -> JE.Value
sizeConstraintSetSummaryEncoder data =
    []
        
        
        |> (::) ("SizeConstraintSetId", data.sizeConstraintSetId |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






sizeConstraintSetUpdateEncoder : SizeConstraintSetUpdate -> JE.Value
sizeConstraintSetUpdateEncoder data =
    []
        
        
        |> (::) ("Action", data.action |> (changeActionToString >> JE.string))
        
        
        
        |> (::) ("SizeConstraint", data.sizeConstraint |> (sizeConstraintEncoder))
        
        
        |> JE.object






sqlInjectionMatchSetEncoder : SqlInjectionMatchSet -> JE.Value
sqlInjectionMatchSetEncoder data =
    []
        
        
        |> (::) ("SqlInjectionMatchSetId", data.sqlInjectionMatchSetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> (::) ("SqlInjectionMatchTuples", data.sqlInjectionMatchTuples |> (JE.list (sqlInjectionMatchTupleEncoder)))
        
        
        |> JE.object






sqlInjectionMatchSetSummaryEncoder : SqlInjectionMatchSetSummary -> JE.Value
sqlInjectionMatchSetSummaryEncoder data =
    []
        
        
        |> (::) ("SqlInjectionMatchSetId", data.sqlInjectionMatchSetId |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






sqlInjectionMatchSetUpdateEncoder : SqlInjectionMatchSetUpdate -> JE.Value
sqlInjectionMatchSetUpdateEncoder data =
    []
        
        
        |> (::) ("Action", data.action |> (changeActionToString >> JE.string))
        
        
        
        |> (::) ("SqlInjectionMatchTuple", data.sqlInjectionMatchTuple |> (sqlInjectionMatchTupleEncoder))
        
        
        |> JE.object






sqlInjectionMatchTupleEncoder : SqlInjectionMatchTuple -> JE.Value
sqlInjectionMatchTupleEncoder data =
    []
        
        
        |> (::) ("FieldToMatch", data.fieldToMatch |> (fieldToMatchEncoder))
        
        
        
        |> (::) ("TextTransformation", data.textTransformation |> (textTransformationToString >> JE.string))
        
        
        |> JE.object






subscribedRuleGroupSummaryEncoder : SubscribedRuleGroupSummary -> JE.Value
subscribedRuleGroupSummaryEncoder data =
    []
        
        
        |> (::) ("RuleGroupId", data.ruleGroupId |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("MetricName", data.metricName |> (JE.string))
        
        
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






tagInfoForResourceEncoder : TagInfoForResource -> JE.Value
tagInfoForResourceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceARN", data.resourceARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("TagList", data.tagList)
        
        
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










timeWindowEncoder : TimeWindow -> JE.Value
timeWindowEncoder data =
    []
        
        
        |> (::) ("StartTime", data.startTime |> (Iso8601.fromTime >> JE.string))
        
        
        
        |> (::) ("EndTime", data.endTime |> (Iso8601.fromTime >> JE.string))
        
        
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






updateByteMatchSetRequestEncoder : UpdateByteMatchSetRequest -> JE.Value
updateByteMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("ByteMatchSetId", data.byteMatchSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> (::) ("Updates", data.updates |> (JE.list (byteMatchSetUpdateEncoder)))
        
        
        |> JE.object






updateByteMatchSetResponseEncoder : UpdateByteMatchSetResponse -> JE.Value
updateByteMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






updateGeoMatchSetRequestEncoder : UpdateGeoMatchSetRequest -> JE.Value
updateGeoMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("GeoMatchSetId", data.geoMatchSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> (::) ("Updates", data.updates |> (JE.list (geoMatchSetUpdateEncoder)))
        
        
        |> JE.object






updateGeoMatchSetResponseEncoder : UpdateGeoMatchSetResponse -> JE.Value
updateGeoMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






updateIPSetRequestEncoder : UpdateIPSetRequest -> JE.Value
updateIPSetRequestEncoder data =
    []
        
        
        |> (::) ("IPSetId", data.iPSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> (::) ("Updates", data.updates |> (JE.list (iPSetUpdateEncoder)))
        
        
        |> JE.object






updateIPSetResponseEncoder : UpdateIPSetResponse -> JE.Value
updateIPSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






updateRateBasedRuleRequestEncoder : UpdateRateBasedRuleRequest -> JE.Value
updateRateBasedRuleRequestEncoder data =
    []
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> (::) ("Updates", data.updates |> (JE.list (ruleUpdateEncoder)))
        
        
        
        |> (::) ("RateLimit", data.rateLimit |> (JE.int))
        
        
        |> JE.object






updateRateBasedRuleResponseEncoder : UpdateRateBasedRuleResponse -> JE.Value
updateRateBasedRuleResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






updateRegexMatchSetRequestEncoder : UpdateRegexMatchSetRequest -> JE.Value
updateRegexMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("RegexMatchSetId", data.regexMatchSetId |> (JE.string))
        
        
        
        |> (::) ("Updates", data.updates |> (JE.list (regexMatchSetUpdateEncoder)))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






updateRegexMatchSetResponseEncoder : UpdateRegexMatchSetResponse -> JE.Value
updateRegexMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






updateRegexPatternSetRequestEncoder : UpdateRegexPatternSetRequest -> JE.Value
updateRegexPatternSetRequestEncoder data =
    []
        
        
        |> (::) ("RegexPatternSetId", data.regexPatternSetId |> (JE.string))
        
        
        
        |> (::) ("Updates", data.updates |> (JE.list (regexPatternSetUpdateEncoder)))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






updateRegexPatternSetResponseEncoder : UpdateRegexPatternSetResponse -> JE.Value
updateRegexPatternSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






updateRuleGroupRequestEncoder : UpdateRuleGroupRequest -> JE.Value
updateRuleGroupRequestEncoder data =
    []
        
        
        |> (::) ("RuleGroupId", data.ruleGroupId |> (JE.string))
        
        
        
        |> (::) ("Updates", data.updates |> (JE.list (ruleGroupUpdateEncoder)))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        |> JE.object






updateRuleGroupResponseEncoder : UpdateRuleGroupResponse -> JE.Value
updateRuleGroupResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






updateRuleRequestEncoder : UpdateRuleRequest -> JE.Value
updateRuleRequestEncoder data =
    []
        
        
        |> (::) ("RuleId", data.ruleId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> (::) ("Updates", data.updates |> (JE.list (ruleUpdateEncoder)))
        
        
        |> JE.object






updateRuleResponseEncoder : UpdateRuleResponse -> JE.Value
updateRuleResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






updateSizeConstraintSetRequestEncoder : UpdateSizeConstraintSetRequest -> JE.Value
updateSizeConstraintSetRequestEncoder data =
    []
        
        
        |> (::) ("SizeConstraintSetId", data.sizeConstraintSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> (::) ("Updates", data.updates |> (JE.list (sizeConstraintSetUpdateEncoder)))
        
        
        |> JE.object






updateSizeConstraintSetResponseEncoder : UpdateSizeConstraintSetResponse -> JE.Value
updateSizeConstraintSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






updateSqlInjectionMatchSetRequestEncoder : UpdateSqlInjectionMatchSetRequest -> JE.Value
updateSqlInjectionMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("SqlInjectionMatchSetId", data.sqlInjectionMatchSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> (::) ("Updates", data.updates |> (JE.list (sqlInjectionMatchSetUpdateEncoder)))
        
        
        |> JE.object






updateSqlInjectionMatchSetResponseEncoder : UpdateSqlInjectionMatchSetResponse -> JE.Value
updateSqlInjectionMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






updateWebACLRequestEncoder : UpdateWebACLRequest -> JE.Value
updateWebACLRequestEncoder data =
    []
        
        
        |> (::) ("WebACLId", data.webACLId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (webACLUpdateEncoder))
            ("Updates", data.updates)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (wafActionEncoder)
            ("DefaultAction", data.defaultAction)
        
        
        |> JE.object






updateWebACLResponseEncoder : UpdateWebACLResponse -> JE.Value
updateWebACLResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






updateXssMatchSetRequestEncoder : UpdateXssMatchSetRequest -> JE.Value
updateXssMatchSetRequestEncoder data =
    []
        
        
        |> (::) ("XssMatchSetId", data.xssMatchSetId |> (JE.string))
        
        
        
        |> (::) ("ChangeToken", data.changeToken |> (JE.string))
        
        
        
        |> (::) ("Updates", data.updates |> (JE.list (xssMatchSetUpdateEncoder)))
        
        
        |> JE.object






updateXssMatchSetResponseEncoder : UpdateXssMatchSetResponse -> JE.Value
updateXssMatchSetResponseEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ChangeToken", data.changeToken)
        
        
        |> JE.object






wafActionEncoder : WafAction -> JE.Value
wafActionEncoder data =
    []
        
        
        |> (::) ("Type", data.type_ |> (wafActionTypeToString >> JE.string))
        
        
        |> JE.object










wafOverrideActionEncoder : WafOverrideAction -> JE.Value
wafOverrideActionEncoder data =
    []
        
        
        |> (::) ("Type", data.type_ |> (wafOverrideActionTypeToString >> JE.string))
        
        
        |> JE.object














webACLEncoder : WebACL -> JE.Value
webACLEncoder data =
    []
        
        
        |> (::) ("WebACLId", data.webACLId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MetricName", data.metricName)
        
        
        
        |> (::) ("DefaultAction", data.defaultAction |> (wafActionEncoder))
        
        
        
        |> (::) ("Rules", data.rules |> (JE.list (activatedRuleEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("WebACLArn", data.webACLArn)
        
        
        |> JE.object






webACLSummaryEncoder : WebACLSummary -> JE.Value
webACLSummaryEncoder data =
    []
        
        
        |> (::) ("WebACLId", data.webACLId |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






webACLUpdateEncoder : WebACLUpdate -> JE.Value
webACLUpdateEncoder data =
    []
        
        
        |> (::) ("Action", data.action |> (changeActionToString >> JE.string))
        
        
        
        |> (::) ("ActivatedRule", data.activatedRule |> (activatedRuleEncoder))
        
        
        |> JE.object






xssMatchSetEncoder : XssMatchSet -> JE.Value
xssMatchSetEncoder data =
    []
        
        
        |> (::) ("XssMatchSetId", data.xssMatchSetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> (::) ("XssMatchTuples", data.xssMatchTuples |> (JE.list (xssMatchTupleEncoder)))
        
        
        |> JE.object






xssMatchSetSummaryEncoder : XssMatchSetSummary -> JE.Value
xssMatchSetSummaryEncoder data =
    []
        
        
        |> (::) ("XssMatchSetId", data.xssMatchSetId |> (JE.string))
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






xssMatchSetUpdateEncoder : XssMatchSetUpdate -> JE.Value
xssMatchSetUpdateEncoder data =
    []
        
        
        |> (::) ("Action", data.action |> (changeActionToString >> JE.string))
        
        
        
        |> (::) ("XssMatchTuple", data.xssMatchTuple |> (xssMatchTupleEncoder))
        
        
        |> JE.object






xssMatchTupleEncoder : XssMatchTuple -> JE.Value
xssMatchTupleEncoder data =
    []
        
        
        |> (::) ("FieldToMatch", data.fieldToMatch |> (fieldToMatchEncoder))
        
        
        
        |> (::) ("TextTransformation", data.textTransformation |> (textTransformationToString >> JE.string))
        
        
        |> JE.object





