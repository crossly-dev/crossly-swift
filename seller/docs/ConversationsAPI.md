# ConversationsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConversationMessage**](ConversationsAPI.md#createconversationmessage) | **POST** /v1/conversations/{id}/messages | Reply to the buyer, on the marketplace the conversation is on (Crossly marketplace: straight into the thread). The message is in the thread at once with deliveryStatus &#39;sending&#39;; it settles to &#39;sent&#39; or &#39;failed&#39;. reply_not_supported when the thread cannot take a reply (a no-reply sender, a platform with no reply wire).
[**listConversationMessages**](ConversationsAPI.md#listconversationmessages) | **GET** /v1/conversations/{id}/messages | A conversation&#39;s messages, oldest first. sender is buyer | seller; a reply you sent shows deliveryStatus sending → sent | failed. since (ISO 8601): only messages sent at or after it.
[**listConversations**](ConversationsAPI.md#listconversations) | **GET** /v1/conversations | List buyer conversations, newest activity first. orderId: the conversation(s) about that order (same platform, its listing, its buyer). listingId: about that listing. updatedSince (ISO 8601): only threads with activity at or after it, for polling. search: contains-match on the buyer username or the subject (case-insensitive). Pair with the message.received webhook.


# **createConversationMessage**
```swift
    open class func createConversationMessage(id: UUID, createConversationMessageRequest: CreateConversationMessageRequest, completion: @escaping (_ data: CreateConversationMessageResponse?, _ error: Error?) -> Void)
```

Reply to the buyer, on the marketplace the conversation is on (Crossly marketplace: straight into the thread). The message is in the thread at once with deliveryStatus 'sending'; it settles to 'sent' or 'failed'. reply_not_supported when the thread cannot take a reply (a no-reply sender, a platform with no reply wire).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let createConversationMessageRequest = CreateConversationMessageRequest(body: "body_example") // CreateConversationMessageRequest | 

// Reply to the buyer, on the marketplace the conversation is on (Crossly marketplace: straight into the thread). The message is in the thread at once with deliveryStatus 'sending'; it settles to 'sent' or 'failed'. reply_not_supported when the thread cannot take a reply (a no-reply sender, a platform with no reply wire).
ConversationsAPI.createConversationMessage(id: id, createConversationMessageRequest: createConversationMessageRequest) { (response, error) in
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
 **createConversationMessageRequest** | **CreateConversationMessageRequest** |  | 

### Return type

**CreateConversationMessageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listConversationMessages**
```swift
    open class func listConversationMessages(id: UUID, page: Int? = nil, limit: Int? = nil, since: Date? = nil, completion: @escaping (_ data: ListConversationMessagesResponse?, _ error: Error?) -> Void)
```

A conversation's messages, oldest first. sender is buyer | seller; a reply you sent shows deliveryStatus sending → sent | failed. since (ISO 8601): only messages sent at or after it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 50)
let since = Date() // Date |  (optional)

// A conversation's messages, oldest first. sender is buyer | seller; a reply you sent shows deliveryStatus sending → sent | failed. since (ISO 8601): only messages sent at or after it.
ConversationsAPI.listConversationMessages(id: id, page: page, limit: limit, since: since) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 50]
 **since** | **Date** |  | [optional] 

### Return type

**ListConversationMessagesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listConversations**
```swift
    open class func listConversations(page: Int? = nil, limit: Int? = nil, orderId: UUID? = nil, listingId: UUID? = nil, platform: String? = nil, updatedSince: Date? = nil, search: String? = nil, completion: @escaping (_ data: ListConversationsResponse?, _ error: Error?) -> Void)
```

List buyer conversations, newest activity first. orderId: the conversation(s) about that order (same platform, its listing, its buyer). listingId: about that listing. updatedSince (ISO 8601): only threads with activity at or after it, for polling. search: contains-match on the buyer username or the subject (case-insensitive). Pair with the message.received webhook.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 25)
let orderId = 987 // UUID |  (optional)
let listingId = 987 // UUID |  (optional)
let platform = "platform_example" // String |  (optional)
let updatedSince = Date() // Date |  (optional)
let search = "search_example" // String | Contains-match (case-insensitive) on the buyer username or the thread subject. (optional)

// List buyer conversations, newest activity first. orderId: the conversation(s) about that order (same platform, its listing, its buyer). listingId: about that listing. updatedSince (ISO 8601): only threads with activity at or after it, for polling. search: contains-match on the buyer username or the subject (case-insensitive). Pair with the message.received webhook.
ConversationsAPI.listConversations(page: page, limit: limit, orderId: orderId, listingId: listingId, platform: platform, updatedSince: updatedSince, search: search) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 25]
 **orderId** | **UUID** |  | [optional] 
 **listingId** | **UUID** |  | [optional] 
 **platform** | **String** |  | [optional] 
 **updatedSince** | **Date** |  | [optional] 
 **search** | **String** | Contains-match (case-insensitive) on the buyer username or the thread subject. | [optional] 

### Return type

**ListConversationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

