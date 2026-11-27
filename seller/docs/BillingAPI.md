# BillingAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBillingUpgrade**](BillingAPI.md#createbillingupgrade) | **POST** /v1/billing/upgrade | Start an upgrade to a higher plan.
[**listBillingAppAllowances**](BillingAPI.md#listbillingappallowances) | **GET** /v1/billing/app-allowances | Your listing allowances through OAuth apps (used of limit, per app, with its platform scope).
[**listBillingPlans**](BillingAPI.md#listbillingplans) | **GET** /v1/billing/plans | List the plans with their prices, limits and features.


# **createBillingUpgrade**
```swift
    open class func createBillingUpgrade(createBillingUpgradeRequest: CreateBillingUpgradeRequest, completion: @escaping (_ data: CreateBillingUpgradeResponse?, _ error: Error?) -> Void)
```

Start an upgrade to a higher plan.

Returns a Stripe Checkout URL. Nothing is charged by this call — a person completes the payment. Downgrades and cancellation are not available to a token at all; they stay with the account owner.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createBillingUpgradeRequest = CreateBillingUpgradeRequest(tier: "tier_example", interval: "interval_example") // CreateBillingUpgradeRequest | 

// Start an upgrade to a higher plan.
BillingAPI.createBillingUpgrade(createBillingUpgradeRequest: createBillingUpgradeRequest) { (response, error) in
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
 **createBillingUpgradeRequest** | **CreateBillingUpgradeRequest** |  | 

### Return type

**CreateBillingUpgradeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBillingAppAllowances**
```swift
    open class func listBillingAppAllowances(completion: @escaping (_ data: ListBillingAppAllowancesResponse?, _ error: Error?) -> Void)
```

Your listing allowances through OAuth apps (used of limit, per app, with its platform scope).

Staff can let an OAuth app list above a seller's plan, counted apart from the plan's itemsPerMonth and only on the allowance's platforms. `label` is the sentence to show (12 of 10,000 managed by Infinity; ... this month via Infinity (resets Dec 1); or counts toward your plan for limitMode shared).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your listing allowances through OAuth apps (used of limit, per app, with its platform scope).
BillingAPI.listBillingAppAllowances() { (response, error) in
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

**ListBillingAppAllowancesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBillingPlans**
```swift
    open class func listBillingPlans(completion: @escaping (_ data: ListBillingPlansResponse?, _ error: Error?) -> Void)
```

List the plans with their prices, limits and features.

Prices are the Stripe Prices checkout charges (whole USD). A null limit means no cap.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List the plans with their prices, limits and features.
BillingAPI.listBillingPlans() { (response, error) in
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

**ListBillingPlansResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

