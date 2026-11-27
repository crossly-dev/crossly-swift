# TaxonomyAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCategoryById**](TaxonomyAPI.md#getcategorybyid) | **GET** /v1/categories/{id} | One canonical category and the category it maps to on each marketplace.
[**getTaxonomyCategory**](TaxonomyAPI.md#gettaxonomycategory) | **GET** /v1/taxonomy/{platform}/categories | Categories for a platform. Default is top-level; pass &#x60;?parent&#x3D;&lt;categoryId&gt;&#x60; to drill down one level (supported on cookie platforms whose recipe returns flat parent_id-linked rows).
[**getTaxonomyCategoryAspect**](TaxonomyAPI.md#gettaxonomycategoryaspect) | **GET** /v1/taxonomy/{platform}/categories/{id}/aspects | Item-specific aspects (eBay) / properties (Etsy) / hard-coded enums (cookie platforms) for a category.
[**getTaxonomyCategoryChildren**](TaxonomyAPI.md#gettaxonomycategorychildren) | **GET** /v1/taxonomy/{platform}/categories/{id}/children | Direct children of a category node.
[**getTaxonomyRequiredField**](TaxonomyAPI.md#gettaxonomyrequiredfield) | **GET** /v1/taxonomy/{platform}/required-fields | Normalized field schema the seller needs to fill before crossposting to this platform. Combines master fields (title/description/price/condition) with platform-specific overrides.
[**listCategoryAspects**](TaxonomyAPI.md#listcategoryaspects) | **GET** /v1/categories/{id}/aspects | Item specifics for a canonical category: required/optional, known values, per-marketplace names.
[**listCategorySearch**](TaxonomyAPI.md#listcategorysearch) | **GET** /v1/categories/search | Search or browse Crossly&#39;s canonical categories (the ids listings take as categoryId).
[**listTaxonomyEbayCharities**](TaxonomyAPI.md#listtaxonomyebaycharities) | **GET** /v1/taxonomy/ebay/charities | Search eBay for Charity organisations (the charityId an eBay listing donates to).
[**listTaxonomySuggest**](TaxonomyAPI.md#listtaxonomysuggest) | **GET** /v1/taxonomy/{platform}/suggest | Reverse lookup — suggest categories matching a search phrase: eBay live; Poshmark, Mercari, Depop, Grailed, Vinted, Whatnot, Vestiaire, OfferUp, Facebook and Curtsy over their harvested trees. Etsy answers an empty list (browse its tree instead).


# **getCategoryById**
```swift
    open class func getCategoryById(id: String, completion: @escaping (_ data: GetCategoryByIdResponse?, _ error: Error?) -> Void)
```

One canonical category and the category it maps to on each marketplace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One canonical category and the category it maps to on each marketplace.
TaxonomyAPI.getCategoryById(id: id) { (response, error) in
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

**GetCategoryByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTaxonomyCategory**
```swift
    open class func getTaxonomyCategory(platform: String, parent: String? = nil, completion: @escaping (_ data: GetTaxonomyCategoryResponse?, _ error: Error?) -> Void)
```

Categories for a platform. Default is top-level; pass `?parent=<categoryId>` to drill down one level (supported on cookie platforms whose recipe returns flat parent_id-linked rows).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let parent = "parent_example" // String |  (optional)

// Categories for a platform. Default is top-level; pass `?parent=<categoryId>` to drill down one level (supported on cookie platforms whose recipe returns flat parent_id-linked rows).
TaxonomyAPI.getTaxonomyCategory(platform: platform, parent: parent) { (response, error) in
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
 **platform** | **String** |  | 
 **parent** | **String** |  | [optional] 

### Return type

**GetTaxonomyCategoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTaxonomyCategoryAspect**
```swift
    open class func getTaxonomyCategoryAspect(platform: String, id: String, completion: @escaping (_ data: GetTaxonomyCategoryAspectResponse?, _ error: Error?) -> Void)
```

Item-specific aspects (eBay) / properties (Etsy) / hard-coded enums (cookie platforms) for a category.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let id = "id_example" // String | 

// Item-specific aspects (eBay) / properties (Etsy) / hard-coded enums (cookie platforms) for a category.
TaxonomyAPI.getTaxonomyCategoryAspect(platform: platform, id: id) { (response, error) in
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
 **platform** | **String** |  | 
 **id** | **String** |  | 

### Return type

**GetTaxonomyCategoryAspectResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTaxonomyCategoryChildren**
```swift
    open class func getTaxonomyCategoryChildren(platform: String, id: String, completion: @escaping (_ data: GetTaxonomyCategoryChildrenResponse?, _ error: Error?) -> Void)
```

Direct children of a category node.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let id = "id_example" // String | 

// Direct children of a category node.
TaxonomyAPI.getTaxonomyCategoryChildren(platform: platform, id: id) { (response, error) in
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
 **platform** | **String** |  | 
 **id** | **String** |  | 

### Return type

**GetTaxonomyCategoryChildrenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTaxonomyRequiredField**
```swift
    open class func getTaxonomyRequiredField(platform: String, categoryId: String? = nil, completion: @escaping (_ data: GetTaxonomyRequiredFieldResponse?, _ error: Error?) -> Void)
```

Normalized field schema the seller needs to fill before crossposting to this platform. Combines master fields (title/description/price/condition) with platform-specific overrides.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let categoryId = "categoryId_example" // String | Optional — used to inline aspects when present. (optional)

// Normalized field schema the seller needs to fill before crossposting to this platform. Combines master fields (title/description/price/condition) with platform-specific overrides.
TaxonomyAPI.getTaxonomyRequiredField(platform: platform, categoryId: categoryId) { (response, error) in
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
 **platform** | **String** |  | 
 **categoryId** | **String** | Optional — used to inline aspects when present. | [optional] 

### Return type

**GetTaxonomyRequiredFieldResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCategoryAspects**
```swift
    open class func listCategoryAspects(id: String, valuesLimit: Int? = nil, completion: @escaping (_ data: ListCategoryAspectsResponse?, _ error: Error?) -> Void)
```

Item specifics for a canonical category: required/optional, known values, per-marketplace names.

Required-ness and cardinality come from the eBay category the concept maps to. `freeText` = any text is accepted; otherwise `values` are the known values (up to `valuesLimit`). `marketplaces` gives the attribute name each marketplace uses for the aspect. Send them as `itemSpecifics` on POST /v1/listings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let valuesLimit = 987 // Int |  (optional) (default to 50)

// Item specifics for a canonical category: required/optional, known values, per-marketplace names.
TaxonomyAPI.listCategoryAspects(id: id, valuesLimit: valuesLimit) { (response, error) in
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
 **valuesLimit** | **Int** |  | [optional] [default to 50]

### Return type

**ListCategoryAspectsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCategorySearch**
```swift
    open class func listCategorySearch(q: String? = nil, path: String? = nil, limit: Int? = nil, completion: @escaping (_ data: ListCategorySearchResponse?, _ error: Error?) -> Void)
```

Search or browse Crossly's canonical categories (the ids listings take as categoryId).

`q` matches the category name and path. `path` (e.g. \"Clothing & Shoes > Men\") limits to one branch. Without `q`, `meta.branches` lists the next level under `path` (the root when omitted) so a client can walk the tree down to a leaf.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let q = "q_example" // String |  (optional)
let path = "path_example" // String |  (optional)
let limit = 987 // Int |  (optional) (default to 25)

// Search or browse Crossly's canonical categories (the ids listings take as categoryId).
TaxonomyAPI.listCategorySearch(q: q, path: path, limit: limit) { (response, error) in
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
 **q** | **String** |  | [optional] 
 **path** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] [default to 25]

### Return type

**ListCategorySearchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listTaxonomyEbayCharities**
```swift
    open class func listTaxonomyEbayCharities(q: String? = nil, limit: Int? = nil, marketplace: Marketplace_listTaxonomyEbayCharities? = nil, completion: @escaping (_ data: ListTaxonomyEbayCharitiesResponse?, _ error: Error?) -> Void)
```

Search eBay for Charity organisations (the charityId an eBay listing donates to).

Send the chosen `charityOrgId` as `overrides.ebay.charityId` with `overrides.ebay.donationPercentage` (10-100 in steps of 5) on a listing to donate that share of the eBay sale. `q` needs at least 2 characters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let q = "q_example" // String |  (optional)
let limit = 987 // Int |  (optional) (default to 20)
let marketplace = "marketplace_example" // String |  (optional) (default to .ebayUs)

// Search eBay for Charity organisations (the charityId an eBay listing donates to).
TaxonomyAPI.listTaxonomyEbayCharities(q: q, limit: limit, marketplace: marketplace) { (response, error) in
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
 **q** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] [default to 20]
 **marketplace** | **String** |  | [optional] [default to .ebayUs]

### Return type

**ListTaxonomyEbayCharitiesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listTaxonomySuggest**
```swift
    open class func listTaxonomySuggest(platform: String, q: String? = nil, completion: @escaping (_ data: ListTaxonomySuggestResponse?, _ error: Error?) -> Void)
```

Reverse lookup — suggest categories matching a search phrase: eBay live; Poshmark, Mercari, Depop, Grailed, Vinted, Whatnot, Vestiaire, OfferUp, Facebook and Curtsy over their harvested trees. Etsy answers an empty list (browse its tree instead).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let q = "q_example" // String |  (optional)

// Reverse lookup — suggest categories matching a search phrase: eBay live; Poshmark, Mercari, Depop, Grailed, Vinted, Whatnot, Vestiaire, OfferUp, Facebook and Curtsy over their harvested trees. Etsy answers an empty list (browse its tree instead).
TaxonomyAPI.listTaxonomySuggest(platform: platform, q: q) { (response, error) in
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
 **platform** | **String** |  | 
 **q** | **String** |  | [optional] 

### Return type

**ListTaxonomySuggestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

