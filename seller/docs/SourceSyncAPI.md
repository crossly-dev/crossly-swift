# SourceSyncAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSourceSyncSync**](SourceSyncAPI.md#createsourcesyncsync) | **POST** /v1/source-sync/{platform}/sync | Reconcile a store now: re-read its whole catalogue and apply every change (runs in the background; 202).
[**getSourceSyncLocation**](SourceSyncAPI.md#getsourcesynclocation) | **GET** /v1/source-sync/{platform}/locations | POS only (lightspeed_r, lightspeed_x, square): the shops/outlets/locations on the account and which one Crossly syncs stock and sales with.
[**listSourceSync**](SourceSyncAPI.md#listsourcesync) | **GET** /v1/source-sync | List source-capable stores with their continuous-sync settings and status.
[**listSourceSyncEvents**](SourceSyncAPI.md#listsourcesyncevents) | **GET** /v1/source-sync/events | Recent source-sync activity: each webhook delivery and reconcile change, with its outcome.
[**updateSourceSync**](SourceSyncAPI.md#updatesourcesync) | **PATCH** /v1/source-sync/{platform} | Update a store&#39;s source-sync settings: on/off, source-owned fields, deletion handling, auto-export channels.
[**updateSourceSyncLocation**](SourceSyncAPI.md#updatesourcesynclocation) | **PUT** /v1/source-sync/{platform}/location | POS only: choose the shop (R-Series) / outlet (X-Series) / Square location whose stock and sales Crossly syncs. Must be one GET .../locations lists.


# **createSourceSyncSync**
```swift
    open class func createSourceSyncSync(platform: Platform_createSourceSyncSync, completion: @escaping (_ data: CreateSourceSyncSyncResponse?, _ error: Error?) -> Void)
```

Reconcile a store now: re-read its whole catalogue and apply every change (runs in the background; 202).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 

// Reconcile a store now: re-read its whole catalogue and apply every change (runs in the background; 202).
SourceSyncAPI.createSourceSyncSync(platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**CreateSourceSyncSyncResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSourceSyncLocation**
```swift
    open class func getSourceSyncLocation(platform: Platform_getSourceSyncLocation, completion: @escaping (_ data: GetSourceSyncLocationResponse?, _ error: Error?) -> Void)
```

POS only (lightspeed_r, lightspeed_x, square): the shops/outlets/locations on the account and which one Crossly syncs stock and sales with.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 

// POS only (lightspeed_r, lightspeed_x, square): the shops/outlets/locations on the account and which one Crossly syncs stock and sales with.
SourceSyncAPI.getSourceSyncLocation(platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**GetSourceSyncLocationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSourceSync**
```swift
    open class func listSourceSync(completion: @escaping (_ data: ListSourceSyncResponse?, _ error: Error?) -> Void)
```

List source-capable stores with their continuous-sync settings and status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List source-capable stores with their continuous-sync settings and status.
SourceSyncAPI.listSourceSync() { (response, error) in
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

**ListSourceSyncResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSourceSyncEvents**
```swift
    open class func listSourceSyncEvents(platform: Platform_listSourceSyncEvents? = nil, limit: Int? = nil, completion: @escaping (_ data: ListSourceSyncEventsResponse?, _ error: Error?) -> Void)
```

Recent source-sync activity: each webhook delivery and reconcile change, with its outcome.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// Recent source-sync activity: each webhook delivery and reconcile change, with its outcome.
SourceSyncAPI.listSourceSyncEvents(platform: platform, limit: limit) { (response, error) in
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
 **limit** | **Int** |  | [optional] 

### Return type

**ListSourceSyncEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSourceSync**
```swift
    open class func updateSourceSync(platform: Platform_updateSourceSync, completion: @escaping (_ data: ListSourceSyncItem?, _ error: Error?) -> Void)
```

Update a store's source-sync settings: on/off, source-owned fields, deletion handling, auto-export channels.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 

// Update a store's source-sync settings: on/off, source-owned fields, deletion handling, auto-export channels.
SourceSyncAPI.updateSourceSync(platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**ListSourceSyncItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSourceSyncLocation**
```swift
    open class func updateSourceSyncLocation(platform: Platform_updateSourceSyncLocation, updateSourceSyncLocationRequest: UpdateSourceSyncLocationRequest, completion: @escaping (_ data: GetSourceSyncLocationResponse?, _ error: Error?) -> Void)
```

POS only: choose the shop (R-Series) / outlet (X-Series) / Square location whose stock and sales Crossly syncs. Must be one GET .../locations lists.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let updateSourceSyncLocationRequest = UpdateSourceSyncLocationRequest(locationId: "locationId_example") // UpdateSourceSyncLocationRequest | 

// POS only: choose the shop (R-Series) / outlet (X-Series) / Square location whose stock and sales Crossly syncs. Must be one GET .../locations lists.
SourceSyncAPI.updateSourceSyncLocation(platform: platform, updateSourceSyncLocationRequest: updateSourceSyncLocationRequest) { (response, error) in
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
 **platform** | **String** |  | 
 **updateSourceSyncLocationRequest** | **UpdateSourceSyncLocationRequest** |  | 

### Return type

**GetSourceSyncLocationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

