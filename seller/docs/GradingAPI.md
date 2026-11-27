# GradingAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGradingRunReserve**](GradingAPI.md#creategradingrunreserve) | **POST** /v1/grading/runs/{id}/reserve | Hold a slot in a Grading Run. Free now; charged on your saved card only if the run locks. Full-access token and Idempotency-Key required.
[**createGradingSubmissionCancel**](GradingAPI.md#creategradingsubmissioncancel) | **POST** /v1/grading/submissions/{id}/cancel | Pull a reserved card out of its run. Only while it is reserved; nothing was charged.
[**createGradingSubmissionShipped**](GradingAPI.md#creategradingsubmissionshipped) | **POST** /v1/grading/submissions/{id}/shipped | Say you mailed a charged card to the hub, with optional tracking.
[**createGradingVerifyCert**](GradingAPI.md#creategradingverifycert) | **POST** /v1/grading/verify-cert | Look a cert number up with its grader. found&#x3D;false when the grader has no record.
[**createVaultMarketGradingOrder**](GradingAPI.md#createvaultmarketgradingorder) | **POST** /v1/vault-markets/grading/orders | Start a grading submission: cards (vault units or inventory items) to one grader at one service. Priced from the price book; vault units are held. Nothing is charged until you pay.
[**createVaultMarketGradingOrderCancel**](GradingAPI.md#createvaultmarketgradingordercancel) | **POST** /v1/vault-markets/grading/orders/{id}/cancel | Cancel a draft submission; its vault units go back on their shelf. A paid submission cannot be cancelled here.
[**createVaultMarketGradingOrderPay**](GradingAPI.md#createvaultmarketgradingorderpay) | **POST** /v1/vault-markets/grading/orders/{id}/pay | Pay for a draft submission. savedCard: true charges your saved card (paid, or requires_action with a client secret for 3-D Secure). Full-access token and Idempotency-Key required.
[**createVaultMarketGradingOrderPayConfirm**](GradingAPI.md#createvaultmarketgradingorderpayconfirm) | **POST** /v1/vault-markets/grading/orders/{id}/pay/confirm | After a 3-D Secure step or a card form: confirm the PaymentIntent with Stripe and mark the submission paid.
[**getGradingPriceBook**](GradingAPI.md#getgradingpricebook) | **GET** /v1/grading/price-book | The grading price book: every grader, its services (per-card price, minimum cards, max declared value, turnaround) and add-ons, plus Crossly handling. The same data the dashboard prices from.
[**getGradingWorth**](GradingAPI.md#getgradingworth) | **GET** /v1/grading/worth/{inventoryItemId} | Worth grading? Raw value vs what each grade is worth at each grader, against the cost. Never predicts the grade.
[**getVaultMarketGradingOrder**](GradingAPI.md#getvaultmarketgradingorder) | **GET** /v1/vault-markets/grading/orders/{id} | One grading submission: its timeline, every card with its grade, cert number and photos, the costs and the tracking.
[**listGradingRateCard**](GradingAPI.md#listgradingratecard) | **GET** /v1/grading/rate-card | Every grader and tier Crossly can send to, with the per-card price in cents (null &#x3D; paused at the grader).
[**listGradingRuns**](GradingAPI.md#listgradingruns) | **GET** /v1/grading/runs | Grading Runs taking reservations now, soonest cutoff first. meta.open is false while runs are switched off.
[**listGradingSubmissions**](GradingAPI.md#listgradingsubmissions) | **GET** /v1/grading/submissions | Your cards out for grading (runs and Direct), newest first. active&#x3D;1 keeps only the ones still in flight.
[**listVaultMarketGradingCandidates**](GradingAPI.md#listvaultmarketgradingcandidates) | **GET** /v1/vault-markets/grading/candidates | What you can send to grading: raw units already in your vault and inventory items, each with a declared value to start from and the reason when one cannot go.
[**listVaultMarketGradingOrders**](GradingAPI.md#listvaultmarketgradingorders) | **GET** /v1/vault-markets/grading/orders | Your grading submissions, newest first. Filter by status, active, grader, tier and dates; q searches the number, card names and cert numbers.


# **createGradingRunReserve**
```swift
    open class func createGradingRunReserve(id: String, completion: @escaping (_ data: IdResponse?, _ error: Error?) -> Void)
```

Hold a slot in a Grading Run. Free now; charged on your saved card only if the run locks. Full-access token and Idempotency-Key required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Hold a slot in a Grading Run. Free now; charged on your saved card only if the run locks. Full-access token and Idempotency-Key required.
GradingAPI.createGradingRunReserve(id: id) { (response, error) in
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

**IdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createGradingSubmissionCancel**
```swift
    open class func createGradingSubmissionCancel(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Pull a reserved card out of its run. Only while it is reserved; nothing was charged.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pull a reserved card out of its run. Only while it is reserved; nothing was charged.
GradingAPI.createGradingSubmissionCancel(id: id) { (response, error) in
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

# **createGradingSubmissionShipped**
```swift
    open class func createGradingSubmissionShipped(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Say you mailed a charged card to the hub, with optional tracking.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Say you mailed a charged card to the hub, with optional tracking.
GradingAPI.createGradingSubmissionShipped(id: id) { (response, error) in
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

# **createGradingVerifyCert**
```swift
    open class func createGradingVerifyCert(completion: @escaping (_ data: CreateGradingVerifyCertResponse?, _ error: Error?) -> Void)
```

Look a cert number up with its grader. found=false when the grader has no record.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Look a cert number up with its grader. found=false when the grader has no record.
GradingAPI.createGradingVerifyCert() { (response, error) in
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

**CreateGradingVerifyCertResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGradingOrder**
```swift
    open class func createVaultMarketGradingOrder(completion: @escaping (_ data: CreateVaultMarketGradingOrderResponse?, _ error: Error?) -> Void)
```

Start a grading submission: cards (vault units or inventory items) to one grader at one service. Priced from the price book; vault units are held. Nothing is charged until you pay.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start a grading submission: cards (vault units or inventory items) to one grader at one service. Priced from the price book; vault units are held. Nothing is charged until you pay.
GradingAPI.createVaultMarketGradingOrder() { (response, error) in
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

**CreateVaultMarketGradingOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGradingOrderCancel**
```swift
    open class func createVaultMarketGradingOrderCancel(id: String, completion: @escaping (_ data: StatusResponse?, _ error: Error?) -> Void)
```

Cancel a draft submission; its vault units go back on their shelf. A paid submission cannot be cancelled here.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a draft submission; its vault units go back on their shelf. A paid submission cannot be cancelled here.
GradingAPI.createVaultMarketGradingOrderCancel(id: id) { (response, error) in
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

**StatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGradingOrderPay**
```swift
    open class func createVaultMarketGradingOrderPay(id: String, completion: @escaping (_ data: CreateVaultMarketGradingOrderPayResponse?, _ error: Error?) -> Void)
```

Pay for a draft submission. savedCard: true charges your saved card (paid, or requires_action with a client secret for 3-D Secure). Full-access token and Idempotency-Key required.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pay for a draft submission. savedCard: true charges your saved card (paid, or requires_action with a client secret for 3-D Secure). Full-access token and Idempotency-Key required.
GradingAPI.createVaultMarketGradingOrderPay(id: id) { (response, error) in
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

**CreateVaultMarketGradingOrderPayResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVaultMarketGradingOrderPayConfirm**
```swift
    open class func createVaultMarketGradingOrderPayConfirm(id: String, completion: @escaping (_ data: StatusResponse?, _ error: Error?) -> Void)
```

After a 3-D Secure step or a card form: confirm the PaymentIntent with Stripe and mark the submission paid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// After a 3-D Secure step or a card form: confirm the PaymentIntent with Stripe and mark the submission paid.
GradingAPI.createVaultMarketGradingOrderPayConfirm(id: id) { (response, error) in
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

**StatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getGradingPriceBook**
```swift
    open class func getGradingPriceBook(completion: @escaping (_ data: GetGradingPriceBookResponse?, _ error: Error?) -> Void)
```

The grading price book: every grader, its services (per-card price, minimum cards, max declared value, turnaround) and add-ons, plus Crossly handling. The same data the dashboard prices from.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The grading price book: every grader, its services (per-card price, minimum cards, max declared value, turnaround) and add-ons, plus Crossly handling. The same data the dashboard prices from.
GradingAPI.getGradingPriceBook() { (response, error) in
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

**GetGradingPriceBookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getGradingWorth**
```swift
    open class func getGradingWorth(inventoryItemId: String, completion: @escaping (_ data: GetGradingWorthResponse?, _ error: Error?) -> Void)
```

Worth grading? Raw value vs what each grade is worth at each grader, against the cost. Never predicts the grade.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let inventoryItemId = "inventoryItemId_example" // String | 

// Worth grading? Raw value vs what each grade is worth at each grader, against the cost. Never predicts the grade.
GradingAPI.getGradingWorth(inventoryItemId: inventoryItemId) { (response, error) in
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
 **inventoryItemId** | **String** |  | 

### Return type

**GetGradingWorthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getVaultMarketGradingOrder**
```swift
    open class func getVaultMarketGradingOrder(id: String, completion: @escaping (_ data: GetVaultMarketGradingOrderResponse?, _ error: Error?) -> Void)
```

One grading submission: its timeline, every card with its grade, cert number and photos, the costs and the tracking.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One grading submission: its timeline, every card with its grade, cert number and photos, the costs and the tracking.
GradingAPI.getVaultMarketGradingOrder(id: id) { (response, error) in
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

**GetVaultMarketGradingOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listGradingRateCard**
```swift
    open class func listGradingRateCard(completion: @escaping (_ data: ListGradingRateCardResponse?, _ error: Error?) -> Void)
```

Every grader and tier Crossly can send to, with the per-card price in cents (null = paused at the grader).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every grader and tier Crossly can send to, with the per-card price in cents (null = paused at the grader).
GradingAPI.listGradingRateCard() { (response, error) in
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

**ListGradingRateCardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listGradingRuns**
```swift
    open class func listGradingRuns(completion: @escaping (_ data: ListGradingRunsResponse?, _ error: Error?) -> Void)
```

Grading Runs taking reservations now, soonest cutoff first. meta.open is false while runs are switched off.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Grading Runs taking reservations now, soonest cutoff first. meta.open is false while runs are switched off.
GradingAPI.listGradingRuns() { (response, error) in
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

**ListGradingRunsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listGradingSubmissions**
```swift
    open class func listGradingSubmissions(active: Active_listGradingSubmissions? = nil, completion: @escaping (_ data: ListGradingSubmissionsResponse?, _ error: Error?) -> Void)
```

Your cards out for grading (runs and Direct), newest first. active=1 keeps only the ones still in flight.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let active = "active_example" // String | Only cards that have not finished. (optional)

// Your cards out for grading (runs and Direct), newest first. active=1 keeps only the ones still in flight.
GradingAPI.listGradingSubmissions(active: active) { (response, error) in
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
 **active** | **String** | Only cards that have not finished. | [optional] 

### Return type

**ListGradingSubmissionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketGradingCandidates**
```swift
    open class func listVaultMarketGradingCandidates(completion: @escaping (_ data: ListVaultMarketGradingCandidatesResponse?, _ error: Error?) -> Void)
```

What you can send to grading: raw units already in your vault and inventory items, each with a declared value to start from and the reason when one cannot go.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What you can send to grading: raw units already in your vault and inventory items, each with a declared value to start from and the reason when one cannot go.
GradingAPI.listVaultMarketGradingCandidates() { (response, error) in
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

**ListVaultMarketGradingCandidatesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listVaultMarketGradingOrders**
```swift
    open class func listVaultMarketGradingOrders(completion: @escaping (_ data: ListVaultMarketGradingOrdersResponse?, _ error: Error?) -> Void)
```

Your grading submissions, newest first. Filter by status, active, grader, tier and dates; q searches the number, card names and cert numbers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your grading submissions, newest first. Filter by status, active, grader, tier and dates; q searches the number, card names and cert numbers.
GradingAPI.listVaultMarketGradingOrders() { (response, error) in
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

**ListVaultMarketGradingOrdersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

