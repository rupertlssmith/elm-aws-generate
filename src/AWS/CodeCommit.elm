module AWS.CodeCommit
    exposing
        ( service
        , batchDescribeMergeConflicts
        , BatchDescribeMergeConflictsOptions
        , batchGetRepositories
        , createBranch
        , createCommit
        , CreateCommitOptions
        , createPullRequest
        , CreatePullRequestOptions
        , createRepository
        , CreateRepositoryOptions
        , createUnreferencedMergeCommit
        , CreateUnreferencedMergeCommitOptions
        , deleteBranch
        , deleteCommentContent
        , deleteFile
        , DeleteFileOptions
        , deleteRepository
        , describeMergeConflicts
        , DescribeMergeConflictsOptions
        , describePullRequestEvents
        , DescribePullRequestEventsOptions
        , getBlob
        , getBranch
        , GetBranchOptions
        , getComment
        , getCommentsForComparedCommit
        , GetCommentsForComparedCommitOptions
        , getCommentsForPullRequest
        , GetCommentsForPullRequestOptions
        , getCommit
        , getDifferences
        , GetDifferencesOptions
        , getFile
        , GetFileOptions
        , getFolder
        , GetFolderOptions
        , getMergeCommit
        , GetMergeCommitOptions
        , getMergeConflicts
        , GetMergeConflictsOptions
        , getMergeOptions
        , GetMergeOptionsOptions
        , getPullRequest
        , getRepository
        , getRepositoryTriggers
        , listBranches
        , ListBranchesOptions
        , listPullRequests
        , ListPullRequestsOptions
        , listRepositories
        , ListRepositoriesOptions
        , listTagsForResource
        , ListTagsForResourceOptions
        , mergeBranchesByFastForward
        , MergeBranchesByFastForwardOptions
        , mergeBranchesBySquash
        , MergeBranchesBySquashOptions
        , mergeBranchesByThreeWay
        , MergeBranchesByThreeWayOptions
        , mergePullRequestByFastForward
        , MergePullRequestByFastForwardOptions
        , mergePullRequestBySquash
        , MergePullRequestBySquashOptions
        , mergePullRequestByThreeWay
        , MergePullRequestByThreeWayOptions
        , postCommentForComparedCommit
        , PostCommentForComparedCommitOptions
        , postCommentForPullRequest
        , PostCommentForPullRequestOptions
        , postCommentReply
        , PostCommentReplyOptions
        , putFile
        , PutFileOptions
        , putRepositoryTriggers
        , tagResource
        , testRepositoryTriggers
        , untagResource
        , updateComment
        , updateDefaultBranch
        , updatePullRequestDescription
        , updatePullRequestStatus
        , updatePullRequestTitle
        , updateRepositoryDescription
        , UpdateRepositoryDescriptionOptions
        , updateRepositoryName
        , BatchDescribeMergeConflictsError
        , BatchDescribeMergeConflictsOutput
        , BatchGetRepositoriesOutput
        , BlobMetadata
        , BranchInfo
        , ChangeTypeEnum(..)
        , Comment
        , CommentsForComparedCommit
        , CommentsForPullRequest
        , Commit
        , Conflict
        , ConflictDetailLevelTypeEnum(..)
        , ConflictMetadata
        , ConflictResolution
        , ConflictResolutionStrategyTypeEnum(..)
        , CreateCommitOutput
        , CreatePullRequestOutput
        , CreateRepositoryOutput
        , CreateUnreferencedMergeCommitOutput
        , DeleteBranchOutput
        , DeleteCommentContentOutput
        , DeleteFileEntry
        , DeleteFileOutput
        , DeleteRepositoryOutput
        , DescribeMergeConflictsOutput
        , DescribePullRequestEventsOutput
        , Difference
        , File
        , FileMetadata
        , FileModeTypeEnum(..)
        , FileModes
        , FileSizes
        , Folder
        , GetBlobOutput
        , GetBranchOutput
        , GetCommentOutput
        , GetCommentsForComparedCommitOutput
        , GetCommentsForPullRequestOutput
        , GetCommitOutput
        , GetDifferencesOutput
        , GetFileOutput
        , GetFolderOutput
        , GetMergeCommitOutput
        , GetMergeConflictsOutput
        , GetMergeOptionsOutput
        , GetPullRequestOutput
        , GetRepositoryOutput
        , GetRepositoryTriggersOutput
        , IsBinaryFile
        , ListBranchesOutput
        , ListPullRequestsOutput
        , ListRepositoriesOutput
        , ListTagsForResourceOutput
        , Location
        , MergeBranchesByFastForwardOutput
        , MergeBranchesBySquashOutput
        , MergeBranchesByThreeWayOutput
        , MergeHunk
        , MergeHunkDetail
        , MergeMetadata
        , MergeOperations
        , MergeOptionTypeEnum(..)
        , MergePullRequestByFastForwardOutput
        , MergePullRequestBySquashOutput
        , MergePullRequestByThreeWayOutput
        , ObjectTypeEnum(..)
        , ObjectTypes
        , OrderEnum(..)
        , PostCommentForComparedCommitOutput
        , PostCommentForPullRequestOutput
        , PostCommentReplyOutput
        , PullRequest
        , PullRequestCreatedEventMetadata
        , PullRequestEvent
        , PullRequestEventType(..)
        , PullRequestMergedStateChangedEventMetadata
        , PullRequestSourceReferenceUpdatedEventMetadata
        , PullRequestStatusChangedEventMetadata
        , PullRequestStatusEnum(..)
        , PullRequestTarget
        , PutFileEntry
        , PutFileOutput
        , PutRepositoryTriggersOutput
        , RelativeFileVersionEnum(..)
        , ReplaceContentEntry
        , ReplacementTypeEnum(..)
        , RepositoryMetadata
        , RepositoryNameIdPair
        , RepositoryTrigger
        , RepositoryTriggerEventEnum(..)
        , RepositoryTriggerExecutionFailure
        , SetFileModeEntry
        , SortByEnum(..)
        , SourceFileSpecifier
        , SubModule
        , SymbolicLink
        , Target
        , TestRepositoryTriggersOutput
        , UpdateCommentOutput
        , UpdatePullRequestDescriptionOutput
        , UpdatePullRequestStatusOutput
        , UpdatePullRequestTitleOutput
        , UserInfo
        )

