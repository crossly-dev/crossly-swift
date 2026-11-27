# WorldsRewardsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorldExperienceRewardClose**](WorldsRewardsAPI.md#createworldexperiencerewardclose) | **POST** /v1/worlds/experiences/{experienceId}/rewards/close | Close the pool: the unspent balance returns to your Crossly Carnival earnings. Free rewards keep working.
[**createWorldExperienceRewardDefinition**](WorldsRewardsAPI.md#createworldexperiencerewarddefinition) | **POST** /v1/worlds/experiences/{experienceId}/rewards/definitions | Add a reward scripts can grant: pin, emote, decor, item (your own COSM design), cosm or cbx (with an amount).
[**createWorldExperienceRewardDeposit**](WorldsRewardsAPI.md#createworldexperiencerewarddeposit) | **POST** /v1/worlds/experiences/{experienceId}/rewards/deposits | Move available Crossly Carnival earnings into the pool ($1-$10,000). Owner only; idempotent on idempotencyKey.
[**createWorldExperienceRewardTopup**](WorldsRewardsAPI.md#createworldexperiencerewardtopup) | **POST** /v1/worlds/experiences/{experienceId}/rewards/topups | Open a card top-up ($5-$10,000 into the pool; the 2.9% + 30¢ card fee is added on top). Returns checkoutUrl, where the owner pays with Crossly checkout; the pool is credited once when the payment lands. Owner only.
[**createWorldRewardTopupCancel**](WorldsRewardsAPI.md#createworldrewardtopupcancel) | **POST** /v1/worlds/rewards/topups/{topupId}/cancel | Cancel an unpaid top-up sheet.
[**getWorldExperienceReward**](WorldsRewardsAPI.md#getworldexperiencereward) | **GET** /v1/worlds/experiences/{experienceId}/rewards | The funded reward pool: balance, reserved (owed) value, caps, today&#39;s grants, the reward catalogue and the published rates.
[**getWorldRewardTopup**](WorldsRewardsAPI.md#getworldrewardtopup) | **GET** /v1/worlds/rewards/topups/{topupId} | One card top-up: its status (open, paying, paid, cancelled, expired, refused), amounts and the pool it funds.
[**listWorldExperienceRewardGrants**](WorldsRewardsAPI.md#listworldexperiencerewardgrants) | **GET** /v1/worlds/experiences/{experienceId}/rewards/grants | Every grant, newest first: reward, player sub, amount, cost, status. Cursor-paged; ?sub&#x3D; for one player.
[**listWorldExperienceRewardLedger**](WorldsRewardsAPI.md#listworldexperiencerewardledger) | **GET** /v1/worlds/experiences/{experienceId}/rewards/ledger | The pool&#39;s own ledger: deposits, grant draw-downs, refunds. Cursor-paged.
[**listWorldExperienceRewardTopups**](WorldsRewardsAPI.md#listworldexperiencerewardtopups) | **GET** /v1/worlds/experiences/{experienceId}/rewards/topups | Card top-ups of the reward pool, newest first: amount into the pool, card fee, status, what went back to the card.
[**updateWorldExperienceRewardDefinition**](WorldsRewardsAPI.md#updateworldexperiencerewarddefinition) | **PATCH** /v1/worlds/experiences/{experienceId}/rewards/definitions/{rewardId} | Edit a reward: name, description, image, amount, per-player daily cap, on/off. Key and kind never change.
[**updateWorldExperienceRewardPool**](WorldsRewardsAPI.md#updateworldexperiencerewardpool) | **PATCH** /v1/worlds/experiences/{experienceId}/rewards/pool | Set the pool&#39;s daily caps: total value per day, value and grant count per player per day.


# **createWorldExperienceRewardClose**
```swift
    open class func createWorldExperienceRewardClose(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceRewardCloseResponse?, _ error: Error?) -> Void)
```

Close the pool: the unspent balance returns to your Crossly Carnival earnings. Free rewards keep working.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Close the pool: the unspent balance returns to your Crossly Carnival earnings. Free rewards keep working.
WorldsRewardsAPI.createWorldExperienceRewardClose(experienceId: experienceId) { (response, error) in
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
 **experienceId** | **String** |  | 

### Return type

**CreateWorldExperienceRewardCloseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceRewardDefinition**
```swift
    open class func createWorldExperienceRewardDefinition(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceRewardDefinitionResponse?, _ error: Error?) -> Void)
```

Add a reward scripts can grant: pin, emote, decor, item (your own COSM design), cosm or cbx (with an amount).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Add a reward scripts can grant: pin, emote, decor, item (your own COSM design), cosm or cbx (with an amount).
WorldsRewardsAPI.createWorldExperienceRewardDefinition(experienceId: experienceId) { (response, error) in
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
 **experienceId** | **String** |  | 

### Return type

**CreateWorldExperienceRewardDefinitionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceRewardDeposit**
```swift
    open class func createWorldExperienceRewardDeposit(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceRewardDepositResponse?, _ error: Error?) -> Void)
```

Move available Crossly Carnival earnings into the pool ($1-$10,000). Owner only; idempotent on idempotencyKey.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Move available Crossly Carnival earnings into the pool ($1-$10,000). Owner only; idempotent on idempotencyKey.
WorldsRewardsAPI.createWorldExperienceRewardDeposit(experienceId: experienceId) { (response, error) in
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
 **experienceId** | **String** |  | 

### Return type

**CreateWorldExperienceRewardDepositResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceRewardTopup**
```swift
    open class func createWorldExperienceRewardTopup(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceRewardTopupResponse?, _ error: Error?) -> Void)
```

Open a card top-up ($5-$10,000 into the pool; the 2.9% + 30¢ card fee is added on top). Returns checkoutUrl, where the owner pays with Crossly checkout; the pool is credited once when the payment lands. Owner only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Open a card top-up ($5-$10,000 into the pool; the 2.9% + 30¢ card fee is added on top). Returns checkoutUrl, where the owner pays with Crossly checkout; the pool is credited once when the payment lands. Owner only.
WorldsRewardsAPI.createWorldExperienceRewardTopup(experienceId: experienceId) { (response, error) in
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
 **experienceId** | **String** |  | 

### Return type

**CreateWorldExperienceRewardTopupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldRewardTopupCancel**
```swift
    open class func createWorldRewardTopupCancel(topupId: String, completion: @escaping (_ data: CreateWorldSpaceJoinResponse?, _ error: Error?) -> Void)
```

Cancel an unpaid top-up sheet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let topupId = "topupId_example" // String | 

// Cancel an unpaid top-up sheet.
WorldsRewardsAPI.createWorldRewardTopupCancel(topupId: topupId) { (response, error) in
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
 **topupId** | **String** |  | 

### Return type

**CreateWorldSpaceJoinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceReward**
```swift
    open class func getWorldExperienceReward(experienceId: String, completion: @escaping (_ data: GetWorldExperienceRewardResponse?, _ error: Error?) -> Void)
```

The funded reward pool: balance, reserved (owed) value, caps, today's grants, the reward catalogue and the published rates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The funded reward pool: balance, reserved (owed) value, caps, today's grants, the reward catalogue and the published rates.
WorldsRewardsAPI.getWorldExperienceReward(experienceId: experienceId) { (response, error) in
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
 **experienceId** | **String** |  | 

### Return type

**GetWorldExperienceRewardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldRewardTopup**
```swift
    open class func getWorldRewardTopup(topupId: String, completion: @escaping (_ data: GetWorldRewardTopupResponse?, _ error: Error?) -> Void)
```

One card top-up: its status (open, paying, paid, cancelled, expired, refused), amounts and the pool it funds.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let topupId = "topupId_example" // String | 

// One card top-up: its status (open, paying, paid, cancelled, expired, refused), amounts and the pool it funds.
WorldsRewardsAPI.getWorldRewardTopup(topupId: topupId) { (response, error) in
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
 **topupId** | **String** |  | 

### Return type

**GetWorldRewardTopupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceRewardGrants**
```swift
    open class func listWorldExperienceRewardGrants(experienceId: String, completion: @escaping (_ data: ListWorldExperienceRewardGrantsResponse?, _ error: Error?) -> Void)
```

Every grant, newest first: reward, player sub, amount, cost, status. Cursor-paged; ?sub= for one player.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Every grant, newest first: reward, player sub, amount, cost, status. Cursor-paged; ?sub= for one player.
WorldsRewardsAPI.listWorldExperienceRewardGrants(experienceId: experienceId) { (response, error) in
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
 **experienceId** | **String** |  | 

### Return type

**ListWorldExperienceRewardGrantsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceRewardLedger**
```swift
    open class func listWorldExperienceRewardLedger(experienceId: String, completion: @escaping (_ data: ListWorldExperienceRewardLedgerResponse?, _ error: Error?) -> Void)
```

The pool's own ledger: deposits, grant draw-downs, refunds. Cursor-paged.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The pool's own ledger: deposits, grant draw-downs, refunds. Cursor-paged.
WorldsRewardsAPI.listWorldExperienceRewardLedger(experienceId: experienceId) { (response, error) in
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
 **experienceId** | **String** |  | 

### Return type

**ListWorldExperienceRewardLedgerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceRewardTopups**
```swift
    open class func listWorldExperienceRewardTopups(experienceId: String, completion: @escaping (_ data: ListWorldExperienceRewardTopupsResponse?, _ error: Error?) -> Void)
```

Card top-ups of the reward pool, newest first: amount into the pool, card fee, status, what went back to the card.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Card top-ups of the reward pool, newest first: amount into the pool, card fee, status, what went back to the card.
WorldsRewardsAPI.listWorldExperienceRewardTopups(experienceId: experienceId) { (response, error) in
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
 **experienceId** | **String** |  | 

### Return type

**ListWorldExperienceRewardTopupsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceRewardDefinition**
```swift
    open class func updateWorldExperienceRewardDefinition(experienceId: String, rewardId: String, completion: @escaping (_ data: CreateWorldExperienceRewardDefinitionResponse?, _ error: Error?) -> Void)
```

Edit a reward: name, description, image, amount, per-player daily cap, on/off. Key and kind never change.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let rewardId = "rewardId_example" // String | 

// Edit a reward: name, description, image, amount, per-player daily cap, on/off. Key and kind never change.
WorldsRewardsAPI.updateWorldExperienceRewardDefinition(experienceId: experienceId, rewardId: rewardId) { (response, error) in
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
 **experienceId** | **String** |  | 
 **rewardId** | **String** |  | 

### Return type

**CreateWorldExperienceRewardDefinitionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceRewardPool**
```swift
    open class func updateWorldExperienceRewardPool(experienceId: String, completion: @escaping (_ data: UpdateWorldExperienceRewardPoolResponse?, _ error: Error?) -> Void)
```

Set the pool's daily caps: total value per day, value and grant count per player per day.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Set the pool's daily caps: total value per day, value and grant count per player per day.
WorldsRewardsAPI.updateWorldExperienceRewardPool(experienceId: experienceId) { (response, error) in
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
 **experienceId** | **String** |  | 

### Return type

**UpdateWorldExperienceRewardPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

