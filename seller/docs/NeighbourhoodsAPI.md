# NeighbourhoodsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getNeighbourhood**](NeighbourhoodsAPI.md#getneighbourhood) | **GET** /v1/neighbourhoods/{slug} | One neighbourhood street by slug.
[**listNeighbourhoods**](NeighbourhoodsAPI.md#listneighbourhoods) | **GET** /v1/neighbourhoods | Every neighbourhood street (Sneaker Row, Card District, Vintage Alley, Vinyl Lane): open or \&quot;opening soon\&quot; (6 shops + open stalls, or a live street event), shops, stalls today, the next street event and its /c/&lt;slug&gt; URL.


# **getNeighbourhood**
```swift
    open class func getNeighbourhood(slug: Slug_getNeighbourhood, completion: @escaping (_ data: GetNeighbourhoodResponse?, _ error: Error?) -> Void)
```

One neighbourhood street by slug.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// One neighbourhood street by slug.
NeighbourhoodsAPI.getNeighbourhood(slug: slug) { (response, error) in
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

**GetNeighbourhoodResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listNeighbourhoods**
```swift
    open class func listNeighbourhoods(completion: @escaping (_ data: ListNeighbourhoodsResponse?, _ error: Error?) -> Void)
```

Every neighbourhood street (Sneaker Row, Card District, Vintage Alley, Vinyl Lane): open or \"opening soon\" (6 shops + open stalls, or a live street event), shops, stalls today, the next street event and its /c/<slug> URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every neighbourhood street (Sneaker Row, Card District, Vintage Alley, Vinyl Lane): open or \"opening soon\" (6 shops + open stalls, or a live street event), shops, stalls today, the next street event and its /c/<slug> URL.
NeighbourhoodsAPI.listNeighbourhoods() { (response, error) in
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

**ListNeighbourhoodsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

