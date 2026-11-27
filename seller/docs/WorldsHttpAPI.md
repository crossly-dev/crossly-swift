# WorldsHttpAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorldExperienceHttpDomain**](WorldsHttpAPI.md#createworldexperiencehttpdomain) | **POST** /v1/worlds/experiences/{experienceId}/http/domains | Declare a domain server scripts may call (example.com or *.example.com). It is reviewed by a person before it works.
[**deleteWorldExperienceHttpDomain**](WorldsHttpAPI.md#deleteworldexperiencehttpdomain) | **DELETE** /v1/worlds/experiences/{experienceId}/http/domains/{domainId} | Remove a domain: scripts lose access at once.
[**deleteWorldExperienceHttpSecret**](WorldsHttpAPI.md#deleteworldexperiencehttpsecret) | **DELETE** /v1/worlds/experiences/{experienceId}/http/secrets/{name} | Delete a secret.
[**getWorldExperienceHttp**](WorldsHttpAPI.md#getworldexperiencehttp) | **GET** /v1/worlds/experiences/{experienceId}/http | Http settings: declared domains with their review state, secret names (never values), limits and rules.
[**updateWorldExperienceHttpSecret**](WorldsHttpAPI.md#updateworldexperiencehttpsecret) | **PUT** /v1/worlds/experiences/{experienceId}/http/secrets/{name} | Set a secret (UPPER_SNAKE name). Scripts reference it as Http.secret(\&quot;NAME\&quot;); the value is never returned.


# **createWorldExperienceHttpDomain**
```swift
    open class func createWorldExperienceHttpDomain(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceHttpDomainResponse?, _ error: Error?) -> Void)
```

Declare a domain server scripts may call (example.com or *.example.com). It is reviewed by a person before it works.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Declare a domain server scripts may call (example.com or *.example.com). It is reviewed by a person before it works.
WorldsHttpAPI.createWorldExperienceHttpDomain(experienceId: experienceId) { (response, error) in
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
 **experienceId** | **String** |  | 

### Return type

**CreateWorldExperienceHttpDomainResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperienceHttpDomain**
```swift
    open class func deleteWorldExperienceHttpDomain(experienceId: String, domainId: String, completion: @escaping (_ data: DeleteSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Remove a domain: scripts lose access at once.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let domainId = "domainId_example" // String | 

// Remove a domain: scripts lose access at once.
WorldsHttpAPI.deleteWorldExperienceHttpDomain(experienceId: experienceId, domainId: domainId) { (response, error) in
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
 **experienceId** | **String** |  | 
 **domainId** | **String** |  | 

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperienceHttpSecret**
```swift
    open class func deleteWorldExperienceHttpSecret(experienceId: String, name: String, completion: @escaping (_ data: DeleteSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Delete a secret.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let name = "name_example" // String | 

// Delete a secret.
WorldsHttpAPI.deleteWorldExperienceHttpSecret(experienceId: experienceId, name: name) { (response, error) in
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
 **experienceId** | **String** |  | 
 **name** | **String** |  | 

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceHttp**
```swift
    open class func getWorldExperienceHttp(experienceId: String, completion: @escaping (_ data: GetWorldExperienceHttpResponse?, _ error: Error?) -> Void)
```

Http settings: declared domains with their review state, secret names (never values), limits and rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Http settings: declared domains with their review state, secret names (never values), limits and rules.
WorldsHttpAPI.getWorldExperienceHttp(experienceId: experienceId) { (response, error) in
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
 **experienceId** | **String** |  | 

### Return type

**GetWorldExperienceHttpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceHttpSecret**
```swift
    open class func updateWorldExperienceHttpSecret(experienceId: String, name: String, completion: @escaping (_ data: UpdateWorldExperienceHttpSecretResponse?, _ error: Error?) -> Void)
```

Set a secret (UPPER_SNAKE name). Scripts reference it as Http.secret(\"NAME\"); the value is never returned.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let name = "name_example" // String | 

// Set a secret (UPPER_SNAKE name). Scripts reference it as Http.secret(\"NAME\"); the value is never returned.
WorldsHttpAPI.updateWorldExperienceHttpSecret(experienceId: experienceId, name: name) { (response, error) in
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
 **experienceId** | **String** |  | 
 **name** | **String** |  | 

### Return type

**UpdateWorldExperienceHttpSecretResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

