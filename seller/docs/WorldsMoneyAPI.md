# WorldsMoneyAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorldEarningPayoutAccountOnboard**](WorldsMoneyAPI.md#createworldearningpayoutaccountonboard) | **POST** /v1/worlds/earnings/payout-account/onboard | Start or resume Stripe onboarding for your creator payout account. Returns a one-time Stripe URL. Body: { country? } (fixed once the account exists).
[**createWorldExperienceDropTable**](WorldsMoneyAPI.md#createworldexperiencedroptable) | **POST** /v1/worlds/experiences/{experienceId}/drop-tables | Declare a drop table for a paid random item: cosmetic or in-experience outcomes only. Crossly pre-simulates and hashes it.
[**createWorldExperienceProduct**](WorldsMoneyAPI.md#createworldexperienceproduct) | **POST** /v1/worlds/experiences/{experienceId}/products | Create a product: price 50-100,000 cents (a private server may be free), optional per-country prices. Paid random items need an approved drop table and are never tradeable.
[**createWorldExperienceProductArchive**](WorldsMoneyAPI.md#createworldexperienceproductarchive) | **POST** /v1/worlds/experiences/{experienceId}/products/{productId}/archive | Take a product off sale for good. Owned passes and running subscriptions keep working.
[**createWorldExperiencePurchase**](WorldsMoneyAPI.md#createworldexperiencepurchase) | **POST** /v1/worlds/experiences/{experienceId}/purchases | Open a purchase sheet for a product (paid access, a pass…). Returns checkoutPath: the player pays only in the Crossly checkout.
[**createWorldExperienceReceiptAck**](WorldsMoneyAPI.md#createworldexperiencereceiptack) | **POST** /v1/worlds/experiences/{experienceId}/receipts/{orderId}/ack | Acknowledge a grant your back-end made off-server. Idempotent: a second ack reports duplicate.
[**createWorldMeReceiptRefund**](WorldsMoneyAPI.md#createworldmereceiptrefund) | **POST** /v1/worlds/me/receipts/{receiptId}/refund | Refund a developer product bought by mistake: within the self-refund window and before the experience granted it.
[**createWorldMeSubscriptionCancel**](WorldsMoneyAPI.md#createworldmesubscriptioncancel) | **POST** /v1/worlds/me/subscriptions/{id}/cancel | Cancel: no more charges; the benefit lasts to the end of the paid month.
[**createWorldMeSubscriptionPrivateServerCode**](WorldsMoneyAPI.md#createworldmesubscriptionprivateservercode) | **POST** /v1/worlds/me/subscriptions/{id}/private-server-code | A fresh access code for your private server (the previous one stops working). Join with reservedCode.
[**createWorldPurchaseCancel**](WorldsMoneyAPI.md#createworldpurchasecancel) | **POST** /v1/worlds/purchases/{intentId}/cancel | Cancel an unpaid purchase sheet.
[**getWorldEarning**](WorldsMoneyAPI.md#getworldearning) | **GET** /v1/worlds/earnings | Your Crossly Carnival earnings: pending, available, held, paid; next payout; what cashing out still needs.
[**getWorldEarningPayoutAccount**](WorldsMoneyAPI.md#getworldearningpayoutaccount) | **GET** /v1/worlds/earnings/payout-account | Your creator payout account (your own, separate from any store payout account): not_started, pending, restricted, active or payouts_unavailable.
[**getWorldEconomy**](WorldsMoneyAPI.md#getworldeconomy) | **GET** /v1/worlds/economy | The published payout formula: splits, thresholds, scheduled changes (90-day notice) and guarantees.
[**getWorldExperienceRevenue**](WorldsMoneyAPI.md#getworldexperiencerevenue) | **GET** /v1/worlds/experiences/{experienceId}/revenue | Gross, tax, refunds, chargebacks, net and your share per product, plus pending / available / paid.
[**getWorldExperienceStore**](WorldsMoneyAPI.md#getworldexperiencestore) | **GET** /v1/worlds/experiences/{experienceId}/store | An experience&#39;s store as you see it: your regional price, odds for paid random items, what you own.
[**getWorldPurchase**](WorldsMoneyAPI.md#getworldpurchase) | **GET** /v1/worlds/purchases/{intentId} | A purchase sheet: item, price, tax, total, odds, status.
[**listWorldEarningAffiliate**](WorldsMoneyAPI.md#listworldearningaffiliate) | **GET** /v1/worlds/earnings/affiliate | Real-goods orders attributed to your games: the fee, your 20% share, and whether it is posted.
[**listWorldEarningLedger**](WorldsMoneyAPI.md#listworldearningledger) | **GET** /v1/worlds/earnings/ledger | Your creator ledger, newest first: every earning and reversal. Cursor-paged.
[**listWorldEarningPayouts**](WorldsMoneyAPI.md#listworldearningpayouts) | **GET** /v1/worlds/earnings/payouts | Your monthly Crossly Carnival payouts.
[**listWorldExperienceDropTables**](WorldsMoneyAPI.md#listworldexperiencedroptables) | **GET** /v1/worlds/experiences/{experienceId}/drop-tables | Declared drop tables with their odds, simulation (10^6 draws) and hash.
[**listWorldExperienceProducts**](WorldsMoneyAPI.md#listworldexperienceproducts) | **GET** /v1/worlds/experiences/{experienceId}/products | What an experience sells: passes, developer products, subscriptions, private servers, paid access (?includeArchived&#x3D;true).
[**listWorldExperienceReceipts**](WorldsMoneyAPI.md#listworldexperiencereceipts) | **GET** /v1/worlds/experiences/{experienceId}/receipts | Every purchase: orderId, sub, product, price, net, state (paid/delivered/granted/refunded/revoked). Cursor-paged; ?since&#x3D;.
[**listWorldMeSubscriptions**](WorldsMoneyAPI.md#listworldmesubscriptions) | **GET** /v1/worlds/me/subscriptions | Your experience subscriptions and private servers.
[**updateWorldExperienceProduct**](WorldsMoneyAPI.md#updateworldexperienceproduct) | **PATCH** /v1/worlds/experiences/{experienceId}/products/{productId} | Edit a product: name, description, icon, price, regional prices, hourly limit, on/off sale. Kind and place never change.


# **createWorldEarningPayoutAccountOnboard**
```swift
    open class func createWorldEarningPayoutAccountOnboard(completion: @escaping (_ data: CreateWorldEarningPayoutAccountOnboardResponse?, _ error: Error?) -> Void)
```

Start or resume Stripe onboarding for your creator payout account. Returns a one-time Stripe URL. Body: { country? } (fixed once the account exists).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start or resume Stripe onboarding for your creator payout account. Returns a one-time Stripe URL. Body: { country? } (fixed once the account exists).
WorldsMoneyAPI.createWorldEarningPayoutAccountOnboard() { (response, error) in
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

**CreateWorldEarningPayoutAccountOnboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceDropTable**
```swift
    open class func createWorldExperienceDropTable(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceDropTableResponse?, _ error: Error?) -> Void)
```

Declare a drop table for a paid random item: cosmetic or in-experience outcomes only. Crossly pre-simulates and hashes it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Declare a drop table for a paid random item: cosmetic or in-experience outcomes only. Crossly pre-simulates and hashes it.
WorldsMoneyAPI.createWorldExperienceDropTable(experienceId: experienceId) { (response, error) in
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

**CreateWorldExperienceDropTableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceProduct**
```swift
    open class func createWorldExperienceProduct(experienceId: String, completion: @escaping (_ data: WorldExperienceProductResponse?, _ error: Error?) -> Void)
```

Create a product: price 50-100,000 cents (a private server may be free), optional per-country prices. Paid random items need an approved drop table and are never tradeable.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Create a product: price 50-100,000 cents (a private server may be free), optional per-country prices. Paid random items need an approved drop table and are never tradeable.
WorldsMoneyAPI.createWorldExperienceProduct(experienceId: experienceId) { (response, error) in
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

**WorldExperienceProductResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceProductArchive**
```swift
    open class func createWorldExperienceProductArchive(experienceId: String, productId: String, completion: @escaping (_ data: WorldExperienceProductResponse?, _ error: Error?) -> Void)
```

Take a product off sale for good. Owned passes and running subscriptions keep working.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let productId = "productId_example" // String | 

// Take a product off sale for good. Owned passes and running subscriptions keep working.
WorldsMoneyAPI.createWorldExperienceProductArchive(experienceId: experienceId, productId: productId) { (response, error) in
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
 **productId** | **String** |  | 

### Return type

**WorldExperienceProductResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePurchase**
```swift
    open class func createWorldExperiencePurchase(experienceId: String, completion: @escaping (_ data: CreateWorldExperiencePurchaseResponse?, _ error: Error?) -> Void)
```

Open a purchase sheet for a product (paid access, a pass…). Returns checkoutPath: the player pays only in the Crossly checkout.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Open a purchase sheet for a product (paid access, a pass…). Returns checkoutPath: the player pays only in the Crossly checkout.
WorldsMoneyAPI.createWorldExperiencePurchase(experienceId: experienceId) { (response, error) in
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

**CreateWorldExperiencePurchaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceReceiptAck**
```swift
    open class func createWorldExperienceReceiptAck(experienceId: String, orderId: String, completion: @escaping (_ data: CreateWorldExperienceReceiptAckResponse?, _ error: Error?) -> Void)
```

Acknowledge a grant your back-end made off-server. Idempotent: a second ack reports duplicate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let orderId = "orderId_example" // String | 

// Acknowledge a grant your back-end made off-server. Idempotent: a second ack reports duplicate.
WorldsMoneyAPI.createWorldExperienceReceiptAck(experienceId: experienceId, orderId: orderId) { (response, error) in
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
 **orderId** | **String** |  | 

### Return type

**CreateWorldExperienceReceiptAckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldMeReceiptRefund**
```swift
    open class func createWorldMeReceiptRefund(receiptId: String, completion: @escaping (_ data: CreateWorldMeReceiptRefundResponse?, _ error: Error?) -> Void)
```

Refund a developer product bought by mistake: within the self-refund window and before the experience granted it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let receiptId = "receiptId_example" // String | 

// Refund a developer product bought by mistake: within the self-refund window and before the experience granted it.
WorldsMoneyAPI.createWorldMeReceiptRefund(receiptId: receiptId) { (response, error) in
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
 **receiptId** | **String** |  | 

### Return type

**CreateWorldMeReceiptRefundResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldMeSubscriptionCancel**
```swift
    open class func createWorldMeSubscriptionCancel(id: String, completion: @escaping (_ data: CreateWorldMeSubscriptionCancelResponse?, _ error: Error?) -> Void)
```

Cancel: no more charges; the benefit lasts to the end of the paid month.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel: no more charges; the benefit lasts to the end of the paid month.
WorldsMoneyAPI.createWorldMeSubscriptionCancel(id: id) { (response, error) in
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

**CreateWorldMeSubscriptionCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldMeSubscriptionPrivateServerCode**
```swift
    open class func createWorldMeSubscriptionPrivateServerCode(id: String, completion: @escaping (_ data: CreateWorldMeSubscriptionPrivateServerCodeResponse?, _ error: Error?) -> Void)
```

A fresh access code for your private server (the previous one stops working). Join with reservedCode.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A fresh access code for your private server (the previous one stops working). Join with reservedCode.
WorldsMoneyAPI.createWorldMeSubscriptionPrivateServerCode(id: id) { (response, error) in
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

**CreateWorldMeSubscriptionPrivateServerCodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPurchaseCancel**
```swift
    open class func createWorldPurchaseCancel(intentId: String, completion: @escaping (_ data: CreateWorldSpaceJoinResponse?, _ error: Error?) -> Void)
```

Cancel an unpaid purchase sheet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let intentId = "intentId_example" // String | 

// Cancel an unpaid purchase sheet.
WorldsMoneyAPI.createWorldPurchaseCancel(intentId: intentId) { (response, error) in
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
 **intentId** | **String** |  | 

### Return type

**CreateWorldSpaceJoinResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldEarning**
```swift
    open class func getWorldEarning(completion: @escaping (_ data: GetWorldEarningResponse?, _ error: Error?) -> Void)
```

Your Crossly Carnival earnings: pending, available, held, paid; next payout; what cashing out still needs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Crossly Carnival earnings: pending, available, held, paid; next payout; what cashing out still needs.
WorldsMoneyAPI.getWorldEarning() { (response, error) in
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

**GetWorldEarningResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldEarningPayoutAccount**
```swift
    open class func getWorldEarningPayoutAccount(completion: @escaping (_ data: GetWorldEarningPayoutAccountResponse?, _ error: Error?) -> Void)
```

Your creator payout account (your own, separate from any store payout account): not_started, pending, restricted, active or payouts_unavailable.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your creator payout account (your own, separate from any store payout account): not_started, pending, restricted, active or payouts_unavailable.
WorldsMoneyAPI.getWorldEarningPayoutAccount() { (response, error) in
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

**GetWorldEarningPayoutAccountResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldEconomy**
```swift
    open class func getWorldEconomy(completion: @escaping (_ data: GetWorldEconomyResponse?, _ error: Error?) -> Void)
```

The published payout formula: splits, thresholds, scheduled changes (90-day notice) and guarantees.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The published payout formula: splits, thresholds, scheduled changes (90-day notice) and guarantees.
WorldsMoneyAPI.getWorldEconomy() { (response, error) in
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

**GetWorldEconomyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceRevenue**
```swift
    open class func getWorldExperienceRevenue(experienceId: String, completion: @escaping (_ data: GetWorldExperienceRevenueResponse?, _ error: Error?) -> Void)
```

Gross, tax, refunds, chargebacks, net and your share per product, plus pending / available / paid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Gross, tax, refunds, chargebacks, net and your share per product, plus pending / available / paid.
WorldsMoneyAPI.getWorldExperienceRevenue(experienceId: experienceId) { (response, error) in
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

**GetWorldExperienceRevenueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceStore**
```swift
    open class func getWorldExperienceStore(experienceId: String, completion: @escaping (_ data: GetWorldExperienceStoreResponse?, _ error: Error?) -> Void)
```

An experience's store as you see it: your regional price, odds for paid random items, what you own.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// An experience's store as you see it: your regional price, odds for paid random items, what you own.
WorldsMoneyAPI.getWorldExperienceStore(experienceId: experienceId) { (response, error) in
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

**GetWorldExperienceStoreResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPurchase**
```swift
    open class func getWorldPurchase(intentId: String, completion: @escaping (_ data: GetWorldPurchaseResponse?, _ error: Error?) -> Void)
```

A purchase sheet: item, price, tax, total, odds, status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let intentId = "intentId_example" // String | 

// A purchase sheet: item, price, tax, total, odds, status.
WorldsMoneyAPI.getWorldPurchase(intentId: intentId) { (response, error) in
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
 **intentId** | **String** |  | 

### Return type

**GetWorldPurchaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldEarningAffiliate**
```swift
    open class func listWorldEarningAffiliate(completion: @escaping (_ data: ListWorldEarningAffiliateResponse?, _ error: Error?) -> Void)
```

Real-goods orders attributed to your games: the fee, your 20% share, and whether it is posted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Real-goods orders attributed to your games: the fee, your 20% share, and whether it is posted.
WorldsMoneyAPI.listWorldEarningAffiliate() { (response, error) in
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

**ListWorldEarningAffiliateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldEarningLedger**
```swift
    open class func listWorldEarningLedger(completion: @escaping (_ data: ListWorldEarningLedgerResponse?, _ error: Error?) -> Void)
```

Your creator ledger, newest first: every earning and reversal. Cursor-paged.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your creator ledger, newest first: every earning and reversal. Cursor-paged.
WorldsMoneyAPI.listWorldEarningLedger() { (response, error) in
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

**ListWorldEarningLedgerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldEarningPayouts**
```swift
    open class func listWorldEarningPayouts(completion: @escaping (_ data: ListWorldEarningPayoutsResponse?, _ error: Error?) -> Void)
```

Your monthly Crossly Carnival payouts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your monthly Crossly Carnival payouts.
WorldsMoneyAPI.listWorldEarningPayouts() { (response, error) in
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

**ListWorldEarningPayoutsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceDropTables**
```swift
    open class func listWorldExperienceDropTables(experienceId: String, completion: @escaping (_ data: ListWorldExperienceDropTablesResponse?, _ error: Error?) -> Void)
```

Declared drop tables with their odds, simulation (10^6 draws) and hash.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Declared drop tables with their odds, simulation (10^6 draws) and hash.
WorldsMoneyAPI.listWorldExperienceDropTables(experienceId: experienceId) { (response, error) in
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

**ListWorldExperienceDropTablesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceProducts**
```swift
    open class func listWorldExperienceProducts(experienceId: String, completion: @escaping (_ data: ListWorldExperienceProductsResponse?, _ error: Error?) -> Void)
```

What an experience sells: passes, developer products, subscriptions, private servers, paid access (?includeArchived=true).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// What an experience sells: passes, developer products, subscriptions, private servers, paid access (?includeArchived=true).
WorldsMoneyAPI.listWorldExperienceProducts(experienceId: experienceId) { (response, error) in
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

**ListWorldExperienceProductsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceReceipts**
```swift
    open class func listWorldExperienceReceipts(experienceId: String, completion: @escaping (_ data: ListWorldExperienceReceiptsResponse?, _ error: Error?) -> Void)
```

Every purchase: orderId, sub, product, price, net, state (paid/delivered/granted/refunded/revoked). Cursor-paged; ?since=.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Every purchase: orderId, sub, product, price, net, state (paid/delivered/granted/refunded/revoked). Cursor-paged; ?since=.
WorldsMoneyAPI.listWorldExperienceReceipts(experienceId: experienceId) { (response, error) in
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

**ListWorldExperienceReceiptsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldMeSubscriptions**
```swift
    open class func listWorldMeSubscriptions(completion: @escaping (_ data: ListWorldMeSubscriptionsResponse?, _ error: Error?) -> Void)
```

Your experience subscriptions and private servers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your experience subscriptions and private servers.
WorldsMoneyAPI.listWorldMeSubscriptions() { (response, error) in
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

**ListWorldMeSubscriptionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceProduct**
```swift
    open class func updateWorldExperienceProduct(experienceId: String, productId: String, completion: @escaping (_ data: WorldExperienceProductResponse?, _ error: Error?) -> Void)
```

Edit a product: name, description, icon, price, regional prices, hourly limit, on/off sale. Kind and place never change.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let productId = "productId_example" // String | 

// Edit a product: name, description, icon, price, regional prices, hourly limit, on/off sale. Kind and place never change.
WorldsMoneyAPI.updateWorldExperienceProduct(experienceId: experienceId, productId: productId) { (response, error) in
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
 **productId** | **String** |  | 

### Return type

**WorldExperienceProductResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

