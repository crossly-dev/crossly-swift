# FieldRulesAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFieldRule**](FieldRulesAPI.md#createfieldrule) | **POST** /v1/field-rules | Create a per-channel field rule.
[**createFieldRulePreview**](FieldRulesAPI.md#createfieldrulepreview) | **POST** /v1/field-rules/preview | Preview field-rule output for a listing on one channel.
[**createFieldRuleReorder**](FieldRulesAPI.md#createfieldrulereorder) | **POST** /v1/field-rules/reorder | Set the run order of several field rules.
[**deleteFieldRule**](FieldRulesAPI.md#deletefieldrule) | **DELETE** /v1/field-rules/{id} | Delete a field rule.
[**getFieldRule**](FieldRulesAPI.md#getfieldrule) | **GET** /v1/field-rules/{id} | Get one field rule.
[**listFieldRules**](FieldRulesAPI.md#listfieldrules) | **GET** /v1/field-rules | List the seller&#39;s per-channel field rules.
[**updateFieldRule**](FieldRulesAPI.md#updatefieldrule) | **PATCH** /v1/field-rules/{id} | Update a field rule.


# **createFieldRule**
```swift
    open class func createFieldRule(completion: @escaping (_ data: ListFieldRulesItem?, _ error: Error?) -> Void)
```

Create a per-channel field rule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a per-channel field rule.
FieldRulesAPI.createFieldRule() { (response, error) in
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

**ListFieldRulesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFieldRulePreview**
```swift
    open class func createFieldRulePreview(completion: @escaping (_ data: CreateFieldRulePreviewResponse?, _ error: Error?) -> Void)
```

Preview field-rule output for a listing on one channel.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Preview field-rule output for a listing on one channel.
FieldRulesAPI.createFieldRulePreview() { (response, error) in
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

**CreateFieldRulePreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFieldRuleReorder**
```swift
    open class func createFieldRuleReorder(completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Set the run order of several field rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set the run order of several field rules.
FieldRulesAPI.createFieldRuleReorder() { (response, error) in
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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteFieldRule**
```swift
    open class func deleteFieldRule(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete a field rule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a field rule.
FieldRulesAPI.deleteFieldRule(id: id) { (response, error) in
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

# **getFieldRule**
```swift
    open class func getFieldRule(id: UUID, completion: @escaping (_ data: ListFieldRulesItem?, _ error: Error?) -> Void)
```

Get one field rule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Get one field rule.
FieldRulesAPI.getFieldRule(id: id) { (response, error) in
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

**ListFieldRulesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listFieldRules**
```swift
    open class func listFieldRules(platform: String? = nil, completion: @escaping (_ data: ListFieldRulesResponse?, _ error: Error?) -> Void)
```

List the seller's per-channel field rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String |  (optional)

// List the seller's per-channel field rules.
FieldRulesAPI.listFieldRules(platform: platform) { (response, error) in
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

**ListFieldRulesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateFieldRule**
```swift
    open class func updateFieldRule(id: UUID, completion: @escaping (_ data: ListFieldRulesItem?, _ error: Error?) -> Void)
```

Update a field rule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Update a field rule.
FieldRulesAPI.updateFieldRule(id: id) { (response, error) in
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

**ListFieldRulesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

