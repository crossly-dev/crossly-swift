# ReturnsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPolicyReturnReceived**](ReturnsAPI.md#createpolicyreturnreceived) | **POST** /v1/policy-returns/{id}/received | Mark a return received: refunds the buyer, less the restocking or try fee you keep.
[**createReturn**](ReturnsAPI.md#createreturn) | **POST** /v1/returns | Open a return record on an order (rejects if another open return exists).
[**getReturn**](ReturnsAPI.md#getreturn) | **GET** /v1/returns/{id} | Get one return record.
[**listPolicyReturns**](ReturnsAPI.md#listpolicyreturns) | **GET** /v1/policy-returns | Returns Crossly buyers opened under your return policy or try at home; filter by orderId.
[**listReturns**](ReturnsAPI.md#listreturns) | **GET** /v1/returns | List returns (physical-return workflow). status&#x3D;open|closed|&lt;exact&gt;.
[**updateReturn**](ReturnsAPI.md#updatereturn) | **PATCH** /v1/returns/{id} | Transition return status (received/inspected/restocked) and bump inventory on restock.


# **createPolicyReturnReceived**
```swift
    open class func createPolicyReturnReceived(id: String, completion: @escaping (_ data: CreatePolicyReturnReceivedResponse?, _ error: Error?) -> Void)
```

Mark a return received: refunds the buyer, less the restocking or try fee you keep.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Mark a return received: refunds the buyer, less the restocking or try fee you keep.
ReturnsAPI.createPolicyReturnReceived(id: id) { (response, error) in
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

**CreatePolicyReturnReceivedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createReturn**
```swift
    open class func createReturn(completion: @escaping (_ data: ListReturnsItem?, _ error: Error?) -> Void)
```

Open a return record on an order (rejects if another open return exists).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Open a return record on an order (rejects if another open return exists).
ReturnsAPI.createReturn() { (response, error) in
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

**ListReturnsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getReturn**
```swift
    open class func getReturn(id: UUID, completion: @escaping (_ data: ListReturnsItem?, _ error: Error?) -> Void)
```

Get one return record.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Get one return record.
ReturnsAPI.getReturn(id: id) { (response, error) in
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

**ListReturnsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listPolicyReturns**
```swift
    open class func listPolicyReturns(completion: @escaping (_ data: ListPolicyReturnsResponse?, _ error: Error?) -> Void)
```

Returns Crossly buyers opened under your return policy or try at home; filter by orderId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Returns Crossly buyers opened under your return policy or try at home; filter by orderId.
ReturnsAPI.listPolicyReturns() { (response, error) in
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

**ListPolicyReturnsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listReturns**
```swift
    open class func listReturns(completion: @escaping (_ data: ListReturnsResponse?, _ error: Error?) -> Void)
```

List returns (physical-return workflow). status=open|closed|<exact>.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List returns (physical-return workflow). status=open|closed|<exact>.
ReturnsAPI.listReturns() { (response, error) in
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

**ListReturnsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateReturn**
```swift
    open class func updateReturn(id: UUID, completion: @escaping (_ data: ListReturnsItem?, _ error: Error?) -> Void)
```

Transition return status (received/inspected/restocked) and bump inventory on restock.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Transition return status (received/inspected/restocked) and bump inventory on restock.
ReturnsAPI.updateReturn(id: id) { (response, error) in
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

**ListReturnsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

