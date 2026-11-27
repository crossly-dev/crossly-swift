# SandboxAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSandboxReset**](SandboxAPI.md#createsandboxreset) | **POST** /v1/sandbox/reset | Restore the sandbox seller to its seed. Your grant and webhook subscriptions are kept.
[**createSandboxSimulateInventory**](SandboxAPI.md#createsandboxsimulateinventory) | **POST** /v1/sandbox/simulate/inventory | Change stock (set, increase or decrease); the new quantity is pushed to every channel.
[**createSandboxSimulateListingSoldOut**](SandboxAPI.md#createsandboxsimulatelistingsoldout) | **POST** /v1/sandbox/simulate/listing.sold_out | A listing sells out on a marketplace with no order (stock moves, other channels delist).
[**createSandboxSimulateOrder**](SandboxAPI.md#createsandboxsimulateorder) | **POST** /v1/sandbox/simulate/order | Simulate a sale through the real sale pipeline (order.created, sale.detected, stock and cross-channel updates).
[**createSandboxSimulateOrderAddress**](SandboxAPI.md#createsandboxsimulateorderaddress) | **POST** /v1/sandbox/simulate/order.address | The buyer address of an order simulated with address \&quot;delayed\&quot; arrives now (order.address_available).
[**createSandboxSimulateOrderCancelled**](SandboxAPI.md#createsandboxsimulateordercancelled) | **POST** /v1/sandbox/simulate/order.cancelled | The buyer or the marketplace cancels an order (order.cancelled).
[**createSandboxSimulateOrderDelivered**](SandboxAPI.md#createsandboxsimulateorderdelivered) | **POST** /v1/sandbox/simulate/order.delivered | The carrier delivers a shipped order (order.delivered).
[**createSandboxSimulateRefund**](SandboxAPI.md#createsandboxsimulaterefund) | **POST** /v1/sandbox/simulate/refund | Refund an order in full or in part (refund.issued).
[**getSandbox**](SandboxAPI.md#getsandbox) | **GET** /v1/sandbox | The sandbox seller this token acts on, its simulated channels and the failure modes.
[**listSandboxEvents**](SandboxAPI.md#listsandboxevents) | **GET** /v1/sandbox/events | The simulated marketplaces&#39; call log: verb, channel, outcome, latency.


# **createSandboxReset**
```swift
    open class func createSandboxReset(completion: @escaping (_ data: CreateSandboxResetResponse?, _ error: Error?) -> Void)
```

Restore the sandbox seller to its seed. Your grant and webhook subscriptions are kept.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Restore the sandbox seller to its seed. Your grant and webhook subscriptions are kept.
SandboxAPI.createSandboxReset() { (response, error) in
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

**CreateSandboxResetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSandboxSimulateInventory**
```swift
    open class func createSandboxSimulateInventory(completion: @escaping (_ data: CreateInboxConversationBulkResponse?, _ error: Error?) -> Void)
```

Change stock (set, increase or decrease); the new quantity is pushed to every channel.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Change stock (set, increase or decrease); the new quantity is pushed to every channel.
SandboxAPI.createSandboxSimulateInventory() { (response, error) in
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

**CreateInboxConversationBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSandboxSimulateListingSoldOut**
```swift
    open class func createSandboxSimulateListingSoldOut(completion: @escaping (_ data: CreateSandboxSimulateListingSoldOutResponse?, _ error: Error?) -> Void)
```

A listing sells out on a marketplace with no order (stock moves, other channels delist).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A listing sells out on a marketplace with no order (stock moves, other channels delist).
SandboxAPI.createSandboxSimulateListingSoldOut() { (response, error) in
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

**CreateSandboxSimulateListingSoldOutResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSandboxSimulateOrder**
```swift
    open class func createSandboxSimulateOrder(completion: @escaping (_ data: CreateSandboxSimulateOrderResponse?, _ error: Error?) -> Void)
```

Simulate a sale through the real sale pipeline (order.created, sale.detected, stock and cross-channel updates).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Simulate a sale through the real sale pipeline (order.created, sale.detected, stock and cross-channel updates).
SandboxAPI.createSandboxSimulateOrder() { (response, error) in
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

**CreateSandboxSimulateOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSandboxSimulateOrderAddress**
```swift
    open class func createSandboxSimulateOrderAddress(completion: @escaping (_ data: CreateSandboxSimulateOrderAddressResponse?, _ error: Error?) -> Void)
```

The buyer address of an order simulated with address \"delayed\" arrives now (order.address_available).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The buyer address of an order simulated with address \"delayed\" arrives now (order.address_available).
SandboxAPI.createSandboxSimulateOrderAddress() { (response, error) in
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

**CreateSandboxSimulateOrderAddressResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSandboxSimulateOrderCancelled**
```swift
    open class func createSandboxSimulateOrderCancelled(completion: @escaping (_ data: CreateSandboxSimulateOrderCancelledResponse?, _ error: Error?) -> Void)
```

The buyer or the marketplace cancels an order (order.cancelled).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The buyer or the marketplace cancels an order (order.cancelled).
SandboxAPI.createSandboxSimulateOrderCancelled() { (response, error) in
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

**CreateSandboxSimulateOrderCancelledResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSandboxSimulateOrderDelivered**
```swift
    open class func createSandboxSimulateOrderDelivered(completion: @escaping (_ data: CreateSandboxSimulateOrderDeliveredResponse?, _ error: Error?) -> Void)
```

The carrier delivers a shipped order (order.delivered).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The carrier delivers a shipped order (order.delivered).
SandboxAPI.createSandboxSimulateOrderDelivered() { (response, error) in
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

**CreateSandboxSimulateOrderDeliveredResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSandboxSimulateRefund**
```swift
    open class func createSandboxSimulateRefund(completion: @escaping (_ data: CreateSandboxSimulateRefundResponse?, _ error: Error?) -> Void)
```

Refund an order in full or in part (refund.issued).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Refund an order in full or in part (refund.issued).
SandboxAPI.createSandboxSimulateRefund() { (response, error) in
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

**CreateSandboxSimulateRefundResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSandbox**
```swift
    open class func getSandbox(completion: @escaping (_ data: GetSandboxResponse?, _ error: Error?) -> Void)
```

The sandbox seller this token acts on, its simulated channels and the failure modes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The sandbox seller this token acts on, its simulated channels and the failure modes.
SandboxAPI.getSandbox() { (response, error) in
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

**GetSandboxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSandboxEvents**
```swift
    open class func listSandboxEvents(completion: @escaping (_ data: ListSandboxEventsResponse?, _ error: Error?) -> Void)
```

The simulated marketplaces' call log: verb, channel, outcome, latency.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The simulated marketplaces' call log: verb, channel, outcome, latency.
SandboxAPI.listSandboxEvents() { (response, error) in
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

**ListSandboxEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

