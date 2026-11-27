# BooksAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBookExpense**](BooksAPI.md#createbookexpense) | **POST** /v1/books/expenses | Log a business expense: date, amountCents, a Schedule C category, vendor, description, receipt link, optionally recurring monthly or yearly.
[**deleteBookExpense**](BooksAPI.md#deletebookexpense) | **DELETE** /v1/books/expenses/{id} | Delete a logged expense. It leaves the P&amp;L and the exports.
[**getBook**](BooksAPI.md#getbook) | **GET** /v1/books | Profit and loss for a year and period on the Schedule C lines: income, COGS, gross profit, expenses (marketplace fees, postage, mileage, your categories), net profit, monthly table, per-marketplace table with 1099-K expectations, Part III COGS, estimated tax and sales tax collected by marketplaces. Money in cents.
[**getBook1099k**](BooksAPI.md#getbook1099k) | **GET** /v1/books/1099k | Per marketplace for a year: the 1099-K gross you recorded beside the gross Crossly computed, the difference, and whether a form is expected (federal: over $20,000 and over 200 transactions).
[**getBookExpense**](BooksAPI.md#getbookexpense) | **GET** /v1/books/expenses | Your logged business expenses in a year and period (recurring ones expanded), with their Schedule C category. Amounts in cents.
[**getBookTaxProfile**](BooksAPI.md#getbooktaxprofile) | **GET** /v1/books/tax-profile | Your tax profile: time zone for books boundaries, filing status, state, set-aside and rate assumptions, accounting method, and business name, EIN and address.
[**getBookTransaction**](BooksAPI.md#getbooktransaction) | **GET** /v1/books/transactions | The sale rows behind any P&amp;L line, newest first: gross, refunded, fee and fee source, shipping, COGS, tax collected and net, in cents.
[**updateBook1099k**](BooksAPI.md#updatebook1099k) | **PUT** /v1/books/1099k | Record what a marketplace reported on its 1099-K for a year (gross in cents, transactions, notes). Answers the year&#39;s reconciliation, as GET /v1/books/1099k does.
[**updateBookExpense**](BooksAPI.md#updatebookexpense) | **PATCH** /v1/books/expenses/{id} | Change a logged expense.
[**updateBookTaxProfile**](BooksAPI.md#updatebooktaxprofile) | **PUT** /v1/books/tax-profile | Update your tax profile: time zone, filing status, state, set-aside and rate assumptions (basis points), accounting method, business name, EIN and address. Fields left out are unchanged.


# **createBookExpense**
```swift
    open class func createBookExpense(completion: @escaping (_ data: CreateBookExpenseResponse?, _ error: Error?) -> Void)
```

Log a business expense: date, amountCents, a Schedule C category, vendor, description, receipt link, optionally recurring monthly or yearly.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Log a business expense: date, amountCents, a Schedule C category, vendor, description, receipt link, optionally recurring monthly or yearly.
BooksAPI.createBookExpense() { (response, error) in
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

**CreateBookExpenseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBookExpense**
```swift
    open class func deleteBookExpense(id: UUID, completion: @escaping (_ data: DeleteStoryResponse?, _ error: Error?) -> Void)
```

Delete a logged expense. It leaves the P&L and the exports.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | The expense id.

// Delete a logged expense. It leaves the P&L and the exports.
BooksAPI.deleteBookExpense(id: id) { (response, error) in
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
 **id** | **UUID** | The expense id. | 

### Return type

**DeleteStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBook**
```swift
    open class func getBook(year: Int? = nil, period: Period_getBook? = nil, tz: String? = nil, completion: @escaping (_ data: GetBookResponse?, _ error: Error?) -> Void)
```

Profit and loss for a year and period on the Schedule C lines: income, COGS, gross profit, expenses (marketplace fees, postage, mileage, your categories), net profit, monthly table, per-marketplace table with 1099-K expectations, Part III COGS, estimated tax and sales tax collected by marketplaces. Money in cents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let year = 987 // Int | Tax year. Default the current year. (optional)
let period = "period_example" // String | fy = full year (default), ytd, q1-q4, m01-m12. Boundaries are in your tax-profile time zone. (optional)
let tz = "tz_example" // String | IANA zone; default your tax profile zone. (optional)

// Profit and loss for a year and period on the Schedule C lines: income, COGS, gross profit, expenses (marketplace fees, postage, mileage, your categories), net profit, monthly table, per-marketplace table with 1099-K expectations, Part III COGS, estimated tax and sales tax collected by marketplaces. Money in cents.
BooksAPI.getBook(year: year, period: period, tz: tz) { (response, error) in
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
 **year** | **Int** | Tax year. Default the current year. | [optional] 
 **period** | **String** | fy &#x3D; full year (default), ytd, q1-q4, m01-m12. Boundaries are in your tax-profile time zone. | [optional] 
 **tz** | **String** | IANA zone; default your tax profile zone. | [optional] 

### Return type

**GetBookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBook1099k**
```swift
    open class func getBook1099k(year: Int? = nil, completion: @escaping (_ data: GetBook1099kResponse?, _ error: Error?) -> Void)
```

Per marketplace for a year: the 1099-K gross you recorded beside the gross Crossly computed, the difference, and whether a form is expected (federal: over $20,000 and over 200 transactions).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let year = 987 // Int | Tax year. Default the current year. (optional)

// Per marketplace for a year: the 1099-K gross you recorded beside the gross Crossly computed, the difference, and whether a form is expected (federal: over $20,000 and over 200 transactions).
BooksAPI.getBook1099k(year: year) { (response, error) in
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
 **year** | **Int** | Tax year. Default the current year. | [optional] 

### Return type

**GetBook1099kResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBookExpense**
```swift
    open class func getBookExpense(year: Int? = nil, period: Period_getBookExpense? = nil, category: String? = nil, page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: GetBookExpenseResponse?, _ error: Error?) -> Void)
```

Your logged business expenses in a year and period (recurring ones expanded), with their Schedule C category. Amounts in cents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let year = 987 // Int | Tax year. Default the current year. (optional)
let period = "period_example" // String | fy = full year (default), ytd, q1-q4, m01-m12. Boundaries are in your tax-profile time zone. (optional)
let category = "category_example" // String | An expense category id, e.g. supplies, postage, software_subscriptions. (optional)
let page = 987 // Int | 1-indexed page. Default 1. (optional)
let size = 987 // Int | Rows per page, at most 100. Default 25. (optional)

// Your logged business expenses in a year and period (recurring ones expanded), with their Schedule C category. Amounts in cents.
BooksAPI.getBookExpense(year: year, period: period, category: category, page: page, size: size) { (response, error) in
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
 **year** | **Int** | Tax year. Default the current year. | [optional] 
 **period** | **String** | fy &#x3D; full year (default), ytd, q1-q4, m01-m12. Boundaries are in your tax-profile time zone. | [optional] 
 **category** | **String** | An expense category id, e.g. supplies, postage, software_subscriptions. | [optional] 
 **page** | **Int** | 1-indexed page. Default 1. | [optional] 
 **size** | **Int** | Rows per page, at most 100. Default 25. | [optional] 

### Return type

**GetBookExpenseResponse**

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
BooksAPI.getBookTaxProfile() { (response, error) in
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

# **getBookTransaction**
```swift
    open class func getBookTransaction(year: Int? = nil, period: Period_getBookTransaction? = nil, tz: String? = nil, platform: String? = nil, status: Status_getBookTransaction? = nil, page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: GetBookTransactionResponse?, _ error: Error?) -> Void)
```

The sale rows behind any P&L line, newest first: gross, refunded, fee and fee source, shipping, COGS, tax collected and net, in cents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let year = 987 // Int | Tax year. Default the current year. (optional)
let period = "period_example" // String | fy = full year (default), ytd, q1-q4, m01-m12. Boundaries are in your tax-profile time zone. (optional)
let tz = "tz_example" // String | IANA zone; default your tax profile zone. (optional)
let platform = "platform_example" // String | One platform id. (optional)
let status = "status_example" // String | completed = counted in income; pending = details not in yet (no money); default all. (optional)
let page = 987 // Int | 1-indexed page. Default 1. (optional)
let size = 987 // Int | Rows per page, at most 100. Default 50. (optional)

// The sale rows behind any P&L line, newest first: gross, refunded, fee and fee source, shipping, COGS, tax collected and net, in cents.
BooksAPI.getBookTransaction(year: year, period: period, tz: tz, platform: platform, status: status, page: page, size: size) { (response, error) in
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
 **year** | **Int** | Tax year. Default the current year. | [optional] 
 **period** | **String** | fy &#x3D; full year (default), ytd, q1-q4, m01-m12. Boundaries are in your tax-profile time zone. | [optional] 
 **tz** | **String** | IANA zone; default your tax profile zone. | [optional] 
 **platform** | **String** | One platform id. | [optional] 
 **status** | **String** | completed &#x3D; counted in income; pending &#x3D; details not in yet (no money); default all. | [optional] 
 **page** | **Int** | 1-indexed page. Default 1. | [optional] 
 **size** | **Int** | Rows per page, at most 100. Default 50. | [optional] 

### Return type

**GetBookTransactionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBook1099k**
```swift
    open class func updateBook1099k(completion: @escaping (_ data: GetBook1099kResponse?, _ error: Error?) -> Void)
```

Record what a marketplace reported on its 1099-K for a year (gross in cents, transactions, notes). Answers the year's reconciliation, as GET /v1/books/1099k does.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Record what a marketplace reported on its 1099-K for a year (gross in cents, transactions, notes). Answers the year's reconciliation, as GET /v1/books/1099k does.
BooksAPI.updateBook1099k() { (response, error) in
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

**GetBook1099kResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBookExpense**
```swift
    open class func updateBookExpense(id: UUID, completion: @escaping (_ data: CreateBookExpenseResponse?, _ error: Error?) -> Void)
```

Change a logged expense.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | The expense id.

// Change a logged expense.
BooksAPI.updateBookExpense(id: id) { (response, error) in
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
 **id** | **UUID** | The expense id. | 

### Return type

**CreateBookExpenseResponse**

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
BooksAPI.updateBookTaxProfile() { (response, error) in
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

