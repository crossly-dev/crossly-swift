# GradingAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGradingDirect**](GradingAPI.md#creategradingdirect) | **POST** /v1/grading/direct | Track a card you sent on your own grader account (Direct). Crossly takes no money; it verifies the cert when it comes back.
[**createGradingRunReserve**](GradingAPI.md#creategradingrunreserve) | **POST** /v1/grading/runs/{id}/reserve | Hold a slot in a Grading Run. Free now; charged on your saved card only if the run locks. Full-access token and Idempotency-Key required.
[**createGradingSubmissionCancel**](GradingAPI.md#creategradingsubmissioncancel) | **POST** /v1/grading/submissions/{id}/cancel | Pull a reserved card out of its run. Only while it is reserved; nothing was charged.
[**createGradingSubmissionResult**](GradingAPI.md#creategradingsubmissionresult) | **POST** /v1/grading/submissions/{id}/result | Direct only: enter the grade that came back. Writes it to the item and its listings, verified when the cert agrees.
[**createGradingSubmissionShipped**](GradingAPI.md#creategradingsubmissionshipped) | **POST** /v1/grading/submissions/{id}/shipped | Say you mailed a charged card to the hub, with optional tracking.
[**createGradingVerifyCert**](GradingAPI.md#creategradingverifycert) | **POST** /v1/grading/verify-cert | Look a cert number up with its grader. found&#x3D;false when the grader has no record.
[**getGradingWorth**](GradingAPI.md#getgradingworth) | **GET** /v1/grading/worth/{inventoryItemId} | Worth grading? Raw value vs what each grade is worth at each grader, against the cost. Never predicts the grade.
[**listGradingRateCard**](GradingAPI.md#listgradingratecard) | **GET** /v1/grading/rate-card | Every grader and tier Crossly can send to, with the per-card price in cents (null &#x3D; paused at the grader).
[**listGradingRuns**](GradingAPI.md#listgradingruns) | **GET** /v1/grading/runs | Grading Runs taking reservations now, soonest cutoff first. meta.open is false while runs are switched off.
[**listGradingSubmissions**](GradingAPI.md#listgradingsubmissions) | **GET** /v1/grading/submissions | Your cards out for grading (runs and Direct), newest first. active&#x3D;1 keeps only the ones still in flight.


# **createGradingDirect**
```swift
    open class func createGradingDirect(completion: @escaping (_ data: IdResponse?, _ error: Error?) -> Void)
```

Track a card you sent on your own grader account (Direct). Crossly takes no money; it verifies the cert when it comes back.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Track a card you sent on your own grader account (Direct). Crossly takes no money; it verifies the cert when it comes back.
GradingAPI.createGradingDirect() { (response, error) in
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

**IdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

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

# **createGradingSubmissionResult**
```swift
    open class func createGradingSubmissionResult(id: String, completion: @escaping (_ data: CreateGradingSubmissionResultResponse?, _ error: Error?) -> Void)
```

Direct only: enter the grade that came back. Writes it to the item and its listings, verified when the cert agrees.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Direct only: enter the grade that came back. Writes it to the item and its listings, verified when the cert agrees.
GradingAPI.createGradingSubmissionResult(id: id) { (response, error) in
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

**CreateGradingSubmissionResultResponse**

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

