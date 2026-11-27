# CustomersAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomerBulkDelete**](CustomersAPI.md#createcustomerbulkdelete) | **POST** /v1/customers/bulk-delete | Bulk blocklist customer handles.
[**createCustomerBulkExport**](CustomersAPI.md#createcustomerbulkexport) | **POST** /v1/customers/bulk-export | Bulk export aggregated customers as CSV.
[**createCustomerRefreshProfile**](CustomersAPI.md#createcustomerrefreshprofile) | **POST** /v1/customers/{handle}/refresh-profile | Queue a fresh read of a customer&#39;s buyer profiles on every platform they ordered on.
[**createLoyaltyAirdropCancel**](CustomersAPI.md#createloyaltyairdropcancel) | **POST** /v1/loyalty/airdrops/{id}/cancel | Cancel a queued or failed airdrop (one already sent is the member’s).
[**createLoyaltyAirdropCheck**](CustomersAPI.md#createloyaltyairdropcheck) | **POST** /v1/loyalty/airdrops/{id}/check | Read a submitted airdrop’s receipt again now.
[**createLoyaltyAirdropPrepare**](CustomersAPI.md#createloyaltyairdropprepare) | **POST** /v1/loyalty/airdrops/{id}/prepare | The mint transaction for your launch owner wallet to send: chain, from, to (your launch contract) and calldata, to the member’s verified wallet. Refused airdrop_not_sendable with a reason when it cannot be built.
[**createLoyaltyAirdropSubmit**](CustomersAPI.md#createloyaltyairdropsubmit) | **POST** /v1/loyalty/airdrops/{id}/submit | Record the hash your wallet broadcast; Crossly reads the receipt (now, then on a schedule) and marks it sent or failed.
[**createLoyaltyProgramInvite**](CustomersAPI.md#createloyaltyprograminvite) | **POST** /v1/loyalty/program/invite | Invite Crossly buyers to your loyalty program by user id (up to 500); returns how many were newly invited.
[**createLoyaltyProgramMemberOverride**](CustomersAPI.md#createloyaltyprogrammemberoverride) | **POST** /v1/loyalty/program/members/{id}/override | Pin a member to a tier (tierId null clears the pin), with a reason.
[**createLoyaltyTier**](CustomersAPI.md#createloyaltytier) | **POST** /v1/loyalty/tiers | Add a tier: name, look, threshold and typed perks (% off, free shipping, early access, members-only listings, wholesale access, token gates, airdrops, Bucks, World items, event tickets, …).
[**deleteLoyaltyTier**](CustomersAPI.md#deleteloyaltytier) | **DELETE** /v1/loyalty/tiers/{id} | Delete a tier; its members are re-evaluated.
[**getCustomer**](CustomersAPI.md#getcustomer) | **GET** /v1/customers/{handle} | Get one customer: recent 50 orders, buyer profiles per platform, and stats over all of their orders.
[**getCustomerNote**](CustomersAPI.md#getcustomernote) | **GET** /v1/customers/{handle}/notes | Your private notes on a customer (empty when none). Works before their first order.
[**getLoyaltyAirdrop**](CustomersAPI.md#getloyaltyairdrop) | **GET** /v1/loyalty/airdrops/{id} | One loyalty NFT airdrop: member, collection, recipient wallet, transaction hash and status.
[**getLoyaltyClub**](CustomersAPI.md#getloyaltyclub) | **GET** /v1/loyalty/club | Your loyalty club: tiers and how many members are in each.
[**getLoyaltyProgram**](CustomersAPI.md#getloyaltyprogram) | **GET** /v1/loyalty/program | Your loyalty program: qualification (spend, orders, points), window, joining, downgrade and grace, and its tiers with typed perks.
[**getLoyaltyProgramMember**](CustomersAPI.md#getloyaltyprogrammember) | **GET** /v1/loyalty/program/members/{id} | One member: standing, tier, progress, perks held, history and any override.
[**listCustomers**](CustomersAPI.md#listcustomers) | **GET** /v1/customers | List aggregated customers (group-by lower(buyer_username)), each with its best avatar, display name and star rating.
[**listLoyaltyAirdrops**](CustomersAPI.md#listloyaltyairdrops) | **GET** /v1/loyalty/airdrops | NFT airdrops your loyalty tiers earned members: queued to send, submitted (waiting on the receipt), sent, failed (with why) or cancelled.
[**listLoyaltyMembers**](CustomersAPI.md#listloyaltymembers) | **GET** /v1/loyalty/members | Your loyalty club’s members, by spend with you.
[**listLoyaltyProgramInviteCandidates**](CustomersAPI.md#listloyaltyprograminvitecandidates) | **GET** /v1/loyalty/program/invite-candidates | Crossly buyers who bought from you and are not loyalty members yet (q searches by name): who you can invite.
[**listLoyaltyProgramMembers**](CustomersAPI.md#listloyaltyprogrammembers) | **GET** /v1/loyalty/program/members | Your loyalty members with tier, standing, grace and overrides; search, tier, status and sort filters.
[**updateCustomerNote**](CustomersAPI.md#updatecustomernote) | **PUT** /v1/customers/{handle}/notes | Save your private notes on a customer (an empty string clears them).
[**updateLoyaltyClub**](CustomersAPI.md#updateloyaltyclub) | **PUT** /v1/loyalty/club | Create or update your loyalty club: name, on/off, and up to 6 spend tiers each with a discount (≤ 30%) and perks.
[**updateLoyaltyProgram**](CustomersAPI.md#updateloyaltyprogram) | **PUT** /v1/loyalty/program | Create or update your loyalty program settings.
[**updateLoyaltyTier**](CustomersAPI.md#updateloyaltytier) | **PUT** /v1/loyalty/tiers/{id} | Replace a tier. Members holding it get the edited perks.


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

# **createLoyaltyAirdropCancel**
```swift
    open class func createLoyaltyAirdropCancel(id: String, completion: @escaping (_ data: LoyaltyAirdropResponse?, _ error: Error?) -> Void)
```

Cancel a queued or failed airdrop (one already sent is the member’s).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a queued or failed airdrop (one already sent is the member’s).
CustomersAPI.createLoyaltyAirdropCancel(id: id) { (response, error) in
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

**LoyaltyAirdropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLoyaltyAirdropCheck**
```swift
    open class func createLoyaltyAirdropCheck(id: String, completion: @escaping (_ data: LoyaltyAirdropResponse?, _ error: Error?) -> Void)
```

Read a submitted airdrop’s receipt again now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Read a submitted airdrop’s receipt again now.
CustomersAPI.createLoyaltyAirdropCheck(id: id) { (response, error) in
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

**LoyaltyAirdropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLoyaltyAirdropPrepare**
```swift
    open class func createLoyaltyAirdropPrepare(id: String, completion: @escaping (_ data: CreateLoyaltyAirdropPrepareResponse?, _ error: Error?) -> Void)
```

The mint transaction for your launch owner wallet to send: chain, from, to (your launch contract) and calldata, to the member’s verified wallet. Refused airdrop_not_sendable with a reason when it cannot be built.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The mint transaction for your launch owner wallet to send: chain, from, to (your launch contract) and calldata, to the member’s verified wallet. Refused airdrop_not_sendable with a reason when it cannot be built.
CustomersAPI.createLoyaltyAirdropPrepare(id: id) { (response, error) in
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

**CreateLoyaltyAirdropPrepareResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLoyaltyAirdropSubmit**
```swift
    open class func createLoyaltyAirdropSubmit(id: String, completion: @escaping (_ data: LoyaltyAirdropResponse?, _ error: Error?) -> Void)
```

Record the hash your wallet broadcast; Crossly reads the receipt (now, then on a schedule) and marks it sent or failed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Record the hash your wallet broadcast; Crossly reads the receipt (now, then on a schedule) and marks it sent or failed.
CustomersAPI.createLoyaltyAirdropSubmit(id: id) { (response, error) in
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

**LoyaltyAirdropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLoyaltyProgramInvite**
```swift
    open class func createLoyaltyProgramInvite(completion: @escaping (_ data: CreateLoyaltyProgramInviteResponse?, _ error: Error?) -> Void)
```

Invite Crossly buyers to your loyalty program by user id (up to 500); returns how many were newly invited.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Invite Crossly buyers to your loyalty program by user id (up to 500); returns how many were newly invited.
CustomersAPI.createLoyaltyProgramInvite() { (response, error) in
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

**CreateLoyaltyProgramInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLoyaltyProgramMemberOverride**
```swift
    open class func createLoyaltyProgramMemberOverride(id: String, completion: @escaping (_ data: GetLoyaltyProgramMemberResponse?, _ error: Error?) -> Void)
```

Pin a member to a tier (tierId null clears the pin), with a reason.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pin a member to a tier (tierId null clears the pin), with a reason.
CustomersAPI.createLoyaltyProgramMemberOverride(id: id) { (response, error) in
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

**GetLoyaltyProgramMemberResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLoyaltyTier**
```swift
    open class func createLoyaltyTier(completion: @escaping (_ data: CreateLoyaltyTierResponse?, _ error: Error?) -> Void)
```

Add a tier: name, look, threshold and typed perks (% off, free shipping, early access, members-only listings, wholesale access, token gates, airdrops, Bucks, World items, event tickets, …).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Add a tier: name, look, threshold and typed perks (% off, free shipping, early access, members-only listings, wholesale access, token gates, airdrops, Bucks, World items, event tickets, …).
CustomersAPI.createLoyaltyTier() { (response, error) in
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

**CreateLoyaltyTierResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteLoyaltyTier**
```swift
    open class func deleteLoyaltyTier(id: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Delete a tier; its members are re-evaluated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a tier; its members are re-evaluated.
CustomersAPI.deleteLoyaltyTier(id: id) { (response, error) in
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

**UpdateGroupBuyResponse**

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

# **getCustomerNote**
```swift
    open class func getCustomerNote(handle: String, completion: @escaping (_ data: GetCustomerNoteResponse?, _ error: Error?) -> Void)
```

Your private notes on a customer (empty when none). Works before their first order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let handle = "handle_example" // String | 

// Your private notes on a customer (empty when none). Works before their first order.
CustomersAPI.getCustomerNote(handle: handle) { (response, error) in
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

**GetCustomerNoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getLoyaltyAirdrop**
```swift
    open class func getLoyaltyAirdrop(id: String, completion: @escaping (_ data: LoyaltyAirdropResponse?, _ error: Error?) -> Void)
```

One loyalty NFT airdrop: member, collection, recipient wallet, transaction hash and status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One loyalty NFT airdrop: member, collection, recipient wallet, transaction hash and status.
CustomersAPI.getLoyaltyAirdrop(id: id) { (response, error) in
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

**LoyaltyAirdropResponse**

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

# **getLoyaltyProgram**
```swift
    open class func getLoyaltyProgram(completion: @escaping (_ data: GetLoyaltyProgramResponse?, _ error: Error?) -> Void)
```

Your loyalty program: qualification (spend, orders, points), window, joining, downgrade and grace, and its tiers with typed perks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your loyalty program: qualification (spend, orders, points), window, joining, downgrade and grace, and its tiers with typed perks.
CustomersAPI.getLoyaltyProgram() { (response, error) in
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

**GetLoyaltyProgramResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getLoyaltyProgramMember**
```swift
    open class func getLoyaltyProgramMember(id: String, completion: @escaping (_ data: GetLoyaltyProgramMemberResponse?, _ error: Error?) -> Void)
```

One member: standing, tier, progress, perks held, history and any override.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One member: standing, tier, progress, perks held, history and any override.
CustomersAPI.getLoyaltyProgramMember(id: id) { (response, error) in
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

**GetLoyaltyProgramMemberResponse**

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

# **listLoyaltyAirdrops**
```swift
    open class func listLoyaltyAirdrops(completion: @escaping (_ data: ListLoyaltyAirdropsResponse?, _ error: Error?) -> Void)
```

NFT airdrops your loyalty tiers earned members: queued to send, submitted (waiting on the receipt), sent, failed (with why) or cancelled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// NFT airdrops your loyalty tiers earned members: queued to send, submitted (waiting on the receipt), sent, failed (with why) or cancelled.
CustomersAPI.listLoyaltyAirdrops() { (response, error) in
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

**ListLoyaltyAirdropsResponse**

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

# **listLoyaltyProgramInviteCandidates**
```swift
    open class func listLoyaltyProgramInviteCandidates(completion: @escaping (_ data: ListLoyaltyProgramInviteCandidatesResponse?, _ error: Error?) -> Void)
```

Crossly buyers who bought from you and are not loyalty members yet (q searches by name): who you can invite.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Crossly buyers who bought from you and are not loyalty members yet (q searches by name): who you can invite.
CustomersAPI.listLoyaltyProgramInviteCandidates() { (response, error) in
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

**ListLoyaltyProgramInviteCandidatesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listLoyaltyProgramMembers**
```swift
    open class func listLoyaltyProgramMembers(completion: @escaping (_ data: ListLoyaltyProgramMembersResponse?, _ error: Error?) -> Void)
```

Your loyalty members with tier, standing, grace and overrides; search, tier, status and sort filters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your loyalty members with tier, standing, grace and overrides; search, tier, status and sort filters.
CustomersAPI.listLoyaltyProgramMembers() { (response, error) in
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

**ListLoyaltyProgramMembersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateCustomerNote**
```swift
    open class func updateCustomerNote(handle: String, updateCustomerNoteRequest: UpdateCustomerNoteRequest, completion: @escaping (_ data: GetCustomerNoteResponse?, _ error: Error?) -> Void)
```

Save your private notes on a customer (an empty string clears them).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let handle = "handle_example" // String | 
let updateCustomerNoteRequest = UpdateCustomerNoteRequest(notes: "notes_example") // UpdateCustomerNoteRequest | 

// Save your private notes on a customer (an empty string clears them).
CustomersAPI.updateCustomerNote(handle: handle, updateCustomerNoteRequest: updateCustomerNoteRequest) { (response, error) in
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
 **updateCustomerNoteRequest** | **UpdateCustomerNoteRequest** |  | 

### Return type

**GetCustomerNoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
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

# **updateLoyaltyProgram**
```swift
    open class func updateLoyaltyProgram(completion: @escaping (_ data: UpdateLoyaltyProgramResponse?, _ error: Error?) -> Void)
```

Create or update your loyalty program settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create or update your loyalty program settings.
CustomersAPI.updateLoyaltyProgram() { (response, error) in
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

**UpdateLoyaltyProgramResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateLoyaltyTier**
```swift
    open class func updateLoyaltyTier(id: String, completion: @escaping (_ data: CreateLoyaltyTierResponse?, _ error: Error?) -> Void)
```

Replace a tier. Members holding it get the edited perks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Replace a tier. Members holding it get the edited perks.
CustomersAPI.updateLoyaltyTier(id: id) { (response, error) in
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

**CreateLoyaltyTierResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

