# MagicAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMagicAutoDecisionUndo**](MagicAPI.md#createmagicautodecisionundo) | **POST** /v1/magic/auto/decisions/{decisionId}/undo | Undo an automated Magic List decision, deleting its unpublished draft.
[**createMagicAutoItem**](MagicAPI.md#createmagicautoitem) | **POST** /v1/magic/auto/items | Scan one item and match it automatically (drafts only, never publishes).
[**createMagicAutoRun**](MagicAPI.md#createmagicautorun) | **POST** /v1/magic/auto/runs/{runId} | Score a Magic List run automatically; a confident match in auto mode becomes a draft.
[**createMagicAutoRunSwipe**](MagicAPI.md#createmagicautorunswipe) | **POST** /v1/magic/auto/runs/{runId}/swipes | Record a seller swipe session (kept and rejected match keys) for a Magic List run.
[**createMagicScan**](MagicAPI.md#createmagicscan) | **POST** /v1/magic/scan | Run a Magic List image scan.
[**createMagicScanSynthesize**](MagicAPI.md#createmagicscansynthesize) | **POST** /v1/magic/scan/{runId}/synthesize | Synthesize a draft from confirmed matches.
[**getMagicAutoSetting**](MagicAPI.md#getmagicautosetting) | **GET** /v1/magic/auto/settings | The seller’s Magic List automated-matching mode.
[**getMagicDraft**](MagicAPI.md#getmagicdraft) | **GET** /v1/magic/drafts/{draftId} | Get a synthesized Magic List draft.
[**listMagicAutoRunDecisions**](MagicAPI.md#listmagicautorundecisions) | **GET** /v1/magic/auto/runs/{runId}/decisions | Every match decision round (automated and seller) for a Magic List run.
[**listMagicRecent**](MagicAPI.md#listmagicrecent) | **GET** /v1/magic/recent | Recent Magic List scans for this seller.
[**updateMagicAutoSetting**](MagicAPI.md#updatemagicautosetting) | **PUT** /v1/magic/auto/settings | Set the Magic List automated-matching mode (off | auto | review_all).


# **createMagicAutoDecisionUndo**
```swift
    open class func createMagicAutoDecisionUndo(decisionId: UUID, completion: @escaping (_ data: CreateMagicAutoDecisionUndoResponse?, _ error: Error?) -> Void)
```

Undo an automated Magic List decision, deleting its unpublished draft.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let decisionId = 987 // UUID | 

// Undo an automated Magic List decision, deleting its unpublished draft.
MagicAPI.createMagicAutoDecisionUndo(decisionId: decisionId) { (response, error) in
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
 **decisionId** | **UUID** |  | 

### Return type

**CreateMagicAutoDecisionUndoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createMagicAutoItem**
```swift
    open class func createMagicAutoItem(completion: @escaping (_ data: CreateMagicAutoItemResponse?, _ error: Error?) -> Void)
```

Scan one item and match it automatically (drafts only, never publishes).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Scan one item and match it automatically (drafts only, never publishes).
MagicAPI.createMagicAutoItem() { (response, error) in
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

**CreateMagicAutoItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createMagicAutoRun**
```swift
    open class func createMagicAutoRun(runId: UUID, completion: @escaping (_ data: CreateMagicAutoRunResponse?, _ error: Error?) -> Void)
```

Score a Magic List run automatically; a confident match in auto mode becomes a draft.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let runId = 987 // UUID | 

// Score a Magic List run automatically; a confident match in auto mode becomes a draft.
MagicAPI.createMagicAutoRun(runId: runId) { (response, error) in
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
 **runId** | **UUID** |  | 

### Return type

**CreateMagicAutoRunResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createMagicAutoRunSwipe**
```swift
    open class func createMagicAutoRunSwipe(runId: UUID, completion: @escaping (_ data: CreateMagicAutoRunSwipeResponse?, _ error: Error?) -> Void)
```

Record a seller swipe session (kept and rejected match keys) for a Magic List run.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let runId = 987 // UUID | 

// Record a seller swipe session (kept and rejected match keys) for a Magic List run.
MagicAPI.createMagicAutoRunSwipe(runId: runId) { (response, error) in
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
 **runId** | **UUID** |  | 

### Return type

**CreateMagicAutoRunSwipeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createMagicScan**
```swift
    open class func createMagicScan(completion: @escaping (_ data: CreateMagicScanResponse?, _ error: Error?) -> Void)
```

Run a Magic List image scan.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Run a Magic List image scan.
MagicAPI.createMagicScan() { (response, error) in
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

**CreateMagicScanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createMagicScanSynthesize**
```swift
    open class func createMagicScanSynthesize(runId: UUID, completion: @escaping (_ data: CreateMagicScanSynthesizeResponse?, _ error: Error?) -> Void)
```

Synthesize a draft from confirmed matches.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let runId = 987 // UUID | 

// Synthesize a draft from confirmed matches.
MagicAPI.createMagicScanSynthesize(runId: runId) { (response, error) in
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
 **runId** | **UUID** |  | 

### Return type

**CreateMagicScanSynthesizeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getMagicAutoSetting**
```swift
    open class func getMagicAutoSetting(completion: @escaping (_ data: GetMagicAutoSettingResponse?, _ error: Error?) -> Void)
```

The seller’s Magic List automated-matching mode.

mode: off (every match is swiped by hand), auto (confident matches become DRAFTS on their own, never published, always undoable) or review_all (Crossly pre-marks its picks; the seller confirms). Default review_all.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The seller’s Magic List automated-matching mode.
MagicAPI.getMagicAutoSetting() { (response, error) in
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

**GetMagicAutoSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getMagicDraft**
```swift
    open class func getMagicDraft(draftId: UUID, completion: @escaping (_ data: GetMagicDraftResponse?, _ error: Error?) -> Void)
```

Get a synthesized Magic List draft.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let draftId = 987 // UUID | 

// Get a synthesized Magic List draft.
MagicAPI.getMagicDraft(draftId: draftId) { (response, error) in
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
 **draftId** | **UUID** |  | 

### Return type

**GetMagicDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listMagicAutoRunDecisions**
```swift
    open class func listMagicAutoRunDecisions(runId: UUID, completion: @escaping (_ data: ListMagicAutoRunDecisionsResponse?, _ error: Error?) -> Void)
```

Every match decision round (automated and seller) for a Magic List run.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let runId = 987 // UUID | 

// Every match decision round (automated and seller) for a Magic List run.
MagicAPI.listMagicAutoRunDecisions(runId: runId) { (response, error) in
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
 **runId** | **UUID** |  | 

### Return type

**ListMagicAutoRunDecisionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listMagicRecent**
```swift
    open class func listMagicRecent(completion: @escaping (_ data: ListMagicRecentResponse?, _ error: Error?) -> Void)
```

Recent Magic List scans for this seller.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Recent Magic List scans for this seller.
MagicAPI.listMagicRecent() { (response, error) in
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

**ListMagicRecentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateMagicAutoSetting**
```swift
    open class func updateMagicAutoSetting(updateMagicAutoSettingRequest: UpdateMagicAutoSettingRequest, completion: @escaping (_ data: GetMagicAutoSettingResponse?, _ error: Error?) -> Void)
```

Set the Magic List automated-matching mode (off | auto | review_all).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let updateMagicAutoSettingRequest = UpdateMagicAutoSettingRequest(mode: "mode_example") // UpdateMagicAutoSettingRequest | 

// Set the Magic List automated-matching mode (off | auto | review_all).
MagicAPI.updateMagicAutoSetting(updateMagicAutoSettingRequest: updateMagicAutoSettingRequest) { (response, error) in
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
 **updateMagicAutoSettingRequest** | **UpdateMagicAutoSettingRequest** |  | 

### Return type

**GetMagicAutoSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

