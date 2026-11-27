# SearchAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSearch**](SearchAPI.md#getsearch) | **GET** /v1/search | Search everything in your business at once: inventory, listings, orders, sales, customers, conversations, offers, shipments and returns. Exact identifiers (SKU, barcode, order number, tracking number, buyer email, marketplace listing id or a pasted listing URL) rank first, then prefixes, then fuzzy title / brand / buyer matches. Operators: sku:, order:, buyer:, tracking:, in:&lt;type&gt;, status:, platform:. Groups your token has no read scope for are left out.


# **getSearch**
```swift
    open class func getSearch(q: String? = nil, types: String? = nil, limit: Int? = nil, completion: @escaping (_ data: GetSearchResponse?, _ error: Error?) -> Void)
```

Search everything in your business at once: inventory, listings, orders, sales, customers, conversations, offers, shipments and returns. Exact identifiers (SKU, barcode, order number, tracking number, buyer email, marketplace listing id or a pasted listing URL) rank first, then prefixes, then fuzzy title / brand / buyer matches. Operators: sku:, order:, buyer:, tracking:, in:<type>, status:, platform:. Groups your token has no read scope for are left out.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let q = "q_example" // String | What to search for (operators allowed). (optional)
let types = "types_example" // String | Comma-separated groups to search: inventory, listings, orders, sales, customers, conversations, offers, shipments, returns. (optional)
let limit = 987 // Int | Hits per group. (optional) (default to 5)

// Search everything in your business at once: inventory, listings, orders, sales, customers, conversations, offers, shipments and returns. Exact identifiers (SKU, barcode, order number, tracking number, buyer email, marketplace listing id or a pasted listing URL) rank first, then prefixes, then fuzzy title / brand / buyer matches. Operators: sku:, order:, buyer:, tracking:, in:<type>, status:, platform:. Groups your token has no read scope for are left out.
SearchAPI.getSearch(q: q, types: types, limit: limit) { (response, error) in
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
 **q** | **String** | What to search for (operators allowed). | [optional] 
 **types** | **String** | Comma-separated groups to search: inventory, listings, orders, sales, customers, conversations, offers, shipments, returns. | [optional] 
 **limit** | **Int** | Hits per group. | [optional] [default to 5]

### Return type

**GetSearchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

