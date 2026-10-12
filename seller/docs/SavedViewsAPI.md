# SavedViewsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSavedView**](SavedViewsAPI.md#createsavedview) | **POST** /v1/saved-views | Create a saved view preset.
[**deleteSavedView**](SavedViewsAPI.md#deletesavedview) | **DELETE** /v1/saved-views/{id} | Delete a saved view preset.
[**listSavedViews**](SavedViewsAPI.md#listsavedviews) | **GET** /v1/saved-views | List the seller&#39;s saved view presets.
[**updateSavedView**](SavedViewsAPI.md#updatesavedview) | **PATCH** /v1/saved-views/{id} | Update a saved view preset.


# **createSavedView**
```swift
    open class func createSavedView(completion: @escaping (_ data: ListSavedViewsItem?, _ error: Error?) -> Void)
```

Create a saved view preset.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a saved view preset.
SavedViewsAPI.createSavedView() { (response, error) in
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

**ListSavedViewsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteSavedView**
```swift
    open class func deleteSavedView(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete a saved view preset.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a saved view preset.
SavedViewsAPI.deleteSavedView(id: id) { (response, error) in
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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSavedViews**
```swift
    open class func listSavedViews(resource: String? = nil, completion: @escaping (_ data: ListSavedViewsResponse?, _ error: Error?) -> Void)
```

List the seller's saved view presets.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let resource = "resource_example" // String |  (optional)

// List the seller's saved view presets.
SavedViewsAPI.listSavedViews(resource: resource) { (response, error) in
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
 **resource** | **String** |  | [optional] 

### Return type

**ListSavedViewsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSavedView**
```swift
    open class func updateSavedView(id: UUID, completion: @escaping (_ data: ListSavedViewsItem?, _ error: Error?) -> Void)
```

Update a saved view preset.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Update a saved view preset.
SavedViewsAPI.updateSavedView(id: id) { (response, error) in
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

**ListSavedViewsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

