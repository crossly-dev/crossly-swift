# ProductionAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProductionCandidateAccept**](ProductionAPI.md#createproductioncandidateaccept) | **POST** /v1/production/candidates/{id}/accept | Accept a graduated design&#39;s production terms (edition size, cost, holder access).
[**createProductionCandidatePo**](ProductionAPI.md#createproductioncandidatepo) | **POST** /v1/production/candidates/{id}/po | Ops: open a purchase order for a candidate. Admin PAT only.
[**createProductionCandidateVote**](ProductionAPI.md#createproductioncandidatevote) | **POST** /v1/production/candidates/{id}/vote | Back (support: true) or un-back a design on the production ballot. One vote per person per design; voters must have bought on Crossly.
[**createProductionDesignBrief**](ProductionAPI.md#createproductiondesignbrief) | **POST** /v1/production/designs/{cosmeticId}/brief | Set a design&#39;s production brief (materials, finish, box, reference images).
[**createProductionDesignConsent**](ProductionAPI.md#createproductiondesignconsent) | **POST** /v1/production/designs/{cosmeticId}/consent | Opt a design in or out of physical production.
[**createProductionDesignSpec**](ProductionAPI.md#createproductiondesignspec) | **POST** /v1/production/designs/{cosmeticId}/spec | Set a design&#39;s production spec (category, materials, complexity, packaging).
[**createProductionEstimate**](ProductionAPI.md#createproductionestimate) | **POST** /v1/production/estimate | Estimate a run&#39;s landed cost from a spec + edition size (overshoots for safety).
[**createProductionRunPurchase**](ProductionAPI.md#createproductionrunpurchase) | **POST** /v1/production/runs/{id}/purchase | Buy a limited-edition unit of a physical run (holder pricing applies).
[**createReceiptRelist**](ProductionAPI.md#createreceiptrelist) | **POST** /v1/receipts/{id}/relist | Sell it again: a draft listing of something you bought on Crossly, carrying its purchase receipt so the next buyer inherits its provenance.
[**getProductionBallot**](ProductionAPI.md#getproductionballot) | **GET** /v1/production/ballot | The ballot: designs waiting for a physical run, most backed first, and whether you may vote.
[**getProductionCandidate**](ProductionAPI.md#getproductioncandidate) | **GET** /v1/production/candidates | Your designs that have graduated toward a physical run.
[**getProductionDesignPref**](ProductionAPI.md#getproductiondesignpref) | **GET** /v1/production/designs/{cosmeticId}/prefs | Read a design&#39;s production preferences (spec, brief, opt-out).
[**getProductionDrop**](ProductionAPI.md#getproductiondrop) | **GET** /v1/production/drops | Limited-edition units you own, with fulfillment status.
[**getProductionEarning**](ProductionAPI.md#getproductionearning) | **GET** /v1/production/earnings | Your CBX earnings from physical production (royalties + balance + lines).
[**getProductionLine**](ProductionAPI.md#getproductionline) | **GET** /v1/production/lines | Your production lines dashboard (candidate + run + inventory).
[**getProductionPo**](ProductionAPI.md#getproductionpo) | **GET** /v1/production/pos | Ops: list purchase orders (optionally for one candidate). Admin PAT only.
[**getProductionPoReconcile**](ProductionAPI.md#getproductionporeconcile) | **GET** /v1/production/pos/{poId}/reconcile | Ops: reconcile a PO&#39;s actuals against the estimate. Admin PAT only.
[**getProductionRun**](ProductionAPI.md#getproductionrun) | **GET** /v1/production/runs | Browse open limited-edition physical runs (graduated designs).
[**getShopListingProvenance**](ProductionAPI.md#getshoplistingprovenance) | **GET** /v1/shop/listings/{slug}/provenance | Crossly provenance behind a shop listing: owners on Crossly and since when (never who or for how much). Null when not bought here.
[**updateProductionPo**](ProductionAPI.md#updateproductionpo) | **PATCH** /v1/production/pos/{poId} | Ops: update a PO (supplier, freight, actuals, QC, status). Admin PAT only.


# **createProductionCandidateAccept**
```swift
    open class func createProductionCandidateAccept(id: String, completion: @escaping (_ data: CreateProductionCandidateAcceptResponse?, _ error: Error?) -> Void)
```

Accept a graduated design's production terms (edition size, cost, holder access).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Accept a graduated design's production terms (edition size, cost, holder access).
ProductionAPI.createProductionCandidateAccept(id: id) { (response, error) in
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

**CreateProductionCandidateAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createProductionCandidatePo**
```swift
    open class func createProductionCandidatePo(id: String, completion: @escaping (_ data: UpdateProductionPoResponse?, _ error: Error?) -> Void)
```

Ops: open a purchase order for a candidate. Admin PAT only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Ops: open a purchase order for a candidate. Admin PAT only.
ProductionAPI.createProductionCandidatePo(id: id) { (response, error) in
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

**UpdateProductionPoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createProductionCandidateVote**
```swift
    open class func createProductionCandidateVote(id: String, completion: @escaping (_ data: CreateProductionCandidateVoteResponse?, _ error: Error?) -> Void)
```

Back (support: true) or un-back a design on the production ballot. One vote per person per design; voters must have bought on Crossly.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Back (support: true) or un-back a design on the production ballot. One vote per person per design; voters must have bought on Crossly.
ProductionAPI.createProductionCandidateVote(id: id) { (response, error) in
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

**CreateProductionCandidateVoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createProductionDesignBrief**
```swift
    open class func createProductionDesignBrief(cosmeticId: String, completion: @escaping (_ data: CreateProductionDesignSpecResponse?, _ error: Error?) -> Void)
```

Set a design's production brief (materials, finish, box, reference images).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let cosmeticId = "cosmeticId_example" // String | 

// Set a design's production brief (materials, finish, box, reference images).
ProductionAPI.createProductionDesignBrief(cosmeticId: cosmeticId) { (response, error) in
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
 **cosmeticId** | **String** |  | 

### Return type

**CreateProductionDesignSpecResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createProductionDesignConsent**
```swift
    open class func createProductionDesignConsent(cosmeticId: String, completion: @escaping (_ data: CreateProductionDesignSpecResponse?, _ error: Error?) -> Void)
```

Opt a design in or out of physical production.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let cosmeticId = "cosmeticId_example" // String | 

// Opt a design in or out of physical production.
ProductionAPI.createProductionDesignConsent(cosmeticId: cosmeticId) { (response, error) in
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
 **cosmeticId** | **String** |  | 

### Return type

**CreateProductionDesignSpecResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createProductionDesignSpec**
```swift
    open class func createProductionDesignSpec(cosmeticId: String, completion: @escaping (_ data: CreateProductionDesignSpecResponse?, _ error: Error?) -> Void)
```

Set a design's production spec (category, materials, complexity, packaging).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let cosmeticId = "cosmeticId_example" // String | 

// Set a design's production spec (category, materials, complexity, packaging).
ProductionAPI.createProductionDesignSpec(cosmeticId: cosmeticId) { (response, error) in
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
 **cosmeticId** | **String** |  | 

### Return type

**CreateProductionDesignSpecResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createProductionEstimate**
```swift
    open class func createProductionEstimate(completion: @escaping (_ data: CreateProductionEstimateResponse?, _ error: Error?) -> Void)
```

Estimate a run's landed cost from a spec + edition size (overshoots for safety).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Estimate a run's landed cost from a spec + edition size (overshoots for safety).
ProductionAPI.createProductionEstimate() { (response, error) in
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

**CreateProductionEstimateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createProductionRunPurchase**
```swift
    open class func createProductionRunPurchase(id: String, completion: @escaping (_ data: CreateProductionRunPurchaseResponse?, _ error: Error?) -> Void)
```

Buy a limited-edition unit of a physical run (holder pricing applies).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Buy a limited-edition unit of a physical run (holder pricing applies).
ProductionAPI.createProductionRunPurchase(id: id) { (response, error) in
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

**CreateProductionRunPurchaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createReceiptRelist**
```swift
    open class func createReceiptRelist(id: String, completion: @escaping (_ data: CreateReceiptRelistResponse?, _ error: Error?) -> Void)
```

Sell it again: a draft listing of something you bought on Crossly, carrying its purchase receipt so the next buyer inherits its provenance.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Sell it again: a draft listing of something you bought on Crossly, carrying its purchase receipt so the next buyer inherits its provenance.
ProductionAPI.createReceiptRelist(id: id) { (response, error) in
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

**CreateReceiptRelistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getProductionBallot**
```swift
    open class func getProductionBallot(completion: @escaping (_ data: GetProductionBallotResponse?, _ error: Error?) -> Void)
```

The ballot: designs waiting for a physical run, most backed first, and whether you may vote.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The ballot: designs waiting for a physical run, most backed first, and whether you may vote.
ProductionAPI.getProductionBallot() { (response, error) in
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

**GetProductionBallotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getProductionCandidate**
```swift
    open class func getProductionCandidate(completion: @escaping (_ data: GetProductionCandidateResponse?, _ error: Error?) -> Void)
```

Your designs that have graduated toward a physical run.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your designs that have graduated toward a physical run.
ProductionAPI.getProductionCandidate() { (response, error) in
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

**GetProductionCandidateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getProductionDesignPref**
```swift
    open class func getProductionDesignPref(cosmeticId: String, completion: @escaping (_ data: GetProductionDesignPrefResponse?, _ error: Error?) -> Void)
```

Read a design's production preferences (spec, brief, opt-out).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let cosmeticId = "cosmeticId_example" // String | 

// Read a design's production preferences (spec, brief, opt-out).
ProductionAPI.getProductionDesignPref(cosmeticId: cosmeticId) { (response, error) in
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
 **cosmeticId** | **String** |  | 

### Return type

**GetProductionDesignPrefResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getProductionDrop**
```swift
    open class func getProductionDrop(completion: @escaping (_ data: GetProductionDropResponse?, _ error: Error?) -> Void)
```

Limited-edition units you own, with fulfillment status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Limited-edition units you own, with fulfillment status.
ProductionAPI.getProductionDrop() { (response, error) in
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

**GetProductionDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getProductionEarning**
```swift
    open class func getProductionEarning(completion: @escaping (_ data: GetProductionEarningResponse?, _ error: Error?) -> Void)
```

Your CBX earnings from physical production (royalties + balance + lines).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your CBX earnings from physical production (royalties + balance + lines).
ProductionAPI.getProductionEarning() { (response, error) in
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

**GetProductionEarningResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getProductionLine**
```swift
    open class func getProductionLine(completion: @escaping (_ data: GetProductionLineResponse?, _ error: Error?) -> Void)
```

Your production lines dashboard (candidate + run + inventory).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your production lines dashboard (candidate + run + inventory).
ProductionAPI.getProductionLine() { (response, error) in
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

**GetProductionLineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getProductionPo**
```swift
    open class func getProductionPo(candidateId: String? = nil, completion: @escaping (_ data: GetProductionPoResponse?, _ error: Error?) -> Void)
```

Ops: list purchase orders (optionally for one candidate). Admin PAT only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let candidateId = "candidateId_example" // String |  (optional)

// Ops: list purchase orders (optionally for one candidate). Admin PAT only.
ProductionAPI.getProductionPo(candidateId: candidateId) { (response, error) in
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
 **candidateId** | **String** |  | [optional] 

### Return type

**GetProductionPoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getProductionPoReconcile**
```swift
    open class func getProductionPoReconcile(poId: String, completion: @escaping (_ data: GetProductionPoReconcileResponse?, _ error: Error?) -> Void)
```

Ops: reconcile a PO's actuals against the estimate. Admin PAT only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let poId = "poId_example" // String | 

// Ops: reconcile a PO's actuals against the estimate. Admin PAT only.
ProductionAPI.getProductionPoReconcile(poId: poId) { (response, error) in
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
 **poId** | **String** |  | 

### Return type

**GetProductionPoReconcileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getProductionRun**
```swift
    open class func getProductionRun(completion: @escaping (_ data: GetProductionRunResponse?, _ error: Error?) -> Void)
```

Browse open limited-edition physical runs (graduated designs).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Browse open limited-edition physical runs (graduated designs).
ProductionAPI.getProductionRun() { (response, error) in
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

**GetProductionRunResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getShopListingProvenance**
```swift
    open class func getShopListingProvenance(slug: String, completion: @escaping (_ data: GetShopListingProvenanceResponse?, _ error: Error?) -> Void)
```

Crossly provenance behind a shop listing: owners on Crossly and since when (never who or for how much). Null when not bought here.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Crossly provenance behind a shop listing: owners on Crossly and since when (never who or for how much). Null when not bought here.
ProductionAPI.getShopListingProvenance(slug: slug) { (response, error) in
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
 **slug** | **String** |  | 

### Return type

**GetShopListingProvenanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateProductionPo**
```swift
    open class func updateProductionPo(poId: String, completion: @escaping (_ data: UpdateProductionPoResponse?, _ error: Error?) -> Void)
```

Ops: update a PO (supplier, freight, actuals, QC, status). Admin PAT only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let poId = "poId_example" // String | 

// Ops: update a PO (supplier, freight, actuals, QC, status). Admin PAT only.
ProductionAPI.updateProductionPo(poId: poId) { (response, error) in
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
 **poId** | **String** |  | 

### Return type

**UpdateProductionPoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

