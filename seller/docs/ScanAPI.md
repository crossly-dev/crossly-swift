# ScanAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listScanCaptures**](ScanAPI.md#listscancaptures) | **GET** /v1/scan/captures | Your capture sessions and what they produced.
[**listScanModels**](ScanAPI.md#listscanmodels) | **GET** /v1/scan/models | Which items already have a 3D model.


# **listScanCaptures**
```swift
    open class func listScanCaptures(status: String? = nil, limit: Int? = nil, completion: @escaping (_ data: ListScanCapturesResponse?, _ error: Error?) -> Void)
```

Your capture sessions and what they produced.

One row per scan, newest first. `status` is capturing | uploaded | processing | ready | failed | rejected; `rejectReason` says why in the same words the seller was shown. A capture that reports `ready` with no mesh is normal — most items are textured onto a known shape rather than having geometry generated, which is cheaper and looks the same. When an item that WOULD have been generated was not, `generationSkipped` says why: out of monthly allowance, too few distinct angles, or you had already had a model built from this object.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let status = "status_example" // String | Filter to one status. (optional)
let limit = 987 // Int |  (optional) (default to 25)

// Your capture sessions and what they produced.
ScanAPI.listScanCaptures(status: status, limit: limit) { (response, error) in
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
 **status** | **String** | Filter to one status. | [optional] 
 **limit** | **Int** |  | [optional] [default to 25]

### Return type

**ListScanCapturesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listScanModels**
```swift
    open class func listScanModels(variantIds: String? = nil, inventoryItemIds: String? = nil, completion: @escaping (_ data: ListScanModelsResponse?, _ error: Error?) -> Void)
```

Which items already have a 3D model.

Ask by CATALOGUE variant (`variantIds`) or by your own inventory rows (`inventoryItemIds`), comma separated, up to 200 of each. At least one is required. Returns only the ones that have a model. The two are different KINDS of answer. A catalogue model belongs to the product and is shared: a hit means your listing gets it with nothing to capture, because somebody else already paid to generate it. An inventory model belongs to one of your rows, because an object with no catalogue identity — a lamp, a one-off — is not a product anyone else can claim. `longestEdgeMm` is present only when a capture MEASURED the item against something of known size; null means the mesh has correct proportions and no real-world scale.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let variantIds = "variantIds_example" // String | Comma-separated catalogue variant ids, max 200. (optional)
let inventoryItemIds = "inventoryItemIds_example" // String | Comma-separated inventory item ids, max 200. (optional)

// Which items already have a 3D model.
ScanAPI.listScanModels(variantIds: variantIds, inventoryItemIds: inventoryItemIds) { (response, error) in
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
 **variantIds** | **String** | Comma-separated catalogue variant ids, max 200. | [optional] 
 **inventoryItemIds** | **String** | Comma-separated inventory item ids, max 200. | [optional] 

### Return type

**ListScanModelsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

