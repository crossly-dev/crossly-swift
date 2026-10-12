# TradeBlockAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTradeBlockEvolutionClaim**](TradeBlockAPI.md#createtradeblockevolutionclaim) | **POST** /v1/trade-block/evolutions/{id}/claim | Burn COSM and mint the evolved (or set-master) NFT for one of your unlocks.
[**createTradeBlockEvolutionRecipe**](TradeBlockAPI.md#createtradeblockevolutionrecipe) | **POST** /v1/trade-block/evolution-recipes | Author a Trade Evolution recipe (a graded item or pair that, when swapped, unlocks a cosmetic you designed). Born unreviewed until ops approves.
[**createTradeBlockOfferRespond**](TradeBlockAPI.md#createtradeblockofferrespond) | **POST** /v1/trade-block/offers/{id}/respond | Accept, decline, counter, or withdraw a Trade Block offer.
[**createTradeBlockPostClose**](TradeBlockAPI.md#createtradeblockpostclose) | **POST** /v1/trade-block/posts/{id}/close | Close one of your posts so it stops taking offers.
[**createTradeBlockPostOffer**](TradeBlockAPI.md#createtradeblockpostoffer) | **POST** /v1/trade-block/posts/{id}/offers | Respond to a post with a concrete swap: items on each side (0..N), optional cash.
[**createTradeBlockSetRecipe**](TradeBlockAPI.md#createtradeblocksetrecipe) | **POST** /v1/trade-block/set-recipes | Author a set-completion recipe (a set of items that, once assembled through trading, unlocks a set-master cosmetic you designed). Born unreviewed until ops approves.
[**getTradeBlockEvolution**](TradeBlockAPI.md#gettradeblockevolution) | **GET** /v1/trade-block/evolutions | List your Trade Evolution unlocks — completed swaps that unlocked an evolved or set-master NFT you can mint by burning COSM.
[**getTradeBlockPost**](TradeBlockAPI.md#gettradeblockpost) | **GET** /v1/trade-block/posts | Browse open Trade Block posts (wants + offers) on the Crossly Market.
[**getTradeBlockPostById**](TradeBlockAPI.md#gettradeblockpostbyid) | **GET** /v1/trade-block/posts/{id} | Get one Trade Block post with its items and open-offer count.
[**getTradeBlockTrade**](TradeBlockAPI.md#gettradeblocktrade) | **GET** /v1/trade-block/trades | List the trades you are a party to, newest first.


# **createTradeBlockEvolutionClaim**
```swift
    open class func createTradeBlockEvolutionClaim(id: String, completion: @escaping (_ data: CreateTradeBlockEvolutionClaimResponse?, _ error: Error?) -> Void)
```

Burn COSM and mint the evolved (or set-master) NFT for one of your unlocks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Burn COSM and mint the evolved (or set-master) NFT for one of your unlocks.
TradeBlockAPI.createTradeBlockEvolutionClaim(id: id) { (response, error) in
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

**CreateTradeBlockEvolutionClaimResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTradeBlockEvolutionRecipe**
```swift
    open class func createTradeBlockEvolutionRecipe(completion: @escaping (_ data: CreateTradeBlockEvolutionRecipeResponse?, _ error: Error?) -> Void)
```

Author a Trade Evolution recipe (a graded item or pair that, when swapped, unlocks a cosmetic you designed). Born unreviewed until ops approves.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Author a Trade Evolution recipe (a graded item or pair that, when swapped, unlocks a cosmetic you designed). Born unreviewed until ops approves.
TradeBlockAPI.createTradeBlockEvolutionRecipe() { (response, error) in
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

**CreateTradeBlockEvolutionRecipeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTradeBlockOfferRespond**
```swift
    open class func createTradeBlockOfferRespond(id: String, completion: @escaping (_ data: CreateTradeBlockOfferRespondResponse?, _ error: Error?) -> Void)
```

Accept, decline, counter, or withdraw a Trade Block offer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Accept, decline, counter, or withdraw a Trade Block offer.
TradeBlockAPI.createTradeBlockOfferRespond(id: id) { (response, error) in
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

**CreateTradeBlockOfferRespondResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTradeBlockPostClose**
```swift
    open class func createTradeBlockPostClose(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Close one of your posts so it stops taking offers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Close one of your posts so it stops taking offers.
TradeBlockAPI.createTradeBlockPostClose(id: id) { (response, error) in
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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTradeBlockPostOffer**
```swift
    open class func createTradeBlockPostOffer(id: String, completion: @escaping (_ data: IdResponse?, _ error: Error?) -> Void)
```

Respond to a post with a concrete swap: items on each side (0..N), optional cash.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Respond to a post with a concrete swap: items on each side (0..N), optional cash.
TradeBlockAPI.createTradeBlockPostOffer(id: id) { (response, error) in
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

**IdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTradeBlockSetRecipe**
```swift
    open class func createTradeBlockSetRecipe(completion: @escaping (_ data: CreateTradeBlockSetRecipeResponse?, _ error: Error?) -> Void)
```

Author a set-completion recipe (a set of items that, once assembled through trading, unlocks a set-master cosmetic you designed). Born unreviewed until ops approves.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Author a set-completion recipe (a set of items that, once assembled through trading, unlocks a set-master cosmetic you designed). Born unreviewed until ops approves.
TradeBlockAPI.createTradeBlockSetRecipe() { (response, error) in
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

**CreateTradeBlockSetRecipeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTradeBlockEvolution**
```swift
    open class func getTradeBlockEvolution(completion: @escaping (_ data: GetTradeBlockEvolutionResponse?, _ error: Error?) -> Void)
```

List your Trade Evolution unlocks — completed swaps that unlocked an evolved or set-master NFT you can mint by burning COSM.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List your Trade Evolution unlocks — completed swaps that unlocked an evolved or set-master NFT you can mint by burning COSM.
TradeBlockAPI.getTradeBlockEvolution() { (response, error) in
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

**GetTradeBlockEvolutionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTradeBlockPost**
```swift
    open class func getTradeBlockPost(kind: Kind_getTradeBlockPost? = nil, categorySlug: String? = nil, brand: String? = nil, model: String? = nil, q: String? = nil, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: GetTradeBlockPostResponse?, _ error: Error?) -> Void)
```

Browse open Trade Block posts (wants + offers) on the Crossly Market.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let kind = "kind_example" // String | Filter to wants or offers. (optional)
let categorySlug = "categorySlug_example" // String | Filter to a market category. (optional)
let brand = "brand_example" // String | Filter to posts with a product of this brand (case-insensitive). (optional)
let model = "model_example" // String | Filter to posts with a product of this catalogue model (case-insensitive). (optional)
let q = "q_example" // String | Search title + want text. (optional)
let limit = 987 // Int |  (optional) (default to 40)
let offset = 987 // Int |  (optional) (default to 0)

// Browse open Trade Block posts (wants + offers) on the Crossly Market.
TradeBlockAPI.getTradeBlockPost(kind: kind, categorySlug: categorySlug, brand: brand, model: model, q: q, limit: limit, offset: offset) { (response, error) in
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
 **kind** | **String** | Filter to wants or offers. | [optional] 
 **categorySlug** | **String** | Filter to a market category. | [optional] 
 **brand** | **String** | Filter to posts with a product of this brand (case-insensitive). | [optional] 
 **model** | **String** | Filter to posts with a product of this catalogue model (case-insensitive). | [optional] 
 **q** | **String** | Search title + want text. | [optional] 
 **limit** | **Int** |  | [optional] [default to 40]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

**GetTradeBlockPostResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTradeBlockPostById**
```swift
    open class func getTradeBlockPostById(id: String, completion: @escaping (_ data: GetTradeBlockPostByIdResponse?, _ error: Error?) -> Void)
```

Get one Trade Block post with its items and open-offer count.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Get one Trade Block post with its items and open-offer count.
TradeBlockAPI.getTradeBlockPostById(id: id) { (response, error) in
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

**GetTradeBlockPostByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTradeBlockTrade**
```swift
    open class func getTradeBlockTrade(completion: @escaping (_ data: GetTradeBlockTradeResponse?, _ error: Error?) -> Void)
```

List the trades you are a party to, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List the trades you are a party to, newest first.
TradeBlockAPI.getTradeBlockTrade() { (response, error) in
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

**GetTradeBlockTradeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

