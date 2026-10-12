# NFTMarketAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNftMarketExternalResale**](NFTMarketAPI.md#createnftmarketexternalresale) | **POST** /v1/nft-market/external-resale | Ops: record a Crossly NFT resold on ANY marketplace — maps mint → design and funds the pot. Admin PAT only.
[**createNftMarketListing**](NFTMarketAPI.md#createnftmarketlisting) | **POST** /v1/nft-market/listings | List an NFT you own for resale on the Crossly marketplace.
[**createNftMarketListingCancel**](NFTMarketAPI.md#createnftmarketlistingcancel) | **POST** /v1/nft-market/listings/{id}/cancel | Cancel one of your open NFT listings.
[**createNftMarketListingConfirmSale**](NFTMarketAPI.md#createnftmarketlistingconfirmsale) | **POST** /v1/nft-market/listings/{id}/confirm-sale | Ops: record a finalized on-Crossly NFT sale (verifies the royalty landed, funds the pot). Admin PAT only.
[**getNftMarketListing**](NFTMarketAPI.md#getnftmarketlisting) | **GET** /v1/nft-market/listings | Browse open on-platform NFT listings (Crossly cosmetics for resale in CBX/SOL).


# **createNftMarketExternalResale**
```swift
    open class func createNftMarketExternalResale(completion: @escaping (_ data: CreateNftMarketExternalResaleResponse?, _ error: Error?) -> Void)
```

Ops: record a Crossly NFT resold on ANY marketplace — maps mint → design and funds the pot. Admin PAT only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Ops: record a Crossly NFT resold on ANY marketplace — maps mint → design and funds the pot. Admin PAT only.
NFTMarketAPI.createNftMarketExternalResale() { (response, error) in
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

**CreateNftMarketExternalResaleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createNftMarketListing**
```swift
    open class func createNftMarketListing(completion: @escaping (_ data: CreateNftMarketListingResponse?, _ error: Error?) -> Void)
```

List an NFT you own for resale on the Crossly marketplace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List an NFT you own for resale on the Crossly marketplace.
NFTMarketAPI.createNftMarketListing() { (response, error) in
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

**CreateNftMarketListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createNftMarketListingCancel**
```swift
    open class func createNftMarketListingCancel(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Cancel one of your open NFT listings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel one of your open NFT listings.
NFTMarketAPI.createNftMarketListingCancel(id: id) { (response, error) in
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

# **createNftMarketListingConfirmSale**
```swift
    open class func createNftMarketListingConfirmSale(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Ops: record a finalized on-Crossly NFT sale (verifies the royalty landed, funds the pot). Admin PAT only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Ops: record a finalized on-Crossly NFT sale (verifies the royalty landed, funds the pot). Admin PAT only.
NFTMarketAPI.createNftMarketListingConfirmSale(id: id) { (response, error) in
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

# **getNftMarketListing**
```swift
    open class func getNftMarketListing(completion: @escaping (_ data: GetNftMarketListingResponse?, _ error: Error?) -> Void)
```

Browse open on-platform NFT listings (Crossly cosmetics for resale in CBX/SOL).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Browse open on-platform NFT listings (Crossly cosmetics for resale in CBX/SOL).
NFTMarketAPI.getNftMarketListing() { (response, error) in
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

**GetNftMarketListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

