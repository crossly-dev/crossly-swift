# ToolboxAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createToolboxAsset**](ToolboxAPI.md#createtoolboxasset) | **POST** /v1/toolbox/assets | Publish an asset (place nodes). Scanned (lint, text, credits, uploads) then reviewed. Free by default; paid needs Pro and a verified identity.
[**createToolboxAssetPurchase**](ToolboxAPI.md#createtoolboxassetpurchase) | **POST** /v1/toolbox/assets/{assetId}/purchase | Open a Crossly checkout for a paid asset. Nothing is charged here: a person pays at checkoutUrl. The author earns 80% of net; the licence is use in your own experiences.
[**createToolboxAssetRetire**](ToolboxAPI.md#createtoolboxassetretire) | **POST** /v1/toolbox/assets/{assetId}/retire | Take an asset off the store for good. Licences already sold keep working.
[**createToolboxAssetUse**](ToolboxAPI.md#createtoolboxassetuse) | **POST** /v1/toolbox/assets/{assetId}/use | Get the asset&#39;s nodes stamped with its id for a place you can edit; insert:true also inserts them into the place&#39;s live session. Paid assets need the experience owner&#39;s licence.
[**createToolboxAssetVersion**](ToolboxAPI.md#createtoolboxassetversion) | **POST** /v1/toolbox/assets/{assetId}/versions | A new version (reviewed); the live one keeps serving until it is approved.
[**createToolboxPurchaseRefund**](ToolboxAPI.md#createtoolboxpurchaserefund) | **POST** /v1/toolbox/purchases/{purchaseId}/refund | Refund a licence within 14 days while no published version of yours uses the asset. Ends the licence; the author&#39;s share is reversed.
[**deleteToolboxAssetRatingMine**](ToolboxAPI.md#deletetoolboxassetratingmine) | **DELETE** /v1/toolbox/assets/{assetId}/ratings/mine | Remove your rating of an asset.
[**getToolboxAsset**](ToolboxAPI.md#gettoolboxasset) | **GET** /v1/toolbox/assets/{assetId} | One asset: versions, credits (assets it includes), licence, contents, your purchase.
[**getToolboxAssetRating**](ToolboxAPI.md#gettoolboxassetrating) | **GET** /v1/toolbox/assets/{assetId}/ratings | Ratings of an asset: average stars, breakdown, recent reviews, yours, and whether you may rate it.
[**getToolboxPurchase**](ToolboxAPI.md#gettoolboxpurchase) | **GET** /v1/toolbox/purchases/{purchaseId} | A purchase: status, price, tax, refundable until.
[**listToolboxAssets**](ToolboxAPI.md#listtoolboxassets) | **GET** /v1/toolbox/assets | Search the Toolbox: models, scripts, sounds, images, packages. Free and paid; &#x60;owned&#x60; says whether you may insert it now.
[**listToolboxLibrary**](ToolboxAPI.md#listtoolboxlibrary) | **GET** /v1/toolbox/library | Assets you may insert: licences you bought, your own, free ones you used.
[**listToolboxMine**](ToolboxAPI.md#listtoolboxmine) | **GET** /v1/toolbox/mine | Your published assets: review state, reviewer note, what each earned you.
[**listToolboxSales**](ToolboxAPI.md#listtoolboxsales) | **GET** /v1/toolbox/sales | Your Toolbox sales: gross, net, your 80% share after refunds. Never who bought.
[**updateToolboxAsset**](ToolboxAPI.md#updatetoolboxasset) | **PATCH** /v1/toolbox/assets/{assetId} | Edit name, description, tags, thumbnail or price.
[**updateToolboxAssetRatingMine**](ToolboxAPI.md#updatetoolboxassetratingmine) | **PUT** /v1/toolbox/assets/{assetId}/ratings/mine | Rate an asset you bought or installed: 1–5 stars and an optional review (1000 characters). Not your own.


# **createToolboxAsset**
```swift
    open class func createToolboxAsset(completion: @escaping (_ data: ToolboxAssetResponse?, _ error: Error?) -> Void)
```

Publish an asset (place nodes). Scanned (lint, text, credits, uploads) then reviewed. Free by default; paid needs Pro and a verified identity.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Publish an asset (place nodes). Scanned (lint, text, credits, uploads) then reviewed. Free by default; paid needs Pro and a verified identity.
ToolboxAPI.createToolboxAsset() { (response, error) in
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

**ToolboxAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createToolboxAssetPurchase**
```swift
    open class func createToolboxAssetPurchase(assetId: String, completion: @escaping (_ data: GetToolboxPurchaseResponse?, _ error: Error?) -> Void)
```

Open a Crossly checkout for a paid asset. Nothing is charged here: a person pays at checkoutUrl. The author earns 80% of net; the licence is use in your own experiences.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let assetId = "assetId_example" // String | 

// Open a Crossly checkout for a paid asset. Nothing is charged here: a person pays at checkoutUrl. The author earns 80% of net; the licence is use in your own experiences.
ToolboxAPI.createToolboxAssetPurchase(assetId: assetId) { (response, error) in
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
 **assetId** | **String** |  | 

### Return type

**GetToolboxPurchaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createToolboxAssetRetire**
```swift
    open class func createToolboxAssetRetire(assetId: String, completion: @escaping (_ data: ToolboxAssetResponse?, _ error: Error?) -> Void)
```

Take an asset off the store for good. Licences already sold keep working.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let assetId = "assetId_example" // String | 

// Take an asset off the store for good. Licences already sold keep working.
ToolboxAPI.createToolboxAssetRetire(assetId: assetId) { (response, error) in
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
 **assetId** | **String** |  | 

### Return type

**ToolboxAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createToolboxAssetUse**
```swift
    open class func createToolboxAssetUse(assetId: String, completion: @escaping (_ data: CreateToolboxAssetUseResponse?, _ error: Error?) -> Void)
```

Get the asset's nodes stamped with its id for a place you can edit; insert:true also inserts them into the place's live session. Paid assets need the experience owner's licence.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let assetId = "assetId_example" // String | 

// Get the asset's nodes stamped with its id for a place you can edit; insert:true also inserts them into the place's live session. Paid assets need the experience owner's licence.
ToolboxAPI.createToolboxAssetUse(assetId: assetId) { (response, error) in
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
 **assetId** | **String** |  | 

### Return type

**CreateToolboxAssetUseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createToolboxAssetVersion**
```swift
    open class func createToolboxAssetVersion(assetId: String, completion: @escaping (_ data: ToolboxAssetResponse?, _ error: Error?) -> Void)
```

A new version (reviewed); the live one keeps serving until it is approved.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let assetId = "assetId_example" // String | 

// A new version (reviewed); the live one keeps serving until it is approved.
ToolboxAPI.createToolboxAssetVersion(assetId: assetId) { (response, error) in
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
 **assetId** | **String** |  | 

### Return type

**ToolboxAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createToolboxPurchaseRefund**
```swift
    open class func createToolboxPurchaseRefund(purchaseId: String, completion: @escaping (_ data: CreateWorldMeReceiptRefundResponse?, _ error: Error?) -> Void)
```

Refund a licence within 14 days while no published version of yours uses the asset. Ends the licence; the author's share is reversed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let purchaseId = "purchaseId_example" // String | 

// Refund a licence within 14 days while no published version of yours uses the asset. Ends the licence; the author's share is reversed.
ToolboxAPI.createToolboxPurchaseRefund(purchaseId: purchaseId) { (response, error) in
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
 **purchaseId** | **String** |  | 

### Return type

**CreateWorldMeReceiptRefundResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteToolboxAssetRatingMine**
```swift
    open class func deleteToolboxAssetRatingMine(assetId: String, completion: @escaping (_ data: DeleteSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Remove your rating of an asset.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let assetId = "assetId_example" // String | 

// Remove your rating of an asset.
ToolboxAPI.deleteToolboxAssetRatingMine(assetId: assetId) { (response, error) in
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
 **assetId** | **String** |  | 

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getToolboxAsset**
```swift
    open class func getToolboxAsset(assetId: String, completion: @escaping (_ data: GetToolboxAssetResponse?, _ error: Error?) -> Void)
```

One asset: versions, credits (assets it includes), licence, contents, your purchase.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let assetId = "assetId_example" // String | 

// One asset: versions, credits (assets it includes), licence, contents, your purchase.
ToolboxAPI.getToolboxAsset(assetId: assetId) { (response, error) in
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
 **assetId** | **String** |  | 

### Return type

**GetToolboxAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getToolboxAssetRating**
```swift
    open class func getToolboxAssetRating(assetId: String, completion: @escaping (_ data: GetToolboxAssetRatingResponse?, _ error: Error?) -> Void)
```

Ratings of an asset: average stars, breakdown, recent reviews, yours, and whether you may rate it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let assetId = "assetId_example" // String | 

// Ratings of an asset: average stars, breakdown, recent reviews, yours, and whether you may rate it.
ToolboxAPI.getToolboxAssetRating(assetId: assetId) { (response, error) in
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
 **assetId** | **String** |  | 

### Return type

**GetToolboxAssetRatingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getToolboxPurchase**
```swift
    open class func getToolboxPurchase(purchaseId: String, completion: @escaping (_ data: GetToolboxPurchaseResponse?, _ error: Error?) -> Void)
```

A purchase: status, price, tax, refundable until.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let purchaseId = "purchaseId_example" // String | 

// A purchase: status, price, tax, refundable until.
ToolboxAPI.getToolboxPurchase(purchaseId: purchaseId) { (response, error) in
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
 **purchaseId** | **String** |  | 

### Return type

**GetToolboxPurchaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listToolboxAssets**
```swift
    open class func listToolboxAssets(completion: @escaping (_ data: ListToolboxAssetsResponse?, _ error: Error?) -> Void)
```

Search the Toolbox: models, scripts, sounds, images, packages. Free and paid; `owned` says whether you may insert it now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Search the Toolbox: models, scripts, sounds, images, packages. Free and paid; `owned` says whether you may insert it now.
ToolboxAPI.listToolboxAssets() { (response, error) in
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

**ListToolboxAssetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listToolboxLibrary**
```swift
    open class func listToolboxLibrary(completion: @escaping (_ data: ListToolboxLibraryResponse?, _ error: Error?) -> Void)
```

Assets you may insert: licences you bought, your own, free ones you used.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Assets you may insert: licences you bought, your own, free ones you used.
ToolboxAPI.listToolboxLibrary() { (response, error) in
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

**ListToolboxLibraryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listToolboxMine**
```swift
    open class func listToolboxMine(completion: @escaping (_ data: ListToolboxMineResponse?, _ error: Error?) -> Void)
```

Your published assets: review state, reviewer note, what each earned you.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your published assets: review state, reviewer note, what each earned you.
ToolboxAPI.listToolboxMine() { (response, error) in
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

**ListToolboxMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listToolboxSales**
```swift
    open class func listToolboxSales(completion: @escaping (_ data: ListToolboxSalesResponse?, _ error: Error?) -> Void)
```

Your Toolbox sales: gross, net, your 80% share after refunds. Never who bought.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Toolbox sales: gross, net, your 80% share after refunds. Never who bought.
ToolboxAPI.listToolboxSales() { (response, error) in
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

**ListToolboxSalesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateToolboxAsset**
```swift
    open class func updateToolboxAsset(assetId: String, completion: @escaping (_ data: ToolboxAssetResponse?, _ error: Error?) -> Void)
```

Edit name, description, tags, thumbnail or price.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let assetId = "assetId_example" // String | 

// Edit name, description, tags, thumbnail or price.
ToolboxAPI.updateToolboxAsset(assetId: assetId) { (response, error) in
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
 **assetId** | **String** |  | 

### Return type

**ToolboxAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateToolboxAssetRatingMine**
```swift
    open class func updateToolboxAssetRatingMine(assetId: String, completion: @escaping (_ data: UpdateToolboxAssetRatingMineResponse?, _ error: Error?) -> Void)
```

Rate an asset you bought or installed: 1–5 stars and an optional review (1000 characters). Not your own.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let assetId = "assetId_example" // String | 

// Rate an asset you bought or installed: 1–5 stars and an optional review (1000 characters). Not your own.
ToolboxAPI.updateToolboxAssetRatingMine(assetId: assetId) { (response, error) in
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
 **assetId** | **String** |  | 

### Return type

**UpdateToolboxAssetRatingMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

