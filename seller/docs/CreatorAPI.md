# CreatorAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCreatorExperienceKey**](CreatorAPI.md#createcreatorexperiencekey) | **POST** /v1/creator/experience-keys | Issue an experience API key for a back-end or CI: name, creator scopes (worlds:*, items:write — only ones your token holds), an IP allowlist (CIDRs; 0.0.0.0/0 + ::/0 for anywhere), optional experienceIds and expiresInDays. The token is in the response ONCE.
[**createCreatorExperienceKeyRotate**](CreatorAPI.md#createcreatorexperiencekeyrotate) | **POST** /v1/creator/experience-keys/{id}/rotate | Rotate a key: a replacement with the same settings (its token shown ONCE); the old key keeps working for overlapHours (default 24, 0 &#x3D; revoke now, max 168).
[**deleteCreatorExperienceKey**](CreatorAPI.md#deletecreatorexperiencekey) | **DELETE** /v1/creator/experience-keys/{id} | Revoke an experience key now. Never needs a plan: a credential must always be revocable.
[**getCreatorEntitlement**](CreatorAPI.md#getcreatorentitlement) | **GET** /v1/creator/entitlements | What you can do in Creator Studio: your plan, whether you can author, grandfathering, and every limit with used and remaining. Read by web, apps, SDK and MCP alike.
[**listCreatorExperienceKeys**](CreatorAPI.md#listcreatorexperiencekeys) | **GET** /v1/creator/experience-keys | Your experience API keys, newest first (never the secret). ?includeRevoked&#x3D;true for the history; ?experienceId&#x3D; for the keys that reach one game (a game&#39;s own keys are narrowed to it alone). Cursor-paged: pass pagination.nextCursor back as ?cursor&#x3D;.


# **createCreatorExperienceKey**
```swift
    open class func createCreatorExperienceKey(completion: @escaping (_ data: CreateCreatorExperienceKeyResponse?, _ error: Error?) -> Void)
```

Issue an experience API key for a back-end or CI: name, creator scopes (worlds:*, items:write — only ones your token holds), an IP allowlist (CIDRs; 0.0.0.0/0 + ::/0 for anywhere), optional experienceIds and expiresInDays. The token is in the response ONCE.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Issue an experience API key for a back-end or CI: name, creator scopes (worlds:*, items:write — only ones your token holds), an IP allowlist (CIDRs; 0.0.0.0/0 + ::/0 for anywhere), optional experienceIds and expiresInDays. The token is in the response ONCE.
CreatorAPI.createCreatorExperienceKey() { (response, error) in
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

**CreateCreatorExperienceKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorExperienceKeyRotate**
```swift
    open class func createCreatorExperienceKeyRotate(id: String, completion: @escaping (_ data: CreateCreatorExperienceKeyRotateResponse?, _ error: Error?) -> Void)
```

Rotate a key: a replacement with the same settings (its token shown ONCE); the old key keeps working for overlapHours (default 24, 0 = revoke now, max 168).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Rotate a key: a replacement with the same settings (its token shown ONCE); the old key keeps working for overlapHours (default 24, 0 = revoke now, max 168).
CreatorAPI.createCreatorExperienceKeyRotate(id: id) { (response, error) in
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

**CreateCreatorExperienceKeyRotateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteCreatorExperienceKey**
```swift
    open class func deleteCreatorExperienceKey(id: String, completion: @escaping (_ data: DeleteCreatorExperienceKeyResponse?, _ error: Error?) -> Void)
```

Revoke an experience key now. Never needs a plan: a credential must always be revocable.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Revoke an experience key now. Never needs a plan: a credential must always be revocable.
CreatorAPI.deleteCreatorExperienceKey(id: id) { (response, error) in
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

**DeleteCreatorExperienceKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorEntitlement**
```swift
    open class func getCreatorEntitlement(completion: @escaping (_ data: GetCreatorEntitlementResponse?, _ error: Error?) -> Void)
```

What you can do in Creator Studio: your plan, whether you can author, grandfathering, and every limit with used and remaining. Read by web, apps, SDK and MCP alike.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What you can do in Creator Studio: your plan, whether you can author, grandfathering, and every limit with used and remaining. Read by web, apps, SDK and MCP alike.
CreatorAPI.getCreatorEntitlement() { (response, error) in
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

**GetCreatorEntitlementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCreatorExperienceKeys**
```swift
    open class func listCreatorExperienceKeys(completion: @escaping (_ data: ListCreatorExperienceKeysResponse?, _ error: Error?) -> Void)
```

Your experience API keys, newest first (never the secret). ?includeRevoked=true for the history; ?experienceId= for the keys that reach one game (a game's own keys are narrowed to it alone). Cursor-paged: pass pagination.nextCursor back as ?cursor=.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your experience API keys, newest first (never the secret). ?includeRevoked=true for the history; ?experienceId= for the keys that reach one game (a game's own keys are narrowed to it alone). Cursor-paged: pass pagination.nextCursor back as ?cursor=.
CreatorAPI.listCreatorExperienceKeys() { (response, error) in
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

**ListCreatorExperienceKeysResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

