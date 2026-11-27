# InboxAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInboxAiSuggest**](InboxAPI.md#createinboxaisuggest) | **POST** /v1/inbox/ai-suggest | AI reply suggestion for a conversation.
[**createInboxCannedResponse**](InboxAPI.md#createinboxcannedresponse) | **POST** /v1/inbox/canned-responses | Create a canned response (added to the end of the list).
[**createInboxConversationBulk**](InboxAPI.md#createinboxconversationbulk) | **POST** /v1/inbox/conversations/bulk | Bulk mark read / mark unread / soft-delete conversations.
[**createInboxConversationBulkAiRespond**](InboxAPI.md#createinboxconversationbulkairespond) | **POST** /v1/inbox/conversations/bulk-ai-respond | AI reply suggestion for multiple conversations — draft or send.
[**createInboxConversationOfferAction**](InboxAPI.md#createinboxconversationofferaction) | **POST** /v1/inbox/conversations/{id}/offer-action | Accept / counter / decline an active offer on a conversation.
[**createInboxMessageTriage**](InboxAPI.md#createinboxmessagetriage) | **POST** /v1/inbox/messages/{id}/triage | Manually re-triage a buyer message.
[**createInboxOffer**](InboxAPI.md#createinboxoffer) | **POST** /v1/inbox/{id}/offer | Accept, counter, or decline an offer on a conversation.
[**createInboxReply**](InboxAPI.md#createinboxreply) | **POST** /v1/inbox/{id}/reply | Send a reply to a conversation thread.
[**createInboxSendOffer**](InboxAPI.md#createinboxsendoffer) | **POST** /v1/inbox/{id}/send-offer | Make the buyer an offer inside a conversation (seller → buyer). Only where the conversation&#39;s canSendOffer is true (Grailed today). &#x60;amount&#x60; is in the listing&#39;s currency, above 0 and below the listing price (whole dollars on Grailed). The offer is in the thread at once as a message with offerAmount + offerStatus, deliveryStatus &#39;sending&#39; until the platform confirms.
[**createVideoRequestAnswer**](InboxAPI.md#createvideorequestanswer) | **POST** /v1/video-requests/{id}/answer | Answer a video request with a clip you uploaded (POST /v1/video-requests/upload-url, then PUT the file to uploadUrl). The buyer is notified and the clip shows on the listing.
[**createVideoRequestDecline**](InboxAPI.md#createvideorequestdecline) | **POST** /v1/video-requests/{id}/decline | Decline a video request, with an optional note to the buyer.
[**createVideoRequestUploadUrl**](InboxAPI.md#createvideorequestuploadurl) | **POST** /v1/video-requests/upload-url | A presigned upload for a video answer: PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then answer with publicUrl.
[**deleteInboxCannedResponse**](InboxAPI.md#deleteinboxcannedresponse) | **DELETE** /v1/inbox/canned-responses/{id} | Delete a canned response.
[**getInbox**](InboxAPI.md#getinbox) | **GET** /v1/inbox/{id} | Get one conversation with its messages and the item it is about (itemTitle, itemThumbnail, itemPrice, itemCurrency, itemUrl on the platform, listingId in Crossly, crosslyListingSlug, canSendOffer). An offer made in the thread is a message with offerAmount + offerStatus.
[**getInboxCannedResponse**](InboxAPI.md#getinboxcannedresponse) | **GET** /v1/inbox/canned-responses | List canned responses in the seller&#39;s order.
[**getInboxConversationMessage**](InboxAPI.md#getinboxconversationmessage) | **GET** /v1/inbox/conversations/{id}/messages | Paginated messages for a conversation.
[**getInboxConversationUnreadCount**](InboxAPI.md#getinboxconversationunreadcount) | **GET** /v1/inbox/conversations/unread-count | Unread conversation count (threads only; /v1/inbox/counts adds offers).
[**getInboxCount**](InboxAPI.md#getinboxcount) | **GET** /v1/inbox/counts | Inbox badges: unread and needs-reply, split into conversations and offers.
[**listInbox**](InboxAPI.md#listinbox) | **GET** /v1/inbox | List conversations. &#x60;filter&#x60; narrows to the rows GET /v1/inbox/counts counts.
[**listVideoRequests**](InboxAPI.md#listvideorequests) | **GET** /v1/video-requests | Buyers asking for a video of your items. status: open (default), answered, declined or all.
[**updateInboxCannedResponse**](InboxAPI.md#updateinboxcannedresponse) | **PUT** /v1/inbox/canned-responses/{id} | Update a canned response.
[**updateInboxCannedResponseOrder**](InboxAPI.md#updateinboxcannedresponseorder) | **PUT** /v1/inbox/canned-responses/order | Reorder canned responses.
[**updateInboxConversation**](InboxAPI.md#updateinboxconversation) | **PATCH** /v1/inbox/conversations/{id} | Mark read / change status / close conversation.


# **createInboxAiSuggest**
```swift
    open class func createInboxAiSuggest(completion: @escaping (_ data: CreateInboxAiSuggestResponse?, _ error: Error?) -> Void)
```

AI reply suggestion for a conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// AI reply suggestion for a conversation.
InboxAPI.createInboxAiSuggest() { (response, error) in
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

**CreateInboxAiSuggestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInboxCannedResponse**
```swift
    open class func createInboxCannedResponse(completion: @escaping (_ data: CreateInboxCannedResponseResponse?, _ error: Error?) -> Void)
```

Create a canned response (added to the end of the list).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a canned response (added to the end of the list).
InboxAPI.createInboxCannedResponse() { (response, error) in
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

**CreateInboxCannedResponseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInboxConversationBulk**
```swift
    open class func createInboxConversationBulk(completion: @escaping (_ data: CreateInboxConversationBulkResponse?, _ error: Error?) -> Void)
```

Bulk mark read / mark unread / soft-delete conversations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk mark read / mark unread / soft-delete conversations.
InboxAPI.createInboxConversationBulk() { (response, error) in
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

# **createInboxConversationBulkAiRespond**
```swift
    open class func createInboxConversationBulkAiRespond(completion: @escaping (_ data: CreateInboxConversationBulkAiRespondResponse?, _ error: Error?) -> Void)
```

AI reply suggestion for multiple conversations — draft or send.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// AI reply suggestion for multiple conversations — draft or send.
InboxAPI.createInboxConversationBulkAiRespond() { (response, error) in
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

**CreateInboxConversationBulkAiRespondResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInboxConversationOfferAction**
```swift
    open class func createInboxConversationOfferAction(id: UUID, completion: @escaping (_ data: UpdateInboxConversationResponse?, _ error: Error?) -> Void)
```

Accept / counter / decline an active offer on a conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Accept / counter / decline an active offer on a conversation.
InboxAPI.createInboxConversationOfferAction(id: id) { (response, error) in
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

**UpdateInboxConversationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInboxMessageTriage**
```swift
    open class func createInboxMessageTriage(id: UUID, completion: @escaping (_ data: CreateInboxMessageTriageResponse?, _ error: Error?) -> Void)
```

Manually re-triage a buyer message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Manually re-triage a buyer message.
InboxAPI.createInboxMessageTriage(id: id) { (response, error) in
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

**CreateInboxMessageTriageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInboxOffer**
```swift
    open class func createInboxOffer(id: UUID, completion: @escaping (_ data: CreateInboxOfferResponse?, _ error: Error?) -> Void)
```

Accept, counter, or decline an offer on a conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Accept, counter, or decline an offer on a conversation.
InboxAPI.createInboxOffer(id: id) { (response, error) in
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

**CreateInboxOfferResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInboxReply**
```swift
    open class func createInboxReply(id: UUID, completion: @escaping (_ data: CreateInboxReplyResponse?, _ error: Error?) -> Void)
```

Send a reply to a conversation thread.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Send a reply to a conversation thread.
InboxAPI.createInboxReply(id: id) { (response, error) in
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

**CreateInboxReplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInboxSendOffer**
```swift
    open class func createInboxSendOffer(id: UUID, createInboxSendOfferRequest: CreateInboxSendOfferRequest, completion: @escaping (_ data: CreateInboxSendOfferResponse?, _ error: Error?) -> Void)
```

Make the buyer an offer inside a conversation (seller → buyer). Only where the conversation's canSendOffer is true (Grailed today). `amount` is in the listing's currency, above 0 and below the listing price (whole dollars on Grailed). The offer is in the thread at once as a message with offerAmount + offerStatus, deliveryStatus 'sending' until the platform confirms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let createInboxSendOfferRequest = CreateInboxSendOfferRequest(amount: 123, note: "note_example") // CreateInboxSendOfferRequest | 

// Make the buyer an offer inside a conversation (seller → buyer). Only where the conversation's canSendOffer is true (Grailed today). `amount` is in the listing's currency, above 0 and below the listing price (whole dollars on Grailed). The offer is in the thread at once as a message with offerAmount + offerStatus, deliveryStatus 'sending' until the platform confirms.
InboxAPI.createInboxSendOffer(id: id, createInboxSendOfferRequest: createInboxSendOfferRequest) { (response, error) in
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
 **createInboxSendOfferRequest** | **CreateInboxSendOfferRequest** |  | 

### Return type

**CreateInboxSendOfferResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVideoRequestAnswer**
```swift
    open class func createVideoRequestAnswer(id: String, completion: @escaping (_ data: CreateVideoRequestAnswerResponse?, _ error: Error?) -> Void)
```

Answer a video request with a clip you uploaded (POST /v1/video-requests/upload-url, then PUT the file to uploadUrl). The buyer is notified and the clip shows on the listing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Answer a video request with a clip you uploaded (POST /v1/video-requests/upload-url, then PUT the file to uploadUrl). The buyer is notified and the clip shows on the listing.
InboxAPI.createVideoRequestAnswer(id: id) { (response, error) in
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

**CreateVideoRequestAnswerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVideoRequestDecline**
```swift
    open class func createVideoRequestDecline(id: String, completion: @escaping (_ data: CreateVideoRequestAnswerResponse?, _ error: Error?) -> Void)
```

Decline a video request, with an optional note to the buyer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Decline a video request, with an optional note to the buyer.
InboxAPI.createVideoRequestDecline(id: id) { (response, error) in
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

**CreateVideoRequestAnswerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVideoRequestUploadUrl**
```swift
    open class func createVideoRequestUploadUrl(completion: @escaping (_ data: CreateVideoRequestUploadUrlResponse?, _ error: Error?) -> Void)
```

A presigned upload for a video answer: PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then answer with publicUrl.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A presigned upload for a video answer: PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then answer with publicUrl.
InboxAPI.createVideoRequestUploadUrl() { (response, error) in
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

**CreateVideoRequestUploadUrlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteInboxCannedResponse**
```swift
    open class func deleteInboxCannedResponse(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a canned response.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a canned response.
InboxAPI.deleteInboxCannedResponse(id: id) { (response, error) in
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

Void (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInbox**
```swift
    open class func getInbox(id: UUID, completion: @escaping (_ data: GetInboxResponse?, _ error: Error?) -> Void)
```

Get one conversation with its messages and the item it is about (itemTitle, itemThumbnail, itemPrice, itemCurrency, itemUrl on the platform, listingId in Crossly, crosslyListingSlug, canSendOffer). An offer made in the thread is a message with offerAmount + offerStatus.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Get one conversation with its messages and the item it is about (itemTitle, itemThumbnail, itemPrice, itemCurrency, itemUrl on the platform, listingId in Crossly, crosslyListingSlug, canSendOffer). An offer made in the thread is a message with offerAmount + offerStatus.
InboxAPI.getInbox(id: id) { (response, error) in
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

**GetInboxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInboxCannedResponse**
```swift
    open class func getInboxCannedResponse(completion: @escaping (_ data: GetInboxCannedResponseResponse?, _ error: Error?) -> Void)
```

List canned responses in the seller's order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List canned responses in the seller's order.
InboxAPI.getInboxCannedResponse() { (response, error) in
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

**GetInboxCannedResponseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInboxConversationMessage**
```swift
    open class func getInboxConversationMessage(id: UUID, completion: @escaping (_ data: GetInboxConversationMessageResponse?, _ error: Error?) -> Void)
```

Paginated messages for a conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Paginated messages for a conversation.
InboxAPI.getInboxConversationMessage(id: id) { (response, error) in
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

**GetInboxConversationMessageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInboxConversationUnreadCount**
```swift
    open class func getInboxConversationUnreadCount(completion: @escaping (_ data: CreateWeb3LaunchArtResponse?, _ error: Error?) -> Void)
```

Unread conversation count (threads only; /v1/inbox/counts adds offers).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Unread conversation count (threads only; /v1/inbox/counts adds offers).
InboxAPI.getInboxConversationUnreadCount() { (response, error) in
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

**CreateWeb3LaunchArtResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInboxCount**
```swift
    open class func getInboxCount(completion: @escaping (_ data: GetInboxCountResponse?, _ error: Error?) -> Void)
```

Inbox badges: unread and needs-reply, split into conversations and offers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Inbox badges: unread and needs-reply, split into conversations and offers.
InboxAPI.getInboxCount() { (response, error) in
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

**GetInboxCountResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listInbox**
```swift
    open class func listInbox(page: Int? = nil, limit: Int? = nil, filter: Filter_listInbox? = nil, completion: @escaping (_ data: ListInboxResponse?, _ error: Error?) -> Void)
```

List conversations. `filter` narrows to the rows GET /v1/inbox/counts counts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 25)
let filter = "filter_example" // String | unread | needs_reply (services/inbox/attention.ts). Omit for all. (optional)

// List conversations. `filter` narrows to the rows GET /v1/inbox/counts counts.
InboxAPI.listInbox(page: page, limit: limit, filter: filter) { (response, error) in
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
 **filter** | **String** | unread | needs_reply (services/inbox/attention.ts). Omit for all. | [optional] 

### Return type

**ListInboxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVideoRequests**
```swift
    open class func listVideoRequests(completion: @escaping (_ data: ListVideoRequestsResponse?, _ error: Error?) -> Void)
```

Buyers asking for a video of your items. status: open (default), answered, declined or all.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Buyers asking for a video of your items. status: open (default), answered, declined or all.
InboxAPI.listVideoRequests() { (response, error) in
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

**ListVideoRequestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateInboxCannedResponse**
```swift
    open class func updateInboxCannedResponse(id: UUID, completion: @escaping (_ data: CreateInboxCannedResponseResponse?, _ error: Error?) -> Void)
```

Update a canned response.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Update a canned response.
InboxAPI.updateInboxCannedResponse(id: id) { (response, error) in
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

**CreateInboxCannedResponseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateInboxCannedResponseOrder**
```swift
    open class func updateInboxCannedResponseOrder(updateInboxCannedResponseOrderRequest: UpdateInboxCannedResponseOrderRequest, completion: @escaping (_ data: GetInboxCannedResponseResponse?, _ error: Error?) -> Void)
```

Reorder canned responses.

Pass EVERY canned response id in the new order (first = top of the picker). A list with an unknown, missing or repeated id is refused with a validation error and nothing changes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let updateInboxCannedResponseOrderRequest = UpdateInboxCannedResponseOrderRequest(ids: [123]) // UpdateInboxCannedResponseOrderRequest | 

// Reorder canned responses.
InboxAPI.updateInboxCannedResponseOrder(updateInboxCannedResponseOrderRequest: updateInboxCannedResponseOrderRequest) { (response, error) in
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
 **updateInboxCannedResponseOrderRequest** | **UpdateInboxCannedResponseOrderRequest** |  | 

### Return type

**GetInboxCannedResponseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateInboxConversation**
```swift
    open class func updateInboxConversation(id: UUID, completion: @escaping (_ data: UpdateInboxConversationResponse?, _ error: Error?) -> Void)
```

Mark read / change status / close conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Mark read / change status / close conversation.
InboxAPI.updateInboxConversation(id: id) { (response, error) in
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

**UpdateInboxConversationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

