# GroupBuysAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroupBuy**](GroupBuysAPI.md#creategroupbuy) | **POST** /v1/group-buys | Run a group buy on a listing with stock: price tiers by committed quantity, a goal and minimum to proceed, a per-buyer max, a deadline, authorize-now or pay-now-refund-the-difference, a goal-miss policy (cancel, proceed, extend once), visibility, placement and share copy. The original body (tiers by buyer count, minBuyers, days) is still accepted.
[**createGroupBuyCancel**](GroupBuysAPI.md#creategroupbuycancel) | **POST** /v1/group-buys/{id}/cancel | Cancel a group buy: every hold is released and every charge refunded.
[**createGroupBuyClose**](GroupBuysAPI.md#creategroupbuyclose) | **POST** /v1/group-buys/{id}/close | Close a group buy now: every buyer pays the price reached (the minimum and goal-miss policy still apply).
[**createGroupBuyExtend**](GroupBuysAPI.md#creategroupbuyextend) | **POST** /v1/group-buys/{id}/extend | Move the deadline later by N days (authorize-now pools run at most 6 days, pay-now pools 30).
[**createGroupBuyMessage**](GroupBuysAPI.md#creategroupbuymessage) | **POST** /v1/group-buys/{id}/message | Send a notification to every buyer committed to the group buy.
[**getGroupBuy**](GroupBuysAPI.md#getgroupbuy) | **GET** /v1/group-buys/{id} | One group buy: progress towards each tier, committed buyers (masked), time left, revenue at the current tier and the activity feed.
[**getGroupBuyParticipantsCsv**](GroupBuysAPI.md#getgroupbuyparticipantscsv) | **GET** /v1/group-buys/{id}/participants.csv | Every participant of a group buy as CSV: quantity, status, amounts and ship-to.
[**listGroupBuys**](GroupBuysAPI.md#listgroupbuys) | **GET** /v1/group-buys | Your group buys, open ones first: tiers, buyers joined, the price reached and when it ends.
[**updateGroupBuy**](GroupBuysAPI.md#updategroupbuy) | **PATCH** /v1/group-buys/{id} | Edit a group buy. Copy, visibility, placement and the per-buyer max change any time; tiers, goal, minimum, payment mode and goal-miss policy only before anyone commits.


# **createGroupBuy**
```swift
    open class func createGroupBuy(completion: @escaping (_ data: CreateBreakResponse?, _ error: Error?) -> Void)
```

Run a group buy on a listing with stock: price tiers by committed quantity, a goal and minimum to proceed, a per-buyer max, a deadline, authorize-now or pay-now-refund-the-difference, a goal-miss policy (cancel, proceed, extend once), visibility, placement and share copy. The original body (tiers by buyer count, minBuyers, days) is still accepted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Run a group buy on a listing with stock: price tiers by committed quantity, a goal and minimum to proceed, a per-buyer max, a deadline, authorize-now or pay-now-refund-the-difference, a goal-miss policy (cancel, proceed, extend once), visibility, placement and share copy. The original body (tiers by buyer count, minBuyers, days) is still accepted.
GroupBuysAPI.createGroupBuy() { (response, error) in
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

**CreateBreakResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createGroupBuyCancel**
```swift
    open class func createGroupBuyCancel(id: String, completion: @escaping (_ data: CreateGroupBuyCancelResponse?, _ error: Error?) -> Void)
```

Cancel a group buy: every hold is released and every charge refunded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a group buy: every hold is released and every charge refunded.
GroupBuysAPI.createGroupBuyCancel(id: id) { (response, error) in
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

**CreateGroupBuyCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createGroupBuyClose**
```swift
    open class func createGroupBuyClose(id: String, completion: @escaping (_ data: CreateGroupBuyCloseResponse?, _ error: Error?) -> Void)
```

Close a group buy now: every buyer pays the price reached (the minimum and goal-miss policy still apply).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Close a group buy now: every buyer pays the price reached (the minimum and goal-miss policy still apply).
GroupBuysAPI.createGroupBuyClose(id: id) { (response, error) in
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

**CreateGroupBuyCloseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createGroupBuyExtend**
```swift
    open class func createGroupBuyExtend(id: String, completion: @escaping (_ data: CreateGroupBuyExtendResponse?, _ error: Error?) -> Void)
```

Move the deadline later by N days (authorize-now pools run at most 6 days, pay-now pools 30).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Move the deadline later by N days (authorize-now pools run at most 6 days, pay-now pools 30).
GroupBuysAPI.createGroupBuyExtend(id: id) { (response, error) in
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

**CreateGroupBuyExtendResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createGroupBuyMessage**
```swift
    open class func createGroupBuyMessage(id: String, completion: @escaping (_ data: CreateGroupBuyMessageResponse?, _ error: Error?) -> Void)
```

Send a notification to every buyer committed to the group buy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Send a notification to every buyer committed to the group buy.
GroupBuysAPI.createGroupBuyMessage(id: id) { (response, error) in
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

**CreateGroupBuyMessageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getGroupBuy**
```swift
    open class func getGroupBuy(id: String, completion: @escaping (_ data: GetGroupBuyResponse?, _ error: Error?) -> Void)
```

One group buy: progress towards each tier, committed buyers (masked), time left, revenue at the current tier and the activity feed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One group buy: progress towards each tier, committed buyers (masked), time left, revenue at the current tier and the activity feed.
GroupBuysAPI.getGroupBuy(id: id) { (response, error) in
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

**GetGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getGroupBuyParticipantsCsv**
```swift
    open class func getGroupBuyParticipantsCsv(id: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Every participant of a group buy as CSV: quantity, status, amounts and ship-to.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Every participant of a group buy as CSV: quantity, status, amounts and ship-to.
GroupBuysAPI.getGroupBuyParticipantsCsv(id: id) { (response, error) in
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

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listGroupBuys**
```swift
    open class func listGroupBuys(completion: @escaping (_ data: ListGroupBuysResponse?, _ error: Error?) -> Void)
```

Your group buys, open ones first: tiers, buyers joined, the price reached and when it ends.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your group buys, open ones first: tiers, buyers joined, the price reached and when it ends.
GroupBuysAPI.listGroupBuys() { (response, error) in
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

**ListGroupBuysResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateGroupBuy**
```swift
    open class func updateGroupBuy(id: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Edit a group buy. Copy, visibility, placement and the per-buyer max change any time; tiers, goal, minimum, payment mode and goal-miss policy only before anyone commits.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Edit a group buy. Copy, visibility, placement and the per-buyer max change any time; tiers, goal, minimum, payment mode and goal-miss policy only before anyone commits.
GroupBuysAPI.updateGroupBuy(id: id) { (response, error) in
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

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

