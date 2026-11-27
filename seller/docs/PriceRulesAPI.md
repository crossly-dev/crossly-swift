# PriceRulesAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPriceRulePreview**](PriceRulesAPI.md#createpricerulepreview) | **POST** /v1/price-rules/preview | Compute the price each marketplace would list a listing (or a price) at.
[**deletePriceRule**](PriceRulesAPI.md#deletepricerule) | **DELETE** /v1/price-rules/{id} | Delete a price rule.
[**listPriceRules**](PriceRulesAPI.md#listpricerules) | **GET** /v1/price-rules | List the seller&#39;s per-channel price rules.
[**updatePriceRule**](PriceRulesAPI.md#updatepricerule) | **PUT** /v1/price-rules | Create or replace the price rule for a platform (and optional account / category).
[**updatePriceRuleById**](PriceRulesAPI.md#updatepricerulebyid) | **PATCH** /v1/price-rules/{id} | Update a price rule.


# **createPriceRulePreview**
```swift
    open class func createPriceRulePreview(completion: @escaping (_ data: CreatePriceRulePreviewResponse?, _ error: Error?) -> Void)
```

Compute the price each marketplace would list a listing (or a price) at.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Compute the price each marketplace would list a listing (or a price) at.
PriceRulesAPI.createPriceRulePreview() { (response, error) in
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

**CreatePriceRulePreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deletePriceRule**
```swift
    open class func deletePriceRule(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete a price rule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a price rule.
PriceRulesAPI.deletePriceRule(id: id) { (response, error) in
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

# **listPriceRules**
```swift
    open class func listPriceRules(platform: String? = nil, completion: @escaping (_ data: ListPriceRulesResponse?, _ error: Error?) -> Void)
```

List the seller's per-channel price rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String |  (optional)

// List the seller's per-channel price rules.
PriceRulesAPI.listPriceRules(platform: platform) { (response, error) in
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

### Return type

**ListPriceRulesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updatePriceRule**
```swift
    open class func updatePriceRule(completion: @escaping (_ data: ListPriceRulesItem?, _ error: Error?) -> Void)
```

Create or replace the price rule for a platform (and optional account / category).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create or replace the price rule for a platform (and optional account / category).
PriceRulesAPI.updatePriceRule() { (response, error) in
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

**ListPriceRulesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updatePriceRuleById**
```swift
    open class func updatePriceRuleById(id: UUID, completion: @escaping (_ data: ListPriceRulesItem?, _ error: Error?) -> Void)
```

Update a price rule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Update a price rule.
PriceRulesAPI.updatePriceRuleById(id: id) { (response, error) in
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

**ListPriceRulesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

