# CreatorRewardsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCreatorRewardFormula**](CreatorRewardsAPI.md#getcreatorrewardformula) | **GET** /v1/creator-rewards/formula | The Creator Rewards formula: the pool&#39;s share of Crossly&#39;s Crossly Carnival take in force, the counting rules, and any scheduled change (announced at least 90 days ahead).
[**getCreatorRewardMe**](CreatorRewardsAPI.md#getcreatorrewardme) | **GET** /v1/creator-rewards/me/{month} | One month of your Creator Rewards (YYYY-MM).
[**getPublicCreatorRewardReconciliation**](CreatorRewardsAPI.md#getpubliccreatorrewardreconciliation) | **GET** /v1/public/creator-rewards/reconciliation | Public monthly reconciliation of Creator Rewards (no auth): per month the pool funded from Crossly&#39;s take, carried in, distributed, paid (from the ledger), carried over, the formula version and weights, eligible experiences and every check; plus the formula in force and scheduled changes (90-day notice).
[**listCreatorRewardMe**](CreatorRewardsAPI.md#listcreatorrewardme) | **GET** /v1/creator-rewards/me | Your Creator Rewards: each month, each experience you own or are paid for (counted minutes and players, exclusions, its amount, your part).
[**listCreatorRewardMonths**](CreatorRewardsAPI.md#listcreatorrewardmonths) | **GET** /v1/creator-rewards/months | Every calculated month: Crossly&#39;s take, the funded share, the pool, what was distributed and carried, counted minutes and exclusions by reason.


# **getCreatorRewardFormula**
```swift
    open class func getCreatorRewardFormula(completion: @escaping (_ data: GetCreatorRewardFormulaResponse?, _ error: Error?) -> Void)
```

The Creator Rewards formula: the pool's share of Crossly's Crossly Carnival take in force, the counting rules, and any scheduled change (announced at least 90 days ahead).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Creator Rewards formula: the pool's share of Crossly's Crossly Carnival take in force, the counting rules, and any scheduled change (announced at least 90 days ahead).
CreatorRewardsAPI.getCreatorRewardFormula() { (response, error) in
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

**GetCreatorRewardFormulaResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorRewardMe**
```swift
    open class func getCreatorRewardMe(month: String, completion: @escaping (_ data: GetCreatorRewardMeResponse?, _ error: Error?) -> Void)
```

One month of your Creator Rewards (YYYY-MM).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let month = "month_example" // String | 

// One month of your Creator Rewards (YYYY-MM).
CreatorRewardsAPI.getCreatorRewardMe(month: month) { (response, error) in
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
 **month** | **String** |  | 

### Return type

**GetCreatorRewardMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPublicCreatorRewardReconciliation**
```swift
    open class func getPublicCreatorRewardReconciliation(limit: Int? = nil, completion: @escaping (_ data: GetPublicCreatorRewardReconciliationResponse?, _ error: Error?) -> Void)
```

Public monthly reconciliation of Creator Rewards (no auth): per month the pool funded from Crossly's take, carried in, distributed, paid (from the ledger), carried over, the formula version and weights, eligible experiences and every check; plus the formula in force and scheduled changes (90-day notice).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let limit = 987 // Int | Months to return, newest first (default 24). (optional)

// Public monthly reconciliation of Creator Rewards (no auth): per month the pool funded from Crossly's take, carried in, distributed, paid (from the ledger), carried over, the formula version and weights, eligible experiences and every check; plus the formula in force and scheduled changes (90-day notice).
CreatorRewardsAPI.getPublicCreatorRewardReconciliation(limit: limit) { (response, error) in
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
 **limit** | **Int** | Months to return, newest first (default 24). | [optional] 

### Return type

**GetPublicCreatorRewardReconciliationResponse**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCreatorRewardMe**
```swift
    open class func listCreatorRewardMe(completion: @escaping (_ data: ListCreatorRewardMeResponse?, _ error: Error?) -> Void)
```

Your Creator Rewards: each month, each experience you own or are paid for (counted minutes and players, exclusions, its amount, your part).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Creator Rewards: each month, each experience you own or are paid for (counted minutes and players, exclusions, its amount, your part).
CreatorRewardsAPI.listCreatorRewardMe() { (response, error) in
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

**ListCreatorRewardMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCreatorRewardMonths**
```swift
    open class func listCreatorRewardMonths(completion: @escaping (_ data: ListCreatorRewardMonthsResponse?, _ error: Error?) -> Void)
```

Every calculated month: Crossly's take, the funded share, the pool, what was distributed and carried, counted minutes and exclusions by reason.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every calculated month: Crossly's take, the funded share, the pool, what was distributed and carried, counted minutes and exclusions by reason.
CreatorRewardsAPI.listCreatorRewardMonths() { (response, error) in
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

**ListCreatorRewardMonthsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

