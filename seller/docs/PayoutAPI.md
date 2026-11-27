# PayoutAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPayoutConnectOnboard**](PayoutAPI.md#createpayoutconnectonboard) | **POST** /v1/payout/connect/onboard | Start or resume payout-account onboarding; returns a Stripe-hosted URL.
[**createPayoutIdentityLink**](PayoutAPI.md#createpayoutidentitylink) | **POST** /v1/payouts/identity/link | Continue with Stripe: a one-time Stripe-hosted link that collects what Stripe needs.
[**createPayoutPayout**](PayoutAPI.md#createpayoutpayout) | **POST** /v1/payout/payouts | Pay out now: instant (fee, minutes, to an eligible card/bank) or standard (free, manual schedule only).
[**getPayoutConnect**](PayoutAPI.md#getpayoutconnect) | **GET** /v1/payout/connect | Your Stripe payout account: status, country, agreement and payout currency.
[**getPayoutEstimate**](PayoutAPI.md#getpayoutestimate) | **GET** /v1/payout/estimate | What one platform nets at a given price, after fees and shipping.
[**getPayoutGrossForNet**](PayoutAPI.md#getpayoutgrossfornet) | **GET** /v1/payout/gross-for-net | The gross price needed to clear a target net on one platform.
[**getPayoutIdentity**](PayoutAPI.md#getpayoutidentity) | **GET** /v1/payouts/identity | Stripe&#39;s verification of your payout account: status and what Stripe still needs, in plain words.
[**getPayoutWallet**](PayoutAPI.md#getpayoutwallet) | **GET** /v1/payout/wallet | Your payout wallet: balances, schedule, next payout, instant-payout quote, methods, payouts, transactions.
[**listPayoutCompare**](PayoutAPI.md#listpayoutcompare) | **GET** /v1/payout/compare | Rank platforms by what they net at a given price. Defaults to connected ones.
[**updatePayoutSchedule**](PayoutAPI.md#updatepayoutschedule) | **PUT** /v1/payout/schedule | Change the automatic payout schedule.


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

# **createPayoutIdentityLink**
```swift
    open class func createPayoutIdentityLink(createPayoutConnectOnboardRequest: CreatePayoutConnectOnboardRequest, completion: @escaping (_ data: CreatePayoutIdentityLinkResponse?, _ error: Error?) -> Void)
```

Continue with Stripe: a one-time Stripe-hosted link that collects what Stripe needs.

Creates the payout account first when there is none (country: ISO alpha-2, default the ship-from country). type is account_onboarding (Stripe shows only what is outstanding) or account_update. The link expires in minutes; ask for a new one rather than storing it. Nothing changes until a person completes it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createPayoutConnectOnboardRequest = CreatePayoutConnectOnboardRequest(country: "country_example") // CreatePayoutConnectOnboardRequest | 

// Continue with Stripe: a one-time Stripe-hosted link that collects what Stripe needs.
PayoutAPI.createPayoutIdentityLink(createPayoutConnectOnboardRequest: createPayoutConnectOnboardRequest) { (response, error) in
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

**CreatePayoutIdentityLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPayoutPayout**
```swift
    open class func createPayoutPayout(createPayoutPayoutRequest: CreatePayoutPayoutRequest, completion: @escaping (_ data: CreatePayoutPayoutResponse?, _ error: Error?) -> Void)
```

Pay out now: instant (fee, minutes, to an eligible card/bank) or standard (free, manual schedule only).

amountCents defaults to everything eligible. Pass idempotencyKey so a retry is the same payout. Returns { payout, feeCents }. 409 when the account cannot be paid or instant is unavailable.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createPayoutPayoutRequest = CreatePayoutPayoutRequest(method: "method_example", amountCents: 123, destination: "destination_example", idempotencyKey: "idempotencyKey_example") // CreatePayoutPayoutRequest | 

// Pay out now: instant (fee, minutes, to an eligible card/bank) or standard (free, manual schedule only).
PayoutAPI.createPayoutPayout(createPayoutPayoutRequest: createPayoutPayoutRequest) { (response, error) in
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
 **createPayoutPayoutRequest** | **CreatePayoutPayoutRequest** |  | 

### Return type

**CreatePayoutPayoutResponse**

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

# **getPayoutIdentity**
```swift
    open class func getPayoutIdentity(fresh: Fresh_getPayoutIdentity? = nil, completion: @escaping (_ data: GetPayoutIdentityResponse?, _ error: Error?) -> Void)
```

Stripe's verification of your payout account: status and what Stripe still needs, in plain words.

status is not_started, pending (Stripe is checking), action_required (dueNow lists what to add), verified (payouts on) or restricted (disabledReasonText says why). dueNow / dueLater / inReview are Stripe's requirement keys as plain-words lines ({ keys, label }); errors carry Stripe's reason. Cached up to 60 s; fresh=1 re-reads Stripe. Payouts are gated on payoutsEnabled only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let fresh = "fresh_example" // String |  (optional)

// Stripe's verification of your payout account: status and what Stripe still needs, in plain words.
PayoutAPI.getPayoutIdentity(fresh: fresh) { (response, error) in
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
 **fresh** | **String** |  | [optional] 

### Return type

**GetPayoutIdentityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPayoutWallet**
```swift
    open class func getPayoutWallet(completion: @escaping (_ data: GetPayoutWalletResponse?, _ error: Error?) -> Void)
```

Your payout wallet: balances, schedule, next payout, instant-payout quote, methods, payouts, transactions.

connected:false (with defaultCountry) before onboarding. balance has availableCents, pendingCents and instantAvailableCents in the account currency. instant.available says whether an instant payout can be made now, with feeCents/netCents for the full instant-available amount and reason when not.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your payout wallet: balances, schedule, next payout, instant-payout quote, methods, payouts, transactions.
PayoutAPI.getPayoutWallet() { (response, error) in
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

**GetPayoutWalletResponse**

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

# **updatePayoutSchedule**
```swift
    open class func updatePayoutSchedule(updatePayoutScheduleRequest: UpdatePayoutScheduleRequest, completion: @escaping (_ data: UpdatePayoutScheduleResponse?, _ error: Error?) -> Void)
```

Change the automatic payout schedule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let updatePayoutScheduleRequest = UpdatePayoutScheduleRequest(interval: "interval_example", weeklyAnchor: "weeklyAnchor_example", monthlyAnchor: 123) // UpdatePayoutScheduleRequest | 

// Change the automatic payout schedule.
PayoutAPI.updatePayoutSchedule(updatePayoutScheduleRequest: updatePayoutScheduleRequest) { (response, error) in
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
 **updatePayoutScheduleRequest** | **UpdatePayoutScheduleRequest** |  | 

### Return type

**UpdatePayoutScheduleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

