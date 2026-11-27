# ProductSetsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductSet**](ProductSetsAPI.md#createproductset) | **POST** /v1/product-sets | Create a product set (filters, explicit picks, or both).
[**createProductSetBulk**](ProductSetsAPI.md#createproductsetbulk) | **POST** /v1/product-sets/{id}/bulk | Run a bulk action (delist / relist / check-status) against the set&#39;s current members.
[**createProductSetMember**](ProductSetsAPI.md#createproductsetmember) | **POST** /v1/product-sets/{id}/members | Add / exclude / remove explicit picks for a set.
[**deleteProductSet**](ProductSetsAPI.md#deleteproductset) | **DELETE** /v1/product-sets/{id} | Delete a product set (its id is also dropped from any channel exclusion lists).
[**getProductSet**](ProductSetsAPI.md#getproductset) | **GET** /v1/product-sets/{id} | Get one product set (its filters and pick counts).
[**listProductSetMembers**](ProductSetsAPI.md#listproductsetmembers) | **GET** /v1/product-sets/{id}/members | Evaluate a set now and return a page of its member listings.
[**listProductSets**](ProductSetsAPI.md#listproductsets) | **GET** /v1/product-sets | List your saved product sets with their live member counts.
[**updateProductSet**](ProductSetsAPI.md#updateproductset) | **PATCH** /v1/product-sets/{id} | Update a set: rename, description, or replace its filters.


# **createProductSet**
```swift
    open class func createProductSet(completion: @escaping (_ data: ListProductSetsItem?, _ error: Error?) -> Void)
```

Create a product set (filters, explicit picks, or both).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a product set (filters, explicit picks, or both).
ProductSetsAPI.createProductSet() { (response, error) in
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

**ListProductSetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createProductSetBulk**
```swift
    open class func createProductSetBulk(id: UUID, completion: @escaping (_ data: CreateProductSetBulkResponse?, _ error: Error?) -> Void)
```

Run a bulk action (delist / relist / check-status) against the set's current members.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Run a bulk action (delist / relist / check-status) against the set's current members.
ProductSetsAPI.createProductSetBulk(id: id) { (response, error) in
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

**CreateProductSetBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createProductSetMember**
```swift
    open class func createProductSetMember(id: UUID, completion: @escaping (_ data: ListProductSetsItem?, _ error: Error?) -> Void)
```

Add / exclude / remove explicit picks for a set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Add / exclude / remove explicit picks for a set.
ProductSetsAPI.createProductSetMember(id: id) { (response, error) in
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

**ListProductSetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteProductSet**
```swift
    open class func deleteProductSet(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete a product set (its id is also dropped from any channel exclusion lists).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a product set (its id is also dropped from any channel exclusion lists).
ProductSetsAPI.deleteProductSet(id: id) { (response, error) in
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

# **getProductSet**
```swift
    open class func getProductSet(id: UUID, completion: @escaping (_ data: ListProductSetsItem?, _ error: Error?) -> Void)
```

Get one product set (its filters and pick counts).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Get one product set (its filters and pick counts).
ProductSetsAPI.getProductSet(id: id) { (response, error) in
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

**ListProductSetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listProductSetMembers**
```swift
    open class func listProductSetMembers(id: UUID, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: ListProductSetMembersResponse?, _ error: Error?) -> Void)
```

Evaluate a set now and return a page of its member listings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)

// Evaluate a set now and return a page of its member listings.
ProductSetsAPI.listProductSetMembers(id: id, page: page, limit: limit) { (response, error) in
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
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

**ListProductSetMembersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listProductSets**
```swift
    open class func listProductSets(completion: @escaping (_ data: ListProductSetsResponse?, _ error: Error?) -> Void)
```

List your saved product sets with their live member counts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List your saved product sets with their live member counts.
ProductSetsAPI.listProductSets() { (response, error) in
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

**ListProductSetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateProductSet**
```swift
    open class func updateProductSet(id: UUID, completion: @escaping (_ data: ListProductSetsItem?, _ error: Error?) -> Void)
```

Update a set: rename, description, or replace its filters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Update a set: rename, description, or replace its filters.
ProductSetsAPI.updateProductSet(id: id) { (response, error) in
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

**ListProductSetsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

