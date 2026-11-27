# AccountsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAccount**](AccountsAPI.md#createaccount) | **POST** /v1/accounts | Connect a new platform account (kicks off OAuth or extension handshake).
[**createConnectionCardnexusApiKey**](AccountsAPI.md#createconnectioncardnexusapikey) | **POST** /v1/connections/cardnexus/api-key | Connect CardNexus with a personal API key (validated live before it is stored).
[**createConnectionEmailImap**](AccountsAPI.md#createconnectionemailimap) | **POST** /v1/connections/email/imap | Add an IMAP mailbox connection.
[**createConnectionEmailImapTest**](AccountsAPI.md#createconnectionemailimaptest) | **POST** /v1/connections/email/imap/test | Validate IMAP credentials without persisting.
[**createConnectionLightspeedXToken**](AccountsAPI.md#createconnectionlightspeedxtoken) | **POST** /v1/connections/lightspeed_x/token | Connect Lightspeed X-Series with a personal token (Setup → Personal tokens, Plus plan) and the store prefix.
[**createConnectionRequest**](AccountsAPI.md#createconnectionrequest) | **POST** /v1/connections/{platform}/request | Express interest in a request_only platform.
[**createPlatformAccountConnect**](AccountsAPI.md#createplatformaccountconnect) | **POST** /v1/platform-accounts/{platform}/connect | Revive or initiate connection for a cookie platform.
[**createPlatformAccountDisconnect**](AccountsAPI.md#createplatformaccountdisconnect) | **POST** /v1/platform-accounts/{platform}/disconnect | Disconnect every account of a platform (archives the rows and deletes their stored sessions).
[**createPlatformAccountHistoryImport**](AccountsAPI.md#createplatformaccounthistoryimport) | **POST** /v1/platform-accounts/{platform}/history-import | Set how far back to backfill order history + active listings for a platform, and run it now.
[**createPlatformAccountRefreshStatus**](AccountsAPI.md#createplatformaccountrefreshstatus) | **POST** /v1/platform-accounts/refresh-status | Run on-demand healthchecks across cookie accounts.
[**deleteAccount**](AccountsAPI.md#deleteaccount) | **DELETE** /v1/accounts/{id} | Disconnect a platform account.
[**deleteConnectionById**](AccountsAPI.md#deleteconnectionbyid) | **DELETE** /v1/connections/by-id/{id} | Disconnect a specific OAuth connection by id.
[**deleteConnectionEmailImap**](AccountsAPI.md#deleteconnectionemailimap) | **DELETE** /v1/connections/email/imap/{id} | Remove an IMAP mailbox connection.
[**getConnectionEmail**](AccountsAPI.md#getconnectionemail) | **GET** /v1/connections/email | List IMAP and email-OAuth connections.
[**getConnectionExtensionOnline**](AccountsAPI.md#getconnectionextensiononline) | **GET** /v1/connections/extension-online | Check if the browser extension is online.
[**getConnectionPolicyManagementOption**](AccountsAPI.md#getconnectionpolicymanagementoption) | **GET** /v1/connections/policy-management/{connectionId}/options/{source} | List the live options a marketplace policy field offers (e.g. Allegro delivery methods).
[**getOauthInit**](AccountsAPI.md#getoauthinit) | **GET** /v1/oauth/{platform}/init | Return the OAuth authorize URL for an API-track platform.
[**getPlatformLimit**](AccountsAPI.md#getplatformlimit) | **GET** /v1/platforms/limits | eBay free-tier + Etsy fees aggregate.
[**listAccounts**](AccountsAPI.md#listaccounts) | **GET** /v1/accounts | List your connected platform accounts.
[**listConnectionPolicyManagement**](AccountsAPI.md#listconnectionpolicymanagement) | **GET** /v1/connections/policy-management | List eBay and Etsy accounts with whether Crossly manages their policies.
[**listConnections**](AccountsAPI.md#listconnections) | **GET** /v1/connections | List OAuth-connected API platforms.
[**updateConnectionEmailImap**](AccountsAPI.md#updateconnectionemailimap) | **PATCH** /v1/connections/email/imap/{id} | Edit an IMAP mailbox connection.
[**updateConnectionPolicyManagement**](AccountsAPI.md#updateconnectionpolicymanagement) | **PUT** /v1/connections/policy-management/{connectionId} | Turn Crossly policy management on or off for one eBay or Etsy account.
[**updatePlatformPreference**](AccountsAPI.md#updateplatformpreference) | **PATCH** /v1/platforms/{platform}/preferences | Update per-platform connection preferences.


# **createAccount**
```swift
    open class func createAccount(completion: @escaping (_ data: CreateAccountResponse?, _ error: Error?) -> Void)
```

Connect a new platform account (kicks off OAuth or extension handshake).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Connect a new platform account (kicks off OAuth or extension handshake).
AccountsAPI.createAccount() { (response, error) in
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

**CreateAccountResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createConnectionCardnexusApiKey**
```swift
    open class func createConnectionCardnexusApiKey(completion: @escaping (_ data: CreateConnectionCardnexusApiKeyResponse?, _ error: Error?) -> Void)
```

Connect CardNexus with a personal API key (validated live before it is stored).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Connect CardNexus with a personal API key (validated live before it is stored).
AccountsAPI.createConnectionCardnexusApiKey() { (response, error) in
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

**CreateConnectionCardnexusApiKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createConnectionEmailImap**
```swift
    open class func createConnectionEmailImap(completion: @escaping (_ data: CreateConnectionEmailImapResponse?, _ error: Error?) -> Void)
```

Add an IMAP mailbox connection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Add an IMAP mailbox connection.
AccountsAPI.createConnectionEmailImap() { (response, error) in
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

**CreateConnectionEmailImapResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createConnectionEmailImapTest**
```swift
    open class func createConnectionEmailImapTest(completion: @escaping (_ data: CreateConnectionEmailImapTestResponse?, _ error: Error?) -> Void)
```

Validate IMAP credentials without persisting.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Validate IMAP credentials without persisting.
AccountsAPI.createConnectionEmailImapTest() { (response, error) in
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

**CreateConnectionEmailImapTestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createConnectionLightspeedXToken**
```swift
    open class func createConnectionLightspeedXToken(createConnectionLightspeedXTokenRequest: CreateConnectionLightspeedXTokenRequest, completion: @escaping (_ data: CreateConnectionLightspeedXTokenResponse?, _ error: Error?) -> Void)
```

Connect Lightspeed X-Series with a personal token (Setup → Personal tokens, Plus plan) and the store prefix.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createConnectionLightspeedXTokenRequest = CreateConnectionLightspeedXTokenRequest(domainPrefix: "domainPrefix_example", accessToken: "accessToken_example") // CreateConnectionLightspeedXTokenRequest | 

// Connect Lightspeed X-Series with a personal token (Setup → Personal tokens, Plus plan) and the store prefix.
AccountsAPI.createConnectionLightspeedXToken(createConnectionLightspeedXTokenRequest: createConnectionLightspeedXTokenRequest) { (response, error) in
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
 **createConnectionLightspeedXTokenRequest** | **CreateConnectionLightspeedXTokenRequest** |  | 

### Return type

**CreateConnectionLightspeedXTokenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createConnectionRequest**
```swift
    open class func createConnectionRequest(platform: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Express interest in a request_only platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 

// Express interest in a request_only platform.
AccountsAPI.createConnectionRequest(platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPlatformAccountConnect**
```swift
    open class func createPlatformAccountConnect(platform: String, completion: @escaping (_ data: CreatePlatformAccountConnectResponse?, _ error: Error?) -> Void)
```

Revive or initiate connection for a cookie platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 

// Revive or initiate connection for a cookie platform.
AccountsAPI.createPlatformAccountConnect(platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**CreatePlatformAccountConnectResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPlatformAccountDisconnect**
```swift
    open class func createPlatformAccountDisconnect(platform: String, completion: @escaping (_ data: CreatePlatformAccountDisconnectResponse?, _ error: Error?) -> Void)
```

Disconnect every account of a platform (archives the rows and deletes their stored sessions).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 

// Disconnect every account of a platform (archives the rows and deletes their stored sessions).
AccountsAPI.createPlatformAccountDisconnect(platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**CreatePlatformAccountDisconnectResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPlatformAccountHistoryImport**
```swift
    open class func createPlatformAccountHistoryImport(platform: String, createPlatformAccountHistoryImportRequest: CreatePlatformAccountHistoryImportRequest, completion: @escaping (_ data: CreatePlatformAccountHistoryImportResponse?, _ error: Error?) -> Void)
```

Set how far back to backfill order history + active listings for a platform, and run it now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let createPlatformAccountHistoryImportRequest = CreatePlatformAccountHistoryImportRequest(days: 123) // CreatePlatformAccountHistoryImportRequest | 

// Set how far back to backfill order history + active listings for a platform, and run it now.
AccountsAPI.createPlatformAccountHistoryImport(platform: platform, createPlatformAccountHistoryImportRequest: createPlatformAccountHistoryImportRequest) { (response, error) in
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
 **platform** | **String** |  | 
 **createPlatformAccountHistoryImportRequest** | **CreatePlatformAccountHistoryImportRequest** |  | 

### Return type

**CreatePlatformAccountHistoryImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPlatformAccountRefreshStatus**
```swift
    open class func createPlatformAccountRefreshStatus(completion: @escaping (_ data: CreatePlatformAccountRefreshStatusResponse?, _ error: Error?) -> Void)
```

Run on-demand healthchecks across cookie accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Run on-demand healthchecks across cookie accounts.
AccountsAPI.createPlatformAccountRefreshStatus() { (response, error) in
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

**CreatePlatformAccountRefreshStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteAccount**
```swift
    open class func deleteAccount(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Disconnect a platform account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Disconnect a platform account.
AccountsAPI.deleteAccount(id: id) { (response, error) in
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

# **deleteConnectionById**
```swift
    open class func deleteConnectionById(id: UUID, completion: @escaping (_ data: SuccessResponse?, _ error: Error?) -> Void)
```

Disconnect a specific OAuth connection by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Disconnect a specific OAuth connection by id.
AccountsAPI.deleteConnectionById(id: id) { (response, error) in
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

**SuccessResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteConnectionEmailImap**
```swift
    open class func deleteConnectionEmailImap(id: UUID, completion: @escaping (_ data: SuccessResponse?, _ error: Error?) -> Void)
```

Remove an IMAP mailbox connection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Remove an IMAP mailbox connection.
AccountsAPI.deleteConnectionEmailImap(id: id) { (response, error) in
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

**SuccessResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getConnectionEmail**
```swift
    open class func getConnectionEmail(completion: @escaping (_ data: GetConnectionEmailResponse?, _ error: Error?) -> Void)
```

List IMAP and email-OAuth connections.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List IMAP and email-OAuth connections.
AccountsAPI.getConnectionEmail() { (response, error) in
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

**GetConnectionEmailResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getConnectionExtensionOnline**
```swift
    open class func getConnectionExtensionOnline(completion: @escaping (_ data: GetConnectionExtensionOnlineResponse?, _ error: Error?) -> Void)
```

Check if the browser extension is online.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Check if the browser extension is online.
AccountsAPI.getConnectionExtensionOnline() { (response, error) in
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

**GetConnectionExtensionOnlineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getConnectionPolicyManagementOption**
```swift
    open class func getConnectionPolicyManagementOption(connectionId: String, source: String, completion: @escaping (_ data: GetConnectionPolicyManagementOptionResponse?, _ error: Error?) -> Void)
```

List the live options a marketplace policy field offers (e.g. Allegro delivery methods).

For one of your managed connections, the choices a preset's `platformFields` picker offers, from the marketplace (`source` is the field's `optionsSource`, e.g. `delivery-methods`). An unknown connection or source is a 404.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let connectionId = "connectionId_example" // String | 
let source = "source_example" // String | 

// List the live options a marketplace policy field offers (e.g. Allegro delivery methods).
AccountsAPI.getConnectionPolicyManagementOption(connectionId: connectionId, source: source) { (response, error) in
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
 **connectionId** | **String** |  | 
 **source** | **String** |  | 

### Return type

**GetConnectionPolicyManagementOptionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOauthInit**
```swift
    open class func getOauthInit(platform: String, shop: String? = nil, region: String? = nil, siteUrl: String? = nil, completion: @escaping (_ data: GetOauthInitResponse?, _ error: Error?) -> Void)
```

Return the OAuth authorize URL for an API-track platform.

Most platforms return `{ url }` (Shopify, Etsy, Amazon and the other marketplaces Atlas Connections connects: the URL Atlas returns for this seller). Bonanza adds `{ oneShot: true }`. WooCommerce requires `?siteUrl=...`. Walmart returns `{ status: \"request_only\", requestUrl, message }` instead of a URL because per-seller OAuth needs Solution Provider approval.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let shop = "shop_example" // String |  (optional)
let region = "region_example" // String |  (optional)
let siteUrl = "siteUrl_example" // String |  (optional)

// Return the OAuth authorize URL for an API-track platform.
AccountsAPI.getOauthInit(platform: platform, shop: shop, region: region, siteUrl: siteUrl) { (response, error) in
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
 **platform** | **String** |  | 
 **shop** | **String** |  | [optional] 
 **region** | **String** |  | [optional] 
 **siteUrl** | **String** |  | [optional] 

### Return type

**GetOauthInitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPlatformLimit**
```swift
    open class func getPlatformLimit(completion: @escaping (_ data: GetPlatformLimitResponse?, _ error: Error?) -> Void)
```

eBay free-tier + Etsy fees aggregate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// eBay free-tier + Etsy fees aggregate.
AccountsAPI.getPlatformLimit() { (response, error) in
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

**GetPlatformLimitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listAccounts**
```swift
    open class func listAccounts(completion: @escaping (_ data: ListAccountsResponse?, _ error: Error?) -> Void)
```

List your connected platform accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List your connected platform accounts.
AccountsAPI.listAccounts() { (response, error) in
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

**ListAccountsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listConnectionPolicyManagement**
```swift
    open class func listConnectionPolicyManagement(completion: @escaping (_ data: ListConnectionPolicyManagementResponse?, _ error: Error?) -> Void)
```

List eBay and Etsy accounts with whether Crossly manages their policies.

One row per connected eBay or Etsy account: `eligible` (eBay only on EBAY_US), `managed` (Crossly keeps its policies / shipping profiles in step with your default presets) and sync `notes`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List eBay and Etsy accounts with whether Crossly manages their policies.
AccountsAPI.listConnectionPolicyManagement() { (response, error) in
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

**ListConnectionPolicyManagementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listConnections**
```swift
    open class func listConnections(completion: @escaping (_ data: ListConnectionsResponse?, _ error: Error?) -> Void)
```

List OAuth-connected API platforms.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List OAuth-connected API platforms.
AccountsAPI.listConnections() { (response, error) in
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

**ListConnectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateConnectionEmailImap**
```swift
    open class func updateConnectionEmailImap(id: UUID, completion: @escaping (_ data: SuccessResponse?, _ error: Error?) -> Void)
```

Edit an IMAP mailbox connection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Edit an IMAP mailbox connection.
AccountsAPI.updateConnectionEmailImap(id: id) { (response, error) in
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

**SuccessResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateConnectionPolicyManagement**
```swift
    open class func updateConnectionPolicyManagement(connectionId: String, completion: @escaping (_ data: ListConnectionPolicyManagementItem?, _ error: Error?) -> Void)
```

Turn Crossly policy management on or off for one eBay or Etsy account.

Body `{ managed: boolean }`. On: Crossly may overwrite that account's own policies with your default presets and queues a sync now (409 for an ineligible account, e.g. non-US eBay). Off: Crossly stops touching them. A connection that is not yours (or not eBay/Etsy) is a 404.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let connectionId = "connectionId_example" // String | 

// Turn Crossly policy management on or off for one eBay or Etsy account.
AccountsAPI.updateConnectionPolicyManagement(connectionId: connectionId) { (response, error) in
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
 **connectionId** | **String** |  | 

### Return type

**ListConnectionPolicyManagementItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updatePlatformPreference**
```swift
    open class func updatePlatformPreference(platform: String, connectionId: UUID? = nil, completion: @escaping (_ data: UpdatePlatformPreferenceResponse?, _ error: Error?) -> Void)
```

Update per-platform connection preferences.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let connectionId = 987 // UUID |  (optional)

// Update per-platform connection preferences.
AccountsAPI.updatePlatformPreference(platform: platform, connectionId: connectionId) { (response, error) in
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
 **platform** | **String** |  | 
 **connectionId** | **UUID** |  | [optional] 

### Return type

**UpdatePlatformPreferenceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

