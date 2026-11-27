# WorkflowsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorkflow**](WorkflowsAPI.md#createworkflow) | **POST** /v1/workflows | Create a workflow: from blank ({ name, graph? }), from a template ({ from: \&quot;template\&quot;, templateId, setup?, activate? }) or from an export document ({ from: \&quot;import\&quot;, document }). New workflows start paused; activate one with POST /v1/workflows/{id}/activate. Returns the workflow and its validation issues.
[**createWorkflowActivate**](WorkflowsAPI.md#createworkflowactivate) | **POST** /v1/workflows/{id}/activate | Activate a workflow: its triggers start firing. A graph with blocking issues is refused (422, details.issues).
[**createWorkflowApprovalDecide**](WorkflowsAPI.md#createworkflowapprovaldecide) | **POST** /v1/workflow-approvals/{id}/decide | Approve or reject a pending flow.approval request: the waiting run resumes down the approved or rejected port. 409 when it was already decided (another device, Telegram, or the timeout).
[**createWorkflowChain**](WorkflowsAPI.md#createworkflowchain) | **POST** /v1/workflow-chains | Create a multi-step workflow chain.
[**createWorkflowChainRunNow**](WorkflowsAPI.md#createworkflowchainrunnow) | **POST** /v1/workflow-chains/{id}/run-now | Enqueue an ad-hoc run of a workflow chain.
[**createWorkflowChainToggle**](WorkflowsAPI.md#createworkflowchaintoggle) | **POST** /v1/workflow-chains/{id}/toggle | Flip a workflow chain between active and inactive.
[**createWorkflowDeactivate**](WorkflowsAPI.md#createworkflowdeactivate) | **POST** /v1/workflows/{id}/deactivate | Pause a workflow: its triggers stop firing. Runs already started finish.
[**createWorkflowDuplicate**](WorkflowsAPI.md#createworkflowduplicate) | **POST** /v1/workflows/{id}/duplicate | Copy a workflow (graph, description, tags) into a new paused workflow.
[**createWorkflowExpressionPreview**](WorkflowsAPI.md#createworkflowexpressionpreview) | **POST** /v1/workflows/expressions/preview | Resolve one param value (\&quot;{{ $json.priceCents * 0.9 }}\&quot;) with the engine&#39;s evaluator against an item, the trigger item, earlier nodes&#39; items or a stored run. A bad expression is an answer (ok&#x3D;false with the message), not an HTTP error. Changes nothing.
[**createWorkflowImport**](WorkflowsAPI.md#createworkflowimport) | **POST** /v1/workflows/import | Import a crossly.workflow export document (or { document, name }) as a new, paused workflow. Integration and workflow references are cleared (they belong to the exporting account) and listed in stripped.
[**createWorkflowRun**](WorkflowsAPI.md#createworkflowrun) | **POST** /v1/workflows/{id}/run | Run a workflow (active or paused) live now, on items you pass or on selected listings / orders / inventory items (one kind per call, up to 1,000). The graph must validate (422 with issues otherwise).
[**createWorkflowRunCancel**](WorkflowsAPI.md#createworkflowruncancel) | **POST** /v1/workflow-runs/{runId}/cancel | Cancel a queued, running or waiting run. 409 when it already finished.
[**createWorkflowRunOn**](WorkflowsAPI.md#createworkflowrunon) | **POST** /v1/workflows/run-on | \&quot;Run workflow on…\&quot;: the same as POST /v1/workflows/{id}/run with the workflow named in the body.
[**createWorkflowRunRetry**](WorkflowsAPI.md#createworkflowrunretry) | **POST** /v1/workflow-runs/{runId}/retry | Retry a failed run from the node that failed: a new run (retryOfRunId) seeded from the failed run&#39;s checkpoint, so nodes that succeeded are not repeated. 409 unless the run failed.
[**createWorkflowSaleEnd**](WorkflowsAPI.md#createworkflowsaleend) | **POST** /v1/workflows/sales/{saleEventId}/end | End a sale now. A sale that has not started is cancelled; a live one closes and every discounted price is put back now (reverted &#x3D; how many listings were restored). 404 for a sale that is not yours.
[**createWorkflowTemplateUse**](WorkflowsAPI.md#createworkflowtemplateuse) | **POST** /v1/workflows/templates/{id}/use | Create a workflow from a template, filling its setup fields; activate&#x3D;true activates it when it validates.
[**createWorkflowTest**](WorkflowsAPI.md#createworkflowtest) | **POST** /v1/workflows/{id}/test | Test a workflow (the saved graph, or a draft graph you pass). mode&#x3D;test runs it for real, using pinned data where a node has it; mode&#x3D;dry is a safe test: write, destructive and money nodes report what they would do and change nothing. Trigger items: the ones you pass, else pinned, else the last real ones, else the trigger sample.
[**createWorkflowValidate**](WorkflowsAPI.md#createworkflowvalidate) | **POST** /v1/workflows/validate | Validate a graph without saving it: unknown node types, missing required params, bad ports, cycles, expression errors. blocking&#x3D;true means activation would be refused.
[**createWorkflowVersionRestore**](WorkflowsAPI.md#createworkflowversionrestore) | **POST** /v1/workflows/{id}/versions/{v}/restore | Restore an earlier version&#39;s graph as a new version. Pass version (the current one you read) to refuse the restore when someone saved meanwhile (409). Body optional: { version?: integer }.
[**createWorkflowWebhookRotate**](WorkflowsAPI.md#createworkflowwebhookrotate) | **POST** /v1/workflows/{id}/webhooks/{nodeId}/rotate | Issue a new inbound URL for an on.webhook trigger node (the old one stops working). The URL, and the signing secret when withSecret&#x3D;true, are returned ONCE: store them now.
[**deleteWorkflow**](WorkflowsAPI.md#deleteworkflow) | **DELETE** /v1/workflows/{id} | Delete (archive) a workflow: its triggers stop, open runs are cancelled, run history stays readable.
[**deleteWorkflowChain**](WorkflowsAPI.md#deleteworkflowchain) | **DELETE** /v1/workflow-chains/{id} | Delete a workflow chain (cascades steps + runs).
[**getWorkflow**](WorkflowsAPI.md#getworkflow) | **GET** /v1/workflows/{id} | Get one workflow with its full graph and current version.
[**getWorkflowCatalog**](WorkflowsAPI.md#getworkflowcatalog) | **GET** /v1/workflows/catalog | Everything needed to build a workflow: every node type (params, ports, output fields, risk, platforms capability), which platforms each capability covers and which of those you have connected, the expression helpers and bindings ({{ $json.listingId }}…) and the condition operators. Read this before composing a graph rather than guessing node types or param keys.
[**getWorkflowChain**](WorkflowsAPI.md#getworkflowchain) | **GET** /v1/workflow-chains/{id} | Get one workflow chain with its steps.
[**getWorkflowExport**](WorkflowsAPI.md#getworkflowexport) | **GET** /v1/workflows/{id}/export | Export a workflow as a portable document (format crossly.workflow) that POST /v1/workflows/import accepts. Credentials and account handles are stripped; pinned test data only with pinnedData&#x3D;true.
[**getWorkflowRun**](WorkflowsAPI.md#getworkflowrun) | **GET** /v1/workflow-runs/{runId} | One run: its summary, the graph version it ran, and every node execution (status, item counts per port, timing, errors). Item data per node: GET …/nodes/{nodeId}.
[**getWorkflowRunNode**](WorkflowsAPI.md#getworkflowrunnode) | **GET** /v1/workflow-runs/{runId}/nodes/{nodeId} | Every execution of one node in a run with its input and output items (each port keeps the first 50 items, 16 KB per item; truncated&#x3D;true when cut). Data older than the retention window, or not kept by settings.saveSuccessData&#x3D;false, is pruned: that execution has input/output null and pruned&#x3D;true, and when every execution is pruned the response is { data: null, meta: { pruned: true } } (never an empty list).
[**listWorkflowApprovals**](WorkflowsAPI.md#listworkflowapprovals) | **GET** /v1/workflow-approvals | Approval requests from flow.approval nodes, newest first (pending only unless status says otherwise). Decide one with POST /v1/workflow-approvals/{id}/decide.
[**listWorkflowChains**](WorkflowsAPI.md#listworkflowchains) | **GET** /v1/workflow-chains | List workflow chains with their step graph.
[**listWorkflowRuns**](WorkflowsAPI.md#listworkflowruns) | **GET** /v1/workflows/{id}/runs | Run history of one workflow, newest first, with per-node status and item counts.
[**listWorkflowRuns2**](WorkflowsAPI.md#listworkflowruns2) | **GET** /v1/workflow-runs | Runs of every workflow, newest first. Filter by workflow, status, mode and time.
[**listWorkflowSaleActive**](WorkflowsAPI.md#listworkflowsaleactive) | **GET** /v1/workflows/sales/active | Every live or upcoming sale (a sales event started by a sale.start node) with the workflow that runs it: percent off, window, and how many listings it applies to.
[**listWorkflowTemplates**](WorkflowsAPI.md#listworkflowtemplates) | **GET** /v1/workflows/templates | Ready-made workflows (weekend sale, stale-listing markdowns, offer responder, ship-by alerts…), each a complete graph plus the setup fields its \&quot;use\&quot; call asks for.
[**listWorkflowVersions**](WorkflowsAPI.md#listworkflowversions) | **GET** /v1/workflows/{id}/versions | The saved versions of a workflow, newest first (restore one with POST …/versions/{v}/restore).
[**listWorkflows**](WorkflowsAPI.md#listworkflows) | **GET** /v1/workflows | List workflows, newest change first. A workflow is a graph of nodes: one or more triggers, then actions, lookups and flow nodes (if, switch, wait, approval…). Each row carries its trigger and node types and a 7-day run sparkline, not the graph (GET /v1/workflows/{id} has it).
[**updateWorkflow**](WorkflowsAPI.md#updateworkflow) | **PUT** /v1/workflows/{id} | Save a workflow. Pass the version you edited: a save over a newer version is 409 version_conflict (re-read and merge). Saving an active workflow validates it like activation does (422 with issues).
[**updateWorkflowChain**](WorkflowsAPI.md#updateworkflowchain) | **PUT** /v1/workflow-chains/{id} | Replace a workflow chain wholesale.


# **createWorkflow**
```swift
    open class func createWorkflow(createWorkflowRequest: CreateWorkflowRequest, completion: @escaping (_ data: CreateWorkflowResponse?, _ error: Error?) -> Void)
```

Create a workflow: from blank ({ name, graph? }), from a template ({ from: \"template\", templateId, setup?, activate? }) or from an export document ({ from: \"import\", document }). New workflows start paused; activate one with POST /v1/workflows/{id}/activate. Returns the workflow and its validation issues.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createWorkflowRequest = CreateWorkflowRequest(from: "from_example", name: "name_example", description: "description_example", tags: ["tags_example"], graph: "TODO", timezone: "timezone_example", templateId: "templateId_example", setup: "TODO", activate: false, document: "TODO") // CreateWorkflowRequest | 

// Create a workflow: from blank ({ name, graph? }), from a template ({ from: \"template\", templateId, setup?, activate? }) or from an export document ({ from: \"import\", document }). New workflows start paused; activate one with POST /v1/workflows/{id}/activate. Returns the workflow and its validation issues.
WorkflowsAPI.createWorkflow(createWorkflowRequest: createWorkflowRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWorkflowRequest** | **CreateWorkflowRequest** |  | 

### Return type

**CreateWorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowActivate**
```swift
    open class func createWorkflowActivate(id: UUID, completion: @escaping (_ data: WorkflowResponse?, _ error: Error?) -> Void)
```

Activate a workflow: its triggers start firing. A graph with blocking issues is refused (422, details.issues).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.

// Activate a workflow: its triggers start firing. A graph with blocking issues is refused (422, details.issues).
WorkflowsAPI.createWorkflowActivate(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 

### Return type

**WorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowApprovalDecide**
```swift
    open class func createWorkflowApprovalDecide(id: UUID, createWorkflowApprovalDecideRequest: CreateWorkflowApprovalDecideRequest, completion: @escaping (_ data: CreateWorkflowApprovalDecideResponse?, _ error: Error?) -> Void)
```

Approve or reject a pending flow.approval request: the waiting run resumes down the approved or rejected port. 409 when it was already decided (another device, Telegram, or the timeout).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Approval id from GET /v1/workflow-approvals.
let createWorkflowApprovalDecideRequest = CreateWorkflowApprovalDecideRequest(decision: "decision_example", note: "note_example") // CreateWorkflowApprovalDecideRequest | 

// Approve or reject a pending flow.approval request: the waiting run resumes down the approved or rejected port. 409 when it was already decided (another device, Telegram, or the timeout).
WorkflowsAPI.createWorkflowApprovalDecide(id: id, createWorkflowApprovalDecideRequest: createWorkflowApprovalDecideRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Approval id from GET /v1/workflow-approvals. | 
 **createWorkflowApprovalDecideRequest** | **CreateWorkflowApprovalDecideRequest** |  | 

### Return type

**CreateWorkflowApprovalDecideResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowChain**
```swift
    open class func createWorkflowChain(completion: @escaping (_ data: IdResponse?, _ error: Error?) -> Void)
```

Create a multi-step workflow chain.

Deprecated: workflow chains are workflows now. Use /v1/workflows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a multi-step workflow chain.
WorkflowsAPI.createWorkflowChain() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**IdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowChainRunNow**
```swift
    open class func createWorkflowChainRunNow(id: UUID, completion: @escaping (_ data: CreateWorkflowChainRunNowResponse?, _ error: Error?) -> Void)
```

Enqueue an ad-hoc run of a workflow chain.

Deprecated: workflow chains are workflows now. Use /v1/workflows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Enqueue an ad-hoc run of a workflow chain.
WorkflowsAPI.createWorkflowChainRunNow(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** |  | 

### Return type

**CreateWorkflowChainRunNowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowChainToggle**
```swift
    open class func createWorkflowChainToggle(id: UUID, completion: @escaping (_ data: CreateWorkflowChainToggleResponse?, _ error: Error?) -> Void)
```

Flip a workflow chain between active and inactive.

Deprecated: workflow chains are workflows now. Use /v1/workflows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Flip a workflow chain between active and inactive.
WorkflowsAPI.createWorkflowChainToggle(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** |  | 

### Return type

**CreateWorkflowChainToggleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowDeactivate**
```swift
    open class func createWorkflowDeactivate(id: UUID, completion: @escaping (_ data: WorkflowResponse?, _ error: Error?) -> Void)
```

Pause a workflow: its triggers stop firing. Runs already started finish.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.

// Pause a workflow: its triggers stop firing. Runs already started finish.
WorkflowsAPI.createWorkflowDeactivate(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 

### Return type

**WorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowDuplicate**
```swift
    open class func createWorkflowDuplicate(id: UUID, createWorkflowDuplicateRequest: CreateWorkflowDuplicateRequest, completion: @escaping (_ data: CreateWorkflowDuplicateResponse?, _ error: Error?) -> Void)
```

Copy a workflow (graph, description, tags) into a new paused workflow.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.
let createWorkflowDuplicateRequest = CreateWorkflowDuplicateRequest(name: "name_example") // CreateWorkflowDuplicateRequest | 

// Copy a workflow (graph, description, tags) into a new paused workflow.
WorkflowsAPI.createWorkflowDuplicate(id: id, createWorkflowDuplicateRequest: createWorkflowDuplicateRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 
 **createWorkflowDuplicateRequest** | **CreateWorkflowDuplicateRequest** |  | 

### Return type

**CreateWorkflowDuplicateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowExpressionPreview**
```swift
    open class func createWorkflowExpressionPreview(createWorkflowExpressionPreviewRequest: CreateWorkflowExpressionPreviewRequest, completion: @escaping (_ data: CreateWorkflowExpressionPreviewResponse?, _ error: Error?) -> Void)
```

Resolve one param value (\"{{ $json.priceCents * 0.9 }}\") with the engine's evaluator against an item, the trigger item, earlier nodes' items or a stored run. A bad expression is an answer (ok=false with the message), not an HTTP error. Changes nothing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createWorkflowExpressionPreviewRequest = CreateWorkflowExpressionPreviewRequest(value: "TODO", item: "TODO", trigger: "TODO", nodes: "TODO", runId: 123, workflowId: 123, itemIndex: 123, vars: "TODO", timezone: "timezone_example") // CreateWorkflowExpressionPreviewRequest | 

// Resolve one param value (\"{{ $json.priceCents * 0.9 }}\") with the engine's evaluator against an item, the trigger item, earlier nodes' items or a stored run. A bad expression is an answer (ok=false with the message), not an HTTP error. Changes nothing.
WorkflowsAPI.createWorkflowExpressionPreview(createWorkflowExpressionPreviewRequest: createWorkflowExpressionPreviewRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWorkflowExpressionPreviewRequest** | **CreateWorkflowExpressionPreviewRequest** |  | 

### Return type

**CreateWorkflowExpressionPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowImport**
```swift
    open class func createWorkflowImport(requestBody: [String: AnyCodable], completion: @escaping (_ data: CreateWorkflowImportResponse?, _ error: Error?) -> Void)
```

Import a crossly.workflow export document (or { document, name }) as a new, paused workflow. Integration and workflow references are cleared (they belong to the exporting account) and listed in stripped.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let requestBody = "TODO" // [String: AnyCodable] | 

// Import a crossly.workflow export document (or { document, name }) as a new, paused workflow. Integration and workflow references are cleared (they belong to the exporting account) and listed in stripped.
WorkflowsAPI.createWorkflowImport(requestBody: requestBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**CreateWorkflowImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowRun**
```swift
    open class func createWorkflowRun(id: UUID, createWorkflowRunRequest: CreateWorkflowRunRequest, completion: @escaping (_ data: CreateWorkflowRunResponse?, _ error: Error?) -> Void)
```

Run a workflow (active or paused) live now, on items you pass or on selected listings / orders / inventory items (one kind per call, up to 1,000). The graph must validate (422 with issues otherwise).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.
let createWorkflowRunRequest = CreateWorkflowRunRequest(items: [CreateWorkflowRunOnRequestItems(json: "TODO")], listingIds: [123], orderIds: [123], inventoryItemIds: [123], triggerNodeId: "triggerNodeId_example") // CreateWorkflowRunRequest | 

// Run a workflow (active or paused) live now, on items you pass or on selected listings / orders / inventory items (one kind per call, up to 1,000). The graph must validate (422 with issues otherwise).
WorkflowsAPI.createWorkflowRun(id: id, createWorkflowRunRequest: createWorkflowRunRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 
 **createWorkflowRunRequest** | **CreateWorkflowRunRequest** |  | 

### Return type

**CreateWorkflowRunResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowRunCancel**
```swift
    open class func createWorkflowRunCancel(runId: UUID, completion: @escaping (_ data: CreateWorkflowRunCancelResponse?, _ error: Error?) -> Void)
```

Cancel a queued, running or waiting run. 409 when it already finished.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let runId = 987 // UUID | Workflow run id.

// Cancel a queued, running or waiting run. 409 when it already finished.
WorkflowsAPI.createWorkflowRunCancel(runId: runId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **UUID** | Workflow run id. | 

### Return type

**CreateWorkflowRunCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowRunOn**
```swift
    open class func createWorkflowRunOn(createWorkflowRunOnRequest: CreateWorkflowRunOnRequest, completion: @escaping (_ data: CreateWorkflowRunOnResponse?, _ error: Error?) -> Void)
```

\"Run workflow on…\": the same as POST /v1/workflows/{id}/run with the workflow named in the body.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createWorkflowRunOnRequest = CreateWorkflowRunOnRequest(workflowId: 123, items: [CreateWorkflowRunOnRequestItems(json: "TODO")], listingIds: [123], orderIds: [123], inventoryItemIds: [123], triggerNodeId: "triggerNodeId_example") // CreateWorkflowRunOnRequest | 

// \"Run workflow on…\": the same as POST /v1/workflows/{id}/run with the workflow named in the body.
WorkflowsAPI.createWorkflowRunOn(createWorkflowRunOnRequest: createWorkflowRunOnRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWorkflowRunOnRequest** | **CreateWorkflowRunOnRequest** |  | 

### Return type

**CreateWorkflowRunOnResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowRunRetry**
```swift
    open class func createWorkflowRunRetry(runId: UUID, completion: @escaping (_ data: CreateWorkflowRunRetryResponse?, _ error: Error?) -> Void)
```

Retry a failed run from the node that failed: a new run (retryOfRunId) seeded from the failed run's checkpoint, so nodes that succeeded are not repeated. 409 unless the run failed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let runId = 987 // UUID | Workflow run id.

// Retry a failed run from the node that failed: a new run (retryOfRunId) seeded from the failed run's checkpoint, so nodes that succeeded are not repeated. 409 unless the run failed.
WorkflowsAPI.createWorkflowRunRetry(runId: runId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **UUID** | Workflow run id. | 

### Return type

**CreateWorkflowRunRetryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowSaleEnd**
```swift
    open class func createWorkflowSaleEnd(saleEventId: UUID, completion: @escaping (_ data: CreateWorkflowSaleEndResponse?, _ error: Error?) -> Void)
```

End a sale now. A sale that has not started is cancelled; a live one closes and every discounted price is put back now (reverted = how many listings were restored). 404 for a sale that is not yours.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let saleEventId = 987 // UUID | Sale id from GET /v1/workflows/sales/active.

// End a sale now. A sale that has not started is cancelled; a live one closes and every discounted price is put back now (reverted = how many listings were restored). 404 for a sale that is not yours.
WorkflowsAPI.createWorkflowSaleEnd(saleEventId: saleEventId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **saleEventId** | **UUID** | Sale id from GET /v1/workflows/sales/active. | 

### Return type

**CreateWorkflowSaleEndResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowTemplateUse**
```swift
    open class func createWorkflowTemplateUse(id: String, createWorkflowTemplateUseRequest: CreateWorkflowTemplateUseRequest, completion: @escaping (_ data: CreateWorkflowResponse?, _ error: Error?) -> Void)
```

Create a workflow from a template, filling its setup fields; activate=true activates it when it validates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | Template id from GET /v1/workflows/templates.
let createWorkflowTemplateUseRequest = CreateWorkflowTemplateUseRequest(setup: "TODO", name: "name_example", activate: false) // CreateWorkflowTemplateUseRequest | 

// Create a workflow from a template, filling its setup fields; activate=true activates it when it validates.
WorkflowsAPI.createWorkflowTemplateUse(id: id, createWorkflowTemplateUseRequest: createWorkflowTemplateUseRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Template id from GET /v1/workflows/templates. | 
 **createWorkflowTemplateUseRequest** | **CreateWorkflowTemplateUseRequest** |  | 

### Return type

**CreateWorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowTest**
```swift
    open class func createWorkflowTest(id: UUID, createWorkflowTestRequest: CreateWorkflowTestRequest, completion: @escaping (_ data: CreateWorkflowTestResponse?, _ error: Error?) -> Void)
```

Test a workflow (the saved graph, or a draft graph you pass). mode=test runs it for real, using pinned data where a node has it; mode=dry is a safe test: write, destructive and money nodes report what they would do and change nothing. Trigger items: the ones you pass, else pinned, else the last real ones, else the trigger sample.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.
let createWorkflowTestRequest = CreateWorkflowTestRequest(graph: "TODO", mode: "mode_example", triggerNodeId: "triggerNodeId_example", startNodeId: "startNodeId_example", stopAfterNodeId: "stopAfterNodeId_example", triggerItems: [CreateWorkflowRunOnRequestItems(json: "TODO")]) // CreateWorkflowTestRequest | 

// Test a workflow (the saved graph, or a draft graph you pass). mode=test runs it for real, using pinned data where a node has it; mode=dry is a safe test: write, destructive and money nodes report what they would do and change nothing. Trigger items: the ones you pass, else pinned, else the last real ones, else the trigger sample.
WorkflowsAPI.createWorkflowTest(id: id, createWorkflowTestRequest: createWorkflowTestRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 
 **createWorkflowTestRequest** | **CreateWorkflowTestRequest** |  | 

### Return type

**CreateWorkflowTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowValidate**
```swift
    open class func createWorkflowValidate(createWorkflowValidateRequest: CreateWorkflowValidateRequest, completion: @escaping (_ data: CreateWorkflowValidateResponse?, _ error: Error?) -> Void)
```

Validate a graph without saving it: unknown node types, missing required params, bad ports, cycles, expression errors. blocking=true means activation would be refused.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createWorkflowValidateRequest = CreateWorkflowValidateRequest(graph: "TODO") // CreateWorkflowValidateRequest | 

// Validate a graph without saving it: unknown node types, missing required params, bad ports, cycles, expression errors. blocking=true means activation would be refused.
WorkflowsAPI.createWorkflowValidate(createWorkflowValidateRequest: createWorkflowValidateRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWorkflowValidateRequest** | **CreateWorkflowValidateRequest** |  | 

### Return type

**CreateWorkflowValidateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowVersionRestore**
```swift
    open class func createWorkflowVersionRestore(id: UUID, v: Int, completion: @escaping (_ data: WorkflowResponse?, _ error: Error?) -> Void)
```

Restore an earlier version's graph as a new version. Pass version (the current one you read) to refuse the restore when someone saved meanwhile (409). Body optional: { version?: integer }.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.
let v = 987 // Int | The version number to restore.

// Restore an earlier version's graph as a new version. Pass version (the current one you read) to refuse the restore when someone saved meanwhile (409). Body optional: { version?: integer }.
WorkflowsAPI.createWorkflowVersionRestore(id: id, v: v) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 
 **v** | **Int** | The version number to restore. | 

### Return type

**WorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorkflowWebhookRotate**
```swift
    open class func createWorkflowWebhookRotate(id: UUID, nodeId: String, createWorkflowWebhookRotateRequest: CreateWorkflowWebhookRotateRequest, completion: @escaping (_ data: CreateWorkflowWebhookRotateResponse?, _ error: Error?) -> Void)
```

Issue a new inbound URL for an on.webhook trigger node (the old one stops working). The URL, and the signing secret when withSecret=true, are returned ONCE: store them now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.
let nodeId = "nodeId_example" // String | The on.webhook trigger node id.
let createWorkflowWebhookRotateRequest = CreateWorkflowWebhookRotateRequest(withSecret: false) // CreateWorkflowWebhookRotateRequest | 

// Issue a new inbound URL for an on.webhook trigger node (the old one stops working). The URL, and the signing secret when withSecret=true, are returned ONCE: store them now.
WorkflowsAPI.createWorkflowWebhookRotate(id: id, nodeId: nodeId, createWorkflowWebhookRotateRequest: createWorkflowWebhookRotateRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 
 **nodeId** | **String** | The on.webhook trigger node id. | 
 **createWorkflowWebhookRotateRequest** | **CreateWorkflowWebhookRotateRequest** |  | 

### Return type

**CreateWorkflowWebhookRotateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorkflow**
```swift
    open class func deleteWorkflow(id: UUID, completion: @escaping (_ data: DeleteWorkflowResponse?, _ error: Error?) -> Void)
```

Delete (archive) a workflow: its triggers stop, open runs are cancelled, run history stays readable.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.

// Delete (archive) a workflow: its triggers stop, open runs are cancelled, run history stays readable.
WorkflowsAPI.deleteWorkflow(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 

### Return type

**DeleteWorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorkflowChain**
```swift
    open class func deleteWorkflowChain(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete a workflow chain (cascades steps + runs).

Deprecated: workflow chains are workflows now. Use /v1/workflows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a workflow chain (cascades steps + runs).
WorkflowsAPI.deleteWorkflowChain(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** |  | 

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorkflow**
```swift
    open class func getWorkflow(id: UUID, completion: @escaping (_ data: GetWorkflowResponse?, _ error: Error?) -> Void)
```

Get one workflow with its full graph and current version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.

// Get one workflow with its full graph and current version.
WorkflowsAPI.getWorkflow(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 

### Return type

**GetWorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorkflowCatalog**
```swift
    open class func getWorkflowCatalog(completion: @escaping (_ data: GetWorkflowCatalogResponse?, _ error: Error?) -> Void)
```

Everything needed to build a workflow: every node type (params, ports, output fields, risk, platforms capability), which platforms each capability covers and which of those you have connected, the expression helpers and bindings ({{ $json.listingId }}…) and the condition operators. Read this before composing a graph rather than guessing node types or param keys.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Everything needed to build a workflow: every node type (params, ports, output fields, risk, platforms capability), which platforms each capability covers and which of those you have connected, the expression helpers and bindings ({{ $json.listingId }}…) and the condition operators. Read this before composing a graph rather than guessing node types or param keys.
WorkflowsAPI.getWorkflowCatalog() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**GetWorkflowCatalogResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorkflowChain**
```swift
    open class func getWorkflowChain(id: UUID, completion: @escaping (_ data: GetWorkflowChainResponse?, _ error: Error?) -> Void)
```

Get one workflow chain with its steps.

Deprecated: workflow chains are workflows now. Use /v1/workflows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Get one workflow chain with its steps.
WorkflowsAPI.getWorkflowChain(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** |  | 

### Return type

**GetWorkflowChainResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorkflowExport**
```swift
    open class func getWorkflowExport(id: UUID, pinnedData: PinnedData_getWorkflowExport? = nil, completion: @escaping (_ data: GetWorkflowExportResponse?, _ error: Error?) -> Void)
```

Export a workflow as a portable document (format crossly.workflow) that POST /v1/workflows/import accepts. Credentials and account handles are stripped; pinned test data only with pinnedData=true.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.
let pinnedData = "pinnedData_example" // String | Keep the nodes' pinned test data. (optional)

// Export a workflow as a portable document (format crossly.workflow) that POST /v1/workflows/import accepts. Credentials and account handles are stripped; pinned test data only with pinnedData=true.
WorkflowsAPI.getWorkflowExport(id: id, pinnedData: pinnedData) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 
 **pinnedData** | **String** | Keep the nodes&#39; pinned test data. | [optional] 

### Return type

**GetWorkflowExportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorkflowRun**
```swift
    open class func getWorkflowRun(runId: UUID, completion: @escaping (_ data: GetWorkflowRunResponse?, _ error: Error?) -> Void)
```

One run: its summary, the graph version it ran, and every node execution (status, item counts per port, timing, errors). Item data per node: GET …/nodes/{nodeId}.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let runId = 987 // UUID | Workflow run id.

// One run: its summary, the graph version it ran, and every node execution (status, item counts per port, timing, errors). Item data per node: GET …/nodes/{nodeId}.
WorkflowsAPI.getWorkflowRun(runId: runId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **UUID** | Workflow run id. | 

### Return type

**GetWorkflowRunResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorkflowRunNode**
```swift
    open class func getWorkflowRunNode(runId: UUID, nodeId: String, completion: @escaping (_ data: GetWorkflowRunNodeResponse?, _ error: Error?) -> Void)
```

Every execution of one node in a run with its input and output items (each port keeps the first 50 items, 16 KB per item; truncated=true when cut). Data older than the retention window, or not kept by settings.saveSuccessData=false, is pruned: that execution has input/output null and pruned=true, and when every execution is pruned the response is { data: null, meta: { pruned: true } } (never an empty list).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let runId = 987 // UUID | Workflow run id.
let nodeId = "nodeId_example" // String | Node id within the run's graph.

// Every execution of one node in a run with its input and output items (each port keeps the first 50 items, 16 KB per item; truncated=true when cut). Data older than the retention window, or not kept by settings.saveSuccessData=false, is pruned: that execution has input/output null and pruned=true, and when every execution is pruned the response is { data: null, meta: { pruned: true } } (never an empty list).
WorkflowsAPI.getWorkflowRunNode(runId: runId, nodeId: nodeId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **runId** | **UUID** | Workflow run id. | 
 **nodeId** | **String** | Node id within the run&#39;s graph. | 

### Return type

**GetWorkflowRunNodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorkflowApprovals**
```swift
    open class func listWorkflowApprovals(status: String? = nil, workflowId: UUID? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: ListWorkflowApprovalsResponse?, _ error: Error?) -> Void)
```

Approval requests from flow.approval nodes, newest first (pending only unless status says otherwise). Decide one with POST /v1/workflow-approvals/{id}/decide.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let status = "status_example" // String | Comma-separated: pending, approved, rejected, expired. Default pending. (optional)
let workflowId = 987 // UUID | Only approvals of this workflow. (optional)
let page = 987 // Int | 1-indexed page. (optional) (default to 1)
let limit = 987 // Int | Rows per page (1-100). (optional) (default to 25)

// Approval requests from flow.approval nodes, newest first (pending only unless status says otherwise). Decide one with POST /v1/workflow-approvals/{id}/decide.
WorkflowsAPI.listWorkflowApprovals(status: status, workflowId: workflowId, page: page, limit: limit) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String** | Comma-separated: pending, approved, rejected, expired. Default pending. | [optional] 
 **workflowId** | **UUID** | Only approvals of this workflow. | [optional] 
 **page** | **Int** | 1-indexed page. | [optional] [default to 1]
 **limit** | **Int** | Rows per page (1-100). | [optional] [default to 25]

### Return type

**ListWorkflowApprovalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorkflowChains**
```swift
    open class func listWorkflowChains(completion: @escaping (_ data: ListWorkflowChainsResponse?, _ error: Error?) -> Void)
```

List workflow chains with their step graph.

Deprecated: workflow chains are workflows now. Use /v1/workflows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List workflow chains with their step graph.
WorkflowsAPI.listWorkflowChains() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWorkflowChainsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorkflowRuns**
```swift
    open class func listWorkflowRuns(id: UUID, status: String? = nil, mode: Mode_listWorkflowRuns? = nil, since: Date? = nil, until: Date? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: ListWorkflowRunsResponse?, _ error: Error?) -> Void)
```

Run history of one workflow, newest first, with per-node status and item counts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.
let status = "status_example" // String | Comma-separated run statuses: queued, running, waiting, succeeded, failed, cancelled. (optional)
let mode = "mode_example" // String | live (triggers), test (editor test run) or dry (safe test: no writes). (optional)
let since = Date() // Date | Runs queued at or after this time (ISO 8601). (optional)
let until = Date() // Date | Runs queued at or before this time (ISO 8601). (optional)
let page = 987 // Int | 1-indexed page. (optional) (default to 1)
let limit = 987 // Int | Rows per page (1-100). (optional) (default to 25)

// Run history of one workflow, newest first, with per-node status and item counts.
WorkflowsAPI.listWorkflowRuns(id: id, status: status, mode: mode, since: since, until: until, page: page, limit: limit) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 
 **status** | **String** | Comma-separated run statuses: queued, running, waiting, succeeded, failed, cancelled. | [optional] 
 **mode** | **String** | live (triggers), test (editor test run) or dry (safe test: no writes). | [optional] 
 **since** | **Date** | Runs queued at or after this time (ISO 8601). | [optional] 
 **until** | **Date** | Runs queued at or before this time (ISO 8601). | [optional] 
 **page** | **Int** | 1-indexed page. | [optional] [default to 1]
 **limit** | **Int** | Rows per page (1-100). | [optional] [default to 25]

### Return type

**ListWorkflowRunsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorkflowRuns2**
```swift
    open class func listWorkflowRuns2(workflowId: UUID? = nil, status: String? = nil, mode: Mode_listWorkflowRuns2? = nil, since: Date? = nil, until: Date? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: ListWorkflowRunsResponse?, _ error: Error?) -> Void)
```

Runs of every workflow, newest first. Filter by workflow, status, mode and time.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let workflowId = 987 // UUID | Only runs of this workflow. (optional)
let status = "status_example" // String | Comma-separated run statuses: queued, running, waiting, succeeded, failed, cancelled. (optional)
let mode = "mode_example" // String | live (triggers), test (editor test run) or dry (safe test: no writes). (optional)
let since = Date() // Date | Runs queued at or after this time (ISO 8601). (optional)
let until = Date() // Date | Runs queued at or before this time (ISO 8601). (optional)
let page = 987 // Int | 1-indexed page. (optional) (default to 1)
let limit = 987 // Int | Rows per page (1-100). (optional) (default to 25)

// Runs of every workflow, newest first. Filter by workflow, status, mode and time.
WorkflowsAPI.listWorkflowRuns2(workflowId: workflowId, status: status, mode: mode, since: since, until: until, page: page, limit: limit) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowId** | **UUID** | Only runs of this workflow. | [optional] 
 **status** | **String** | Comma-separated run statuses: queued, running, waiting, succeeded, failed, cancelled. | [optional] 
 **mode** | **String** | live (triggers), test (editor test run) or dry (safe test: no writes). | [optional] 
 **since** | **Date** | Runs queued at or after this time (ISO 8601). | [optional] 
 **until** | **Date** | Runs queued at or before this time (ISO 8601). | [optional] 
 **page** | **Int** | 1-indexed page. | [optional] [default to 1]
 **limit** | **Int** | Rows per page (1-100). | [optional] [default to 25]

### Return type

**ListWorkflowRunsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorkflowSaleActive**
```swift
    open class func listWorkflowSaleActive(completion: @escaping (_ data: ListWorkflowSaleActiveResponse?, _ error: Error?) -> Void)
```

Every live or upcoming sale (a sales event started by a sale.start node) with the workflow that runs it: percent off, window, and how many listings it applies to.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every live or upcoming sale (a sales event started by a sale.start node) with the workflow that runs it: percent off, window, and how many listings it applies to.
WorkflowsAPI.listWorkflowSaleActive() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**ListWorkflowSaleActiveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorkflowTemplates**
```swift
    open class func listWorkflowTemplates(category: String? = nil, q: String? = nil, completion: @escaping (_ data: ListWorkflowTemplatesResponse?, _ error: Error?) -> Void)
```

Ready-made workflows (weekend sale, stale-listing markdowns, offer responder, ship-by alerts…), each a complete graph plus the setup fields its \"use\" call asks for.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let category = "category_example" // String | Exact template category, e.g. \"Sales & markdowns\". (optional)
let q = "q_example" // String | Matches name, description, category or tags. (optional)

// Ready-made workflows (weekend sale, stale-listing markdowns, offer responder, ship-by alerts…), each a complete graph plus the setup fields its \"use\" call asks for.
WorkflowsAPI.listWorkflowTemplates(category: category, q: q) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **String** | Exact template category, e.g. \&quot;Sales &amp; markdowns\&quot;. | [optional] 
 **q** | **String** | Matches name, description, category or tags. | [optional] 

### Return type

**ListWorkflowTemplatesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorkflowVersions**
```swift
    open class func listWorkflowVersions(id: UUID, completion: @escaping (_ data: ListWorkflowVersionsResponse?, _ error: Error?) -> Void)
```

The saved versions of a workflow, newest first (restore one with POST …/versions/{v}/restore).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.

// The saved versions of a workflow, newest first (restore one with POST …/versions/{v}/restore).
WorkflowsAPI.listWorkflowVersions(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 

### Return type

**ListWorkflowVersionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorkflows**
```swift
    open class func listWorkflows(active: Active_listWorkflows? = nil, tag: String? = nil, trigger: String? = nil, q: String? = nil, legacyRef: String? = nil, completion: @escaping (_ data: ListWorkflowsResponse?, _ error: Error?) -> Void)
```

List workflows, newest change first. A workflow is a graph of nodes: one or more triggers, then actions, lookups and flow nodes (if, switch, wait, approval…). Each row carries its trigger and node types and a 7-day run sparkline, not the graph (GET /v1/workflows/{id} has it).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let active = "active_example" // String | Only active (true) or paused (false) workflows. (optional)
let tag = "tag_example" // String | Only workflows carrying this tag. (optional)
let trigger = "trigger_example" // String | Only workflows started by this trigger node type, e.g. on.listing.sold. (optional)
let q = "q_example" // String | Name contains (case-insensitive). (optional)
let legacyRef = "legacyRef_example" // String | The workflow an old automation became: rule:<id>, chain:<id> or sale_event:<id>. (optional)

// List workflows, newest change first. A workflow is a graph of nodes: one or more triggers, then actions, lookups and flow nodes (if, switch, wait, approval…). Each row carries its trigger and node types and a 7-day run sparkline, not the graph (GET /v1/workflows/{id} has it).
WorkflowsAPI.listWorkflows(active: active, tag: tag, trigger: trigger, q: q, legacyRef: legacyRef) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **active** | **String** | Only active (true) or paused (false) workflows. | [optional] 
 **tag** | **String** | Only workflows carrying this tag. | [optional] 
 **trigger** | **String** | Only workflows started by this trigger node type, e.g. on.listing.sold. | [optional] 
 **q** | **String** | Name contains (case-insensitive). | [optional] 
 **legacyRef** | **String** | The workflow an old automation became: rule:&lt;id&gt;, chain:&lt;id&gt; or sale_event:&lt;id&gt;. | [optional] 

### Return type

**ListWorkflowsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorkflow**
```swift
    open class func updateWorkflow(id: UUID, updateWorkflowRequest: UpdateWorkflowRequest, completion: @escaping (_ data: WorkflowResponse?, _ error: Error?) -> Void)
```

Save a workflow. Pass the version you edited: a save over a newer version is 409 version_conflict (re-read and merge). Saving an active workflow validates it like activation does (422 with issues).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | Workflow id.
let updateWorkflowRequest = UpdateWorkflowRequest(version: 123, name: "name_example", description: "description_example", tags: ["tags_example"], graph: "TODO") // UpdateWorkflowRequest | 

// Save a workflow. Pass the version you edited: a save over a newer version is 409 version_conflict (re-read and merge). Saving an active workflow validates it like activation does (422 with issues).
WorkflowsAPI.updateWorkflow(id: id, updateWorkflowRequest: updateWorkflowRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** | Workflow id. | 
 **updateWorkflowRequest** | **UpdateWorkflowRequest** |  | 

### Return type

**WorkflowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorkflowChain**
```swift
    open class func updateWorkflowChain(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Replace a workflow chain wholesale.

Deprecated: workflow chains are workflows now. Use /v1/workflows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Replace a workflow chain wholesale.
WorkflowsAPI.updateWorkflowChain(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **UUID** |  | 

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

