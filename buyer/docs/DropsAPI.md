# DropsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBuyerDropJoin**](DropsAPI.md#createbuyerdropjoin) | **POST** /v1/buyer/drops/{id}/join | Join a drop&#39;s line while it is open: one entry per account, the same odds as joining in the world. Repeating it returns the same entry.
[**deleteBuyerDropJoin**](DropsAPI.md#deletebuyerdropjoin) | **DELETE** /v1/buyer/drops/{id}/join | Leave a drop&#39;s line before the draw.
[**getBuyerDropMe**](DropsAPI.md#getbuyerdropme) | **GET** /v1/buyer/drops/{id}/me | Your entry in a drop: in line or not, your draw rank and outcome, and the checkout path while your 15-minute hold is live.


# **createBuyerDropJoin**
```swift
    open class func createBuyerDropJoin(id: UUID, completion: @escaping (_ data: CreateBuyerDropJoinResponse?, _ error: Error?) -> Void)
```

Join a drop's line while it is open: one entry per account, the same odds as joining in the world. Repeating it returns the same entry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 

// Join a drop's line while it is open: one entry per account, the same odds as joining in the world. Repeating it returns the same entry.
DropsAPI.createBuyerDropJoin(id: id) { (response, error) in
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

**CreateBuyerDropJoinResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBuyerDropJoin**
```swift
    open class func deleteBuyerDropJoin(id: UUID, completion: @escaping (_ data: DeleteBuyerDropJoinResponse?, _ error: Error?) -> Void)
```

Leave a drop's line before the draw.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 

// Leave a drop's line before the draw.
DropsAPI.deleteBuyerDropJoin(id: id) { (response, error) in
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

**DeleteBuyerDropJoinResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerDropMe**
```swift
    open class func getBuyerDropMe(id: UUID, completion: @escaping (_ data: GetBuyerDropMeResponse?, _ error: Error?) -> Void)
```

Your entry in a drop: in line or not, your draw rank and outcome, and the checkout path while your 15-minute hold is live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 

// Your entry in a drop: in line or not, your draw rank and outcome, and the checkout path while your 15-minute hold is live.
DropsAPI.getBuyerDropMe(id: id) { (response, error) in
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

**GetBuyerDropMeResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

