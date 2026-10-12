# ImportsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createImport**](ImportsAPI.md#createimport) | **POST** /v1/imports | Start a bulk-import job for an existing platform connection.
[**getImport**](ImportsAPI.md#getimport) | **GET** /v1/imports/{id} | Get one import job.
[**getImportSite**](ImportsAPI.md#getimportsite) | **GET** /v1/imports/sites | Which sites (eBay marketplaces) an account&#39;s listings are on, with counts — to choose what an import brings in.
[**listImports**](ImportsAPI.md#listimports) | **GET** /v1/imports | List bulk-import jobs.


# **createImport**
```swift
    open class func createImport(completion: @escaping (_ data: CreateImportResponse?, _ error: Error?) -> Void)
```

Start a bulk-import job for an existing platform connection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start a bulk-import job for an existing platform connection.
ImportsAPI.createImport() { (response, error) in
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

**CreateImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getImport**
```swift
    open class func getImport(id: UUID, completion: @escaping (_ data: ListImportsItem?, _ error: Error?) -> Void)
```

Get one import job.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Get one import job.
ImportsAPI.getImport(id: id) { (response, error) in
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

**ListImportsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getImportSite**
```swift
    open class func getImportSite(platform: String? = nil, completion: @escaping (_ data: GetImportSiteResponse?, _ error: Error?) -> Void)
```

Which sites (eBay marketplaces) an account's listings are on, with counts — to choose what an import brings in.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | Default ebay. (optional)

// Which sites (eBay marketplaces) an account's listings are on, with counts — to choose what an import brings in.
ImportsAPI.getImportSite(platform: platform) { (response, error) in
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
 **platform** | **String** | Default ebay. | [optional] 

### Return type

**GetImportSiteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listImports**
```swift
    open class func listImports(completion: @escaping (_ data: ListImportsResponse?, _ error: Error?) -> Void)
```

List bulk-import jobs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List bulk-import jobs.
ImportsAPI.listImports() { (response, error) in
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

**ListImportsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

