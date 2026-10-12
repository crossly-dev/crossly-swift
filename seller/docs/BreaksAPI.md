# BreaksAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBreak**](BreaksAPI.md#createbreak) | **POST** /v1/breaks | Start a break on one of your listings: pick (buyers choose a spot) or random (drawn). The seed is committed now and revealed at the draw.
[**createBreakCancel**](BreaksAPI.md#createbreakcancel) | **POST** /v1/breaks/{id}/cancel | Cancel a break before any spot is paid for; after that, refund those orders instead (409).
[**createBreakDraw**](BreaksAPI.md#createbreakdraw) | **POST** /v1/breaks/{id}/draw | Draw a sold-out random break: assigns spots from the committed seed and reveals it.
[**createBreakOpened**](BreaksAPI.md#createbreakopened) | **POST** /v1/breaks/{id}/opened | Mark the product opened on stream.
[**createBreakSpotHit**](BreaksAPI.md#createbreakspothit) | **POST** /v1/breaks/{id}/spots/{spotId}/hits | Record what a spot pulled.
[**getBreak**](BreaksAPI.md#getbreak) | **GET** /v1/breaks/{id} | A break’s board with every spot, its buyer and its hits.
[**listBreaks**](BreaksAPI.md#listbreaks) | **GET** /v1/breaks | Your card breaks, newest first.


# **createBreak**
```swift
    open class func createBreak(completion: @escaping (_ data: CreateBreakResponse?, _ error: Error?) -> Void)
```

Start a break on one of your listings: pick (buyers choose a spot) or random (drawn). The seed is committed now and revealed at the draw.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start a break on one of your listings: pick (buyers choose a spot) or random (drawn). The seed is committed now and revealed at the draw.
BreaksAPI.createBreak() { (response, error) in
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

# **createBreakCancel**
```swift
    open class func createBreakCancel(id: String, completion: @escaping (_ data: CreateBreakCancelResponse?, _ error: Error?) -> Void)
```

Cancel a break before any spot is paid for; after that, refund those orders instead (409).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a break before any spot is paid for; after that, refund those orders instead (409).
BreaksAPI.createBreakCancel(id: id) { (response, error) in
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

**CreateBreakCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBreakDraw**
```swift
    open class func createBreakDraw(id: String, completion: @escaping (_ data: CreateBreakDrawResponse?, _ error: Error?) -> Void)
```

Draw a sold-out random break: assigns spots from the committed seed and reveals it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Draw a sold-out random break: assigns spots from the committed seed and reveals it.
BreaksAPI.createBreakDraw(id: id) { (response, error) in
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

**CreateBreakDrawResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBreakOpened**
```swift
    open class func createBreakOpened(id: String, completion: @escaping (_ data: CreateBreakCancelResponse?, _ error: Error?) -> Void)
```

Mark the product opened on stream.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Mark the product opened on stream.
BreaksAPI.createBreakOpened(id: id) { (response, error) in
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

**CreateBreakCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBreakSpotHit**
```swift
    open class func createBreakSpotHit(id: String, spotId: String, completion: @escaping (_ data: CreateBreakCancelResponse?, _ error: Error?) -> Void)
```

Record what a spot pulled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let spotId = "spotId_example" // String | 

// Record what a spot pulled.
BreaksAPI.createBreakSpotHit(id: id, spotId: spotId) { (response, error) in
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
 **spotId** | **String** |  | 

### Return type

**CreateBreakCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBreak**
```swift
    open class func getBreak(id: String, completion: @escaping (_ data: GetBreakResponse?, _ error: Error?) -> Void)
```

A break’s board with every spot, its buyer and its hits.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A break’s board with every spot, its buyer and its hits.
BreaksAPI.getBreak(id: id) { (response, error) in
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

**GetBreakResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBreaks**
```swift
    open class func listBreaks(completion: @escaping (_ data: ListBreaksResponse?, _ error: Error?) -> Void)
```

Your card breaks, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your card breaks, newest first.
BreaksAPI.listBreaks() { (response, error) in
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

**ListBreaksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

