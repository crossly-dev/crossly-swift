# DiscountsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAutomaticDiscount**](DiscountsAPI.md#createautomaticdiscount) | **POST** /v1/automatic-discounts | Create an automatic discount.
[**createAutomaticDiscountPreview**](DiscountsAPI.md#createautomaticdiscountpreview) | **POST** /v1/automatic-discounts/preview | Preview a hypothetical cart of your listings against your automatic discounts (or an unsaved draft): what each line gets.
[**createDiscountCode**](DiscountsAPI.md#creatediscountcode) | **POST** /v1/discount-codes | Create a discount code: percent, fixed, free shipping, buy X get Y, spend tiers or a set price, with requirements, item scope, limits (total, per buyer, per day, budget, regions), schedule and stacking.
[**createDiscountCodeGenerate**](DiscountsAPI.md#creatediscountcodegenerate) | **POST** /v1/discount-codes/{id}/generate | Generate up to 5,000 unique single-use codes with this code’s rules (their uses count toward its limits).
[**createDiscountCodeStatus**](DiscountsAPI.md#creatediscountcodestatus) | **POST** /v1/discount-codes/{id}/status | Pause, resume (active) or archive a discount code.
[**createDiscountHolder**](DiscountsAPI.md#creatediscountholder) | **POST** /v1/discounts/holders | Create a Collection holders deal in the store (X-Storefront-Id; default store when omitted).
[**deleteAutomaticDiscount**](DiscountsAPI.md#deleteautomaticdiscount) | **DELETE** /v1/automatic-discounts/{id} | Delete an automatic discount.
[**deleteDiscountHolder**](DiscountsAPI.md#deletediscountholder) | **DELETE** /v1/discounts/holders/{id} | Delete a Collection holders deal. Returns &#x60;{ ok }&#x60;.
[**getDiscountCode**](DiscountsAPI.md#getdiscountcode) | **GET** /v1/discount-codes/{id} | One discount code with its rules and usage.
[**getDiscountCodeShare**](DiscountsAPI.md#getdiscountcodeshare) | **GET** /v1/discount-codes/{id}/share | The share link that pre-applies the code at checkout (the store page with ?code&#x3D;) and a QR code of it as a PNG data URL.
[**getDiscountHolder**](DiscountsAPI.md#getdiscountholder) | **GET** /v1/discounts/holders/{id} | One Collection holders deal with its usage (uses, cents given).
[**listAutomaticDiscounts**](DiscountsAPI.md#listautomaticdiscounts) | **GET** /v1/automatic-discounts | Your automatic discounts (buy more, save more): quantity and mixed-item tiers, scope, channels and schedule.
[**listDiscountCodeRedemptions**](DiscountsAPI.md#listdiscountcoderedemptions) | **GET** /v1/discount-codes/{id}/redemptions | A code’s usage history: orders, masked buyers, region, channel and the amount given, newest first.
[**listDiscountCodes**](DiscountsAPI.md#listdiscountcodes) | **GET** /v1/discount-codes | Your discount codes: kind, status (active, scheduled, paused, expired, exhausted, archived), every rule, and usage.
[**listDiscountHolders**](DiscountsAPI.md#listdiscountholders) | **GET** /v1/discounts/holders | The store’s Collection holders deals: a percent off for buyers holding any token of a collection (by chain + contract), with scope, channels, schedule, stacking and limits.
[**updateAutomaticDiscount**](DiscountsAPI.md#updateautomaticdiscount) | **PUT** /v1/automatic-discounts/{id} | Replace an automatic discount.
[**updateDiscountCode**](DiscountsAPI.md#updatediscountcode) | **PATCH** /v1/discount-codes/{id} | Update a discount code. The code itself can be renamed only until it is first used.
[**updateDiscountHolder**](DiscountsAPI.md#updatediscountholder) | **PUT** /v1/discounts/holders/{id} | Replace a Collection holders deal.


# **createAutomaticDiscount**
```swift
    open class func createAutomaticDiscount(completion: @escaping (_ data: CreateAutomaticDiscountResponse?, _ error: Error?) -> Void)
```

Create an automatic discount.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create an automatic discount.
DiscountsAPI.createAutomaticDiscount() { (response, error) in
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

**CreateAutomaticDiscountResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAutomaticDiscountPreview**
```swift
    open class func createAutomaticDiscountPreview(completion: @escaping (_ data: CreateAutomaticDiscountPreviewResponse?, _ error: Error?) -> Void)
```

Preview a hypothetical cart of your listings against your automatic discounts (or an unsaved draft): what each line gets.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Preview a hypothetical cart of your listings against your automatic discounts (or an unsaved draft): what each line gets.
DiscountsAPI.createAutomaticDiscountPreview() { (response, error) in
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

**CreateAutomaticDiscountPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDiscountCode**
```swift
    open class func createDiscountCode(completion: @escaping (_ data: DiscountCodeResponse?, _ error: Error?) -> Void)
```

Create a discount code: percent, fixed, free shipping, buy X get Y, spend tiers or a set price, with requirements, item scope, limits (total, per buyer, per day, budget, regions), schedule and stacking.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a discount code: percent, fixed, free shipping, buy X get Y, spend tiers or a set price, with requirements, item scope, limits (total, per buyer, per day, budget, regions), schedule and stacking.
DiscountsAPI.createDiscountCode() { (response, error) in
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

**DiscountCodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDiscountCodeGenerate**
```swift
    open class func createDiscountCodeGenerate(id: String, completion: @escaping (_ data: CreateDiscountCodeGenerateResponse?, _ error: Error?) -> Void)
```

Generate up to 5,000 unique single-use codes with this code’s rules (their uses count toward its limits).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Generate up to 5,000 unique single-use codes with this code’s rules (their uses count toward its limits).
DiscountsAPI.createDiscountCodeGenerate(id: id) { (response, error) in
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

**CreateDiscountCodeGenerateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDiscountCodeStatus**
```swift
    open class func createDiscountCodeStatus(id: String, completion: @escaping (_ data: DiscountCodeResponse?, _ error: Error?) -> Void)
```

Pause, resume (active) or archive a discount code.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pause, resume (active) or archive a discount code.
DiscountsAPI.createDiscountCodeStatus(id: id) { (response, error) in
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

**DiscountCodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDiscountHolder**
```swift
    open class func createDiscountHolder(completion: @escaping (_ data: CreateDiscountHolderResponse?, _ error: Error?) -> Void)
```

Create a Collection holders deal in the store (X-Storefront-Id; default store when omitted).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a Collection holders deal in the store (X-Storefront-Id; default store when omitted).
DiscountsAPI.createDiscountHolder() { (response, error) in
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

**CreateDiscountHolderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteAutomaticDiscount**
```swift
    open class func deleteAutomaticDiscount(id: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Delete an automatic discount.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete an automatic discount.
DiscountsAPI.deleteAutomaticDiscount(id: id) { (response, error) in
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

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteDiscountHolder**
```swift
    open class func deleteDiscountHolder(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete a Collection holders deal. Returns `{ ok }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a Collection holders deal. Returns `{ ok }`.
DiscountsAPI.deleteDiscountHolder(id: id) { (response, error) in
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

# **getDiscountCode**
```swift
    open class func getDiscountCode(id: String, completion: @escaping (_ data: GetDiscountCodeResponse?, _ error: Error?) -> Void)
```

One discount code with its rules and usage.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One discount code with its rules and usage.
DiscountsAPI.getDiscountCode(id: id) { (response, error) in
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

**GetDiscountCodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getDiscountCodeShare**
```swift
    open class func getDiscountCodeShare(id: String, completion: @escaping (_ data: GetDiscountCodeShareResponse?, _ error: Error?) -> Void)
```

The share link that pre-applies the code at checkout (the store page with ?code=) and a QR code of it as a PNG data URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The share link that pre-applies the code at checkout (the store page with ?code=) and a QR code of it as a PNG data URL.
DiscountsAPI.getDiscountCodeShare(id: id) { (response, error) in
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

**GetDiscountCodeShareResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getDiscountHolder**
```swift
    open class func getDiscountHolder(id: UUID, completion: @escaping (_ data: GetDiscountHolderResponse?, _ error: Error?) -> Void)
```

One Collection holders deal with its usage (uses, cents given).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// One Collection holders deal with its usage (uses, cents given).
DiscountsAPI.getDiscountHolder(id: id) { (response, error) in
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

**GetDiscountHolderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listAutomaticDiscounts**
```swift
    open class func listAutomaticDiscounts(completion: @escaping (_ data: ListAutomaticDiscountsResponse?, _ error: Error?) -> Void)
```

Your automatic discounts (buy more, save more): quantity and mixed-item tiers, scope, channels and schedule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your automatic discounts (buy more, save more): quantity and mixed-item tiers, scope, channels and schedule.
DiscountsAPI.listAutomaticDiscounts() { (response, error) in
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

**ListAutomaticDiscountsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listDiscountCodeRedemptions**
```swift
    open class func listDiscountCodeRedemptions(id: String, completion: @escaping (_ data: ListDiscountCodeRedemptionsResponse?, _ error: Error?) -> Void)
```

A code’s usage history: orders, masked buyers, region, channel and the amount given, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A code’s usage history: orders, masked buyers, region, channel and the amount given, newest first.
DiscountsAPI.listDiscountCodeRedemptions(id: id) { (response, error) in
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

**ListDiscountCodeRedemptionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listDiscountCodes**
```swift
    open class func listDiscountCodes(completion: @escaping (_ data: ListDiscountCodesResponse?, _ error: Error?) -> Void)
```

Your discount codes: kind, status (active, scheduled, paused, expired, exhausted, archived), every rule, and usage.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your discount codes: kind, status (active, scheduled, paused, expired, exhausted, archived), every rule, and usage.
DiscountsAPI.listDiscountCodes() { (response, error) in
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

**ListDiscountCodesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listDiscountHolders**
```swift
    open class func listDiscountHolders(completion: @escaping (_ data: ListDiscountHoldersResponse?, _ error: Error?) -> Void)
```

The store’s Collection holders deals: a percent off for buyers holding any token of a collection (by chain + contract), with scope, channels, schedule, stacking and limits.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The store’s Collection holders deals: a percent off for buyers holding any token of a collection (by chain + contract), with scope, channels, schedule, stacking and limits.
DiscountsAPI.listDiscountHolders() { (response, error) in
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

**ListDiscountHoldersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateAutomaticDiscount**
```swift
    open class func updateAutomaticDiscount(id: String, completion: @escaping (_ data: CreateAutomaticDiscountResponse?, _ error: Error?) -> Void)
```

Replace an automatic discount.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Replace an automatic discount.
DiscountsAPI.updateAutomaticDiscount(id: id) { (response, error) in
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

**CreateAutomaticDiscountResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateDiscountCode**
```swift
    open class func updateDiscountCode(id: String, completion: @escaping (_ data: DiscountCodeResponse?, _ error: Error?) -> Void)
```

Update a discount code. The code itself can be renamed only until it is first used.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Update a discount code. The code itself can be renamed only until it is first used.
DiscountsAPI.updateDiscountCode(id: id) { (response, error) in
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

**DiscountCodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateDiscountHolder**
```swift
    open class func updateDiscountHolder(id: UUID, completion: @escaping (_ data: CreateDiscountHolderResponse?, _ error: Error?) -> Void)
```

Replace a Collection holders deal.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Replace a Collection holders deal.
DiscountsAPI.updateDiscountHolder(id: id) { (response, error) in
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

**CreateDiscountHolderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

