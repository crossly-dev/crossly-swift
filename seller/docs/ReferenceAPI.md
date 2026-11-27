# ReferenceAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBrand**](ReferenceAPI.md#getbrand) | **GET** /v1/brands | Search the Crossly brand index. Returns up to 50 matches.
[**getCategory**](ReferenceAPI.md#getcategory) | **GET** /v1/categories | List Crossly&#39;s canonical category tree.
[**getDepartment**](ReferenceAPI.md#getdepartment) | **GET** /v1/departments | Search the eBay-sourced \&quot;Department\&quot; item-specific values.
[**getGender**](ReferenceAPI.md#getgender) | **GET** /v1/genders | Search the eBay-sourced \&quot;Gender\&quot; item-specific values.
[**getPattern**](ReferenceAPI.md#getpattern) | **GET** /v1/patterns | Search the eBay-sourced \&quot;Pattern\&quot; item-specific values.
[**getReferencePostal**](ReferenceAPI.md#getreferencepostal) | **GET** /v1/reference/postal/{country}/{code} | Look up a postal code: canonical shape, state and US metro areas.
[**getSizeSystem**](ReferenceAPI.md#getsizesystem) | **GET** /v1/size-systems | Search the Poshmark + Vestiaire size-system union (US/UK/EU/AU/FR/KR).
[**getStyle**](ReferenceAPI.md#getstyle) | **GET** /v1/styles | Search the eBay-sourced \&quot;Style\&quot; item-specific values.
[**getType**](ReferenceAPI.md#gettype) | **GET** /v1/types | Search the eBay-sourced \&quot;Type\&quot; item-specific values.
[**listReferenceCountries**](ReferenceAPI.md#listreferencecountries) | **GET** /v1/reference/countries | Every country with its delivery-address rules.
[**listReferenceMetros**](ReferenceAPI.md#listreferencemetros) | **GET** /v1/reference/metros | Search US metro areas (CSA / CBSA) for location rules.


# **getBrand**
```swift
    open class func getBrand(completion: @escaping (_ data: GetBrandResponse?, _ error: Error?) -> Void)
```

Search the Crossly brand index. Returns up to 50 matches.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Search the Crossly brand index. Returns up to 50 matches.
ReferenceAPI.getBrand() { (response, error) in
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

**GetBrandResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCategory**
```swift
    open class func getCategory(completion: @escaping (_ data: GetCategoryResponse?, _ error: Error?) -> Void)
```

List Crossly's canonical category tree.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List Crossly's canonical category tree.
ReferenceAPI.getCategory() { (response, error) in
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

**GetCategoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getDepartment**
```swift
    open class func getDepartment(completion: @escaping (_ data: GetDepartmentResponse?, _ error: Error?) -> Void)
```

Search the eBay-sourced \"Department\" item-specific values.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Search the eBay-sourced \"Department\" item-specific values.
ReferenceAPI.getDepartment() { (response, error) in
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

**GetDepartmentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getGender**
```swift
    open class func getGender(completion: @escaping (_ data: GetGenderResponse?, _ error: Error?) -> Void)
```

Search the eBay-sourced \"Gender\" item-specific values.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Search the eBay-sourced \"Gender\" item-specific values.
ReferenceAPI.getGender() { (response, error) in
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

**GetGenderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPattern**
```swift
    open class func getPattern(completion: @escaping (_ data: GetPatternResponse?, _ error: Error?) -> Void)
```

Search the eBay-sourced \"Pattern\" item-specific values.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Search the eBay-sourced \"Pattern\" item-specific values.
ReferenceAPI.getPattern() { (response, error) in
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

**GetPatternResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getReferencePostal**
```swift
    open class func getReferencePostal(country: String, code: String, completion: @escaping (_ data: GetReferencePostalResponse?, _ error: Error?) -> Void)
```

Look up a postal code: canonical shape, state and US metro areas.

Every country gets its canonical shape and `valid`. A US ZIP (territories normalize to country US with `territory`) also gets state, county FIPS and CBSA/CSA. `metroStatus` is known (the ZIP is mapped), unmapped (a ZIP with no metro mapping: it matches no metro rule) or no_zip.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let country = "country_example" // String | 
let code = "code_example" // String | 

// Look up a postal code: canonical shape, state and US metro areas.
ReferenceAPI.getReferencePostal(country: country, code: code) { (response, error) in
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
 **country** | **String** |  | 
 **code** | **String** |  | 

### Return type

**GetReferencePostalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSizeSystem**
```swift
    open class func getSizeSystem(completion: @escaping (_ data: GetSizeSystemResponse?, _ error: Error?) -> Void)
```

Search the Poshmark + Vestiaire size-system union (US/UK/EU/AU/FR/KR).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Search the Poshmark + Vestiaire size-system union (US/UK/EU/AU/FR/KR).
ReferenceAPI.getSizeSystem() { (response, error) in
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

**GetSizeSystemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStyle**
```swift
    open class func getStyle(completion: @escaping (_ data: GetStyleResponse?, _ error: Error?) -> Void)
```

Search the eBay-sourced \"Style\" item-specific values.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Search the eBay-sourced \"Style\" item-specific values.
ReferenceAPI.getStyle() { (response, error) in
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

**GetStyleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getType**
```swift
    open class func getType(completion: @escaping (_ data: GetTypeResponse?, _ error: Error?) -> Void)
```

Search the eBay-sourced \"Type\" item-specific values.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Search the eBay-sourced \"Type\" item-specific values.
ReferenceAPI.getType() { (response, error) in
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

**GetTypeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listReferenceCountries**
```swift
    open class func listReferenceCountries(completion: @escaping (_ data: ListReferenceCountriesResponse?, _ error: Error?) -> Void)
```

Every country with its delivery-address rules.

ISO 3166-1 alpha-2 code, name, main currency and region tags, plus what a delivery address there needs: whether a postal code / state is required, what they are called locally, and the fixed state list where carriers want one. `embargoed` marks destinations Crossly cannot deliver to.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every country with its delivery-address rules.
ReferenceAPI.listReferenceCountries() { (response, error) in
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

**ListReferenceCountriesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listReferenceMetros**
```swift
    open class func listReferenceMetros(q: String, limit: Int? = nil, completion: @escaping (_ data: ListReferenceMetrosResponse?, _ error: Error?) -> Void)
```

Search US metro areas (CSA / CBSA) for location rules.

Combined Statistical Areas first, then Core-Based Statistical Areas, matched on title (or an exact code); at most 20. `q` needs 2+ characters. `meta.datasetAvailable` is false when the census dataset is not loaded, in which case no metro rule can match.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let q = "q_example" // String | 
let limit = 987 // Int |  (optional) (default to 20)

// Search US metro areas (CSA / CBSA) for location rules.
ReferenceAPI.listReferenceMetros(q: q, limit: limit) { (response, error) in
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
 **q** | **String** |  | 
 **limit** | **Int** |  | [optional] [default to 20]

### Return type

**ListReferenceMetrosResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

