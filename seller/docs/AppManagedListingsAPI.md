# AppManagedListingsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createListingCommandAck**](AppManagedListingsAPI.md#createlistingcommandack) | **POST** /v1/listing-commands/{id}/ack | Acknowledge a command (you will act on it). Extends its deadline: 24 h for listing commands; tracking 2 h, cancel 4 h, refund 24 h, message 1 h.
[**createListingCommandComplete**](AppManagedListingsAPI.md#createlistingcommandcomplete) | **POST** /v1/listing-commands/{id}/complete | Report a command done on the marketplace. relist: newExternalId when a new id was issued; refund_order: platformRefundId + amount (required); submit_tracking: trackingNumber/carrier as the marketplace holds them; message_buyer: platformMessageId.
[**createListingCommandFail**](AppManagedListingsAPI.md#createlistingcommandfail) | **POST** /v1/listing-commands/{id}/fail | Report a command failed, with a reason the seller will see.
[**createListingEvent**](AppManagedListingsAPI.md#createlistingevent) | **POST** /v1/listings/{id}/events | Report a marketplace event (item.updated / ended / sold / relisted) for a listing your app manages.
[**createListingEvent2**](AppManagedListingsAPI.md#createlistingevent2) | **POST** /v1/listings/events | Report up to 100 marketplace events keyed by platform + externalId. One bad event never fails the rest.
[**createListingLink**](AppManagedListingsAPI.md#createlistinglink) | **POST** /v1/listings/link | Link a live marketplace listing your app already manages into Crossly (no re-listing). Idempotent.
[**createListingLinkBulk**](AppManagedListingsAPI.md#createlistinglinkbulk) | **POST** /v1/listings/link/bulk | Link up to 100 live marketplace listings. Each item succeeds or fails on its own; re-sending is safe.
[**createListingPlatformReclone**](AppManagedListingsAPI.md#createlistingplatformreclone) | **POST** /v1/listings/{id}/platforms/{platform}/reclone | End this marketplace item and relist it under Crossly. Requires consent: true.
[**createListingPlatformRecloneCancel**](AppManagedListingsAPI.md#createlistingplatformreclonecancel) | **POST** /v1/listings/{id}/platforms/{platform}/reclone/cancel | Cancel a relist still waiting for you to end the old item.
[**createListingPlatformRecloneSellerEnded**](AppManagedListingsAPI.md#createlistingplatformreclonesellerended) | **POST** /v1/listings/{id}/platforms/{platform}/reclone/seller-ended | You ended the old item on the marketplace yourself (Done).
[**createListingPlatformTakeOver**](AppManagedListingsAPI.md#createlistingplatformtakeover) | **POST** /v1/listings/{id}/platforms/{platform}/take-over | Take over an app-managed item: Crossly acts on the marketplace itself (needs your own connection).
[**createListingUnlink**](AppManagedListingsAPI.md#createlistingunlink) | **POST** /v1/listings/{id}/unlink | Stop the app managing this listing. It stays live everywhere; the app&#39;s Crossly Shop fee ends for future sales.
[**createOrderEvent**](AppManagedListingsAPI.md#createorderevent) | **POST** /v1/orders/events | Report up to 100 order events (shipped, cancelled, refunded, delivered) keyed by platform + platformOrderId. Each completes the matching open order command. One bad event never fails the rest.
[**createOrderTakeOver**](AppManagedListingsAPI.md#createordertakeover) | **POST** /v1/orders/{id}/take-over | Take over the app-managed item behind an order; its actions then go through your own connection.
[**getListingManagement**](AppManagedListingsAPI.md#getlistingmanagement) | **GET** /v1/listings/{id}/management | Which app manages this listing (null when none). Its fee is charged only on Crossly Shop sales, never on eBay or other marketplaces.
[**getListingPlatformReclone**](AppManagedListingsAPI.md#getlistingplatformreclone) | **GET** /v1/listings/{id}/platforms/{platform}/reclone | The latest relist-under-Crossly run for this listing on a platform (null when none).
[**listListingCommands**](AppManagedListingsAPI.md#listlistingcommands) | **GET** /v1/listing-commands | Your app&#39;s listing (delist/update/relist) and order (submit_tracking, remove_tracking, cancel_order, refund_order, message_buyer) commands for this seller (default: open ones), oldest first.


# **createListingCommandAck**
```swift
    open class func createListingCommandAck(id: UUID, completion: @escaping (_ data: ListListingCommandsItem?, _ error: Error?) -> Void)
```

Acknowledge a command (you will act on it). Extends its deadline: 24 h for listing commands; tracking 2 h, cancel 4 h, refund 24 h, message 1 h.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Acknowledge a command (you will act on it). Extends its deadline: 24 h for listing commands; tracking 2 h, cancel 4 h, refund 24 h, message 1 h.
AppManagedListingsAPI.createListingCommandAck(id: id) { (response, error) in
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

**ListListingCommandsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingCommandComplete**
```swift
    open class func createListingCommandComplete(id: UUID, completion: @escaping (_ data: ListListingCommandsItem?, _ error: Error?) -> Void)
```

Report a command done on the marketplace. relist: newExternalId when a new id was issued; refund_order: platformRefundId + amount (required); submit_tracking: trackingNumber/carrier as the marketplace holds them; message_buyer: platformMessageId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Report a command done on the marketplace. relist: newExternalId when a new id was issued; refund_order: platformRefundId + amount (required); submit_tracking: trackingNumber/carrier as the marketplace holds them; message_buyer: platformMessageId.
AppManagedListingsAPI.createListingCommandComplete(id: id) { (response, error) in
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

**ListListingCommandsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingCommandFail**
```swift
    open class func createListingCommandFail(id: UUID, completion: @escaping (_ data: ListListingCommandsItem?, _ error: Error?) -> Void)
```

Report a command failed, with a reason the seller will see.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Report a command failed, with a reason the seller will see.
AppManagedListingsAPI.createListingCommandFail(id: id) { (response, error) in
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

**ListListingCommandsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingEvent**
```swift
    open class func createListingEvent(id: UUID, completion: @escaping (_ data: CreateListingEventResponse?, _ error: Error?) -> Void)
```

Report a marketplace event (item.updated / ended / sold / relisted) for a listing your app manages.

Idempotent on `eventId`. State events apply only when `sequence` is higher than the last applied one (else `stale`, ignored). `item.sold` runs Crossly's sale cascade (other channels delist) and is never dropped as stale.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Report a marketplace event (item.updated / ended / sold / relisted) for a listing your app manages.
AppManagedListingsAPI.createListingEvent(id: id) { (response, error) in
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

**CreateListingEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingEvent2**
```swift
    open class func createListingEvent2(completion: @escaping (_ data: CreateListingEvent2Response?, _ error: Error?) -> Void)
```

Report up to 100 marketplace events keyed by platform + externalId. One bad event never fails the rest.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Report up to 100 marketplace events keyed by platform + externalId. One bad event never fails the rest.
AppManagedListingsAPI.createListingEvent2() { (response, error) in
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

**CreateListingEvent2Response**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingLink**
```swift
    open class func createListingLink(completion: @escaping (_ data: CreateListingLinkResponse?, _ error: Error?) -> Void)
```

Link a live marketplace listing your app already manages into Crossly (no re-listing). Idempotent.

Direct when Crossly holds the seller's own connection (verified by item id: exists, active, theirs); relayed otherwise, on your attestation plus `snapshot`. The listing shows \"Managed by <your app>\". Your revenue share is charged only on sales made on Crossly Shop; sales on eBay or any other marketplace never carry an app fee.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Link a live marketplace listing your app already manages into Crossly (no re-listing). Idempotent.
AppManagedListingsAPI.createListingLink() { (response, error) in
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

**CreateListingLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingLinkBulk**
```swift
    open class func createListingLinkBulk(completion: @escaping (_ data: CreateListingLinkBulkResponse?, _ error: Error?) -> Void)
```

Link up to 100 live marketplace listings. Each item succeeds or fails on its own; re-sending is safe.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Link up to 100 live marketplace listings. Each item succeeds or fails on its own; re-sending is safe.
AppManagedListingsAPI.createListingLinkBulk() { (response, error) in
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

**CreateListingLinkBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingPlatformReclone**
```swift
    open class func createListingPlatformReclone(id: UUID, platform: String, completion: @escaping (_ data: CreateListingPlatformRecloneResponse?, _ error: Error?) -> Void)
```

End this marketplace item and relist it under Crossly. Requires consent: true.

Loses the item's watchers, sold count, sales history, Promoted Listings and open offers; the item number changes. Refused while an order awaits fulfilment or an auction has bids. The new listing is published only after the old one is confirmed ended.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let platform = "platform_example" // String | 

// End this marketplace item and relist it under Crossly. Requires consent: true.
AppManagedListingsAPI.createListingPlatformReclone(id: id, platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**CreateListingPlatformRecloneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingPlatformRecloneCancel**
```swift
    open class func createListingPlatformRecloneCancel(id: UUID, platform: String, completion: @escaping (_ data: CreateListingPlatformRecloneResponse?, _ error: Error?) -> Void)
```

Cancel a relist still waiting for you to end the old item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let platform = "platform_example" // String | 

// Cancel a relist still waiting for you to end the old item.
AppManagedListingsAPI.createListingPlatformRecloneCancel(id: id, platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**CreateListingPlatformRecloneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingPlatformRecloneSellerEnded**
```swift
    open class func createListingPlatformRecloneSellerEnded(id: UUID, platform: String, completion: @escaping (_ data: CreateListingPlatformRecloneResponse?, _ error: Error?) -> Void)
```

You ended the old item on the marketplace yourself (Done).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let platform = "platform_example" // String | 

// You ended the old item on the marketplace yourself (Done).
AppManagedListingsAPI.createListingPlatformRecloneSellerEnded(id: id, platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**CreateListingPlatformRecloneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingPlatformTakeOver**
```swift
    open class func createListingPlatformTakeOver(id: UUID, platform: String, completion: @escaping (_ data: CreateListingPlatformTakeOverResponse?, _ error: Error?) -> Void)
```

Take over an app-managed item: Crossly acts on the marketplace itself (needs your own connection).

Verifies the item is on your connected account first. mode 'direct' (default) keeps the app as manager; 'full' also unlinks it (listing.unlinked reason 'taken_over'; its Crossly Shop fee stops). An app command already acknowledged answers 409 app_command_in_flight until you send confirm: true.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let platform = "platform_example" // String | 

// Take over an app-managed item: Crossly acts on the marketplace itself (needs your own connection).
AppManagedListingsAPI.createListingPlatformTakeOver(id: id, platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**CreateListingPlatformTakeOverResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingUnlink**
```swift
    open class func createListingUnlink(id: UUID, completion: @escaping (_ data: CreateListingUnlinkResponse?, _ error: Error?) -> Void)
```

Stop the app managing this listing. It stays live everywhere; the app's Crossly Shop fee ends for future sales.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Stop the app managing this listing. It stays live everywhere; the app's Crossly Shop fee ends for future sales.
AppManagedListingsAPI.createListingUnlink(id: id) { (response, error) in
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

**CreateListingUnlinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderEvent**
```swift
    open class func createOrderEvent(completion: @escaping (_ data: CreateOrderEventResponse?, _ error: Error?) -> Void)
```

Report up to 100 order events (shipped, cancelled, refunded, delivered) keyed by platform + platformOrderId. Each completes the matching open order command. One bad event never fails the rest.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Report up to 100 order events (shipped, cancelled, refunded, delivered) keyed by platform + platformOrderId. Each completes the matching open order command. One bad event never fails the rest.
AppManagedListingsAPI.createOrderEvent() { (response, error) in
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

**CreateOrderEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderTakeOver**
```swift
    open class func createOrderTakeOver(id: UUID, completion: @escaping (_ data: CreateOrderTakeOverResponse?, _ error: Error?) -> Void)
```

Take over the app-managed item behind an order; its actions then go through your own connection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Take over the app-managed item behind an order; its actions then go through your own connection.
AppManagedListingsAPI.createOrderTakeOver(id: id) { (response, error) in
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

**CreateOrderTakeOverResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getListingManagement**
```swift
    open class func getListingManagement(id: UUID, completion: @escaping (_ data: GetListingManagementResponse?, _ error: Error?) -> Void)
```

Which app manages this listing (null when none). Its fee is charged only on Crossly Shop sales, never on eBay or other marketplaces.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Which app manages this listing (null when none). Its fee is charged only on Crossly Shop sales, never on eBay or other marketplaces.
AppManagedListingsAPI.getListingManagement(id: id) { (response, error) in
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

**GetListingManagementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getListingPlatformReclone**
```swift
    open class func getListingPlatformReclone(id: UUID, platform: String, completion: @escaping (_ data: GetListingPlatformRecloneResponse?, _ error: Error?) -> Void)
```

The latest relist-under-Crossly run for this listing on a platform (null when none).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let platform = "platform_example" // String | 

// The latest relist-under-Crossly run for this listing on a platform (null when none).
AppManagedListingsAPI.getListingPlatformReclone(id: id, platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**GetListingPlatformRecloneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listListingCommands**
```swift
    open class func listListingCommands(state: String? = nil, type: String? = nil, limit: Int? = nil, page: Int? = nil, completion: @escaping (_ data: ListListingCommandsResponse?, _ error: Error?) -> Void)
```

Your app's listing (delist/update/relist) and order (submit_tracking, remove_tracking, cancel_order, refund_order, message_buyer) commands for this seller (default: open ones), oldest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let state = "state_example" // String | Comma-separated: pending, acked, completed, failed, expired, cancelled (optional)
let type = "type_example" // String | Comma-separated: delist, update, relist, submit_tracking, remove_tracking, cancel_order, refund_order, message_buyer (optional)
let limit = 987 // Int |  (optional)
let page = 987 // Int |  (optional)

// Your app's listing (delist/update/relist) and order (submit_tracking, remove_tracking, cancel_order, refund_order, message_buyer) commands for this seller (default: open ones), oldest first.
AppManagedListingsAPI.listListingCommands(state: state, type: type, limit: limit, page: page) { (response, error) in
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
 **state** | **String** | Comma-separated: pending, acked, completed, failed, expired, cancelled | [optional] 
 **type** | **String** | Comma-separated: delist, update, relist, submit_tracking, remove_tracking, cancel_order, refund_order, message_buyer | [optional] 
 **limit** | **Int** |  | [optional] 
 **page** | **Int** |  | [optional] 

### Return type

**ListListingCommandsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

