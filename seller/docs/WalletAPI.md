# WalletAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteWalletDefault**](WalletAPI.md#deletewalletdefault) | **DELETE** /v1/wallet/defaults | Clear a default (the purpose falls back to your only wallet, or none) or one override (&#x60;refKind&#x60; + &#x60;refKey&#x60;).
[**listWalletDefaults**](WalletAPI.md#listwalletdefaults) | **GET** /v1/wallet/defaults | Your default wallet per purpose (royalties, deploys, drops, game rewards, staking, CBX withdrawals), with per-collection and per-game overrides and what each resolves to today.
[**updateWalletDefault**](WalletAPI.md#updatewalletdefault) | **PUT** /v1/wallet/defaults | Set the default wallet for a purpose, or an override for one collection (&#x60;ref: { kind: \&quot;collection\&quot;, chain, contract }&#x60;) or game (&#x60;ref: { kind: \&quot;game\&quot;, experienceId }&#x60;). The wallet must be yours, verified, and on a network the purpose accepts.


# **deleteWalletDefault**
```swift
    open class func deleteWalletDefault(completion: @escaping (_ data: WalletResponse?, _ error: Error?) -> Void)
```

Clear a default (the purpose falls back to your only wallet, or none) or one override (`refKind` + `refKey`).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Clear a default (the purpose falls back to your only wallet, or none) or one override (`refKind` + `refKey`).
WalletAPI.deleteWalletDefault() { (response, error) in
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

**WalletResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWalletDefaults**
```swift
    open class func listWalletDefaults(completion: @escaping (_ data: WalletResponse?, _ error: Error?) -> Void)
```

Your default wallet per purpose (royalties, deploys, drops, game rewards, staking, CBX withdrawals), with per-collection and per-game overrides and what each resolves to today.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your default wallet per purpose (royalties, deploys, drops, game rewards, staking, CBX withdrawals), with per-collection and per-game overrides and what each resolves to today.
WalletAPI.listWalletDefaults() { (response, error) in
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

**WalletResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWalletDefault**
```swift
    open class func updateWalletDefault(completion: @escaping (_ data: WalletResponse?, _ error: Error?) -> Void)
```

Set the default wallet for a purpose, or an override for one collection (`ref: { kind: \"collection\", chain, contract }`) or game (`ref: { kind: \"game\", experienceId }`). The wallet must be yours, verified, and on a network the purpose accepts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set the default wallet for a purpose, or an override for one collection (`ref: { kind: \"collection\", chain, contract }`) or game (`ref: { kind: \"game\", experienceId }`). The wallet must be yours, verified, and on a network the purpose accepts.
WalletAPI.updateWalletDefault() { (response, error) in
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

**WalletResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

