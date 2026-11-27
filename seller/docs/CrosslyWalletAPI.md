# CrosslyWalletAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTcgNftReconcile**](CrosslyWalletAPI.md#createtcgnftreconcile) | **POST** /v1/tcg/nfts/reconcile | Re-read your wallets on chain so your card counts follow what you hold (cards you moved away leave; cards you received join).
[**createWalletCrossly**](CrosslyWalletAPI.md#createwalletcrossly) | **POST** /v1/wallet/crossly | Create your Crossly wallet now (it is otherwise created for you in the background). Idempotent.
[**getWalletCrossly**](CrosslyWalletAPI.md#getwalletcrossly) | **GET** /v1/wallet/crossly | Your Crossly wallet (self-custody Solana): status, address, whether it is configured, and your card NFT counts by status.
[**listTcgNfts**](CrosslyWalletAPI.md#listtcgnfts) | **GET** /v1/tcg/{game}/nfts | Your card NFTs for a Crossly TCG game: each copy, its mint status, asset id and whether it is soulbound (starter).


# **createTcgNftReconcile**
```swift
    open class func createTcgNftReconcile(completion: @escaping (_ data: CreateTcgNftReconcileResponse?, _ error: Error?) -> Void)
```

Re-read your wallets on chain so your card counts follow what you hold (cards you moved away leave; cards you received join).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Re-read your wallets on chain so your card counts follow what you hold (cards you moved away leave; cards you received join).
CrosslyWalletAPI.createTcgNftReconcile() { (response, error) in
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

**CreateTcgNftReconcileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWalletCrossly**
```swift
    open class func createWalletCrossly(completion: @escaping (_ data: GetWalletCrosslyResponse?, _ error: Error?) -> Void)
```

Create your Crossly wallet now (it is otherwise created for you in the background). Idempotent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create your Crossly wallet now (it is otherwise created for you in the background). Idempotent.
CrosslyWalletAPI.createWalletCrossly() { (response, error) in
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

**GetWalletCrosslyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWalletCrossly**
```swift
    open class func getWalletCrossly(completion: @escaping (_ data: GetWalletCrosslyResponse?, _ error: Error?) -> Void)
```

Your Crossly wallet (self-custody Solana): status, address, whether it is configured, and your card NFT counts by status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Crossly wallet (self-custody Solana): status, address, whether it is configured, and your card NFT counts by status.
CrosslyWalletAPI.getWalletCrossly() { (response, error) in
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

**GetWalletCrosslyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listTcgNfts**
```swift
    open class func listTcgNfts(game: String, completion: @escaping (_ data: ListTcgNftsResponse?, _ error: Error?) -> Void)
```

Your card NFTs for a Crossly TCG game: each copy, its mint status, asset id and whether it is soulbound (starter).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Your card NFTs for a Crossly TCG game: each copy, its mint status, asset id and whether it is soulbound (starter).
CrosslyWalletAPI.listTcgNfts(game: game) { (response, error) in
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
 **game** | **String** |  | 

### Return type

**ListTcgNftsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

