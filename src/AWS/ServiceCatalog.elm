module AWS.ServiceCatalog
    exposing
        ( service
        , acceptPortfolioShare
        , AcceptPortfolioShareOptions
        , associateBudgetWithResource
        , associatePrincipalWithPortfolio
        , AssociatePrincipalWithPortfolioOptions
        , associateProductWithPortfolio
        , AssociateProductWithPortfolioOptions
        , associateServiceActionWithProvisioningArtifact
        , AssociateServiceActionWithProvisioningArtifactOptions
        , associateTagOptionWithResource
        , batchAssociateServiceActionWithProvisioningArtifact
        , BatchAssociateServiceActionWithProvisioningArtifactOptions
        , batchDisassociateServiceActionFromProvisioningArtifact
        , BatchDisassociateServiceActionFromProvisioningArtifactOptions
        , copyProduct
        , CopyProductOptions
        , createConstraint
        , CreateConstraintOptions
        , createPortfolio
        , CreatePortfolioOptions
        , createPortfolioShare
        , CreatePortfolioShareOptions
        , createProduct
        , CreateProductOptions
        , createProvisionedProductPlan
        , CreateProvisionedProductPlanOptions
        , createProvisioningArtifact
        , CreateProvisioningArtifactOptions
        , createServiceAction
        , CreateServiceActionOptions
        , createTagOption
        , deleteConstraint
        , DeleteConstraintOptions
        , deletePortfolio
        , DeletePortfolioOptions
        , deletePortfolioShare
        , DeletePortfolioShareOptions
        , deleteProduct
        , DeleteProductOptions
        , deleteProvisionedProductPlan
        , DeleteProvisionedProductPlanOptions
        , deleteProvisioningArtifact
        , DeleteProvisioningArtifactOptions
        , deleteServiceAction
        , DeleteServiceActionOptions
        , deleteTagOption
        , describeConstraint
        , DescribeConstraintOptions
        , describeCopyProductStatus
        , DescribeCopyProductStatusOptions
        , describePortfolio
        , DescribePortfolioOptions
        , describePortfolioShareStatus
        , describeProduct
        , DescribeProductOptions
        , describeProductAsAdmin
        , DescribeProductAsAdminOptions
        , describeProductView
        , DescribeProductViewOptions
        , describeProvisionedProduct
        , DescribeProvisionedProductOptions
        , describeProvisionedProductPlan
        , DescribeProvisionedProductPlanOptions
        , describeProvisioningArtifact
        , DescribeProvisioningArtifactOptions
        , describeProvisioningParameters
        , DescribeProvisioningParametersOptions
        , describeRecord
        , DescribeRecordOptions
        , describeServiceAction
        , DescribeServiceActionOptions
        , describeServiceActionExecutionParameters
        , DescribeServiceActionExecutionParametersOptions
        , describeTagOption
        , disableAWSOrganizationsAccess
        , disassociateBudgetFromResource
        , disassociatePrincipalFromPortfolio
        , DisassociatePrincipalFromPortfolioOptions
        , disassociateProductFromPortfolio
        , DisassociateProductFromPortfolioOptions
        , disassociateServiceActionFromProvisioningArtifact
        , DisassociateServiceActionFromProvisioningArtifactOptions
        , disassociateTagOptionFromResource
        , enableAWSOrganizationsAccess
        , executeProvisionedProductPlan
        , ExecuteProvisionedProductPlanOptions
        , executeProvisionedProductServiceAction
        , ExecuteProvisionedProductServiceActionOptions
        , getAWSOrganizationsAccessStatus
        , listAcceptedPortfolioShares
        , ListAcceptedPortfolioSharesOptions
        , listBudgetsForResource
        , ListBudgetsForResourceOptions
        , listConstraintsForPortfolio
        , ListConstraintsForPortfolioOptions
        , listLaunchPaths
        , ListLaunchPathsOptions
        , listOrganizationPortfolioAccess
        , ListOrganizationPortfolioAccessOptions
        , listPortfolioAccess
        , ListPortfolioAccessOptions
        , listPortfolios
        , ListPortfoliosOptions
        , listPortfoliosForProduct
        , ListPortfoliosForProductOptions
        , listPrincipalsForPortfolio
        , ListPrincipalsForPortfolioOptions
        , listProvisionedProductPlans
        , ListProvisionedProductPlansOptions
        , listProvisioningArtifacts
        , ListProvisioningArtifactsOptions
        , listProvisioningArtifactsForServiceAction
        , ListProvisioningArtifactsForServiceActionOptions
        , listRecordHistory
        , ListRecordHistoryOptions
        , listResourcesForTagOption
        , ListResourcesForTagOptionOptions
        , listServiceActions
        , ListServiceActionsOptions
        , listServiceActionsForProvisioningArtifact
        , ListServiceActionsForProvisioningArtifactOptions
        , listStackInstancesForProvisionedProduct
        , ListStackInstancesForProvisionedProductOptions
        , listTagOptions
        , ListTagOptionsOptions
        , provisionProduct
        , ProvisionProductOptions
        , rejectPortfolioShare
        , RejectPortfolioShareOptions
        , scanProvisionedProducts
        , ScanProvisionedProductsOptions
        , searchProducts
        , SearchProductsOptions
        , searchProductsAsAdmin
        , SearchProductsAsAdminOptions
        , searchProvisionedProducts
        , SearchProvisionedProductsOptions
        , terminateProvisionedProduct
        , TerminateProvisionedProductOptions
        , updateConstraint
        , UpdateConstraintOptions
        , updatePortfolio
        , UpdatePortfolioOptions
        , updateProduct
        , UpdateProductOptions
        , updateProvisionedProduct
        , UpdateProvisionedProductOptions
        , updateProvisionedProductProperties
        , UpdateProvisionedProductPropertiesOptions
        , updateProvisioningArtifact
        , UpdateProvisioningArtifactOptions
        , updateServiceAction
        , UpdateServiceActionOptions
        , updateTagOption
        , UpdateTagOptionOptions
        , AcceptPortfolioShareOutput
        , AccessLevelFilter
        , AccessLevelFilterKey(..)
        , AccessStatus(..)
        , AssociateBudgetWithResourceOutput
        , AssociatePrincipalWithPortfolioOutput
        , AssociateProductWithPortfolioOutput
        , AssociateServiceActionWithProvisioningArtifactOutput
        , AssociateTagOptionWithResourceOutput
        , BatchAssociateServiceActionWithProvisioningArtifactOutput
        , BatchDisassociateServiceActionFromProvisioningArtifactOutput
        , BudgetDetail
        , ChangeAction(..)
        , CloudWatchDashboard
        , ConstraintDetail
        , ConstraintSummary
        , CopyOption(..)
        , CopyProductOutput
        , CopyProductStatus(..)
        , CreateConstraintOutput
        , CreatePortfolioOutput
        , CreatePortfolioShareOutput
        , CreateProductOutput
        , CreateProvisionedProductPlanOutput
        , CreateProvisioningArtifactOutput
        , CreateServiceActionOutput
        , CreateTagOptionOutput
        , DeleteConstraintOutput
        , DeletePortfolioOutput
        , DeletePortfolioShareOutput
        , DeleteProductOutput
        , DeleteProvisionedProductPlanOutput
        , DeleteProvisioningArtifactOutput
        , DeleteServiceActionOutput
        , DeleteTagOptionOutput
        , DescribeConstraintOutput
        , DescribeCopyProductStatusOutput
        , DescribePortfolioOutput
        , DescribePortfolioShareStatusOutput
        , DescribeProductAsAdminOutput
        , DescribeProductOutput
        , DescribeProductViewOutput
        , DescribeProvisionedProductOutput
        , DescribeProvisionedProductPlanOutput
        , DescribeProvisioningArtifactOutput
        , DescribeProvisioningParametersOutput
        , DescribeRecordOutput
        , DescribeServiceActionExecutionParametersOutput
        , DescribeServiceActionOutput
        , DescribeTagOptionOutput
        , DisableAWSOrganizationsAccessOutput
        , DisassociateBudgetFromResourceOutput
        , DisassociatePrincipalFromPortfolioOutput
        , DisassociateProductFromPortfolioOutput
        , DisassociateServiceActionFromProvisioningArtifactOutput
        , DisassociateTagOptionFromResourceOutput
        , EnableAWSOrganizationsAccessOutput
        , EvaluationType(..)
        , ExecuteProvisionedProductPlanOutput
        , ExecuteProvisionedProductServiceActionOutput
        , ExecutionParameter
        , FailedServiceActionAssociation
        , GetAWSOrganizationsAccessStatusOutput
        , LaunchPathSummary
        , ListAcceptedPortfolioSharesOutput
        , ListBudgetsForResourceOutput
        , ListConstraintsForPortfolioOutput
        , ListLaunchPathsOutput
        , ListOrganizationPortfolioAccessOutput
        , ListPortfolioAccessOutput
        , ListPortfoliosForProductOutput
        , ListPortfoliosOutput
        , ListPrincipalsForPortfolioOutput
        , ListProvisionedProductPlansOutput
        , ListProvisioningArtifactsForServiceActionOutput
        , ListProvisioningArtifactsOutput
        , ListRecordHistoryOutput
        , ListRecordHistorySearchFilter
        , ListResourcesForTagOptionOutput
        , ListServiceActionsForProvisioningArtifactOutput
        , ListServiceActionsOutput
        , ListStackInstancesForProvisionedProductOutput
        , ListTagOptionsFilters
        , ListTagOptionsOutput
        , OrganizationNode
        , OrganizationNodeType(..)
        , ParameterConstraints
        , PortfolioDetail
        , PortfolioShareType(..)
        , Principal
        , PrincipalType(..)
        , ProductSource(..)
        , ProductType(..)
        , ProductViewAggregationValue
        , ProductViewDetail
        , ProductViewFilterBy(..)
        , ProductViewSortBy(..)
        , ProductViewSummary
        , PropertyKey(..)
        , ProvisionProductOutput
        , ProvisionedProductAttribute
        , ProvisionedProductDetail
        , ProvisionedProductPlanDetails
        , ProvisionedProductPlanStatus(..)
        , ProvisionedProductPlanSummary
        , ProvisionedProductPlanType(..)
        , ProvisionedProductStatus(..)
        , ProvisionedProductViewFilterBy(..)
        , ProvisioningArtifact
        , ProvisioningArtifactDetail
        , ProvisioningArtifactGuidance(..)
        , ProvisioningArtifactParameter
        , ProvisioningArtifactPreferences
        , ProvisioningArtifactProperties
        , ProvisioningArtifactPropertyName(..)
        , ProvisioningArtifactSummary
        , ProvisioningArtifactType(..)
        , ProvisioningArtifactView
        , ProvisioningParameter
        , ProvisioningPreferences
        , RecordDetail
        , RecordError
        , RecordOutput
        , RecordStatus(..)
        , RecordTag
        , RejectPortfolioShareOutput
        , Replacement(..)
        , RequiresRecreation(..)
        , ResourceAttribute(..)
        , ResourceChange
        , ResourceChangeDetail
        , ResourceDetail
        , ResourceTargetDefinition
        , ScanProvisionedProductsOutput
        , SearchProductsAsAdminOutput
        , SearchProductsOutput
        , SearchProvisionedProductsOutput
        , ServiceActionAssociation
        , ServiceActionAssociationErrorCode(..)
        , ServiceActionDefinitionKey(..)
        , ServiceActionDefinitionType(..)
        , ServiceActionDetail
        , ServiceActionSummary
        , ShareDetails
        , ShareError
        , ShareStatus(..)
        , SortOrder(..)
        , StackInstance
        , StackInstanceStatus(..)
        , StackSetOperationType(..)
        , Status(..)
        , Tag
        , TagOptionDetail
        , TagOptionSummary
        , TerminateProvisionedProductOutput
        , UpdateConstraintOutput
        , UpdatePortfolioOutput
        , UpdateProductOutput
        , UpdateProvisionedProductOutput
        , UpdateProvisionedProductPropertiesOutput
        , UpdateProvisioningArtifactOutput
        , UpdateProvisioningParameter
        , UpdateProvisioningPreferences
        , UpdateServiceActionOutput
        , UpdateTagOptionOutput
        , UsageInstruction
        )

{-| <fullname>AWS Service Catalog</fullname> <p> <a href="https://aws.amazon.com/servicecatalog/">AWS Service Catalog</a> enables organizations to create and manage catalogs of IT services that are approved for use on AWS. To get the most out of this documentation, you should be familiar with the terminology discussed in <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html">AWS Service Catalog Concepts</a>.</p>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [acceptPortfolioShare](#acceptPortfolioShare)
* [AcceptPortfolioShareOptions](#AcceptPortfolioShareOptions)
* [associateBudgetWithResource](#associateBudgetWithResource)
* [associatePrincipalWithPortfolio](#associatePrincipalWithPortfolio)
* [AssociatePrincipalWithPortfolioOptions](#AssociatePrincipalWithPortfolioOptions)
* [associateProductWithPortfolio](#associateProductWithPortfolio)
* [AssociateProductWithPortfolioOptions](#AssociateProductWithPortfolioOptions)
* [associateServiceActionWithProvisioningArtifact](#associateServiceActionWithProvisioningArtifact)
* [AssociateServiceActionWithProvisioningArtifactOptions](#AssociateServiceActionWithProvisioningArtifactOptions)
* [associateTagOptionWithResource](#associateTagOptionWithResource)
* [batchAssociateServiceActionWithProvisioningArtifact](#batchAssociateServiceActionWithProvisioningArtifact)
* [BatchAssociateServiceActionWithProvisioningArtifactOptions](#BatchAssociateServiceActionWithProvisioningArtifactOptions)
* [batchDisassociateServiceActionFromProvisioningArtifact](#batchDisassociateServiceActionFromProvisioningArtifact)
* [BatchDisassociateServiceActionFromProvisioningArtifactOptions](#BatchDisassociateServiceActionFromProvisioningArtifactOptions)
* [copyProduct](#copyProduct)
* [CopyProductOptions](#CopyProductOptions)
* [createConstraint](#createConstraint)
* [CreateConstraintOptions](#CreateConstraintOptions)
* [createPortfolio](#createPortfolio)
* [CreatePortfolioOptions](#CreatePortfolioOptions)
* [createPortfolioShare](#createPortfolioShare)
* [CreatePortfolioShareOptions](#CreatePortfolioShareOptions)
* [createProduct](#createProduct)
* [CreateProductOptions](#CreateProductOptions)
* [createProvisionedProductPlan](#createProvisionedProductPlan)
* [CreateProvisionedProductPlanOptions](#CreateProvisionedProductPlanOptions)
* [createProvisioningArtifact](#createProvisioningArtifact)
* [CreateProvisioningArtifactOptions](#CreateProvisioningArtifactOptions)
* [createServiceAction](#createServiceAction)
* [CreateServiceActionOptions](#CreateServiceActionOptions)
* [createTagOption](#createTagOption)
* [deleteConstraint](#deleteConstraint)
* [DeleteConstraintOptions](#DeleteConstraintOptions)
* [deletePortfolio](#deletePortfolio)
* [DeletePortfolioOptions](#DeletePortfolioOptions)
* [deletePortfolioShare](#deletePortfolioShare)
* [DeletePortfolioShareOptions](#DeletePortfolioShareOptions)
* [deleteProduct](#deleteProduct)
* [DeleteProductOptions](#DeleteProductOptions)
* [deleteProvisionedProductPlan](#deleteProvisionedProductPlan)
* [DeleteProvisionedProductPlanOptions](#DeleteProvisionedProductPlanOptions)
* [deleteProvisioningArtifact](#deleteProvisioningArtifact)
* [DeleteProvisioningArtifactOptions](#DeleteProvisioningArtifactOptions)
* [deleteServiceAction](#deleteServiceAction)
* [DeleteServiceActionOptions](#DeleteServiceActionOptions)
* [deleteTagOption](#deleteTagOption)
* [describeConstraint](#describeConstraint)
* [DescribeConstraintOptions](#DescribeConstraintOptions)
* [describeCopyProductStatus](#describeCopyProductStatus)
* [DescribeCopyProductStatusOptions](#DescribeCopyProductStatusOptions)
* [describePortfolio](#describePortfolio)
* [DescribePortfolioOptions](#DescribePortfolioOptions)
* [describePortfolioShareStatus](#describePortfolioShareStatus)
* [describeProduct](#describeProduct)
* [DescribeProductOptions](#DescribeProductOptions)
* [describeProductAsAdmin](#describeProductAsAdmin)
* [DescribeProductAsAdminOptions](#DescribeProductAsAdminOptions)
* [describeProductView](#describeProductView)
* [DescribeProductViewOptions](#DescribeProductViewOptions)
* [describeProvisionedProduct](#describeProvisionedProduct)
* [DescribeProvisionedProductOptions](#DescribeProvisionedProductOptions)
* [describeProvisionedProductPlan](#describeProvisionedProductPlan)
* [DescribeProvisionedProductPlanOptions](#DescribeProvisionedProductPlanOptions)
* [describeProvisioningArtifact](#describeProvisioningArtifact)
* [DescribeProvisioningArtifactOptions](#DescribeProvisioningArtifactOptions)
* [describeProvisioningParameters](#describeProvisioningParameters)
* [DescribeProvisioningParametersOptions](#DescribeProvisioningParametersOptions)
* [describeRecord](#describeRecord)
* [DescribeRecordOptions](#DescribeRecordOptions)
* [describeServiceAction](#describeServiceAction)
* [DescribeServiceActionOptions](#DescribeServiceActionOptions)
* [describeServiceActionExecutionParameters](#describeServiceActionExecutionParameters)
* [DescribeServiceActionExecutionParametersOptions](#DescribeServiceActionExecutionParametersOptions)
* [describeTagOption](#describeTagOption)
* [disableAWSOrganizationsAccess](#disableAWSOrganizationsAccess)
* [disassociateBudgetFromResource](#disassociateBudgetFromResource)
* [disassociatePrincipalFromPortfolio](#disassociatePrincipalFromPortfolio)
* [DisassociatePrincipalFromPortfolioOptions](#DisassociatePrincipalFromPortfolioOptions)
* [disassociateProductFromPortfolio](#disassociateProductFromPortfolio)
* [DisassociateProductFromPortfolioOptions](#DisassociateProductFromPortfolioOptions)
* [disassociateServiceActionFromProvisioningArtifact](#disassociateServiceActionFromProvisioningArtifact)
* [DisassociateServiceActionFromProvisioningArtifactOptions](#DisassociateServiceActionFromProvisioningArtifactOptions)
* [disassociateTagOptionFromResource](#disassociateTagOptionFromResource)
* [enableAWSOrganizationsAccess](#enableAWSOrganizationsAccess)
* [executeProvisionedProductPlan](#executeProvisionedProductPlan)
* [ExecuteProvisionedProductPlanOptions](#ExecuteProvisionedProductPlanOptions)
* [executeProvisionedProductServiceAction](#executeProvisionedProductServiceAction)
* [ExecuteProvisionedProductServiceActionOptions](#ExecuteProvisionedProductServiceActionOptions)
* [getAWSOrganizationsAccessStatus](#getAWSOrganizationsAccessStatus)
* [listAcceptedPortfolioShares](#listAcceptedPortfolioShares)
* [ListAcceptedPortfolioSharesOptions](#ListAcceptedPortfolioSharesOptions)
* [listBudgetsForResource](#listBudgetsForResource)
* [ListBudgetsForResourceOptions](#ListBudgetsForResourceOptions)
* [listConstraintsForPortfolio](#listConstraintsForPortfolio)
* [ListConstraintsForPortfolioOptions](#ListConstraintsForPortfolioOptions)
* [listLaunchPaths](#listLaunchPaths)
* [ListLaunchPathsOptions](#ListLaunchPathsOptions)
* [listOrganizationPortfolioAccess](#listOrganizationPortfolioAccess)
* [ListOrganizationPortfolioAccessOptions](#ListOrganizationPortfolioAccessOptions)
* [listPortfolioAccess](#listPortfolioAccess)
* [ListPortfolioAccessOptions](#ListPortfolioAccessOptions)
* [listPortfolios](#listPortfolios)
* [ListPortfoliosOptions](#ListPortfoliosOptions)
* [listPortfoliosForProduct](#listPortfoliosForProduct)
* [ListPortfoliosForProductOptions](#ListPortfoliosForProductOptions)
* [listPrincipalsForPortfolio](#listPrincipalsForPortfolio)
* [ListPrincipalsForPortfolioOptions](#ListPrincipalsForPortfolioOptions)
* [listProvisionedProductPlans](#listProvisionedProductPlans)
* [ListProvisionedProductPlansOptions](#ListProvisionedProductPlansOptions)
* [listProvisioningArtifacts](#listProvisioningArtifacts)
* [ListProvisioningArtifactsOptions](#ListProvisioningArtifactsOptions)
* [listProvisioningArtifactsForServiceAction](#listProvisioningArtifactsForServiceAction)
* [ListProvisioningArtifactsForServiceActionOptions](#ListProvisioningArtifactsForServiceActionOptions)
* [listRecordHistory](#listRecordHistory)
* [ListRecordHistoryOptions](#ListRecordHistoryOptions)
* [listResourcesForTagOption](#listResourcesForTagOption)
* [ListResourcesForTagOptionOptions](#ListResourcesForTagOptionOptions)
* [listServiceActions](#listServiceActions)
* [ListServiceActionsOptions](#ListServiceActionsOptions)
* [listServiceActionsForProvisioningArtifact](#listServiceActionsForProvisioningArtifact)
* [ListServiceActionsForProvisioningArtifactOptions](#ListServiceActionsForProvisioningArtifactOptions)
* [listStackInstancesForProvisionedProduct](#listStackInstancesForProvisionedProduct)
* [ListStackInstancesForProvisionedProductOptions](#ListStackInstancesForProvisionedProductOptions)
* [listTagOptions](#listTagOptions)
* [ListTagOptionsOptions](#ListTagOptionsOptions)
* [provisionProduct](#provisionProduct)
* [ProvisionProductOptions](#ProvisionProductOptions)
* [rejectPortfolioShare](#rejectPortfolioShare)
* [RejectPortfolioShareOptions](#RejectPortfolioShareOptions)
* [scanProvisionedProducts](#scanProvisionedProducts)
* [ScanProvisionedProductsOptions](#ScanProvisionedProductsOptions)
* [searchProducts](#searchProducts)
* [SearchProductsOptions](#SearchProductsOptions)
* [searchProductsAsAdmin](#searchProductsAsAdmin)
* [SearchProductsAsAdminOptions](#SearchProductsAsAdminOptions)
* [searchProvisionedProducts](#searchProvisionedProducts)
* [SearchProvisionedProductsOptions](#SearchProvisionedProductsOptions)
* [terminateProvisionedProduct](#terminateProvisionedProduct)
* [TerminateProvisionedProductOptions](#TerminateProvisionedProductOptions)
* [updateConstraint](#updateConstraint)
* [UpdateConstraintOptions](#UpdateConstraintOptions)
* [updatePortfolio](#updatePortfolio)
* [UpdatePortfolioOptions](#UpdatePortfolioOptions)
* [updateProduct](#updateProduct)
* [UpdateProductOptions](#UpdateProductOptions)
* [updateProvisionedProduct](#updateProvisionedProduct)
* [UpdateProvisionedProductOptions](#UpdateProvisionedProductOptions)
* [updateProvisionedProductProperties](#updateProvisionedProductProperties)
* [UpdateProvisionedProductPropertiesOptions](#UpdateProvisionedProductPropertiesOptions)
* [updateProvisioningArtifact](#updateProvisioningArtifact)
* [UpdateProvisioningArtifactOptions](#UpdateProvisioningArtifactOptions)
* [updateServiceAction](#updateServiceAction)
* [UpdateServiceActionOptions](#UpdateServiceActionOptions)
* [updateTagOption](#updateTagOption)
* [UpdateTagOptionOptions](#UpdateTagOptionOptions)


@docs acceptPortfolioShare,AcceptPortfolioShareOptions,associateBudgetWithResource,associatePrincipalWithPortfolio,AssociatePrincipalWithPortfolioOptions,associateProductWithPortfolio,AssociateProductWithPortfolioOptions,associateServiceActionWithProvisioningArtifact,AssociateServiceActionWithProvisioningArtifactOptions,associateTagOptionWithResource,batchAssociateServiceActionWithProvisioningArtifact,BatchAssociateServiceActionWithProvisioningArtifactOptions,batchDisassociateServiceActionFromProvisioningArtifact,BatchDisassociateServiceActionFromProvisioningArtifactOptions,copyProduct,CopyProductOptions,createConstraint,CreateConstraintOptions,createPortfolio,CreatePortfolioOptions,createPortfolioShare,CreatePortfolioShareOptions,createProduct,CreateProductOptions,createProvisionedProductPlan,CreateProvisionedProductPlanOptions,createProvisioningArtifact,CreateProvisioningArtifactOptions,createServiceAction,CreateServiceActionOptions,createTagOption,deleteConstraint,DeleteConstraintOptions,deletePortfolio,DeletePortfolioOptions,deletePortfolioShare,DeletePortfolioShareOptions,deleteProduct,DeleteProductOptions,deleteProvisionedProductPlan,DeleteProvisionedProductPlanOptions,deleteProvisioningArtifact,DeleteProvisioningArtifactOptions,deleteServiceAction,DeleteServiceActionOptions,deleteTagOption,describeConstraint,DescribeConstraintOptions,describeCopyProductStatus,DescribeCopyProductStatusOptions,describePortfolio,DescribePortfolioOptions,describePortfolioShareStatus,describeProduct,DescribeProductOptions,describeProductAsAdmin,DescribeProductAsAdminOptions,describeProductView,DescribeProductViewOptions,describeProvisionedProduct,DescribeProvisionedProductOptions,describeProvisionedProductPlan,DescribeProvisionedProductPlanOptions,describeProvisioningArtifact,DescribeProvisioningArtifactOptions,describeProvisioningParameters,DescribeProvisioningParametersOptions,describeRecord,DescribeRecordOptions,describeServiceAction,DescribeServiceActionOptions,describeServiceActionExecutionParameters,DescribeServiceActionExecutionParametersOptions,describeTagOption,disableAWSOrganizationsAccess,disassociateBudgetFromResource,disassociatePrincipalFromPortfolio,DisassociatePrincipalFromPortfolioOptions,disassociateProductFromPortfolio,DisassociateProductFromPortfolioOptions,disassociateServiceActionFromProvisioningArtifact,DisassociateServiceActionFromProvisioningArtifactOptions,disassociateTagOptionFromResource,enableAWSOrganizationsAccess,executeProvisionedProductPlan,ExecuteProvisionedProductPlanOptions,executeProvisionedProductServiceAction,ExecuteProvisionedProductServiceActionOptions,getAWSOrganizationsAccessStatus,listAcceptedPortfolioShares,ListAcceptedPortfolioSharesOptions,listBudgetsForResource,ListBudgetsForResourceOptions,listConstraintsForPortfolio,ListConstraintsForPortfolioOptions,listLaunchPaths,ListLaunchPathsOptions,listOrganizationPortfolioAccess,ListOrganizationPortfolioAccessOptions,listPortfolioAccess,ListPortfolioAccessOptions,listPortfolios,ListPortfoliosOptions,listPortfoliosForProduct,ListPortfoliosForProductOptions,listPrincipalsForPortfolio,ListPrincipalsForPortfolioOptions,listProvisionedProductPlans,ListProvisionedProductPlansOptions,listProvisioningArtifacts,ListProvisioningArtifactsOptions,listProvisioningArtifactsForServiceAction,ListProvisioningArtifactsForServiceActionOptions,listRecordHistory,ListRecordHistoryOptions,listResourcesForTagOption,ListResourcesForTagOptionOptions,listServiceActions,ListServiceActionsOptions,listServiceActionsForProvisioningArtifact,ListServiceActionsForProvisioningArtifactOptions,listStackInstancesForProvisionedProduct,ListStackInstancesForProvisionedProductOptions,listTagOptions,ListTagOptionsOptions,provisionProduct,ProvisionProductOptions,rejectPortfolioShare,RejectPortfolioShareOptions,scanProvisionedProducts,ScanProvisionedProductsOptions,searchProducts,SearchProductsOptions,searchProductsAsAdmin,SearchProductsAsAdminOptions,searchProvisionedProducts,SearchProvisionedProductsOptions,terminateProvisionedProduct,TerminateProvisionedProductOptions,updateConstraint,UpdateConstraintOptions,updatePortfolio,UpdatePortfolioOptions,updateProduct,UpdateProductOptions,updateProvisionedProduct,UpdateProvisionedProductOptions,updateProvisionedProductProperties,UpdateProvisionedProductPropertiesOptions,updateProvisioningArtifact,UpdateProvisioningArtifactOptions,updateServiceAction,UpdateServiceActionOptions,updateTagOption,UpdateTagOptionOptions

## Responses

* [AcceptPortfolioShareOutput](#AcceptPortfolioShareOutput)
* [AssociateBudgetWithResourceOutput](#AssociateBudgetWithResourceOutput)
* [AssociatePrincipalWithPortfolioOutput](#AssociatePrincipalWithPortfolioOutput)
* [AssociateProductWithPortfolioOutput](#AssociateProductWithPortfolioOutput)
* [AssociateServiceActionWithProvisioningArtifactOutput](#AssociateServiceActionWithProvisioningArtifactOutput)
* [AssociateTagOptionWithResourceOutput](#AssociateTagOptionWithResourceOutput)
* [BatchAssociateServiceActionWithProvisioningArtifactOutput](#BatchAssociateServiceActionWithProvisioningArtifactOutput)
* [BatchDisassociateServiceActionFromProvisioningArtifactOutput](#BatchDisassociateServiceActionFromProvisioningArtifactOutput)
* [CopyProductOutput](#CopyProductOutput)
* [CreateConstraintOutput](#CreateConstraintOutput)
* [CreatePortfolioOutput](#CreatePortfolioOutput)
* [CreatePortfolioShareOutput](#CreatePortfolioShareOutput)
* [CreateProductOutput](#CreateProductOutput)
* [CreateProvisionedProductPlanOutput](#CreateProvisionedProductPlanOutput)
* [CreateProvisioningArtifactOutput](#CreateProvisioningArtifactOutput)
* [CreateServiceActionOutput](#CreateServiceActionOutput)
* [CreateTagOptionOutput](#CreateTagOptionOutput)
* [DeleteConstraintOutput](#DeleteConstraintOutput)
* [DeletePortfolioOutput](#DeletePortfolioOutput)
* [DeletePortfolioShareOutput](#DeletePortfolioShareOutput)
* [DeleteProductOutput](#DeleteProductOutput)
* [DeleteProvisionedProductPlanOutput](#DeleteProvisionedProductPlanOutput)
* [DeleteProvisioningArtifactOutput](#DeleteProvisioningArtifactOutput)
* [DeleteServiceActionOutput](#DeleteServiceActionOutput)
* [DeleteTagOptionOutput](#DeleteTagOptionOutput)
* [DescribeConstraintOutput](#DescribeConstraintOutput)
* [DescribeCopyProductStatusOutput](#DescribeCopyProductStatusOutput)
* [DescribePortfolioOutput](#DescribePortfolioOutput)
* [DescribePortfolioShareStatusOutput](#DescribePortfolioShareStatusOutput)
* [DescribeProductAsAdminOutput](#DescribeProductAsAdminOutput)
* [DescribeProductOutput](#DescribeProductOutput)
* [DescribeProductViewOutput](#DescribeProductViewOutput)
* [DescribeProvisionedProductOutput](#DescribeProvisionedProductOutput)
* [DescribeProvisionedProductPlanOutput](#DescribeProvisionedProductPlanOutput)
* [DescribeProvisioningArtifactOutput](#DescribeProvisioningArtifactOutput)
* [DescribeProvisioningParametersOutput](#DescribeProvisioningParametersOutput)
* [DescribeRecordOutput](#DescribeRecordOutput)
* [DescribeServiceActionExecutionParametersOutput](#DescribeServiceActionExecutionParametersOutput)
* [DescribeServiceActionOutput](#DescribeServiceActionOutput)
* [DescribeTagOptionOutput](#DescribeTagOptionOutput)
* [DisableAWSOrganizationsAccessOutput](#DisableAWSOrganizationsAccessOutput)
* [DisassociateBudgetFromResourceOutput](#DisassociateBudgetFromResourceOutput)
* [DisassociatePrincipalFromPortfolioOutput](#DisassociatePrincipalFromPortfolioOutput)
* [DisassociateProductFromPortfolioOutput](#DisassociateProductFromPortfolioOutput)
* [DisassociateServiceActionFromProvisioningArtifactOutput](#DisassociateServiceActionFromProvisioningArtifactOutput)
* [DisassociateTagOptionFromResourceOutput](#DisassociateTagOptionFromResourceOutput)
* [EnableAWSOrganizationsAccessOutput](#EnableAWSOrganizationsAccessOutput)
* [ExecuteProvisionedProductPlanOutput](#ExecuteProvisionedProductPlanOutput)
* [ExecuteProvisionedProductServiceActionOutput](#ExecuteProvisionedProductServiceActionOutput)
* [GetAWSOrganizationsAccessStatusOutput](#GetAWSOrganizationsAccessStatusOutput)
* [ListAcceptedPortfolioSharesOutput](#ListAcceptedPortfolioSharesOutput)
* [ListBudgetsForResourceOutput](#ListBudgetsForResourceOutput)
* [ListConstraintsForPortfolioOutput](#ListConstraintsForPortfolioOutput)
* [ListLaunchPathsOutput](#ListLaunchPathsOutput)
* [ListOrganizationPortfolioAccessOutput](#ListOrganizationPortfolioAccessOutput)
* [ListPortfolioAccessOutput](#ListPortfolioAccessOutput)
* [ListPortfoliosForProductOutput](#ListPortfoliosForProductOutput)
* [ListPortfoliosOutput](#ListPortfoliosOutput)
* [ListPrincipalsForPortfolioOutput](#ListPrincipalsForPortfolioOutput)
* [ListProvisionedProductPlansOutput](#ListProvisionedProductPlansOutput)
* [ListProvisioningArtifactsForServiceActionOutput](#ListProvisioningArtifactsForServiceActionOutput)
* [ListProvisioningArtifactsOutput](#ListProvisioningArtifactsOutput)
* [ListRecordHistoryOutput](#ListRecordHistoryOutput)
* [ListResourcesForTagOptionOutput](#ListResourcesForTagOptionOutput)
* [ListServiceActionsForProvisioningArtifactOutput](#ListServiceActionsForProvisioningArtifactOutput)
* [ListServiceActionsOutput](#ListServiceActionsOutput)
* [ListStackInstancesForProvisionedProductOutput](#ListStackInstancesForProvisionedProductOutput)
* [ListTagOptionsOutput](#ListTagOptionsOutput)
* [ProvisionProductOutput](#ProvisionProductOutput)
* [RejectPortfolioShareOutput](#RejectPortfolioShareOutput)
* [ScanProvisionedProductsOutput](#ScanProvisionedProductsOutput)
* [SearchProductsAsAdminOutput](#SearchProductsAsAdminOutput)
* [SearchProductsOutput](#SearchProductsOutput)
* [SearchProvisionedProductsOutput](#SearchProvisionedProductsOutput)
* [TerminateProvisionedProductOutput](#TerminateProvisionedProductOutput)
* [UpdateConstraintOutput](#UpdateConstraintOutput)
* [UpdatePortfolioOutput](#UpdatePortfolioOutput)
* [UpdateProductOutput](#UpdateProductOutput)
* [UpdateProvisionedProductOutput](#UpdateProvisionedProductOutput)
* [UpdateProvisionedProductPropertiesOutput](#UpdateProvisionedProductPropertiesOutput)
* [UpdateProvisioningArtifactOutput](#UpdateProvisioningArtifactOutput)
* [UpdateServiceActionOutput](#UpdateServiceActionOutput)
* [UpdateTagOptionOutput](#UpdateTagOptionOutput)


@docs AcceptPortfolioShareOutput,AssociateBudgetWithResourceOutput,AssociatePrincipalWithPortfolioOutput,AssociateProductWithPortfolioOutput,AssociateServiceActionWithProvisioningArtifactOutput,AssociateTagOptionWithResourceOutput,BatchAssociateServiceActionWithProvisioningArtifactOutput,BatchDisassociateServiceActionFromProvisioningArtifactOutput,CopyProductOutput,CreateConstraintOutput,CreatePortfolioOutput,CreatePortfolioShareOutput,CreateProductOutput,CreateProvisionedProductPlanOutput,CreateProvisioningArtifactOutput,CreateServiceActionOutput,CreateTagOptionOutput,DeleteConstraintOutput,DeletePortfolioOutput,DeletePortfolioShareOutput,DeleteProductOutput,DeleteProvisionedProductPlanOutput,DeleteProvisioningArtifactOutput,DeleteServiceActionOutput,DeleteTagOptionOutput,DescribeConstraintOutput,DescribeCopyProductStatusOutput,DescribePortfolioOutput,DescribePortfolioShareStatusOutput,DescribeProductAsAdminOutput,DescribeProductOutput,DescribeProductViewOutput,DescribeProvisionedProductOutput,DescribeProvisionedProductPlanOutput,DescribeProvisioningArtifactOutput,DescribeProvisioningParametersOutput,DescribeRecordOutput,DescribeServiceActionExecutionParametersOutput,DescribeServiceActionOutput,DescribeTagOptionOutput,DisableAWSOrganizationsAccessOutput,DisassociateBudgetFromResourceOutput,DisassociatePrincipalFromPortfolioOutput,DisassociateProductFromPortfolioOutput,DisassociateServiceActionFromProvisioningArtifactOutput,DisassociateTagOptionFromResourceOutput,EnableAWSOrganizationsAccessOutput,ExecuteProvisionedProductPlanOutput,ExecuteProvisionedProductServiceActionOutput,GetAWSOrganizationsAccessStatusOutput,ListAcceptedPortfolioSharesOutput,ListBudgetsForResourceOutput,ListConstraintsForPortfolioOutput,ListLaunchPathsOutput,ListOrganizationPortfolioAccessOutput,ListPortfolioAccessOutput,ListPortfoliosForProductOutput,ListPortfoliosOutput,ListPrincipalsForPortfolioOutput,ListProvisionedProductPlansOutput,ListProvisioningArtifactsForServiceActionOutput,ListProvisioningArtifactsOutput,ListRecordHistoryOutput,ListResourcesForTagOptionOutput,ListServiceActionsForProvisioningArtifactOutput,ListServiceActionsOutput,ListStackInstancesForProvisionedProductOutput,ListTagOptionsOutput,ProvisionProductOutput,RejectPortfolioShareOutput,ScanProvisionedProductsOutput,SearchProductsAsAdminOutput,SearchProductsOutput,SearchProvisionedProductsOutput,TerminateProvisionedProductOutput,UpdateConstraintOutput,UpdatePortfolioOutput,UpdateProductOutput,UpdateProvisionedProductOutput,UpdateProvisionedProductPropertiesOutput,UpdateProvisioningArtifactOutput,UpdateServiceActionOutput,UpdateTagOptionOutput

## Records

* [AccessLevelFilter](#AccessLevelFilter)
* [BudgetDetail](#BudgetDetail)
* [CloudWatchDashboard](#CloudWatchDashboard)
* [ConstraintDetail](#ConstraintDetail)
* [ConstraintSummary](#ConstraintSummary)
* [ExecutionParameter](#ExecutionParameter)
* [FailedServiceActionAssociation](#FailedServiceActionAssociation)
* [LaunchPathSummary](#LaunchPathSummary)
* [ListRecordHistorySearchFilter](#ListRecordHistorySearchFilter)
* [ListTagOptionsFilters](#ListTagOptionsFilters)
* [OrganizationNode](#OrganizationNode)
* [ParameterConstraints](#ParameterConstraints)
* [PortfolioDetail](#PortfolioDetail)
* [Principal](#Principal)
* [ProductViewAggregationValue](#ProductViewAggregationValue)
* [ProductViewDetail](#ProductViewDetail)
* [ProductViewSummary](#ProductViewSummary)
* [ProvisionedProductAttribute](#ProvisionedProductAttribute)
* [ProvisionedProductDetail](#ProvisionedProductDetail)
* [ProvisionedProductPlanDetails](#ProvisionedProductPlanDetails)
* [ProvisionedProductPlanSummary](#ProvisionedProductPlanSummary)
* [ProvisioningArtifact](#ProvisioningArtifact)
* [ProvisioningArtifactDetail](#ProvisioningArtifactDetail)
* [ProvisioningArtifactParameter](#ProvisioningArtifactParameter)
* [ProvisioningArtifactPreferences](#ProvisioningArtifactPreferences)
* [ProvisioningArtifactProperties](#ProvisioningArtifactProperties)
* [ProvisioningArtifactSummary](#ProvisioningArtifactSummary)
* [ProvisioningArtifactView](#ProvisioningArtifactView)
* [ProvisioningParameter](#ProvisioningParameter)
* [ProvisioningPreferences](#ProvisioningPreferences)
* [RecordDetail](#RecordDetail)
* [RecordError](#RecordError)
* [RecordOutput](#RecordOutput)
* [RecordTag](#RecordTag)
* [ResourceChange](#ResourceChange)
* [ResourceChangeDetail](#ResourceChangeDetail)
* [ResourceDetail](#ResourceDetail)
* [ResourceTargetDefinition](#ResourceTargetDefinition)
* [ServiceActionAssociation](#ServiceActionAssociation)
* [ServiceActionDetail](#ServiceActionDetail)
* [ServiceActionSummary](#ServiceActionSummary)
* [ShareDetails](#ShareDetails)
* [ShareError](#ShareError)
* [StackInstance](#StackInstance)
* [Tag](#Tag)
* [TagOptionDetail](#TagOptionDetail)
* [TagOptionSummary](#TagOptionSummary)
* [UpdateProvisioningParameter](#UpdateProvisioningParameter)
* [UpdateProvisioningPreferences](#UpdateProvisioningPreferences)
* [UsageInstruction](#UsageInstruction)


@docs AccessLevelFilter,BudgetDetail,CloudWatchDashboard,ConstraintDetail,ConstraintSummary,ExecutionParameter,FailedServiceActionAssociation,LaunchPathSummary,ListRecordHistorySearchFilter,ListTagOptionsFilters,OrganizationNode,ParameterConstraints,PortfolioDetail,Principal,ProductViewAggregationValue,ProductViewDetail,ProductViewSummary,ProvisionedProductAttribute,ProvisionedProductDetail,ProvisionedProductPlanDetails,ProvisionedProductPlanSummary,ProvisioningArtifact,ProvisioningArtifactDetail,ProvisioningArtifactParameter,ProvisioningArtifactPreferences,ProvisioningArtifactProperties,ProvisioningArtifactSummary,ProvisioningArtifactView,ProvisioningParameter,ProvisioningPreferences,RecordDetail,RecordError,RecordOutput,RecordTag,ResourceChange,ResourceChangeDetail,ResourceDetail,ResourceTargetDefinition,ServiceActionAssociation,ServiceActionDetail,ServiceActionSummary,ShareDetails,ShareError,StackInstance,Tag,TagOptionDetail,TagOptionSummary,UpdateProvisioningParameter,UpdateProvisioningPreferences,UsageInstruction

## Unions

* [AccessLevelFilterKey](#AccessLevelFilterKey)
* [AccessStatus](#AccessStatus)
* [ChangeAction](#ChangeAction)
* [CopyOption](#CopyOption)
* [CopyProductStatus](#CopyProductStatus)
* [EvaluationType](#EvaluationType)
* [OrganizationNodeType](#OrganizationNodeType)
* [PortfolioShareType](#PortfolioShareType)
* [PrincipalType](#PrincipalType)
* [ProductSource](#ProductSource)
* [ProductType](#ProductType)
* [ProductViewFilterBy](#ProductViewFilterBy)
* [ProductViewSortBy](#ProductViewSortBy)
* [PropertyKey](#PropertyKey)
* [ProvisionedProductPlanStatus](#ProvisionedProductPlanStatus)
* [ProvisionedProductPlanType](#ProvisionedProductPlanType)
* [ProvisionedProductStatus](#ProvisionedProductStatus)
* [ProvisionedProductViewFilterBy](#ProvisionedProductViewFilterBy)
* [ProvisioningArtifactGuidance](#ProvisioningArtifactGuidance)
* [ProvisioningArtifactPropertyName](#ProvisioningArtifactPropertyName)
* [ProvisioningArtifactType](#ProvisioningArtifactType)
* [RecordStatus](#RecordStatus)
* [Replacement](#Replacement)
* [RequiresRecreation](#RequiresRecreation)
* [ResourceAttribute](#ResourceAttribute)
* [ServiceActionAssociationErrorCode](#ServiceActionAssociationErrorCode)
* [ServiceActionDefinitionKey](#ServiceActionDefinitionKey)
* [ServiceActionDefinitionType](#ServiceActionDefinitionType)
* [ShareStatus](#ShareStatus)
* [SortOrder](#SortOrder)
* [StackInstanceStatus](#StackInstanceStatus)
* [StackSetOperationType](#StackSetOperationType)
* [Status](#Status)


@docs AccessLevelFilterKey,AccessStatus,ChangeAction,CopyOption,CopyProductStatus,EvaluationType,OrganizationNodeType,PortfolioShareType,PrincipalType,ProductSource,ProductType,ProductViewFilterBy,ProductViewSortBy,PropertyKey,ProvisionedProductPlanStatus,ProvisionedProductPlanType,ProvisionedProductStatus,ProvisionedProductViewFilterBy,ProvisioningArtifactGuidance,ProvisioningArtifactPropertyName,ProvisioningArtifactType,RecordStatus,Replacement,RequiresRecreation,ResourceAttribute,ServiceActionAssociationErrorCode,ServiceActionDefinitionKey,ServiceActionDefinitionType,ShareStatus,SortOrder,StackInstanceStatus,StackSetOperationType,Status

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
        "servicecatalog"
        "2015-12-10"
        AWS.Core.Service.json
        AWS.Core.Service.signV4
        (AWS.Core.Service.setJsonVersion "1.1" >> AWS.Core.Service.setTargetPrefix "AWS242ServiceCatalogService")



-- OPERATIONS

{-| <p>Accepts an offer to share the specified portfolio.</p>

__Required Parameters__

* `portfolioId` __:__ `String`


-}

acceptPortfolioShare :
  
    String ->
  
  
    ( AcceptPortfolioShareOptions -> AcceptPortfolioShareOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AcceptPortfolioShareOutput)

acceptPortfolioShare portfolioId setOptions =
    
    let
        requestInput = AcceptPortfolioShareInput
            
            options.acceptLanguage
            
            portfolioId
            
            options.portfolioShareType
            
        
        options = setOptions (AcceptPortfolioShareOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> acceptPortfolioShareInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AcceptPortfolioShare"
                
                (AWS.Core.Decode.ResultDecoder "AcceptPortfolioShareOutput" acceptPortfolioShareOutputDecoder)
                
            )



{-| Options for a acceptPortfolioShare request
-}
type alias AcceptPortfolioShareOptions =
    {
    acceptLanguage : Maybe String,portfolioShareType : Maybe PortfolioShareType
    }



{-| <p>Associates the specified budget with the specified resource.</p>

__Required Parameters__

* `budgetName` __:__ `String`
* `resourceId` __:__ `String`


-}

associateBudgetWithResource :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateBudgetWithResourceOutput)

associateBudgetWithResource budgetName resourceId =
    
    let
        requestInput = AssociateBudgetWithResourceInput
            
            budgetName
            
            resourceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateBudgetWithResourceInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateBudgetWithResource"
                
                (AWS.Core.Decode.ResultDecoder "AssociateBudgetWithResourceOutput" associateBudgetWithResourceOutputDecoder)
                
            )





{-| <p>Associates the specified principal ARN with the specified portfolio.</p>

__Required Parameters__

* `portfolioId` __:__ `String`
* `principalARN` __:__ `String`
* `principalType` __:__ `PrincipalType`


-}

associatePrincipalWithPortfolio :
  
    String ->
  
    String ->
  
    PrincipalType ->
  
  
    ( AssociatePrincipalWithPortfolioOptions -> AssociatePrincipalWithPortfolioOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociatePrincipalWithPortfolioOutput)

associatePrincipalWithPortfolio portfolioId principalARN principalType setOptions =
    
    let
        requestInput = AssociatePrincipalWithPortfolioInput
            
            options.acceptLanguage
            
            portfolioId
            
            principalARN
            
            principalType
            
        
        options = setOptions (AssociatePrincipalWithPortfolioOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associatePrincipalWithPortfolioInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociatePrincipalWithPortfolio"
                
                (AWS.Core.Decode.ResultDecoder "AssociatePrincipalWithPortfolioOutput" associatePrincipalWithPortfolioOutputDecoder)
                
            )



{-| Options for a associatePrincipalWithPortfolio request
-}
type alias AssociatePrincipalWithPortfolioOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Associates the specified product with the specified portfolio.</p>

__Required Parameters__

* `productId` __:__ `String`
* `portfolioId` __:__ `String`


-}

associateProductWithPortfolio :
  
    String ->
  
    String ->
  
  
    ( AssociateProductWithPortfolioOptions -> AssociateProductWithPortfolioOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateProductWithPortfolioOutput)

associateProductWithPortfolio productId portfolioId setOptions =
    
    let
        requestInput = AssociateProductWithPortfolioInput
            
            options.acceptLanguage
            
            productId
            
            portfolioId
            
            options.sourcePortfolioId
            
        
        options = setOptions (AssociateProductWithPortfolioOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateProductWithPortfolioInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateProductWithPortfolio"
                
                (AWS.Core.Decode.ResultDecoder "AssociateProductWithPortfolioOutput" associateProductWithPortfolioOutputDecoder)
                
            )



{-| Options for a associateProductWithPortfolio request
-}
type alias AssociateProductWithPortfolioOptions =
    {
    acceptLanguage : Maybe String,sourcePortfolioId : Maybe String
    }



{-| <p>Associates a self-service action with a provisioning artifact.</p>

__Required Parameters__

* `productId` __:__ `String`
* `provisioningArtifactId` __:__ `String`
* `serviceActionId` __:__ `String`


-}

associateServiceActionWithProvisioningArtifact :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( AssociateServiceActionWithProvisioningArtifactOptions -> AssociateServiceActionWithProvisioningArtifactOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateServiceActionWithProvisioningArtifactOutput)

associateServiceActionWithProvisioningArtifact productId provisioningArtifactId serviceActionId setOptions =
    
    let
        requestInput = AssociateServiceActionWithProvisioningArtifactInput
            
            productId
            
            provisioningArtifactId
            
            serviceActionId
            
            options.acceptLanguage
            
        
        options = setOptions (AssociateServiceActionWithProvisioningArtifactOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateServiceActionWithProvisioningArtifactInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateServiceActionWithProvisioningArtifact"
                
                (AWS.Core.Decode.ResultDecoder "AssociateServiceActionWithProvisioningArtifactOutput" associateServiceActionWithProvisioningArtifactOutputDecoder)
                
            )



{-| Options for a associateServiceActionWithProvisioningArtifact request
-}
type alias AssociateServiceActionWithProvisioningArtifactOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Associate the specified TagOption with the specified portfolio or product.</p>

__Required Parameters__

* `resourceId` __:__ `String`
* `tagOptionId` __:__ `String`


-}

associateTagOptionWithResource :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper AssociateTagOptionWithResourceOutput)

associateTagOptionWithResource resourceId tagOptionId =
    
    let
        requestInput = AssociateTagOptionWithResourceInput
            
            resourceId
            
            tagOptionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> associateTagOptionWithResourceInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AssociateTagOptionWithResource"
                
                (AWS.Core.Decode.ResultDecoder "AssociateTagOptionWithResourceOutput" associateTagOptionWithResourceOutputDecoder)
                
            )





{-| <p>Associates multiple self-service actions with provisioning artifacts.</p>

__Required Parameters__

* `serviceActionAssociations` __:__ `(List ServiceActionAssociation)`


-}

batchAssociateServiceActionWithProvisioningArtifact :
  
    (List ServiceActionAssociation) ->
  
  
    ( BatchAssociateServiceActionWithProvisioningArtifactOptions -> BatchAssociateServiceActionWithProvisioningArtifactOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchAssociateServiceActionWithProvisioningArtifactOutput)

batchAssociateServiceActionWithProvisioningArtifact serviceActionAssociations setOptions =
    
    let
        requestInput = BatchAssociateServiceActionWithProvisioningArtifactInput
            
            serviceActionAssociations
            
            options.acceptLanguage
            
        
        options = setOptions (BatchAssociateServiceActionWithProvisioningArtifactOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchAssociateServiceActionWithProvisioningArtifactInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchAssociateServiceActionWithProvisioningArtifact"
                
                (AWS.Core.Decode.ResultDecoder "BatchAssociateServiceActionWithProvisioningArtifactOutput" batchAssociateServiceActionWithProvisioningArtifactOutputDecoder)
                
            )



{-| Options for a batchAssociateServiceActionWithProvisioningArtifact request
-}
type alias BatchAssociateServiceActionWithProvisioningArtifactOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Disassociates a batch of self-service actions from the specified provisioning artifact.</p>

__Required Parameters__

* `serviceActionAssociations` __:__ `(List ServiceActionAssociation)`


-}

batchDisassociateServiceActionFromProvisioningArtifact :
  
    (List ServiceActionAssociation) ->
  
  
    ( BatchDisassociateServiceActionFromProvisioningArtifactOptions -> BatchDisassociateServiceActionFromProvisioningArtifactOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper BatchDisassociateServiceActionFromProvisioningArtifactOutput)

batchDisassociateServiceActionFromProvisioningArtifact serviceActionAssociations setOptions =
    
    let
        requestInput = BatchDisassociateServiceActionFromProvisioningArtifactInput
            
            serviceActionAssociations
            
            options.acceptLanguage
            
        
        options = setOptions (BatchDisassociateServiceActionFromProvisioningArtifactOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> batchDisassociateServiceActionFromProvisioningArtifactInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "BatchDisassociateServiceActionFromProvisioningArtifact"
                
                (AWS.Core.Decode.ResultDecoder "BatchDisassociateServiceActionFromProvisioningArtifactOutput" batchDisassociateServiceActionFromProvisioningArtifactOutputDecoder)
                
            )



{-| Options for a batchDisassociateServiceActionFromProvisioningArtifact request
-}
type alias BatchDisassociateServiceActionFromProvisioningArtifactOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Copies the specified source product to the specified target product or a new product.</p> <p>You can copy a product to the same account or another account. You can copy a product to the same region or another region.</p> <p>This operation is performed asynchronously. To track the progress of the operation, use <a>DescribeCopyProductStatus</a>.</p>

__Required Parameters__

* `sourceProductArn` __:__ `String`
* `idempotencyToken` __:__ `String`


-}

copyProduct :
  
    String ->
  
    String ->
  
  
    ( CopyProductOptions -> CopyProductOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CopyProductOutput)

copyProduct sourceProductArn idempotencyToken setOptions =
    
    let
        requestInput = CopyProductInput
            
            options.acceptLanguage
            
            sourceProductArn
            
            options.targetProductId
            
            options.targetProductName
            
            options.sourceProvisioningArtifactIdentifiers
            
            options.copyOptions
            
            idempotencyToken
            
        
        options = setOptions (CopyProductOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> copyProductInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CopyProduct"
                
                (AWS.Core.Decode.ResultDecoder "CopyProductOutput" copyProductOutputDecoder)
                
            )



{-| Options for a copyProduct request
-}
type alias CopyProductOptions =
    {
    acceptLanguage : Maybe String,targetProductId : Maybe String,targetProductName : Maybe String,sourceProvisioningArtifactIdentifiers : Maybe (List (Dict String String)),copyOptions : Maybe (List CopyOption)
    }



{-| <p>Creates a constraint.</p>

__Required Parameters__

* `portfolioId` __:__ `String`
* `productId` __:__ `String`
* `parameters` __:__ `String`
* `type_` __:__ `String`
* `idempotencyToken` __:__ `String`


-}

createConstraint :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateConstraintOptions -> CreateConstraintOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateConstraintOutput)

createConstraint portfolioId productId parameters type_ idempotencyToken setOptions =
    
    let
        requestInput = CreateConstraintInput
            
            options.acceptLanguage
            
            portfolioId
            
            productId
            
            parameters
            
            type_
            
            options.description
            
            idempotencyToken
            
        
        options = setOptions (CreateConstraintOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createConstraintInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateConstraint"
                
                (AWS.Core.Decode.ResultDecoder "CreateConstraintOutput" createConstraintOutputDecoder)
                
            )



{-| Options for a createConstraint request
-}
type alias CreateConstraintOptions =
    {
    acceptLanguage : Maybe String,description : Maybe String
    }



{-| <p>Creates a portfolio.</p>

__Required Parameters__

* `displayName` __:__ `String`
* `providerName` __:__ `String`
* `idempotencyToken` __:__ `String`


-}

createPortfolio :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreatePortfolioOptions -> CreatePortfolioOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePortfolioOutput)

createPortfolio displayName providerName idempotencyToken setOptions =
    
    let
        requestInput = CreatePortfolioInput
            
            options.acceptLanguage
            
            displayName
            
            options.description
            
            providerName
            
            options.tags
            
            idempotencyToken
            
        
        options = setOptions (CreatePortfolioOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createPortfolioInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePortfolio"
                
                (AWS.Core.Decode.ResultDecoder "CreatePortfolioOutput" createPortfolioOutputDecoder)
                
            )



{-| Options for a createPortfolio request
-}
type alias CreatePortfolioOptions =
    {
    acceptLanguage : Maybe String,description : Maybe String,tags : Maybe (List Tag)
    }



{-| <p>Shares the specified portfolio with the specified account or organization node. Shares to an organization node can only be created by the master account of an Organization. AWSOrganizationsAccess must be enabled in order to create a portfolio share to an organization node.</p>

__Required Parameters__

* `portfolioId` __:__ `String`


-}

createPortfolioShare :
  
    String ->
  
  
    ( CreatePortfolioShareOptions -> CreatePortfolioShareOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreatePortfolioShareOutput)

createPortfolioShare portfolioId setOptions =
    
    let
        requestInput = CreatePortfolioShareInput
            
            options.acceptLanguage
            
            portfolioId
            
            options.accountId
            
            options.organizationNode
            
        
        options = setOptions (CreatePortfolioShareOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createPortfolioShareInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreatePortfolioShare"
                
                (AWS.Core.Decode.ResultDecoder "CreatePortfolioShareOutput" createPortfolioShareOutputDecoder)
                
            )



{-| Options for a createPortfolioShare request
-}
type alias CreatePortfolioShareOptions =
    {
    acceptLanguage : Maybe String,accountId : Maybe String,organizationNode : Maybe OrganizationNode
    }



{-| <p>Creates a product.</p>

__Required Parameters__

* `name` __:__ `String`
* `owner` __:__ `String`
* `productType` __:__ `ProductType`
* `provisioningArtifactParameters` __:__ `ProvisioningArtifactProperties`
* `idempotencyToken` __:__ `String`


-}

createProduct :
  
    String ->
  
    String ->
  
    ProductType ->
  
    ProvisioningArtifactProperties ->
  
    String ->
  
  
    ( CreateProductOptions -> CreateProductOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateProductOutput)

createProduct name owner productType provisioningArtifactParameters idempotencyToken setOptions =
    
    let
        requestInput = CreateProductInput
            
            options.acceptLanguage
            
            name
            
            owner
            
            options.description
            
            options.distributor
            
            options.supportDescription
            
            options.supportEmail
            
            options.supportUrl
            
            productType
            
            options.tags
            
            provisioningArtifactParameters
            
            idempotencyToken
            
        
        options = setOptions (CreateProductOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createProductInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateProduct"
                
                (AWS.Core.Decode.ResultDecoder "CreateProductOutput" createProductOutputDecoder)
                
            )



{-| Options for a createProduct request
-}
type alias CreateProductOptions =
    {
    acceptLanguage : Maybe String,description : Maybe String,distributor : Maybe String,supportDescription : Maybe String,supportEmail : Maybe String,supportUrl : Maybe String,tags : Maybe (List Tag)
    }



{-| <p>Creates a plan. A plan includes the list of resources to be created (when provisioning a new product) or modified (when updating a provisioned product) when the plan is executed.</p> <p>You can create one plan per provisioned product. To create a plan for an existing provisioned product, the product status must be AVAILBLE or TAINTED.</p> <p>To view the resource changes in the change set, use <a>DescribeProvisionedProductPlan</a>. To create or modify the provisioned product, use <a>ExecuteProvisionedProductPlan</a>.</p>

__Required Parameters__

* `planName` __:__ `String`
* `planType` __:__ `ProvisionedProductPlanType`
* `productId` __:__ `String`
* `provisionedProductName` __:__ `String`
* `provisioningArtifactId` __:__ `String`
* `idempotencyToken` __:__ `String`


-}

createProvisionedProductPlan :
  
    String ->
  
    ProvisionedProductPlanType ->
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( CreateProvisionedProductPlanOptions -> CreateProvisionedProductPlanOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateProvisionedProductPlanOutput)

createProvisionedProductPlan planName planType productId provisionedProductName provisioningArtifactId idempotencyToken setOptions =
    
    let
        requestInput = CreateProvisionedProductPlanInput
            
            options.acceptLanguage
            
            planName
            
            planType
            
            options.notificationArns
            
            options.pathId
            
            productId
            
            provisionedProductName
            
            provisioningArtifactId
            
            options.provisioningParameters
            
            idempotencyToken
            
            options.tags
            
        
        options = setOptions (CreateProvisionedProductPlanOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createProvisionedProductPlanInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateProvisionedProductPlan"
                
                (AWS.Core.Decode.ResultDecoder "CreateProvisionedProductPlanOutput" createProvisionedProductPlanOutputDecoder)
                
            )



{-| Options for a createProvisionedProductPlan request
-}
type alias CreateProvisionedProductPlanOptions =
    {
    acceptLanguage : Maybe String,notificationArns : Maybe (List String),pathId : Maybe String,provisioningParameters : Maybe (List UpdateProvisioningParameter),tags : Maybe (List Tag)
    }



{-| <p>Creates a provisioning artifact (also known as a version) for the specified product.</p> <p>You cannot create a provisioning artifact for a product that was shared with you.</p>

__Required Parameters__

* `productId` __:__ `String`
* `parameters` __:__ `ProvisioningArtifactProperties`
* `idempotencyToken` __:__ `String`


-}

createProvisioningArtifact :
  
    String ->
  
    ProvisioningArtifactProperties ->
  
    String ->
  
  
    ( CreateProvisioningArtifactOptions -> CreateProvisioningArtifactOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateProvisioningArtifactOutput)

createProvisioningArtifact productId parameters idempotencyToken setOptions =
    
    let
        requestInput = CreateProvisioningArtifactInput
            
            options.acceptLanguage
            
            productId
            
            parameters
            
            idempotencyToken
            
        
        options = setOptions (CreateProvisioningArtifactOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createProvisioningArtifactInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateProvisioningArtifact"
                
                (AWS.Core.Decode.ResultDecoder "CreateProvisioningArtifactOutput" createProvisioningArtifactOutputDecoder)
                
            )



{-| Options for a createProvisioningArtifact request
-}
type alias CreateProvisioningArtifactOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Creates a self-service action.</p>

__Required Parameters__

* `name` __:__ `String`
* `definitionType` __:__ `ServiceActionDefinitionType`
* `definition` __:__ `(Dict String String)`
* `idempotencyToken` __:__ `String`


-}

createServiceAction :
  
    String ->
  
    ServiceActionDefinitionType ->
  
    (Dict String String) ->
  
    String ->
  
  
    ( CreateServiceActionOptions -> CreateServiceActionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateServiceActionOutput)

createServiceAction name definitionType definition idempotencyToken setOptions =
    
    let
        requestInput = CreateServiceActionInput
            
            name
            
            definitionType
            
            definition
            
            options.description
            
            options.acceptLanguage
            
            idempotencyToken
            
        
        options = setOptions (CreateServiceActionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createServiceActionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateServiceAction"
                
                (AWS.Core.Decode.ResultDecoder "CreateServiceActionOutput" createServiceActionOutputDecoder)
                
            )



{-| Options for a createServiceAction request
-}
type alias CreateServiceActionOptions =
    {
    description : Maybe String,acceptLanguage : Maybe String
    }



{-| <p>Creates a TagOption.</p>

__Required Parameters__

* `key` __:__ `String`
* `value` __:__ `String`


-}

createTagOption :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateTagOptionOutput)

createTagOption key value =
    
    let
        requestInput = CreateTagOptionInput
            
            key
            
            value
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> createTagOptionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateTagOption"
                
                (AWS.Core.Decode.ResultDecoder "CreateTagOptionOutput" createTagOptionOutputDecoder)
                
            )





{-| <p>Deletes the specified constraint.</p>

__Required Parameters__

* `id` __:__ `String`


-}

deleteConstraint :
  
    String ->
  
  
    ( DeleteConstraintOptions -> DeleteConstraintOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteConstraintOutput)

deleteConstraint id setOptions =
    
    let
        requestInput = DeleteConstraintInput
            
            options.acceptLanguage
            
            id
            
        
        options = setOptions (DeleteConstraintOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteConstraintInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteConstraint"
                
                (AWS.Core.Decode.ResultDecoder "DeleteConstraintOutput" deleteConstraintOutputDecoder)
                
            )



{-| Options for a deleteConstraint request
-}
type alias DeleteConstraintOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Deletes the specified portfolio.</p> <p>You cannot delete a portfolio if it was shared with you or if it has associated products, users, constraints, or shared accounts.</p>

__Required Parameters__

* `id` __:__ `String`


-}

deletePortfolio :
  
    String ->
  
  
    ( DeletePortfolioOptions -> DeletePortfolioOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeletePortfolioOutput)

deletePortfolio id setOptions =
    
    let
        requestInput = DeletePortfolioInput
            
            options.acceptLanguage
            
            id
            
        
        options = setOptions (DeletePortfolioOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deletePortfolioInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeletePortfolio"
                
                (AWS.Core.Decode.ResultDecoder "DeletePortfolioOutput" deletePortfolioOutputDecoder)
                
            )



{-| Options for a deletePortfolio request
-}
type alias DeletePortfolioOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Stops sharing the specified portfolio with the specified account or organization node. Shares to an organization node can only be deleted by the master account of an Organization.</p>

__Required Parameters__

* `portfolioId` __:__ `String`


-}

deletePortfolioShare :
  
    String ->
  
  
    ( DeletePortfolioShareOptions -> DeletePortfolioShareOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeletePortfolioShareOutput)

deletePortfolioShare portfolioId setOptions =
    
    let
        requestInput = DeletePortfolioShareInput
            
            options.acceptLanguage
            
            portfolioId
            
            options.accountId
            
            options.organizationNode
            
        
        options = setOptions (DeletePortfolioShareOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deletePortfolioShareInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeletePortfolioShare"
                
                (AWS.Core.Decode.ResultDecoder "DeletePortfolioShareOutput" deletePortfolioShareOutputDecoder)
                
            )



{-| Options for a deletePortfolioShare request
-}
type alias DeletePortfolioShareOptions =
    {
    acceptLanguage : Maybe String,accountId : Maybe String,organizationNode : Maybe OrganizationNode
    }



{-| <p>Deletes the specified product.</p> <p>You cannot delete a product if it was shared with you or is associated with a portfolio.</p>

__Required Parameters__

* `id` __:__ `String`


-}

deleteProduct :
  
    String ->
  
  
    ( DeleteProductOptions -> DeleteProductOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteProductOutput)

deleteProduct id setOptions =
    
    let
        requestInput = DeleteProductInput
            
            options.acceptLanguage
            
            id
            
        
        options = setOptions (DeleteProductOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteProductInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteProduct"
                
                (AWS.Core.Decode.ResultDecoder "DeleteProductOutput" deleteProductOutputDecoder)
                
            )



{-| Options for a deleteProduct request
-}
type alias DeleteProductOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Deletes the specified plan.</p>

__Required Parameters__

* `planId` __:__ `String`


-}

deleteProvisionedProductPlan :
  
    String ->
  
  
    ( DeleteProvisionedProductPlanOptions -> DeleteProvisionedProductPlanOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteProvisionedProductPlanOutput)

deleteProvisionedProductPlan planId setOptions =
    
    let
        requestInput = DeleteProvisionedProductPlanInput
            
            options.acceptLanguage
            
            planId
            
            options.ignoreErrors
            
        
        options = setOptions (DeleteProvisionedProductPlanOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteProvisionedProductPlanInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteProvisionedProductPlan"
                
                (AWS.Core.Decode.ResultDecoder "DeleteProvisionedProductPlanOutput" deleteProvisionedProductPlanOutputDecoder)
                
            )



{-| Options for a deleteProvisionedProductPlan request
-}
type alias DeleteProvisionedProductPlanOptions =
    {
    acceptLanguage : Maybe String,ignoreErrors : Maybe Bool
    }



{-| <p>Deletes the specified provisioning artifact (also known as a version) for the specified product.</p> <p>You cannot delete a provisioning artifact associated with a product that was shared with you. You cannot delete the last provisioning artifact for a product, because a product must have at least one provisioning artifact.</p>

__Required Parameters__

* `productId` __:__ `String`
* `provisioningArtifactId` __:__ `String`


-}

deleteProvisioningArtifact :
  
    String ->
  
    String ->
  
  
    ( DeleteProvisioningArtifactOptions -> DeleteProvisioningArtifactOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteProvisioningArtifactOutput)

deleteProvisioningArtifact productId provisioningArtifactId setOptions =
    
    let
        requestInput = DeleteProvisioningArtifactInput
            
            options.acceptLanguage
            
            productId
            
            provisioningArtifactId
            
        
        options = setOptions (DeleteProvisioningArtifactOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteProvisioningArtifactInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteProvisioningArtifact"
                
                (AWS.Core.Decode.ResultDecoder "DeleteProvisioningArtifactOutput" deleteProvisioningArtifactOutputDecoder)
                
            )



{-| Options for a deleteProvisioningArtifact request
-}
type alias DeleteProvisioningArtifactOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Deletes a self-service action.</p>

__Required Parameters__

* `id` __:__ `String`


-}

deleteServiceAction :
  
    String ->
  
  
    ( DeleteServiceActionOptions -> DeleteServiceActionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteServiceActionOutput)

deleteServiceAction id setOptions =
    
    let
        requestInput = DeleteServiceActionInput
            
            id
            
            options.acceptLanguage
            
        
        options = setOptions (DeleteServiceActionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteServiceActionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteServiceAction"
                
                (AWS.Core.Decode.ResultDecoder "DeleteServiceActionOutput" deleteServiceActionOutputDecoder)
                
            )



{-| Options for a deleteServiceAction request
-}
type alias DeleteServiceActionOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Deletes the specified TagOption.</p> <p>You cannot delete a TagOption if it is associated with a product or portfolio.</p>

__Required Parameters__

* `id` __:__ `String`


-}

deleteTagOption :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteTagOptionOutput)

deleteTagOption id =
    
    let
        requestInput = DeleteTagOptionInput
            
            id
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> deleteTagOptionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteTagOption"
                
                (AWS.Core.Decode.ResultDecoder "DeleteTagOptionOutput" deleteTagOptionOutputDecoder)
                
            )





{-| <p>Gets information about the specified constraint.</p>

__Required Parameters__

* `id` __:__ `String`


-}

describeConstraint :
  
    String ->
  
  
    ( DescribeConstraintOptions -> DescribeConstraintOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeConstraintOutput)

describeConstraint id setOptions =
    
    let
        requestInput = DescribeConstraintInput
            
            options.acceptLanguage
            
            id
            
        
        options = setOptions (DescribeConstraintOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeConstraintInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeConstraint"
                
                (AWS.Core.Decode.ResultDecoder "DescribeConstraintOutput" describeConstraintOutputDecoder)
                
            )



{-| Options for a describeConstraint request
-}
type alias DescribeConstraintOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Gets the status of the specified copy product operation.</p>

__Required Parameters__

* `copyProductToken` __:__ `String`


-}

describeCopyProductStatus :
  
    String ->
  
  
    ( DescribeCopyProductStatusOptions -> DescribeCopyProductStatusOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeCopyProductStatusOutput)

describeCopyProductStatus copyProductToken setOptions =
    
    let
        requestInput = DescribeCopyProductStatusInput
            
            options.acceptLanguage
            
            copyProductToken
            
        
        options = setOptions (DescribeCopyProductStatusOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeCopyProductStatusInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeCopyProductStatus"
                
                (AWS.Core.Decode.ResultDecoder "DescribeCopyProductStatusOutput" describeCopyProductStatusOutputDecoder)
                
            )



{-| Options for a describeCopyProductStatus request
-}
type alias DescribeCopyProductStatusOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Gets information about the specified portfolio.</p>

__Required Parameters__

* `id` __:__ `String`


-}

describePortfolio :
  
    String ->
  
  
    ( DescribePortfolioOptions -> DescribePortfolioOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribePortfolioOutput)

describePortfolio id setOptions =
    
    let
        requestInput = DescribePortfolioInput
            
            options.acceptLanguage
            
            id
            
        
        options = setOptions (DescribePortfolioOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describePortfolioInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribePortfolio"
                
                (AWS.Core.Decode.ResultDecoder "DescribePortfolioOutput" describePortfolioOutputDecoder)
                
            )



{-| Options for a describePortfolio request
-}
type alias DescribePortfolioOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Gets the status of the specified portfolio share operation. This API can only be called by the master account in the organization.</p>

__Required Parameters__

* `portfolioShareToken` __:__ `String`


-}

describePortfolioShareStatus :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribePortfolioShareStatusOutput)

describePortfolioShareStatus portfolioShareToken =
    
    let
        requestInput = DescribePortfolioShareStatusInput
            
            portfolioShareToken
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describePortfolioShareStatusInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribePortfolioShareStatus"
                
                (AWS.Core.Decode.ResultDecoder "DescribePortfolioShareStatusOutput" describePortfolioShareStatusOutputDecoder)
                
            )





{-| <p>Gets information about the specified product.</p>

__Required Parameters__

* `id` __:__ `String`


-}

describeProduct :
  
    String ->
  
  
    ( DescribeProductOptions -> DescribeProductOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeProductOutput)

describeProduct id setOptions =
    
    let
        requestInput = DescribeProductInput
            
            options.acceptLanguage
            
            id
            
        
        options = setOptions (DescribeProductOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeProductInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeProduct"
                
                (AWS.Core.Decode.ResultDecoder "DescribeProductOutput" describeProductOutputDecoder)
                
            )



{-| Options for a describeProduct request
-}
type alias DescribeProductOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Gets information about the specified product. This operation is run with administrator access.</p>

__Required Parameters__

* `id` __:__ `String`


-}

describeProductAsAdmin :
  
    String ->
  
  
    ( DescribeProductAsAdminOptions -> DescribeProductAsAdminOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeProductAsAdminOutput)

describeProductAsAdmin id setOptions =
    
    let
        requestInput = DescribeProductAsAdminInput
            
            options.acceptLanguage
            
            id
            
        
        options = setOptions (DescribeProductAsAdminOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeProductAsAdminInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeProductAsAdmin"
                
                (AWS.Core.Decode.ResultDecoder "DescribeProductAsAdminOutput" describeProductAsAdminOutputDecoder)
                
            )



{-| Options for a describeProductAsAdmin request
-}
type alias DescribeProductAsAdminOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Gets information about the specified product.</p>

__Required Parameters__

* `id` __:__ `String`


-}

describeProductView :
  
    String ->
  
  
    ( DescribeProductViewOptions -> DescribeProductViewOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeProductViewOutput)

describeProductView id setOptions =
    
    let
        requestInput = DescribeProductViewInput
            
            options.acceptLanguage
            
            id
            
        
        options = setOptions (DescribeProductViewOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeProductViewInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeProductView"
                
                (AWS.Core.Decode.ResultDecoder "DescribeProductViewOutput" describeProductViewOutputDecoder)
                
            )



{-| Options for a describeProductView request
-}
type alias DescribeProductViewOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Gets information about the specified provisioned product.</p>

__Required Parameters__

* `id` __:__ `String`


-}

describeProvisionedProduct :
  
    String ->
  
  
    ( DescribeProvisionedProductOptions -> DescribeProvisionedProductOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeProvisionedProductOutput)

describeProvisionedProduct id setOptions =
    
    let
        requestInput = DescribeProvisionedProductInput
            
            options.acceptLanguage
            
            id
            
        
        options = setOptions (DescribeProvisionedProductOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeProvisionedProductInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeProvisionedProduct"
                
                (AWS.Core.Decode.ResultDecoder "DescribeProvisionedProductOutput" describeProvisionedProductOutputDecoder)
                
            )



{-| Options for a describeProvisionedProduct request
-}
type alias DescribeProvisionedProductOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Gets information about the resource changes for the specified plan.</p>

__Required Parameters__

* `planId` __:__ `String`


-}

describeProvisionedProductPlan :
  
    String ->
  
  
    ( DescribeProvisionedProductPlanOptions -> DescribeProvisionedProductPlanOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeProvisionedProductPlanOutput)

describeProvisionedProductPlan planId setOptions =
    
    let
        requestInput = DescribeProvisionedProductPlanInput
            
            options.acceptLanguage
            
            planId
            
            options.pageSize
            
            options.pageToken
            
        
        options = setOptions (DescribeProvisionedProductPlanOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeProvisionedProductPlanInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeProvisionedProductPlan"
                
                (AWS.Core.Decode.ResultDecoder "DescribeProvisionedProductPlanOutput" describeProvisionedProductPlanOutputDecoder)
                
            )



{-| Options for a describeProvisionedProductPlan request
-}
type alias DescribeProvisionedProductPlanOptions =
    {
    acceptLanguage : Maybe String,pageSize : Maybe Int,pageToken : Maybe String
    }



{-| <p>Gets information about the specified provisioning artifact (also known as a version) for the specified product.</p>

__Required Parameters__

* `provisioningArtifactId` __:__ `String`
* `productId` __:__ `String`


-}

describeProvisioningArtifact :
  
    String ->
  
    String ->
  
  
    ( DescribeProvisioningArtifactOptions -> DescribeProvisioningArtifactOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeProvisioningArtifactOutput)

describeProvisioningArtifact provisioningArtifactId productId setOptions =
    
    let
        requestInput = DescribeProvisioningArtifactInput
            
            options.acceptLanguage
            
            provisioningArtifactId
            
            productId
            
            options.verbose
            
        
        options = setOptions (DescribeProvisioningArtifactOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeProvisioningArtifactInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeProvisioningArtifact"
                
                (AWS.Core.Decode.ResultDecoder "DescribeProvisioningArtifactOutput" describeProvisioningArtifactOutputDecoder)
                
            )



{-| Options for a describeProvisioningArtifact request
-}
type alias DescribeProvisioningArtifactOptions =
    {
    acceptLanguage : Maybe String,verbose : Maybe Bool
    }



{-| <p>Gets information about the configuration required to provision the specified product using the specified provisioning artifact.</p> <p>If the output contains a TagOption key with an empty list of values, there is a TagOption conflict for that key. The end user cannot take action to fix the conflict, and launch is not blocked. In subsequent calls to <a>ProvisionProduct</a>, do not include conflicted TagOption keys as tags, or this causes the error "Parameter validation failed: Missing required parameter in Tags[<i>N</i>]:<i>Value</i>". Tag the provisioned product with the value <code>sc-tagoption-conflict-portfolioId-productId</code>.</p>

__Required Parameters__

* `productId` __:__ `String`
* `provisioningArtifactId` __:__ `String`


-}

describeProvisioningParameters :
  
    String ->
  
    String ->
  
  
    ( DescribeProvisioningParametersOptions -> DescribeProvisioningParametersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeProvisioningParametersOutput)

describeProvisioningParameters productId provisioningArtifactId setOptions =
    
    let
        requestInput = DescribeProvisioningParametersInput
            
            options.acceptLanguage
            
            productId
            
            provisioningArtifactId
            
            options.pathId
            
        
        options = setOptions (DescribeProvisioningParametersOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeProvisioningParametersInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeProvisioningParameters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeProvisioningParametersOutput" describeProvisioningParametersOutputDecoder)
                
            )



{-| Options for a describeProvisioningParameters request
-}
type alias DescribeProvisioningParametersOptions =
    {
    acceptLanguage : Maybe String,pathId : Maybe String
    }



{-| <p>Gets information about the specified request operation.</p> <p>Use this operation after calling a request operation (for example, <a>ProvisionProduct</a>, <a>TerminateProvisionedProduct</a>, or <a>UpdateProvisionedProduct</a>). </p> <note> <p>If a provisioned product was transferred to a new owner using <a>UpdateProvisionedProductProperties</a>, the new owner will be able to describe all past records for that product. The previous owner will no longer be able to describe the records, but will be able to use <a>ListRecordHistory</a> to see the product's history from when he was the owner.</p> </note>

__Required Parameters__

* `id` __:__ `String`


-}

describeRecord :
  
    String ->
  
  
    ( DescribeRecordOptions -> DescribeRecordOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeRecordOutput)

describeRecord id setOptions =
    
    let
        requestInput = DescribeRecordInput
            
            options.acceptLanguage
            
            id
            
            options.pageToken
            
            options.pageSize
            
        
        options = setOptions (DescribeRecordOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeRecordInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeRecord"
                
                (AWS.Core.Decode.ResultDecoder "DescribeRecordOutput" describeRecordOutputDecoder)
                
            )



{-| Options for a describeRecord request
-}
type alias DescribeRecordOptions =
    {
    acceptLanguage : Maybe String,pageToken : Maybe String,pageSize : Maybe Int
    }



{-| <p>Describes a self-service action.</p>

__Required Parameters__

* `id` __:__ `String`


-}

describeServiceAction :
  
    String ->
  
  
    ( DescribeServiceActionOptions -> DescribeServiceActionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeServiceActionOutput)

describeServiceAction id setOptions =
    
    let
        requestInput = DescribeServiceActionInput
            
            id
            
            options.acceptLanguage
            
        
        options = setOptions (DescribeServiceActionOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeServiceActionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeServiceAction"
                
                (AWS.Core.Decode.ResultDecoder "DescribeServiceActionOutput" describeServiceActionOutputDecoder)
                
            )



{-| Options for a describeServiceAction request
-}
type alias DescribeServiceActionOptions =
    {
    acceptLanguage : Maybe String
    }



{-| undefined

__Required Parameters__

* `provisionedProductId` __:__ `String`
* `serviceActionId` __:__ `String`


-}

describeServiceActionExecutionParameters :
  
    String ->
  
    String ->
  
  
    ( DescribeServiceActionExecutionParametersOptions -> DescribeServiceActionExecutionParametersOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeServiceActionExecutionParametersOutput)

describeServiceActionExecutionParameters provisionedProductId serviceActionId setOptions =
    
    let
        requestInput = DescribeServiceActionExecutionParametersInput
            
            provisionedProductId
            
            serviceActionId
            
            options.acceptLanguage
            
        
        options = setOptions (DescribeServiceActionExecutionParametersOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeServiceActionExecutionParametersInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeServiceActionExecutionParameters"
                
                (AWS.Core.Decode.ResultDecoder "DescribeServiceActionExecutionParametersOutput" describeServiceActionExecutionParametersOutputDecoder)
                
            )



{-| Options for a describeServiceActionExecutionParameters request
-}
type alias DescribeServiceActionExecutionParametersOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Gets information about the specified TagOption.</p>

__Required Parameters__

* `id` __:__ `String`


-}

describeTagOption :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DescribeTagOptionOutput)

describeTagOption id =
    
    let
        requestInput = DescribeTagOptionInput
            
            id
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> describeTagOptionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DescribeTagOption"
                
                (AWS.Core.Decode.ResultDecoder "DescribeTagOptionOutput" describeTagOptionOutputDecoder)
                
            )





{-| <p>Disable portfolio sharing through AWS Organizations feature. This feature will not delete your current shares but it will prevent you from creating new shares throughout your organization. Current shares will not be in sync with your organization structure if it changes after calling this API. This API can only be called by the master account in the organization.</p>

__Required Parameters__



-}

disableAWSOrganizationsAccess :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisableAWSOrganizationsAccessOutput)

disableAWSOrganizationsAccess =
    
    let
        requestInput = DisableAWSOrganizationsAccessInput
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disableAWSOrganizationsAccessInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisableAWSOrganizationsAccess"
                
                (AWS.Core.Decode.ResultDecoder "DisableAWSOrganizationsAccessOutput" disableAWSOrganizationsAccessOutputDecoder)
                
            )





{-| <p>Disassociates the specified budget from the specified resource.</p>

__Required Parameters__

* `budgetName` __:__ `String`
* `resourceId` __:__ `String`


-}

disassociateBudgetFromResource :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateBudgetFromResourceOutput)

disassociateBudgetFromResource budgetName resourceId =
    
    let
        requestInput = DisassociateBudgetFromResourceInput
            
            budgetName
            
            resourceId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateBudgetFromResourceInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateBudgetFromResource"
                
                (AWS.Core.Decode.ResultDecoder "DisassociateBudgetFromResourceOutput" disassociateBudgetFromResourceOutputDecoder)
                
            )





{-| <p>Disassociates a previously associated principal ARN from a specified portfolio.</p>

__Required Parameters__

* `portfolioId` __:__ `String`
* `principalARN` __:__ `String`


-}

disassociatePrincipalFromPortfolio :
  
    String ->
  
    String ->
  
  
    ( DisassociatePrincipalFromPortfolioOptions -> DisassociatePrincipalFromPortfolioOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociatePrincipalFromPortfolioOutput)

disassociatePrincipalFromPortfolio portfolioId principalARN setOptions =
    
    let
        requestInput = DisassociatePrincipalFromPortfolioInput
            
            options.acceptLanguage
            
            portfolioId
            
            principalARN
            
        
        options = setOptions (DisassociatePrincipalFromPortfolioOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociatePrincipalFromPortfolioInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociatePrincipalFromPortfolio"
                
                (AWS.Core.Decode.ResultDecoder "DisassociatePrincipalFromPortfolioOutput" disassociatePrincipalFromPortfolioOutputDecoder)
                
            )



{-| Options for a disassociatePrincipalFromPortfolio request
-}
type alias DisassociatePrincipalFromPortfolioOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Disassociates the specified product from the specified portfolio. </p>

__Required Parameters__

* `productId` __:__ `String`
* `portfolioId` __:__ `String`


-}

disassociateProductFromPortfolio :
  
    String ->
  
    String ->
  
  
    ( DisassociateProductFromPortfolioOptions -> DisassociateProductFromPortfolioOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateProductFromPortfolioOutput)

disassociateProductFromPortfolio productId portfolioId setOptions =
    
    let
        requestInput = DisassociateProductFromPortfolioInput
            
            options.acceptLanguage
            
            productId
            
            portfolioId
            
        
        options = setOptions (DisassociateProductFromPortfolioOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateProductFromPortfolioInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateProductFromPortfolio"
                
                (AWS.Core.Decode.ResultDecoder "DisassociateProductFromPortfolioOutput" disassociateProductFromPortfolioOutputDecoder)
                
            )



{-| Options for a disassociateProductFromPortfolio request
-}
type alias DisassociateProductFromPortfolioOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Disassociates the specified self-service action association from the specified provisioning artifact.</p>

__Required Parameters__

* `productId` __:__ `String`
* `provisioningArtifactId` __:__ `String`
* `serviceActionId` __:__ `String`


-}

disassociateServiceActionFromProvisioningArtifact :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( DisassociateServiceActionFromProvisioningArtifactOptions -> DisassociateServiceActionFromProvisioningArtifactOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateServiceActionFromProvisioningArtifactOutput)

disassociateServiceActionFromProvisioningArtifact productId provisioningArtifactId serviceActionId setOptions =
    
    let
        requestInput = DisassociateServiceActionFromProvisioningArtifactInput
            
            productId
            
            provisioningArtifactId
            
            serviceActionId
            
            options.acceptLanguage
            
        
        options = setOptions (DisassociateServiceActionFromProvisioningArtifactOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateServiceActionFromProvisioningArtifactInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateServiceActionFromProvisioningArtifact"
                
                (AWS.Core.Decode.ResultDecoder "DisassociateServiceActionFromProvisioningArtifactOutput" disassociateServiceActionFromProvisioningArtifactOutputDecoder)
                
            )



{-| Options for a disassociateServiceActionFromProvisioningArtifact request
-}
type alias DisassociateServiceActionFromProvisioningArtifactOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Disassociates the specified TagOption from the specified resource.</p>

__Required Parameters__

* `resourceId` __:__ `String`
* `tagOptionId` __:__ `String`


-}

disassociateTagOptionFromResource :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DisassociateTagOptionFromResourceOutput)

disassociateTagOptionFromResource resourceId tagOptionId =
    
    let
        requestInput = DisassociateTagOptionFromResourceInput
            
            resourceId
            
            tagOptionId
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> disassociateTagOptionFromResourceInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DisassociateTagOptionFromResource"
                
                (AWS.Core.Decode.ResultDecoder "DisassociateTagOptionFromResourceOutput" disassociateTagOptionFromResourceOutputDecoder)
                
            )





{-| <p>Enable portfolio sharing feature through AWS Organizations. This API will allow Service Catalog to receive updates on your organization in order to sync your shares with the current structure. This API can only be called by the master account in the organization.</p> <p>By calling this API Service Catalog will make a call to organizations:EnableAWSServiceAccess on your behalf so that your shares can be in sync with any changes in your AWS Organizations structure.</p>

__Required Parameters__



-}

enableAWSOrganizationsAccess :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper EnableAWSOrganizationsAccessOutput)

enableAWSOrganizationsAccess =
    
    let
        requestInput = EnableAWSOrganizationsAccessInput
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> enableAWSOrganizationsAccessInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "EnableAWSOrganizationsAccess"
                
                (AWS.Core.Decode.ResultDecoder "EnableAWSOrganizationsAccessOutput" enableAWSOrganizationsAccessOutputDecoder)
                
            )





{-| <p>Provisions or modifies a product based on the resource changes for the specified plan.</p>

__Required Parameters__

* `planId` __:__ `String`
* `idempotencyToken` __:__ `String`


-}

executeProvisionedProductPlan :
  
    String ->
  
    String ->
  
  
    ( ExecuteProvisionedProductPlanOptions -> ExecuteProvisionedProductPlanOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ExecuteProvisionedProductPlanOutput)

executeProvisionedProductPlan planId idempotencyToken setOptions =
    
    let
        requestInput = ExecuteProvisionedProductPlanInput
            
            options.acceptLanguage
            
            planId
            
            idempotencyToken
            
        
        options = setOptions (ExecuteProvisionedProductPlanOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> executeProvisionedProductPlanInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ExecuteProvisionedProductPlan"
                
                (AWS.Core.Decode.ResultDecoder "ExecuteProvisionedProductPlanOutput" executeProvisionedProductPlanOutputDecoder)
                
            )



{-| Options for a executeProvisionedProductPlan request
-}
type alias ExecuteProvisionedProductPlanOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Executes a self-service action against a provisioned product.</p>

__Required Parameters__

* `provisionedProductId` __:__ `String`
* `serviceActionId` __:__ `String`
* `executeToken` __:__ `String`


-}

executeProvisionedProductServiceAction :
  
    String ->
  
    String ->
  
    String ->
  
  
    ( ExecuteProvisionedProductServiceActionOptions -> ExecuteProvisionedProductServiceActionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ExecuteProvisionedProductServiceActionOutput)

executeProvisionedProductServiceAction provisionedProductId serviceActionId executeToken setOptions =
    
    let
        requestInput = ExecuteProvisionedProductServiceActionInput
            
            provisionedProductId
            
            serviceActionId
            
            executeToken
            
            options.acceptLanguage
            
            options.parameters
            
        
        options = setOptions (ExecuteProvisionedProductServiceActionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> executeProvisionedProductServiceActionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ExecuteProvisionedProductServiceAction"
                
                (AWS.Core.Decode.ResultDecoder "ExecuteProvisionedProductServiceActionOutput" executeProvisionedProductServiceActionOutputDecoder)
                
            )



{-| Options for a executeProvisionedProductServiceAction request
-}
type alias ExecuteProvisionedProductServiceActionOptions =
    {
    acceptLanguage : Maybe String,parameters : Maybe (Dict String (List String))
    }



{-| <p>Get the Access Status for AWS Organization portfolio share feature. This API can only be called by the master account in the organization.</p>

__Required Parameters__



-}

getAWSOrganizationsAccessStatus :
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetAWSOrganizationsAccessStatusOutput)

getAWSOrganizationsAccessStatus =
    
    let
        requestInput = GetAWSOrganizationsAccessStatusInput
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> getAWSOrganizationsAccessStatusInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetAWSOrganizationsAccessStatus"
                
                (AWS.Core.Decode.ResultDecoder "GetAWSOrganizationsAccessStatusOutput" getAWSOrganizationsAccessStatusOutputDecoder)
                
            )





{-| <p>Lists all portfolios for which sharing was accepted by this account.</p>

__Required Parameters__



-}

listAcceptedPortfolioShares :
  
  
    ( ListAcceptedPortfolioSharesOptions -> ListAcceptedPortfolioSharesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListAcceptedPortfolioSharesOutput)

listAcceptedPortfolioShares setOptions =
    
    let
        requestInput = ListAcceptedPortfolioSharesInput
            
            options.acceptLanguage
            
            options.pageToken
            
            options.pageSize
            
            options.portfolioShareType
            
        
        options = setOptions (ListAcceptedPortfolioSharesOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listAcceptedPortfolioSharesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListAcceptedPortfolioShares"
                
                (AWS.Core.Decode.ResultDecoder "ListAcceptedPortfolioSharesOutput" listAcceptedPortfolioSharesOutputDecoder)
                
            )



{-| Options for a listAcceptedPortfolioShares request
-}
type alias ListAcceptedPortfolioSharesOptions =
    {
    acceptLanguage : Maybe String,pageToken : Maybe String,pageSize : Maybe Int,portfolioShareType : Maybe PortfolioShareType
    }



{-| <p>Lists all the budgets associated to the specified resource.</p>

__Required Parameters__

* `resourceId` __:__ `String`


-}

listBudgetsForResource :
  
    String ->
  
  
    ( ListBudgetsForResourceOptions -> ListBudgetsForResourceOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListBudgetsForResourceOutput)

listBudgetsForResource resourceId setOptions =
    
    let
        requestInput = ListBudgetsForResourceInput
            
            options.acceptLanguage
            
            resourceId
            
            options.pageSize
            
            options.pageToken
            
        
        options = setOptions (ListBudgetsForResourceOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listBudgetsForResourceInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListBudgetsForResource"
                
                (AWS.Core.Decode.ResultDecoder "ListBudgetsForResourceOutput" listBudgetsForResourceOutputDecoder)
                
            )



{-| Options for a listBudgetsForResource request
-}
type alias ListBudgetsForResourceOptions =
    {
    acceptLanguage : Maybe String,pageSize : Maybe Int,pageToken : Maybe String
    }



{-| <p>Lists the constraints for the specified portfolio and product.</p>

__Required Parameters__

* `portfolioId` __:__ `String`


-}

listConstraintsForPortfolio :
  
    String ->
  
  
    ( ListConstraintsForPortfolioOptions -> ListConstraintsForPortfolioOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListConstraintsForPortfolioOutput)

listConstraintsForPortfolio portfolioId setOptions =
    
    let
        requestInput = ListConstraintsForPortfolioInput
            
            options.acceptLanguage
            
            portfolioId
            
            options.productId
            
            options.pageSize
            
            options.pageToken
            
        
        options = setOptions (ListConstraintsForPortfolioOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listConstraintsForPortfolioInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListConstraintsForPortfolio"
                
                (AWS.Core.Decode.ResultDecoder "ListConstraintsForPortfolioOutput" listConstraintsForPortfolioOutputDecoder)
                
            )



{-| Options for a listConstraintsForPortfolio request
-}
type alias ListConstraintsForPortfolioOptions =
    {
    acceptLanguage : Maybe String,productId : Maybe String,pageSize : Maybe Int,pageToken : Maybe String
    }



{-| <p>Lists the paths to the specified product. A path is how the user has access to a specified product, and is necessary when provisioning a product. A path also determines the constraints put on the product.</p>

__Required Parameters__

* `productId` __:__ `String`


-}

listLaunchPaths :
  
    String ->
  
  
    ( ListLaunchPathsOptions -> ListLaunchPathsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListLaunchPathsOutput)

listLaunchPaths productId setOptions =
    
    let
        requestInput = ListLaunchPathsInput
            
            options.acceptLanguage
            
            productId
            
            options.pageSize
            
            options.pageToken
            
        
        options = setOptions (ListLaunchPathsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listLaunchPathsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListLaunchPaths"
                
                (AWS.Core.Decode.ResultDecoder "ListLaunchPathsOutput" listLaunchPathsOutputDecoder)
                
            )



{-| Options for a listLaunchPaths request
-}
type alias ListLaunchPathsOptions =
    {
    acceptLanguage : Maybe String,pageSize : Maybe Int,pageToken : Maybe String
    }



{-| <p>Lists the organization nodes that have access to the specified portfolio. This API can only be called by the master account in the organization.</p>

__Required Parameters__

* `portfolioId` __:__ `String`
* `organizationNodeType` __:__ `OrganizationNodeType`


-}

listOrganizationPortfolioAccess :
  
    String ->
  
    OrganizationNodeType ->
  
  
    ( ListOrganizationPortfolioAccessOptions -> ListOrganizationPortfolioAccessOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListOrganizationPortfolioAccessOutput)

listOrganizationPortfolioAccess portfolioId organizationNodeType setOptions =
    
    let
        requestInput = ListOrganizationPortfolioAccessInput
            
            options.acceptLanguage
            
            portfolioId
            
            organizationNodeType
            
            options.pageToken
            
            options.pageSize
            
        
        options = setOptions (ListOrganizationPortfolioAccessOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listOrganizationPortfolioAccessInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListOrganizationPortfolioAccess"
                
                (AWS.Core.Decode.ResultDecoder "ListOrganizationPortfolioAccessOutput" listOrganizationPortfolioAccessOutputDecoder)
                
            )



{-| Options for a listOrganizationPortfolioAccess request
-}
type alias ListOrganizationPortfolioAccessOptions =
    {
    acceptLanguage : Maybe String,pageToken : Maybe String,pageSize : Maybe Int
    }



{-| <p>Lists the account IDs that have access to the specified portfolio.</p>

__Required Parameters__

* `portfolioId` __:__ `String`


-}

listPortfolioAccess :
  
    String ->
  
  
    ( ListPortfolioAccessOptions -> ListPortfolioAccessOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPortfolioAccessOutput)

listPortfolioAccess portfolioId setOptions =
    
    let
        requestInput = ListPortfolioAccessInput
            
            options.acceptLanguage
            
            portfolioId
            
        
        options = setOptions (ListPortfolioAccessOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listPortfolioAccessInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListPortfolioAccess"
                
                (AWS.Core.Decode.ResultDecoder "ListPortfolioAccessOutput" listPortfolioAccessOutputDecoder)
                
            )



{-| Options for a listPortfolioAccess request
-}
type alias ListPortfolioAccessOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Lists all portfolios in the catalog.</p>

__Required Parameters__



-}

listPortfolios :
  
  
    ( ListPortfoliosOptions -> ListPortfoliosOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPortfoliosOutput)

listPortfolios setOptions =
    
    let
        requestInput = ListPortfoliosInput
            
            options.acceptLanguage
            
            options.pageToken
            
            options.pageSize
            
        
        options = setOptions (ListPortfoliosOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listPortfoliosInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListPortfolios"
                
                (AWS.Core.Decode.ResultDecoder "ListPortfoliosOutput" listPortfoliosOutputDecoder)
                
            )



{-| Options for a listPortfolios request
-}
type alias ListPortfoliosOptions =
    {
    acceptLanguage : Maybe String,pageToken : Maybe String,pageSize : Maybe Int
    }



{-| <p>Lists all portfolios that the specified product is associated with.</p>

__Required Parameters__

* `productId` __:__ `String`


-}

listPortfoliosForProduct :
  
    String ->
  
  
    ( ListPortfoliosForProductOptions -> ListPortfoliosForProductOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPortfoliosForProductOutput)

listPortfoliosForProduct productId setOptions =
    
    let
        requestInput = ListPortfoliosForProductInput
            
            options.acceptLanguage
            
            productId
            
            options.pageToken
            
            options.pageSize
            
        
        options = setOptions (ListPortfoliosForProductOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listPortfoliosForProductInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListPortfoliosForProduct"
                
                (AWS.Core.Decode.ResultDecoder "ListPortfoliosForProductOutput" listPortfoliosForProductOutputDecoder)
                
            )



{-| Options for a listPortfoliosForProduct request
-}
type alias ListPortfoliosForProductOptions =
    {
    acceptLanguage : Maybe String,pageToken : Maybe String,pageSize : Maybe Int
    }



{-| <p>Lists all principal ARNs associated with the specified portfolio.</p>

__Required Parameters__

* `portfolioId` __:__ `String`


-}

listPrincipalsForPortfolio :
  
    String ->
  
  
    ( ListPrincipalsForPortfolioOptions -> ListPrincipalsForPortfolioOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListPrincipalsForPortfolioOutput)

listPrincipalsForPortfolio portfolioId setOptions =
    
    let
        requestInput = ListPrincipalsForPortfolioInput
            
            options.acceptLanguage
            
            portfolioId
            
            options.pageSize
            
            options.pageToken
            
        
        options = setOptions (ListPrincipalsForPortfolioOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listPrincipalsForPortfolioInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListPrincipalsForPortfolio"
                
                (AWS.Core.Decode.ResultDecoder "ListPrincipalsForPortfolioOutput" listPrincipalsForPortfolioOutputDecoder)
                
            )



{-| Options for a listPrincipalsForPortfolio request
-}
type alias ListPrincipalsForPortfolioOptions =
    {
    acceptLanguage : Maybe String,pageSize : Maybe Int,pageToken : Maybe String
    }



{-| <p>Lists the plans for the specified provisioned product or all plans to which the user has access.</p>

__Required Parameters__



-}

listProvisionedProductPlans :
  
  
    ( ListProvisionedProductPlansOptions -> ListProvisionedProductPlansOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListProvisionedProductPlansOutput)

listProvisionedProductPlans setOptions =
    
    let
        requestInput = ListProvisionedProductPlansInput
            
            options.acceptLanguage
            
            options.provisionProductId
            
            options.pageSize
            
            options.pageToken
            
            options.accessLevelFilter
            
        
        options = setOptions (ListProvisionedProductPlansOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listProvisionedProductPlansInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListProvisionedProductPlans"
                
                (AWS.Core.Decode.ResultDecoder "ListProvisionedProductPlansOutput" listProvisionedProductPlansOutputDecoder)
                
            )



{-| Options for a listProvisionedProductPlans request
-}
type alias ListProvisionedProductPlansOptions =
    {
    acceptLanguage : Maybe String,provisionProductId : Maybe String,pageSize : Maybe Int,pageToken : Maybe String,accessLevelFilter : Maybe AccessLevelFilter
    }



{-| <p>Lists all provisioning artifacts (also known as versions) for the specified product.</p>

__Required Parameters__

* `productId` __:__ `String`


-}

listProvisioningArtifacts :
  
    String ->
  
  
    ( ListProvisioningArtifactsOptions -> ListProvisioningArtifactsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListProvisioningArtifactsOutput)

listProvisioningArtifacts productId setOptions =
    
    let
        requestInput = ListProvisioningArtifactsInput
            
            options.acceptLanguage
            
            productId
            
        
        options = setOptions (ListProvisioningArtifactsOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listProvisioningArtifactsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListProvisioningArtifacts"
                
                (AWS.Core.Decode.ResultDecoder "ListProvisioningArtifactsOutput" listProvisioningArtifactsOutputDecoder)
                
            )



{-| Options for a listProvisioningArtifacts request
-}
type alias ListProvisioningArtifactsOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Lists all provisioning artifacts (also known as versions) for the specified self-service action.</p>

__Required Parameters__

* `serviceActionId` __:__ `String`


-}

listProvisioningArtifactsForServiceAction :
  
    String ->
  
  
    ( ListProvisioningArtifactsForServiceActionOptions -> ListProvisioningArtifactsForServiceActionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListProvisioningArtifactsForServiceActionOutput)

listProvisioningArtifactsForServiceAction serviceActionId setOptions =
    
    let
        requestInput = ListProvisioningArtifactsForServiceActionInput
            
            serviceActionId
            
            options.pageSize
            
            options.pageToken
            
            options.acceptLanguage
            
        
        options = setOptions (ListProvisioningArtifactsForServiceActionOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listProvisioningArtifactsForServiceActionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListProvisioningArtifactsForServiceAction"
                
                (AWS.Core.Decode.ResultDecoder "ListProvisioningArtifactsForServiceActionOutput" listProvisioningArtifactsForServiceActionOutputDecoder)
                
            )



{-| Options for a listProvisioningArtifactsForServiceAction request
-}
type alias ListProvisioningArtifactsForServiceActionOptions =
    {
    pageSize : Maybe Int,pageToken : Maybe String,acceptLanguage : Maybe String
    }



{-| <p>Lists the specified requests or all performed requests.</p>

__Required Parameters__



-}

listRecordHistory :
  
  
    ( ListRecordHistoryOptions -> ListRecordHistoryOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListRecordHistoryOutput)

listRecordHistory setOptions =
    
    let
        requestInput = ListRecordHistoryInput
            
            options.acceptLanguage
            
            options.accessLevelFilter
            
            options.searchFilter
            
            options.pageSize
            
            options.pageToken
            
        
        options = setOptions (ListRecordHistoryOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listRecordHistoryInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListRecordHistory"
                
                (AWS.Core.Decode.ResultDecoder "ListRecordHistoryOutput" listRecordHistoryOutputDecoder)
                
            )



{-| Options for a listRecordHistory request
-}
type alias ListRecordHistoryOptions =
    {
    acceptLanguage : Maybe String,accessLevelFilter : Maybe AccessLevelFilter,searchFilter : Maybe ListRecordHistorySearchFilter,pageSize : Maybe Int,pageToken : Maybe String
    }



{-| <p>Lists the resources associated with the specified TagOption.</p>

__Required Parameters__

* `tagOptionId` __:__ `String`


-}

listResourcesForTagOption :
  
    String ->
  
  
    ( ListResourcesForTagOptionOptions -> ListResourcesForTagOptionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListResourcesForTagOptionOutput)

listResourcesForTagOption tagOptionId setOptions =
    
    let
        requestInput = ListResourcesForTagOptionInput
            
            tagOptionId
            
            options.resourceType
            
            options.pageSize
            
            options.pageToken
            
        
        options = setOptions (ListResourcesForTagOptionOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listResourcesForTagOptionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListResourcesForTagOption"
                
                (AWS.Core.Decode.ResultDecoder "ListResourcesForTagOptionOutput" listResourcesForTagOptionOutputDecoder)
                
            )



{-| Options for a listResourcesForTagOption request
-}
type alias ListResourcesForTagOptionOptions =
    {
    resourceType : Maybe String,pageSize : Maybe Int,pageToken : Maybe String
    }



{-| <p>Lists all self-service actions.</p>

__Required Parameters__



-}

listServiceActions :
  
  
    ( ListServiceActionsOptions -> ListServiceActionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListServiceActionsOutput)

listServiceActions setOptions =
    
    let
        requestInput = ListServiceActionsInput
            
            options.acceptLanguage
            
            options.pageSize
            
            options.pageToken
            
        
        options = setOptions (ListServiceActionsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listServiceActionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListServiceActions"
                
                (AWS.Core.Decode.ResultDecoder "ListServiceActionsOutput" listServiceActionsOutputDecoder)
                
            )



{-| Options for a listServiceActions request
-}
type alias ListServiceActionsOptions =
    {
    acceptLanguage : Maybe String,pageSize : Maybe Int,pageToken : Maybe String
    }



{-| <p>Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID.</p>

__Required Parameters__

* `productId` __:__ `String`
* `provisioningArtifactId` __:__ `String`


-}

listServiceActionsForProvisioningArtifact :
  
    String ->
  
    String ->
  
  
    ( ListServiceActionsForProvisioningArtifactOptions -> ListServiceActionsForProvisioningArtifactOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListServiceActionsForProvisioningArtifactOutput)

listServiceActionsForProvisioningArtifact productId provisioningArtifactId setOptions =
    
    let
        requestInput = ListServiceActionsForProvisioningArtifactInput
            
            productId
            
            provisioningArtifactId
            
            options.pageSize
            
            options.pageToken
            
            options.acceptLanguage
            
        
        options = setOptions (ListServiceActionsForProvisioningArtifactOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listServiceActionsForProvisioningArtifactInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListServiceActionsForProvisioningArtifact"
                
                (AWS.Core.Decode.ResultDecoder "ListServiceActionsForProvisioningArtifactOutput" listServiceActionsForProvisioningArtifactOutputDecoder)
                
            )



{-| Options for a listServiceActionsForProvisioningArtifact request
-}
type alias ListServiceActionsForProvisioningArtifactOptions =
    {
    pageSize : Maybe Int,pageToken : Maybe String,acceptLanguage : Maybe String
    }



{-| <p>Returns summary information about stack instances that are associated with the specified <code>CFN_STACKSET</code> type provisioned product. You can filter for stack instances that are associated with a specific AWS account name or region. </p>

__Required Parameters__

* `provisionedProductId` __:__ `String`


-}

listStackInstancesForProvisionedProduct :
  
    String ->
  
  
    ( ListStackInstancesForProvisionedProductOptions -> ListStackInstancesForProvisionedProductOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListStackInstancesForProvisionedProductOutput)

listStackInstancesForProvisionedProduct provisionedProductId setOptions =
    
    let
        requestInput = ListStackInstancesForProvisionedProductInput
            
            options.acceptLanguage
            
            provisionedProductId
            
            options.pageToken
            
            options.pageSize
            
        
        options = setOptions (ListStackInstancesForProvisionedProductOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listStackInstancesForProvisionedProductInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListStackInstancesForProvisionedProduct"
                
                (AWS.Core.Decode.ResultDecoder "ListStackInstancesForProvisionedProductOutput" listStackInstancesForProvisionedProductOutputDecoder)
                
            )



{-| Options for a listStackInstancesForProvisionedProduct request
-}
type alias ListStackInstancesForProvisionedProductOptions =
    {
    acceptLanguage : Maybe String,pageToken : Maybe String,pageSize : Maybe Int
    }



{-| <p>Lists the specified TagOptions or all TagOptions.</p>

__Required Parameters__



-}

listTagOptions :
  
  
    ( ListTagOptionsOptions -> ListTagOptionsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListTagOptionsOutput)

listTagOptions setOptions =
    
    let
        requestInput = ListTagOptionsInput
            
            options.filters
            
            options.pageSize
            
            options.pageToken
            
        
        options = setOptions (ListTagOptionsOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> listTagOptionsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListTagOptions"
                
                (AWS.Core.Decode.ResultDecoder "ListTagOptionsOutput" listTagOptionsOutputDecoder)
                
            )



{-| Options for a listTagOptions request
-}
type alias ListTagOptionsOptions =
    {
    filters : Maybe ListTagOptionsFilters,pageSize : Maybe Int,pageToken : Maybe String
    }



{-| <p>Provisions the specified product.</p> <p>A provisioned product is a resourced instance of a product. For example, provisioning a product based on a CloudFormation template launches a CloudFormation stack and its underlying resources. You can check the status of this request using <a>DescribeRecord</a>.</p> <p>If the request contains a tag key with an empty list of values, there is a tag conflict for that key. Do not include conflicted keys as tags, or this causes the error "Parameter validation failed: Missing required parameter in Tags[<i>N</i>]:<i>Value</i>".</p>

__Required Parameters__

* `productId` __:__ `String`
* `provisioningArtifactId` __:__ `String`
* `provisionedProductName` __:__ `String`
* `provisionToken` __:__ `String`


-}

provisionProduct :
  
    String ->
  
    String ->
  
    String ->
  
    String ->
  
  
    ( ProvisionProductOptions -> ProvisionProductOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ProvisionProductOutput)

provisionProduct productId provisioningArtifactId provisionedProductName provisionToken setOptions =
    
    let
        requestInput = ProvisionProductInput
            
            options.acceptLanguage
            
            productId
            
            provisioningArtifactId
            
            options.pathId
            
            provisionedProductName
            
            options.provisioningParameters
            
            options.provisioningPreferences
            
            options.tags
            
            options.notificationArns
            
            provisionToken
            
        
        options = setOptions (ProvisionProductOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> provisionProductInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ProvisionProduct"
                
                (AWS.Core.Decode.ResultDecoder "ProvisionProductOutput" provisionProductOutputDecoder)
                
            )



{-| Options for a provisionProduct request
-}
type alias ProvisionProductOptions =
    {
    acceptLanguage : Maybe String,pathId : Maybe String,provisioningParameters : Maybe (List ProvisioningParameter),provisioningPreferences : Maybe ProvisioningPreferences,tags : Maybe (List Tag),notificationArns : Maybe (List String)
    }



{-| <p>Rejects an offer to share the specified portfolio.</p>

__Required Parameters__

* `portfolioId` __:__ `String`


-}

rejectPortfolioShare :
  
    String ->
  
  
    ( RejectPortfolioShareOptions -> RejectPortfolioShareOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper RejectPortfolioShareOutput)

rejectPortfolioShare portfolioId setOptions =
    
    let
        requestInput = RejectPortfolioShareInput
            
            options.acceptLanguage
            
            portfolioId
            
            options.portfolioShareType
            
        
        options = setOptions (RejectPortfolioShareOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> rejectPortfolioShareInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RejectPortfolioShare"
                
                (AWS.Core.Decode.ResultDecoder "RejectPortfolioShareOutput" rejectPortfolioShareOutputDecoder)
                
            )



{-| Options for a rejectPortfolioShare request
-}
type alias RejectPortfolioShareOptions =
    {
    acceptLanguage : Maybe String,portfolioShareType : Maybe PortfolioShareType
    }



{-| <p>Lists the provisioned products that are available (not terminated).</p> <p>To use additional filtering, see <a>SearchProvisionedProducts</a>.</p>

__Required Parameters__



-}

scanProvisionedProducts :
  
  
    ( ScanProvisionedProductsOptions -> ScanProvisionedProductsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ScanProvisionedProductsOutput)

scanProvisionedProducts setOptions =
    
    let
        requestInput = ScanProvisionedProductsInput
            
            options.acceptLanguage
            
            options.accessLevelFilter
            
            options.pageSize
            
            options.pageToken
            
        
        options = setOptions (ScanProvisionedProductsOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> scanProvisionedProductsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ScanProvisionedProducts"
                
                (AWS.Core.Decode.ResultDecoder "ScanProvisionedProductsOutput" scanProvisionedProductsOutputDecoder)
                
            )



{-| Options for a scanProvisionedProducts request
-}
type alias ScanProvisionedProductsOptions =
    {
    acceptLanguage : Maybe String,accessLevelFilter : Maybe AccessLevelFilter,pageSize : Maybe Int,pageToken : Maybe String
    }



{-| <p>Gets information about the products to which the caller has access.</p>

__Required Parameters__



-}

searchProducts :
  
  
    ( SearchProductsOptions -> SearchProductsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SearchProductsOutput)

searchProducts setOptions =
    
    let
        requestInput = SearchProductsInput
            
            options.acceptLanguage
            
            options.filters
            
            options.pageSize
            
            options.sortBy
            
            options.sortOrder
            
            options.pageToken
            
        
        options = setOptions (SearchProductsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> searchProductsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SearchProducts"
                
                (AWS.Core.Decode.ResultDecoder "SearchProductsOutput" searchProductsOutputDecoder)
                
            )



{-| Options for a searchProducts request
-}
type alias SearchProductsOptions =
    {
    acceptLanguage : Maybe String,filters : Maybe (Dict String (List String)),pageSize : Maybe Int,sortBy : Maybe ProductViewSortBy,sortOrder : Maybe SortOrder,pageToken : Maybe String
    }



{-| <p>Gets information about the products for the specified portfolio or all products.</p>

__Required Parameters__



-}

searchProductsAsAdmin :
  
  
    ( SearchProductsAsAdminOptions -> SearchProductsAsAdminOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SearchProductsAsAdminOutput)

searchProductsAsAdmin setOptions =
    
    let
        requestInput = SearchProductsAsAdminInput
            
            options.acceptLanguage
            
            options.portfolioId
            
            options.filters
            
            options.sortBy
            
            options.sortOrder
            
            options.pageToken
            
            options.pageSize
            
            options.productSource
            
        
        options = setOptions (SearchProductsAsAdminOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> searchProductsAsAdminInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SearchProductsAsAdmin"
                
                (AWS.Core.Decode.ResultDecoder "SearchProductsAsAdminOutput" searchProductsAsAdminOutputDecoder)
                
            )



{-| Options for a searchProductsAsAdmin request
-}
type alias SearchProductsAsAdminOptions =
    {
    acceptLanguage : Maybe String,portfolioId : Maybe String,filters : Maybe (Dict String (List String)),sortBy : Maybe ProductViewSortBy,sortOrder : Maybe SortOrder,pageToken : Maybe String,pageSize : Maybe Int,productSource : Maybe ProductSource
    }



{-| <p>Gets information about the provisioned products that meet the specified criteria.</p>

__Required Parameters__



-}

searchProvisionedProducts :
  
  
    ( SearchProvisionedProductsOptions -> SearchProvisionedProductsOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SearchProvisionedProductsOutput)

searchProvisionedProducts setOptions =
    
    let
        requestInput = SearchProvisionedProductsInput
            
            options.acceptLanguage
            
            options.accessLevelFilter
            
            options.filters
            
            options.sortBy
            
            options.sortOrder
            
            options.pageSize
            
            options.pageToken
            
        
        options = setOptions (SearchProvisionedProductsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> searchProvisionedProductsInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SearchProvisionedProducts"
                
                (AWS.Core.Decode.ResultDecoder "SearchProvisionedProductsOutput" searchProvisionedProductsOutputDecoder)
                
            )



{-| Options for a searchProvisionedProducts request
-}
type alias SearchProvisionedProductsOptions =
    {
    acceptLanguage : Maybe String,accessLevelFilter : Maybe AccessLevelFilter,filters : Maybe (Dict String (List String)),sortBy : Maybe String,sortOrder : Maybe SortOrder,pageSize : Maybe Int,pageToken : Maybe String
    }



{-| <p>Terminates the specified provisioned product.</p> <p>This operation does not delete any records associated with the provisioned product.</p> <p>You can check the status of this request using <a>DescribeRecord</a>.</p>

__Required Parameters__

* `terminateToken` __:__ `String`


-}

terminateProvisionedProduct :
  
    String ->
  
  
    ( TerminateProvisionedProductOptions -> TerminateProvisionedProductOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper TerminateProvisionedProductOutput)

terminateProvisionedProduct terminateToken setOptions =
    
    let
        requestInput = TerminateProvisionedProductInput
            
            options.provisionedProductName
            
            options.provisionedProductId
            
            terminateToken
            
            options.ignoreErrors
            
            options.acceptLanguage
            
        
        options = setOptions (TerminateProvisionedProductOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> terminateProvisionedProductInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TerminateProvisionedProduct"
                
                (AWS.Core.Decode.ResultDecoder "TerminateProvisionedProductOutput" terminateProvisionedProductOutputDecoder)
                
            )



{-| Options for a terminateProvisionedProduct request
-}
type alias TerminateProvisionedProductOptions =
    {
    provisionedProductName : Maybe String,provisionedProductId : Maybe String,ignoreErrors : Maybe Bool,acceptLanguage : Maybe String
    }



{-| <p>Updates the specified constraint.</p>

__Required Parameters__

* `id` __:__ `String`


-}

updateConstraint :
  
    String ->
  
  
    ( UpdateConstraintOptions -> UpdateConstraintOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateConstraintOutput)

updateConstraint id setOptions =
    
    let
        requestInput = UpdateConstraintInput
            
            options.acceptLanguage
            
            id
            
            options.description
            
            options.parameters
            
        
        options = setOptions (UpdateConstraintOptions Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateConstraintInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateConstraint"
                
                (AWS.Core.Decode.ResultDecoder "UpdateConstraintOutput" updateConstraintOutputDecoder)
                
            )



{-| Options for a updateConstraint request
-}
type alias UpdateConstraintOptions =
    {
    acceptLanguage : Maybe String,description : Maybe String,parameters : Maybe String
    }



{-| <p>Updates the specified portfolio.</p> <p>You cannot update a product that was shared with you.</p>

__Required Parameters__

* `id` __:__ `String`


-}

updatePortfolio :
  
    String ->
  
  
    ( UpdatePortfolioOptions -> UpdatePortfolioOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdatePortfolioOutput)

updatePortfolio id setOptions =
    
    let
        requestInput = UpdatePortfolioInput
            
            options.acceptLanguage
            
            id
            
            options.displayName
            
            options.description
            
            options.providerName
            
            options.addTags
            
            options.removeTags
            
        
        options = setOptions (UpdatePortfolioOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updatePortfolioInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdatePortfolio"
                
                (AWS.Core.Decode.ResultDecoder "UpdatePortfolioOutput" updatePortfolioOutputDecoder)
                
            )



{-| Options for a updatePortfolio request
-}
type alias UpdatePortfolioOptions =
    {
    acceptLanguage : Maybe String,displayName : Maybe String,description : Maybe String,providerName : Maybe String,addTags : Maybe (List Tag),removeTags : Maybe (List String)
    }



{-| <p>Updates the specified product.</p>

__Required Parameters__

* `id` __:__ `String`


-}

updateProduct :
  
    String ->
  
  
    ( UpdateProductOptions -> UpdateProductOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateProductOutput)

updateProduct id setOptions =
    
    let
        requestInput = UpdateProductInput
            
            options.acceptLanguage
            
            id
            
            options.name
            
            options.owner
            
            options.description
            
            options.distributor
            
            options.supportDescription
            
            options.supportEmail
            
            options.supportUrl
            
            options.addTags
            
            options.removeTags
            
        
        options = setOptions (UpdateProductOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateProductInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateProduct"
                
                (AWS.Core.Decode.ResultDecoder "UpdateProductOutput" updateProductOutputDecoder)
                
            )



{-| Options for a updateProduct request
-}
type alias UpdateProductOptions =
    {
    acceptLanguage : Maybe String,name : Maybe String,owner : Maybe String,description : Maybe String,distributor : Maybe String,supportDescription : Maybe String,supportEmail : Maybe String,supportUrl : Maybe String,addTags : Maybe (List Tag),removeTags : Maybe (List String)
    }



{-| <p>Requests updates to the configuration of the specified provisioned product.</p> <p>If there are tags associated with the object, they cannot be updated or added. Depending on the specific updates requested, this operation can update with no interruption, with some interruption, or replace the provisioned product entirely.</p> <p>You can check the status of this request using <a>DescribeRecord</a>.</p>

__Required Parameters__

* `updateToken` __:__ `String`


-}

updateProvisionedProduct :
  
    String ->
  
  
    ( UpdateProvisionedProductOptions -> UpdateProvisionedProductOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateProvisionedProductOutput)

updateProvisionedProduct updateToken setOptions =
    
    let
        requestInput = UpdateProvisionedProductInput
            
            options.acceptLanguage
            
            options.provisionedProductName
            
            options.provisionedProductId
            
            options.productId
            
            options.provisioningArtifactId
            
            options.pathId
            
            options.provisioningParameters
            
            options.provisioningPreferences
            
            options.tags
            
            updateToken
            
        
        options = setOptions (UpdateProvisionedProductOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateProvisionedProductInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateProvisionedProduct"
                
                (AWS.Core.Decode.ResultDecoder "UpdateProvisionedProductOutput" updateProvisionedProductOutputDecoder)
                
            )



{-| Options for a updateProvisionedProduct request
-}
type alias UpdateProvisionedProductOptions =
    {
    acceptLanguage : Maybe String,provisionedProductName : Maybe String,provisionedProductId : Maybe String,productId : Maybe String,provisioningArtifactId : Maybe String,pathId : Maybe String,provisioningParameters : Maybe (List UpdateProvisioningParameter),provisioningPreferences : Maybe UpdateProvisioningPreferences,tags : Maybe (List Tag)
    }



{-| <p>Requests updates to the properties of the specified provisioned product.</p>

__Required Parameters__

* `provisionedProductId` __:__ `String`
* `provisionedProductProperties` __:__ `(Dict String String)`
* `idempotencyToken` __:__ `String`


-}

updateProvisionedProductProperties :
  
    String ->
  
    (Dict String String) ->
  
    String ->
  
  
    ( UpdateProvisionedProductPropertiesOptions -> UpdateProvisionedProductPropertiesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateProvisionedProductPropertiesOutput)

updateProvisionedProductProperties provisionedProductId provisionedProductProperties idempotencyToken setOptions =
    
    let
        requestInput = UpdateProvisionedProductPropertiesInput
            
            options.acceptLanguage
            
            provisionedProductId
            
            provisionedProductProperties
            
            idempotencyToken
            
        
        options = setOptions (UpdateProvisionedProductPropertiesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateProvisionedProductPropertiesInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateProvisionedProductProperties"
                
                (AWS.Core.Decode.ResultDecoder "UpdateProvisionedProductPropertiesOutput" updateProvisionedProductPropertiesOutputDecoder)
                
            )



{-| Options for a updateProvisionedProductProperties request
-}
type alias UpdateProvisionedProductPropertiesOptions =
    {
    acceptLanguage : Maybe String
    }



{-| <p>Updates the specified provisioning artifact (also known as a version) for the specified product.</p> <p>You cannot update a provisioning artifact for a product that was shared with you.</p>

__Required Parameters__

* `productId` __:__ `String`
* `provisioningArtifactId` __:__ `String`


-}

updateProvisioningArtifact :
  
    String ->
  
    String ->
  
  
    ( UpdateProvisioningArtifactOptions -> UpdateProvisioningArtifactOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateProvisioningArtifactOutput)

updateProvisioningArtifact productId provisioningArtifactId setOptions =
    
    let
        requestInput = UpdateProvisioningArtifactInput
            
            options.acceptLanguage
            
            productId
            
            provisioningArtifactId
            
            options.name
            
            options.description
            
            options.active
            
            options.guidance
            
        
        options = setOptions (UpdateProvisioningArtifactOptions Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateProvisioningArtifactInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateProvisioningArtifact"
                
                (AWS.Core.Decode.ResultDecoder "UpdateProvisioningArtifactOutput" updateProvisioningArtifactOutputDecoder)
                
            )



{-| Options for a updateProvisioningArtifact request
-}
type alias UpdateProvisioningArtifactOptions =
    {
    acceptLanguage : Maybe String,name : Maybe String,description : Maybe String,active : Maybe Bool,guidance : Maybe ProvisioningArtifactGuidance
    }



{-| <p>Updates a self-service action.</p>

__Required Parameters__

* `id` __:__ `String`


-}

updateServiceAction :
  
    String ->
  
  
    ( UpdateServiceActionOptions -> UpdateServiceActionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateServiceActionOutput)

updateServiceAction id setOptions =
    
    let
        requestInput = UpdateServiceActionInput
            
            id
            
            options.name
            
            options.definition
            
            options.description
            
            options.acceptLanguage
            
        
        options = setOptions (UpdateServiceActionOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateServiceActionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateServiceAction"
                
                (AWS.Core.Decode.ResultDecoder "UpdateServiceActionOutput" updateServiceActionOutputDecoder)
                
            )



{-| Options for a updateServiceAction request
-}
type alias UpdateServiceActionOptions =
    {
    name : Maybe String,definition : Maybe (Dict String String),description : Maybe String,acceptLanguage : Maybe String
    }



{-| <p>Updates the specified TagOption.</p>

__Required Parameters__

* `id` __:__ `String`


-}

updateTagOption :
  
    String ->
  
  
    ( UpdateTagOptionOptions -> UpdateTagOptionOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper UpdateTagOptionOutput)

updateTagOption id setOptions =
    
    let
        requestInput = UpdateTagOptionInput
            
            id
            
            options.value
            
            options.active
            
        
        options = setOptions (UpdateTagOptionOptions Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- []
            

            
            (requestInput
                |> updateTagOptionInputEncoder
                |> AWS.Core.Http.jsonBody
            )
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UpdateTagOption"
                
                (AWS.Core.Decode.ResultDecoder "UpdateTagOptionOutput" updateTagOptionOutputDecoder)
                
            )



{-| Options for a updateTagOption request
-}
type alias UpdateTagOptionOptions =
    {
    value : Maybe String,active : Maybe Bool
    }




{-| Type of HTTP response from acceptPortfolioSha
-}
type alias AcceptPortfolioShareOutput =
    { 
    }



acceptPortfolioShareOutputDecoder : JD.Decoder AcceptPortfolioShareOutput
acceptPortfolioShareOutputDecoder =
    JD.succeed AcceptPortfolioShareOutput
        




acceptPortfolioShareOutputToString : AcceptPortfolioShareOutput -> String -- List (String, String)
acceptPortfolioShareOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| <p>The access level to use to filter results.</p>
-}
type alias AccessLevelFilter =
    { key : Maybe AccessLevelFilterKey
    , value : Maybe String
    }



accessLevelFilterDecoder : JD.Decoder AccessLevelFilter
accessLevelFilterDecoder =
    JD.succeed AccessLevelFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            accessLevelFilterKeyDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




accessLevelFilterToString : AccessLevelFilter -> String -- List (String, String)
accessLevelFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `AccessLevelFilterKey_Account`
* `AccessLevelFilterKey_Role`
* `AccessLevelFilterKey_User`

-}
type AccessLevelFilterKey
    = AccessLevelFilterKey_Account
    | AccessLevelFilterKey_Role
    | AccessLevelFilterKey_User



accessLevelFilterKeyDecoder : JD.Decoder AccessLevelFilterKey
accessLevelFilterKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Account" ->
                        JD.succeed AccessLevelFilterKey_Account

                    "Role" ->
                        JD.succeed AccessLevelFilterKey_Role

                    "User" ->
                        JD.succeed AccessLevelFilterKey_User


                    _ ->
                        JD.fail "bad thing"
            )




accessLevelFilterKeyToString : AccessLevelFilterKey -> String
accessLevelFilterKeyToString val =
    case val of
        AccessLevelFilterKey_Account ->
            "Account"

        AccessLevelFilterKey_Role ->
            "Role"

        AccessLevelFilterKey_User ->
            "User"




{-| One of

* `AccessStatus_ENABLED`
* `AccessStatus_UNDER_CHANGE`
* `AccessStatus_DISABLED`

-}
type AccessStatus
    = AccessStatus_ENABLED
    | AccessStatus_UNDER_CHANGE
    | AccessStatus_DISABLED



accessStatusDecoder : JD.Decoder AccessStatus
accessStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed AccessStatus_ENABLED

                    "UNDER_CHANGE" ->
                        JD.succeed AccessStatus_UNDER_CHANGE

                    "DISABLED" ->
                        JD.succeed AccessStatus_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )




accessStatusToString : AccessStatus -> String
accessStatusToString val =
    case val of
        AccessStatus_ENABLED ->
            "ENABLED"

        AccessStatus_UNDER_CHANGE ->
            "UNDER_CHANGE"

        AccessStatus_DISABLED ->
            "DISABLED"




{-| Type of HTTP response from associateBudgetWithResour
-}
type alias AssociateBudgetWithResourceOutput =
    { 
    }



associateBudgetWithResourceOutputDecoder : JD.Decoder AssociateBudgetWithResourceOutput
associateBudgetWithResourceOutputDecoder =
    JD.succeed AssociateBudgetWithResourceOutput
        




associateBudgetWithResourceOutputToString : AssociateBudgetWithResourceOutput -> String -- List (String, String)
associateBudgetWithResourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from associatePrincipalWithPortfol
-}
type alias AssociatePrincipalWithPortfolioOutput =
    { 
    }



associatePrincipalWithPortfolioOutputDecoder : JD.Decoder AssociatePrincipalWithPortfolioOutput
associatePrincipalWithPortfolioOutputDecoder =
    JD.succeed AssociatePrincipalWithPortfolioOutput
        




associatePrincipalWithPortfolioOutputToString : AssociatePrincipalWithPortfolioOutput -> String -- List (String, String)
associatePrincipalWithPortfolioOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from associateProductWithPortfol
-}
type alias AssociateProductWithPortfolioOutput =
    { 
    }



associateProductWithPortfolioOutputDecoder : JD.Decoder AssociateProductWithPortfolioOutput
associateProductWithPortfolioOutputDecoder =
    JD.succeed AssociateProductWithPortfolioOutput
        




associateProductWithPortfolioOutputToString : AssociateProductWithPortfolioOutput -> String -- List (String, String)
associateProductWithPortfolioOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from associateServiceActionWithProvisioningArtifa
-}
type alias AssociateServiceActionWithProvisioningArtifactOutput =
    { 
    }



associateServiceActionWithProvisioningArtifactOutputDecoder : JD.Decoder AssociateServiceActionWithProvisioningArtifactOutput
associateServiceActionWithProvisioningArtifactOutputDecoder =
    JD.succeed AssociateServiceActionWithProvisioningArtifactOutput
        




associateServiceActionWithProvisioningArtifactOutputToString : AssociateServiceActionWithProvisioningArtifactOutput -> String -- List (String, String)
associateServiceActionWithProvisioningArtifactOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from associateTagOptionWithResour
-}
type alias AssociateTagOptionWithResourceOutput =
    { 
    }



associateTagOptionWithResourceOutputDecoder : JD.Decoder AssociateTagOptionWithResourceOutput
associateTagOptionWithResourceOutputDecoder =
    JD.succeed AssociateTagOptionWithResourceOutput
        




associateTagOptionWithResourceOutputToString : AssociateTagOptionWithResourceOutput -> String -- List (String, String)
associateTagOptionWithResourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchAssociateServiceActionWithProvisioningArtifa
-}
type alias BatchAssociateServiceActionWithProvisioningArtifactOutput =
    { failedServiceActionAssociations : Maybe (List FailedServiceActionAssociation)
    }



batchAssociateServiceActionWithProvisioningArtifactOutputDecoder : JD.Decoder BatchAssociateServiceActionWithProvisioningArtifactOutput
batchAssociateServiceActionWithProvisioningArtifactOutputDecoder =
    JD.succeed BatchAssociateServiceActionWithProvisioningArtifactOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedServiceActionAssociations", "failedServiceActionAssociations"]
            (JD.list failedServiceActionAssociationDecoder)
        )
        




batchAssociateServiceActionWithProvisioningArtifactOutputToString : BatchAssociateServiceActionWithProvisioningArtifactOutput -> String -- List (String, String)
batchAssociateServiceActionWithProvisioningArtifactOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedServiceActionAssociations" "" -- val.failedServiceActionAssociations
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from batchDisassociateServiceActionFromProvisioningArtifa
-}
type alias BatchDisassociateServiceActionFromProvisioningArtifactOutput =
    { failedServiceActionAssociations : Maybe (List FailedServiceActionAssociation)
    }



batchDisassociateServiceActionFromProvisioningArtifactOutputDecoder : JD.Decoder BatchDisassociateServiceActionFromProvisioningArtifactOutput
batchDisassociateServiceActionFromProvisioningArtifactOutputDecoder =
    JD.succeed BatchDisassociateServiceActionFromProvisioningArtifactOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["FailedServiceActionAssociations", "failedServiceActionAssociations"]
            (JD.list failedServiceActionAssociationDecoder)
        )
        




batchDisassociateServiceActionFromProvisioningArtifactOutputToString : BatchDisassociateServiceActionFromProvisioningArtifactOutput -> String -- List (String, String)
batchDisassociateServiceActionFromProvisioningArtifactOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "failedServiceActionAssociations" "" -- val.failedServiceActionAssociations
        
    --     |> Dict.toList
    ""



{-| <p>Information about a budget.</p>
-}
type alias BudgetDetail =
    { budgetName : Maybe String
    }



budgetDetailDecoder : JD.Decoder BudgetDetail
budgetDetailDecoder =
    JD.succeed BudgetDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BudgetName", "budgetName"]
            JD.string
        )
        




budgetDetailToString : BudgetDetail -> String -- List (String, String)
budgetDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "budgetName" "" -- val.budgetName
        
    --     |> Dict.toList
    ""



{-| One of

* `ChangeAction_ADD`
* `ChangeAction_MODIFY`
* `ChangeAction_REMOVE`

-}
type ChangeAction
    = ChangeAction_ADD
    | ChangeAction_MODIFY
    | ChangeAction_REMOVE



changeActionDecoder : JD.Decoder ChangeAction
changeActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ADD" ->
                        JD.succeed ChangeAction_ADD

                    "MODIFY" ->
                        JD.succeed ChangeAction_MODIFY

                    "REMOVE" ->
                        JD.succeed ChangeAction_REMOVE


                    _ ->
                        JD.fail "bad thing"
            )




changeActionToString : ChangeAction -> String
changeActionToString val =
    case val of
        ChangeAction_ADD ->
            "ADD"

        ChangeAction_MODIFY ->
            "MODIFY"

        ChangeAction_REMOVE ->
            "REMOVE"




{-| <p>Information about a CloudWatch dashboard.</p>
-}
type alias CloudWatchDashboard =
    { name : Maybe String
    }



cloudWatchDashboardDecoder : JD.Decoder CloudWatchDashboard
cloudWatchDashboardDecoder =
    JD.succeed CloudWatchDashboard
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




cloudWatchDashboardToString : CloudWatchDashboard -> String -- List (String, String)
cloudWatchDashboardToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| <p>Information about a constraint.</p>
-}
type alias ConstraintDetail =
    { constraintId : Maybe String
    , type_ : Maybe String
    , description : Maybe String
    , owner : Maybe String
    }



constraintDetailDecoder : JD.Decoder ConstraintDetail
constraintDetailDecoder =
    JD.succeed ConstraintDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConstraintId", "constraintId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Owner", "owner"]
            JD.string
        )
        




constraintDetailToString : ConstraintDetail -> String -- List (String, String)
constraintDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "constraintId" "" -- val.constraintId
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "owner" "" -- val.owner
        
    --     |> Dict.toList
    ""



{-| <p>Summary information about a constraint.</p>
-}
type alias ConstraintSummary =
    { type_ : Maybe String
    , description : Maybe String
    }



constraintSummaryDecoder : JD.Decoder ConstraintSummary
constraintSummaryDecoder =
    JD.succeed ConstraintSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        




constraintSummaryToString : ConstraintSummary -> String -- List (String, String)
constraintSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| One of

* `CopyOption_CopyTags`

-}
type CopyOption
    = CopyOption_CopyTags



copyOptionDecoder : JD.Decoder CopyOption
copyOptionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CopyTags" ->
                        JD.succeed CopyOption_CopyTags


                    _ ->
                        JD.fail "bad thing"
            )




copyOptionToString : CopyOption -> String
copyOptionToString val =
    case val of
        CopyOption_CopyTags ->
            "CopyTags"




{-| Type of HTTP response from copyProdu
-}
type alias CopyProductOutput =
    { copyProductToken : Maybe String
    }



copyProductOutputDecoder : JD.Decoder CopyProductOutput
copyProductOutputDecoder =
    JD.succeed CopyProductOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CopyProductToken", "copyProductToken"]
            JD.string
        )
        




copyProductOutputToString : CopyProductOutput -> String -- List (String, String)
copyProductOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "copyProductToken" "" -- val.copyProductToken
        
    --     |> Dict.toList
    ""



{-| One of

* `CopyProductStatus_SUCCEEDED`
* `CopyProductStatus_IN_PROGRESS`
* `CopyProductStatus_FAILED`

-}
type CopyProductStatus
    = CopyProductStatus_SUCCEEDED
    | CopyProductStatus_IN_PROGRESS
    | CopyProductStatus_FAILED



copyProductStatusDecoder : JD.Decoder CopyProductStatus
copyProductStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCEEDED" ->
                        JD.succeed CopyProductStatus_SUCCEEDED

                    "IN_PROGRESS" ->
                        JD.succeed CopyProductStatus_IN_PROGRESS

                    "FAILED" ->
                        JD.succeed CopyProductStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




copyProductStatusToString : CopyProductStatus -> String
copyProductStatusToString val =
    case val of
        CopyProductStatus_SUCCEEDED ->
            "SUCCEEDED"

        CopyProductStatus_IN_PROGRESS ->
            "IN_PROGRESS"

        CopyProductStatus_FAILED ->
            "FAILED"




{-| Type of HTTP response from createConstrai
-}
type alias CreateConstraintOutput =
    { constraintDetail : Maybe ConstraintDetail
    , constraintParameters : Maybe String
    , status : Maybe Status
    }



createConstraintOutputDecoder : JD.Decoder CreateConstraintOutput
createConstraintOutputDecoder =
    JD.succeed CreateConstraintOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConstraintDetail", "constraintDetail"]
            constraintDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConstraintParameters", "constraintParameters"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            statusDecoder
        )
        




createConstraintOutputToString : CreateConstraintOutput -> String -- List (String, String)
createConstraintOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "constraintDetail" "" -- val.constraintDetail
        
    --     |> Dict.insert
    --         "constraintParameters" "" -- val.constraintParameters
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createPortfol
-}
type alias CreatePortfolioOutput =
    { portfolioDetail : Maybe PortfolioDetail
    , tags : Maybe (List Tag)
    }



createPortfolioOutputDecoder : JD.Decoder CreatePortfolioOutput
createPortfolioOutputDecoder =
    JD.succeed CreatePortfolioOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PortfolioDetail", "portfolioDetail"]
            portfolioDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        




createPortfolioOutputToString : CreatePortfolioOutput -> String -- List (String, String)
createPortfolioOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "portfolioDetail" "" -- val.portfolioDetail
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createPortfolioSha
-}
type alias CreatePortfolioShareOutput =
    { portfolioShareToken : Maybe String
    }



createPortfolioShareOutputDecoder : JD.Decoder CreatePortfolioShareOutput
createPortfolioShareOutputDecoder =
    JD.succeed CreatePortfolioShareOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PortfolioShareToken", "portfolioShareToken"]
            JD.string
        )
        




createPortfolioShareOutputToString : CreatePortfolioShareOutput -> String -- List (String, String)
createPortfolioShareOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "portfolioShareToken" "" -- val.portfolioShareToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createProdu
-}
type alias CreateProductOutput =
    { productViewDetail : Maybe ProductViewDetail
    , provisioningArtifactDetail : Maybe ProvisioningArtifactDetail
    , tags : Maybe (List Tag)
    }



createProductOutputDecoder : JD.Decoder CreateProductOutput
createProductOutputDecoder =
    JD.succeed CreateProductOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductViewDetail", "productViewDetail"]
            productViewDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactDetail", "provisioningArtifactDetail"]
            provisioningArtifactDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        




createProductOutputToString : CreateProductOutput -> String -- List (String, String)
createProductOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "productViewDetail" "" -- val.productViewDetail
        
    --     |> Dict.insert
    --         "provisioningArtifactDetail" "" -- val.provisioningArtifactDetail
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createProvisionedProductPl
-}
type alias CreateProvisionedProductPlanOutput =
    { planName : Maybe String
    , planId : Maybe String
    , provisionProductId : Maybe String
    , provisionedProductName : Maybe String
    , provisioningArtifactId : Maybe String
    }



createProvisionedProductPlanOutputDecoder : JD.Decoder CreateProvisionedProductPlanOutput
createProvisionedProductPlanOutputDecoder =
    JD.succeed CreateProvisionedProductPlanOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlanName", "planName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlanId", "planId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionProductId", "provisionProductId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionedProductName", "provisionedProductName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactId", "provisioningArtifactId"]
            JD.string
        )
        




createProvisionedProductPlanOutputToString : CreateProvisionedProductPlanOutput -> String -- List (String, String)
createProvisionedProductPlanOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "planName" "" -- val.planName
        
    --     |> Dict.insert
    --         "planId" "" -- val.planId
        
    --     |> Dict.insert
    --         "provisionProductId" "" -- val.provisionProductId
        
    --     |> Dict.insert
    --         "provisionedProductName" "" -- val.provisionedProductName
        
    --     |> Dict.insert
    --         "provisioningArtifactId" "" -- val.provisioningArtifactId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createProvisioningArtifa
-}
type alias CreateProvisioningArtifactOutput =
    { provisioningArtifactDetail : Maybe ProvisioningArtifactDetail
    , info : Maybe (Dict String String)
    , status : Maybe Status
    }



createProvisioningArtifactOutputDecoder : JD.Decoder CreateProvisioningArtifactOutput
createProvisioningArtifactOutputDecoder =
    JD.succeed CreateProvisioningArtifactOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactDetail", "provisioningArtifactDetail"]
            provisioningArtifactDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Info", "info"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            statusDecoder
        )
        




createProvisioningArtifactOutputToString : CreateProvisioningArtifactOutput -> String -- List (String, String)
createProvisioningArtifactOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "provisioningArtifactDetail" "" -- val.provisioningArtifactDetail
        
    --     |> Dict.insert
    --         "info" "" -- val.info
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createServiceActi
-}
type alias CreateServiceActionOutput =
    { serviceActionDetail : Maybe ServiceActionDetail
    }



createServiceActionOutputDecoder : JD.Decoder CreateServiceActionOutput
createServiceActionOutputDecoder =
    JD.succeed CreateServiceActionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceActionDetail", "serviceActionDetail"]
            serviceActionDetailDecoder
        )
        




createServiceActionOutputToString : CreateServiceActionOutput -> String -- List (String, String)
createServiceActionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceActionDetail" "" -- val.serviceActionDetail
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createTagOpti
-}
type alias CreateTagOptionOutput =
    { tagOptionDetail : Maybe TagOptionDetail
    }



createTagOptionOutputDecoder : JD.Decoder CreateTagOptionOutput
createTagOptionOutputDecoder =
    JD.succeed CreateTagOptionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagOptionDetail", "tagOptionDetail"]
            tagOptionDetailDecoder
        )
        




createTagOptionOutputToString : CreateTagOptionOutput -> String -- List (String, String)
createTagOptionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tagOptionDetail" "" -- val.tagOptionDetail
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteConstrai
-}
type alias DeleteConstraintOutput =
    { 
    }



deleteConstraintOutputDecoder : JD.Decoder DeleteConstraintOutput
deleteConstraintOutputDecoder =
    JD.succeed DeleteConstraintOutput
        




deleteConstraintOutputToString : DeleteConstraintOutput -> String -- List (String, String)
deleteConstraintOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deletePortfol
-}
type alias DeletePortfolioOutput =
    { 
    }



deletePortfolioOutputDecoder : JD.Decoder DeletePortfolioOutput
deletePortfolioOutputDecoder =
    JD.succeed DeletePortfolioOutput
        




deletePortfolioOutputToString : DeletePortfolioOutput -> String -- List (String, String)
deletePortfolioOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deletePortfolioSha
-}
type alias DeletePortfolioShareOutput =
    { portfolioShareToken : Maybe String
    }



deletePortfolioShareOutputDecoder : JD.Decoder DeletePortfolioShareOutput
deletePortfolioShareOutputDecoder =
    JD.succeed DeletePortfolioShareOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PortfolioShareToken", "portfolioShareToken"]
            JD.string
        )
        




deletePortfolioShareOutputToString : DeletePortfolioShareOutput -> String -- List (String, String)
deletePortfolioShareOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "portfolioShareToken" "" -- val.portfolioShareToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteProdu
-}
type alias DeleteProductOutput =
    { 
    }



deleteProductOutputDecoder : JD.Decoder DeleteProductOutput
deleteProductOutputDecoder =
    JD.succeed DeleteProductOutput
        




deleteProductOutputToString : DeleteProductOutput -> String -- List (String, String)
deleteProductOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteProvisionedProductPl
-}
type alias DeleteProvisionedProductPlanOutput =
    { 
    }



deleteProvisionedProductPlanOutputDecoder : JD.Decoder DeleteProvisionedProductPlanOutput
deleteProvisionedProductPlanOutputDecoder =
    JD.succeed DeleteProvisionedProductPlanOutput
        




deleteProvisionedProductPlanOutputToString : DeleteProvisionedProductPlanOutput -> String -- List (String, String)
deleteProvisionedProductPlanOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteProvisioningArtifa
-}
type alias DeleteProvisioningArtifactOutput =
    { 
    }



deleteProvisioningArtifactOutputDecoder : JD.Decoder DeleteProvisioningArtifactOutput
deleteProvisioningArtifactOutputDecoder =
    JD.succeed DeleteProvisioningArtifactOutput
        




deleteProvisioningArtifactOutputToString : DeleteProvisioningArtifactOutput -> String -- List (String, String)
deleteProvisioningArtifactOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteServiceActi
-}
type alias DeleteServiceActionOutput =
    { 
    }



deleteServiceActionOutputDecoder : JD.Decoder DeleteServiceActionOutput
deleteServiceActionOutputDecoder =
    JD.succeed DeleteServiceActionOutput
        




deleteServiceActionOutputToString : DeleteServiceActionOutput -> String -- List (String, String)
deleteServiceActionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteTagOpti
-}
type alias DeleteTagOptionOutput =
    { 
    }



deleteTagOptionOutputDecoder : JD.Decoder DeleteTagOptionOutput
deleteTagOptionOutputDecoder =
    JD.succeed DeleteTagOptionOutput
        




deleteTagOptionOutputToString : DeleteTagOptionOutput -> String -- List (String, String)
deleteTagOptionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeConstrai
-}
type alias DescribeConstraintOutput =
    { constraintDetail : Maybe ConstraintDetail
    , constraintParameters : Maybe String
    , status : Maybe Status
    }



describeConstraintOutputDecoder : JD.Decoder DescribeConstraintOutput
describeConstraintOutputDecoder =
    JD.succeed DescribeConstraintOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConstraintDetail", "constraintDetail"]
            constraintDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConstraintParameters", "constraintParameters"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            statusDecoder
        )
        




describeConstraintOutputToString : DescribeConstraintOutput -> String -- List (String, String)
describeConstraintOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "constraintDetail" "" -- val.constraintDetail
        
    --     |> Dict.insert
    --         "constraintParameters" "" -- val.constraintParameters
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeCopyProductStat
-}
type alias DescribeCopyProductStatusOutput =
    { copyProductStatus : Maybe CopyProductStatus
    , targetProductId : Maybe String
    , statusDetail : Maybe String
    }



describeCopyProductStatusOutputDecoder : JD.Decoder DescribeCopyProductStatusOutput
describeCopyProductStatusOutputDecoder =
    JD.succeed DescribeCopyProductStatusOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CopyProductStatus", "copyProductStatus"]
            copyProductStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TargetProductId", "targetProductId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusDetail", "statusDetail"]
            JD.string
        )
        




describeCopyProductStatusOutputToString : DescribeCopyProductStatusOutput -> String -- List (String, String)
describeCopyProductStatusOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "copyProductStatus" "" -- val.copyProductStatus
        
    --     |> Dict.insert
    --         "targetProductId" "" -- val.targetProductId
        
    --     |> Dict.insert
    --         "statusDetail" "" -- val.statusDetail
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describePortfol
-}
type alias DescribePortfolioOutput =
    { portfolioDetail : Maybe PortfolioDetail
    , tags : Maybe (List Tag)
    , tagOptions : Maybe (List TagOptionDetail)
    , budgets : Maybe (List BudgetDetail)
    }



describePortfolioOutputDecoder : JD.Decoder DescribePortfolioOutput
describePortfolioOutputDecoder =
    JD.succeed DescribePortfolioOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PortfolioDetail", "portfolioDetail"]
            portfolioDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagOptions", "tagOptions"]
            (JD.list tagOptionDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Budgets", "budgets"]
            (JD.list budgetDetailDecoder)
        )
        




describePortfolioOutputToString : DescribePortfolioOutput -> String -- List (String, String)
describePortfolioOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "portfolioDetail" "" -- val.portfolioDetail
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "tagOptions" "" -- val.tagOptions
        
    --     |> Dict.insert
    --         "budgets" "" -- val.budgets
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describePortfolioShareStat
-}
type alias DescribePortfolioShareStatusOutput =
    { portfolioShareToken : Maybe String
    , portfolioId : Maybe String
    , organizationNodeValue : Maybe String
    , status : Maybe ShareStatus
    , shareDetails : Maybe ShareDetails
    }



describePortfolioShareStatusOutputDecoder : JD.Decoder DescribePortfolioShareStatusOutput
describePortfolioShareStatusOutputDecoder =
    JD.succeed DescribePortfolioShareStatusOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PortfolioShareToken", "portfolioShareToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PortfolioId", "portfolioId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OrganizationNodeValue", "organizationNodeValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            shareStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ShareDetails", "shareDetails"]
            shareDetailsDecoder
        )
        




describePortfolioShareStatusOutputToString : DescribePortfolioShareStatusOutput -> String -- List (String, String)
describePortfolioShareStatusOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "portfolioShareToken" "" -- val.portfolioShareToken
        
    --     |> Dict.insert
    --         "portfolioId" "" -- val.portfolioId
        
    --     |> Dict.insert
    --         "organizationNodeValue" "" -- val.organizationNodeValue
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "shareDetails" "" -- val.shareDetails
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeProductAsAdm
-}
type alias DescribeProductAsAdminOutput =
    { productViewDetail : Maybe ProductViewDetail
    , provisioningArtifactSummaries : Maybe (List ProvisioningArtifactSummary)
    , tags : Maybe (List Tag)
    , tagOptions : Maybe (List TagOptionDetail)
    , budgets : Maybe (List BudgetDetail)
    }



describeProductAsAdminOutputDecoder : JD.Decoder DescribeProductAsAdminOutput
describeProductAsAdminOutputDecoder =
    JD.succeed DescribeProductAsAdminOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductViewDetail", "productViewDetail"]
            productViewDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactSummaries", "provisioningArtifactSummaries"]
            (JD.list provisioningArtifactSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagOptions", "tagOptions"]
            (JD.list tagOptionDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Budgets", "budgets"]
            (JD.list budgetDetailDecoder)
        )
        




describeProductAsAdminOutputToString : DescribeProductAsAdminOutput -> String -- List (String, String)
describeProductAsAdminOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "productViewDetail" "" -- val.productViewDetail
        
    --     |> Dict.insert
    --         "provisioningArtifactSummaries" "" -- val.provisioningArtifactSummaries
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "tagOptions" "" -- val.tagOptions
        
    --     |> Dict.insert
    --         "budgets" "" -- val.budgets
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeProdu
-}
type alias DescribeProductOutput =
    { productViewSummary : Maybe ProductViewSummary
    , provisioningArtifacts : Maybe (List ProvisioningArtifact)
    , budgets : Maybe (List BudgetDetail)
    }



describeProductOutputDecoder : JD.Decoder DescribeProductOutput
describeProductOutputDecoder =
    JD.succeed DescribeProductOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductViewSummary", "productViewSummary"]
            productViewSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifacts", "provisioningArtifacts"]
            (JD.list provisioningArtifactDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Budgets", "budgets"]
            (JD.list budgetDetailDecoder)
        )
        




describeProductOutputToString : DescribeProductOutput -> String -- List (String, String)
describeProductOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "productViewSummary" "" -- val.productViewSummary
        
    --     |> Dict.insert
    --         "provisioningArtifacts" "" -- val.provisioningArtifacts
        
    --     |> Dict.insert
    --         "budgets" "" -- val.budgets
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeProductVi
-}
type alias DescribeProductViewOutput =
    { productViewSummary : Maybe ProductViewSummary
    , provisioningArtifacts : Maybe (List ProvisioningArtifact)
    }



describeProductViewOutputDecoder : JD.Decoder DescribeProductViewOutput
describeProductViewOutputDecoder =
    JD.succeed DescribeProductViewOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductViewSummary", "productViewSummary"]
            productViewSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifacts", "provisioningArtifacts"]
            (JD.list provisioningArtifactDecoder)
        )
        




describeProductViewOutputToString : DescribeProductViewOutput -> String -- List (String, String)
describeProductViewOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "productViewSummary" "" -- val.productViewSummary
        
    --     |> Dict.insert
    --         "provisioningArtifacts" "" -- val.provisioningArtifacts
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeProvisionedProdu
-}
type alias DescribeProvisionedProductOutput =
    { provisionedProductDetail : Maybe ProvisionedProductDetail
    , cloudWatchDashboards : Maybe (List CloudWatchDashboard)
    }



describeProvisionedProductOutputDecoder : JD.Decoder DescribeProvisionedProductOutput
describeProvisionedProductOutputDecoder =
    JD.succeed DescribeProvisionedProductOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionedProductDetail", "provisionedProductDetail"]
            provisionedProductDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CloudWatchDashboards", "cloudWatchDashboards"]
            (JD.list cloudWatchDashboardDecoder)
        )
        




describeProvisionedProductOutputToString : DescribeProvisionedProductOutput -> String -- List (String, String)
describeProvisionedProductOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "provisionedProductDetail" "" -- val.provisionedProductDetail
        
    --     |> Dict.insert
    --         "cloudWatchDashboards" "" -- val.cloudWatchDashboards
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeProvisionedProductPl
-}
type alias DescribeProvisionedProductPlanOutput =
    { provisionedProductPlanDetails : Maybe ProvisionedProductPlanDetails
    , resourceChanges : Maybe (List ResourceChange)
    , nextPageToken : Maybe String
    }



describeProvisionedProductPlanOutputDecoder : JD.Decoder DescribeProvisionedProductPlanOutput
describeProvisionedProductPlanOutputDecoder =
    JD.succeed DescribeProvisionedProductPlanOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionedProductPlanDetails", "provisionedProductPlanDetails"]
            provisionedProductPlanDetailsDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceChanges", "resourceChanges"]
            (JD.list resourceChangeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




describeProvisionedProductPlanOutputToString : DescribeProvisionedProductPlanOutput -> String -- List (String, String)
describeProvisionedProductPlanOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "provisionedProductPlanDetails" "" -- val.provisionedProductPlanDetails
        
    --     |> Dict.insert
    --         "resourceChanges" "" -- val.resourceChanges
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeProvisioningArtifa
-}
type alias DescribeProvisioningArtifactOutput =
    { provisioningArtifactDetail : Maybe ProvisioningArtifactDetail
    , info : Maybe (Dict String String)
    , status : Maybe Status
    }



describeProvisioningArtifactOutputDecoder : JD.Decoder DescribeProvisioningArtifactOutput
describeProvisioningArtifactOutputDecoder =
    JD.succeed DescribeProvisioningArtifactOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactDetail", "provisioningArtifactDetail"]
            provisioningArtifactDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Info", "info"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            statusDecoder
        )
        




describeProvisioningArtifactOutputToString : DescribeProvisioningArtifactOutput -> String -- List (String, String)
describeProvisioningArtifactOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "provisioningArtifactDetail" "" -- val.provisioningArtifactDetail
        
    --     |> Dict.insert
    --         "info" "" -- val.info
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeProvisioningParamete
-}
type alias DescribeProvisioningParametersOutput =
    { provisioningArtifactParameters : Maybe (List ProvisioningArtifactParameter)
    , constraintSummaries : Maybe (List ConstraintSummary)
    , usageInstructions : Maybe (List UsageInstruction)
    , tagOptions : Maybe (List TagOptionSummary)
    , provisioningArtifactPreferences : Maybe ProvisioningArtifactPreferences
    }



describeProvisioningParametersOutputDecoder : JD.Decoder DescribeProvisioningParametersOutput
describeProvisioningParametersOutputDecoder =
    JD.succeed DescribeProvisioningParametersOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactParameters", "provisioningArtifactParameters"]
            (JD.list provisioningArtifactParameterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConstraintSummaries", "constraintSummaries"]
            (JD.list constraintSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UsageInstructions", "usageInstructions"]
            (JD.list usageInstructionDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagOptions", "tagOptions"]
            (JD.list tagOptionSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactPreferences", "provisioningArtifactPreferences"]
            provisioningArtifactPreferencesDecoder
        )
        




describeProvisioningParametersOutputToString : DescribeProvisioningParametersOutput -> String -- List (String, String)
describeProvisioningParametersOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "provisioningArtifactParameters" "" -- val.provisioningArtifactParameters
        
    --     |> Dict.insert
    --         "constraintSummaries" "" -- val.constraintSummaries
        
    --     |> Dict.insert
    --         "usageInstructions" "" -- val.usageInstructions
        
    --     |> Dict.insert
    --         "tagOptions" "" -- val.tagOptions
        
    --     |> Dict.insert
    --         "provisioningArtifactPreferences" "" -- val.provisioningArtifactPreferences
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeReco
-}
type alias DescribeRecordOutput =
    { recordDetail : Maybe RecordDetail
    , recordOutputs : Maybe (List RecordOutput)
    , nextPageToken : Maybe String
    }



describeRecordOutputDecoder : JD.Decoder DescribeRecordOutput
describeRecordOutputDecoder =
    JD.succeed DescribeRecordOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordDetail", "recordDetail"]
            recordDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordOutputs", "recordOutputs"]
            (JD.list recordOutputDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




describeRecordOutputToString : DescribeRecordOutput -> String -- List (String, String)
describeRecordOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordDetail" "" -- val.recordDetail
        
    --     |> Dict.insert
    --         "recordOutputs" "" -- val.recordOutputs
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeServiceActionExecutionParamete
-}
type alias DescribeServiceActionExecutionParametersOutput =
    { serviceActionParameters : Maybe (List ExecutionParameter)
    }



describeServiceActionExecutionParametersOutputDecoder : JD.Decoder DescribeServiceActionExecutionParametersOutput
describeServiceActionExecutionParametersOutputDecoder =
    JD.succeed DescribeServiceActionExecutionParametersOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceActionParameters", "serviceActionParameters"]
            (JD.list executionParameterDecoder)
        )
        




describeServiceActionExecutionParametersOutputToString : DescribeServiceActionExecutionParametersOutput -> String -- List (String, String)
describeServiceActionExecutionParametersOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceActionParameters" "" -- val.serviceActionParameters
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeServiceActi
-}
type alias DescribeServiceActionOutput =
    { serviceActionDetail : Maybe ServiceActionDetail
    }



describeServiceActionOutputDecoder : JD.Decoder DescribeServiceActionOutput
describeServiceActionOutputDecoder =
    JD.succeed DescribeServiceActionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceActionDetail", "serviceActionDetail"]
            serviceActionDetailDecoder
        )
        




describeServiceActionOutputToString : DescribeServiceActionOutput -> String -- List (String, String)
describeServiceActionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceActionDetail" "" -- val.serviceActionDetail
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from describeTagOpti
-}
type alias DescribeTagOptionOutput =
    { tagOptionDetail : Maybe TagOptionDetail
    }



describeTagOptionOutputDecoder : JD.Decoder DescribeTagOptionOutput
describeTagOptionOutputDecoder =
    JD.succeed DescribeTagOptionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagOptionDetail", "tagOptionDetail"]
            tagOptionDetailDecoder
        )
        




describeTagOptionOutputToString : DescribeTagOptionOutput -> String -- List (String, String)
describeTagOptionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tagOptionDetail" "" -- val.tagOptionDetail
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disableAWSOrganizationsAcce
-}
type alias DisableAWSOrganizationsAccessOutput =
    { 
    }



disableAWSOrganizationsAccessOutputDecoder : JD.Decoder DisableAWSOrganizationsAccessOutput
disableAWSOrganizationsAccessOutputDecoder =
    JD.succeed DisableAWSOrganizationsAccessOutput
        




disableAWSOrganizationsAccessOutputToString : DisableAWSOrganizationsAccessOutput -> String -- List (String, String)
disableAWSOrganizationsAccessOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disassociateBudgetFromResour
-}
type alias DisassociateBudgetFromResourceOutput =
    { 
    }



disassociateBudgetFromResourceOutputDecoder : JD.Decoder DisassociateBudgetFromResourceOutput
disassociateBudgetFromResourceOutputDecoder =
    JD.succeed DisassociateBudgetFromResourceOutput
        




disassociateBudgetFromResourceOutputToString : DisassociateBudgetFromResourceOutput -> String -- List (String, String)
disassociateBudgetFromResourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disassociatePrincipalFromPortfol
-}
type alias DisassociatePrincipalFromPortfolioOutput =
    { 
    }



disassociatePrincipalFromPortfolioOutputDecoder : JD.Decoder DisassociatePrincipalFromPortfolioOutput
disassociatePrincipalFromPortfolioOutputDecoder =
    JD.succeed DisassociatePrincipalFromPortfolioOutput
        




disassociatePrincipalFromPortfolioOutputToString : DisassociatePrincipalFromPortfolioOutput -> String -- List (String, String)
disassociatePrincipalFromPortfolioOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disassociateProductFromPortfol
-}
type alias DisassociateProductFromPortfolioOutput =
    { 
    }



disassociateProductFromPortfolioOutputDecoder : JD.Decoder DisassociateProductFromPortfolioOutput
disassociateProductFromPortfolioOutputDecoder =
    JD.succeed DisassociateProductFromPortfolioOutput
        




disassociateProductFromPortfolioOutputToString : DisassociateProductFromPortfolioOutput -> String -- List (String, String)
disassociateProductFromPortfolioOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disassociateServiceActionFromProvisioningArtifa
-}
type alias DisassociateServiceActionFromProvisioningArtifactOutput =
    { 
    }



disassociateServiceActionFromProvisioningArtifactOutputDecoder : JD.Decoder DisassociateServiceActionFromProvisioningArtifactOutput
disassociateServiceActionFromProvisioningArtifactOutputDecoder =
    JD.succeed DisassociateServiceActionFromProvisioningArtifactOutput
        




disassociateServiceActionFromProvisioningArtifactOutputToString : DisassociateServiceActionFromProvisioningArtifactOutput -> String -- List (String, String)
disassociateServiceActionFromProvisioningArtifactOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from disassociateTagOptionFromResour
-}
type alias DisassociateTagOptionFromResourceOutput =
    { 
    }



disassociateTagOptionFromResourceOutputDecoder : JD.Decoder DisassociateTagOptionFromResourceOutput
disassociateTagOptionFromResourceOutputDecoder =
    JD.succeed DisassociateTagOptionFromResourceOutput
        




disassociateTagOptionFromResourceOutputToString : DisassociateTagOptionFromResourceOutput -> String -- List (String, String)
disassociateTagOptionFromResourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from enableAWSOrganizationsAcce
-}
type alias EnableAWSOrganizationsAccessOutput =
    { 
    }



enableAWSOrganizationsAccessOutputDecoder : JD.Decoder EnableAWSOrganizationsAccessOutput
enableAWSOrganizationsAccessOutputDecoder =
    JD.succeed EnableAWSOrganizationsAccessOutput
        




enableAWSOrganizationsAccessOutputToString : EnableAWSOrganizationsAccessOutput -> String -- List (String, String)
enableAWSOrganizationsAccessOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `EvaluationType_STATIC`
* `EvaluationType_DYNAMIC`

-}
type EvaluationType
    = EvaluationType_STATIC
    | EvaluationType_DYNAMIC



evaluationTypeDecoder : JD.Decoder EvaluationType
evaluationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STATIC" ->
                        JD.succeed EvaluationType_STATIC

                    "DYNAMIC" ->
                        JD.succeed EvaluationType_DYNAMIC


                    _ ->
                        JD.fail "bad thing"
            )




evaluationTypeToString : EvaluationType -> String
evaluationTypeToString val =
    case val of
        EvaluationType_STATIC ->
            "STATIC"

        EvaluationType_DYNAMIC ->
            "DYNAMIC"




{-| Type of HTTP response from executeProvisionedProductPl
-}
type alias ExecuteProvisionedProductPlanOutput =
    { recordDetail : Maybe RecordDetail
    }



executeProvisionedProductPlanOutputDecoder : JD.Decoder ExecuteProvisionedProductPlanOutput
executeProvisionedProductPlanOutputDecoder =
    JD.succeed ExecuteProvisionedProductPlanOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordDetail", "recordDetail"]
            recordDetailDecoder
        )
        




executeProvisionedProductPlanOutputToString : ExecuteProvisionedProductPlanOutput -> String -- List (String, String)
executeProvisionedProductPlanOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordDetail" "" -- val.recordDetail
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from executeProvisionedProductServiceActi
-}
type alias ExecuteProvisionedProductServiceActionOutput =
    { recordDetail : Maybe RecordDetail
    }



executeProvisionedProductServiceActionOutputDecoder : JD.Decoder ExecuteProvisionedProductServiceActionOutput
executeProvisionedProductServiceActionOutputDecoder =
    JD.succeed ExecuteProvisionedProductServiceActionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordDetail", "recordDetail"]
            recordDetailDecoder
        )
        




executeProvisionedProductServiceActionOutputToString : ExecuteProvisionedProductServiceActionOutput -> String -- List (String, String)
executeProvisionedProductServiceActionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordDetail" "" -- val.recordDetail
        
    --     |> Dict.toList
    ""



{-| undefined
-}
type alias ExecutionParameter =
    { name : Maybe String
    , type_ : Maybe String
    , defaultValues : Maybe (List String)
    }



executionParameterDecoder : JD.Decoder ExecutionParameter
executionParameterDecoder =
    JD.succeed ExecutionParameter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValues", "defaultValues"]
            (JD.list JD.string)
        )
        




executionParameterToString : ExecutionParameter -> String -- List (String, String)
executionParameterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "defaultValues" "" -- val.defaultValues
        
    --     |> Dict.toList
    ""



{-| <p>An object containing information about the error, along with identifying information about the self-service action and its associations.</p>
-}
type alias FailedServiceActionAssociation =
    { serviceActionId : Maybe String
    , productId : Maybe String
    , provisioningArtifactId : Maybe String
    , errorCode : Maybe ServiceActionAssociationErrorCode
    , errorMessage : Maybe String
    }



failedServiceActionAssociationDecoder : JD.Decoder FailedServiceActionAssociation
failedServiceActionAssociationDecoder =
    JD.succeed FailedServiceActionAssociation
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceActionId", "serviceActionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductId", "productId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactId", "provisioningArtifactId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorCode", "errorCode"]
            serviceActionAssociationErrorCodeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ErrorMessage", "errorMessage"]
            JD.string
        )
        




failedServiceActionAssociationToString : FailedServiceActionAssociation -> String -- List (String, String)
failedServiceActionAssociationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceActionId" "" -- val.serviceActionId
        
    --     |> Dict.insert
    --         "productId" "" -- val.productId
        
    --     |> Dict.insert
    --         "provisioningArtifactId" "" -- val.provisioningArtifactId
        
    --     |> Dict.insert
    --         "errorCode" "" -- val.errorCode
        
    --     |> Dict.insert
    --         "errorMessage" "" -- val.errorMessage
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getAWSOrganizationsAccessStat
-}
type alias GetAWSOrganizationsAccessStatusOutput =
    { accessStatus : Maybe AccessStatus
    }



getAWSOrganizationsAccessStatusOutputDecoder : JD.Decoder GetAWSOrganizationsAccessStatusOutput
getAWSOrganizationsAccessStatusOutputDecoder =
    JD.succeed GetAWSOrganizationsAccessStatusOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AccessStatus", "accessStatus"]
            accessStatusDecoder
        )
        




getAWSOrganizationsAccessStatusOutputToString : GetAWSOrganizationsAccessStatusOutput -> String -- List (String, String)
getAWSOrganizationsAccessStatusOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accessStatus" "" -- val.accessStatus
        
    --     |> Dict.toList
    ""



{-| <p>Summary information about a product path for a user.</p>
-}
type alias LaunchPathSummary =
    { id : Maybe String
    , constraintSummaries : Maybe (List ConstraintSummary)
    , tags : Maybe (List Tag)
    , name : Maybe String
    }



launchPathSummaryDecoder : JD.Decoder LaunchPathSummary
launchPathSummaryDecoder =
    JD.succeed LaunchPathSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConstraintSummaries", "constraintSummaries"]
            (JD.list constraintSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        




launchPathSummaryToString : LaunchPathSummary -> String -- List (String, String)
launchPathSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "constraintSummaries" "" -- val.constraintSummaries
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listAcceptedPortfolioShar
-}
type alias ListAcceptedPortfolioSharesOutput =
    { portfolioDetails : Maybe (List PortfolioDetail)
    , nextPageToken : Maybe String
    }



listAcceptedPortfolioSharesOutputDecoder : JD.Decoder ListAcceptedPortfolioSharesOutput
listAcceptedPortfolioSharesOutputDecoder =
    JD.succeed ListAcceptedPortfolioSharesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PortfolioDetails", "portfolioDetails"]
            (JD.list portfolioDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listAcceptedPortfolioSharesOutputToString : ListAcceptedPortfolioSharesOutput -> String -- List (String, String)
listAcceptedPortfolioSharesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "portfolioDetails" "" -- val.portfolioDetails
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listBudgetsForResour
-}
type alias ListBudgetsForResourceOutput =
    { budgets : Maybe (List BudgetDetail)
    , nextPageToken : Maybe String
    }



listBudgetsForResourceOutputDecoder : JD.Decoder ListBudgetsForResourceOutput
listBudgetsForResourceOutputDecoder =
    JD.succeed ListBudgetsForResourceOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Budgets", "budgets"]
            (JD.list budgetDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listBudgetsForResourceOutputToString : ListBudgetsForResourceOutput -> String -- List (String, String)
listBudgetsForResourceOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "budgets" "" -- val.budgets
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listConstraintsForPortfol
-}
type alias ListConstraintsForPortfolioOutput =
    { constraintDetails : Maybe (List ConstraintDetail)
    , nextPageToken : Maybe String
    }



listConstraintsForPortfolioOutputDecoder : JD.Decoder ListConstraintsForPortfolioOutput
listConstraintsForPortfolioOutputDecoder =
    JD.succeed ListConstraintsForPortfolioOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConstraintDetails", "constraintDetails"]
            (JD.list constraintDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listConstraintsForPortfolioOutputToString : ListConstraintsForPortfolioOutput -> String -- List (String, String)
listConstraintsForPortfolioOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "constraintDetails" "" -- val.constraintDetails
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listLaunchPat
-}
type alias ListLaunchPathsOutput =
    { launchPathSummaries : Maybe (List LaunchPathSummary)
    , nextPageToken : Maybe String
    }



listLaunchPathsOutputDecoder : JD.Decoder ListLaunchPathsOutput
listLaunchPathsOutputDecoder =
    JD.succeed ListLaunchPathsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LaunchPathSummaries", "launchPathSummaries"]
            (JD.list launchPathSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listLaunchPathsOutputToString : ListLaunchPathsOutput -> String -- List (String, String)
listLaunchPathsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "launchPathSummaries" "" -- val.launchPathSummaries
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listOrganizationPortfolioAcce
-}
type alias ListOrganizationPortfolioAccessOutput =
    { organizationNodes : Maybe (List OrganizationNode)
    , nextPageToken : Maybe String
    }



listOrganizationPortfolioAccessOutputDecoder : JD.Decoder ListOrganizationPortfolioAccessOutput
listOrganizationPortfolioAccessOutputDecoder =
    JD.succeed ListOrganizationPortfolioAccessOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OrganizationNodes", "organizationNodes"]
            (JD.list organizationNodeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listOrganizationPortfolioAccessOutputToString : ListOrganizationPortfolioAccessOutput -> String -- List (String, String)
listOrganizationPortfolioAccessOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "organizationNodes" "" -- val.organizationNodes
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPortfolioAcce
-}
type alias ListPortfolioAccessOutput =
    { accountIds : Maybe (List String)
    , nextPageToken : Maybe String
    }



listPortfolioAccessOutputDecoder : JD.Decoder ListPortfolioAccessOutput
listPortfolioAccessOutputDecoder =
    JD.succeed ListPortfolioAccessOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AccountIds", "accountIds"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listPortfolioAccessOutputToString : ListPortfolioAccessOutput -> String -- List (String, String)
listPortfolioAccessOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accountIds" "" -- val.accountIds
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPortfoliosForProdu
-}
type alias ListPortfoliosForProductOutput =
    { portfolioDetails : Maybe (List PortfolioDetail)
    , nextPageToken : Maybe String
    }



listPortfoliosForProductOutputDecoder : JD.Decoder ListPortfoliosForProductOutput
listPortfoliosForProductOutputDecoder =
    JD.succeed ListPortfoliosForProductOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PortfolioDetails", "portfolioDetails"]
            (JD.list portfolioDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listPortfoliosForProductOutputToString : ListPortfoliosForProductOutput -> String -- List (String, String)
listPortfoliosForProductOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "portfolioDetails" "" -- val.portfolioDetails
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPortfoli
-}
type alias ListPortfoliosOutput =
    { portfolioDetails : Maybe (List PortfolioDetail)
    , nextPageToken : Maybe String
    }



listPortfoliosOutputDecoder : JD.Decoder ListPortfoliosOutput
listPortfoliosOutputDecoder =
    JD.succeed ListPortfoliosOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PortfolioDetails", "portfolioDetails"]
            (JD.list portfolioDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listPortfoliosOutputToString : ListPortfoliosOutput -> String -- List (String, String)
listPortfoliosOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "portfolioDetails" "" -- val.portfolioDetails
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listPrincipalsForPortfol
-}
type alias ListPrincipalsForPortfolioOutput =
    { principals : Maybe (List Principal)
    , nextPageToken : Maybe String
    }



listPrincipalsForPortfolioOutputDecoder : JD.Decoder ListPrincipalsForPortfolioOutput
listPrincipalsForPortfolioOutputDecoder =
    JD.succeed ListPrincipalsForPortfolioOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Principals", "principals"]
            (JD.list principalDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listPrincipalsForPortfolioOutputToString : ListPrincipalsForPortfolioOutput -> String -- List (String, String)
listPrincipalsForPortfolioOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "principals" "" -- val.principals
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listProvisionedProductPla
-}
type alias ListProvisionedProductPlansOutput =
    { provisionedProductPlans : Maybe (List ProvisionedProductPlanSummary)
    , nextPageToken : Maybe String
    }



listProvisionedProductPlansOutputDecoder : JD.Decoder ListProvisionedProductPlansOutput
listProvisionedProductPlansOutputDecoder =
    JD.succeed ListProvisionedProductPlansOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionedProductPlans", "provisionedProductPlans"]
            (JD.list provisionedProductPlanSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listProvisionedProductPlansOutputToString : ListProvisionedProductPlansOutput -> String -- List (String, String)
listProvisionedProductPlansOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "provisionedProductPlans" "" -- val.provisionedProductPlans
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listProvisioningArtifactsForServiceActi
-}
type alias ListProvisioningArtifactsForServiceActionOutput =
    { provisioningArtifactViews : Maybe (List ProvisioningArtifactView)
    , nextPageToken : Maybe String
    }



listProvisioningArtifactsForServiceActionOutputDecoder : JD.Decoder ListProvisioningArtifactsForServiceActionOutput
listProvisioningArtifactsForServiceActionOutputDecoder =
    JD.succeed ListProvisioningArtifactsForServiceActionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactViews", "provisioningArtifactViews"]
            (JD.list provisioningArtifactViewDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listProvisioningArtifactsForServiceActionOutputToString : ListProvisioningArtifactsForServiceActionOutput -> String -- List (String, String)
listProvisioningArtifactsForServiceActionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "provisioningArtifactViews" "" -- val.provisioningArtifactViews
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listProvisioningArtifac
-}
type alias ListProvisioningArtifactsOutput =
    { provisioningArtifactDetails : Maybe (List ProvisioningArtifactDetail)
    , nextPageToken : Maybe String
    }



listProvisioningArtifactsOutputDecoder : JD.Decoder ListProvisioningArtifactsOutput
listProvisioningArtifactsOutputDecoder =
    JD.succeed ListProvisioningArtifactsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactDetails", "provisioningArtifactDetails"]
            (JD.list provisioningArtifactDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listProvisioningArtifactsOutputToString : ListProvisioningArtifactsOutput -> String -- List (String, String)
listProvisioningArtifactsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "provisioningArtifactDetails" "" -- val.provisioningArtifactDetails
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listRecordHisto
-}
type alias ListRecordHistoryOutput =
    { recordDetails : Maybe (List RecordDetail)
    , nextPageToken : Maybe String
    }



listRecordHistoryOutputDecoder : JD.Decoder ListRecordHistoryOutput
listRecordHistoryOutputDecoder =
    JD.succeed ListRecordHistoryOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordDetails", "recordDetails"]
            (JD.list recordDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listRecordHistoryOutputToString : ListRecordHistoryOutput -> String -- List (String, String)
listRecordHistoryOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordDetails" "" -- val.recordDetails
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| <p>The search filter to use when listing history records.</p>
-}
type alias ListRecordHistorySearchFilter =
    { key : Maybe String
    , value : Maybe String
    }



listRecordHistorySearchFilterDecoder : JD.Decoder ListRecordHistorySearchFilter
listRecordHistorySearchFilterDecoder =
    JD.succeed ListRecordHistorySearchFilter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




listRecordHistorySearchFilterToString : ListRecordHistorySearchFilter -> String -- List (String, String)
listRecordHistorySearchFilterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listResourcesForTagOpti
-}
type alias ListResourcesForTagOptionOutput =
    { resourceDetails : Maybe (List ResourceDetail)
    , pageToken : Maybe String
    }



listResourcesForTagOptionOutputDecoder : JD.Decoder ListResourcesForTagOptionOutput
listResourcesForTagOptionOutputDecoder =
    JD.succeed ListResourcesForTagOptionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceDetails", "resourceDetails"]
            (JD.list resourceDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PageToken", "pageToken"]
            JD.string
        )
        




listResourcesForTagOptionOutputToString : ListResourcesForTagOptionOutput -> String -- List (String, String)
listResourcesForTagOptionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "resourceDetails" "" -- val.resourceDetails
        
    --     |> Dict.insert
    --         "pageToken" "" -- val.pageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listServiceActionsForProvisioningArtifa
-}
type alias ListServiceActionsForProvisioningArtifactOutput =
    { serviceActionSummaries : Maybe (List ServiceActionSummary)
    , nextPageToken : Maybe String
    }



listServiceActionsForProvisioningArtifactOutputDecoder : JD.Decoder ListServiceActionsForProvisioningArtifactOutput
listServiceActionsForProvisioningArtifactOutputDecoder =
    JD.succeed ListServiceActionsForProvisioningArtifactOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceActionSummaries", "serviceActionSummaries"]
            (JD.list serviceActionSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listServiceActionsForProvisioningArtifactOutputToString : ListServiceActionsForProvisioningArtifactOutput -> String -- List (String, String)
listServiceActionsForProvisioningArtifactOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceActionSummaries" "" -- val.serviceActionSummaries
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listServiceActio
-}
type alias ListServiceActionsOutput =
    { serviceActionSummaries : Maybe (List ServiceActionSummary)
    , nextPageToken : Maybe String
    }



listServiceActionsOutputDecoder : JD.Decoder ListServiceActionsOutput
listServiceActionsOutputDecoder =
    JD.succeed ListServiceActionsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceActionSummaries", "serviceActionSummaries"]
            (JD.list serviceActionSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listServiceActionsOutputToString : ListServiceActionsOutput -> String -- List (String, String)
listServiceActionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceActionSummaries" "" -- val.serviceActionSummaries
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listStackInstancesForProvisionedProdu
-}
type alias ListStackInstancesForProvisionedProductOutput =
    { stackInstances : Maybe (List StackInstance)
    , nextPageToken : Maybe String
    }



listStackInstancesForProvisionedProductOutputDecoder : JD.Decoder ListStackInstancesForProvisionedProductOutput
listStackInstancesForProvisionedProductOutputDecoder =
    JD.succeed ListStackInstancesForProvisionedProductOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackInstances", "stackInstances"]
            (JD.list stackInstanceDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




listStackInstancesForProvisionedProductOutputToString : ListStackInstancesForProvisionedProductOutput -> String -- List (String, String)
listStackInstancesForProvisionedProductOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackInstances" "" -- val.stackInstances
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| <p>Filters to use when listing TagOptions.</p>
-}
type alias ListTagOptionsFilters =
    { key : Maybe String
    , value : Maybe String
    , active : Maybe Bool
    }



listTagOptionsFiltersDecoder : JD.Decoder ListTagOptionsFilters
listTagOptionsFiltersDecoder =
    JD.succeed ListTagOptionsFilters
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Active", "active"]
            JD.bool
        )
        




listTagOptionsFiltersToString : ListTagOptionsFilters -> String -- List (String, String)
listTagOptionsFiltersToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "active" "" -- val.active
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listTagOptio
-}
type alias ListTagOptionsOutput =
    { tagOptionDetails : Maybe (List TagOptionDetail)
    , pageToken : Maybe String
    }



listTagOptionsOutputDecoder : JD.Decoder ListTagOptionsOutput
listTagOptionsOutputDecoder =
    JD.succeed ListTagOptionsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagOptionDetails", "tagOptionDetails"]
            (JD.list tagOptionDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PageToken", "pageToken"]
            JD.string
        )
        




listTagOptionsOutputToString : ListTagOptionsOutput -> String -- List (String, String)
listTagOptionsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tagOptionDetails" "" -- val.tagOptionDetails
        
    --     |> Dict.insert
    --         "pageToken" "" -- val.pageToken
        
    --     |> Dict.toList
    ""



{-| <p>Information about the organization node.</p>
-}
type alias OrganizationNode =
    { type_ : Maybe OrganizationNodeType
    , value : Maybe String
    }



organizationNodeDecoder : JD.Decoder OrganizationNode
organizationNodeDecoder =
    JD.succeed OrganizationNode
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            organizationNodeTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




organizationNodeToString : OrganizationNode -> String -- List (String, String)
organizationNodeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| One of

* `OrganizationNodeType_ORGANIZATION`
* `OrganizationNodeType_ORGANIZATIONAL_UNIT`
* `OrganizationNodeType_ACCOUNT`

-}
type OrganizationNodeType
    = OrganizationNodeType_ORGANIZATION
    | OrganizationNodeType_ORGANIZATIONAL_UNIT
    | OrganizationNodeType_ACCOUNT



organizationNodeTypeDecoder : JD.Decoder OrganizationNodeType
organizationNodeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ORGANIZATION" ->
                        JD.succeed OrganizationNodeType_ORGANIZATION

                    "ORGANIZATIONAL_UNIT" ->
                        JD.succeed OrganizationNodeType_ORGANIZATIONAL_UNIT

                    "ACCOUNT" ->
                        JD.succeed OrganizationNodeType_ACCOUNT


                    _ ->
                        JD.fail "bad thing"
            )




organizationNodeTypeToString : OrganizationNodeType -> String
organizationNodeTypeToString val =
    case val of
        OrganizationNodeType_ORGANIZATION ->
            "ORGANIZATION"

        OrganizationNodeType_ORGANIZATIONAL_UNIT ->
            "ORGANIZATIONAL_UNIT"

        OrganizationNodeType_ACCOUNT ->
            "ACCOUNT"




{-| <p>The constraints that the administrator has put on the parameter.</p>
-}
type alias ParameterConstraints =
    { allowedValues : Maybe (List String)
    }



parameterConstraintsDecoder : JD.Decoder ParameterConstraints
parameterConstraintsDecoder =
    JD.succeed ParameterConstraints
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["AllowedValues", "allowedValues"]
            (JD.list JD.string)
        )
        




parameterConstraintsToString : ParameterConstraints -> String -- List (String, String)
parameterConstraintsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "allowedValues" "" -- val.allowedValues
        
    --     |> Dict.toList
    ""



{-| <p>Information about a portfolio.</p>
-}
type alias PortfolioDetail =
    { id : Maybe String
    , aRN : Maybe String
    , displayName : Maybe String
    , description : Maybe String
    , createdTime : Maybe Posix
    , providerName : Maybe String
    }



portfolioDetailDecoder : JD.Decoder PortfolioDetail
portfolioDetailDecoder =
    JD.succeed PortfolioDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ARN", "aRN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisplayName", "displayName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProviderName", "providerName"]
            JD.string
        )
        




portfolioDetailToString : PortfolioDetail -> String -- List (String, String)
portfolioDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "aRN" "" -- val.aRN
        
    --     |> Dict.insert
    --         "displayName" "" -- val.displayName
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "providerName" "" -- val.providerName
        
    --     |> Dict.toList
    ""



{-| One of

* `PortfolioShareType_IMPORTED`
* `PortfolioShareType_AWS_SERVICECATALOG`
* `PortfolioShareType_AWS_ORGANIZATIONS`

-}
type PortfolioShareType
    = PortfolioShareType_IMPORTED
    | PortfolioShareType_AWS_SERVICECATALOG
    | PortfolioShareType_AWS_ORGANIZATIONS



portfolioShareTypeDecoder : JD.Decoder PortfolioShareType
portfolioShareTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IMPORTED" ->
                        JD.succeed PortfolioShareType_IMPORTED

                    "AWS_SERVICECATALOG" ->
                        JD.succeed PortfolioShareType_AWS_SERVICECATALOG

                    "AWS_ORGANIZATIONS" ->
                        JD.succeed PortfolioShareType_AWS_ORGANIZATIONS


                    _ ->
                        JD.fail "bad thing"
            )




portfolioShareTypeToString : PortfolioShareType -> String
portfolioShareTypeToString val =
    case val of
        PortfolioShareType_IMPORTED ->
            "IMPORTED"

        PortfolioShareType_AWS_SERVICECATALOG ->
            "AWS_SERVICECATALOG"

        PortfolioShareType_AWS_ORGANIZATIONS ->
            "AWS_ORGANIZATIONS"




{-| <p>Information about a principal.</p>
-}
type alias Principal =
    { principalARN : Maybe String
    , principalType : Maybe PrincipalType
    }



principalDecoder : JD.Decoder Principal
principalDecoder =
    JD.succeed Principal
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PrincipalARN", "principalARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PrincipalType", "principalType"]
            principalTypeDecoder
        )
        




principalToString : Principal -> String -- List (String, String)
principalToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "principalARN" "" -- val.principalARN
        
    --     |> Dict.insert
    --         "principalType" "" -- val.principalType
        
    --     |> Dict.toList
    ""



{-| One of

* `PrincipalType_IAM`

-}
type PrincipalType
    = PrincipalType_IAM



principalTypeDecoder : JD.Decoder PrincipalType
principalTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IAM" ->
                        JD.succeed PrincipalType_IAM


                    _ ->
                        JD.fail "bad thing"
            )




principalTypeToString : PrincipalType -> String
principalTypeToString val =
    case val of
        PrincipalType_IAM ->
            "IAM"




{-| One of

* `ProductSource_ACCOUNT`

-}
type ProductSource
    = ProductSource_ACCOUNT



productSourceDecoder : JD.Decoder ProductSource
productSourceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACCOUNT" ->
                        JD.succeed ProductSource_ACCOUNT


                    _ ->
                        JD.fail "bad thing"
            )




productSourceToString : ProductSource -> String
productSourceToString val =
    case val of
        ProductSource_ACCOUNT ->
            "ACCOUNT"




{-| One of

* `ProductType_CLOUD_FORMATION_TEMPLATE`
* `ProductType_MARKETPLACE`

-}
type ProductType
    = ProductType_CLOUD_FORMATION_TEMPLATE
    | ProductType_MARKETPLACE



productTypeDecoder : JD.Decoder ProductType
productTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CLOUD_FORMATION_TEMPLATE" ->
                        JD.succeed ProductType_CLOUD_FORMATION_TEMPLATE

                    "MARKETPLACE" ->
                        JD.succeed ProductType_MARKETPLACE


                    _ ->
                        JD.fail "bad thing"
            )




productTypeToString : ProductType -> String
productTypeToString val =
    case val of
        ProductType_CLOUD_FORMATION_TEMPLATE ->
            "CLOUD_FORMATION_TEMPLATE"

        ProductType_MARKETPLACE ->
            "MARKETPLACE"




{-| <p>A single product view aggregation value/count pair, containing metadata about each product to which the calling user has access.</p>
-}
type alias ProductViewAggregationValue =
    { value : Maybe String
    , approximateCount : Maybe Int
    }



productViewAggregationValueDecoder : JD.Decoder ProductViewAggregationValue
productViewAggregationValueDecoder =
    JD.succeed ProductViewAggregationValue
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ApproximateCount", "approximateCount"]
            JD.int
        )
        




productViewAggregationValueToString : ProductViewAggregationValue -> String -- List (String, String)
productViewAggregationValueToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "approximateCount" "" -- val.approximateCount
        
    --     |> Dict.toList
    ""



{-| <p>Information about a product view.</p>
-}
type alias ProductViewDetail =
    { productViewSummary : Maybe ProductViewSummary
    , status : Maybe Status
    , productARN : Maybe String
    , createdTime : Maybe Posix
    }



productViewDetailDecoder : JD.Decoder ProductViewDetail
productViewDetailDecoder =
    JD.succeed ProductViewDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductViewSummary", "productViewSummary"]
            productViewSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            statusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductARN", "productARN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        




productViewDetailToString : ProductViewDetail -> String -- List (String, String)
productViewDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "productViewSummary" "" -- val.productViewSummary
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "productARN" "" -- val.productARN
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.toList
    ""



{-| One of

* `ProductViewFilterBy_FullTextSearch`
* `ProductViewFilterBy_Owner`
* `ProductViewFilterBy_ProductType`
* `ProductViewFilterBy_SourceProductId`

-}
type ProductViewFilterBy
    = ProductViewFilterBy_FullTextSearch
    | ProductViewFilterBy_Owner
    | ProductViewFilterBy_ProductType
    | ProductViewFilterBy_SourceProductId



productViewFilterByDecoder : JD.Decoder ProductViewFilterBy
productViewFilterByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FullTextSearch" ->
                        JD.succeed ProductViewFilterBy_FullTextSearch

                    "Owner" ->
                        JD.succeed ProductViewFilterBy_Owner

                    "ProductType" ->
                        JD.succeed ProductViewFilterBy_ProductType

                    "SourceProductId" ->
                        JD.succeed ProductViewFilterBy_SourceProductId


                    _ ->
                        JD.fail "bad thing"
            )




productViewFilterByToString : ProductViewFilterBy -> String
productViewFilterByToString val =
    case val of
        ProductViewFilterBy_FullTextSearch ->
            "FullTextSearch"

        ProductViewFilterBy_Owner ->
            "Owner"

        ProductViewFilterBy_ProductType ->
            "ProductType"

        ProductViewFilterBy_SourceProductId ->
            "SourceProductId"




{-| One of

* `ProductViewSortBy_Title`
* `ProductViewSortBy_VersionCount`
* `ProductViewSortBy_CreationDate`

-}
type ProductViewSortBy
    = ProductViewSortBy_Title
    | ProductViewSortBy_VersionCount
    | ProductViewSortBy_CreationDate



productViewSortByDecoder : JD.Decoder ProductViewSortBy
productViewSortByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Title" ->
                        JD.succeed ProductViewSortBy_Title

                    "VersionCount" ->
                        JD.succeed ProductViewSortBy_VersionCount

                    "CreationDate" ->
                        JD.succeed ProductViewSortBy_CreationDate


                    _ ->
                        JD.fail "bad thing"
            )




productViewSortByToString : ProductViewSortBy -> String
productViewSortByToString val =
    case val of
        ProductViewSortBy_Title ->
            "Title"

        ProductViewSortBy_VersionCount ->
            "VersionCount"

        ProductViewSortBy_CreationDate ->
            "CreationDate"




{-| <p>Summary information about a product view.</p>
-}
type alias ProductViewSummary =
    { id : Maybe String
    , productId : Maybe String
    , name : Maybe String
    , owner : Maybe String
    , shortDescription : Maybe String
    , type_ : Maybe ProductType
    , distributor : Maybe String
    , hasDefaultPath : Maybe Bool
    , supportEmail : Maybe String
    , supportDescription : Maybe String
    , supportUrl : Maybe String
    }



productViewSummaryDecoder : JD.Decoder ProductViewSummary
productViewSummaryDecoder =
    JD.succeed ProductViewSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductId", "productId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Owner", "owner"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ShortDescription", "shortDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            productTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Distributor", "distributor"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["HasDefaultPath", "hasDefaultPath"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportEmail", "supportEmail"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportDescription", "supportDescription"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SupportUrl", "supportUrl"]
            JD.string
        )
        




productViewSummaryToString : ProductViewSummary -> String -- List (String, String)
productViewSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "productId" "" -- val.productId
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "owner" "" -- val.owner
        
    --     |> Dict.insert
    --         "shortDescription" "" -- val.shortDescription
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "distributor" "" -- val.distributor
        
    --     |> Dict.insert
    --         "hasDefaultPath" "" -- val.hasDefaultPath
        
    --     |> Dict.insert
    --         "supportEmail" "" -- val.supportEmail
        
    --     |> Dict.insert
    --         "supportDescription" "" -- val.supportDescription
        
    --     |> Dict.insert
    --         "supportUrl" "" -- val.supportUrl
        
    --     |> Dict.toList
    ""



{-| One of

* `PropertyKey_OWNER`

-}
type PropertyKey
    = PropertyKey_OWNER



propertyKeyDecoder : JD.Decoder PropertyKey
propertyKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OWNER" ->
                        JD.succeed PropertyKey_OWNER


                    _ ->
                        JD.fail "bad thing"
            )




propertyKeyToString : PropertyKey -> String
propertyKeyToString val =
    case val of
        PropertyKey_OWNER ->
            "OWNER"




{-| Type of HTTP response from provisionProdu
-}
type alias ProvisionProductOutput =
    { recordDetail : Maybe RecordDetail
    }



provisionProductOutputDecoder : JD.Decoder ProvisionProductOutput
provisionProductOutputDecoder =
    JD.succeed ProvisionProductOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordDetail", "recordDetail"]
            recordDetailDecoder
        )
        




provisionProductOutputToString : ProvisionProductOutput -> String -- List (String, String)
provisionProductOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordDetail" "" -- val.recordDetail
        
    --     |> Dict.toList
    ""



{-| <p>Information about a provisioned product.</p>
-}
type alias ProvisionedProductAttribute =
    { name : Maybe String
    , arn : Maybe String
    , type_ : Maybe String
    , id : Maybe String
    , status : Maybe ProvisionedProductStatus
    , statusMessage : Maybe String
    , createdTime : Maybe Posix
    , idempotencyToken : Maybe String
    , lastRecordId : Maybe String
    , tags : Maybe (List Tag)
    , physicalId : Maybe String
    , productId : Maybe String
    , provisioningArtifactId : Maybe String
    , userArn : Maybe String
    , userArnSession : Maybe String
    }



provisionedProductAttributeDecoder : JD.Decoder ProvisionedProductAttribute
provisionedProductAttributeDecoder =
    JD.succeed ProvisionedProductAttribute
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            provisionedProductStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusMessage", "statusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IdempotencyToken", "idempotencyToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastRecordId", "lastRecordId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PhysicalId", "physicalId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductId", "productId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactId", "provisioningArtifactId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserArn", "userArn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UserArnSession", "userArnSession"]
            JD.string
        )
        




provisionedProductAttributeToString : ProvisionedProductAttribute -> String -- List (String, String)
provisionedProductAttributeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "idempotencyToken" "" -- val.idempotencyToken
        
    --     |> Dict.insert
    --         "lastRecordId" "" -- val.lastRecordId
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "physicalId" "" -- val.physicalId
        
    --     |> Dict.insert
    --         "productId" "" -- val.productId
        
    --     |> Dict.insert
    --         "provisioningArtifactId" "" -- val.provisioningArtifactId
        
    --     |> Dict.insert
    --         "userArn" "" -- val.userArn
        
    --     |> Dict.insert
    --         "userArnSession" "" -- val.userArnSession
        
    --     |> Dict.toList
    ""



{-| <p>Information about a provisioned product.</p>
-}
type alias ProvisionedProductDetail =
    { name : Maybe String
    , arn : Maybe String
    , type_ : Maybe String
    , id : Maybe String
    , status : Maybe ProvisionedProductStatus
    , statusMessage : Maybe String
    , createdTime : Maybe Posix
    , idempotencyToken : Maybe String
    , lastRecordId : Maybe String
    , productId : Maybe String
    , provisioningArtifactId : Maybe String
    }



provisionedProductDetailDecoder : JD.Decoder ProvisionedProductDetail
provisionedProductDetailDecoder =
    JD.succeed ProvisionedProductDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Arn", "arn"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            provisionedProductStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusMessage", "statusMessage"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IdempotencyToken", "idempotencyToken"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LastRecordId", "lastRecordId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductId", "productId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactId", "provisioningArtifactId"]
            JD.string
        )
        




provisionedProductDetailToString : ProvisionedProductDetail -> String -- List (String, String)
provisionedProductDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "arn" "" -- val.arn
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "idempotencyToken" "" -- val.idempotencyToken
        
    --     |> Dict.insert
    --         "lastRecordId" "" -- val.lastRecordId
        
    --     |> Dict.insert
    --         "productId" "" -- val.productId
        
    --     |> Dict.insert
    --         "provisioningArtifactId" "" -- val.provisioningArtifactId
        
    --     |> Dict.toList
    ""



{-| <p>Information about a plan.</p>
-}
type alias ProvisionedProductPlanDetails =
    { createdTime : Maybe Posix
    , pathId : Maybe String
    , productId : Maybe String
    , planName : Maybe String
    , planId : Maybe String
    , provisionProductId : Maybe String
    , provisionProductName : Maybe String
    , planType : Maybe ProvisionedProductPlanType
    , provisioningArtifactId : Maybe String
    , status : Maybe ProvisionedProductPlanStatus
    , updatedTime : Maybe Posix
    , notificationArns : Maybe (List String)
    , provisioningParameters : Maybe (List UpdateProvisioningParameter)
    , tags : Maybe (List Tag)
    , statusMessage : Maybe String
    }



provisionedProductPlanDetailsDecoder : JD.Decoder ProvisionedProductPlanDetails
provisionedProductPlanDetailsDecoder =
    JD.succeed ProvisionedProductPlanDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PathId", "pathId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductId", "productId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlanName", "planName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlanId", "planId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionProductId", "provisionProductId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionProductName", "provisionProductName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlanType", "planType"]
            provisionedProductPlanTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactId", "provisioningArtifactId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            provisionedProductPlanStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UpdatedTime", "updatedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NotificationArns", "notificationArns"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningParameters", "provisioningParameters"]
            (JD.list updateProvisioningParameterDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StatusMessage", "statusMessage"]
            JD.string
        )
        




provisionedProductPlanDetailsToString : ProvisionedProductPlanDetails -> String -- List (String, String)
provisionedProductPlanDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "pathId" "" -- val.pathId
        
    --     |> Dict.insert
    --         "productId" "" -- val.productId
        
    --     |> Dict.insert
    --         "planName" "" -- val.planName
        
    --     |> Dict.insert
    --         "planId" "" -- val.planId
        
    --     |> Dict.insert
    --         "provisionProductId" "" -- val.provisionProductId
        
    --     |> Dict.insert
    --         "provisionProductName" "" -- val.provisionProductName
        
    --     |> Dict.insert
    --         "planType" "" -- val.planType
        
    --     |> Dict.insert
    --         "provisioningArtifactId" "" -- val.provisioningArtifactId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "updatedTime" "" -- val.updatedTime
        
    --     |> Dict.insert
    --         "notificationArns" "" -- val.notificationArns
        
    --     |> Dict.insert
    --         "provisioningParameters" "" -- val.provisioningParameters
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.insert
    --         "statusMessage" "" -- val.statusMessage
        
    --     |> Dict.toList
    ""



{-| One of

* `ProvisionedProductPlanStatus_CREATE_IN_PROGRESS`
* `ProvisionedProductPlanStatus_CREATE_SUCCESS`
* `ProvisionedProductPlanStatus_CREATE_FAILED`
* `ProvisionedProductPlanStatus_EXECUTE_IN_PROGRESS`
* `ProvisionedProductPlanStatus_EXECUTE_SUCCESS`
* `ProvisionedProductPlanStatus_EXECUTE_FAILED`

-}
type ProvisionedProductPlanStatus
    = ProvisionedProductPlanStatus_CREATE_IN_PROGRESS
    | ProvisionedProductPlanStatus_CREATE_SUCCESS
    | ProvisionedProductPlanStatus_CREATE_FAILED
    | ProvisionedProductPlanStatus_EXECUTE_IN_PROGRESS
    | ProvisionedProductPlanStatus_EXECUTE_SUCCESS
    | ProvisionedProductPlanStatus_EXECUTE_FAILED



provisionedProductPlanStatusDecoder : JD.Decoder ProvisionedProductPlanStatus
provisionedProductPlanStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_IN_PROGRESS" ->
                        JD.succeed ProvisionedProductPlanStatus_CREATE_IN_PROGRESS

                    "CREATE_SUCCESS" ->
                        JD.succeed ProvisionedProductPlanStatus_CREATE_SUCCESS

                    "CREATE_FAILED" ->
                        JD.succeed ProvisionedProductPlanStatus_CREATE_FAILED

                    "EXECUTE_IN_PROGRESS" ->
                        JD.succeed ProvisionedProductPlanStatus_EXECUTE_IN_PROGRESS

                    "EXECUTE_SUCCESS" ->
                        JD.succeed ProvisionedProductPlanStatus_EXECUTE_SUCCESS

                    "EXECUTE_FAILED" ->
                        JD.succeed ProvisionedProductPlanStatus_EXECUTE_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




provisionedProductPlanStatusToString : ProvisionedProductPlanStatus -> String
provisionedProductPlanStatusToString val =
    case val of
        ProvisionedProductPlanStatus_CREATE_IN_PROGRESS ->
            "CREATE_IN_PROGRESS"

        ProvisionedProductPlanStatus_CREATE_SUCCESS ->
            "CREATE_SUCCESS"

        ProvisionedProductPlanStatus_CREATE_FAILED ->
            "CREATE_FAILED"

        ProvisionedProductPlanStatus_EXECUTE_IN_PROGRESS ->
            "EXECUTE_IN_PROGRESS"

        ProvisionedProductPlanStatus_EXECUTE_SUCCESS ->
            "EXECUTE_SUCCESS"

        ProvisionedProductPlanStatus_EXECUTE_FAILED ->
            "EXECUTE_FAILED"




{-| <p>Summary information about a plan.</p>
-}
type alias ProvisionedProductPlanSummary =
    { planName : Maybe String
    , planId : Maybe String
    , provisionProductId : Maybe String
    , provisionProductName : Maybe String
    , planType : Maybe ProvisionedProductPlanType
    , provisioningArtifactId : Maybe String
    }



provisionedProductPlanSummaryDecoder : JD.Decoder ProvisionedProductPlanSummary
provisionedProductPlanSummaryDecoder =
    JD.succeed ProvisionedProductPlanSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlanName", "planName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlanId", "planId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionProductId", "provisionProductId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionProductName", "provisionProductName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PlanType", "planType"]
            provisionedProductPlanTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactId", "provisioningArtifactId"]
            JD.string
        )
        




provisionedProductPlanSummaryToString : ProvisionedProductPlanSummary -> String -- List (String, String)
provisionedProductPlanSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "planName" "" -- val.planName
        
    --     |> Dict.insert
    --         "planId" "" -- val.planId
        
    --     |> Dict.insert
    --         "provisionProductId" "" -- val.provisionProductId
        
    --     |> Dict.insert
    --         "provisionProductName" "" -- val.provisionProductName
        
    --     |> Dict.insert
    --         "planType" "" -- val.planType
        
    --     |> Dict.insert
    --         "provisioningArtifactId" "" -- val.provisioningArtifactId
        
    --     |> Dict.toList
    ""



{-| One of

* `ProvisionedProductPlanType_CLOUDFORMATION`

-}
type ProvisionedProductPlanType
    = ProvisionedProductPlanType_CLOUDFORMATION



provisionedProductPlanTypeDecoder : JD.Decoder ProvisionedProductPlanType
provisionedProductPlanTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CLOUDFORMATION" ->
                        JD.succeed ProvisionedProductPlanType_CLOUDFORMATION


                    _ ->
                        JD.fail "bad thing"
            )




provisionedProductPlanTypeToString : ProvisionedProductPlanType -> String
provisionedProductPlanTypeToString val =
    case val of
        ProvisionedProductPlanType_CLOUDFORMATION ->
            "CLOUDFORMATION"




{-| One of

* `ProvisionedProductStatus_AVAILABLE`
* `ProvisionedProductStatus_UNDER_CHANGE`
* `ProvisionedProductStatus_TAINTED`
* `ProvisionedProductStatus_ERROR`
* `ProvisionedProductStatus_PLAN_IN_PROGRESS`

-}
type ProvisionedProductStatus
    = ProvisionedProductStatus_AVAILABLE
    | ProvisionedProductStatus_UNDER_CHANGE
    | ProvisionedProductStatus_TAINTED
    | ProvisionedProductStatus_ERROR
    | ProvisionedProductStatus_PLAN_IN_PROGRESS



provisionedProductStatusDecoder : JD.Decoder ProvisionedProductStatus
provisionedProductStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AVAILABLE" ->
                        JD.succeed ProvisionedProductStatus_AVAILABLE

                    "UNDER_CHANGE" ->
                        JD.succeed ProvisionedProductStatus_UNDER_CHANGE

                    "TAINTED" ->
                        JD.succeed ProvisionedProductStatus_TAINTED

                    "ERROR" ->
                        JD.succeed ProvisionedProductStatus_ERROR

                    "PLAN_IN_PROGRESS" ->
                        JD.succeed ProvisionedProductStatus_PLAN_IN_PROGRESS


                    _ ->
                        JD.fail "bad thing"
            )




provisionedProductStatusToString : ProvisionedProductStatus -> String
provisionedProductStatusToString val =
    case val of
        ProvisionedProductStatus_AVAILABLE ->
            "AVAILABLE"

        ProvisionedProductStatus_UNDER_CHANGE ->
            "UNDER_CHANGE"

        ProvisionedProductStatus_TAINTED ->
            "TAINTED"

        ProvisionedProductStatus_ERROR ->
            "ERROR"

        ProvisionedProductStatus_PLAN_IN_PROGRESS ->
            "PLAN_IN_PROGRESS"




{-| One of

* `ProvisionedProductViewFilterBy_SearchQuery`

-}
type ProvisionedProductViewFilterBy
    = ProvisionedProductViewFilterBy_SearchQuery



provisionedProductViewFilterByDecoder : JD.Decoder ProvisionedProductViewFilterBy
provisionedProductViewFilterByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SearchQuery" ->
                        JD.succeed ProvisionedProductViewFilterBy_SearchQuery


                    _ ->
                        JD.fail "bad thing"
            )




provisionedProductViewFilterByToString : ProvisionedProductViewFilterBy -> String
provisionedProductViewFilterByToString val =
    case val of
        ProvisionedProductViewFilterBy_SearchQuery ->
            "SearchQuery"




{-| <p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>
-}
type alias ProvisioningArtifact =
    { id : Maybe String
    , name : Maybe String
    , description : Maybe String
    , createdTime : Maybe Posix
    , guidance : Maybe ProvisioningArtifactGuidance
    }



provisioningArtifactDecoder : JD.Decoder ProvisioningArtifact
provisioningArtifactDecoder =
    JD.succeed ProvisioningArtifact
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Guidance", "guidance"]
            provisioningArtifactGuidanceDecoder
        )
        




provisioningArtifactToString : ProvisioningArtifact -> String -- List (String, String)
provisioningArtifactToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "guidance" "" -- val.guidance
        
    --     |> Dict.toList
    ""



{-| <p>Information about a provisioning artifact (also known as a version) for a product.</p>
-}
type alias ProvisioningArtifactDetail =
    { id : Maybe String
    , name : Maybe String
    , description : Maybe String
    , type_ : Maybe ProvisioningArtifactType
    , createdTime : Maybe Posix
    , active : Maybe Bool
    , guidance : Maybe ProvisioningArtifactGuidance
    }



provisioningArtifactDetailDecoder : JD.Decoder ProvisioningArtifactDetail
provisioningArtifactDetailDecoder =
    JD.succeed ProvisioningArtifactDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            provisioningArtifactTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Active", "active"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Guidance", "guidance"]
            provisioningArtifactGuidanceDecoder
        )
        




provisioningArtifactDetailToString : ProvisioningArtifactDetail -> String -- List (String, String)
provisioningArtifactDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "active" "" -- val.active
        
    --     |> Dict.insert
    --         "guidance" "" -- val.guidance
        
    --     |> Dict.toList
    ""



{-| One of

* `ProvisioningArtifactGuidance_DEFAULT`
* `ProvisioningArtifactGuidance_DEPRECATED`

-}
type ProvisioningArtifactGuidance
    = ProvisioningArtifactGuidance_DEFAULT
    | ProvisioningArtifactGuidance_DEPRECATED



provisioningArtifactGuidanceDecoder : JD.Decoder ProvisioningArtifactGuidance
provisioningArtifactGuidanceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEFAULT" ->
                        JD.succeed ProvisioningArtifactGuidance_DEFAULT

                    "DEPRECATED" ->
                        JD.succeed ProvisioningArtifactGuidance_DEPRECATED


                    _ ->
                        JD.fail "bad thing"
            )




provisioningArtifactGuidanceToString : ProvisioningArtifactGuidance -> String
provisioningArtifactGuidanceToString val =
    case val of
        ProvisioningArtifactGuidance_DEFAULT ->
            "DEFAULT"

        ProvisioningArtifactGuidance_DEPRECATED ->
            "DEPRECATED"




{-| <p>Information about a parameter used to provision a product.</p>
-}
type alias ProvisioningArtifactParameter =
    { parameterKey : Maybe String
    , defaultValue : Maybe String
    , parameterType : Maybe String
    , isNoEcho : Maybe Bool
    , description : Maybe String
    , parameterConstraints : Maybe ParameterConstraints
    }



provisioningArtifactParameterDecoder : JD.Decoder ProvisioningArtifactParameter
provisioningArtifactParameterDecoder =
    JD.succeed ProvisioningArtifactParameter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterKey", "parameterKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefaultValue", "defaultValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterType", "parameterType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["IsNoEcho", "isNoEcho"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ParameterConstraints", "parameterConstraints"]
            parameterConstraintsDecoder
        )
        




provisioningArtifactParameterToString : ProvisioningArtifactParameter -> String -- List (String, String)
provisioningArtifactParameterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "parameterKey" "" -- val.parameterKey
        
    --     |> Dict.insert
    --         "defaultValue" "" -- val.defaultValue
        
    --     |> Dict.insert
    --         "parameterType" "" -- val.parameterType
        
    --     |> Dict.insert
    --         "isNoEcho" "" -- val.isNoEcho
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "parameterConstraints" "" -- val.parameterConstraints
        
    --     |> Dict.toList
    ""



{-| <p>The user-defined preferences that will be applied during product provisioning, unless overridden by <code>ProvisioningPreferences</code> or <code>UpdateProvisioningPreferences</code>.</p> <p>For more information on maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">Stack set operation options</a> in the <i>AWS CloudFormation User Guide</i>.</p>
-}
type alias ProvisioningArtifactPreferences =
    { stackSetAccounts : Maybe (List String)
    , stackSetRegions : Maybe (List String)
    }



provisioningArtifactPreferencesDecoder : JD.Decoder ProvisioningArtifactPreferences
provisioningArtifactPreferencesDecoder =
    JD.succeed ProvisioningArtifactPreferences
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetAccounts", "stackSetAccounts"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetRegions", "stackSetRegions"]
            (JD.list JD.string)
        )
        




provisioningArtifactPreferencesToString : ProvisioningArtifactPreferences -> String -- List (String, String)
provisioningArtifactPreferencesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackSetAccounts" "" -- val.stackSetAccounts
        
    --     |> Dict.insert
    --         "stackSetRegions" "" -- val.stackSetRegions
        
    --     |> Dict.toList
    ""



{-| <p>Information about a provisioning artifact (also known as a version) for a product.</p>
-}
type alias ProvisioningArtifactProperties =
    { name : Maybe String
    , description : Maybe String
    , info : (Dict String String)
    , type_ : Maybe ProvisioningArtifactType
    , disableTemplateValidation : Maybe Bool
    }



provisioningArtifactPropertiesDecoder : JD.Decoder ProvisioningArtifactProperties
provisioningArtifactPropertiesDecoder =
    JD.succeed ProvisioningArtifactProperties
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Info", "info"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            provisioningArtifactTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DisableTemplateValidation", "disableTemplateValidation"]
            JD.bool
        )
        




provisioningArtifactPropertiesToString : ProvisioningArtifactProperties -> String -- List (String, String)
provisioningArtifactPropertiesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "info" "" -- val.info
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "disableTemplateValidation" "" -- val.disableTemplateValidation
        
    --     |> Dict.toList
    ""



{-| One of

* `ProvisioningArtifactPropertyName_Id`

-}
type ProvisioningArtifactPropertyName
    = ProvisioningArtifactPropertyName_Id



provisioningArtifactPropertyNameDecoder : JD.Decoder ProvisioningArtifactPropertyName
provisioningArtifactPropertyNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Id" ->
                        JD.succeed ProvisioningArtifactPropertyName_Id


                    _ ->
                        JD.fail "bad thing"
            )




provisioningArtifactPropertyNameToString : ProvisioningArtifactPropertyName -> String
provisioningArtifactPropertyNameToString val =
    case val of
        ProvisioningArtifactPropertyName_Id ->
            "Id"




{-| <p>Summary information about a provisioning artifact (also known as a version) for a product.</p>
-}
type alias ProvisioningArtifactSummary =
    { id : Maybe String
    , name : Maybe String
    , description : Maybe String
    , createdTime : Maybe Posix
    , provisioningArtifactMetadata : Maybe (Dict String String)
    }



provisioningArtifactSummaryDecoder : JD.Decoder ProvisioningArtifactSummary
provisioningArtifactSummaryDecoder =
    JD.succeed ProvisioningArtifactSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactMetadata", "provisioningArtifactMetadata"]
            (AWS.Core.Decode.dict JD.string)
        )
        




provisioningArtifactSummaryToString : ProvisioningArtifactSummary -> String -- List (String, String)
provisioningArtifactSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "provisioningArtifactMetadata" "" -- val.provisioningArtifactMetadata
        
    --     |> Dict.toList
    ""



{-| One of

* `ProvisioningArtifactType_CLOUD_FORMATION_TEMPLATE`
* `ProvisioningArtifactType_MARKETPLACE_AMI`
* `ProvisioningArtifactType_MARKETPLACE_CAR`

-}
type ProvisioningArtifactType
    = ProvisioningArtifactType_CLOUD_FORMATION_TEMPLATE
    | ProvisioningArtifactType_MARKETPLACE_AMI
    | ProvisioningArtifactType_MARKETPLACE_CAR



provisioningArtifactTypeDecoder : JD.Decoder ProvisioningArtifactType
provisioningArtifactTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CLOUD_FORMATION_TEMPLATE" ->
                        JD.succeed ProvisioningArtifactType_CLOUD_FORMATION_TEMPLATE

                    "MARKETPLACE_AMI" ->
                        JD.succeed ProvisioningArtifactType_MARKETPLACE_AMI

                    "MARKETPLACE_CAR" ->
                        JD.succeed ProvisioningArtifactType_MARKETPLACE_CAR


                    _ ->
                        JD.fail "bad thing"
            )




provisioningArtifactTypeToString : ProvisioningArtifactType -> String
provisioningArtifactTypeToString val =
    case val of
        ProvisioningArtifactType_CLOUD_FORMATION_TEMPLATE ->
            "CLOUD_FORMATION_TEMPLATE"

        ProvisioningArtifactType_MARKETPLACE_AMI ->
            "MARKETPLACE_AMI"

        ProvisioningArtifactType_MARKETPLACE_CAR ->
            "MARKETPLACE_CAR"




{-| <p>An object that contains summary information about a product view and a provisioning artifact.</p>
-}
type alias ProvisioningArtifactView =
    { productViewSummary : Maybe ProductViewSummary
    , provisioningArtifact : Maybe ProvisioningArtifact
    }



provisioningArtifactViewDecoder : JD.Decoder ProvisioningArtifactView
provisioningArtifactViewDecoder =
    JD.succeed ProvisioningArtifactView
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductViewSummary", "productViewSummary"]
            productViewSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifact", "provisioningArtifact"]
            provisioningArtifactDecoder
        )
        




provisioningArtifactViewToString : ProvisioningArtifactView -> String -- List (String, String)
provisioningArtifactViewToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "productViewSummary" "" -- val.productViewSummary
        
    --     |> Dict.insert
    --         "provisioningArtifact" "" -- val.provisioningArtifact
        
    --     |> Dict.toList
    ""



{-| <p>Information about a parameter used to provision a product.</p>
-}
type alias ProvisioningParameter =
    { key : Maybe String
    , value : Maybe String
    }



provisioningParameterDecoder : JD.Decoder ProvisioningParameter
provisioningParameterDecoder =
    JD.succeed ProvisioningParameter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




provisioningParameterToString : ProvisioningParameter -> String -- List (String, String)
provisioningParameterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| <p>The user-defined preferences that will be applied when updating a provisioned product. Not all preferences are applicable to all provisioned product types.</p>
-}
type alias ProvisioningPreferences =
    { stackSetAccounts : Maybe (List String)
    , stackSetRegions : Maybe (List String)
    , stackSetFailureToleranceCount : Maybe Int
    , stackSetFailureTolerancePercentage : Maybe Int
    , stackSetMaxConcurrencyCount : Maybe Int
    , stackSetMaxConcurrencyPercentage : Maybe Int
    }



provisioningPreferencesDecoder : JD.Decoder ProvisioningPreferences
provisioningPreferencesDecoder =
    JD.succeed ProvisioningPreferences
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetAccounts", "stackSetAccounts"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetRegions", "stackSetRegions"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetFailureToleranceCount", "stackSetFailureToleranceCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetFailureTolerancePercentage", "stackSetFailureTolerancePercentage"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetMaxConcurrencyCount", "stackSetMaxConcurrencyCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetMaxConcurrencyPercentage", "stackSetMaxConcurrencyPercentage"]
            JD.int
        )
        




provisioningPreferencesToString : ProvisioningPreferences -> String -- List (String, String)
provisioningPreferencesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackSetAccounts" "" -- val.stackSetAccounts
        
    --     |> Dict.insert
    --         "stackSetRegions" "" -- val.stackSetRegions
        
    --     |> Dict.insert
    --         "stackSetFailureToleranceCount" "" -- val.stackSetFailureToleranceCount
        
    --     |> Dict.insert
    --         "stackSetFailureTolerancePercentage" "" -- val.stackSetFailureTolerancePercentage
        
    --     |> Dict.insert
    --         "stackSetMaxConcurrencyCount" "" -- val.stackSetMaxConcurrencyCount
        
    --     |> Dict.insert
    --         "stackSetMaxConcurrencyPercentage" "" -- val.stackSetMaxConcurrencyPercentage
        
    --     |> Dict.toList
    ""



{-| <p>Information about a request operation.</p>
-}
type alias RecordDetail =
    { recordId : Maybe String
    , provisionedProductName : Maybe String
    , status : Maybe RecordStatus
    , createdTime : Maybe Posix
    , updatedTime : Maybe Posix
    , provisionedProductType : Maybe String
    , recordType : Maybe String
    , provisionedProductId : Maybe String
    , productId : Maybe String
    , provisioningArtifactId : Maybe String
    , pathId : Maybe String
    , recordErrors : Maybe (List RecordError)
    , recordTags : Maybe (List RecordTag)
    }



recordDetailDecoder : JD.Decoder RecordDetail
recordDetailDecoder =
    JD.succeed RecordDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordId", "recordId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionedProductName", "provisionedProductName"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            recordStatusDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UpdatedTime", "updatedTime"]
            JDX.datetime
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionedProductType", "provisionedProductType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordType", "recordType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionedProductId", "provisionedProductId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductId", "productId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactId", "provisioningArtifactId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PathId", "pathId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordErrors", "recordErrors"]
            (JD.list recordErrorDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordTags", "recordTags"]
            (JD.list recordTagDecoder)
        )
        




recordDetailToString : RecordDetail -> String -- List (String, String)
recordDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordId" "" -- val.recordId
        
    --     |> Dict.insert
    --         "provisionedProductName" "" -- val.provisionedProductName
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.insert
    --         "updatedTime" "" -- val.updatedTime
        
    --     |> Dict.insert
    --         "provisionedProductType" "" -- val.provisionedProductType
        
    --     |> Dict.insert
    --         "recordType" "" -- val.recordType
        
    --     |> Dict.insert
    --         "provisionedProductId" "" -- val.provisionedProductId
        
    --     |> Dict.insert
    --         "productId" "" -- val.productId
        
    --     |> Dict.insert
    --         "provisioningArtifactId" "" -- val.provisioningArtifactId
        
    --     |> Dict.insert
    --         "pathId" "" -- val.pathId
        
    --     |> Dict.insert
    --         "recordErrors" "" -- val.recordErrors
        
    --     |> Dict.insert
    --         "recordTags" "" -- val.recordTags
        
    --     |> Dict.toList
    ""



{-| <p>The error code and description resulting from an operation.</p>
-}
type alias RecordError =
    { code : Maybe String
    , description : Maybe String
    }



recordErrorDecoder : JD.Decoder RecordError
recordErrorDecoder =
    JD.succeed RecordError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Code", "code"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        




recordErrorToString : RecordError -> String -- List (String, String)
recordErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| <p>The output for the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.</p>
-}
type alias RecordOutput =
    { outputKey : Maybe String
    , outputValue : Maybe String
    , description : Maybe String
    }



recordOutputDecoder : JD.Decoder RecordOutput
recordOutputDecoder =
    JD.succeed RecordOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OutputKey", "outputKey"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["OutputValue", "outputValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        




recordOutputToString : RecordOutput -> String -- List (String, String)
recordOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "outputKey" "" -- val.outputKey
        
    --     |> Dict.insert
    --         "outputValue" "" -- val.outputValue
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.toList
    ""



{-| One of

* `RecordStatus_CREATED`
* `RecordStatus_IN_PROGRESS`
* `RecordStatus_IN_PROGRESS_IN_ERROR`
* `RecordStatus_SUCCEEDED`
* `RecordStatus_FAILED`

-}
type RecordStatus
    = RecordStatus_CREATED
    | RecordStatus_IN_PROGRESS
    | RecordStatus_IN_PROGRESS_IN_ERROR
    | RecordStatus_SUCCEEDED
    | RecordStatus_FAILED



recordStatusDecoder : JD.Decoder RecordStatus
recordStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATED" ->
                        JD.succeed RecordStatus_CREATED

                    "IN_PROGRESS" ->
                        JD.succeed RecordStatus_IN_PROGRESS

                    "IN_PROGRESS_IN_ERROR" ->
                        JD.succeed RecordStatus_IN_PROGRESS_IN_ERROR

                    "SUCCEEDED" ->
                        JD.succeed RecordStatus_SUCCEEDED

                    "FAILED" ->
                        JD.succeed RecordStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




recordStatusToString : RecordStatus -> String
recordStatusToString val =
    case val of
        RecordStatus_CREATED ->
            "CREATED"

        RecordStatus_IN_PROGRESS ->
            "IN_PROGRESS"

        RecordStatus_IN_PROGRESS_IN_ERROR ->
            "IN_PROGRESS_IN_ERROR"

        RecordStatus_SUCCEEDED ->
            "SUCCEEDED"

        RecordStatus_FAILED ->
            "FAILED"




{-| <p>Information about a tag, which is a key-value pair.</p>
-}
type alias RecordTag =
    { key : Maybe String
    , value : Maybe String
    }



recordTagDecoder : JD.Decoder RecordTag
recordTagDecoder =
    JD.succeed RecordTag
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




recordTagToString : RecordTag -> String -- List (String, String)
recordTagToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from rejectPortfolioSha
-}
type alias RejectPortfolioShareOutput =
    { 
    }



rejectPortfolioShareOutputDecoder : JD.Decoder RejectPortfolioShareOutput
rejectPortfolioShareOutputDecoder =
    JD.succeed RejectPortfolioShareOutput
        




rejectPortfolioShareOutputToString : RejectPortfolioShareOutput -> String -- List (String, String)
rejectPortfolioShareOutputToString val =
    -- Dict.empty
        
    --     |> Dict.toList
    ""



{-| One of

* `Replacement_TRUE`
* `Replacement_FALSE`
* `Replacement_CONDITIONAL`

-}
type Replacement
    = Replacement_TRUE
    | Replacement_FALSE
    | Replacement_CONDITIONAL



replacementDecoder : JD.Decoder Replacement
replacementDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TRUE" ->
                        JD.succeed Replacement_TRUE

                    "FALSE" ->
                        JD.succeed Replacement_FALSE

                    "CONDITIONAL" ->
                        JD.succeed Replacement_CONDITIONAL


                    _ ->
                        JD.fail "bad thing"
            )




replacementToString : Replacement -> String
replacementToString val =
    case val of
        Replacement_TRUE ->
            "TRUE"

        Replacement_FALSE ->
            "FALSE"

        Replacement_CONDITIONAL ->
            "CONDITIONAL"




{-| One of

* `RequiresRecreation_NEVER`
* `RequiresRecreation_CONDITIONALLY`
* `RequiresRecreation_ALWAYS`

-}
type RequiresRecreation
    = RequiresRecreation_NEVER
    | RequiresRecreation_CONDITIONALLY
    | RequiresRecreation_ALWAYS



requiresRecreationDecoder : JD.Decoder RequiresRecreation
requiresRecreationDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NEVER" ->
                        JD.succeed RequiresRecreation_NEVER

                    "CONDITIONALLY" ->
                        JD.succeed RequiresRecreation_CONDITIONALLY

                    "ALWAYS" ->
                        JD.succeed RequiresRecreation_ALWAYS


                    _ ->
                        JD.fail "bad thing"
            )




requiresRecreationToString : RequiresRecreation -> String
requiresRecreationToString val =
    case val of
        RequiresRecreation_NEVER ->
            "NEVER"

        RequiresRecreation_CONDITIONALLY ->
            "CONDITIONALLY"

        RequiresRecreation_ALWAYS ->
            "ALWAYS"




{-| One of

* `ResourceAttribute_PROPERTIES`
* `ResourceAttribute_METADATA`
* `ResourceAttribute_CREATIONPOLICY`
* `ResourceAttribute_UPDATEPOLICY`
* `ResourceAttribute_DELETIONPOLICY`
* `ResourceAttribute_TAGS`

-}
type ResourceAttribute
    = ResourceAttribute_PROPERTIES
    | ResourceAttribute_METADATA
    | ResourceAttribute_CREATIONPOLICY
    | ResourceAttribute_UPDATEPOLICY
    | ResourceAttribute_DELETIONPOLICY
    | ResourceAttribute_TAGS



resourceAttributeDecoder : JD.Decoder ResourceAttribute
resourceAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PROPERTIES" ->
                        JD.succeed ResourceAttribute_PROPERTIES

                    "METADATA" ->
                        JD.succeed ResourceAttribute_METADATA

                    "CREATIONPOLICY" ->
                        JD.succeed ResourceAttribute_CREATIONPOLICY

                    "UPDATEPOLICY" ->
                        JD.succeed ResourceAttribute_UPDATEPOLICY

                    "DELETIONPOLICY" ->
                        JD.succeed ResourceAttribute_DELETIONPOLICY

                    "TAGS" ->
                        JD.succeed ResourceAttribute_TAGS


                    _ ->
                        JD.fail "bad thing"
            )




resourceAttributeToString : ResourceAttribute -> String
resourceAttributeToString val =
    case val of
        ResourceAttribute_PROPERTIES ->
            "PROPERTIES"

        ResourceAttribute_METADATA ->
            "METADATA"

        ResourceAttribute_CREATIONPOLICY ->
            "CREATIONPOLICY"

        ResourceAttribute_UPDATEPOLICY ->
            "UPDATEPOLICY"

        ResourceAttribute_DELETIONPOLICY ->
            "DELETIONPOLICY"

        ResourceAttribute_TAGS ->
            "TAGS"




{-| <p>Information about a resource change that will occur when a plan is executed.</p>
-}
type alias ResourceChange =
    { action : Maybe ChangeAction
    , logicalResourceId : Maybe String
    , physicalResourceId : Maybe String
    , resourceType : Maybe String
    , replacement : Maybe Replacement
    , scope : Maybe (List ResourceAttribute)
    , details : Maybe (List ResourceChangeDetail)
    }



resourceChangeDecoder : JD.Decoder ResourceChange
resourceChangeDecoder =
    JD.succeed ResourceChange
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Action", "action"]
            changeActionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["LogicalResourceId", "logicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PhysicalResourceId", "physicalResourceId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ResourceType", "resourceType"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Replacement", "replacement"]
            replacementDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Scope", "scope"]
            (JD.list resourceAttributeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Details", "details"]
            (JD.list resourceChangeDetailDecoder)
        )
        




resourceChangeToString : ResourceChange -> String -- List (String, String)
resourceChangeToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "action" "" -- val.action
        
    --     |> Dict.insert
    --         "logicalResourceId" "" -- val.logicalResourceId
        
    --     |> Dict.insert
    --         "physicalResourceId" "" -- val.physicalResourceId
        
    --     |> Dict.insert
    --         "resourceType" "" -- val.resourceType
        
    --     |> Dict.insert
    --         "replacement" "" -- val.replacement
        
    --     |> Dict.insert
    --         "scope" "" -- val.scope
        
    --     |> Dict.insert
    --         "details" "" -- val.details
        
    --     |> Dict.toList
    ""



{-| <p>Information about a change to a resource attribute.</p>
-}
type alias ResourceChangeDetail =
    { target : Maybe ResourceTargetDefinition
    , evaluation : Maybe EvaluationType
    , causingEntity : Maybe String
    }



resourceChangeDetailDecoder : JD.Decoder ResourceChangeDetail
resourceChangeDetailDecoder =
    JD.succeed ResourceChangeDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Target", "target"]
            resourceTargetDefinitionDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Evaluation", "evaluation"]
            evaluationTypeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CausingEntity", "causingEntity"]
            JD.string
        )
        




resourceChangeDetailToString : ResourceChangeDetail -> String -- List (String, String)
resourceChangeDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "target" "" -- val.target
        
    --     |> Dict.insert
    --         "evaluation" "" -- val.evaluation
        
    --     |> Dict.insert
    --         "causingEntity" "" -- val.causingEntity
        
    --     |> Dict.toList
    ""



{-| <p>Information about a resource.</p>
-}
type alias ResourceDetail =
    { id : Maybe String
    , aRN : Maybe String
    , name : Maybe String
    , description : Maybe String
    , createdTime : Maybe Posix
    }



resourceDetailDecoder : JD.Decoder ResourceDetail
resourceDetailDecoder =
    JD.succeed ResourceDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ARN", "aRN"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["CreatedTime", "createdTime"]
            JDX.datetime
        )
        




resourceDetailToString : ResourceDetail -> String -- List (String, String)
resourceDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "aRN" "" -- val.aRN
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "createdTime" "" -- val.createdTime
        
    --     |> Dict.toList
    ""



{-| <p>Information about a change to a resource attribute.</p>
-}
type alias ResourceTargetDefinition =
    { attribute : Maybe ResourceAttribute
    , name : Maybe String
    , requiresRecreation : Maybe RequiresRecreation
    }



resourceTargetDefinitionDecoder : JD.Decoder ResourceTargetDefinition
resourceTargetDefinitionDecoder =
    JD.succeed ResourceTargetDefinition
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attribute", "attribute"]
            resourceAttributeDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RequiresRecreation", "requiresRecreation"]
            requiresRecreationDecoder
        )
        




resourceTargetDefinitionToString : ResourceTargetDefinition -> String -- List (String, String)
resourceTargetDefinitionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attribute" "" -- val.attribute
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "requiresRecreation" "" -- val.requiresRecreation
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from scanProvisionedProduc
-}
type alias ScanProvisionedProductsOutput =
    { provisionedProducts : Maybe (List ProvisionedProductDetail)
    , nextPageToken : Maybe String
    }



scanProvisionedProductsOutputDecoder : JD.Decoder ScanProvisionedProductsOutput
scanProvisionedProductsOutputDecoder =
    JD.succeed ScanProvisionedProductsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionedProducts", "provisionedProducts"]
            (JD.list provisionedProductDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




scanProvisionedProductsOutputToString : ScanProvisionedProductsOutput -> String -- List (String, String)
scanProvisionedProductsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "provisionedProducts" "" -- val.provisionedProducts
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from searchProductsAsAdm
-}
type alias SearchProductsAsAdminOutput =
    { productViewDetails : Maybe (List ProductViewDetail)
    , nextPageToken : Maybe String
    }



searchProductsAsAdminOutputDecoder : JD.Decoder SearchProductsAsAdminOutput
searchProductsAsAdminOutputDecoder =
    JD.succeed SearchProductsAsAdminOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductViewDetails", "productViewDetails"]
            (JD.list productViewDetailDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




searchProductsAsAdminOutputToString : SearchProductsAsAdminOutput -> String -- List (String, String)
searchProductsAsAdminOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "productViewDetails" "" -- val.productViewDetails
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from searchProduc
-}
type alias SearchProductsOutput =
    { productViewSummaries : Maybe (List ProductViewSummary)
    , productViewAggregations : Maybe (Dict String (List ProductViewAggregationValue))
    , nextPageToken : Maybe String
    }



searchProductsOutputDecoder : JD.Decoder SearchProductsOutput
searchProductsOutputDecoder =
    JD.succeed SearchProductsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductViewSummaries", "productViewSummaries"]
            (JD.list productViewSummaryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductViewAggregations", "productViewAggregations"]
            (AWS.Core.Decode.dict (JD.list productViewAggregationValueDecoder))
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




searchProductsOutputToString : SearchProductsOutput -> String -- List (String, String)
searchProductsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "productViewSummaries" "" -- val.productViewSummaries
        
    --     |> Dict.insert
    --         "productViewAggregations" "" -- val.productViewAggregations
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from searchProvisionedProduc
-}
type alias SearchProvisionedProductsOutput =
    { provisionedProducts : Maybe (List ProvisionedProductAttribute)
    , totalResultsCount : Maybe Int
    , nextPageToken : Maybe String
    }



searchProvisionedProductsOutputDecoder : JD.Decoder SearchProvisionedProductsOutput
searchProvisionedProductsOutputDecoder =
    JD.succeed SearchProvisionedProductsOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionedProducts", "provisionedProducts"]
            (JD.list provisionedProductAttributeDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TotalResultsCount", "totalResultsCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["NextPageToken", "nextPageToken"]
            JD.string
        )
        




searchProvisionedProductsOutputToString : SearchProvisionedProductsOutput -> String -- List (String, String)
searchProvisionedProductsOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "provisionedProducts" "" -- val.provisionedProducts
        
    --     |> Dict.insert
    --         "totalResultsCount" "" -- val.totalResultsCount
        
    --     |> Dict.insert
    --         "nextPageToken" "" -- val.nextPageToken
        
    --     |> Dict.toList
    ""



{-| <p>A self-service action association consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
-}
type alias ServiceActionAssociation =
    { serviceActionId : String
    , productId : String
    , provisioningArtifactId : String
    }



serviceActionAssociationDecoder : JD.Decoder ServiceActionAssociation
serviceActionAssociationDecoder =
    JD.succeed ServiceActionAssociation
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ServiceActionId", "serviceActionId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ProductId", "productId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ProvisioningArtifactId", "provisioningArtifactId"]
            JD.string
        )
        




serviceActionAssociationToString : ServiceActionAssociation -> String -- List (String, String)
serviceActionAssociationToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceActionId" "" -- val.serviceActionId
        
    --     |> Dict.insert
    --         "productId" "" -- val.productId
        
    --     |> Dict.insert
    --         "provisioningArtifactId" "" -- val.provisioningArtifactId
        
    --     |> Dict.toList
    ""



{-| One of

* `ServiceActionAssociationErrorCode_DUPLICATE_RESOURCE`
* `ServiceActionAssociationErrorCode_INTERNAL_FAILURE`
* `ServiceActionAssociationErrorCode_LIMIT_EXCEEDED`
* `ServiceActionAssociationErrorCode_RESOURCE_NOT_FOUND`
* `ServiceActionAssociationErrorCode_THROTTLING`

-}
type ServiceActionAssociationErrorCode
    = ServiceActionAssociationErrorCode_DUPLICATE_RESOURCE
    | ServiceActionAssociationErrorCode_INTERNAL_FAILURE
    | ServiceActionAssociationErrorCode_LIMIT_EXCEEDED
    | ServiceActionAssociationErrorCode_RESOURCE_NOT_FOUND
    | ServiceActionAssociationErrorCode_THROTTLING



serviceActionAssociationErrorCodeDecoder : JD.Decoder ServiceActionAssociationErrorCode
serviceActionAssociationErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DUPLICATE_RESOURCE" ->
                        JD.succeed ServiceActionAssociationErrorCode_DUPLICATE_RESOURCE

                    "INTERNAL_FAILURE" ->
                        JD.succeed ServiceActionAssociationErrorCode_INTERNAL_FAILURE

                    "LIMIT_EXCEEDED" ->
                        JD.succeed ServiceActionAssociationErrorCode_LIMIT_EXCEEDED

                    "RESOURCE_NOT_FOUND" ->
                        JD.succeed ServiceActionAssociationErrorCode_RESOURCE_NOT_FOUND

                    "THROTTLING" ->
                        JD.succeed ServiceActionAssociationErrorCode_THROTTLING


                    _ ->
                        JD.fail "bad thing"
            )




serviceActionAssociationErrorCodeToString : ServiceActionAssociationErrorCode -> String
serviceActionAssociationErrorCodeToString val =
    case val of
        ServiceActionAssociationErrorCode_DUPLICATE_RESOURCE ->
            "DUPLICATE_RESOURCE"

        ServiceActionAssociationErrorCode_INTERNAL_FAILURE ->
            "INTERNAL_FAILURE"

        ServiceActionAssociationErrorCode_LIMIT_EXCEEDED ->
            "LIMIT_EXCEEDED"

        ServiceActionAssociationErrorCode_RESOURCE_NOT_FOUND ->
            "RESOURCE_NOT_FOUND"

        ServiceActionAssociationErrorCode_THROTTLING ->
            "THROTTLING"




{-| One of

* `ServiceActionDefinitionKey_Name`
* `ServiceActionDefinitionKey_Version`
* `ServiceActionDefinitionKey_AssumeRole`
* `ServiceActionDefinitionKey_Parameters`

-}
type ServiceActionDefinitionKey
    = ServiceActionDefinitionKey_Name
    | ServiceActionDefinitionKey_Version
    | ServiceActionDefinitionKey_AssumeRole
    | ServiceActionDefinitionKey_Parameters



serviceActionDefinitionKeyDecoder : JD.Decoder ServiceActionDefinitionKey
serviceActionDefinitionKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Name" ->
                        JD.succeed ServiceActionDefinitionKey_Name

                    "Version" ->
                        JD.succeed ServiceActionDefinitionKey_Version

                    "AssumeRole" ->
                        JD.succeed ServiceActionDefinitionKey_AssumeRole

                    "Parameters" ->
                        JD.succeed ServiceActionDefinitionKey_Parameters


                    _ ->
                        JD.fail "bad thing"
            )




serviceActionDefinitionKeyToString : ServiceActionDefinitionKey -> String
serviceActionDefinitionKeyToString val =
    case val of
        ServiceActionDefinitionKey_Name ->
            "Name"

        ServiceActionDefinitionKey_Version ->
            "Version"

        ServiceActionDefinitionKey_AssumeRole ->
            "AssumeRole"

        ServiceActionDefinitionKey_Parameters ->
            "Parameters"




{-| One of

* `ServiceActionDefinitionType_SSM_AUTOMATION`

-}
type ServiceActionDefinitionType
    = ServiceActionDefinitionType_SSM_AUTOMATION



serviceActionDefinitionTypeDecoder : JD.Decoder ServiceActionDefinitionType
serviceActionDefinitionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SSM_AUTOMATION" ->
                        JD.succeed ServiceActionDefinitionType_SSM_AUTOMATION


                    _ ->
                        JD.fail "bad thing"
            )




serviceActionDefinitionTypeToString : ServiceActionDefinitionType -> String
serviceActionDefinitionTypeToString val =
    case val of
        ServiceActionDefinitionType_SSM_AUTOMATION ->
            "SSM_AUTOMATION"




{-| <p>An object containing detailed information about the self-service action.</p>
-}
type alias ServiceActionDetail =
    { serviceActionSummary : Maybe ServiceActionSummary
    , definition : Maybe (Dict String String)
    }



serviceActionDetailDecoder : JD.Decoder ServiceActionDetail
serviceActionDetailDecoder =
    JD.succeed ServiceActionDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceActionSummary", "serviceActionSummary"]
            serviceActionSummaryDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Definition", "definition"]
            (AWS.Core.Decode.dict JD.string)
        )
        




serviceActionDetailToString : ServiceActionDetail -> String -- List (String, String)
serviceActionDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceActionSummary" "" -- val.serviceActionSummary
        
    --     |> Dict.insert
    --         "definition" "" -- val.definition
        
    --     |> Dict.toList
    ""



{-| <p>Detailed information about the self-service action.</p>
-}
type alias ServiceActionSummary =
    { id : Maybe String
    , name : Maybe String
    , description : Maybe String
    , definitionType : Maybe ServiceActionDefinitionType
    }



serviceActionSummaryDecoder : JD.Decoder ServiceActionSummary
serviceActionSummaryDecoder =
    JD.succeed ServiceActionSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Name", "name"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Description", "description"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DefinitionType", "definitionType"]
            serviceActionDefinitionTypeDecoder
        )
        




serviceActionSummaryToString : ServiceActionSummary -> String -- List (String, String)
serviceActionSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "name" "" -- val.name
        
    --     |> Dict.insert
    --         "description" "" -- val.description
        
    --     |> Dict.insert
    --         "definitionType" "" -- val.definitionType
        
    --     |> Dict.toList
    ""



{-| <p>Information about the portfolio share operation.</p>
-}
type alias ShareDetails =
    { successfulShares : Maybe (List String)
    , shareErrors : Maybe (List ShareError)
    }



shareDetailsDecoder : JD.Decoder ShareDetails
shareDetailsDecoder =
    JD.succeed ShareDetails
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SuccessfulShares", "successfulShares"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ShareErrors", "shareErrors"]
            (JD.list shareErrorDecoder)
        )
        




shareDetailsToString : ShareDetails -> String -- List (String, String)
shareDetailsToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "successfulShares" "" -- val.successfulShares
        
    --     |> Dict.insert
    --         "shareErrors" "" -- val.shareErrors
        
    --     |> Dict.toList
    ""



{-| <p>Errors that occurred during the portfolio share operation.</p>
-}
type alias ShareError =
    { accounts : Maybe (List String)
    , message : Maybe String
    , error : Maybe String
    }



shareErrorDecoder : JD.Decoder ShareError
shareErrorDecoder =
    JD.succeed ShareError
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Accounts", "accounts"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Error", "error"]
            JD.string
        )
        




shareErrorToString : ShareError -> String -- List (String, String)
shareErrorToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "accounts" "" -- val.accounts
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.insert
    --         "error" "" -- val.error
        
    --     |> Dict.toList
    ""



{-| One of

* `ShareStatus_NOT_STARTED`
* `ShareStatus_IN_PROGRESS`
* `ShareStatus_COMPLETED`
* `ShareStatus_COMPLETED_WITH_ERRORS`
* `ShareStatus_ERROR`

-}
type ShareStatus
    = ShareStatus_NOT_STARTED
    | ShareStatus_IN_PROGRESS
    | ShareStatus_COMPLETED
    | ShareStatus_COMPLETED_WITH_ERRORS
    | ShareStatus_ERROR



shareStatusDecoder : JD.Decoder ShareStatus
shareStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NOT_STARTED" ->
                        JD.succeed ShareStatus_NOT_STARTED

                    "IN_PROGRESS" ->
                        JD.succeed ShareStatus_IN_PROGRESS

                    "COMPLETED" ->
                        JD.succeed ShareStatus_COMPLETED

                    "COMPLETED_WITH_ERRORS" ->
                        JD.succeed ShareStatus_COMPLETED_WITH_ERRORS

                    "ERROR" ->
                        JD.succeed ShareStatus_ERROR


                    _ ->
                        JD.fail "bad thing"
            )




shareStatusToString : ShareStatus -> String
shareStatusToString val =
    case val of
        ShareStatus_NOT_STARTED ->
            "NOT_STARTED"

        ShareStatus_IN_PROGRESS ->
            "IN_PROGRESS"

        ShareStatus_COMPLETED ->
            "COMPLETED"

        ShareStatus_COMPLETED_WITH_ERRORS ->
            "COMPLETED_WITH_ERRORS"

        ShareStatus_ERROR ->
            "ERROR"




{-| One of

* `SortOrder_ASCENDING`
* `SortOrder_DESCENDING`

-}
type SortOrder
    = SortOrder_ASCENDING
    | SortOrder_DESCENDING



sortOrderDecoder : JD.Decoder SortOrder
sortOrderDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASCENDING" ->
                        JD.succeed SortOrder_ASCENDING

                    "DESCENDING" ->
                        JD.succeed SortOrder_DESCENDING


                    _ ->
                        JD.fail "bad thing"
            )




sortOrderToString : SortOrder -> String
sortOrderToString val =
    case val of
        SortOrder_ASCENDING ->
            "ASCENDING"

        SortOrder_DESCENDING ->
            "DESCENDING"




{-| <p>An AWS CloudFormation stack, in a specific account and region, that's part of a stack set operation. A stack instance is a reference to an attempted or actual stack in a given account within a given region. A stack instance can exist without a stack—for example, if the stack couldn't be created for some reason. A stack instance is associated with only one stack set. Each stack instance contains the ID of its associated stack set, as well as the ID of the actual stack and the stack status. </p>
-}
type alias StackInstance =
    { account : Maybe String
    , region : Maybe String
    , stackInstanceStatus : Maybe StackInstanceStatus
    }



stackInstanceDecoder : JD.Decoder StackInstance
stackInstanceDecoder =
    JD.succeed StackInstance
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Account", "account"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Region", "region"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackInstanceStatus", "stackInstanceStatus"]
            stackInstanceStatusDecoder
        )
        




stackInstanceToString : StackInstance -> String -- List (String, String)
stackInstanceToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "account" "" -- val.account
        
    --     |> Dict.insert
    --         "region" "" -- val.region
        
    --     |> Dict.insert
    --         "stackInstanceStatus" "" -- val.stackInstanceStatus
        
    --     |> Dict.toList
    ""



{-| One of

* `StackInstanceStatus_CURRENT`
* `StackInstanceStatus_OUTDATED`
* `StackInstanceStatus_INOPERABLE`

-}
type StackInstanceStatus
    = StackInstanceStatus_CURRENT
    | StackInstanceStatus_OUTDATED
    | StackInstanceStatus_INOPERABLE



stackInstanceStatusDecoder : JD.Decoder StackInstanceStatus
stackInstanceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CURRENT" ->
                        JD.succeed StackInstanceStatus_CURRENT

                    "OUTDATED" ->
                        JD.succeed StackInstanceStatus_OUTDATED

                    "INOPERABLE" ->
                        JD.succeed StackInstanceStatus_INOPERABLE


                    _ ->
                        JD.fail "bad thing"
            )




stackInstanceStatusToString : StackInstanceStatus -> String
stackInstanceStatusToString val =
    case val of
        StackInstanceStatus_CURRENT ->
            "CURRENT"

        StackInstanceStatus_OUTDATED ->
            "OUTDATED"

        StackInstanceStatus_INOPERABLE ->
            "INOPERABLE"




{-| One of

* `StackSetOperationType_CREATE`
* `StackSetOperationType_UPDATE`
* `StackSetOperationType_DELETE`

-}
type StackSetOperationType
    = StackSetOperationType_CREATE
    | StackSetOperationType_UPDATE
    | StackSetOperationType_DELETE



stackSetOperationTypeDecoder : JD.Decoder StackSetOperationType
stackSetOperationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE" ->
                        JD.succeed StackSetOperationType_CREATE

                    "UPDATE" ->
                        JD.succeed StackSetOperationType_UPDATE

                    "DELETE" ->
                        JD.succeed StackSetOperationType_DELETE


                    _ ->
                        JD.fail "bad thing"
            )




stackSetOperationTypeToString : StackSetOperationType -> String
stackSetOperationTypeToString val =
    case val of
        StackSetOperationType_CREATE ->
            "CREATE"

        StackSetOperationType_UPDATE ->
            "UPDATE"

        StackSetOperationType_DELETE ->
            "DELETE"




{-| One of

* `Status_AVAILABLE`
* `Status_CREATING`
* `Status_FAILED`

-}
type Status
    = Status_AVAILABLE
    | Status_CREATING
    | Status_FAILED



statusDecoder : JD.Decoder Status
statusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AVAILABLE" ->
                        JD.succeed Status_AVAILABLE

                    "CREATING" ->
                        JD.succeed Status_CREATING

                    "FAILED" ->
                        JD.succeed Status_FAILED


                    _ ->
                        JD.fail "bad thing"
            )




statusToString : Status -> String
statusToString val =
    case val of
        Status_AVAILABLE ->
            "AVAILABLE"

        Status_CREATING ->
            "CREATING"

        Status_FAILED ->
            "FAILED"




{-| <p>Information about a tag. A tag is a key-value pair. Tags are propagated to the resources created when provisioning a product.</p>
-}
type alias Tag =
    { key : String
    , value : String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JD.succeed Tag
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
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



{-| <p>Information about a TagOption.</p>
-}
type alias TagOptionDetail =
    { key : Maybe String
    , value : Maybe String
    , active : Maybe Bool
    , id : Maybe String
    }



tagOptionDetailDecoder : JD.Decoder TagOptionDetail
tagOptionDetailDecoder =
    JD.succeed TagOptionDetail
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Active", "active"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Id", "id"]
            JD.string
        )
        




tagOptionDetailToString : TagOptionDetail -> String -- List (String, String)
tagOptionDetailToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "active" "" -- val.active
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.toList
    ""



{-| <p>Summary information about a TagOption.</p>
-}
type alias TagOptionSummary =
    { key : Maybe String
    , values : Maybe (List String)
    }



tagOptionSummaryDecoder : JD.Decoder TagOptionSummary
tagOptionSummaryDecoder =
    JD.succeed TagOptionSummary
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Values", "values"]
            (JD.list JD.string)
        )
        




tagOptionSummaryToString : TagOptionSummary -> String -- List (String, String)
tagOptionSummaryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "values" "" -- val.values
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from terminateProvisionedProdu
-}
type alias TerminateProvisionedProductOutput =
    { recordDetail : Maybe RecordDetail
    }



terminateProvisionedProductOutputDecoder : JD.Decoder TerminateProvisionedProductOutput
terminateProvisionedProductOutputDecoder =
    JD.succeed TerminateProvisionedProductOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordDetail", "recordDetail"]
            recordDetailDecoder
        )
        




terminateProvisionedProductOutputToString : TerminateProvisionedProductOutput -> String -- List (String, String)
terminateProvisionedProductOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordDetail" "" -- val.recordDetail
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateConstrai
-}
type alias UpdateConstraintOutput =
    { constraintDetail : Maybe ConstraintDetail
    , constraintParameters : Maybe String
    , status : Maybe Status
    }



updateConstraintOutputDecoder : JD.Decoder UpdateConstraintOutput
updateConstraintOutputDecoder =
    JD.succeed UpdateConstraintOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConstraintDetail", "constraintDetail"]
            constraintDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ConstraintParameters", "constraintParameters"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            statusDecoder
        )
        




updateConstraintOutputToString : UpdateConstraintOutput -> String -- List (String, String)
updateConstraintOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "constraintDetail" "" -- val.constraintDetail
        
    --     |> Dict.insert
    --         "constraintParameters" "" -- val.constraintParameters
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updatePortfol
-}
type alias UpdatePortfolioOutput =
    { portfolioDetail : Maybe PortfolioDetail
    , tags : Maybe (List Tag)
    }



updatePortfolioOutputDecoder : JD.Decoder UpdatePortfolioOutput
updatePortfolioOutputDecoder =
    JD.succeed UpdatePortfolioOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["PortfolioDetail", "portfolioDetail"]
            portfolioDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        




updatePortfolioOutputToString : UpdatePortfolioOutput -> String -- List (String, String)
updatePortfolioOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "portfolioDetail" "" -- val.portfolioDetail
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateProdu
-}
type alias UpdateProductOutput =
    { productViewDetail : Maybe ProductViewDetail
    , tags : Maybe (List Tag)
    }



updateProductOutputDecoder : JD.Decoder UpdateProductOutput
updateProductOutputDecoder =
    JD.succeed UpdateProductOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProductViewDetail", "productViewDetail"]
            productViewDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (JD.list tagDecoder)
        )
        




updateProductOutputToString : UpdateProductOutput -> String -- List (String, String)
updateProductOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "productViewDetail" "" -- val.productViewDetail
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateProvisionedProdu
-}
type alias UpdateProvisionedProductOutput =
    { recordDetail : Maybe RecordDetail
    }



updateProvisionedProductOutputDecoder : JD.Decoder UpdateProvisionedProductOutput
updateProvisionedProductOutputDecoder =
    JD.succeed UpdateProvisionedProductOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordDetail", "recordDetail"]
            recordDetailDecoder
        )
        




updateProvisionedProductOutputToString : UpdateProvisionedProductOutput -> String -- List (String, String)
updateProvisionedProductOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "recordDetail" "" -- val.recordDetail
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateProvisionedProductProperti
-}
type alias UpdateProvisionedProductPropertiesOutput =
    { provisionedProductId : Maybe String
    , provisionedProductProperties : Maybe (Dict String String)
    , recordId : Maybe String
    , status : Maybe RecordStatus
    }



updateProvisionedProductPropertiesOutputDecoder : JD.Decoder UpdateProvisionedProductPropertiesOutput
updateProvisionedProductPropertiesOutputDecoder =
    JD.succeed UpdateProvisionedProductPropertiesOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionedProductId", "provisionedProductId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisionedProductProperties", "provisionedProductProperties"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["RecordId", "recordId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            recordStatusDecoder
        )
        




updateProvisionedProductPropertiesOutputToString : UpdateProvisionedProductPropertiesOutput -> String -- List (String, String)
updateProvisionedProductPropertiesOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "provisionedProductId" "" -- val.provisionedProductId
        
    --     |> Dict.insert
    --         "provisionedProductProperties" "" -- val.provisionedProductProperties
        
    --     |> Dict.insert
    --         "recordId" "" -- val.recordId
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateProvisioningArtifa
-}
type alias UpdateProvisioningArtifactOutput =
    { provisioningArtifactDetail : Maybe ProvisioningArtifactDetail
    , info : Maybe (Dict String String)
    , status : Maybe Status
    }



updateProvisioningArtifactOutputDecoder : JD.Decoder UpdateProvisioningArtifactOutput
updateProvisioningArtifactOutputDecoder =
    JD.succeed UpdateProvisioningArtifactOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ProvisioningArtifactDetail", "provisioningArtifactDetail"]
            provisioningArtifactDetailDecoder
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Info", "info"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Status", "status"]
            statusDecoder
        )
        




updateProvisioningArtifactOutputToString : UpdateProvisioningArtifactOutput -> String -- List (String, String)
updateProvisioningArtifactOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "provisioningArtifactDetail" "" -- val.provisioningArtifactDetail
        
    --     |> Dict.insert
    --         "info" "" -- val.info
        
    --     |> Dict.insert
    --         "status" "" -- val.status
        
    --     |> Dict.toList
    ""



{-| <p>The parameter key-value pair used to update a provisioned product.</p>
-}
type alias UpdateProvisioningParameter =
    { key : Maybe String
    , value : Maybe String
    , usePreviousValue : Maybe Bool
    }



updateProvisioningParameterDecoder : JD.Decoder UpdateProvisioningParameter
updateProvisioningParameterDecoder =
    JD.succeed UpdateProvisioningParameter
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Key", "key"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["UsePreviousValue", "usePreviousValue"]
            JD.bool
        )
        




updateProvisioningParameterToString : UpdateProvisioningParameter -> String -- List (String, String)
updateProvisioningParameterToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "key" "" -- val.key
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.insert
    --         "usePreviousValue" "" -- val.usePreviousValue
        
    --     |> Dict.toList
    ""



{-| <p>The user-defined preferences that will be applied when updating a provisioned product. Not all preferences are applicable to all provisioned product types.</p>
-}
type alias UpdateProvisioningPreferences =
    { stackSetAccounts : Maybe (List String)
    , stackSetRegions : Maybe (List String)
    , stackSetFailureToleranceCount : Maybe Int
    , stackSetFailureTolerancePercentage : Maybe Int
    , stackSetMaxConcurrencyCount : Maybe Int
    , stackSetMaxConcurrencyPercentage : Maybe Int
    , stackSetOperationType : Maybe StackSetOperationType
    }



updateProvisioningPreferencesDecoder : JD.Decoder UpdateProvisioningPreferences
updateProvisioningPreferencesDecoder =
    JD.succeed UpdateProvisioningPreferences
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetAccounts", "stackSetAccounts"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetRegions", "stackSetRegions"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetFailureToleranceCount", "stackSetFailureToleranceCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetFailureTolerancePercentage", "stackSetFailureTolerancePercentage"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetMaxConcurrencyCount", "stackSetMaxConcurrencyCount"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetMaxConcurrencyPercentage", "stackSetMaxConcurrencyPercentage"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StackSetOperationType", "stackSetOperationType"]
            stackSetOperationTypeDecoder
        )
        




updateProvisioningPreferencesToString : UpdateProvisioningPreferences -> String -- List (String, String)
updateProvisioningPreferencesToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stackSetAccounts" "" -- val.stackSetAccounts
        
    --     |> Dict.insert
    --         "stackSetRegions" "" -- val.stackSetRegions
        
    --     |> Dict.insert
    --         "stackSetFailureToleranceCount" "" -- val.stackSetFailureToleranceCount
        
    --     |> Dict.insert
    --         "stackSetFailureTolerancePercentage" "" -- val.stackSetFailureTolerancePercentage
        
    --     |> Dict.insert
    --         "stackSetMaxConcurrencyCount" "" -- val.stackSetMaxConcurrencyCount
        
    --     |> Dict.insert
    --         "stackSetMaxConcurrencyPercentage" "" -- val.stackSetMaxConcurrencyPercentage
        
    --     |> Dict.insert
    --         "stackSetOperationType" "" -- val.stackSetOperationType
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateServiceActi
-}
type alias UpdateServiceActionOutput =
    { serviceActionDetail : Maybe ServiceActionDetail
    }



updateServiceActionOutputDecoder : JD.Decoder UpdateServiceActionOutput
updateServiceActionOutputDecoder =
    JD.succeed UpdateServiceActionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ServiceActionDetail", "serviceActionDetail"]
            serviceActionDetailDecoder
        )
        




updateServiceActionOutputToString : UpdateServiceActionOutput -> String -- List (String, String)
updateServiceActionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "serviceActionDetail" "" -- val.serviceActionDetail
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from updateTagOpti
-}
type alias UpdateTagOptionOutput =
    { tagOptionDetail : Maybe TagOptionDetail
    }



updateTagOptionOutputDecoder : JD.Decoder UpdateTagOptionOutput
updateTagOptionOutputDecoder =
    JD.succeed UpdateTagOptionOutput
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["TagOptionDetail", "tagOptionDetail"]
            tagOptionDetailDecoder
        )
        




updateTagOptionOutputToString : UpdateTagOptionOutput -> String -- List (String, String)
updateTagOptionOutputToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tagOptionDetail" "" -- val.tagOptionDetail
        
    --     |> Dict.toList
    ""



{-| <p>Additional information provided by the administrator.</p>
-}
type alias UsageInstruction =
    { type_ : Maybe String
    , value : Maybe String
    }



usageInstructionDecoder : JD.Decoder UsageInstruction
usageInstructionDecoder =
    JD.succeed UsageInstruction
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Type", "type"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Value", "value"]
            JD.string
        )
        




usageInstructionToString : UsageInstruction -> String -- List (String, String)
usageInstructionToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "type_" "" -- val.type_
        
    --     |> Dict.insert
    --         "value" "" -- val.value
        
    --     |> Dict.toList
    ""






{-| undefined
-}
type alias AcceptPortfolioShareInput =
    { acceptLanguage : Maybe String
    , portfolioId : String
    , portfolioShareType : Maybe PortfolioShareType
    }


{-| undefined
-}
type alias AssociateBudgetWithResourceInput =
    { budgetName : String
    , resourceId : String
    }


{-| undefined
-}
type alias AssociatePrincipalWithPortfolioInput =
    { acceptLanguage : Maybe String
    , portfolioId : String
    , principalARN : String
    , principalType : PrincipalType
    }


{-| undefined
-}
type alias AssociateProductWithPortfolioInput =
    { acceptLanguage : Maybe String
    , productId : String
    , portfolioId : String
    , sourcePortfolioId : Maybe String
    }


{-| undefined
-}
type alias AssociateServiceActionWithProvisioningArtifactInput =
    { productId : String
    , provisioningArtifactId : String
    , serviceActionId : String
    , acceptLanguage : Maybe String
    }


{-| undefined
-}
type alias AssociateTagOptionWithResourceInput =
    { resourceId : String
    , tagOptionId : String
    }


{-| undefined
-}
type alias BatchAssociateServiceActionWithProvisioningArtifactInput =
    { serviceActionAssociations : (List ServiceActionAssociation)
    , acceptLanguage : Maybe String
    }


{-| undefined
-}
type alias BatchDisassociateServiceActionFromProvisioningArtifactInput =
    { serviceActionAssociations : (List ServiceActionAssociation)
    , acceptLanguage : Maybe String
    }


{-| undefined
-}
type alias CopyProductInput =
    { acceptLanguage : Maybe String
    , sourceProductArn : String
    , targetProductId : Maybe String
    , targetProductName : Maybe String
    , sourceProvisioningArtifactIdentifiers : Maybe (List (Dict String String))
    , copyOptions : Maybe (List CopyOption)
    , idempotencyToken : String
    }


{-| undefined
-}
type alias CreateConstraintInput =
    { acceptLanguage : Maybe String
    , portfolioId : String
    , productId : String
    , parameters : String
    , type_ : String
    , description : Maybe String
    , idempotencyToken : String
    }


{-| undefined
-}
type alias CreatePortfolioInput =
    { acceptLanguage : Maybe String
    , displayName : String
    , description : Maybe String
    , providerName : String
    , tags : Maybe (List Tag)
    , idempotencyToken : String
    }


{-| undefined
-}
type alias CreatePortfolioShareInput =
    { acceptLanguage : Maybe String
    , portfolioId : String
    , accountId : Maybe String
    , organizationNode : Maybe OrganizationNode
    }


{-| undefined
-}
type alias CreateProductInput =
    { acceptLanguage : Maybe String
    , name : String
    , owner : String
    , description : Maybe String
    , distributor : Maybe String
    , supportDescription : Maybe String
    , supportEmail : Maybe String
    , supportUrl : Maybe String
    , productType : ProductType
    , tags : Maybe (List Tag)
    , provisioningArtifactParameters : ProvisioningArtifactProperties
    , idempotencyToken : String
    }


{-| undefined
-}
type alias CreateProvisionedProductPlanInput =
    { acceptLanguage : Maybe String
    , planName : String
    , planType : ProvisionedProductPlanType
    , notificationArns : Maybe (List String)
    , pathId : Maybe String
    , productId : String
    , provisionedProductName : String
    , provisioningArtifactId : String
    , provisioningParameters : Maybe (List UpdateProvisioningParameter)
    , idempotencyToken : String
    , tags : Maybe (List Tag)
    }


{-| undefined
-}
type alias CreateProvisioningArtifactInput =
    { acceptLanguage : Maybe String
    , productId : String
    , parameters : ProvisioningArtifactProperties
    , idempotencyToken : String
    }


{-| undefined
-}
type alias CreateServiceActionInput =
    { name : String
    , definitionType : ServiceActionDefinitionType
    , definition : (Dict String String)
    , description : Maybe String
    , acceptLanguage : Maybe String
    , idempotencyToken : String
    }


{-| undefined
-}
type alias CreateTagOptionInput =
    { key : String
    , value : String
    }


{-| undefined
-}
type alias DeleteConstraintInput =
    { acceptLanguage : Maybe String
    , id : String
    }


{-| undefined
-}
type alias DeletePortfolioInput =
    { acceptLanguage : Maybe String
    , id : String
    }


{-| undefined
-}
type alias DeletePortfolioShareInput =
    { acceptLanguage : Maybe String
    , portfolioId : String
    , accountId : Maybe String
    , organizationNode : Maybe OrganizationNode
    }


{-| undefined
-}
type alias DeleteProductInput =
    { acceptLanguage : Maybe String
    , id : String
    }


{-| undefined
-}
type alias DeleteProvisionedProductPlanInput =
    { acceptLanguage : Maybe String
    , planId : String
    , ignoreErrors : Maybe Bool
    }


{-| undefined
-}
type alias DeleteProvisioningArtifactInput =
    { acceptLanguage : Maybe String
    , productId : String
    , provisioningArtifactId : String
    }


{-| undefined
-}
type alias DeleteServiceActionInput =
    { id : String
    , acceptLanguage : Maybe String
    }


{-| undefined
-}
type alias DeleteTagOptionInput =
    { id : String
    }


{-| undefined
-}
type alias DescribeConstraintInput =
    { acceptLanguage : Maybe String
    , id : String
    }


{-| undefined
-}
type alias DescribeCopyProductStatusInput =
    { acceptLanguage : Maybe String
    , copyProductToken : String
    }


{-| undefined
-}
type alias DescribePortfolioInput =
    { acceptLanguage : Maybe String
    , id : String
    }


{-| undefined
-}
type alias DescribePortfolioShareStatusInput =
    { portfolioShareToken : String
    }


{-| undefined
-}
type alias DescribeProductAsAdminInput =
    { acceptLanguage : Maybe String
    , id : String
    }


{-| undefined
-}
type alias DescribeProductInput =
    { acceptLanguage : Maybe String
    , id : String
    }


{-| undefined
-}
type alias DescribeProductViewInput =
    { acceptLanguage : Maybe String
    , id : String
    }


{-| undefined
-}
type alias DescribeProvisionedProductInput =
    { acceptLanguage : Maybe String
    , id : String
    }


{-| undefined
-}
type alias DescribeProvisionedProductPlanInput =
    { acceptLanguage : Maybe String
    , planId : String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias DescribeProvisioningArtifactInput =
    { acceptLanguage : Maybe String
    , provisioningArtifactId : String
    , productId : String
    , verbose : Maybe Bool
    }


{-| undefined
-}
type alias DescribeProvisioningParametersInput =
    { acceptLanguage : Maybe String
    , productId : String
    , provisioningArtifactId : String
    , pathId : Maybe String
    }


{-| undefined
-}
type alias DescribeRecordInput =
    { acceptLanguage : Maybe String
    , id : String
    , pageToken : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias DescribeServiceActionExecutionParametersInput =
    { provisionedProductId : String
    , serviceActionId : String
    , acceptLanguage : Maybe String
    }


{-| undefined
-}
type alias DescribeServiceActionInput =
    { id : String
    , acceptLanguage : Maybe String
    }


{-| undefined
-}
type alias DescribeTagOptionInput =
    { id : String
    }


{-| undefined
-}
type alias DisableAWSOrganizationsAccessInput =
    { 
    }


{-| undefined
-}
type alias DisassociateBudgetFromResourceInput =
    { budgetName : String
    , resourceId : String
    }


{-| undefined
-}
type alias DisassociatePrincipalFromPortfolioInput =
    { acceptLanguage : Maybe String
    , portfolioId : String
    , principalARN : String
    }


{-| undefined
-}
type alias DisassociateProductFromPortfolioInput =
    { acceptLanguage : Maybe String
    , productId : String
    , portfolioId : String
    }


{-| undefined
-}
type alias DisassociateServiceActionFromProvisioningArtifactInput =
    { productId : String
    , provisioningArtifactId : String
    , serviceActionId : String
    , acceptLanguage : Maybe String
    }


{-| undefined
-}
type alias DisassociateTagOptionFromResourceInput =
    { resourceId : String
    , tagOptionId : String
    }


{-| undefined
-}
type alias EnableAWSOrganizationsAccessInput =
    { 
    }


{-| undefined
-}
type alias ExecuteProvisionedProductPlanInput =
    { acceptLanguage : Maybe String
    , planId : String
    , idempotencyToken : String
    }


{-| undefined
-}
type alias ExecuteProvisionedProductServiceActionInput =
    { provisionedProductId : String
    , serviceActionId : String
    , executeToken : String
    , acceptLanguage : Maybe String
    , parameters : Maybe (Dict String (List String))
    }


{-| undefined
-}
type alias GetAWSOrganizationsAccessStatusInput =
    { 
    }


{-| undefined
-}
type alias ListAcceptedPortfolioSharesInput =
    { acceptLanguage : Maybe String
    , pageToken : Maybe String
    , pageSize : Maybe Int
    , portfolioShareType : Maybe PortfolioShareType
    }


{-| undefined
-}
type alias ListBudgetsForResourceInput =
    { acceptLanguage : Maybe String
    , resourceId : String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias ListConstraintsForPortfolioInput =
    { acceptLanguage : Maybe String
    , portfolioId : String
    , productId : Maybe String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias ListLaunchPathsInput =
    { acceptLanguage : Maybe String
    , productId : String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias ListOrganizationPortfolioAccessInput =
    { acceptLanguage : Maybe String
    , portfolioId : String
    , organizationNodeType : OrganizationNodeType
    , pageToken : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias ListPortfolioAccessInput =
    { acceptLanguage : Maybe String
    , portfolioId : String
    }


{-| undefined
-}
type alias ListPortfoliosForProductInput =
    { acceptLanguage : Maybe String
    , productId : String
    , pageToken : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias ListPortfoliosInput =
    { acceptLanguage : Maybe String
    , pageToken : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias ListPrincipalsForPortfolioInput =
    { acceptLanguage : Maybe String
    , portfolioId : String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias ListProvisionedProductPlansInput =
    { acceptLanguage : Maybe String
    , provisionProductId : Maybe String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    , accessLevelFilter : Maybe AccessLevelFilter
    }


{-| undefined
-}
type alias ListProvisioningArtifactsForServiceActionInput =
    { serviceActionId : String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    , acceptLanguage : Maybe String
    }


{-| undefined
-}
type alias ListProvisioningArtifactsInput =
    { acceptLanguage : Maybe String
    , productId : String
    }


{-| undefined
-}
type alias ListRecordHistoryInput =
    { acceptLanguage : Maybe String
    , accessLevelFilter : Maybe AccessLevelFilter
    , searchFilter : Maybe ListRecordHistorySearchFilter
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias ListResourcesForTagOptionInput =
    { tagOptionId : String
    , resourceType : Maybe String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias ListServiceActionsForProvisioningArtifactInput =
    { productId : String
    , provisioningArtifactId : String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    , acceptLanguage : Maybe String
    }


{-| undefined
-}
type alias ListServiceActionsInput =
    { acceptLanguage : Maybe String
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias ListStackInstancesForProvisionedProductInput =
    { acceptLanguage : Maybe String
    , provisionedProductId : String
    , pageToken : Maybe String
    , pageSize : Maybe Int
    }


{-| undefined
-}
type alias ListTagOptionsInput =
    { filters : Maybe ListTagOptionsFilters
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias ProvisionProductInput =
    { acceptLanguage : Maybe String
    , productId : String
    , provisioningArtifactId : String
    , pathId : Maybe String
    , provisionedProductName : String
    , provisioningParameters : Maybe (List ProvisioningParameter)
    , provisioningPreferences : Maybe ProvisioningPreferences
    , tags : Maybe (List Tag)
    , notificationArns : Maybe (List String)
    , provisionToken : String
    }


{-| undefined
-}
type alias RejectPortfolioShareInput =
    { acceptLanguage : Maybe String
    , portfolioId : String
    , portfolioShareType : Maybe PortfolioShareType
    }


{-| undefined
-}
type alias ScanProvisionedProductsInput =
    { acceptLanguage : Maybe String
    , accessLevelFilter : Maybe AccessLevelFilter
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias SearchProductsAsAdminInput =
    { acceptLanguage : Maybe String
    , portfolioId : Maybe String
    , filters : Maybe (Dict String (List String))
    , sortBy : Maybe ProductViewSortBy
    , sortOrder : Maybe SortOrder
    , pageToken : Maybe String
    , pageSize : Maybe Int
    , productSource : Maybe ProductSource
    }


{-| undefined
-}
type alias SearchProductsInput =
    { acceptLanguage : Maybe String
    , filters : Maybe (Dict String (List String))
    , pageSize : Maybe Int
    , sortBy : Maybe ProductViewSortBy
    , sortOrder : Maybe SortOrder
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias SearchProvisionedProductsInput =
    { acceptLanguage : Maybe String
    , accessLevelFilter : Maybe AccessLevelFilter
    , filters : Maybe (Dict String (List String))
    , sortBy : Maybe String
    , sortOrder : Maybe SortOrder
    , pageSize : Maybe Int
    , pageToken : Maybe String
    }


{-| undefined
-}
type alias TerminateProvisionedProductInput =
    { provisionedProductName : Maybe String
    , provisionedProductId : Maybe String
    , terminateToken : String
    , ignoreErrors : Maybe Bool
    , acceptLanguage : Maybe String
    }


{-| undefined
-}
type alias UpdateConstraintInput =
    { acceptLanguage : Maybe String
    , id : String
    , description : Maybe String
    , parameters : Maybe String
    }


{-| undefined
-}
type alias UpdatePortfolioInput =
    { acceptLanguage : Maybe String
    , id : String
    , displayName : Maybe String
    , description : Maybe String
    , providerName : Maybe String
    , addTags : Maybe (List Tag)
    , removeTags : Maybe (List String)
    }


{-| undefined
-}
type alias UpdateProductInput =
    { acceptLanguage : Maybe String
    , id : String
    , name : Maybe String
    , owner : Maybe String
    , description : Maybe String
    , distributor : Maybe String
    , supportDescription : Maybe String
    , supportEmail : Maybe String
    , supportUrl : Maybe String
    , addTags : Maybe (List Tag)
    , removeTags : Maybe (List String)
    }


{-| undefined
-}
type alias UpdateProvisionedProductInput =
    { acceptLanguage : Maybe String
    , provisionedProductName : Maybe String
    , provisionedProductId : Maybe String
    , productId : Maybe String
    , provisioningArtifactId : Maybe String
    , pathId : Maybe String
    , provisioningParameters : Maybe (List UpdateProvisioningParameter)
    , provisioningPreferences : Maybe UpdateProvisioningPreferences
    , tags : Maybe (List Tag)
    , updateToken : String
    }


{-| undefined
-}
type alias UpdateProvisionedProductPropertiesInput =
    { acceptLanguage : Maybe String
    , provisionedProductId : String
    , provisionedProductProperties : (Dict String String)
    , idempotencyToken : String
    }


{-| undefined
-}
type alias UpdateProvisioningArtifactInput =
    { acceptLanguage : Maybe String
    , productId : String
    , provisioningArtifactId : String
    , name : Maybe String
    , description : Maybe String
    , active : Maybe Bool
    , guidance : Maybe ProvisioningArtifactGuidance
    }


{-| undefined
-}
type alias UpdateServiceActionInput =
    { id : String
    , name : Maybe String
    , definition : Maybe (Dict String String)
    , description : Maybe String
    , acceptLanguage : Maybe String
    }


{-| undefined
-}
type alias UpdateTagOptionInput =
    { id : String
    , value : Maybe String
    , active : Maybe Bool
    }






acceptPortfolioShareInputEncoder : AcceptPortfolioShareInput -> JE.Value
acceptPortfolioShareInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (portfolioShareTypeToString >> JE.string)
            ("PortfolioShareType", data.portfolioShareType)
        
        
        |> JE.object






acceptPortfolioShareOutputEncoder : AcceptPortfolioShareOutput -> JE.Value
acceptPortfolioShareOutputEncoder data =
    []
        
        |> JE.object






accessLevelFilterEncoder : AccessLevelFilter -> JE.Value
accessLevelFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (accessLevelFilterKeyToString >> JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object














associateBudgetWithResourceInputEncoder : AssociateBudgetWithResourceInput -> JE.Value
associateBudgetWithResourceInputEncoder data =
    []
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        |> JE.object






associateBudgetWithResourceOutputEncoder : AssociateBudgetWithResourceOutput -> JE.Value
associateBudgetWithResourceOutputEncoder data =
    []
        
        |> JE.object






associatePrincipalWithPortfolioInputEncoder : AssociatePrincipalWithPortfolioInput -> JE.Value
associatePrincipalWithPortfolioInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        
        |> (::) ("PrincipalARN", data.principalARN |> (JE.string))
        
        
        
        |> (::) ("PrincipalType", data.principalType |> (principalTypeToString >> JE.string))
        
        
        |> JE.object






associatePrincipalWithPortfolioOutputEncoder : AssociatePrincipalWithPortfolioOutput -> JE.Value
associatePrincipalWithPortfolioOutputEncoder data =
    []
        
        |> JE.object






associateProductWithPortfolioInputEncoder : AssociateProductWithPortfolioInput -> JE.Value
associateProductWithPortfolioInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SourcePortfolioId", data.sourcePortfolioId)
        
        
        |> JE.object






associateProductWithPortfolioOutputEncoder : AssociateProductWithPortfolioOutput -> JE.Value
associateProductWithPortfolioOutputEncoder data =
    []
        
        |> JE.object






associateServiceActionWithProvisioningArtifactInputEncoder : AssociateServiceActionWithProvisioningArtifactInput -> JE.Value
associateServiceActionWithProvisioningArtifactInputEncoder data =
    []
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("ProvisioningArtifactId", data.provisioningArtifactId |> (JE.string))
        
        
        
        |> (::) ("ServiceActionId", data.serviceActionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        |> JE.object






associateServiceActionWithProvisioningArtifactOutputEncoder : AssociateServiceActionWithProvisioningArtifactOutput -> JE.Value
associateServiceActionWithProvisioningArtifactOutputEncoder data =
    []
        
        |> JE.object






associateTagOptionWithResourceInputEncoder : AssociateTagOptionWithResourceInput -> JE.Value
associateTagOptionWithResourceInputEncoder data =
    []
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("TagOptionId", data.tagOptionId |> (JE.string))
        
        
        |> JE.object






associateTagOptionWithResourceOutputEncoder : AssociateTagOptionWithResourceOutput -> JE.Value
associateTagOptionWithResourceOutputEncoder data =
    []
        
        |> JE.object






batchAssociateServiceActionWithProvisioningArtifactInputEncoder : BatchAssociateServiceActionWithProvisioningArtifactInput -> JE.Value
batchAssociateServiceActionWithProvisioningArtifactInputEncoder data =
    []
        
        
        |> (::) ("ServiceActionAssociations", data.serviceActionAssociations |> (JE.list (serviceActionAssociationEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        |> JE.object






batchAssociateServiceActionWithProvisioningArtifactOutputEncoder : BatchAssociateServiceActionWithProvisioningArtifactOutput -> JE.Value
batchAssociateServiceActionWithProvisioningArtifactOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (failedServiceActionAssociationEncoder))
            ("FailedServiceActionAssociations", data.failedServiceActionAssociations)
        
        
        |> JE.object






batchDisassociateServiceActionFromProvisioningArtifactInputEncoder : BatchDisassociateServiceActionFromProvisioningArtifactInput -> JE.Value
batchDisassociateServiceActionFromProvisioningArtifactInputEncoder data =
    []
        
        
        |> (::) ("ServiceActionAssociations", data.serviceActionAssociations |> (JE.list (serviceActionAssociationEncoder)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        |> JE.object






batchDisassociateServiceActionFromProvisioningArtifactOutputEncoder : BatchDisassociateServiceActionFromProvisioningArtifactOutput -> JE.Value
batchDisassociateServiceActionFromProvisioningArtifactOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (failedServiceActionAssociationEncoder))
            ("FailedServiceActionAssociations", data.failedServiceActionAssociations)
        
        
        |> JE.object






budgetDetailEncoder : BudgetDetail -> JE.Value
budgetDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("BudgetName", data.budgetName)
        
        
        |> JE.object










cloudWatchDashboardEncoder : CloudWatchDashboard -> JE.Value
cloudWatchDashboardEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






constraintDetailEncoder : ConstraintDetail -> JE.Value
constraintDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConstraintId", data.constraintId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Owner", data.owner)
        
        
        |> JE.object






constraintSummaryEncoder : ConstraintSummary -> JE.Value
constraintSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        |> JE.object










copyProductInputEncoder : CopyProductInput -> JE.Value
copyProductInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("SourceProductArn", data.sourceProductArn |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TargetProductId", data.targetProductId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TargetProductName", data.targetProductName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.dict identity (JE.string)))
            ("SourceProvisioningArtifactIdentifiers", data.sourceProvisioningArtifactIdentifiers)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (copyOptionToString >> JE.string))
            ("CopyOptions", data.copyOptions)
        
        
        
        |> (::) ("IdempotencyToken", data.idempotencyToken |> (JE.string))
        
        
        |> JE.object






copyProductOutputEncoder : CopyProductOutput -> JE.Value
copyProductOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CopyProductToken", data.copyProductToken)
        
        
        |> JE.object










createConstraintInputEncoder : CreateConstraintInput -> JE.Value
createConstraintInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("Parameters", data.parameters |> (JE.string))
        
        
        
        |> (::) ("Type", data.type_ |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> (::) ("IdempotencyToken", data.idempotencyToken |> (JE.string))
        
        
        |> JE.object






createConstraintOutputEncoder : CreateConstraintOutput -> JE.Value
createConstraintOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (constraintDetailEncoder)
            ("ConstraintDetail", data.constraintDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConstraintParameters", data.constraintParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (statusToString >> JE.string)
            ("Status", data.status)
        
        
        |> JE.object






createPortfolioInputEncoder : CreatePortfolioInput -> JE.Value
createPortfolioInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("DisplayName", data.displayName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> (::) ("ProviderName", data.providerName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        
        |> (::) ("IdempotencyToken", data.idempotencyToken |> (JE.string))
        
        
        |> JE.object






createPortfolioOutputEncoder : CreatePortfolioOutput -> JE.Value
createPortfolioOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (portfolioDetailEncoder)
            ("PortfolioDetail", data.portfolioDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






createPortfolioShareInputEncoder : CreatePortfolioShareInput -> JE.Value
createPortfolioShareInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AccountId", data.accountId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (organizationNodeEncoder)
            ("OrganizationNode", data.organizationNode)
        
        
        |> JE.object






createPortfolioShareOutputEncoder : CreatePortfolioShareOutput -> JE.Value
createPortfolioShareOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PortfolioShareToken", data.portfolioShareToken)
        
        
        |> JE.object






createProductInputEncoder : CreateProductInput -> JE.Value
createProductInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("Owner", data.owner |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Distributor", data.distributor)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SupportDescription", data.supportDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SupportEmail", data.supportEmail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SupportUrl", data.supportUrl)
        
        
        
        |> (::) ("ProductType", data.productType |> (productTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        
        |> (::) ("ProvisioningArtifactParameters", data.provisioningArtifactParameters |> (provisioningArtifactPropertiesEncoder))
        
        
        
        |> (::) ("IdempotencyToken", data.idempotencyToken |> (JE.string))
        
        
        |> JE.object






createProductOutputEncoder : CreateProductOutput -> JE.Value
createProductOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (productViewDetailEncoder)
            ("ProductViewDetail", data.productViewDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisioningArtifactDetailEncoder)
            ("ProvisioningArtifactDetail", data.provisioningArtifactDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






createProvisionedProductPlanInputEncoder : CreateProvisionedProductPlanInput -> JE.Value
createProvisionedProductPlanInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PlanName", data.planName |> (JE.string))
        
        
        
        |> (::) ("PlanType", data.planType |> (provisionedProductPlanTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("NotificationArns", data.notificationArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PathId", data.pathId)
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("ProvisionedProductName", data.provisionedProductName |> (JE.string))
        
        
        
        |> (::) ("ProvisioningArtifactId", data.provisioningArtifactId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (updateProvisioningParameterEncoder))
            ("ProvisioningParameters", data.provisioningParameters)
        
        
        
        |> (::) ("IdempotencyToken", data.idempotencyToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






createProvisionedProductPlanOutputEncoder : CreateProvisionedProductPlanOutput -> JE.Value
createProvisionedProductPlanOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlanName", data.planName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlanId", data.planId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionProductId", data.provisionProductId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionedProductName", data.provisionedProductName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisioningArtifactId", data.provisioningArtifactId)
        
        
        |> JE.object






createProvisioningArtifactInputEncoder : CreateProvisioningArtifactInput -> JE.Value
createProvisioningArtifactInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("Parameters", data.parameters |> (provisioningArtifactPropertiesEncoder))
        
        
        
        |> (::) ("IdempotencyToken", data.idempotencyToken |> (JE.string))
        
        
        |> JE.object






createProvisioningArtifactOutputEncoder : CreateProvisioningArtifactOutput -> JE.Value
createProvisioningArtifactOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (provisioningArtifactDetailEncoder)
            ("ProvisioningArtifactDetail", data.provisioningArtifactDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Info", data.info)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (statusToString >> JE.string)
            ("Status", data.status)
        
        
        |> JE.object






createServiceActionInputEncoder : CreateServiceActionInput -> JE.Value
createServiceActionInputEncoder data =
    []
        
        
        |> (::) ("Name", data.name |> (JE.string))
        
        
        
        |> (::) ("DefinitionType", data.definitionType |> (serviceActionDefinitionTypeToString >> JE.string))
        
        
        
        |> (::) ("Definition", data.definition |> (JE.dict identity (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("IdempotencyToken", data.idempotencyToken |> (JE.string))
        
        
        |> JE.object






createServiceActionOutputEncoder : CreateServiceActionOutput -> JE.Value
createServiceActionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (serviceActionDetailEncoder)
            ("ServiceActionDetail", data.serviceActionDetail)
        
        
        |> JE.object






createTagOptionInputEncoder : CreateTagOptionInput -> JE.Value
createTagOptionInputEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        |> JE.object






createTagOptionOutputEncoder : CreateTagOptionOutput -> JE.Value
createTagOptionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (tagOptionDetailEncoder)
            ("TagOptionDetail", data.tagOptionDetail)
        
        
        |> JE.object






deleteConstraintInputEncoder : DeleteConstraintInput -> JE.Value
deleteConstraintInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        |> JE.object






deleteConstraintOutputEncoder : DeleteConstraintOutput -> JE.Value
deleteConstraintOutputEncoder data =
    []
        
        |> JE.object






deletePortfolioInputEncoder : DeletePortfolioInput -> JE.Value
deletePortfolioInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        |> JE.object






deletePortfolioOutputEncoder : DeletePortfolioOutput -> JE.Value
deletePortfolioOutputEncoder data =
    []
        
        |> JE.object






deletePortfolioShareInputEncoder : DeletePortfolioShareInput -> JE.Value
deletePortfolioShareInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AccountId", data.accountId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (organizationNodeEncoder)
            ("OrganizationNode", data.organizationNode)
        
        
        |> JE.object






deletePortfolioShareOutputEncoder : DeletePortfolioShareOutput -> JE.Value
deletePortfolioShareOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PortfolioShareToken", data.portfolioShareToken)
        
        
        |> JE.object






deleteProductInputEncoder : DeleteProductInput -> JE.Value
deleteProductInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        |> JE.object






deleteProductOutputEncoder : DeleteProductOutput -> JE.Value
deleteProductOutputEncoder data =
    []
        
        |> JE.object






deleteProvisionedProductPlanInputEncoder : DeleteProvisionedProductPlanInput -> JE.Value
deleteProvisionedProductPlanInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PlanId", data.planId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IgnoreErrors", data.ignoreErrors)
        
        
        |> JE.object






deleteProvisionedProductPlanOutputEncoder : DeleteProvisionedProductPlanOutput -> JE.Value
deleteProvisionedProductPlanOutputEncoder data =
    []
        
        |> JE.object






deleteProvisioningArtifactInputEncoder : DeleteProvisioningArtifactInput -> JE.Value
deleteProvisioningArtifactInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("ProvisioningArtifactId", data.provisioningArtifactId |> (JE.string))
        
        
        |> JE.object






deleteProvisioningArtifactOutputEncoder : DeleteProvisioningArtifactOutput -> JE.Value
deleteProvisioningArtifactOutputEncoder data =
    []
        
        |> JE.object






deleteServiceActionInputEncoder : DeleteServiceActionInput -> JE.Value
deleteServiceActionInputEncoder data =
    []
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        |> JE.object






deleteServiceActionOutputEncoder : DeleteServiceActionOutput -> JE.Value
deleteServiceActionOutputEncoder data =
    []
        
        |> JE.object






deleteTagOptionInputEncoder : DeleteTagOptionInput -> JE.Value
deleteTagOptionInputEncoder data =
    []
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        |> JE.object






deleteTagOptionOutputEncoder : DeleteTagOptionOutput -> JE.Value
deleteTagOptionOutputEncoder data =
    []
        
        |> JE.object






describeConstraintInputEncoder : DescribeConstraintInput -> JE.Value
describeConstraintInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        |> JE.object






describeConstraintOutputEncoder : DescribeConstraintOutput -> JE.Value
describeConstraintOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (constraintDetailEncoder)
            ("ConstraintDetail", data.constraintDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConstraintParameters", data.constraintParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (statusToString >> JE.string)
            ("Status", data.status)
        
        
        |> JE.object






describeCopyProductStatusInputEncoder : DescribeCopyProductStatusInput -> JE.Value
describeCopyProductStatusInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("CopyProductToken", data.copyProductToken |> (JE.string))
        
        
        |> JE.object






describeCopyProductStatusOutputEncoder : DescribeCopyProductStatusOutput -> JE.Value
describeCopyProductStatusOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (copyProductStatusToString >> JE.string)
            ("CopyProductStatus", data.copyProductStatus)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("TargetProductId", data.targetProductId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusDetail", data.statusDetail)
        
        
        |> JE.object






describePortfolioInputEncoder : DescribePortfolioInput -> JE.Value
describePortfolioInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        |> JE.object






describePortfolioOutputEncoder : DescribePortfolioOutput -> JE.Value
describePortfolioOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (portfolioDetailEncoder)
            ("PortfolioDetail", data.portfolioDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagOptionDetailEncoder))
            ("TagOptions", data.tagOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (budgetDetailEncoder))
            ("Budgets", data.budgets)
        
        
        |> JE.object






describePortfolioShareStatusInputEncoder : DescribePortfolioShareStatusInput -> JE.Value
describePortfolioShareStatusInputEncoder data =
    []
        
        
        |> (::) ("PortfolioShareToken", data.portfolioShareToken |> (JE.string))
        
        
        |> JE.object






describePortfolioShareStatusOutputEncoder : DescribePortfolioShareStatusOutput -> JE.Value
describePortfolioShareStatusOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PortfolioShareToken", data.portfolioShareToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PortfolioId", data.portfolioId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("OrganizationNodeValue", data.organizationNodeValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (shareStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (shareDetailsEncoder)
            ("ShareDetails", data.shareDetails)
        
        
        |> JE.object






describeProductAsAdminInputEncoder : DescribeProductAsAdminInput -> JE.Value
describeProductAsAdminInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        |> JE.object






describeProductAsAdminOutputEncoder : DescribeProductAsAdminOutput -> JE.Value
describeProductAsAdminOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (productViewDetailEncoder)
            ("ProductViewDetail", data.productViewDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (provisioningArtifactSummaryEncoder))
            ("ProvisioningArtifactSummaries", data.provisioningArtifactSummaries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagOptionDetailEncoder))
            ("TagOptions", data.tagOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (budgetDetailEncoder))
            ("Budgets", data.budgets)
        
        
        |> JE.object






describeProductInputEncoder : DescribeProductInput -> JE.Value
describeProductInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        |> JE.object






describeProductOutputEncoder : DescribeProductOutput -> JE.Value
describeProductOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (productViewSummaryEncoder)
            ("ProductViewSummary", data.productViewSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (provisioningArtifactEncoder))
            ("ProvisioningArtifacts", data.provisioningArtifacts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (budgetDetailEncoder))
            ("Budgets", data.budgets)
        
        
        |> JE.object






describeProductViewInputEncoder : DescribeProductViewInput -> JE.Value
describeProductViewInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        |> JE.object






describeProductViewOutputEncoder : DescribeProductViewOutput -> JE.Value
describeProductViewOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (productViewSummaryEncoder)
            ("ProductViewSummary", data.productViewSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (provisioningArtifactEncoder))
            ("ProvisioningArtifacts", data.provisioningArtifacts)
        
        
        |> JE.object






describeProvisionedProductInputEncoder : DescribeProvisionedProductInput -> JE.Value
describeProvisionedProductInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        |> JE.object






describeProvisionedProductOutputEncoder : DescribeProvisionedProductOutput -> JE.Value
describeProvisionedProductOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (provisionedProductDetailEncoder)
            ("ProvisionedProductDetail", data.provisionedProductDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (cloudWatchDashboardEncoder))
            ("CloudWatchDashboards", data.cloudWatchDashboards)
        
        
        |> JE.object






describeProvisionedProductPlanInputEncoder : DescribeProvisionedProductPlanInput -> JE.Value
describeProvisionedProductPlanInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PlanId", data.planId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






describeProvisionedProductPlanOutputEncoder : DescribeProvisionedProductPlanOutput -> JE.Value
describeProvisionedProductPlanOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (provisionedProductPlanDetailsEncoder)
            ("ProvisionedProductPlanDetails", data.provisionedProductPlanDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceChangeEncoder))
            ("ResourceChanges", data.resourceChanges)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






describeProvisioningArtifactInputEncoder : DescribeProvisioningArtifactInput -> JE.Value
describeProvisioningArtifactInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProvisioningArtifactId", data.provisioningArtifactId |> (JE.string))
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Verbose", data.verbose)
        
        
        |> JE.object






describeProvisioningArtifactOutputEncoder : DescribeProvisioningArtifactOutput -> JE.Value
describeProvisioningArtifactOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (provisioningArtifactDetailEncoder)
            ("ProvisioningArtifactDetail", data.provisioningArtifactDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Info", data.info)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (statusToString >> JE.string)
            ("Status", data.status)
        
        
        |> JE.object






describeProvisioningParametersInputEncoder : DescribeProvisioningParametersInput -> JE.Value
describeProvisioningParametersInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("ProvisioningArtifactId", data.provisioningArtifactId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PathId", data.pathId)
        
        
        |> JE.object






describeProvisioningParametersOutputEncoder : DescribeProvisioningParametersOutput -> JE.Value
describeProvisioningParametersOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (provisioningArtifactParameterEncoder))
            ("ProvisioningArtifactParameters", data.provisioningArtifactParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (constraintSummaryEncoder))
            ("ConstraintSummaries", data.constraintSummaries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (usageInstructionEncoder))
            ("UsageInstructions", data.usageInstructions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagOptionSummaryEncoder))
            ("TagOptions", data.tagOptions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisioningArtifactPreferencesEncoder)
            ("ProvisioningArtifactPreferences", data.provisioningArtifactPreferences)
        
        
        |> JE.object






describeRecordInputEncoder : DescribeRecordInput -> JE.Value
describeRecordInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        |> JE.object






describeRecordOutputEncoder : DescribeRecordOutput -> JE.Value
describeRecordOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (recordDetailEncoder)
            ("RecordDetail", data.recordDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (recordOutputEncoder))
            ("RecordOutputs", data.recordOutputs)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






describeServiceActionExecutionParametersInputEncoder : DescribeServiceActionExecutionParametersInput -> JE.Value
describeServiceActionExecutionParametersInputEncoder data =
    []
        
        
        |> (::) ("ProvisionedProductId", data.provisionedProductId |> (JE.string))
        
        
        
        |> (::) ("ServiceActionId", data.serviceActionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        |> JE.object






describeServiceActionExecutionParametersOutputEncoder : DescribeServiceActionExecutionParametersOutput -> JE.Value
describeServiceActionExecutionParametersOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (executionParameterEncoder))
            ("ServiceActionParameters", data.serviceActionParameters)
        
        
        |> JE.object






describeServiceActionInputEncoder : DescribeServiceActionInput -> JE.Value
describeServiceActionInputEncoder data =
    []
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        |> JE.object






describeServiceActionOutputEncoder : DescribeServiceActionOutput -> JE.Value
describeServiceActionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (serviceActionDetailEncoder)
            ("ServiceActionDetail", data.serviceActionDetail)
        
        
        |> JE.object






describeTagOptionInputEncoder : DescribeTagOptionInput -> JE.Value
describeTagOptionInputEncoder data =
    []
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        |> JE.object






describeTagOptionOutputEncoder : DescribeTagOptionOutput -> JE.Value
describeTagOptionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (tagOptionDetailEncoder)
            ("TagOptionDetail", data.tagOptionDetail)
        
        
        |> JE.object






disableAWSOrganizationsAccessInputEncoder : DisableAWSOrganizationsAccessInput -> JE.Value
disableAWSOrganizationsAccessInputEncoder data =
    []
        
        |> JE.object






disableAWSOrganizationsAccessOutputEncoder : DisableAWSOrganizationsAccessOutput -> JE.Value
disableAWSOrganizationsAccessOutputEncoder data =
    []
        
        |> JE.object






disassociateBudgetFromResourceInputEncoder : DisassociateBudgetFromResourceInput -> JE.Value
disassociateBudgetFromResourceInputEncoder data =
    []
        
        
        |> (::) ("BudgetName", data.budgetName |> (JE.string))
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        |> JE.object






disassociateBudgetFromResourceOutputEncoder : DisassociateBudgetFromResourceOutput -> JE.Value
disassociateBudgetFromResourceOutputEncoder data =
    []
        
        |> JE.object






disassociatePrincipalFromPortfolioInputEncoder : DisassociatePrincipalFromPortfolioInput -> JE.Value
disassociatePrincipalFromPortfolioInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        
        |> (::) ("PrincipalARN", data.principalARN |> (JE.string))
        
        
        |> JE.object






disassociatePrincipalFromPortfolioOutputEncoder : DisassociatePrincipalFromPortfolioOutput -> JE.Value
disassociatePrincipalFromPortfolioOutputEncoder data =
    []
        
        |> JE.object






disassociateProductFromPortfolioInputEncoder : DisassociateProductFromPortfolioInput -> JE.Value
disassociateProductFromPortfolioInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        |> JE.object






disassociateProductFromPortfolioOutputEncoder : DisassociateProductFromPortfolioOutput -> JE.Value
disassociateProductFromPortfolioOutputEncoder data =
    []
        
        |> JE.object






disassociateServiceActionFromProvisioningArtifactInputEncoder : DisassociateServiceActionFromProvisioningArtifactInput -> JE.Value
disassociateServiceActionFromProvisioningArtifactInputEncoder data =
    []
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("ProvisioningArtifactId", data.provisioningArtifactId |> (JE.string))
        
        
        
        |> (::) ("ServiceActionId", data.serviceActionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        |> JE.object






disassociateServiceActionFromProvisioningArtifactOutputEncoder : DisassociateServiceActionFromProvisioningArtifactOutput -> JE.Value
disassociateServiceActionFromProvisioningArtifactOutputEncoder data =
    []
        
        |> JE.object






disassociateTagOptionFromResourceInputEncoder : DisassociateTagOptionFromResourceInput -> JE.Value
disassociateTagOptionFromResourceInputEncoder data =
    []
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> (::) ("TagOptionId", data.tagOptionId |> (JE.string))
        
        
        |> JE.object






disassociateTagOptionFromResourceOutputEncoder : DisassociateTagOptionFromResourceOutput -> JE.Value
disassociateTagOptionFromResourceOutputEncoder data =
    []
        
        |> JE.object






enableAWSOrganizationsAccessInputEncoder : EnableAWSOrganizationsAccessInput -> JE.Value
enableAWSOrganizationsAccessInputEncoder data =
    []
        
        |> JE.object






enableAWSOrganizationsAccessOutputEncoder : EnableAWSOrganizationsAccessOutput -> JE.Value
enableAWSOrganizationsAccessOutputEncoder data =
    []
        
        |> JE.object










executeProvisionedProductPlanInputEncoder : ExecuteProvisionedProductPlanInput -> JE.Value
executeProvisionedProductPlanInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PlanId", data.planId |> (JE.string))
        
        
        
        |> (::) ("IdempotencyToken", data.idempotencyToken |> (JE.string))
        
        
        |> JE.object






executeProvisionedProductPlanOutputEncoder : ExecuteProvisionedProductPlanOutput -> JE.Value
executeProvisionedProductPlanOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (recordDetailEncoder)
            ("RecordDetail", data.recordDetail)
        
        
        |> JE.object






executeProvisionedProductServiceActionInputEncoder : ExecuteProvisionedProductServiceActionInput -> JE.Value
executeProvisionedProductServiceActionInputEncoder data =
    []
        
        
        |> (::) ("ProvisionedProductId", data.provisionedProductId |> (JE.string))
        
        
        
        |> (::) ("ServiceActionId", data.serviceActionId |> (JE.string))
        
        
        
        |> (::) ("ExecuteToken", data.executeToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.list (JE.string)))
            ("Parameters", data.parameters)
        
        
        |> JE.object






executeProvisionedProductServiceActionOutputEncoder : ExecuteProvisionedProductServiceActionOutput -> JE.Value
executeProvisionedProductServiceActionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (recordDetailEncoder)
            ("RecordDetail", data.recordDetail)
        
        
        |> JE.object






executionParameterEncoder : ExecutionParameter -> JE.Value
executionParameterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("DefaultValues", data.defaultValues)
        
        
        |> JE.object






failedServiceActionAssociationEncoder : FailedServiceActionAssociation -> JE.Value
failedServiceActionAssociationEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ServiceActionId", data.serviceActionId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProductId", data.productId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisioningArtifactId", data.provisioningArtifactId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (serviceActionAssociationErrorCodeToString >> JE.string)
            ("ErrorCode", data.errorCode)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ErrorMessage", data.errorMessage)
        
        
        |> JE.object






getAWSOrganizationsAccessStatusInputEncoder : GetAWSOrganizationsAccessStatusInput -> JE.Value
getAWSOrganizationsAccessStatusInputEncoder data =
    []
        
        |> JE.object






getAWSOrganizationsAccessStatusOutputEncoder : GetAWSOrganizationsAccessStatusOutput -> JE.Value
getAWSOrganizationsAccessStatusOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (accessStatusToString >> JE.string)
            ("AccessStatus", data.accessStatus)
        
        
        |> JE.object






launchPathSummaryEncoder : LaunchPathSummary -> JE.Value
launchPathSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (constraintSummaryEncoder))
            ("ConstraintSummaries", data.constraintSummaries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        |> JE.object






listAcceptedPortfolioSharesInputEncoder : ListAcceptedPortfolioSharesInput -> JE.Value
listAcceptedPortfolioSharesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (portfolioShareTypeToString >> JE.string)
            ("PortfolioShareType", data.portfolioShareType)
        
        
        |> JE.object






listAcceptedPortfolioSharesOutputEncoder : ListAcceptedPortfolioSharesOutput -> JE.Value
listAcceptedPortfolioSharesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (portfolioDetailEncoder))
            ("PortfolioDetails", data.portfolioDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listBudgetsForResourceInputEncoder : ListBudgetsForResourceInput -> JE.Value
listBudgetsForResourceInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ResourceId", data.resourceId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






listBudgetsForResourceOutputEncoder : ListBudgetsForResourceOutput -> JE.Value
listBudgetsForResourceOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (budgetDetailEncoder))
            ("Budgets", data.budgets)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listConstraintsForPortfolioInputEncoder : ListConstraintsForPortfolioInput -> JE.Value
listConstraintsForPortfolioInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProductId", data.productId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






listConstraintsForPortfolioOutputEncoder : ListConstraintsForPortfolioOutput -> JE.Value
listConstraintsForPortfolioOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (constraintDetailEncoder))
            ("ConstraintDetails", data.constraintDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listLaunchPathsInputEncoder : ListLaunchPathsInput -> JE.Value
listLaunchPathsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






listLaunchPathsOutputEncoder : ListLaunchPathsOutput -> JE.Value
listLaunchPathsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (launchPathSummaryEncoder))
            ("LaunchPathSummaries", data.launchPathSummaries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listOrganizationPortfolioAccessInputEncoder : ListOrganizationPortfolioAccessInput -> JE.Value
listOrganizationPortfolioAccessInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        
        |> (::) ("OrganizationNodeType", data.organizationNodeType |> (organizationNodeTypeToString >> JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        |> JE.object






listOrganizationPortfolioAccessOutputEncoder : ListOrganizationPortfolioAccessOutput -> JE.Value
listOrganizationPortfolioAccessOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (organizationNodeEncoder))
            ("OrganizationNodes", data.organizationNodes)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listPortfolioAccessInputEncoder : ListPortfolioAccessInput -> JE.Value
listPortfolioAccessInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        |> JE.object






listPortfolioAccessOutputEncoder : ListPortfolioAccessOutput -> JE.Value
listPortfolioAccessOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("AccountIds", data.accountIds)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listPortfoliosForProductInputEncoder : ListPortfoliosForProductInput -> JE.Value
listPortfoliosForProductInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        |> JE.object






listPortfoliosForProductOutputEncoder : ListPortfoliosForProductOutput -> JE.Value
listPortfoliosForProductOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (portfolioDetailEncoder))
            ("PortfolioDetails", data.portfolioDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listPortfoliosInputEncoder : ListPortfoliosInput -> JE.Value
listPortfoliosInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        |> JE.object






listPortfoliosOutputEncoder : ListPortfoliosOutput -> JE.Value
listPortfoliosOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (portfolioDetailEncoder))
            ("PortfolioDetails", data.portfolioDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listPrincipalsForPortfolioInputEncoder : ListPrincipalsForPortfolioInput -> JE.Value
listPrincipalsForPortfolioInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






listPrincipalsForPortfolioOutputEncoder : ListPrincipalsForPortfolioOutput -> JE.Value
listPrincipalsForPortfolioOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (principalEncoder))
            ("Principals", data.principals)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listProvisionedProductPlansInputEncoder : ListProvisionedProductPlansInput -> JE.Value
listProvisionedProductPlansInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionProductId", data.provisionProductId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (accessLevelFilterEncoder)
            ("AccessLevelFilter", data.accessLevelFilter)
        
        
        |> JE.object






listProvisionedProductPlansOutputEncoder : ListProvisionedProductPlansOutput -> JE.Value
listProvisionedProductPlansOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (provisionedProductPlanSummaryEncoder))
            ("ProvisionedProductPlans", data.provisionedProductPlans)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listProvisioningArtifactsForServiceActionInputEncoder : ListProvisioningArtifactsForServiceActionInput -> JE.Value
listProvisioningArtifactsForServiceActionInputEncoder data =
    []
        
        
        |> (::) ("ServiceActionId", data.serviceActionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        |> JE.object






listProvisioningArtifactsForServiceActionOutputEncoder : ListProvisioningArtifactsForServiceActionOutput -> JE.Value
listProvisioningArtifactsForServiceActionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (provisioningArtifactViewEncoder))
            ("ProvisioningArtifactViews", data.provisioningArtifactViews)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listProvisioningArtifactsInputEncoder : ListProvisioningArtifactsInput -> JE.Value
listProvisioningArtifactsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        |> JE.object






listProvisioningArtifactsOutputEncoder : ListProvisioningArtifactsOutput -> JE.Value
listProvisioningArtifactsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (provisioningArtifactDetailEncoder))
            ("ProvisioningArtifactDetails", data.provisioningArtifactDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listRecordHistoryInputEncoder : ListRecordHistoryInput -> JE.Value
listRecordHistoryInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (accessLevelFilterEncoder)
            ("AccessLevelFilter", data.accessLevelFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (listRecordHistorySearchFilterEncoder)
            ("SearchFilter", data.searchFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






listRecordHistoryOutputEncoder : ListRecordHistoryOutput -> JE.Value
listRecordHistoryOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (recordDetailEncoder))
            ("RecordDetails", data.recordDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listRecordHistorySearchFilterEncoder : ListRecordHistorySearchFilter -> JE.Value
listRecordHistorySearchFilterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object






listResourcesForTagOptionInputEncoder : ListResourcesForTagOptionInput -> JE.Value
listResourcesForTagOptionInputEncoder data =
    []
        
        
        |> (::) ("TagOptionId", data.tagOptionId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






listResourcesForTagOptionOutputEncoder : ListResourcesForTagOptionOutput -> JE.Value
listResourcesForTagOptionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceDetailEncoder))
            ("ResourceDetails", data.resourceDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






listServiceActionsForProvisioningArtifactInputEncoder : ListServiceActionsForProvisioningArtifactInput -> JE.Value
listServiceActionsForProvisioningArtifactInputEncoder data =
    []
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("ProvisioningArtifactId", data.provisioningArtifactId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        |> JE.object






listServiceActionsForProvisioningArtifactOutputEncoder : ListServiceActionsForProvisioningArtifactOutput -> JE.Value
listServiceActionsForProvisioningArtifactOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serviceActionSummaryEncoder))
            ("ServiceActionSummaries", data.serviceActionSummaries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listServiceActionsInputEncoder : ListServiceActionsInput -> JE.Value
listServiceActionsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






listServiceActionsOutputEncoder : ListServiceActionsOutput -> JE.Value
listServiceActionsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (serviceActionSummaryEncoder))
            ("ServiceActionSummaries", data.serviceActionSummaries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listStackInstancesForProvisionedProductInputEncoder : ListStackInstancesForProvisionedProductInput -> JE.Value
listStackInstancesForProvisionedProductInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProvisionedProductId", data.provisionedProductId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        |> JE.object






listStackInstancesForProvisionedProductOutputEncoder : ListStackInstancesForProvisionedProductOutput -> JE.Value
listStackInstancesForProvisionedProductOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (stackInstanceEncoder))
            ("StackInstances", data.stackInstances)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






listTagOptionsFiltersEncoder : ListTagOptionsFilters -> JE.Value
listTagOptionsFiltersEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Active", data.active)
        
        
        |> JE.object






listTagOptionsInputEncoder : ListTagOptionsInput -> JE.Value
listTagOptionsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (listTagOptionsFiltersEncoder)
            ("Filters", data.filters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






listTagOptionsOutputEncoder : ListTagOptionsOutput -> JE.Value
listTagOptionsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagOptionDetailEncoder))
            ("TagOptionDetails", data.tagOptionDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






organizationNodeEncoder : OrganizationNode -> JE.Value
organizationNodeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (organizationNodeTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object










parameterConstraintsEncoder : ParameterConstraints -> JE.Value
parameterConstraintsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("AllowedValues", data.allowedValues)
        
        
        |> JE.object






portfolioDetailEncoder : PortfolioDetail -> JE.Value
portfolioDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ARN", data.aRN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DisplayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProviderName", data.providerName)
        
        
        |> JE.object










principalEncoder : Principal -> JE.Value
principalEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PrincipalARN", data.principalARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (principalTypeToString >> JE.string)
            ("PrincipalType", data.principalType)
        
        
        |> JE.object


















productViewAggregationValueEncoder : ProductViewAggregationValue -> JE.Value
productViewAggregationValueEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("ApproximateCount", data.approximateCount)
        
        
        |> JE.object






productViewDetailEncoder : ProductViewDetail -> JE.Value
productViewDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (productViewSummaryEncoder)
            ("ProductViewSummary", data.productViewSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (statusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProductARN", data.productARN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        |> JE.object














productViewSummaryEncoder : ProductViewSummary -> JE.Value
productViewSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProductId", data.productId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Owner", data.owner)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ShortDescription", data.shortDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (productTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Distributor", data.distributor)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("HasDefaultPath", data.hasDefaultPath)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SupportEmail", data.supportEmail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SupportDescription", data.supportDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SupportUrl", data.supportUrl)
        
        
        |> JE.object










provisionProductInputEncoder : ProvisionProductInput -> JE.Value
provisionProductInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("ProvisioningArtifactId", data.provisioningArtifactId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PathId", data.pathId)
        
        
        
        |> (::) ("ProvisionedProductName", data.provisionedProductName |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (provisioningParameterEncoder))
            ("ProvisioningParameters", data.provisioningParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisioningPreferencesEncoder)
            ("ProvisioningPreferences", data.provisioningPreferences)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("NotificationArns", data.notificationArns)
        
        
        
        |> (::) ("ProvisionToken", data.provisionToken |> (JE.string))
        
        
        |> JE.object






provisionProductOutputEncoder : ProvisionProductOutput -> JE.Value
provisionProductOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (recordDetailEncoder)
            ("RecordDetail", data.recordDetail)
        
        
        |> JE.object






provisionedProductAttributeEncoder : ProvisionedProductAttribute -> JE.Value
provisionedProductAttributeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisionedProductStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IdempotencyToken", data.idempotencyToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LastRecordId", data.lastRecordId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PhysicalId", data.physicalId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProductId", data.productId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisioningArtifactId", data.provisioningArtifactId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserArn", data.userArn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("UserArnSession", data.userArnSession)
        
        
        |> JE.object






provisionedProductDetailEncoder : ProvisionedProductDetail -> JE.Value
provisionedProductDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Arn", data.arn)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisionedProductStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusMessage", data.statusMessage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("IdempotencyToken", data.idempotencyToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LastRecordId", data.lastRecordId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProductId", data.productId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisioningArtifactId", data.provisioningArtifactId)
        
        
        |> JE.object






provisionedProductPlanDetailsEncoder : ProvisionedProductPlanDetails -> JE.Value
provisionedProductPlanDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PathId", data.pathId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProductId", data.productId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlanName", data.planName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlanId", data.planId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionProductId", data.provisionProductId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionProductName", data.provisionProductName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisionedProductPlanTypeToString >> JE.string)
            ("PlanType", data.planType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisioningArtifactId", data.provisioningArtifactId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisionedProductPlanStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("UpdatedTime", data.updatedTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("NotificationArns", data.notificationArns)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (updateProvisioningParameterEncoder))
            ("ProvisioningParameters", data.provisioningParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("StatusMessage", data.statusMessage)
        
        
        |> JE.object










provisionedProductPlanSummaryEncoder : ProvisionedProductPlanSummary -> JE.Value
provisionedProductPlanSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlanName", data.planName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PlanId", data.planId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionProductId", data.provisionProductId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionProductName", data.provisionProductName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisionedProductPlanTypeToString >> JE.string)
            ("PlanType", data.planType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisioningArtifactId", data.provisioningArtifactId)
        
        
        |> JE.object


















provisioningArtifactEncoder : ProvisioningArtifact -> JE.Value
provisioningArtifactEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisioningArtifactGuidanceToString >> JE.string)
            ("Guidance", data.guidance)
        
        
        |> JE.object






provisioningArtifactDetailEncoder : ProvisioningArtifactDetail -> JE.Value
provisioningArtifactDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisioningArtifactTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Active", data.active)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisioningArtifactGuidanceToString >> JE.string)
            ("Guidance", data.guidance)
        
        
        |> JE.object










provisioningArtifactParameterEncoder : ProvisioningArtifactParameter -> JE.Value
provisioningArtifactParameterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ParameterKey", data.parameterKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DefaultValue", data.defaultValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ParameterType", data.parameterType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IsNoEcho", data.isNoEcho)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (parameterConstraintsEncoder)
            ("ParameterConstraints", data.parameterConstraints)
        
        
        |> JE.object






provisioningArtifactPreferencesEncoder : ProvisioningArtifactPreferences -> JE.Value
provisioningArtifactPreferencesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("StackSetAccounts", data.stackSetAccounts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("StackSetRegions", data.stackSetRegions)
        
        
        |> JE.object






provisioningArtifactPropertiesEncoder : ProvisioningArtifactProperties -> JE.Value
provisioningArtifactPropertiesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> (::) ("Info", data.info |> (JE.dict identity (JE.string)))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisioningArtifactTypeToString >> JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("DisableTemplateValidation", data.disableTemplateValidation)
        
        
        |> JE.object










provisioningArtifactSummaryEncoder : ProvisioningArtifactSummary -> JE.Value
provisioningArtifactSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ProvisioningArtifactMetadata", data.provisioningArtifactMetadata)
        
        
        |> JE.object










provisioningArtifactViewEncoder : ProvisioningArtifactView -> JE.Value
provisioningArtifactViewEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (productViewSummaryEncoder)
            ("ProductViewSummary", data.productViewSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisioningArtifactEncoder)
            ("ProvisioningArtifact", data.provisioningArtifact)
        
        
        |> JE.object






provisioningParameterEncoder : ProvisioningParameter -> JE.Value
provisioningParameterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object






provisioningPreferencesEncoder : ProvisioningPreferences -> JE.Value
provisioningPreferencesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("StackSetAccounts", data.stackSetAccounts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("StackSetRegions", data.stackSetRegions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StackSetFailureToleranceCount", data.stackSetFailureToleranceCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StackSetFailureTolerancePercentage", data.stackSetFailureTolerancePercentage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StackSetMaxConcurrencyCount", data.stackSetMaxConcurrencyCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StackSetMaxConcurrencyPercentage", data.stackSetMaxConcurrencyPercentage)
        
        
        |> JE.object






recordDetailEncoder : RecordDetail -> JE.Value
recordDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RecordId", data.recordId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionedProductName", data.provisionedProductName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (recordStatusToString >> JE.string)
            ("Status", data.status)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("UpdatedTime", data.updatedTime)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionedProductType", data.provisionedProductType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RecordType", data.recordType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionedProductId", data.provisionedProductId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProductId", data.productId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisioningArtifactId", data.provisioningArtifactId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PathId", data.pathId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (recordErrorEncoder))
            ("RecordErrors", data.recordErrors)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (recordTagEncoder))
            ("RecordTags", data.recordTags)
        
        
        |> JE.object






recordErrorEncoder : RecordError -> JE.Value
recordErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Code", data.code)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        |> JE.object






recordOutputEncoder : RecordOutput -> JE.Value
recordOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("OutputKey", data.outputKey)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("OutputValue", data.outputValue)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        |> JE.object










recordTagEncoder : RecordTag -> JE.Value
recordTagEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object






rejectPortfolioShareInputEncoder : RejectPortfolioShareInput -> JE.Value
rejectPortfolioShareInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("PortfolioId", data.portfolioId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (portfolioShareTypeToString >> JE.string)
            ("PortfolioShareType", data.portfolioShareType)
        
        
        |> JE.object






rejectPortfolioShareOutputEncoder : RejectPortfolioShareOutput -> JE.Value
rejectPortfolioShareOutputEncoder data =
    []
        
        |> JE.object


















resourceChangeEncoder : ResourceChange -> JE.Value
resourceChangeEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (changeActionToString >> JE.string)
            ("Action", data.action)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("LogicalResourceId", data.logicalResourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PhysicalResourceId", data.physicalResourceId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ResourceType", data.resourceType)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (replacementToString >> JE.string)
            ("Replacement", data.replacement)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceAttributeToString >> JE.string))
            ("Scope", data.scope)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (resourceChangeDetailEncoder))
            ("Details", data.details)
        
        
        |> JE.object






resourceChangeDetailEncoder : ResourceChangeDetail -> JE.Value
resourceChangeDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceTargetDefinitionEncoder)
            ("Target", data.target)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (evaluationTypeToString >> JE.string)
            ("Evaluation", data.evaluation)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("CausingEntity", data.causingEntity)
        
        
        |> JE.object






resourceDetailEncoder : ResourceDetail -> JE.Value
resourceDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ARN", data.aRN)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (Iso8601.fromTime >> JE.string)
            ("CreatedTime", data.createdTime)
        
        
        |> JE.object






resourceTargetDefinitionEncoder : ResourceTargetDefinition -> JE.Value
resourceTargetDefinitionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (resourceAttributeToString >> JE.string)
            ("Attribute", data.attribute)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (requiresRecreationToString >> JE.string)
            ("RequiresRecreation", data.requiresRecreation)
        
        
        |> JE.object






scanProvisionedProductsInputEncoder : ScanProvisionedProductsInput -> JE.Value
scanProvisionedProductsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (accessLevelFilterEncoder)
            ("AccessLevelFilter", data.accessLevelFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






scanProvisionedProductsOutputEncoder : ScanProvisionedProductsOutput -> JE.Value
scanProvisionedProductsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (provisionedProductDetailEncoder))
            ("ProvisionedProducts", data.provisionedProducts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






searchProductsAsAdminInputEncoder : SearchProductsAsAdminInput -> JE.Value
searchProductsAsAdminInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PortfolioId", data.portfolioId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.list (JE.string)))
            ("Filters", data.filters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (productViewSortByToString >> JE.string)
            ("SortBy", data.sortBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sortOrderToString >> JE.string)
            ("SortOrder", data.sortOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (productSourceToString >> JE.string)
            ("ProductSource", data.productSource)
        
        
        |> JE.object






searchProductsAsAdminOutputEncoder : SearchProductsAsAdminOutput -> JE.Value
searchProductsAsAdminOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (productViewDetailEncoder))
            ("ProductViewDetails", data.productViewDetails)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






searchProductsInputEncoder : SearchProductsInput -> JE.Value
searchProductsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.list (JE.string)))
            ("Filters", data.filters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (productViewSortByToString >> JE.string)
            ("SortBy", data.sortBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sortOrderToString >> JE.string)
            ("SortOrder", data.sortOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






searchProductsOutputEncoder : SearchProductsOutput -> JE.Value
searchProductsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (productViewSummaryEncoder))
            ("ProductViewSummaries", data.productViewSummaries)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.list (productViewAggregationValueEncoder)))
            ("ProductViewAggregations", data.productViewAggregations)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






searchProvisionedProductsInputEncoder : SearchProvisionedProductsInput -> JE.Value
searchProvisionedProductsInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (accessLevelFilterEncoder)
            ("AccessLevelFilter", data.accessLevelFilter)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.list (JE.string)))
            ("Filters", data.filters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SortBy", data.sortBy)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (sortOrderToString >> JE.string)
            ("SortOrder", data.sortOrder)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("PageSize", data.pageSize)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PageToken", data.pageToken)
        
        
        |> JE.object






searchProvisionedProductsOutputEncoder : SearchProvisionedProductsOutput -> JE.Value
searchProvisionedProductsOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (provisionedProductAttributeEncoder))
            ("ProvisionedProducts", data.provisionedProducts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("TotalResultsCount", data.totalResultsCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("NextPageToken", data.nextPageToken)
        
        
        |> JE.object






serviceActionAssociationEncoder : ServiceActionAssociation -> JE.Value
serviceActionAssociationEncoder data =
    []
        
        
        |> (::) ("ServiceActionId", data.serviceActionId |> (JE.string))
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("ProvisioningArtifactId", data.provisioningArtifactId |> (JE.string))
        
        
        |> JE.object


















serviceActionDetailEncoder : ServiceActionDetail -> JE.Value
serviceActionDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (serviceActionSummaryEncoder)
            ("ServiceActionSummary", data.serviceActionSummary)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Definition", data.definition)
        
        
        |> JE.object






serviceActionSummaryEncoder : ServiceActionSummary -> JE.Value
serviceActionSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (serviceActionDefinitionTypeToString >> JE.string)
            ("DefinitionType", data.definitionType)
        
        
        |> JE.object






shareDetailsEncoder : ShareDetails -> JE.Value
shareDetailsEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("SuccessfulShares", data.successfulShares)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (shareErrorEncoder))
            ("ShareErrors", data.shareErrors)
        
        
        |> JE.object






shareErrorEncoder : ShareError -> JE.Value
shareErrorEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Accounts", data.accounts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Message", data.message)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Error", data.error)
        
        
        |> JE.object














stackInstanceEncoder : StackInstance -> JE.Value
stackInstanceEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Account", data.account)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Region", data.region)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stackInstanceStatusToString >> JE.string)
            ("StackInstanceStatus", data.stackInstanceStatus)
        
        
        |> JE.object


















tagEncoder : Tag -> JE.Value
tagEncoder data =
    []
        
        
        |> (::) ("Key", data.key |> (JE.string))
        
        
        
        |> (::) ("Value", data.value |> (JE.string))
        
        
        |> JE.object






tagOptionDetailEncoder : TagOptionDetail -> JE.Value
tagOptionDetailEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Active", data.active)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Id", data.id)
        
        
        |> JE.object






tagOptionSummaryEncoder : TagOptionSummary -> JE.Value
tagOptionSummaryEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("Values", data.values)
        
        
        |> JE.object






terminateProvisionedProductInputEncoder : TerminateProvisionedProductInput -> JE.Value
terminateProvisionedProductInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionedProductName", data.provisionedProductName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionedProductId", data.provisionedProductId)
        
        
        
        |> (::) ("TerminateToken", data.terminateToken |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("IgnoreErrors", data.ignoreErrors)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        |> JE.object






terminateProvisionedProductOutputEncoder : TerminateProvisionedProductOutput -> JE.Value
terminateProvisionedProductOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (recordDetailEncoder)
            ("RecordDetail", data.recordDetail)
        
        
        |> JE.object






updateConstraintInputEncoder : UpdateConstraintInput -> JE.Value
updateConstraintInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Parameters", data.parameters)
        
        
        |> JE.object






updateConstraintOutputEncoder : UpdateConstraintOutput -> JE.Value
updateConstraintOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (constraintDetailEncoder)
            ("ConstraintDetail", data.constraintDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ConstraintParameters", data.constraintParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (statusToString >> JE.string)
            ("Status", data.status)
        
        
        |> JE.object






updatePortfolioInputEncoder : UpdatePortfolioInput -> JE.Value
updatePortfolioInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("DisplayName", data.displayName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProviderName", data.providerName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("AddTags", data.addTags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("RemoveTags", data.removeTags)
        
        
        |> JE.object






updatePortfolioOutputEncoder : UpdatePortfolioOutput -> JE.Value
updatePortfolioOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (portfolioDetailEncoder)
            ("PortfolioDetail", data.portfolioDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






updateProductInputEncoder : UpdateProductInput -> JE.Value
updateProductInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Owner", data.owner)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Distributor", data.distributor)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SupportDescription", data.supportDescription)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SupportEmail", data.supportEmail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("SupportUrl", data.supportUrl)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("AddTags", data.addTags)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("RemoveTags", data.removeTags)
        
        
        |> JE.object






updateProductOutputEncoder : UpdateProductOutput -> JE.Value
updateProductOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (productViewDetailEncoder)
            ("ProductViewDetail", data.productViewDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        |> JE.object






updateProvisionedProductInputEncoder : UpdateProvisionedProductInput -> JE.Value
updateProvisionedProductInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionedProductName", data.provisionedProductName)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionedProductId", data.provisionedProductId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProductId", data.productId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisioningArtifactId", data.provisioningArtifactId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("PathId", data.pathId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (updateProvisioningParameterEncoder))
            ("ProvisioningParameters", data.provisioningParameters)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (updateProvisioningPreferencesEncoder)
            ("ProvisioningPreferences", data.provisioningPreferences)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (tagEncoder))
            ("Tags", data.tags)
        
        
        
        |> (::) ("UpdateToken", data.updateToken |> (JE.string))
        
        
        |> JE.object






updateProvisionedProductOutputEncoder : UpdateProvisionedProductOutput -> JE.Value
updateProvisionedProductOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (recordDetailEncoder)
            ("RecordDetail", data.recordDetail)
        
        
        |> JE.object






updateProvisionedProductPropertiesInputEncoder : UpdateProvisionedProductPropertiesInput -> JE.Value
updateProvisionedProductPropertiesInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProvisionedProductId", data.provisionedProductId |> (JE.string))
        
        
        
        |> (::) ("ProvisionedProductProperties", data.provisionedProductProperties |> (JE.dict identity (JE.string)))
        
        
        
        |> (::) ("IdempotencyToken", data.idempotencyToken |> (JE.string))
        
        
        |> JE.object






updateProvisionedProductPropertiesOutputEncoder : UpdateProvisionedProductPropertiesOutput -> JE.Value
updateProvisionedProductPropertiesOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("ProvisionedProductId", data.provisionedProductId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("ProvisionedProductProperties", data.provisionedProductProperties)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("RecordId", data.recordId)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (recordStatusToString >> JE.string)
            ("Status", data.status)
        
        
        |> JE.object






updateProvisioningArtifactInputEncoder : UpdateProvisioningArtifactInput -> JE.Value
updateProvisioningArtifactInputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        
        |> (::) ("ProductId", data.productId |> (JE.string))
        
        
        
        |> (::) ("ProvisioningArtifactId", data.provisioningArtifactId |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Active", data.active)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (provisioningArtifactGuidanceToString >> JE.string)
            ("Guidance", data.guidance)
        
        
        |> JE.object






updateProvisioningArtifactOutputEncoder : UpdateProvisioningArtifactOutput -> JE.Value
updateProvisioningArtifactOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (provisioningArtifactDetailEncoder)
            ("ProvisioningArtifactDetail", data.provisioningArtifactDetail)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Info", data.info)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (statusToString >> JE.string)
            ("Status", data.status)
        
        
        |> JE.object






updateProvisioningParameterEncoder : UpdateProvisioningParameter -> JE.Value
updateProvisioningParameterEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Key", data.key)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("UsePreviousValue", data.usePreviousValue)
        
        
        |> JE.object






updateProvisioningPreferencesEncoder : UpdateProvisioningPreferences -> JE.Value
updateProvisioningPreferencesEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("StackSetAccounts", data.stackSetAccounts)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.list (JE.string))
            ("StackSetRegions", data.stackSetRegions)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StackSetFailureToleranceCount", data.stackSetFailureToleranceCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StackSetFailureTolerancePercentage", data.stackSetFailureTolerancePercentage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StackSetMaxConcurrencyCount", data.stackSetMaxConcurrencyCount)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.int)
            ("StackSetMaxConcurrencyPercentage", data.stackSetMaxConcurrencyPercentage)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (stackSetOperationTypeToString >> JE.string)
            ("StackSetOperationType", data.stackSetOperationType)
        
        
        |> JE.object






updateServiceActionInputEncoder : UpdateServiceActionInput -> JE.Value
updateServiceActionInputEncoder data =
    []
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Name", data.name)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.dict identity (JE.string))
            ("Definition", data.definition)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Description", data.description)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("AcceptLanguage", data.acceptLanguage)
        
        
        |> JE.object






updateServiceActionOutputEncoder : UpdateServiceActionOutput -> JE.Value
updateServiceActionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (serviceActionDetailEncoder)
            ("ServiceActionDetail", data.serviceActionDetail)
        
        
        |> JE.object






updateTagOptionInputEncoder : UpdateTagOptionInput -> JE.Value
updateTagOptionInputEncoder data =
    []
        
        
        |> (::) ("Id", data.id |> (JE.string))
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.bool)
            ("Active", data.active)
        
        
        |> JE.object






updateTagOptionOutputEncoder : UpdateTagOptionOutput -> JE.Value
updateTagOptionOutputEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (tagOptionDetailEncoder)
            ("TagOptionDetail", data.tagOptionDetail)
        
        
        |> JE.object






usageInstructionEncoder : UsageInstruction -> JE.Value
usageInstructionEncoder data =
    []
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Type", data.type_)
        
        
        
        |> AWS.Core.Encode.optionalMember
            (JE.string)
            ("Value", data.value)
        
        
        |> JE.object





