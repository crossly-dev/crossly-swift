# TaxAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMileage**](TaxAPI.md#createmileage) | **POST** /v1/mileage | Create a mileage entry.
[**deleteMileage**](TaxAPI.md#deletemileage) | **DELETE** /v1/mileage/{id} | Delete a mileage entry.
[**getBookTaxProfile**](TaxAPI.md#getbooktaxprofile) | **GET** /v1/books/tax-profile | Your tax profile: time zone for books boundaries, filing status, state, set-aside and rate assumptions, accounting method, and business name, EIN and address.
[**getMileageSummary**](TaxAPI.md#getmileagesummary) | **GET** /v1/mileage/summary | Annual mileage totals + IRS deduction. Each trip is priced at the IRS rate on its own date (2026 has two rates, listed in &#x60;rates&#x60;); &#x60;ratePerMile&#x60; is the January rate.
[**getOrderSalesTax**](TaxAPI.md#getordersalestax) | **GET** /v1/orders/{id}/sales-tax | Who collected sales tax on one Crossly marketplace order, where, and the seller notice.
[**getTaxSalesTax**](TaxAPI.md#gettaxsalestax) | **GET** /v1/tax/sales-tax | Crossly marketplace sales Crossly did not collect sales tax on, by jurisdiction.
[**getTaxScheduleC**](TaxAPI.md#gettaxschedulec) | **GET** /v1/tax/schedule-c | Schedule C JSON for a tax year (default the current year), from the same P&amp;L as GET /v1/books: line 1 gross receipts before refunds, line 2 refunds, COGS in Part III, completed sales only. GET /v1/books has the full P&amp;L by period.
[**listMileage**](TaxAPI.md#listmileage) | **GET** /v1/mileage | List mileage entries, newest trip first, paged (limit up to 500). Narrow by year and/or an inclusive from/to date range.
[**listTaxCrosslyCollects**](TaxAPI.md#listtaxcrosslycollects) | **GET** /v1/tax/crossly-collects | Where Crossly collects sales tax today (its active Stripe Tax registrations).
[**listTaxSalesTaxNotCollected**](TaxAPI.md#listtaxsalestaxnotcollected) | **GET** /v1/tax/sales-tax/not-collected | The individual Crossly sales Crossly did not collect sales tax on, newest first.
[**updateBookTaxProfile**](TaxAPI.md#updatebooktaxprofile) | **PUT** /v1/books/tax-profile | Update your tax profile: time zone, filing status, state, set-aside and rate assumptions (basis points), accounting method, business name, EIN and address. Fields left out are unchanged.
[**updateMileage**](TaxAPI.md#updatemileage) | **PATCH** /v1/mileage/{id} | Update a mileage entry.


# **createMileage**
```swift
    open class func createMileage(completion: @escaping (_ data: CreateMileageResponse?, _ error: Error?) -> Void)
```

Create a mileage entry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a mileage entry.
TaxAPI.createMileage() { (response, error) in
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

**CreateMileageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteMileage**
```swift
    open class func deleteMileage(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete a mileage entry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a mileage entry.
TaxAPI.deleteMileage(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBookTaxProfile**
```swift
    open class func getBookTaxProfile(completion: @escaping (_ data: GetBookTaxProfileResponse?, _ error: Error?) -> Void)
```

Your tax profile: time zone for books boundaries, filing status, state, set-aside and rate assumptions, accounting method, and business name, EIN and address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your tax profile: time zone for books boundaries, filing status, state, set-aside and rate assumptions, accounting method, and business name, EIN and address.
TaxAPI.getBookTaxProfile() { (response, error) in
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

**GetBookTaxProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getMileageSummary**
```swift
    open class func getMileageSummary(year: Int? = nil, completion: @escaping (_ data: GetMileageSummaryResponse?, _ error: Error?) -> Void)
```

Annual mileage totals + IRS deduction. Each trip is priced at the IRS rate on its own date (2026 has two rates, listed in `rates`); `ratePerMile` is the January rate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let year = 987 // Int | Calendar tax year. Default the current year. (optional)

// Annual mileage totals + IRS deduction. Each trip is priced at the IRS rate on its own date (2026 has two rates, listed in `rates`); `ratePerMile` is the January rate.
TaxAPI.getMileageSummary(year: year) { (response, error) in
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
 **year** | **Int** | Calendar tax year. Default the current year. | [optional] 

### Return type

**GetMileageSummaryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderSalesTax**
```swift
    open class func getOrderSalesTax(id: UUID, completion: @escaping (_ data: GetOrderSalesTaxResponse?, _ error: Error?) -> Void)
```

Who collected sales tax on one Crossly marketplace order, where, and the seller notice.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Who collected sales tax on one Crossly marketplace order, where, and the seller notice.
TaxAPI.getOrderSalesTax(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderSalesTaxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTaxSalesTax**
```swift
    open class func getTaxSalesTax(from: String? = nil, to: String? = nil, completion: @escaping (_ data: GetTaxSalesTaxResponse?, _ error: Error?) -> Void)
```

Crossly marketplace sales Crossly did not collect sales tax on, by jurisdiction.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let from = "from_example" // String | YYYY-MM-DD, inclusive. Default 1 January this year. (optional)
let to = "to_example" // String | YYYY-MM-DD, inclusive. Default now. (optional)

// Crossly marketplace sales Crossly did not collect sales tax on, by jurisdiction.
TaxAPI.getTaxSalesTax(from: from, to: to) { (response, error) in
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
 **from** | **String** | YYYY-MM-DD, inclusive. Default 1 January this year. | [optional] 
 **to** | **String** | YYYY-MM-DD, inclusive. Default now. | [optional] 

### Return type

**GetTaxSalesTaxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTaxScheduleC**
```swift
    open class func getTaxScheduleC(completion: @escaping (_ data: GetTaxScheduleCResponse?, _ error: Error?) -> Void)
```

Schedule C JSON for a tax year (default the current year), from the same P&L as GET /v1/books: line 1 gross receipts before refunds, line 2 refunds, COGS in Part III, completed sales only. GET /v1/books has the full P&L by period.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Schedule C JSON for a tax year (default the current year), from the same P&L as GET /v1/books: line 1 gross receipts before refunds, line 2 refunds, COGS in Part III, completed sales only. GET /v1/books has the full P&L by period.
TaxAPI.getTaxScheduleC() { (response, error) in
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

**GetTaxScheduleCResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listMileage**
```swift
    open class func listMileage(year: Int? = nil, from: String? = nil, to: String? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: ListMileageResponse?, _ error: Error?) -> Void)
```

List mileage entries, newest trip first, paged (limit up to 500). Narrow by year and/or an inclusive from/to date range.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let year = 987 // Int | Only trips dated in this calendar year. (optional)
let from = "from_example" // String | YYYY-MM-DD, inclusive. Only trips on or after this date. Combines with year. (optional)
let to = "to_example" // String | YYYY-MM-DD, inclusive. Only trips on or before this date; from <= to. (optional)
let page = 987 // Int | 1-indexed page. Default 1. (optional)
let limit = 987 // Int | Rows per page, default 100, clamped to 500. (optional)

// List mileage entries, newest trip first, paged (limit up to 500). Narrow by year and/or an inclusive from/to date range.
TaxAPI.listMileage(year: year, from: from, to: to, page: page, limit: limit) { (response, error) in
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
 **year** | **Int** | Only trips dated in this calendar year. | [optional] 
 **from** | **String** | YYYY-MM-DD, inclusive. Only trips on or after this date. Combines with year. | [optional] 
 **to** | **String** | YYYY-MM-DD, inclusive. Only trips on or before this date; from &lt;&#x3D; to. | [optional] 
 **page** | **Int** | 1-indexed page. Default 1. | [optional] 
 **limit** | **Int** | Rows per page, default 100, clamped to 500. | [optional] 

### Return type

**ListMileageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listTaxCrosslyCollects**
```swift
    open class func listTaxCrosslyCollects(completion: @escaping (_ data: ListTaxCrosslyCollectsResponse?, _ error: Error?) -> Void)
```

Where Crossly collects sales tax today (its active Stripe Tax registrations).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Where Crossly collects sales tax today (its active Stripe Tax registrations).
TaxAPI.listTaxCrosslyCollects() { (response, error) in
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

**ListTaxCrosslyCollectsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listTaxSalesTaxNotCollected**
```swift
    open class func listTaxSalesTaxNotCollected(from: String? = nil, to: String? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: ListTaxSalesTaxNotCollectedResponse?, _ error: Error?) -> Void)
```

The individual Crossly sales Crossly did not collect sales tax on, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let from = "from_example" // String |  (optional)
let to = "to_example" // String |  (optional)
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)

// The individual Crossly sales Crossly did not collect sales tax on, newest first.
TaxAPI.listTaxSalesTaxNotCollected(from: from, to: to, page: page, limit: limit) { (response, error) in
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
 **from** | **String** |  | [optional] 
 **to** | **String** |  | [optional] 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

**ListTaxSalesTaxNotCollectedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBookTaxProfile**
```swift
    open class func updateBookTaxProfile(completion: @escaping (_ data: GetBookTaxProfileResponse?, _ error: Error?) -> Void)
```

Update your tax profile: time zone, filing status, state, set-aside and rate assumptions (basis points), accounting method, business name, EIN and address. Fields left out are unchanged.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Update your tax profile: time zone, filing status, state, set-aside and rate assumptions (basis points), accounting method, business name, EIN and address. Fields left out are unchanged.
TaxAPI.updateBookTaxProfile() { (response, error) in
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

**GetBookTaxProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateMileage**
```swift
    open class func updateMileage(id: UUID, completion: @escaping (_ data: CreateMileageResponse?, _ error: Error?) -> Void)
```

Update a mileage entry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Update a mileage entry.
TaxAPI.updateMileage(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateMileageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

