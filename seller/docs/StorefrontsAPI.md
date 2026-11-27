# StorefrontsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStorefront**](StorefrontsAPI.md#createstorefront) | **POST** /v1/storefronts | Create a store: name (1-60) and optional slug (3-40 lowercase letters, numbers, hyphens; derived from the name when omitted). Your first store becomes the default.
[**createStorefrontListingMove**](StorefrontsAPI.md#createstorefrontlistingmove) | **POST** /v1/storefronts/{id}/listings/{platformListingId}/move | Move a Crossly listing (by its platform_listing id) into this store.
[**createStorefrontOnboardingSkip**](StorefrontsAPI.md#createstorefrontonboardingskip) | **POST** /v1/storefronts/onboarding/skip | Skip (or dismiss) the setup wizard: ensures your default store exists, with a generated name you can rename any time. Idempotent.
[**createStorefrontOnboardingSuggest**](StorefrontsAPI.md#createstorefrontonboardingsuggest) | **POST** /v1/storefronts/onboarding/suggest | Suggest another generated store name with a free matching slug.
[**createStorefrontPolicyFromTerm**](StorefrontsAPI.md#createstorefrontpolicyfromterm) | **POST** /v1/storefronts/{id}/policies/from-terms | Create a policy preset from this store&#39;s current terms (body: { kind: &#39;shipping&#39; | &#39;return&#39; | &#39;payment&#39; }) and assign it to the store. Returns { preset, policies }.
[**createStorefrontPolicyUseShared**](StorefrontsAPI.md#createstorefrontpolicyuseshared) | **POST** /v1/storefronts/{id}/policies/use-shared | Make a store use your shared policies: a non-default store drops its own return/shipping/payment policy copies and shows your default policies from then on. No change on the default store. Returns the store settings (policySource per kind, usesOwnPolicy).
[**createStorefrontPublish**](StorefrontsAPI.md#createstorefrontpublish) | **POST** /v1/storefronts/{id}/publish | Flip a store live. Fails with storefront_requirements_missing (and the missing list) when ship-from, shipping policy, return policy or payouts are not set.
[**createStorefrontSectionById**](StorefrontsAPI.md#createstorefrontsectionbyid) | **POST** /v1/storefronts/{id}/sections | Add a section to a store (kind hero | listings | collections | about | policies | social | announcement | faq | creations).
[**deleteStorefront**](StorefrontsAPI.md#deletestorefront) | **DELETE** /v1/storefronts/{id} | Archive a store. If it was the default, your oldest remaining store becomes the default.
[**deleteStorefrontSectionBySectionId**](StorefrontsAPI.md#deletestorefrontsectionbysectionid) | **DELETE** /v1/storefronts/{id}/sections/{sectionId} | Remove a section from a store. Listings on a removed shelf stay live.
[**deleteStorefrontTeamAccess**](StorefrontsAPI.md#deletestorefrontteamaccess) | **DELETE** /v1/storefronts/team-access | Revoke a team member&#39;s access to one store (or their all-stores grant).
[**getHubSetup**](StorefrontsAPI.md#gethubsetup) | **GET** /v1/hub/setup/{section} | A Hub section&#39;s setup checklist: each step, whether it is done and the page that completes it. Derived from what exists, never stored.
[**getStorefrontById**](StorefrontsAPI.md#getstorefrontbyid) | **GET** /v1/storefronts/{id} | One store: name, slug, status (draft|live|paused|archived), isDefault, nameAuto, onboardedAt.
[**getStorefrontOnboarding**](StorefrontsAPI.md#getstorefrontonboarding) | **GET** /v1/storefronts/onboarding | Crossly Shop setup state: whether you have a store, the generated name/slug a skip would use, each optional step and whether it is done, the listing-gate requirements, payouts readiness and the public URL once live.
[**getStorefrontPolicy**](StorefrontsAPI.md#getstorefrontpolicy) | **GET** /v1/storefronts/{id}/policies | A store&#39;s policies: per kind (shipping, return, payment) the preset the store picked (presetId, null &#x3D; your default) and what the store resolves to (resolvedPresetId, resolvedPresetName, level: store | seller_default | legacy | default, body).
[**getStorefrontRequirement**](StorefrontsAPI.md#getstorefrontrequirement) | **GET** /v1/storefronts/{id}/requirements | What this store still needs before a NEW Crossly listing can publish into it: ship_from, shipping_policy, return_policy, payouts — with where to fix each.
[**getStorefrontSetting**](StorefrontsAPI.md#getstorefrontsetting) | **GET** /v1/storefronts/{id}/settings | A store&#39;s settings: design (banner, logo, theme, SEO, social, published), ship-from, return address, policies (storePolicies: the store&#39;s preset picks + what each kind resolves to), custom-order flag, featured listings, bundle discount, custom domain. DEPRECATED aliases, resolved through the policy cascade: offersFreeShipping, freeShippingThresholdCents, offersLocalPickup, localCourierEnabled, acceptsLayaway, sellerProtections, requestArrivalCondition, arrivalConditionWindowHours — use /v1/storefronts/:id/policies and the preset fields.
[**getStorefrontSlugAvailable**](StorefrontsAPI.md#getstorefrontslugavailable) | **GET** /v1/storefronts/slug-available | Is this store slug free? Checks shape, reserved words, current slugs and retired ones.
[**listStorefrontSectionsById**](StorefrontsAPI.md#liststorefrontsectionsbyid) | **GET** /v1/storefronts/{id}/sections | A store&#39;s sections in display order.
[**listStorefrontTeamAccess**](StorefrontsAPI.md#liststorefrontteamaccess) | **GET** /v1/storefronts/team-access | Every active per-store grant you have made to team members (storefrontId null &#x3D; all stores).
[**listStorefronts**](StorefrontsAPI.md#liststorefronts) | **GET** /v1/storefronts | Your stores (default first). includeArchived&#x3D;true adds archived ones.
[**updateStorefrontById**](StorefrontsAPI.md#updatestorefrontbyid) | **PATCH** /v1/storefronts/{id} | Rename a store. Never changes the slug or your @handle.
[**updateStorefrontDefault**](StorefrontsAPI.md#updatestorefrontdefault) | **PUT** /v1/storefronts/{id}/default | Make this store your default (where a Crossly publish with no storefrontId lands).
[**updateStorefrontPolicy**](StorefrontsAPI.md#updatestorefrontpolicy) | **PUT** /v1/storefronts/{id}/policies | Set a store&#39;s policies: shippingPresetId, returnPresetId, paymentPresetId (a policy preset of that kind you own, or null for your default). Omitted &#x3D; unchanged. Listings in the store with no preset of their own follow these.
[**updateStorefrontSectionBySectionId**](StorefrontsAPI.md#updatestorefrontsectionbysectionid) | **PATCH** /v1/storefronts/{id}/sections/{sectionId} | Rename, show/hide, refill (listings shelves) or reconfigure one section of a store.
[**updateStorefrontSectionReorderById**](StorefrontsAPI.md#updatestorefrontsectionreorderbyid) | **PUT** /v1/storefronts/{id}/sections/reorder | Set a store&#39;s section order in one atomic call: every section id, top to bottom.
[**updateStorefrontSetting**](StorefrontsAPI.md#updatestorefrontsetting) | **PUT** /v1/storefronts/{id}/settings | Update a store&#39;s settings. Omitted fields are unchanged, null clears. Policies replace wholesale. shippingPresetId / returnPresetId / paymentPresetId pick the store&#39;s presets. The checkout-term fields (offersFreeShipping … arrivalConditionWindowHours) are DEPRECATED aliases: they are written into the store&#39;s preset.
[**updateStorefrontSlug**](StorefrontsAPI.md#updatestorefrontslug) | **PUT** /v1/storefronts/{id}/slug | Change a store&#39;s slug. The old slug keeps redirecting to the store.
[**updateStorefrontStatus**](StorefrontsAPI.md#updatestorefrontstatus) | **PUT** /v1/storefronts/{id}/status | Set a store&#39;s status: draft | live | paused | archived. A live store is public once it has a live listing.
[**updateStorefrontTeamAccess**](StorefrontsAPI.md#updatestorefrontteamaccess) | **PUT** /v1/storefronts/team-access | Grant (or replace) a team member&#39;s access to one store, or to every store (storefrontId null), with scopes.


# **createStorefront**
```swift
    open class func createStorefront(completion: @escaping (_ data: StorefrontResponse?, _ error: Error?) -> Void)
```

Create a store: name (1-60) and optional slug (3-40 lowercase letters, numbers, hyphens; derived from the name when omitted). Your first store becomes the default.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a store: name (1-60) and optional slug (3-40 lowercase letters, numbers, hyphens; derived from the name when omitted). Your first store becomes the default.
StorefrontsAPI.createStorefront() { (response, error) in
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

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontListingMove**
```swift
    open class func createStorefrontListingMove(id: String, platformListingId: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Move a Crossly listing (by its platform_listing id) into this store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let platformListingId = "platformListingId_example" // String | 

// Move a Crossly listing (by its platform_listing id) into this store.
StorefrontsAPI.createStorefrontListingMove(id: id, platformListingId: platformListingId) { (response, error) in
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
 **platformListingId** | **String** |  | 

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontOnboardingSkip**
```swift
    open class func createStorefrontOnboardingSkip(completion: @escaping (_ data: StorefrontResponse?, _ error: Error?) -> Void)
```

Skip (or dismiss) the setup wizard: ensures your default store exists, with a generated name you can rename any time. Idempotent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Skip (or dismiss) the setup wizard: ensures your default store exists, with a generated name you can rename any time. Idempotent.
StorefrontsAPI.createStorefrontOnboardingSkip() { (response, error) in
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

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontOnboardingSuggest**
```swift
    open class func createStorefrontOnboardingSuggest(completion: @escaping (_ data: CreateStorefrontOnboardingSuggestResponse?, _ error: Error?) -> Void)
```

Suggest another generated store name with a free matching slug.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Suggest another generated store name with a free matching slug.
StorefrontsAPI.createStorefrontOnboardingSuggest() { (response, error) in
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

**CreateStorefrontOnboardingSuggestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontPolicyFromTerm**
```swift
    open class func createStorefrontPolicyFromTerm(id: String, completion: @escaping (_ data: CreateStorefrontPolicyFromTermResponse?, _ error: Error?) -> Void)
```

Create a policy preset from this store's current terms (body: { kind: 'shipping' | 'return' | 'payment' }) and assign it to the store. Returns { preset, policies }.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Create a policy preset from this store's current terms (body: { kind: 'shipping' | 'return' | 'payment' }) and assign it to the store. Returns { preset, policies }.
StorefrontsAPI.createStorefrontPolicyFromTerm(id: id) { (response, error) in
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

**CreateStorefrontPolicyFromTermResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontPolicyUseShared**
```swift
    open class func createStorefrontPolicyUseShared(id: String, completion: @escaping (_ data: UpdateStorefrontSettingResponse?, _ error: Error?) -> Void)
```

Make a store use your shared policies: a non-default store drops its own return/shipping/payment policy copies and shows your default policies from then on. No change on the default store. Returns the store settings (policySource per kind, usesOwnPolicy).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Make a store use your shared policies: a non-default store drops its own return/shipping/payment policy copies and shows your default policies from then on. No change on the default store. Returns the store settings (policySource per kind, usesOwnPolicy).
StorefrontsAPI.createStorefrontPolicyUseShared(id: id) { (response, error) in
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

**UpdateStorefrontSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontPublish**
```swift
    open class func createStorefrontPublish(id: String, completion: @escaping (_ data: StorefrontResponse?, _ error: Error?) -> Void)
```

Flip a store live. Fails with storefront_requirements_missing (and the missing list) when ship-from, shipping policy, return policy or payouts are not set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Flip a store live. Fails with storefront_requirements_missing (and the missing list) when ship-from, shipping policy, return policy or payouts are not set.
StorefrontsAPI.createStorefrontPublish(id: id) { (response, error) in
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

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontSectionById**
```swift
    open class func createStorefrontSectionById(id: String, completion: @escaping (_ data: StorefrontSectionResponse?, _ error: Error?) -> Void)
```

Add a section to a store (kind hero | listings | collections | about | policies | social | announcement | faq | creations).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Add a section to a store (kind hero | listings | collections | about | policies | social | announcement | faq | creations).
StorefrontsAPI.createStorefrontSectionById(id: id) { (response, error) in
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

**StorefrontSectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteStorefront**
```swift
    open class func deleteStorefront(id: String, completion: @escaping (_ data: StorefrontResponse?, _ error: Error?) -> Void)
```

Archive a store. If it was the default, your oldest remaining store becomes the default.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Archive a store. If it was the default, your oldest remaining store becomes the default.
StorefrontsAPI.deleteStorefront(id: id) { (response, error) in
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

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteStorefrontSectionBySectionId**
```swift
    open class func deleteStorefrontSectionBySectionId(id: String, sectionId: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Remove a section from a store. Listings on a removed shelf stay live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let sectionId = "sectionId_example" // String | 

// Remove a section from a store. Listings on a removed shelf stay live.
StorefrontsAPI.deleteStorefrontSectionBySectionId(id: id, sectionId: sectionId) { (response, error) in
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
 **sectionId** | **String** |  | 

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteStorefrontTeamAccess**
```swift
    open class func deleteStorefrontTeamAccess(completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Revoke a team member's access to one store (or their all-stores grant).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Revoke a team member's access to one store (or their all-stores grant).
StorefrontsAPI.deleteStorefrontTeamAccess() { (response, error) in
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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getHubSetup**
```swift
    open class func getHubSetup(section: Section_getHubSetup, completion: @escaping (_ data: GetHubSetupResponse?, _ error: Error?) -> Void)
```

A Hub section's setup checklist: each step, whether it is done and the page that completes it. Derived from what exists, never stored.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let section = "section_example" // String | 

// A Hub section's setup checklist: each step, whether it is done and the page that completes it. Derived from what exists, never stored.
StorefrontsAPI.getHubSetup(section: section) { (response, error) in
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
 **section** | **String** |  | 

### Return type

**GetHubSetupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStorefrontById**
```swift
    open class func getStorefrontById(id: String, completion: @escaping (_ data: StorefrontResponse?, _ error: Error?) -> Void)
```

One store: name, slug, status (draft|live|paused|archived), isDefault, nameAuto, onboardedAt.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One store: name, slug, status (draft|live|paused|archived), isDefault, nameAuto, onboardedAt.
StorefrontsAPI.getStorefrontById(id: id) { (response, error) in
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

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStorefrontOnboarding**
```swift
    open class func getStorefrontOnboarding(completion: @escaping (_ data: GetStorefrontOnboardingResponse?, _ error: Error?) -> Void)
```

Crossly Shop setup state: whether you have a store, the generated name/slug a skip would use, each optional step and whether it is done, the listing-gate requirements, payouts readiness and the public URL once live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Crossly Shop setup state: whether you have a store, the generated name/slug a skip would use, each optional step and whether it is done, the listing-gate requirements, payouts readiness and the public URL once live.
StorefrontsAPI.getStorefrontOnboarding() { (response, error) in
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

**GetStorefrontOnboardingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStorefrontPolicy**
```swift
    open class func getStorefrontPolicy(id: String, completion: @escaping (_ data: GetStorefrontPolicyResponse?, _ error: Error?) -> Void)
```

A store's policies: per kind (shipping, return, payment) the preset the store picked (presetId, null = your default) and what the store resolves to (resolvedPresetId, resolvedPresetName, level: store | seller_default | legacy | default, body).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A store's policies: per kind (shipping, return, payment) the preset the store picked (presetId, null = your default) and what the store resolves to (resolvedPresetId, resolvedPresetName, level: store | seller_default | legacy | default, body).
StorefrontsAPI.getStorefrontPolicy(id: id) { (response, error) in
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

**GetStorefrontPolicyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStorefrontRequirement**
```swift
    open class func getStorefrontRequirement(id: String, completion: @escaping (_ data: GetStorefrontRequirementResponse?, _ error: Error?) -> Void)
```

What this store still needs before a NEW Crossly listing can publish into it: ship_from, shipping_policy, return_policy, payouts — with where to fix each.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// What this store still needs before a NEW Crossly listing can publish into it: ship_from, shipping_policy, return_policy, payouts — with where to fix each.
StorefrontsAPI.getStorefrontRequirement(id: id) { (response, error) in
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

**GetStorefrontRequirementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStorefrontSetting**
```swift
    open class func getStorefrontSetting(id: String, completion: @escaping (_ data: GetStorefrontSettingResponse?, _ error: Error?) -> Void)
```

A store's settings: design (banner, logo, theme, SEO, social, published), ship-from, return address, policies (storePolicies: the store's preset picks + what each kind resolves to), custom-order flag, featured listings, bundle discount, custom domain. DEPRECATED aliases, resolved through the policy cascade: offersFreeShipping, freeShippingThresholdCents, offersLocalPickup, localCourierEnabled, acceptsLayaway, sellerProtections, requestArrivalCondition, arrivalConditionWindowHours — use /v1/storefronts/:id/policies and the preset fields.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A store's settings: design (banner, logo, theme, SEO, social, published), ship-from, return address, policies (storePolicies: the store's preset picks + what each kind resolves to), custom-order flag, featured listings, bundle discount, custom domain. DEPRECATED aliases, resolved through the policy cascade: offersFreeShipping, freeShippingThresholdCents, offersLocalPickup, localCourierEnabled, acceptsLayaway, sellerProtections, requestArrivalCondition, arrivalConditionWindowHours — use /v1/storefronts/:id/policies and the preset fields.
StorefrontsAPI.getStorefrontSetting(id: id) { (response, error) in
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

**GetStorefrontSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStorefrontSlugAvailable**
```swift
    open class func getStorefrontSlugAvailable(completion: @escaping (_ data: GetStorefrontSlugAvailableResponse?, _ error: Error?) -> Void)
```

Is this store slug free? Checks shape, reserved words, current slugs and retired ones.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Is this store slug free? Checks shape, reserved words, current slugs and retired ones.
StorefrontsAPI.getStorefrontSlugAvailable() { (response, error) in
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

**GetStorefrontSlugAvailableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listStorefrontSectionsById**
```swift
    open class func listStorefrontSectionsById(id: String, completion: @escaping (_ data: StorefrontResponse4?, _ error: Error?) -> Void)
```

A store's sections in display order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A store's sections in display order.
StorefrontsAPI.listStorefrontSectionsById(id: id) { (response, error) in
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

**StorefrontResponse4**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listStorefrontTeamAccess**
```swift
    open class func listStorefrontTeamAccess(completion: @escaping (_ data: ListStorefrontTeamAccessResponse?, _ error: Error?) -> Void)
```

Every active per-store grant you have made to team members (storefrontId null = all stores).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every active per-store grant you have made to team members (storefrontId null = all stores).
StorefrontsAPI.listStorefrontTeamAccess() { (response, error) in
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

**ListStorefrontTeamAccessResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listStorefronts**
```swift
    open class func listStorefronts(completion: @escaping (_ data: ListStorefrontsResponse?, _ error: Error?) -> Void)
```

Your stores (default first). includeArchived=true adds archived ones.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your stores (default first). includeArchived=true adds archived ones.
StorefrontsAPI.listStorefronts() { (response, error) in
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

**ListStorefrontsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontById**
```swift
    open class func updateStorefrontById(id: String, completion: @escaping (_ data: StorefrontResponse?, _ error: Error?) -> Void)
```

Rename a store. Never changes the slug or your @handle.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Rename a store. Never changes the slug or your @handle.
StorefrontsAPI.updateStorefrontById(id: id) { (response, error) in
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

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontDefault**
```swift
    open class func updateStorefrontDefault(id: String, completion: @escaping (_ data: StorefrontResponse?, _ error: Error?) -> Void)
```

Make this store your default (where a Crossly publish with no storefrontId lands).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Make this store your default (where a Crossly publish with no storefrontId lands).
StorefrontsAPI.updateStorefrontDefault(id: id) { (response, error) in
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

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontPolicy**
```swift
    open class func updateStorefrontPolicy(id: String, completion: @escaping (_ data: GetStorefrontPolicyResponse?, _ error: Error?) -> Void)
```

Set a store's policies: shippingPresetId, returnPresetId, paymentPresetId (a policy preset of that kind you own, or null for your default). Omitted = unchanged. Listings in the store with no preset of their own follow these.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Set a store's policies: shippingPresetId, returnPresetId, paymentPresetId (a policy preset of that kind you own, or null for your default). Omitted = unchanged. Listings in the store with no preset of their own follow these.
StorefrontsAPI.updateStorefrontPolicy(id: id) { (response, error) in
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

**GetStorefrontPolicyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontSectionBySectionId**
```swift
    open class func updateStorefrontSectionBySectionId(id: String, sectionId: String, completion: @escaping (_ data: StorefrontSectionResponse?, _ error: Error?) -> Void)
```

Rename, show/hide, refill (listings shelves) or reconfigure one section of a store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let sectionId = "sectionId_example" // String | 

// Rename, show/hide, refill (listings shelves) or reconfigure one section of a store.
StorefrontsAPI.updateStorefrontSectionBySectionId(id: id, sectionId: sectionId) { (response, error) in
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
 **sectionId** | **String** |  | 

### Return type

**StorefrontSectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontSectionReorderById**
```swift
    open class func updateStorefrontSectionReorderById(id: String, completion: @escaping (_ data: StorefrontResponse4?, _ error: Error?) -> Void)
```

Set a store's section order in one atomic call: every section id, top to bottom.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Set a store's section order in one atomic call: every section id, top to bottom.
StorefrontsAPI.updateStorefrontSectionReorderById(id: id) { (response, error) in
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

**StorefrontResponse4**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontSetting**
```swift
    open class func updateStorefrontSetting(id: String, completion: @escaping (_ data: UpdateStorefrontSettingResponse?, _ error: Error?) -> Void)
```

Update a store's settings. Omitted fields are unchanged, null clears. Policies replace wholesale. shippingPresetId / returnPresetId / paymentPresetId pick the store's presets. The checkout-term fields (offersFreeShipping … arrivalConditionWindowHours) are DEPRECATED aliases: they are written into the store's preset.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Update a store's settings. Omitted fields are unchanged, null clears. Policies replace wholesale. shippingPresetId / returnPresetId / paymentPresetId pick the store's presets. The checkout-term fields (offersFreeShipping … arrivalConditionWindowHours) are DEPRECATED aliases: they are written into the store's preset.
StorefrontsAPI.updateStorefrontSetting(id: id) { (response, error) in
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

**UpdateStorefrontSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontSlug**
```swift
    open class func updateStorefrontSlug(id: String, completion: @escaping (_ data: StorefrontResponse?, _ error: Error?) -> Void)
```

Change a store's slug. The old slug keeps redirecting to the store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Change a store's slug. The old slug keeps redirecting to the store.
StorefrontsAPI.updateStorefrontSlug(id: id) { (response, error) in
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

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontStatus**
```swift
    open class func updateStorefrontStatus(id: String, completion: @escaping (_ data: StorefrontResponse?, _ error: Error?) -> Void)
```

Set a store's status: draft | live | paused | archived. A live store is public once it has a live listing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Set a store's status: draft | live | paused | archived. A live store is public once it has a live listing.
StorefrontsAPI.updateStorefrontStatus(id: id) { (response, error) in
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

**StorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontTeamAccess**
```swift
    open class func updateStorefrontTeamAccess(completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Grant (or replace) a team member's access to one store, or to every store (storefrontId null), with scopes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Grant (or replace) a team member's access to one store, or to every store (storefrontId null), with scopes.
StorefrontsAPI.updateStorefrontTeamAccess() { (response, error) in
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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

