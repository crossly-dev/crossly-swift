# PayoutAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPayoutConnectOnboard**](PayoutAPI.md#createpayoutconnectonboard) | **POST** /v1/payout/connect/onboard | Start or resume payout-account onboarding; returns a Stripe-hosted URL.
[**getPayoutConnect**](PayoutAPI.md#getpayoutconnect) | **GET** /v1/payout/connect | Your Stripe payout account: status, country, agreement and payout currency.
[**getPayoutEstimate**](PayoutAPI.md#getpayoutestimate) | **GET** /v1/payout/estimate | What one platform nets at a given price, after fees and shipping.
[**getPayoutGrossForNet**](PayoutAPI.md#getpayoutgrossfornet) | **GET** /v1/payout/gross-for-net | The gross price needed to clear a target net on one platform.
[**listPayoutCompare**](PayoutAPI.md#listpayoutcompare) | **GET** /v1/payout/compare | Rank platforms by what they net at a given price. Defaults to connected ones.


# **createPayoutConnectOnboard**
```swift
    open class func createPayoutConnectOnboard(createPayoutConnectOnboardRequest: CreatePayoutConnectOnboardRequest, completion: @escaping (_ data: CreatePayoutConnectOnboardResponse?, _ error: Error?) -> Void)
```

Start or resume payout-account onboarding; returns a Stripe-hosted URL.

country (ISO 3166-1 alpha-2) defaults to the storefront ship-from country, then US. Fixed once the account exists. Nothing is set up until a person completes the link.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createPayoutConnectOnboardRequest = CreatePayoutConnectOnboardRequest(country: "country_example") // CreatePayoutConnectOnboardRequest | 

// Start or resume payout-account onboarding; returns a Stripe-hosted URL.
PayoutAPI.createPayoutConnectOnboard(createPayoutConnectOnboardRequest: createPayoutConnectOnboardRequest) { (response, error) in
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
 **createPayoutConnectOnboardRequest** | **CreatePayoutConnectOnboardRequest** |  | 

### Return type

**CreatePayoutConnectOnboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPayoutConnect**
```swift
    open class func getPayoutConnect(completion: @escaping (_ data: GetPayoutConnectResponse?, _ error: Error?) -> Void)
```

Your Stripe payout account: status, country, agreement and payout currency.

status is not_started (with defaultCountry), pending, active, restricted or payouts_unavailable. Only active can be paid; payouts_unavailable means Stripe offers no payout path to the account's country yet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Stripe payout account: status, country, agreement and payout currency.
PayoutAPI.getPayoutConnect() { (response, error) in
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

**GetPayoutConnectResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPayoutEstimate**
```swift
    open class func getPayoutEstimate(completion: @escaping (_ data: GetPayoutEstimateResponse?, _ error: Error?) -> Void)
```

What one platform nets at a given price, after fees and shipping.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What one platform nets at a given price, after fees and shipping.
PayoutAPI.getPayoutEstimate() { (response, error) in
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

**GetPayoutEstimateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPayoutGrossForNet**
```swift
    open class func getPayoutGrossForNet(completion: @escaping (_ data: GetPayoutGrossForNetResponse?, _ error: Error?) -> Void)
```

The gross price needed to clear a target net on one platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The gross price needed to clear a target net on one platform.
PayoutAPI.getPayoutGrossForNet() { (response, error) in
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

**GetPayoutGrossForNetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listPayoutCompare**
```swift
    open class func listPayoutCompare(completion: @escaping (_ data: ListPayoutCompareResponse?, _ error: Error?) -> Void)
```

Rank platforms by what they net at a given price. Defaults to connected ones.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Rank platforms by what they net at a given price. Defaults to connected ones.
PayoutAPI.listPayoutCompare() { (response, error) in
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

**ListPayoutCompareResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

