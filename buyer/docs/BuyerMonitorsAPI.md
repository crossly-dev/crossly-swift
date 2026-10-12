# BuyerMonitorsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBuyerMonitor**](BuyerMonitorsAPI.md#createbuyermonitor) | **POST** /v1/buyer/monitors | Watch a search, and be told when it matches.
[**deleteBuyerMonitor**](BuyerMonitorsAPI.md#deletebuyermonitor) | **DELETE** /v1/buyer/monitors/{id} | Delete a monitor.
[**listBuyerMonitorMatches**](BuyerMonitorsAPI.md#listbuyermonitormatches) | **GET** /v1/buyer/monitors/{id}/matches | What this monitor has matched.
[**listBuyerMonitors**](BuyerMonitorsAPI.md#listbuyermonitors) | **GET** /v1/buyer/monitors | Your monitors.
[**updateBuyerMonitor**](BuyerMonitorsAPI.md#updatebuyermonitor) | **PATCH** /v1/buyer/monitors/{id} | Pause, resume or rename a monitor.


# **createBuyerMonitor**
```swift
    open class func createBuyerMonitor(completion: @escaping (_ data: ListBuyerMonitorsItem?, _ error: Error?) -> Void)
```

Watch a search, and be told when it matches.

Works immediately — there is no review step. The signing secret is returned ONCE, here; it is never readable again. The first sweep SEEDS without firing: a restock alert created while the item is already in stock has not observed a restock, and a new-listing monitor would otherwise deliver the entire back catalogue.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Watch a search, and be told when it matches.
BuyerMonitorsAPI.createBuyerMonitor() { (response, error) in
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

**ListBuyerMonitorsItem**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerMonitor**
```swift
    open class func deleteBuyerMonitor(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a monitor.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 

// Delete a monitor.
BuyerMonitorsAPI.deleteBuyerMonitor(id: id) { (response, error) in
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

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerMonitorMatches**
```swift
    open class func listBuyerMonitorMatches(id: UUID, completion: @escaping (_ data: ListBuyerMonitorMatchesResponse?, _ error: Error?) -> Void)
```

What this monitor has matched.

The read side of a `poll` monitor, and an audit trail for a `webhook` one — so a missed delivery does not mean lost data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 

// What this monitor has matched.
BuyerMonitorsAPI.listBuyerMonitorMatches(id: id) { (response, error) in
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

**ListBuyerMonitorMatchesResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerMonitors**
```swift
    open class func listBuyerMonitors(completion: @escaping (_ data: ListBuyerMonitorsResponse?, _ error: Error?) -> Void)
```

Your monitors.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your monitors.
BuyerMonitorsAPI.listBuyerMonitors() { (response, error) in
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

**ListBuyerMonitorsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBuyerMonitor**
```swift
    open class func updateBuyerMonitor(id: UUID, completion: @escaping (_ data: ListBuyerMonitorsItem?, _ error: Error?) -> Void)
```

Pause, resume or rename a monitor.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 

// Pause, resume or rename a monitor.
BuyerMonitorsAPI.updateBuyerMonitor(id: id) { (response, error) in
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

**ListBuyerMonitorsItem**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

