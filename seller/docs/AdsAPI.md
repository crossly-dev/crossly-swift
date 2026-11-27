# AdsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAdOffsiteCampaign**](AdsAPI.md#createadoffsitecampaign) | **POST** /v1/ads/offsite/campaigns | Launch an offsite campaign for an item.
[**createAdOffsiteResume**](AdsAPI.md#createadoffsiteresume) | **POST** /v1/ads/offsite/resume | Clear an auto-pause and resume offsite spend.
[**createListingAdBulkAdd**](AdsAPI.md#createlistingadbulkadd) | **POST** /v1/listing-ads/bulk-add | Add listings to a campaign by master listing id: each listing&#39;s live row on &#x60;platform&#x60; joins campaignId (a Crossly campaign uuid, or the marketplace&#39;s campaign id). A listing not live there is its own failed result.
[**createListingAdCampaign**](AdsAPI.md#createlistingadcampaign) | **POST** /v1/listing-ads/{platform}/campaigns | Create a campaign on the marketplace: program (promoted_listing_rate &#x3D; eBay General, a % of the sale; cpc_campaign &#x3D; eBay Priority, a daily budget), name, ratePct or dailyBudgetCents, startsAt/endsAt, and the program fields. Idempotency-Key supported.
[**createListingAdCampaignListing**](AdsAPI.md#createlistingadcampaignlisting) | **POST** /v1/listing-ads/{platform}/campaigns/{campaignId}/listings | Promote listings in a marketplace campaign. platformListingIds are Crossly platform-listing ids on that marketplace; ratePct sets the ad rate (eBay General). One result per listing.
[**createListingAdCampaignListingRemove**](AdsAPI.md#createlistingadcampaignlistingremove) | **POST** /v1/listing-ads/{platform}/campaigns/{campaignId}/listings/remove | Stop promoting listings in a marketplace campaign. One result per listing.
[**createSponsoredAdBillingTopupLink**](AdsAPI.md#createsponsoredadbillingtopuplink) | **POST** /v1/sponsored-ads/billing/topup-link | A Stripe Checkout link that adds amountCents ($5–$10,000) to the ad balance when the seller pays it. Nothing is charged until they do. Use an Idempotency-Key to get the same link back on a retry.
[**createSponsoredAdBoostRemove**](AdsAPI.md#createsponsoredadboostremove) | **POST** /v1/sponsored-ads/boosts/remove | Stop boosting listings in bulk.
[**createSponsoredAdCampaign**](AdsAPI.md#createsponsoredadcampaign) | **POST** /v1/sponsored-ads/campaigns | Create a Sponsored Listings campaign: name, dailyBudgetCents (≥100), optional totalBudgetCents, defaultBidCents (5–10000; the max bid under bidStrategy \&quot;auto\&quot;), placements (search, browse, product_page, home_rail, storefront, worlds_surface), goal (sales | visits), optional targetCategories / targetRegions (ISO countries) / targetDevices (mobile, desktop, app), optional startsAt/endsAt, listings [{platformListingId, bidCents?, boostBps? (100–2000, pay-on-sale Boost; null clears)}], keywords [{keyword, matchType broad|phrase|exact, negative?, bidCents?}], worldTargets [{kind showroom|convention, id, bidCents?, status?}] (your showroom or a convention you host, promoted in the Crossly World directory; at least one listing or world target), status active|draft. A catalog boost: targetType \&quot;wholesale_catalog\&quot; + targetCatalogId (your catalog), no listings, keywords or world targets; it ranks Sponsored in the wholesale directory. bidStrategy defaults to your account default. Clicks are charged from your ad funds (ad balance and/or CBX, ad credit first); with none it waits as out_of_budget.
[**createSponsoredAdCampaignDuplicate**](AdsAPI.md#createsponsoredadcampaignduplicate) | **POST** /v1/sponsored-ads/campaigns/{id}/duplicate | Copy a campaign (settings, listings, keywords) as a new draft.
[**createSponsoredAdCampaignStatus**](AdsAPI.md#createsponsoredadcampaignstatus) | **POST** /v1/sponsored-ads/campaigns/{id}/status | Set a campaign active (launch/resume), paused, or ended (final). Resuming with no ad funds to pay for clicks leaves it out_of_budget until you top up.
[**getAdOffsite**](AdsAPI.md#getadoffsite) | **GET** /v1/ads/offsite | Your offsite-ads opt-in and its terms.
[**getAdOffsiteEligibility**](AdsAPI.md#getadoffsiteeligibility) | **GET** /v1/ads/offsite/eligibility | Whether an item can run offsite, and why not.
[**getAdOffsiteReport**](AdsAPI.md#getadoffsitereport) | **GET** /v1/ads/offsite/report | What your offsite budget bought — including the misses.
[**getListingAdListing**](AdsAPI.md#getlistingadlisting) | **GET** /v1/listing-ads/listings/{listingId} | Every promotion of one listing: its Crossly campaigns and Boost, and each marketplace ad with status, campaign, rate and last sync.
[**getSponsoredAdBilling**](AdsAPI.md#getsponsoredadbilling) | **GET** /v1/sponsored-ads/billing | What pays for your ads: headroom across the billing rails (ad balance and/or CBX), unbilled click spend, settlement charges, daily spend, Boost fees and CBX ad-credit grants; funds is the full funds summary (same as /v1/sponsored-ads/funds). refresh&#x3D;true re-reads the balance.
[**getSponsoredAdBillingStatement**](AdsAPI.md#getsponsoredadbillingstatement) | **GET** /v1/sponsored-ads/billing/statements/{month} | One month&#39;s ads statement: opening and closing ad balance, top-ups, click spend by campaign, how clicks were paid, credits, refunds and Boost fees.
[**getSponsoredAdBillingStatementPdf**](AdsAPI.md#getsponsoredadbillingstatementpdf) | **GET** /v1/sponsored-ads/billing/statements/{month}/pdf | One month&#39;s ads statement as a PDF.
[**getSponsoredAdBillingTopupReceipt**](AdsAPI.md#getsponsoredadbillingtopupreceipt) | **GET** /v1/sponsored-ads/billing/topups/{id}/receipt | One ad balance top-up&#39;s receipt as a PDF (each top-up in the billing history carries its id and receipt number).
[**getSponsoredAdCampaign**](AdsAPI.md#getsponsoredadcampaign) | **GET** /v1/sponsored-ads/campaigns/{id} | One campaign: settings, its listings (bid, suggested bid, live, per-listing stats) and keywords. A catalog boost (targetType wholesale_catalog) has &#x60;catalogs&#x60;: per boosted catalog impressions, clicks, spend, attributed trade orders and revenue, CTR and ROAS.
[**getSponsoredAdFund**](AdsAPI.md#getsponsoredadfund) | **GET** /v1/sponsored-ads/funds | What can pay for clicks now: the billing rails in effect (ad balance and/or CBX), the ad balance and ad credit, CBX headroom, unbilled clicks, available cents, auto top-up, the saved payment method and the refundable balance. refresh&#x3D;true re-reads CBX.
[**getSponsoredAdReport**](AdsAPI.md#getsponsoredadreport) | **GET** /v1/sponsored-ads/report | Sponsored report for a range: totals (spend, impressions, clicks, CTR, average CPC, attributed orders and revenue, ROAS), a zero-filled daily series, per-campaign rows (targetType listings | wholesale_catalog) and &#x60;catalogs&#x60;, one row per boosted catalog. Listing orders are Crossly purchases of the advertised listing within 7 days of a click by the same buyer; catalog orders are trade orders with that seller within 7 days of a catalog click by the same buyer. Catalog impressions count once per viewer per day.
[**getSponsoredAdSetting**](AdsAPI.md#getsponsoredadsetting) | **GET** /v1/sponsored-ads/settings | Ads quick settings: adsPaused, accountDailyCapCents and spentTodayCents, defaultBidStrategy, autoTopup.
[**listListingAdCampaigns**](AdsAPI.md#listlistingadcampaigns) | **GET** /v1/listing-ads/{platform}/campaigns | Your ad campaigns on one marketplace (cached up to 15 minutes; refresh&#x3D;true asks the marketplace now).
[**listListingAdPlatforms**](AdsAPI.md#listlistingadplatforms) | **GET** /v1/listing-ads/platforms | The ads registry: each marketplace that sells promotion, its programs (kind, scope, campaign and listing fields), which verbs are wired / need a capture / are unsupported, and whether you are connected there.
[**listSponsoredAdBillingHistory**](AdsAPI.md#listsponsoredadbillinghistory) | **GET** /v1/sponsored-ads/billing/history | Billing history newest first: top-ups (status, receipt number), click charges (how each was paid: ad balance, credit, CBX, written off), credits, refunds and Boost fees. kind filters; before (ISO time) pages; limit ≤ 100.
[**listSponsoredAdBillingStatements**](AdsAPI.md#listsponsoredadbillingstatements) | **GET** /v1/sponsored-ads/billing/statements | Months (YYYY-MM) with any ad billing activity, newest first.
[**listSponsoredAdBoosts**](AdsAPI.md#listsponsoredadboosts) | **GET** /v1/sponsored-ads/boosts | Boosted (pay-on-sale) listings: the rate, sales and fees taken so far. A boost lifts organic ranking by up to 10% and costs its rate only when the listing sells on Crossly.
[**listSponsoredAdCampaigns**](AdsAPI.md#listsponsoredadcampaigns) | **GET** /v1/sponsored-ads/campaigns | Your Sponsored Listings campaigns with status, pacing (spent today, daily cap reached), budgets, bids, placements and stats for the range (from/to, YYYY-MM-DD; default last 30 days).
[**listSponsoredAdListings**](AdsAPI.md#listsponsoredadlistings) | **GET** /v1/sponsored-ads/listings | Per-listing ad performance across campaigns for a range, plus suggestions: live listings with views but few sales that are not sponsored yet, with a suggested bid.
[**updateAdOffsite**](AdsAPI.md#updateadoffsite) | **PUT** /v1/ads/offsite | Turn offsite ads on or off. Yours alone to set.
[**updateListingAdCampaign**](AdsAPI.md#updatelistingadcampaign) | **PATCH** /v1/listing-ads/{platform}/campaigns/{campaignId} | Change a marketplace campaign: name, dailyBudgetCents, endsAt (null clears), status paused | running | ended.
[**updateListingAdListingRate**](AdsAPI.md#updatelistingadlistingrate) | **PUT** /v1/listing-ads/{platform}/listings/{platformListingId}/rate | Change one promoted listing&#39;s ad rate (percent of the sale) in the campaign it is in.
[**updateSponsoredAdBillingAutoTopup**](AdsAPI.md#updatesponsoredadbillingautotopup) | **PUT** /v1/sponsored-ads/billing/auto-topup | Auto top-up: enabled, thresholdCents (top up when the ad balance drops below it), amountCents (how much). Needs a saved payment method (the first top-up saves it).
[**updateSponsoredAdBoost**](AdsAPI.md#updatesponsoredadboost) | **PUT** /v1/sponsored-ads/boosts | Boost listings in bulk (platformListingIds, upliftBps 100–2000 &#x3D; 1–20%), or change their rate. Your own live Crossly listings only.
[**updateSponsoredAdCampaign**](AdsAPI.md#updatesponsoredadcampaign) | **PATCH** /v1/sponsored-ads/campaigns/{id} | Edit a campaign. Any of the create fields; listings and keywords, when given, replace the current set. Raising the total budget resumes a campaign stopped by it.
[**updateSponsoredAdSetting**](AdsAPI.md#updatesponsoredadsetting) | **PATCH** /v1/sponsored-ads/settings | Change ads quick settings: adsPaused (pause / resume every ad), accountDailyCapCents (null &#x3D; no cap), defaultBidStrategy (auto | manual) for new campaigns, autoTopup {enabled, thresholdCents?, amountCents?}, railPreference (cash_first | cbx_first, both rails live only).


# **createAdOffsiteCampaign**
```swift
    open class func createAdOffsiteCampaign(completion: @escaping (_ data: CreateAdOffsiteCampaignResponse?, _ error: Error?) -> Void)
```

Launch an offsite campaign for an item.

Creative is built from the structured fields you pass — title, condition as you recorded it, price, image. We generate no prose and invent no claims about condition or authenticity: an ad saying \"mint\" or \"authenticated\" when your listing says neither is a misrepresentation we authored and YOU would take the dispute for. Refuses with 403 when no ad network is wired, rather than returning a campaign that does not exist — a campaign row marked live with nothing behind it would read as spending your money when it is not.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Launch an offsite campaign for an item.
AdsAPI.createAdOffsiteCampaign() { (response, error) in
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

**CreateAdOffsiteCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAdOffsiteResume**
```swift
    open class func createAdOffsiteResume(completion: @escaping (_ data: CreateAdOffsiteResumeResponse?, _ error: Error?) -> Void)
```

Clear an auto-pause and resume offsite spend.

Returns 409 when you are not actually paused. The pause reason is worth reading first — resuming without changing anything will usually just trip the floor again over the next window.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Clear an auto-pause and resume offsite spend.
AdsAPI.createAdOffsiteResume() { (response, error) in
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

**CreateAdOffsiteResumeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingAdBulkAdd**
```swift
    open class func createListingAdBulkAdd(completion: @escaping (_ data: CreateListingAdBulkAddResponse?, _ error: Error?) -> Void)
```

Add listings to a campaign by master listing id: each listing's live row on `platform` joins campaignId (a Crossly campaign uuid, or the marketplace's campaign id). A listing not live there is its own failed result.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Add listings to a campaign by master listing id: each listing's live row on `platform` joins campaignId (a Crossly campaign uuid, or the marketplace's campaign id). A listing not live there is its own failed result.
AdsAPI.createListingAdBulkAdd() { (response, error) in
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

**CreateListingAdBulkAddResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingAdCampaign**
```swift
    open class func createListingAdCampaign(platform: String, completion: @escaping (_ data: CreateListingAdCampaignResponse?, _ error: Error?) -> Void)
```

Create a campaign on the marketplace: program (promoted_listing_rate = eBay General, a % of the sale; cpc_campaign = eBay Priority, a daily budget), name, ratePct or dailyBudgetCents, startsAt/endsAt, and the program fields. Idempotency-Key supported.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 

// Create a campaign on the marketplace: program (promoted_listing_rate = eBay General, a % of the sale; cpc_campaign = eBay Priority, a daily budget), name, ratePct or dailyBudgetCents, startsAt/endsAt, and the program fields. Idempotency-Key supported.
AdsAPI.createListingAdCampaign(platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**CreateListingAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingAdCampaignListing**
```swift
    open class func createListingAdCampaignListing(platform: String, campaignId: String, completion: @escaping (_ data: CreateListingAdCampaignListingResponse?, _ error: Error?) -> Void)
```

Promote listings in a marketplace campaign. platformListingIds are Crossly platform-listing ids on that marketplace; ratePct sets the ad rate (eBay General). One result per listing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let campaignId = "campaignId_example" // String | 

// Promote listings in a marketplace campaign. platformListingIds are Crossly platform-listing ids on that marketplace; ratePct sets the ad rate (eBay General). One result per listing.
AdsAPI.createListingAdCampaignListing(platform: platform, campaignId: campaignId) { (response, error) in
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
 **platform** | **String** |  | 
 **campaignId** | **String** |  | 

### Return type

**CreateListingAdCampaignListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingAdCampaignListingRemove**
```swift
    open class func createListingAdCampaignListingRemove(platform: String, campaignId: String, completion: @escaping (_ data: CreateListingAdCampaignListingResponse?, _ error: Error?) -> Void)
```

Stop promoting listings in a marketplace campaign. One result per listing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let campaignId = "campaignId_example" // String | 

// Stop promoting listings in a marketplace campaign. One result per listing.
AdsAPI.createListingAdCampaignListingRemove(platform: platform, campaignId: campaignId) { (response, error) in
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
 **platform** | **String** |  | 
 **campaignId** | **String** |  | 

### Return type

**CreateListingAdCampaignListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSponsoredAdBillingTopupLink**
```swift
    open class func createSponsoredAdBillingTopupLink(completion: @escaping (_ data: CreateSponsoredAdBillingTopupLinkResponse?, _ error: Error?) -> Void)
```

A Stripe Checkout link that adds amountCents ($5–$10,000) to the ad balance when the seller pays it. Nothing is charged until they do. Use an Idempotency-Key to get the same link back on a retry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A Stripe Checkout link that adds amountCents ($5–$10,000) to the ad balance when the seller pays it. Nothing is charged until they do. Use an Idempotency-Key to get the same link back on a retry.
AdsAPI.createSponsoredAdBillingTopupLink() { (response, error) in
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

**CreateSponsoredAdBillingTopupLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSponsoredAdBoostRemove**
```swift
    open class func createSponsoredAdBoostRemove(completion: @escaping (_ data: CreateSponsoredAdBoostRemoveResponse?, _ error: Error?) -> Void)
```

Stop boosting listings in bulk.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Stop boosting listings in bulk.
AdsAPI.createSponsoredAdBoostRemove() { (response, error) in
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

**CreateSponsoredAdBoostRemoveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSponsoredAdCampaign**
```swift
    open class func createSponsoredAdCampaign(completion: @escaping (_ data: SponsoredAdCampaignResponse?, _ error: Error?) -> Void)
```

Create a Sponsored Listings campaign: name, dailyBudgetCents (≥100), optional totalBudgetCents, defaultBidCents (5–10000; the max bid under bidStrategy \"auto\"), placements (search, browse, product_page, home_rail, storefront, worlds_surface), goal (sales | visits), optional targetCategories / targetRegions (ISO countries) / targetDevices (mobile, desktop, app), optional startsAt/endsAt, listings [{platformListingId, bidCents?, boostBps? (100–2000, pay-on-sale Boost; null clears)}], keywords [{keyword, matchType broad|phrase|exact, negative?, bidCents?}], worldTargets [{kind showroom|convention, id, bidCents?, status?}] (your showroom or a convention you host, promoted in the Crossly World directory; at least one listing or world target), status active|draft. A catalog boost: targetType \"wholesale_catalog\" + targetCatalogId (your catalog), no listings, keywords or world targets; it ranks Sponsored in the wholesale directory. bidStrategy defaults to your account default. Clicks are charged from your ad funds (ad balance and/or CBX, ad credit first); with none it waits as out_of_budget.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a Sponsored Listings campaign: name, dailyBudgetCents (≥100), optional totalBudgetCents, defaultBidCents (5–10000; the max bid under bidStrategy \"auto\"), placements (search, browse, product_page, home_rail, storefront, worlds_surface), goal (sales | visits), optional targetCategories / targetRegions (ISO countries) / targetDevices (mobile, desktop, app), optional startsAt/endsAt, listings [{platformListingId, bidCents?, boostBps? (100–2000, pay-on-sale Boost; null clears)}], keywords [{keyword, matchType broad|phrase|exact, negative?, bidCents?}], worldTargets [{kind showroom|convention, id, bidCents?, status?}] (your showroom or a convention you host, promoted in the Crossly World directory; at least one listing or world target), status active|draft. A catalog boost: targetType \"wholesale_catalog\" + targetCatalogId (your catalog), no listings, keywords or world targets; it ranks Sponsored in the wholesale directory. bidStrategy defaults to your account default. Clicks are charged from your ad funds (ad balance and/or CBX, ad credit first); with none it waits as out_of_budget.
AdsAPI.createSponsoredAdCampaign() { (response, error) in
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

**SponsoredAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSponsoredAdCampaignDuplicate**
```swift
    open class func createSponsoredAdCampaignDuplicate(id: String, completion: @escaping (_ data: SponsoredAdCampaignResponse?, _ error: Error?) -> Void)
```

Copy a campaign (settings, listings, keywords) as a new draft.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Copy a campaign (settings, listings, keywords) as a new draft.
AdsAPI.createSponsoredAdCampaignDuplicate(id: id) { (response, error) in
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

**SponsoredAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSponsoredAdCampaignStatus**
```swift
    open class func createSponsoredAdCampaignStatus(id: String, completion: @escaping (_ data: SponsoredAdCampaignResponse?, _ error: Error?) -> Void)
```

Set a campaign active (launch/resume), paused, or ended (final). Resuming with no ad funds to pay for clicks leaves it out_of_budget until you top up.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Set a campaign active (launch/resume), paused, or ended (final). Resuming with no ad funds to pay for clicks leaves it out_of_budget until you top up.
AdsAPI.createSponsoredAdCampaignStatus(id: id) { (response, error) in
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

**SponsoredAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAdOffsite**
```swift
    open class func getAdOffsite(completion: @escaping (_ data: GetAdOffsiteResponse?, _ error: Error?) -> Void)
```

Your offsite-ads opt-in and its terms.

Offsite ads spend your CBX advertising budget on external networks — Google, Meta and similar — at our discretion. Your item gets promoted, and the traffic lands on Crossly. OFF unless you turn it on, and there is no path that enables it on your behalf. Media is passed through AT COST with a separate, disclosed management fee, so you can always see how much of your budget reached the auction. `minReturnBps` is a STOP, not a guarantee: below it, offsite spend auto-pauses and the rest of your budget reverts to on-platform placement. Nobody can honestly promise ad performance; what we can promise is that it stops.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your offsite-ads opt-in and its terms.
AdsAPI.getAdOffsite() { (response, error) in
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

**GetAdOffsiteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAdOffsiteEligibility**
```swift
    open class func getAdOffsiteEligibility(completion: @escaping (_ data: GetAdOffsiteEligibilityResponse?, _ error: Error?) -> Void)
```

Whether an item can run offsite, and why not.

Reasons: `not_opted_in`, `auto_paused`, `network_not_allowed`, `category_not_allowlisted`, `no_adapter`, `no_budget`. The category check is an ALLOWLIST, so an unclassified category is not eligible. That is not bureaucracy: ad networks suspend the ACCOUNT over a prohibited item, and the account is one shared resource across every merchant using this — so one listing could take offsite ads away from all of them. A blocklist would fail open on the first category nobody thought of.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Whether an item can run offsite, and why not.
AdsAPI.getAdOffsiteEligibility() { (response, error) in
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

**GetAdOffsiteEligibilityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAdOffsiteReport**
```swift
    open class func getAdOffsiteReport(completion: @escaping (_ data: GetAdOffsiteReportResponse?, _ error: Error?) -> Void)
```

What your offsite budget bought — including the misses.

Spend, impressions and clicks are reported whether or not anything converted. A report showing only conversions is a report nobody can audit, and this is a feature where you handed over discretion over your money. `mediaCostCents` versus `managementFeeCents` answers \"how much of my budget reached the auction\" — the two are recorded separately so the answer survives. `spilloverConversions` is sales your ads produced on OTHER sellers' items. Reported so you can see whether offsite traffic is reaching buyers who want your item — a high spillover rate is the signal to turn it off. `returnBps` is attributed revenue as bps of spend; compare it with your `minReturnBps` floor.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What your offsite budget bought — including the misses.
AdsAPI.getAdOffsiteReport() { (response, error) in
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

**GetAdOffsiteReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getListingAdListing**
```swift
    open class func getListingAdListing(listingId: String, completion: @escaping (_ data: GetListingAdListingResponse?, _ error: Error?) -> Void)
```

Every promotion of one listing: its Crossly campaigns and Boost, and each marketplace ad with status, campaign, rate and last sync.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let listingId = "listingId_example" // String | 

// Every promotion of one listing: its Crossly campaigns and Boost, and each marketplace ad with status, campaign, rate and last sync.
AdsAPI.getListingAdListing(listingId: listingId) { (response, error) in
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
 **listingId** | **String** |  | 

### Return type

**GetListingAdListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSponsoredAdBilling**
```swift
    open class func getSponsoredAdBilling(completion: @escaping (_ data: GetSponsoredAdBillingResponse?, _ error: Error?) -> Void)
```

What pays for your ads: headroom across the billing rails (ad balance and/or CBX), unbilled click spend, settlement charges, daily spend, Boost fees and CBX ad-credit grants; funds is the full funds summary (same as /v1/sponsored-ads/funds). refresh=true re-reads the balance.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What pays for your ads: headroom across the billing rails (ad balance and/or CBX), unbilled click spend, settlement charges, daily spend, Boost fees and CBX ad-credit grants; funds is the full funds summary (same as /v1/sponsored-ads/funds). refresh=true re-reads the balance.
AdsAPI.getSponsoredAdBilling() { (response, error) in
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

**GetSponsoredAdBillingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSponsoredAdBillingStatement**
```swift
    open class func getSponsoredAdBillingStatement(month: String, completion: @escaping (_ data: GetSponsoredAdBillingStatementResponse?, _ error: Error?) -> Void)
```

One month's ads statement: opening and closing ad balance, top-ups, click spend by campaign, how clicks were paid, credits, refunds and Boost fees.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let month = "month_example" // String | 

// One month's ads statement: opening and closing ad balance, top-ups, click spend by campaign, how clicks were paid, credits, refunds and Boost fees.
AdsAPI.getSponsoredAdBillingStatement(month: month) { (response, error) in
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
 **month** | **String** |  | 

### Return type

**GetSponsoredAdBillingStatementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSponsoredAdBillingStatementPdf**
```swift
    open class func getSponsoredAdBillingStatementPdf(month: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

One month's ads statement as a PDF.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let month = "month_example" // String | 

// One month's ads statement as a PDF.
AdsAPI.getSponsoredAdBillingStatementPdf(month: month) { (response, error) in
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
 **month** | **String** |  | 

### Return type

**URL**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSponsoredAdBillingTopupReceipt**
```swift
    open class func getSponsoredAdBillingTopupReceipt(id: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

One ad balance top-up's receipt as a PDF (each top-up in the billing history carries its id and receipt number).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One ad balance top-up's receipt as a PDF (each top-up in the billing history carries its id and receipt number).
AdsAPI.getSponsoredAdBillingTopupReceipt(id: id) { (response, error) in
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

**URL**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSponsoredAdCampaign**
```swift
    open class func getSponsoredAdCampaign(id: String, completion: @escaping (_ data: SponsoredAdCampaignResponse?, _ error: Error?) -> Void)
```

One campaign: settings, its listings (bid, suggested bid, live, per-listing stats) and keywords. A catalog boost (targetType wholesale_catalog) has `catalogs`: per boosted catalog impressions, clicks, spend, attributed trade orders and revenue, CTR and ROAS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One campaign: settings, its listings (bid, suggested bid, live, per-listing stats) and keywords. A catalog boost (targetType wholesale_catalog) has `catalogs`: per boosted catalog impressions, clicks, spend, attributed trade orders and revenue, CTR and ROAS.
AdsAPI.getSponsoredAdCampaign(id: id) { (response, error) in
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

**SponsoredAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSponsoredAdFund**
```swift
    open class func getSponsoredAdFund(completion: @escaping (_ data: GetSponsoredAdFundResponse?, _ error: Error?) -> Void)
```

What can pay for clicks now: the billing rails in effect (ad balance and/or CBX), the ad balance and ad credit, CBX headroom, unbilled clicks, available cents, auto top-up, the saved payment method and the refundable balance. refresh=true re-reads CBX.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What can pay for clicks now: the billing rails in effect (ad balance and/or CBX), the ad balance and ad credit, CBX headroom, unbilled clicks, available cents, auto top-up, the saved payment method and the refundable balance. refresh=true re-reads CBX.
AdsAPI.getSponsoredAdFund() { (response, error) in
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

**GetSponsoredAdFundResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSponsoredAdReport**
```swift
    open class func getSponsoredAdReport(completion: @escaping (_ data: GetSponsoredAdReportResponse?, _ error: Error?) -> Void)
```

Sponsored report for a range: totals (spend, impressions, clicks, CTR, average CPC, attributed orders and revenue, ROAS), a zero-filled daily series, per-campaign rows (targetType listings | wholesale_catalog) and `catalogs`, one row per boosted catalog. Listing orders are Crossly purchases of the advertised listing within 7 days of a click by the same buyer; catalog orders are trade orders with that seller within 7 days of a catalog click by the same buyer. Catalog impressions count once per viewer per day.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Sponsored report for a range: totals (spend, impressions, clicks, CTR, average CPC, attributed orders and revenue, ROAS), a zero-filled daily series, per-campaign rows (targetType listings | wholesale_catalog) and `catalogs`, one row per boosted catalog. Listing orders are Crossly purchases of the advertised listing within 7 days of a click by the same buyer; catalog orders are trade orders with that seller within 7 days of a catalog click by the same buyer. Catalog impressions count once per viewer per day.
AdsAPI.getSponsoredAdReport() { (response, error) in
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

**GetSponsoredAdReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSponsoredAdSetting**
```swift
    open class func getSponsoredAdSetting(completion: @escaping (_ data: SponsoredAdResponse?, _ error: Error?) -> Void)
```

Ads quick settings: adsPaused, accountDailyCapCents and spentTodayCents, defaultBidStrategy, autoTopup.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Ads quick settings: adsPaused, accountDailyCapCents and spentTodayCents, defaultBidStrategy, autoTopup.
AdsAPI.getSponsoredAdSetting() { (response, error) in
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

**SponsoredAdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listListingAdCampaigns**
```swift
    open class func listListingAdCampaigns(platform: String, completion: @escaping (_ data: ListListingAdCampaignsResponse?, _ error: Error?) -> Void)
```

Your ad campaigns on one marketplace (cached up to 15 minutes; refresh=true asks the marketplace now).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 

// Your ad campaigns on one marketplace (cached up to 15 minutes; refresh=true asks the marketplace now).
AdsAPI.listListingAdCampaigns(platform: platform) { (response, error) in
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
 **platform** | **String** |  | 

### Return type

**ListListingAdCampaignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listListingAdPlatforms**
```swift
    open class func listListingAdPlatforms(completion: @escaping (_ data: ListListingAdPlatformsResponse?, _ error: Error?) -> Void)
```

The ads registry: each marketplace that sells promotion, its programs (kind, scope, campaign and listing fields), which verbs are wired / need a capture / are unsupported, and whether you are connected there.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The ads registry: each marketplace that sells promotion, its programs (kind, scope, campaign and listing fields), which verbs are wired / need a capture / are unsupported, and whether you are connected there.
AdsAPI.listListingAdPlatforms() { (response, error) in
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

**ListListingAdPlatformsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSponsoredAdBillingHistory**
```swift
    open class func listSponsoredAdBillingHistory(completion: @escaping (_ data: ListSponsoredAdBillingHistoryResponse?, _ error: Error?) -> Void)
```

Billing history newest first: top-ups (status, receipt number), click charges (how each was paid: ad balance, credit, CBX, written off), credits, refunds and Boost fees. kind filters; before (ISO time) pages; limit ≤ 100.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Billing history newest first: top-ups (status, receipt number), click charges (how each was paid: ad balance, credit, CBX, written off), credits, refunds and Boost fees. kind filters; before (ISO time) pages; limit ≤ 100.
AdsAPI.listSponsoredAdBillingHistory() { (response, error) in
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

**ListSponsoredAdBillingHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSponsoredAdBillingStatements**
```swift
    open class func listSponsoredAdBillingStatements(completion: @escaping (_ data: ListSponsoredAdBillingStatementsResponse?, _ error: Error?) -> Void)
```

Months (YYYY-MM) with any ad billing activity, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Months (YYYY-MM) with any ad billing activity, newest first.
AdsAPI.listSponsoredAdBillingStatements() { (response, error) in
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

**ListSponsoredAdBillingStatementsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSponsoredAdBoosts**
```swift
    open class func listSponsoredAdBoosts(completion: @escaping (_ data: ListSponsoredAdBoostsResponse?, _ error: Error?) -> Void)
```

Boosted (pay-on-sale) listings: the rate, sales and fees taken so far. A boost lifts organic ranking by up to 10% and costs its rate only when the listing sells on Crossly.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Boosted (pay-on-sale) listings: the rate, sales and fees taken so far. A boost lifts organic ranking by up to 10% and costs its rate only when the listing sells on Crossly.
AdsAPI.listSponsoredAdBoosts() { (response, error) in
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

**ListSponsoredAdBoostsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSponsoredAdCampaigns**
```swift
    open class func listSponsoredAdCampaigns(completion: @escaping (_ data: ListSponsoredAdCampaignsResponse?, _ error: Error?) -> Void)
```

Your Sponsored Listings campaigns with status, pacing (spent today, daily cap reached), budgets, bids, placements and stats for the range (from/to, YYYY-MM-DD; default last 30 days).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Sponsored Listings campaigns with status, pacing (spent today, daily cap reached), budgets, bids, placements and stats for the range (from/to, YYYY-MM-DD; default last 30 days).
AdsAPI.listSponsoredAdCampaigns() { (response, error) in
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

**ListSponsoredAdCampaignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSponsoredAdListings**
```swift
    open class func listSponsoredAdListings(completion: @escaping (_ data: ListSponsoredAdListingsResponse?, _ error: Error?) -> Void)
```

Per-listing ad performance across campaigns for a range, plus suggestions: live listings with views but few sales that are not sponsored yet, with a suggested bid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Per-listing ad performance across campaigns for a range, plus suggestions: live listings with views but few sales that are not sponsored yet, with a suggested bid.
AdsAPI.listSponsoredAdListings() { (response, error) in
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

**ListSponsoredAdListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateAdOffsite**
```swift
    open class func updateAdOffsite(completion: @escaping (_ data: UpdateAdOffsiteResponse?, _ error: Error?) -> Void)
```

Turn offsite ads on or off. Yours alone to set.

The toggle. Nothing else in the system sets `enabled` — no onboarding default, no bulk enable, no admin override. `maxOffsiteShareBps` caps how much of your budget may leave the platform, so opting in does not mean discovering the whole thing went to Google. `minReturnBps` sets the floor below which offsite spend auto-pauses: 20000 means we must return $2 of attributed revenue per $1 spent over the window. Toggling either way clears any existing auto-pause, so turning it back on later does not inherit a pause from months ago. When one of your ads brings a buyer who purchases somebody ELSE's item, that is reported to you as spillover so you can judge whether offsite traffic is reaching buyers who want YOUR item, and switch it off if not. It is not credited back — you bought clicks, which is how every ad market works.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Turn offsite ads on or off. Yours alone to set.
AdsAPI.updateAdOffsite() { (response, error) in
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

**UpdateAdOffsiteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateListingAdCampaign**
```swift
    open class func updateListingAdCampaign(platform: String, campaignId: String, completion: @escaping (_ data: CreateListingAdCampaignResponse?, _ error: Error?) -> Void)
```

Change a marketplace campaign: name, dailyBudgetCents, endsAt (null clears), status paused | running | ended.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let campaignId = "campaignId_example" // String | 

// Change a marketplace campaign: name, dailyBudgetCents, endsAt (null clears), status paused | running | ended.
AdsAPI.updateListingAdCampaign(platform: platform, campaignId: campaignId) { (response, error) in
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
 **platform** | **String** |  | 
 **campaignId** | **String** |  | 

### Return type

**CreateListingAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateListingAdListingRate**
```swift
    open class func updateListingAdListingRate(platform: String, platformListingId: String, completion: @escaping (_ data: UpdateListingAdListingRateResponse?, _ error: Error?) -> Void)
```

Change one promoted listing's ad rate (percent of the sale) in the campaign it is in.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | 
let platformListingId = "platformListingId_example" // String | 

// Change one promoted listing's ad rate (percent of the sale) in the campaign it is in.
AdsAPI.updateListingAdListingRate(platform: platform, platformListingId: platformListingId) { (response, error) in
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
 **platform** | **String** |  | 
 **platformListingId** | **String** |  | 

### Return type

**UpdateListingAdListingRateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSponsoredAdBillingAutoTopup**
```swift
    open class func updateSponsoredAdBillingAutoTopup(completion: @escaping (_ data: SponsoredAdResponse?, _ error: Error?) -> Void)
```

Auto top-up: enabled, thresholdCents (top up when the ad balance drops below it), amountCents (how much). Needs a saved payment method (the first top-up saves it).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Auto top-up: enabled, thresholdCents (top up when the ad balance drops below it), amountCents (how much). Needs a saved payment method (the first top-up saves it).
AdsAPI.updateSponsoredAdBillingAutoTopup() { (response, error) in
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

**SponsoredAdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSponsoredAdBoost**
```swift
    open class func updateSponsoredAdBoost(completion: @escaping (_ data: UpdateSponsoredAdBoostResponse?, _ error: Error?) -> Void)
```

Boost listings in bulk (platformListingIds, upliftBps 100–2000 = 1–20%), or change their rate. Your own live Crossly listings only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Boost listings in bulk (platformListingIds, upliftBps 100–2000 = 1–20%), or change their rate. Your own live Crossly listings only.
AdsAPI.updateSponsoredAdBoost() { (response, error) in
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

**UpdateSponsoredAdBoostResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSponsoredAdCampaign**
```swift
    open class func updateSponsoredAdCampaign(id: String, completion: @escaping (_ data: SponsoredAdCampaignResponse?, _ error: Error?) -> Void)
```

Edit a campaign. Any of the create fields; listings and keywords, when given, replace the current set. Raising the total budget resumes a campaign stopped by it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Edit a campaign. Any of the create fields; listings and keywords, when given, replace the current set. Raising the total budget resumes a campaign stopped by it.
AdsAPI.updateSponsoredAdCampaign(id: id) { (response, error) in
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

**SponsoredAdCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSponsoredAdSetting**
```swift
    open class func updateSponsoredAdSetting(completion: @escaping (_ data: SponsoredAdResponse?, _ error: Error?) -> Void)
```

Change ads quick settings: adsPaused (pause / resume every ad), accountDailyCapCents (null = no cap), defaultBidStrategy (auto | manual) for new campaigns, autoTopup {enabled, thresholdCents?, amountCents?}, railPreference (cash_first | cbx_first, both rails live only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Change ads quick settings: adsPaused (pause / resume every ad), accountDailyCapCents (null = no cap), defaultBidStrategy (auto | manual) for new campaigns, autoTopup {enabled, thresholdCents?, amountCents?}, railPreference (cash_first | cbx_first, both rails live only).
AdsAPI.updateSponsoredAdSetting() { (response, error) in
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

**SponsoredAdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

