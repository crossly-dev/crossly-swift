# CustomersAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomerBulkDelete**](CustomersAPI.md#createcustomerbulkdelete) | **POST** /v1/customers/bulk-delete | Bulk blocklist customer handles.
[**createCustomerBulkExport**](CustomersAPI.md#createcustomerbulkexport) | **POST** /v1/customers/bulk-export | Bulk export aggregated customers as CSV.
[**createCustomerRefreshProfile**](CustomersAPI.md#createcustomerrefreshprofile) | **POST** /v1/customers/{handle}/refresh-profile | Queue a fresh read of a customer&#39;s buyer profiles on every platform they ordered on.
[**getCustomer**](CustomersAPI.md#getcustomer) | **GET** /v1/customers/{handle} | Get one customer: recent 50 orders, buyer profiles per platform, and stats over all of their orders.
[**getLoyaltyClub**](CustomersAPI.md#getloyaltyclub) | **GET** /v1/loyalty/club | Your loyalty club: tiers and how many members are in each.
[**listCustomers**](CustomersAPI.md#listcustomers) | **GET** /v1/customers | List aggregated customers (group-by lower(buyer_username)), each with its best avatar, display name and star rating.
[**listLoyaltyMembers**](CustomersAPI.md#listloyaltymembers) | **GET** /v1/loyalty/members | Your loyalty club’s members, by spend with you.
[**updateLoyaltyClub**](CustomersAPI.md#updateloyaltyclub) | **PUT** /v1/loyalty/club | Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks.


# **createCustomerBulkDelete**
```swift
    open class func createCustomerBulkDelete(completion: @escaping (_ data: CreateCustomerBulkDeleteResponse?, _ error: Error?) -> Void)
```

Bulk blocklist customer handles.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk blocklist customer handles.
CustomersAPI.createCustomerBulkDelete() { (response, error) in
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

**CreateCustomerBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCustomerBulkExport**
```swift
    open class func createCustomerBulkExport(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Bulk export aggregated customers as CSV.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk export aggregated customers as CSV.
CustomersAPI.createCustomerBulkExport() { (response, error) in
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

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCustomerRefreshProfile**
```swift
    open class func createCustomerRefreshProfile(handle: String, completion: @escaping (_ data: CreateCustomerRefreshProfileResponse?, _ error: Error?) -> Void)
```

Queue a fresh read of a customer's buyer profiles on every platform they ordered on.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let handle = "handle_example" // String | 

// Queue a fresh read of a customer's buyer profiles on every platform they ordered on.
CustomersAPI.createCustomerRefreshProfile(handle: handle) { (response, error) in
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
 **handle** | **String** |  | 

### Return type

**CreateCustomerRefreshProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCustomer**
```swift
    open class func getCustomer(handle: String, completion: @escaping (_ data: GetCustomerResponse?, _ error: Error?) -> Void)
```

Get one customer: recent 50 orders, buyer profiles per platform, and stats over all of their orders.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let handle = "handle_example" // String | 

// Get one customer: recent 50 orders, buyer profiles per platform, and stats over all of their orders.
CustomersAPI.getCustomer(handle: handle) { (response, error) in
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
 **handle** | **String** |  | 

### Return type

**GetCustomerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getLoyaltyClub**
```swift
    open class func getLoyaltyClub(completion: @escaping (_ data: GetLoyaltyClubResponse?, _ error: Error?) -> Void)
```

Your loyalty club: tiers and how many members are in each.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your loyalty club: tiers and how many members are in each.
CustomersAPI.getLoyaltyClub() { (response, error) in
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

**GetLoyaltyClubResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCustomers**
```swift
    open class func listCustomers(completion: @escaping (_ data: ListCustomersResponse?, _ error: Error?) -> Void)
```

List aggregated customers (group-by lower(buyer_username)), each with its best avatar, display name and star rating.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List aggregated customers (group-by lower(buyer_username)), each with its best avatar, display name and star rating.
CustomersAPI.listCustomers() { (response, error) in
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

**ListCustomersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listLoyaltyMembers**
```swift
    open class func listLoyaltyMembers(completion: @escaping (_ data: ListLoyaltyMembersResponse?, _ error: Error?) -> Void)
```

Your loyalty club’s members, by spend with you.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your loyalty club’s members, by spend with you.
CustomersAPI.listLoyaltyMembers() { (response, error) in
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

**ListLoyaltyMembersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateLoyaltyClub**
```swift
    open class func updateLoyaltyClub(completion: @escaping (_ data: GetLoyaltyClubResponse?, _ error: Error?) -> Void)
```

Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks.
CustomersAPI.updateLoyaltyClub() { (response, error) in
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

**GetLoyaltyClubResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

