# SourcingAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSourcingReceipt**](SourcingAPI.md#createsourcingreceipt) | **POST** /v1/sourcing/receipts | Append a parsed receipt to the sourcing ledger.
[**getSourcingReceipt**](SourcingAPI.md#getsourcingreceipt) | **GET** /v1/sourcing/receipts | List parsed sourcing receipts in this user&#39;s ledger.
[**listSourcingDemand**](SourcingAPI.md#listsourcingdemand) | **GET** /v1/sourcing/demand | Items buyers looked for on other sites that Crossly did not have.
[**listSourcingDemandMine**](SourcingAPI.md#listsourcingdemandmine) | **GET** /v1/sourcing/demand/mine | Unmet buyer demand for items you hold or have sold before.


# **createSourcingReceipt**
```swift
    open class func createSourcingReceipt(completion: @escaping (_ data: CreateSourcingReceiptResponse?, _ error: Error?) -> Void)
```

Append a parsed receipt to the sourcing ledger.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Append a parsed receipt to the sourcing ledger.
SourcingAPI.createSourcingReceipt() { (response, error) in
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

[**CreateSourcingReceiptResponse**](CreateSourcingReceiptResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSourcingReceipt**
```swift
    open class func getSourcingReceipt(completion: @escaping (_ data: GetSourcingReceiptResponse?, _ error: Error?) -> Void)
```

List parsed sourcing receipts in this user's ledger.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List parsed sourcing receipts in this user's ledger.
SourcingAPI.getSourcingReceipt() { (response, error) in
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

[**GetSourcingReceiptResponse**](GetSourcingReceiptResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSourcingDemand**
```swift
    open class func listSourcingDemand(days: Int? = nil, minLooks: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: V1List?, _ error: Error?) -> Void)
```

Items buyers looked for on other sites that Crossly did not have.

Aggregate demand observed by the Scout extension, ranked by MISSES — the times somebody asked and we had nothing. `medianPageCents` is what the retailers were charging, which is the number to source against. Anonymous in every case; there is no per-buyer view of this.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let days = 987 // Int |  (optional) (default to 30)
let minLooks = 987 // Int |  (optional) (default to 3)
let limit = 987 // Int |  (optional) (default to 50)

// Items buyers looked for on other sites that Crossly did not have.
SourcingAPI.listSourcingDemand(days: days, minLooks: minLooks, limit: limit) { (response, error) in
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
 **days** | **Int** |  | [optional] [default to 30]
 **minLooks** | **Int** |  | [optional] [default to 3]
 **limit** | **Int** |  | [optional] [default to 50]

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSourcingDemandMine**
```swift
    open class func listSourcingDemandMine(days: Int? = nil, minLookers: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: V1List?, _ error: Error?) -> Void)
```

Unmet buyer demand for items you hold or have sold before.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let days = 987 // Int |  (optional) (default to 60)
let minLookers = 987 // Int |  (optional) (default to 2)
let limit = 987 // Int |  (optional) (default to 25)

// Unmet buyer demand for items you hold or have sold before.
SourcingAPI.listSourcingDemandMine(days: days, minLookers: minLookers, limit: limit) { (response, error) in
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
 **days** | **Int** |  | [optional] [default to 60]
 **minLookers** | **Int** |  | [optional] [default to 2]
 **limit** | **Int** |  | [optional] [default to 25]

### Return type

[**V1List**](V1List.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

