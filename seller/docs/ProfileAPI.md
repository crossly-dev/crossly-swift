# ProfileAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**updateMe**](ProfileAPI.md#updateme) | **PATCH** /v1/me | Update the authenticated user&#39;s profile (display name, etc).


# **updateMe**
```swift
    open class func updateMe(completion: @escaping (_ data: UpdateMeResponse?, _ error: Error?) -> Void)
```

Update the authenticated user's profile (display name, etc).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Update the authenticated user's profile (display name, etc).
ProfileAPI.updateMe() { (response, error) in
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

[**UpdateMeResponse**](UpdateMeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