{-| <fullname>AWS CodeCommit</fullname> <p>This is the <i>AWS CodeCommit API Reference</i>. This reference provides descriptions of the operations and data types for AWS CodeCommit API along with usage examples.</p> <p>You can use the AWS CodeCommit API to work with the following objects:</p> <p>Repositories, by calling the following:</p> <ul> <li> <p> <a>BatchGetRepositories</a>, which returns information about one or more repositories associated with your AWS account.</p> </li> <li> <p> <a>CreateRepository</a>, which creates an AWS CodeCommit repository.</p> </li> <li> <p> <a>DeleteRepository</a>, which deletes an AWS CodeCommit repository.</p> </li> <li> <p> <a>GetRepository</a>, which returns information about a specified repository.</p> </li> <li> <p> <a>ListRepositories</a>, which lists all AWS CodeCommit repositories associated with your AWS account.</p> </li> <li> <p> <a>UpdateRepositoryDescription</a>, which sets or updates the description of the repository.</p> </li> <li> <p> <a>UpdateRepositoryName</a>, which changes the name of the repository. If you change the name of a repository, no other users of that repository will be able to access it until you send them the new HTTPS or SSH URL to use.</p> </li> </ul> <p>Branches, by calling the following:</p> <ul> <li> <p> <a>CreateBranch</a>, which creates a new branch in a specified repository.</p> </li> <li> <p> <a>DeleteBranch</a>, which deletes the specified branch in a repository unless it is the default branch.</p> </li> <li> <p> <a>GetBranch</a>, which returns information about a specified branch.</p> </li> <li> <p> <a>ListBranches</a>, which lists all branches for a specified repository.</p> </li> <li> <p> <a>UpdateDefaultBranch</a>, which changes the default branch for a repository.</p> </li> </ul> <p>Files, by calling the following:</p> <ul> <li> <p> <a>DeleteFile</a>, which deletes the content of a specified file from a specified branch.</p> </li> <li> <p> <a>GetBlob</a>, which returns the base-64 encoded content of an individual Git blob object within a repository.</p> </li> <li> <p> <a>GetFile</a>, which returns the base-64 encoded content of a specified file.</p> </li> <li> <p> <a>GetFolder</a>, which returns the contents of a specified folder or directory.</p> </li> <li> <p> <a>PutFile</a>, which adds or modifies a single file in a specified repository and branch.</p> </li> </ul> <p>Commits, by calling the following:</p> <ul> <li> <p> <a>CreateCommit</a>, which creates a commit for changes to a repository.</p> </li> <li> <p> <a>GetCommit</a>, which returns information about a commit, including commit messages and author and committer information.</p> </li> <li> <p> <a>GetDifferences</a>, which returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID or other fully qualified reference).</p> </li> </ul> <p>Merges, by calling the following:</p> <ul> <li> <p> <a>BatchDescribeMergeConflicts</a>, which returns information about conflicts in a merge between commits in a repository.</p> </li> <li> <p> <a>CreateUnreferencedMergeCommit</a>, which creates an unreferenced commit between two branches or commits for the purpose of comparing them and identifying any potential conflicts.</p> </li> <li> <p> <a>DescribeMergeConflicts</a>, which returns information about merge conflicts between the base, source, and destination versions of a file in a potential merge.</p> </li> <li> <p> <a>GetMergeCommit</a>, which returns information about the merge between a source and destination commit. </p> </li> <li> <p> <a>GetMergeConflicts</a>, which returns information about merge conflicts between the source and destination branch in a pull request.</p> </li> <li> <p> <a>GetMergeOptions</a>, which returns information about the available merge options between two branches or commit specifiers.</p> </li> <li> <p> <a>MergeBranchesByFastForward</a>, which merges two branches using the fast-forward merge option.</p> </li> <li> <p> <a>MergeBranchesBySquash</a>, which merges two branches using the squash merge option.</p> </li> <li> <p> <a>MergeBranchesByThreeWay</a>, which merges two branches using the three-way merge option.</p> </li> </ul> <p>Pull requests, by calling the following:</p> <ul> <li> <p> <a>CreatePullRequest</a>, which creates a pull request in a specified repository.</p> </li> <li> <p> <a>DescribePullRequestEvents</a>, which returns information about one or more pull request events.</p> </li> <li> <p> <a>GetCommentsForPullRequest</a>, which returns information about comments on a specified pull request.</p> </li> <li> <p> <a>GetPullRequest</a>, which returns information about a specified pull request.</p> </li> <li> <p> <a>ListPullRequests</a>, which lists all pull requests for a repository.</p> </li> <li> <p> <a>MergePullRequestByFastForward</a>, which merges the source destination branch of a pull request into the specified destination branch for that pull request using the fast-forward merge option.</p> </li> <li> <p> <a>MergePullRequestBySquash</a>, which merges the source destination branch of a pull request into the specified destination branch for that pull request using the squash merge option.</p> </li> <li> <p> <a>MergePullRequestByThreeWay</a>. which merges the source destination branch of a pull request into the specified destination branch for that pull request using the three-way merge option.</p> </li> <li> <p> <a>PostCommentForPullRequest</a>, which posts a comment to a pull request at the specified line, file, or request.</p> </li> <li> <p> <a>UpdatePullRequestDescription</a>, which updates the description of a pull request.</p> </li> <li> <p> <a>UpdatePullRequestStatus</a>, which updates the status of a pull request.</p> </li> <li> <p> <a>UpdatePullRequestTitle</a>, which updates the title of a pull request.</p> </li> </ul> <p>Comments in a repository, by calling the following:</p> <ul> <li> <p> <a>DeleteCommentContent</a>, which deletes the content of a comment on a commit in a repository.</p> </li> <li> <p> <a>GetComment</a>, which returns information about a comment on a commit.</p> </li> <li> <p> <a>GetCommentsForComparedCommit</a>, which returns information about comments on the comparison between two commit specifiers in a repository.</p> </li> <li> <p> <a>PostCommentForComparedCommit</a>, which creates a comment on the comparison between two commit specifiers in a repository.</p> </li> <li> <p> <a>PostCommentReply</a>, which creates a reply to a comment.</p> </li> <li> <p> <a>UpdateComment</a>, which updates the content of a comment on a commit in a repository.</p> </li> </ul> <p>Tags used to tag resources in AWS CodeCommit (not Git tags), by calling the following:</p> <ul> <li> <p> <a>ListTagsForResource</a>, which gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeCommit.</p> </li> <li> <p> <a>TagResource</a>, which adds or updates tags for a resource in AWS CodeCommit.</p> </li> <li> <p> <a>UntagResource</a>, which removes tags for a resource in AWS CodeCommit.</p> </li> </ul> <p>Triggers, by calling the following:</p> <ul> <li> <p> <a>GetRepositoryTriggers</a>, which returns information about triggers configured for a repository.</p> </li> <li> <p> <a>PutRepositoryTriggers</a>, which replaces all triggers for a repository and can be used to create or delete triggers.</p> </li> <li> <p> <a>TestRepositoryTriggers</a>, which tests the functionality of a repository trigger by sending data to the trigger target.</p> </li> </ul> <p>For information about how to use AWS CodeCommit, see the <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html">AWS CodeCommit User Guide</a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [batchDescribeMergeConflicts](#batchDescribeMergeConflicts)
* [BatchDescribeMergeConflictsOptions](#BatchDescribeMergeConflictsOptions)
* [batchGetRepositories](#batchGetRepositories)
* [createBranch](#createBranch)
* [createCommit](#createCommit)
* [CreateCommitOptions](#CreateCommitOptions)
* [createPullRequest](#createPullRequest)
* [CreatePullRequestOptions](#CreatePullRequestOptions)
* [createRepository](#createRepository)
* [CreateRepositoryOptions](#CreateRepositoryOptions)
* [createUnreferencedMergeCommit](#createUnreferencedMergeCommit)
* [CreateUnreferencedMergeCommitOptions](#CreateUnreferencedMergeCommitOptions)
* [deleteBranch](#deleteBranch)
* [deleteCommentContent](#deleteCommentContent)
* [deleteFile](#deleteFile)
* [DeleteFileOptions](#DeleteFileOptions)
* [deleteRepository](#deleteRepository)
* [describeMergeConflicts](#describeMergeConflicts)
* [DescribeMergeConflictsOptions](#DescribeMergeConflictsOptions)
* [describePullRequestEvents](#describePullRequestEvents)
* [DescribePullRequestEventsOptions](#DescribePullRequestEventsOptions)
* [getBlob](#getBlob)
* [getBranch](#getBranch)
* [GetBranchOptions](#GetBranchOptions)
* [getComment](#getComment)
* [getCommentsForComparedCommit](#getCommentsForComparedCommit)
* [GetCommentsForComparedCommitOptions](#GetCommentsForComparedCommitOptions)
* [getCommentsForPullRequest](#getCommentsForPullRequest)
* [GetCommentsForPullRequestOptions](#GetCommentsForPullRequestOptions)
* [getCommit](#getCommit)
* [getDifferences](#getDifferences)
* [GetDifferencesOptions](#GetDifferencesOptions)
* [getFile](#getFile)
* [GetFileOptions](#GetFileOptions)
* [getFolder](#getFolder)
* [GetFolderOptions](#GetFolderOptions)
* [getMergeCommit](#getMergeCommit)
* [GetMergeCommitOptions](#GetMergeCommitOptions)
* [getMergeConflicts](#getMergeConflicts)
* [GetMergeConflictsOptions](#GetMergeConflictsOptions)
* [getMergeOptions](#getMergeOptions)
* [GetMergeOptionsOptions](#GetMergeOptionsOptions)
* [getPullRequest](#getPullRequest)
* [getRepository](#getRepository)
* [getRepositoryTriggers](#getRepositoryTriggers)
* [listBranches](#listBranches)
* [ListBranchesOptions](#ListBranchesOptions)
* [listPullRequests](#listPullRequests)
* [ListPullRequestsOptions](#ListPullRequestsOptions)
* [listRepositories](#listRepositories)
* [ListRepositoriesOptions](#ListRepositoriesOptions)
* [listTagsForResource](#listTagsForResource)
* [ListTagsForResourceOptions](#ListTagsForResourceOptions)
* [mergeBranchesByFastForward](#mergeBranchesByFastForward)
* [MergeBranchesByFastForwardOptions](#MergeBranchesByFastForwardOptions)
* [mergeBranchesBySquash](#mergeBranchesBySquash)
* [MergeBranchesBySquashOptions](#MergeBranchesBySquashOptions)
* [mergeBranchesByThreeWay](#mergeBranchesByThreeWay)
* [MergeBranchesByThreeWayOptions](#MergeBranchesByThreeWayOptions)
* [mergePullRequestByFastForward](#mergePullRequestByFastForward)
* [MergePullRequestByFastForwardOptions](#MergePullRequestByFastForwardOptions)
* [mergePullRequestBySquash](#mergePullRequestBySquash)
* [MergePullRequestBySquashOptions](#MergePullRequestBySquashOptions)
* [mergePullRequestByThreeWay](#mergePullRequestByThreeWay)
* [MergePullRequestByThreeWayOptions](#MergePullRequestByThreeWayOptions)
* [postCommentForComparedCommit](#postCommentForComparedCommit)
* [PostCommentForComparedCommitOptions](#PostCommentForComparedCommitOptions)
* [postCommentForPullRequest](#postCommentForPullRequest)
* [PostCommentForPullRequestOptions](#PostCommentForPullRequestOptions)
* [postCommentReply](#postCommentReply)
* [PostCommentReplyOptions](#PostCommentReplyOptions)
* [putFile](#putFile)
* [PutFileOptions](#PutFileOptions)
* [putRepositoryTriggers](#putRepositoryTriggers)
* [tagResource](#tagResource)
* [testRepositoryTriggers](#testRepositoryTriggers)
* [untagResource](#untagResource)
* [updateComment](#updateComment)
* [updateDefaultBranch](#updateDefaultBranch)
* [updatePullRequestDescription](#updatePullRequestDescription)
* [updatePullRequestStatus](#updatePullRequestStatus)
* [updatePullRequestTitle](#updatePullRequestTitle)
* [updateRepositoryDescription](#updateRepositoryDescription)
* [UpdateRepositoryDescriptionOptions](#UpdateRepositoryDescriptionOptions)
* [updateRepositoryName](#updateRepositoryName)


@docs batchDescribeMergeConflicts,BatchDescribeMergeConflictsOptions,batchGetRepositories,createBranch,createCommit,CreateCommitOptions,createPullRequest,CreatePullRequestOptions,createRepository,CreateRepositoryOptions,createUnreferencedMergeCommit,CreateUnreferencedMergeCommitOptions,deleteBranch,deleteCommentContent,deleteFile,DeleteFileOptions,deleteRepository,describeMergeConflicts,DescribeMergeConflictsOptions,describePullRequestEvents,DescribePullRequestEventsOptions,getBlob,getBranch,GetBranchOptions,getComment,getCommentsForComparedCommit,GetCommentsForComparedCommitOptions,getCommentsForPullRequest,GetCommentsForPullRequestOptions,getCommit,getDifferences,GetDifferencesOptions,getFile,GetFileOptions,getFolder,GetFolderOptions,getMergeCommit,GetMergeCommitOptions,getMergeConflicts,GetMergeConflictsOptions,getMergeOptions,GetMergeOptionsOptions,getPullRequest,getRepository,getRepositoryTriggers,listBranches,ListBranchesOptions,listPullRequests,ListPullRequestsOptions,listRepositories,ListRepositoriesOptions,listTagsForResource,ListTagsForResourceOptions,mergeBranchesByFastForward,MergeBranchesByFastForwardOptions,mergeBranchesBySquash,MergeBranchesBySquashOptions,mergeBranchesByThreeWay,MergeBranchesByThreeWayOptions,mergePullRequestByFastForward,MergePullRequestByFastForwardOptions,mergePullRequestBySquash,MergePullRequestBySquashOptions,mergePullRequestByThreeWay,MergePullRequestByThreeWayOptions,postCommentForComparedCommit,PostCommentForComparedCommitOptions,postCommentForPullRequest,PostCommentForPullRequestOptions,postCommentReply,PostCommentReplyOptions,putFile,PutFileOptions,putRepositoryTriggers,tagResource,testRepositoryTriggers,untagResource,updateComment,updateDefaultBranch,updatePullRequestDescription,updatePullRequestStatus,updatePullRequestTitle,updateRepositoryDescription,UpdateRepositoryDescriptionOptions,updateRepositoryName

## Responses

* [BatchDescribeMergeConflictsOutput](#BatchDescribeMergeConflictsOutput)
* [BatchGetRepositoriesOutput](#BatchGetRepositoriesOutput)
* [CreateCommitOutput](#CreateCommitOutput)
* [CreatePullRequestOutput](#CreatePullRequestOutput)
* [CreateRepositoryOutput](#CreateRepositoryOutput)
* [CreateUnreferencedMergeCommitOutput](#CreateUnreferencedMergeCommitOutput)
* [DeleteBranchOutput](#DeleteBranchOutput)
* [DeleteCommentContentOutput](#DeleteCommentContentOutput)
* [DeleteFileOutput](#DeleteFileOutput)
* [DeleteRepositoryOutput](#DeleteRepositoryOutput)
* [DescribeMergeConflictsOutput](#DescribeMergeConflictsOutput)
* [DescribePullRequestEventsOutput](#DescribePullRequestEventsOutput)
* [GetBlobOutput](#GetBlobOutput)
* [GetBranchOutput](#GetBranchOutput)
* [GetCommentOutput](#GetCommentOutput)
* [GetCommentsForComparedCommitOutput](#GetCommentsForComparedCommitOutput)
* [GetCommentsForPullRequestOutput](#GetCommentsForPullRequestOutput)
* [GetCommitOutput](#GetCommitOutput)
* [GetDifferencesOutput](#GetDifferencesOutput)
* [GetFileOutput](#GetFileOutput)
* [GetFolderOutput](#GetFolderOutput)
* [GetMergeCommitOutput](#GetMergeCommitOutput)
* [GetMergeConflictsOutput](#GetMergeConflictsOutput)
* [GetMergeOptionsOutput](#GetMergeOptionsOutput)
* [GetPullRequestOutput](#GetPullRequestOutput)
* [GetRepositoryOutput](#GetRepositoryOutput)
* [GetRepositoryTriggersOutput](#GetRepositoryTriggersOutput)
* [ListBranchesOutput](#ListBranchesOutput)
* [ListPullRequestsOutput](#ListPullRequestsOutput)
* [ListRepositoriesOutput](#ListRepositoriesOutput)
* [ListTagsForResourceOutput](#ListTagsForResourceOutput)
* [MergeBranchesByFastForwardOutput](#MergeBranchesByFastForwardOutput)
* [MergeBranchesBySquashOutput](#MergeBranchesBySquashOutput)
* [MergeBranchesByThreeWayOutput](#MergeBranchesByThreeWayOutput)
* [MergePullRequestByFastForwardOutput](#MergePullRequestByFastForwardOutput)
* [MergePullRequestBySquashOutput](#MergePullRequestBySquashOutput)
* [MergePullRequestByThreeWayOutput](#MergePullRequestByThreeWayOutput)
* [PostCommentForComparedCommitOutput](#PostCommentForComparedCommitOutput)
* [PostCommentForPullRequestOutput](#PostCommentForPullRequestOutput)
* [PostCommentReplyOutput](#PostCommentReplyOutput)
* [PutFileOutput](#PutFileOutput)
* [PutRepositoryTriggersOutput](#PutRepositoryTriggersOutput)
* [TestRepositoryTriggersOutput](#TestRepositoryTriggersOutput)
* [UpdateCommentOutput](#UpdateCommentOutput)
* [UpdatePullRequestDescriptionOutput](#UpdatePullRequestDescriptionOutput)
* [UpdatePullRequestStatusOutput](#UpdatePullRequestStatusOutput)
* [UpdatePullRequestTitleOutput](#UpdatePullRequestTitleOutput)


@docs BatchDescribeMergeConflictsOutput,BatchGetRepositoriesOutput,CreateCommitOutput,CreatePullRequestOutput,CreateRepositoryOutput,CreateUnreferencedMergeCommitOutput,DeleteBranchOutput,DeleteCommentContentOutput,DeleteFileOutput,DeleteRepositoryOutput,DescribeMergeConflictsOutput,DescribePullRequestEventsOutput,GetBlobOutput,GetBranchOutput,GetCommentOutput,GetCommentsForComparedCommitOutput,GetCommentsForPullRequestOutput,GetCommitOutput,GetDifferencesOutput,GetFileOutput,GetFolderOutput,GetMergeCommitOutput,GetMergeConflictsOutput,GetMergeOptionsOutput,GetPullRequestOutput,GetRepositoryOutput,GetRepositoryTriggersOutput,ListBranchesOutput,ListPullRequestsOutput,ListRepositoriesOutput,ListTagsForResourceOutput,MergeBranchesByFastForwardOutput,MergeBranchesBySquashOutput,MergeBranchesByThreeWayOutput,MergePullRequestByFastForwardOutput,MergePullRequestBySquashOutput,MergePullRequestByThreeWayOutput,PostCommentForComparedCommitOutput,PostCommentForPullRequestOutput,PostCommentReplyOutput,PutFileOutput,PutRepositoryTriggersOutput,TestRepositoryTriggersOutput,UpdateCommentOutput,UpdatePullRequestDescriptionOutput,UpdatePullRequestStatusOutput,UpdatePullRequestTitleOutput

## Records

* [BatchDescribeMergeConflictsError](#BatchDescribeMergeConflictsError)
* [BlobMetadata](#BlobMetadata)
* [BranchInfo](#BranchInfo)
* [Comment](#Comment)
* [CommentsForComparedCommit](#CommentsForComparedCommit)
* [CommentsForPullRequest](#CommentsForPullRequest)
* [Commit](#Commit)
* [Conflict](#Conflict)
* [ConflictMetadata](#ConflictMetadata)
* [ConflictResolution](#ConflictResolution)
* [DeleteFileEntry](#DeleteFileEntry)
* [Difference](#Difference)
* [File](#File)
* [FileMetadata](#FileMetadata)
* [FileModes](#FileModes)
* [FileSizes](#FileSizes)
* [Folder](#Folder)
* [IsBinaryFile](#IsBinaryFile)
* [Location](#Location)
* [MergeHunk](#MergeHunk)
* [MergeHunkDetail](#MergeHunkDetail)
* [MergeMetadata](#MergeMetadata)
* [MergeOperations](#MergeOperations)
* [ObjectTypes](#ObjectTypes)
* [PullRequest](#PullRequest)
* [PullRequestCreatedEventMetadata](#PullRequestCreatedEventMetadata)
* [PullRequestEvent](#PullRequestEvent)
* [PullRequestMergedStateChangedEventMetadata](#PullRequestMergedStateChangedEventMetadata)
* [PullRequestSourceReferenceUpdatedEventMetadata](#PullRequestSourceReferenceUpdatedEventMetadata)
* [PullRequestStatusChangedEventMetadata](#PullRequestStatusChangedEventMetadata)
* [PullRequestTarget](#PullRequestTarget)
* [PutFileEntry](#PutFileEntry)
* [ReplaceContentEntry](#ReplaceContentEntry)
* [RepositoryMetadata](#RepositoryMetadata)
* [RepositoryNameIdPair](#RepositoryNameIdPair)
* [RepositoryTrigger](#RepositoryTrigger)
* [RepositoryTriggerExecutionFailure](#RepositoryTriggerExecutionFailure)
* [SetFileModeEntry](#SetFileModeEntry)
* [SourceFileSpecifier](#SourceFileSpecifier)
* [SubModule](#SubModule)
* [SymbolicLink](#SymbolicLink)
* [Target](#Target)
* [UserInfo](#UserInfo)


@docs BatchDescribeMergeConflictsError,BlobMetadata,BranchInfo,Comment,CommentsForComparedCommit,CommentsForPullRequest,Commit,Conflict,ConflictMetadata,ConflictResolution,DeleteFileEntry,Difference,File,FileMetadata,FileModes,FileSizes,Folder,IsBinaryFile,Location,MergeHunk,MergeHunkDetail,MergeMetadata,MergeOperations,ObjectTypes,PullRequest,PullRequestCreatedEventMetadata,PullRequestEvent,PullRequestMergedStateChangedEventMetadata,PullRequestSourceReferenceUpdatedEventMetadata,PullRequestStatusChangedEventMetadata,PullRequestTarget,PutFileEntry,ReplaceContentEntry,RepositoryMetadata,RepositoryNameIdPair,RepositoryTrigger,RepositoryTriggerExecutionFailure,SetFileModeEntry,SourceFileSpecifier,SubModule,SymbolicLink,Target,UserInfo

## Unions

* [ChangeTypeEnum](#ChangeTypeEnum)
* [ConflictDetailLevelTypeEnum](#ConflictDetailLevelTypeEnum)
* [ConflictResolutionStrategyTypeEnum](#ConflictResolutionStrategyTypeEnum)
* [FileModeTypeEnum](#FileModeTypeEnum)
* [MergeOptionTypeEnum](#MergeOptionTypeEnum)
* [ObjectTypeEnum](#ObjectTypeEnum)
* [OrderEnum](#OrderEnum)
* [PullRequestEventType](#PullRequestEventType)
* [PullRequestStatusEnum](#PullRequestStatusEnum)
* [RelativeFileVersionEnum](#RelativeFileVersionEnum)
* [ReplacementTypeEnum](#ReplacementTypeEnum)
* [RepositoryTriggerEventEnum](#RepositoryTriggerEventEnum)
* [SortByEnum](#SortByEnum)


@docs ChangeTypeEnum,ConflictDetailLevelTypeEnum,ConflictResolutionStrategyTypeEnum,FileModeTypeEnum,MergeOptionTypeEnum,ObjectTypeEnum,OrderEnum,PullRequestEventType,PullRequestStatusEnum,RelativeFileVersionEnum,ReplacementTypeEnum,RepositoryTriggerEventEnum,SortByEnum

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
        "codecommit"
        "2015-04-13"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "CodeCommit_20150413")



-- OPERATIONS

{-| <p>Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `destinationCommitSpecifier` __:__ `String`
* `sourceCommitSpecifier` __:__ `String`
* `mergeOption` __:__ `MergeOptionTypeEnum`


-}

batchDescribeMergeConflicts :
  
    String ->
  
    String ->
  
    String ->
  
    MergeOptionTypeEnum ->
  
  
    ( BatchDescribeMergeConflictsOptions -> BatchDescribeMergeConflictsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchDescribeMergeConflictsOutput)

batchDescribeMergeConflicts repositoryName destinationCommitSpecifier sourceCommitSpecifier mergeOption setOptions =
    
    let
        requestInput = BatchDescribeMergeConflictsInput
            
            repositoryName
            
            destinationCommitSpecifier
            
            sourceCommitSpecifier
            
            mergeOption
            
            options.maxMergeHunks
            
            options.maxConflictFiles
            
            options.filePaths
            
            options.conflictDetailLevel
            
            options.conflictResolutionStrategy
            
            options.nextToken
            
        
        options = setOptions (BatchDescribeMergeConflictsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchDescribeMergeConflictsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchDescribeMergeConflicts"
                
                (AWS.Core.Decode.ResultDecoder "BatchDescribeMergeConflictsOutput" batchDescribeMergeConflictsOutputDecoder)
                
            )



{-| Options for a batchDescribeMergeConflicts request
-}
type alias BatchDescribeMergeConflictsOptions =
    {
    maxMergeHunks : Maybe Int,maxConflictFiles : Maybe Int,filePaths : Maybe (List String),conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum,conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum,nextToken : Maybe String
    }



{-| <p>Returns information about one or more repositories.</p> <note> <p>The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.</p> </note>

__Required Parameters__

* `repositoryNames` __:__ `(List String)`


-}

batchGetRepositories :
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchGetRepositoriesOutput)

batchGetRepositories repositoryNames =
    
    let
        requestInput = BatchGetRepositoriesInput
            
            repositoryNames
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchGetRepositoriesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchGetRepositories"
                
                (AWS.Core.Decode.ResultDecoder "BatchGetRepositoriesOutput" batchGetRepositoriesOutputDecoder)
                
            )





{-| <p>Creates a new branch in a repository and points the branch to a commit.</p> <note> <p>Calling the create branch operation does not set a repository's default branch. To do this, call the update default branch operation.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `branchName` __:__ `String`
* `commitId` __:__ `String`


-}

createBranch :
  
    String ->
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

createBranch repositoryName branchName commitId =
    
    let
        requestInput = CreateBranchInput
            
            repositoryName
            
            branchName
            
            commitId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createBranchInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateBranch"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Creates a commit for a repository on the tip of a specified branch.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `branchName` __:__ `String`


-}

createCommit :
  
    String ->
  
    String ->
  
  
    ( CreateCommitOptions -> CreateCommitOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateCommitOutput)

createCommit repositoryName branchName setOptions =
    
    let
        requestInput = CreateCommitInput
            
            repositoryName
            
            branchName
            
            options.parentCommitId
            
            options.authorName
            
            options.email
            
            options.commitMessage
            
            options.keepEmptyFolders
            
            options.putFiles
            
            options.deleteFiles
            
            options.setFileModes
            
        
        options = setOptions (CreateCommitOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createCommitInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateCommit"
                
                (AWS.Core.Decode.ResultDecoder "CreateCommitOutput" createCommitOutputDecoder)
                
            )



{-| Options for a createCommit request
-}
type alias CreateCommitOptions =
    {
    parentCommitId : Maybe String,authorName : Maybe String,email : Maybe String,commitMessage : Maybe String,keepEmptyFolders : Maybe Bool,putFiles : Maybe (List PutFileEntry),deleteFiles : Maybe (List DeleteFileEntry),setFileModes : Maybe (List SetFileModeEntry)
    }



{-| <p>Creates a pull request in the specified repository.</p>

__Required Parameters__

* `title` __:__ `String`
* `targets` __:__ `(List Target)`


-}

createPullRequest :
  
    String ->
  
    (List Target) ->
  
  
    ( CreatePullRequestOptions -> CreatePullRequestOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePullRequestOutput)

createPullRequest title targets setOptions =
    
    let
        requestInput = CreatePullRequestInput
            
            title
            
            options.description
            
            targets
            
            options.clientRequestToken
            
        
        options = setOptions (CreatePullRequestOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createPullRequestInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePullRequest"
                
                (AWS.Core.Decode.ResultDecoder "CreatePullRequestOutput" createPullRequestOutputDecoder)
                
            )



{-| Options for a createPullRequest request
-}
type alias CreatePullRequestOptions =
    {
    description : Maybe String,clientRequestToken : Maybe String
    }



{-| <p>Creates a new, empty repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

createRepository :
  
    String ->
  
  
    ( CreateRepositoryOptions -> CreateRepositoryOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateRepositoryOutput)

createRepository repositoryName setOptions =
    
    let
        requestInput = CreateRepositoryInput
            
            repositoryName
            
            options.repositoryDescription
            
            options.tags
            
        
        options = setOptions (CreateRepositoryOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createRepositoryInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateRepository"
                
                (AWS.Core.Decode.ResultDecoder "CreateRepositoryOutput" createRepositoryOutputDecoder)
                
            )



{-| Options for a createRepository request
-}
type alias CreateRepositoryOptions =
    {
    repositoryDescription : Maybe String,tags : Maybe (Dict String String)
    }



{-| <p>Creates an unreferenced commit that represents the result of merging two branches using a specified merge strategy. This can help you determine the outcome of a potential merge. This API cannot be used with the fast-forward merge strategy, as that strategy does not create a merge commit.</p> <note> <p>This unreferenced merge commit can only be accessed using the GetCommit API or through git commands such as git fetch. To retrieve this commit, you must specify its commit ID or otherwise reference it.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `sourceCommitSpecifier` __:__ `String`
* `destinationCommitSpecifier` __:__ `String`
* `mergeOption` __:__ `MergeOptionTypeEnum`


-}

createUnreferencedMergeCommit :
  
    String ->
  
    String ->
  
    String ->
  
    MergeOptionTypeEnum ->
  
  
    ( CreateUnreferencedMergeCommitOptions -> CreateUnreferencedMergeCommitOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateUnreferencedMergeCommitOutput)

createUnreferencedMergeCommit repositoryName sourceCommitSpecifier destinationCommitSpecifier mergeOption setOptions =
    
    let
        requestInput = CreateUnreferencedMergeCommitInput
            
            repositoryName
            
            sourceCommitSpecifier
            
            destinationCommitSpecifier
            
            mergeOption
            
            options.conflictDetailLevel
            
            options.conflictResolutionStrategy
            
            options.authorName
            
            options.email
            
            options.commitMessage
            
            options.keepEmptyFolders
            
            options.conflictResolution
            
        
        options = setOptions (CreateUnreferencedMergeCommitOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createUnreferencedMergeCommitInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateUnreferencedMergeCommit"
                
                (AWS.Core.Decode.ResultDecoder "CreateUnreferencedMergeCommitOutput" createUnreferencedMergeCommitOutputDecoder)
                
            )



{-| Options for a createUnreferencedMergeCommit request
-}
type alias CreateUnreferencedMergeCommitOptions =
    {
    conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum,conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum,authorName : Maybe String,email : Maybe String,commitMessage : Maybe String,keepEmptyFolders : Maybe Bool,conflictResolution : Maybe ConflictResolution
    }



{-| <p>Deletes a branch from a repository, unless that branch is the default branch for the repository. </p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `branchName` __:__ `String`


-}

deleteBranch :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteBranchOutput)

deleteBranch repositoryName branchName =
    
    let
        requestInput = DeleteBranchInput
            
            repositoryName
            
            branchName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteBranchInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteBranch"
                
                (AWS.Core.Decode.ResultDecoder "DeleteBranchOutput" deleteBranchOutputDecoder)
                
            )





{-| <p>Deletes the content of a comment made on a change, file, or commit in a repository.</p>

__Required Parameters__

* `commentId` __:__ `String`


-}

deleteCommentContent :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteCommentContentOutput)

deleteCommentContent commentId =
    
    let
        requestInput = DeleteCommentContentInput
            
            commentId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteCommentContentInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteCommentContent"
                
                (AWS.Core.Decode.ResultDecoder "DeleteCommentContentOutput" deleteCommentContentOutputDecoder)
                
            )





{-| <p>Deletes a specified file from a specified branch. A commit is created on the branch that contains the revision. The file will still exist in the commits prior to the commit that contains the deletion.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `branchName` __:__ `String`
* `filePath` __:__ `String`
* `parentCommitId` __:__ `String`


-}

deleteFile :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( DeleteFileOptions -> DeleteFileOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteFileOutput)

deleteFile repositoryName branchName filePath parentCommitId setOptions =
    
    let
        requestInput = DeleteFileInput
            
            repositoryName
            
            branchName
            
            filePath
            
            parentCommitId
            
            options.keepEmptyFolders
            
            options.commitMessage
            
            options.name
            
            options.email
            
        
        options = setOptions (DeleteFileOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteFileInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteFile"
                
                (AWS.Core.Decode.ResultDecoder "DeleteFileOutput" deleteFileOutputDecoder)
                
            )



{-| Options for a deleteFile request
-}
type alias DeleteFileOptions =
    {
    keepEmptyFolders : Maybe Bool,commitMessage : Maybe String,name : Maybe String,email : Maybe String
    }



{-| <p>Deletes a repository. If a specified repository was already deleted, a null repository ID will be returned.</p> <important> <p>Deleting a repository also deletes all associated objects and metadata. After a repository is deleted, all future push calls to the deleted repository will fail.</p> </important>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

deleteRepository :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteRepositoryOutput)

deleteRepository repositoryName =
    
    let
        requestInput = DeleteRepositoryInput
            
            repositoryName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteRepositoryInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteRepository"
                
                (AWS.Core.Decode.ResultDecoder "DeleteRepositoryOutput" deleteRepositoryOutputDecoder)
                
            )





{-| <p>Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy. If the merge option for the attempted merge is specified as FAST_FORWARD_MERGE, an exception will be thrown.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `destinationCommitSpecifier` __:__ `String`
* `sourceCommitSpecifier` __:__ `String`
* `mergeOption` __:__ `MergeOptionTypeEnum`
* `filePath` __:__ `String`


-}

describeMergeConflicts :
  
    String ->
  
    String ->
  
    String ->
  
    MergeOptionTypeEnum ->
  
    String ->
  
  
    ( DescribeMergeConflictsOptions -> DescribeMergeConflictsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeMergeConflictsOutput)

describeMergeConflicts repositoryName destinationCommitSpecifier sourceCommitSpecifier mergeOption filePath setOptions =
    
    let
        requestInput = DescribeMergeConflictsInput
            
            repositoryName
            
            destinationCommitSpecifier
            
            sourceCommitSpecifier
            
            mergeOption
            
            options.maxMergeHunks
            
            filePath
            
            options.conflictDetailLevel
            
            options.conflictResolutionStrategy
            
            options.nextToken
            
        
        options = setOptions (DescribeMergeConflictsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeMergeConflictsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeMergeConflicts"
                
                (AWS.Core.Decode.ResultDecoder "DescribeMergeConflictsOutput" describeMergeConflictsOutputDecoder)
                
            )



{-| Options for a describeMergeConflicts request
-}
type alias DescribeMergeConflictsOptions =
    {
    maxMergeHunks : Maybe Int,conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum,conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum,nextToken : Maybe String
    }



{-| <p>Returns information about one or more pull request events.</p>

__Required Parameters__

* `pullRequestId` __:__ `String`


-}

describePullRequestEvents :
  
    String ->
  
  
    ( DescribePullRequestEventsOptions -> DescribePullRequestEventsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribePullRequestEventsOutput)

describePullRequestEvents pullRequestId setOptions =
    
    let
        requestInput = DescribePullRequestEventsInput
            
            pullRequestId
            
            options.pullRequestEventType
            
            options.actorArn
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (DescribePullRequestEventsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describePullRequestEventsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribePullRequestEvents"
                
                (AWS.Core.Decode.ResultDecoder "DescribePullRequestEventsOutput" describePullRequestEventsOutputDecoder)
                
            )



{-| Options for a describePullRequestEvents request
-}
type alias DescribePullRequestEventsOptions =
    {
    pullRequestEventType : Maybe PullRequestEventType,actorArn : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Returns the base-64 encoded content of an individual blob within a repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `blobId` __:__ `String`


-}

getBlob :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBlobOutput)

getBlob repositoryName blobId =
    
    let
        requestInput = GetBlobInput
            
            repositoryName
            
            blobId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getBlobInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetBlob"
                
                (AWS.Core.Decode.ResultDecoder "GetBlobOutput" getBlobOutputDecoder)
                
            )





{-| <p>Returns information about a repository branch, including its name and the last commit ID.</p>

__Required Parameters__



-}

getBranch :
  
  
    ( GetBranchOptions -> GetBranchOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetBranchOutput)

getBranch setOptions =
    
    let
        requestInput = GetBranchInput
            
            options.repositoryName
            
            options.branchName
            
        
        options = setOptions (GetBranchOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getBranchInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetBranch"
                
                (AWS.Core.Decode.ResultDecoder "GetBranchOutput" getBranchOutputDecoder)
                
            )



{-| Options for a getBranch request
-}
type alias GetBranchOptions =
    {
    repositoryName : Maybe String,branchName : Maybe String
    }



{-| <p>Returns the content of a comment made on a change, file, or commit in a repository.</p>

__Required Parameters__

* `commentId` __:__ `String`


-}

getComment :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCommentOutput)

getComment commentId =
    
    let
        requestInput = GetCommentInput
            
            commentId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCommentInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetComment"
                
                (AWS.Core.Decode.ResultDecoder "GetCommentOutput" getCommentOutputDecoder)
                
            )





{-| <p>Returns information about comments made on the comparison between two commits.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `afterCommitId` __:__ `String`


-}

getCommentsForComparedCommit :
  
    String ->
  
    String ->
  
  
    ( GetCommentsForComparedCommitOptions -> GetCommentsForComparedCommitOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCommentsForComparedCommitOutput)

getCommentsForComparedCommit repositoryName afterCommitId setOptions =
    
    let
        requestInput = GetCommentsForComparedCommitInput
            
            repositoryName
            
            options.beforeCommitId
            
            afterCommitId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetCommentsForComparedCommitOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCommentsForComparedCommitInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetCommentsForComparedCommit"
                
                (AWS.Core.Decode.ResultDecoder "GetCommentsForComparedCommitOutput" getCommentsForComparedCommitOutputDecoder)
                
            )



{-| Options for a getCommentsForComparedCommit request
-}
type alias GetCommentsForComparedCommitOptions =
    {
    beforeCommitId : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Returns comments made on a pull request.</p>

__Required Parameters__

* `pullRequestId` __:__ `String`


-}

getCommentsForPullRequest :
  
    String ->
  
  
    ( GetCommentsForPullRequestOptions -> GetCommentsForPullRequestOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCommentsForPullRequestOutput)

getCommentsForPullRequest pullRequestId setOptions =
    
    let
        requestInput = GetCommentsForPullRequestInput
            
            pullRequestId
            
            options.repositoryName
            
            options.beforeCommitId
            
            options.afterCommitId
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (GetCommentsForPullRequestOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCommentsForPullRequestInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetCommentsForPullRequest"
                
                (AWS.Core.Decode.ResultDecoder "GetCommentsForPullRequestOutput" getCommentsForPullRequestOutputDecoder)
                
            )



{-| Options for a getCommentsForPullRequest request
-}
type alias GetCommentsForPullRequestOptions =
    {
    repositoryName : Maybe String,beforeCommitId : Maybe String,afterCommitId : Maybe String,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Returns information about a commit, including commit message and committer information.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `commitId` __:__ `String`


-}

getCommit :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetCommitOutput)

getCommit repositoryName commitId =
    
    let
        requestInput = GetCommitInput
            
            repositoryName
            
            commitId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getCommitInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetCommit"
                
                (AWS.Core.Decode.ResultDecoder "GetCommitOutput" getCommitOutputDecoder)
                
            )





{-| <p>Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID or other fully qualified reference). Results can be limited to a specified path.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `afterCommitSpecifier` __:__ `String`


-}

getDifferences :
  
    String ->
  
    String ->
  
  
    ( GetDifferencesOptions -> GetDifferencesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetDifferencesOutput)

getDifferences repositoryName afterCommitSpecifier setOptions =
    
    let
        requestInput = GetDifferencesInput
            
            repositoryName
            
            options.beforeCommitSpecifier
            
            afterCommitSpecifier
            
            options.beforePath
            
            options.afterPath
            
            options.maxResults
            
            options.nextToken
            
        
        options = setOptions (GetDifferencesOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getDifferencesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetDifferences"
                
                (AWS.Core.Decode.ResultDecoder "GetDifferencesOutput" getDifferencesOutputDecoder)
                
            )



{-| Options for a getDifferences request
-}
type alias GetDifferencesOptions =
    {
    beforeCommitSpecifier : Maybe String,beforePath : Maybe String,afterPath : Maybe String,maxResults : Maybe Int,nextToken : Maybe String
    }



{-| <p>Returns the base-64 encoded contents of a specified file and its metadata.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `filePath` __:__ `String`


-}

getFile :
  
    String ->
  
    String ->
  
  
    ( GetFileOptions -> GetFileOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetFileOutput)

getFile repositoryName filePath setOptions =
    
    let
        requestInput = GetFileInput
            
            repositoryName
            
            options.commitSpecifier
            
            filePath
            
        
        options = setOptions (GetFileOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getFileInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetFile"
                
                (AWS.Core.Decode.ResultDecoder "GetFileOutput" getFileOutputDecoder)
                
            )



{-| Options for a getFile request
-}
type alias GetFileOptions =
    {
    commitSpecifier : Maybe String
    }



{-| <p>Returns the contents of a specified folder in a repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `folderPath` __:__ `String`


-}

getFolder :
  
    String ->
  
    String ->
  
  
    ( GetFolderOptions -> GetFolderOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetFolderOutput)

getFolder repositoryName folderPath setOptions =
    
    let
        requestInput = GetFolderInput
            
            repositoryName
            
            options.commitSpecifier
            
            folderPath
            
        
        options = setOptions (GetFolderOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getFolderInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetFolder"
                
                (AWS.Core.Decode.ResultDecoder "GetFolderOutput" getFolderOutputDecoder)
                
            )



{-| Options for a getFolder request
-}
type alias GetFolderOptions =
    {
    commitSpecifier : Maybe String
    }



{-| <p>Returns information about a specified merge commit.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `sourceCommitSpecifier` __:__ `String`
* `destinationCommitSpecifier` __:__ `String`


-}

getMergeCommit :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( GetMergeCommitOptions -> GetMergeCommitOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetMergeCommitOutput)

getMergeCommit repositoryName sourceCommitSpecifier destinationCommitSpecifier setOptions =
    
    let
        requestInput = GetMergeCommitInput
            
            repositoryName
            
            sourceCommitSpecifier
            
            destinationCommitSpecifier
            
            options.conflictDetailLevel
            
            options.conflictResolutionStrategy
            
        
        options = setOptions (GetMergeCommitOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getMergeCommitInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetMergeCommit"
                
                (AWS.Core.Decode.ResultDecoder "GetMergeCommitOutput" getMergeCommitOutputDecoder)
                
            )



{-| Options for a getMergeCommit request
-}
type alias GetMergeCommitOptions =
    {
    conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum,conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum
    }



{-| <p>Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `destinationCommitSpecifier` __:__ `String`
* `sourceCommitSpecifier` __:__ `String`
* `mergeOption` __:__ `MergeOptionTypeEnum`


-}

getMergeConflicts :
  
    String ->
  
    String ->
  
    String ->
  
    MergeOptionTypeEnum ->
  
  
    ( GetMergeConflictsOptions -> GetMergeConflictsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetMergeConflictsOutput)

getMergeConflicts repositoryName destinationCommitSpecifier sourceCommitSpecifier mergeOption setOptions =
    
    let
        requestInput = GetMergeConflictsInput
            
            repositoryName
            
            destinationCommitSpecifier
            
            sourceCommitSpecifier
            
            mergeOption
            
            options.conflictDetailLevel
            
            options.maxConflictFiles
            
            options.conflictResolutionStrategy
            
            options.nextToken
            
        
        options = setOptions (GetMergeConflictsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getMergeConflictsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetMergeConflicts"
                
                (AWS.Core.Decode.ResultDecoder "GetMergeConflictsOutput" getMergeConflictsOutputDecoder)
                
            )



{-| Options for a getMergeConflicts request
-}
type alias GetMergeConflictsOptions =
    {
    conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum,maxConflictFiles : Maybe Int,conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum,nextToken : Maybe String
    }



{-| <p>Returns information about the merge options available for merging two specified branches. For details about why a particular merge option is not available, use GetMergeConflicts or DescribeMergeConflicts.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `sourceCommitSpecifier` __:__ `String`
* `destinationCommitSpecifier` __:__ `String`


-}

getMergeOptions :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( GetMergeOptionsOptions -> GetMergeOptionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetMergeOptionsOutput)

getMergeOptions repositoryName sourceCommitSpecifier destinationCommitSpecifier setOptions =
    
    let
        requestInput = GetMergeOptionsInput
            
            repositoryName
            
            sourceCommitSpecifier
            
            destinationCommitSpecifier
            
            options.conflictDetailLevel
            
            options.conflictResolutionStrategy
            
        
        options = setOptions (GetMergeOptionsOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getMergeOptionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetMergeOptions"
                
                (AWS.Core.Decode.ResultDecoder "GetMergeOptionsOutput" getMergeOptionsOutputDecoder)
                
            )



{-| Options for a getMergeOptions request
-}
type alias GetMergeOptionsOptions =
    {
    conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum,conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum
    }



{-| <p>Gets information about a pull request in a specified repository.</p>

__Required Parameters__

* `pullRequestId` __:__ `String`


-}

getPullRequest :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetPullRequestOutput)

getPullRequest pullRequestId =
    
    let
        requestInput = GetPullRequestInput
            
            pullRequestId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getPullRequestInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetPullRequest"
                
                (AWS.Core.Decode.ResultDecoder "GetPullRequestOutput" getPullRequestOutputDecoder)
                
            )





{-| <p>Returns information about a repository.</p> <note> <p>The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

getRepository :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRepositoryOutput)

getRepository repositoryName =
    
    let
        requestInput = GetRepositoryInput
            
            repositoryName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRepositoryInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRepository"
                
                (AWS.Core.Decode.ResultDecoder "GetRepositoryOutput" getRepositoryOutputDecoder)
                
            )





{-| <p>Gets information about triggers configured for a repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

getRepositoryTriggers :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetRepositoryTriggersOutput)

getRepositoryTriggers repositoryName =
    
    let
        requestInput = GetRepositoryTriggersInput
            
            repositoryName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getRepositoryTriggersInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetRepositoryTriggers"
                
                (AWS.Core.Decode.ResultDecoder "GetRepositoryTriggersOutput" getRepositoryTriggersOutputDecoder)
                
            )





{-| <p>Gets information about one or more branches in a repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

listBranches :
  
    String ->
  
  
    ( ListBranchesOptions -> ListBranchesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListBranchesOutput)

listBranches repositoryName setOptions =
    
    let
        requestInput = ListBranchesInput
            
            repositoryName
            
            options.nextToken
            
        
        options = setOptions (ListBranchesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listBranchesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListBranches"
                
                (AWS.Core.Decode.ResultDecoder "ListBranchesOutput" listBranchesOutputDecoder)
                
            )



{-| Options for a listBranches request
-}
type alias ListBranchesOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Returns a list of pull requests for a specified repository. The return list can be refined by pull request status or pull request author ARN.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

listPullRequests :
  
    String ->
  
  
    ( ListPullRequestsOptions -> ListPullRequestsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPullRequestsOutput)

listPullRequests repositoryName setOptions =
    
    let
        requestInput = ListPullRequestsInput
            
            repositoryName
            
            options.authorArn
            
            options.pullRequestStatus
            
            options.nextToken
            
            options.maxResults
            
        
        options = setOptions (ListPullRequestsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listPullRequestsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListPullRequests"
                
                (AWS.Core.Decode.ResultDecoder "ListPullRequestsOutput" listPullRequestsOutputDecoder)
                
            )



{-| Options for a listPullRequests request
-}
type alias ListPullRequestsOptions =
    {
    authorArn : Maybe String,pullRequestStatus : Maybe PullRequestStatusEnum,nextToken : Maybe String,maxResults : Maybe Int
    }



{-| <p>Gets information about one or more repositories.</p>

__Required Parameters__



-}

listRepositories :
  
  
    ( ListRepositoriesOptions -> ListRepositoriesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRepositoriesOutput)

listRepositories setOptions =
    
    let
        requestInput = ListRepositoriesInput
            
            options.nextToken
            
            options.sortBy
            
            options.order
            
        
        options = setOptions (ListRepositoriesOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRepositoriesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRepositories"
                
                (AWS.Core.Decode.ResultDecoder "ListRepositoriesOutput" listRepositoriesOutputDecoder)
                
            )



{-| Options for a listRepositories request
-}
type alias ListRepositoriesOptions =
    {
    nextToken : Maybe String,sortBy : Maybe SortByEnum,order : Maybe OrderEnum
    }



{-| <p>Gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a> in the AWS CodeCommit User Guide.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}

listTagsForResource :
  
    String ->
  
  
    ( ListTagsForResourceOptions -> ListTagsForResourceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagsForResourceOutput)

listTagsForResource resourceArn setOptions =
    
    let
        requestInput = ListTagsForResourceInput
            
            resourceArn
            
            options.nextToken
            
        
        options = setOptions (ListTagsForResourceOptions Nothing)
        
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
                
                (AWS.Core.Decode.ResultDecoder "ListTagsForResourceOutput" listTagsForResourceOutputDecoder)
                
            )



{-| Options for a listTagsForResource request
-}
type alias ListTagsForResourceOptions =
    {
    nextToken : Maybe String
    }



{-| <p>Merges two branches using the fast-forward merge strategy.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `sourceCommitSpecifier` __:__ `String`
* `destinationCommitSpecifier` __:__ `String`


-}

mergeBranchesByFastForward :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( MergeBranchesByFastForwardOptions -> MergeBranchesByFastForwardOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper MergeBranchesByFastForwardOutput)

mergeBranchesByFastForward repositoryName sourceCommitSpecifier destinationCommitSpecifier setOptions =
    
    let
        requestInput = MergeBranchesByFastForwardInput
            
            repositoryName
            
            sourceCommitSpecifier
            
            destinationCommitSpecifier
            
            options.targetBranch
            
        
        options = setOptions (MergeBranchesByFastForwardOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> mergeBranchesByFastForwardInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "MergeBranchesByFastForward"
                
                (AWS.Core.Decode.ResultDecoder "MergeBranchesByFastForwardOutput" mergeBranchesByFastForwardOutputDecoder)
                
            )



{-| Options for a mergeBranchesByFastForward request
-}
type alias MergeBranchesByFastForwardOptions =
    {
    targetBranch : Maybe String
    }



{-| <p>Merges two branches using the squash merge strategy.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `sourceCommitSpecifier` __:__ `String`
* `destinationCommitSpecifier` __:__ `String`


-}

mergeBranchesBySquash :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( MergeBranchesBySquashOptions -> MergeBranchesBySquashOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper MergeBranchesBySquashOutput)

mergeBranchesBySquash repositoryName sourceCommitSpecifier destinationCommitSpecifier setOptions =
    
    let
        requestInput = MergeBranchesBySquashInput
            
            repositoryName
            
            sourceCommitSpecifier
            
            destinationCommitSpecifier
            
            options.targetBranch
            
            options.conflictDetailLevel
            
            options.conflictResolutionStrategy
            
            options.authorName
            
            options.email
            
            options.commitMessage
            
            options.keepEmptyFolders
            
            options.conflictResolution
            
        
        options = setOptions (MergeBranchesBySquashOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> mergeBranchesBySquashInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "MergeBranchesBySquash"
                
                (AWS.Core.Decode.ResultDecoder "MergeBranchesBySquashOutput" mergeBranchesBySquashOutputDecoder)
                
            )



{-| Options for a mergeBranchesBySquash request
-}
type alias MergeBranchesBySquashOptions =
    {
    targetBranch : Maybe String,conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum,conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum,authorName : Maybe String,email : Maybe String,commitMessage : Maybe String,keepEmptyFolders : Maybe Bool,conflictResolution : Maybe ConflictResolution
    }



{-| <p>Merges two specified branches using the three-way merge strategy.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `sourceCommitSpecifier` __:__ `String`
* `destinationCommitSpecifier` __:__ `String`


-}

mergeBranchesByThreeWay :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( MergeBranchesByThreeWayOptions -> MergeBranchesByThreeWayOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper MergeBranchesByThreeWayOutput)

mergeBranchesByThreeWay repositoryName sourceCommitSpecifier destinationCommitSpecifier setOptions =
    
    let
        requestInput = MergeBranchesByThreeWayInput
            
            repositoryName
            
            sourceCommitSpecifier
            
            destinationCommitSpecifier
            
            options.targetBranch
            
            options.conflictDetailLevel
            
            options.conflictResolutionStrategy
            
            options.authorName
            
            options.email
            
            options.commitMessage
            
            options.keepEmptyFolders
            
            options.conflictResolution
            
        
        options = setOptions (MergeBranchesByThreeWayOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> mergeBranchesByThreeWayInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "MergeBranchesByThreeWay"
                
                (AWS.Core.Decode.ResultDecoder "MergeBranchesByThreeWayOutput" mergeBranchesByThreeWayOutputDecoder)
                
            )



{-| Options for a mergeBranchesByThreeWay request
-}
type alias MergeBranchesByThreeWayOptions =
    {
    targetBranch : Maybe String,conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum,conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum,authorName : Maybe String,email : Maybe String,commitMessage : Maybe String,keepEmptyFolders : Maybe Bool,conflictResolution : Maybe ConflictResolution
    }



{-| <p>Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the fast-forward merge strategy. If the merge is successful, it closes the pull request.</p>

__Required Parameters__

* `pullRequestId` __:__ `String`
* `repositoryName` __:__ `String`


-}

mergePullRequestByFastForward :
  
    String ->
  
    String ->
  
  
    ( MergePullRequestByFastForwardOptions -> MergePullRequestByFastForwardOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper MergePullRequestByFastForwardOutput)

mergePullRequestByFastForward pullRequestId repositoryName setOptions =
    
    let
        requestInput = MergePullRequestByFastForwardInput
            
            pullRequestId
            
            repositoryName
            
            options.sourceCommitId
            
        
        options = setOptions (MergePullRequestByFastForwardOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> mergePullRequestByFastForwardInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "MergePullRequestByFastForward"
                
                (AWS.Core.Decode.ResultDecoder "MergePullRequestByFastForwardOutput" mergePullRequestByFastForwardOutputDecoder)
                
            )



{-| Options for a mergePullRequestByFastForward request
-}
type alias MergePullRequestByFastForwardOptions =
    {
    sourceCommitId : Maybe String
    }



{-| <p>Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the squash merge strategy. If the merge is successful, it closes the pull request.</p>

__Required Parameters__

* `pullRequestId` __:__ `String`
* `repositoryName` __:__ `String`


-}

mergePullRequestBySquash :
  
    String ->
  
    String ->
  
  
    ( MergePullRequestBySquashOptions -> MergePullRequestBySquashOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper MergePullRequestBySquashOutput)

mergePullRequestBySquash pullRequestId repositoryName setOptions =
    
    let
        requestInput = MergePullRequestBySquashInput
            
            pullRequestId
            
            repositoryName
            
            options.sourceCommitId
            
            options.conflictDetailLevel
            
            options.conflictResolutionStrategy
            
            options.commitMessage
            
            options.authorName
            
            options.email
            
            options.keepEmptyFolders
            
            options.conflictResolution
            
        
        options = setOptions (MergePullRequestBySquashOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> mergePullRequestBySquashInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "MergePullRequestBySquash"
                
                (AWS.Core.Decode.ResultDecoder "MergePullRequestBySquashOutput" mergePullRequestBySquashOutputDecoder)
                
            )



{-| Options for a mergePullRequestBySquash request
-}
type alias MergePullRequestBySquashOptions =
    {
    sourceCommitId : Maybe String,conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum,conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum,commitMessage : Maybe String,authorName : Maybe String,email : Maybe String,keepEmptyFolders : Maybe Bool,conflictResolution : Maybe ConflictResolution
    }



{-| <p>Attempts to merge the source commit of a pull request into the specified destination branch for that pull request at the specified commit using the three-way merge strategy. If the merge is successful, it closes the pull request.</p>

__Required Parameters__

* `pullRequestId` __:__ `String`
* `repositoryName` __:__ `String`


-}

mergePullRequestByThreeWay :
  
    String ->
  
    String ->
  
  
    ( MergePullRequestByThreeWayOptions -> MergePullRequestByThreeWayOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper MergePullRequestByThreeWayOutput)

mergePullRequestByThreeWay pullRequestId repositoryName setOptions =
    
    let
        requestInput = MergePullRequestByThreeWayInput
            
            pullRequestId
            
            repositoryName
            
            options.sourceCommitId
            
            options.conflictDetailLevel
            
            options.conflictResolutionStrategy
            
            options.commitMessage
            
            options.authorName
            
            options.email
            
            options.keepEmptyFolders
            
            options.conflictResolution
            
        
        options = setOptions (MergePullRequestByThreeWayOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> mergePullRequestByThreeWayInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "MergePullRequestByThreeWay"
                
                (AWS.Core.Decode.ResultDecoder "MergePullRequestByThreeWayOutput" mergePullRequestByThreeWayOutputDecoder)
                
            )



{-| Options for a mergePullRequestByThreeWay request
-}
type alias MergePullRequestByThreeWayOptions =
    {
    sourceCommitId : Maybe String,conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum,conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum,commitMessage : Maybe String,authorName : Maybe String,email : Maybe String,keepEmptyFolders : Maybe Bool,conflictResolution : Maybe ConflictResolution
    }



{-| <p>Posts a comment on the comparison between two commits.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `afterCommitId` __:__ `String`
* `content` __:__ `String`


-}

postCommentForComparedCommit :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( PostCommentForComparedCommitOptions -> PostCommentForComparedCommitOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PostCommentForComparedCommitOutput)

postCommentForComparedCommit repositoryName afterCommitId content setOptions =
    
    let
        requestInput = PostCommentForComparedCommitInput
            
            repositoryName
            
            options.beforeCommitId
            
            afterCommitId
            
            options.location
            
            content
            
            options.clientRequestToken
            
        
        options = setOptions (PostCommentForComparedCommitOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> postCommentForComparedCommitInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PostCommentForComparedCommit"
                
                (AWS.Core.Decode.ResultDecoder "PostCommentForComparedCommitOutput" postCommentForComparedCommitOutputDecoder)
                
            )



{-| Options for a postCommentForComparedCommit request
-}
type alias PostCommentForComparedCommitOptions =
    {
    beforeCommitId : Maybe String,location : Maybe Location,clientRequestToken : Maybe String
    }



{-| <p>Posts a comment on a pull request.</p>

__Required Parameters__

* `pullRequestId` __:__ `String`
* `repositoryName` __:__ `String`
* `beforeCommitId` __:__ `String`
* `afterCommitId` __:__ `String`
* `content` __:__ `String`


-}

postCommentForPullRequest :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( PostCommentForPullRequestOptions -> PostCommentForPullRequestOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PostCommentForPullRequestOutput)

postCommentForPullRequest pullRequestId repositoryName beforeCommitId afterCommitId content setOptions =
    
    let
        requestInput = PostCommentForPullRequestInput
            
            pullRequestId
            
            repositoryName
            
            beforeCommitId
            
            afterCommitId
            
            options.location
            
            content
            
            options.clientRequestToken
            
        
        options = setOptions (PostCommentForPullRequestOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> postCommentForPullRequestInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PostCommentForPullRequest"
                
                (AWS.Core.Decode.ResultDecoder "PostCommentForPullRequestOutput" postCommentForPullRequestOutputDecoder)
                
            )



{-| Options for a postCommentForPullRequest request
-}
type alias PostCommentForPullRequestOptions =
    {
    location : Maybe Location,clientRequestToken : Maybe String
    }



{-| <p>Posts a comment in reply to an existing comment on a comparison between commits or a pull request.</p>

__Required Parameters__

* `inReplyTo` __:__ `String`
* `content` __:__ `String`


-}

postCommentReply :
  
    String ->
  
    String ->
  
  
    ( PostCommentReplyOptions -> PostCommentReplyOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PostCommentReplyOutput)

postCommentReply inReplyTo content setOptions =
    
    let
        requestInput = PostCommentReplyInput
            
            inReplyTo
            
            options.clientRequestToken
            
            content
            
        
        options = setOptions (PostCommentReplyOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> postCommentReplyInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PostCommentReply"
                
                (AWS.Core.Decode.ResultDecoder "PostCommentReplyOutput" postCommentReplyOutputDecoder)
                
            )



{-| Options for a postCommentReply request
-}
type alias PostCommentReplyOptions =
    {
    clientRequestToken : Maybe String
    }



{-| <p>Adds or updates a file in a branch in an AWS CodeCommit repository, and generates a commit for the addition in the specified branch.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `branchName` __:__ `String`
* `fileContent` __:__ `String`
* `filePath` __:__ `String`


-}

putFile :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( PutFileOptions -> PutFileOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutFileOutput)

putFile repositoryName branchName fileContent filePath setOptions =
    
    let
        requestInput = PutFileInput
            
            repositoryName
            
            branchName
            
            fileContent
            
            filePath
            
            options.fileMode
            
            options.parentCommitId
            
            options.commitMessage
            
            options.name
            
            options.email
            
        
        options = setOptions (PutFileOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putFileInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutFile"
                
                (AWS.Core.Decode.ResultDecoder "PutFileOutput" putFileOutputDecoder)
                
            )



{-| Options for a putFile request
-}
type alias PutFileOptions =
    {
    fileMode : Maybe FileModeTypeEnum,parentCommitId : Maybe String,commitMessage : Maybe String,name : Maybe String,email : Maybe String
    }



{-| <p>Replaces all triggers for a repository. This can be used to create or delete triggers.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `triggers` __:__ `(List RepositoryTrigger)`


-}

putRepositoryTriggers :
  
    String ->
  
    (List RepositoryTrigger) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper PutRepositoryTriggersOutput)

putRepositoryTriggers repositoryName triggers =
    
    let
        requestInput = PutRepositoryTriggersInput
            
            repositoryName
            
            triggers
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> putRepositoryTriggersInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PutRepositoryTriggers"
                
                (AWS.Core.Decode.ResultDecoder "PutRepositoryTriggersOutput" putRepositoryTriggersOutputDecoder)
                
            )





{-| <p>Adds or updates tags for a resource in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a> in the AWS CodeCommit User Guide.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tags` __:__ `(Dict String String)`


-}

tagResource :
  
    String ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

tagResource resourceArn tags =
    
    let
        requestInput = TagResourceInput
            
            resourceArn
            
            tags
            
        
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
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Tests the functionality of repository triggers by sending information to the trigger target. If real data is available in the repository, the test will send data from the last commit. If no data is available, sample data will be generated.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `triggers` __:__ `(List RepositoryTrigger)`


-}

testRepositoryTriggers :
  
    String ->
  
    (List RepositoryTrigger) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TestRepositoryTriggersOutput)

testRepositoryTriggers repositoryName triggers =
    
    let
        requestInput = TestRepositoryTriggersInput
            
            repositoryName
            
            triggers
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> testRepositoryTriggersInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TestRepositoryTriggers"
                
                (AWS.Core.Decode.ResultDecoder "TestRepositoryTriggersOutput" testRepositoryTriggersOutputDecoder)
                
            )





{-| <p>Removes tags for a resource in AWS CodeCommit. For a list of valid resources in AWS CodeCommit, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a> in the AWS CodeCommit User Guide.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

untagResource :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

untagResource resourceArn tagKeys =
    
    let
        requestInput = UntagResourceInput
            
            resourceArn
            
            tagKeys
            
        
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
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Replaces the contents of a comment.</p>

__Required Parameters__

* `commentId` __:__ `String`
* `content` __:__ `String`


-}

updateComment :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateCommentOutput)

updateComment commentId content =
    
    let
        requestInput = UpdateCommentInput
            
            commentId
            
            content
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateCommentInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateComment"
                
                (AWS.Core.Decode.ResultDecoder "UpdateCommentOutput" updateCommentOutputDecoder)
                
            )





{-| <p>Sets or changes the default branch name for the specified repository.</p> <note> <p>If you use this operation to change the default branch name to the current default branch name, a success message is returned even though the default branch did not change.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `defaultBranchName` __:__ `String`


-}

updateDefaultBranch :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateDefaultBranch repositoryName defaultBranchName =
    
    let
        requestInput = UpdateDefaultBranchInput
            
            repositoryName
            
            defaultBranchName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateDefaultBranchInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateDefaultBranch"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Replaces the contents of the description of a pull request.</p>

__Required Parameters__

* `pullRequestId` __:__ `String`
* `description` __:__ `String`


-}

updatePullRequestDescription :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdatePullRequestDescriptionOutput)

updatePullRequestDescription pullRequestId description =
    
    let
        requestInput = UpdatePullRequestDescriptionInput
            
            pullRequestId
            
            description
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updatePullRequestDescriptionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdatePullRequestDescription"
                
                (AWS.Core.Decode.ResultDecoder "UpdatePullRequestDescriptionOutput" updatePullRequestDescriptionOutputDecoder)
                
            )





{-| <p>Updates the status of a pull request. </p>

__Required Parameters__

* `pullRequestId` __:__ `String`
* `pullRequestStatus` __:__ `PullRequestStatusEnum`


-}

updatePullRequestStatus :
  
    String ->
  
    PullRequestStatusEnum ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdatePullRequestStatusOutput)

updatePullRequestStatus pullRequestId pullRequestStatus =
    
    let
        requestInput = UpdatePullRequestStatusInput
            
            pullRequestId
            
            pullRequestStatus
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updatePullRequestStatusInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdatePullRequestStatus"
                
                (AWS.Core.Decode.ResultDecoder "UpdatePullRequestStatusOutput" updatePullRequestStatusOutputDecoder)
                
            )





{-| <p>Replaces the title of a pull request.</p>

__Required Parameters__

* `pullRequestId` __:__ `String`
* `title` __:__ `String`


-}

updatePullRequestTitle :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdatePullRequestTitleOutput)

updatePullRequestTitle pullRequestId title =
    
    let
        requestInput = UpdatePullRequestTitleInput
            
            pullRequestId
            
            title
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updatePullRequestTitleInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdatePullRequestTitle"
                
                (AWS.Core.Decode.ResultDecoder "UpdatePullRequestTitleOutput" updatePullRequestTitleOutputDecoder)
                
            )





{-| <p>Sets or changes the comment or description for a repository.</p> <note> <p>The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`


-}

updateRepositoryDescription :
  
    String ->
  
  
    ( UpdateRepositoryDescriptionOptions -> UpdateRepositoryDescriptionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateRepositoryDescription repositoryName setOptions =
    
    let
        requestInput = UpdateRepositoryDescriptionInput
            
            repositoryName
            
            options.repositoryDescription
            
        
        options = setOptions (UpdateRepositoryDescriptionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateRepositoryDescriptionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateRepositoryDescription"
                
                (AWS.Core.Decode.FixedResult ())
                
            )



{-| Options for a updateRepositoryDescription request
-}
type alias UpdateRepositoryDescriptionOptions =
    {
    repositoryDescription : Maybe String
    }



{-| <p>Renames a repository. The repository name must be unique across the calling AWS account. In addition, repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. The suffix ".git" is prohibited. For a full description of the limits on repository names, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Limits</a> in the AWS CodeCommit User Guide.</p>

__Required Parameters__

* `oldName` __:__ `String`
* `newName` __:__ `String`


-}

updateRepositoryName :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

updateRepositoryName oldName newName =
    
    let
        requestInput = UpdateRepositoryNameInput
            
            oldName
            
            newName
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateRepositoryNameInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateRepositoryName"
                
                (AWS.Core.Decode.FixedResult ())
                
            )






{-| <p>Information about errors in a BatchDescribeMergeConflicts operation.</p>
-}
type alias BatchDescribeMergeConflictsError =
    { filePath : String
    , exceptionName : String
    , message : String
    }



batchDescribeMergeConflictsErrorDecoder : JD.Decoder BatchDescribeMergeConflictsError
batchDescribeMergeConflictsErrorDecoder =
    JD.succeed BatchDescribeMergeConflictsError
        
        |> JDP.custom (AWS.Core.Decode.required
            ["filePath", "FilePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["exceptionName", "ExceptionName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["message", "Message"]
            JD.string
        )
        




batchDescribeMergeConflictsErrorToString : BatchDescribeMergeConflictsError -> String -- List (String, String)
batchDescribeMergeConflictsErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "filePath" "" -- val.filePath
        
    --     |> Dict.insert
    --         "exceptionName" "" -- val.exceptionName
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchDescribeMergeConflic
-}
type alias BatchDescribeMergeConflictsOutput =
    { conflicts : (List Conflict)
    , nextToken : Maybe String
    , errors : Maybe (List BatchDescribeMergeConflictsError)
    , destinationCommitId : String
    , sourceCommitId : String
    , baseCommitId : Maybe String
    }



batchDescribeMergeConflictsOutputDecoder : JD.Decoder BatchDescribeMergeConflictsOutput
batchDescribeMergeConflictsOutputDecoder =
    JD.succeed BatchDescribeMergeConflictsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["conflicts", "Conflicts"]
            (JD.list conflictDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["errors", "Errors"]
            (JD.list batchDescribeMergeConflictsErrorDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["destinationCommitId", "DestinationCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["sourceCommitId", "SourceCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["baseCommitId", "BaseCommitId"]
            JD.string
        )
        




batchDescribeMergeConflictsOutputToString : BatchDescribeMergeConflictsOutput -> String -- List (String, String)
batchDescribeMergeConflictsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "conflicts" "" -- val.conflicts
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "errors" "" -- val.errors
        
    --     |> Dict.insert
    --         "destinationCommitId" "" -- val.destinationCommitId
        
    --     |> Dict.insert
    --         "sourceCommitId" "" -- val.sourceCommitId
        
    --     |> Dict.insert
    --         "baseCommitId" "" -- val.baseCommitId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchGetRepositori
-}
type alias BatchGetRepositoriesOutput =
    { repositories : Maybe (List RepositoryMetadata)
    , repositoriesNotFound : Maybe (List String)
    }



batchGetRepositoriesOutputDecoder : JD.Decoder BatchGetRepositoriesOutput
batchGetRepositoriesOutputDecoder =
    JD.succeed BatchGetRepositoriesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositories", "Repositories"]
            (JD.list repositoryMetadataDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoriesNotFound", "RepositoriesNotFound"]
            (JD.list JD.string)
        )
        




batchGetRepositoriesOutputToString : BatchGetRepositoriesOutput -> String -- List (String, String)
batchGetRepositoriesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositories" "" -- val.repositories
        
    --     |> Dict.insert
    --         "repositoriesNotFound" "" -- val.repositoriesNotFound
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about a specific Git blob object.</p>
-}
type alias BlobMetadata =
    { blobId : Maybe String
    , path : Maybe String
    , mode : Maybe String
    }



blobMetadataDecoder : JD.Decoder BlobMetadata
blobMetadataDecoder =
    JD.succeed BlobMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["blobId", "BlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["path", "Path"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mode", "Mode"]
            JD.string
        )
        




blobMetadataToString : BlobMetadata -> String -- List (String, String)
blobMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "blobId" "" -- val.blobId
        
    --     |> Dict.insert
    --         "path" "" -- val.path
        
    --     |> Dict.insert
    --         "mode" "" -- val.mode
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about a branch.</p>
-}
type alias BranchInfo =
    { branchName : Maybe String
    , commitId : Maybe String
    }



branchInfoDecoder : JD.Decoder BranchInfo
branchInfoDecoder =
    JD.succeed BranchInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["branchName", "BranchName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["commitId", "CommitId"]
            JD.string
        )
        




branchInfoToString : BranchInfo -> String -- List (String, String)
branchInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "branchName" "" -- val.branchName
        
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
        
    --     |> Dict.toList
    ""



{-| One of

* `ChangeTypeEnum_A`
* `ChangeTypeEnum_M`
* `ChangeTypeEnum_D`

-}
type ChangeTypeEnum
    = ChangeTypeEnum_A
    | ChangeTypeEnum_M
    | ChangeTypeEnum_D



changeTypeEnumDecoder : JD.Decoder ChangeTypeEnum
changeTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "A" ->
                        JD.succeed ChangeTypeEnum_A

                    "M" ->
                        JD.succeed ChangeTypeEnum_M

                    "D" ->
                        JD.succeed ChangeTypeEnum_D


                    _ ->
                        JD.fail "bad thing"
            )




changeTypeEnumToString : ChangeTypeEnum -> String
changeTypeEnumToString val =
    case val of
        ChangeTypeEnum_A ->
            "A"

        ChangeTypeEnum_M ->
            "M"

        ChangeTypeEnum_D ->
            "D"




{-| <p>Returns information about a specific comment.</p>
-}
type alias Comment =
    { commentId : Maybe String
    , content : Maybe String
    , inReplyTo : Maybe String
    , creationDate : Maybe Posix
    , lastModifiedDate : Maybe Posix
    , authorArn : Maybe String
    , deleted : Maybe Bool
    , clientRequestToken : Maybe String
    }



commentDecoder : JD.Decoder Comment
commentDecoder =
    JD.succeed Comment
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["commentId", "CommentId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["content", "Content"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["inReplyTo", "InReplyTo"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["creationDate", "CreationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastModifiedDate", "LastModifiedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authorArn", "AuthorArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deleted", "Deleted"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["clientRequestToken", "ClientRequestToken"]
            JD.string
        )
        




commentToString : Comment -> String -- List (String, String)
commentToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commentId" "" -- val.commentId
        
    --     |> Dict.insert
    --         "content" "" -- val.content
        
    --     |> Dict.insert
    --         "inReplyTo" "" -- val.inReplyTo
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "lastModifiedDate" "" -- val.lastModifiedDate
        
    --     |> Dict.insert
    --         "authorArn" "" -- val.authorArn
        
    --     |> Dict.insert
    --         "deleted" "" -- val.deleted
        
    --     |> Dict.insert
    --         "clientRequestToken" "" -- val.clientRequestToken
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about comments on the comparison between two commits.</p>
-}
type alias CommentsForComparedCommit =
    { repositoryName : Maybe String
    , beforeCommitId : Maybe String
    , afterCommitId : Maybe String
    , beforeBlobId : Maybe String
    , afterBlobId : Maybe String
    , location : Maybe Location
    , comments : Maybe (List Comment)
    }



commentsForComparedCommitDecoder : JD.Decoder CommentsForComparedCommit
commentsForComparedCommitDecoder =
    JD.succeed CommentsForComparedCommit
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["beforeCommitId", "BeforeCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["afterCommitId", "AfterCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["beforeBlobId", "BeforeBlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["afterBlobId", "AfterBlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            locationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["comments", "Comments"]
            (JD.list commentDecoder)
        )
        




commentsForComparedCommitToString : CommentsForComparedCommit -> String -- List (String, String)
commentsForComparedCommitToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "beforeCommitId" "" -- val.beforeCommitId
        
    --     |> Dict.insert
    --         "afterCommitId" "" -- val.afterCommitId
        
    --     |> Dict.insert
    --         "beforeBlobId" "" -- val.beforeBlobId
        
    --     |> Dict.insert
    --         "afterBlobId" "" -- val.afterBlobId
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "comments" "" -- val.comments
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about comments on a pull request.</p>
-}
type alias CommentsForPullRequest =
    { pullRequestId : Maybe String
    , repositoryName : Maybe String
    , beforeCommitId : Maybe String
    , afterCommitId : Maybe String
    , beforeBlobId : Maybe String
    , afterBlobId : Maybe String
    , location : Maybe Location
    , comments : Maybe (List Comment)
    }



commentsForPullRequestDecoder : JD.Decoder CommentsForPullRequest
commentsForPullRequestDecoder =
    JD.succeed CommentsForPullRequest
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequestId", "PullRequestId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["beforeCommitId", "BeforeCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["afterCommitId", "AfterCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["beforeBlobId", "BeforeBlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["afterBlobId", "AfterBlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            locationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["comments", "Comments"]
            (JD.list commentDecoder)
        )
        




commentsForPullRequestToString : CommentsForPullRequest -> String -- List (String, String)
commentsForPullRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequestId" "" -- val.pullRequestId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "beforeCommitId" "" -- val.beforeCommitId
        
    --     |> Dict.insert
    --         "afterCommitId" "" -- val.afterCommitId
        
    --     |> Dict.insert
    --         "beforeBlobId" "" -- val.beforeBlobId
        
    --     |> Dict.insert
    --         "afterBlobId" "" -- val.afterBlobId
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "comments" "" -- val.comments
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about a specific commit.</p>
-}
type alias Commit =
    { commitId : Maybe String
    , treeId : Maybe String
    , parents : Maybe (List String)
    , message : Maybe String
    , author : Maybe UserInfo
    , committer : Maybe UserInfo
    , additionalData : Maybe String
    }



commitDecoder : JD.Decoder Commit
commitDecoder =
    JD.succeed Commit
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["commitId", "CommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["treeId", "TreeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["parents", "Parents"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["message", "Message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["author", "Author"]
            userInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["committer", "Committer"]
            userInfoDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["additionalData", "AdditionalData"]
            JD.string
        )
        




commitToString : Commit -> String -- List (String, String)
commitToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
        
    --     |> Dict.insert
    --         "treeId" "" -- val.treeId
        
    --     |> Dict.insert
    --         "parents" "" -- val.parents
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "author" "" -- val.author
        
    --     |> Dict.insert
    --         "committer" "" -- val.committer
        
    --     |> Dict.insert
    --         "additionalData" "" -- val.additionalData
        
    --     |> Dict.toList
    ""



{-| <p>Information about conflicts in a merge operation.</p>
-}
type alias Conflict =
    { conflictMetadata : Maybe ConflictMetadata
    , mergeHunks : Maybe (List MergeHunk)
    }



conflictDecoder : JD.Decoder Conflict
conflictDecoder =
    JD.succeed Conflict
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["conflictMetadata", "ConflictMetadata"]
            conflictMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mergeHunks", "MergeHunks"]
            (JD.list mergeHunkDecoder)
        )
        




conflictToString : Conflict -> String -- List (String, String)
conflictToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "conflictMetadata" "" -- val.conflictMetadata
        
    --     |> Dict.insert
    --         "mergeHunks" "" -- val.mergeHunks
        
    --     |> Dict.toList
    ""



{-| One of

* `ConflictDetailLevelTypeEnum_FILE_LEVEL`
* `ConflictDetailLevelTypeEnum_LINE_LEVEL`

-}
type ConflictDetailLevelTypeEnum
    = ConflictDetailLevelTypeEnum_FILE_LEVEL
    | ConflictDetailLevelTypeEnum_LINE_LEVEL



conflictDetailLevelTypeEnumDecoder : JD.Decoder ConflictDetailLevelTypeEnum
conflictDetailLevelTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FILE_LEVEL" ->
                        JD.succeed ConflictDetailLevelTypeEnum_FILE_LEVEL

                    "LINE_LEVEL" ->
                        JD.succeed ConflictDetailLevelTypeEnum_LINE_LEVEL


                    _ ->
                        JD.fail "bad thing"
            )




conflictDetailLevelTypeEnumToString : ConflictDetailLevelTypeEnum -> String
conflictDetailLevelTypeEnumToString val =
    case val of
        ConflictDetailLevelTypeEnum_FILE_LEVEL ->
            "FILE_LEVEL"

        ConflictDetailLevelTypeEnum_LINE_LEVEL ->
            "LINE_LEVEL"




{-| <p>Information about the metadata for a conflict in a merge operation.</p>
-}
type alias ConflictMetadata =
    { filePath : Maybe String
    , fileSizes : Maybe FileSizes
    , fileModes : Maybe FileModes
    , objectTypes : Maybe ObjectTypes
    , numberOfConflicts : Maybe Int
    , isBinaryFile : Maybe IsBinaryFile
    , contentConflict : Maybe Bool
    , fileModeConflict : Maybe Bool
    , objectTypeConflict : Maybe Bool
    , mergeOperations : Maybe MergeOperations
    }



conflictMetadataDecoder : JD.Decoder ConflictMetadata
conflictMetadataDecoder =
    JD.succeed ConflictMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filePath", "FilePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fileSizes", "FileSizes"]
            fileSizesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fileModes", "FileModes"]
            fileModesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["objectTypes", "ObjectTypes"]
            objectTypesDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["numberOfConflicts", "NumberOfConflicts"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isBinaryFile", "IsBinaryFile"]
            isBinaryFileDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["contentConflict", "ContentConflict"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fileModeConflict", "FileModeConflict"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["objectTypeConflict", "ObjectTypeConflict"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mergeOperations", "MergeOperations"]
            mergeOperationsDecoder
        )
        




conflictMetadataToString : ConflictMetadata -> String -- List (String, String)
conflictMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "filePath" "" -- val.filePath
        
    --     |> Dict.insert
    --         "fileSizes" "" -- val.fileSizes
        
    --     |> Dict.insert
    --         "fileModes" "" -- val.fileModes
        
    --     |> Dict.insert
    --         "objectTypes" "" -- val.objectTypes
        
    --     |> Dict.insert
    --         "numberOfConflicts" "" -- val.numberOfConflicts
        
    --     |> Dict.insert
    --         "isBinaryFile" "" -- val.isBinaryFile
        
    --     |> Dict.insert
    --         "contentConflict" "" -- val.contentConflict
        
    --     |> Dict.insert
    --         "fileModeConflict" "" -- val.fileModeConflict
        
    --     |> Dict.insert
    --         "objectTypeConflict" "" -- val.objectTypeConflict
        
    --     |> Dict.insert
    --         "mergeOperations" "" -- val.mergeOperations
        
    --     |> Dict.toList
    ""



{-| <p>A list of inputs to use when resolving conflicts during a merge if AUTOMERGE is chosen as the conflict resolution strategy.</p>
-}
type alias ConflictResolution =
    { replaceContents : Maybe (List ReplaceContentEntry)
    , deleteFiles : Maybe (List DeleteFileEntry)
    , setFileModes : Maybe (List SetFileModeEntry)
    }



conflictResolutionDecoder : JD.Decoder ConflictResolution
conflictResolutionDecoder =
    JD.succeed ConflictResolution
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["replaceContents", "ReplaceContents"]
            (JD.list replaceContentEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deleteFiles", "DeleteFiles"]
            (JD.list deleteFileEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["setFileModes", "SetFileModes"]
            (JD.list setFileModeEntryDecoder)
        )
        




conflictResolutionToString : ConflictResolution -> String -- List (String, String)
conflictResolutionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "replaceContents" "" -- val.replaceContents
        
    --     |> Dict.insert
    --         "deleteFiles" "" -- val.deleteFiles
        
    --     |> Dict.insert
    --         "setFileModes" "" -- val.setFileModes
        
    --     |> Dict.toList
    ""



{-| One of

* `ConflictResolutionStrategyTypeEnum_NONE`
* `ConflictResolutionStrategyTypeEnum_ACCEPT_SOURCE`
* `ConflictResolutionStrategyTypeEnum_ACCEPT_DESTINATION`
* `ConflictResolutionStrategyTypeEnum_AUTOMERGE`

-}
type ConflictResolutionStrategyTypeEnum
    = ConflictResolutionStrategyTypeEnum_NONE
    | ConflictResolutionStrategyTypeEnum_ACCEPT_SOURCE
    | ConflictResolutionStrategyTypeEnum_ACCEPT_DESTINATION
    | ConflictResolutionStrategyTypeEnum_AUTOMERGE



conflictResolutionStrategyTypeEnumDecoder : JD.Decoder ConflictResolutionStrategyTypeEnum
conflictResolutionStrategyTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed ConflictResolutionStrategyTypeEnum_NONE

                    "ACCEPT_SOURCE" ->
                        JD.succeed ConflictResolutionStrategyTypeEnum_ACCEPT_SOURCE

                    "ACCEPT_DESTINATION" ->
                        JD.succeed ConflictResolutionStrategyTypeEnum_ACCEPT_DESTINATION

                    "AUTOMERGE" ->
                        JD.succeed ConflictResolutionStrategyTypeEnum_AUTOMERGE


                    _ ->
                        JD.fail "bad thing"
            )




conflictResolutionStrategyTypeEnumToString : ConflictResolutionStrategyTypeEnum -> String
conflictResolutionStrategyTypeEnumToString val =
    case val of
        ConflictResolutionStrategyTypeEnum_NONE ->
            "NONE"

        ConflictResolutionStrategyTypeEnum_ACCEPT_SOURCE ->
            "ACCEPT_SOURCE"

        ConflictResolutionStrategyTypeEnum_ACCEPT_DESTINATION ->
            "ACCEPT_DESTINATION"

        ConflictResolutionStrategyTypeEnum_AUTOMERGE ->
            "AUTOMERGE"




{-| Type of HTTP response from createComm
-}
type alias CreateCommitOutput =
    { commitId : Maybe String
    , treeId : Maybe String
    , filesAdded : Maybe (List FileMetadata)
    , filesUpdated : Maybe (List FileMetadata)
    , filesDeleted : Maybe (List FileMetadata)
    }



createCommitOutputDecoder : JD.Decoder CreateCommitOutput
createCommitOutputDecoder =
    JD.succeed CreateCommitOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["commitId", "CommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["treeId", "TreeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filesAdded", "FilesAdded"]
            (JD.list fileMetadataDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filesUpdated", "FilesUpdated"]
            (JD.list fileMetadataDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filesDeleted", "FilesDeleted"]
            (JD.list fileMetadataDecoder)
        )
        




createCommitOutputToString : CreateCommitOutput -> String -- List (String, String)
createCommitOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
        
    --     |> Dict.insert
    --         "treeId" "" -- val.treeId
        
    --     |> Dict.insert
    --         "filesAdded" "" -- val.filesAdded
        
    --     |> Dict.insert
    --         "filesUpdated" "" -- val.filesUpdated
        
    --     |> Dict.insert
    --         "filesDeleted" "" -- val.filesDeleted
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createPullReque
-}
type alias CreatePullRequestOutput =
    { pullRequest : PullRequest
    }



createPullRequestOutputDecoder : JD.Decoder CreatePullRequestOutput
createPullRequestOutputDecoder =
    JD.succeed CreatePullRequestOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pullRequest", "PullRequest"]
            pullRequestDecoder
        )
        




createPullRequestOutputToString : CreatePullRequestOutput -> String -- List (String, String)
createPullRequestOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequest" "" -- val.pullRequest
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createReposito
-}
type alias CreateRepositoryOutput =
    { repositoryMetadata : Maybe RepositoryMetadata
    }



createRepositoryOutputDecoder : JD.Decoder CreateRepositoryOutput
createRepositoryOutputDecoder =
    JD.succeed CreateRepositoryOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryMetadata", "RepositoryMetadata"]
            repositoryMetadataDecoder
        )
        




createRepositoryOutputToString : CreateRepositoryOutput -> String -- List (String, String)
createRepositoryOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryMetadata" "" -- val.repositoryMetadata
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createUnreferencedMergeComm
-}
type alias CreateUnreferencedMergeCommitOutput =
    { commitId : Maybe String
    , treeId : Maybe String
    }



createUnreferencedMergeCommitOutputDecoder : JD.Decoder CreateUnreferencedMergeCommitOutput
createUnreferencedMergeCommitOutputDecoder =
    JD.succeed CreateUnreferencedMergeCommitOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["commitId", "CommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["treeId", "TreeId"]
            JD.string
        )
        




createUnreferencedMergeCommitOutputToString : CreateUnreferencedMergeCommitOutput -> String -- List (String, String)
createUnreferencedMergeCommitOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
        
    --     |> Dict.insert
    --         "treeId" "" -- val.treeId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteBran
-}
type alias DeleteBranchOutput =
    { deletedBranch : Maybe BranchInfo
    }



deleteBranchOutputDecoder : JD.Decoder DeleteBranchOutput
deleteBranchOutputDecoder =
    JD.succeed DeleteBranchOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["deletedBranch", "DeletedBranch"]
            branchInfoDecoder
        )
        




deleteBranchOutputToString : DeleteBranchOutput -> String -- List (String, String)
deleteBranchOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "deletedBranch" "" -- val.deletedBranch
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteCommentConte
-}
type alias DeleteCommentContentOutput =
    { comment : Maybe Comment
    }



deleteCommentContentOutputDecoder : JD.Decoder DeleteCommentContentOutput
deleteCommentContentOutputDecoder =
    JD.succeed DeleteCommentContentOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["comment", "Comment"]
            commentDecoder
        )
        




deleteCommentContentOutputToString : DeleteCommentContentOutput -> String -- List (String, String)
deleteCommentContentOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "comment" "" -- val.comment
        
    --     |> Dict.toList
    ""



{-| <p>A file that will be deleted as part of a commit.</p>
-}
type alias DeleteFileEntry =
    { filePath : String
    }



deleteFileEntryDecoder : JD.Decoder DeleteFileEntry
deleteFileEntryDecoder =
    JD.succeed DeleteFileEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["filePath", "FilePath"]
            JD.string
        )
        




deleteFileEntryToString : DeleteFileEntry -> String -- List (String, String)
deleteFileEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "filePath" "" -- val.filePath
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteFi
-}
type alias DeleteFileOutput =
    { commitId : String
    , blobId : String
    , treeId : String
    , filePath : String
    }



deleteFileOutputDecoder : JD.Decoder DeleteFileOutput
deleteFileOutputDecoder =
    JD.succeed DeleteFileOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["commitId", "CommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["blobId", "BlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["treeId", "TreeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["filePath", "FilePath"]
            JD.string
        )
        




deleteFileOutputToString : DeleteFileOutput -> String -- List (String, String)
deleteFileOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
        
    --     |> Dict.insert
    --         "blobId" "" -- val.blobId
        
    --     |> Dict.insert
    --         "treeId" "" -- val.treeId
        
    --     |> Dict.insert
    --         "filePath" "" -- val.filePath
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteReposito
-}
type alias DeleteRepositoryOutput =
    { repositoryId : Maybe String
    }



deleteRepositoryOutputDecoder : JD.Decoder DeleteRepositoryOutput
deleteRepositoryOutputDecoder =
    JD.succeed DeleteRepositoryOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryId", "RepositoryId"]
            JD.string
        )
        




deleteRepositoryOutputToString : DeleteRepositoryOutput -> String -- List (String, String)
deleteRepositoryOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryId" "" -- val.repositoryId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeMergeConflic
-}
type alias DescribeMergeConflictsOutput =
    { conflictMetadata : ConflictMetadata
    , mergeHunks : (List MergeHunk)
    , nextToken : Maybe String
    , destinationCommitId : String
    , sourceCommitId : String
    , baseCommitId : Maybe String
    }



describeMergeConflictsOutputDecoder : JD.Decoder DescribeMergeConflictsOutput
describeMergeConflictsOutputDecoder =
    JD.succeed DescribeMergeConflictsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["conflictMetadata", "ConflictMetadata"]
            conflictMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["mergeHunks", "MergeHunks"]
            (JD.list mergeHunkDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["destinationCommitId", "DestinationCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["sourceCommitId", "SourceCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["baseCommitId", "BaseCommitId"]
            JD.string
        )
        




describeMergeConflictsOutputToString : DescribeMergeConflictsOutput -> String -- List (String, String)
describeMergeConflictsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "conflictMetadata" "" -- val.conflictMetadata
        
    --     |> Dict.insert
    --         "mergeHunks" "" -- val.mergeHunks
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.insert
    --         "destinationCommitId" "" -- val.destinationCommitId
        
    --     |> Dict.insert
    --         "sourceCommitId" "" -- val.sourceCommitId
        
    --     |> Dict.insert
    --         "baseCommitId" "" -- val.baseCommitId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describePullRequestEven
-}
type alias DescribePullRequestEventsOutput =
    { pullRequestEvents : (List PullRequestEvent)
    , nextToken : Maybe String
    }



describePullRequestEventsOutputDecoder : JD.Decoder DescribePullRequestEventsOutput
describePullRequestEventsOutputDecoder =
    JD.succeed DescribePullRequestEventsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pullRequestEvents", "PullRequestEvents"]
            (JD.list pullRequestEventDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




describePullRequestEventsOutputToString : DescribePullRequestEventsOutput -> String -- List (String, String)
describePullRequestEventsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequestEvents" "" -- val.pullRequestEvents
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about a set of differences for a commit specifier.</p>
-}
type alias Difference =
    { beforeBlob : Maybe BlobMetadata
    , afterBlob : Maybe BlobMetadata
    , changeType : Maybe ChangeTypeEnum
    }



differenceDecoder : JD.Decoder Difference
differenceDecoder =
    JD.succeed Difference
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["beforeBlob", "BeforeBlob"]
            blobMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["afterBlob", "AfterBlob"]
            blobMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["changeType", "ChangeType"]
            changeTypeEnumDecoder
        )
        




differenceToString : Difference -> String -- List (String, String)
differenceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "beforeBlob" "" -- val.beforeBlob
        
    --     |> Dict.insert
    --         "afterBlob" "" -- val.afterBlob
        
    --     |> Dict.insert
    --         "changeType" "" -- val.changeType
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about a file in a repository.</p>
-}
type alias File =
    { blobId : Maybe String
    , absolutePath : Maybe String
    , relativePath : Maybe String
    , fileMode : Maybe FileModeTypeEnum
    }



fileDecoder : JD.Decoder File
fileDecoder =
    JD.succeed File
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["blobId", "BlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["absolutePath", "AbsolutePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relativePath", "RelativePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fileMode", "FileMode"]
            fileModeTypeEnumDecoder
        )
        




fileToString : File -> String -- List (String, String)
fileToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "blobId" "" -- val.blobId
        
    --     |> Dict.insert
    --         "absolutePath" "" -- val.absolutePath
        
    --     |> Dict.insert
    --         "relativePath" "" -- val.relativePath
        
    --     |> Dict.insert
    --         "fileMode" "" -- val.fileMode
        
    --     |> Dict.toList
    ""



{-| <p>A file that will be added, updated, or deleted as part of a commit.</p>
-}
type alias FileMetadata =
    { absolutePath : Maybe String
    , blobId : Maybe String
    , fileMode : Maybe FileModeTypeEnum
    }



fileMetadataDecoder : JD.Decoder FileMetadata
fileMetadataDecoder =
    JD.succeed FileMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["absolutePath", "AbsolutePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["blobId", "BlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fileMode", "FileMode"]
            fileModeTypeEnumDecoder
        )
        




fileMetadataToString : FileMetadata -> String -- List (String, String)
fileMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "absolutePath" "" -- val.absolutePath
        
    --     |> Dict.insert
    --         "blobId" "" -- val.blobId
        
    --     |> Dict.insert
    --         "fileMode" "" -- val.fileMode
        
    --     |> Dict.toList
    ""



{-| One of

* `FileModeTypeEnum_EXECUTABLE`
* `FileModeTypeEnum_NORMAL`
* `FileModeTypeEnum_SYMLINK`

-}
type FileModeTypeEnum
    = FileModeTypeEnum_EXECUTABLE
    | FileModeTypeEnum_NORMAL
    | FileModeTypeEnum_SYMLINK



fileModeTypeEnumDecoder : JD.Decoder FileModeTypeEnum
fileModeTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EXECUTABLE" ->
                        JD.succeed FileModeTypeEnum_EXECUTABLE

                    "NORMAL" ->
                        JD.succeed FileModeTypeEnum_NORMAL

                    "SYMLINK" ->
                        JD.succeed FileModeTypeEnum_SYMLINK


                    _ ->
                        JD.fail "bad thing"
            )




fileModeTypeEnumToString : FileModeTypeEnum -> String
fileModeTypeEnumToString val =
    case val of
        FileModeTypeEnum_EXECUTABLE ->
            "EXECUTABLE"

        FileModeTypeEnum_NORMAL ->
            "NORMAL"

        FileModeTypeEnum_SYMLINK ->
            "SYMLINK"




{-| <p>Information about file modes in a merge or pull request.</p>
-}
type alias FileModes =
    { source : Maybe FileModeTypeEnum
    , destination : Maybe FileModeTypeEnum
    , base : Maybe FileModeTypeEnum
    }



fileModesDecoder : JD.Decoder FileModes
fileModesDecoder =
    JD.succeed FileModes
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["source", "Source"]
            fileModeTypeEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destination", "Destination"]
            fileModeTypeEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["base", "Base"]
            fileModeTypeEnumDecoder
        )
        




fileModesToString : FileModes -> String -- List (String, String)
fileModesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "destination" "" -- val.destination
        
    --     |> Dict.insert
    --         "base" "" -- val.base
        
    --     |> Dict.toList
    ""



{-| <p>Information about the size of files in a merge or pull request.</p>
-}
type alias FileSizes =
    { source : Maybe Int
    , destination : Maybe Int
    , base : Maybe Int
    }



fileSizesDecoder : JD.Decoder FileSizes
fileSizesDecoder =
    JD.succeed FileSizes
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["source", "Source"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destination", "Destination"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["base", "Base"]
            JD.int
        )
        




fileSizesToString : FileSizes -> String -- List (String, String)
fileSizesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "destination" "" -- val.destination
        
    --     |> Dict.insert
    --         "base" "" -- val.base
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about a folder in a repository.</p>
-}
type alias Folder =
    { treeId : Maybe String
    , absolutePath : Maybe String
    , relativePath : Maybe String
    }



folderDecoder : JD.Decoder Folder
folderDecoder =
    JD.succeed Folder
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["treeId", "TreeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["absolutePath", "AbsolutePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relativePath", "RelativePath"]
            JD.string
        )
        




folderToString : Folder -> String -- List (String, String)
folderToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "treeId" "" -- val.treeId
        
    --     |> Dict.insert
    --         "absolutePath" "" -- val.absolutePath
        
    --     |> Dict.insert
    --         "relativePath" "" -- val.relativePath
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getBl
-}
type alias GetBlobOutput =
    { content : String
    }



getBlobOutputDecoder : JD.Decoder GetBlobOutput
getBlobOutputDecoder =
    JD.succeed GetBlobOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["content", "Content"]
            JD.string
        )
        




getBlobOutputToString : GetBlobOutput -> String -- List (String, String)
getBlobOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "content" "" -- val.content
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getBran
-}
type alias GetBranchOutput =
    { branch : Maybe BranchInfo
    }



getBranchOutputDecoder : JD.Decoder GetBranchOutput
getBranchOutputDecoder =
    JD.succeed GetBranchOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["branch", "Branch"]
            branchInfoDecoder
        )
        




getBranchOutputToString : GetBranchOutput -> String -- List (String, String)
getBranchOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "branch" "" -- val.branch
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getComme
-}
type alias GetCommentOutput =
    { comment : Maybe Comment
    }



getCommentOutputDecoder : JD.Decoder GetCommentOutput
getCommentOutputDecoder =
    JD.succeed GetCommentOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["comment", "Comment"]
            commentDecoder
        )
        




getCommentOutputToString : GetCommentOutput -> String -- List (String, String)
getCommentOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "comment" "" -- val.comment
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getCommentsForComparedComm
-}
type alias GetCommentsForComparedCommitOutput =
    { commentsForComparedCommitData : Maybe (List CommentsForComparedCommit)
    , nextToken : Maybe String
    }



getCommentsForComparedCommitOutputDecoder : JD.Decoder GetCommentsForComparedCommitOutput
getCommentsForComparedCommitOutputDecoder =
    JD.succeed GetCommentsForComparedCommitOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["commentsForComparedCommitData", "CommentsForComparedCommitData"]
            (JD.list commentsForComparedCommitDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




getCommentsForComparedCommitOutputToString : GetCommentsForComparedCommitOutput -> String -- List (String, String)
getCommentsForComparedCommitOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commentsForComparedCommitData" "" -- val.commentsForComparedCommitData
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getCommentsForPullReque
-}
type alias GetCommentsForPullRequestOutput =
    { commentsForPullRequestData : Maybe (List CommentsForPullRequest)
    , nextToken : Maybe String
    }



getCommentsForPullRequestOutputDecoder : JD.Decoder GetCommentsForPullRequestOutput
getCommentsForPullRequestOutputDecoder =
    JD.succeed GetCommentsForPullRequestOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["commentsForPullRequestData", "CommentsForPullRequestData"]
            (JD.list commentsForPullRequestDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




getCommentsForPullRequestOutputToString : GetCommentsForPullRequestOutput -> String -- List (String, String)
getCommentsForPullRequestOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commentsForPullRequestData" "" -- val.commentsForPullRequestData
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getComm
-}
type alias GetCommitOutput =
    { commit : Commit
    }



getCommitOutputDecoder : JD.Decoder GetCommitOutput
getCommitOutputDecoder =
    JD.succeed GetCommitOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["commit", "Commit"]
            commitDecoder
        )
        




getCommitOutputToString : GetCommitOutput -> String -- List (String, String)
getCommitOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commit" "" -- val.commit
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getDifferenc
-}
type alias GetDifferencesOutput =
    { differences : Maybe (List Difference)
    , nextToken : Maybe String
    }



getDifferencesOutputDecoder : JD.Decoder GetDifferencesOutput
getDifferencesOutputDecoder =
    JD.succeed GetDifferencesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["differences", "Differences"]
            (JD.list differenceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextToken", "nextToken"]
            JD.string
        )
        




getDifferencesOutputToString : GetDifferencesOutput -> String -- List (String, String)
getDifferencesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "differences" "" -- val.differences
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getFi
-}
type alias GetFileOutput =
    { commitId : String
    , blobId : String
    , filePath : String
    , fileMode : FileModeTypeEnum
    , fileSize : Int
    , fileContent : String
    }



getFileOutputDecoder : JD.Decoder GetFileOutput
getFileOutputDecoder =
    JD.succeed GetFileOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["commitId", "CommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["blobId", "BlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["filePath", "FilePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["fileMode", "FileMode"]
            fileModeTypeEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["fileSize", "FileSize"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["fileContent", "FileContent"]
            JD.string
        )
        




getFileOutputToString : GetFileOutput -> String -- List (String, String)
getFileOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
        
    --     |> Dict.insert
    --         "blobId" "" -- val.blobId
        
    --     |> Dict.insert
    --         "filePath" "" -- val.filePath
        
    --     |> Dict.insert
    --         "fileMode" "" -- val.fileMode
        
    --     |> Dict.insert
    --         "fileSize" "" -- val.fileSize
        
    --     |> Dict.insert
    --         "fileContent" "" -- val.fileContent
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getFold
-}
type alias GetFolderOutput =
    { commitId : String
    , folderPath : String
    , treeId : Maybe String
    , subFolders : Maybe (List Folder)
    , files : Maybe (List File)
    , symbolicLinks : Maybe (List SymbolicLink)
    , subModules : Maybe (List SubModule)
    }



getFolderOutputDecoder : JD.Decoder GetFolderOutput
getFolderOutputDecoder =
    JD.succeed GetFolderOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["commitId", "CommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["folderPath", "FolderPath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["treeId", "TreeId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["subFolders", "SubFolders"]
            (JD.list folderDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["files", "Files"]
            (JD.list fileDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["symbolicLinks", "SymbolicLinks"]
            (JD.list symbolicLinkDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["subModules", "SubModules"]
            (JD.list subModuleDecoder)
        )
        




getFolderOutputToString : GetFolderOutput -> String -- List (String, String)
getFolderOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
        
    --     |> Dict.insert
    --         "folderPath" "" -- val.folderPath
        
    --     |> Dict.insert
    --         "treeId" "" -- val.treeId
        
    --     |> Dict.insert
    --         "subFolders" "" -- val.subFolders
        
    --     |> Dict.insert
    --         "files" "" -- val.files
        
    --     |> Dict.insert
    --         "symbolicLinks" "" -- val.symbolicLinks
        
    --     |> Dict.insert
    --         "subModules" "" -- val.subModules
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getMergeComm
-}
type alias GetMergeCommitOutput =
    { sourceCommitId : Maybe String
    , destinationCommitId : Maybe String
    , baseCommitId : Maybe String
    , mergedCommitId : Maybe String
    }



getMergeCommitOutputDecoder : JD.Decoder GetMergeCommitOutput
getMergeCommitOutputDecoder =
    JD.succeed GetMergeCommitOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sourceCommitId", "SourceCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinationCommitId", "DestinationCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["baseCommitId", "BaseCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mergedCommitId", "MergedCommitId"]
            JD.string
        )
        




getMergeCommitOutputToString : GetMergeCommitOutput -> String -- List (String, String)
getMergeCommitOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "sourceCommitId" "" -- val.sourceCommitId
        
    --     |> Dict.insert
    --         "destinationCommitId" "" -- val.destinationCommitId
        
    --     |> Dict.insert
    --         "baseCommitId" "" -- val.baseCommitId
        
    --     |> Dict.insert
    --         "mergedCommitId" "" -- val.mergedCommitId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getMergeConflic
-}
type alias GetMergeConflictsOutput =
    { mergeable : Bool
    , destinationCommitId : String
    , sourceCommitId : String
    , baseCommitId : Maybe String
    , conflictMetadataList : (List ConflictMetadata)
    , nextToken : Maybe String
    }



getMergeConflictsOutputDecoder : JD.Decoder GetMergeConflictsOutput
getMergeConflictsOutputDecoder =
    JD.succeed GetMergeConflictsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["mergeable", "Mergeable"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["destinationCommitId", "DestinationCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["sourceCommitId", "SourceCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["baseCommitId", "BaseCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["conflictMetadataList", "ConflictMetadataList"]
            (JD.list conflictMetadataDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




getMergeConflictsOutputToString : GetMergeConflictsOutput -> String -- List (String, String)
getMergeConflictsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "mergeable" "" -- val.mergeable
        
    --     |> Dict.insert
    --         "destinationCommitId" "" -- val.destinationCommitId
        
    --     |> Dict.insert
    --         "sourceCommitId" "" -- val.sourceCommitId
        
    --     |> Dict.insert
    --         "baseCommitId" "" -- val.baseCommitId
        
    --     |> Dict.insert
    --         "conflictMetadataList" "" -- val.conflictMetadataList
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getMergeOptio
-}
type alias GetMergeOptionsOutput =
    { mergeOptions : (List MergeOptionTypeEnum)
    , sourceCommitId : String
    , destinationCommitId : String
    , baseCommitId : String
    }



getMergeOptionsOutputDecoder : JD.Decoder GetMergeOptionsOutput
getMergeOptionsOutputDecoder =
    JD.succeed GetMergeOptionsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["mergeOptions", "MergeOptions"]
            (JD.list mergeOptionTypeEnumDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["sourceCommitId", "SourceCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["destinationCommitId", "DestinationCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["baseCommitId", "BaseCommitId"]
            JD.string
        )
        




getMergeOptionsOutputToString : GetMergeOptionsOutput -> String -- List (String, String)
getMergeOptionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "mergeOptions" "" -- val.mergeOptions
        
    --     |> Dict.insert
    --         "sourceCommitId" "" -- val.sourceCommitId
        
    --     |> Dict.insert
    --         "destinationCommitId" "" -- val.destinationCommitId
        
    --     |> Dict.insert
    --         "baseCommitId" "" -- val.baseCommitId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getPullReque
-}
type alias GetPullRequestOutput =
    { pullRequest : PullRequest
    }



getPullRequestOutputDecoder : JD.Decoder GetPullRequestOutput
getPullRequestOutputDecoder =
    JD.succeed GetPullRequestOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pullRequest", "PullRequest"]
            pullRequestDecoder
        )
        




getPullRequestOutputToString : GetPullRequestOutput -> String -- List (String, String)
getPullRequestOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequest" "" -- val.pullRequest
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getReposito
-}
type alias GetRepositoryOutput =
    { repositoryMetadata : Maybe RepositoryMetadata
    }



getRepositoryOutputDecoder : JD.Decoder GetRepositoryOutput
getRepositoryOutputDecoder =
    JD.succeed GetRepositoryOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryMetadata", "RepositoryMetadata"]
            repositoryMetadataDecoder
        )
        




getRepositoryOutputToString : GetRepositoryOutput -> String -- List (String, String)
getRepositoryOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryMetadata" "" -- val.repositoryMetadata
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getRepositoryTrigge
-}
type alias GetRepositoryTriggersOutput =
    { configurationId : Maybe String
    , triggers : Maybe (List RepositoryTrigger)
    }



getRepositoryTriggersOutputDecoder : JD.Decoder GetRepositoryTriggersOutput
getRepositoryTriggersOutputDecoder =
    JD.succeed GetRepositoryTriggersOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["configurationId", "ConfigurationId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["triggers", "Triggers"]
            (JD.list repositoryTriggerDecoder)
        )
        




getRepositoryTriggersOutputToString : GetRepositoryTriggersOutput -> String -- List (String, String)
getRepositoryTriggersOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "configurationId" "" -- val.configurationId
        
    --     |> Dict.insert
    --         "triggers" "" -- val.triggers
        
    --     |> Dict.toList
    ""



{-| <p>Information about whether a file is binary or textual in a merge or pull request operation.</p>
-}
type alias IsBinaryFile =
    { source : Maybe Bool
    , destination : Maybe Bool
    , base : Maybe Bool
    }



isBinaryFileDecoder : JD.Decoder IsBinaryFile
isBinaryFileDecoder =
    JD.succeed IsBinaryFile
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["source", "Source"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destination", "Destination"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["base", "Base"]
            JD.bool
        )
        




isBinaryFileToString : IsBinaryFile -> String -- List (String, String)
isBinaryFileToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "destination" "" -- val.destination
        
    --     |> Dict.insert
    --         "base" "" -- val.base
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listBranch
-}
type alias ListBranchesOutput =
    { branches : Maybe (List String)
    , nextToken : Maybe String
    }



listBranchesOutputDecoder : JD.Decoder ListBranchesOutput
listBranchesOutputDecoder =
    JD.succeed ListBranchesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["branches", "Branches"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listBranchesOutputToString : ListBranchesOutput -> String -- List (String, String)
listBranchesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "branches" "" -- val.branches
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPullReques
-}
type alias ListPullRequestsOutput =
    { pullRequestIds : (List String)
    , nextToken : Maybe String
    }



listPullRequestsOutputDecoder : JD.Decoder ListPullRequestsOutput
listPullRequestsOutputDecoder =
    JD.succeed ListPullRequestsOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pullRequestIds", "PullRequestIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listPullRequestsOutputToString : ListPullRequestsOutput -> String -- List (String, String)
listPullRequestsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequestIds" "" -- val.pullRequestIds
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listRepositori
-}
type alias ListRepositoriesOutput =
    { repositories : Maybe (List RepositoryNameIdPair)
    , nextToken : Maybe String
    }



listRepositoriesOutputDecoder : JD.Decoder ListRepositoriesOutput
listRepositoriesOutputDecoder =
    JD.succeed ListRepositoriesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositories", "Repositories"]
            (JD.list repositoryNameIdPairDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listRepositoriesOutputToString : ListRepositoriesOutput -> String -- List (String, String)
listRepositoriesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositories" "" -- val.repositories
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagsForResour
-}
type alias ListTagsForResourceOutput =
    { tags : Maybe (Dict String String)
    , nextToken : Maybe String
    }



listTagsForResourceOutputDecoder : JD.Decoder ListTagsForResourceOutput
listTagsForResourceOutputDecoder =
    JD.succeed ListTagsForResourceOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["tags", "Tags"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["nextToken", "NextToken"]
            JD.string
        )
        




listTagsForResourceOutputToString : ListTagsForResourceOutput -> String -- List (String, String)
listTagsForResourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "nextToken" "" -- val.nextToken
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about the location of a change or comment in the comparison between two commits or a pull request.</p>
-}
type alias Location =
    { filePath : Maybe String
    , filePosition : Maybe Int
    , relativeFileVersion : Maybe RelativeFileVersionEnum
    }



locationDecoder : JD.Decoder Location
locationDecoder =
    JD.succeed Location
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filePath", "FilePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["filePosition", "FilePosition"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relativeFileVersion", "RelativeFileVersion"]
            relativeFileVersionEnumDecoder
        )
        




locationToString : Location -> String -- List (String, String)
locationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "filePath" "" -- val.filePath
        
    --     |> Dict.insert
    --         "filePosition" "" -- val.filePosition
        
    --     |> Dict.insert
    --         "relativeFileVersion" "" -- val.relativeFileVersion
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from mergeBranchesByFastForwa
-}
type alias MergeBranchesByFastForwardOutput =
    { commitId : Maybe String
    , treeId : Maybe String
    }



mergeBranchesByFastForwardOutputDecoder : JD.Decoder MergeBranchesByFastForwardOutput
mergeBranchesByFastForwardOutputDecoder =
    JD.succeed MergeBranchesByFastForwardOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["commitId", "CommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["treeId", "TreeId"]
            JD.string
        )
        




mergeBranchesByFastForwardOutputToString : MergeBranchesByFastForwardOutput -> String -- List (String, String)
mergeBranchesByFastForwardOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
        
    --     |> Dict.insert
    --         "treeId" "" -- val.treeId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from mergeBranchesBySqua
-}
type alias MergeBranchesBySquashOutput =
    { commitId : Maybe String
    , treeId : Maybe String
    }



mergeBranchesBySquashOutputDecoder : JD.Decoder MergeBranchesBySquashOutput
mergeBranchesBySquashOutputDecoder =
    JD.succeed MergeBranchesBySquashOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["commitId", "CommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["treeId", "TreeId"]
            JD.string
        )
        




mergeBranchesBySquashOutputToString : MergeBranchesBySquashOutput -> String -- List (String, String)
mergeBranchesBySquashOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
        
    --     |> Dict.insert
    --         "treeId" "" -- val.treeId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from mergeBranchesByThreeW
-}
type alias MergeBranchesByThreeWayOutput =
    { commitId : Maybe String
    , treeId : Maybe String
    }



mergeBranchesByThreeWayOutputDecoder : JD.Decoder MergeBranchesByThreeWayOutput
mergeBranchesByThreeWayOutputDecoder =
    JD.succeed MergeBranchesByThreeWayOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["commitId", "CommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["treeId", "TreeId"]
            JD.string
        )
        




mergeBranchesByThreeWayOutputToString : MergeBranchesByThreeWayOutput -> String -- List (String, String)
mergeBranchesByThreeWayOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
        
    --     |> Dict.insert
    --         "treeId" "" -- val.treeId
        
    --     |> Dict.toList
    ""



{-| <p>Information about merge hunks in a merge or pull request operation.</p>
-}
type alias MergeHunk =
    { isConflict : Maybe Bool
    , source : Maybe MergeHunkDetail
    , destination : Maybe MergeHunkDetail
    , base : Maybe MergeHunkDetail
    }



mergeHunkDecoder : JD.Decoder MergeHunk
mergeHunkDecoder =
    JD.succeed MergeHunk
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isConflict", "IsConflict"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["source", "Source"]
            mergeHunkDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destination", "Destination"]
            mergeHunkDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["base", "Base"]
            mergeHunkDetailDecoder
        )
        




mergeHunkToString : MergeHunk -> String -- List (String, String)
mergeHunkToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "isConflict" "" -- val.isConflict
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "destination" "" -- val.destination
        
    --     |> Dict.insert
    --         "base" "" -- val.base
        
    --     |> Dict.toList
    ""



{-| <p>Information about the details of a merge hunk that contains a conflict in a merge or pull request operation.</p>
-}
type alias MergeHunkDetail =
    { startLine : Maybe Int
    , endLine : Maybe Int
    , hunkContent : Maybe String
    }



mergeHunkDetailDecoder : JD.Decoder MergeHunkDetail
mergeHunkDetailDecoder =
    JD.succeed MergeHunkDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["startLine", "StartLine"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["endLine", "EndLine"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["hunkContent", "HunkContent"]
            JD.string
        )
        




mergeHunkDetailToString : MergeHunkDetail -> String -- List (String, String)
mergeHunkDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "startLine" "" -- val.startLine
        
    --     |> Dict.insert
    --         "endLine" "" -- val.endLine
        
    --     |> Dict.insert
    --         "hunkContent" "" -- val.hunkContent
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about a merge or potential merge between a source reference and a destination reference in a pull request.</p>
-}
type alias MergeMetadata =
    { isMerged : Maybe Bool
    , mergedBy : Maybe String
    , mergeCommitId : Maybe String
    , mergeOption : Maybe MergeOptionTypeEnum
    }



mergeMetadataDecoder : JD.Decoder MergeMetadata
mergeMetadataDecoder =
    JD.succeed MergeMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isMerged", "IsMerged"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mergedBy", "MergedBy"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mergeCommitId", "MergeCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mergeOption", "MergeOption"]
            mergeOptionTypeEnumDecoder
        )
        




mergeMetadataToString : MergeMetadata -> String -- List (String, String)
mergeMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "isMerged" "" -- val.isMerged
        
    --     |> Dict.insert
    --         "mergedBy" "" -- val.mergedBy
        
    --     |> Dict.insert
    --         "mergeCommitId" "" -- val.mergeCommitId
        
    --     |> Dict.insert
    --         "mergeOption" "" -- val.mergeOption
        
    --     |> Dict.toList
    ""



{-| <p>Information about the file operation conflicts in a merge operation.</p>
-}
type alias MergeOperations =
    { source : Maybe ChangeTypeEnum
    , destination : Maybe ChangeTypeEnum
    }



mergeOperationsDecoder : JD.Decoder MergeOperations
mergeOperationsDecoder =
    JD.succeed MergeOperations
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["source", "Source"]
            changeTypeEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destination", "Destination"]
            changeTypeEnumDecoder
        )
        




mergeOperationsToString : MergeOperations -> String -- List (String, String)
mergeOperationsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "destination" "" -- val.destination
        
    --     |> Dict.toList
    ""



{-| One of

* `MergeOptionTypeEnum_FAST_FORWARD_MERGE`
* `MergeOptionTypeEnum_SQUASH_MERGE`
* `MergeOptionTypeEnum_THREE_WAY_MERGE`

-}
type MergeOptionTypeEnum
    = MergeOptionTypeEnum_FAST_FORWARD_MERGE
    | MergeOptionTypeEnum_SQUASH_MERGE
    | MergeOptionTypeEnum_THREE_WAY_MERGE



mergeOptionTypeEnumDecoder : JD.Decoder MergeOptionTypeEnum
mergeOptionTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FAST_FORWARD_MERGE" ->
                        JD.succeed MergeOptionTypeEnum_FAST_FORWARD_MERGE

                    "SQUASH_MERGE" ->
                        JD.succeed MergeOptionTypeEnum_SQUASH_MERGE

                    "THREE_WAY_MERGE" ->
                        JD.succeed MergeOptionTypeEnum_THREE_WAY_MERGE


                    _ ->
                        JD.fail "bad thing"
            )




mergeOptionTypeEnumToString : MergeOptionTypeEnum -> String
mergeOptionTypeEnumToString val =
    case val of
        MergeOptionTypeEnum_FAST_FORWARD_MERGE ->
            "FAST_FORWARD_MERGE"

        MergeOptionTypeEnum_SQUASH_MERGE ->
            "SQUASH_MERGE"

        MergeOptionTypeEnum_THREE_WAY_MERGE ->
            "THREE_WAY_MERGE"




{-| Type of HTTP response from mergePullRequestByFastForwa
-}
type alias MergePullRequestByFastForwardOutput =
    { pullRequest : Maybe PullRequest
    }



mergePullRequestByFastForwardOutputDecoder : JD.Decoder MergePullRequestByFastForwardOutput
mergePullRequestByFastForwardOutputDecoder =
    JD.succeed MergePullRequestByFastForwardOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequest", "PullRequest"]
            pullRequestDecoder
        )
        




mergePullRequestByFastForwardOutputToString : MergePullRequestByFastForwardOutput -> String -- List (String, String)
mergePullRequestByFastForwardOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequest" "" -- val.pullRequest
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from mergePullRequestBySqua
-}
type alias MergePullRequestBySquashOutput =
    { pullRequest : Maybe PullRequest
    }



mergePullRequestBySquashOutputDecoder : JD.Decoder MergePullRequestBySquashOutput
mergePullRequestBySquashOutputDecoder =
    JD.succeed MergePullRequestBySquashOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequest", "PullRequest"]
            pullRequestDecoder
        )
        




mergePullRequestBySquashOutputToString : MergePullRequestBySquashOutput -> String -- List (String, String)
mergePullRequestBySquashOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequest" "" -- val.pullRequest
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from mergePullRequestByThreeW
-}
type alias MergePullRequestByThreeWayOutput =
    { pullRequest : Maybe PullRequest
    }



mergePullRequestByThreeWayOutputDecoder : JD.Decoder MergePullRequestByThreeWayOutput
mergePullRequestByThreeWayOutputDecoder =
    JD.succeed MergePullRequestByThreeWayOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequest", "PullRequest"]
            pullRequestDecoder
        )
        




mergePullRequestByThreeWayOutputToString : MergePullRequestByThreeWayOutput -> String -- List (String, String)
mergePullRequestByThreeWayOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequest" "" -- val.pullRequest
        
    --     |> Dict.toList
    ""



{-| One of

* `ObjectTypeEnum_FILE`
* `ObjectTypeEnum_DIRECTORY`
* `ObjectTypeEnum_GIT_LINK`
* `ObjectTypeEnum_SYMBOLIC_LINK`

-}
type ObjectTypeEnum
    = ObjectTypeEnum_FILE
    | ObjectTypeEnum_DIRECTORY
    | ObjectTypeEnum_GIT_LINK
    | ObjectTypeEnum_SYMBOLIC_LINK



objectTypeEnumDecoder : JD.Decoder ObjectTypeEnum
objectTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FILE" ->
                        JD.succeed ObjectTypeEnum_FILE

                    "DIRECTORY" ->
                        JD.succeed ObjectTypeEnum_DIRECTORY

                    "GIT_LINK" ->
                        JD.succeed ObjectTypeEnum_GIT_LINK

                    "SYMBOLIC_LINK" ->
                        JD.succeed ObjectTypeEnum_SYMBOLIC_LINK


                    _ ->
                        JD.fail "bad thing"
            )




objectTypeEnumToString : ObjectTypeEnum -> String
objectTypeEnumToString val =
    case val of
        ObjectTypeEnum_FILE ->
            "FILE"

        ObjectTypeEnum_DIRECTORY ->
            "DIRECTORY"

        ObjectTypeEnum_GIT_LINK ->
            "GIT_LINK"

        ObjectTypeEnum_SYMBOLIC_LINK ->
            "SYMBOLIC_LINK"




{-| <p>Information about the type of an object in a merge operation.</p>
-}
type alias ObjectTypes =
    { source : Maybe ObjectTypeEnum
    , destination : Maybe ObjectTypeEnum
    , base : Maybe ObjectTypeEnum
    }



objectTypesDecoder : JD.Decoder ObjectTypes
objectTypesDecoder =
    JD.succeed ObjectTypes
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["source", "Source"]
            objectTypeEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destination", "Destination"]
            objectTypeEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["base", "Base"]
            objectTypeEnumDecoder
        )
        




objectTypesToString : ObjectTypes -> String -- List (String, String)
objectTypesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "source" "" -- val.source
        
    --     |> Dict.insert
    --         "destination" "" -- val.destination
        
    --     |> Dict.insert
    --         "base" "" -- val.base
        
    --     |> Dict.toList
    ""



{-| One of

* `OrderEnum_ascending`
* `OrderEnum_descending`

-}
type OrderEnum
    = OrderEnum_ascending
    | OrderEnum_descending



orderEnumDecoder : JD.Decoder OrderEnum
orderEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ascending" ->
                        JD.succeed OrderEnum_ascending

                    "descending" ->
                        JD.succeed OrderEnum_descending


                    _ ->
                        JD.fail "bad thing"
            )




orderEnumToString : OrderEnum -> String
orderEnumToString val =
    case val of
        OrderEnum_ascending ->
            "ascending"

        OrderEnum_descending ->
            "descending"




{-| Type of HTTP response from postCommentForComparedComm
-}
type alias PostCommentForComparedCommitOutput =
    { repositoryName : Maybe String
    , beforeCommitId : Maybe String
    , afterCommitId : Maybe String
    , beforeBlobId : Maybe String
    , afterBlobId : Maybe String
    , location : Maybe Location
    , comment : Maybe Comment
    }



postCommentForComparedCommitOutputDecoder : JD.Decoder PostCommentForComparedCommitOutput
postCommentForComparedCommitOutputDecoder =
    JD.succeed PostCommentForComparedCommitOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["beforeCommitId", "BeforeCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["afterCommitId", "AfterCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["beforeBlobId", "BeforeBlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["afterBlobId", "AfterBlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            locationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["comment", "Comment"]
            commentDecoder
        )
        




postCommentForComparedCommitOutputToString : PostCommentForComparedCommitOutput -> String -- List (String, String)
postCommentForComparedCommitOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "beforeCommitId" "" -- val.beforeCommitId
        
    --     |> Dict.insert
    --         "afterCommitId" "" -- val.afterCommitId
        
    --     |> Dict.insert
    --         "beforeBlobId" "" -- val.beforeBlobId
        
    --     |> Dict.insert
    --         "afterBlobId" "" -- val.afterBlobId
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "comment" "" -- val.comment
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from postCommentForPullReque
-}
type alias PostCommentForPullRequestOutput =
    { repositoryName : Maybe String
    , pullRequestId : Maybe String
    , beforeCommitId : Maybe String
    , afterCommitId : Maybe String
    , beforeBlobId : Maybe String
    , afterBlobId : Maybe String
    , location : Maybe Location
    , comment : Maybe Comment
    }



postCommentForPullRequestOutputDecoder : JD.Decoder PostCommentForPullRequestOutput
postCommentForPullRequestOutputDecoder =
    JD.succeed PostCommentForPullRequestOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequestId", "PullRequestId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["beforeCommitId", "BeforeCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["afterCommitId", "AfterCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["beforeBlobId", "BeforeBlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["afterBlobId", "AfterBlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["location", "Location"]
            locationDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["comment", "Comment"]
            commentDecoder
        )
        




postCommentForPullRequestOutputToString : PostCommentForPullRequestOutput -> String -- List (String, String)
postCommentForPullRequestOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "pullRequestId" "" -- val.pullRequestId
        
    --     |> Dict.insert
    --         "beforeCommitId" "" -- val.beforeCommitId
        
    --     |> Dict.insert
    --         "afterCommitId" "" -- val.afterCommitId
        
    --     |> Dict.insert
    --         "beforeBlobId" "" -- val.beforeBlobId
        
    --     |> Dict.insert
    --         "afterBlobId" "" -- val.afterBlobId
        
    --     |> Dict.insert
    --         "location" "" -- val.location
        
    --     |> Dict.insert
    --         "comment" "" -- val.comment
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from postCommentRep
-}
type alias PostCommentReplyOutput =
    { comment : Maybe Comment
    }



postCommentReplyOutputDecoder : JD.Decoder PostCommentReplyOutput
postCommentReplyOutputDecoder =
    JD.succeed PostCommentReplyOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["comment", "Comment"]
            commentDecoder
        )
        




postCommentReplyOutputToString : PostCommentReplyOutput -> String -- List (String, String)
postCommentReplyOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "comment" "" -- val.comment
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about a pull request.</p>
-}
type alias PullRequest =
    { pullRequestId : Maybe String
    , title : Maybe String
    , description : Maybe String
    , lastActivityDate : Maybe Posix
    , creationDate : Maybe Posix
    , pullRequestStatus : Maybe PullRequestStatusEnum
    , authorArn : Maybe String
    , pullRequestTargets : Maybe (List PullRequestTarget)
    , clientRequestToken : Maybe String
    }



pullRequestDecoder : JD.Decoder PullRequest
pullRequestDecoder =
    JD.succeed PullRequest
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequestId", "PullRequestId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["title", "Title"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["description", "Description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastActivityDate", "LastActivityDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["creationDate", "CreationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequestStatus", "PullRequestStatus"]
            pullRequestStatusEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["authorArn", "AuthorArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequestTargets", "PullRequestTargets"]
            (JD.list pullRequestTargetDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["clientRequestToken", "ClientRequestToken"]
            JD.string
        )
        




pullRequestToString : PullRequest -> String -- List (String, String)
pullRequestToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequestId" "" -- val.pullRequestId
        
    --     |> Dict.insert
    --         "title" "" -- val.title
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "lastActivityDate" "" -- val.lastActivityDate
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "pullRequestStatus" "" -- val.pullRequestStatus
        
    --     |> Dict.insert
    --         "authorArn" "" -- val.authorArn
        
    --     |> Dict.insert
    --         "pullRequestTargets" "" -- val.pullRequestTargets
        
    --     |> Dict.insert
    --         "clientRequestToken" "" -- val.clientRequestToken
        
    --     |> Dict.toList
    ""



{-| <p>Metadata about the pull request that is used when comparing the pull request source with its destination.</p>
-}
type alias PullRequestCreatedEventMetadata =
    { repositoryName : Maybe String
    , sourceCommitId : Maybe String
    , destinationCommitId : Maybe String
    , mergeBase : Maybe String
    }



pullRequestCreatedEventMetadataDecoder : JD.Decoder PullRequestCreatedEventMetadata
pullRequestCreatedEventMetadataDecoder =
    JD.succeed PullRequestCreatedEventMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sourceCommitId", "SourceCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinationCommitId", "DestinationCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mergeBase", "MergeBase"]
            JD.string
        )
        




pullRequestCreatedEventMetadataToString : PullRequestCreatedEventMetadata -> String -- List (String, String)
pullRequestCreatedEventMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "sourceCommitId" "" -- val.sourceCommitId
        
    --     |> Dict.insert
    --         "destinationCommitId" "" -- val.destinationCommitId
        
    --     |> Dict.insert
    --         "mergeBase" "" -- val.mergeBase
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about a pull request event.</p>
-}
type alias PullRequestEvent =
    { pullRequestId : Maybe String
    , eventDate : Maybe Posix
    , pullRequestEventType : Maybe PullRequestEventType
    , actorArn : Maybe String
    , pullRequestCreatedEventMetadata : Maybe PullRequestCreatedEventMetadata
    , pullRequestStatusChangedEventMetadata : Maybe PullRequestStatusChangedEventMetadata
    , pullRequestSourceReferenceUpdatedEventMetadata : Maybe PullRequestSourceReferenceUpdatedEventMetadata
    , pullRequestMergedStateChangedEventMetadata : Maybe PullRequestMergedStateChangedEventMetadata
    }



pullRequestEventDecoder : JD.Decoder PullRequestEvent
pullRequestEventDecoder =
    JD.succeed PullRequestEvent
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequestId", "PullRequestId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["eventDate", "EventDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequestEventType", "PullRequestEventType"]
            pullRequestEventTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["actorArn", "ActorArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequestCreatedEventMetadata", "PullRequestCreatedEventMetadata"]
            pullRequestCreatedEventMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequestStatusChangedEventMetadata", "PullRequestStatusChangedEventMetadata"]
            pullRequestStatusChangedEventMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequestSourceReferenceUpdatedEventMetadata", "PullRequestSourceReferenceUpdatedEventMetadata"]
            pullRequestSourceReferenceUpdatedEventMetadataDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequestMergedStateChangedEventMetadata", "PullRequestMergedStateChangedEventMetadata"]
            pullRequestMergedStateChangedEventMetadataDecoder
        )
        




pullRequestEventToString : PullRequestEvent -> String -- List (String, String)
pullRequestEventToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequestId" "" -- val.pullRequestId
        
    --     |> Dict.insert
    --         "eventDate" "" -- val.eventDate
        
    --     |> Dict.insert
    --         "pullRequestEventType" "" -- val.pullRequestEventType
        
    --     |> Dict.insert
    --         "actorArn" "" -- val.actorArn
        
    --     |> Dict.insert
    --         "pullRequestCreatedEventMetadata" "" -- val.pullRequestCreatedEventMetadata
        
    --     |> Dict.insert
    --         "pullRequestStatusChangedEventMetadata" "" -- val.pullRequestStatusChangedEventMetadata
        
    --     |> Dict.insert
    --         "pullRequestSourceReferenceUpdatedEventMetadata" "" -- val.pullRequestSourceReferenceUpdatedEventMetadata
        
    --     |> Dict.insert
    --         "pullRequestMergedStateChangedEventMetadata" "" -- val.pullRequestMergedStateChangedEventMetadata
        
    --     |> Dict.toList
    ""



{-| One of

* `PullRequestEventType_PULL_REQUEST_CREATED`
* `PullRequestEventType_PULL_REQUEST_STATUS_CHANGED`
* `PullRequestEventType_PULL_REQUEST_SOURCE_REFERENCE_UPDATED`
* `PullRequestEventType_PULL_REQUEST_MERGE_STATE_CHANGED`

-}
type PullRequestEventType
    = PullRequestEventType_PULL_REQUEST_CREATED
    | PullRequestEventType_PULL_REQUEST_STATUS_CHANGED
    | PullRequestEventType_PULL_REQUEST_SOURCE_REFERENCE_UPDATED
    | PullRequestEventType_PULL_REQUEST_MERGE_STATE_CHANGED



pullRequestEventTypeDecoder : JD.Decoder PullRequestEventType
pullRequestEventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PULL_REQUEST_CREATED" ->
                        JD.succeed PullRequestEventType_PULL_REQUEST_CREATED

                    "PULL_REQUEST_STATUS_CHANGED" ->
                        JD.succeed PullRequestEventType_PULL_REQUEST_STATUS_CHANGED

                    "PULL_REQUEST_SOURCE_REFERENCE_UPDATED" ->
                        JD.succeed PullRequestEventType_PULL_REQUEST_SOURCE_REFERENCE_UPDATED

                    "PULL_REQUEST_MERGE_STATE_CHANGED" ->
                        JD.succeed PullRequestEventType_PULL_REQUEST_MERGE_STATE_CHANGED


                    _ ->
                        JD.fail "bad thing"
            )




pullRequestEventTypeToString : PullRequestEventType -> String
pullRequestEventTypeToString val =
    case val of
        PullRequestEventType_PULL_REQUEST_CREATED ->
            "PULL_REQUEST_CREATED"

        PullRequestEventType_PULL_REQUEST_STATUS_CHANGED ->
            "PULL_REQUEST_STATUS_CHANGED"

        PullRequestEventType_PULL_REQUEST_SOURCE_REFERENCE_UPDATED ->
            "PULL_REQUEST_SOURCE_REFERENCE_UPDATED"

        PullRequestEventType_PULL_REQUEST_MERGE_STATE_CHANGED ->
            "PULL_REQUEST_MERGE_STATE_CHANGED"




{-| <p>Returns information about the change in the merge state for a pull request event. </p>
-}
type alias PullRequestMergedStateChangedEventMetadata =
    { repositoryName : Maybe String
    , destinationReference : Maybe String
    , mergeMetadata : Maybe MergeMetadata
    }



pullRequestMergedStateChangedEventMetadataDecoder : JD.Decoder PullRequestMergedStateChangedEventMetadata
pullRequestMergedStateChangedEventMetadataDecoder =
    JD.succeed PullRequestMergedStateChangedEventMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinationReference", "DestinationReference"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mergeMetadata", "MergeMetadata"]
            mergeMetadataDecoder
        )
        




pullRequestMergedStateChangedEventMetadataToString : PullRequestMergedStateChangedEventMetadata -> String -- List (String, String)
pullRequestMergedStateChangedEventMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "destinationReference" "" -- val.destinationReference
        
    --     |> Dict.insert
    --         "mergeMetadata" "" -- val.mergeMetadata
        
    --     |> Dict.toList
    ""



{-| <p>Information about an update to the source branch of a pull request.</p>
-}
type alias PullRequestSourceReferenceUpdatedEventMetadata =
    { repositoryName : Maybe String
    , beforeCommitId : Maybe String
    , afterCommitId : Maybe String
    , mergeBase : Maybe String
    }



pullRequestSourceReferenceUpdatedEventMetadataDecoder : JD.Decoder PullRequestSourceReferenceUpdatedEventMetadata
pullRequestSourceReferenceUpdatedEventMetadataDecoder =
    JD.succeed PullRequestSourceReferenceUpdatedEventMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["beforeCommitId", "BeforeCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["afterCommitId", "AfterCommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mergeBase", "MergeBase"]
            JD.string
        )
        




pullRequestSourceReferenceUpdatedEventMetadataToString : PullRequestSourceReferenceUpdatedEventMetadata -> String -- List (String, String)
pullRequestSourceReferenceUpdatedEventMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "beforeCommitId" "" -- val.beforeCommitId
        
    --     |> Dict.insert
    --         "afterCommitId" "" -- val.afterCommitId
        
    --     |> Dict.insert
    --         "mergeBase" "" -- val.mergeBase
        
    --     |> Dict.toList
    ""



{-| <p>Information about a change to the status of a pull request.</p>
-}
type alias PullRequestStatusChangedEventMetadata =
    { pullRequestStatus : Maybe PullRequestStatusEnum
    }



pullRequestStatusChangedEventMetadataDecoder : JD.Decoder PullRequestStatusChangedEventMetadata
pullRequestStatusChangedEventMetadataDecoder =
    JD.succeed PullRequestStatusChangedEventMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["pullRequestStatus", "PullRequestStatus"]
            pullRequestStatusEnumDecoder
        )
        




pullRequestStatusChangedEventMetadataToString : PullRequestStatusChangedEventMetadata -> String -- List (String, String)
pullRequestStatusChangedEventMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequestStatus" "" -- val.pullRequestStatus
        
    --     |> Dict.toList
    ""



{-| One of

* `PullRequestStatusEnum_OPEN`
* `PullRequestStatusEnum_CLOSED`

-}
type PullRequestStatusEnum
    = PullRequestStatusEnum_OPEN
    | PullRequestStatusEnum_CLOSED



pullRequestStatusEnumDecoder : JD.Decoder PullRequestStatusEnum
pullRequestStatusEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OPEN" ->
                        JD.succeed PullRequestStatusEnum_OPEN

                    "CLOSED" ->
                        JD.succeed PullRequestStatusEnum_CLOSED


                    _ ->
                        JD.fail "bad thing"
            )




pullRequestStatusEnumToString : PullRequestStatusEnum -> String
pullRequestStatusEnumToString val =
    case val of
        PullRequestStatusEnum_OPEN ->
            "OPEN"

        PullRequestStatusEnum_CLOSED ->
            "CLOSED"




{-| <p>Returns information about a pull request target.</p>
-}
type alias PullRequestTarget =
    { repositoryName : Maybe String
    , sourceReference : Maybe String
    , destinationReference : Maybe String
    , destinationCommit : Maybe String
    , sourceCommit : Maybe String
    , mergeBase : Maybe String
    , mergeMetadata : Maybe MergeMetadata
    }



pullRequestTargetDecoder : JD.Decoder PullRequestTarget
pullRequestTargetDecoder =
    JD.succeed PullRequestTarget
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sourceReference", "SourceReference"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinationReference", "DestinationReference"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinationCommit", "DestinationCommit"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sourceCommit", "SourceCommit"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mergeBase", "MergeBase"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["mergeMetadata", "MergeMetadata"]
            mergeMetadataDecoder
        )
        




pullRequestTargetToString : PullRequestTarget -> String -- List (String, String)
pullRequestTargetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "sourceReference" "" -- val.sourceReference
        
    --     |> Dict.insert
    --         "destinationReference" "" -- val.destinationReference
        
    --     |> Dict.insert
    --         "destinationCommit" "" -- val.destinationCommit
        
    --     |> Dict.insert
    --         "sourceCommit" "" -- val.sourceCommit
        
    --     |> Dict.insert
    --         "mergeBase" "" -- val.mergeBase
        
    --     |> Dict.insert
    --         "mergeMetadata" "" -- val.mergeMetadata
        
    --     |> Dict.toList
    ""



{-| <p>Information about a file that will be added or updated as part of a commit.</p>
-}
type alias PutFileEntry =
    { filePath : String
    , fileMode : Maybe FileModeTypeEnum
    , fileContent : Maybe String
    , sourceFile : Maybe SourceFileSpecifier
    }



putFileEntryDecoder : JD.Decoder PutFileEntry
putFileEntryDecoder =
    JD.succeed PutFileEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["filePath", "FilePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fileMode", "FileMode"]
            fileModeTypeEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fileContent", "FileContent"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["sourceFile", "SourceFile"]
            sourceFileSpecifierDecoder
        )
        




putFileEntryToString : PutFileEntry -> String -- List (String, String)
putFileEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "filePath" "" -- val.filePath
        
    --     |> Dict.insert
    --         "fileMode" "" -- val.fileMode
        
    --     |> Dict.insert
    --         "fileContent" "" -- val.fileContent
        
    --     |> Dict.insert
    --         "sourceFile" "" -- val.sourceFile
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putFi
-}
type alias PutFileOutput =
    { commitId : String
    , blobId : String
    , treeId : String
    }



putFileOutputDecoder : JD.Decoder PutFileOutput
putFileOutputDecoder =
    JD.succeed PutFileOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["commitId", "CommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["blobId", "BlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["treeId", "TreeId"]
            JD.string
        )
        




putFileOutputToString : PutFileOutput -> String -- List (String, String)
putFileOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
        
    --     |> Dict.insert
    --         "blobId" "" -- val.blobId
        
    --     |> Dict.insert
    --         "treeId" "" -- val.treeId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from putRepositoryTrigge
-}
type alias PutRepositoryTriggersOutput =
    { configurationId : Maybe String
    }



putRepositoryTriggersOutputDecoder : JD.Decoder PutRepositoryTriggersOutput
putRepositoryTriggersOutputDecoder =
    JD.succeed PutRepositoryTriggersOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["configurationId", "ConfigurationId"]
            JD.string
        )
        




putRepositoryTriggersOutputToString : PutRepositoryTriggersOutput -> String -- List (String, String)
putRepositoryTriggersOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "configurationId" "" -- val.configurationId
        
    --     |> Dict.toList
    ""



{-| One of

* `RelativeFileVersionEnum_BEFORE`
* `RelativeFileVersionEnum_AFTER`

-}
type RelativeFileVersionEnum
    = RelativeFileVersionEnum_BEFORE
    | RelativeFileVersionEnum_AFTER



relativeFileVersionEnumDecoder : JD.Decoder RelativeFileVersionEnum
relativeFileVersionEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BEFORE" ->
                        JD.succeed RelativeFileVersionEnum_BEFORE

                    "AFTER" ->
                        JD.succeed RelativeFileVersionEnum_AFTER


                    _ ->
                        JD.fail "bad thing"
            )




relativeFileVersionEnumToString : RelativeFileVersionEnum -> String
relativeFileVersionEnumToString val =
    case val of
        RelativeFileVersionEnum_BEFORE ->
            "BEFORE"

        RelativeFileVersionEnum_AFTER ->
            "AFTER"




{-| <p>Information about a replacement content entry in the conflict of a merge or pull request operation.</p>
-}
type alias ReplaceContentEntry =
    { filePath : String
    , replacementType : ReplacementTypeEnum
    , content : Maybe String
    , fileMode : Maybe FileModeTypeEnum
    }



replaceContentEntryDecoder : JD.Decoder ReplaceContentEntry
replaceContentEntryDecoder =
    JD.succeed ReplaceContentEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["filePath", "FilePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["replacementType", "ReplacementType"]
            replacementTypeEnumDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["content", "Content"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fileMode", "FileMode"]
            fileModeTypeEnumDecoder
        )
        




replaceContentEntryToString : ReplaceContentEntry -> String -- List (String, String)
replaceContentEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "filePath" "" -- val.filePath
        
    --     |> Dict.insert
    --         "replacementType" "" -- val.replacementType
        
    --     |> Dict.insert
    --         "content" "" -- val.content
        
    --     |> Dict.insert
    --         "fileMode" "" -- val.fileMode
        
    --     |> Dict.toList
    ""



{-| One of

* `ReplacementTypeEnum_KEEP_BASE`
* `ReplacementTypeEnum_KEEP_SOURCE`
* `ReplacementTypeEnum_KEEP_DESTINATION`
* `ReplacementTypeEnum_USE_NEW_CONTENT`

-}
type ReplacementTypeEnum
    = ReplacementTypeEnum_KEEP_BASE
    | ReplacementTypeEnum_KEEP_SOURCE
    | ReplacementTypeEnum_KEEP_DESTINATION
    | ReplacementTypeEnum_USE_NEW_CONTENT



replacementTypeEnumDecoder : JD.Decoder ReplacementTypeEnum
replacementTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "KEEP_BASE" ->
                        JD.succeed ReplacementTypeEnum_KEEP_BASE

                    "KEEP_SOURCE" ->
                        JD.succeed ReplacementTypeEnum_KEEP_SOURCE

                    "KEEP_DESTINATION" ->
                        JD.succeed ReplacementTypeEnum_KEEP_DESTINATION

                    "USE_NEW_CONTENT" ->
                        JD.succeed ReplacementTypeEnum_USE_NEW_CONTENT


                    _ ->
                        JD.fail "bad thing"
            )




replacementTypeEnumToString : ReplacementTypeEnum -> String
replacementTypeEnumToString val =
    case val of
        ReplacementTypeEnum_KEEP_BASE ->
            "KEEP_BASE"

        ReplacementTypeEnum_KEEP_SOURCE ->
            "KEEP_SOURCE"

        ReplacementTypeEnum_KEEP_DESTINATION ->
            "KEEP_DESTINATION"

        ReplacementTypeEnum_USE_NEW_CONTENT ->
            "USE_NEW_CONTENT"




{-| <p>Information about a repository.</p>
-}
type alias RepositoryMetadata =
    { accountId : Maybe String
    , repositoryId : Maybe String
    , repositoryName : Maybe String
    , repositoryDescription : Maybe String
    , defaultBranch : Maybe String
    , lastModifiedDate : Maybe Posix
    , creationDate : Maybe Posix
    , cloneUrlHttp : Maybe String
    , cloneUrlSsh : Maybe String
    , arn : Maybe String
    }



repositoryMetadataDecoder : JD.Decoder RepositoryMetadata
repositoryMetadataDecoder =
    JD.succeed RepositoryMetadata
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["accountId", "AccountId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryId", "RepositoryId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryDescription", "RepositoryDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["defaultBranch", "DefaultBranch"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["lastModifiedDate", "LastModifiedDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["creationDate", "CreationDate"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cloneUrlHttp", "CloneUrlHttp"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["cloneUrlSsh", "CloneUrlSsh"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        




repositoryMetadataToString : RepositoryMetadata -> String -- List (String, String)
repositoryMetadataToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accountId" "" -- val.accountId
        
    --     |> Dict.insert
    --         "repositoryId" "" -- val.repositoryId
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "repositoryDescription" "" -- val.repositoryDescription
        
    --     |> Dict.insert
    --         "defaultBranch" "" -- val.defaultBranch
        
    --     |> Dict.insert
    --         "lastModifiedDate" "" -- val.lastModifiedDate
        
    --     |> Dict.insert
    --         "creationDate" "" -- val.creationDate
        
    --     |> Dict.insert
    --         "cloneUrlHttp" "" -- val.cloneUrlHttp
        
    --     |> Dict.insert
    --         "cloneUrlSsh" "" -- val.cloneUrlSsh
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.toList
    ""



{-| <p>Information about a repository name and ID.</p>
-}
type alias RepositoryNameIdPair =
    { repositoryName : Maybe String
    , repositoryId : Maybe String
    }



repositoryNameIdPairDecoder : JD.Decoder RepositoryNameIdPair
repositoryNameIdPairDecoder =
    JD.succeed RepositoryNameIdPair
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["repositoryId", "RepositoryId"]
            JD.string
        )
        




repositoryNameIdPairToString : RepositoryNameIdPair -> String -- List (String, String)
repositoryNameIdPairToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "repositoryId" "" -- val.repositoryId
        
    --     |> Dict.toList
    ""



{-| <p>Information about a trigger for a repository.</p>
-}
type alias RepositoryTrigger =
    { name : String
    , destinationArn : String
    , customData : Maybe String
    , branches : Maybe (List String)
    , events : (List RepositoryTriggerEventEnum)
    }



repositoryTriggerDecoder : JD.Decoder RepositoryTrigger
repositoryTriggerDecoder =
    JD.succeed RepositoryTrigger
        
        |> JDP.custom (AWS.Core.Decode.required
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["destinationArn", "DestinationArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["customData", "CustomData"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["branches", "Branches"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["events", "Events"]
            (JD.list repositoryTriggerEventEnumDecoder)
        )
        




repositoryTriggerToString : RepositoryTrigger -> String -- List (String, String)
repositoryTriggerToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "destinationArn" "" -- val.destinationArn
        
    --     |> Dict.insert
    --         "customData" "" -- val.customData
        
    --     |> Dict.insert
    --         "branches" "" -- val.branches
        
    --     |> Dict.insert
    --         "events" "" -- val.events
        
    --     |> Dict.toList
    ""



{-| One of

* `RepositoryTriggerEventEnum_all`
* `RepositoryTriggerEventEnum_updateReference`
* `RepositoryTriggerEventEnum_createReference`
* `RepositoryTriggerEventEnum_deleteReference`

-}
type RepositoryTriggerEventEnum
    = RepositoryTriggerEventEnum_all
    | RepositoryTriggerEventEnum_updateReference
    | RepositoryTriggerEventEnum_createReference
    | RepositoryTriggerEventEnum_deleteReference



repositoryTriggerEventEnumDecoder : JD.Decoder RepositoryTriggerEventEnum
repositoryTriggerEventEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "all" ->
                        JD.succeed RepositoryTriggerEventEnum_all

                    "updateReference" ->
                        JD.succeed RepositoryTriggerEventEnum_updateReference

                    "createReference" ->
                        JD.succeed RepositoryTriggerEventEnum_createReference

                    "deleteReference" ->
                        JD.succeed RepositoryTriggerEventEnum_deleteReference


                    _ ->
                        JD.fail "bad thing"
            )




repositoryTriggerEventEnumToString : RepositoryTriggerEventEnum -> String
repositoryTriggerEventEnumToString val =
    case val of
        RepositoryTriggerEventEnum_all ->
            "all"

        RepositoryTriggerEventEnum_updateReference ->
            "updateReference"

        RepositoryTriggerEventEnum_createReference ->
            "createReference"

        RepositoryTriggerEventEnum_deleteReference ->
            "deleteReference"




{-| <p>A trigger failed to run.</p>
-}
type alias RepositoryTriggerExecutionFailure =
    { trigger : Maybe String
    , failureMessage : Maybe String
    }



repositoryTriggerExecutionFailureDecoder : JD.Decoder RepositoryTriggerExecutionFailure
repositoryTriggerExecutionFailureDecoder =
    JD.succeed RepositoryTriggerExecutionFailure
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["trigger", "Trigger"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["failureMessage", "FailureMessage"]
            JD.string
        )
        




repositoryTriggerExecutionFailureToString : RepositoryTriggerExecutionFailure -> String -- List (String, String)
repositoryTriggerExecutionFailureToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "trigger" "" -- val.trigger
        
    --     |> Dict.insert
    --         "failureMessage" "" -- val.failureMessage
        
    --     |> Dict.toList
    ""



{-| <p>Information about the file mode changes.</p>
-}
type alias SetFileModeEntry =
    { filePath : String
    , fileMode : FileModeTypeEnum
    }



setFileModeEntryDecoder : JD.Decoder SetFileModeEntry
setFileModeEntryDecoder =
    JD.succeed SetFileModeEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["filePath", "FilePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["fileMode", "FileMode"]
            fileModeTypeEnumDecoder
        )
        




setFileModeEntryToString : SetFileModeEntry -> String -- List (String, String)
setFileModeEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "filePath" "" -- val.filePath
        
    --     |> Dict.insert
    --         "fileMode" "" -- val.fileMode
        
    --     |> Dict.toList
    ""



{-| One of

* `SortByEnum_repositoryName`
* `SortByEnum_lastModifiedDate`

-}
type SortByEnum
    = SortByEnum_repositoryName
    | SortByEnum_lastModifiedDate



sortByEnumDecoder : JD.Decoder SortByEnum
sortByEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "repositoryName" ->
                        JD.succeed SortByEnum_repositoryName

                    "lastModifiedDate" ->
                        JD.succeed SortByEnum_lastModifiedDate


                    _ ->
                        JD.fail "bad thing"
            )




sortByEnumToString : SortByEnum -> String
sortByEnumToString val =
    case val of
        SortByEnum_repositoryName ->
            "repositoryName"

        SortByEnum_lastModifiedDate ->
            "lastModifiedDate"




{-| <p>Information about a source file that is part of changes made in a commit.</p>
-}
type alias SourceFileSpecifier =
    { filePath : String
    , isMove : Maybe Bool
    }



sourceFileSpecifierDecoder : JD.Decoder SourceFileSpecifier
sourceFileSpecifierDecoder =
    JD.succeed SourceFileSpecifier
        
        |> JDP.custom (AWS.Core.Decode.required
            ["filePath", "FilePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["isMove", "IsMove"]
            JD.bool
        )
        




sourceFileSpecifierToString : SourceFileSpecifier -> String -- List (String, String)
sourceFileSpecifierToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "filePath" "" -- val.filePath
        
    --     |> Dict.insert
    --         "isMove" "" -- val.isMove
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about a submodule reference in a repository folder.</p>
-}
type alias SubModule =
    { commitId : Maybe String
    , absolutePath : Maybe String
    , relativePath : Maybe String
    }



subModuleDecoder : JD.Decoder SubModule
subModuleDecoder =
    JD.succeed SubModule
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["commitId", "CommitId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["absolutePath", "AbsolutePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relativePath", "RelativePath"]
            JD.string
        )
        




subModuleToString : SubModule -> String -- List (String, String)
subModuleToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "commitId" "" -- val.commitId
        
    --     |> Dict.insert
    --         "absolutePath" "" -- val.absolutePath
        
    --     |> Dict.insert
    --         "relativePath" "" -- val.relativePath
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about a symbolic link in a repository folder.</p>
-}
type alias SymbolicLink =
    { blobId : Maybe String
    , absolutePath : Maybe String
    , relativePath : Maybe String
    , fileMode : Maybe FileModeTypeEnum
    }



symbolicLinkDecoder : JD.Decoder SymbolicLink
symbolicLinkDecoder =
    JD.succeed SymbolicLink
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["blobId", "BlobId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["absolutePath", "AbsolutePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["relativePath", "RelativePath"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["fileMode", "FileMode"]
            fileModeTypeEnumDecoder
        )
        




symbolicLinkToString : SymbolicLink -> String -- List (String, String)
symbolicLinkToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "blobId" "" -- val.blobId
        
    --     |> Dict.insert
    --         "absolutePath" "" -- val.absolutePath
        
    --     |> Dict.insert
    --         "relativePath" "" -- val.relativePath
        
    --     |> Dict.insert
    --         "fileMode" "" -- val.fileMode
        
    --     |> Dict.toList
    ""



{-| <p>Returns information about a target for a pull request.</p>
-}
type alias Target =
    { repositoryName : String
    , sourceReference : String
    , destinationReference : Maybe String
    }



targetDecoder : JD.Decoder Target
targetDecoder =
    JD.succeed Target
        
        |> JDP.custom (AWS.Core.Decode.required
            ["repositoryName", "RepositoryName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["sourceReference", "SourceReference"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["destinationReference", "DestinationReference"]
            JD.string
        )
        




targetToString : Target -> String -- List (String, String)
targetToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "repositoryName" "" -- val.repositoryName
        
    --     |> Dict.insert
    --         "sourceReference" "" -- val.sourceReference
        
    --     |> Dict.insert
    --         "destinationReference" "" -- val.destinationReference
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from testRepositoryTrigge
-}
type alias TestRepositoryTriggersOutput =
    { successfulExecutions : Maybe (List String)
    , failedExecutions : Maybe (List RepositoryTriggerExecutionFailure)
    }



testRepositoryTriggersOutputDecoder : JD.Decoder TestRepositoryTriggersOutput
testRepositoryTriggersOutputDecoder =
    JD.succeed TestRepositoryTriggersOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["successfulExecutions", "SuccessfulExecutions"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["failedExecutions", "FailedExecutions"]
            (JD.list repositoryTriggerExecutionFailureDecoder)
        )
        




testRepositoryTriggersOutputToString : TestRepositoryTriggersOutput -> String -- List (String, String)
testRepositoryTriggersOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "successfulExecutions" "" -- val.successfulExecutions
        
    --     |> Dict.insert
    --         "failedExecutions" "" -- val.failedExecutions
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateComme
-}
type alias UpdateCommentOutput =
    { comment : Maybe Comment
    }



updateCommentOutputDecoder : JD.Decoder UpdateCommentOutput
updateCommentOutputDecoder =
    JD.succeed UpdateCommentOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["comment", "Comment"]
            commentDecoder
        )
        




updateCommentOutputToString : UpdateCommentOutput -> String -- List (String, String)
updateCommentOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "comment" "" -- val.comment
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updatePullRequestDescripti
-}
type alias UpdatePullRequestDescriptionOutput =
    { pullRequest : PullRequest
    }



updatePullRequestDescriptionOutputDecoder : JD.Decoder UpdatePullRequestDescriptionOutput
updatePullRequestDescriptionOutputDecoder =
    JD.succeed UpdatePullRequestDescriptionOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pullRequest", "PullRequest"]
            pullRequestDecoder
        )
        




updatePullRequestDescriptionOutputToString : UpdatePullRequestDescriptionOutput -> String -- List (String, String)
updatePullRequestDescriptionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequest" "" -- val.pullRequest
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updatePullRequestStat
-}
type alias UpdatePullRequestStatusOutput =
    { pullRequest : PullRequest
    }



updatePullRequestStatusOutputDecoder : JD.Decoder UpdatePullRequestStatusOutput
updatePullRequestStatusOutputDecoder =
    JD.succeed UpdatePullRequestStatusOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pullRequest", "PullRequest"]
            pullRequestDecoder
        )
        




updatePullRequestStatusOutputToString : UpdatePullRequestStatusOutput -> String -- List (String, String)
updatePullRequestStatusOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequest" "" -- val.pullRequest
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updatePullRequestTit
-}
type alias UpdatePullRequestTitleOutput =
    { pullRequest : PullRequest
    }



updatePullRequestTitleOutputDecoder : JD.Decoder UpdatePullRequestTitleOutput
updatePullRequestTitleOutputDecoder =
    JD.succeed UpdatePullRequestTitleOutput
        
        |> JDP.custom (AWS.Core.Decode.required
            ["pullRequest", "PullRequest"]
            pullRequestDecoder
        )
        




updatePullRequestTitleOutputToString : UpdatePullRequestTitleOutput -> String -- List (String, String)
updatePullRequestTitleOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "pullRequest" "" -- val.pullRequest
        
    --     |> Dict.toList
    ""



{-| <p>Information about the user who made a specified commit.</p>
-}
type alias UserInfo =
    { name : Maybe String
    , email : Maybe String
    , date : Maybe String
    }



userInfoDecoder : JD.Decoder UserInfo
userInfoDecoder =
    JD.succeed UserInfo
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["name", "Name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["email", "Email"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["date", "Date"]
            JD.string
        )
        




userInfoToString : UserInfo -> String -- List (String, String)
userInfoToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "email" "" -- val.email
        
    --     |> Dict.insert
    --         "date" "" -- val.date
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias BatchDescribeMergeConflictsInput =
    { repositoryName : String
    , destinationCommitSpecifier : String
    , sourceCommitSpecifier : String
    , mergeOption : MergeOptionTypeEnum
    , maxMergeHunks : Maybe Int
    , maxConflictFiles : Maybe Int
    , filePaths : Maybe (List String)
    , conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum
    , conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum
    , nextToken : Maybe String
    }


{-| <p>Represents the input of a batch get repositories operation.</p>
-}
type alias BatchGetRepositoriesInput =
    { repositoryNames : (List String)
    }


{-| <p>Represents the input of a create branch operation.</p>
-}
type alias CreateBranchInput =
    { repositoryName : String
    , branchName : String
    , commitId : String
    }


{-| undefined
-}
type alias CreateCommitInput =
    { repositoryName : String
    , branchName : String
    , parentCommitId : Maybe String
    , authorName : Maybe String
    , email : Maybe String
    , commitMessage : Maybe String
    , keepEmptyFolders : Maybe Bool
    , putFiles : Maybe (List PutFileEntry)
    , deleteFiles : Maybe (List DeleteFileEntry)
    , setFileModes : Maybe (List SetFileModeEntry)
    }


{-| undefined
-}
type alias CreatePullRequestInput =
    { title : String
    , description : Maybe String
    , targets : (List Target)
    , clientRequestToken : Maybe String
    }


{-| <p>Represents the input of a create repository operation.</p>
-}
type alias CreateRepositoryInput =
    { repositoryName : String
    , repositoryDescription : Maybe String
    , tags : Maybe (Dict String String)
    }


{-| undefined
-}
type alias CreateUnreferencedMergeCommitInput =
    { repositoryName : String
    , sourceCommitSpecifier : String
    , destinationCommitSpecifier : String
    , mergeOption : MergeOptionTypeEnum
    , conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum
    , conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum
    , authorName : Maybe String
    , email : Maybe String
    , commitMessage : Maybe String
    , keepEmptyFolders : Maybe Bool
    , conflictResolution : Maybe ConflictResolution
    }


{-| <p>Represents the input of a delete branch operation.</p>
-}
type alias DeleteBranchInput =
    { repositoryName : String
    , branchName : String
    }


{-| undefined
-}
type alias DeleteCommentContentInput =
    { commentId : String
    }


{-| undefined
-}
type alias DeleteFileInput =
    { repositoryName : String
    , branchName : String
    , filePath : String
    , parentCommitId : String
    , keepEmptyFolders : Maybe Bool
    , commitMessage : Maybe String
    , name : Maybe String
    , email : Maybe String
    }


{-| <p>Represents the input of a delete repository operation.</p>
-}
type alias DeleteRepositoryInput =
    { repositoryName : String
    }


{-| undefined
-}
type alias DescribeMergeConflictsInput =
    { repositoryName : String
    , destinationCommitSpecifier : String
    , sourceCommitSpecifier : String
    , mergeOption : MergeOptionTypeEnum
    , maxMergeHunks : Maybe Int
    , filePath : String
    , conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum
    , conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias DescribePullRequestEventsInput =
    { pullRequestId : String
    , pullRequestEventType : Maybe PullRequestEventType
    , actorArn : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| <p>Represents the input of a get blob operation.</p>
-}
type alias GetBlobInput =
    { repositoryName : String
    , blobId : String
    }


{-| <p>Represents the input of a get branch operation.</p>
-}
type alias GetBranchInput =
    { repositoryName : Maybe String
    , branchName : Maybe String
    }


{-| undefined
-}
type alias GetCommentInput =
    { commentId : String
    }


{-| undefined
-}
type alias GetCommentsForComparedCommitInput =
    { repositoryName : String
    , beforeCommitId : Maybe String
    , afterCommitId : String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| undefined
-}
type alias GetCommentsForPullRequestInput =
    { pullRequestId : String
    , repositoryName : Maybe String
    , beforeCommitId : Maybe String
    , afterCommitId : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| <p>Represents the input of a get commit operation.</p>
-}
type alias GetCommitInput =
    { repositoryName : String
    , commitId : String
    }


{-| undefined
-}
type alias GetDifferencesInput =
    { repositoryName : String
    , beforeCommitSpecifier : Maybe String
    , afterCommitSpecifier : String
    , beforePath : Maybe String
    , afterPath : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetFileInput =
    { repositoryName : String
    , commitSpecifier : Maybe String
    , filePath : String
    }


{-| undefined
-}
type alias GetFolderInput =
    { repositoryName : String
    , commitSpecifier : Maybe String
    , folderPath : String
    }


{-| undefined
-}
type alias GetMergeCommitInput =
    { repositoryName : String
    , sourceCommitSpecifier : String
    , destinationCommitSpecifier : String
    , conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum
    , conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum
    }


{-| undefined
-}
type alias GetMergeConflictsInput =
    { repositoryName : String
    , destinationCommitSpecifier : String
    , sourceCommitSpecifier : String
    , mergeOption : MergeOptionTypeEnum
    , conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum
    , maxConflictFiles : Maybe Int
    , conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias GetMergeOptionsInput =
    { repositoryName : String
    , sourceCommitSpecifier : String
    , destinationCommitSpecifier : String
    , conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum
    , conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum
    }


{-| undefined
-}
type alias GetPullRequestInput =
    { pullRequestId : String
    }


{-| <p>Represents the input of a get repository operation.</p>
-}
type alias GetRepositoryInput =
    { repositoryName : String
    }


{-| <p>Represents the input of a get repository triggers operation.</p>
-}
type alias GetRepositoryTriggersInput =
    { repositoryName : String
    }


{-| <p>Represents the input of a list branches operation.</p>
-}
type alias ListBranchesInput =
    { repositoryName : String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias ListPullRequestsInput =
    { repositoryName : String
    , authorArn : Maybe String
    , pullRequestStatus : Maybe PullRequestStatusEnum
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }


{-| <p>Represents the input of a list repositories operation.</p>
-}
type alias ListRepositoriesInput =
    { nextToken : Maybe String
    , sortBy : Maybe SortByEnum
    , order : Maybe OrderEnum
    }


{-| undefined
-}
type alias ListTagsForResourceInput =
    { resourceArn : String
    , nextToken : Maybe String
    }


{-| undefined
-}
type alias MergeBranchesByFastForwardInput =
    { repositoryName : String
    , sourceCommitSpecifier : String
    , destinationCommitSpecifier : String
    , targetBranch : Maybe String
    }


{-| undefined
-}
type alias MergeBranchesBySquashInput =
    { repositoryName : String
    , sourceCommitSpecifier : String
    , destinationCommitSpecifier : String
    , targetBranch : Maybe String
    , conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum
    , conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum
    , authorName : Maybe String
    , email : Maybe String
    , commitMessage : Maybe String
    , keepEmptyFolders : Maybe Bool
    , conflictResolution : Maybe ConflictResolution
    }


{-| undefined
-}
type alias MergeBranchesByThreeWayInput =
    { repositoryName : String
    , sourceCommitSpecifier : String
    , destinationCommitSpecifier : String
    , targetBranch : Maybe String
    , conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum
    , conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum
    , authorName : Maybe String
    , email : Maybe String
    , commitMessage : Maybe String
    , keepEmptyFolders : Maybe Bool
    , conflictResolution : Maybe ConflictResolution
    }


{-| undefined
-}
type alias MergePullRequestByFastForwardInput =
    { pullRequestId : String
    , repositoryName : String
    , sourceCommitId : Maybe String
    }


{-| undefined
-}
type alias MergePullRequestBySquashInput =
    { pullRequestId : String
    , repositoryName : String
    , sourceCommitId : Maybe String
    , conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum
    , conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum
    , commitMessage : Maybe String
    , authorName : Maybe String
    , email : Maybe String
    , keepEmptyFolders : Maybe Bool
    , conflictResolution : Maybe ConflictResolution
    }


{-| undefined
-}
type alias MergePullRequestByThreeWayInput =
    { pullRequestId : String
    , repositoryName : String
    , sourceCommitId : Maybe String
    , conflictDetailLevel : Maybe ConflictDetailLevelTypeEnum
    , conflictResolutionStrategy : Maybe ConflictResolutionStrategyTypeEnum
    , commitMessage : Maybe String
    , authorName : Maybe String
    , email : Maybe String
    , keepEmptyFolders : Maybe Bool
    , conflictResolution : Maybe ConflictResolution
    }


{-| undefined
-}
type alias PostCommentForComparedCommitInput =
    { repositoryName : String
    , beforeCommitId : Maybe String
    , afterCommitId : String
    , location : Maybe Location
    , content : String
    , clientRequestToken : Maybe String
    }


{-| undefined
-}
type alias PostCommentForPullRequestInput =
    { pullRequestId : String
    , repositoryName : String
    , beforeCommitId : String
    , afterCommitId : String
    , location : Maybe Location
    , content : String
    , clientRequestToken : Maybe String
    }


{-| undefined
-}
type alias PostCommentReplyInput =
    { inReplyTo : String
    , clientRequestToken : Maybe String
    , content : String
    }


{-| undefined
-}
type alias PutFileInput =
    { repositoryName : String
    , branchName : String
    , fileContent : String
    , filePath : String
    , fileMode : Maybe FileModeTypeEnum
    , parentCommitId : Maybe String
    , commitMessage : Maybe String
    , name : Maybe String
    , email : Maybe String
    }


{-| <p>Represents the input ofa put repository triggers operation.</p>
-}
type alias PutRepositoryTriggersInput =
    { repositoryName : String
    , triggers : (List RepositoryTrigger)
    }


{-| undefined
-}
type alias TagResourceInput =
    { resourceArn : String
    , tags : (Dict String String)
    }


{-| <p>Represents the input of a test repository triggers operation.</p>
-}
type alias TestRepositoryTriggersInput =
    { repositoryName : String
    , triggers : (List RepositoryTrigger)
    }


{-| undefined
-}
type alias UntagResourceInput =
    { resourceArn : String
    , tagKeys : (List String)
    }


{-| undefined
-}
type alias UpdateCommentInput =
    { commentId : String
    , content : String
    }


{-| <p>Represents the input of an update default branch operation.</p>
-}
type alias UpdateDefaultBranchInput =
    { repositoryName : String
    , defaultBranchName : String
    }


{-| undefined
-}
type alias UpdatePullRequestDescriptionInput =
    { pullRequestId : String
    , description : String
    }


{-| undefined
-}
type alias UpdatePullRequestStatusInput =
    { pullRequestId : String
    , pullRequestStatus : PullRequestStatusEnum
    }


{-| undefined
-}
type alias UpdatePullRequestTitleInput =
    { pullRequestId : String
    , title : String
    }


{-| <p>Represents the input of an update repository description operation.</p>
-}
type alias UpdateRepositoryDescriptionInput =
    { repositoryName : String
    , repositoryDescription : Maybe String
    }


{-| <p>Represents the input of an update repository description operation.</p>
-}
type alias UpdateRepositoryNameInput =
    { oldName : String
    , newName : String
    }






batchDescribeMergeConflictsErrorEncoder : BatchDescribeMergeConflictsError -> JE.Value
batchDescribeMergeConflictsErrorEncoder data =
    []
        
        
        |> (::) ("filePath", data.filePath |> (JE.string))
        
        
        
        |> (::) ("exceptionName", data.exceptionName |> (JE.string))
        
        
        
        |> (::) ("message", data.message |> (JE.string))
        
        
        |> JE.object






batchDescribeMergeConflictsInputEncoder : BatchDescribeMergeConflictsInput -> JE.Value
batchDescribeMergeConflictsInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("destinationCommitSpecifier", data.destinationCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("sourceCommitSpecifier", data.sourceCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("mergeOption", data.mergeOption |> (mergeOptionTypeEnumToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxMergeHunks", data.maxMergeHunks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxConflictFiles", data.maxConflictFiles)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("filePaths", data.filePaths)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictDetailLevelTypeEnumToString >> JE.string)
            ("conflictDetailLevel", data.conflictDetailLevel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionStrategyTypeEnumToString >> JE.string)
            ("conflictResolutionStrategy", data.conflictResolutionStrategy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






batchDescribeMergeConflictsOutputEncoder : BatchDescribeMergeConflictsOutput -> JE.Value
batchDescribeMergeConflictsOutputEncoder data =
    []
        
        
        |> (::) ("conflicts", data.conflicts |> (JE.list (conflictEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (batchDescribeMergeConflictsErrorEncoder))
            ("errors", data.errors)
        
        
        
        |> (::) ("destinationCommitId", data.destinationCommitId |> (JE.string))
        
        
        
        |> (::) ("sourceCommitId", data.sourceCommitId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("baseCommitId", data.baseCommitId)
        
        
        |> JE.object






batchGetRepositoriesInputEncoder : BatchGetRepositoriesInput -> JE.Value
batchGetRepositoriesInputEncoder data =
    []
        
        
        |> (::) ("repositoryNames", data.repositoryNames |> (JE.list (JE.string)))
        
        
        |> JE.object






batchGetRepositoriesOutputEncoder : BatchGetRepositoriesOutput -> JE.Value
batchGetRepositoriesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (repositoryMetadataEncoder))
            ("repositories", data.repositories)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("repositoriesNotFound", data.repositoriesNotFound)
        
        
        |> JE.object






blobMetadataEncoder : BlobMetadata -> JE.Value
blobMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("blobId", data.blobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("path", data.path)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("mode", data.mode)
        
        
        |> JE.object






branchInfoEncoder : BranchInfo -> JE.Value
branchInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("branchName", data.branchName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitId", data.commitId)
        
        
        |> JE.object










commentEncoder : Comment -> JE.Value
commentEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commentId", data.commentId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("content", data.content)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("inReplyTo", data.inReplyTo)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("creationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastModifiedDate", data.lastModifiedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authorArn", data.authorArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("deleted", data.deleted)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        |> JE.object






commentsForComparedCommitEncoder : CommentsForComparedCommit -> JE.Value
commentsForComparedCommitEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeCommitId", data.beforeCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterCommitId", data.afterCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeBlobId", data.beforeBlobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterBlobId", data.afterBlobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (locationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (commentEncoder))
            ("comments", data.comments)
        
        
        |> JE.object






commentsForPullRequestEncoder : CommentsForPullRequest -> JE.Value
commentsForPullRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pullRequestId", data.pullRequestId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeCommitId", data.beforeCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterCommitId", data.afterCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeBlobId", data.beforeBlobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterBlobId", data.afterBlobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (locationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (commentEncoder))
            ("comments", data.comments)
        
        
        |> JE.object






commitEncoder : Commit -> JE.Value
commitEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitId", data.commitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("treeId", data.treeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("parents", data.parents)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userInfoEncoder)
            ("author", data.author)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (userInfoEncoder)
            ("committer", data.committer)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("additionalData", data.additionalData)
        
        
        |> JE.object






conflictEncoder : Conflict -> JE.Value
conflictEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictMetadataEncoder)
            ("conflictMetadata", data.conflictMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (mergeHunkEncoder))
            ("mergeHunks", data.mergeHunks)
        
        
        |> JE.object










conflictMetadataEncoder : ConflictMetadata -> JE.Value
conflictMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("filePath", data.filePath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fileSizesEncoder)
            ("fileSizes", data.fileSizes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fileModesEncoder)
            ("fileModes", data.fileModes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (objectTypesEncoder)
            ("objectTypes", data.objectTypes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("numberOfConflicts", data.numberOfConflicts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (isBinaryFileEncoder)
            ("isBinaryFile", data.isBinaryFile)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("contentConflict", data.contentConflict)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("fileModeConflict", data.fileModeConflict)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("objectTypeConflict", data.objectTypeConflict)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (mergeOperationsEncoder)
            ("mergeOperations", data.mergeOperations)
        
        
        |> JE.object






conflictResolutionEncoder : ConflictResolution -> JE.Value
conflictResolutionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (replaceContentEntryEncoder))
            ("replaceContents", data.replaceContents)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (deleteFileEntryEncoder))
            ("deleteFiles", data.deleteFiles)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (setFileModeEntryEncoder))
            ("setFileModes", data.setFileModes)
        
        
        |> JE.object










createBranchInputEncoder : CreateBranchInput -> JE.Value
createBranchInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("branchName", data.branchName |> (JE.string))
        
        
        
        |> (::) ("commitId", data.commitId |> (JE.string))
        
        
        |> JE.object






createCommitInputEncoder : CreateCommitInput -> JE.Value
createCommitInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("branchName", data.branchName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("parentCommitId", data.parentCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authorName", data.authorName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("email", data.email)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitMessage", data.commitMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("keepEmptyFolders", data.keepEmptyFolders)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (putFileEntryEncoder))
            ("putFiles", data.putFiles)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (deleteFileEntryEncoder))
            ("deleteFiles", data.deleteFiles)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (setFileModeEntryEncoder))
            ("setFileModes", data.setFileModes)
        
        
        |> JE.object






createCommitOutputEncoder : CreateCommitOutput -> JE.Value
createCommitOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitId", data.commitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("treeId", data.treeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fileMetadataEncoder))
            ("filesAdded", data.filesAdded)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fileMetadataEncoder))
            ("filesUpdated", data.filesUpdated)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fileMetadataEncoder))
            ("filesDeleted", data.filesDeleted)
        
        
        |> JE.object






createPullRequestInputEncoder : CreatePullRequestInput -> JE.Value
createPullRequestInputEncoder data =
    []
        
        
        |> (::) ("title", data.title |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> (::) ("targets", data.targets |> (JE.list (targetEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        |> JE.object






createPullRequestOutputEncoder : CreatePullRequestOutput -> JE.Value
createPullRequestOutputEncoder data =
    []
        
        
        |> (::) ("pullRequest", data.pullRequest |> (pullRequestEncoder))
        
        
        |> JE.object






createRepositoryInputEncoder : CreateRepositoryInput -> JE.Value
createRepositoryInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryDescription", data.repositoryDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("tags", data.tags)
        
        
        |> JE.object






createRepositoryOutputEncoder : CreateRepositoryOutput -> JE.Value
createRepositoryOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (repositoryMetadataEncoder)
            ("repositoryMetadata", data.repositoryMetadata)
        
        
        |> JE.object






createUnreferencedMergeCommitInputEncoder : CreateUnreferencedMergeCommitInput -> JE.Value
createUnreferencedMergeCommitInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("sourceCommitSpecifier", data.sourceCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("destinationCommitSpecifier", data.destinationCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("mergeOption", data.mergeOption |> (mergeOptionTypeEnumToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictDetailLevelTypeEnumToString >> JE.string)
            ("conflictDetailLevel", data.conflictDetailLevel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionStrategyTypeEnumToString >> JE.string)
            ("conflictResolutionStrategy", data.conflictResolutionStrategy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authorName", data.authorName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("email", data.email)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitMessage", data.commitMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("keepEmptyFolders", data.keepEmptyFolders)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionEncoder)
            ("conflictResolution", data.conflictResolution)
        
        
        |> JE.object






createUnreferencedMergeCommitOutputEncoder : CreateUnreferencedMergeCommitOutput -> JE.Value
createUnreferencedMergeCommitOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitId", data.commitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("treeId", data.treeId)
        
        
        |> JE.object






deleteBranchInputEncoder : DeleteBranchInput -> JE.Value
deleteBranchInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("branchName", data.branchName |> (JE.string))
        
        
        |> JE.object






deleteBranchOutputEncoder : DeleteBranchOutput -> JE.Value
deleteBranchOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (branchInfoEncoder)
            ("deletedBranch", data.deletedBranch)
        
        
        |> JE.object






deleteCommentContentInputEncoder : DeleteCommentContentInput -> JE.Value
deleteCommentContentInputEncoder data =
    []
        
        
        |> (::) ("commentId", data.commentId |> (JE.string))
        
        
        |> JE.object






deleteCommentContentOutputEncoder : DeleteCommentContentOutput -> JE.Value
deleteCommentContentOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (commentEncoder)
            ("comment", data.comment)
        
        
        |> JE.object






deleteFileEntryEncoder : DeleteFileEntry -> JE.Value
deleteFileEntryEncoder data =
    []
        
        
        |> (::) ("filePath", data.filePath |> (JE.string))
        
        
        |> JE.object






deleteFileInputEncoder : DeleteFileInput -> JE.Value
deleteFileInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("branchName", data.branchName |> (JE.string))
        
        
        
        |> (::) ("filePath", data.filePath |> (JE.string))
        
        
        
        |> (::) ("parentCommitId", data.parentCommitId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("keepEmptyFolders", data.keepEmptyFolders)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitMessage", data.commitMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("email", data.email)
        
        
        |> JE.object






deleteFileOutputEncoder : DeleteFileOutput -> JE.Value
deleteFileOutputEncoder data =
    []
        
        
        |> (::) ("commitId", data.commitId |> (JE.string))
        
        
        
        |> (::) ("blobId", data.blobId |> (JE.string))
        
        
        
        |> (::) ("treeId", data.treeId |> (JE.string))
        
        
        
        |> (::) ("filePath", data.filePath |> (JE.string))
        
        
        |> JE.object






deleteRepositoryInputEncoder : DeleteRepositoryInput -> JE.Value
deleteRepositoryInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        |> JE.object






deleteRepositoryOutputEncoder : DeleteRepositoryOutput -> JE.Value
deleteRepositoryOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryId", data.repositoryId)
        
        
        |> JE.object






describeMergeConflictsInputEncoder : DescribeMergeConflictsInput -> JE.Value
describeMergeConflictsInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("destinationCommitSpecifier", data.destinationCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("sourceCommitSpecifier", data.sourceCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("mergeOption", data.mergeOption |> (mergeOptionTypeEnumToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxMergeHunks", data.maxMergeHunks)
        
        
        
        |> (::) ("filePath", data.filePath |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictDetailLevelTypeEnumToString >> JE.string)
            ("conflictDetailLevel", data.conflictDetailLevel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionStrategyTypeEnumToString >> JE.string)
            ("conflictResolutionStrategy", data.conflictResolutionStrategy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






describeMergeConflictsOutputEncoder : DescribeMergeConflictsOutput -> JE.Value
describeMergeConflictsOutputEncoder data =
    []
        
        
        |> (::) ("conflictMetadata", data.conflictMetadata |> (conflictMetadataEncoder))
        
        
        
        |> (::) ("mergeHunks", data.mergeHunks |> (JE.list (mergeHunkEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> (::) ("destinationCommitId", data.destinationCommitId |> (JE.string))
        
        
        
        |> (::) ("sourceCommitId", data.sourceCommitId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("baseCommitId", data.baseCommitId)
        
        
        |> JE.object






describePullRequestEventsInputEncoder : DescribePullRequestEventsInput -> JE.Value
describePullRequestEventsInputEncoder data =
    []
        
        
        |> (::) ("pullRequestId", data.pullRequestId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pullRequestEventTypeToString >> JE.string)
            ("pullRequestEventType", data.pullRequestEventType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("actorArn", data.actorArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






describePullRequestEventsOutputEncoder : DescribePullRequestEventsOutput -> JE.Value
describePullRequestEventsOutputEncoder data =
    []
        
        
        |> (::) ("pullRequestEvents", data.pullRequestEvents |> (JE.list (pullRequestEventEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






differenceEncoder : Difference -> JE.Value
differenceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (blobMetadataEncoder)
            ("beforeBlob", data.beforeBlob)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (blobMetadataEncoder)
            ("afterBlob", data.afterBlob)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (changeTypeEnumToString >> JE.string)
            ("changeType", data.changeType)
        
        
        |> JE.object






fileEncoder : File -> JE.Value
fileEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("blobId", data.blobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("absolutePath", data.absolutePath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("relativePath", data.relativePath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fileModeTypeEnumToString >> JE.string)
            ("fileMode", data.fileMode)
        
        
        |> JE.object






fileMetadataEncoder : FileMetadata -> JE.Value
fileMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("absolutePath", data.absolutePath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("blobId", data.blobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fileModeTypeEnumToString >> JE.string)
            ("fileMode", data.fileMode)
        
        
        |> JE.object










fileModesEncoder : FileModes -> JE.Value
fileModesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (fileModeTypeEnumToString >> JE.string)
            ("source", data.source)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fileModeTypeEnumToString >> JE.string)
            ("destination", data.destination)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fileModeTypeEnumToString >> JE.string)
            ("base", data.base)
        
        
        |> JE.object






fileSizesEncoder : FileSizes -> JE.Value
fileSizesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("source", data.source)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("destination", data.destination)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("base", data.base)
        
        
        |> JE.object






folderEncoder : Folder -> JE.Value
folderEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("treeId", data.treeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("absolutePath", data.absolutePath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("relativePath", data.relativePath)
        
        
        |> JE.object






getBlobInputEncoder : GetBlobInput -> JE.Value
getBlobInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("blobId", data.blobId |> (JE.string))
        
        
        |> JE.object






getBlobOutputEncoder : GetBlobOutput -> JE.Value
getBlobOutputEncoder data =
    []
        
        
        |> (::) ("content", data.content |> (JE.string))
        
        
        |> JE.object






getBranchInputEncoder : GetBranchInput -> JE.Value
getBranchInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("branchName", data.branchName)
        
        
        |> JE.object






getBranchOutputEncoder : GetBranchOutput -> JE.Value
getBranchOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (branchInfoEncoder)
            ("branch", data.branch)
        
        
        |> JE.object






getCommentInputEncoder : GetCommentInput -> JE.Value
getCommentInputEncoder data =
    []
        
        
        |> (::) ("commentId", data.commentId |> (JE.string))
        
        
        |> JE.object






getCommentOutputEncoder : GetCommentOutput -> JE.Value
getCommentOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (commentEncoder)
            ("comment", data.comment)
        
        
        |> JE.object






getCommentsForComparedCommitInputEncoder : GetCommentsForComparedCommitInput -> JE.Value
getCommentsForComparedCommitInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeCommitId", data.beforeCommitId)
        
        
        
        |> (::) ("afterCommitId", data.afterCommitId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






getCommentsForComparedCommitOutputEncoder : GetCommentsForComparedCommitOutput -> JE.Value
getCommentsForComparedCommitOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (commentsForComparedCommitEncoder))
            ("commentsForComparedCommitData", data.commentsForComparedCommitData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






getCommentsForPullRequestInputEncoder : GetCommentsForPullRequestInput -> JE.Value
getCommentsForPullRequestInputEncoder data =
    []
        
        
        |> (::) ("pullRequestId", data.pullRequestId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeCommitId", data.beforeCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterCommitId", data.afterCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






getCommentsForPullRequestOutputEncoder : GetCommentsForPullRequestOutput -> JE.Value
getCommentsForPullRequestOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (commentsForPullRequestEncoder))
            ("commentsForPullRequestData", data.commentsForPullRequestData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






getCommitInputEncoder : GetCommitInput -> JE.Value
getCommitInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("commitId", data.commitId |> (JE.string))
        
        
        |> JE.object






getCommitOutputEncoder : GetCommitOutput -> JE.Value
getCommitOutputEncoder data =
    []
        
        
        |> (::) ("commit", data.commit |> (commitEncoder))
        
        
        |> JE.object






getDifferencesInputEncoder : GetDifferencesInput -> JE.Value
getDifferencesInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeCommitSpecifier", data.beforeCommitSpecifier)
        
        
        
        |> (::) ("afterCommitSpecifier", data.afterCommitSpecifier |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforePath", data.beforePath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterPath", data.afterPath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("MaxResults", data.maxResults)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getDifferencesOutputEncoder : GetDifferencesOutput -> JE.Value
getDifferencesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (differenceEncoder))
            ("differences", data.differences)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextToken", data.nextToken)
        
        
        |> JE.object






getFileInputEncoder : GetFileInput -> JE.Value
getFileInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitSpecifier", data.commitSpecifier)
        
        
        
        |> (::) ("filePath", data.filePath |> (JE.string))
        
        
        |> JE.object






getFileOutputEncoder : GetFileOutput -> JE.Value
getFileOutputEncoder data =
    []
        
        
        |> (::) ("commitId", data.commitId |> (JE.string))
        
        
        
        |> (::) ("blobId", data.blobId |> (JE.string))
        
        
        
        |> (::) ("filePath", data.filePath |> (JE.string))
        
        
        
        |> (::) ("fileMode", data.fileMode |> (fileModeTypeEnumToString >> JE.string))
        
        
        
        |> (::) ("fileSize", data.fileSize |> (JE.int))
        
        
        
        |> (::) ("fileContent", data.fileContent |> (JE.string))
        
        
        |> JE.object






getFolderInputEncoder : GetFolderInput -> JE.Value
getFolderInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitSpecifier", data.commitSpecifier)
        
        
        
        |> (::) ("folderPath", data.folderPath |> (JE.string))
        
        
        |> JE.object






getFolderOutputEncoder : GetFolderOutput -> JE.Value
getFolderOutputEncoder data =
    []
        
        
        |> (::) ("commitId", data.commitId |> (JE.string))
        
        
        
        |> (::) ("folderPath", data.folderPath |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("treeId", data.treeId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (folderEncoder))
            ("subFolders", data.subFolders)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (fileEncoder))
            ("files", data.files)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (symbolicLinkEncoder))
            ("symbolicLinks", data.symbolicLinks)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (subModuleEncoder))
            ("subModules", data.subModules)
        
        
        |> JE.object






getMergeCommitInputEncoder : GetMergeCommitInput -> JE.Value
getMergeCommitInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("sourceCommitSpecifier", data.sourceCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("destinationCommitSpecifier", data.destinationCommitSpecifier |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictDetailLevelTypeEnumToString >> JE.string)
            ("conflictDetailLevel", data.conflictDetailLevel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionStrategyTypeEnumToString >> JE.string)
            ("conflictResolutionStrategy", data.conflictResolutionStrategy)
        
        
        |> JE.object






getMergeCommitOutputEncoder : GetMergeCommitOutput -> JE.Value
getMergeCommitOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceCommitId", data.sourceCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destinationCommitId", data.destinationCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("baseCommitId", data.baseCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("mergedCommitId", data.mergedCommitId)
        
        
        |> JE.object






getMergeConflictsInputEncoder : GetMergeConflictsInput -> JE.Value
getMergeConflictsInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("destinationCommitSpecifier", data.destinationCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("sourceCommitSpecifier", data.sourceCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("mergeOption", data.mergeOption |> (mergeOptionTypeEnumToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictDetailLevelTypeEnumToString >> JE.string)
            ("conflictDetailLevel", data.conflictDetailLevel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxConflictFiles", data.maxConflictFiles)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionStrategyTypeEnumToString >> JE.string)
            ("conflictResolutionStrategy", data.conflictResolutionStrategy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






getMergeConflictsOutputEncoder : GetMergeConflictsOutput -> JE.Value
getMergeConflictsOutputEncoder data =
    []
        
        
        |> (::) ("mergeable", data.mergeable |> (JE.bool))
        
        
        
        |> (::) ("destinationCommitId", data.destinationCommitId |> (JE.string))
        
        
        
        |> (::) ("sourceCommitId", data.sourceCommitId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("baseCommitId", data.baseCommitId)
        
        
        
        |> (::) ("conflictMetadataList", data.conflictMetadataList |> (JE.list (conflictMetadataEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






getMergeOptionsInputEncoder : GetMergeOptionsInput -> JE.Value
getMergeOptionsInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("sourceCommitSpecifier", data.sourceCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("destinationCommitSpecifier", data.destinationCommitSpecifier |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictDetailLevelTypeEnumToString >> JE.string)
            ("conflictDetailLevel", data.conflictDetailLevel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionStrategyTypeEnumToString >> JE.string)
            ("conflictResolutionStrategy", data.conflictResolutionStrategy)
        
        
        |> JE.object






getMergeOptionsOutputEncoder : GetMergeOptionsOutput -> JE.Value
getMergeOptionsOutputEncoder data =
    []
        
        
        |> (::) ("mergeOptions", data.mergeOptions |> (JE.list (mergeOptionTypeEnumToString >> JE.string)))
        
        
        
        |> (::) ("sourceCommitId", data.sourceCommitId |> (JE.string))
        
        
        
        |> (::) ("destinationCommitId", data.destinationCommitId |> (JE.string))
        
        
        
        |> (::) ("baseCommitId", data.baseCommitId |> (JE.string))
        
        
        |> JE.object






getPullRequestInputEncoder : GetPullRequestInput -> JE.Value
getPullRequestInputEncoder data =
    []
        
        
        |> (::) ("pullRequestId", data.pullRequestId |> (JE.string))
        
        
        |> JE.object






getPullRequestOutputEncoder : GetPullRequestOutput -> JE.Value
getPullRequestOutputEncoder data =
    []
        
        
        |> (::) ("pullRequest", data.pullRequest |> (pullRequestEncoder))
        
        
        |> JE.object






getRepositoryInputEncoder : GetRepositoryInput -> JE.Value
getRepositoryInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        |> JE.object






getRepositoryOutputEncoder : GetRepositoryOutput -> JE.Value
getRepositoryOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (repositoryMetadataEncoder)
            ("repositoryMetadata", data.repositoryMetadata)
        
        
        |> JE.object






getRepositoryTriggersInputEncoder : GetRepositoryTriggersInput -> JE.Value
getRepositoryTriggersInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        |> JE.object






getRepositoryTriggersOutputEncoder : GetRepositoryTriggersOutput -> JE.Value
getRepositoryTriggersOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("configurationId", data.configurationId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (repositoryTriggerEncoder))
            ("triggers", data.triggers)
        
        
        |> JE.object






isBinaryFileEncoder : IsBinaryFile -> JE.Value
isBinaryFileEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("source", data.source)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("destination", data.destination)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("base", data.base)
        
        
        |> JE.object






listBranchesInputEncoder : ListBranchesInput -> JE.Value
listBranchesInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listBranchesOutputEncoder : ListBranchesOutput -> JE.Value
listBranchesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("branches", data.branches)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listPullRequestsInputEncoder : ListPullRequestsInput -> JE.Value
listPullRequestsInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authorArn", data.authorArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pullRequestStatusEnumToString >> JE.string)
            ("pullRequestStatus", data.pullRequestStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("maxResults", data.maxResults)
        
        
        |> JE.object






listPullRequestsOutputEncoder : ListPullRequestsOutput -> JE.Value
listPullRequestsOutputEncoder data =
    []
        
        
        |> (::) ("pullRequestIds", data.pullRequestIds |> (JE.list (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listRepositoriesInputEncoder : ListRepositoriesInput -> JE.Value
listRepositoriesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sortByEnumToString >> JE.string)
            ("sortBy", data.sortBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (orderEnumToString >> JE.string)
            ("order", data.order)
        
        
        |> JE.object






listRepositoriesOutputEncoder : ListRepositoriesOutput -> JE.Value
listRepositoriesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (repositoryNameIdPairEncoder))
            ("repositories", data.repositories)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listTagsForResourceInputEncoder : ListTagsForResourceInput -> JE.Value
listTagsForResourceInputEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






listTagsForResourceOutputEncoder : ListTagsForResourceOutput -> JE.Value
listTagsForResourceOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("nextToken", data.nextToken)
        
        
        |> JE.object






locationEncoder : Location -> JE.Value
locationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("filePath", data.filePath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("filePosition", data.filePosition)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (relativeFileVersionEnumToString >> JE.string)
            ("relativeFileVersion", data.relativeFileVersion)
        
        
        |> JE.object






mergeBranchesByFastForwardInputEncoder : MergeBranchesByFastForwardInput -> JE.Value
mergeBranchesByFastForwardInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("sourceCommitSpecifier", data.sourceCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("destinationCommitSpecifier", data.destinationCommitSpecifier |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("targetBranch", data.targetBranch)
        
        
        |> JE.object






mergeBranchesByFastForwardOutputEncoder : MergeBranchesByFastForwardOutput -> JE.Value
mergeBranchesByFastForwardOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitId", data.commitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("treeId", data.treeId)
        
        
        |> JE.object






mergeBranchesBySquashInputEncoder : MergeBranchesBySquashInput -> JE.Value
mergeBranchesBySquashInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("sourceCommitSpecifier", data.sourceCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("destinationCommitSpecifier", data.destinationCommitSpecifier |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("targetBranch", data.targetBranch)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictDetailLevelTypeEnumToString >> JE.string)
            ("conflictDetailLevel", data.conflictDetailLevel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionStrategyTypeEnumToString >> JE.string)
            ("conflictResolutionStrategy", data.conflictResolutionStrategy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authorName", data.authorName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("email", data.email)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitMessage", data.commitMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("keepEmptyFolders", data.keepEmptyFolders)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionEncoder)
            ("conflictResolution", data.conflictResolution)
        
        
        |> JE.object






mergeBranchesBySquashOutputEncoder : MergeBranchesBySquashOutput -> JE.Value
mergeBranchesBySquashOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitId", data.commitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("treeId", data.treeId)
        
        
        |> JE.object






mergeBranchesByThreeWayInputEncoder : MergeBranchesByThreeWayInput -> JE.Value
mergeBranchesByThreeWayInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("sourceCommitSpecifier", data.sourceCommitSpecifier |> (JE.string))
        
        
        
        |> (::) ("destinationCommitSpecifier", data.destinationCommitSpecifier |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("targetBranch", data.targetBranch)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictDetailLevelTypeEnumToString >> JE.string)
            ("conflictDetailLevel", data.conflictDetailLevel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionStrategyTypeEnumToString >> JE.string)
            ("conflictResolutionStrategy", data.conflictResolutionStrategy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authorName", data.authorName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("email", data.email)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitMessage", data.commitMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("keepEmptyFolders", data.keepEmptyFolders)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionEncoder)
            ("conflictResolution", data.conflictResolution)
        
        
        |> JE.object






mergeBranchesByThreeWayOutputEncoder : MergeBranchesByThreeWayOutput -> JE.Value
mergeBranchesByThreeWayOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitId", data.commitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("treeId", data.treeId)
        
        
        |> JE.object






mergeHunkEncoder : MergeHunk -> JE.Value
mergeHunkEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isConflict", data.isConflict)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (mergeHunkDetailEncoder)
            ("source", data.source)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (mergeHunkDetailEncoder)
            ("destination", data.destination)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (mergeHunkDetailEncoder)
            ("base", data.base)
        
        
        |> JE.object






mergeHunkDetailEncoder : MergeHunkDetail -> JE.Value
mergeHunkDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("startLine", data.startLine)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("endLine", data.endLine)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("hunkContent", data.hunkContent)
        
        
        |> JE.object






mergeMetadataEncoder : MergeMetadata -> JE.Value
mergeMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isMerged", data.isMerged)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("mergedBy", data.mergedBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("mergeCommitId", data.mergeCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (mergeOptionTypeEnumToString >> JE.string)
            ("mergeOption", data.mergeOption)
        
        
        |> JE.object






mergeOperationsEncoder : MergeOperations -> JE.Value
mergeOperationsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (changeTypeEnumToString >> JE.string)
            ("source", data.source)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (changeTypeEnumToString >> JE.string)
            ("destination", data.destination)
        
        
        |> JE.object










mergePullRequestByFastForwardInputEncoder : MergePullRequestByFastForwardInput -> JE.Value
mergePullRequestByFastForwardInputEncoder data =
    []
        
        
        |> (::) ("pullRequestId", data.pullRequestId |> (JE.string))
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceCommitId", data.sourceCommitId)
        
        
        |> JE.object






mergePullRequestByFastForwardOutputEncoder : MergePullRequestByFastForwardOutput -> JE.Value
mergePullRequestByFastForwardOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (pullRequestEncoder)
            ("pullRequest", data.pullRequest)
        
        
        |> JE.object






mergePullRequestBySquashInputEncoder : MergePullRequestBySquashInput -> JE.Value
mergePullRequestBySquashInputEncoder data =
    []
        
        
        |> (::) ("pullRequestId", data.pullRequestId |> (JE.string))
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceCommitId", data.sourceCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictDetailLevelTypeEnumToString >> JE.string)
            ("conflictDetailLevel", data.conflictDetailLevel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionStrategyTypeEnumToString >> JE.string)
            ("conflictResolutionStrategy", data.conflictResolutionStrategy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitMessage", data.commitMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authorName", data.authorName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("email", data.email)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("keepEmptyFolders", data.keepEmptyFolders)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionEncoder)
            ("conflictResolution", data.conflictResolution)
        
        
        |> JE.object






mergePullRequestBySquashOutputEncoder : MergePullRequestBySquashOutput -> JE.Value
mergePullRequestBySquashOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (pullRequestEncoder)
            ("pullRequest", data.pullRequest)
        
        
        |> JE.object






mergePullRequestByThreeWayInputEncoder : MergePullRequestByThreeWayInput -> JE.Value
mergePullRequestByThreeWayInputEncoder data =
    []
        
        
        |> (::) ("pullRequestId", data.pullRequestId |> (JE.string))
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceCommitId", data.sourceCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictDetailLevelTypeEnumToString >> JE.string)
            ("conflictDetailLevel", data.conflictDetailLevel)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionStrategyTypeEnumToString >> JE.string)
            ("conflictResolutionStrategy", data.conflictResolutionStrategy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitMessage", data.commitMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authorName", data.authorName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("email", data.email)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("keepEmptyFolders", data.keepEmptyFolders)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (conflictResolutionEncoder)
            ("conflictResolution", data.conflictResolution)
        
        
        |> JE.object






mergePullRequestByThreeWayOutputEncoder : MergePullRequestByThreeWayOutput -> JE.Value
mergePullRequestByThreeWayOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (pullRequestEncoder)
            ("pullRequest", data.pullRequest)
        
        
        |> JE.object










objectTypesEncoder : ObjectTypes -> JE.Value
objectTypesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (objectTypeEnumToString >> JE.string)
            ("source", data.source)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (objectTypeEnumToString >> JE.string)
            ("destination", data.destination)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (objectTypeEnumToString >> JE.string)
            ("base", data.base)
        
        
        |> JE.object










postCommentForComparedCommitInputEncoder : PostCommentForComparedCommitInput -> JE.Value
postCommentForComparedCommitInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeCommitId", data.beforeCommitId)
        
        
        
        |> (::) ("afterCommitId", data.afterCommitId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (locationEncoder)
            ("location", data.location)
        
        
        
        |> (::) ("content", data.content |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        |> JE.object






postCommentForComparedCommitOutputEncoder : PostCommentForComparedCommitOutput -> JE.Value
postCommentForComparedCommitOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeCommitId", data.beforeCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterCommitId", data.afterCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeBlobId", data.beforeBlobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterBlobId", data.afterBlobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (locationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (commentEncoder)
            ("comment", data.comment)
        
        
        |> JE.object






postCommentForPullRequestInputEncoder : PostCommentForPullRequestInput -> JE.Value
postCommentForPullRequestInputEncoder data =
    []
        
        
        |> (::) ("pullRequestId", data.pullRequestId |> (JE.string))
        
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("beforeCommitId", data.beforeCommitId |> (JE.string))
        
        
        
        |> (::) ("afterCommitId", data.afterCommitId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (locationEncoder)
            ("location", data.location)
        
        
        
        |> (::) ("content", data.content |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        |> JE.object






postCommentForPullRequestOutputEncoder : PostCommentForPullRequestOutput -> JE.Value
postCommentForPullRequestOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pullRequestId", data.pullRequestId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeCommitId", data.beforeCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterCommitId", data.afterCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeBlobId", data.beforeBlobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterBlobId", data.afterBlobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (locationEncoder)
            ("location", data.location)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (commentEncoder)
            ("comment", data.comment)
        
        
        |> JE.object






postCommentReplyInputEncoder : PostCommentReplyInput -> JE.Value
postCommentReplyInputEncoder data =
    []
        
        
        |> (::) ("inReplyTo", data.inReplyTo |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        
        |> (::) ("content", data.content |> (JE.string))
        
        
        |> JE.object






postCommentReplyOutputEncoder : PostCommentReplyOutput -> JE.Value
postCommentReplyOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (commentEncoder)
            ("comment", data.comment)
        
        
        |> JE.object






pullRequestEncoder : PullRequest -> JE.Value
pullRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pullRequestId", data.pullRequestId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("title", data.title)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastActivityDate", data.lastActivityDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("creationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pullRequestStatusEnumToString >> JE.string)
            ("pullRequestStatus", data.pullRequestStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("authorArn", data.authorArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (pullRequestTargetEncoder))
            ("pullRequestTargets", data.pullRequestTargets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("clientRequestToken", data.clientRequestToken)
        
        
        |> JE.object






pullRequestCreatedEventMetadataEncoder : PullRequestCreatedEventMetadata -> JE.Value
pullRequestCreatedEventMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceCommitId", data.sourceCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destinationCommitId", data.destinationCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("mergeBase", data.mergeBase)
        
        
        |> JE.object






pullRequestEventEncoder : PullRequestEvent -> JE.Value
pullRequestEventEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("pullRequestId", data.pullRequestId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("eventDate", data.eventDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pullRequestEventTypeToString >> JE.string)
            ("pullRequestEventType", data.pullRequestEventType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("actorArn", data.actorArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pullRequestCreatedEventMetadataEncoder)
            ("pullRequestCreatedEventMetadata", data.pullRequestCreatedEventMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pullRequestStatusChangedEventMetadataEncoder)
            ("pullRequestStatusChangedEventMetadata", data.pullRequestStatusChangedEventMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pullRequestSourceReferenceUpdatedEventMetadataEncoder)
            ("pullRequestSourceReferenceUpdatedEventMetadata", data.pullRequestSourceReferenceUpdatedEventMetadata)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (pullRequestMergedStateChangedEventMetadataEncoder)
            ("pullRequestMergedStateChangedEventMetadata", data.pullRequestMergedStateChangedEventMetadata)
        
        
        |> JE.object










pullRequestMergedStateChangedEventMetadataEncoder : PullRequestMergedStateChangedEventMetadata -> JE.Value
pullRequestMergedStateChangedEventMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destinationReference", data.destinationReference)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (mergeMetadataEncoder)
            ("mergeMetadata", data.mergeMetadata)
        
        
        |> JE.object






pullRequestSourceReferenceUpdatedEventMetadataEncoder : PullRequestSourceReferenceUpdatedEventMetadata -> JE.Value
pullRequestSourceReferenceUpdatedEventMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("beforeCommitId", data.beforeCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("afterCommitId", data.afterCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("mergeBase", data.mergeBase)
        
        
        |> JE.object






pullRequestStatusChangedEventMetadataEncoder : PullRequestStatusChangedEventMetadata -> JE.Value
pullRequestStatusChangedEventMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (pullRequestStatusEnumToString >> JE.string)
            ("pullRequestStatus", data.pullRequestStatus)
        
        
        |> JE.object










pullRequestTargetEncoder : PullRequestTarget -> JE.Value
pullRequestTargetEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceReference", data.sourceReference)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destinationReference", data.destinationReference)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destinationCommit", data.destinationCommit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("sourceCommit", data.sourceCommit)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("mergeBase", data.mergeBase)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (mergeMetadataEncoder)
            ("mergeMetadata", data.mergeMetadata)
        
        
        |> JE.object






putFileEntryEncoder : PutFileEntry -> JE.Value
putFileEntryEncoder data =
    []
        
        
        |> (::) ("filePath", data.filePath |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fileModeTypeEnumToString >> JE.string)
            ("fileMode", data.fileMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("fileContent", data.fileContent)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sourceFileSpecifierEncoder)
            ("sourceFile", data.sourceFile)
        
        
        |> JE.object






putFileInputEncoder : PutFileInput -> JE.Value
putFileInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("branchName", data.branchName |> (JE.string))
        
        
        
        |> (::) ("fileContent", data.fileContent |> (JE.string))
        
        
        
        |> (::) ("filePath", data.filePath |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fileModeTypeEnumToString >> JE.string)
            ("fileMode", data.fileMode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("parentCommitId", data.parentCommitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitMessage", data.commitMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("email", data.email)
        
        
        |> JE.object






putFileOutputEncoder : PutFileOutput -> JE.Value
putFileOutputEncoder data =
    []
        
        
        |> (::) ("commitId", data.commitId |> (JE.string))
        
        
        
        |> (::) ("blobId", data.blobId |> (JE.string))
        
        
        
        |> (::) ("treeId", data.treeId |> (JE.string))
        
        
        |> JE.object






putRepositoryTriggersInputEncoder : PutRepositoryTriggersInput -> JE.Value
putRepositoryTriggersInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("triggers", data.triggers |> (JE.list (repositoryTriggerEncoder)))
        
        
        |> JE.object






putRepositoryTriggersOutputEncoder : PutRepositoryTriggersOutput -> JE.Value
putRepositoryTriggersOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("configurationId", data.configurationId)
        
        
        |> JE.object










replaceContentEntryEncoder : ReplaceContentEntry -> JE.Value
replaceContentEntryEncoder data =
    []
        
        
        |> (::) ("filePath", data.filePath |> (JE.string))
        
        
        
        |> (::) ("replacementType", data.replacementType |> (replacementTypeEnumToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("content", data.content)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fileModeTypeEnumToString >> JE.string)
            ("fileMode", data.fileMode)
        
        
        |> JE.object










repositoryMetadataEncoder : RepositoryMetadata -> JE.Value
repositoryMetadataEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("accountId", data.accountId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryId", data.repositoryId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryDescription", data.repositoryDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("defaultBranch", data.defaultBranch)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("lastModifiedDate", data.lastModifiedDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("creationDate", data.creationDate)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cloneUrlHttp", data.cloneUrlHttp)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("cloneUrlSsh", data.cloneUrlSsh)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        |> JE.object






repositoryNameIdPairEncoder : RepositoryNameIdPair -> JE.Value
repositoryNameIdPairEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryName", data.repositoryName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryId", data.repositoryId)
        
        
        |> JE.object






repositoryTriggerEncoder : RepositoryTrigger -> JE.Value
repositoryTriggerEncoder data =
    []
        
        
        |> (::) ("name", data.name |> (JE.string))
        
        
        
        |> (::) ("destinationArn", data.destinationArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("customData", data.customData)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("branches", data.branches)
        
        
        
        |> (::) ("events", data.events |> (JE.list (repositoryTriggerEventEnumToString >> JE.string)))
        
        
        |> JE.object










repositoryTriggerExecutionFailureEncoder : RepositoryTriggerExecutionFailure -> JE.Value
repositoryTriggerExecutionFailureEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("trigger", data.trigger)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("failureMessage", data.failureMessage)
        
        
        |> JE.object






setFileModeEntryEncoder : SetFileModeEntry -> JE.Value
setFileModeEntryEncoder data =
    []
        
        
        |> (::) ("filePath", data.filePath |> (JE.string))
        
        
        
        |> (::) ("fileMode", data.fileMode |> (fileModeTypeEnumToString >> JE.string))
        
        
        |> JE.object










sourceFileSpecifierEncoder : SourceFileSpecifier -> JE.Value
sourceFileSpecifierEncoder data =
    []
        
        
        |> (::) ("filePath", data.filePath |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("isMove", data.isMove)
        
        
        |> JE.object






subModuleEncoder : SubModule -> JE.Value
subModuleEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("commitId", data.commitId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("absolutePath", data.absolutePath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("relativePath", data.relativePath)
        
        
        |> JE.object






symbolicLinkEncoder : SymbolicLink -> JE.Value
symbolicLinkEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("blobId", data.blobId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("absolutePath", data.absolutePath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("relativePath", data.relativePath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (fileModeTypeEnumToString >> JE.string)
            ("fileMode", data.fileMode)
        
        
        |> JE.object






tagResourceInputEncoder : TagResourceInput -> JE.Value
tagResourceInputEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("tags", data.tags |> (JE.dict identity (JE.string)))
        
        
        |> JE.object






targetEncoder : Target -> JE.Value
targetEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("sourceReference", data.sourceReference |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("destinationReference", data.destinationReference)
        
        
        |> JE.object






testRepositoryTriggersInputEncoder : TestRepositoryTriggersInput -> JE.Value
testRepositoryTriggersInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("triggers", data.triggers |> (JE.list (repositoryTriggerEncoder)))
        
        
        |> JE.object






testRepositoryTriggersOutputEncoder : TestRepositoryTriggersOutput -> JE.Value
testRepositoryTriggersOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("successfulExecutions", data.successfulExecutions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (repositoryTriggerExecutionFailureEncoder))
            ("failedExecutions", data.failedExecutions)
        
        
        |> JE.object






untagResourceInputEncoder : UntagResourceInput -> JE.Value
untagResourceInputEncoder data =
    []
        
        
        |> (::) ("resourceArn", data.resourceArn |> (JE.string))
        
        
        
        |> (::) ("tagKeys", data.tagKeys |> (JE.list (JE.string)))
        
        
        |> JE.object






updateCommentInputEncoder : UpdateCommentInput -> JE.Value
updateCommentInputEncoder data =
    []
        
        
        |> (::) ("commentId", data.commentId |> (JE.string))
        
        
        
        |> (::) ("content", data.content |> (JE.string))
        
        
        |> JE.object






updateCommentOutputEncoder : UpdateCommentOutput -> JE.Value
updateCommentOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (commentEncoder)
            ("comment", data.comment)
        
        
        |> JE.object






updateDefaultBranchInputEncoder : UpdateDefaultBranchInput -> JE.Value
updateDefaultBranchInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> (::) ("defaultBranchName", data.defaultBranchName |> (JE.string))
        
        
        |> JE.object






updatePullRequestDescriptionInputEncoder : UpdatePullRequestDescriptionInput -> JE.Value
updatePullRequestDescriptionInputEncoder data =
    []
        
        
        |> (::) ("pullRequestId", data.pullRequestId |> (JE.string))
        
        
        
        |> (::) ("description", data.description |> (JE.string))
        
        
        |> JE.object






updatePullRequestDescriptionOutputEncoder : UpdatePullRequestDescriptionOutput -> JE.Value
updatePullRequestDescriptionOutputEncoder data =
    []
        
        
        |> (::) ("pullRequest", data.pullRequest |> (pullRequestEncoder))
        
        
        |> JE.object






updatePullRequestStatusInputEncoder : UpdatePullRequestStatusInput -> JE.Value
updatePullRequestStatusInputEncoder data =
    []
        
        
        |> (::) ("pullRequestId", data.pullRequestId |> (JE.string))
        
        
        
        |> (::) ("pullRequestStatus", data.pullRequestStatus |> (pullRequestStatusEnumToString >> JE.string))
        
        
        |> JE.object






updatePullRequestStatusOutputEncoder : UpdatePullRequestStatusOutput -> JE.Value
updatePullRequestStatusOutputEncoder data =
    []
        
        
        |> (::) ("pullRequest", data.pullRequest |> (pullRequestEncoder))
        
        
        |> JE.object






updatePullRequestTitleInputEncoder : UpdatePullRequestTitleInput -> JE.Value
updatePullRequestTitleInputEncoder data =
    []
        
        
        |> (::) ("pullRequestId", data.pullRequestId |> (JE.string))
        
        
        
        |> (::) ("title", data.title |> (JE.string))
        
        
        |> JE.object






updatePullRequestTitleOutputEncoder : UpdatePullRequestTitleOutput -> JE.Value
updatePullRequestTitleOutputEncoder data =
    []
        
        
        |> (::) ("pullRequest", data.pullRequest |> (pullRequestEncoder))
        
        
        |> JE.object






updateRepositoryDescriptionInputEncoder : UpdateRepositoryDescriptionInput -> JE.Value
updateRepositoryDescriptionInputEncoder data =
    []
        
        
        |> (::) ("repositoryName", data.repositoryName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("repositoryDescription", data.repositoryDescription)
        
        
        |> JE.object






updateRepositoryNameInputEncoder : UpdateRepositoryNameInput -> JE.Value
updateRepositoryNameInputEncoder data =
    []
        
        
        |> (::) ("oldName", data.oldName |> (JE.string))
        
        
        
        |> (::) ("newName", data.newName |> (JE.string))
        
        
        |> JE.object






userInfoEncoder : UserInfo -> JE.Value
userInfoEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("email", data.email)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("date", data.date)
        
        
        |> JE.object





