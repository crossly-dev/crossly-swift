# WebhooksAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWebhook**](WebhooksAPI.md#createwebhook) | **POST** /v1/webhooks | Register a webhook endpoint (returns the signing secret once).
[**createWebhookDeliveryRedeliver**](WebhooksAPI.md#createwebhookdeliveryredeliver) | **POST** /v1/webhooks/{id}/deliveries/{deliveryId}/redeliver | Redeliver one past delivery: a new delivery (new Crossly-Delivery-Id) of the same event id and payload.
[**createWebhookTest**](WebhooksAPI.md#createwebhooktest) | **POST** /v1/webhooks/{id}/test | Fire a test delivery to one webhook: test.ping, or a sample of any event (body {\&quot;event\&quot;:\&quot;order.created\&quot;}, payload marked test: true).
[**deleteWebhook**](WebhooksAPI.md#deletewebhook) | **DELETE** /v1/webhooks/{id} | Delete a webhook endpoint.
[**getWebhookStream**](WebhooksAPI.md#getwebhookstream) | **GET** /v1/webhooks/stream | Stream this account&#39;s webhook events as they happen (SSE).
[**listWebhookDeliveries**](WebhooksAPI.md#listwebhookdeliveries) | **GET** /v1/webhooks/{id}/deliveries | List deliveries to one webhook (30 days, newest first): event, status, attempts, last HTTP status and error, payload.
[**listWebhooks**](WebhooksAPI.md#listwebhooks) | **GET** /v1/webhooks | List your registered webhook endpoints.


# **createWebhook**
```swift
    open class func createWebhook(completion: @escaping (_ data: CreateWebhookResponse?, _ error: Error?) -> Void)
```

Register a webhook endpoint (returns the signing secret once).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Register a webhook endpoint (returns the signing secret once).
WebhooksAPI.createWebhook() { (response, error) in
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

**CreateWebhookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWebhookDeliveryRedeliver**
```swift
    open class func createWebhookDeliveryRedeliver(id: UUID, deliveryId: UUID, completion: @escaping (_ data: CreateWebhookDeliveryRedeliverResponse?, _ error: Error?) -> Void)
```

Redeliver one past delivery: a new delivery (new Crossly-Delivery-Id) of the same event id and payload.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let deliveryId = 987 // UUID | 

// Redeliver one past delivery: a new delivery (new Crossly-Delivery-Id) of the same event id and payload.
WebhooksAPI.createWebhookDeliveryRedeliver(id: id, deliveryId: deliveryId) { (response, error) in
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
 **deliveryId** | **UUID** |  | 

### Return type

**CreateWebhookDeliveryRedeliverResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWebhookTest**
```swift
    open class func createWebhookTest(id: UUID, completion: @escaping (_ data: CreateWebhookTestResponse?, _ error: Error?) -> Void)
```

Fire a test delivery to one webhook: test.ping, or a sample of any event (body {\"event\":\"order.created\"}, payload marked test: true).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Fire a test delivery to one webhook: test.ping, or a sample of any event (body {\"event\":\"order.created\"}, payload marked test: true).
WebhooksAPI.createWebhookTest(id: id) { (response, error) in
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

**CreateWebhookTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWebhook**
```swift
    open class func deleteWebhook(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete a webhook endpoint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a webhook endpoint.
WebhooksAPI.deleteWebhook(id: id) { (response, error) in
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

# **getWebhookStream**
```swift
    open class func getWebhookStream(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Stream this account's webhook events as they happen (SSE).

A long-lived text/event-stream. Each event is one `data:` line of JSON: {eventName, eventId, createdAt, payload}. Used by `crossly dev` to forward live events to a local URL without exposing the machine to the internet. Does not replay history — you see what happens from the moment you connect.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Stream this account's webhook events as they happen (SSE).
WebhooksAPI.getWebhookStream() { (response, error) in
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

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWebhookDeliveries**
```swift
    open class func listWebhookDeliveries(id: UUID, status: Status_listWebhookDeliveries? = nil, limit: Int? = nil, completion: @escaping (_ data: ListWebhookDeliveriesResponse?, _ error: Error?) -> Void)
```

List deliveries to one webhook (30 days, newest first): event, status, attempts, last HTTP status and error, payload.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let status = "status_example" // String |  (optional)
let limit = 987 // Int |  (optional) (default to 25)

// List deliveries to one webhook (30 days, newest first): event, status, attempts, last HTTP status and error, payload.
WebhooksAPI.listWebhookDeliveries(id: id, status: status, limit: limit) { (response, error) in
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
 **status** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] [default to 25]

### Return type

**ListWebhookDeliveriesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWebhooks**
```swift
    open class func listWebhooks(completion: @escaping (_ data: ListWebhooksResponse?, _ error: Error?) -> Void)
```

List your registered webhook endpoints.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List your registered webhook endpoints.
WebhooksAPI.listWebhooks() { (response, error) in
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

**ListWebhooksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

