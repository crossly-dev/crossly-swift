# ProductFeedsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductFeed**](ProductFeedsAPI.md#createproductfeed) | **POST** /v1/product-feeds | Create a hosted product feed for a channel. Returns its secret URL.
[**createProductFeedRotate**](ProductFeedsAPI.md#createproductfeedrotate) | **POST** /v1/product-feeds/{id}/rotate | Rotate the feed token. The old URL stops answering immediately; paste the new one into the channel.
[**deleteProductFeed**](ProductFeedsAPI.md#deleteproductfeed) | **DELETE** /v1/product-feeds/{id} | Delete a feed. Its URL stops answering immediately.
[**getProductFeedReport**](ProductFeedsAPI.md#getproductfeedreport) | **GET** /v1/product-feeds/{id}/report | Validate a feed: per-item errors (held back) and warnings (sent, limited reach), plus sample rendered items.
[**listProductFeeds**](ProductFeedsAPI.md#listproductfeeds) | **GET** /v1/product-feeds | List your hosted product feeds (Google Merchant Center, Meta catalogue, TikTok catalog) with their URLs and last-fetch stats.
[**updateProductFeed**](ProductFeedsAPI.md#updateproductfeed) | **PATCH** /v1/product-feeds/{id} | Edit a feed: name, default format, enabled, listing filters, output settings.


# **createProductFeed**
```swift
    open class func createProductFeed(completion: @escaping (_ data: ListProductFeedsItem?, _ error: Error?) -> Void)
```

Create a hosted product feed for a channel. Returns its secret URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a hosted product feed for a channel. Returns its secret URL.
ProductFeedsAPI.createProductFeed() { (response, error) in
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

**ListProductFeedsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createProductFeedRotate**
```swift
    open class func createProductFeedRotate(id: UUID, completion: @escaping (_ data: ListProductFeedsItem?, _ error: Error?) -> Void)
```

Rotate the feed token. The old URL stops answering immediately; paste the new one into the channel.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Rotate the feed token. The old URL stops answering immediately; paste the new one into the channel.
ProductFeedsAPI.createProductFeedRotate(id: id) { (response, error) in
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

**ListProductFeedsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteProductFeed**
```swift
    open class func deleteProductFeed(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete a feed. Its URL stops answering immediately.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a feed. Its URL stops answering immediately.
ProductFeedsAPI.deleteProductFeed(id: id) { (response, error) in
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

# **getProductFeedReport**
```swift
    open class func getProductFeedReport(id: UUID, completion: @escaping (_ data: GetProductFeedReportResponse?, _ error: Error?) -> Void)
```

Validate a feed: per-item errors (held back) and warnings (sent, limited reach), plus sample rendered items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Validate a feed: per-item errors (held back) and warnings (sent, limited reach), plus sample rendered items.
ProductFeedsAPI.getProductFeedReport(id: id) { (response, error) in
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

**GetProductFeedReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listProductFeeds**
```swift
    open class func listProductFeeds(completion: @escaping (_ data: ListProductFeedsResponse?, _ error: Error?) -> Void)
```

List your hosted product feeds (Google Merchant Center, Meta catalogue, TikTok catalog) with their URLs and last-fetch stats.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List your hosted product feeds (Google Merchant Center, Meta catalogue, TikTok catalog) with their URLs and last-fetch stats.
ProductFeedsAPI.listProductFeeds() { (response, error) in
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

**ListProductFeedsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateProductFeed**
```swift
    open class func updateProductFeed(id: UUID, completion: @escaping (_ data: ListProductFeedsItem?, _ error: Error?) -> Void)
```

Edit a feed: name, default format, enabled, listing filters, output settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Edit a feed: name, default format, enabled, listing filters, output settings.
ProductFeedsAPI.updateProductFeed(id: id) { (response, error) in
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

**ListProductFeedsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

