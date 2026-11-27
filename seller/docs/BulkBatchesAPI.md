# BulkBatchesAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBulkBatch**](BulkBatchesAPI.md#createbulkbatch) | **POST** /v1/bulk-batches | Open an empty capture batch for a preset.
[**createBulkBatchIdentify**](BulkBatchesAPI.md#createbulkbatchidentify) | **POST** /v1/bulk-batches/{id}/identify | Identify items: match to Crossly Market, Magic List, or auto (by preset). Runs in the background.
[**createBulkBatchItem**](BulkBatchesAPI.md#createbulkbatchitem) | **POST** /v1/bulk-batches/{id}/items | Append one item (every photo of it, primary first).
[**createBulkBatchItemBulk**](BulkBatchesAPI.md#createbulkbatchitembulk) | **POST** /v1/bulk-batches/{id}/items/bulk | Set price/quantity/condition/status on many items.
[**createBulkBatchPublish**](BulkBatchesAPI.md#createbulkbatchpublish) | **POST** /v1/bulk-batches/{id}/publish | Publish reviewed items: drafts only (default) or live on destinations; adds quantity to an existing matching listing.
[**deleteBulkBatch**](BulkBatchesAPI.md#deletebulkbatch) | **DELETE** /v1/bulk-batches/{id} | Discard a batch (listings it produced stay).
[**deleteBulkBatchItem**](BulkBatchesAPI.md#deletebulkbatchitem) | **DELETE** /v1/bulk-batches/items/{id} | Remove one unpublished item.
[**getBulkBatch**](BulkBatchesAPI.md#getbulkbatch) | **GET** /v1/bulk-batches/{id} | Get one bulk batch with its items (capture order) and matched catalog rows.
[**listBulkBatches**](BulkBatchesAPI.md#listbulkbatches) | **GET** /v1/bulk-batches | List recent bulk list batches, newest first.
[**updateBulkBatch**](BulkBatchesAPI.md#updatebulkbatch) | **PATCH** /v1/bulk-batches/{id} | Change batch settings, or set stage \&quot;identify\&quot; when capture is done.
[**updateBulkBatchItem**](BulkBatchesAPI.md#updatebulkbatchitem) | **PATCH** /v1/bulk-batches/items/{id} | Correct one item (match, title, price, photos…).


# **createBulkBatch**
```swift
    open class func createBulkBatch(completion: @escaping (_ data: ListBulkBatchesItem?, _ error: Error?) -> Void)
```

Open an empty capture batch for a preset.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open an empty capture batch for a preset.
BulkBatchesAPI.createBulkBatch() { (response, error) in
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

**ListBulkBatchesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBulkBatchIdentify**
```swift
    open class func createBulkBatchIdentify(id: UUID, completion: @escaping (_ data: CreateBulkBatchIdentifyResponse?, _ error: Error?) -> Void)
```

Identify items: match to Crossly Market, Magic List, or auto (by preset). Runs in the background.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Identify items: match to Crossly Market, Magic List, or auto (by preset). Runs in the background.
BulkBatchesAPI.createBulkBatchIdentify(id: id) { (response, error) in
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

**CreateBulkBatchIdentifyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBulkBatchItem**
```swift
    open class func createBulkBatchItem(id: UUID, completion: @escaping (_ data: CreateBulkBatchItemResponse?, _ error: Error?) -> Void)
```

Append one item (every photo of it, primary first).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Append one item (every photo of it, primary first).
BulkBatchesAPI.createBulkBatchItem(id: id) { (response, error) in
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

**CreateBulkBatchItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBulkBatchItemBulk**
```swift
    open class func createBulkBatchItemBulk(id: UUID, completion: @escaping (_ data: UpdatedResponse?, _ error: Error?) -> Void)
```

Set price/quantity/condition/status on many items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Set price/quantity/condition/status on many items.
BulkBatchesAPI.createBulkBatchItemBulk(id: id) { (response, error) in
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

**UpdatedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBulkBatchPublish**
```swift
    open class func createBulkBatchPublish(id: UUID, completion: @escaping (_ data: CreateBulkBatchPublishResponse?, _ error: Error?) -> Void)
```

Publish reviewed items: drafts only (default) or live on destinations; adds quantity to an existing matching listing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Publish reviewed items: drafts only (default) or live on destinations; adds quantity to an existing matching listing.
BulkBatchesAPI.createBulkBatchPublish(id: id) { (response, error) in
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

**CreateBulkBatchPublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBulkBatch**
```swift
    open class func deleteBulkBatch(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Discard a batch (listings it produced stay).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Discard a batch (listings it produced stay).
BulkBatchesAPI.deleteBulkBatch(id: id) { (response, error) in
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

# **deleteBulkBatchItem**
```swift
    open class func deleteBulkBatchItem(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Remove one unpublished item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Remove one unpublished item.
BulkBatchesAPI.deleteBulkBatchItem(id: id) { (response, error) in
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

# **getBulkBatch**
```swift
    open class func getBulkBatch(id: UUID, completion: @escaping (_ data: GetBulkBatchResponse?, _ error: Error?) -> Void)
```

Get one bulk batch with its items (capture order) and matched catalog rows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Get one bulk batch with its items (capture order) and matched catalog rows.
BulkBatchesAPI.getBulkBatch(id: id) { (response, error) in
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

**GetBulkBatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBulkBatches**
```swift
    open class func listBulkBatches(limit: Int? = nil, completion: @escaping (_ data: ListBulkBatchesResponse?, _ error: Error?) -> Void)
```

List recent bulk list batches, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let limit = 987 // Int |  (optional)

// List recent bulk list batches, newest first.
BulkBatchesAPI.listBulkBatches(limit: limit) { (response, error) in
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
 **limit** | **Int** |  | [optional] 

### Return type

**ListBulkBatchesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBulkBatch**
```swift
    open class func updateBulkBatch(id: UUID, completion: @escaping (_ data: ListBulkBatchesItem?, _ error: Error?) -> Void)
```

Change batch settings, or set stage \"identify\" when capture is done.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Change batch settings, or set stage \"identify\" when capture is done.
BulkBatchesAPI.updateBulkBatch(id: id) { (response, error) in
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

**ListBulkBatchesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBulkBatchItem**
```swift
    open class func updateBulkBatchItem(id: UUID, completion: @escaping (_ data: CreateBulkBatchItemResponse?, _ error: Error?) -> Void)
```

Correct one item (match, title, price, photos…).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Correct one item (match, title, price, photos…).
BulkBatchesAPI.updateBulkBatchItem(id: id) { (response, error) in
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

**CreateBulkBatchItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

