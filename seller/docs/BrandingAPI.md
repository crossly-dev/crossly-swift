# BrandingAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBrandingDrop**](BrandingAPI.md#createbrandingdrop) | **POST** /v1/branding/drops | Create a drop as a draft. &#x60;config&#x60; is the full drop config (what, where: shop|world|live|storefront|featured, format, access, limits, pricing, schedule, promotion, fulfilment). Returns rule problems to fix before publishing.
[**createBrandingDropControl**](BrandingAPI.md#createbrandingdropcontrol) | **POST** /v1/branding/drops/{id}/controls/{control} | Live controls: pause, resume, extend (body endsAt), release-wave, end, draw (raffle).
[**createBrandingDropPublish**](BrandingAPI.md#createbrandingdroppublish) | **POST** /v1/branding/drops/{id}/publish | Publish: scheduled, or pending_review for a brand partner without self-publish. Brand partners need a verified business on Stripe (403 business_verification_required).
[**createBrandingEventCancel**](BrandingAPI.md#createbrandingeventcancel) | **POST** /v1/branding/events/{id}/cancel | Cancel a published event with the reason attendees see.
[**createBrandingEventCheckIn**](BrandingAPI.md#createbrandingeventcheckin) | **POST** /v1/branding/events/{id}/check-in | Check a ticket in at the door by its QR token.
[**createBrandingEventMessage**](BrandingAPI.md#createbrandingeventmessage) | **POST** /v1/branding/events/{id}/messages | Message the event&#39;s attendees: all, going, or ticketed.
[**deleteBrandingDrop**](BrandingAPI.md#deletebrandingdrop) | **DELETE** /v1/branding/drops/{id} | Delete a draft, or cancel a scheduled drop. A live drop is ended with the end control.
[**getBrandingBrand**](BrandingAPI.md#getbrandingbrand) | **GET** /v1/branding/brand | Your brand profile (approved brand partners).
[**getBrandingBusinessVerification**](BrandingAPI.md#getbrandingbusinessverification) | **GET** /v1/branding/business-verification | Whether your Stripe account is a verified business (company, EIN/tax id verified, payouts on), with reasons and the page to fix it.
[**getBrandingDrop**](BrandingAPI.md#getbrandingdrop) | **GET** /v1/branding/drops/{id} | One of your drops.
[**getBrandingEvent**](BrandingAPI.md#getbrandingevent) | **GET** /v1/branding/events | Your events: upcoming grouped by date (today, this_week, later), or past.
[**getBrandingSetting**](BrandingAPI.md#getbrandingsetting) | **GET** /v1/branding/settings | The store’s Branding defaults new drops start from: timezone, notifyFollowers, botQueue, botCaptcha, cartHoldMinutes, leftovers.
[**listBrandingDrops**](BrandingAPI.md#listbrandingdrops) | **GET** /v1/branding/drops | Your drops, newest first, with config, waves, counts (entries, holding, sold, buyers) and phase. ?scope&#x3D;upcoming|live|past|drafts|all.
[**updateBrandingBrand**](BrandingAPI.md#updatebrandingbrand) | **PATCH** /v1/branding/brand | Edit your brand profile: logoUrl, bannerUrl, story, links.
[**updateBrandingDrop**](BrandingAPI.md#updatebrandingdrop) | **PATCH** /v1/branding/drops/{id} | Edit a drop that is not live yet. A published drop refuses rule problems (400 drop_config_problems).
[**updateBrandingEventSetting**](BrandingAPI.md#updatebrandingeventsetting) | **PUT** /v1/branding/events/{id}/settings | Save an event&#39;s full settings (where, access, reminders, check-in, recording, linked drops) and ticket tiers.
[**updateBrandingSetting**](BrandingAPI.md#updatebrandingsetting) | **PATCH** /v1/branding/settings | Change the store’s Branding defaults (any subset of the fields).


# **createBrandingDrop**
```swift
    open class func createBrandingDrop(completion: @escaping (_ data: CreateBrandingDropResponse?, _ error: Error?) -> Void)
```

Create a drop as a draft. `config` is the full drop config (what, where: shop|world|live|storefront|featured, format, access, limits, pricing, schedule, promotion, fulfilment). Returns rule problems to fix before publishing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a drop as a draft. `config` is the full drop config (what, where: shop|world|live|storefront|featured, format, access, limits, pricing, schedule, promotion, fulfilment). Returns rule problems to fix before publishing.
BrandingAPI.createBrandingDrop() { (response, error) in
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

**CreateBrandingDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBrandingDropControl**
```swift
    open class func createBrandingDropControl(id: String, control: String, completion: @escaping (_ data: GetBrandingDropResponse?, _ error: Error?) -> Void)
```

Live controls: pause, resume, extend (body endsAt), release-wave, end, draw (raffle).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let control = "control_example" // String | 

// Live controls: pause, resume, extend (body endsAt), release-wave, end, draw (raffle).
BrandingAPI.createBrandingDropControl(id: id, control: control) { (response, error) in
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
 **control** | **String** |  | 

### Return type

**GetBrandingDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBrandingDropPublish**
```swift
    open class func createBrandingDropPublish(id: UUID, completion: @escaping (_ data: CreateBrandingDropPublishResponse?, _ error: Error?) -> Void)
```

Publish: scheduled, or pending_review for a brand partner without self-publish. Brand partners need a verified business on Stripe (403 business_verification_required).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Publish: scheduled, or pending_review for a brand partner without self-publish. Brand partners need a verified business on Stripe (403 business_verification_required).
BrandingAPI.createBrandingDropPublish(id: id) { (response, error) in
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

**CreateBrandingDropPublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBrandingEventCancel**
```swift
    open class func createBrandingEventCancel(id: UUID, completion: @escaping (_ data: CreateBrandingEventCancelResponse?, _ error: Error?) -> Void)
```

Cancel a published event with the reason attendees see.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Cancel a published event with the reason attendees see.
BrandingAPI.createBrandingEventCancel(id: id) { (response, error) in
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

**CreateBrandingEventCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBrandingEventCheckIn**
```swift
    open class func createBrandingEventCheckIn(id: UUID, completion: @escaping (_ data: CreateBrandingEventCheckInResponse?, _ error: Error?) -> Void)
```

Check a ticket in at the door by its QR token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Check a ticket in at the door by its QR token.
BrandingAPI.createBrandingEventCheckIn(id: id) { (response, error) in
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

**CreateBrandingEventCheckInResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBrandingEventMessage**
```swift
    open class func createBrandingEventMessage(id: UUID, completion: @escaping (_ data: CreateBrandingEventMessageResponse?, _ error: Error?) -> Void)
```

Message the event's attendees: all, going, or ticketed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Message the event's attendees: all, going, or ticketed.
BrandingAPI.createBrandingEventMessage(id: id) { (response, error) in
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

**CreateBrandingEventMessageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteBrandingDrop**
```swift
    open class func deleteBrandingDrop(id: UUID, completion: @escaping (_ data: DeleteBrandingDropResponse?, _ error: Error?) -> Void)
```

Delete a draft, or cancel a scheduled drop. A live drop is ended with the end control.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a draft, or cancel a scheduled drop. A live drop is ended with the end control.
BrandingAPI.deleteBrandingDrop(id: id) { (response, error) in
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

**DeleteBrandingDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBrandingBrand**
```swift
    open class func getBrandingBrand(completion: @escaping (_ data: GetBrandingBrandResponse?, _ error: Error?) -> Void)
```

Your brand profile (approved brand partners).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your brand profile (approved brand partners).
BrandingAPI.getBrandingBrand() { (response, error) in
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

**GetBrandingBrandResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBrandingBusinessVerification**
```swift
    open class func getBrandingBusinessVerification(completion: @escaping (_ data: GetBrandingBusinessVerificationResponse?, _ error: Error?) -> Void)
```

Whether your Stripe account is a verified business (company, EIN/tax id verified, payouts on), with reasons and the page to fix it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Whether your Stripe account is a verified business (company, EIN/tax id verified, payouts on), with reasons and the page to fix it.
BrandingAPI.getBrandingBusinessVerification() { (response, error) in
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

**GetBrandingBusinessVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBrandingDrop**
```swift
    open class func getBrandingDrop(id: UUID, completion: @escaping (_ data: GetBrandingDropResponse?, _ error: Error?) -> Void)
```

One of your drops.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// One of your drops.
BrandingAPI.getBrandingDrop(id: id) { (response, error) in
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

**GetBrandingDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBrandingEvent**
```swift
    open class func getBrandingEvent(completion: @escaping (_ data: GetBrandingEventResponse?, _ error: Error?) -> Void)
```

Your events: upcoming grouped by date (today, this_week, later), or past.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your events: upcoming grouped by date (today, this_week, later), or past.
BrandingAPI.getBrandingEvent() { (response, error) in
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

**GetBrandingEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBrandingSetting**
```swift
    open class func getBrandingSetting(completion: @escaping (_ data: GetBrandingSettingResponse?, _ error: Error?) -> Void)
```

The store’s Branding defaults new drops start from: timezone, notifyFollowers, botQueue, botCaptcha, cartHoldMinutes, leftovers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The store’s Branding defaults new drops start from: timezone, notifyFollowers, botQueue, botCaptcha, cartHoldMinutes, leftovers.
BrandingAPI.getBrandingSetting() { (response, error) in
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

**GetBrandingSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBrandingDrops**
```swift
    open class func listBrandingDrops(completion: @escaping (_ data: ListBrandingDropsResponse?, _ error: Error?) -> Void)
```

Your drops, newest first, with config, waves, counts (entries, holding, sold, buyers) and phase. ?scope=upcoming|live|past|drafts|all.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your drops, newest first, with config, waves, counts (entries, holding, sold, buyers) and phase. ?scope=upcoming|live|past|drafts|all.
BrandingAPI.listBrandingDrops() { (response, error) in
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

**ListBrandingDropsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBrandingBrand**
```swift
    open class func updateBrandingBrand(completion: @escaping (_ data: GetBrandingBrandResponse?, _ error: Error?) -> Void)
```

Edit your brand profile: logoUrl, bannerUrl, story, links.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Edit your brand profile: logoUrl, bannerUrl, story, links.
BrandingAPI.updateBrandingBrand() { (response, error) in
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

**GetBrandingBrandResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBrandingDrop**
```swift
    open class func updateBrandingDrop(id: UUID, completion: @escaping (_ data: CreateBrandingDropResponse?, _ error: Error?) -> Void)
```

Edit a drop that is not live yet. A published drop refuses rule problems (400 drop_config_problems).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Edit a drop that is not live yet. A published drop refuses rule problems (400 drop_config_problems).
BrandingAPI.updateBrandingDrop(id: id) { (response, error) in
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

**CreateBrandingDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBrandingEventSetting**
```swift
    open class func updateBrandingEventSetting(id: UUID, completion: @escaping (_ data: UpdateBrandingEventSettingResponse?, _ error: Error?) -> Void)
```

Save an event's full settings (where, access, reminders, check-in, recording, linked drops) and ticket tiers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Save an event's full settings (where, access, reminders, check-in, recording, linked drops) and ticket tiers.
BrandingAPI.updateBrandingEventSetting(id: id) { (response, error) in
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

**UpdateBrandingEventSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateBrandingSetting**
```swift
    open class func updateBrandingSetting(completion: @escaping (_ data: GetBrandingSettingResponse?, _ error: Error?) -> Void)
```

Change the store’s Branding defaults (any subset of the fields).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Change the store’s Branding defaults (any subset of the fields).
BrandingAPI.updateBrandingSetting() { (response, error) in
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

**GetBrandingSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

