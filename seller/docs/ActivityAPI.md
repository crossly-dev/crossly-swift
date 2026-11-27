# ActivityAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createActionLogExport**](ActivityAPI.md#createactionlogexport) | **POST** /v1/action-log/exports | Queue an export of the Activity Log: every event (csv, ndjson, pdf) or a summary report (pdf, ndjson). Poll GET /api/v1/action-log/exports/{exportId}, then download it. Exports never contain IP addresses.
[**createActionLogSearchTranslate**](ActivityAPI.md#createactionlogsearchtranslate) | **POST** /v1/action-log/search/translate | Turn a question in words (\&quot;failed delists on Mercari last week\&quot;) into an Activity Log search: pass the returned &#x60;q&#x60; to GET /api/v1/action-log (or the histogram and csv/ndjson exports). Nothing is run. A 404 with details.code &#x60;not_enabled&#x60; means natural-language search is off for this account.
[**createDetectedEventEventConfirm**](ActivityAPI.md#createdetectedeventeventconfirm) | **POST** /v1/detected-events/events/{id}/confirm | Answer an open ask (canConfirm true): optionally which item it is (itemId, one of the match candidates) and which actions to run instead of the ask&#39;s preselected ones. Returns the event. 409 ask_not_open when the event is not waiting.
[**createDetectedEventEventUndo**](ActivityAPI.md#createdetectedeventeventundo) | **POST** /v1/detected-events/events/{id}/undo | Undo what Crossly did for an event (canUndo true): every executed action&#39;s stored inverse runs, newest first (restore stock, relist, unlink…). Returns the event. 409 nothing_to_undo when nothing is reversible.
[**createDetectedEventRule**](ActivityAPI.md#createdetectedeventrule) | **POST** /v1/detected-events/rules | Create a detection rule: which detected events it applies to (filter + optional condition over any event axis) and what Crossly does then (and else). Without order it is placed most-specific-first, above the default set. Returns the stored rule with its id.
[**createDetectedEventRulePlace**](ActivityAPI.md#createdetectedeventruleplace) | **POST** /v1/detected-events/rules/place | Save one rule and the whole evaluation order in one transaction: rule.id is an existing id (replace) or any new client id (create); ids is every rule id top-down, naming the rule by that id. Returns the stored rule and the list.
[**createDetectedEventRuleReorder**](ActivityAPI.md#createdetectedeventrulereorder) | **POST** /v1/detected-events/rules/reorder | Set the evaluation order: ids top-down, defaults included (ids from the rules list). Rules are re-numbered 10, 20, 30…; a default moved above one of your rules is stored as your edit. Returns the list.
[**createDetectedEventRuleResetDefault**](ActivityAPI.md#createdetectedeventruleresetdefault) | **POST** /v1/detected-events/rules/reset-defaults | Drop your edits of the shipped default rules (keys, or all when omitted). Returns the list.
[**createDetectedEventSimulate**](ActivityAPI.md#createdetectedeventsimulate) | **POST** /v1/detected-events/simulate | Run one event through the rules without acting: the winning rule, rules it shadowed, the trace, the guards that held actions back and the plan per target with how it would run (direct / relay / ask / skip). event needs only kind; every axis left out takes its default. rules &#x3D; an unsaved draft list.
[**createDetectedEventSimulateImpact**](ActivityAPI.md#createdetectedeventsimulateimpact) | **POST** /v1/detected-events/simulate/impact | What a rule edit would change: your detected events of the last days (default 30, at most 500) re-resolved against the draft rules and against the stored ones. Per event: winning rule and actions before and after, and whether it changed. Nothing runs.
[**createEmailEventConfirm**](ActivityAPI.md#createemaileventconfirm) | **POST** /v1/email-events/{id}/confirm | Confirm an email-detected event: re-run it as certain (a possible sale records the sale and delists the item elsewhere). When several listings could be meant, pass platformListingDbId to choose one.
[**createEmailEventDismiss**](ActivityAPI.md#createemaileventdismiss) | **POST** /v1/email-events/{id}/dismiss | Dismiss an email-detected event (\&quot;not a sale\&quot;): closes the card without acting.
[**createEventPolicyDecisionConfirm**](ActivityAPI.md#createeventpolicydecisionconfirm) | **POST** /v1/event-policies/decisions/{id}/confirm | Confirm a review decision from a webhook, order poller or app relay (canConfirm true): the event runs again with the seller confirmed, so a review rule runs the strongest allowed non-review action for that cell. Returns the new decision. 409 when the decision was already confirmed or is not confirmable (email review decisions are confirmed on their review card).
[**deleteDetectedEventRule**](ActivityAPI.md#deletedetectedeventrule) | **DELETE** /v1/detected-events/rules/{id} | Delete a detection rule. Deleting your edit of a default (its id, or default:&lt;key&gt;) brings the shipped default back; deleting a translated event-policy rule deletes that policy rule too.
[**deleteEventPolicyRule**](ActivityAPI.md#deleteeventpolicyrule) | **DELETE** /v1/event-policies/rules/{id} | Delete a rule: its cell falls back to the next scope (platform → global → the built-in default).
[**getActionLog**](ActivityAPI.md#getactionlog) | **GET** /v1/action-log/{id} | One Activity Log event by id, with &#x60;view&#x60; including its steps and, for bulk jobs, its children.
[**getActionLogExport**](ActivityAPI.md#getactionlogexport) | **GET** /v1/action-log/exports/{exportId} | The state of one Activity Log export.
[**getActionLogExportDownload**](ActivityAPI.md#getactionlogexportdownload) | **GET** /v1/action-log/exports/{exportId}/download | Download a finished Activity Log export (for 24 hours after it completes).
[**getActionLogFacet**](ActivityAPI.md#getactionlogfacet) | **GET** /v1/action-log/facets | Filter options of the caller&#39;s Activity Log (last 90 days): areas with their actions and counts, the team members who acted, platforms and outcomes.
[**getDetectedEventEvent**](ActivityAPI.md#getdetectedeventevent) | **GET** /v1/detected-events/events/{id} | One detected event with every report of it (first + corroborations, with correlation and contradiction), the guards that held actions back, the plan and each executed action&#39;s outcome and reversibility.
[**getEventPolicy**](ActivityAPI.md#geteventpolicy) | **GET** /v1/event-policies | What Crossly does with each detected marketplace event (sale, listing ended, offer, cancellation, label, shipped, delivered, refund, return, payout, message), per who owns the item (crossly, imported, app_managed, other_tool, untracked). Each matrix cell lists the allowed actions and the effective one, with the scope it comes from (app &gt; platform &gt; global &gt; default). Pass platform (or appId) to see the matrix as that platform&#39;s (or app&#39;s) items see it. Also returns the rules, platforms and connected apps.
[**listActionLog**](ActivityAPI.md#listactionlog) | **GET** /v1/action-log | List Activity Log events, newest first. Each event carries &#x60;view&#x60; (title, sentence, fields, failure advice, who did it) and typed &#x60;detail&#x60;. Page with &#x60;cursor&#x60;; &#x60;pagination.total&#x60; counts matches.
[**listActionLogCalls**](ActivityAPI.md#listactionlogcalls) | **GET** /v1/action-log/{id}/calls | The outbound platform HTTP calls under an event (oldest first) — platform, operation, method, host, status, latency, error class/message, proxy + recipe id. Answers \&quot;what was sent / what went wrong\&quot;. The URL path, request/response bodies and persisted-query hash are never returned.
[**listActionLogHistogram**](ActivityAPI.md#listactionloghistogram) | **GET** /v1/action-log/histogram | Events per UTC day for the list filters (default: the last 30 days; at most 366).
[**listDetectedEventEvents**](ActivityAPI.md#listdetectedeventevents) | **GET** /v1/detected-events/events | Every event Crossly detected (sales, order changes, listing changes, offers, messages, account notices), newest first: all its axes, the rule that decided it, its corroborating reports, the plan per target and how each action went, with canConfirm (an open ask) and canUndo. Cursor-paged; filter by kinds, platforms statuses and accounts (comma-separated) and since (ISO time).
[**listDetectedEventRules**](ActivityAPI.md#listdetectedeventrules) | **GET** /v1/detected-events/rules | The seller&#39;s detection rules, top-down in the order they are evaluated (first match wins unless a rule says continue): the seller&#39;s own rules, translations of their event-policy rules (source legacy), then the shipped default set (source default, ids default:&lt;key&gt;; a stored edit of a default replaces it). Each rule has a filter (event kinds, platforms, accounts, apps, tags, items), an optional condition over any event axis, the actions it runs (then / else) and its guard loosenings.
[**listEmailEvents**](ActivityAPI.md#listemailevents) | **GET** /v1/email-events | List email-detected events waiting for the seller (status&#x3D;needs_review): a possible sale, ended listing, cancellation or other event an email reported that was not certain enough to act on automatically.
[**listEventPolicyDecisions**](ActivityAPI.md#listeventpolicydecisions) | **GET** /v1/event-policies/decisions | The decision log, newest first: for each detected event, what the rule or default asked for, what was done (after capability fallback and the email confidence ceiling), the rule that decided it, and the outcome (done / skipped / failed / review). Cursor-paged; filter by event, ownership, platform or outcome (outcome&#x3D;review: still waiting for the seller). Kept 90 days.
[**updateDetectedEventRule**](ActivityAPI.md#updatedetectedeventrule) | **PUT** /v1/detected-events/rules/{id} | Replace a detection rule. An id default:&lt;key&gt; stores your edit of that shipped default (delete it, or reset-defaults, to go back to the shipped one).
[**updateEventPolicyRule**](ActivityAPI.md#updateeventpolicyrule) | **PUT** /v1/event-policies/rules | Set what Crossly does with one kind of detected event for one kind of item: scope global (scopeValue null), platform (scopeValue &#x3D; platform id) or app (scopeValue &#x3D; OAuth app id, app_managed items only). Replaces the rule for the same cell and scope. The action must be one the matrix allows for that cell; import actions exist only for untracked items.


# **createActionLogExport**
```swift
    open class func createActionLogExport(createActionLogExportRequest: CreateActionLogExportRequest, completion: @escaping (_ data: GetActionLogExportResponse?, _ error: Error?) -> Void)
```

Queue an export of the Activity Log: every event (csv, ndjson, pdf) or a summary report (pdf, ndjson). Poll GET /api/v1/action-log/exports/{exportId}, then download it. Exports never contain IP addresses.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createActionLogExportRequest = CreateActionLogExportRequest(format: "format_example", report: "report_example", filters: CreateActionLogExportRequestFilters(action: "action_example", actorUserId: "actorUserId_example", status: "status_example", targetType: "targetType_example", targetId: "targetId_example", area: "area_example", platform: "platform_example", category: "category_example", source: "source_example", q: "q_example", since: Date(), until: Date())) // CreateActionLogExportRequest | 

// Queue an export of the Activity Log: every event (csv, ndjson, pdf) or a summary report (pdf, ndjson). Poll GET /api/v1/action-log/exports/{exportId}, then download it. Exports never contain IP addresses.
ActivityAPI.createActionLogExport(createActionLogExportRequest: createActionLogExportRequest) { (response, error) in
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
 **createActionLogExportRequest** | **CreateActionLogExportRequest** |  | 

### Return type

**GetActionLogExportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createActionLogSearchTranslate**
```swift
    open class func createActionLogSearchTranslate(createActionLogSearchTranslateRequest: CreateActionLogSearchTranslateRequest, completion: @escaping (_ data: CreateActionLogSearchTranslateResponse?, _ error: Error?) -> Void)
```

Turn a question in words (\"failed delists on Mercari last week\") into an Activity Log search: pass the returned `q` to GET /api/v1/action-log (or the histogram and csv/ndjson exports). Nothing is run. A 404 with details.code `not_enabled` means natural-language search is off for this account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createActionLogSearchTranslateRequest = CreateActionLogSearchTranslateRequest(text: "text_example") // CreateActionLogSearchTranslateRequest | 

// Turn a question in words (\"failed delists on Mercari last week\") into an Activity Log search: pass the returned `q` to GET /api/v1/action-log (or the histogram and csv/ndjson exports). Nothing is run. A 404 with details.code `not_enabled` means natural-language search is off for this account.
ActivityAPI.createActionLogSearchTranslate(createActionLogSearchTranslateRequest: createActionLogSearchTranslateRequest) { (response, error) in
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
 **createActionLogSearchTranslateRequest** | **CreateActionLogSearchTranslateRequest** |  | 

### Return type

**CreateActionLogSearchTranslateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDetectedEventEventConfirm**
```swift
    open class func createDetectedEventEventConfirm(id: UUID, createDetectedEventEventConfirmRequest: CreateDetectedEventEventConfirmRequest, completion: @escaping (_ data: CreateDetectedEventEventUndoResponse?, _ error: Error?) -> Void)
```

Answer an open ask (canConfirm true): optionally which item it is (itemId, one of the match candidates) and which actions to run instead of the ask's preselected ones. Returns the event. 409 ask_not_open when the event is not waiting.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let createDetectedEventEventConfirmRequest = CreateDetectedEventEventConfirmRequest(itemId: 123, actions: ["TODO"]) // CreateDetectedEventEventConfirmRequest | 

// Answer an open ask (canConfirm true): optionally which item it is (itemId, one of the match candidates) and which actions to run instead of the ask's preselected ones. Returns the event. 409 ask_not_open when the event is not waiting.
ActivityAPI.createDetectedEventEventConfirm(id: id, createDetectedEventEventConfirmRequest: createDetectedEventEventConfirmRequest) { (response, error) in
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
 **createDetectedEventEventConfirmRequest** | **CreateDetectedEventEventConfirmRequest** |  | 

### Return type

**CreateDetectedEventEventUndoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDetectedEventEventUndo**
```swift
    open class func createDetectedEventEventUndo(id: UUID, completion: @escaping (_ data: CreateDetectedEventEventUndoResponse?, _ error: Error?) -> Void)
```

Undo what Crossly did for an event (canUndo true): every executed action's stored inverse runs, newest first (restore stock, relist, unlink…). Returns the event. 409 nothing_to_undo when nothing is reversible.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Undo what Crossly did for an event (canUndo true): every executed action's stored inverse runs, newest first (restore stock, relist, unlink…). Returns the event. 409 nothing_to_undo when nothing is reversible.
ActivityAPI.createDetectedEventEventUndo(id: id) { (response, error) in
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

**CreateDetectedEventEventUndoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDetectedEventRule**
```swift
    open class func createDetectedEventRule(createDetectedEventRuleRequest: CreateDetectedEventRuleRequest, completion: @escaping (_ data: CreateDetectedEventRuleResponse?, _ error: Error?) -> Void)
```

Create a detection rule: which detected events it applies to (filter + optional condition over any event axis) and what Crossly does then (and else). Without order it is placed most-specific-first, above the default set. Returns the stored rule with its id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createDetectedEventRuleRequest = CreateDetectedEventRuleRequest(name: "name_example", enabled: false, order: 123, filter: "TODO", when: "TODO", then: ["TODO"], _else: ["TODO"], _continue: false, allowWeakEvidence: false, loosen: "TODO", target: "TODO", candidatePool: "TODO", meta: "TODO") // CreateDetectedEventRuleRequest | 

// Create a detection rule: which detected events it applies to (filter + optional condition over any event axis) and what Crossly does then (and else). Without order it is placed most-specific-first, above the default set. Returns the stored rule with its id.
ActivityAPI.createDetectedEventRule(createDetectedEventRuleRequest: createDetectedEventRuleRequest) { (response, error) in
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
 **createDetectedEventRuleRequest** | **CreateDetectedEventRuleRequest** |  | 

### Return type

**CreateDetectedEventRuleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDetectedEventRulePlace**
```swift
    open class func createDetectedEventRulePlace(createDetectedEventRulePlaceRequest: CreateDetectedEventRulePlaceRequest, completion: @escaping (_ data: CreateDetectedEventRulePlaceResponse?, _ error: Error?) -> Void)
```

Save one rule and the whole evaluation order in one transaction: rule.id is an existing id (replace) or any new client id (create); ids is every rule id top-down, naming the rule by that id. Returns the stored rule and the list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createDetectedEventRulePlaceRequest = CreateDetectedEventRulePlaceRequest(rule: CreateDetectedEventRuleRequest(name: "name_example", enabled: false, order: 123, filter: "TODO", when: "TODO", then: ["TODO"], _else: ["TODO"], _continue: false, allowWeakEvidence: false, loosen: "TODO", target: "TODO", candidatePool: "TODO", meta: "TODO"), ids: ["ids_example"]) // CreateDetectedEventRulePlaceRequest | 

// Save one rule and the whole evaluation order in one transaction: rule.id is an existing id (replace) or any new client id (create); ids is every rule id top-down, naming the rule by that id. Returns the stored rule and the list.
ActivityAPI.createDetectedEventRulePlace(createDetectedEventRulePlaceRequest: createDetectedEventRulePlaceRequest) { (response, error) in
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
 **createDetectedEventRulePlaceRequest** | **CreateDetectedEventRulePlaceRequest** |  | 

### Return type

**CreateDetectedEventRulePlaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDetectedEventRuleReorder**
```swift
    open class func createDetectedEventRuleReorder(createDetectedEventRuleReorderRequest: CreateDetectedEventRuleReorderRequest, completion: @escaping (_ data: CreateDetectedEventRuleReorderResponse?, _ error: Error?) -> Void)
```

Set the evaluation order: ids top-down, defaults included (ids from the rules list). Rules are re-numbered 10, 20, 30…; a default moved above one of your rules is stored as your edit. Returns the list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createDetectedEventRuleReorderRequest = CreateDetectedEventRuleReorderRequest(ids: ["ids_example"]) // CreateDetectedEventRuleReorderRequest | 

// Set the evaluation order: ids top-down, defaults included (ids from the rules list). Rules are re-numbered 10, 20, 30…; a default moved above one of your rules is stored as your edit. Returns the list.
ActivityAPI.createDetectedEventRuleReorder(createDetectedEventRuleReorderRequest: createDetectedEventRuleReorderRequest) { (response, error) in
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
 **createDetectedEventRuleReorderRequest** | **CreateDetectedEventRuleReorderRequest** |  | 

### Return type

**CreateDetectedEventRuleReorderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDetectedEventRuleResetDefault**
```swift
    open class func createDetectedEventRuleResetDefault(createDetectedEventRuleResetDefaultRequest: CreateDetectedEventRuleResetDefaultRequest, completion: @escaping (_ data: CreateDetectedEventRuleReorderResponse?, _ error: Error?) -> Void)
```

Drop your edits of the shipped default rules (keys, or all when omitted). Returns the list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createDetectedEventRuleResetDefaultRequest = CreateDetectedEventRuleResetDefaultRequest(keys: ["keys_example"]) // CreateDetectedEventRuleResetDefaultRequest | 

// Drop your edits of the shipped default rules (keys, or all when omitted). Returns the list.
ActivityAPI.createDetectedEventRuleResetDefault(createDetectedEventRuleResetDefaultRequest: createDetectedEventRuleResetDefaultRequest) { (response, error) in
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
 **createDetectedEventRuleResetDefaultRequest** | **CreateDetectedEventRuleResetDefaultRequest** |  | 

### Return type

**CreateDetectedEventRuleReorderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDetectedEventSimulate**
```swift
    open class func createDetectedEventSimulate(createDetectedEventSimulateRequest: CreateDetectedEventSimulateRequest, completion: @escaping (_ data: CreateDetectedEventSimulateResponse?, _ error: Error?) -> Void)
```

Run one event through the rules without acting: the winning rule, rules it shadowed, the trace, the guards that held actions back and the plan per target with how it would run (direct / relay / ask / skip). event needs only kind; every axis left out takes its default. rules = an unsaved draft list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createDetectedEventSimulateRequest = CreateDetectedEventSimulateRequest(event: "TODO", rules: ["TODO"]) // CreateDetectedEventSimulateRequest | 

// Run one event through the rules without acting: the winning rule, rules it shadowed, the trace, the guards that held actions back and the plan per target with how it would run (direct / relay / ask / skip). event needs only kind; every axis left out takes its default. rules = an unsaved draft list.
ActivityAPI.createDetectedEventSimulate(createDetectedEventSimulateRequest: createDetectedEventSimulateRequest) { (response, error) in
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
 **createDetectedEventSimulateRequest** | **CreateDetectedEventSimulateRequest** |  | 

### Return type

**CreateDetectedEventSimulateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDetectedEventSimulateImpact**
```swift
    open class func createDetectedEventSimulateImpact(createDetectedEventSimulateImpactRequest: CreateDetectedEventSimulateImpactRequest, completion: @escaping (_ data: CreateDetectedEventSimulateImpactResponse?, _ error: Error?) -> Void)
```

What a rule edit would change: your detected events of the last days (default 30, at most 500) re-resolved against the draft rules and against the stored ones. Per event: winning rule and actions before and after, and whether it changed. Nothing runs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createDetectedEventSimulateImpactRequest = CreateDetectedEventSimulateImpactRequest(rules: ["TODO"], days: 123) // CreateDetectedEventSimulateImpactRequest | 

// What a rule edit would change: your detected events of the last days (default 30, at most 500) re-resolved against the draft rules and against the stored ones. Per event: winning rule and actions before and after, and whether it changed. Nothing runs.
ActivityAPI.createDetectedEventSimulateImpact(createDetectedEventSimulateImpactRequest: createDetectedEventSimulateImpactRequest) { (response, error) in
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
 **createDetectedEventSimulateImpactRequest** | **CreateDetectedEventSimulateImpactRequest** |  | 

### Return type

**CreateDetectedEventSimulateImpactResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createEmailEventConfirm**
```swift
    open class func createEmailEventConfirm(id: UUID, createEmailEventConfirmRequest: CreateEmailEventConfirmRequest, completion: @escaping (_ data: CreateEmailEventConfirmResponse?, _ error: Error?) -> Void)
```

Confirm an email-detected event: re-run it as certain (a possible sale records the sale and delists the item elsewhere). When several listings could be meant, pass platformListingDbId to choose one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let createEmailEventConfirmRequest = CreateEmailEventConfirmRequest(platformListingDbId: 123) // CreateEmailEventConfirmRequest | 

// Confirm an email-detected event: re-run it as certain (a possible sale records the sale and delists the item elsewhere). When several listings could be meant, pass platformListingDbId to choose one.
ActivityAPI.createEmailEventConfirm(id: id, createEmailEventConfirmRequest: createEmailEventConfirmRequest) { (response, error) in
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
 **createEmailEventConfirmRequest** | **CreateEmailEventConfirmRequest** |  | 

### Return type

**CreateEmailEventConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createEmailEventDismiss**
```swift
    open class func createEmailEventDismiss(id: UUID, completion: @escaping (_ data: IdStatusResponse?, _ error: Error?) -> Void)
```

Dismiss an email-detected event (\"not a sale\"): closes the card without acting.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Dismiss an email-detected event (\"not a sale\"): closes the card without acting.
ActivityAPI.createEmailEventDismiss(id: id) { (response, error) in
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

**IdStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createEventPolicyDecisionConfirm**
```swift
    open class func createEventPolicyDecisionConfirm(id: UUID, completion: @escaping (_ data: CreateEventPolicyDecisionConfirmResponse?, _ error: Error?) -> Void)
```

Confirm a review decision from a webhook, order poller or app relay (canConfirm true): the event runs again with the seller confirmed, so a review rule runs the strongest allowed non-review action for that cell. Returns the new decision. 409 when the decision was already confirmed or is not confirmable (email review decisions are confirmed on their review card).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Confirm a review decision from a webhook, order poller or app relay (canConfirm true): the event runs again with the seller confirmed, so a review rule runs the strongest allowed non-review action for that cell. Returns the new decision. 409 when the decision was already confirmed or is not confirmable (email review decisions are confirmed on their review card).
ActivityAPI.createEventPolicyDecisionConfirm(id: id) { (response, error) in
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

**CreateEventPolicyDecisionConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteDetectedEventRule**
```swift
    open class func deleteDetectedEventRule(id: String, completion: @escaping (_ data: DeleteStoryResponse?, _ error: Error?) -> Void)
```

Delete a detection rule. Deleting your edit of a default (its id, or default:<key>) brings the shipped default back; deleting a translated event-policy rule deletes that policy rule too.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a detection rule. Deleting your edit of a default (its id, or default:<key>) brings the shipped default back; deleting a translated event-policy rule deletes that policy rule too.
ActivityAPI.deleteDetectedEventRule(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

**DeleteStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteEventPolicyRule**
```swift
    open class func deleteEventPolicyRule(id: UUID, completion: @escaping (_ data: DeleteStoryResponse?, _ error: Error?) -> Void)
```

Delete a rule: its cell falls back to the next scope (platform → global → the built-in default).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a rule: its cell falls back to the next scope (platform → global → the built-in default).
ActivityAPI.deleteEventPolicyRule(id: id) { (response, error) in
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

**DeleteStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getActionLog**
```swift
    open class func getActionLog(id: UUID, completion: @escaping (_ data: ListActionLogItem?, _ error: Error?) -> Void)
```

One Activity Log event by id, with `view` including its steps and, for bulk jobs, its children.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// One Activity Log event by id, with `view` including its steps and, for bulk jobs, its children.
ActivityAPI.getActionLog(id: id) { (response, error) in
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

**ListActionLogItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getActionLogExport**
```swift
    open class func getActionLogExport(exportId: String, completion: @escaping (_ data: GetActionLogExportResponse?, _ error: Error?) -> Void)
```

The state of one Activity Log export.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let exportId = "exportId_example" // String | 

// The state of one Activity Log export.
ActivityAPI.getActionLogExport(exportId: exportId) { (response, error) in
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
 **exportId** | **String** |  | 

### Return type

**GetActionLogExportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getActionLogExportDownload**
```swift
    open class func getActionLogExportDownload(exportId: String, completion: @escaping (_ data: GetActionLogExportDownloadResponse?, _ error: Error?) -> Void)
```

Download a finished Activity Log export (for 24 hours after it completes).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let exportId = "exportId_example" // String | 

// Download a finished Activity Log export (for 24 hours after it completes).
ActivityAPI.getActionLogExportDownload(exportId: exportId) { (response, error) in
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
 **exportId** | **String** |  | 

### Return type

**GetActionLogExportDownloadResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getActionLogFacet**
```swift
    open class func getActionLogFacet(completion: @escaping (_ data: GetActionLogFacetResponse?, _ error: Error?) -> Void)
```

Filter options of the caller's Activity Log (last 90 days): areas with their actions and counts, the team members who acted, platforms and outcomes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Filter options of the caller's Activity Log (last 90 days): areas with their actions and counts, the team members who acted, platforms and outcomes.
ActivityAPI.getActionLogFacet() { (response, error) in
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

**GetActionLogFacetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getDetectedEventEvent**
```swift
    open class func getDetectedEventEvent(id: UUID, completion: @escaping (_ data: GetDetectedEventEventResponse?, _ error: Error?) -> Void)
```

One detected event with every report of it (first + corroborations, with correlation and contradiction), the guards that held actions back, the plan and each executed action's outcome and reversibility.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// One detected event with every report of it (first + corroborations, with correlation and contradiction), the guards that held actions back, the plan and each executed action's outcome and reversibility.
ActivityAPI.getDetectedEventEvent(id: id) { (response, error) in
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

**GetDetectedEventEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getEventPolicy**
```swift
    open class func getEventPolicy(platform: String? = nil, appId: UUID? = nil, completion: @escaping (_ data: GetEventPolicyResponse?, _ error: Error?) -> Void)
```

What Crossly does with each detected marketplace event (sale, listing ended, offer, cancellation, label, shipped, delivered, refund, return, payout, message), per who owns the item (crossly, imported, app_managed, other_tool, untracked). Each matrix cell lists the allowed actions and the effective one, with the scope it comes from (app > platform > global > default). Pass platform (or appId) to see the matrix as that platform's (or app's) items see it. Also returns the rules, platforms and connected apps.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String |  (optional)
let appId = 987 // UUID |  (optional)

// What Crossly does with each detected marketplace event (sale, listing ended, offer, cancellation, label, shipped, delivered, refund, return, payout, message), per who owns the item (crossly, imported, app_managed, other_tool, untracked). Each matrix cell lists the allowed actions and the effective one, with the scope it comes from (app > platform > global > default). Pass platform (or appId) to see the matrix as that platform's (or app's) items see it. Also returns the rules, platforms and connected apps.
ActivityAPI.getEventPolicy(platform: platform, appId: appId) { (response, error) in
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
 **platform** | **String** |  | [optional] 
 **appId** | **UUID** |  | [optional] 

### Return type

**GetEventPolicyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listActionLog**
```swift
    open class func listActionLog(platform: String? = nil, action: String? = nil, category: String? = nil, area: Area_listActionLog? = nil, status: Status_listActionLog? = nil, source: String? = nil, targetType: String? = nil, targetId: String? = nil, actorUserId: String? = nil, q: String? = nil, since: Date? = nil, until: Date? = nil, at: Date? = nil, cursor: String? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: ListActionLogResponse?, _ error: Error?) -> Void)
```

List Activity Log events, newest first. Each event carries `view` (title, sentence, fields, failure advice, who did it) and typed `detail`. Page with `cursor`; `pagination.total` counts matches.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | Platform id (`ebay`, `poshmark`, ...). (optional)
let action = "action_example" // String | A canonical action key (`listing.delist`, see the public action catalog) or a legacy action word. (optional)
let category = "category_example" // String |  (optional)
let area = "area_example" // String | A seller area: every action of that area (the grouped filter of the dashboard). (optional)
let status = "status_example" // String |  (optional)
let source = "source_example" // String |  (optional)
let targetType = "targetType_example" // String | With targetId: events about that object (any of their targets). (optional)
let targetId = "targetId_example" // String |  (optional)
let actorUserId = "actorUserId_example" // String | Only what one team member did. (optional)
let q = "q_example" // String | A search in the activity query language (`action:listing.* -outcome:failure \"free text\"`), ANDed with the other filters. POST /api/v1/action-log/search/translate turns a question in words into one. (optional)
let since = Date() // Date | Inclusive lower bound on when the action happened. (optional)
let until = Date() // Date | Exclusive upper bound. (optional)
let at = Date() // Date | Jump to a time: the page starts at the newest event at or before it. (optional)
let cursor = "cursor_example" // String | `pagination.nextCursor` of the previous page. (optional)
let limit = 987 // Int |  (optional) (default to 50)
let offset = 987 // Int | Deprecated: use cursor. offset + limit may reach at most 1000 events. (optional)

// List Activity Log events, newest first. Each event carries `view` (title, sentence, fields, failure advice, who did it) and typed `detail`. Page with `cursor`; `pagination.total` counts matches.
ActivityAPI.listActionLog(platform: platform, action: action, category: category, area: area, status: status, source: source, targetType: targetType, targetId: targetId, actorUserId: actorUserId, q: q, since: since, until: until, at: at, cursor: cursor, limit: limit, offset: offset) { (response, error) in
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
 **platform** | **String** | Platform id (&#x60;ebay&#x60;, &#x60;poshmark&#x60;, ...). | [optional] 
 **action** | **String** | A canonical action key (&#x60;listing.delist&#x60;, see the public action catalog) or a legacy action word. | [optional] 
 **category** | **String** |  | [optional] 
 **area** | **String** | A seller area: every action of that area (the grouped filter of the dashboard). | [optional] 
 **status** | **String** |  | [optional] 
 **source** | **String** |  | [optional] 
 **targetType** | **String** | With targetId: events about that object (any of their targets). | [optional] 
 **targetId** | **String** |  | [optional] 
 **actorUserId** | **String** | Only what one team member did. | [optional] 
 **q** | **String** | A search in the activity query language (&#x60;action:listing.* -outcome:failure \&quot;free text\&quot;&#x60;), ANDed with the other filters. POST /api/v1/action-log/search/translate turns a question in words into one. | [optional] 
 **since** | **Date** | Inclusive lower bound on when the action happened. | [optional] 
 **until** | **Date** | Exclusive upper bound. | [optional] 
 **at** | **Date** | Jump to a time: the page starts at the newest event at or before it. | [optional] 
 **cursor** | **String** | &#x60;pagination.nextCursor&#x60; of the previous page. | [optional] 
 **limit** | **Int** |  | [optional] [default to 50]
 **offset** | **Int** | Deprecated: use cursor. offset + limit may reach at most 1000 events. | [optional] 

### Return type

**ListActionLogResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listActionLogCalls**
```swift
    open class func listActionLogCalls(id: UUID, completion: @escaping (_ data: ListActionLogCallsResponse?, _ error: Error?) -> Void)
```

The outbound platform HTTP calls under an event (oldest first) — platform, operation, method, host, status, latency, error class/message, proxy + recipe id. Answers \"what was sent / what went wrong\". The URL path, request/response bodies and persisted-query hash are never returned.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// The outbound platform HTTP calls under an event (oldest first) — platform, operation, method, host, status, latency, error class/message, proxy + recipe id. Answers \"what was sent / what went wrong\". The URL path, request/response bodies and persisted-query hash are never returned.
ActivityAPI.listActionLogCalls(id: id) { (response, error) in
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

**ListActionLogCallsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listActionLogHistogram**
```swift
    open class func listActionLogHistogram(platform: String? = nil, action: String? = nil, category: String? = nil, area: Area_listActionLogHistogram? = nil, status: Status_listActionLogHistogram? = nil, source: String? = nil, targetType: String? = nil, targetId: String? = nil, actorUserId: String? = nil, q: String? = nil, since: Date? = nil, until: Date? = nil, completion: @escaping (_ data: ListActionLogHistogramResponse?, _ error: Error?) -> Void)
```

Events per UTC day for the list filters (default: the last 30 days; at most 366).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | Platform id (`ebay`, `poshmark`, ...). (optional)
let action = "action_example" // String | A canonical action key (`listing.delist`, see the public action catalog) or a legacy action word. (optional)
let category = "category_example" // String |  (optional)
let area = "area_example" // String | A seller area: every action of that area (the grouped filter of the dashboard). (optional)
let status = "status_example" // String |  (optional)
let source = "source_example" // String |  (optional)
let targetType = "targetType_example" // String | With targetId: events about that object (any of their targets). (optional)
let targetId = "targetId_example" // String |  (optional)
let actorUserId = "actorUserId_example" // String | Only what one team member did. (optional)
let q = "q_example" // String | A search in the activity query language (`action:listing.* -outcome:failure \"free text\"`), ANDed with the other filters. POST /api/v1/action-log/search/translate turns a question in words into one. (optional)
let since = Date() // Date | Inclusive lower bound on when the action happened. (optional)
let until = Date() // Date | Exclusive upper bound. (optional)

// Events per UTC day for the list filters (default: the last 30 days; at most 366).
ActivityAPI.listActionLogHistogram(platform: platform, action: action, category: category, area: area, status: status, source: source, targetType: targetType, targetId: targetId, actorUserId: actorUserId, q: q, since: since, until: until) { (response, error) in
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
 **platform** | **String** | Platform id (&#x60;ebay&#x60;, &#x60;poshmark&#x60;, ...). | [optional] 
 **action** | **String** | A canonical action key (&#x60;listing.delist&#x60;, see the public action catalog) or a legacy action word. | [optional] 
 **category** | **String** |  | [optional] 
 **area** | **String** | A seller area: every action of that area (the grouped filter of the dashboard). | [optional] 
 **status** | **String** |  | [optional] 
 **source** | **String** |  | [optional] 
 **targetType** | **String** | With targetId: events about that object (any of their targets). | [optional] 
 **targetId** | **String** |  | [optional] 
 **actorUserId** | **String** | Only what one team member did. | [optional] 
 **q** | **String** | A search in the activity query language (&#x60;action:listing.* -outcome:failure \&quot;free text\&quot;&#x60;), ANDed with the other filters. POST /api/v1/action-log/search/translate turns a question in words into one. | [optional] 
 **since** | **Date** | Inclusive lower bound on when the action happened. | [optional] 
 **until** | **Date** | Exclusive upper bound. | [optional] 

### Return type

**ListActionLogHistogramResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listDetectedEventEvents**
```swift
    open class func listDetectedEventEvents(kinds: String? = nil, platforms: String? = nil, accounts: String? = nil, statuses: String? = nil, since: Date? = nil, cursor: String? = nil, limit: Int? = nil, completion: @escaping (_ data: ListDetectedEventEventsResponse?, _ error: Error?) -> Void)
```

Every event Crossly detected (sales, order changes, listing changes, offers, messages, account notices), newest first: all its axes, the rule that decided it, its corroborating reports, the plan per target and how each action went, with canConfirm (an open ask) and canUndo. Cursor-paged; filter by kinds, platforms statuses and accounts (comma-separated) and since (ISO time).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let kinds = "kinds_example" // String |  (optional)
let platforms = "platforms_example" // String |  (optional)
let accounts = "accounts_example" // String | Comma-separated platform account ids (scope.account). (optional)
let statuses = "statuses_example" // String | Comma-separated: acted, held, asked, confirmed, ignored, undone, failed, received, corrected (optional)
let since = Date() // Date |  (optional)
let cursor = "cursor_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// Every event Crossly detected (sales, order changes, listing changes, offers, messages, account notices), newest first: all its axes, the rule that decided it, its corroborating reports, the plan per target and how each action went, with canConfirm (an open ask) and canUndo. Cursor-paged; filter by kinds, platforms statuses and accounts (comma-separated) and since (ISO time).
ActivityAPI.listDetectedEventEvents(kinds: kinds, platforms: platforms, accounts: accounts, statuses: statuses, since: since, cursor: cursor, limit: limit) { (response, error) in
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
 **kinds** | **String** |  | [optional] 
 **platforms** | **String** |  | [optional] 
 **accounts** | **String** | Comma-separated platform account ids (scope.account). | [optional] 
 **statuses** | **String** | Comma-separated: acted, held, asked, confirmed, ignored, undone, failed, received, corrected | [optional] 
 **since** | **Date** |  | [optional] 
 **cursor** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

**ListDetectedEventEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listDetectedEventRules**
```swift
    open class func listDetectedEventRules(completion: @escaping (_ data: ListDetectedEventRulesResponse?, _ error: Error?) -> Void)
```

The seller's detection rules, top-down in the order they are evaluated (first match wins unless a rule says continue): the seller's own rules, translations of their event-policy rules (source legacy), then the shipped default set (source default, ids default:<key>; a stored edit of a default replaces it). Each rule has a filter (event kinds, platforms, accounts, apps, tags, items), an optional condition over any event axis, the actions it runs (then / else) and its guard loosenings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The seller's detection rules, top-down in the order they are evaluated (first match wins unless a rule says continue): the seller's own rules, translations of their event-policy rules (source legacy), then the shipped default set (source default, ids default:<key>; a stored edit of a default replaces it). Each rule has a filter (event kinds, platforms, accounts, apps, tags, items), an optional condition over any event axis, the actions it runs (then / else) and its guard loosenings.
ActivityAPI.listDetectedEventRules() { (response, error) in
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

**ListDetectedEventRulesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listEmailEvents**
```swift
    open class func listEmailEvents(status: Status_listEmailEvents? = nil, completion: @escaping (_ data: ListEmailEventsResponse?, _ error: Error?) -> Void)
```

List email-detected events waiting for the seller (status=needs_review): a possible sale, ended listing, cancellation or other event an email reported that was not certain enough to act on automatically.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let status = "status_example" // String |  (optional) (default to .needsReview)

// List email-detected events waiting for the seller (status=needs_review): a possible sale, ended listing, cancellation or other event an email reported that was not certain enough to act on automatically.
ActivityAPI.listEmailEvents(status: status) { (response, error) in
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
 **status** | **String** |  | [optional] [default to .needsReview]

### Return type

**ListEmailEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listEventPolicyDecisions**
```swift
    open class func listEventPolicyDecisions(cursor: String? = nil, limit: Int? = nil, event: Event_listEventPolicyDecisions? = nil, ownership: Ownership_listEventPolicyDecisions? = nil, platform: String? = nil, outcome: Outcome_listEventPolicyDecisions? = nil, completion: @escaping (_ data: ListEventPolicyDecisionsResponse?, _ error: Error?) -> Void)
```

The decision log, newest first: for each detected event, what the rule or default asked for, what was done (after capability fallback and the email confidence ceiling), the rule that decided it, and the outcome (done / skipped / failed / review). Cursor-paged; filter by event, ownership, platform or outcome (outcome=review: still waiting for the seller). Kept 90 days.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let cursor = "cursor_example" // String |  (optional)
let limit = 987 // Int |  (optional)
let event = "event_example" // String |  (optional)
let ownership = "ownership_example" // String |  (optional)
let platform = "platform_example" // String |  (optional)
let outcome = "outcome_example" // String |  (optional)

// The decision log, newest first: for each detected event, what the rule or default asked for, what was done (after capability fallback and the email confidence ceiling), the rule that decided it, and the outcome (done / skipped / failed / review). Cursor-paged; filter by event, ownership, platform or outcome (outcome=review: still waiting for the seller). Kept 90 days.
ActivityAPI.listEventPolicyDecisions(cursor: cursor, limit: limit, event: event, ownership: ownership, platform: platform, outcome: outcome) { (response, error) in
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
 **cursor** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **event** | **String** |  | [optional] 
 **ownership** | **String** |  | [optional] 
 **platform** | **String** |  | [optional] 
 **outcome** | **String** |  | [optional] 

### Return type

**ListEventPolicyDecisionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateDetectedEventRule**
```swift
    open class func updateDetectedEventRule(id: String, createDetectedEventRuleRequest: CreateDetectedEventRuleRequest, completion: @escaping (_ data: CreateDetectedEventRuleResponse?, _ error: Error?) -> Void)
```

Replace a detection rule. An id default:<key> stores your edit of that shipped default (delete it, or reset-defaults, to go back to the shipped one).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let createDetectedEventRuleRequest = CreateDetectedEventRuleRequest(name: "name_example", enabled: false, order: 123, filter: "TODO", when: "TODO", then: ["TODO"], _else: ["TODO"], _continue: false, allowWeakEvidence: false, loosen: "TODO", target: "TODO", candidatePool: "TODO", meta: "TODO") // CreateDetectedEventRuleRequest | 

// Replace a detection rule. An id default:<key> stores your edit of that shipped default (delete it, or reset-defaults, to go back to the shipped one).
ActivityAPI.updateDetectedEventRule(id: id, createDetectedEventRuleRequest: createDetectedEventRuleRequest) { (response, error) in
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
 **id** | **String** |  | 
 **createDetectedEventRuleRequest** | **CreateDetectedEventRuleRequest** |  | 

### Return type

**CreateDetectedEventRuleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateEventPolicyRule**
```swift
    open class func updateEventPolicyRule(updateEventPolicyRuleRequest: UpdateEventPolicyRuleRequest, completion: @escaping (_ data: UpdateEventPolicyRuleResponse?, _ error: Error?) -> Void)
```

Set what Crossly does with one kind of detected event for one kind of item: scope global (scopeValue null), platform (scopeValue = platform id) or app (scopeValue = OAuth app id, app_managed items only). Replaces the rule for the same cell and scope. The action must be one the matrix allows for that cell; import actions exist only for untracked items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let updateEventPolicyRuleRequest = UpdateEventPolicyRuleRequest(scope: "scope_example", scopeValue: "scopeValue_example", event: "event_example", ownership: "ownership_example", action: "action_example") // UpdateEventPolicyRuleRequest | 

// Set what Crossly does with one kind of detected event for one kind of item: scope global (scopeValue null), platform (scopeValue = platform id) or app (scopeValue = OAuth app id, app_managed items only). Replaces the rule for the same cell and scope. The action must be one the matrix allows for that cell; import actions exist only for untracked items.
ActivityAPI.updateEventPolicyRule(updateEventPolicyRuleRequest: updateEventPolicyRuleRequest) { (response, error) in
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
 **updateEventPolicyRuleRequest** | **UpdateEventPolicyRuleRequest** |  | 

### Return type

**UpdateEventPolicyRuleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

