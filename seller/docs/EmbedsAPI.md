# EmbedsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmbedKey**](EmbedsAPI.md#createembedkey) | **POST** /v1/embeds/keys | Mint a publishable key for a site.
[**deleteEmbedKey**](EmbedsAPI.md#deleteembedkey) | **DELETE** /v1/embeds/keys/{id} | Revoke a publishable key.
[**listEmbedKeys**](EmbedsAPI.md#listembedkeys) | **GET** /v1/embeds/keys | Your publishable keys.


# **createEmbedKey**
```swift
    open class func createEmbedKey(createEmbedKeyRequest: CreateEmbedKeyRequest, completion: @escaping (_ data: CreateEmbedKeyResponse?, _ error: Error?) -> Void)
```

Mint a publishable key for a site.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createEmbedKeyRequest = CreateEmbedKeyRequest(name: "name_example", allowedOrigins: ["allowedOrigins_example"], environment: "environment_example") // CreateEmbedKeyRequest | 

// Mint a publishable key for a site.
EmbedsAPI.createEmbedKey(createEmbedKeyRequest: createEmbedKeyRequest) { (response, error) in
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
 **createEmbedKeyRequest** | **CreateEmbedKeyRequest** |  | 

### Return type

**CreateEmbedKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteEmbedKey**
```swift
    open class func deleteEmbedKey(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Revoke a publishable key.

Takes effect immediately. Any site still using it will show an empty catalog, so replace the key in the page before revoking the old one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Revoke a publishable key.
EmbedsAPI.deleteEmbedKey(id: id) { (response, error) in
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

Void (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listEmbedKeys**
```swift
    open class func listEmbedKeys(completion: @escaping (_ data: ListEmbedKeysResponse?, _ error: Error?) -> Void)
```

Your publishable keys.

Publishable keys are safe to put in a public web page — they can read your own active listings and start a checkout, and nothing else. The key is shown in full because it is not a secret.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your publishable keys.
EmbedsAPI.listEmbedKeys() { (response, error) in
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

**ListEmbedKeysResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

