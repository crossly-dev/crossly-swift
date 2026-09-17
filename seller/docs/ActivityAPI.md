# ActivityAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getActionLog**](ActivityAPI.md#getactionlog) | **GET** /v1/action-log/{id} | Get one action-log event by id (ownership-checked).
[**getActionLogFacet**](ActivityAPI.md#getactionlogfacet) | **GET** /v1/action-log/facets | Distinct platforms / actions / categories present in the caller&#39;s action log (last 90 days) — powers filter dropdowns before you query.
[**listActionLog**](ActivityAPI.md#listactionlog) | **GET** /v1/action-log | List action-log events — the semantic \&quot;what happened\&quot; record of every user + platform action. Filter by platform / action / category / status / source / target, and a since/until created_at window.
[**listActionLogCalls**](ActivityAPI.md#listactionlogcalls) | **GET** /v1/action-log/{id}/calls | The outbound platform HTTP calls under an event (oldest first) — url, method, status, latency, redacted request/response bodies, proxy + recipe/hash. Answers \&quot;what was sent / what went wrong\&quot;.


# **getActionLog**
```swift
    open class func getActionLog(id: UUID, completion: @escaping (_ data: GetActionLogResponse?, _ error: Error?) -> Void)
```

Get one action-log event by id (ownership-checked).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Get one action-log event by id (ownership-checked).
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

[**GetActionLogResponse**](GetActionLogResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActionLogFacet**
```swift
    open class func getActionLogFacet(completion: @escaping (_ data: GetActionLogFacetResponse?, _ error: Error?) -> Void)
```

Distinct platforms / actions / categories present in the caller's action log (last 90 days) — powers filter dropdowns before you query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Distinct platforms / actions / categories present in the caller's action log (last 90 days) — powers filter dropdowns before you query.
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

[**GetActionLogFacetResponse**](GetActionLogFacetResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listActionLog**
```swift
    open class func listActionLog(platform: String? = nil, action: String? = nil, category: String? = nil, status: String? = nil, source: String? = nil, targetType: String? = nil, targetId: String? = nil, since: String? = nil, until: String? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: V1List?, _ error: Error?) -> Void)
```

List action-log events — the semantic \"what happened\" record of every user + platform action. Filter by platform / action / category / status / source / target, and a since/until created_at window.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String |  (optional)
let action = "action_example" // String |  (optional)
let category = "category_example" // String |  (optional)
let status = "status_example" // String |  (optional)
let source = "source_example" // String |  (optional)
let targetType = "targetType_example" // String |  (optional)
let targetId = "targetId_example" // String |  (optional)
let since = "since_example" // String | ISO lower bound (inclusive) on created_at. (optional)
let until = "until_example" // String | ISO upper bound (exclusive) on created_at. (optional)
let limit = 987 // Int |  (optional) (default to 50)
let offset = 987 // Int |  (optional) (default to 0)

// List action-log events — the semantic \"what happened\" record of every user + platform action. Filter by platform / action / category / status / source / target, and a since/until created_at window.
ActivityAPI.listActionLog(platform: platform, action: action, category: category, status: status, source: source, targetType: targetType, targetId: targetId, since: since, until: until, limit: limit, offset: offset) { (response, error) in
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
 **action** | **String** |  | [optional] 
 **category** | **String** |  | [optional] 
 **status** | **String** |  | [optional] 
 **source** | **String** |  | [optional] 
 **targetType** | **String** |  | [optional] 
 **targetId** | **String** |  | [optional] 
 **since** | **String** | ISO lower bound (inclusive) on created_at. | [optional] 
 **until** | **String** | ISO upper bound (exclusive) on created_at. | [optional] 
 **limit** | **Int** |  | [optional] [default to 50]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listActionLogCalls**
```swift
    open class func listActionLogCalls(id: UUID, completion: @escaping (_ data: V1List?, _ error: Error?) -> Void)
```

The outbound platform HTTP calls under an event (oldest first) — url, method, status, latency, redacted request/response bodies, proxy + recipe/hash. Answers \"what was sent / what went wrong\".

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// The outbound platform HTTP calls under an event (oldest first) — url, method, status, latency, redacted request/response bodies, proxy + recipe/hash. Answers \"what was sent / what went wrong\".
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

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

