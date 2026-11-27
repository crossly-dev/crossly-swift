# AppsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApp**](AppsAPI.md#getapp) | **GET** /v1/apps/{clientId} | Get one listed app by client id or profile slug. 404 if it is not in the directory.
[**getAppEarning**](AppsAPI.md#getappearning) | **GET** /v1/apps/{id}/earnings | Your OAuth app&#39;s revenue-share earnings: summary + ledger. Owner only.
[**getAppListingAllowance**](AppsAPI.md#getapplistingallowance) | **GET** /v1/apps/{id}/listing-allowance | Your OAuth app&#39;s listing allowance (read-only): whether staff let sellers list above their plan through it, its limitMode (separate pool or shared with the plan), limitPeriod (total or monthly), the per-seller limit and the platform scope. Owner only.
[**listApps**](AppsAPI.md#listapps) | **GET** /v1/apps | Browse the public Crossly app directories: seller apps, buyer apps or both (search, category, sort, featured, paging).


# **getApp**
```swift
    open class func getApp(clientId: String, completion: @escaping (_ data: ListAppsItem?, _ error: Error?) -> Void)
```

Get one listed app by client id or profile slug. 404 if it is not in the directory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let clientId = "clientId_example" // String | 

// Get one listed app by client id or profile slug. 404 if it is not in the directory.
AppsAPI.getApp(clientId: clientId) { (response, error) in
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
 **clientId** | **String** |  | 

### Return type

**ListAppsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAppEarning**
```swift
    open class func getAppEarning(id: UUID, completion: @escaping (_ data: GetAppEarningResponse?, _ error: Error?) -> Void)
```

Your OAuth app's revenue-share earnings: summary + ledger. Owner only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Your OAuth app's revenue-share earnings: summary + ledger. Owner only.
AppsAPI.getAppEarning(id: id) { (response, error) in
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

**GetAppEarningResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAppListingAllowance**
```swift
    open class func getAppListingAllowance(id: UUID, completion: @escaping (_ data: GetAppListingAllowanceResponse?, _ error: Error?) -> Void)
```

Your OAuth app's listing allowance (read-only): whether staff let sellers list above their plan through it, its limitMode (separate pool or shared with the plan), limitPeriod (total or monthly), the per-seller limit and the platform scope. Owner only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Your OAuth app's listing allowance (read-only): whether staff let sellers list above their plan through it, its limitMode (separate pool or shared with the plan), limitPeriod (total or monthly), the per-seller limit and the platform scope. Owner only.
AppsAPI.getAppListingAllowance(id: id) { (response, error) in
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

**GetAppListingAllowanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listApps**
```swift
    open class func listApps(directory: Directory_listApps? = nil, sort: Sort_listApps? = nil, featured: Featured_listApps? = nil, category: String? = nil, q: String? = nil, limit: Int? = nil, cursor: String? = nil, completion: @escaping (_ data: ListAppsResponse?, _ error: Error?) -> Void)
```

Browse the public Crossly app directories: seller apps, buyer apps or both (search, category, sort, featured, paging).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let directory = "directory_example" // String |  (optional)
let sort = "sort_example" // String |  (optional)
let featured = "featured_example" // String |  (optional)
let category = "category_example" // String |  (optional)
let q = "q_example" // String |  (optional)
let limit = 987 // Int |  (optional)
let cursor = "cursor_example" // String |  (optional)

// Browse the public Crossly app directories: seller apps, buyer apps or both (search, category, sort, featured, paging).
AppsAPI.listApps(directory: directory, sort: sort, featured: featured, category: category, q: q, limit: limit, cursor: cursor) { (response, error) in
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
 **directory** | **String** |  | [optional] 
 **sort** | **String** |  | [optional] 
 **featured** | **String** |  | [optional] 
 **category** | **String** |  | [optional] 
 **q** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 
 **cursor** | **String** |  | [optional] 

### Return type

**ListAppsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

