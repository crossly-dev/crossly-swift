# ReturnsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPolicyReturnReceived**](ReturnsAPI.md#createpolicyreturnreceived) | **POST** /v1/policy-returns/{id}/received | Mark a return received: refunds the buyer, less the restocking or try fee you keep.
[**createReturn**](ReturnsAPI.md#createreturn) | **POST** /v1/returns | Open a return record on an order (rejects if another open return exists).
[**createReturnAccept**](ReturnsAPI.md#createreturnaccept) | **POST** /v1/returns/{id}/accept | Accept a Crossly-marketplace return request: a prepaid return label to your return address (the buyer has 14 days to ship), a return record linked to it, and optionally a refund now (refund: { amount? } in dollars; needs orders:refund). Without one, the rest is refunded when the return is delivered. Safe to repeat. Crossposted orders: not_supported_on_platform.
[**createReturnDecline**](ReturnsAPI.md#createreturndecline) | **POST** /v1/returns/{id}/decline | Decline a Crossly-marketplace return request with a reason (required, 8-2000 chars), posted to the buyer as your response. It does not close the request: the buyer can reply or ask Crossly to decide. Not after the label is issued.
[**getReturn**](ReturnsAPI.md#getreturn) | **GET** /v1/returns/{id} | Get one return record.
[**listPolicyReturns**](ReturnsAPI.md#listpolicyreturns) | **GET** /v1/policy-returns | Returns Crossly buyers opened under your return policy or try at home; filter by orderId.
[**listReturns**](ReturnsAPI.md#listreturns) | **GET** /v1/returns | List returns. Default: your return records (the physical-return workflow), status&#x3D;open|closed|&lt;exact&gt;. source&#x3D;request: the OPEN return requests buyers made on the Crossly marketplace, newest first; accept or decline each with POST /v1/returns/{id}/accept | decline.
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
    open class func createReturn(completion: @escaping (_ data: GetReturnResponse?, _ error: Error?) -> Void)
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

**GetReturnResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createReturnAccept**
```swift
    open class func createReturnAccept(id: UUID, completion: @escaping (_ data: CreateReturnAcceptResponse?, _ error: Error?) -> Void)
```

Accept a Crossly-marketplace return request: a prepaid return label to your return address (the buyer has 14 days to ship), a return record linked to it, and optionally a refund now (refund: { amount? } in dollars; needs orders:refund). Without one, the rest is refunded when the return is delivered. Safe to repeat. Crossposted orders: not_supported_on_platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Accept a Crossly-marketplace return request: a prepaid return label to your return address (the buyer has 14 days to ship), a return record linked to it, and optionally a refund now (refund: { amount? } in dollars; needs orders:refund). Without one, the rest is refunded when the return is delivered. Safe to repeat. Crossposted orders: not_supported_on_platform.
ReturnsAPI.createReturnAccept(id: id) { (response, error) in
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

**CreateReturnAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createReturnDecline**
```swift
    open class func createReturnDecline(id: UUID, createReturnDeclineRequest: CreateReturnDeclineRequest, completion: @escaping (_ data: ListReturnsItem?, _ error: Error?) -> Void)
```

Decline a Crossly-marketplace return request with a reason (required, 8-2000 chars), posted to the buyer as your response. It does not close the request: the buyer can reply or ask Crossly to decide. Not after the label is issued.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let createReturnDeclineRequest = CreateReturnDeclineRequest(reason: "reason_example") // CreateReturnDeclineRequest | 

// Decline a Crossly-marketplace return request with a reason (required, 8-2000 chars), posted to the buyer as your response. It does not close the request: the buyer can reply or ask Crossly to decide. Not after the label is issued.
ReturnsAPI.createReturnDecline(id: id, createReturnDeclineRequest: createReturnDeclineRequest) { (response, error) in
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
 **createReturnDeclineRequest** | **CreateReturnDeclineRequest** |  | 

### Return type

**ListReturnsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getReturn**
```swift
    open class func getReturn(id: UUID, completion: @escaping (_ data: GetReturnResponse?, _ error: Error?) -> Void)
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

**GetReturnResponse**

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

List returns. Default: your return records (the physical-return workflow), status=open|closed|<exact>. source=request: the OPEN return requests buyers made on the Crossly marketplace, newest first; accept or decline each with POST /v1/returns/{id}/accept | decline.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List returns. Default: your return records (the physical-return workflow), status=open|closed|<exact>. source=request: the OPEN return requests buyers made on the Crossly marketplace, newest first; accept or decline each with POST /v1/returns/{id}/accept | decline.
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
    open class func updateReturn(id: UUID, completion: @escaping (_ data: GetReturnResponse?, _ error: Error?) -> Void)
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

**GetReturnResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

