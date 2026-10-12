# BuyerAgentAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBuyerAgentSession**](BuyerAgentAPI.md#createbuyeragentsession) | **POST** /v1/buyer/agent/sessions | Start a shopping agent conversation.
[**createBuyerAgentSessionAct**](BuyerAgentAPI.md#createbuyeragentsessionact) | **POST** /v1/buyer/agent/sessions/{id}/act | Act on an option: save, cart, alert, registry, price (real-sales check), offer (prepare / confirm), or buy (quote — complete with POST /api/v1/buyer/checkout). Needs the action’s own scope too.
[**createBuyerAgentSessionReact**](BuyerAgentAPI.md#createbuyeragentsessionreact) | **POST** /v1/buyer/agent/sessions/{id}/react | Like or dislike an option; the next search leans toward likes and drops dislikes.
[**createBuyerAgentSessionTurn**](BuyerAgentAPI.md#createbuyeragentsessionturn) | **POST** /v1/buyer/agent/sessions/{id}/turns | Say something to the agent: what you want, a critique of the options (\&quot;cheaper\&quot;, \&quot;more like #2\&quot;), or send a photo (imageBase64) to find things like it. Returns its reply and the new numbered options.
[**deleteBuyerAgentSession**](BuyerAgentAPI.md#deletebuyeragentsession) | **DELETE** /v1/buyer/agent/sessions/{id} | Delete a conversation.
[**getBuyerAgentSession**](BuyerAgentAPI.md#getbuyeragentsession) | **GET** /v1/buyer/agent/sessions/{id} | A conversation: its brief and turns, with each turn’s options re-read live.
[**listBuyerAgentSessions**](BuyerAgentAPI.md#listbuyeragentsessions) | **GET** /v1/buyer/agent/sessions | Your shopping agent conversations, newest first.


# **createBuyerAgentSession**
```swift
    open class func createBuyerAgentSession(completion: @escaping (_ data: CreateBuyerAgentSessionResponse?, _ error: Error?) -> Void)
```

Start a shopping agent conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Start a shopping agent conversation.
BuyerAgentAPI.createBuyerAgentSession() { (response, error) in
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

**CreateBuyerAgentSessionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerAgentSessionAct**
```swift
    open class func createBuyerAgentSessionAct(id: String, completion: @escaping (_ data: CreateBuyerAgentSessionActResponse?, _ error: Error?) -> Void)
```

Act on an option: save, cart, alert, registry, price (real-sales check), offer (prepare / confirm), or buy (quote — complete with POST /api/v1/buyer/checkout). Needs the action’s own scope too.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Act on an option: save, cart, alert, registry, price (real-sales check), offer (prepare / confirm), or buy (quote — complete with POST /api/v1/buyer/checkout). Needs the action’s own scope too.
BuyerAgentAPI.createBuyerAgentSessionAct(id: id) { (response, error) in
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

**CreateBuyerAgentSessionActResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerAgentSessionReact**
```swift
    open class func createBuyerAgentSessionReact(id: String, completion: @escaping (_ data: DeleteBuyerAgentSessionResponse?, _ error: Error?) -> Void)
```

Like or dislike an option; the next search leans toward likes and drops dislikes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Like or dislike an option; the next search leans toward likes and drops dislikes.
BuyerAgentAPI.createBuyerAgentSessionReact(id: id) { (response, error) in
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

**DeleteBuyerAgentSessionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerAgentSessionTurn**
```swift
    open class func createBuyerAgentSessionTurn(id: String, completion: @escaping (_ data: CreateBuyerAgentSessionTurnResponse?, _ error: Error?) -> Void)
```

Say something to the agent: what you want, a critique of the options (\"cheaper\", \"more like #2\"), or send a photo (imageBase64) to find things like it. Returns its reply and the new numbered options.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Say something to the agent: what you want, a critique of the options (\"cheaper\", \"more like #2\"), or send a photo (imageBase64) to find things like it. Returns its reply and the new numbered options.
BuyerAgentAPI.createBuyerAgentSessionTurn(id: id) { (response, error) in
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

**CreateBuyerAgentSessionTurnResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerAgentSession**
```swift
    open class func deleteBuyerAgentSession(id: String, completion: @escaping (_ data: DeleteBuyerAgentSessionResponse?, _ error: Error?) -> Void)
```

Delete a conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// Delete a conversation.
BuyerAgentAPI.deleteBuyerAgentSession(id: id) { (response, error) in
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

**DeleteBuyerAgentSessionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerAgentSession**
```swift
    open class func getBuyerAgentSession(id: String, completion: @escaping (_ data: GetBuyerAgentSessionResponse?, _ error: Error?) -> Void)
```

A conversation: its brief and turns, with each turn’s options re-read live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = "id_example" // String | 

// A conversation: its brief and turns, with each turn’s options re-read live.
BuyerAgentAPI.getBuyerAgentSession(id: id) { (response, error) in
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

**GetBuyerAgentSessionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerAgentSessions**
```swift
    open class func listBuyerAgentSessions(completion: @escaping (_ data: ListBuyerAgentSessionsResponse?, _ error: Error?) -> Void)
```

Your shopping agent conversations, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your shopping agent conversations, newest first.
BuyerAgentAPI.listBuyerAgentSessions() { (response, error) in
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

**ListBuyerAgentSessionsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

