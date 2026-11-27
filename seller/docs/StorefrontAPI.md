# StorefrontAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStorefrontHighlight**](StorefrontAPI.md#createstorefronthighlight) | **POST** /v1/storefront/highlights | Create a highlight: title (up to 24 characters), optional coverUrl, and optional storyIds (your live or archived stories) to save into it. Up to 50 per store.
[**createStorefrontHighlightItem**](StorefrontAPI.md#createstorefronthighlightitem) | **POST** /v1/storefront/highlights/{id}/items | Save stories into a highlight (appended in the order given). Each is copied, so it stays after the story expires. A story already in the highlight is skipped.
[**createStorefrontProfileSuggestShelve**](StorefrontAPI.md#createstorefrontprofilesuggestshelve) | **POST** /v1/storefront/profile/suggest-shelves | Profile shelves proposed from your top tags and categories (not saved).
[**createStorefrontSection**](StorefrontAPI.md#createstorefrontsection) | **POST** /v1/storefront/sections | Add a section at the bottom: kind hero | listings | collections | about | policies | social | announcement | faq (default listings), with its config.
[**createStorefrontSitePreview**](StorefrontAPI.md#createstorefrontsitepreview) | **POST** /v1/storefront/site/preview | Resolve an unsaved design page like the live site would: every section with its listings and extras (preview: true).
[**createStorefrontSitePublish**](StorefrontAPI.md#createstorefrontsitepublish) | **POST** /v1/storefront/site/publish | Publish the draft: it becomes the live site and a publish version is kept (the last 30 versions are kept).
[**createStorefrontSiteResolve**](StorefrontAPI.md#createstorefrontsiteresolve) | **POST** /v1/storefront/site/resolve | The live listings a ListingSource (manual, tags, category, smart rule or all) selects from your store, and how many match.
[**createStorefrontSiteStarter**](StorefrontAPI.md#createstorefrontsitestarter) | **POST** /v1/storefront/site/starter | Replace the draft with a starter site (vintage, sneakers, streetwear, collectibles, boutique, home, minimal, drop, general). The current draft is kept as a version first.
[**createStorefrontSiteSuggest**](StorefrontAPI.md#createstorefrontsitesuggest) | **POST** /v1/storefront/site/suggest | Auto-build: website sections proposed from your top tags and categories (not saved).
[**createStorefrontSiteVersionRestore**](StorefrontAPI.md#createstorefrontsiteversionrestore) | **POST** /v1/storefront/site/versions/{id}/restore | Copy a saved version into the draft (the current draft is kept as a version first). Publish to make it live.
[**createStorefrontTradeSitePublish**](StorefrontAPI.md#createstorefronttradesitepublish) | **POST** /v1/storefront/trade-site/publish | Publish the trade site draft (a version is kept).
[**createStorefrontTradeSiteResolve**](StorefrontAPI.md#createstorefronttradesiteresolve) | **POST** /v1/storefront/trade-site/resolve | The listings a ListingSource selects on your trade site: only items in your active wholesale catalogs (narrowed further by source.catalogIds), and how many match.
[**createStorefrontTradeSiteStarter**](StorefrontAPI.md#createstorefronttradesitestarter) | **POST** /v1/storefront/trade-site/starter | Replace the trade site draft with a trade starter (trade_classic, trade_line_sheet, trade_brand_house, trade_apply_first). The current draft is kept as a version first.
[**createStorefrontTradeSiteSuggest**](StorefrontAPI.md#createstorefronttradesitesuggest) | **POST** /v1/storefront/trade-site/suggest | Trade Auto-build: trade site sections proposed from your wholesale catalogs (a spotlight, a rail per catalog, terms, apply banner). Not saved.
[**deleteStorefrontHighlight**](StorefrontAPI.md#deletestorefronthighlight) | **DELETE** /v1/storefront/highlights/{id} | Delete a highlight and its saved stories. The original stories are unaffected.
[**deleteStorefrontHighlightItem**](StorefrontAPI.md#deletestorefronthighlightitem) | **DELETE** /v1/storefront/highlights/{id}/items/{itemId} | Remove one saved story from a highlight.
[**deleteStorefrontSection**](StorefrontAPI.md#deletestorefrontsection) | **DELETE** /v1/storefront/sections/{id} | Remove a section. Listings on a removed shelf stay live.
[**getStorefront**](StorefrontAPI.md#getstorefront) | **GET** /v1/storefront | Your storefront design: banner, logo, tagline, bio, theme, SEO title and description, social links, and whether it is published.
[**getStorefrontMerch**](StorefrontAPI.md#getstorefrontmerch) | **GET** /v1/storefront/merch | Your store&#39;s live listings by tag, category, condition and brand, with the price range: what product sources can select.
[**getStorefrontProfile**](StorefrontAPI.md#getstorefrontprofile) | **GET** /v1/storefront/profile | Your shop profile (the Crossly Shop page): banner, logo, tagline, bio, accent, announcement, shelves, blocks and All items options.
[**getStorefrontShipping**](StorefrontAPI.md#getstorefrontshipping) | **GET** /v1/storefront/shipping | Your Crossly shipping policy (domestic and international services, which countries you ship to) and your default ship-from address.
[**getStorefrontSite**](StorefrontAPI.md#getstorefrontsite) | **GET** /v1/storefront/site | Your store website: the draft design, what is live, when each changed, whether the site is switched on, and its custom domain.
[**getStorefrontTradeSite**](StorefrontAPI.md#getstorefronttradesite) | **GET** /v1/storefront/trade-site | Your store&#39;s trade (wholesale) site at /site/:slug/trade: the draft, what is live, whether it is on and its gating (public | prices_private | approved_only).
[**listStorefrontHighlights**](StorefrontAPI.md#liststorefronthighlights) | **GET** /v1/storefront/highlights | Your store’s story highlights in display order, each with its saved stories (media, overlays, product tie-in, when posted). Empty highlights included.
[**listStorefrontSections**](StorefrontAPI.md#liststorefrontsections) | **GET** /v1/storefront/sections | Your storefront sections in display order: kind, title, visible, config, and listing ids for listings shelves.
[**listStorefrontSiteVersions**](StorefrontAPI.md#liststorefrontsiteversions) | **GET** /v1/storefront/site/versions | Saved versions of the website, newest first (publish, restore and template points; up to 30).
[**listStorefrontStoryArchive**](StorefrontAPI.md#liststorefrontstoryarchive) | **GET** /v1/storefront/stories/archive | Your stories, live and expired, newest first: what can be saved to a highlight. Paginated: pass before &#x3D; meta.nextCursor of the previous page.
[**updateStorefront**](StorefrontAPI.md#updatestorefront) | **PUT** /v1/storefront | Update your storefront design. Omitted fields are unchanged, null clears. published&#x3D;false keeps the design as a draft and buyers see the standard storefront.
[**updateStorefrontHighlight**](StorefrontAPI.md#updatestorefronthighlight) | **PATCH** /v1/storefront/highlights/{id} | Rename a highlight or change its cover (coverUrl null &#x3D; use the first story).
[**updateStorefrontHighlightItemOrder**](StorefrontAPI.md#updatestorefronthighlightitemorder) | **PUT** /v1/storefront/highlights/{id}/items/order | Set the order of a highlight’s saved stories: every item id, first to last.
[**updateStorefrontHighlightOrder**](StorefrontAPI.md#updatestorefronthighlightorder) | **PUT** /v1/storefront/highlights/order | Set the highlight order in one call: every highlight id, first to last.
[**updateStorefrontProfile**](StorefrontAPI.md#updatestorefrontprofile) | **PUT** /v1/storefront/profile | Replace your shop profile (a complete ShopProfile). Saved straight away.
[**updateStorefrontSection**](StorefrontAPI.md#updatestorefrontsection) | **PATCH** /v1/storefront/sections/{id} | Rename, show/hide, refill (listings shelves) or reconfigure a section.
[**updateStorefrontSectionReorder**](StorefrontAPI.md#updatestorefrontsectionreorder) | **PUT** /v1/storefront/sections/reorder | Set the section order in one atomic call: every section id, top to bottom.
[**updateStorefrontShipping**](StorefrontAPI.md#updatestorefrontshipping) | **PUT** /v1/storefront/shipping | Set your shipping policy (international.enabled, shipsTo worldwide or ISO codes, excludes) and/or your default ship-from address (any country; 422 for a sanctioned origin).
[**updateStorefrontSiteDraft**](StorefrontAPI.md#updatestorefrontsitedraft) | **PUT** /v1/storefront/site/draft | Save the website draft (a complete SiteDesign). Validated strictly (a bad field is a 400 naming its path) and sanitized; buyers see nothing until you publish.
[**updateStorefrontSiteEnabled**](StorefrontAPI.md#updatestorefrontsiteenabled) | **PUT** /v1/storefront/site/enabled | Switch the website on or off. On requires a publish first; off makes /site/:slug 404 and the custom domain show the shop profile.
[**updateStorefrontTradeSiteDraft**](StorefrontAPI.md#updatestorefronttradesitedraft) | **PUT** /v1/storefront/trade-site/draft | Save the trade site draft (a complete SiteDesign; trade sections included). Validated strictly and sanitized.
[**updateStorefrontTradeSiteEnabled**](StorefrontAPI.md#updatestorefronttradesiteenabled) | **PUT** /v1/storefront/trade-site/enabled | Switch the trade site on (needs a publish first) or off.
[**updateStorefrontTradeSiteGating**](StorefrontAPI.md#updatestorefronttradesitegating) | **PUT** /v1/storefront/trade-site/gating | Who sees the trade site: public (everyone, with prices), prices_private (everyone, prices for approved buyers) or approved_only (approved buyers; others get the apply page).


# **createStorefrontHighlight**
```swift
    open class func createStorefrontHighlight(completion: @escaping (_ data: CreateStorefrontHighlightResponse?, _ error: Error?) -> Void)
```

Create a highlight: title (up to 24 characters), optional coverUrl, and optional storyIds (your live or archived stories) to save into it. Up to 50 per store.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a highlight: title (up to 24 characters), optional coverUrl, and optional storyIds (your live or archived stories) to save into it. Up to 50 per store.
StorefrontAPI.createStorefrontHighlight() { (response, error) in
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

**CreateStorefrontHighlightResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontHighlightItem**
```swift
    open class func createStorefrontHighlightItem(id: String, completion: @escaping (_ data: StorefrontHighlightResponse?, _ error: Error?) -> Void)
```

Save stories into a highlight (appended in the order given). Each is copied, so it stays after the story expires. A story already in the highlight is skipped.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Save stories into a highlight (appended in the order given). Each is copied, so it stays after the story expires. A story already in the highlight is skipped.
StorefrontAPI.createStorefrontHighlightItem(id: id) { (response, error) in
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

**StorefrontHighlightResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontProfileSuggestShelve**
```swift
    open class func createStorefrontProfileSuggestShelve(completion: @escaping (_ data: CreateStorefrontProfileSuggestShelveResponse?, _ error: Error?) -> Void)
```

Profile shelves proposed from your top tags and categories (not saved).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Profile shelves proposed from your top tags and categories (not saved).
StorefrontAPI.createStorefrontProfileSuggestShelve() { (response, error) in
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

**CreateStorefrontProfileSuggestShelveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontSection**
```swift
    open class func createStorefrontSection(completion: @escaping (_ data: StorefrontSectionResponse?, _ error: Error?) -> Void)
```

Add a section at the bottom: kind hero | listings | collections | about | policies | social | announcement | faq (default listings), with its config.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Add a section at the bottom: kind hero | listings | collections | about | policies | social | announcement | faq (default listings), with its config.
StorefrontAPI.createStorefrontSection() { (response, error) in
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

**StorefrontSectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontSitePreview**
```swift
    open class func createStorefrontSitePreview(completion: @escaping (_ data: CreateStorefrontSitePreviewResponse?, _ error: Error?) -> Void)
```

Resolve an unsaved design page like the live site would: every section with its listings and extras (preview: true).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Resolve an unsaved design page like the live site would: every section with its listings and extras (preview: true).
StorefrontAPI.createStorefrontSitePreview() { (response, error) in
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

**CreateStorefrontSitePreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontSitePublish**
```swift
    open class func createStorefrontSitePublish(completion: @escaping (_ data: StorefrontResponse2?, _ error: Error?) -> Void)
```

Publish the draft: it becomes the live site and a publish version is kept (the last 30 versions are kept).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Publish the draft: it becomes the live site and a publish version is kept (the last 30 versions are kept).
StorefrontAPI.createStorefrontSitePublish() { (response, error) in
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

**StorefrontResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontSiteResolve**
```swift
    open class func createStorefrontSiteResolve(completion: @escaping (_ data: CreateStorefrontSiteResolveResponse?, _ error: Error?) -> Void)
```

The live listings a ListingSource (manual, tags, category, smart rule or all) selects from your store, and how many match.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The live listings a ListingSource (manual, tags, category, smart rule or all) selects from your store, and how many match.
StorefrontAPI.createStorefrontSiteResolve() { (response, error) in
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

**CreateStorefrontSiteResolveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontSiteStarter**
```swift
    open class func createStorefrontSiteStarter(completion: @escaping (_ data: StorefrontResponse2?, _ error: Error?) -> Void)
```

Replace the draft with a starter site (vintage, sneakers, streetwear, collectibles, boutique, home, minimal, drop, general). The current draft is kept as a version first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Replace the draft with a starter site (vintage, sneakers, streetwear, collectibles, boutique, home, minimal, drop, general). The current draft is kept as a version first.
StorefrontAPI.createStorefrontSiteStarter() { (response, error) in
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

**StorefrontResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontSiteSuggest**
```swift
    open class func createStorefrontSiteSuggest(completion: @escaping (_ data: CreateStorefrontSiteSuggestResponse?, _ error: Error?) -> Void)
```

Auto-build: website sections proposed from your top tags and categories (not saved).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Auto-build: website sections proposed from your top tags and categories (not saved).
StorefrontAPI.createStorefrontSiteSuggest() { (response, error) in
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

**CreateStorefrontSiteSuggestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontSiteVersionRestore**
```swift
    open class func createStorefrontSiteVersionRestore(id: String, completion: @escaping (_ data: StorefrontResponse3?, _ error: Error?) -> Void)
```

Copy a saved version into the draft (the current draft is kept as a version first). Publish to make it live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Copy a saved version into the draft (the current draft is kept as a version first). Publish to make it live.
StorefrontAPI.createStorefrontSiteVersionRestore(id: id) { (response, error) in
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

**StorefrontResponse3**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontTradeSitePublish**
```swift
    open class func createStorefrontTradeSitePublish(completion: @escaping (_ data: StorefrontResponse2?, _ error: Error?) -> Void)
```

Publish the trade site draft (a version is kept).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Publish the trade site draft (a version is kept).
StorefrontAPI.createStorefrontTradeSitePublish() { (response, error) in
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

**StorefrontResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontTradeSiteResolve**
```swift
    open class func createStorefrontTradeSiteResolve(completion: @escaping (_ data: CreateStorefrontSiteResolveResponse?, _ error: Error?) -> Void)
```

The listings a ListingSource selects on your trade site: only items in your active wholesale catalogs (narrowed further by source.catalogIds), and how many match.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The listings a ListingSource selects on your trade site: only items in your active wholesale catalogs (narrowed further by source.catalogIds), and how many match.
StorefrontAPI.createStorefrontTradeSiteResolve() { (response, error) in
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

**CreateStorefrontSiteResolveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontTradeSiteStarter**
```swift
    open class func createStorefrontTradeSiteStarter(completion: @escaping (_ data: StorefrontResponse2?, _ error: Error?) -> Void)
```

Replace the trade site draft with a trade starter (trade_classic, trade_line_sheet, trade_brand_house, trade_apply_first). The current draft is kept as a version first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Replace the trade site draft with a trade starter (trade_classic, trade_line_sheet, trade_brand_house, trade_apply_first). The current draft is kept as a version first.
StorefrontAPI.createStorefrontTradeSiteStarter() { (response, error) in
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

**StorefrontResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStorefrontTradeSiteSuggest**
```swift
    open class func createStorefrontTradeSiteSuggest(completion: @escaping (_ data: CreateStorefrontSiteSuggestResponse?, _ error: Error?) -> Void)
```

Trade Auto-build: trade site sections proposed from your wholesale catalogs (a spotlight, a rail per catalog, terms, apply banner). Not saved.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Trade Auto-build: trade site sections proposed from your wholesale catalogs (a spotlight, a rail per catalog, terms, apply banner). Not saved.
StorefrontAPI.createStorefrontTradeSiteSuggest() { (response, error) in
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

**CreateStorefrontSiteSuggestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteStorefrontHighlight**
```swift
    open class func deleteStorefrontHighlight(id: String, completion: @escaping (_ data: DeleteStoryResponse?, _ error: Error?) -> Void)
```

Delete a highlight and its saved stories. The original stories are unaffected.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a highlight and its saved stories. The original stories are unaffected.
StorefrontAPI.deleteStorefrontHighlight(id: id) { (response, error) in
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

**DeleteStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteStorefrontHighlightItem**
```swift
    open class func deleteStorefrontHighlightItem(id: String, itemId: String, completion: @escaping (_ data: StorefrontHighlightResponse?, _ error: Error?) -> Void)
```

Remove one saved story from a highlight.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let itemId = "itemId_example" // String | 

// Remove one saved story from a highlight.
StorefrontAPI.deleteStorefrontHighlightItem(id: id, itemId: itemId) { (response, error) in
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
 **itemId** | **String** |  | 

### Return type

**StorefrontHighlightResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteStorefrontSection**
```swift
    open class func deleteStorefrontSection(id: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Remove a section. Listings on a removed shelf stay live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Remove a section. Listings on a removed shelf stay live.
StorefrontAPI.deleteStorefrontSection(id: id) { (response, error) in
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

# **getStorefront**
```swift
    open class func getStorefront(completion: @escaping (_ data: GetStorefrontResponse?, _ error: Error?) -> Void)
```

Your storefront design: banner, logo, tagline, bio, theme, SEO title and description, social links, and whether it is published.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your storefront design: banner, logo, tagline, bio, theme, SEO title and description, social links, and whether it is published.
StorefrontAPI.getStorefront() { (response, error) in
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

**GetStorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStorefrontMerch**
```swift
    open class func getStorefrontMerch(completion: @escaping (_ data: GetStorefrontMerchResponse?, _ error: Error?) -> Void)
```

Your store's live listings by tag, category, condition and brand, with the price range: what product sources can select.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your store's live listings by tag, category, condition and brand, with the price range: what product sources can select.
StorefrontAPI.getStorefrontMerch() { (response, error) in
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

**GetStorefrontMerchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStorefrontProfile**
```swift
    open class func getStorefrontProfile(completion: @escaping (_ data: GetStorefrontProfileResponse?, _ error: Error?) -> Void)
```

Your shop profile (the Crossly Shop page): banner, logo, tagline, bio, accent, announcement, shelves, blocks and All items options.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your shop profile (the Crossly Shop page): banner, logo, tagline, bio, accent, announcement, shelves, blocks and All items options.
StorefrontAPI.getStorefrontProfile() { (response, error) in
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

**GetStorefrontProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStorefrontShipping**
```swift
    open class func getStorefrontShipping(completion: @escaping (_ data: GetStorefrontShippingResponse?, _ error: Error?) -> Void)
```

Your Crossly shipping policy (domestic and international services, which countries you ship to) and your default ship-from address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Crossly shipping policy (domestic and international services, which countries you ship to) and your default ship-from address.
StorefrontAPI.getStorefrontShipping() { (response, error) in
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

**GetStorefrontShippingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStorefrontSite**
```swift
    open class func getStorefrontSite(completion: @escaping (_ data: StorefrontResponse3?, _ error: Error?) -> Void)
```

Your store website: the draft design, what is live, when each changed, whether the site is switched on, and its custom domain.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your store website: the draft design, what is live, when each changed, whether the site is switched on, and its custom domain.
StorefrontAPI.getStorefrontSite() { (response, error) in
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

**StorefrontResponse3**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getStorefrontTradeSite**
```swift
    open class func getStorefrontTradeSite(completion: @escaping (_ data: StorefrontResponse3?, _ error: Error?) -> Void)
```

Your store's trade (wholesale) site at /site/:slug/trade: the draft, what is live, whether it is on and its gating (public | prices_private | approved_only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your store's trade (wholesale) site at /site/:slug/trade: the draft, what is live, whether it is on and its gating (public | prices_private | approved_only).
StorefrontAPI.getStorefrontTradeSite() { (response, error) in
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

**StorefrontResponse3**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listStorefrontHighlights**
```swift
    open class func listStorefrontHighlights(completion: @escaping (_ data: ListStorefrontHighlightsResponse?, _ error: Error?) -> Void)
```

Your store’s story highlights in display order, each with its saved stories (media, overlays, product tie-in, when posted). Empty highlights included.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your store’s story highlights in display order, each with its saved stories (media, overlays, product tie-in, when posted). Empty highlights included.
StorefrontAPI.listStorefrontHighlights() { (response, error) in
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

**ListStorefrontHighlightsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listStorefrontSections**
```swift
    open class func listStorefrontSections(completion: @escaping (_ data: StorefrontResponse4?, _ error: Error?) -> Void)
```

Your storefront sections in display order: kind, title, visible, config, and listing ids for listings shelves.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your storefront sections in display order: kind, title, visible, config, and listing ids for listings shelves.
StorefrontAPI.listStorefrontSections() { (response, error) in
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

**StorefrontResponse4**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listStorefrontSiteVersions**
```swift
    open class func listStorefrontSiteVersions(completion: @escaping (_ data: ListStorefrontSiteVersionsResponse?, _ error: Error?) -> Void)
```

Saved versions of the website, newest first (publish, restore and template points; up to 30).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Saved versions of the website, newest first (publish, restore and template points; up to 30).
StorefrontAPI.listStorefrontSiteVersions() { (response, error) in
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

**ListStorefrontSiteVersionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listStorefrontStoryArchive**
```swift
    open class func listStorefrontStoryArchive(completion: @escaping (_ data: ListStorefrontStoryArchiveResponse?, _ error: Error?) -> Void)
```

Your stories, live and expired, newest first: what can be saved to a highlight. Paginated: pass before = meta.nextCursor of the previous page.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your stories, live and expired, newest first: what can be saved to a highlight. Paginated: pass before = meta.nextCursor of the previous page.
StorefrontAPI.listStorefrontStoryArchive() { (response, error) in
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

**ListStorefrontStoryArchiveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefront**
```swift
    open class func updateStorefront(completion: @escaping (_ data: GetStorefrontResponse?, _ error: Error?) -> Void)
```

Update your storefront design. Omitted fields are unchanged, null clears. published=false keeps the design as a draft and buyers see the standard storefront.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Update your storefront design. Omitted fields are unchanged, null clears. published=false keeps the design as a draft and buyers see the standard storefront.
StorefrontAPI.updateStorefront() { (response, error) in
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

**GetStorefrontResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontHighlight**
```swift
    open class func updateStorefrontHighlight(id: String, completion: @escaping (_ data: StorefrontHighlightResponse?, _ error: Error?) -> Void)
```

Rename a highlight or change its cover (coverUrl null = use the first story).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Rename a highlight or change its cover (coverUrl null = use the first story).
StorefrontAPI.updateStorefrontHighlight(id: id) { (response, error) in
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

**StorefrontHighlightResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontHighlightItemOrder**
```swift
    open class func updateStorefrontHighlightItemOrder(id: String, completion: @escaping (_ data: StorefrontHighlightResponse?, _ error: Error?) -> Void)
```

Set the order of a highlight’s saved stories: every item id, first to last.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Set the order of a highlight’s saved stories: every item id, first to last.
StorefrontAPI.updateStorefrontHighlightItemOrder(id: id) { (response, error) in
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

**StorefrontHighlightResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontHighlightOrder**
```swift
    open class func updateStorefrontHighlightOrder(completion: @escaping (_ data: ListStorefrontHighlightsResponse?, _ error: Error?) -> Void)
```

Set the highlight order in one call: every highlight id, first to last.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set the highlight order in one call: every highlight id, first to last.
StorefrontAPI.updateStorefrontHighlightOrder() { (response, error) in
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

**ListStorefrontHighlightsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontProfile**
```swift
    open class func updateStorefrontProfile(completion: @escaping (_ data: UpdateStorefrontProfileResponse?, _ error: Error?) -> Void)
```

Replace your shop profile (a complete ShopProfile). Saved straight away.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Replace your shop profile (a complete ShopProfile). Saved straight away.
StorefrontAPI.updateStorefrontProfile() { (response, error) in
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

**UpdateStorefrontProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontSection**
```swift
    open class func updateStorefrontSection(id: String, completion: @escaping (_ data: StorefrontSectionResponse?, _ error: Error?) -> Void)
```

Rename, show/hide, refill (listings shelves) or reconfigure a section.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Rename, show/hide, refill (listings shelves) or reconfigure a section.
StorefrontAPI.updateStorefrontSection(id: id) { (response, error) in
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

# **updateStorefrontSectionReorder**
```swift
    open class func updateStorefrontSectionReorder(completion: @escaping (_ data: StorefrontResponse4?, _ error: Error?) -> Void)
```

Set the section order in one atomic call: every section id, top to bottom.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set the section order in one atomic call: every section id, top to bottom.
StorefrontAPI.updateStorefrontSectionReorder() { (response, error) in
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

**StorefrontResponse4**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontShipping**
```swift
    open class func updateStorefrontShipping(completion: @escaping (_ data: GetStorefrontShippingResponse?, _ error: Error?) -> Void)
```

Set your shipping policy (international.enabled, shipsTo worldwide or ISO codes, excludes) and/or your default ship-from address (any country; 422 for a sanctioned origin).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set your shipping policy (international.enabled, shipsTo worldwide or ISO codes, excludes) and/or your default ship-from address (any country; 422 for a sanctioned origin).
StorefrontAPI.updateStorefrontShipping() { (response, error) in
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

**GetStorefrontShippingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontSiteDraft**
```swift
    open class func updateStorefrontSiteDraft(completion: @escaping (_ data: StorefrontResponse2?, _ error: Error?) -> Void)
```

Save the website draft (a complete SiteDesign). Validated strictly (a bad field is a 400 naming its path) and sanitized; buyers see nothing until you publish.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Save the website draft (a complete SiteDesign). Validated strictly (a bad field is a 400 naming its path) and sanitized; buyers see nothing until you publish.
StorefrontAPI.updateStorefrontSiteDraft() { (response, error) in
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

**StorefrontResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontSiteEnabled**
```swift
    open class func updateStorefrontSiteEnabled(completion: @escaping (_ data: StorefrontResponse3?, _ error: Error?) -> Void)
```

Switch the website on or off. On requires a publish first; off makes /site/:slug 404 and the custom domain show the shop profile.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Switch the website on or off. On requires a publish first; off makes /site/:slug 404 and the custom domain show the shop profile.
StorefrontAPI.updateStorefrontSiteEnabled() { (response, error) in
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

**StorefrontResponse3**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontTradeSiteDraft**
```swift
    open class func updateStorefrontTradeSiteDraft(completion: @escaping (_ data: StorefrontResponse2?, _ error: Error?) -> Void)
```

Save the trade site draft (a complete SiteDesign; trade sections included). Validated strictly and sanitized.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Save the trade site draft (a complete SiteDesign; trade sections included). Validated strictly and sanitized.
StorefrontAPI.updateStorefrontTradeSiteDraft() { (response, error) in
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

**StorefrontResponse2**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontTradeSiteEnabled**
```swift
    open class func updateStorefrontTradeSiteEnabled(completion: @escaping (_ data: StorefrontResponse3?, _ error: Error?) -> Void)
```

Switch the trade site on (needs a publish first) or off.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Switch the trade site on (needs a publish first) or off.
StorefrontAPI.updateStorefrontTradeSiteEnabled() { (response, error) in
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

**StorefrontResponse3**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateStorefrontTradeSiteGating**
```swift
    open class func updateStorefrontTradeSiteGating(completion: @escaping (_ data: StorefrontResponse3?, _ error: Error?) -> Void)
```

Who sees the trade site: public (everyone, with prices), prices_private (everyone, prices for approved buyers) or approved_only (approved buyers; others get the apply page).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Who sees the trade site: public (everyone, with prices), prices_private (everyone, prices for approved buyers) or approved_only (approved buyers; others get the apply page).
StorefrontAPI.updateStorefrontTradeSiteGating() { (response, error) in
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

**StorefrontResponse3**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

