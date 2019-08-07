module AWS.GameLift
    exposing
        ( service
        , acceptMatch
        , createAlias
        , CreateAliasOptions
        , createBuild
        , CreateBuildOptions
        , createFleet
        , CreateFleetOptions
        , createGameSession
        , CreateGameSessionOptions
        , createGameSessionQueue
        , CreateGameSessionQueueOptions
        , createMatchmakingConfiguration
        , CreateMatchmakingConfigurationOptions
        , createMatchmakingRuleSet
        , createPlayerSession
        , CreatePlayerSessionOptions
        , createPlayerSessions
        , CreatePlayerSessionsOptions
        , createScript
        , CreateScriptOptions
        , createVpcPeeringAuthorization
        , createVpcPeeringConnection
        , deleteAlias
        , deleteBuild
        , deleteFleet
        , deleteGameSessionQueue
        , deleteMatchmakingConfiguration
        , deleteMatchmakingRuleSet
        , deleteScalingPolicy
        , deleteScript
        , deleteVpcPeeringAuthorization
        , deleteVpcPeeringConnection
        , describeAlias
        , describeBuild
        , describeEC2InstanceLimits
        , DescribeEC2InstanceLimitsOptions
        , describeFleetAttributes
        , DescribeFleetAttributesOptions
        , describeFleetCapacity
        , DescribeFleetCapacityOptions
        , describeFleetEvents
        , DescribeFleetEventsOptions
        , describeFleetPortSettings
        , describeFleetUtilization
        , DescribeFleetUtilizationOptions
        , describeGameSessionDetails
        , DescribeGameSessionDetailsOptions
        , describeGameSessionPlacement
        , describeGameSessionQueues
        , DescribeGameSessionQueuesOptions
        , describeGameSessions
        , DescribeGameSessionsOptions
        , describeInstances
        , DescribeInstancesOptions
        , describeMatchmaking
        , describeMatchmakingConfigurations
        , DescribeMatchmakingConfigurationsOptions
        , describeMatchmakingRuleSets
        , DescribeMatchmakingRuleSetsOptions
        , describePlayerSessions
        , DescribePlayerSessionsOptions
        , describeRuntimeConfiguration
        , describeScalingPolicies
        , DescribeScalingPoliciesOptions
        , describeScript
        , describeVpcPeeringAuthorizations
        , describeVpcPeeringConnections
        , DescribeVpcPeeringConnectionsOptions
        , getGameSessionLogUrl
        , getInstanceAccess
        , listAliases
        , ListAliasesOptions
        , listBuilds
        , ListBuildsOptions
        , listFleets
        , ListFleetsOptions
        , listScripts
        , ListScriptsOptions
        , putScalingPolicy
        , PutScalingPolicyOptions
        , requestUploadCredentials
        , resolveAlias
        , searchGameSessions
        , SearchGameSessionsOptions
        , startFleetActions
        , startGameSessionPlacement
        , StartGameSessionPlacementOptions
        , startMatchBackfill
        , StartMatchBackfillOptions
        , startMatchmaking
        , StartMatchmakingOptions
        , stopFleetActions
        , stopGameSessionPlacement
        , stopMatchmaking
        , updateAlias
        , UpdateAliasOptions
        , updateBuild
        , UpdateBuildOptions
        , updateFleetAttributes
        , UpdateFleetAttributesOptions
        , updateFleetCapacity
        , UpdateFleetCapacityOptions
        , updateFleetPortSettings
        , UpdateFleetPortSettingsOptions
        , updateGameSession
        , UpdateGameSessionOptions
        , updateGameSessionQueue
        , UpdateGameSessionQueueOptions
        , updateMatchmakingConfiguration
        , UpdateMatchmakingConfigurationOptions
        , updateRuntimeConfiguration
        , updateScript
        , UpdateScriptOptions
        , validateMatchmakingRuleSet
        , AcceptMatchOutput
        , AcceptanceType(..)
        , Alias
        , AttributeValue
        , AwsCredentials
        , BackfillMode(..)
        , Build
        , BuildStatus(..)
        , ComparisonOperatorType(..)
        , CreateAliasOutput
        , CreateBuildOutput
        , CreateFleetOutput
        , CreateGameSessionOutput
        , CreateGameSessionQueueOutput
        , CreateMatchmakingConfigurationOutput
        , CreateMatchmakingRuleSetOutput
        , CreatePlayerSessionOutput
        , CreatePlayerSessionsOutput
        , CreateScriptOutput
        , CreateVpcPeeringAuthorizationOutput
        , CreateVpcPeeringConnectionOutput
        , DeleteGameSessionQueueOutput
        , DeleteMatchmakingConfigurationOutput
        , DeleteMatchmakingRuleSetOutput
        , DeleteVpcPeeringAuthorizationOutput
        , DeleteVpcPeeringConnectionOutput
        , DescribeAliasOutput
        , DescribeBuildOutput
        , DescribeEC2InstanceLimitsOutput
        , DescribeFleetAttributesOutput
        , DescribeFleetCapacityOutput
        , DescribeFleetEventsOutput
        , DescribeFleetPortSettingsOutput
        , DescribeFleetUtilizationOutput
        , DescribeGameSessionDetailsOutput
        , DescribeGameSessionPlacementOutput
        , DescribeGameSessionQueuesOutput
        , DescribeGameSessionsOutput
        , DescribeInstancesOutput
        , DescribeMatchmakingConfigurationsOutput
        , DescribeMatchmakingOutput
        , DescribeMatchmakingRuleSetsOutput
        , DescribePlayerSessionsOutput
        , DescribeRuntimeConfigurationOutput
        , DescribeScalingPoliciesOutput
        , DescribeScriptOutput
        , DescribeVpcPeeringAuthorizationsOutput
        , DescribeVpcPeeringConnectionsOutput
        , DesiredPlayerSession
        , EC2InstanceCounts
        , EC2InstanceLimit
        , EC2InstanceType(..)
        , Event
        , EventCode(..)
        , FleetAction(..)
        , FleetAttributes
        , FleetCapacity
        , FleetStatus(..)
        , FleetType(..)
        , FleetUtilization
        , GameProperty
        , GameSession
        , GameSessionConnectionInfo
        , GameSessionDetail
        , GameSessionPlacement
        , GameSessionPlacementState(..)
        , GameSessionQueue
        , GameSessionQueueDestination
        , GameSessionStatus(..)
        , GameSessionStatusReason(..)
        , GetGameSessionLogUrlOutput
        , GetInstanceAccessOutput
        , Instance
        , InstanceAccess
        , InstanceCredentials
        , InstanceStatus(..)
        , IpPermission
        , IpProtocol(..)
        , ListAliasesOutput
        , ListBuildsOutput
        , ListFleetsOutput
        , ListScriptsOutput
        , MatchedPlayerSession
        , MatchmakingConfiguration
        , MatchmakingConfigurationStatus(..)
        , MatchmakingRuleSet
        , MatchmakingTicket
        , MetricName(..)
        , OperatingSystem(..)
        , PlacedPlayerSession
        , Player
        , PlayerLatency
        , PlayerLatencyPolicy
        , PlayerSession
        , PlayerSessionCreationPolicy(..)
        , PlayerSessionStatus(..)
        , PolicyType(..)
        , ProtectionPolicy(..)
        , PutScalingPolicyOutput
        , RequestUploadCredentialsOutput
        , ResolveAliasOutput
        , ResourceCreationLimitPolicy
        , RoutingStrategy
        , RoutingStrategyType(..)
        , RuntimeConfiguration
        , S3Location
        , ScalingAdjustmentType(..)
        , ScalingPolicy
        , ScalingStatusType(..)
        , Script
        , SearchGameSessionsOutput
        , ServerProcess
        , StartFleetActionsOutput
        , StartGameSessionPlacementOutput
        , StartMatchBackfillOutput
        , StartMatchmakingOutput
        , StopFleetActionsOutput
        , StopGameSessionPlacementOutput
        , StopMatchmakingOutput
        , TargetConfiguration
        , UpdateAliasOutput
        , UpdateBuildOutput
        , UpdateFleetAttributesOutput
        , UpdateFleetCapacityOutput
        , UpdateFleetPortSettingsOutput
        , UpdateGameSessionOutput
        , UpdateGameSessionQueueOutput
        , UpdateMatchmakingConfigurationOutput
        , UpdateRuntimeConfigurationOutput
        , UpdateScriptOutput
        , ValidateMatchmakingRuleSetOutput
        , VpcPeeringAuthorization
        , VpcPeeringConnection
        , VpcPeeringConnectionStatus
        )

{-| <fullname>Amazon GameLift Service</fullname> <p> Amazon GameLift is a managed service for developers who need a scalable, dedicated server solution for their multiplayer games. Use Amazon GameLift for these tasks: (1) set up computing resources and deploy your game servers, (2) run game sessions and get players into games, (3) automatically scale your resources to meet player demand and manage costs, and (4) track in-depth metrics on game server performance and player usage.</p> <p>When setting up hosting resources, you can deploy your custom game server or use the Amazon GameLift Realtime Servers. Realtime Servers gives you the ability to quickly stand up lightweight, efficient game servers with the core Amazon GameLift infrastructure already built in.</p> <p> <b>Get Amazon GameLift Tools and Resources</b> </p> <p>This reference guide describes the low-level service API for Amazon GameLift and provides links to language-specific SDK reference topics. See also <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-components.html"> Amazon GameLift Tools and Resources</a>.</p> <p> <b>API Summary</b> </p> <p>The Amazon GameLift service API includes two key sets of actions:</p> <ul> <li> <p>Manage game sessions and player access -- Integrate this functionality into game client services in order to create new game sessions, retrieve information on existing game sessions; reserve a player slot in a game session, request matchmaking, etc.</p> </li> <li> <p>Configure and manage game server resources -- Manage your Amazon GameLift hosting resources, including builds, scripts, fleets, queues, and aliases. Set up matchmakers, configure auto-scaling, retrieve game logs, and get hosting and game metrics.</p> </li> </ul> <p> <b> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html"> Task-based list of API actions</a> </b> </p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [acceptMatch](#acceptMatch)
* [createAlias](#createAlias)
* [CreateAliasOptions](#CreateAliasOptions)
* [createBuild](#createBuild)
* [CreateBuildOptions](#CreateBuildOptions)
* [createFleet](#createFleet)
* [CreateFleetOptions](#CreateFleetOptions)
* [createGameSession](#createGameSession)
* [CreateGameSessionOptions](#CreateGameSessionOptions)
* [createGameSessionQueue](#createGameSessionQueue)
* [CreateGameSessionQueueOptions](#CreateGameSessionQueueOptions)
* [createMatchmakingConfiguration](#createMatchmakingConfiguration)
* [CreateMatchmakingConfigurationOptions](#CreateMatchmakingConfigurationOptions)
* [createMatchmakingRuleSet](#createMatchmakingRuleSet)
* [createPlayerSession](#createPlayerSession)
* [CreatePlayerSessionOptions](#CreatePlayerSessionOptions)
* [createPlayerSessions](#createPlayerSessions)
* [CreatePlayerSessionsOptions](#CreatePlayerSessionsOptions)
* [createScript](#createScript)
* [CreateScriptOptions](#CreateScriptOptions)
* [createVpcPeeringAuthorization](#createVpcPeeringAuthorization)
* [createVpcPeeringConnection](#createVpcPeeringConnection)
* [deleteAlias](#deleteAlias)
* [deleteBuild](#deleteBuild)
* [deleteFleet](#deleteFleet)
* [deleteGameSessionQueue](#deleteGameSessionQueue)
* [deleteMatchmakingConfiguration](#deleteMatchmakingConfiguration)
* [deleteMatchmakingRuleSet](#deleteMatchmakingRuleSet)
* [deleteScalingPolicy](#deleteScalingPolicy)
* [deleteScript](#deleteScript)
* [deleteVpcPeeringAuthorization](#deleteVpcPeeringAuthorization)
* [deleteVpcPeeringConnection](#deleteVpcPeeringConnection)
* [describeAlias](#describeAlias)
* [describeBuild](#describeBuild)
* [describeEC2InstanceLimits](#describeEC2InstanceLimits)
* [DescribeEC2InstanceLimitsOptions](#DescribeEC2InstanceLimitsOptions)
* [describeFleetAttributes](#describeFleetAttributes)
* [DescribeFleetAttributesOptions](#DescribeFleetAttributesOptions)
* [describeFleetCapacity](#describeFleetCapacity)
* [DescribeFleetCapacityOptions](#DescribeFleetCapacityOptions)
* [describeFleetEvents](#describeFleetEvents)
* [DescribeFleetEventsOptions](#DescribeFleetEventsOptions)
* [describeFleetPortSettings](#describeFleetPortSettings)
* [describeFleetUtilization](#describeFleetUtilization)
* [DescribeFleetUtilizationOptions](#DescribeFleetUtilizationOptions)
* [describeGameSessionDetails](#describeGameSessionDetails)
* [DescribeGameSessionDetailsOptions](#DescribeGameSessionDetailsOptions)
* [describeGameSessionPlacement](#describeGameSessionPlacement)
* [describeGameSessionQueues](#describeGameSessionQueues)
* [DescribeGameSessionQueuesOptions](#DescribeGameSessionQueuesOptions)
* [describeGameSessions](#describeGameSessions)
* [DescribeGameSessionsOptions](#DescribeGameSessionsOptions)
* [describeInstances](#describeInstances)
* [DescribeInstancesOptions](#DescribeInstancesOptions)
* [describeMatchmaking](#describeMatchmaking)
* [describeMatchmakingConfigurations](#describeMatchmakingConfigurations)
* [DescribeMatchmakingConfigurationsOptions](#DescribeMatchmakingConfigurationsOptions)
* [describeMatchmakingRuleSets](#describeMatchmakingRuleSets)
* [DescribeMatchmakingRuleSetsOptions](#DescribeMatchmakingRuleSetsOptions)
* [describePlayerSessions](#describePlayerSessions)
* [DescribePlayerSessionsOptions](#DescribePlayerSessionsOptions)
* [describeRuntimeConfiguration](#describeRuntimeConfiguration)
* [describeScalingPolicies](#describeScalingPolicies)
* [DescribeScalingPoliciesOptions](#DescribeScalingPoliciesOptions)
* [describeScript](#describeScript)
* [describeVpcPeeringAuthorizations](#describeVpcPeeringAuthorizations)
* [describeVpcPeeringConnections](#describeVpcPeeringConnections)
* [DescribeVpcPeeringConnectionsOptions](#DescribeVpcPeeringConnectionsOptions)
* [getGameSessionLogUrl](#getGameSessionLogUrl)
* [getInstanceAccess](#getInstanceAccess)
* [listAliases](#listAliases)
* [ListAliasesOptions](#ListAliasesOptions)
* [listBuilds](#listBuilds)
* [ListBuildsOptions](#ListBuildsOptions)
* [listFleets](#listFleets)
* [ListFleetsOptions](#ListFleetsOptions)
* [listScripts](#listScripts)
* [ListScriptsOptions](#ListScriptsOptions)
* [putScalingPolicy](#putScalingPolicy)
* [PutScalingPolicyOptions](#PutScalingPolicyOptions)
* [requestUploadCredentials](#requestUploadCredentials)
* [resolveAlias](#resolveAlias)
* [searchGameSessions](#searchGameSessions)
* [SearchGameSessionsOptions](#SearchGameSessionsOptions)
* [startFleetActions](#startFleetActions)
* [startGameSessionPlacement](#startGameSessionPlacement)
* [StartGameSessionPlacementOptions](#StartGameSessionPlacementOptions)
* [startMatchBackfill](#startMatchBackfill)
* [StartMatchBackfillOptions](#StartMatchBackfillOptions)
* [startMatchmaking](#startMatchmaking)
* [StartMatchmakingOptions](#StartMatchmakingOptions)
* [stopFleetActions](#stopFleetActions)
* [stopGameSessionPlacement](#stopGameSessionPlacement)
* [stopMatchmaking](#stopMatchmaking)
* [updateAlias](#updateAlias)
* [UpdateAliasOptions](#UpdateAliasOptions)
* [updateBuild](#updateBuild)
* [UpdateBuildOptions](#UpdateBuildOptions)
* [updateFleetAttributes](#updateFleetAttributes)
* [UpdateFleetAttributesOptions](#UpdateFleetAttributesOptions)
* [updateFleetCapacity](#updateFleetCapacity)
* [UpdateFleetCapacityOptions](#UpdateFleetCapacityOptions)
* [updateFleetPortSettings](#updateFleetPortSettings)
* [UpdateFleetPortSettingsOptions](#UpdateFleetPortSettingsOptions)
* [updateGameSession](#updateGameSession)
* [UpdateGameSessionOptions](#UpdateGameSessionOptions)
* [updateGameSessionQueue](#updateGameSessionQueue)
* [UpdateGameSessionQueueOptions](#UpdateGameSessionQueueOptions)
* [updateMatchmakingConfiguration](#updateMatchmakingConfiguration)
* [UpdateMatchmakingConfigurationOptions](#UpdateMatchmakingConfigurationOptions)
* [updateRuntimeConfiguration](#updateRuntimeConfiguration)
* [updateScript](#updateScript)
* [UpdateScriptOptions](#UpdateScriptOptions)
* [validateMatchmakingRuleSet](#validateMatchmakingRuleSet)


@docs acceptMatch,createAlias,CreateAliasOptions,createBuild,CreateBuildOptions,createFleet,CreateFleetOptions,createGameSession,CreateGameSessionOptions,createGameSessionQueue,CreateGameSessionQueueOptions,createMatchmakingConfiguration,CreateMatchmakingConfigurationOptions,createMatchmakingRuleSet,createPlayerSession,CreatePlayerSessionOptions,createPlayerSessions,CreatePlayerSessionsOptions,createScript,CreateScriptOptions,createVpcPeeringAuthorization,createVpcPeeringConnection,deleteAlias,deleteBuild,deleteFleet,deleteGameSessionQueue,deleteMatchmakingConfiguration,deleteMatchmakingRuleSet,deleteScalingPolicy,deleteScript,deleteVpcPeeringAuthorization,deleteVpcPeeringConnection,describeAlias,describeBuild,describeEC2InstanceLimits,DescribeEC2InstanceLimitsOptions,describeFleetAttributes,DescribeFleetAttributesOptions,describeFleetCapacity,DescribeFleetCapacityOptions,describeFleetEvents,DescribeFleetEventsOptions,describeFleetPortSettings,describeFleetUtilization,DescribeFleetUtilizationOptions,describeGameSessionDetails,DescribeGameSessionDetailsOptions,describeGameSessionPlacement,describeGameSessionQueues,DescribeGameSessionQueuesOptions,describeGameSessions,DescribeGameSessionsOptions,describeInstances,DescribeInstancesOptions,describeMatchmaking,describeMatchmakingConfigurations,DescribeMatchmakingConfigurationsOptions,describeMatchmakingRuleSets,DescribeMatchmakingRuleSetsOptions,describePlayerSessions,DescribePlayerSessionsOptions,describeRuntimeConfiguration,describeScalingPolicies,DescribeScalingPoliciesOptions,describeScript,describeVpcPeeringAuthorizations,describeVpcPeeringConnections,DescribeVpcPeeringConnectionsOptions,getGameSessionLogUrl,getInstanceAccess,listAliases,ListAliasesOptions,listBuilds,ListBuildsOptions,listFleets,ListFleetsOptions,listScripts,ListScriptsOptions,putScalingPolicy,PutScalingPolicyOptions,requestUploadCredentials,resolveAlias,searchGameSessions,SearchGameSessionsOptions,startFleetActions,startGameSessionPlacement,StartGameSessionPlacementOptions,startMatchBackfill,StartMatchBackfillOptions,startMatchmaking,StartMatchmakingOptions,stopFleetActions,stopGameSessionPlacement,stopMatchmaking,updateAlias,UpdateAliasOptions,updateBuild,UpdateBuildOptions,updateFleetAttributes,UpdateFleetAttributesOptions,updateFleetCapacity,UpdateFleetCapacityOptions,updateFleetPortSettings,UpdateFleetPortSettingsOptions,updateGameSession,UpdateGameSessionOptions,updateGameSessionQueue,UpdateGameSessionQueueOptions,updateMatchmakingConfiguration,UpdateMatchmakingConfigurationOptions,updateRuntimeConfiguration,updateScript,UpdateScriptOptions,validateMatchmakingRuleSet

## Responses

* [AcceptMatchOutput](#AcceptMatchOutput)
* [CreateAliasOutput](#CreateAliasOutput)
* [CreateBuildOutput](#CreateBuildOutput)
* [CreateFleetOutput](#CreateFleetOutput)
* [CreateGameSessionOutput](#CreateGameSessionOutput)
* [CreateGameSessionQueueOutput](#CreateGameSessionQueueOutput)
* [CreateMatchmakingConfigurationOutput](#CreateMatchmakingConfigurationOutput)
* [CreateMatchmakingRuleSetOutput](#CreateMatchmakingRuleSetOutput)
* [CreatePlayerSessionOutput](#CreatePlayerSessionOutput)
* [CreatePlayerSessionsOutput](#CreatePlayerSessionsOutput)
* [CreateScriptOutput](#CreateScriptOutput)
* [CreateVpcPeeringAuthorizationOutput](#CreateVpcPeeringAuthorizationOutput)
* [CreateVpcPeeringConnectionOutput](#CreateVpcPeeringConnectionOutput)
* [DeleteGameSessionQueueOutput](#DeleteGameSessionQueueOutput)
* [DeleteMatchmakingConfigurationOutput](#DeleteMatchmakingConfigurationOutput)
* [DeleteMatchmakingRuleSetOutput](#DeleteMatchmakingRuleSetOutput)
* [DeleteVpcPeeringAuthorizationOutput](#DeleteVpcPeeringAuthorizationOutput)
* [DeleteVpcPeeringConnectionOutput](#DeleteVpcPeeringConnectionOutput)
* [DescribeAliasOutput](#DescribeAliasOutput)
* [DescribeBuildOutput](#DescribeBuildOutput)
* [DescribeEC2InstanceLimitsOutput](#DescribeEC2InstanceLimitsOutput)
* [DescribeFleetAttributesOutput](#DescribeFleetAttributesOutput)
* [DescribeFleetCapacityOutput](#DescribeFleetCapacityOutput)
* [DescribeFleetEventsOutput](#DescribeFleetEventsOutput)
* [DescribeFleetPortSettingsOutput](#DescribeFleetPortSettingsOutput)
* [DescribeFleetUtilizationOutput](#DescribeFleetUtilizationOutput)
* [DescribeGameSessionDetailsOutput](#DescribeGameSessionDetailsOutput)
* [DescribeGameSessionPlacementOutput](#DescribeGameSessionPlacementOutput)
* [DescribeGameSessionQueuesOutput](#DescribeGameSessionQueuesOutput)
* [DescribeGameSessionsOutput](#DescribeGameSessionsOutput)
* [DescribeInstancesOutput](#DescribeInstancesOutput)
* [DescribeMatchmakingConfigurationsOutput](#DescribeMatchmakingConfigurationsOutput)
* [DescribeMatchmakingOutput](#DescribeMatchmakingOutput)
* [DescribeMatchmakingRuleSetsOutput](#DescribeMatchmakingRuleSetsOutput)
* [DescribePlayerSessionsOutput](#DescribePlayerSessionsOutput)
* [DescribeRuntimeConfigurationOutput](#DescribeRuntimeConfigurationOutput)
* [DescribeScalingPoliciesOutput](#DescribeScalingPoliciesOutput)
* [DescribeScriptOutput](#DescribeScriptOutput)
* [DescribeVpcPeeringAuthorizationsOutput](#DescribeVpcPeeringAuthorizationsOutput)
* [DescribeVpcPeeringConnectionsOutput](#DescribeVpcPeeringConnectionsOutput)
* [GetGameSessionLogUrlOutput](#GetGameSessionLogUrlOutput)
* [GetInstanceAccessOutput](#GetInstanceAccessOutput)
* [ListAliasesOutput](#ListAliasesOutput)
* [ListBuildsOutput](#ListBuildsOutput)
* [ListFleetsOutput](#ListFleetsOutput)
* [ListScriptsOutput](#ListScriptsOutput)
* [PutScalingPolicyOutput](#PutScalingPolicyOutput)
* [RequestUploadCredentialsOutput](#RequestUploadCredentialsOutput)
* [ResolveAliasOutput](#ResolveAliasOutput)
* [SearchGameSessionsOutput](#SearchGameSessionsOutput)
* [StartFleetActionsOutput](#StartFleetActionsOutput)
* [StartGameSessionPlacementOutput](#StartGameSessionPlacementOutput)
* [StartMatchBackfillOutput](#StartMatchBackfillOutput)
* [StartMatchmakingOutput](#StartMatchmakingOutput)
* [StopFleetActionsOutput](#StopFleetActionsOutput)
* [StopGameSessionPlacementOutput](#StopGameSessionPlacementOutput)
* [StopMatchmakingOutput](#StopMatchmakingOutput)
* [UpdateAliasOutput](#UpdateAliasOutput)
* [UpdateBuildOutput](#UpdateBuildOutput)
* [UpdateFleetAttributesOutput](#UpdateFleetAttributesOutput)
* [UpdateFleetCapacityOutput](#UpdateFleetCapacityOutput)
* [UpdateFleetPortSettingsOutput](#UpdateFleetPortSettingsOutput)
* [UpdateGameSessionOutput](#UpdateGameSessionOutput)
* [UpdateGameSessionQueueOutput](#UpdateGameSessionQueueOutput)
* [UpdateMatchmakingConfigurationOutput](#UpdateMatchmakingConfigurationOutput)
* [UpdateRuntimeConfigurationOutput](#UpdateRuntimeConfigurationOutput)
* [UpdateScriptOutput](#UpdateScriptOutput)
* [ValidateMatchmakingRuleSetOutput](#ValidateMatchmakingRuleSetOutput)


@docs AcceptMatchOutput,CreateAliasOutput,CreateBuildOutput,CreateFleetOutput,CreateGameSessionOutput,CreateGameSessionQueueOutput,CreateMatchmakingConfigurationOutput,CreateMatchmakingRuleSetOutput,CreatePlayerSessionOutput,CreatePlayerSessionsOutput,CreateScriptOutput,CreateVpcPeeringAuthorizationOutput,CreateVpcPeeringConnectionOutput,DeleteGameSessionQueueOutput,DeleteMatchmakingConfigurationOutput,DeleteMatchmakingRuleSetOutput,DeleteVpcPeeringAuthorizationOutput,DeleteVpcPeeringConnectionOutput,DescribeAliasOutput,DescribeBuildOutput,DescribeEC2InstanceLimitsOutput,DescribeFleetAttributesOutput,DescribeFleetCapacityOutput,DescribeFleetEventsOutput,DescribeFleetPortSettingsOutput,DescribeFleetUtilizationOutput,DescribeGameSessionDetailsOutput,DescribeGameSessionPlacementOutput,DescribeGameSessionQueuesOutput,DescribeGameSessionsOutput,DescribeInstancesOutput,DescribeMatchmakingConfigurationsOutput,DescribeMatchmakingOutput,DescribeMatchmakingRuleSetsOutput,DescribePlayerSessionsOutput,DescribeRuntimeConfigurationOutput,DescribeScalingPoliciesOutput,DescribeScriptOutput,DescribeVpcPeeringAuthorizationsOutput,DescribeVpcPeeringConnectionsOutput,GetGameSessionLogUrlOutput,GetInstanceAccessOutput,ListAliasesOutput,ListBuildsOutput,ListFleetsOutput,ListScriptsOutput,PutScalingPolicyOutput,RequestUploadCredentialsOutput,ResolveAliasOutput,SearchGameSessionsOutput,StartFleetActionsOutput,StartGameSessionPlacementOutput,StartMatchBackfillOutput,StartMatchmakingOutput,StopFleetActionsOutput,StopGameSessionPlacementOutput,StopMatchmakingOutput,UpdateAliasOutput,UpdateBuildOutput,UpdateFleetAttributesOutput,UpdateFleetCapacityOutput,UpdateFleetPortSettingsOutput,UpdateGameSessionOutput,UpdateGameSessionQueueOutput,UpdateMatchmakingConfigurationOutput,UpdateRuntimeConfigurationOutput,UpdateScriptOutput,ValidateMatchmakingRuleSetOutput

## Records

* [Alias](#Alias)
* [AttributeValue](#AttributeValue)
* [AwsCredentials](#AwsCredentials)
* [Build](#Build)
* [DesiredPlayerSession](#DesiredPlayerSession)
* [EC2InstanceCounts](#EC2InstanceCounts)
* [EC2InstanceLimit](#EC2InstanceLimit)
* [Event](#Event)
* [FleetAttributes](#FleetAttributes)
* [FleetCapacity](#FleetCapacity)
* [FleetUtilization](#FleetUtilization)
* [GameProperty](#GameProperty)
* [GameSession](#GameSession)
* [GameSessionConnectionInfo](#GameSessionConnectionInfo)
* [GameSessionDetail](#GameSessionDetail)
* [GameSessionPlacement](#GameSessionPlacement)
* [GameSessionQueue](#GameSessionQueue)
* [GameSessionQueueDestination](#GameSessionQueueDestination)
* [Instance](#Instance)
* [InstanceAccess](#InstanceAccess)
* [InstanceCredentials](#InstanceCredentials)
* [IpPermission](#IpPermission)
* [MatchedPlayerSession](#MatchedPlayerSession)
* [MatchmakingConfiguration](#MatchmakingConfiguration)
* [MatchmakingRuleSet](#MatchmakingRuleSet)
* [MatchmakingTicket](#MatchmakingTicket)
* [PlacedPlayerSession](#PlacedPlayerSession)
* [Player](#Player)
* [PlayerLatency](#PlayerLatency)
* [PlayerLatencyPolicy](#PlayerLatencyPolicy)
* [PlayerSession](#PlayerSession)
* [ResourceCreationLimitPolicy](#ResourceCreationLimitPolicy)
* [RoutingStrategy](#RoutingStrategy)
* [RuntimeConfiguration](#RuntimeConfiguration)
* [S3Location](#S3Location)
* [ScalingPolicy](#ScalingPolicy)
* [Script](#Script)
* [ServerProcess](#ServerProcess)
* [TargetConfiguration](#TargetConfiguration)
* [VpcPeeringAuthorization](#VpcPeeringAuthorization)
* [VpcPeeringConnection](#VpcPeeringConnection)
* [VpcPeeringConnectionStatus](#VpcPeeringConnectionStatus)


@docs Alias,AttributeValue,AwsCredentials,Build,DesiredPlayerSession,EC2InstanceCounts,EC2InstanceLimit,Event,FleetAttributes,FleetCapacity,FleetUtilization,GameProperty,GameSession,GameSessionConnectionInfo,GameSessionDetail,GameSessionPlacement,GameSessionQueue,GameSessionQueueDestination,Instance,InstanceAccess,InstanceCredentials,IpPermission,MatchedPlayerSession,MatchmakingConfiguration,MatchmakingRuleSet,MatchmakingTicket,PlacedPlayerSession,Player,PlayerLatency,PlayerLatencyPolicy,PlayerSession,ResourceCreationLimitPolicy,RoutingStrategy,RuntimeConfiguration,S3Location,ScalingPolicy,Script,ServerProcess,TargetConfiguration,VpcPeeringAuthorization,VpcPeeringConnection,VpcPeeringConnectionStatus

## Unions

* [AcceptanceType](#AcceptanceType)
* [BackfillMode](#BackfillMode)
* [BuildStatus](#BuildStatus)
* [ComparisonOperatorType](#ComparisonOperatorType)
* [EC2InstanceType](#EC2InstanceType)
* [EventCode](#EventCode)
* [FleetAction](#FleetAction)
* [FleetStatus](#FleetStatus)
* [FleetType](#FleetType)
* [GameSessionPlacementState](#GameSessionPlacementState)
* [GameSessionStatus](#GameSessionStatus)
* [GameSessionStatusReason](#GameSessionStatusReason)
* [InstanceStatus](#InstanceStatus)
* [IpProtocol](#IpProtocol)
* [MatchmakingConfigurationStatus](#MatchmakingConfigurationStatus)
* [MetricName](#MetricName)
* [OperatingSystem](#OperatingSystem)
* [PlayerSessionCreationPolicy](#PlayerSessionCreationPolicy)
* [PlayerSessionStatus](#PlayerSessionStatus)
* [PolicyType](#PolicyType)
* [ProtectionPolicy](#ProtectionPolicy)
* [RoutingStrategyType](#RoutingStrategyType)
* [ScalingAdjustmentType](#ScalingAdjustmentType)
* [ScalingStatusType](#ScalingStatusType)


@docs AcceptanceType,BackfillMode,BuildStatus,ComparisonOperatorType,EC2InstanceType,EventCode,FleetAction,FleetStatus,FleetType,GameSessionPlacementState,GameSessionStatus,GameSessionStatusReason,InstanceStatus,IpProtocol,MatchmakingConfigurationStatus,MetricName,OperatingSystem,PlayerSessionCreationPolicy,PlayerSessionStatus,PolicyType,ProtectionPolicy,RoutingStrategyType,ScalingAdjustmentType,ScalingStatusType

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
        "gamelift"
        "2015-10-01"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "GameLift")



-- OPERATIONS

{-| <p>Registers a player's acceptance or rejection of a proposed FlexMatch match. A matchmaking configuration may require player acceptance; if so, then matches built with that configuration cannot be completed unless all players accept the proposed match within a specified time limit. </p> <p>When FlexMatch builds a match, all the matchmaking tickets involved in the proposed match are placed into status <code>REQUIRES_ACCEPTANCE</code>. This is a trigger for your game to get acceptance from all players in the ticket. Acceptances are only valid for tickets when they are in this status; all other acceptances result in an error.</p> <p>To register acceptance, specify the ticket ID, a response, and one or more players. Once all players have registered acceptance, the matchmaking tickets advance to status <code>PLACING</code>, where a new game session is created for the match. </p> <p>If any player rejects the match, or if acceptances are not received before a specified timeout, the proposed match is dropped. The matchmaking tickets are then handled in one of two ways: For tickets where one or more players rejected the match, the ticket status is returned to <code>SEARCHING</code> to find a new match. For tickets where one or more players failed to respond, the ticket status is set to <code>CANCELLED</code>, and processing is terminated. A new matchmaking request for these players can be submitted as needed. </p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html"> Add FlexMatch to a Game Client</a> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-events.html"> FlexMatch Events Reference</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>StartMatchmaking</a> </p> </li> <li> <p> <a>DescribeMatchmaking</a> </p> </li> <li> <p> <a>StopMatchmaking</a> </p> </li> <li> <p> <a>AcceptMatch</a> </p> </li> <li> <p> <a>StartMatchBackfill</a> </p> </li> </ul>

__Required Parameters__

* `ticketId` __:__ `String`
* `playerIds` __:__ `(List String)`
* `acceptanceType` __:__ `AcceptanceType`


-}

acceptMatch :
  
    String ->
  
    (List String) ->
  
    AcceptanceType ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AcceptMatchOutput)

acceptMatch ticketId playerIds acceptanceType =
    
    let
        requestInput = AcceptMatchInput
            
            ticketId
            
            playerIds
            
            acceptanceType
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> acceptMatchInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AcceptMatch"
                
                (AWS.Core.Decode.ResultDecoder "AcceptMatchOutput" acceptMatchOutputDecoder)
                
            )





{-| <p>Creates an alias for a fleet. In most situations, you can use an alias ID in place of a fleet ID. By using a fleet alias instead of a specific fleet ID, you can switch gameplay and players to a new fleet without changing your game client or other game components. For example, for games in production, using an alias allows you to seamlessly redirect your player base to a new game server update. </p> <p>Amazon GameLift supports two types of routing strategies for aliases: simple and terminal. A simple alias points to an active fleet. A terminal alias is used to display messaging or link to a URL instead of routing players to an active fleet. For example, you might use a terminal alias when a game version is no longer supported and you want to direct players to an upgrade site. </p> <p>To create a fleet alias, specify an alias name, routing strategy, and optional description. Each simple alias can point to only one fleet, but a fleet can have multiple aliases. If successful, a new alias record is returned, including an alias ID, which you can reference when creating a game session. You can reassign an alias to another fleet by calling <code>UpdateAlias</code>.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>

__Required Parameters__

* `name` __:__ `String`
* `routingStrategy` __:__ `RoutingStrategy`


-}

createAlias :
  
    String ->
  
    RoutingStrategy ->
  
  
    ( CreateAliasOptions -> CreateAliasOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateAliasOutput)

createAlias name routingStrategy setOptions =
    
    let
        requestInput = CreateAliasInput
            
            name
            
            options.description
            
            routingStrategy
            
        
        options = setOptions (CreateAliasOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createAliasInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateAlias"
                
                (AWS.Core.Decode.ResultDecoder "CreateAliasOutput" createAliasOutputDecoder)
                
            )



{-| Options for a createAlias request
-}
type alias CreateAliasOptions =
    {
    description : Maybe String
    }



{-| <p>Creates a new Amazon GameLift build record for your game server binary files and points to the location of your game server build files in an Amazon Simple Storage Service (Amazon S3) location. </p> <p>Game server binaries must be combined into a <code>.zip</code> file for use with Amazon GameLift. </p> <important> <p>To create new builds quickly and easily, use the AWS CLI command <b> <a href="https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html">upload-build</a> </b>. This helper command uploads your build and creates a new build record in one step, and automatically handles the necessary permissions. </p> </important> <p>The <code>CreateBuild</code> operation should be used only when you need to manually upload your build files, as in the following scenarios:</p> <ul> <li> <p>Store a build file in an Amazon S3 bucket under your own AWS account. To use this option, you must first give Amazon GameLift access to that Amazon S3 bucket. To create a new build record using files in your Amazon S3 bucket, call <code>CreateBuild</code> and specify a build name, operating system, and the storage location of your game build.</p> </li> <li> <p>Upload a build file directly to Amazon GameLift's Amazon S3 account. To use this option, you first call <code>CreateBuild</code> with a build name and operating system. This action creates a new build record and returns an Amazon S3 storage location (bucket and key only) and temporary access credentials. Use the credentials to manually upload your build file to the storage location (see the Amazon S3 topic <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html">Uploading Objects</a>). You can upload files to a location only once. </p> </li> </ul> <p>If successful, this operation creates a new build record with a unique build ID and places it in <code>INITIALIZED</code> status. You can use <a>DescribeBuild</a> to check the status of your build. A build must be in <code>READY</code> status before it can be used to create fleets.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">Uploading Your Game</a> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build"> Create a Build with Files in Amazon S3</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>

__Required Parameters__



-}

createBuild :
  
  
    ( CreateBuildOptions -> CreateBuildOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateBuildOutput)

createBuild setOptions =
    
    let
        requestInput = CreateBuildInput
            
            options.name
            
            options.version
            
            options.storageLocation
            
            options.operatingSystem
            
        
        options = setOptions (CreateBuildOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createBuildInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateBuild"
                
                (AWS.Core.Decode.ResultDecoder "CreateBuildOutput" createBuildOutputDecoder)
                
            )



{-| Options for a createBuild request
-}
type alias CreateBuildOptions =
    {
    name : Maybe String,version : Maybe String,storageLocation : Maybe S3Location,operatingSystem : Maybe OperatingSystem
    }



{-| <p>Creates a new fleet to run your game servers. whether they are custom game builds or Realtime Servers with game-specific script. A fleet is a set of Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can host multiple game sessions. When creating a fleet, you choose the hardware specifications, set some configuration options, and specify the game server to deploy on the new fleet. </p> <p>To create a new fleet, you must provide the following: (1) a fleet name, (2) an EC2 instance type and fleet type (spot or on-demand), (3) the build ID for your game build or script ID if using Realtime Servers, and (4) a run-time configuration, which determines how game servers will run on each instance in the fleet. </p> <note> <p>When creating a Realtime Servers fleet, we recommend using a minimal version of the Realtime script (see this <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-script.html#realtime-script-examples"> working code example </a>). This will make it much easier to troubleshoot any fleet creation issues. Once the fleet is active, you can update your Realtime script as needed.</p> </note> <p>If the <code>CreateFleet</code> call is successful, Amazon GameLift performs the following tasks. You can track the process of a fleet by checking the fleet status or by monitoring fleet creation events:</p> <ul> <li> <p>Creates a fleet record. Status: <code>NEW</code>.</p> </li> <li> <p>Begins writing events to the fleet event log, which can be accessed in the Amazon GameLift console.</p> <p>Sets the fleet's target capacity to 1 (desired instances), which triggers Amazon GameLift to start one new EC2 instance.</p> </li> <li> <p>Downloads the game build or Realtime script to the new instance and installs it. Statuses: <code>DOWNLOADING</code>, <code>VALIDATING</code>, <code>BUILDING</code>. </p> </li> <li> <p>Starts launching server processes on the instance. If the fleet is configured to run multiple server processes per instance, Amazon GameLift staggers each launch by a few seconds. Status: <code>ACTIVATING</code>.</p> </li> <li> <p>Sets the fleet's status to <code>ACTIVE</code> as soon as one server process is ready to host a game session.</p> </li> </ul> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html"> Debug Fleet Creation Issues</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `name` __:__ `String`
* `eC2InstanceType` __:__ `EC2InstanceType`


-}

createFleet :
  
    String ->
  
    EC2InstanceType ->
  
  
    ( CreateFleetOptions -> CreateFleetOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateFleetOutput)

createFleet name eC2InstanceType setOptions =
    
    let
        requestInput = CreateFleetInput
            
            name
            
            options.description
            
            options.buildId
            
            options.scriptId
            
            options.serverLaunchPath
            
            options.serverLaunchParameters
            
            options.logPaths
            
            eC2InstanceType
            
            options.eC2InboundPermissions
            
            options.newGameSessionProtectionPolicy
            
            options.runtimeConfiguration
            
            options.resourceCreationLimitPolicy
            
            options.metricGroups
            
            options.peerVpcAwsAccountId
            
            options.peerVpcId
            
            options.fleetType
            
            options.instanceRoleArn
            
        
        options = setOptions (CreateFleetOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createFleetInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateFleet"
                
                (AWS.Core.Decode.ResultDecoder "CreateFleetOutput" createFleetOutputDecoder)
                
            )



{-| Options for a createFleet request
-}
type alias CreateFleetOptions =
    {
    description : Maybe String,buildId : Maybe String,scriptId : Maybe String,serverLaunchPath : Maybe String,serverLaunchParameters : Maybe String,logPaths : Maybe (List String),eC2InboundPermissions : Maybe (List IpPermission),newGameSessionProtectionPolicy : Maybe ProtectionPolicy,runtimeConfiguration : Maybe RuntimeConfiguration,resourceCreationLimitPolicy : Maybe ResourceCreationLimitPolicy,metricGroups : Maybe (List String),peerVpcAwsAccountId : Maybe String,peerVpcId : Maybe String,fleetType : Maybe FleetType,instanceRoleArn : Maybe String
    }



{-| <p>Creates a multiplayer game session for players. This action creates a game session record and assigns an available server process in the specified fleet to host the game session. A fleet must have an <code>ACTIVE</code> status before a game session can be created in it.</p> <p>To create a game session, specify either fleet ID or alias ID and indicate a maximum number of players to allow in the game session. You can also provide a name and game-specific properties for this game session. If successful, a <a>GameSession</a> object is returned containing the game session properties and other settings you specified.</p> <p> <b>Idempotency tokens.</b> You can add a token that uniquely identifies game session requests. This is useful for ensuring that game session requests are idempotent. Multiple requests with the same idempotency token are processed only once; subsequent requests return the original result. All response values are the same with the exception of game session status, which may change.</p> <p> <b>Resource creation limits.</b> If you are creating a game session on a fleet with a resource creation limit policy in force, then you must specify a creator ID. Without this ID, Amazon GameLift has no way to evaluate the policy for this new game session request.</p> <p> <b>Player acceptance policy.</b> By default, newly created game sessions are open to new players. You can restrict new player access by using <a>UpdateGameSession</a> to change the game session's player session creation policy.</p> <p> <b>Game session logs.</b> Logs are retained for all active game sessions for 14 days. To access the logs, call <a>GetGameSessionLogUrl</a> to download the log files.</p> <p> <i>Available in Amazon GameLift Local.</i> </p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `maximumPlayerSessionCount` __:__ `Int`


-}

createGameSession :
  
    Int ->
  
  
    ( CreateGameSessionOptions -> CreateGameSessionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateGameSessionOutput)

createGameSession maximumPlayerSessionCount setOptions =
    
    let
        requestInput = CreateGameSessionInput
            
            options.fleetId
            
            options.aliasId
            
            maximumPlayerSessionCount
            
            options.name
            
            options.gameProperties
            
            options.creatorId
            
            options.gameSessionId
            
            options.idempotencyToken
            
            options.gameSessionData
            
        
        options = setOptions (CreateGameSessionOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createGameSessionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateGameSession"
                
                (AWS.Core.Decode.ResultDecoder "CreateGameSessionOutput" createGameSessionOutputDecoder)
                
            )



{-| Options for a createGameSession request
-}
type alias CreateGameSessionOptions =
    {
    fleetId : Maybe String,aliasId : Maybe String,name : Maybe String,gameProperties : Maybe (List GameProperty),creatorId : Maybe String,gameSessionId : Maybe String,idempotencyToken : Maybe String,gameSessionData : Maybe String
    }



{-| <p>Establishes a new queue for processing requests to place new game sessions. A queue identifies where new game sessions can be hosted -- by specifying a list of destinations (fleets or aliases) -- and how long requests can wait in the queue before timing out. You can set up a queue to try to place game sessions on fleets in multiple regions. To add placement requests to a queue, call <a>StartGameSessionPlacement</a> and reference the queue name.</p> <p> <b>Destination order.</b> When processing a request for a game session, Amazon GameLift tries each destination in order until it finds one with available resources to host the new game session. A queue's default order is determined by how destinations are listed. The default order is overridden when a game session placement request provides player latency information. Player latency information enables Amazon GameLift to prioritize destinations where players report the lowest average latency, as a result placing the new game session where the majority of players will have the best possible gameplay experience.</p> <p> <b>Player latency policies.</b> For placement requests containing player latency information, use player latency policies to protect individual players from very high latencies. With a latency cap, even when a destination can deliver a low latency for most players, the game is not placed where any individual player is reporting latency higher than a policy's maximum. A queue can have multiple latency policies, which are enforced consecutively starting with the policy with the lowest latency cap. Use multiple policies to gradually relax latency controls; for example, you might set a policy with a low latency cap for the first 60 seconds, a second policy with a higher cap for the next 60 seconds, etc. </p> <p>To create a new queue, provide a name, timeout value, a list of destinations and, if desired, a set of latency policies. If successful, a new queue object is returned.</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>

__Required Parameters__

* `name` __:__ `String`


-}

createGameSessionQueue :
  
    String ->
  
  
    ( CreateGameSessionQueueOptions -> CreateGameSessionQueueOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateGameSessionQueueOutput)

createGameSessionQueue name setOptions =
    
    let
        requestInput = CreateGameSessionQueueInput
            
            name
            
            options.timeoutInSeconds
            
            options.playerLatencyPolicies
            
            options.destinations
            
        
        options = setOptions (CreateGameSessionQueueOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createGameSessionQueueInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateGameSessionQueue"
                
                (AWS.Core.Decode.ResultDecoder "CreateGameSessionQueueOutput" createGameSessionQueueOutputDecoder)
                
            )



{-| Options for a createGameSessionQueue request
-}
type alias CreateGameSessionQueueOptions =
    {
    timeoutInSeconds : Maybe Int,playerLatencyPolicies : Maybe (List PlayerLatencyPolicy),destinations : Maybe (List GameSessionQueueDestination)
    }



{-| <p>Defines a new matchmaking configuration for use with FlexMatch. A matchmaking configuration sets out guidelines for matching players and getting the matches into games. You can set up multiple matchmaking configurations to handle the scenarios needed for your game. Each matchmaking ticket (<a>StartMatchmaking</a> or <a>StartMatchBackfill</a>) specifies a configuration for the match and provides player attributes to support the configuration being used. </p> <p>To create a matchmaking configuration, at a minimum you must specify the following: configuration name; a rule set that governs how to evaluate players and find acceptable matches; a game session queue to use when placing a new game session for the match; and the maximum time allowed for a matchmaking attempt.</p> <p>There are two ways to track the progress of matchmaking tickets: (1) polling ticket status with <a>DescribeMatchmaking</a>; or (2) receiving notifications with Amazon Simple Notification Service (SNS). To use notifications, you first need to set up an SNS topic to receive the notifications, and provide the topic ARN in the matchmaking configuration. Since notifications promise only "best effort" delivery, we recommend calling <code>DescribeMatchmaking</code> if no notifications are received within 30 seconds.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html"> Design a FlexMatch Matchmaker</a> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html"> Setting up Notifications for Matchmaking</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>

__Required Parameters__

* `name` __:__ `String`
* `gameSessionQueueArns` __:__ `(List String)`
* `requestTimeoutSeconds` __:__ `Int`
* `acceptanceRequired` __:__ `Bool`
* `ruleSetName` __:__ `String`


-}

createMatchmakingConfiguration :
  
    String ->
  
    (List String) ->
  
    Int ->
  
    Bool ->
  
    String ->
  
  
    ( CreateMatchmakingConfigurationOptions -> CreateMatchmakingConfigurationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateMatchmakingConfigurationOutput)

createMatchmakingConfiguration name gameSessionQueueArns requestTimeoutSeconds acceptanceRequired ruleSetName setOptions =
    
    let
        requestInput = CreateMatchmakingConfigurationInput
            
            name
            
            options.description
            
            gameSessionQueueArns
            
            requestTimeoutSeconds
            
            options.acceptanceTimeoutSeconds
            
            acceptanceRequired
            
            ruleSetName
            
            options.notificationTarget
            
            options.additionalPlayerCount
            
            options.customEventData
            
            options.gameProperties
            
            options.gameSessionData
            
            options.backfillMode
            
        
        options = setOptions (CreateMatchmakingConfigurationOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createMatchmakingConfigurationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateMatchmakingConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "CreateMatchmakingConfigurationOutput" createMatchmakingConfigurationOutputDecoder)
                
            )



{-| Options for a createMatchmakingConfiguration request
-}
type alias CreateMatchmakingConfigurationOptions =
    {
    description : Maybe String,acceptanceTimeoutSeconds : Maybe Int,notificationTarget : Maybe String,additionalPlayerCount : Maybe Int,customEventData : Maybe String,gameProperties : Maybe (List GameProperty),gameSessionData : Maybe String,backfillMode : Maybe BackfillMode
    }



{-| <p>Creates a new rule set for FlexMatch matchmaking. A rule set describes the type of match to create, such as the number and size of teams, and sets the parameters for acceptable player matches, such as minimum skill level or character type. A rule set is used by a <a>MatchmakingConfiguration</a>. </p> <p>To create a matchmaking rule set, provide unique rule set name and the rule set body in JSON format. Rule sets must be defined in the same region as the matchmaking configuration they are used with.</p> <p>Since matchmaking rule sets cannot be edited, it is a good idea to check the rule set syntax using <a>ValidateMatchmakingRuleSet</a> before creating a new rule set.</p> <p> <b>Learn more</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html">Build a Rule Set</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html">Design a Matchmaker</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html">Matchmaking with FlexMatch</a> </p> </li> </ul> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>

__Required Parameters__

* `name` __:__ `String`
* `ruleSetBody` __:__ `String`


-}

createMatchmakingRuleSet :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateMatchmakingRuleSetOutput)

createMatchmakingRuleSet name ruleSetBody =
    
    let
        requestInput = CreateMatchmakingRuleSetInput
            
            name
            
            ruleSetBody
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createMatchmakingRuleSetInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateMatchmakingRuleSet"
                
                (AWS.Core.Decode.ResultDecoder "CreateMatchmakingRuleSetOutput" createMatchmakingRuleSetOutputDecoder)
                
            )





{-| <p>Reserves an open player slot in an active game session. Before a player can be added, a game session must have an <code>ACTIVE</code> status, have a creation policy of <code>ALLOW_ALL</code>, and have an open player slot. To add a group of players to a game session, use <a>CreatePlayerSessions</a>. When the player connects to the game server and references a player session ID, the game server contacts the Amazon GameLift service to validate the player reservation and accept the player.</p> <p>To create a player session, specify a game session ID, player ID, and optionally a string of player data. If successful, a slot is reserved in the game session for the player and a new <a>PlayerSession</a> object is returned. Player sessions cannot be updated. </p> <p> <i>Available in Amazon GameLift Local.</i> </p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `gameSessionId` __:__ `String`
* `playerId` __:__ `String`


-}

createPlayerSession :
  
    String ->
  
    String ->
  
  
    ( CreatePlayerSessionOptions -> CreatePlayerSessionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePlayerSessionOutput)

createPlayerSession gameSessionId playerId setOptions =
    
    let
        requestInput = CreatePlayerSessionInput
            
            gameSessionId
            
            playerId
            
            options.playerData
            
        
        options = setOptions (CreatePlayerSessionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createPlayerSessionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePlayerSession"
                
                (AWS.Core.Decode.ResultDecoder "CreatePlayerSessionOutput" createPlayerSessionOutputDecoder)
                
            )



{-| Options for a createPlayerSession request
-}
type alias CreatePlayerSessionOptions =
    {
    playerData : Maybe String
    }



{-| <p>Reserves open slots in a game session for a group of players. Before players can be added, a game session must have an <code>ACTIVE</code> status, have a creation policy of <code>ALLOW_ALL</code>, and have an open player slot. To add a single player to a game session, use <a>CreatePlayerSession</a>. When a player connects to the game server and references a player session ID, the game server contacts the Amazon GameLift service to validate the player reservation and accept the player.</p> <p>To create player sessions, specify a game session ID, a list of player IDs, and optionally a set of player data strings. If successful, a slot is reserved in the game session for each player and a set of new <a>PlayerSession</a> objects is returned. Player sessions cannot be updated.</p> <p> <i>Available in Amazon GameLift Local.</i> </p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `gameSessionId` __:__ `String`
* `playerIds` __:__ `(List String)`


-}

createPlayerSessions :
  
    String ->
  
    (List String) ->
  
  
    ( CreatePlayerSessionsOptions -> CreatePlayerSessionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePlayerSessionsOutput)

createPlayerSessions gameSessionId playerIds setOptions =
    
    let
        requestInput = CreatePlayerSessionsInput
            
            gameSessionId
            
            playerIds
            
            options.playerDataMap
            
        
        options = setOptions (CreatePlayerSessionsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createPlayerSessionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePlayerSessions"
                
                (AWS.Core.Decode.ResultDecoder "CreatePlayerSessionsOutput" createPlayerSessionsOutputDecoder)
                
            )



{-| Options for a createPlayerSessions request
-}
type alias CreatePlayerSessionsOptions =
    {
    playerDataMap : Maybe (Dict String String)
    }



{-| <p>Creates a new script record for your Realtime Servers script. Realtime scripts are JavaScript that provide configuration settings and optional custom game logic for your game. The script is deployed when you create a Realtime Servers fleet to host your game sessions. Script logic is executed during an active game session. </p> <p>To create a new script record, specify a script name and provide the script file(s). The script files and all dependencies must be zipped into a single file. You can pull the zip file from either of these locations: </p> <ul> <li> <p>A locally available directory. Use the <i>ZipFile</i> parameter for this option.</p> </li> <li> <p>An Amazon Simple Storage Service (Amazon S3) bucket under your AWS account. Use the <i>StorageLocation</i> parameter for this option. You'll need to have an Identity Access Management (IAM) role that allows the Amazon GameLift service to access your S3 bucket. </p> </li> </ul> <p>If the call is successful, a new script record is created with a unique script ID. If the script file is provided as a local file, the file is uploaded to an Amazon GameLift-owned S3 bucket and the script record's storage location reflects this location. If the script file is provided as an S3 bucket, Amazon GameLift accesses the file at this storage location as needed for deployment.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Realtime Servers</a> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html">Set Up a Role for Amazon GameLift Access</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateScript</a> </p> </li> <li> <p> <a>ListScripts</a> </p> </li> <li> <p> <a>DescribeScript</a> </p> </li> <li> <p> <a>UpdateScript</a> </p> </li> <li> <p> <a>DeleteScript</a> </p> </li> </ul>

__Required Parameters__



-}

createScript :
  
  
    ( CreateScriptOptions -> CreateScriptOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateScriptOutput)

createScript setOptions =
    
    let
        requestInput = CreateScriptInput
            
            options.name
            
            options.version
            
            options.storageLocation
            
            options.zipFile
            
        
        options = setOptions (CreateScriptOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createScriptInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateScript"
                
                (AWS.Core.Decode.ResultDecoder "CreateScriptOutput" createScriptOutputDecoder)
                
            )



{-| Options for a createScript request
-}
type alias CreateScriptOptions =
    {
    name : Maybe String,version : Maybe String,storageLocation : Maybe S3Location,zipFile : Maybe String
    }



{-| <p>Requests authorization to create or delete a peer connection between the VPC for your Amazon GameLift fleet and a virtual private cloud (VPC) in your AWS account. VPC peering enables the game servers on your fleet to communicate directly with other AWS resources. Once you've received authorization, call <a>CreateVpcPeeringConnection</a> to establish the peering connection. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Fleets</a>.</p> <p>You can peer with VPCs that are owned by any AWS account you have access to, including the account that you use to manage your Amazon GameLift fleets. You cannot peer with VPCs that are in different regions.</p> <p>To request authorization to create a connection, call this operation from the AWS account with the VPC that you want to peer to your Amazon GameLift fleet. For example, to enable your game servers to retrieve data from a DynamoDB table, use the account that manages that DynamoDB resource. Identify the following values: (1) The ID of the VPC that you want to peer with, and (2) the ID of the AWS account that you use to manage Amazon GameLift. If successful, VPC peering is authorized for the specified VPC. </p> <p>To request authorization to delete a connection, call this operation from the AWS account with the VPC that is peered with your Amazon GameLift fleet. Identify the following values: (1) VPC ID that you want to delete the peering connection for, and (2) ID of the AWS account that you use to manage Amazon GameLift. </p> <p>The authorization remains valid for 24 hours unless it is canceled by a call to <a>DeleteVpcPeeringAuthorization</a>. You must create or delete the peering connection while the authorization is valid. </p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>

__Required Parameters__

* `gameLiftAwsAccountId` __:__ `String`
* `peerVpcId` __:__ `String`


-}

createVpcPeeringAuthorization :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateVpcPeeringAuthorizationOutput)

createVpcPeeringAuthorization gameLiftAwsAccountId peerVpcId =
    
    let
        requestInput = CreateVpcPeeringAuthorizationInput
            
            gameLiftAwsAccountId
            
            peerVpcId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createVpcPeeringAuthorizationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateVpcPeeringAuthorization"
                
                (AWS.Core.Decode.ResultDecoder "CreateVpcPeeringAuthorizationOutput" createVpcPeeringAuthorizationOutputDecoder)
                
            )





{-| <p>Establishes a VPC peering connection between a virtual private cloud (VPC) in an AWS account with the VPC for your Amazon GameLift fleet. VPC peering enables the game servers on your fleet to communicate directly with other AWS resources. You can peer with VPCs in any AWS account that you have access to, including the account that you use to manage your Amazon GameLift fleets. You cannot peer with VPCs that are in different regions. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Fleets</a>.</p> <p>Before calling this operation to establish the peering connection, you first need to call <a>CreateVpcPeeringAuthorization</a> and identify the VPC you want to peer with. Once the authorization for the specified VPC is issued, you have 24 hours to establish the connection. These two operations handle all tasks necessary to peer the two VPCs, including acceptance, updating routing tables, etc. </p> <p>To establish the connection, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Identify the following values: (1) The ID of the fleet you want to be enable a VPC peering connection for; (2) The AWS account with the VPC that you want to peer with; and (3) The ID of the VPC you want to peer with. This operation is asynchronous. If successful, a <a>VpcPeeringConnection</a> request is created. You can use continuous polling to track the request's status using <a>DescribeVpcPeeringConnections</a>, or by monitoring fleet events for success or failure using <a>DescribeFleetEvents</a>. </p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`
* `peerVpcAwsAccountId` __:__ `String`
* `peerVpcId` __:__ `String`


-}

createVpcPeeringConnection :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateVpcPeeringConnectionOutput)

createVpcPeeringConnection fleetId peerVpcAwsAccountId peerVpcId =
    
    let
        requestInput = CreateVpcPeeringConnectionInput
            
            fleetId
            
            peerVpcAwsAccountId
            
            peerVpcId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createVpcPeeringConnectionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateVpcPeeringConnection"
                
                (AWS.Core.Decode.ResultDecoder "CreateVpcPeeringConnectionOutput" createVpcPeeringConnectionOutputDecoder)
                
            )





{-| <p>Deletes an alias. This action removes all record of the alias. Game clients attempting to access a server process using the deleted alias receive an error. To delete an alias, specify the alias ID to be deleted.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>

__Required Parameters__

* `aliasId` __:__ `String`


-}

deleteAlias :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteAlias aliasId =
    
    let
        requestInput = DeleteAliasInput
            
            aliasId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteAliasInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteAlias"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a build. This action permanently deletes the build record and any uploaded build files.</p> <p>To delete a build, specify its ID. Deleting a build does not affect the status of any active fleets using the build, but you can no longer create new fleets with the deleted build.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/build-intro.html"> Working with Builds</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>

__Required Parameters__

* `buildId` __:__ `String`


-}

deleteBuild :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteBuild buildId =
    
    let
        requestInput = DeleteBuildInput
            
            buildId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteBuildInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteBuild"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes everything related to a fleet. Before deleting a fleet, you must set the fleet's desired capacity to zero. See <a>UpdateFleetCapacity</a>.</p> <p>If the fleet being deleted has a VPC peering connection, you first need to get a valid authorization (good for 24 hours) by calling <a>CreateVpcPeeringAuthorization</a>. You do not need to explicitly delete the VPC peering connection--this is done as part of the delete fleet process.</p> <p>This action removes the fleet's resources and the fleet record. Once a fleet is deleted, you can no longer use that fleet.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`


-}

deleteFleet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteFleet fleetId =
    
    let
        requestInput = DeleteFleetInput
            
            fleetId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteFleetInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteFleet"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a game session queue. This action means that any <a>StartGameSessionPlacement</a> requests that reference this queue will fail. To delete a queue, specify the queue name.</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>

__Required Parameters__

* `name` __:__ `String`


-}

deleteGameSessionQueue :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteGameSessionQueueOutput)

deleteGameSessionQueue name =
    
    let
        requestInput = DeleteGameSessionQueueInput
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteGameSessionQueueInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteGameSessionQueue"
                
                (AWS.Core.Decode.ResultDecoder "DeleteGameSessionQueueOutput" deleteGameSessionQueueOutputDecoder)
                
            )





{-| <p>Permanently removes a FlexMatch matchmaking configuration. To delete, specify the configuration name. A matchmaking configuration cannot be deleted if it is being used in any active matchmaking tickets.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>

__Required Parameters__

* `name` __:__ `String`


-}

deleteMatchmakingConfiguration :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteMatchmakingConfigurationOutput)

deleteMatchmakingConfiguration name =
    
    let
        requestInput = DeleteMatchmakingConfigurationInput
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteMatchmakingConfigurationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteMatchmakingConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "DeleteMatchmakingConfigurationOutput" deleteMatchmakingConfigurationOutputDecoder)
                
            )





{-| <p>Deletes an existing matchmaking rule set. To delete the rule set, provide the rule set name. Rule sets cannot be deleted if they are currently being used by a matchmaking configuration. </p> <p> <b>Learn more</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html">Build a Rule Set</a> </p> </li> </ul> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>

__Required Parameters__

* `name` __:__ `String`


-}

deleteMatchmakingRuleSet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteMatchmakingRuleSetOutput)

deleteMatchmakingRuleSet name =
    
    let
        requestInput = DeleteMatchmakingRuleSetInput
            
            name
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteMatchmakingRuleSetInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteMatchmakingRuleSet"
                
                (AWS.Core.Decode.ResultDecoder "DeleteMatchmakingRuleSetOutput" deleteMatchmakingRuleSetOutputDecoder)
                
            )





{-| <p>Deletes a fleet scaling policy. This action means that the policy is no longer in force and removes all record of it. To delete a scaling policy, specify both the scaling policy name and the fleet ID it is associated with.</p> <p>To temporarily suspend scaling policies, call <a>StopFleetActions</a>. This operation suspends all policies for the fleet.</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p>Manage scaling policies:</p> <ul> <li> <p> <a>PutScalingPolicy</a> (auto-scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (auto-scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (auto-scaling)</p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `name` __:__ `String`
* `fleetId` __:__ `String`


-}

deleteScalingPolicy :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteScalingPolicy name fleetId =
    
    let
        requestInput = DeleteScalingPolicyInput
            
            name
            
            fleetId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteScalingPolicyInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteScalingPolicy"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes a Realtime script. This action permanently deletes the script record. If script files were uploaded, they are also deleted (files stored in an S3 bucket are not deleted). </p> <p>To delete a script, specify the script ID. Before deleting a script, be sure to terminate all fleets that are deployed with the script being deleted. Fleet instances periodically check for script updates, and if the script record no longer exists, the instance will go into an error state and be unable to host game sessions.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Realtime Servers</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateScript</a> </p> </li> <li> <p> <a>ListScripts</a> </p> </li> <li> <p> <a>DescribeScript</a> </p> </li> <li> <p> <a>UpdateScript</a> </p> </li> <li> <p> <a>DeleteScript</a> </p> </li> </ul>

__Required Parameters__

* `scriptId` __:__ `String`


-}

deleteScript :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteScript scriptId =
    
    let
        requestInput = DeleteScriptInput
            
            scriptId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteScriptInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteScript"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Cancels a pending VPC peering authorization for the specified VPC. If you need to delete an existing VPC peering connection, call <a>DeleteVpcPeeringConnection</a>. </p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>

__Required Parameters__

* `gameLiftAwsAccountId` __:__ `String`
* `peerVpcId` __:__ `String`


-}

deleteVpcPeeringAuthorization :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteVpcPeeringAuthorizationOutput)

deleteVpcPeeringAuthorization gameLiftAwsAccountId peerVpcId =
    
    let
        requestInput = DeleteVpcPeeringAuthorizationInput
            
            gameLiftAwsAccountId
            
            peerVpcId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteVpcPeeringAuthorizationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteVpcPeeringAuthorization"
                
                (AWS.Core.Decode.ResultDecoder "DeleteVpcPeeringAuthorizationOutput" deleteVpcPeeringAuthorizationOutputDecoder)
                
            )





{-| <p>Removes a VPC peering connection. To delete the connection, you must have a valid authorization for the VPC peering connection that you want to delete. You can check for an authorization by calling <a>DescribeVpcPeeringAuthorizations</a> or request a new one using <a>CreateVpcPeeringAuthorization</a>. </p> <p>Once a valid authorization exists, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Identify the connection to delete by the connection ID and fleet ID. If successful, the connection is removed. </p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`
* `vpcPeeringConnectionId` __:__ `String`


-}

deleteVpcPeeringConnection :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteVpcPeeringConnectionOutput)

deleteVpcPeeringConnection fleetId vpcPeeringConnectionId =
    
    let
        requestInput = DeleteVpcPeeringConnectionInput
            
            fleetId
            
            vpcPeeringConnectionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteVpcPeeringConnectionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteVpcPeeringConnection"
                
                (AWS.Core.Decode.ResultDecoder "DeleteVpcPeeringConnectionOutput" deleteVpcPeeringConnectionOutputDecoder)
                
            )





{-| <p>Retrieves properties for an alias. This operation returns all alias metadata and settings. To get an alias's target fleet ID only, use <code>ResolveAlias</code>. </p> <p>To get alias properties, specify the alias ID. If successful, the requested alias record is returned.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>

__Required Parameters__

* `aliasId` __:__ `String`


-}

describeAlias :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeAliasOutput)

describeAlias aliasId =
    
    let
        requestInput = DescribeAliasInput
            
            aliasId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeAliasInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeAlias"
                
                (AWS.Core.Decode.ResultDecoder "DescribeAliasOutput" describeAliasOutputDecoder)
                
            )





{-| <p>Retrieves properties for a build. To request a build record, specify a build ID. If successful, an object containing the build properties is returned.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/build-intro.html"> Working with Builds</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>

__Required Parameters__

* `buildId` __:__ `String`


-}

describeBuild :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeBuildOutput)

describeBuild buildId =
    
    let
        requestInput = DescribeBuildInput
            
            buildId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeBuildInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeBuild"
                
                (AWS.Core.Decode.ResultDecoder "DescribeBuildOutput" describeBuildOutputDecoder)
                
            )





{-| <p>Retrieves the following information for the specified EC2 instance type:</p> <ul> <li> <p>maximum number of instances allowed per AWS account (service limit)</p> </li> <li> <p>current usage level for the AWS account</p> </li> </ul> <p>Service limits vary depending on region. Available regions for Amazon GameLift can be found in the AWS Management Console for Amazon GameLift (see the drop-down list in the upper right corner).</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__



-}

describeEC2InstanceLimits :
  
  
    ( DescribeEC2InstanceLimitsOptions -> DescribeEC2InstanceLimitsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeEC2InstanceLimitsOutput)

describeEC2InstanceLimits setOptions =
    
    let
        requestInput = DescribeEC2InstanceLimitsInput
            
            options.eC2InstanceType
            
        
        options = setOptions (DescribeEC2InstanceLimitsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeEC2InstanceLimitsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeEC2InstanceLimits"
                
                (AWS.Core.Decode.ResultDecoder "DescribeEC2InstanceLimitsOutput" describeEC2InstanceLimitsOutputDecoder)
                
            )



{-| Options for a describeEC2InstanceLimits request
-}
type alias DescribeEC2InstanceLimitsOptions =
    {
    eC2InstanceType : Maybe EC2InstanceType
    }



{-| <p>Retrieves fleet properties, including metadata, status, and configuration, for one or more fleets. You can request attributes for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>FleetAttributes</a> object is returned for each requested fleet ID. When specifying a list of fleet IDs, attribute objects are returned only for fleets that currently exist. </p> <note> <p>Some API actions may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.</p> </note> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__



-}

describeFleetAttributes :
  
  
    ( DescribeFleetAttributesOptions -> DescribeFleetAttributesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeFleetAttributesOutput)

describeFleetAttributes setOptions =
    
    let
        requestInput = DescribeFleetAttributesInput
            
            options.fleetIds
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribeFleetAttributesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeFleetAttributesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeFleetAttributes"
                
                (AWS.Core.Decode.ResultDecoder "DescribeFleetAttributesOutput" describeFleetAttributesOutputDecoder)
                
            )



{-| Options for a describeFleetAttributes request
-}
type alias DescribeFleetAttributesOptions =
    {
    fleetIds : Maybe (List String),limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves the current status of fleet capacity for one or more fleets. This information includes the number of instances that have been requested for the fleet and the number currently active. You can request capacity for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>FleetCapacity</a> object is returned for each requested fleet ID. When specifying a list of fleet IDs, attribute objects are returned only for fleets that currently exist. </p> <note> <p>Some API actions may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.</p> </note> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__



-}

describeFleetCapacity :
  
  
    ( DescribeFleetCapacityOptions -> DescribeFleetCapacityOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeFleetCapacityOutput)

describeFleetCapacity setOptions =
    
    let
        requestInput = DescribeFleetCapacityInput
            
            options.fleetIds
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribeFleetCapacityOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeFleetCapacityInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeFleetCapacity"
                
                (AWS.Core.Decode.ResultDecoder "DescribeFleetCapacityOutput" describeFleetCapacityOutputDecoder)
                
            )



{-| Options for a describeFleetCapacity request
-}
type alias DescribeFleetCapacityOptions =
    {
    fleetIds : Maybe (List String),limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves entries from the specified fleet's event log. You can specify a time range to limit the result set. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a collection of event log entries matching the request are returned.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`


-}

describeFleetEvents :
  
    String ->
  
  
    ( DescribeFleetEventsOptions -> DescribeFleetEventsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeFleetEventsOutput)

describeFleetEvents fleetId setOptions =
    
    let
        requestInput = DescribeFleetEventsInput
            
            fleetId
            
            options.startTime
            
            options.endTime
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribeFleetEventsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeFleetEventsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeFleetEvents"
                
                (AWS.Core.Decode.ResultDecoder "DescribeFleetEventsOutput" describeFleetEventsOutputDecoder)
                
            )



{-| Options for a describeFleetEvents request
-}
type alias DescribeFleetEventsOptions =
    {
    startTime : Maybe Posix,endTime : Maybe Posix,limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves the inbound connection permissions for a fleet. Connection permissions include a range of IP addresses and port settings that incoming traffic can use to access server processes in the fleet. To get a fleet's inbound connection permissions, specify a fleet ID. If successful, a collection of <a>IpPermission</a> objects is returned for the requested fleet ID. If the requested fleet has been deleted, the result set is empty.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`


-}

describeFleetPortSettings :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeFleetPortSettingsOutput)

describeFleetPortSettings fleetId =
    
    let
        requestInput = DescribeFleetPortSettingsInput
            
            fleetId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeFleetPortSettingsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeFleetPortSettings"
                
                (AWS.Core.Decode.ResultDecoder "DescribeFleetPortSettingsOutput" describeFleetPortSettingsOutputDecoder)
                
            )





{-| <p>Retrieves utilization statistics for one or more fleets. You can request utilization data for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>FleetUtilization</a> object is returned for each requested fleet ID. When specifying a list of fleet IDs, utilization objects are returned only for fleets that currently exist. </p> <note> <p>Some API actions may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.</p> </note> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__



-}

describeFleetUtilization :
  
  
    ( DescribeFleetUtilizationOptions -> DescribeFleetUtilizationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeFleetUtilizationOutput)

describeFleetUtilization setOptions =
    
    let
        requestInput = DescribeFleetUtilizationInput
            
            options.fleetIds
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribeFleetUtilizationOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeFleetUtilizationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeFleetUtilization"
                
                (AWS.Core.Decode.ResultDecoder "DescribeFleetUtilizationOutput" describeFleetUtilizationOutputDecoder)
                
            )



{-| Options for a describeFleetUtilization request
-}
type alias DescribeFleetUtilizationOptions =
    {
    fleetIds : Maybe (List String),limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves properties, including the protection policy in force, for one or more game sessions. This action can be used in several ways: (1) provide a <code>GameSessionId</code> or <code>GameSessionArn</code> to request details for a specific game session; (2) provide either a <code>FleetId</code> or an <code>AliasId</code> to request properties for all game sessions running on a fleet. </p> <p>To get game session record(s), specify just one of the following: game session ID, fleet ID, or alias ID. You can filter this request by game session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>GameSessionDetail</a> object is returned for each session matching the request.</p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

__Required Parameters__



-}

describeGameSessionDetails :
  
  
    ( DescribeGameSessionDetailsOptions -> DescribeGameSessionDetailsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeGameSessionDetailsOutput)

describeGameSessionDetails setOptions =
    
    let
        requestInput = DescribeGameSessionDetailsInput
            
            options.fleetId
            
            options.gameSessionId
            
            options.aliasId
            
            options.statusFilter
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribeGameSessionDetailsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeGameSessionDetailsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeGameSessionDetails"
                
                (AWS.Core.Decode.ResultDecoder "DescribeGameSessionDetailsOutput" describeGameSessionDetailsOutputDecoder)
                
            )



{-| Options for a describeGameSessionDetails request
-}
type alias DescribeGameSessionDetailsOptions =
    {
    fleetId : Maybe String,gameSessionId : Maybe String,aliasId : Maybe String,statusFilter : Maybe String,limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves properties and current status of a game session placement request. To get game session placement details, specify the placement ID. If successful, a <a>GameSessionPlacement</a> object is returned.</p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `placementId` __:__ `String`


-}

describeGameSessionPlacement :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeGameSessionPlacementOutput)

describeGameSessionPlacement placementId =
    
    let
        requestInput = DescribeGameSessionPlacementInput
            
            placementId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeGameSessionPlacementInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeGameSessionPlacement"
                
                (AWS.Core.Decode.ResultDecoder "DescribeGameSessionPlacementOutput" describeGameSessionPlacementOutputDecoder)
                
            )





{-| <p>Retrieves the properties for one or more game session queues. When requesting multiple queues, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>GameSessionQueue</a> object is returned for each requested queue. When specifying a list of queues, objects are returned only for queues that currently exist in the region.</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>

__Required Parameters__



-}

describeGameSessionQueues :
  
  
    ( DescribeGameSessionQueuesOptions -> DescribeGameSessionQueuesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeGameSessionQueuesOutput)

describeGameSessionQueues setOptions =
    
    let
        requestInput = DescribeGameSessionQueuesInput
            
            options.names
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribeGameSessionQueuesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeGameSessionQueuesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeGameSessionQueues"
                
                (AWS.Core.Decode.ResultDecoder "DescribeGameSessionQueuesOutput" describeGameSessionQueuesOutputDecoder)
                
            )



{-| Options for a describeGameSessionQueues request
-}
type alias DescribeGameSessionQueuesOptions =
    {
    names : Maybe (List String),limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves a set of one or more game sessions. Request a specific game session or request all game sessions on a fleet. Alternatively, use <a>SearchGameSessions</a> to request a set of active game sessions that are filtered by certain criteria. To retrieve protection policy settings for game sessions, use <a>DescribeGameSessionDetails</a>.</p> <p>To get game sessions, specify one of the following: game session ID, fleet ID, or alias ID. You can filter this request by game session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>GameSession</a> object is returned for each game session matching the request.</p> <p> <i>Available in Amazon GameLift Local.</i> </p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

__Required Parameters__



-}

describeGameSessions :
  
  
    ( DescribeGameSessionsOptions -> DescribeGameSessionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeGameSessionsOutput)

describeGameSessions setOptions =
    
    let
        requestInput = DescribeGameSessionsInput
            
            options.fleetId
            
            options.gameSessionId
            
            options.aliasId
            
            options.statusFilter
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribeGameSessionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeGameSessionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeGameSessions"
                
                (AWS.Core.Decode.ResultDecoder "DescribeGameSessionsOutput" describeGameSessionsOutputDecoder)
                
            )



{-| Options for a describeGameSessions request
-}
type alias DescribeGameSessionsOptions =
    {
    fleetId : Maybe String,gameSessionId : Maybe String,aliasId : Maybe String,statusFilter : Maybe String,limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves information about a fleet's instances, including instance IDs. Use this action to get details on all instances in the fleet or get details on one specific instance.</p> <p>To get a specific instance, specify fleet ID and instance ID. To get all instances in a fleet, specify a fleet ID only. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, an <a>Instance</a> object is returned for each result.</p>

__Required Parameters__

* `fleetId` __:__ `String`


-}

describeInstances :
  
    String ->
  
  
    ( DescribeInstancesOptions -> DescribeInstancesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeInstancesOutput)

describeInstances fleetId setOptions =
    
    let
        requestInput = DescribeInstancesInput
            
            fleetId
            
            options.instanceId
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribeInstancesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeInstancesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeInstances"
                
                (AWS.Core.Decode.ResultDecoder "DescribeInstancesOutput" describeInstancesOutputDecoder)
                
            )



{-| Options for a describeInstances request
-}
type alias DescribeInstancesOptions =
    {
    instanceId : Maybe String,limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves one or more matchmaking tickets. Use this operation to retrieve ticket information, including status and--once a successful match is made--acquire connection information for the resulting new game session. </p> <p>You can use this operation to track the progress of matchmaking requests (through polling) as an alternative to using event notifications. See more details on tracking matchmaking requests through polling or notifications in <a>StartMatchmaking</a>. </p> <p>To request matchmaking tickets, provide a list of up to 10 ticket IDs. If the request is successful, a ticket object is returned for each requested ID that currently exists.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html"> Add FlexMatch to a Game Client</a> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguidematch-notification.html"> Set Up FlexMatch Event Notification</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>StartMatchmaking</a> </p> </li> <li> <p> <a>DescribeMatchmaking</a> </p> </li> <li> <p> <a>StopMatchmaking</a> </p> </li> <li> <p> <a>AcceptMatch</a> </p> </li> <li> <p> <a>StartMatchBackfill</a> </p> </li> </ul>

__Required Parameters__

* `ticketIds` __:__ `(List String)`


-}

describeMatchmaking :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeMatchmakingOutput)

describeMatchmaking ticketIds =
    
    let
        requestInput = DescribeMatchmakingInput
            
            ticketIds
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeMatchmakingInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeMatchmaking"
                
                (AWS.Core.Decode.ResultDecoder "DescribeMatchmakingOutput" describeMatchmakingOutputDecoder)
                
            )





{-| <p>Retrieves the details of FlexMatch matchmaking configurations. With this operation, you have the following options: (1) retrieve all existing configurations, (2) provide the names of one or more configurations to retrieve, or (3) retrieve all configurations that use a specified rule set name. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a configuration is returned for each requested name. When specifying a list of names, only configurations that currently exist are returned. </p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/matchmaker-build.html"> Setting Up FlexMatch Matchmakers</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>

__Required Parameters__



-}

describeMatchmakingConfigurations :
  
  
    ( DescribeMatchmakingConfigurationsOptions -> DescribeMatchmakingConfigurationsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeMatchmakingConfigurationsOutput)

describeMatchmakingConfigurations setOptions =
    
    let
        requestInput = DescribeMatchmakingConfigurationsInput
            
            options.names
            
            options.ruleSetName
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribeMatchmakingConfigurationsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeMatchmakingConfigurationsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeMatchmakingConfigurations"
                
                (AWS.Core.Decode.ResultDecoder "DescribeMatchmakingConfigurationsOutput" describeMatchmakingConfigurationsOutputDecoder)
                
            )



{-| Options for a describeMatchmakingConfigurations request
-}
type alias DescribeMatchmakingConfigurationsOptions =
    {
    names : Maybe (List String),ruleSetName : Maybe String,limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves the details for FlexMatch matchmaking rule sets. You can request all existing rule sets for the region, or provide a list of one or more rule set names. When requesting multiple items, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a rule set is returned for each requested name. </p> <p> <b>Learn more</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html">Build a Rule Set</a> </p> </li> </ul> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>

__Required Parameters__



-}

describeMatchmakingRuleSets :
  
  
    ( DescribeMatchmakingRuleSetsOptions -> DescribeMatchmakingRuleSetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeMatchmakingRuleSetsOutput)

describeMatchmakingRuleSets setOptions =
    
    let
        requestInput = DescribeMatchmakingRuleSetsInput
            
            options.names
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribeMatchmakingRuleSetsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeMatchmakingRuleSetsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeMatchmakingRuleSets"
                
                (AWS.Core.Decode.ResultDecoder "DescribeMatchmakingRuleSetsOutput" describeMatchmakingRuleSetsOutputDecoder)
                
            )



{-| Options for a describeMatchmakingRuleSets request
-}
type alias DescribeMatchmakingRuleSetsOptions =
    {
    names : Maybe (List String),limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves properties for one or more player sessions. This action can be used in several ways: (1) provide a <code>PlayerSessionId</code> to request properties for a specific player session; (2) provide a <code>GameSessionId</code> to request properties for all player sessions in the specified game session; (3) provide a <code>PlayerId</code> to request properties for all player sessions of a specified player. </p> <p>To get game session record(s), specify only one of the following: a player session ID, a game session ID, or a player ID. You can filter this request by player session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>PlayerSession</a> object is returned for each session matching the request.</p> <p> <i>Available in Amazon GameLift Local.</i> </p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

__Required Parameters__



-}

describePlayerSessions :
  
  
    ( DescribePlayerSessionsOptions -> DescribePlayerSessionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribePlayerSessionsOutput)

describePlayerSessions setOptions =
    
    let
        requestInput = DescribePlayerSessionsInput
            
            options.gameSessionId
            
            options.playerId
            
            options.playerSessionId
            
            options.playerSessionStatusFilter
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribePlayerSessionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describePlayerSessionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribePlayerSessions"
                
                (AWS.Core.Decode.ResultDecoder "DescribePlayerSessionsOutput" describePlayerSessionsOutputDecoder)
                
            )



{-| Options for a describePlayerSessions request
-}
type alias DescribePlayerSessionsOptions =
    {
    gameSessionId : Maybe String,playerId : Maybe String,playerSessionId : Maybe String,playerSessionStatusFilter : Maybe String,limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves the current run-time configuration for the specified fleet. The run-time configuration tells Amazon GameLift how to launch server processes on instances in the fleet.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`


-}

describeRuntimeConfiguration :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRuntimeConfigurationOutput)

describeRuntimeConfiguration fleetId =
    
    let
        requestInput = DescribeRuntimeConfigurationInput
            
            fleetId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeRuntimeConfigurationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeRuntimeConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "DescribeRuntimeConfigurationOutput" describeRuntimeConfigurationOutputDecoder)
                
            )





{-| <p>Retrieves all scaling policies applied to a fleet.</p> <p>To get a fleet's scaling policies, specify the fleet ID. You can filter this request by policy status, such as to retrieve only active scaling policies. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, set of <a>ScalingPolicy</a> objects is returned for the fleet.</p> <p>A fleet may have all of its scaling policies suspended (<a>StopFleetActions</a>). This action does not affect the status of the scaling policies, which remains ACTIVE. To see whether a fleet's scaling policies are in force or suspended, call <a>DescribeFleetAttributes</a> and check the stopped actions.</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p>Manage scaling policies:</p> <ul> <li> <p> <a>PutScalingPolicy</a> (auto-scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (auto-scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (auto-scaling)</p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`


-}

describeScalingPolicies :
  
    String ->
  
  
    ( DescribeScalingPoliciesOptions -> DescribeScalingPoliciesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeScalingPoliciesOutput)

describeScalingPolicies fleetId setOptions =
    
    let
        requestInput = DescribeScalingPoliciesInput
            
            fleetId
            
            options.statusFilter
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (DescribeScalingPoliciesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeScalingPoliciesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeScalingPolicies"
                
                (AWS.Core.Decode.ResultDecoder "DescribeScalingPoliciesOutput" describeScalingPoliciesOutputDecoder)
                
            )



{-| Options for a describeScalingPolicies request
-}
type alias DescribeScalingPoliciesOptions =
    {
    statusFilter : Maybe ScalingStatusType,limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves properties for a Realtime script. </p> <p>To request a script record, specify the script ID. If successful, an object containing the script properties is returned.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Realtime Servers</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateScript</a> </p> </li> <li> <p> <a>ListScripts</a> </p> </li> <li> <p> <a>DescribeScript</a> </p> </li> <li> <p> <a>UpdateScript</a> </p> </li> <li> <p> <a>DeleteScript</a> </p> </li> </ul>

__Required Parameters__

* `scriptId` __:__ `String`


-}

describeScript :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeScriptOutput)

describeScript scriptId =
    
    let
        requestInput = DescribeScriptInput
            
            scriptId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeScriptInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeScript"
                
                (AWS.Core.Decode.ResultDecoder "DescribeScriptOutput" describeScriptOutputDecoder)
                
            )





{-| <p>Retrieves valid VPC peering authorizations that are pending for the AWS account. This operation returns all VPC peering authorizations and requests for peering. This includes those initiated and received by this account. </p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>

__Required Parameters__



-}

describeVpcPeeringAuthorizations :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeVpcPeeringAuthorizationsOutput)

describeVpcPeeringAuthorizations =
    
    let
        requestInput = DescribeVpcPeeringAuthorizationsInput
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeVpcPeeringAuthorizationsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeVpcPeeringAuthorizations"
                
                (AWS.Core.Decode.ResultDecoder "DescribeVpcPeeringAuthorizationsOutput" describeVpcPeeringAuthorizationsOutputDecoder)
                
            )





{-| <p>Retrieves information on VPC peering connections. Use this operation to get peering information for all fleets or for one specific fleet ID. </p> <p>To retrieve connection information, call this operation from the AWS account that is used to manage the Amazon GameLift fleets. Specify a fleet ID or leave the parameter empty to retrieve all connection records. If successful, the retrieved information includes both active and pending connections. Active connections identify the IpV4 CIDR block that the VPC uses to connect. </p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>

__Required Parameters__



-}

describeVpcPeeringConnections :
  
  
    ( DescribeVpcPeeringConnectionsOptions -> DescribeVpcPeeringConnectionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeVpcPeeringConnectionsOutput)

describeVpcPeeringConnections setOptions =
    
    let
        requestInput = DescribeVpcPeeringConnectionsInput
            
            options.fleetId
            
        
        options = setOptions (DescribeVpcPeeringConnectionsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeVpcPeeringConnectionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeVpcPeeringConnections"
                
                (AWS.Core.Decode.ResultDecoder "DescribeVpcPeeringConnectionsOutput" describeVpcPeeringConnectionsOutputDecoder)
                
            )



{-| Options for a describeVpcPeeringConnections request
-}
type alias DescribeVpcPeeringConnectionsOptions =
    {
    fleetId : Maybe String
    }



{-| <p>Retrieves the location of stored game session logs for a specified game session. When a game session is terminated, Amazon GameLift automatically stores the logs in Amazon S3 and retains them for 14 days. Use this URL to download the logs.</p> <note> <p>See the <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift">AWS Service Limits</a> page for maximum log file sizes. Log files that exceed this limit are not saved.</p> </note> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `gameSessionId` __:__ `String`


-}

getGameSessionLogUrl :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetGameSessionLogUrlOutput)

getGameSessionLogUrl gameSessionId =
    
    let
        requestInput = GetGameSessionLogUrlInput
            
            gameSessionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getGameSessionLogUrlInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetGameSessionLogUrl"
                
                (AWS.Core.Decode.ResultDecoder "GetGameSessionLogUrlOutput" getGameSessionLogUrlOutputDecoder)
                
            )





{-| <p>Requests remote access to a fleet instance. Remote access is useful for debugging, gathering benchmarking data, or watching activity in real time. </p> <p>Access requires credentials that match the operating system of the instance. For a Windows instance, Amazon GameLift returns a user name and password as strings for use with a Windows Remote Desktop client. For a Linux instance, Amazon GameLift returns a user name and RSA private key, also as strings, for use with an SSH client. The private key must be saved in the proper format to a <code>.pem</code> file before using. If you're making this request using the AWS CLI, saving the secret can be handled as part of the GetInstanceAccess request. (See the example later in this topic). For more information on remote access, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html">Remotely Accessing an Instance</a>.</p> <p>To request access to a specific instance, specify the IDs of both the instance and the fleet it belongs to. You can retrieve a fleet's instance IDs by calling <a>DescribeInstances</a>. If successful, an <a>InstanceAccess</a> object is returned containing the instance's IP address and a set of credentials.</p>

__Required Parameters__

* `fleetId` __:__ `String`
* `instanceId` __:__ `String`


-}

getInstanceAccess :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetInstanceAccessOutput)

getInstanceAccess fleetId instanceId =
    
    let
        requestInput = GetInstanceAccessInput
            
            fleetId
            
            instanceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getInstanceAccessInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetInstanceAccess"
                
                (AWS.Core.Decode.ResultDecoder "GetInstanceAccessOutput" getInstanceAccessOutputDecoder)
                
            )





{-| <p>Retrieves all aliases for this AWS account. You can filter the result set by alias name and/or routing strategy type. Use the pagination parameters to retrieve results in sequential pages.</p> <note> <p>Returned aliases are not listed in any particular order.</p> </note> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>

__Required Parameters__



-}

listAliases :
  
  
    ( ListAliasesOptions -> ListAliasesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAliasesOutput)

listAliases setOptions =
    
    let
        requestInput = ListAliasesInput
            
            options.routingStrategyType
            
            options.name
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (ListAliasesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAliasesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAliases"
                
                (AWS.Core.Decode.ResultDecoder "ListAliasesOutput" listAliasesOutputDecoder)
                
            )



{-| Options for a listAliases request
-}
type alias ListAliasesOptions =
    {
    routingStrategyType : Maybe RoutingStrategyType,name : Maybe String,limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves build records for all builds associated with the AWS account in use. You can limit results to builds that are in a specific status by using the <code>Status</code> parameter. Use the pagination parameters to retrieve results in a set of sequential pages. </p> <note> <p>Build records are not listed in any particular order.</p> </note> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/build-intro.html"> Working with Builds</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>

__Required Parameters__



-}

listBuilds :
  
  
    ( ListBuildsOptions -> ListBuildsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListBuildsOutput)

listBuilds setOptions =
    
    let
        requestInput = ListBuildsInput
            
            options.status
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (ListBuildsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listBuildsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListBuilds"
                
                (AWS.Core.Decode.ResultDecoder "ListBuildsOutput" listBuildsOutputDecoder)
                
            )



{-| Options for a listBuilds request
-}
type alias ListBuildsOptions =
    {
    status : Maybe BuildStatus,limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves a collection of fleet records for this AWS account. You can filter the result set to find only those fleets that are deployed with a specific build or script. Use the pagination parameters to retrieve results in sequential pages.</p> <note> <p>Fleet records are not listed in a particular order.</p> </note> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Set Up Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__



-}

listFleets :
  
  
    ( ListFleetsOptions -> ListFleetsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListFleetsOutput)

listFleets setOptions =
    
    let
        requestInput = ListFleetsInput
            
            options.buildId
            
            options.scriptId
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (ListFleetsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listFleetsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListFleets"
                
                (AWS.Core.Decode.ResultDecoder "ListFleetsOutput" listFleetsOutputDecoder)
                
            )



{-| Options for a listFleets request
-}
type alias ListFleetsOptions =
    {
    buildId : Maybe String,scriptId : Maybe String,limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Retrieves script records for all Realtime scripts that are associated with the AWS account in use. </p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Realtime Servers</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateScript</a> </p> </li> <li> <p> <a>ListScripts</a> </p> </li> <li> <p> <a>DescribeScript</a> </p> </li> <li> <p> <a>UpdateScript</a> </p> </li> <li> <p> <a>DeleteScript</a> </p> </li> </ul>

__Required Parameters__



-}

listScripts :
  
  
    ( ListScriptsOptions -> ListScriptsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListScriptsOutput)

listScripts setOptions =
    
    let
        requestInput = ListScriptsInput
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (ListScriptsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listScriptsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListScripts"
                
                (AWS.Core.Decode.ResultDecoder "ListScriptsOutput" listScriptsOutputDecoder)
                
            )



{-| Options for a listScripts request
-}
type alias ListScriptsOptions =
    {
    limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Creates or updates a scaling policy for a fleet. Scaling policies are used to automatically scale a fleet's hosting capacity to meet player demand. An active scaling policy instructs Amazon GameLift to track a fleet metric and automatically change the fleet's capacity when a certain threshold is reached. There are two types of scaling policies: target-based and rule-based. Use a target-based policy to quickly and efficiently manage fleet scaling; this option is the most commonly used. Use rule-based policies when you need to exert fine-grained control over auto-scaling. </p> <p>Fleets can have multiple scaling policies of each type in force at the same time; you can have one target-based policy, one or multiple rule-based scaling policies, or both. We recommend caution, however, because multiple auto-scaling policies can have unintended consequences.</p> <p>You can temporarily suspend all scaling policies for a fleet by calling <a>StopFleetActions</a> with the fleet action AUTO_SCALING. To resume scaling policies, call <a>StartFleetActions</a> with the same fleet action. To stop just one scaling policy--or to permanently remove it, you must delete the policy with <a>DeleteScalingPolicy</a>.</p> <p>Learn more about how to work with auto-scaling in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html">Set Up Fleet Automatic Scaling</a>.</p> <p> <b>Target-based policy</b> </p> <p>A target-based policy tracks a single metric: PercentAvailableGameSessions. This metric tells us how much of a fleet's hosting capacity is ready to host game sessions but is not currently in use. This is the fleet's buffer; it measures the additional player demand that the fleet could handle at current capacity. With a target-based policy, you set your ideal buffer size and leave it to Amazon GameLift to take whatever action is needed to maintain that target. </p> <p>For example, you might choose to maintain a 10% buffer for a fleet that has the capacity to host 100 simultaneous game sessions. This policy tells Amazon GameLift to take action whenever the fleet's available capacity falls below or rises above 10 game sessions. Amazon GameLift will start new instances or stop unused instances in order to return to the 10% buffer. </p> <p>To create or update a target-based policy, specify a fleet ID and name, and set the policy type to "TargetBased". Specify the metric to track (PercentAvailableGameSessions) and reference a <a>TargetConfiguration</a> object with your desired buffer value. Exclude all other parameters. On a successful request, the policy name is returned. The scaling policy is automatically in force as soon as it's successfully created. If the fleet's auto-scaling actions are temporarily suspended, the new policy will be in force once the fleet actions are restarted.</p> <p> <b>Rule-based policy</b> </p> <p>A rule-based policy tracks specified fleet metric, sets a threshold value, and specifies the type of action to initiate when triggered. With a rule-based policy, you can select from several available fleet metrics. Each policy specifies whether to scale up or scale down (and by how much), so you need one policy for each type of action. </p> <p>For example, a policy may make the following statement: "If the percentage of idle instances is greater than 20% for more than 15 minutes, then reduce the fleet capacity by 10%."</p> <p>A policy's rule statement has the following structure:</p> <p>If <code>[MetricName]</code> is <code>[ComparisonOperator]</code> <code>[Threshold]</code> for <code>[EvaluationPeriods]</code> minutes, then <code>[ScalingAdjustmentType]</code> to/by <code>[ScalingAdjustment]</code>.</p> <p>To implement the example, the rule statement would look like this:</p> <p>If <code>[PercentIdleInstances]</code> is <code>[GreaterThanThreshold]</code> <code>[20]</code> for <code>[15]</code> minutes, then <code>[PercentChangeInCapacity]</code> to/by <code>[10]</code>.</p> <p>To create or update a scaling policy, specify a unique combination of name and fleet ID, and set the policy type to "RuleBased". Specify the parameter values for a policy rule statement. On a successful request, the policy name is returned. Scaling policies are automatically in force as soon as they're successfully created. If the fleet's auto-scaling actions are temporarily suspended, the new policy will be in force once the fleet actions are restarted.</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p>Manage scaling policies:</p> <ul> <li> <p> <a>PutScalingPolicy</a> (auto-scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (auto-scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (auto-scaling)</p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `name` __:__ `String`
* `fleetId` __:__ `String`
* `metricName` __:__ `MetricName`


-}

putScalingPolicy :
  
    String ->
  
    String ->
  
    MetricName ->
  
  
    ( PutScalingPolicyOptions -> PutScalingPolicyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutScalingPolicyOutput)

putScalingPolicy name fleetId metricName setOptions =
    
    let
        requestInput = PutScalingPolicyInput
            
            name
            
            fleetId
            
            options.scalingAdjustment
            
            options.scalingAdjustmentType
            
            options.threshold
            
            options.comparisonOperator
            
            options.evaluationPeriods
            
            metricName
            
            options.policyType
            
            options.targetConfiguration
            
        
        options = setOptions (PutScalingPolicyOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putScalingPolicyInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutScalingPolicy"
                
                (AWS.Core.Decode.ResultDecoder "PutScalingPolicyOutput" putScalingPolicyOutputDecoder)
                
            )



{-| Options for a putScalingPolicy request
-}
type alias PutScalingPolicyOptions =
    {
    scalingAdjustment : Maybe Int,scalingAdjustmentType : Maybe ScalingAdjustmentType,threshold : Maybe Float,comparisonOperator : Maybe ComparisonOperatorType,evaluationPeriods : Maybe Int,policyType : Maybe PolicyType,targetConfiguration : Maybe TargetConfiguration
    }



{-| <p>Retrieves a fresh set of credentials for use when uploading a new set of game build files to Amazon GameLift's Amazon S3. This is done as part of the build creation process; see <a>CreateBuild</a>.</p> <p>To request new credentials, specify the build ID as returned with an initial <code>CreateBuild</code> request. If successful, a new set of credentials are returned, along with the S3 storage location associated with the build ID.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">Uploading Your Game</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>

__Required Parameters__

* `buildId` __:__ `String`


-}

requestUploadCredentials :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RequestUploadCredentialsOutput)

requestUploadCredentials buildId =
    
    let
        requestInput = RequestUploadCredentialsInput
            
            buildId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> requestUploadCredentialsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RequestUploadCredentials"
                
                (AWS.Core.Decode.ResultDecoder "RequestUploadCredentialsOutput" requestUploadCredentialsOutputDecoder)
                
            )





{-| <p>Retrieves the fleet ID that a specified alias is currently pointing to.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>

__Required Parameters__

* `aliasId` __:__ `String`


-}

resolveAlias :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ResolveAliasOutput)

resolveAlias aliasId =
    
    let
        requestInput = ResolveAliasInput
            
            aliasId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> resolveAliasInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ResolveAlias"
                
                (AWS.Core.Decode.ResultDecoder "ResolveAliasOutput" resolveAliasOutputDecoder)
                
            )





{-| <p>Retrieves all active game sessions that match a set of search criteria and sorts them in a specified order. You can search or sort by the following game session attributes:</p> <ul> <li> <p> <b>gameSessionId</b> -- Unique identifier for the game session. You can use either a <code>GameSessionId</code> or <code>GameSessionArn</code> value. </p> </li> <li> <p> <b>gameSessionName</b> -- Name assigned to a game session. This value is set when requesting a new game session with <a>CreateGameSession</a> or updating with <a>UpdateGameSession</a>. Game session names do not need to be unique to a game session.</p> </li> <li> <p> <b>gameSessionProperties</b> -- Custom data defined in a game session's <code>GameProperty</code> parameter. <code>GameProperty</code> values are stored as key:value pairs; the filter expression must indicate the key and a string to search the data values for. For example, to search for game sessions with custom data containing the key:value pair "gameMode:brawl", specify the following: <code>gameSessionProperties.gameMode = "brawl"</code>. All custom data values are searched as strings.</p> </li> <li> <p> <b>maximumSessions</b> -- Maximum number of player sessions allowed for a game session. This value is set when requesting a new game session with <a>CreateGameSession</a> or updating with <a>UpdateGameSession</a>.</p> </li> <li> <p> <b>creationTimeMillis</b> -- Value indicating when a game session was created. It is expressed in Unix time as milliseconds.</p> </li> <li> <p> <b>playerSessionCount</b> -- Number of players currently connected to a game session. This value changes rapidly as players join the session or drop out.</p> </li> <li> <p> <b>hasAvailablePlayerSessions</b> -- Boolean value indicating whether a game session has reached its maximum number of players. It is highly recommended that all search requests include this filter attribute to optimize search performance and return only sessions that players can join. </p> </li> </ul> <note> <p>Returned values for <code>playerSessionCount</code> and <code>hasAvailablePlayerSessions</code> change quickly as players join sessions and others drop out. Results should be considered a snapshot in time. Be sure to refresh search results often, and handle sessions that fill up before a player can join. </p> </note> <p>To search or sort, specify either a fleet ID or an alias ID, and provide a search filter expression, a sort expression, or both. If successful, a collection of <a>GameSession</a> objects matching the request is returned. Use the pagination parameters to retrieve results as a set of sequential pages. </p> <p>You can search for game sessions one fleet at a time only. To find game sessions across multiple fleets, you must search each fleet separately and combine the results. This search feature finds only game sessions that are in <code>ACTIVE</code> status. To locate games in statuses other than active, use <a>DescribeGameSessionDetails</a>.</p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

__Required Parameters__



-}

searchGameSessions :
  
  
    ( SearchGameSessionsOptions -> SearchGameSessionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SearchGameSessionsOutput)

searchGameSessions setOptions =
    
    let
        requestInput = SearchGameSessionsInput
            
            options.fleetId
            
            options.aliasId
            
            options.filterExpression
            
            options.sortExpression
            
            options.limit
            
            options.nextToken
            
        
        options = setOptions (SearchGameSessionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> searchGameSessionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SearchGameSessions"
                
                (AWS.Core.Decode.ResultDecoder "SearchGameSessionsOutput" searchGameSessionsOutputDecoder)
                
            )



{-| Options for a searchGameSessions request
-}
type alias SearchGameSessionsOptions =
    {
    fleetId : Maybe String,aliasId : Maybe String,filterExpression : Maybe String,sortExpression : Maybe String,limit : Maybe Int,nextToken : Maybe String
    }



{-| <p>Resumes activity on a fleet that was suspended with <a>StopFleetActions</a>. Currently, this operation is used to restart a fleet's auto-scaling activity. </p> <p>To start fleet actions, specify the fleet ID and the type of actions to restart. When auto-scaling fleet actions are restarted, Amazon GameLift once again initiates scaling events as triggered by the fleet's scaling policies. If actions on the fleet were never stopped, this operation will have no effect. You can view a fleet's stopped actions using <a>DescribeFleetAttributes</a>.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`
* `actions` __:__ `(List FleetAction)`


-}

startFleetActions :
  
    String ->
  
    (List FleetAction) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartFleetActionsOutput)

startFleetActions fleetId actions =
    
    let
        requestInput = StartFleetActionsInput
            
            fleetId
            
            actions
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startFleetActionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartFleetActions"
                
                (AWS.Core.Decode.ResultDecoder "StartFleetActionsOutput" startFleetActionsOutputDecoder)
                
            )





{-| <p>Places a request for a new game session in a queue (see <a>CreateGameSessionQueue</a>). When processing a placement request, Amazon GameLift searches for available resources on the queue's destinations, scanning each until it finds resources or the placement request times out.</p> <p>A game session placement request can also request player sessions. When a new game session is successfully created, Amazon GameLift creates a player session for each player included in the request.</p> <p>When placing a game session, by default Amazon GameLift tries each fleet in the order they are listed in the queue configuration. Ideally, a queue's destinations are listed in preference order.</p> <p>Alternatively, when requesting a game session with players, you can also provide latency data for each player in relevant regions. Latency data indicates the performance lag a player experiences when connected to a fleet in the region. Amazon GameLift uses latency data to reorder the list of destinations to place the game session in a region with minimal lag. If latency data is provided for multiple players, Amazon GameLift calculates each region's average lag for all players and reorders to get the best game play across all players. </p> <p>To place a new game session request, specify the following:</p> <ul> <li> <p>The queue name and a set of game session properties and settings</p> </li> <li> <p>A unique ID (such as a UUID) for the placement. You use this ID to track the status of the placement request</p> </li> <li> <p>(Optional) A set of player data and a unique player ID for each player that you are joining to the new game session (player data is optional, but if you include it, you must also provide a unique ID for each player)</p> </li> <li> <p>Latency data for all players (if you want to optimize game play for the players)</p> </li> </ul> <p>If successful, a new game session placement is created.</p> <p>To track the status of a placement request, call <a>DescribeGameSessionPlacement</a> and check the request's status. If the status is <code>FULFILLED</code>, a new game session has been created and a game session ARN and region are referenced. If the placement request times out, you can resubmit the request or retry it with a different queue. </p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `placementId` __:__ `String`
* `gameSessionQueueName` __:__ `String`
* `maximumPlayerSessionCount` __:__ `Int`


-}

startGameSessionPlacement :
  
    String ->
  
    String ->
  
    Int ->
  
  
    ( StartGameSessionPlacementOptions -> StartGameSessionPlacementOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartGameSessionPlacementOutput)

startGameSessionPlacement placementId gameSessionQueueName maximumPlayerSessionCount setOptions =
    
    let
        requestInput = StartGameSessionPlacementInput
            
            placementId
            
            gameSessionQueueName
            
            options.gameProperties
            
            maximumPlayerSessionCount
            
            options.gameSessionName
            
            options.playerLatencies
            
            options.desiredPlayerSessions
            
            options.gameSessionData
            
        
        options = setOptions (StartGameSessionPlacementOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startGameSessionPlacementInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartGameSessionPlacement"
                
                (AWS.Core.Decode.ResultDecoder "StartGameSessionPlacementOutput" startGameSessionPlacementOutputDecoder)
                
            )



{-| Options for a startGameSessionPlacement request
-}
type alias StartGameSessionPlacementOptions =
    {
    gameProperties : Maybe (List GameProperty),gameSessionName : Maybe String,playerLatencies : Maybe (List PlayerLatency),desiredPlayerSessions : Maybe (List DesiredPlayerSession),gameSessionData : Maybe String
    }



{-| <p>Finds new players to fill open slots in an existing game session. This operation can be used to add players to matched games that start with fewer than the maximum number of players or to replace players when they drop out. By backfilling with the same matchmaker used to create the original match, you ensure that new players meet the match criteria and maintain a consistent experience throughout the game session. You can backfill a match anytime after a game session has been created. </p> <p>To request a match backfill, specify a unique ticket ID, the existing game session's ARN, a matchmaking configuration, and a set of data that describes all current players in the game session. If successful, a match backfill ticket is created and returned with status set to QUEUED. The ticket is placed in the matchmaker's ticket pool and processed. Track the status of the ticket to respond as needed. </p> <p>The process of finding backfill matches is essentially identical to the initial matchmaking process. The matchmaker searches the pool and groups tickets together to form potential matches, allowing only one backfill ticket per potential match. Once the a match is formed, the matchmaker creates player sessions for the new players. All tickets in the match are updated with the game session's connection information, and the <a>GameSession</a> object is updated to include matchmaker data on the new players. For more detail on how match backfill requests are processed, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html"> How Amazon GameLift FlexMatch Works</a>. </p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html"> Backfill Existing Games with FlexMatch</a> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html"> How GameLift FlexMatch Works</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>StartMatchmaking</a> </p> </li> <li> <p> <a>DescribeMatchmaking</a> </p> </li> <li> <p> <a>StopMatchmaking</a> </p> </li> <li> <p> <a>AcceptMatch</a> </p> </li> <li> <p> <a>StartMatchBackfill</a> </p> </li> </ul>

__Required Parameters__

* `configurationName` __:__ `String`
* `gameSessionArn` __:__ `String`
* `players` __:__ `(List Player)`


-}

startMatchBackfill :
  
    String ->
  
    String ->
  
    (List Player) ->
  
  
    ( StartMatchBackfillOptions -> StartMatchBackfillOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartMatchBackfillOutput)

startMatchBackfill configurationName gameSessionArn players setOptions =
    
    let
        requestInput = StartMatchBackfillInput
            
            options.ticketId
            
            configurationName
            
            gameSessionArn
            
            players
            
        
        options = setOptions (StartMatchBackfillOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startMatchBackfillInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartMatchBackfill"
                
                (AWS.Core.Decode.ResultDecoder "StartMatchBackfillOutput" startMatchBackfillOutputDecoder)
                
            )



{-| Options for a startMatchBackfill request
-}
type alias StartMatchBackfillOptions =
    {
    ticketId : Maybe String
    }



{-| <p>Uses FlexMatch to create a game match for a group of players based on custom matchmaking rules, and starts a new game for the matched players. Each matchmaking request specifies the type of match to build (team configuration, rules for an acceptable match, etc.). The request also specifies the players to find a match for and where to host the new game session for optimal performance. A matchmaking request might start with a single player or a group of players who want to play together. FlexMatch finds additional players as needed to fill the match. Match type, rules, and the queue used to place a new game session are defined in a <code>MatchmakingConfiguration</code>. </p> <p>To start matchmaking, provide a unique ticket ID, specify a matchmaking configuration, and include the players to be matched. You must also include a set of player attributes relevant for the matchmaking configuration. If successful, a matchmaking ticket is returned with status set to <code>QUEUED</code>. Track the status of the ticket to respond as needed and acquire game session connection information for successfully completed matches.</p> <p> <b>Tracking ticket status</b> -- A couple of options are available for tracking the status of matchmaking requests: </p> <ul> <li> <p>Polling -- Call <code>DescribeMatchmaking</code>. This operation returns the full ticket object, including current status and (for completed tickets) game session connection info. We recommend polling no more than once every 10 seconds.</p> </li> <li> <p>Notifications -- Get event notifications for changes in ticket status using Amazon Simple Notification Service (SNS). Notifications are easy to set up (see <a>CreateMatchmakingConfiguration</a>) and typically deliver match status changes faster and more efficiently than polling. We recommend that you use polling to back up to notifications (since delivery is not guaranteed) and call <code>DescribeMatchmaking</code> only when notifications are not received within 30 seconds.</p> </li> </ul> <p> <b>Processing a matchmaking request</b> -- FlexMatch handles a matchmaking request as follows: </p> <ol> <li> <p>Your client code submits a <code>StartMatchmaking</code> request for one or more players and tracks the status of the request ticket. </p> </li> <li> <p>FlexMatch uses this ticket and others in process to build an acceptable match. When a potential match is identified, all tickets in the proposed match are advanced to the next status. </p> </li> <li> <p>If the match requires player acceptance (set in the matchmaking configuration), the tickets move into status <code>REQUIRES_ACCEPTANCE</code>. This status triggers your client code to solicit acceptance from all players in every ticket involved in the match, and then call <a>AcceptMatch</a> for each player. If any player rejects or fails to accept the match before a specified timeout, the proposed match is dropped (see <code>AcceptMatch</code> for more details).</p> </li> <li> <p>Once a match is proposed and accepted, the matchmaking tickets move into status <code>PLACING</code>. FlexMatch locates resources for a new game session using the game session queue (set in the matchmaking configuration) and creates the game session based on the match data. </p> </li> <li> <p>When the match is successfully placed, the matchmaking tickets move into <code>COMPLETED</code> status. Connection information (including game session endpoint and player session) is added to the matchmaking tickets. Matched players can use the connection information to join the game. </p> </li> </ol> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html"> Add FlexMatch to a Game Client</a> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html"> Set Up FlexMatch Event Notification</a> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-tasks.html"> FlexMatch Integration Roadmap</a> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html"> How GameLift FlexMatch Works</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>StartMatchmaking</a> </p> </li> <li> <p> <a>DescribeMatchmaking</a> </p> </li> <li> <p> <a>StopMatchmaking</a> </p> </li> <li> <p> <a>AcceptMatch</a> </p> </li> <li> <p> <a>StartMatchBackfill</a> </p> </li> </ul>

__Required Parameters__

* `configurationName` __:__ `String`
* `players` __:__ `(List Player)`


-}

startMatchmaking :
  
    String ->
  
    (List Player) ->
  
  
    ( StartMatchmakingOptions -> StartMatchmakingOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StartMatchmakingOutput)

startMatchmaking configurationName players setOptions =
    
    let
        requestInput = StartMatchmakingInput
            
            options.ticketId
            
            configurationName
            
            players
            
        
        options = setOptions (StartMatchmakingOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> startMatchmakingInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StartMatchmaking"
                
                (AWS.Core.Decode.ResultDecoder "StartMatchmakingOutput" startMatchmakingOutputDecoder)
                
            )



{-| Options for a startMatchmaking request
-}
type alias StartMatchmakingOptions =
    {
    ticketId : Maybe String
    }



{-| <p>Suspends activity on a fleet. Currently, this operation is used to stop a fleet's auto-scaling activity. It is used to temporarily stop scaling events triggered by the fleet's scaling policies. The policies can be retained and auto-scaling activity can be restarted using <a>StartFleetActions</a>. You can view a fleet's stopped actions using <a>DescribeFleetAttributes</a>.</p> <p>To stop fleet actions, specify the fleet ID and the type of actions to suspend. When auto-scaling fleet actions are stopped, Amazon GameLift no longer initiates scaling events except to maintain the fleet's desired instances setting (<a>FleetCapacity</a>. Changes to the fleet's capacity must be done manually using <a>UpdateFleetCapacity</a>. </p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`
* `actions` __:__ `(List FleetAction)`


-}

stopFleetActions :
  
    String ->
  
    (List FleetAction) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopFleetActionsOutput)

stopFleetActions fleetId actions =
    
    let
        requestInput = StopFleetActionsInput
            
            fleetId
            
            actions
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopFleetActionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopFleetActions"
                
                (AWS.Core.Decode.ResultDecoder "StopFleetActionsOutput" stopFleetActionsOutputDecoder)
                
            )





{-| <p>Cancels a game session placement that is in <code>PENDING</code> status. To stop a placement, provide the placement ID values. If successful, the placement is moved to <code>CANCELLED</code> status.</p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `placementId` __:__ `String`


-}

stopGameSessionPlacement :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopGameSessionPlacementOutput)

stopGameSessionPlacement placementId =
    
    let
        requestInput = StopGameSessionPlacementInput
            
            placementId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopGameSessionPlacementInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopGameSessionPlacement"
                
                (AWS.Core.Decode.ResultDecoder "StopGameSessionPlacementOutput" stopGameSessionPlacementOutputDecoder)
                
            )





{-| <p>Cancels a matchmaking ticket or match backfill ticket that is currently being processed. To stop the matchmaking operation, specify the ticket ID. If successful, work on the ticket is stopped, and the ticket status is changed to <code>CANCELLED</code>.</p> <p>This call is also used to turn off automatic backfill for an individual game session. This is for game sessions that are created with a matchmaking configuration that has automatic backfill enabled. The ticket ID is included in the <code>MatchmakerData</code> of an updated game session object, which is provided to the game server.</p> <note> <p>If the action is successful, the service sends back an empty JSON struct with the HTTP 200 response (not an empty HTTP body).</p> </note> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html"> Add FlexMatch to a Game Client</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>StartMatchmaking</a> </p> </li> <li> <p> <a>DescribeMatchmaking</a> </p> </li> <li> <p> <a>StopMatchmaking</a> </p> </li> <li> <p> <a>AcceptMatch</a> </p> </li> <li> <p> <a>StartMatchBackfill</a> </p> </li> </ul>

__Required Parameters__

* `ticketId` __:__ `String`


-}

stopMatchmaking :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper StopMatchmakingOutput)

stopMatchmaking ticketId =
    
    let
        requestInput = StopMatchmakingInput
            
            ticketId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> stopMatchmakingInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "StopMatchmaking"
                
                (AWS.Core.Decode.ResultDecoder "StopMatchmakingOutput" stopMatchmakingOutputDecoder)
                
            )





{-| <p>Updates properties for an alias. To update properties, specify the alias ID to be updated and provide the information to be changed. To reassign an alias to another fleet, provide an updated routing strategy. If successful, the updated alias record is returned.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>

__Required Parameters__

* `aliasId` __:__ `String`


-}

updateAlias :
  
    String ->
  
  
    ( UpdateAliasOptions -> UpdateAliasOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateAliasOutput)

updateAlias aliasId setOptions =
    
    let
        requestInput = UpdateAliasInput
            
            aliasId
            
            options.name
            
            options.description
            
            options.routingStrategy
            
        
        options = setOptions (UpdateAliasOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateAliasInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateAlias"
                
                (AWS.Core.Decode.ResultDecoder "UpdateAliasOutput" updateAliasOutputDecoder)
                
            )



{-| Options for a updateAlias request
-}
type alias UpdateAliasOptions =
    {
    name : Maybe String,description : Maybe String,routingStrategy : Maybe RoutingStrategy
    }



{-| <p>Updates metadata in a build record, including the build name and version. To update the metadata, specify the build ID to update and provide the new values. If successful, a build object containing the updated metadata is returned.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/build-intro.html"> Working with Builds</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>

__Required Parameters__

* `buildId` __:__ `String`


-}

updateBuild :
  
    String ->
  
  
    ( UpdateBuildOptions -> UpdateBuildOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateBuildOutput)

updateBuild buildId setOptions =
    
    let
        requestInput = UpdateBuildInput
            
            buildId
            
            options.name
            
            options.version
            
        
        options = setOptions (UpdateBuildOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateBuildInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateBuild"
                
                (AWS.Core.Decode.ResultDecoder "UpdateBuildOutput" updateBuildOutputDecoder)
                
            )



{-| Options for a updateBuild request
-}
type alias UpdateBuildOptions =
    {
    name : Maybe String,version : Maybe String
    }



{-| <p>Updates fleet properties, including name and description, for a fleet. To update metadata, specify the fleet ID and the property values that you want to change. If successful, the fleet ID for the updated fleet is returned.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`


-}

updateFleetAttributes :
  
    String ->
  
  
    ( UpdateFleetAttributesOptions -> UpdateFleetAttributesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateFleetAttributesOutput)

updateFleetAttributes fleetId setOptions =
    
    let
        requestInput = UpdateFleetAttributesInput
            
            fleetId
            
            options.name
            
            options.description
            
            options.newGameSessionProtectionPolicy
            
            options.resourceCreationLimitPolicy
            
            options.metricGroups
            
        
        options = setOptions (UpdateFleetAttributesOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateFleetAttributesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateFleetAttributes"
                
                (AWS.Core.Decode.ResultDecoder "UpdateFleetAttributesOutput" updateFleetAttributesOutputDecoder)
                
            )



{-| Options for a updateFleetAttributes request
-}
type alias UpdateFleetAttributesOptions =
    {
    name : Maybe String,description : Maybe String,newGameSessionProtectionPolicy : Maybe ProtectionPolicy,resourceCreationLimitPolicy : Maybe ResourceCreationLimitPolicy,metricGroups : Maybe (List String)
    }



{-| <p>Updates capacity settings for a fleet. Use this action to specify the number of EC2 instances (hosts) that you want this fleet to contain. Before calling this action, you may want to call <a>DescribeEC2InstanceLimits</a> to get the maximum capacity based on the fleet's EC2 instance type.</p> <p>Specify minimum and maximum number of instances. Amazon GameLift will not change fleet capacity to values fall outside of this range. This is particularly important when using auto-scaling (see <a>PutScalingPolicy</a>) to allow capacity to adjust based on player demand while imposing limits on automatic adjustments.</p> <p>To update fleet capacity, specify the fleet ID and the number of instances you want the fleet to host. If successful, Amazon GameLift starts or terminates instances so that the fleet's active instance count matches the desired instance count. You can view a fleet's current capacity information by calling <a>DescribeFleetCapacity</a>. If the desired instance count is higher than the instance type's limit, the "Limit Exceeded" exception occurs.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`


-}

updateFleetCapacity :
  
    String ->
  
  
    ( UpdateFleetCapacityOptions -> UpdateFleetCapacityOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateFleetCapacityOutput)

updateFleetCapacity fleetId setOptions =
    
    let
        requestInput = UpdateFleetCapacityInput
            
            fleetId
            
            options.desiredInstances
            
            options.minSize
            
            options.maxSize
            
        
        options = setOptions (UpdateFleetCapacityOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateFleetCapacityInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateFleetCapacity"
                
                (AWS.Core.Decode.ResultDecoder "UpdateFleetCapacityOutput" updateFleetCapacityOutputDecoder)
                
            )



{-| Options for a updateFleetCapacity request
-}
type alias UpdateFleetCapacityOptions =
    {
    desiredInstances : Maybe Int,minSize : Maybe Int,maxSize : Maybe Int
    }



{-| <p>Updates port settings for a fleet. To update settings, specify the fleet ID to be updated and list the permissions you want to update. List the permissions you want to add in <code>InboundPermissionAuthorizations</code>, and permissions you want to remove in <code>InboundPermissionRevocations</code>. Permissions to be removed must match existing fleet permissions. If successful, the fleet ID for the updated fleet is returned.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`


-}

updateFleetPortSettings :
  
    String ->
  
  
    ( UpdateFleetPortSettingsOptions -> UpdateFleetPortSettingsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateFleetPortSettingsOutput)

updateFleetPortSettings fleetId setOptions =
    
    let
        requestInput = UpdateFleetPortSettingsInput
            
            fleetId
            
            options.inboundPermissionAuthorizations
            
            options.inboundPermissionRevocations
            
        
        options = setOptions (UpdateFleetPortSettingsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateFleetPortSettingsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateFleetPortSettings"
                
                (AWS.Core.Decode.ResultDecoder "UpdateFleetPortSettingsOutput" updateFleetPortSettingsOutputDecoder)
                
            )



{-| Options for a updateFleetPortSettings request
-}
type alias UpdateFleetPortSettingsOptions =
    {
    inboundPermissionAuthorizations : Maybe (List IpPermission),inboundPermissionRevocations : Maybe (List IpPermission)
    }



{-| <p>Updates game session properties. This includes the session name, maximum player count, protection policy, which controls whether or not an active game session can be terminated during a scale-down event, and the player session creation policy, which controls whether or not new players can join the session. To update a game session, specify the game session ID and the values you want to change. If successful, an updated <a>GameSession</a> object is returned. </p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `gameSessionId` __:__ `String`


-}

updateGameSession :
  
    String ->
  
  
    ( UpdateGameSessionOptions -> UpdateGameSessionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateGameSessionOutput)

updateGameSession gameSessionId setOptions =
    
    let
        requestInput = UpdateGameSessionInput
            
            gameSessionId
            
            options.maximumPlayerSessionCount
            
            options.name
            
            options.playerSessionCreationPolicy
            
            options.protectionPolicy
            
        
        options = setOptions (UpdateGameSessionOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateGameSessionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateGameSession"
                
                (AWS.Core.Decode.ResultDecoder "UpdateGameSessionOutput" updateGameSessionOutputDecoder)
                
            )



{-| Options for a updateGameSession request
-}
type alias UpdateGameSessionOptions =
    {
    maximumPlayerSessionCount : Maybe Int,name : Maybe String,playerSessionCreationPolicy : Maybe PlayerSessionCreationPolicy,protectionPolicy : Maybe ProtectionPolicy
    }



{-| <p>Updates settings for a game session queue, which determines how new game session requests in the queue are processed. To update settings, specify the queue name to be updated and provide the new settings. When updating destinations, provide a complete list of destinations. </p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>

__Required Parameters__

* `name` __:__ `String`


-}

updateGameSessionQueue :
  
    String ->
  
  
    ( UpdateGameSessionQueueOptions -> UpdateGameSessionQueueOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateGameSessionQueueOutput)

updateGameSessionQueue name setOptions =
    
    let
        requestInput = UpdateGameSessionQueueInput
            
            name
            
            options.timeoutInSeconds
            
            options.playerLatencyPolicies
            
            options.destinations
            
        
        options = setOptions (UpdateGameSessionQueueOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateGameSessionQueueInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateGameSessionQueue"
                
                (AWS.Core.Decode.ResultDecoder "UpdateGameSessionQueueOutput" updateGameSessionQueueOutputDecoder)
                
            )



{-| Options for a updateGameSessionQueue request
-}
type alias UpdateGameSessionQueueOptions =
    {
    timeoutInSeconds : Maybe Int,playerLatencyPolicies : Maybe (List PlayerLatencyPolicy),destinations : Maybe (List GameSessionQueueDestination)
    }



{-| <p>Updates settings for a FlexMatch matchmaking configuration. These changes affect all matches and game sessions that are created after the update. To update settings, specify the configuration name to be updated and provide the new settings. </p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html"> Design a FlexMatch Matchmaker</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>

__Required Parameters__

* `name` __:__ `String`


-}

updateMatchmakingConfiguration :
  
    String ->
  
  
    ( UpdateMatchmakingConfigurationOptions -> UpdateMatchmakingConfigurationOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateMatchmakingConfigurationOutput)

updateMatchmakingConfiguration name setOptions =
    
    let
        requestInput = UpdateMatchmakingConfigurationInput
            
            name
            
            options.description
            
            options.gameSessionQueueArns
            
            options.requestTimeoutSeconds
            
            options.acceptanceTimeoutSeconds
            
            options.acceptanceRequired
            
            options.ruleSetName
            
            options.notificationTarget
            
            options.additionalPlayerCount
            
            options.customEventData
            
            options.gameProperties
            
            options.gameSessionData
            
            options.backfillMode
            
        
        options = setOptions (UpdateMatchmakingConfigurationOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateMatchmakingConfigurationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateMatchmakingConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "UpdateMatchmakingConfigurationOutput" updateMatchmakingConfigurationOutputDecoder)
                
            )



{-| Options for a updateMatchmakingConfiguration request
-}
type alias UpdateMatchmakingConfigurationOptions =
    {
    description : Maybe String,gameSessionQueueArns : Maybe (List String),requestTimeoutSeconds : Maybe Int,acceptanceTimeoutSeconds : Maybe Int,acceptanceRequired : Maybe Bool,ruleSetName : Maybe String,notificationTarget : Maybe String,additionalPlayerCount : Maybe Int,customEventData : Maybe String,gameProperties : Maybe (List GameProperty),gameSessionData : Maybe String,backfillMode : Maybe BackfillMode
    }



{-| <p>Updates the current run-time configuration for the specified fleet, which tells Amazon GameLift how to launch server processes on instances in the fleet. You can update a fleet's run-time configuration at any time after the fleet is created; it does not need to be in an <code>ACTIVE</code> status.</p> <p>To update run-time configuration, specify the fleet ID and provide a <code>RuntimeConfiguration</code> object with an updated set of server process configurations.</p> <p>Each instance in a Amazon GameLift fleet checks regularly for an updated run-time configuration and changes how it launches server processes to comply with the latest version. Existing server processes are not affected by the update; run-time configuration changes are applied gradually as existing processes shut down and new processes are launched during Amazon GameLift's normal process recycling activity.</p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html"> Working with Fleets</a>.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>

__Required Parameters__

* `fleetId` __:__ `String`
* `runtimeConfiguration` __:__ `RuntimeConfiguration`


-}

updateRuntimeConfiguration :
  
    String ->
  
    RuntimeConfiguration ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateRuntimeConfigurationOutput)

updateRuntimeConfiguration fleetId runtimeConfiguration =
    
    let
        requestInput = UpdateRuntimeConfigurationInput
            
            fleetId
            
            runtimeConfiguration
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateRuntimeConfigurationInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateRuntimeConfiguration"
                
                (AWS.Core.Decode.ResultDecoder "UpdateRuntimeConfigurationOutput" updateRuntimeConfigurationOutputDecoder)
                
            )





{-| <p>Updates Realtime script metadata and content.</p> <p>To update script metadata, specify the script ID and provide updated name and/or version values. </p> <p>To update script content, provide an updated zip file by pointing to either a local file or an Amazon S3 bucket location. You can use either method regardless of how the original script was uploaded. Use the <i>Version</i> parameter to track updates to the script.</p> <p>If the call is successful, the updated metadata is stored in the script record and a revised script is uploaded to the Amazon GameLift service. Once the script is updated and acquired by a fleet instance, the new version is used for all new game sessions. </p> <p> <b>Learn more</b> </p> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Realtime Servers</a> </p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateScript</a> </p> </li> <li> <p> <a>ListScripts</a> </p> </li> <li> <p> <a>DescribeScript</a> </p> </li> <li> <p> <a>UpdateScript</a> </p> </li> <li> <p> <a>DeleteScript</a> </p> </li> </ul>

__Required Parameters__

* `scriptId` __:__ `String`


-}

updateScript :
  
    String ->
  
  
    ( UpdateScriptOptions -> UpdateScriptOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateScriptOutput)

updateScript scriptId setOptions =
    
    let
        requestInput = UpdateScriptInput
            
            scriptId
            
            options.name
            
            options.version
            
            options.storageLocation
            
            options.zipFile
            
        
        options = setOptions (UpdateScriptOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateScriptInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateScript"
                
                (AWS.Core.Decode.ResultDecoder "UpdateScriptOutput" updateScriptOutputDecoder)
                
            )



{-| Options for a updateScript request
-}
type alias UpdateScriptOptions =
    {
    name : Maybe String,version : Maybe String,storageLocation : Maybe S3Location,zipFile : Maybe String
    }



{-| <p>Validates the syntax of a matchmaking rule or rule set. This operation checks that the rule set is using syntactically correct JSON and that it conforms to allowed property expressions. To validate syntax, provide a rule set JSON string.</p> <p> <b>Learn more</b> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html">Build a Rule Set</a> </p> </li> </ul> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DescribeMatchmakingConfigurations</a> </p> </li> <li> <p> <a>UpdateMatchmakingConfiguration</a> </p> </li> <li> <p> <a>DeleteMatchmakingConfiguration</a> </p> </li> <li> <p> <a>CreateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DescribeMatchmakingRuleSets</a> </p> </li> <li> <p> <a>ValidateMatchmakingRuleSet</a> </p> </li> <li> <p> <a>DeleteMatchmakingRuleSet</a> </p> </li> </ul>

__Required Parameters__

* `ruleSetBody` __:__ `String`


-}

validateMatchmakingRuleSet :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ValidateMatchmakingRuleSetOutput)

validateMatchmakingRuleSet ruleSetBody =
    
    let
        requestInput = ValidateMatchmakingRuleSetInput
            
            ruleSetBody
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> validateMatchmakingRuleSetInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ValidateMatchmakingRuleSet"
                
                (AWS.Core.Decode.ResultDecoder "ValidateMatchmakingRuleSetOutput" validateMatchmakingRuleSetOutputDecoder)
                
            )






{-| Type of HTTP response from acceptMat
-}
type alias AcceptMatchOutput =
    { 
    }



acceptMatchOutputDecoder : JD.Decoder AcceptMatchOutput
acceptMatchOutputDecoder =
    JD.succeed AcceptMatchOutput
        




acceptMatchOutputToString : AcceptMatchOutput -> String -- List (String, String)
acceptMatchOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `AcceptanceType_ACCEPT`
* `AcceptanceType_REJECT`

-}
type AcceptanceType
    = AcceptanceType_ACCEPT
    | AcceptanceType_REJECT



acceptanceTypeDecoder : JD.Decoder AcceptanceType
acceptanceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACCEPT" ->
                        JD.succeed AcceptanceType_ACCEPT

                    "REJECT" ->
                        JD.succeed AcceptanceType_REJECT


                    _ ->
                        JD.fail "bad thing"
            )




acceptanceTypeToString : AcceptanceType -> String
acceptanceTypeToString val =
    case val of
        AcceptanceType_ACCEPT ->
            "ACCEPT"

        AcceptanceType_REJECT ->
            "REJECT"




{-| <p>Properties describing a fleet alias.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>
-}
type alias Alias =
    { aliasId : Maybe String
    , name : Maybe String
    , aliasArn : Maybe String
    , description : Maybe String
    , routingStrategy : Maybe RoutingStrategy
    , creationTime : Maybe Posix
    , lastUpdatedTime : Maybe Posix
    }



aliasDecoder : JD.Decoder Alias
aliasDecoder =
    JD.succeed Alias
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AliasId", "aliasId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AliasArn", "aliasArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoutingStrategy", "routingStrategy"]
            routingStrategyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastUpdatedTime", "lastUpdatedTime"]
            JDX.datetime
        )
        




aliasToString : Alias -> String -- List (String, String)
aliasToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "aliasId" "" -- val.aliasId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "aliasArn" "" -- val.aliasArn
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "routingStrategy" "" -- val.routingStrategy
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "lastUpdatedTime" "" -- val.lastUpdatedTime
        
    --     |> Dict.toList
    ""



{-| <p>Values for use in <a>Player</a> attribute key:value pairs. This object lets you specify an attribute value using any of the valid data types: string, number, string array, or data map. Each <code>AttributeValue</code> object can use only one of the available properties.</p>
-}
type alias AttributeValue =
    { s : Maybe String
    , n : Maybe Float
    , sL : Maybe (List String)
    , sDM : Maybe (Dict String Float)
    }



attributeValueDecoder : JD.Decoder AttributeValue
attributeValueDecoder =
    JD.succeed AttributeValue
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["S", "s"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["N", "n"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SL", "sL"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SDM", "sDM"]
            (AWS.Core.Decode.dict JD.float)
        )
        




attributeValueToString : AttributeValue -> String -- List (String, String)
attributeValueToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "s" "" -- val.s
        
    --     |> Dict.insert
    --         "n" "" -- val.n
        
    --     |> Dict.insert
    --         "sL" "" -- val.sL
        
    --     |> Dict.insert
    --         "sDM" "" -- val.sDM
        
    --     |> Dict.toList
    ""



{-| <p>Temporary access credentials used for uploading game build files to Amazon GameLift. They are valid for a limited time. If they expire before you upload your game build, get a new set by calling <a>RequestUploadCredentials</a>.</p>
-}
type alias AwsCredentials =
    { accessKeyId : Maybe String
    , secretAccessKey : Maybe String
    , sessionToken : Maybe String
    }



awsCredentialsDecoder : JD.Decoder AwsCredentials
awsCredentialsDecoder =
    JD.succeed AwsCredentials
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AccessKeyId", "accessKeyId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SecretAccessKey", "secretAccessKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SessionToken", "sessionToken"]
            JD.string
        )
        




awsCredentialsToString : AwsCredentials -> String -- List (String, String)
awsCredentialsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accessKeyId" "" -- val.accessKeyId
        
    --     |> Dict.insert
    --         "secretAccessKey" "" -- val.secretAccessKey
        
    --     |> Dict.insert
    --         "sessionToken" "" -- val.sessionToken
        
    --     |> Dict.toList
    ""



{-| One of

* `BackfillMode_AUTOMATIC`
* `BackfillMode_MANUAL`

-}
type BackfillMode
    = BackfillMode_AUTOMATIC
    | BackfillMode_MANUAL



backfillModeDecoder : JD.Decoder BackfillMode
backfillModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AUTOMATIC" ->
                        JD.succeed BackfillMode_AUTOMATIC

                    "MANUAL" ->
                        JD.succeed BackfillMode_MANUAL


                    _ ->
                        JD.fail "bad thing"
            )




backfillModeToString : BackfillMode -> String
backfillModeToString val =
    case val of
        BackfillMode_AUTOMATIC ->
            "AUTOMATIC"

        BackfillMode_MANUAL ->
            "MANUAL"




{-| <p>Properties describing a custom game build.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> </ul>
-}
type alias Build =
    { buildId : Maybe String
    , name : Maybe String
    , version : Maybe String
    , status : Maybe BuildStatus
    , sizeOnDisk : Maybe Int
    , operatingSystem : Maybe OperatingSystem
    , creationTime : Maybe Posix
    }



buildDecoder : JD.Decoder Build
buildDecoder =
    JD.succeed Build
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BuildId", "buildId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            buildStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SizeOnDisk", "sizeOnDisk"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperatingSystem", "operatingSystem"]
            operatingSystemDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        




buildToString : Build -> String -- List (String, String)
buildToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "buildId" "" -- val.buildId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "sizeOnDisk" "" -- val.sizeOnDisk
        
    --     |> Dict.insert
    --         "operatingSystem" "" -- val.operatingSystem
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.toList
    ""



{-| One of

* `BuildStatus_INITIALIZED`
* `BuildStatus_READY`
* `BuildStatus_FAILED`

-}
type BuildStatus
    = BuildStatus_INITIALIZED
    | BuildStatus_READY
    | BuildStatus_FAILED



buildStatusDecoder : JD.Decoder BuildStatus
buildStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INITIALIZED" ->
                        JD.succeed BuildStatus_INITIALIZED

                    "READY" ->
                        JD.succeed BuildStatus_READY

                    "FAILED" ->
                        JD.succeed BuildStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




buildStatusToString : BuildStatus -> String
buildStatusToString val =
    case val of
        BuildStatus_INITIALIZED ->
            "INITIALIZED"

        BuildStatus_READY ->
            "READY"

        BuildStatus_FAILED ->
            "FAILED"




{-| One of

* `ComparisonOperatorType_GreaterThanOrEqualToThreshold`
* `ComparisonOperatorType_GreaterThanThreshold`
* `ComparisonOperatorType_LessThanThreshold`
* `ComparisonOperatorType_LessThanOrEqualToThreshold`

-}
type ComparisonOperatorType
    = ComparisonOperatorType_GreaterThanOrEqualToThreshold
    | ComparisonOperatorType_GreaterThanThreshold
    | ComparisonOperatorType_LessThanThreshold
    | ComparisonOperatorType_LessThanOrEqualToThreshold



comparisonOperatorTypeDecoder : JD.Decoder ComparisonOperatorType
comparisonOperatorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GreaterThanOrEqualToThreshold" ->
                        JD.succeed ComparisonOperatorType_GreaterThanOrEqualToThreshold

                    "GreaterThanThreshold" ->
                        JD.succeed ComparisonOperatorType_GreaterThanThreshold

                    "LessThanThreshold" ->
                        JD.succeed ComparisonOperatorType_LessThanThreshold

                    "LessThanOrEqualToThreshold" ->
                        JD.succeed ComparisonOperatorType_LessThanOrEqualToThreshold


                    _ ->
                        JD.fail "bad thing"
            )




comparisonOperatorTypeToString : ComparisonOperatorType -> String
comparisonOperatorTypeToString val =
    case val of
        ComparisonOperatorType_GreaterThanOrEqualToThreshold ->
            "GreaterThanOrEqualToThreshold"

        ComparisonOperatorType_GreaterThanThreshold ->
            "GreaterThanThreshold"

        ComparisonOperatorType_LessThanThreshold ->
            "LessThanThreshold"

        ComparisonOperatorType_LessThanOrEqualToThreshold ->
            "LessThanOrEqualToThreshold"




{-| Type of HTTP response from createAli
-}
type alias CreateAliasOutput =
    { alias : Maybe Alias
    }



createAliasOutputDecoder : JD.Decoder CreateAliasOutput
createAliasOutputDecoder =
    JD.succeed CreateAliasOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Alias", "alias"]
            aliasDecoder
        )
        




createAliasOutputToString : CreateAliasOutput -> String -- List (String, String)
createAliasOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "alias" "" -- val.alias
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createBui
-}
type alias CreateBuildOutput =
    { build : Maybe Build
    , uploadCredentials : Maybe AwsCredentials
    , storageLocation : Maybe S3Location
    }



createBuildOutputDecoder : JD.Decoder CreateBuildOutput
createBuildOutputDecoder =
    JD.succeed CreateBuildOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Build", "build"]
            buildDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UploadCredentials", "uploadCredentials"]
            awsCredentialsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageLocation", "storageLocation"]
            s3LocationDecoder
        )
        




createBuildOutputToString : CreateBuildOutput -> String -- List (String, String)
createBuildOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "build" "" -- val.build
        
    --     |> Dict.insert
    --         "uploadCredentials" "" -- val.uploadCredentials
        
    --     |> Dict.insert
    --         "storageLocation" "" -- val.storageLocation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createFle
-}
type alias CreateFleetOutput =
    { fleetAttributes : Maybe FleetAttributes
    }



createFleetOutputDecoder : JD.Decoder CreateFleetOutput
createFleetOutputDecoder =
    JD.succeed CreateFleetOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetAttributes", "fleetAttributes"]
            fleetAttributesDecoder
        )
        




createFleetOutputToString : CreateFleetOutput -> String -- List (String, String)
createFleetOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetAttributes" "" -- val.fleetAttributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createGameSessi
-}
type alias CreateGameSessionOutput =
    { gameSession : Maybe GameSession
    }



createGameSessionOutputDecoder : JD.Decoder CreateGameSessionOutput
createGameSessionOutputDecoder =
    JD.succeed CreateGameSessionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSession", "gameSession"]
            gameSessionDecoder
        )
        




createGameSessionOutputToString : CreateGameSessionOutput -> String -- List (String, String)
createGameSessionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSession" "" -- val.gameSession
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createGameSessionQue
-}
type alias CreateGameSessionQueueOutput =
    { gameSessionQueue : Maybe GameSessionQueue
    }



createGameSessionQueueOutputDecoder : JD.Decoder CreateGameSessionQueueOutput
createGameSessionQueueOutputDecoder =
    JD.succeed CreateGameSessionQueueOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionQueue", "gameSessionQueue"]
            gameSessionQueueDecoder
        )
        




createGameSessionQueueOutputToString : CreateGameSessionQueueOutput -> String -- List (String, String)
createGameSessionQueueOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSessionQueue" "" -- val.gameSessionQueue
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createMatchmakingConfigurati
-}
type alias CreateMatchmakingConfigurationOutput =
    { configuration : Maybe MatchmakingConfiguration
    }



createMatchmakingConfigurationOutputDecoder : JD.Decoder CreateMatchmakingConfigurationOutput
createMatchmakingConfigurationOutputDecoder =
    JD.succeed CreateMatchmakingConfigurationOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Configuration", "configuration"]
            matchmakingConfigurationDecoder
        )
        




createMatchmakingConfigurationOutputToString : CreateMatchmakingConfigurationOutput -> String -- List (String, String)
createMatchmakingConfigurationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "configuration" "" -- val.configuration
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createMatchmakingRuleS
-}
type alias CreateMatchmakingRuleSetOutput =
    { ruleSet : MatchmakingRuleSet
    }



createMatchmakingRuleSetOutputDecoder : JD.Decoder CreateMatchmakingRuleSetOutput
createMatchmakingRuleSetOutputDecoder =
    JD.succeed CreateMatchmakingRuleSetOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RuleSet", "ruleSet"]
            matchmakingRuleSetDecoder
        )
        




createMatchmakingRuleSetOutputToString : CreateMatchmakingRuleSetOutput -> String -- List (String, String)
createMatchmakingRuleSetOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleSet" "" -- val.ruleSet
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createPlayerSessi
-}
type alias CreatePlayerSessionOutput =
    { playerSession : Maybe PlayerSession
    }



createPlayerSessionOutputDecoder : JD.Decoder CreatePlayerSessionOutput
createPlayerSessionOutputDecoder =
    JD.succeed CreatePlayerSessionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerSession", "playerSession"]
            playerSessionDecoder
        )
        




createPlayerSessionOutputToString : CreatePlayerSessionOutput -> String -- List (String, String)
createPlayerSessionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "playerSession" "" -- val.playerSession
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createPlayerSessio
-}
type alias CreatePlayerSessionsOutput =
    { playerSessions : Maybe (List PlayerSession)
    }



createPlayerSessionsOutputDecoder : JD.Decoder CreatePlayerSessionsOutput
createPlayerSessionsOutputDecoder =
    JD.succeed CreatePlayerSessionsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerSessions", "playerSessions"]
            (JD.list playerSessionDecoder)
        )
        




createPlayerSessionsOutputToString : CreatePlayerSessionsOutput -> String -- List (String, String)
createPlayerSessionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "playerSessions" "" -- val.playerSessions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createScri
-}
type alias CreateScriptOutput =
    { script : Maybe Script
    }



createScriptOutputDecoder : JD.Decoder CreateScriptOutput
createScriptOutputDecoder =
    JD.succeed CreateScriptOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Script", "script"]
            scriptDecoder
        )
        




createScriptOutputToString : CreateScriptOutput -> String -- List (String, String)
createScriptOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "script" "" -- val.script
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createVpcPeeringAuthorizati
-}
type alias CreateVpcPeeringAuthorizationOutput =
    { vpcPeeringAuthorization : Maybe VpcPeeringAuthorization
    }



createVpcPeeringAuthorizationOutputDecoder : JD.Decoder CreateVpcPeeringAuthorizationOutput
createVpcPeeringAuthorizationOutputDecoder =
    JD.succeed CreateVpcPeeringAuthorizationOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcPeeringAuthorization", "vpcPeeringAuthorization"]
            vpcPeeringAuthorizationDecoder
        )
        




createVpcPeeringAuthorizationOutputToString : CreateVpcPeeringAuthorizationOutput -> String -- List (String, String)
createVpcPeeringAuthorizationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "vpcPeeringAuthorization" "" -- val.vpcPeeringAuthorization
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createVpcPeeringConnecti
-}
type alias CreateVpcPeeringConnectionOutput =
    { 
    }



createVpcPeeringConnectionOutputDecoder : JD.Decoder CreateVpcPeeringConnectionOutput
createVpcPeeringConnectionOutputDecoder =
    JD.succeed CreateVpcPeeringConnectionOutput
        




createVpcPeeringConnectionOutputToString : CreateVpcPeeringConnectionOutput -> String -- List (String, String)
createVpcPeeringConnectionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteGameSessionQue
-}
type alias DeleteGameSessionQueueOutput =
    { 
    }



deleteGameSessionQueueOutputDecoder : JD.Decoder DeleteGameSessionQueueOutput
deleteGameSessionQueueOutputDecoder =
    JD.succeed DeleteGameSessionQueueOutput
        




deleteGameSessionQueueOutputToString : DeleteGameSessionQueueOutput -> String -- List (String, String)
deleteGameSessionQueueOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteMatchmakingConfigurati
-}
type alias DeleteMatchmakingConfigurationOutput =
    { 
    }



deleteMatchmakingConfigurationOutputDecoder : JD.Decoder DeleteMatchmakingConfigurationOutput
deleteMatchmakingConfigurationOutputDecoder =
    JD.succeed DeleteMatchmakingConfigurationOutput
        




deleteMatchmakingConfigurationOutputToString : DeleteMatchmakingConfigurationOutput -> String -- List (String, String)
deleteMatchmakingConfigurationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteMatchmakingRuleS
-}
type alias DeleteMatchmakingRuleSetOutput =
    { 
    }



deleteMatchmakingRuleSetOutputDecoder : JD.Decoder DeleteMatchmakingRuleSetOutput
deleteMatchmakingRuleSetOutputDecoder =
    JD.succeed DeleteMatchmakingRuleSetOutput
        




deleteMatchmakingRuleSetOutputToString : DeleteMatchmakingRuleSetOutput -> String -- List (String, String)
deleteMatchmakingRuleSetOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteVpcPeeringAuthorizati
-}
type alias DeleteVpcPeeringAuthorizationOutput =
    { 
    }



deleteVpcPeeringAuthorizationOutputDecoder : JD.Decoder DeleteVpcPeeringAuthorizationOutput
deleteVpcPeeringAuthorizationOutputDecoder =
    JD.succeed DeleteVpcPeeringAuthorizationOutput
        




deleteVpcPeeringAuthorizationOutputToString : DeleteVpcPeeringAuthorizationOutput -> String -- List (String, String)
deleteVpcPeeringAuthorizationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteVpcPeeringConnecti
-}
type alias DeleteVpcPeeringConnectionOutput =
    { 
    }



deleteVpcPeeringConnectionOutputDecoder : JD.Decoder DeleteVpcPeeringConnectionOutput
deleteVpcPeeringConnectionOutputDecoder =
    JD.succeed DeleteVpcPeeringConnectionOutput
        




deleteVpcPeeringConnectionOutputToString : DeleteVpcPeeringConnectionOutput -> String -- List (String, String)
deleteVpcPeeringConnectionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeAli
-}
type alias DescribeAliasOutput =
    { alias : Maybe Alias
    }



describeAliasOutputDecoder : JD.Decoder DescribeAliasOutput
describeAliasOutputDecoder =
    JD.succeed DescribeAliasOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Alias", "alias"]
            aliasDecoder
        )
        




describeAliasOutputToString : DescribeAliasOutput -> String -- List (String, String)
describeAliasOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "alias" "" -- val.alias
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeBui
-}
type alias DescribeBuildOutput =
    { build : Maybe Build
    }



describeBuildOutputDecoder : JD.Decoder DescribeBuildOutput
describeBuildOutputDecoder =
    JD.succeed DescribeBuildOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Build", "build"]
            buildDecoder
        )
        




describeBuildOutputToString : DescribeBuildOutput -> String -- List (String, String)
describeBuildOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "build" "" -- val.build
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeEC2InstanceLimi
-}
type alias DescribeEC2InstanceLimitsOutput =
    { eC2InstanceLimits : Maybe (List EC2InstanceLimit)
    }



describeEC2InstanceLimitsOutputDecoder : JD.Decoder DescribeEC2InstanceLimitsOutput
describeEC2InstanceLimitsOutputDecoder =
    JD.succeed DescribeEC2InstanceLimitsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EC2InstanceLimits", "eC2InstanceLimits"]
            (JD.list eC2InstanceLimitDecoder)
        )
        




describeEC2InstanceLimitsOutputToString : DescribeEC2InstanceLimitsOutput -> String -- List (String, String)
describeEC2InstanceLimitsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eC2InstanceLimits" "" -- val.eC2InstanceLimits
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeFleetAttribut
-}
type alias DescribeFleetAttributesOutput =
    { fleetAttributes : Maybe (List FleetAttributes)
    , nextToken : Maybe String
    }



describeFleetAttributesOutputDecoder : JD.Decoder DescribeFleetAttributesOutput
describeFleetAttributesOutputDecoder =
    JD.succeed DescribeFleetAttributesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetAttributes", "fleetAttributes"]
            (JD.list fleetAttributesDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeFleetAttributesOutputToString : DescribeFleetAttributesOutput -> String -- List (String, String)
describeFleetAttributesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetAttributes" "" -- val.fleetAttributes
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeFleetCapaci
-}
type alias DescribeFleetCapacityOutput =
    { fleetCapacity : Maybe (List FleetCapacity)
    , nextToken : Maybe String
    }



describeFleetCapacityOutputDecoder : JD.Decoder DescribeFleetCapacityOutput
describeFleetCapacityOutputDecoder =
    JD.succeed DescribeFleetCapacityOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetCapacity", "fleetCapacity"]
            (JD.list fleetCapacityDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeFleetCapacityOutputToString : DescribeFleetCapacityOutput -> String -- List (String, String)
describeFleetCapacityOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetCapacity" "" -- val.fleetCapacity
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeFleetEven
-}
type alias DescribeFleetEventsOutput =
    { events : Maybe (List Event)
    , nextToken : Maybe String
    }



describeFleetEventsOutputDecoder : JD.Decoder DescribeFleetEventsOutput
describeFleetEventsOutputDecoder =
    JD.succeed DescribeFleetEventsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Events", "events"]
            (JD.list eventDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeFleetEventsOutputToString : DescribeFleetEventsOutput -> String -- List (String, String)
describeFleetEventsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "events" "" -- val.events
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeFleetPortSettin
-}
type alias DescribeFleetPortSettingsOutput =
    { inboundPermissions : Maybe (List IpPermission)
    }



describeFleetPortSettingsOutputDecoder : JD.Decoder DescribeFleetPortSettingsOutput
describeFleetPortSettingsOutputDecoder =
    JD.succeed DescribeFleetPortSettingsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InboundPermissions", "inboundPermissions"]
            (JD.list ipPermissionDecoder)
        )
        




describeFleetPortSettingsOutputToString : DescribeFleetPortSettingsOutput -> String -- List (String, String)
describeFleetPortSettingsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "inboundPermissions" "" -- val.inboundPermissions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeFleetUtilizati
-}
type alias DescribeFleetUtilizationOutput =
    { fleetUtilization : Maybe (List FleetUtilization)
    , nextToken : Maybe String
    }



describeFleetUtilizationOutputDecoder : JD.Decoder DescribeFleetUtilizationOutput
describeFleetUtilizationOutputDecoder =
    JD.succeed DescribeFleetUtilizationOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetUtilization", "fleetUtilization"]
            (JD.list fleetUtilizationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeFleetUtilizationOutputToString : DescribeFleetUtilizationOutput -> String -- List (String, String)
describeFleetUtilizationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetUtilization" "" -- val.fleetUtilization
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeGameSessionDetai
-}
type alias DescribeGameSessionDetailsOutput =
    { gameSessionDetails : Maybe (List GameSessionDetail)
    , nextToken : Maybe String
    }



describeGameSessionDetailsOutputDecoder : JD.Decoder DescribeGameSessionDetailsOutput
describeGameSessionDetailsOutputDecoder =
    JD.succeed DescribeGameSessionDetailsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionDetails", "gameSessionDetails"]
            (JD.list gameSessionDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeGameSessionDetailsOutputToString : DescribeGameSessionDetailsOutput -> String -- List (String, String)
describeGameSessionDetailsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSessionDetails" "" -- val.gameSessionDetails
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeGameSessionPlaceme
-}
type alias DescribeGameSessionPlacementOutput =
    { gameSessionPlacement : Maybe GameSessionPlacement
    }



describeGameSessionPlacementOutputDecoder : JD.Decoder DescribeGameSessionPlacementOutput
describeGameSessionPlacementOutputDecoder =
    JD.succeed DescribeGameSessionPlacementOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionPlacement", "gameSessionPlacement"]
            gameSessionPlacementDecoder
        )
        




describeGameSessionPlacementOutputToString : DescribeGameSessionPlacementOutput -> String -- List (String, String)
describeGameSessionPlacementOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSessionPlacement" "" -- val.gameSessionPlacement
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeGameSessionQueu
-}
type alias DescribeGameSessionQueuesOutput =
    { gameSessionQueues : Maybe (List GameSessionQueue)
    , nextToken : Maybe String
    }



describeGameSessionQueuesOutputDecoder : JD.Decoder DescribeGameSessionQueuesOutput
describeGameSessionQueuesOutputDecoder =
    JD.succeed DescribeGameSessionQueuesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionQueues", "gameSessionQueues"]
            (JD.list gameSessionQueueDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeGameSessionQueuesOutputToString : DescribeGameSessionQueuesOutput -> String -- List (String, String)
describeGameSessionQueuesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSessionQueues" "" -- val.gameSessionQueues
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeGameSessio
-}
type alias DescribeGameSessionsOutput =
    { gameSessions : Maybe (List GameSession)
    , nextToken : Maybe String
    }



describeGameSessionsOutputDecoder : JD.Decoder DescribeGameSessionsOutput
describeGameSessionsOutputDecoder =
    JD.succeed DescribeGameSessionsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessions", "gameSessions"]
            (JD.list gameSessionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeGameSessionsOutputToString : DescribeGameSessionsOutput -> String -- List (String, String)
describeGameSessionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSessions" "" -- val.gameSessions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeInstanc
-}
type alias DescribeInstancesOutput =
    { instances : Maybe (List Instance)
    , nextToken : Maybe String
    }



describeInstancesOutputDecoder : JD.Decoder DescribeInstancesOutput
describeInstancesOutputDecoder =
    JD.succeed DescribeInstancesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Instances", "instances"]
            (JD.list instanceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeInstancesOutputToString : DescribeInstancesOutput -> String -- List (String, String)
describeInstancesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instances" "" -- val.instances
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeMatchmakingConfiguratio
-}
type alias DescribeMatchmakingConfigurationsOutput =
    { configurations : Maybe (List MatchmakingConfiguration)
    , nextToken : Maybe String
    }



describeMatchmakingConfigurationsOutputDecoder : JD.Decoder DescribeMatchmakingConfigurationsOutput
describeMatchmakingConfigurationsOutputDecoder =
    JD.succeed DescribeMatchmakingConfigurationsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Configurations", "configurations"]
            (JD.list matchmakingConfigurationDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeMatchmakingConfigurationsOutputToString : DescribeMatchmakingConfigurationsOutput -> String -- List (String, String)
describeMatchmakingConfigurationsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "configurations" "" -- val.configurations
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeMatchmaki
-}
type alias DescribeMatchmakingOutput =
    { ticketList : Maybe (List MatchmakingTicket)
    }



describeMatchmakingOutputDecoder : JD.Decoder DescribeMatchmakingOutput
describeMatchmakingOutputDecoder =
    JD.succeed DescribeMatchmakingOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TicketList", "ticketList"]
            (JD.list matchmakingTicketDecoder)
        )
        




describeMatchmakingOutputToString : DescribeMatchmakingOutput -> String -- List (String, String)
describeMatchmakingOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ticketList" "" -- val.ticketList
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeMatchmakingRuleSe
-}
type alias DescribeMatchmakingRuleSetsOutput =
    { ruleSets : (List MatchmakingRuleSet)
    , nextToken : Maybe String
    }



describeMatchmakingRuleSetsOutputDecoder : JD.Decoder DescribeMatchmakingRuleSetsOutput
describeMatchmakingRuleSetsOutputDecoder =
    JD.succeed DescribeMatchmakingRuleSetsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RuleSets", "ruleSets"]
            (JD.list matchmakingRuleSetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeMatchmakingRuleSetsOutputToString : DescribeMatchmakingRuleSetsOutput -> String -- List (String, String)
describeMatchmakingRuleSetsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleSets" "" -- val.ruleSets
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describePlayerSessio
-}
type alias DescribePlayerSessionsOutput =
    { playerSessions : Maybe (List PlayerSession)
    , nextToken : Maybe String
    }



describePlayerSessionsOutputDecoder : JD.Decoder DescribePlayerSessionsOutput
describePlayerSessionsOutputDecoder =
    JD.succeed DescribePlayerSessionsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerSessions", "playerSessions"]
            (JD.list playerSessionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describePlayerSessionsOutputToString : DescribePlayerSessionsOutput -> String -- List (String, String)
describePlayerSessionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "playerSessions" "" -- val.playerSessions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeRuntimeConfigurati
-}
type alias DescribeRuntimeConfigurationOutput =
    { runtimeConfiguration : Maybe RuntimeConfiguration
    }



describeRuntimeConfigurationOutputDecoder : JD.Decoder DescribeRuntimeConfigurationOutput
describeRuntimeConfigurationOutputDecoder =
    JD.succeed DescribeRuntimeConfigurationOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuntimeConfiguration", "runtimeConfiguration"]
            runtimeConfigurationDecoder
        )
        




describeRuntimeConfigurationOutputToString : DescribeRuntimeConfigurationOutput -> String -- List (String, String)
describeRuntimeConfigurationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "runtimeConfiguration" "" -- val.runtimeConfiguration
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeScalingPolici
-}
type alias DescribeScalingPoliciesOutput =
    { scalingPolicies : Maybe (List ScalingPolicy)
    , nextToken : Maybe String
    }



describeScalingPoliciesOutputDecoder : JD.Decoder DescribeScalingPoliciesOutput
describeScalingPoliciesOutputDecoder =
    JD.succeed DescribeScalingPoliciesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScalingPolicies", "scalingPolicies"]
            (JD.list scalingPolicyDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




describeScalingPoliciesOutputToString : DescribeScalingPoliciesOutput -> String -- List (String, String)
describeScalingPoliciesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "scalingPolicies" "" -- val.scalingPolicies
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeScri
-}
type alias DescribeScriptOutput =
    { script : Maybe Script
    }



describeScriptOutputDecoder : JD.Decoder DescribeScriptOutput
describeScriptOutputDecoder =
    JD.succeed DescribeScriptOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Script", "script"]
            scriptDecoder
        )
        




describeScriptOutputToString : DescribeScriptOutput -> String -- List (String, String)
describeScriptOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "script" "" -- val.script
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeVpcPeeringAuthorizatio
-}
type alias DescribeVpcPeeringAuthorizationsOutput =
    { vpcPeeringAuthorizations : Maybe (List VpcPeeringAuthorization)
    }



describeVpcPeeringAuthorizationsOutputDecoder : JD.Decoder DescribeVpcPeeringAuthorizationsOutput
describeVpcPeeringAuthorizationsOutputDecoder =
    JD.succeed DescribeVpcPeeringAuthorizationsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcPeeringAuthorizations", "vpcPeeringAuthorizations"]
            (JD.list vpcPeeringAuthorizationDecoder)
        )
        




describeVpcPeeringAuthorizationsOutputToString : DescribeVpcPeeringAuthorizationsOutput -> String -- List (String, String)
describeVpcPeeringAuthorizationsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "vpcPeeringAuthorizations" "" -- val.vpcPeeringAuthorizations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeVpcPeeringConnectio
-}
type alias DescribeVpcPeeringConnectionsOutput =
    { vpcPeeringConnections : Maybe (List VpcPeeringConnection)
    }



describeVpcPeeringConnectionsOutputDecoder : JD.Decoder DescribeVpcPeeringConnectionsOutput
describeVpcPeeringConnectionsOutputDecoder =
    JD.succeed DescribeVpcPeeringConnectionsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcPeeringConnections", "vpcPeeringConnections"]
            (JD.list vpcPeeringConnectionDecoder)
        )
        




describeVpcPeeringConnectionsOutputToString : DescribeVpcPeeringConnectionsOutput -> String -- List (String, String)
describeVpcPeeringConnectionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "vpcPeeringConnections" "" -- val.vpcPeeringConnections
        
    --     |> Dict.toList
    ""



{-| <p>Player information for use when creating player sessions using a game session placement request with <a>StartGameSessionPlacement</a>.</p>
-}
type alias DesiredPlayerSession =
    { playerId : Maybe String
    , playerData : Maybe String
    }



desiredPlayerSessionDecoder : JD.Decoder DesiredPlayerSession
desiredPlayerSessionDecoder =
    JD.succeed DesiredPlayerSession
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerId", "playerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerData", "playerData"]
            JD.string
        )
        




desiredPlayerSessionToString : DesiredPlayerSession -> String -- List (String, String)
desiredPlayerSessionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "playerId" "" -- val.playerId
        
    --     |> Dict.insert
    --         "playerData" "" -- val.playerData
        
    --     |> Dict.toList
    ""



{-| <p>Current status of fleet capacity. The number of active instances should match or be in the process of matching the number of desired instances. Pending and terminating counts are non-zero only if fleet capacity is adjusting to an <a>UpdateFleetCapacity</a> request, or if access to resources is temporarily affected.</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>
-}
type alias EC2InstanceCounts =
    { dESIRED : Maybe Int
    , mINIMUM : Maybe Int
    , mAXIMUM : Maybe Int
    , pENDING : Maybe Int
    , aCTIVE : Maybe Int
    , iDLE : Maybe Int
    , tERMINATING : Maybe Int
    }



eC2InstanceCountsDecoder : JD.Decoder EC2InstanceCounts
eC2InstanceCountsDecoder =
    JD.succeed EC2InstanceCounts
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DESIRED", "dESIRED"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MINIMUM", "mINIMUM"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MAXIMUM", "mAXIMUM"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PENDING", "pENDING"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ACTIVE", "aCTIVE"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IDLE", "iDLE"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TERMINATING", "tERMINATING"]
            JD.int
        )
        




eC2InstanceCountsToString : EC2InstanceCounts -> String -- List (String, String)
eC2InstanceCountsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "dESIRED" "" -- val.dESIRED
        
    --     |> Dict.insert
    --         "mINIMUM" "" -- val.mINIMUM
        
    --     |> Dict.insert
    --         "mAXIMUM" "" -- val.mAXIMUM
        
    --     |> Dict.insert
    --         "pENDING" "" -- val.pENDING
        
    --     |> Dict.insert
    --         "aCTIVE" "" -- val.aCTIVE
        
    --     |> Dict.insert
    --         "iDLE" "" -- val.iDLE
        
    --     |> Dict.insert
    --         "tERMINATING" "" -- val.tERMINATING
        
    --     |> Dict.toList
    ""



{-| <p>Maximum number of instances allowed based on the Amazon Elastic Compute Cloud (Amazon EC2) instance type. Instance limits can be retrieved by calling <a>DescribeEC2InstanceLimits</a>.</p>
-}
type alias EC2InstanceLimit =
    { eC2InstanceType : Maybe EC2InstanceType
    , currentInstances : Maybe Int
    , instanceLimit : Maybe Int
    }



eC2InstanceLimitDecoder : JD.Decoder EC2InstanceLimit
eC2InstanceLimitDecoder =
    JD.succeed EC2InstanceLimit
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EC2InstanceType", "eC2InstanceType"]
            eC2InstanceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CurrentInstances", "currentInstances"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceLimit", "instanceLimit"]
            JD.int
        )
        




eC2InstanceLimitToString : EC2InstanceLimit -> String -- List (String, String)
eC2InstanceLimitToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eC2InstanceType" "" -- val.eC2InstanceType
        
    --     |> Dict.insert
    --         "currentInstances" "" -- val.currentInstances
        
    --     |> Dict.insert
    --         "instanceLimit" "" -- val.instanceLimit
        
    --     |> Dict.toList
    ""



{-| One of

* `EC2InstanceType_t2.micro`
* `EC2InstanceType_t2.small`
* `EC2InstanceType_t2.medium`
* `EC2InstanceType_t2.large`
* `EC2InstanceType_c3.large`
* `EC2InstanceType_c3.xlarge`
* `EC2InstanceType_c3.2xlarge`
* `EC2InstanceType_c3.4xlarge`
* `EC2InstanceType_c3.8xlarge`
* `EC2InstanceType_c4.large`
* `EC2InstanceType_c4.xlarge`
* `EC2InstanceType_c4.2xlarge`
* `EC2InstanceType_c4.4xlarge`
* `EC2InstanceType_c4.8xlarge`
* `EC2InstanceType_r3.large`
* `EC2InstanceType_r3.xlarge`
* `EC2InstanceType_r3.2xlarge`
* `EC2InstanceType_r3.4xlarge`
* `EC2InstanceType_r3.8xlarge`
* `EC2InstanceType_r4.large`
* `EC2InstanceType_r4.xlarge`
* `EC2InstanceType_r4.2xlarge`
* `EC2InstanceType_r4.4xlarge`
* `EC2InstanceType_r4.8xlarge`
* `EC2InstanceType_r4.16xlarge`
* `EC2InstanceType_m3.medium`
* `EC2InstanceType_m3.large`
* `EC2InstanceType_m3.xlarge`
* `EC2InstanceType_m3.2xlarge`
* `EC2InstanceType_m4.large`
* `EC2InstanceType_m4.xlarge`
* `EC2InstanceType_m4.2xlarge`
* `EC2InstanceType_m4.4xlarge`
* `EC2InstanceType_m4.10xlarge`

-}
type EC2InstanceType
    = EC2InstanceType_t2_micro
    | EC2InstanceType_t2_small
    | EC2InstanceType_t2_medium
    | EC2InstanceType_t2_large
    | EC2InstanceType_c3_large
    | EC2InstanceType_c3_xlarge
    | EC2InstanceType_c3_2xlarge
    | EC2InstanceType_c3_4xlarge
    | EC2InstanceType_c3_8xlarge
    | EC2InstanceType_c4_large
    | EC2InstanceType_c4_xlarge
    | EC2InstanceType_c4_2xlarge
    | EC2InstanceType_c4_4xlarge
    | EC2InstanceType_c4_8xlarge
    | EC2InstanceType_r3_large
    | EC2InstanceType_r3_xlarge
    | EC2InstanceType_r3_2xlarge
    | EC2InstanceType_r3_4xlarge
    | EC2InstanceType_r3_8xlarge
    | EC2InstanceType_r4_large
    | EC2InstanceType_r4_xlarge
    | EC2InstanceType_r4_2xlarge
    | EC2InstanceType_r4_4xlarge
    | EC2InstanceType_r4_8xlarge
    | EC2InstanceType_r4_16xlarge
    | EC2InstanceType_m3_medium
    | EC2InstanceType_m3_large
    | EC2InstanceType_m3_xlarge
    | EC2InstanceType_m3_2xlarge
    | EC2InstanceType_m4_large
    | EC2InstanceType_m4_xlarge
    | EC2InstanceType_m4_2xlarge
    | EC2InstanceType_m4_4xlarge
    | EC2InstanceType_m4_10xlarge



eC2InstanceTypeDecoder : JD.Decoder EC2InstanceType
eC2InstanceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "t2_micro" ->
                        JD.succeed EC2InstanceType_t2_micro

                    "t2_small" ->
                        JD.succeed EC2InstanceType_t2_small

                    "t2_medium" ->
                        JD.succeed EC2InstanceType_t2_medium

                    "t2_large" ->
                        JD.succeed EC2InstanceType_t2_large

                    "c3_large" ->
                        JD.succeed EC2InstanceType_c3_large

                    "c3_xlarge" ->
                        JD.succeed EC2InstanceType_c3_xlarge

                    "c3_2xlarge" ->
                        JD.succeed EC2InstanceType_c3_2xlarge

                    "c3_4xlarge" ->
                        JD.succeed EC2InstanceType_c3_4xlarge

                    "c3_8xlarge" ->
                        JD.succeed EC2InstanceType_c3_8xlarge

                    "c4_large" ->
                        JD.succeed EC2InstanceType_c4_large

                    "c4_xlarge" ->
                        JD.succeed EC2InstanceType_c4_xlarge

                    "c4_2xlarge" ->
                        JD.succeed EC2InstanceType_c4_2xlarge

                    "c4_4xlarge" ->
                        JD.succeed EC2InstanceType_c4_4xlarge

                    "c4_8xlarge" ->
                        JD.succeed EC2InstanceType_c4_8xlarge

                    "r3_large" ->
                        JD.succeed EC2InstanceType_r3_large

                    "r3_xlarge" ->
                        JD.succeed EC2InstanceType_r3_xlarge

                    "r3_2xlarge" ->
                        JD.succeed EC2InstanceType_r3_2xlarge

                    "r3_4xlarge" ->
                        JD.succeed EC2InstanceType_r3_4xlarge

                    "r3_8xlarge" ->
                        JD.succeed EC2InstanceType_r3_8xlarge

                    "r4_large" ->
                        JD.succeed EC2InstanceType_r4_large

                    "r4_xlarge" ->
                        JD.succeed EC2InstanceType_r4_xlarge

                    "r4_2xlarge" ->
                        JD.succeed EC2InstanceType_r4_2xlarge

                    "r4_4xlarge" ->
                        JD.succeed EC2InstanceType_r4_4xlarge

                    "r4_8xlarge" ->
                        JD.succeed EC2InstanceType_r4_8xlarge

                    "r4_16xlarge" ->
                        JD.succeed EC2InstanceType_r4_16xlarge

                    "m3_medium" ->
                        JD.succeed EC2InstanceType_m3_medium

                    "m3_large" ->
                        JD.succeed EC2InstanceType_m3_large

                    "m3_xlarge" ->
                        JD.succeed EC2InstanceType_m3_xlarge

                    "m3_2xlarge" ->
                        JD.succeed EC2InstanceType_m3_2xlarge

                    "m4_large" ->
                        JD.succeed EC2InstanceType_m4_large

                    "m4_xlarge" ->
                        JD.succeed EC2InstanceType_m4_xlarge

                    "m4_2xlarge" ->
                        JD.succeed EC2InstanceType_m4_2xlarge

                    "m4_4xlarge" ->
                        JD.succeed EC2InstanceType_m4_4xlarge

                    "m4_10xlarge" ->
                        JD.succeed EC2InstanceType_m4_10xlarge


                    _ ->
                        JD.fail "bad thing"
            )




eC2InstanceTypeToString : EC2InstanceType -> String
eC2InstanceTypeToString val =
    case val of
        EC2InstanceType_t2_micro ->
            "t2_micro"

        EC2InstanceType_t2_small ->
            "t2_small"

        EC2InstanceType_t2_medium ->
            "t2_medium"

        EC2InstanceType_t2_large ->
            "t2_large"

        EC2InstanceType_c3_large ->
            "c3_large"

        EC2InstanceType_c3_xlarge ->
            "c3_xlarge"

        EC2InstanceType_c3_2xlarge ->
            "c3_2xlarge"

        EC2InstanceType_c3_4xlarge ->
            "c3_4xlarge"

        EC2InstanceType_c3_8xlarge ->
            "c3_8xlarge"

        EC2InstanceType_c4_large ->
            "c4_large"

        EC2InstanceType_c4_xlarge ->
            "c4_xlarge"

        EC2InstanceType_c4_2xlarge ->
            "c4_2xlarge"

        EC2InstanceType_c4_4xlarge ->
            "c4_4xlarge"

        EC2InstanceType_c4_8xlarge ->
            "c4_8xlarge"

        EC2InstanceType_r3_large ->
            "r3_large"

        EC2InstanceType_r3_xlarge ->
            "r3_xlarge"

        EC2InstanceType_r3_2xlarge ->
            "r3_2xlarge"

        EC2InstanceType_r3_4xlarge ->
            "r3_4xlarge"

        EC2InstanceType_r3_8xlarge ->
            "r3_8xlarge"

        EC2InstanceType_r4_large ->
            "r4_large"

        EC2InstanceType_r4_xlarge ->
            "r4_xlarge"

        EC2InstanceType_r4_2xlarge ->
            "r4_2xlarge"

        EC2InstanceType_r4_4xlarge ->
            "r4_4xlarge"

        EC2InstanceType_r4_8xlarge ->
            "r4_8xlarge"

        EC2InstanceType_r4_16xlarge ->
            "r4_16xlarge"

        EC2InstanceType_m3_medium ->
            "m3_medium"

        EC2InstanceType_m3_large ->
            "m3_large"

        EC2InstanceType_m3_xlarge ->
            "m3_xlarge"

        EC2InstanceType_m3_2xlarge ->
            "m3_2xlarge"

        EC2InstanceType_m4_large ->
            "m4_large"

        EC2InstanceType_m4_xlarge ->
            "m4_xlarge"

        EC2InstanceType_m4_2xlarge ->
            "m4_2xlarge"

        EC2InstanceType_m4_4xlarge ->
            "m4_4xlarge"

        EC2InstanceType_m4_10xlarge ->
            "m4_10xlarge"




{-| <p>Log entry describing an event that involves Amazon GameLift resources (such as a fleet). In addition to tracking activity, event codes and messages can provide additional information for troubleshooting and debugging problems.</p>
-}
type alias Event =
    { eventId : Maybe String
    , resourceId : Maybe String
    , eventCode : Maybe EventCode
    , message : Maybe String
    , eventTime : Maybe Posix
    , preSignedLogUrl : Maybe String
    }



eventDecoder : JD.Decoder Event
eventDecoder =
    JD.succeed Event
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventId", "eventId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceId", "resourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventCode", "eventCode"]
            eventCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EventTime", "eventTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreSignedLogUrl", "preSignedLogUrl"]
            JD.string
        )
        




eventToString : Event -> String -- List (String, String)
eventToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "eventId" "" -- val.eventId
        
    --     |> Dict.insert
    --         "resourceId" "" -- val.resourceId
        
    --     |> Dict.insert
    --         "eventCode" "" -- val.eventCode
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "eventTime" "" -- val.eventTime
        
    --     |> Dict.insert
    --         "preSignedLogUrl" "" -- val.preSignedLogUrl
        
    --     |> Dict.toList
    ""



{-| One of

* `EventCode_GENERIC_EVENT`
* `EventCode_FLEET_CREATED`
* `EventCode_FLEET_DELETED`
* `EventCode_FLEET_SCALING_EVENT`
* `EventCode_FLEET_STATE_DOWNLOADING`
* `EventCode_FLEET_STATE_VALIDATING`
* `EventCode_FLEET_STATE_BUILDING`
* `EventCode_FLEET_STATE_ACTIVATING`
* `EventCode_FLEET_STATE_ACTIVE`
* `EventCode_FLEET_STATE_ERROR`
* `EventCode_FLEET_INITIALIZATION_FAILED`
* `EventCode_FLEET_BINARY_DOWNLOAD_FAILED`
* `EventCode_FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND`
* `EventCode_FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE`
* `EventCode_FLEET_VALIDATION_TIMED_OUT`
* `EventCode_FLEET_ACTIVATION_FAILED`
* `EventCode_FLEET_ACTIVATION_FAILED_NO_INSTANCES`
* `EventCode_FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED`
* `EventCode_SERVER_PROCESS_INVALID_PATH`
* `EventCode_SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT`
* `EventCode_SERVER_PROCESS_PROCESS_READY_TIMEOUT`
* `EventCode_SERVER_PROCESS_CRASHED`
* `EventCode_SERVER_PROCESS_TERMINATED_UNHEALTHY`
* `EventCode_SERVER_PROCESS_FORCE_TERMINATED`
* `EventCode_SERVER_PROCESS_PROCESS_EXIT_TIMEOUT`
* `EventCode_GAME_SESSION_ACTIVATION_TIMEOUT`
* `EventCode_FLEET_CREATION_EXTRACTING_BUILD`
* `EventCode_FLEET_CREATION_RUNNING_INSTALLER`
* `EventCode_FLEET_CREATION_VALIDATING_RUNTIME_CONFIG`
* `EventCode_FLEET_VPC_PEERING_SUCCEEDED`
* `EventCode_FLEET_VPC_PEERING_FAILED`
* `EventCode_FLEET_VPC_PEERING_DELETED`
* `EventCode_INSTANCE_INTERRUPTED`

-}
type EventCode
    = EventCode_GENERIC_EVENT
    | EventCode_FLEET_CREATED
    | EventCode_FLEET_DELETED
    | EventCode_FLEET_SCALING_EVENT
    | EventCode_FLEET_STATE_DOWNLOADING
    | EventCode_FLEET_STATE_VALIDATING
    | EventCode_FLEET_STATE_BUILDING
    | EventCode_FLEET_STATE_ACTIVATING
    | EventCode_FLEET_STATE_ACTIVE
    | EventCode_FLEET_STATE_ERROR
    | EventCode_FLEET_INITIALIZATION_FAILED
    | EventCode_FLEET_BINARY_DOWNLOAD_FAILED
    | EventCode_FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND
    | EventCode_FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE
    | EventCode_FLEET_VALIDATION_TIMED_OUT
    | EventCode_FLEET_ACTIVATION_FAILED
    | EventCode_FLEET_ACTIVATION_FAILED_NO_INSTANCES
    | EventCode_FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED
    | EventCode_SERVER_PROCESS_INVALID_PATH
    | EventCode_SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT
    | EventCode_SERVER_PROCESS_PROCESS_READY_TIMEOUT
    | EventCode_SERVER_PROCESS_CRASHED
    | EventCode_SERVER_PROCESS_TERMINATED_UNHEALTHY
    | EventCode_SERVER_PROCESS_FORCE_TERMINATED
    | EventCode_SERVER_PROCESS_PROCESS_EXIT_TIMEOUT
    | EventCode_GAME_SESSION_ACTIVATION_TIMEOUT
    | EventCode_FLEET_CREATION_EXTRACTING_BUILD
    | EventCode_FLEET_CREATION_RUNNING_INSTALLER
    | EventCode_FLEET_CREATION_VALIDATING_RUNTIME_CONFIG
    | EventCode_FLEET_VPC_PEERING_SUCCEEDED
    | EventCode_FLEET_VPC_PEERING_FAILED
    | EventCode_FLEET_VPC_PEERING_DELETED
    | EventCode_INSTANCE_INTERRUPTED



eventCodeDecoder : JD.Decoder EventCode
eventCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GENERIC_EVENT" ->
                        JD.succeed EventCode_GENERIC_EVENT

                    "FLEET_CREATED" ->
                        JD.succeed EventCode_FLEET_CREATED

                    "FLEET_DELETED" ->
                        JD.succeed EventCode_FLEET_DELETED

                    "FLEET_SCALING_EVENT" ->
                        JD.succeed EventCode_FLEET_SCALING_EVENT

                    "FLEET_STATE_DOWNLOADING" ->
                        JD.succeed EventCode_FLEET_STATE_DOWNLOADING

                    "FLEET_STATE_VALIDATING" ->
                        JD.succeed EventCode_FLEET_STATE_VALIDATING

                    "FLEET_STATE_BUILDING" ->
                        JD.succeed EventCode_FLEET_STATE_BUILDING

                    "FLEET_STATE_ACTIVATING" ->
                        JD.succeed EventCode_FLEET_STATE_ACTIVATING

                    "FLEET_STATE_ACTIVE" ->
                        JD.succeed EventCode_FLEET_STATE_ACTIVE

                    "FLEET_STATE_ERROR" ->
                        JD.succeed EventCode_FLEET_STATE_ERROR

                    "FLEET_INITIALIZATION_FAILED" ->
                        JD.succeed EventCode_FLEET_INITIALIZATION_FAILED

                    "FLEET_BINARY_DOWNLOAD_FAILED" ->
                        JD.succeed EventCode_FLEET_BINARY_DOWNLOAD_FAILED

                    "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND" ->
                        JD.succeed EventCode_FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND

                    "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE" ->
                        JD.succeed EventCode_FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE

                    "FLEET_VALIDATION_TIMED_OUT" ->
                        JD.succeed EventCode_FLEET_VALIDATION_TIMED_OUT

                    "FLEET_ACTIVATION_FAILED" ->
                        JD.succeed EventCode_FLEET_ACTIVATION_FAILED

                    "FLEET_ACTIVATION_FAILED_NO_INSTANCES" ->
                        JD.succeed EventCode_FLEET_ACTIVATION_FAILED_NO_INSTANCES

                    "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED" ->
                        JD.succeed EventCode_FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED

                    "SERVER_PROCESS_INVALID_PATH" ->
                        JD.succeed EventCode_SERVER_PROCESS_INVALID_PATH

                    "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT" ->
                        JD.succeed EventCode_SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT

                    "SERVER_PROCESS_PROCESS_READY_TIMEOUT" ->
                        JD.succeed EventCode_SERVER_PROCESS_PROCESS_READY_TIMEOUT

                    "SERVER_PROCESS_CRASHED" ->
                        JD.succeed EventCode_SERVER_PROCESS_CRASHED

                    "SERVER_PROCESS_TERMINATED_UNHEALTHY" ->
                        JD.succeed EventCode_SERVER_PROCESS_TERMINATED_UNHEALTHY

                    "SERVER_PROCESS_FORCE_TERMINATED" ->
                        JD.succeed EventCode_SERVER_PROCESS_FORCE_TERMINATED

                    "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT" ->
                        JD.succeed EventCode_SERVER_PROCESS_PROCESS_EXIT_TIMEOUT

                    "GAME_SESSION_ACTIVATION_TIMEOUT" ->
                        JD.succeed EventCode_GAME_SESSION_ACTIVATION_TIMEOUT

                    "FLEET_CREATION_EXTRACTING_BUILD" ->
                        JD.succeed EventCode_FLEET_CREATION_EXTRACTING_BUILD

                    "FLEET_CREATION_RUNNING_INSTALLER" ->
                        JD.succeed EventCode_FLEET_CREATION_RUNNING_INSTALLER

                    "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG" ->
                        JD.succeed EventCode_FLEET_CREATION_VALIDATING_RUNTIME_CONFIG

                    "FLEET_VPC_PEERING_SUCCEEDED" ->
                        JD.succeed EventCode_FLEET_VPC_PEERING_SUCCEEDED

                    "FLEET_VPC_PEERING_FAILED" ->
                        JD.succeed EventCode_FLEET_VPC_PEERING_FAILED

                    "FLEET_VPC_PEERING_DELETED" ->
                        JD.succeed EventCode_FLEET_VPC_PEERING_DELETED

                    "INSTANCE_INTERRUPTED" ->
                        JD.succeed EventCode_INSTANCE_INTERRUPTED


                    _ ->
                        JD.fail "bad thing"
            )




eventCodeToString : EventCode -> String
eventCodeToString val =
    case val of
        EventCode_GENERIC_EVENT ->
            "GENERIC_EVENT"

        EventCode_FLEET_CREATED ->
            "FLEET_CREATED"

        EventCode_FLEET_DELETED ->
            "FLEET_DELETED"

        EventCode_FLEET_SCALING_EVENT ->
            "FLEET_SCALING_EVENT"

        EventCode_FLEET_STATE_DOWNLOADING ->
            "FLEET_STATE_DOWNLOADING"

        EventCode_FLEET_STATE_VALIDATING ->
            "FLEET_STATE_VALIDATING"

        EventCode_FLEET_STATE_BUILDING ->
            "FLEET_STATE_BUILDING"

        EventCode_FLEET_STATE_ACTIVATING ->
            "FLEET_STATE_ACTIVATING"

        EventCode_FLEET_STATE_ACTIVE ->
            "FLEET_STATE_ACTIVE"

        EventCode_FLEET_STATE_ERROR ->
            "FLEET_STATE_ERROR"

        EventCode_FLEET_INITIALIZATION_FAILED ->
            "FLEET_INITIALIZATION_FAILED"

        EventCode_FLEET_BINARY_DOWNLOAD_FAILED ->
            "FLEET_BINARY_DOWNLOAD_FAILED"

        EventCode_FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND ->
            "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND"

        EventCode_FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE ->
            "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE"

        EventCode_FLEET_VALIDATION_TIMED_OUT ->
            "FLEET_VALIDATION_TIMED_OUT"

        EventCode_FLEET_ACTIVATION_FAILED ->
            "FLEET_ACTIVATION_FAILED"

        EventCode_FLEET_ACTIVATION_FAILED_NO_INSTANCES ->
            "FLEET_ACTIVATION_FAILED_NO_INSTANCES"

        EventCode_FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED ->
            "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED"

        EventCode_SERVER_PROCESS_INVALID_PATH ->
            "SERVER_PROCESS_INVALID_PATH"

        EventCode_SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT ->
            "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT"

        EventCode_SERVER_PROCESS_PROCESS_READY_TIMEOUT ->
            "SERVER_PROCESS_PROCESS_READY_TIMEOUT"

        EventCode_SERVER_PROCESS_CRASHED ->
            "SERVER_PROCESS_CRASHED"

        EventCode_SERVER_PROCESS_TERMINATED_UNHEALTHY ->
            "SERVER_PROCESS_TERMINATED_UNHEALTHY"

        EventCode_SERVER_PROCESS_FORCE_TERMINATED ->
            "SERVER_PROCESS_FORCE_TERMINATED"

        EventCode_SERVER_PROCESS_PROCESS_EXIT_TIMEOUT ->
            "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT"

        EventCode_GAME_SESSION_ACTIVATION_TIMEOUT ->
            "GAME_SESSION_ACTIVATION_TIMEOUT"

        EventCode_FLEET_CREATION_EXTRACTING_BUILD ->
            "FLEET_CREATION_EXTRACTING_BUILD"

        EventCode_FLEET_CREATION_RUNNING_INSTALLER ->
            "FLEET_CREATION_RUNNING_INSTALLER"

        EventCode_FLEET_CREATION_VALIDATING_RUNTIME_CONFIG ->
            "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG"

        EventCode_FLEET_VPC_PEERING_SUCCEEDED ->
            "FLEET_VPC_PEERING_SUCCEEDED"

        EventCode_FLEET_VPC_PEERING_FAILED ->
            "FLEET_VPC_PEERING_FAILED"

        EventCode_FLEET_VPC_PEERING_DELETED ->
            "FLEET_VPC_PEERING_DELETED"

        EventCode_INSTANCE_INTERRUPTED ->
            "INSTANCE_INTERRUPTED"




{-| One of

* `FleetAction_AUTO_SCALING`

-}
type FleetAction
    = FleetAction_AUTO_SCALING



fleetActionDecoder : JD.Decoder FleetAction
fleetActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AUTO_SCALING" ->
                        JD.succeed FleetAction_AUTO_SCALING


                    _ ->
                        JD.fail "bad thing"
            )




fleetActionToString : FleetAction -> String
fleetActionToString val =
    case val of
        FleetAction_AUTO_SCALING ->
            "AUTO_SCALING"




{-| <p>General properties describing a fleet.</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>
-}
type alias FleetAttributes =
    { fleetId : Maybe String
    , fleetArn : Maybe String
    , fleetType : Maybe FleetType
    , instanceType : Maybe EC2InstanceType
    , description : Maybe String
    , name : Maybe String
    , creationTime : Maybe Posix
    , terminationTime : Maybe Posix
    , status : Maybe FleetStatus
    , buildId : Maybe String
    , scriptId : Maybe String
    , serverLaunchPath : Maybe String
    , serverLaunchParameters : Maybe String
    , logPaths : Maybe (List String)
    , newGameSessionProtectionPolicy : Maybe ProtectionPolicy
    , operatingSystem : Maybe OperatingSystem
    , resourceCreationLimitPolicy : Maybe ResourceCreationLimitPolicy
    , metricGroups : Maybe (List String)
    , stoppedActions : Maybe (List FleetAction)
    , instanceRoleArn : Maybe String
    }



fleetAttributesDecoder : JD.Decoder FleetAttributes
fleetAttributesDecoder =
    JD.succeed FleetAttributes
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetArn", "fleetArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetType", "fleetType"]
            fleetTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceType", "instanceType"]
            eC2InstanceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TerminationTime", "terminationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            fleetStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BuildId", "buildId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScriptId", "scriptId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServerLaunchPath", "serverLaunchPath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServerLaunchParameters", "serverLaunchParameters"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogPaths", "logPaths"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NewGameSessionProtectionPolicy", "newGameSessionProtectionPolicy"]
            protectionPolicyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperatingSystem", "operatingSystem"]
            operatingSystemDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceCreationLimitPolicy", "resourceCreationLimitPolicy"]
            resourceCreationLimitPolicyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MetricGroups", "metricGroups"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StoppedActions", "stoppedActions"]
            (JD.list fleetActionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceRoleArn", "instanceRoleArn"]
            JD.string
        )
        




fleetAttributesToString : FleetAttributes -> String -- List (String, String)
fleetAttributesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.insert
    --         "fleetArn" "" -- val.fleetArn
        
    --     |> Dict.insert
    --         "fleetType" "" -- val.fleetType
        
    --     |> Dict.insert
    --         "instanceType" "" -- val.instanceType
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "terminationTime" "" -- val.terminationTime
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "buildId" "" -- val.buildId
        
    --     |> Dict.insert
    --         "scriptId" "" -- val.scriptId
        
    --     |> Dict.insert
    --         "serverLaunchPath" "" -- val.serverLaunchPath
        
    --     |> Dict.insert
    --         "serverLaunchParameters" "" -- val.serverLaunchParameters
        
    --     |> Dict.insert
    --         "logPaths" "" -- val.logPaths
        
    --     |> Dict.insert
    --         "newGameSessionProtectionPolicy" "" -- val.newGameSessionProtectionPolicy
        
    --     |> Dict.insert
    --         "operatingSystem" "" -- val.operatingSystem
        
    --     |> Dict.insert
    --         "resourceCreationLimitPolicy" "" -- val.resourceCreationLimitPolicy
        
    --     |> Dict.insert
    --         "metricGroups" "" -- val.metricGroups
        
    --     |> Dict.insert
    --         "stoppedActions" "" -- val.stoppedActions
        
    --     |> Dict.insert
    --         "instanceRoleArn" "" -- val.instanceRoleArn
        
    --     |> Dict.toList
    ""



{-| <p>Information about the fleet's capacity. Fleet capacity is measured in EC2 instances. By default, new fleets have a capacity of one instance, but can be updated as needed. The maximum number of instances for a fleet is determined by the fleet's instance type.</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>
-}
type alias FleetCapacity =
    { fleetId : Maybe String
    , instanceType : Maybe EC2InstanceType
    , instanceCounts : Maybe EC2InstanceCounts
    }



fleetCapacityDecoder : JD.Decoder FleetCapacity
fleetCapacityDecoder =
    JD.succeed FleetCapacity
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceType", "instanceType"]
            eC2InstanceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceCounts", "instanceCounts"]
            eC2InstanceCountsDecoder
        )
        




fleetCapacityToString : FleetCapacity -> String -- List (String, String)
fleetCapacityToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.insert
    --         "instanceType" "" -- val.instanceType
        
    --     |> Dict.insert
    --         "instanceCounts" "" -- val.instanceCounts
        
    --     |> Dict.toList
    ""



{-| One of

* `FleetStatus_NEW`
* `FleetStatus_DOWNLOADING`
* `FleetStatus_VALIDATING`
* `FleetStatus_BUILDING`
* `FleetStatus_ACTIVATING`
* `FleetStatus_ACTIVE`
* `FleetStatus_DELETING`
* `FleetStatus_ERROR`
* `FleetStatus_TERMINATED`

-}
type FleetStatus
    = FleetStatus_NEW
    | FleetStatus_DOWNLOADING
    | FleetStatus_VALIDATING
    | FleetStatus_BUILDING
    | FleetStatus_ACTIVATING
    | FleetStatus_ACTIVE
    | FleetStatus_DELETING
    | FleetStatus_ERROR
    | FleetStatus_TERMINATED



fleetStatusDecoder : JD.Decoder FleetStatus
fleetStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NEW" ->
                        JD.succeed FleetStatus_NEW

                    "DOWNLOADING" ->
                        JD.succeed FleetStatus_DOWNLOADING

                    "VALIDATING" ->
                        JD.succeed FleetStatus_VALIDATING

                    "BUILDING" ->
                        JD.succeed FleetStatus_BUILDING

                    "ACTIVATING" ->
                        JD.succeed FleetStatus_ACTIVATING

                    "ACTIVE" ->
                        JD.succeed FleetStatus_ACTIVE

                    "DELETING" ->
                        JD.succeed FleetStatus_DELETING

                    "ERROR" ->
                        JD.succeed FleetStatus_ERROR

                    "TERMINATED" ->
                        JD.succeed FleetStatus_TERMINATED


                    _ ->
                        JD.fail "bad thing"
            )




fleetStatusToString : FleetStatus -> String
fleetStatusToString val =
    case val of
        FleetStatus_NEW ->
            "NEW"

        FleetStatus_DOWNLOADING ->
            "DOWNLOADING"

        FleetStatus_VALIDATING ->
            "VALIDATING"

        FleetStatus_BUILDING ->
            "BUILDING"

        FleetStatus_ACTIVATING ->
            "ACTIVATING"

        FleetStatus_ACTIVE ->
            "ACTIVE"

        FleetStatus_DELETING ->
            "DELETING"

        FleetStatus_ERROR ->
            "ERROR"

        FleetStatus_TERMINATED ->
            "TERMINATED"




{-| One of

* `FleetType_ON_DEMAND`
* `FleetType_SPOT`

-}
type FleetType
    = FleetType_ON_DEMAND
    | FleetType_SPOT



fleetTypeDecoder : JD.Decoder FleetType
fleetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ON_DEMAND" ->
                        JD.succeed FleetType_ON_DEMAND

                    "SPOT" ->
                        JD.succeed FleetType_SPOT


                    _ ->
                        JD.fail "bad thing"
            )




fleetTypeToString : FleetType -> String
fleetTypeToString val =
    case val of
        FleetType_ON_DEMAND ->
            "ON_DEMAND"

        FleetType_SPOT ->
            "SPOT"




{-| <p>Current status of fleet utilization, including the number of game and player sessions being hosted.</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>
-}
type alias FleetUtilization =
    { fleetId : Maybe String
    , activeServerProcessCount : Maybe Int
    , activeGameSessionCount : Maybe Int
    , currentPlayerSessionCount : Maybe Int
    , maximumPlayerSessionCount : Maybe Int
    }



fleetUtilizationDecoder : JD.Decoder FleetUtilization
fleetUtilizationDecoder =
    JD.succeed FleetUtilization
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActiveServerProcessCount", "activeServerProcessCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ActiveGameSessionCount", "activeGameSessionCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CurrentPlayerSessionCount", "currentPlayerSessionCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaximumPlayerSessionCount", "maximumPlayerSessionCount"]
            JD.int
        )
        




fleetUtilizationToString : FleetUtilization -> String -- List (String, String)
fleetUtilizationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.insert
    --         "activeServerProcessCount" "" -- val.activeServerProcessCount
        
    --     |> Dict.insert
    --         "activeGameSessionCount" "" -- val.activeGameSessionCount
        
    --     |> Dict.insert
    --         "currentPlayerSessionCount" "" -- val.currentPlayerSessionCount
        
    --     |> Dict.insert
    --         "maximumPlayerSessionCount" "" -- val.maximumPlayerSessionCount
        
    --     |> Dict.toList
    ""



{-| <p>Set of key-value pairs that contain information about a game session. When included in a game session request, these properties communicate details to be used when setting up the new game session, such as to specify a game mode, level, or map. Game properties are passed to the game server process when initiating a new game session; the server process uses the properties as appropriate. For more information, see the <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-create"> Amazon GameLift Developer Guide</a>.</p>
-}
type alias GameProperty =
    { key : String
    , value : String
    }



gamePropertyDecoder : JD.Decoder GameProperty
gamePropertyDecoder =
    JD.succeed GameProperty
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Value", "value"]
            JD.string
        )
        




gamePropertyToString : GameProperty -> String -- List (String, String)
gamePropertyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| <p>Properties describing a game session.</p> <p>A game session in ACTIVE status can host players. When a game session ends, its status is set to <code>TERMINATED</code>. </p> <p>Once the session ends, the game session object is retained for 30 days. This means you can reuse idempotency token values after this time. Game session logs are retained for 14 days.</p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>
-}
type alias GameSession =
    { gameSessionId : Maybe String
    , name : Maybe String
    , fleetId : Maybe String
    , creationTime : Maybe Posix
    , terminationTime : Maybe Posix
    , currentPlayerSessionCount : Maybe Int
    , maximumPlayerSessionCount : Maybe Int
    , status : Maybe GameSessionStatus
    , statusReason : Maybe GameSessionStatusReason
    , gameProperties : Maybe (List GameProperty)
    , ipAddress : Maybe String
    , port_ : Maybe Int
    , playerSessionCreationPolicy : Maybe PlayerSessionCreationPolicy
    , creatorId : Maybe String
    , gameSessionData : Maybe String
    , matchmakerData : Maybe String
    }



gameSessionDecoder : JD.Decoder GameSession
gameSessionDecoder =
    JD.succeed GameSession
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionId", "gameSessionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TerminationTime", "terminationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CurrentPlayerSessionCount", "currentPlayerSessionCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaximumPlayerSessionCount", "maximumPlayerSessionCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            gameSessionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusReason", "statusReason"]
            gameSessionStatusReasonDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameProperties", "gameProperties"]
            (JD.list gamePropertyDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IpAddress", "ipAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerSessionCreationPolicy", "playerSessionCreationPolicy"]
            playerSessionCreationPolicyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatorId", "creatorId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionData", "gameSessionData"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MatchmakerData", "matchmakerData"]
            JD.string
        )
        




gameSessionToString : GameSession -> String -- List (String, String)
gameSessionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSessionId" "" -- val.gameSessionId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "terminationTime" "" -- val.terminationTime
        
    --     |> Dict.insert
    --         "currentPlayerSessionCount" "" -- val.currentPlayerSessionCount
        
    --     |> Dict.insert
    --         "maximumPlayerSessionCount" "" -- val.maximumPlayerSessionCount
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusReason" "" -- val.statusReason
        
    --     |> Dict.insert
    --         "gameProperties" "" -- val.gameProperties
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "playerSessionCreationPolicy" "" -- val.playerSessionCreationPolicy
        
    --     |> Dict.insert
    --         "creatorId" "" -- val.creatorId
        
    --     |> Dict.insert
    --         "gameSessionData" "" -- val.gameSessionData
        
    --     |> Dict.insert
    --         "matchmakerData" "" -- val.matchmakerData
        
    --     |> Dict.toList
    ""



{-| <p>Connection information for the new game session that is created with matchmaking. (with <a>StartMatchmaking</a>). Once a match is set, the FlexMatch engine places the match and creates a new game session for it. This information, including the game session endpoint and player sessions for each player in the original matchmaking request, is added to the <a>MatchmakingTicket</a>, which can be retrieved by calling <a>DescribeMatchmaking</a>.</p>
-}
type alias GameSessionConnectionInfo =
    { gameSessionArn : Maybe String
    , ipAddress : Maybe String
    , port_ : Maybe Int
    , matchedPlayerSessions : Maybe (List MatchedPlayerSession)
    }



gameSessionConnectionInfoDecoder : JD.Decoder GameSessionConnectionInfo
gameSessionConnectionInfoDecoder =
    JD.succeed GameSessionConnectionInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionArn", "gameSessionArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IpAddress", "ipAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MatchedPlayerSessions", "matchedPlayerSessions"]
            (JD.list matchedPlayerSessionDecoder)
        )
        




gameSessionConnectionInfoToString : GameSessionConnectionInfo -> String -- List (String, String)
gameSessionConnectionInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSessionArn" "" -- val.gameSessionArn
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "matchedPlayerSessions" "" -- val.matchedPlayerSessions
        
    --     |> Dict.toList
    ""



{-| <p>A game session's properties plus the protection policy currently in force.</p>
-}
type alias GameSessionDetail =
    { gameSession : Maybe GameSession
    , protectionPolicy : Maybe ProtectionPolicy
    }



gameSessionDetailDecoder : JD.Decoder GameSessionDetail
gameSessionDetailDecoder =
    JD.succeed GameSessionDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSession", "gameSession"]
            gameSessionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProtectionPolicy", "protectionPolicy"]
            protectionPolicyDecoder
        )
        




gameSessionDetailToString : GameSessionDetail -> String -- List (String, String)
gameSessionDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSession" "" -- val.gameSession
        
    --     |> Dict.insert
    --         "protectionPolicy" "" -- val.protectionPolicy
        
    --     |> Dict.toList
    ""



{-| <p>Object that describes a <a>StartGameSessionPlacement</a> request. This object includes the full details of the original request plus the current status and start/end time stamps.</p> <p>Game session placement-related operations include:</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul>
-}
type alias GameSessionPlacement =
    { placementId : Maybe String
    , gameSessionQueueName : Maybe String
    , status : Maybe GameSessionPlacementState
    , gameProperties : Maybe (List GameProperty)
    , maximumPlayerSessionCount : Maybe Int
    , gameSessionName : Maybe String
    , gameSessionId : Maybe String
    , gameSessionArn : Maybe String
    , gameSessionRegion : Maybe String
    , playerLatencies : Maybe (List PlayerLatency)
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , ipAddress : Maybe String
    , port_ : Maybe Int
    , placedPlayerSessions : Maybe (List PlacedPlayerSession)
    , gameSessionData : Maybe String
    , matchmakerData : Maybe String
    }



gameSessionPlacementDecoder : JD.Decoder GameSessionPlacement
gameSessionPlacementDecoder =
    JD.succeed GameSessionPlacement
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlacementId", "placementId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionQueueName", "gameSessionQueueName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            gameSessionPlacementStateDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameProperties", "gameProperties"]
            (JD.list gamePropertyDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaximumPlayerSessionCount", "maximumPlayerSessionCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionName", "gameSessionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionId", "gameSessionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionArn", "gameSessionArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionRegion", "gameSessionRegion"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerLatencies", "playerLatencies"]
            (JD.list playerLatencyDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartTime", "startTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndTime", "endTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IpAddress", "ipAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlacedPlayerSessions", "placedPlayerSessions"]
            (JD.list placedPlayerSessionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionData", "gameSessionData"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MatchmakerData", "matchmakerData"]
            JD.string
        )
        




gameSessionPlacementToString : GameSessionPlacement -> String -- List (String, String)
gameSessionPlacementToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "placementId" "" -- val.placementId
        
    --     |> Dict.insert
    --         "gameSessionQueueName" "" -- val.gameSessionQueueName
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "gameProperties" "" -- val.gameProperties
        
    --     |> Dict.insert
    --         "maximumPlayerSessionCount" "" -- val.maximumPlayerSessionCount
        
    --     |> Dict.insert
    --         "gameSessionName" "" -- val.gameSessionName
        
    --     |> Dict.insert
    --         "gameSessionId" "" -- val.gameSessionId
        
    --     |> Dict.insert
    --         "gameSessionArn" "" -- val.gameSessionArn
        
    --     |> Dict.insert
    --         "gameSessionRegion" "" -- val.gameSessionRegion
        
    --     |> Dict.insert
    --         "playerLatencies" "" -- val.playerLatencies
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "endTime" "" -- val.endTime
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "placedPlayerSessions" "" -- val.placedPlayerSessions
        
    --     |> Dict.insert
    --         "gameSessionData" "" -- val.gameSessionData
        
    --     |> Dict.insert
    --         "matchmakerData" "" -- val.matchmakerData
        
    --     |> Dict.toList
    ""



{-| One of

* `GameSessionPlacementState_PENDING`
* `GameSessionPlacementState_FULFILLED`
* `GameSessionPlacementState_CANCELLED`
* `GameSessionPlacementState_TIMED_OUT`

-}
type GameSessionPlacementState
    = GameSessionPlacementState_PENDING
    | GameSessionPlacementState_FULFILLED
    | GameSessionPlacementState_CANCELLED
    | GameSessionPlacementState_TIMED_OUT



gameSessionPlacementStateDecoder : JD.Decoder GameSessionPlacementState
gameSessionPlacementStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed GameSessionPlacementState_PENDING

                    "FULFILLED" ->
                        JD.succeed GameSessionPlacementState_FULFILLED

                    "CANCELLED" ->
                        JD.succeed GameSessionPlacementState_CANCELLED

                    "TIMED_OUT" ->
                        JD.succeed GameSessionPlacementState_TIMED_OUT


                    _ ->
                        JD.fail "bad thing"
            )




gameSessionPlacementStateToString : GameSessionPlacementState -> String
gameSessionPlacementStateToString val =
    case val of
        GameSessionPlacementState_PENDING ->
            "PENDING"

        GameSessionPlacementState_FULFILLED ->
            "FULFILLED"

        GameSessionPlacementState_CANCELLED ->
            "CANCELLED"

        GameSessionPlacementState_TIMED_OUT ->
            "TIMED_OUT"




{-| <p>Configuration of a queue that is used to process game session placement requests. The queue configuration identifies several game features:</p> <ul> <li> <p>The destinations where a new game session can potentially be hosted. Amazon GameLift tries these destinations in an order based on either the queue's default order or player latency information, if provided in a placement request. With latency information, Amazon GameLift can place game sessions where the majority of players are reporting the lowest possible latency. </p> </li> <li> <p>The length of time that placement requests can wait in the queue before timing out. </p> </li> <li> <p>A set of optional latency policies that protect individual players from high latencies, preventing game sessions from being placed where any individual player is reporting latency higher than a policy's maximum.</p> </li> </ul> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>
-}
type alias GameSessionQueue =
    { name : Maybe String
    , gameSessionQueueArn : Maybe String
    , timeoutInSeconds : Maybe Int
    , playerLatencyPolicies : Maybe (List PlayerLatencyPolicy)
    , destinations : Maybe (List GameSessionQueueDestination)
    }



gameSessionQueueDecoder : JD.Decoder GameSessionQueue
gameSessionQueueDecoder =
    JD.succeed GameSessionQueue
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionQueueArn", "gameSessionQueueArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TimeoutInSeconds", "timeoutInSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerLatencyPolicies", "playerLatencyPolicies"]
            (JD.list playerLatencyPolicyDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Destinations", "destinations"]
            (JD.list gameSessionQueueDestinationDecoder)
        )
        




gameSessionQueueToString : GameSessionQueue -> String -- List (String, String)
gameSessionQueueToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "gameSessionQueueArn" "" -- val.gameSessionQueueArn
        
    --     |> Dict.insert
    --         "timeoutInSeconds" "" -- val.timeoutInSeconds
        
    --     |> Dict.insert
    --         "playerLatencyPolicies" "" -- val.playerLatencyPolicies
        
    --     |> Dict.insert
    --         "destinations" "" -- val.destinations
        
    --     |> Dict.toList
    ""



{-| <p>Fleet designated in a game session queue. Requests for new game sessions in the queue are fulfilled by starting a new game session on any destination configured for a queue. </p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>
-}
type alias GameSessionQueueDestination =
    { destinationArn : Maybe String
    }



gameSessionQueueDestinationDecoder : JD.Decoder GameSessionQueueDestination
gameSessionQueueDestinationDecoder =
    JD.succeed GameSessionQueueDestination
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DestinationArn", "destinationArn"]
            JD.string
        )
        




gameSessionQueueDestinationToString : GameSessionQueueDestination -> String -- List (String, String)
gameSessionQueueDestinationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "destinationArn" "" -- val.destinationArn
        
    --     |> Dict.toList
    ""



{-| One of

* `GameSessionStatus_ACTIVE`
* `GameSessionStatus_ACTIVATING`
* `GameSessionStatus_TERMINATED`
* `GameSessionStatus_TERMINATING`
* `GameSessionStatus_ERROR`

-}
type GameSessionStatus
    = GameSessionStatus_ACTIVE
    | GameSessionStatus_ACTIVATING
    | GameSessionStatus_TERMINATED
    | GameSessionStatus_TERMINATING
    | GameSessionStatus_ERROR



gameSessionStatusDecoder : JD.Decoder GameSessionStatus
gameSessionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed GameSessionStatus_ACTIVE

                    "ACTIVATING" ->
                        JD.succeed GameSessionStatus_ACTIVATING

                    "TERMINATED" ->
                        JD.succeed GameSessionStatus_TERMINATED

                    "TERMINATING" ->
                        JD.succeed GameSessionStatus_TERMINATING

                    "ERROR" ->
                        JD.succeed GameSessionStatus_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




gameSessionStatusToString : GameSessionStatus -> String
gameSessionStatusToString val =
    case val of
        GameSessionStatus_ACTIVE ->
            "ACTIVE"

        GameSessionStatus_ACTIVATING ->
            "ACTIVATING"

        GameSessionStatus_TERMINATED ->
            "TERMINATED"

        GameSessionStatus_TERMINATING ->
            "TERMINATING"

        GameSessionStatus_ERROR ->
            "ERROR"




{-| One of

* `GameSessionStatusReason_INTERRUPTED`

-}
type GameSessionStatusReason
    = GameSessionStatusReason_INTERRUPTED



gameSessionStatusReasonDecoder : JD.Decoder GameSessionStatusReason
gameSessionStatusReasonDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INTERRUPTED" ->
                        JD.succeed GameSessionStatusReason_INTERRUPTED


                    _ ->
                        JD.fail "bad thing"
            )




gameSessionStatusReasonToString : GameSessionStatusReason -> String
gameSessionStatusReasonToString val =
    case val of
        GameSessionStatusReason_INTERRUPTED ->
            "INTERRUPTED"




{-| Type of HTTP response from getGameSessionLogU
-}
type alias GetGameSessionLogUrlOutput =
    { preSignedUrl : Maybe String
    }



getGameSessionLogUrlOutputDecoder : JD.Decoder GetGameSessionLogUrlOutput
getGameSessionLogUrlOutputDecoder =
    JD.succeed GetGameSessionLogUrlOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PreSignedUrl", "preSignedUrl"]
            JD.string
        )
        




getGameSessionLogUrlOutputToString : GetGameSessionLogUrlOutput -> String -- List (String, String)
getGameSessionLogUrlOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "preSignedUrl" "" -- val.preSignedUrl
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getInstanceAcce
-}
type alias GetInstanceAccessOutput =
    { instanceAccess : Maybe InstanceAccess
    }



getInstanceAccessOutputDecoder : JD.Decoder GetInstanceAccessOutput
getInstanceAccessOutputDecoder =
    JD.succeed GetInstanceAccessOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceAccess", "instanceAccess"]
            instanceAccessDecoder
        )
        




getInstanceAccessOutputToString : GetInstanceAccessOutput -> String -- List (String, String)
getInstanceAccessOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "instanceAccess" "" -- val.instanceAccess
        
    --     |> Dict.toList
    ""



{-| <p>Properties that describe an instance of a virtual computing resource that hosts one or more game servers. A fleet may contain zero or more instances.</p>
-}
type alias Instance =
    { fleetId : Maybe String
    , instanceId : Maybe String
    , ipAddress : Maybe String
    , operatingSystem : Maybe OperatingSystem
    , type_ : Maybe EC2InstanceType
    , status : Maybe InstanceStatus
    , creationTime : Maybe Posix
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JD.succeed Instance
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IpAddress", "ipAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperatingSystem", "operatingSystem"]
            operatingSystemDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            eC2InstanceTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            instanceStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        




instanceToString : Instance -> String -- List (String, String)
instanceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "operatingSystem" "" -- val.operatingSystem
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.toList
    ""



{-| <p>Information required to remotely connect to a fleet instance. Access is requested by calling <a>GetInstanceAccess</a>. </p>
-}
type alias InstanceAccess =
    { fleetId : Maybe String
    , instanceId : Maybe String
    , ipAddress : Maybe String
    , operatingSystem : Maybe OperatingSystem
    , credentials : Maybe InstanceCredentials
    }



instanceAccessDecoder : JD.Decoder InstanceAccess
instanceAccessDecoder =
    JD.succeed InstanceAccess
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["InstanceId", "instanceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IpAddress", "ipAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OperatingSystem", "operatingSystem"]
            operatingSystemDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Credentials", "credentials"]
            instanceCredentialsDecoder
        )
        




instanceAccessToString : InstanceAccess -> String -- List (String, String)
instanceAccessToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.insert
    --         "instanceId" "" -- val.instanceId
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "operatingSystem" "" -- val.operatingSystem
        
    --     |> Dict.insert
    --         "credentials" "" -- val.credentials
        
    --     |> Dict.toList
    ""



{-| <p>Set of credentials required to remotely access a fleet instance. Access credentials are requested by calling <a>GetInstanceAccess</a> and returned in an <a>InstanceAccess</a> object.</p>
-}
type alias InstanceCredentials =
    { userName : Maybe String
    , secret : Maybe String
    }



instanceCredentialsDecoder : JD.Decoder InstanceCredentials
instanceCredentialsDecoder =
    JD.succeed InstanceCredentials
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserName", "userName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Secret", "secret"]
            JD.string
        )
        




instanceCredentialsToString : InstanceCredentials -> String -- List (String, String)
instanceCredentialsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "userName" "" -- val.userName
        
    --     |> Dict.insert
    --         "secret" "" -- val.secret
        
    --     |> Dict.toList
    ""



{-| One of

* `InstanceStatus_PENDING`
* `InstanceStatus_ACTIVE`
* `InstanceStatus_TERMINATING`

-}
type InstanceStatus
    = InstanceStatus_PENDING
    | InstanceStatus_ACTIVE
    | InstanceStatus_TERMINATING



instanceStatusDecoder : JD.Decoder InstanceStatus
instanceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed InstanceStatus_PENDING

                    "ACTIVE" ->
                        JD.succeed InstanceStatus_ACTIVE

                    "TERMINATING" ->
                        JD.succeed InstanceStatus_TERMINATING


                    _ ->
                        JD.fail "bad thing"
            )




instanceStatusToString : InstanceStatus -> String
instanceStatusToString val =
    case val of
        InstanceStatus_PENDING ->
            "PENDING"

        InstanceStatus_ACTIVE ->
            "ACTIVE"

        InstanceStatus_TERMINATING ->
            "TERMINATING"




{-| <p>A range of IP addresses and port settings that allow inbound traffic to connect to server processes on an Amazon GameLift. New game sessions that are started on the fleet are assigned an IP address/port number combination, which must fall into the fleet's allowed ranges. For fleets created with a custom game server, the ranges reflect the server's game session assignments. For Realtime Servers fleets, Amazon GameLift automatically opens two port ranges, one for TCP messaging and one for UDP for use by the Realtime servers.</p>
-}
type alias IpPermission =
    { fromPort : Int
    , toPort : Int
    , ipRange : String
    , protocol : IpProtocol
    }



ipPermissionDecoder : JD.Decoder IpPermission
ipPermissionDecoder =
    JD.succeed IpPermission
        
        |> JDP.custom (AWS.Core.Decode.required
            ["FromPort", "fromPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ToPort", "toPort"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["IpRange", "ipRange"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Protocol", "protocol"]
            ipProtocolDecoder
        )
        




ipPermissionToString : IpPermission -> String -- List (String, String)
ipPermissionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fromPort" "" -- val.fromPort
        
    --     |> Dict.insert
    --         "toPort" "" -- val.toPort
        
    --     |> Dict.insert
    --         "ipRange" "" -- val.ipRange
        
    --     |> Dict.insert
    --         "protocol" "" -- val.protocol
        
    --     |> Dict.toList
    ""



{-| One of

* `IpProtocol_TCP`
* `IpProtocol_UDP`

-}
type IpProtocol
    = IpProtocol_TCP
    | IpProtocol_UDP



ipProtocolDecoder : JD.Decoder IpProtocol
ipProtocolDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TCP" ->
                        JD.succeed IpProtocol_TCP

                    "UDP" ->
                        JD.succeed IpProtocol_UDP


                    _ ->
                        JD.fail "bad thing"
            )




ipProtocolToString : IpProtocol -> String
ipProtocolToString val =
    case val of
        IpProtocol_TCP ->
            "TCP"

        IpProtocol_UDP ->
            "UDP"




{-| Type of HTTP response from listAlias
-}
type alias ListAliasesOutput =
    { aliases : Maybe (List Alias)
    , nextToken : Maybe String
    }



listAliasesOutputDecoder : JD.Decoder ListAliasesOutput
listAliasesOutputDecoder =
    JD.succeed ListAliasesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Aliases", "aliases"]
            (JD.list aliasDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listAliasesOutputToString : ListAliasesOutput -> String -- List (String, String)
listAliasesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "aliases" "" -- val.aliases
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listBuil
-}
type alias ListBuildsOutput =
    { builds : Maybe (List Build)
    , nextToken : Maybe String
    }



listBuildsOutputDecoder : JD.Decoder ListBuildsOutput
listBuildsOutputDecoder =
    JD.succeed ListBuildsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Builds", "builds"]
            (JD.list buildDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listBuildsOutputToString : ListBuildsOutput -> String -- List (String, String)
listBuildsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "builds" "" -- val.builds
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listFlee
-}
type alias ListFleetsOutput =
    { fleetIds : Maybe (List String)
    , nextToken : Maybe String
    }



listFleetsOutputDecoder : JD.Decoder ListFleetsOutput
listFleetsOutputDecoder =
    JD.succeed ListFleetsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetIds", "fleetIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listFleetsOutputToString : ListFleetsOutput -> String -- List (String, String)
listFleetsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetIds" "" -- val.fleetIds
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listScrip
-}
type alias ListScriptsOutput =
    { scripts : Maybe (List Script)
    , nextToken : Maybe String
    }



listScriptsOutputDecoder : JD.Decoder ListScriptsOutput
listScriptsOutputDecoder =
    JD.succeed ListScriptsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Scripts", "scripts"]
            (JD.list scriptDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




listScriptsOutputToString : ListScriptsOutput -> String -- List (String, String)
listScriptsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "scripts" "" -- val.scripts
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>Represents a new player session that is created as a result of a successful FlexMatch match. A successful match automatically creates new player sessions for every player ID in the original matchmaking request. </p> <p>When players connect to the match's game session, they must include both player ID and player session ID in order to claim their assigned player slot.</p>
-}
type alias MatchedPlayerSession =
    { playerId : Maybe String
    , playerSessionId : Maybe String
    }



matchedPlayerSessionDecoder : JD.Decoder MatchedPlayerSession
matchedPlayerSessionDecoder =
    JD.succeed MatchedPlayerSession
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerId", "playerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerSessionId", "playerSessionId"]
            JD.string
        )
        




matchedPlayerSessionToString : MatchedPlayerSession -> String -- List (String, String)
matchedPlayerSessionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "playerId" "" -- val.playerId
        
    --     |> Dict.insert
    --         "playerSessionId" "" -- val.playerSessionId
        
    --     |> Dict.toList
    ""



{-| <p>Guidelines for use with FlexMatch to match players into games. All matchmaking requests must specify a matchmaking configuration.</p>
-}
type alias MatchmakingConfiguration =
    { name : Maybe String
    , description : Maybe String
    , gameSessionQueueArns : Maybe (List String)
    , requestTimeoutSeconds : Maybe Int
    , acceptanceTimeoutSeconds : Maybe Int
    , acceptanceRequired : Maybe Bool
    , ruleSetName : Maybe String
    , notificationTarget : Maybe String
    , additionalPlayerCount : Maybe Int
    , customEventData : Maybe String
    , creationTime : Maybe Posix
    , gameProperties : Maybe (List GameProperty)
    , gameSessionData : Maybe String
    , backfillMode : Maybe BackfillMode
    }



matchmakingConfigurationDecoder : JD.Decoder MatchmakingConfiguration
matchmakingConfigurationDecoder =
    JD.succeed MatchmakingConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionQueueArns", "gameSessionQueueArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequestTimeoutSeconds", "requestTimeoutSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AcceptanceTimeoutSeconds", "acceptanceTimeoutSeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AcceptanceRequired", "acceptanceRequired"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuleSetName", "ruleSetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotificationTarget", "notificationTarget"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AdditionalPlayerCount", "additionalPlayerCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CustomEventData", "customEventData"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameProperties", "gameProperties"]
            (JD.list gamePropertyDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionData", "gameSessionData"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BackfillMode", "backfillMode"]
            backfillModeDecoder
        )
        




matchmakingConfigurationToString : MatchmakingConfiguration -> String -- List (String, String)
matchmakingConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "gameSessionQueueArns" "" -- val.gameSessionQueueArns
        
    --     |> Dict.insert
    --         "requestTimeoutSeconds" "" -- val.requestTimeoutSeconds
        
    --     |> Dict.insert
    --         "acceptanceTimeoutSeconds" "" -- val.acceptanceTimeoutSeconds
        
    --     |> Dict.insert
    --         "acceptanceRequired" "" -- val.acceptanceRequired
        
    --     |> Dict.insert
    --         "ruleSetName" "" -- val.ruleSetName
        
    --     |> Dict.insert
    --         "notificationTarget" "" -- val.notificationTarget
        
    --     |> Dict.insert
    --         "additionalPlayerCount" "" -- val.additionalPlayerCount
        
    --     |> Dict.insert
    --         "customEventData" "" -- val.customEventData
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "gameProperties" "" -- val.gameProperties
        
    --     |> Dict.insert
    --         "gameSessionData" "" -- val.gameSessionData
        
    --     |> Dict.insert
    --         "backfillMode" "" -- val.backfillMode
        
    --     |> Dict.toList
    ""



{-| One of

* `MatchmakingConfigurationStatus_CANCELLED`
* `MatchmakingConfigurationStatus_COMPLETED`
* `MatchmakingConfigurationStatus_FAILED`
* `MatchmakingConfigurationStatus_PLACING`
* `MatchmakingConfigurationStatus_QUEUED`
* `MatchmakingConfigurationStatus_REQUIRES_ACCEPTANCE`
* `MatchmakingConfigurationStatus_SEARCHING`
* `MatchmakingConfigurationStatus_TIMED_OUT`

-}
type MatchmakingConfigurationStatus
    = MatchmakingConfigurationStatus_CANCELLED
    | MatchmakingConfigurationStatus_COMPLETED
    | MatchmakingConfigurationStatus_FAILED
    | MatchmakingConfigurationStatus_PLACING
    | MatchmakingConfigurationStatus_QUEUED
    | MatchmakingConfigurationStatus_REQUIRES_ACCEPTANCE
    | MatchmakingConfigurationStatus_SEARCHING
    | MatchmakingConfigurationStatus_TIMED_OUT



matchmakingConfigurationStatusDecoder : JD.Decoder MatchmakingConfigurationStatus
matchmakingConfigurationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CANCELLED" ->
                        JD.succeed MatchmakingConfigurationStatus_CANCELLED

                    "COMPLETED" ->
                        JD.succeed MatchmakingConfigurationStatus_COMPLETED

                    "FAILED" ->
                        JD.succeed MatchmakingConfigurationStatus_FAILED

                    "PLACING" ->
                        JD.succeed MatchmakingConfigurationStatus_PLACING

                    "QUEUED" ->
                        JD.succeed MatchmakingConfigurationStatus_QUEUED

                    "REQUIRES_ACCEPTANCE" ->
                        JD.succeed MatchmakingConfigurationStatus_REQUIRES_ACCEPTANCE

                    "SEARCHING" ->
                        JD.succeed MatchmakingConfigurationStatus_SEARCHING

                    "TIMED_OUT" ->
                        JD.succeed MatchmakingConfigurationStatus_TIMED_OUT


                    _ ->
                        JD.fail "bad thing"
            )




matchmakingConfigurationStatusToString : MatchmakingConfigurationStatus -> String
matchmakingConfigurationStatusToString val =
    case val of
        MatchmakingConfigurationStatus_CANCELLED ->
            "CANCELLED"

        MatchmakingConfigurationStatus_COMPLETED ->
            "COMPLETED"

        MatchmakingConfigurationStatus_FAILED ->
            "FAILED"

        MatchmakingConfigurationStatus_PLACING ->
            "PLACING"

        MatchmakingConfigurationStatus_QUEUED ->
            "QUEUED"

        MatchmakingConfigurationStatus_REQUIRES_ACCEPTANCE ->
            "REQUIRES_ACCEPTANCE"

        MatchmakingConfigurationStatus_SEARCHING ->
            "SEARCHING"

        MatchmakingConfigurationStatus_TIMED_OUT ->
            "TIMED_OUT"




{-| <p>Set of rule statements, used with FlexMatch, that determine how to build your player matches. Each rule set describes a type of group to be created and defines the parameters for acceptable player matches. Rule sets are used in <a>MatchmakingConfiguration</a> objects.</p> <p>A rule set may define the following elements for a match. For detailed information and examples showing how to construct a rule set, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html">Build a FlexMatch Rule Set</a>. </p> <ul> <li> <p>Teams -- Required. A rule set must define one or multiple teams for the match and set minimum and maximum team sizes. For example, a rule set might describe a 4x4 match that requires all eight slots to be filled. </p> </li> <li> <p>Player attributes -- Optional. These attributes specify a set of player characteristics to evaluate when looking for a match. Matchmaking requests that use a rule set with player attributes must provide the corresponding attribute values. For example, an attribute might specify a player's skill or level.</p> </li> <li> <p>Rules -- Optional. Rules define how to evaluate potential players for a match based on player attributes. A rule might specify minimum requirements for individual players, teams, or entire matches. For example, a rule might require each player to meet a certain skill level, each team to have at least one player in a certain role, or the match to have a minimum average skill level. or may describe an entire group--such as all teams must be evenly matched or have at least one player in a certain role. </p> </li> <li> <p>Expansions -- Optional. Expansions allow you to relax the rules after a period of time when no acceptable matches are found. This feature lets you balance getting players into games in a reasonable amount of time instead of making them wait indefinitely for the best possible match. For example, you might use an expansion to increase the maximum skill variance between players after 30 seconds.</p> </li> </ul>
-}
type alias MatchmakingRuleSet =
    { ruleSetName : Maybe String
    , ruleSetBody : String
    , creationTime : Maybe Posix
    }



matchmakingRuleSetDecoder : JD.Decoder MatchmakingRuleSet
matchmakingRuleSetDecoder =
    JD.succeed MatchmakingRuleSet
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuleSetName", "ruleSetName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["RuleSetBody", "ruleSetBody"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        




matchmakingRuleSetToString : MatchmakingRuleSet -> String -- List (String, String)
matchmakingRuleSetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ruleSetName" "" -- val.ruleSetName
        
    --     |> Dict.insert
    --         "ruleSetBody" "" -- val.ruleSetBody
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.toList
    ""



{-| <p>Ticket generated to track the progress of a matchmaking request. Each ticket is uniquely identified by a ticket ID, supplied by the requester, when creating a matchmaking request with <a>StartMatchmaking</a>. Tickets can be retrieved by calling <a>DescribeMatchmaking</a> with the ticket ID.</p>
-}
type alias MatchmakingTicket =
    { ticketId : Maybe String
    , configurationName : Maybe String
    , status : Maybe MatchmakingConfigurationStatus
    , statusReason : Maybe String
    , statusMessage : Maybe String
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , players : Maybe (List Player)
    , gameSessionConnectionInfo : Maybe GameSessionConnectionInfo
    , estimatedWaitTime : Maybe Int
    }



matchmakingTicketDecoder : JD.Decoder MatchmakingTicket
matchmakingTicketDecoder =
    JD.succeed MatchmakingTicket
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TicketId", "ticketId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConfigurationName", "configurationName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            matchmakingConfigurationStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusReason", "statusReason"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusMessage", "statusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StartTime", "startTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EndTime", "endTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Players", "players"]
            (JD.list playerDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionConnectionInfo", "gameSessionConnectionInfo"]
            gameSessionConnectionInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EstimatedWaitTime", "estimatedWaitTime"]
            JD.int
        )
        




matchmakingTicketToString : MatchmakingTicket -> String -- List (String, String)
matchmakingTicketToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "ticketId" "" -- val.ticketId
        
    --     |> Dict.insert
    --         "configurationName" "" -- val.configurationName
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusReason" "" -- val.statusReason
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "startTime" "" -- val.startTime
        
    --     |> Dict.insert
    --         "endTime" "" -- val.endTime
        
    --     |> Dict.insert
    --         "players" "" -- val.players
        
    --     |> Dict.insert
    --         "gameSessionConnectionInfo" "" -- val.gameSessionConnectionInfo
        
    --     |> Dict.insert
    --         "estimatedWaitTime" "" -- val.estimatedWaitTime
        
    --     |> Dict.toList
    ""



{-| One of

* `MetricName_ActivatingGameSessions`
* `MetricName_ActiveGameSessions`
* `MetricName_ActiveInstances`
* `MetricName_AvailableGameSessions`
* `MetricName_AvailablePlayerSessions`
* `MetricName_CurrentPlayerSessions`
* `MetricName_IdleInstances`
* `MetricName_PercentAvailableGameSessions`
* `MetricName_PercentIdleInstances`
* `MetricName_QueueDepth`
* `MetricName_WaitTime`

-}
type MetricName
    = MetricName_ActivatingGameSessions
    | MetricName_ActiveGameSessions
    | MetricName_ActiveInstances
    | MetricName_AvailableGameSessions
    | MetricName_AvailablePlayerSessions
    | MetricName_CurrentPlayerSessions
    | MetricName_IdleInstances
    | MetricName_PercentAvailableGameSessions
    | MetricName_PercentIdleInstances
    | MetricName_QueueDepth
    | MetricName_WaitTime



metricNameDecoder : JD.Decoder MetricName
metricNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ActivatingGameSessions" ->
                        JD.succeed MetricName_ActivatingGameSessions

                    "ActiveGameSessions" ->
                        JD.succeed MetricName_ActiveGameSessions

                    "ActiveInstances" ->
                        JD.succeed MetricName_ActiveInstances

                    "AvailableGameSessions" ->
                        JD.succeed MetricName_AvailableGameSessions

                    "AvailablePlayerSessions" ->
                        JD.succeed MetricName_AvailablePlayerSessions

                    "CurrentPlayerSessions" ->
                        JD.succeed MetricName_CurrentPlayerSessions

                    "IdleInstances" ->
                        JD.succeed MetricName_IdleInstances

                    "PercentAvailableGameSessions" ->
                        JD.succeed MetricName_PercentAvailableGameSessions

                    "PercentIdleInstances" ->
                        JD.succeed MetricName_PercentIdleInstances

                    "QueueDepth" ->
                        JD.succeed MetricName_QueueDepth

                    "WaitTime" ->
                        JD.succeed MetricName_WaitTime


                    _ ->
                        JD.fail "bad thing"
            )




metricNameToString : MetricName -> String
metricNameToString val =
    case val of
        MetricName_ActivatingGameSessions ->
            "ActivatingGameSessions"

        MetricName_ActiveGameSessions ->
            "ActiveGameSessions"

        MetricName_ActiveInstances ->
            "ActiveInstances"

        MetricName_AvailableGameSessions ->
            "AvailableGameSessions"

        MetricName_AvailablePlayerSessions ->
            "AvailablePlayerSessions"

        MetricName_CurrentPlayerSessions ->
            "CurrentPlayerSessions"

        MetricName_IdleInstances ->
            "IdleInstances"

        MetricName_PercentAvailableGameSessions ->
            "PercentAvailableGameSessions"

        MetricName_PercentIdleInstances ->
            "PercentIdleInstances"

        MetricName_QueueDepth ->
            "QueueDepth"

        MetricName_WaitTime ->
            "WaitTime"




{-| One of

* `OperatingSystem_WINDOWS_2012`
* `OperatingSystem_AMAZON_LINUX`

-}
type OperatingSystem
    = OperatingSystem_WINDOWS_2012
    | OperatingSystem_AMAZON_LINUX



operatingSystemDecoder : JD.Decoder OperatingSystem
operatingSystemDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WINDOWS_2012" ->
                        JD.succeed OperatingSystem_WINDOWS_2012

                    "AMAZON_LINUX" ->
                        JD.succeed OperatingSystem_AMAZON_LINUX


                    _ ->
                        JD.fail "bad thing"
            )




operatingSystemToString : OperatingSystem -> String
operatingSystemToString val =
    case val of
        OperatingSystem_WINDOWS_2012 ->
            "WINDOWS_2012"

        OperatingSystem_AMAZON_LINUX ->
            "AMAZON_LINUX"




{-| <p>Information about a player session that was created as part of a <a>StartGameSessionPlacement</a> request. This object contains only the player ID and player session ID. To retrieve full details on a player session, call <a>DescribePlayerSessions</a> with the player session ID.</p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>
-}
type alias PlacedPlayerSession =
    { playerId : Maybe String
    , playerSessionId : Maybe String
    }



placedPlayerSessionDecoder : JD.Decoder PlacedPlayerSession
placedPlayerSessionDecoder =
    JD.succeed PlacedPlayerSession
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerId", "playerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerSessionId", "playerSessionId"]
            JD.string
        )
        




placedPlayerSessionToString : PlacedPlayerSession -> String -- List (String, String)
placedPlayerSessionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "playerId" "" -- val.playerId
        
    --     |> Dict.insert
    --         "playerSessionId" "" -- val.playerSessionId
        
    --     |> Dict.toList
    ""



{-| <p>Represents a player in matchmaking. When starting a matchmaking request, a player has a player ID, attributes, and may have latency data. Team information is added after a match has been successfully completed.</p>
-}
type alias Player =
    { playerId : Maybe String
    , playerAttributes : Maybe (Dict String AttributeValue)
    , team : Maybe String
    , latencyInMs : Maybe (Dict String Int)
    }



playerDecoder : JD.Decoder Player
playerDecoder =
    JD.succeed Player
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerId", "playerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerAttributes", "playerAttributes"]
            (AWS.Core.Decode.dict attributeValueDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Team", "team"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LatencyInMs", "latencyInMs"]
            (AWS.Core.Decode.dict JD.int)
        )
        




playerToString : Player -> String -- List (String, String)
playerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "playerId" "" -- val.playerId
        
    --     |> Dict.insert
    --         "playerAttributes" "" -- val.playerAttributes
        
    --     |> Dict.insert
    --         "team" "" -- val.team
        
    --     |> Dict.insert
    --         "latencyInMs" "" -- val.latencyInMs
        
    --     |> Dict.toList
    ""



{-| <p>Regional latency information for a player, used when requesting a new game session with <a>StartGameSessionPlacement</a>. This value indicates the amount of time lag that exists when the player is connected to a fleet in the specified region. The relative difference between a player's latency values for multiple regions are used to determine which fleets are best suited to place a new game session for the player. </p>
-}
type alias PlayerLatency =
    { playerId : Maybe String
    , regionIdentifier : Maybe String
    , latencyInMilliseconds : Maybe Float
    }



playerLatencyDecoder : JD.Decoder PlayerLatency
playerLatencyDecoder =
    JD.succeed PlayerLatency
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerId", "playerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RegionIdentifier", "regionIdentifier"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LatencyInMilliseconds", "latencyInMilliseconds"]
            JD.float
        )
        




playerLatencyToString : PlayerLatency -> String -- List (String, String)
playerLatencyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "playerId" "" -- val.playerId
        
    --     |> Dict.insert
    --         "regionIdentifier" "" -- val.regionIdentifier
        
    --     |> Dict.insert
    --         "latencyInMilliseconds" "" -- val.latencyInMilliseconds
        
    --     |> Dict.toList
    ""



{-| <p>Queue setting that determines the highest latency allowed for individual players when placing a game session. When a latency policy is in force, a game session cannot be placed at any destination in a region where a player is reporting latency higher than the cap. Latency policies are only enforced when the placement request contains player latency information.</p> <ul> <li> <p> <a>CreateGameSessionQueue</a> </p> </li> <li> <p> <a>DescribeGameSessionQueues</a> </p> </li> <li> <p> <a>UpdateGameSessionQueue</a> </p> </li> <li> <p> <a>DeleteGameSessionQueue</a> </p> </li> </ul>
-}
type alias PlayerLatencyPolicy =
    { maximumIndividualPlayerLatencyMilliseconds : Maybe Int
    , policyDurationSeconds : Maybe Int
    }



playerLatencyPolicyDecoder : JD.Decoder PlayerLatencyPolicy
playerLatencyPolicyDecoder =
    JD.succeed PlayerLatencyPolicy
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaximumIndividualPlayerLatencyMilliseconds", "maximumIndividualPlayerLatencyMilliseconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyDurationSeconds", "policyDurationSeconds"]
            JD.int
        )
        




playerLatencyPolicyToString : PlayerLatencyPolicy -> String -- List (String, String)
playerLatencyPolicyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "maximumIndividualPlayerLatencyMilliseconds" "" -- val.maximumIndividualPlayerLatencyMilliseconds
        
    --     |> Dict.insert
    --         "policyDurationSeconds" "" -- val.policyDurationSeconds
        
    --     |> Dict.toList
    ""



{-| <p>Properties describing a player session. Player session objects are created either by creating a player session for a specific game session, or as part of a game session placement. A player session represents either a player reservation for a game session (status <code>RESERVED</code>) or actual player activity in a game session (status <code>ACTIVE</code>). A player session object (including player data) is automatically passed to a game session when the player connects to the game session and is validated.</p> <p>When a player disconnects, the player session status changes to <code>COMPLETED</code>. Once the session ends, the player session object is retained for 30 days and then removed.</p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> <li> <p>Game session placements</p> <ul> <li> <p> <a>StartGameSessionPlacement</a> </p> </li> <li> <p> <a>DescribeGameSessionPlacement</a> </p> </li> <li> <p> <a>StopGameSessionPlacement</a> </p> </li> </ul> </li> </ul>
-}
type alias PlayerSession =
    { playerSessionId : Maybe String
    , playerId : Maybe String
    , gameSessionId : Maybe String
    , fleetId : Maybe String
    , creationTime : Maybe Posix
    , terminationTime : Maybe Posix
    , status : Maybe PlayerSessionStatus
    , ipAddress : Maybe String
    , port_ : Maybe Int
    , playerData : Maybe String
    }



playerSessionDecoder : JD.Decoder PlayerSession
playerSessionDecoder =
    JD.succeed PlayerSession
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerSessionId", "playerSessionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerId", "playerId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionId", "gameSessionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TerminationTime", "terminationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            playerSessionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IpAddress", "ipAddress"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Port", "port"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlayerData", "playerData"]
            JD.string
        )
        




playerSessionToString : PlayerSession -> String -- List (String, String)
playerSessionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "playerSessionId" "" -- val.playerSessionId
        
    --     |> Dict.insert
    --         "playerId" "" -- val.playerId
        
    --     |> Dict.insert
    --         "gameSessionId" "" -- val.gameSessionId
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "terminationTime" "" -- val.terminationTime
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "ipAddress" "" -- val.ipAddress
        
    --     |> Dict.insert
    --         "port_" "" -- val.port_
        
    --     |> Dict.insert
    --         "playerData" "" -- val.playerData
        
    --     |> Dict.toList
    ""



{-| One of

* `PlayerSessionCreationPolicy_ACCEPT_ALL`
* `PlayerSessionCreationPolicy_DENY_ALL`

-}
type PlayerSessionCreationPolicy
    = PlayerSessionCreationPolicy_ACCEPT_ALL
    | PlayerSessionCreationPolicy_DENY_ALL



playerSessionCreationPolicyDecoder : JD.Decoder PlayerSessionCreationPolicy
playerSessionCreationPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACCEPT_ALL" ->
                        JD.succeed PlayerSessionCreationPolicy_ACCEPT_ALL

                    "DENY_ALL" ->
                        JD.succeed PlayerSessionCreationPolicy_DENY_ALL


                    _ ->
                        JD.fail "bad thing"
            )




playerSessionCreationPolicyToString : PlayerSessionCreationPolicy -> String
playerSessionCreationPolicyToString val =
    case val of
        PlayerSessionCreationPolicy_ACCEPT_ALL ->
            "ACCEPT_ALL"

        PlayerSessionCreationPolicy_DENY_ALL ->
            "DENY_ALL"




{-| One of

* `PlayerSessionStatus_RESERVED`
* `PlayerSessionStatus_ACTIVE`
* `PlayerSessionStatus_COMPLETED`
* `PlayerSessionStatus_TIMEDOUT`

-}
type PlayerSessionStatus
    = PlayerSessionStatus_RESERVED
    | PlayerSessionStatus_ACTIVE
    | PlayerSessionStatus_COMPLETED
    | PlayerSessionStatus_TIMEDOUT



playerSessionStatusDecoder : JD.Decoder PlayerSessionStatus
playerSessionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RESERVED" ->
                        JD.succeed PlayerSessionStatus_RESERVED

                    "ACTIVE" ->
                        JD.succeed PlayerSessionStatus_ACTIVE

                    "COMPLETED" ->
                        JD.succeed PlayerSessionStatus_COMPLETED

                    "TIMEDOUT" ->
                        JD.succeed PlayerSessionStatus_TIMEDOUT


                    _ ->
                        JD.fail "bad thing"
            )




playerSessionStatusToString : PlayerSessionStatus -> String
playerSessionStatusToString val =
    case val of
        PlayerSessionStatus_RESERVED ->
            "RESERVED"

        PlayerSessionStatus_ACTIVE ->
            "ACTIVE"

        PlayerSessionStatus_COMPLETED ->
            "COMPLETED"

        PlayerSessionStatus_TIMEDOUT ->
            "TIMEDOUT"




{-| One of

* `PolicyType_RuleBased`
* `PolicyType_TargetBased`

-}
type PolicyType
    = PolicyType_RuleBased
    | PolicyType_TargetBased



policyTypeDecoder : JD.Decoder PolicyType
policyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RuleBased" ->
                        JD.succeed PolicyType_RuleBased

                    "TargetBased" ->
                        JD.succeed PolicyType_TargetBased


                    _ ->
                        JD.fail "bad thing"
            )




policyTypeToString : PolicyType -> String
policyTypeToString val =
    case val of
        PolicyType_RuleBased ->
            "RuleBased"

        PolicyType_TargetBased ->
            "TargetBased"




{-| One of

* `ProtectionPolicy_NoProtection`
* `ProtectionPolicy_FullProtection`

-}
type ProtectionPolicy
    = ProtectionPolicy_NoProtection
    | ProtectionPolicy_FullProtection



protectionPolicyDecoder : JD.Decoder ProtectionPolicy
protectionPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NoProtection" ->
                        JD.succeed ProtectionPolicy_NoProtection

                    "FullProtection" ->
                        JD.succeed ProtectionPolicy_FullProtection


                    _ ->
                        JD.fail "bad thing"
            )




protectionPolicyToString : ProtectionPolicy -> String
protectionPolicyToString val =
    case val of
        ProtectionPolicy_NoProtection ->
            "NoProtection"

        ProtectionPolicy_FullProtection ->
            "FullProtection"




{-| Type of HTTP response from putScalingPoli
-}
type alias PutScalingPolicyOutput =
    { name : Maybe String
    }



putScalingPolicyOutputDecoder : JD.Decoder PutScalingPolicyOutput
putScalingPolicyOutputDecoder =
    JD.succeed PutScalingPolicyOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




putScalingPolicyOutputToString : PutScalingPolicyOutput -> String -- List (String, String)
putScalingPolicyOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from requestUploadCredentia
-}
type alias RequestUploadCredentialsOutput =
    { uploadCredentials : Maybe AwsCredentials
    , storageLocation : Maybe S3Location
    }



requestUploadCredentialsOutputDecoder : JD.Decoder RequestUploadCredentialsOutput
requestUploadCredentialsOutputDecoder =
    JD.succeed RequestUploadCredentialsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UploadCredentials", "uploadCredentials"]
            awsCredentialsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageLocation", "storageLocation"]
            s3LocationDecoder
        )
        




requestUploadCredentialsOutputToString : RequestUploadCredentialsOutput -> String -- List (String, String)
requestUploadCredentialsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "uploadCredentials" "" -- val.uploadCredentials
        
    --     |> Dict.insert
    --         "storageLocation" "" -- val.storageLocation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from resolveAli
-}
type alias ResolveAliasOutput =
    { fleetId : Maybe String
    }



resolveAliasOutputDecoder : JD.Decoder ResolveAliasOutput
resolveAliasOutputDecoder =
    JD.succeed ResolveAliasOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        




resolveAliasOutputToString : ResolveAliasOutput -> String -- List (String, String)
resolveAliasOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.toList
    ""



{-| <p>Policy that limits the number of game sessions a player can create on the same fleet. This optional policy gives game owners control over how players can consume available game server resources. A resource creation policy makes the following statement: "An individual player can create a maximum number of new game sessions within a specified time period".</p> <p>The policy is evaluated when a player tries to create a new game session. For example, with a policy of 10 new game sessions and a time period of 60 minutes, on receiving a <code>CreateGameSession</code> request, Amazon GameLift checks that the player (identified by <code>CreatorId</code>) has created fewer than 10 game sessions in the past 60 minutes.</p>
-}
type alias ResourceCreationLimitPolicy =
    { newGameSessionsPerCreator : Maybe Int
    , policyPeriodInMinutes : Maybe Int
    }



resourceCreationLimitPolicyDecoder : JD.Decoder ResourceCreationLimitPolicy
resourceCreationLimitPolicyDecoder =
    JD.succeed ResourceCreationLimitPolicy
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NewGameSessionsPerCreator", "newGameSessionsPerCreator"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyPeriodInMinutes", "policyPeriodInMinutes"]
            JD.int
        )
        




resourceCreationLimitPolicyToString : ResourceCreationLimitPolicy -> String -- List (String, String)
resourceCreationLimitPolicyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "newGameSessionsPerCreator" "" -- val.newGameSessionsPerCreator
        
    --     |> Dict.insert
    --         "policyPeriodInMinutes" "" -- val.policyPeriodInMinutes
        
    --     |> Dict.toList
    ""



{-| <p>Routing configuration for a fleet alias.</p> <ul> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul>
-}
type alias RoutingStrategy =
    { type_ : Maybe RoutingStrategyType
    , fleetId : Maybe String
    , message : Maybe String
    }



routingStrategyDecoder : JD.Decoder RoutingStrategy
routingStrategyDecoder =
    JD.succeed RoutingStrategy
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            routingStrategyTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        




routingStrategyToString : RoutingStrategy -> String -- List (String, String)
routingStrategyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| One of

* `RoutingStrategyType_SIMPLE`
* `RoutingStrategyType_TERMINAL`

-}
type RoutingStrategyType
    = RoutingStrategyType_SIMPLE
    | RoutingStrategyType_TERMINAL



routingStrategyTypeDecoder : JD.Decoder RoutingStrategyType
routingStrategyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SIMPLE" ->
                        JD.succeed RoutingStrategyType_SIMPLE

                    "TERMINAL" ->
                        JD.succeed RoutingStrategyType_TERMINAL


                    _ ->
                        JD.fail "bad thing"
            )




routingStrategyTypeToString : RoutingStrategyType -> String
routingStrategyTypeToString val =
    case val of
        RoutingStrategyType_SIMPLE ->
            "SIMPLE"

        RoutingStrategyType_TERMINAL ->
            "TERMINAL"




{-| <p>A collection of server process configurations that describe what processes to run on each instance in a fleet. Server processes run either a custom game build executable or a Realtime Servers script. Each instance in the fleet starts the specified server processes and continues to start new processes as existing processes end. An instance regularly checks for an updated run-time configuration. </p> <p>The run-time configuration enables the instances in a fleet to run multiple processes simultaneously. Learn more about <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html"> Running Multiple Processes on a Fleet </a>.</p> <p>A Amazon GameLift instance is limited to 50 processes running simultaneously. To calculate the total number of processes in a run-time configuration, add the values of the <code>ConcurrentExecutions</code> parameter for each <a>ServerProcess</a> object.</p> <ul> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>DeleteFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>
-}
type alias RuntimeConfiguration =
    { serverProcesses : Maybe (List ServerProcess)
    , maxConcurrentGameSessionActivations : Maybe Int
    , gameSessionActivationTimeoutSeconds : Maybe Int
    }



runtimeConfigurationDecoder : JD.Decoder RuntimeConfiguration
runtimeConfigurationDecoder =
    JD.succeed RuntimeConfiguration
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServerProcesses", "serverProcesses"]
            (JD.list serverProcessDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MaxConcurrentGameSessionActivations", "maxConcurrentGameSessionActivations"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionActivationTimeoutSeconds", "gameSessionActivationTimeoutSeconds"]
            JD.int
        )
        




runtimeConfigurationToString : RuntimeConfiguration -> String -- List (String, String)
runtimeConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serverProcesses" "" -- val.serverProcesses
        
    --     |> Dict.insert
    --         "maxConcurrentGameSessionActivations" "" -- val.maxConcurrentGameSessionActivations
        
    --     |> Dict.insert
    --         "gameSessionActivationTimeoutSeconds" "" -- val.gameSessionActivationTimeoutSeconds
        
    --     |> Dict.toList
    ""



{-| <p>Location in Amazon Simple Storage Service (Amazon S3) where build or script files are stored for access by Amazon GameLift. This location is specified in <a>CreateBuild</a>, <a>CreateScript</a>, and <a>UpdateScript</a> requests. </p>
-}
type alias S3Location =
    { bucket : Maybe String
    , key : Maybe String
    , roleArn : Maybe String
    , objectVersion : Maybe String
    }



s3LocationDecoder : JD.Decoder S3Location
s3LocationDecoder =
    JD.succeed S3Location
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Bucket", "bucket"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RoleArn", "roleArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ObjectVersion", "objectVersion"]
            JD.string
        )
        




s3LocationToString : S3Location -> String -- List (String, String)
s3LocationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "bucket" "" -- val.bucket
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "roleArn" "" -- val.roleArn
        
    --     |> Dict.insert
    --         "objectVersion" "" -- val.objectVersion
        
    --     |> Dict.toList
    ""



{-| One of

* `ScalingAdjustmentType_ChangeInCapacity`
* `ScalingAdjustmentType_ExactCapacity`
* `ScalingAdjustmentType_PercentChangeInCapacity`

-}
type ScalingAdjustmentType
    = ScalingAdjustmentType_ChangeInCapacity
    | ScalingAdjustmentType_ExactCapacity
    | ScalingAdjustmentType_PercentChangeInCapacity



scalingAdjustmentTypeDecoder : JD.Decoder ScalingAdjustmentType
scalingAdjustmentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ChangeInCapacity" ->
                        JD.succeed ScalingAdjustmentType_ChangeInCapacity

                    "ExactCapacity" ->
                        JD.succeed ScalingAdjustmentType_ExactCapacity

                    "PercentChangeInCapacity" ->
                        JD.succeed ScalingAdjustmentType_PercentChangeInCapacity


                    _ ->
                        JD.fail "bad thing"
            )




scalingAdjustmentTypeToString : ScalingAdjustmentType -> String
scalingAdjustmentTypeToString val =
    case val of
        ScalingAdjustmentType_ChangeInCapacity ->
            "ChangeInCapacity"

        ScalingAdjustmentType_ExactCapacity ->
            "ExactCapacity"

        ScalingAdjustmentType_PercentChangeInCapacity ->
            "PercentChangeInCapacity"




{-| <p>Rule that controls how a fleet is scaled. Scaling policies are uniquely identified by the combination of name and fleet ID.</p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p>Manage scaling policies:</p> <ul> <li> <p> <a>PutScalingPolicy</a> (auto-scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (auto-scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (auto-scaling)</p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>
-}
type alias ScalingPolicy =
    { fleetId : Maybe String
    , name : Maybe String
    , status : Maybe ScalingStatusType
    , scalingAdjustment : Maybe Int
    , scalingAdjustmentType : Maybe ScalingAdjustmentType
    , comparisonOperator : Maybe ComparisonOperatorType
    , threshold : Maybe Float
    , evaluationPeriods : Maybe Int
    , metricName : Maybe MetricName
    , policyType : Maybe PolicyType
    , targetConfiguration : Maybe TargetConfiguration
    }



scalingPolicyDecoder : JD.Decoder ScalingPolicy
scalingPolicyDecoder =
    JD.succeed ScalingPolicy
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            scalingStatusTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScalingAdjustment", "scalingAdjustment"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScalingAdjustmentType", "scalingAdjustmentType"]
            scalingAdjustmentTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ComparisonOperator", "comparisonOperator"]
            comparisonOperatorTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Threshold", "threshold"]
            JD.float
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["EvaluationPeriods", "evaluationPeriods"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MetricName", "metricName"]
            metricNameDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PolicyType", "policyType"]
            policyTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetConfiguration", "targetConfiguration"]
            targetConfigurationDecoder
        )
        




scalingPolicyToString : ScalingPolicy -> String -- List (String, String)
scalingPolicyToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "scalingAdjustment" "" -- val.scalingAdjustment
        
    --     |> Dict.insert
    --         "scalingAdjustmentType" "" -- val.scalingAdjustmentType
        
    --     |> Dict.insert
    --         "comparisonOperator" "" -- val.comparisonOperator
        
    --     |> Dict.insert
    --         "threshold" "" -- val.threshold
        
    --     |> Dict.insert
    --         "evaluationPeriods" "" -- val.evaluationPeriods
        
    --     |> Dict.insert
    --         "metricName" "" -- val.metricName
        
    --     |> Dict.insert
    --         "policyType" "" -- val.policyType
        
    --     |> Dict.insert
    --         "targetConfiguration" "" -- val.targetConfiguration
        
    --     |> Dict.toList
    ""



{-| One of

* `ScalingStatusType_ACTIVE`
* `ScalingStatusType_UPDATE_REQUESTED`
* `ScalingStatusType_UPDATING`
* `ScalingStatusType_DELETE_REQUESTED`
* `ScalingStatusType_DELETING`
* `ScalingStatusType_DELETED`
* `ScalingStatusType_ERROR`

-}
type ScalingStatusType
    = ScalingStatusType_ACTIVE
    | ScalingStatusType_UPDATE_REQUESTED
    | ScalingStatusType_UPDATING
    | ScalingStatusType_DELETE_REQUESTED
    | ScalingStatusType_DELETING
    | ScalingStatusType_DELETED
    | ScalingStatusType_ERROR



scalingStatusTypeDecoder : JD.Decoder ScalingStatusType
scalingStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed ScalingStatusType_ACTIVE

                    "UPDATE_REQUESTED" ->
                        JD.succeed ScalingStatusType_UPDATE_REQUESTED

                    "UPDATING" ->
                        JD.succeed ScalingStatusType_UPDATING

                    "DELETE_REQUESTED" ->
                        JD.succeed ScalingStatusType_DELETE_REQUESTED

                    "DELETING" ->
                        JD.succeed ScalingStatusType_DELETING

                    "DELETED" ->
                        JD.succeed ScalingStatusType_DELETED

                    "ERROR" ->
                        JD.succeed ScalingStatusType_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




scalingStatusTypeToString : ScalingStatusType -> String
scalingStatusTypeToString val =
    case val of
        ScalingStatusType_ACTIVE ->
            "ACTIVE"

        ScalingStatusType_UPDATE_REQUESTED ->
            "UPDATE_REQUESTED"

        ScalingStatusType_UPDATING ->
            "UPDATING"

        ScalingStatusType_DELETE_REQUESTED ->
            "DELETE_REQUESTED"

        ScalingStatusType_DELETING ->
            "DELETING"

        ScalingStatusType_DELETED ->
            "DELETED"

        ScalingStatusType_ERROR ->
            "ERROR"




{-| <p>Properties describing a Realtime script.</p> <p> <b>Related operations</b> </p> <ul> <li> <p> <a>CreateScript</a> </p> </li> <li> <p> <a>ListScripts</a> </p> </li> <li> <p> <a>DescribeScript</a> </p> </li> <li> <p> <a>UpdateScript</a> </p> </li> <li> <p> <a>DeleteScript</a> </p> </li> </ul>
-}
type alias Script =
    { scriptId : Maybe String
    , name : Maybe String
    , version : Maybe String
    , sizeOnDisk : Maybe Int
    , creationTime : Maybe Posix
    , storageLocation : Maybe S3Location
    }



scriptDecoder : JD.Decoder Script
scriptDecoder =
    JD.succeed Script
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ScriptId", "scriptId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Version", "version"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SizeOnDisk", "sizeOnDisk"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StorageLocation", "storageLocation"]
            s3LocationDecoder
        )
        




scriptToString : Script -> String -- List (String, String)
scriptToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "scriptId" "" -- val.scriptId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "version" "" -- val.version
        
    --     |> Dict.insert
    --         "sizeOnDisk" "" -- val.sizeOnDisk
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "storageLocation" "" -- val.storageLocation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from searchGameSessio
-}
type alias SearchGameSessionsOutput =
    { gameSessions : Maybe (List GameSession)
    , nextToken : Maybe String
    }



searchGameSessionsOutputDecoder : JD.Decoder SearchGameSessionsOutput
searchGameSessionsOutputDecoder =
    JD.succeed SearchGameSessionsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessions", "gameSessions"]
            (JD.list gameSessionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




searchGameSessionsOutputToString : SearchGameSessionsOutput -> String -- List (String, String)
searchGameSessionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSessions" "" -- val.gameSessions
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>A set of instructions for launching server processes on each instance in a fleet. Server processes run either a custom game build executable or a Realtime Servers script. Each instruction set identifies the location of the custom game build executable or Realtime launch script, optional launch parameters, and the number of server processes with this configuration to maintain concurrently on the instance. Server process configurations make up a fleet's <code> <a>RuntimeConfiguration</a> </code>.</p>
-}
type alias ServerProcess =
    { launchPath : String
    , parameters : Maybe String
    , concurrentExecutions : Int
    }



serverProcessDecoder : JD.Decoder ServerProcess
serverProcessDecoder =
    JD.succeed ServerProcess
        
        |> JDP.custom (AWS.Core.Decode.required
            ["LaunchPath", "launchPath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Parameters", "parameters"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ConcurrentExecutions", "concurrentExecutions"]
            JD.int
        )
        




serverProcessToString : ServerProcess -> String -- List (String, String)
serverProcessToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "launchPath" "" -- val.launchPath
        
    --     |> Dict.insert
    --         "parameters" "" -- val.parameters
        
    --     |> Dict.insert
    --         "concurrentExecutions" "" -- val.concurrentExecutions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startFleetActio
-}
type alias StartFleetActionsOutput =
    { 
    }



startFleetActionsOutputDecoder : JD.Decoder StartFleetActionsOutput
startFleetActionsOutputDecoder =
    JD.succeed StartFleetActionsOutput
        




startFleetActionsOutputToString : StartFleetActionsOutput -> String -- List (String, String)
startFleetActionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startGameSessionPlaceme
-}
type alias StartGameSessionPlacementOutput =
    { gameSessionPlacement : Maybe GameSessionPlacement
    }



startGameSessionPlacementOutputDecoder : JD.Decoder StartGameSessionPlacementOutput
startGameSessionPlacementOutputDecoder =
    JD.succeed StartGameSessionPlacementOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionPlacement", "gameSessionPlacement"]
            gameSessionPlacementDecoder
        )
        




startGameSessionPlacementOutputToString : StartGameSessionPlacementOutput -> String -- List (String, String)
startGameSessionPlacementOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSessionPlacement" "" -- val.gameSessionPlacement
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startMatchBackfi
-}
type alias StartMatchBackfillOutput =
    { matchmakingTicket : Maybe MatchmakingTicket
    }



startMatchBackfillOutputDecoder : JD.Decoder StartMatchBackfillOutput
startMatchBackfillOutputDecoder =
    JD.succeed StartMatchBackfillOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MatchmakingTicket", "matchmakingTicket"]
            matchmakingTicketDecoder
        )
        




startMatchBackfillOutputToString : StartMatchBackfillOutput -> String -- List (String, String)
startMatchBackfillOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "matchmakingTicket" "" -- val.matchmakingTicket
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from startMatchmaki
-}
type alias StartMatchmakingOutput =
    { matchmakingTicket : Maybe MatchmakingTicket
    }



startMatchmakingOutputDecoder : JD.Decoder StartMatchmakingOutput
startMatchmakingOutputDecoder =
    JD.succeed StartMatchmakingOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MatchmakingTicket", "matchmakingTicket"]
            matchmakingTicketDecoder
        )
        




startMatchmakingOutputToString : StartMatchmakingOutput -> String -- List (String, String)
startMatchmakingOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "matchmakingTicket" "" -- val.matchmakingTicket
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopFleetActio
-}
type alias StopFleetActionsOutput =
    { 
    }



stopFleetActionsOutputDecoder : JD.Decoder StopFleetActionsOutput
stopFleetActionsOutputDecoder =
    JD.succeed StopFleetActionsOutput
        




stopFleetActionsOutputToString : StopFleetActionsOutput -> String -- List (String, String)
stopFleetActionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopGameSessionPlaceme
-}
type alias StopGameSessionPlacementOutput =
    { gameSessionPlacement : Maybe GameSessionPlacement
    }



stopGameSessionPlacementOutputDecoder : JD.Decoder StopGameSessionPlacementOutput
stopGameSessionPlacementOutputDecoder =
    JD.succeed StopGameSessionPlacementOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionPlacement", "gameSessionPlacement"]
            gameSessionPlacementDecoder
        )
        




stopGameSessionPlacementOutputToString : StopGameSessionPlacementOutput -> String -- List (String, String)
stopGameSessionPlacementOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSessionPlacement" "" -- val.gameSessionPlacement
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from stopMatchmaki
-}
type alias StopMatchmakingOutput =
    { 
    }



stopMatchmakingOutputDecoder : JD.Decoder StopMatchmakingOutput
stopMatchmakingOutputDecoder =
    JD.succeed StopMatchmakingOutput
        




stopMatchmakingOutputToString : StopMatchmakingOutput -> String -- List (String, String)
stopMatchmakingOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>Settings for a target-based scaling policy (see <a>ScalingPolicy</a>. A target-based policy tracks a particular fleet metric specifies a target value for the metric. As player usage changes, the policy triggers Amazon GameLift to adjust capacity so that the metric returns to the target value. The target configuration specifies settings as needed for the target based policy, including the target value. </p> <ul> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p>Manage scaling policies:</p> <ul> <li> <p> <a>PutScalingPolicy</a> (auto-scaling)</p> </li> <li> <p> <a>DescribeScalingPolicies</a> (auto-scaling)</p> </li> <li> <p> <a>DeleteScalingPolicy</a> (auto-scaling)</p> </li> </ul> </li> <li> <p>Manage fleet actions:</p> <ul> <li> <p> <a>StartFleetActions</a> </p> </li> <li> <p> <a>StopFleetActions</a> </p> </li> </ul> </li> </ul>
-}
type alias TargetConfiguration =
    { targetValue : Float
    }



targetConfigurationDecoder : JD.Decoder TargetConfiguration
targetConfigurationDecoder =
    JD.succeed TargetConfiguration
        
        |> JDP.custom (AWS.Core.Decode.required
            ["TargetValue", "targetValue"]
            JD.float
        )
        




targetConfigurationToString : TargetConfiguration -> String -- List (String, String)
targetConfigurationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "targetValue" "" -- val.targetValue
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateAli
-}
type alias UpdateAliasOutput =
    { alias : Maybe Alias
    }



updateAliasOutputDecoder : JD.Decoder UpdateAliasOutput
updateAliasOutputDecoder =
    JD.succeed UpdateAliasOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Alias", "alias"]
            aliasDecoder
        )
        




updateAliasOutputToString : UpdateAliasOutput -> String -- List (String, String)
updateAliasOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "alias" "" -- val.alias
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateBui
-}
type alias UpdateBuildOutput =
    { build : Maybe Build
    }



updateBuildOutputDecoder : JD.Decoder UpdateBuildOutput
updateBuildOutputDecoder =
    JD.succeed UpdateBuildOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Build", "build"]
            buildDecoder
        )
        




updateBuildOutputToString : UpdateBuildOutput -> String -- List (String, String)
updateBuildOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "build" "" -- val.build
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateFleetAttribut
-}
type alias UpdateFleetAttributesOutput =
    { fleetId : Maybe String
    }



updateFleetAttributesOutputDecoder : JD.Decoder UpdateFleetAttributesOutput
updateFleetAttributesOutputDecoder =
    JD.succeed UpdateFleetAttributesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        




updateFleetAttributesOutputToString : UpdateFleetAttributesOutput -> String -- List (String, String)
updateFleetAttributesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateFleetCapaci
-}
type alias UpdateFleetCapacityOutput =
    { fleetId : Maybe String
    }



updateFleetCapacityOutputDecoder : JD.Decoder UpdateFleetCapacityOutput
updateFleetCapacityOutputDecoder =
    JD.succeed UpdateFleetCapacityOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        




updateFleetCapacityOutputToString : UpdateFleetCapacityOutput -> String -- List (String, String)
updateFleetCapacityOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateFleetPortSettin
-}
type alias UpdateFleetPortSettingsOutput =
    { fleetId : Maybe String
    }



updateFleetPortSettingsOutputDecoder : JD.Decoder UpdateFleetPortSettingsOutput
updateFleetPortSettingsOutputDecoder =
    JD.succeed UpdateFleetPortSettingsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        




updateFleetPortSettingsOutputToString : UpdateFleetPortSettingsOutput -> String -- List (String, String)
updateFleetPortSettingsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateGameSessi
-}
type alias UpdateGameSessionOutput =
    { gameSession : Maybe GameSession
    }



updateGameSessionOutputDecoder : JD.Decoder UpdateGameSessionOutput
updateGameSessionOutputDecoder =
    JD.succeed UpdateGameSessionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSession", "gameSession"]
            gameSessionDecoder
        )
        




updateGameSessionOutputToString : UpdateGameSessionOutput -> String -- List (String, String)
updateGameSessionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSession" "" -- val.gameSession
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateGameSessionQue
-}
type alias UpdateGameSessionQueueOutput =
    { gameSessionQueue : Maybe GameSessionQueue
    }



updateGameSessionQueueOutputDecoder : JD.Decoder UpdateGameSessionQueueOutput
updateGameSessionQueueOutputDecoder =
    JD.succeed UpdateGameSessionQueueOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameSessionQueue", "gameSessionQueue"]
            gameSessionQueueDecoder
        )
        




updateGameSessionQueueOutputToString : UpdateGameSessionQueueOutput -> String -- List (String, String)
updateGameSessionQueueOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameSessionQueue" "" -- val.gameSessionQueue
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateMatchmakingConfigurati
-}
type alias UpdateMatchmakingConfigurationOutput =
    { configuration : Maybe MatchmakingConfiguration
    }



updateMatchmakingConfigurationOutputDecoder : JD.Decoder UpdateMatchmakingConfigurationOutput
updateMatchmakingConfigurationOutputDecoder =
    JD.succeed UpdateMatchmakingConfigurationOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Configuration", "configuration"]
            matchmakingConfigurationDecoder
        )
        




updateMatchmakingConfigurationOutputToString : UpdateMatchmakingConfigurationOutput -> String -- List (String, String)
updateMatchmakingConfigurationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "configuration" "" -- val.configuration
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateRuntimeConfigurati
-}
type alias UpdateRuntimeConfigurationOutput =
    { runtimeConfiguration : Maybe RuntimeConfiguration
    }



updateRuntimeConfigurationOutputDecoder : JD.Decoder UpdateRuntimeConfigurationOutput
updateRuntimeConfigurationOutputDecoder =
    JD.succeed UpdateRuntimeConfigurationOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RuntimeConfiguration", "runtimeConfiguration"]
            runtimeConfigurationDecoder
        )
        




updateRuntimeConfigurationOutputToString : UpdateRuntimeConfigurationOutput -> String -- List (String, String)
updateRuntimeConfigurationOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "runtimeConfiguration" "" -- val.runtimeConfiguration
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateScri
-}
type alias UpdateScriptOutput =
    { script : Maybe Script
    }



updateScriptOutputDecoder : JD.Decoder UpdateScriptOutput
updateScriptOutputDecoder =
    JD.succeed UpdateScriptOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Script", "script"]
            scriptDecoder
        )
        




updateScriptOutputToString : UpdateScriptOutput -> String -- List (String, String)
updateScriptOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "script" "" -- val.script
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from validateMatchmakingRuleS
-}
type alias ValidateMatchmakingRuleSetOutput =
    { valid : Maybe Bool
    }



validateMatchmakingRuleSetOutputDecoder : JD.Decoder ValidateMatchmakingRuleSetOutput
validateMatchmakingRuleSetOutputDecoder =
    JD.succeed ValidateMatchmakingRuleSetOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Valid", "valid"]
            JD.bool
        )
        




validateMatchmakingRuleSetOutputToString : ValidateMatchmakingRuleSetOutput -> String -- List (String, String)
validateMatchmakingRuleSetOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "valid" "" -- val.valid
        
    --     |> Dict.toList
    ""



{-| <p>Represents an authorization for a VPC peering connection between the VPC for an Amazon GameLift fleet and another VPC on an account you have access to. This authorization must exist and be valid for the peering connection to be established. Authorizations are valid for 24 hours after they are issued.</p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>
-}
type alias VpcPeeringAuthorization =
    { gameLiftAwsAccountId : Maybe String
    , peerVpcAwsAccountId : Maybe String
    , peerVpcId : Maybe String
    , creationTime : Maybe Posix
    , expirationTime : Maybe Posix
    }



vpcPeeringAuthorizationDecoder : JD.Decoder VpcPeeringAuthorization
vpcPeeringAuthorizationDecoder =
    JD.succeed VpcPeeringAuthorization
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameLiftAwsAccountId", "gameLiftAwsAccountId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PeerVpcAwsAccountId", "peerVpcAwsAccountId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PeerVpcId", "peerVpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreationTime", "creationTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ExpirationTime", "expirationTime"]
            JDX.datetime
        )
        




vpcPeeringAuthorizationToString : VpcPeeringAuthorization -> String -- List (String, String)
vpcPeeringAuthorizationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "gameLiftAwsAccountId" "" -- val.gameLiftAwsAccountId
        
    --     |> Dict.insert
    --         "peerVpcAwsAccountId" "" -- val.peerVpcAwsAccountId
        
    --     |> Dict.insert
    --         "peerVpcId" "" -- val.peerVpcId
        
    --     |> Dict.insert
    --         "creationTime" "" -- val.creationTime
        
    --     |> Dict.insert
    --         "expirationTime" "" -- val.expirationTime
        
    --     |> Dict.toList
    ""



{-| <p>Represents a peering connection between a VPC on one of your AWS accounts and the VPC for your Amazon GameLift fleets. This record may be for an active peering connection or a pending connection that has not yet been established.</p> <ul> <li> <p> <a>CreateVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>DescribeVpcPeeringAuthorizations</a> </p> </li> <li> <p> <a>DeleteVpcPeeringAuthorization</a> </p> </li> <li> <p> <a>CreateVpcPeeringConnection</a> </p> </li> <li> <p> <a>DescribeVpcPeeringConnections</a> </p> </li> <li> <p> <a>DeleteVpcPeeringConnection</a> </p> </li> </ul>
-}
type alias VpcPeeringConnection =
    { fleetId : Maybe String
    , ipV4CidrBlock : Maybe String
    , vpcPeeringConnectionId : Maybe String
    , status : Maybe VpcPeeringConnectionStatus
    , peerVpcId : Maybe String
    , gameLiftVpcId : Maybe String
    }



vpcPeeringConnectionDecoder : JD.Decoder VpcPeeringConnection
vpcPeeringConnectionDecoder =
    JD.succeed VpcPeeringConnection
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FleetId", "fleetId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IpV4CidrBlock", "ipV4CidrBlock"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VpcPeeringConnectionId", "vpcPeeringConnectionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            vpcPeeringConnectionStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PeerVpcId", "peerVpcId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["GameLiftVpcId", "gameLiftVpcId"]
            JD.string
        )
        




vpcPeeringConnectionToString : VpcPeeringConnection -> String -- List (String, String)
vpcPeeringConnectionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "fleetId" "" -- val.fleetId
        
    --     |> Dict.insert
    --         "ipV4CidrBlock" "" -- val.ipV4CidrBlock
        
    --     |> Dict.insert
    --         "vpcPeeringConnectionId" "" -- val.vpcPeeringConnectionId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "peerVpcId" "" -- val.peerVpcId
        
    --     |> Dict.insert
    --         "gameLiftVpcId" "" -- val.gameLiftVpcId
        
    --     |> Dict.toList
    ""



{-| <p>Represents status information for a VPC peering connection. Status is associated with a <a>VpcPeeringConnection</a> object. Status codes and messages are provided from EC2 (see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpcPeeringConnectionStateReason.html">VpcPeeringConnectionStateReason</a>). Connection status information is also communicated as a fleet <a>Event</a>.</p>
-}
type alias VpcPeeringConnectionStatus =
    { code : Maybe String
    , message : Maybe String
    }



vpcPeeringConnectionStatusDecoder : JD.Decoder VpcPeeringConnectionStatus
vpcPeeringConnectionStatusDecoder =
    JD.succeed VpcPeeringConnectionStatus
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Code", "code"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        




vpcPeeringConnectionStatusToString : VpcPeeringConnectionStatus -> String -- List (String, String)
vpcPeeringConnectionStatusToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""






{-| <p>Represents the input for a request action.</p>
-}
type alias AcceptMatchInput =
    { ticketId : String
    , playerIds : (List String)
    , acceptanceType : AcceptanceType
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias CreateAliasInput =
    { name : String
    , description : Maybe String
    , routingStrategy : RoutingStrategy
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias CreateBuildInput =
    { name : Maybe String
    , version : Maybe String
    , storageLocation : Maybe S3Location
    , operatingSystem : Maybe OperatingSystem
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias CreateFleetInput =
    { name : String
    , description : Maybe String
    , buildId : Maybe String
    , scriptId : Maybe String
    , serverLaunchPath : Maybe String
    , serverLaunchParameters : Maybe String
    , logPaths : Maybe (List String)
    , eC2InstanceType : EC2InstanceType
    , eC2InboundPermissions : Maybe (List IpPermission)
    , newGameSessionProtectionPolicy : Maybe ProtectionPolicy
    , runtimeConfiguration : Maybe RuntimeConfiguration
    , resourceCreationLimitPolicy : Maybe ResourceCreationLimitPolicy
    , metricGroups : Maybe (List String)
    , peerVpcAwsAccountId : Maybe String
    , peerVpcId : Maybe String
    , fleetType : Maybe FleetType
    , instanceRoleArn : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias CreateGameSessionInput =
    { fleetId : Maybe String
    , aliasId : Maybe String
    , maximumPlayerSessionCount : Int
    , name : Maybe String
    , gameProperties : Maybe (List GameProperty)
    , creatorId : Maybe String
    , gameSessionId : Maybe String
    , idempotencyToken : Maybe String
    , gameSessionData : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias CreateGameSessionQueueInput =
    { name : String
    , timeoutInSeconds : Maybe Int
    , playerLatencyPolicies : Maybe (List PlayerLatencyPolicy)
    , destinations : Maybe (List GameSessionQueueDestination)
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias CreateMatchmakingConfigurationInput =
    { name : String
    , description : Maybe String
    , gameSessionQueueArns : (List String)
    , requestTimeoutSeconds : Int
    , acceptanceTimeoutSeconds : Maybe Int
    , acceptanceRequired : Bool
    , ruleSetName : String
    , notificationTarget : Maybe String
    , additionalPlayerCount : Maybe Int
    , customEventData : Maybe String
    , gameProperties : Maybe (List GameProperty)
    , gameSessionData : Maybe String
    , backfillMode : Maybe BackfillMode
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias CreateMatchmakingRuleSetInput =
    { name : String
    , ruleSetBody : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias CreatePlayerSessionInput =
    { gameSessionId : String
    , playerId : String
    , playerData : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias CreatePlayerSessionsInput =
    { gameSessionId : String
    , playerIds : (List String)
    , playerDataMap : Maybe (Dict String String)
    }


{-| undefined
-}
type alias CreateScriptInput =
    { name : Maybe String
    , version : Maybe String
    , storageLocation : Maybe S3Location
    , zipFile : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias CreateVpcPeeringAuthorizationInput =
    { gameLiftAwsAccountId : String
    , peerVpcId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias CreateVpcPeeringConnectionInput =
    { fleetId : String
    , peerVpcAwsAccountId : String
    , peerVpcId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DeleteAliasInput =
    { aliasId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DeleteBuildInput =
    { buildId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DeleteFleetInput =
    { fleetId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DeleteGameSessionQueueInput =
    { name : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DeleteMatchmakingConfigurationInput =
    { name : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DeleteMatchmakingRuleSetInput =
    { name : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DeleteScalingPolicyInput =
    { name : String
    , fleetId : String
    }


{-| undefined
-}
type alias DeleteScriptInput =
    { scriptId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DeleteVpcPeeringAuthorizationInput =
    { gameLiftAwsAccountId : String
    , peerVpcId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DeleteVpcPeeringConnectionInput =
    { fleetId : String
    , vpcPeeringConnectionId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeAliasInput =
    { aliasId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeBuildInput =
    { buildId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeEC2InstanceLimitsInput =
    { eC2InstanceType : Maybe EC2InstanceType
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeFleetAttributesInput =
    { fleetIds : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeFleetCapacityInput =
    { fleetIds : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeFleetEventsInput =
    { fleetId : String
    , startTime : Maybe Posix
    , endTime : Maybe Posix
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeFleetPortSettingsInput =
    { fleetId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeFleetUtilizationInput =
    { fleetIds : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeGameSessionDetailsInput =
    { fleetId : Maybe String
    , gameSessionId : Maybe String
    , aliasId : Maybe String
    , statusFilter : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeGameSessionPlacementInput =
    { placementId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeGameSessionQueuesInput =
    { names : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeGameSessionsInput =
    { fleetId : Maybe String
    , gameSessionId : Maybe String
    , aliasId : Maybe String
    , statusFilter : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeInstancesInput =
    { fleetId : String
    , instanceId : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeMatchmakingConfigurationsInput =
    { names : Maybe (List String)
    , ruleSetName : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeMatchmakingInput =
    { ticketIds : (List String)
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeMatchmakingRuleSetsInput =
    { names : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribePlayerSessionsInput =
    { gameSessionId : Maybe String
    , playerId : Maybe String
    , playerSessionId : Maybe String
    , playerSessionStatusFilter : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeRuntimeConfigurationInput =
    { fleetId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeScalingPoliciesInput =
    { fleetId : String
    , statusFilter : Maybe ScalingStatusType
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribeScriptInput =
    { scriptId : String
    }


{-| undefined
-}
type alias DescribeVpcPeeringAuthorizationsInput =
    { 
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias DescribeVpcPeeringConnectionsInput =
    { fleetId : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias GetGameSessionLogUrlInput =
    { gameSessionId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias GetInstanceAccessInput =
    { fleetId : String
    , instanceId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias ListAliasesInput =
    { routingStrategyType : Maybe RoutingStrategyType
    , name : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias ListBuildsInput =
    { status : Maybe BuildStatus
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias ListFleetsInput =
    { buildId : Maybe String
    , scriptId : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListScriptsInput =
    { limit : Maybe Int
    , nextToken : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias PutScalingPolicyInput =
    { name : String
    , fleetId : String
    , scalingAdjustment : Maybe Int
    , scalingAdjustmentType : Maybe ScalingAdjustmentType
    , threshold : Maybe Float
    , comparisonOperator : Maybe ComparisonOperatorType
    , evaluationPeriods : Maybe Int
    , metricName : MetricName
    , policyType : Maybe PolicyType
    , targetConfiguration : Maybe TargetConfiguration
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias RequestUploadCredentialsInput =
    { buildId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias ResolveAliasInput =
    { aliasId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias SearchGameSessionsInput =
    { fleetId : Maybe String
    , aliasId : Maybe String
    , filterExpression : Maybe String
    , sortExpression : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias StartFleetActionsInput =
    { fleetId : String
    , actions : (List FleetAction)
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias StartGameSessionPlacementInput =
    { placementId : String
    , gameSessionQueueName : String
    , gameProperties : Maybe (List GameProperty)
    , maximumPlayerSessionCount : Int
    , gameSessionName : Maybe String
    , playerLatencies : Maybe (List PlayerLatency)
    , desiredPlayerSessions : Maybe (List DesiredPlayerSession)
    , gameSessionData : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias StartMatchBackfillInput =
    { ticketId : Maybe String
    , configurationName : String
    , gameSessionArn : String
    , players : (List Player)
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias StartMatchmakingInput =
    { ticketId : Maybe String
    , configurationName : String
    , players : (List Player)
    }


{-| undefined
-}
type alias StopFleetActionsInput =
    { fleetId : String
    , actions : (List FleetAction)
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias StopGameSessionPlacementInput =
    { placementId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias StopMatchmakingInput =
    { ticketId : String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias UpdateAliasInput =
    { aliasId : String
    , name : Maybe String
    , description : Maybe String
    , routingStrategy : Maybe RoutingStrategy
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias UpdateBuildInput =
    { buildId : String
    , name : Maybe String
    , version : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias UpdateFleetAttributesInput =
    { fleetId : String
    , name : Maybe String
    , description : Maybe String
    , newGameSessionProtectionPolicy : Maybe ProtectionPolicy
    , resourceCreationLimitPolicy : Maybe ResourceCreationLimitPolicy
    , metricGroups : Maybe (List String)
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias UpdateFleetCapacityInput =
    { fleetId : String
    , desiredInstances : Maybe Int
    , minSize : Maybe Int
    , maxSize : Maybe Int
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias UpdateFleetPortSettingsInput =
    { fleetId : String
    , inboundPermissionAuthorizations : Maybe (List IpPermission)
    , inboundPermissionRevocations : Maybe (List IpPermission)
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias UpdateGameSessionInput =
    { gameSessionId : String
    , maximumPlayerSessionCount : Maybe Int
    , name : Maybe String
    , playerSessionCreationPolicy : Maybe PlayerSessionCreationPolicy
    , protectionPolicy : Maybe ProtectionPolicy
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias UpdateGameSessionQueueInput =
    { name : String
    , timeoutInSeconds : Maybe Int
    , playerLatencyPolicies : Maybe (List PlayerLatencyPolicy)
    , destinations : Maybe (List GameSessionQueueDestination)
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias UpdateMatchmakingConfigurationInput =
    { name : String
    , description : Maybe String
    , gameSessionQueueArns : Maybe (List String)
    , requestTimeoutSeconds : Maybe Int
    , acceptanceTimeoutSeconds : Maybe Int
    , acceptanceRequired : Maybe Bool
    , ruleSetName : Maybe String
    , notificationTarget : Maybe String
    , additionalPlayerCount : Maybe Int
    , customEventData : Maybe String
    , gameProperties : Maybe (List GameProperty)
    , gameSessionData : Maybe String
    , backfillMode : Maybe BackfillMode
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias UpdateRuntimeConfigurationInput =
    { fleetId : String
    , runtimeConfiguration : RuntimeConfiguration
    }


{-| undefined
-}
type alias UpdateScriptInput =
    { scriptId : String
    , name : Maybe String
    , version : Maybe String
    , storageLocation : Maybe S3Location
    , zipFile : Maybe String
    }


{-| <p>Represents the input for a request action.</p>
-}
type alias ValidateMatchmakingRuleSetInput =
    { ruleSetBody : String
    }






acceptMatchInputEncoder : AcceptMatchInput -> JE.Value
acceptMatchInputEncoder data =
    []
        
        
        |> (::) ("TicketId", data.ticketId |> (JE.string))
        
        
        
        |> (::) ("PlayerIds", data.playerIds |> (JE.list (JE.string)))
        
        
        
        |> (::) ("AcceptanceType", data.acceptanceType |> (acceptanceTypeToString >> JE.string))
        
        
        |> JE.object






acceptMatchOutputEncoder : AcceptMatchOutput -> JE.Value
acceptMatchOutputEncoder data =
    []
        
        |> JE.object










aliasEncoder : Alias -> JE.Value
aliasEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AliasId", data.aliasId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AliasArn", data.aliasArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (routingStrategyEncoder)
            ("RoutingStrategy", data.routingStrategy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("LastUpdatedTime", data.lastUpdatedTime)
        
        
        |> JE.object






attributeValueEncoder : AttributeValue -> JE.Value
attributeValueEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("S", data.s)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("N", data.n)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SL", data.sL)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.float))
            ("SDM", data.sDM)
        
        
        |> JE.object






awsCredentialsEncoder : AwsCredentials -> JE.Value
awsCredentialsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AccessKeyId", data.accessKeyId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SecretAccessKey", data.secretAccessKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SessionToken", data.sessionToken)
        
        
        |> JE.object










buildEncoder : Build -> JE.Value
buildEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BuildId", data.buildId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (buildStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("SizeOnDisk", data.sizeOnDisk)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (operatingSystemToString >> JE.string)
            ("OperatingSystem", data.operatingSystem)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        |> JE.object














createAliasInputEncoder : CreateAliasInput -> JE.Value
createAliasInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> (::) ("RoutingStrategy", data.routingStrategy |> (routingStrategyEncoder))
        
        
        |> JE.object






createAliasOutputEncoder : CreateAliasOutput -> JE.Value
createAliasOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (aliasEncoder)
            ("Alias", data.alias)
        
        
        |> JE.object






createBuildInputEncoder : CreateBuildInput -> JE.Value
createBuildInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3LocationEncoder)
            ("StorageLocation", data.storageLocation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (operatingSystemToString >> JE.string)
            ("OperatingSystem", data.operatingSystem)
        
        
        |> JE.object






createBuildOutputEncoder : CreateBuildOutput -> JE.Value
createBuildOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (buildEncoder)
            ("Build", data.build)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (awsCredentialsEncoder)
            ("UploadCredentials", data.uploadCredentials)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3LocationEncoder)
            ("StorageLocation", data.storageLocation)
        
        
        |> JE.object






createFleetInputEncoder : CreateFleetInput -> JE.Value
createFleetInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BuildId", data.buildId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ScriptId", data.scriptId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ServerLaunchPath", data.serverLaunchPath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ServerLaunchParameters", data.serverLaunchParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("LogPaths", data.logPaths)
        
        
        
        |> (::) ("EC2InstanceType", data.eC2InstanceType |> (eC2InstanceTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ipPermissionEncoder))
            ("EC2InboundPermissions", data.eC2InboundPermissions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (protectionPolicyToString >> JE.string)
            ("NewGameSessionProtectionPolicy", data.newGameSessionProtectionPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (runtimeConfigurationEncoder)
            ("RuntimeConfiguration", data.runtimeConfiguration)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceCreationLimitPolicyEncoder)
            ("ResourceCreationLimitPolicy", data.resourceCreationLimitPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("MetricGroups", data.metricGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PeerVpcAwsAccountId", data.peerVpcAwsAccountId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PeerVpcId", data.peerVpcId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fleetTypeToString >> JE.string)
            ("FleetType", data.fleetType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceRoleArn", data.instanceRoleArn)
        
        
        |> JE.object






createFleetOutputEncoder : CreateFleetOutput -> JE.Value
createFleetOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (fleetAttributesEncoder)
            ("FleetAttributes", data.fleetAttributes)
        
        
        |> JE.object






createGameSessionInputEncoder : CreateGameSessionInput -> JE.Value
createGameSessionInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AliasId", data.aliasId)
        
        
        
        |> (::) ("MaximumPlayerSessionCount", data.maximumPlayerSessionCount |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gamePropertyEncoder))
            ("GameProperties", data.gameProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatorId", data.creatorId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionId", data.gameSessionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IdempotencyToken", data.idempotencyToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionData", data.gameSessionData)
        
        
        |> JE.object






createGameSessionOutputEncoder : CreateGameSessionOutput -> JE.Value
createGameSessionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (gameSessionEncoder)
            ("GameSession", data.gameSession)
        
        
        |> JE.object






createGameSessionQueueInputEncoder : CreateGameSessionQueueInput -> JE.Value
createGameSessionQueueInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TimeoutInSeconds", data.timeoutInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (playerLatencyPolicyEncoder))
            ("PlayerLatencyPolicies", data.playerLatencyPolicies)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gameSessionQueueDestinationEncoder))
            ("Destinations", data.destinations)
        
        
        |> JE.object






createGameSessionQueueOutputEncoder : CreateGameSessionQueueOutput -> JE.Value
createGameSessionQueueOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (gameSessionQueueEncoder)
            ("GameSessionQueue", data.gameSessionQueue)
        
        
        |> JE.object






createMatchmakingConfigurationInputEncoder : CreateMatchmakingConfigurationInput -> JE.Value
createMatchmakingConfigurationInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> (::) ("GameSessionQueueArns", data.gameSessionQueueArns |> (JE.list (JE.string)))
        
        
        
        |> (::) ("RequestTimeoutSeconds", data.requestTimeoutSeconds |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AcceptanceTimeoutSeconds", data.acceptanceTimeoutSeconds)
        
        
        
        |> (::) ("AcceptanceRequired", data.acceptanceRequired |> (JE.bool))
        
        
        
        |> (::) ("RuleSetName", data.ruleSetName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NotificationTarget", data.notificationTarget)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AdditionalPlayerCount", data.additionalPlayerCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomEventData", data.customEventData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gamePropertyEncoder))
            ("GameProperties", data.gameProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionData", data.gameSessionData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (backfillModeToString >> JE.string)
            ("BackfillMode", data.backfillMode)
        
        
        |> JE.object






createMatchmakingConfigurationOutputEncoder : CreateMatchmakingConfigurationOutput -> JE.Value
createMatchmakingConfigurationOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (matchmakingConfigurationEncoder)
            ("Configuration", data.configuration)
        
        
        |> JE.object






createMatchmakingRuleSetInputEncoder : CreateMatchmakingRuleSetInput -> JE.Value
createMatchmakingRuleSetInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("RuleSetBody", data.ruleSetBody |> (JE.string))
        
        
        |> JE.object






createMatchmakingRuleSetOutputEncoder : CreateMatchmakingRuleSetOutput -> JE.Value
createMatchmakingRuleSetOutputEncoder data =
    []
        
        
        |> (::) ("RuleSet", data.ruleSet |> (matchmakingRuleSetEncoder))
        
        
        |> JE.object






createPlayerSessionInputEncoder : CreatePlayerSessionInput -> JE.Value
createPlayerSessionInputEncoder data =
    []
        
        
        |> (::) ("GameSessionId", data.gameSessionId |> (JE.string))
        
        
        
        |> (::) ("PlayerId", data.playerId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerData", data.playerData)
        
        
        |> JE.object






createPlayerSessionOutputEncoder : CreatePlayerSessionOutput -> JE.Value
createPlayerSessionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (playerSessionEncoder)
            ("PlayerSession", data.playerSession)
        
        
        |> JE.object






createPlayerSessionsInputEncoder : CreatePlayerSessionsInput -> JE.Value
createPlayerSessionsInputEncoder data =
    []
        
        
        |> (::) ("GameSessionId", data.gameSessionId |> (JE.string))
        
        
        
        |> (::) ("PlayerIds", data.playerIds |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("PlayerDataMap", data.playerDataMap)
        
        
        |> JE.object






createPlayerSessionsOutputEncoder : CreatePlayerSessionsOutput -> JE.Value
createPlayerSessionsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (playerSessionEncoder))
            ("PlayerSessions", data.playerSessions)
        
        
        |> JE.object






createScriptInputEncoder : CreateScriptInput -> JE.Value
createScriptInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3LocationEncoder)
            ("StorageLocation", data.storageLocation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ZipFile", data.zipFile)
        
        
        |> JE.object






createScriptOutputEncoder : CreateScriptOutput -> JE.Value
createScriptOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (scriptEncoder)
            ("Script", data.script)
        
        
        |> JE.object






createVpcPeeringAuthorizationInputEncoder : CreateVpcPeeringAuthorizationInput -> JE.Value
createVpcPeeringAuthorizationInputEncoder data =
    []
        
        
        |> (::) ("GameLiftAwsAccountId", data.gameLiftAwsAccountId |> (JE.string))
        
        
        
        |> (::) ("PeerVpcId", data.peerVpcId |> (JE.string))
        
        
        |> JE.object






createVpcPeeringAuthorizationOutputEncoder : CreateVpcPeeringAuthorizationOutput -> JE.Value
createVpcPeeringAuthorizationOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (vpcPeeringAuthorizationEncoder)
            ("VpcPeeringAuthorization", data.vpcPeeringAuthorization)
        
        
        |> JE.object






createVpcPeeringConnectionInputEncoder : CreateVpcPeeringConnectionInput -> JE.Value
createVpcPeeringConnectionInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> (::) ("PeerVpcAwsAccountId", data.peerVpcAwsAccountId |> (JE.string))
        
        
        
        |> (::) ("PeerVpcId", data.peerVpcId |> (JE.string))
        
        
        |> JE.object






createVpcPeeringConnectionOutputEncoder : CreateVpcPeeringConnectionOutput -> JE.Value
createVpcPeeringConnectionOutputEncoder data =
    []
        
        |> JE.object






deleteAliasInputEncoder : DeleteAliasInput -> JE.Value
deleteAliasInputEncoder data =
    []
        
        
        |> (::) ("AliasId", data.aliasId |> (JE.string))
        
        
        |> JE.object






deleteBuildInputEncoder : DeleteBuildInput -> JE.Value
deleteBuildInputEncoder data =
    []
        
        
        |> (::) ("BuildId", data.buildId |> (JE.string))
        
        
        |> JE.object






deleteFleetInputEncoder : DeleteFleetInput -> JE.Value
deleteFleetInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        |> JE.object






deleteGameSessionQueueInputEncoder : DeleteGameSessionQueueInput -> JE.Value
deleteGameSessionQueueInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteGameSessionQueueOutputEncoder : DeleteGameSessionQueueOutput -> JE.Value
deleteGameSessionQueueOutputEncoder data =
    []
        
        |> JE.object






deleteMatchmakingConfigurationInputEncoder : DeleteMatchmakingConfigurationInput -> JE.Value
deleteMatchmakingConfigurationInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteMatchmakingConfigurationOutputEncoder : DeleteMatchmakingConfigurationOutput -> JE.Value
deleteMatchmakingConfigurationOutputEncoder data =
    []
        
        |> JE.object






deleteMatchmakingRuleSetInputEncoder : DeleteMatchmakingRuleSetInput -> JE.Value
deleteMatchmakingRuleSetInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        |> JE.object






deleteMatchmakingRuleSetOutputEncoder : DeleteMatchmakingRuleSetOutput -> JE.Value
deleteMatchmakingRuleSetOutputEncoder data =
    []
        
        |> JE.object






deleteScalingPolicyInputEncoder : DeleteScalingPolicyInput -> JE.Value
deleteScalingPolicyInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        |> JE.object






deleteScriptInputEncoder : DeleteScriptInput -> JE.Value
deleteScriptInputEncoder data =
    []
        
        
        |> (::) ("ScriptId", data.scriptId |> (JE.string))
        
        
        |> JE.object






deleteVpcPeeringAuthorizationInputEncoder : DeleteVpcPeeringAuthorizationInput -> JE.Value
deleteVpcPeeringAuthorizationInputEncoder data =
    []
        
        
        |> (::) ("GameLiftAwsAccountId", data.gameLiftAwsAccountId |> (JE.string))
        
        
        
        |> (::) ("PeerVpcId", data.peerVpcId |> (JE.string))
        
        
        |> JE.object






deleteVpcPeeringAuthorizationOutputEncoder : DeleteVpcPeeringAuthorizationOutput -> JE.Value
deleteVpcPeeringAuthorizationOutputEncoder data =
    []
        
        |> JE.object






deleteVpcPeeringConnectionInputEncoder : DeleteVpcPeeringConnectionInput -> JE.Value
deleteVpcPeeringConnectionInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> (::) ("VpcPeeringConnectionId", data.vpcPeeringConnectionId |> (JE.string))
        
        
        |> JE.object






deleteVpcPeeringConnectionOutputEncoder : DeleteVpcPeeringConnectionOutput -> JE.Value
deleteVpcPeeringConnectionOutputEncoder data =
    []
        
        |> JE.object






describeAliasInputEncoder : DescribeAliasInput -> JE.Value
describeAliasInputEncoder data =
    []
        
        
        |> (::) ("AliasId", data.aliasId |> (JE.string))
        
        
        |> JE.object






describeAliasOutputEncoder : DescribeAliasOutput -> JE.Value
describeAliasOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (aliasEncoder)
            ("Alias", data.alias)
        
        
        |> JE.object






describeBuildInputEncoder : DescribeBuildInput -> JE.Value
describeBuildInputEncoder data =
    []
        
        
        |> (::) ("BuildId", data.buildId |> (JE.string))
        
        
        |> JE.object






describeBuildOutputEncoder : DescribeBuildOutput -> JE.Value
describeBuildOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (buildEncoder)
            ("Build", data.build)
        
        
        |> JE.object






describeEC2InstanceLimitsInputEncoder : DescribeEC2InstanceLimitsInput -> JE.Value
describeEC2InstanceLimitsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (eC2InstanceTypeToString >> JE.string)
            ("EC2InstanceType", data.eC2InstanceType)
        
        
        |> JE.object






describeEC2InstanceLimitsOutputEncoder : DescribeEC2InstanceLimitsOutput -> JE.Value
describeEC2InstanceLimitsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eC2InstanceLimitEncoder))
            ("EC2InstanceLimits", data.eC2InstanceLimits)
        
        
        |> JE.object






describeFleetAttributesInputEncoder : DescribeFleetAttributesInput -> JE.Value
describeFleetAttributesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("FleetIds", data.fleetIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeFleetAttributesOutputEncoder : DescribeFleetAttributesOutput -> JE.Value
describeFleetAttributesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fleetAttributesEncoder))
            ("FleetAttributes", data.fleetAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeFleetCapacityInputEncoder : DescribeFleetCapacityInput -> JE.Value
describeFleetCapacityInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("FleetIds", data.fleetIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeFleetCapacityOutputEncoder : DescribeFleetCapacityOutput -> JE.Value
describeFleetCapacityOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fleetCapacityEncoder))
            ("FleetCapacity", data.fleetCapacity)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeFleetEventsInputEncoder : DescribeFleetEventsInput -> JE.Value
describeFleetEventsInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("EndTime", data.endTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeFleetEventsOutputEncoder : DescribeFleetEventsOutput -> JE.Value
describeFleetEventsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (eventEncoder))
            ("Events", data.events)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeFleetPortSettingsInputEncoder : DescribeFleetPortSettingsInput -> JE.Value
describeFleetPortSettingsInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        |> JE.object






describeFleetPortSettingsOutputEncoder : DescribeFleetPortSettingsOutput -> JE.Value
describeFleetPortSettingsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ipPermissionEncoder))
            ("InboundPermissions", data.inboundPermissions)
        
        
        |> JE.object






describeFleetUtilizationInputEncoder : DescribeFleetUtilizationInput -> JE.Value
describeFleetUtilizationInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("FleetIds", data.fleetIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeFleetUtilizationOutputEncoder : DescribeFleetUtilizationOutput -> JE.Value
describeFleetUtilizationOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fleetUtilizationEncoder))
            ("FleetUtilization", data.fleetUtilization)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeGameSessionDetailsInputEncoder : DescribeGameSessionDetailsInput -> JE.Value
describeGameSessionDetailsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionId", data.gameSessionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AliasId", data.aliasId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusFilter", data.statusFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeGameSessionDetailsOutputEncoder : DescribeGameSessionDetailsOutput -> JE.Value
describeGameSessionDetailsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gameSessionDetailEncoder))
            ("GameSessionDetails", data.gameSessionDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeGameSessionPlacementInputEncoder : DescribeGameSessionPlacementInput -> JE.Value
describeGameSessionPlacementInputEncoder data =
    []
        
        
        |> (::) ("PlacementId", data.placementId |> (JE.string))
        
        
        |> JE.object






describeGameSessionPlacementOutputEncoder : DescribeGameSessionPlacementOutput -> JE.Value
describeGameSessionPlacementOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (gameSessionPlacementEncoder)
            ("GameSessionPlacement", data.gameSessionPlacement)
        
        
        |> JE.object






describeGameSessionQueuesInputEncoder : DescribeGameSessionQueuesInput -> JE.Value
describeGameSessionQueuesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Names", data.names)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeGameSessionQueuesOutputEncoder : DescribeGameSessionQueuesOutput -> JE.Value
describeGameSessionQueuesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gameSessionQueueEncoder))
            ("GameSessionQueues", data.gameSessionQueues)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeGameSessionsInputEncoder : DescribeGameSessionsInput -> JE.Value
describeGameSessionsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionId", data.gameSessionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AliasId", data.aliasId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusFilter", data.statusFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeGameSessionsOutputEncoder : DescribeGameSessionsOutput -> JE.Value
describeGameSessionsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gameSessionEncoder))
            ("GameSessions", data.gameSessions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeInstancesInputEncoder : DescribeInstancesInput -> JE.Value
describeInstancesInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeInstancesOutputEncoder : DescribeInstancesOutput -> JE.Value
describeInstancesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (instanceEncoder))
            ("Instances", data.instances)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeMatchmakingConfigurationsInputEncoder : DescribeMatchmakingConfigurationsInput -> JE.Value
describeMatchmakingConfigurationsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Names", data.names)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RuleSetName", data.ruleSetName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeMatchmakingConfigurationsOutputEncoder : DescribeMatchmakingConfigurationsOutput -> JE.Value
describeMatchmakingConfigurationsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (matchmakingConfigurationEncoder))
            ("Configurations", data.configurations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeMatchmakingInputEncoder : DescribeMatchmakingInput -> JE.Value
describeMatchmakingInputEncoder data =
    []
        
        
        |> (::) ("TicketIds", data.ticketIds |> (JE.list (JE.string)))
        
        
        |> JE.object






describeMatchmakingOutputEncoder : DescribeMatchmakingOutput -> JE.Value
describeMatchmakingOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (matchmakingTicketEncoder))
            ("TicketList", data.ticketList)
        
        
        |> JE.object






describeMatchmakingRuleSetsInputEncoder : DescribeMatchmakingRuleSetsInput -> JE.Value
describeMatchmakingRuleSetsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Names", data.names)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeMatchmakingRuleSetsOutputEncoder : DescribeMatchmakingRuleSetsOutput -> JE.Value
describeMatchmakingRuleSetsOutputEncoder data =
    []
        
        
        |> (::) ("RuleSets", data.ruleSets |> (JE.list (matchmakingRuleSetEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describePlayerSessionsInputEncoder : DescribePlayerSessionsInput -> JE.Value
describePlayerSessionsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionId", data.gameSessionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerId", data.playerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerSessionId", data.playerSessionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerSessionStatusFilter", data.playerSessionStatusFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describePlayerSessionsOutputEncoder : DescribePlayerSessionsOutput -> JE.Value
describePlayerSessionsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (playerSessionEncoder))
            ("PlayerSessions", data.playerSessions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeRuntimeConfigurationInputEncoder : DescribeRuntimeConfigurationInput -> JE.Value
describeRuntimeConfigurationInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        |> JE.object






describeRuntimeConfigurationOutputEncoder : DescribeRuntimeConfigurationOutput -> JE.Value
describeRuntimeConfigurationOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (runtimeConfigurationEncoder)
            ("RuntimeConfiguration", data.runtimeConfiguration)
        
        
        |> JE.object






describeScalingPoliciesInputEncoder : DescribeScalingPoliciesInput -> JE.Value
describeScalingPoliciesInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scalingStatusTypeToString >> JE.string)
            ("StatusFilter", data.statusFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeScalingPoliciesOutputEncoder : DescribeScalingPoliciesOutput -> JE.Value
describeScalingPoliciesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (scalingPolicyEncoder))
            ("ScalingPolicies", data.scalingPolicies)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






describeScriptInputEncoder : DescribeScriptInput -> JE.Value
describeScriptInputEncoder data =
    []
        
        
        |> (::) ("ScriptId", data.scriptId |> (JE.string))
        
        
        |> JE.object






describeScriptOutputEncoder : DescribeScriptOutput -> JE.Value
describeScriptOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (scriptEncoder)
            ("Script", data.script)
        
        
        |> JE.object






describeVpcPeeringAuthorizationsInputEncoder : DescribeVpcPeeringAuthorizationsInput -> JE.Value
describeVpcPeeringAuthorizationsInputEncoder data =
    []
        
        |> JE.object






describeVpcPeeringAuthorizationsOutputEncoder : DescribeVpcPeeringAuthorizationsOutput -> JE.Value
describeVpcPeeringAuthorizationsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (vpcPeeringAuthorizationEncoder))
            ("VpcPeeringAuthorizations", data.vpcPeeringAuthorizations)
        
        
        |> JE.object






describeVpcPeeringConnectionsInputEncoder : DescribeVpcPeeringConnectionsInput -> JE.Value
describeVpcPeeringConnectionsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        |> JE.object






describeVpcPeeringConnectionsOutputEncoder : DescribeVpcPeeringConnectionsOutput -> JE.Value
describeVpcPeeringConnectionsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (vpcPeeringConnectionEncoder))
            ("VpcPeeringConnections", data.vpcPeeringConnections)
        
        
        |> JE.object






desiredPlayerSessionEncoder : DesiredPlayerSession -> JE.Value
desiredPlayerSessionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerId", data.playerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerData", data.playerData)
        
        
        |> JE.object






eC2InstanceCountsEncoder : EC2InstanceCounts -> JE.Value
eC2InstanceCountsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("DESIRED", data.dESIRED)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MINIMUM", data.mINIMUM)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MAXIMUM", data.mAXIMUM)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PENDING", data.pENDING)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ACTIVE", data.aCTIVE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("IDLE", data.iDLE)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TERMINATING", data.tERMINATING)
        
        
        |> JE.object






eC2InstanceLimitEncoder : EC2InstanceLimit -> JE.Value
eC2InstanceLimitEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (eC2InstanceTypeToString >> JE.string)
            ("EC2InstanceType", data.eC2InstanceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("CurrentInstances", data.currentInstances)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("InstanceLimit", data.instanceLimit)
        
        
        |> JE.object










eventEncoder : Event -> JE.Value
eventEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("EventId", data.eventId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceId", data.resourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eventCodeToString >> JE.string)
            ("EventCode", data.eventCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("EventTime", data.eventTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PreSignedLogUrl", data.preSignedLogUrl)
        
        
        |> JE.object














fleetAttributesEncoder : FleetAttributes -> JE.Value
fleetAttributesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetArn", data.fleetArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fleetTypeToString >> JE.string)
            ("FleetType", data.fleetType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eC2InstanceTypeToString >> JE.string)
            ("InstanceType", data.instanceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("TerminationTime", data.terminationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fleetStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BuildId", data.buildId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ScriptId", data.scriptId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ServerLaunchPath", data.serverLaunchPath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ServerLaunchParameters", data.serverLaunchParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("LogPaths", data.logPaths)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (protectionPolicyToString >> JE.string)
            ("NewGameSessionProtectionPolicy", data.newGameSessionProtectionPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (operatingSystemToString >> JE.string)
            ("OperatingSystem", data.operatingSystem)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceCreationLimitPolicyEncoder)
            ("ResourceCreationLimitPolicy", data.resourceCreationLimitPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("MetricGroups", data.metricGroups)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fleetActionToString >> JE.string))
            ("StoppedActions", data.stoppedActions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceRoleArn", data.instanceRoleArn)
        
        
        |> JE.object






fleetCapacityEncoder : FleetCapacity -> JE.Value
fleetCapacityEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eC2InstanceTypeToString >> JE.string)
            ("InstanceType", data.instanceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eC2InstanceCountsEncoder)
            ("InstanceCounts", data.instanceCounts)
        
        
        |> JE.object














fleetUtilizationEncoder : FleetUtilization -> JE.Value
fleetUtilizationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ActiveServerProcessCount", data.activeServerProcessCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ActiveGameSessionCount", data.activeGameSessionCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("CurrentPlayerSessionCount", data.currentPlayerSessionCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaximumPlayerSessionCount", data.maximumPlayerSessionCount)
        
        
        |> JE.object






gamePropertyEncoder : GameProperty -> JE.Value
gamePropertyEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        |> JE.object






gameSessionEncoder : GameSession -> JE.Value
gameSessionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionId", data.gameSessionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("TerminationTime", data.terminationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("CurrentPlayerSessionCount", data.currentPlayerSessionCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaximumPlayerSessionCount", data.maximumPlayerSessionCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (gameSessionStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (gameSessionStatusReasonToString >> JE.string)
            ("StatusReason", data.statusReason)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gamePropertyEncoder))
            ("GameProperties", data.gameProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IpAddress", data.ipAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Port", data.port_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (playerSessionCreationPolicyToString >> JE.string)
            ("PlayerSessionCreationPolicy", data.playerSessionCreationPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CreatorId", data.creatorId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionData", data.gameSessionData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MatchmakerData", data.matchmakerData)
        
        
        |> JE.object






gameSessionConnectionInfoEncoder : GameSessionConnectionInfo -> JE.Value
gameSessionConnectionInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionArn", data.gameSessionArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IpAddress", data.ipAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Port", data.port_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (matchedPlayerSessionEncoder))
            ("MatchedPlayerSessions", data.matchedPlayerSessions)
        
        
        |> JE.object






gameSessionDetailEncoder : GameSessionDetail -> JE.Value
gameSessionDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (gameSessionEncoder)
            ("GameSession", data.gameSession)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (protectionPolicyToString >> JE.string)
            ("ProtectionPolicy", data.protectionPolicy)
        
        
        |> JE.object






gameSessionPlacementEncoder : GameSessionPlacement -> JE.Value
gameSessionPlacementEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlacementId", data.placementId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionQueueName", data.gameSessionQueueName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (gameSessionPlacementStateToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gamePropertyEncoder))
            ("GameProperties", data.gameProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaximumPlayerSessionCount", data.maximumPlayerSessionCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionName", data.gameSessionName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionId", data.gameSessionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionArn", data.gameSessionArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionRegion", data.gameSessionRegion)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (playerLatencyEncoder))
            ("PlayerLatencies", data.playerLatencies)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("EndTime", data.endTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IpAddress", data.ipAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Port", data.port_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (placedPlayerSessionEncoder))
            ("PlacedPlayerSessions", data.placedPlayerSessions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionData", data.gameSessionData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("MatchmakerData", data.matchmakerData)
        
        
        |> JE.object










gameSessionQueueEncoder : GameSessionQueue -> JE.Value
gameSessionQueueEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionQueueArn", data.gameSessionQueueArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TimeoutInSeconds", data.timeoutInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (playerLatencyPolicyEncoder))
            ("PlayerLatencyPolicies", data.playerLatencyPolicies)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gameSessionQueueDestinationEncoder))
            ("Destinations", data.destinations)
        
        
        |> JE.object






gameSessionQueueDestinationEncoder : GameSessionQueueDestination -> JE.Value
gameSessionQueueDestinationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DestinationArn", data.destinationArn)
        
        
        |> JE.object














getGameSessionLogUrlInputEncoder : GetGameSessionLogUrlInput -> JE.Value
getGameSessionLogUrlInputEncoder data =
    []
        
        
        |> (::) ("GameSessionId", data.gameSessionId |> (JE.string))
        
        
        |> JE.object






getGameSessionLogUrlOutputEncoder : GetGameSessionLogUrlOutput -> JE.Value
getGameSessionLogUrlOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PreSignedUrl", data.preSignedUrl)
        
        
        |> JE.object






getInstanceAccessInputEncoder : GetInstanceAccessInput -> JE.Value
getInstanceAccessInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> (::) ("InstanceId", data.instanceId |> (JE.string))
        
        
        |> JE.object






getInstanceAccessOutputEncoder : GetInstanceAccessOutput -> JE.Value
getInstanceAccessOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceAccessEncoder)
            ("InstanceAccess", data.instanceAccess)
        
        
        |> JE.object






instanceEncoder : Instance -> JE.Value
instanceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IpAddress", data.ipAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (operatingSystemToString >> JE.string)
            ("OperatingSystem", data.operatingSystem)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (eC2InstanceTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        |> JE.object






instanceAccessEncoder : InstanceAccess -> JE.Value
instanceAccessEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("InstanceId", data.instanceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IpAddress", data.ipAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (operatingSystemToString >> JE.string)
            ("OperatingSystem", data.operatingSystem)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (instanceCredentialsEncoder)
            ("Credentials", data.credentials)
        
        
        |> JE.object






instanceCredentialsEncoder : InstanceCredentials -> JE.Value
instanceCredentialsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserName", data.userName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Secret", data.secret)
        
        
        |> JE.object










ipPermissionEncoder : IpPermission -> JE.Value
ipPermissionEncoder data =
    []
        
        
        |> (::) ("FromPort", data.fromPort |> (JE.int))
        
        
        
        |> (::) ("ToPort", data.toPort |> (JE.int))
        
        
        
        |> (::) ("IpRange", data.ipRange |> (JE.string))
        
        
        
        |> (::) ("Protocol", data.protocol |> (ipProtocolToString >> JE.string))
        
        
        |> JE.object










listAliasesInputEncoder : ListAliasesInput -> JE.Value
listAliasesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (routingStrategyTypeToString >> JE.string)
            ("RoutingStrategyType", data.routingStrategyType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listAliasesOutputEncoder : ListAliasesOutput -> JE.Value
listAliasesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (aliasEncoder))
            ("Aliases", data.aliases)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listBuildsInputEncoder : ListBuildsInput -> JE.Value
listBuildsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (buildStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listBuildsOutputEncoder : ListBuildsOutput -> JE.Value
listBuildsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (buildEncoder))
            ("Builds", data.builds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listFleetsInputEncoder : ListFleetsInput -> JE.Value
listFleetsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BuildId", data.buildId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ScriptId", data.scriptId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listFleetsOutputEncoder : ListFleetsOutput -> JE.Value
listFleetsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("FleetIds", data.fleetIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listScriptsInputEncoder : ListScriptsInput -> JE.Value
listScriptsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






listScriptsOutputEncoder : ListScriptsOutput -> JE.Value
listScriptsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (scriptEncoder))
            ("Scripts", data.scripts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






matchedPlayerSessionEncoder : MatchedPlayerSession -> JE.Value
matchedPlayerSessionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerId", data.playerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerSessionId", data.playerSessionId)
        
        
        |> JE.object






matchmakingConfigurationEncoder : MatchmakingConfiguration -> JE.Value
matchmakingConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("GameSessionQueueArns", data.gameSessionQueueArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RequestTimeoutSeconds", data.requestTimeoutSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AcceptanceTimeoutSeconds", data.acceptanceTimeoutSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AcceptanceRequired", data.acceptanceRequired)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RuleSetName", data.ruleSetName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NotificationTarget", data.notificationTarget)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AdditionalPlayerCount", data.additionalPlayerCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomEventData", data.customEventData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gamePropertyEncoder))
            ("GameProperties", data.gameProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionData", data.gameSessionData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (backfillModeToString >> JE.string)
            ("BackfillMode", data.backfillMode)
        
        
        |> JE.object










matchmakingRuleSetEncoder : MatchmakingRuleSet -> JE.Value
matchmakingRuleSetEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RuleSetName", data.ruleSetName)
        
        
        
        |> (::) ("RuleSetBody", data.ruleSetBody |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        |> JE.object






matchmakingTicketEncoder : MatchmakingTicket -> JE.Value
matchmakingTicketEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TicketId", data.ticketId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConfigurationName", data.configurationName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (matchmakingConfigurationStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusReason", data.statusReason)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("StartTime", data.startTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("EndTime", data.endTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (playerEncoder))
            ("Players", data.players)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (gameSessionConnectionInfoEncoder)
            ("GameSessionConnectionInfo", data.gameSessionConnectionInfo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("EstimatedWaitTime", data.estimatedWaitTime)
        
        
        |> JE.object














placedPlayerSessionEncoder : PlacedPlayerSession -> JE.Value
placedPlayerSessionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerId", data.playerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerSessionId", data.playerSessionId)
        
        
        |> JE.object






playerEncoder : Player -> JE.Value
playerEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerId", data.playerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (attributeValueEncoder))
            ("PlayerAttributes", data.playerAttributes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Team", data.team)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.int))
            ("LatencyInMs", data.latencyInMs)
        
        
        |> JE.object






playerLatencyEncoder : PlayerLatency -> JE.Value
playerLatencyEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerId", data.playerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RegionIdentifier", data.regionIdentifier)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("LatencyInMilliseconds", data.latencyInMilliseconds)
        
        
        |> JE.object






playerLatencyPolicyEncoder : PlayerLatencyPolicy -> JE.Value
playerLatencyPolicyEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaximumIndividualPlayerLatencyMilliseconds", data.maximumIndividualPlayerLatencyMilliseconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PolicyDurationSeconds", data.policyDurationSeconds)
        
        
        |> JE.object






playerSessionEncoder : PlayerSession -> JE.Value
playerSessionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerSessionId", data.playerSessionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerId", data.playerId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionId", data.gameSessionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("TerminationTime", data.terminationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (playerSessionStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IpAddress", data.ipAddress)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Port", data.port_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlayerData", data.playerData)
        
        
        |> JE.object






















putScalingPolicyInputEncoder : PutScalingPolicyInput -> JE.Value
putScalingPolicyInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ScalingAdjustment", data.scalingAdjustment)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scalingAdjustmentTypeToString >> JE.string)
            ("ScalingAdjustmentType", data.scalingAdjustmentType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Threshold", data.threshold)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (comparisonOperatorTypeToString >> JE.string)
            ("ComparisonOperator", data.comparisonOperator)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("EvaluationPeriods", data.evaluationPeriods)
        
        
        
        |> (::) ("MetricName", data.metricName |> (metricNameToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (policyTypeToString >> JE.string)
            ("PolicyType", data.policyType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (targetConfigurationEncoder)
            ("TargetConfiguration", data.targetConfiguration)
        
        
        |> JE.object






putScalingPolicyOutputEncoder : PutScalingPolicyOutput -> JE.Value
putScalingPolicyOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






requestUploadCredentialsInputEncoder : RequestUploadCredentialsInput -> JE.Value
requestUploadCredentialsInputEncoder data =
    []
        
        
        |> (::) ("BuildId", data.buildId |> (JE.string))
        
        
        |> JE.object






requestUploadCredentialsOutputEncoder : RequestUploadCredentialsOutput -> JE.Value
requestUploadCredentialsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (awsCredentialsEncoder)
            ("UploadCredentials", data.uploadCredentials)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3LocationEncoder)
            ("StorageLocation", data.storageLocation)
        
        
        |> JE.object






resolveAliasInputEncoder : ResolveAliasInput -> JE.Value
resolveAliasInputEncoder data =
    []
        
        
        |> (::) ("AliasId", data.aliasId |> (JE.string))
        
        
        |> JE.object






resolveAliasOutputEncoder : ResolveAliasOutput -> JE.Value
resolveAliasOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        |> JE.object






resourceCreationLimitPolicyEncoder : ResourceCreationLimitPolicy -> JE.Value
resourceCreationLimitPolicyEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("NewGameSessionsPerCreator", data.newGameSessionsPerCreator)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PolicyPeriodInMinutes", data.policyPeriodInMinutes)
        
        
        |> JE.object






routingStrategyEncoder : RoutingStrategy -> JE.Value
routingStrategyEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (routingStrategyTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        |> JE.object










runtimeConfigurationEncoder : RuntimeConfiguration -> JE.Value
runtimeConfigurationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serverProcessEncoder))
            ("ServerProcesses", data.serverProcesses)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxConcurrentGameSessionActivations", data.maxConcurrentGameSessionActivations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("GameSessionActivationTimeoutSeconds", data.gameSessionActivationTimeoutSeconds)
        
        
        |> JE.object






s3LocationEncoder : S3Location -> JE.Value
s3LocationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Bucket", data.bucket)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RoleArn", data.roleArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ObjectVersion", data.objectVersion)
        
        
        |> JE.object










scalingPolicyEncoder : ScalingPolicy -> JE.Value
scalingPolicyEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scalingStatusTypeToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ScalingAdjustment", data.scalingAdjustment)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (scalingAdjustmentTypeToString >> JE.string)
            ("ScalingAdjustmentType", data.scalingAdjustmentType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (comparisonOperatorTypeToString >> JE.string)
            ("ComparisonOperator", data.comparisonOperator)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.float)
            ("Threshold", data.threshold)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("EvaluationPeriods", data.evaluationPeriods)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (metricNameToString >> JE.string)
            ("MetricName", data.metricName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (policyTypeToString >> JE.string)
            ("PolicyType", data.policyType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (targetConfigurationEncoder)
            ("TargetConfiguration", data.targetConfiguration)
        
        
        |> JE.object










scriptEncoder : Script -> JE.Value
scriptEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ScriptId", data.scriptId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("SizeOnDisk", data.sizeOnDisk)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3LocationEncoder)
            ("StorageLocation", data.storageLocation)
        
        
        |> JE.object






searchGameSessionsInputEncoder : SearchGameSessionsInput -> JE.Value
searchGameSessionsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AliasId", data.aliasId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FilterExpression", data.filterExpression)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SortExpression", data.sortExpression)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("Limit", data.limit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






searchGameSessionsOutputEncoder : SearchGameSessionsOutput -> JE.Value
searchGameSessionsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gameSessionEncoder))
            ("GameSessions", data.gameSessions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






serverProcessEncoder : ServerProcess -> JE.Value
serverProcessEncoder data =
    []
        
        
        |> (::) ("LaunchPath", data.launchPath |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Parameters", data.parameters)
        
        
        
        |> (::) ("ConcurrentExecutions", data.concurrentExecutions |> (JE.int))
        
        
        |> JE.object






startFleetActionsInputEncoder : StartFleetActionsInput -> JE.Value
startFleetActionsInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> (::) ("Actions", data.actions |> (JE.list (fleetActionToString >> JE.string)))
        
        
        |> JE.object






startFleetActionsOutputEncoder : StartFleetActionsOutput -> JE.Value
startFleetActionsOutputEncoder data =
    []
        
        |> JE.object






startGameSessionPlacementInputEncoder : StartGameSessionPlacementInput -> JE.Value
startGameSessionPlacementInputEncoder data =
    []
        
        
        |> (::) ("PlacementId", data.placementId |> (JE.string))
        
        
        
        |> (::) ("GameSessionQueueName", data.gameSessionQueueName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gamePropertyEncoder))
            ("GameProperties", data.gameProperties)
        
        
        
        |> (::) ("MaximumPlayerSessionCount", data.maximumPlayerSessionCount |> (JE.int))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionName", data.gameSessionName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (playerLatencyEncoder))
            ("PlayerLatencies", data.playerLatencies)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (desiredPlayerSessionEncoder))
            ("DesiredPlayerSessions", data.desiredPlayerSessions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionData", data.gameSessionData)
        
        
        |> JE.object






startGameSessionPlacementOutputEncoder : StartGameSessionPlacementOutput -> JE.Value
startGameSessionPlacementOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (gameSessionPlacementEncoder)
            ("GameSessionPlacement", data.gameSessionPlacement)
        
        
        |> JE.object






startMatchBackfillInputEncoder : StartMatchBackfillInput -> JE.Value
startMatchBackfillInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TicketId", data.ticketId)
        
        
        
        |> (::) ("ConfigurationName", data.configurationName |> (JE.string))
        
        
        
        |> (::) ("GameSessionArn", data.gameSessionArn |> (JE.string))
        
        
        
        |> (::) ("Players", data.players |> (JE.list (playerEncoder)))
        
        
        |> JE.object






startMatchBackfillOutputEncoder : StartMatchBackfillOutput -> JE.Value
startMatchBackfillOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (matchmakingTicketEncoder)
            ("MatchmakingTicket", data.matchmakingTicket)
        
        
        |> JE.object






startMatchmakingInputEncoder : StartMatchmakingInput -> JE.Value
startMatchmakingInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TicketId", data.ticketId)
        
        
        
        |> (::) ("ConfigurationName", data.configurationName |> (JE.string))
        
        
        
        |> (::) ("Players", data.players |> (JE.list (playerEncoder)))
        
        
        |> JE.object






startMatchmakingOutputEncoder : StartMatchmakingOutput -> JE.Value
startMatchmakingOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (matchmakingTicketEncoder)
            ("MatchmakingTicket", data.matchmakingTicket)
        
        
        |> JE.object






stopFleetActionsInputEncoder : StopFleetActionsInput -> JE.Value
stopFleetActionsInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> (::) ("Actions", data.actions |> (JE.list (fleetActionToString >> JE.string)))
        
        
        |> JE.object






stopFleetActionsOutputEncoder : StopFleetActionsOutput -> JE.Value
stopFleetActionsOutputEncoder data =
    []
        
        |> JE.object






stopGameSessionPlacementInputEncoder : StopGameSessionPlacementInput -> JE.Value
stopGameSessionPlacementInputEncoder data =
    []
        
        
        |> (::) ("PlacementId", data.placementId |> (JE.string))
        
        
        |> JE.object






stopGameSessionPlacementOutputEncoder : StopGameSessionPlacementOutput -> JE.Value
stopGameSessionPlacementOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (gameSessionPlacementEncoder)
            ("GameSessionPlacement", data.gameSessionPlacement)
        
        
        |> JE.object






stopMatchmakingInputEncoder : StopMatchmakingInput -> JE.Value
stopMatchmakingInputEncoder data =
    []
        
        
        |> (::) ("TicketId", data.ticketId |> (JE.string))
        
        
        |> JE.object






stopMatchmakingOutputEncoder : StopMatchmakingOutput -> JE.Value
stopMatchmakingOutputEncoder data =
    []
        
        |> JE.object






targetConfigurationEncoder : TargetConfiguration -> JE.Value
targetConfigurationEncoder data =
    []
        
        
        |> (::) ("TargetValue", data.targetValue |> (JE.float))
        
        
        |> JE.object






updateAliasInputEncoder : UpdateAliasInput -> JE.Value
updateAliasInputEncoder data =
    []
        
        
        |> (::) ("AliasId", data.aliasId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (routingStrategyEncoder)
            ("RoutingStrategy", data.routingStrategy)
        
        
        |> JE.object






updateAliasOutputEncoder : UpdateAliasOutput -> JE.Value
updateAliasOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (aliasEncoder)
            ("Alias", data.alias)
        
        
        |> JE.object






updateBuildInputEncoder : UpdateBuildInput -> JE.Value
updateBuildInputEncoder data =
    []
        
        
        |> (::) ("BuildId", data.buildId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Version", data.version)
        
        
        |> JE.object






updateBuildOutputEncoder : UpdateBuildOutput -> JE.Value
updateBuildOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (buildEncoder)
            ("Build", data.build)
        
        
        |> JE.object






updateFleetAttributesInputEncoder : UpdateFleetAttributesInput -> JE.Value
updateFleetAttributesInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (protectionPolicyToString >> JE.string)
            ("NewGameSessionProtectionPolicy", data.newGameSessionProtectionPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceCreationLimitPolicyEncoder)
            ("ResourceCreationLimitPolicy", data.resourceCreationLimitPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("MetricGroups", data.metricGroups)
        
        
        |> JE.object






updateFleetAttributesOutputEncoder : UpdateFleetAttributesOutput -> JE.Value
updateFleetAttributesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        |> JE.object






updateFleetCapacityInputEncoder : UpdateFleetCapacityInput -> JE.Value
updateFleetCapacityInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("DesiredInstances", data.desiredInstances)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MinSize", data.minSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxSize", data.maxSize)
        
        
        |> JE.object






updateFleetCapacityOutputEncoder : UpdateFleetCapacityOutput -> JE.Value
updateFleetCapacityOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        |> JE.object






updateFleetPortSettingsInputEncoder : UpdateFleetPortSettingsInput -> JE.Value
updateFleetPortSettingsInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ipPermissionEncoder))
            ("InboundPermissionAuthorizations", data.inboundPermissionAuthorizations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (ipPermissionEncoder))
            ("InboundPermissionRevocations", data.inboundPermissionRevocations)
        
        
        |> JE.object






updateFleetPortSettingsOutputEncoder : UpdateFleetPortSettingsOutput -> JE.Value
updateFleetPortSettingsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        |> JE.object






updateGameSessionInputEncoder : UpdateGameSessionInput -> JE.Value
updateGameSessionInputEncoder data =
    []
        
        
        |> (::) ("GameSessionId", data.gameSessionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaximumPlayerSessionCount", data.maximumPlayerSessionCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (playerSessionCreationPolicyToString >> JE.string)
            ("PlayerSessionCreationPolicy", data.playerSessionCreationPolicy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (protectionPolicyToString >> JE.string)
            ("ProtectionPolicy", data.protectionPolicy)
        
        
        |> JE.object






updateGameSessionOutputEncoder : UpdateGameSessionOutput -> JE.Value
updateGameSessionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (gameSessionEncoder)
            ("GameSession", data.gameSession)
        
        
        |> JE.object






updateGameSessionQueueInputEncoder : UpdateGameSessionQueueInput -> JE.Value
updateGameSessionQueueInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TimeoutInSeconds", data.timeoutInSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (playerLatencyPolicyEncoder))
            ("PlayerLatencyPolicies", data.playerLatencyPolicies)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gameSessionQueueDestinationEncoder))
            ("Destinations", data.destinations)
        
        
        |> JE.object






updateGameSessionQueueOutputEncoder : UpdateGameSessionQueueOutput -> JE.Value
updateGameSessionQueueOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (gameSessionQueueEncoder)
            ("GameSessionQueue", data.gameSessionQueue)
        
        
        |> JE.object






updateMatchmakingConfigurationInputEncoder : UpdateMatchmakingConfigurationInput -> JE.Value
updateMatchmakingConfigurationInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("GameSessionQueueArns", data.gameSessionQueueArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("RequestTimeoutSeconds", data.requestTimeoutSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AcceptanceTimeoutSeconds", data.acceptanceTimeoutSeconds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("AcceptanceRequired", data.acceptanceRequired)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RuleSetName", data.ruleSetName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NotificationTarget", data.notificationTarget)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("AdditionalPlayerCount", data.additionalPlayerCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CustomEventData", data.customEventData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (gamePropertyEncoder))
            ("GameProperties", data.gameProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameSessionData", data.gameSessionData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (backfillModeToString >> JE.string)
            ("BackfillMode", data.backfillMode)
        
        
        |> JE.object






updateMatchmakingConfigurationOutputEncoder : UpdateMatchmakingConfigurationOutput -> JE.Value
updateMatchmakingConfigurationOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (matchmakingConfigurationEncoder)
            ("Configuration", data.configuration)
        
        
        |> JE.object






updateRuntimeConfigurationInputEncoder : UpdateRuntimeConfigurationInput -> JE.Value
updateRuntimeConfigurationInputEncoder data =
    []
        
        
        |> (::) ("FleetId", data.fleetId |> (JE.string))
        
        
        
        |> (::) ("RuntimeConfiguration", data.runtimeConfiguration |> (runtimeConfigurationEncoder))
        
        
        |> JE.object






updateRuntimeConfigurationOutputEncoder : UpdateRuntimeConfigurationOutput -> JE.Value
updateRuntimeConfigurationOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (runtimeConfigurationEncoder)
            ("RuntimeConfiguration", data.runtimeConfiguration)
        
        
        |> JE.object






updateScriptInputEncoder : UpdateScriptInput -> JE.Value
updateScriptInputEncoder data =
    []
        
        
        |> (::) ("ScriptId", data.scriptId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Version", data.version)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (s3LocationEncoder)
            ("StorageLocation", data.storageLocation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ZipFile", data.zipFile)
        
        
        |> JE.object






updateScriptOutputEncoder : UpdateScriptOutput -> JE.Value
updateScriptOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (scriptEncoder)
            ("Script", data.script)
        
        
        |> JE.object






validateMatchmakingRuleSetInputEncoder : ValidateMatchmakingRuleSetInput -> JE.Value
validateMatchmakingRuleSetInputEncoder data =
    []
        
        
        |> (::) ("RuleSetBody", data.ruleSetBody |> (JE.string))
        
        
        |> JE.object






validateMatchmakingRuleSetOutputEncoder : ValidateMatchmakingRuleSetOutput -> JE.Value
validateMatchmakingRuleSetOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Valid", data.valid)
        
        
        |> JE.object






vpcPeeringAuthorizationEncoder : VpcPeeringAuthorization -> JE.Value
vpcPeeringAuthorizationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameLiftAwsAccountId", data.gameLiftAwsAccountId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PeerVpcAwsAccountId", data.peerVpcAwsAccountId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PeerVpcId", data.peerVpcId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreationTime", data.creationTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("ExpirationTime", data.expirationTime)
        
        
        |> JE.object






vpcPeeringConnectionEncoder : VpcPeeringConnection -> JE.Value
vpcPeeringConnectionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("FleetId", data.fleetId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IpV4CidrBlock", data.ipV4CidrBlock)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("VpcPeeringConnectionId", data.vpcPeeringConnectionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (vpcPeeringConnectionStatusEncoder)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PeerVpcId", data.peerVpcId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("GameLiftVpcId", data.gameLiftVpcId)
        
        
        |> JE.object






vpcPeeringConnectionStatusEncoder : VpcPeeringConnectionStatus -> JE.Value
vpcPeeringConnectionStatusEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Code", data.code)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        |> JE.object





