# DefaultAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCosmDesignerChainAutoUnlock**](DefaultAPI.md#createcosmdesignerchainautounlock) | **POST** /v1/cosm/designer/chain-auto-unlock | 
[**createCosmDesignerChainUnlock**](DefaultAPI.md#createcosmdesignerchainunlock) | **POST** /v1/cosm/designer/chain-unlock | 
[**createCosmDesignerMaterialise**](DefaultAPI.md#createcosmdesignermaterialise) | **POST** /v1/cosm/designer/materialise | 
[**createCosmDesignerMaterialiseConfirm**](DefaultAPI.md#createcosmdesignermaterialiseconfirm) | **POST** /v1/cosm/designer/materialise/confirm | 
[**createCosmDesignerMaterialiseRelease**](DefaultAPI.md#createcosmdesignermaterialiserelease) | **POST** /v1/cosm/designer/materialise/release | 
[**createCosmDesignerSubmitForReview**](DefaultAPI.md#createcosmdesignersubmitforreview) | **POST** /v1/cosm/designer/submit-for-review | 
[**createCosmDesignerTerm**](DefaultAPI.md#createcosmdesignerterm) | **POST** /v1/cosm/designer/terms | 
[**getCosmDesignerCopyState**](DefaultAPI.md#getcosmdesignercopystate) | **GET** /v1/cosm/designer/copy-state | 
[**getCosmDesignerEarning**](DefaultAPI.md#getcosmdesignerearning) | **GET** /v1/cosm/designer/earnings | 
[**getCosmDesignerTerm**](DefaultAPI.md#getcosmdesignerterm) | **GET** /v1/cosm/designer/terms | 
[**getListingVariationGroup**](DefaultAPI.md#getlistingvariationgroup) | **GET** /v1/listings/{id}/variation-group | 
[**getMarketMetalSpotHistory**](DefaultAPI.md#getmarketmetalspothistory) | **GET** /v1/market/metals/spot/history | 
[**getMarketProduct**](DefaultAPI.md#getmarketproduct) | **GET** /v1/market/products/{id} | 
[**getMarketProductRelated**](DefaultAPI.md#getmarketproductrelated) | **GET** /v1/market/products/{id}/related | 
[**getMarketScrapQuote**](DefaultAPI.md#getmarketscrapquote) | **GET** /v1/market/scrap/quote | 
[**getMarketVariantBook**](DefaultAPI.md#getmarketvariantbook) | **GET** /v1/market/variants/{id}/book | 
[**getVariationGroup**](DefaultAPI.md#getvariationgroup) | **GET** /v1/variation-groups/{id} | 
[**getVariationGroupPublishPlan**](DefaultAPI.md#getvariationgrouppublishplan) | **GET** /v1/variation-groups/{id}/publish-plan | 
[**listMarketBullion**](DefaultAPI.md#listmarketbullion) | **GET** /v1/market/bullion | 
[**listMarketGraders**](DefaultAPI.md#listmarketgraders) | **GET** /v1/market/graders | 
[**listMarketMetalSpot**](DefaultAPI.md#listmarketmetalspot) | **GET** /v1/market/metals/spot | 
[**listMarketProducts**](DefaultAPI.md#listmarketproducts) | **GET** /v1/market/products | 
[**listMarketVariantTiers**](DefaultAPI.md#listmarketvarianttiers) | **GET** /v1/market/variants/{id}/tiers | 
[**listVariationGroups**](DefaultAPI.md#listvariationgroups) | **GET** /v1/variation-groups | 


# **createCosmDesignerChainAutoUnlock**
```swift
    open class func createCosmDesignerChainAutoUnlock(requestBody: [String: AnyCodable], completion: @escaping (_ data: CreateCosmDesignerChainAutoUnlockResponse?, _ error: Error?) -> Void)
```



Opt a design in or out of the free chain unlock a popular limited design earns (on by default). Designer-only. Answers the popularity of the design toward the bar.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let requestBody = "TODO" // [String: AnyCodable] | 

DefaultAPI.createCosmDesignerChainAutoUnlock(requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**CreateCosmDesignerChainAutoUnlockResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCosmDesignerChainUnlock**
```swift
    open class func createCosmDesignerChainUnlock(requestBody: [String: AnyCodable], completion: @escaping (_ data: CreateCosmDesignerChainUnlockResponse?, _ error: Error?) -> Void)
```



Burn COSM to make a design mintable on chain. Designer-only and idempotent: paying twice is impossible, and a second call returns the existing unlock without charging. The fee is DESTROYED rather than collected. Limited editions only. Once unlocked, any holder may take their own copy on chain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let requestBody = "TODO" // [String: AnyCodable] | 

DefaultAPI.createCosmDesignerChainUnlock(requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**CreateCosmDesignerChainUnlockResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCosmDesignerMaterialise**
```swift
    open class func createCosmDesignerMaterialise(requestBody: [String: AnyCodable], completion: @escaping (_ data: CreateCosmDesignerMaterialiseResponse?, _ error: Error?) -> Void)
```



Lock a copy and return an UNSIGNED Metaplex Core mint for the holder to sign. One call: it resolves the designer royalty, locks the copy, publishes immutable content-addressed metadata and builds the transaction — so a lock is never taken without a transaction to go with it, and a failure after the lock releases it. Does NOT void the copy; call confirm once the chain reaches FINALIZED commitment. Every royalty recipient needs a connected wallet first, and the designer must have unlocked the design.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let requestBody = "TODO" // [String: AnyCodable] | 

DefaultAPI.createCosmDesignerMaterialise(requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**CreateCosmDesignerMaterialiseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCosmDesignerMaterialiseConfirm**
```swift
    open class func createCosmDesignerMaterialiseConfirm(requestBody: [String: AnyCodable], completion: @escaping (_ data: CreateCosmDesignerMaterialiseConfirmResponse?, _ error: Error?) -> Void)
```



Record a confirmed mint and void the in-world copy, in one transaction. The caller MUST have verified the transaction at finalized commitment first — an NFT recorded against a transaction that never landed cannot be recalled, and the copy it voided is gone. Idempotent on an already-confirmed request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let requestBody = "TODO" // [String: AnyCodable] | 

DefaultAPI.createCosmDesignerMaterialiseConfirm(requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**CreateCosmDesignerMaterialiseConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCosmDesignerMaterialiseRelease**
```swift
    open class func createCosmDesignerMaterialiseRelease(requestBody: [String: AnyCodable], completion: @escaping (_ data: CreateWorldJobShiftReleaseResponse?, _ error: Error?) -> Void)
```



Release a mint lock that was never signed. The ordinary outcome of somebody closing a wallet prompt, and it leaves the copy exactly as it was. Refuses a request that has already minted, because releasing one would unlock a copy that is on chain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let requestBody = "TODO" // [String: AnyCodable] | 

DefaultAPI.createCosmDesignerMaterialiseRelease(requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**CreateWorldJobShiftReleaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCosmDesignerSubmitForReview**
```swift
    open class func createCosmDesignerSubmitForReview(requestBody: [String: AnyCodable], completion: @escaping (_ data: CreateCosmDesignerSubmitForReviewResponse?, _ error: Error?) -> Void)
```



Submit a user-authored design for moderation. Designer-only, and refuses a design with no preview image HERE rather than at approval so the designer learns what is missing while they can still fix it. Submitting twice returns the existing pending review instead of queueing a second one — a moderator facing two reviews of one piece does not know which they are deciding. A design already on sale is refused.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let requestBody = "TODO" // [String: AnyCodable] | 

DefaultAPI.createCosmDesignerSubmitForReview(requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**CreateCosmDesignerSubmitForReviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCosmDesignerTerm**
```swift
    open class func createCosmDesignerTerm(requestBody: [String: AnyCodable], completion: @escaping (_ data: CreateCosmDesignerTermResponse?, _ error: Error?) -> Void)
```



Publish terms for a design. Never edits: every change is a new version, and a copy sold under an earlier one keeps those terms forever. Only the designer may call it. Collaborator shares are of the ROYALTY rather than the sale price and may total at most 100%, with the remainder staying with the designer; a total above 100% is refused rather than scaled down.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let requestBody = "TODO" // [String: AnyCodable] | 

DefaultAPI.createCosmDesignerTerm(requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**CreateCosmDesignerTermResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCosmDesignerCopyState**
```swift
    open class func getCosmDesignerCopyState(ownershipId: UUID, completion: @escaping (_ data: GetCosmDesignerCopyStateResponse?, _ error: Error?) -> Void)
```



Where a copy currently is: held (in-world, wearable, listable for COSM), minting (locked while a mint is in flight) or materialised (an NFT in the holder wallet). A copy is in exactly one of these, never two.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let ownershipId = 987 // UUID | 

DefaultAPI.getCosmDesignerCopyState(ownershipId: ownershipId) { (response, error) in
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
 **ownershipId** | **UUID** |  | 

### Return type

**GetCosmDesignerCopyStateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCosmDesignerEarning**
```swift
    open class func getCosmDesignerEarning(subjectId: UUID, completion: @escaping (_ data: GetCosmDesignerEarningResponse?, _ error: Error?) -> Void)
```



What a designer has earned, in both denominations. COSM royalties come from COSM-priced sales; cash earnings come from cash-priced sales and are funded by the buyer payment itself. The two are never converted into one another, and COSM is never cashed out.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let subjectId = 987 // UUID | 

DefaultAPI.getCosmDesignerEarning(subjectId: subjectId) { (response, error) in
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
 **subjectId** | **UUID** |  | 

### Return type

**GetCosmDesignerEarningResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCosmDesignerTerm**
```swift
    open class func getCosmDesignerTerm(cosmeticId: UUID, completion: @escaping (_ data: GetCosmDesignerTermResponse?, _ error: Error?) -> Void)
```



The published terms for a design: resale, price window, secondary royalty and collaborator splits. Also reports the platform rates a designer does not control, and whether the terms are enforceable on chain — inside Crossly every rule is enforced, but a third-party marketplace honours a royalty voluntarily at best.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let cosmeticId = 987 // UUID | 

DefaultAPI.getCosmDesignerTerm(cosmeticId: cosmeticId) { (response, error) in
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
 **cosmeticId** | **UUID** |  | 

### Return type

**GetCosmDesignerTermResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getListingVariationGroup**
```swift
    open class func getListingVariationGroup(id: String, completion: @escaping (_ data: GetListingVariationGroupResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

DefaultAPI.getListingVariationGroup(id: id) { (response, error) in
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

**GetListingVariationGroupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getMarketMetalSpotHistory**
```swift
    open class func getMarketMetalSpotHistory(completion: @escaping (_ data: GetMarketMetalSpotHistoryResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


DefaultAPI.getMarketMetalSpotHistory() { (response, error) in
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

**GetMarketMetalSpotHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getMarketProduct**
```swift
    open class func getMarketProduct(id: String, completion: @escaping (_ data: GetMarketProductResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

DefaultAPI.getMarketProduct(id: id) { (response, error) in
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

**GetMarketProductResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getMarketProductRelated**
```swift
    open class func getMarketProductRelated(id: String, completion: @escaping (_ data: GetMarketProductRelatedResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

DefaultAPI.getMarketProductRelated(id: id) { (response, error) in
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

**GetMarketProductRelatedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getMarketScrapQuote**
```swift
    open class func getMarketScrapQuote(completion: @escaping (_ data: GetMarketScrapQuoteResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


DefaultAPI.getMarketScrapQuote() { (response, error) in
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

**GetMarketScrapQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getMarketVariantBook**
```swift
    open class func getMarketVariantBook(id: String, completion: @escaping (_ data: GetMarketVariantBookResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

DefaultAPI.getMarketVariantBook(id: id) { (response, error) in
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

**GetMarketVariantBookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVariationGroup**
```swift
    open class func getVariationGroup(id: String, completion: @escaping (_ data: ListVariationGroupsItem?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

DefaultAPI.getVariationGroup(id: id) { (response, error) in
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

**ListVariationGroupsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVariationGroupPublishPlan**
```swift
    open class func getVariationGroupPublishPlan(id: String, completion: @escaping (_ data: GetVariationGroupPublishPlanResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

DefaultAPI.getVariationGroupPublishPlan(id: id) { (response, error) in
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

**GetVariationGroupPublishPlanResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listMarketBullion**
```swift
    open class func listMarketBullion(completion: @escaping (_ data: ListMarketBullionResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


DefaultAPI.listMarketBullion() { (response, error) in
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

**ListMarketBullionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listMarketGraders**
```swift
    open class func listMarketGraders(completion: @escaping (_ data: ListMarketGradersResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


DefaultAPI.listMarketGraders() { (response, error) in
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

**ListMarketGradersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listMarketMetalSpot**
```swift
    open class func listMarketMetalSpot(completion: @escaping (_ data: ListMarketMetalSpotResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


DefaultAPI.listMarketMetalSpot() { (response, error) in
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

**ListMarketMetalSpotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listMarketProducts**
```swift
    open class func listMarketProducts(completion: @escaping (_ data: ListMarketProductsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


DefaultAPI.listMarketProducts() { (response, error) in
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

**ListMarketProductsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listMarketVariantTiers**
```swift
    open class func listMarketVariantTiers(id: String, completion: @escaping (_ data: ListMarketVariantTiersResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

DefaultAPI.listMarketVariantTiers(id: id) { (response, error) in
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

**ListMarketVariantTiersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVariationGroups**
```swift
    open class func listVariationGroups(completion: @escaping (_ data: ListVariationGroupsResponse?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


DefaultAPI.listVariationGroups() { (response, error) in
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

**ListVariationGroupsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

