# OffersAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOfferRespond**](OffersAPI.md#createofferrespond) | **POST** /v1/offers/{id}/respond | Accept, decline, or counter a buyer offer on a Crossly marketplace listing.
[**getOffer**](OffersAPI.md#getoffer) | **GET** /v1/offers | List buyer offers on your Crossly marketplace listings, including bundles.


# **createOfferRespond**
```swift
    open class func createOfferRespond(id: String, inlineObject2: InlineObject2, completion: @escaping (_ data: CreateOfferRespondResponse?, _ error: Error?) -> Void)
```

Accept, decline, or counter a buyer offer on a Crossly marketplace listing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | Offer UUID.
let inlineObject2 = inline_object_2(action: "action_example", counterCents: 123) // InlineObject2 | 

// Accept, decline, or counter a buyer offer on a Crossly marketplace listing.
OffersAPI.createOfferRespond(id: id, inlineObject2: inlineObject2) { (response, error) in
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
 **id** | **String** | Offer UUID. | 
 **inlineObject2** | [**InlineObject2**](InlineObject2.md) |  | 

### Return type

[**CreateOfferRespondResponse**](CreateOfferRespondResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOffer**
```swift
    open class func getOffer(status: Status_getOffer? = nil, limit: Int? = nil, completion: @escaping (_ data: GetOfferResponse?, _ error: Error?) -> Void)
```

List buyer offers on your Crossly marketplace listings, including bundles.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let status = "status_example" // String | Filter to one status. Omit for all. (optional)
let limit = 987 // Int |  (optional) (default to 50)

// List buyer offers on your Crossly marketplace listings, including bundles.
OffersAPI.getOffer(status: status, limit: limit) { (response, error) in
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
 **status** | **String** | Filter to one status. Omit for all. | [optional] 
 **limit** | **Int** |  | [optional] [default to 50]

### Return type

[**GetOfferResponse**](GetOfferResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

