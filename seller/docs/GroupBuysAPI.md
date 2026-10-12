# GroupBuysAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroupBuy**](GroupBuysAPI.md#creategroupbuy) | **POST** /v1/group-buys | Run a group buy on a listing with stock: price tiers by buyer count, a minimum, up to 6 days. Below the minimum nobody pays.


# **createGroupBuy**
```swift
    open class func createGroupBuy(completion: @escaping (_ data: CreateBreakResponse?, _ error: Error?) -> Void)
```

Run a group buy on a listing with stock: price tiers by buyer count, a minimum, up to 6 days. Below the minimum nobody pays.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Run a group buy on a listing with stock: price tiers by buyer count, a minimum, up to 6 days. Below the minimum nobody pays.
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

