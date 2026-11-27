# RestockPromptsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRestockPromptDismiss**](RestockPromptsAPI.md#createrestockpromptdismiss) | **POST** /v1/restock-prompts/{id}/dismiss | Dismiss a pending restock prompt.
[**createRestockPromptRepublish**](RestockPromptsAPI.md#createrestockpromptrepublish) | **POST** /v1/restock-prompts/{id}/republish | Republish a restock prompt to platforms.
[**getRestockPromptSetting**](RestockPromptsAPI.md#getrestockpromptsetting) | **GET** /v1/restock-prompts/settings | Whether restocked items are republished automatically.
[**listRestockPrompts**](RestockPromptsAPI.md#listrestockprompts) | **GET** /v1/restock-prompts | List pending restock prompts.
[**updateRestockPromptSetting**](RestockPromptsAPI.md#updaterestockpromptsetting) | **PUT** /v1/restock-prompts/settings | Turn automatic republish of restocked items on or off.


# **createRestockPromptDismiss**
```swift
    open class func createRestockPromptDismiss(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Dismiss a pending restock prompt.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Dismiss a pending restock prompt.
RestockPromptsAPI.createRestockPromptDismiss(id: id) { (response, error) in
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

# **createRestockPromptRepublish**
```swift
    open class func createRestockPromptRepublish(id: UUID, completion: @escaping (_ data: CreateRestockPromptRepublishResponse?, _ error: Error?) -> Void)
```

Republish a restock prompt to platforms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Republish a restock prompt to platforms.
RestockPromptsAPI.createRestockPromptRepublish(id: id) { (response, error) in
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

**CreateRestockPromptRepublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getRestockPromptSetting**
```swift
    open class func getRestockPromptSetting(completion: @escaping (_ data: GetRestockPromptSettingResponse?, _ error: Error?) -> Void)
```

Whether restocked items are republished automatically.

autoRepublish (default true): when an item that sold out comes back in stock, Crossly republishes it to the marketplaces it came off without asking. False: a restock prompt is raised instead. A listing the seller ended by hand is never republished automatically.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Whether restocked items are republished automatically.
RestockPromptsAPI.getRestockPromptSetting() { (response, error) in
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

**GetRestockPromptSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listRestockPrompts**
```swift
    open class func listRestockPrompts(completion: @escaping (_ data: ListRestockPromptsResponse?, _ error: Error?) -> Void)
```

List pending restock prompts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List pending restock prompts.
RestockPromptsAPI.listRestockPrompts() { (response, error) in
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

**ListRestockPromptsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateRestockPromptSetting**
```swift
    open class func updateRestockPromptSetting(getRestockPromptSettingResponse: GetRestockPromptSettingResponse, completion: @escaping (_ data: GetRestockPromptSettingResponse?, _ error: Error?) -> Void)
```

Turn automatic republish of restocked items on or off.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let getRestockPromptSettingResponse = GetRestockPromptSettingResponse(autoRepublish: false) // GetRestockPromptSettingResponse | 

// Turn automatic republish of restocked items on or off.
RestockPromptsAPI.updateRestockPromptSetting(getRestockPromptSettingResponse: getRestockPromptSettingResponse) { (response, error) in
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
 **getRestockPromptSettingResponse** | **GetRestockPromptSettingResponse** |  | 

### Return type

**GetRestockPromptSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

