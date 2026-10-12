# SalesAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSaleBulkDelete**](SalesAPI.md#createsalebulkdelete) | **POST** /v1/sales/bulk-delete | Bulk soft-delete sales rows.
[**listSales**](SalesAPI.md#listsales) | **GET** /v1/sales | List sales (each unique sale event).


# **createSaleBulkDelete**
```swift
    open class func createSaleBulkDelete(completion: @escaping (_ data: CreateSaleBulkDeleteResponse?, _ error: Error?) -> Void)
```

Bulk soft-delete sales rows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk soft-delete sales rows.
SalesAPI.createSaleBulkDelete() { (response, error) in
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

**CreateSaleBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSales**
```swift
    open class func listSales(completion: @escaping (_ data: ListSalesResponse?, _ error: Error?) -> Void)
```

List sales (each unique sale event).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List sales (each unique sale event).
SalesAPI.listSales() { (response, error) in
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

**ListSalesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

