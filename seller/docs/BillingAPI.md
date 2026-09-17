# BillingAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBillingUpgrade**](BillingAPI.md#createbillingupgrade) | **POST** /v1/billing/upgrade | Start an upgrade to a higher plan.


# **createBillingUpgrade**
```swift
    open class func createBillingUpgrade(inlineObject: InlineObject, completion: @escaping (_ data: CreateBillingUpgradeResponse?, _ error: Error?) -> Void)
```

Start an upgrade to a higher plan.

Returns a Stripe Checkout URL. Nothing is charged by this call — a person completes the payment. Downgrades and cancellation are not available to a token at all; they stay with the account owner.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let inlineObject = inline_object(tier: "tier_example", interval: "interval_example") // InlineObject | 

// Start an upgrade to a higher plan.
BillingAPI.createBillingUpgrade(inlineObject: inlineObject) { (response, error) in
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
 **inlineObject** | [**InlineObject**](InlineObject.md) |  | 

### Return type

[**CreateBillingUpgradeResponse**](CreateBillingUpgradeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

