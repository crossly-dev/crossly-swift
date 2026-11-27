# ChannelInventoryAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteChannelInventory**](ChannelInventoryAPI.md#deletechannelinventory) | **DELETE** /v1/channel-inventory/{platform}/{slot} | Reset a channel&#39;s inventory controls to the default (no cap, no buffer, sync on, end on sell-out).
[**getChannelInventory**](ChannelInventoryAPI.md#getchannelinventory) | **GET** /v1/channel-inventory/{platform}/{slot} | Get one channel&#39;s inventory controls.
[**listChannelInventory**](ChannelInventoryAPI.md#listchannelinventory) | **GET** /v1/channel-inventory | List every sales channel with its inventory controls (cap, buffer, sync, out-of-stock action, exclusions).
[**updateChannelInventory**](ChannelInventoryAPI.md#updatechannelinventory) | **PUT** /v1/channel-inventory/{platform}/{slot} | Set a channel&#39;s quantity cap, buffer, sync toggle, out-of-stock action and exclusion lists (merge write).


# **deleteChannelInventory**
```swift
    open class func deleteChannelInventory(platform: String, slot: Int, completion: @escaping (_ data: ListChannelInventoryItem?, _ error: Error?) -> Void)
```

Reset a channel's inventory controls to the default (no cap, no buffer, sync on, end on sell-out).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let slot = 987 // Int | 

// Reset a channel's inventory controls to the default (no cap, no buffer, sync on, end on sell-out).
ChannelInventoryAPI.deleteChannelInventory(platform: platform, slot: slot) { (response, error) in
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
 **platform** | **String** |  | 
 **slot** | **Int** |  | 

### Return type

**ListChannelInventoryItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getChannelInventory**
```swift
    open class func getChannelInventory(platform: String, slot: Int, completion: @escaping (_ data: ListChannelInventoryItem?, _ error: Error?) -> Void)
```

Get one channel's inventory controls.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let slot = 987 // Int | 

// Get one channel's inventory controls.
ChannelInventoryAPI.getChannelInventory(platform: platform, slot: slot) { (response, error) in
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
 **platform** | **String** |  | 
 **slot** | **Int** |  | 

### Return type

**ListChannelInventoryItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listChannelInventory**
```swift
    open class func listChannelInventory(completion: @escaping (_ data: ListChannelInventoryResponse?, _ error: Error?) -> Void)
```

List every sales channel with its inventory controls (cap, buffer, sync, out-of-stock action, exclusions).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List every sales channel with its inventory controls (cap, buffer, sync, out-of-stock action, exclusions).
ChannelInventoryAPI.listChannelInventory() { (response, error) in
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

**ListChannelInventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateChannelInventory**
```swift
    open class func updateChannelInventory(platform: String, slot: Int, completion: @escaping (_ data: ListChannelInventoryItem?, _ error: Error?) -> Void)
```

Set a channel's quantity cap, buffer, sync toggle, out-of-stock action and exclusion lists (merge write).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let slot = 987 // Int | 

// Set a channel's quantity cap, buffer, sync toggle, out-of-stock action and exclusion lists (merge write).
ChannelInventoryAPI.updateChannelInventory(platform: platform, slot: slot) { (response, error) in
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
 **platform** | **String** |  | 
 **slot** | **Int** |  | 

### Return type

**ListChannelInventoryItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

