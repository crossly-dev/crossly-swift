# ListingsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAiDetectionDispute**](ListingsAPI.md#createaidetectiondispute) | **POST** /v1/ai-detections/{id}/dispute | Dispute an AI-image detection on your photo (sends it to Crossly review).
[**createEvent**](ListingsAPI.md#createevent) | **POST** /v1/events | Create an event. A draft unless publish:true. Linked listings, the live show, the drop and the discount code must all be yours.
[**createEventPublish**](ListingsAPI.md#createeventpublish) | **POST** /v1/events/{id}/publish | Publish an event: its page goes live, and with notifyFollowers your followers are told once.
[**createListing**](ListingsAPI.md#createlisting) | **POST** /v1/listings | Create a listing and fan out crosspost jobs across platforms.
[**createListingBulk**](ListingsAPI.md#createlistingbulk) | **POST** /v1/listings/bulk | Create up to 50 listings in one call, with a result per item.
[**createListingBulkCheckStatus**](ListingsAPI.md#createlistingbulkcheckstatus) | **POST** /v1/listings/bulk-check-status | Check listing status on platforms
[**createListingBulkCrosspost**](ListingsAPI.md#createlistingbulkcrosspost) | **POST** /v1/listings/bulk-crosspost | Bulk crosspost (no delist phase)
[**createListingBulkDelete**](ListingsAPI.md#createlistingbulkdelete) | **POST** /v1/listings/bulk-delete | Bulk archive + delist
[**createListingBulkDelist**](ListingsAPI.md#createlistingbulkdelist) | **POST** /v1/listings/bulk-delist | Bulk delist from platforms
[**createListingBulkDelistPreview**](ListingsAPI.md#createlistingbulkdelistpreview) | **POST** /v1/listings/bulk-delist-preview | Preview which marketplaces a delist would touch
[**createListingBulkHardDelete**](ListingsAPI.md#createlistingbulkharddelete) | **POST** /v1/listings/bulk-hard-delete | Permanently delete listings (live ones need allowLive)
[**createListingBulkRelist**](ListingsAPI.md#createlistingbulkrelist) | **POST** /v1/listings/bulk-relist | Bulk relist across platforms
[**createListingBulkUpdate**](ListingsAPI.md#createlistingbulkupdate) | **POST** /v1/listings/bulk-update | Bulk update listing fields
[**createListingById**](ListingsAPI.md#createlistingbyid) | **POST** /v1/listings/by-ids | Fetch hydrated listings by ID
[**createListingCheckDuplicate**](ListingsAPI.md#createlistingcheckduplicate) | **POST** /v1/listings/check-duplicates | Check whether the seller already owns something matching this title/photo, and what to do about it.
[**createListingCombine**](ListingsAPI.md#createlistingcombine) | **POST** /v1/listings/combine | Combine duplicate listings into one: sums their stock, delists and archives the rest.
[**createListingDiscrepancyResolve**](ListingsAPI.md#createlistingdiscrepancyresolve) | **POST** /v1/listings/{id}/discrepancies/{discrepancyId}/resolve | Resolve a detected marketplace-drift discrepancy: accept the platform value, push ours back, relist to apply it, or dismiss.
[**createListingImportByUrl**](ListingsAPI.md#createlistingimportbyurl) | **POST** /v1/listings/{id}/import-by-url | Attach a real platform listing to this listing by pasting its live URL.
[**createListingMagicFill**](ListingsAPI.md#createlistingmagicfill) | **POST** /v1/listings/{id}/magic-fill | Auto-fill empty fields on one platform tab from the master listing + AI/deterministic taxonomy resolution.
[**createListingMerge**](ListingsAPI.md#createlistingmerge) | **POST** /v1/listings/merge | Merge the same item listed on different marketplaces into one listing; all stay live.
[**createListingTagBulk**](ListingsAPI.md#createlistingtagbulk) | **POST** /v1/listings/tags/bulk | Add and/or remove tags on many listings (yours only; max 30 tags a listing, 40 chars a tag). &#x60;dryRun&#x60; reports what would change.
[**createListingTagRename**](ListingsAPI.md#createlistingtagrename) | **POST** /v1/listings/tags/rename | Rename a tag on every listing; merges into &#x60;to&#x60; when it already exists.
[**createLiveStream**](ListingsAPI.md#createlivestream) | **POST** /v1/live-streams | Schedule a live show: title, start time, optional cover, category and the listings to feature (becomes the lineup, in order).
[**createLiveStreamConnection**](ListingsAPI.md#createlivestreamconnection) | **POST** /v1/live-streams/{id}/connection | The show’s video connection, minted on first call and identical after: RTMP(S) server + stream key, SRT URL, WHIP URL for browser publishing (null where the ingest has none) and the HLS playback URL. configured&#x3D;false (with a reason) when the deployment has no streaming provider.
[**createLiveStreamConnectionRotate**](ListingsAPI.md#createlivestreamconnectionrotate) | **POST** /v1/live-streams/{id}/connection/rotate | Replace the show’s stream key (e.g. after it was shown on screen). Refused while the show is live.
[**createLiveStreamEnd**](ListingsAPI.md#createlivestreamend) | **POST** /v1/live-streams/{id}/end | End the show. Idempotent.
[**createLiveStreamPinLaunch**](ListingsAPI.md#createlivestreampinlaunch) | **POST** /v1/live-streams/{id}/pin-launch | Pin one of your live NFT launches on your live show; viewers mint it from the stream. Returns &#x60;{ ok }&#x60;.
[**createLiveStreamStart**](ListingsAPI.md#createlivestreamstart) | **POST** /v1/live-streams/{id}/start | Go live: the show’s status becomes live and followers are notified once. Idempotent while live; refused once ended.
[**createPassport**](ListingsAPI.md#createpassport) | **POST** /v1/passports | Register a product passport for a Crossly listing or an inventory item you sell, optionally bound to an NFC tag UID (hex). Active at once. Returns the URL to write to the NFC tag or print as a QR; ownership then follows the item’s sales. For several items with photos and labels, use the drafts flow (POST /passports/drafts).
[**createPassportDraft**](ListingsAPI.md#createpassportdraft) | **POST** /v1/passports/drafts | Start a passport draft for up to 100 inventory items (or Crossly listings): one draft passport per item with its code reserved. Items whose every unit already has a passport come back in skipped.
[**createPassportDraftActivate**](ListingsAPI.md#createpassportdraftactivate) | **POST** /v1/passports/drafts/{id}/activate | Activate every passport of a draft: their pages open for anyone who scans the tag or QR. Closes the draft’s capture link.
[**createPassportDraftCaptureLink**](ListingsAPI.md#createpassportdraftcapturelink) | **POST** /v1/passports/drafts/{id}/capture-link | A link (and its QR as SVG) any phone opens with no sign-in to add photos, serials and NFC tags to this draft. Open 30 minutes after its last use, 4 hours at most; minting a new one closes the old.
[**createPassportPrint**](ListingsAPI.md#createpassportprint) | **POST** /v1/passports/print | Print passport labels: sent to your printer agent (the Crossly desktop app includes one) when it is online and prints the template, else a signed PDF link with the reason. Templates: sticker-2in, sticker-1in, label-4x6, hang-tag, sheet-letter, sheet-a4, transfer-card.
[**createPassportRevoke**](ListingsAPI.md#createpassportrevoke) | **POST** /v1/passports/{id}/revoke | Revoke a passport (a lost or misprinted tag). Refused once the item has sold — the passport is then part of its history.
[**createPassportTag**](ListingsAPI.md#createpassporttag) | **POST** /v1/passports/{id}/tag | Bind (or re-bind) a passport to the NFC tag you wrote its nfcUrl to: the tag UID (hex), and whether you locked the tag read-only. Refused once the item has sold, for a locked tag, or a tag already on another item.
[**createRentalBulkRentable**](ListingsAPI.md#createrentalbulkrentable) | **POST** /v1/rentals/bulk-rentable | Make up to 200 Crossly listings rentable with the same options (a day rate, or a share of each price).
[**createShopLimitRequest**](ListingsAPI.md#createshoplimitrequest) | **POST** /v1/shop-limits/requests | Ask for a higher Crossly Shop selling limit.
[**createStory**](ListingsAPI.md#createstory) | **POST** /v1/stories | Share a story: 1–10 slides played in order. Each slide is a photo or video plus optional overlays (positions are fractions of the 9:16 frame). Listing stickers must be your own Crossly listings and also tag the slide; @mentions must be real shops. audience: everyone | followers; expiresInHours: 6, 12, 24 or 48.
[**createVariationGroup**](ListingsAPI.md#createvariationgroup) | **POST** /v1/variation-groups | Group listings you already have: a variation (one product, an axis such as Size) or a purchase-rule group (\&quot;buy any 3\&quot;).
[**createVariationGroupGenerate**](ListingsAPI.md#createvariationgroupgenerate) | **POST** /v1/variation-groups/generate | Turn one listing into a variation group: each new value becomes its own listing (a copy, with its own price, quantity and SKU) and all of them one group.
[**createVariationGroupGenerateMatrix**](ListingsAPI.md#createvariationgroupgeneratematrix) | **POST** /v1/variation-groups/generate-matrix | Turn one listing into a variation group over up to three axes (Size × Color): each other cell is a listing you already have (listingId) or a new copy of this one with its own price, quantity and SKU.
[**createVariationGroupPublish**](ListingsAPI.md#createvariationgrouppublish) | **POST** /v1/variation-groups/{id}/publish | Publish a variation group per platform: one listing with a variation picker where the platform supports it (eBay, Shopify, Etsy), one per option elsewhere. Each platform reports its own outcome.
[**createVideoStudioFinalize**](ListingsAPI.md#createvideostudiofinalize) | **POST** /v1/video-studio/finalize | Check an uploaded listing video (exists, MP4, size) and, with listingId, set it as that listing&#39;s video.
[**createVideoStudioUploadUrl**](ListingsAPI.md#createvideostudiouploadurl) | **POST** /v1/video-studio/upload-url | Presign an R2 PUT (video/mp4, 15 min) for a listing video; finalize it after the upload.
[**deleteEvent**](ListingsAPI.md#deleteevent) | **DELETE** /v1/events/{id} | Delete a draft, or cancel a published event (its page then says it was called off).
[**deleteListing**](ListingsAPI.md#deletelisting) | **DELETE** /v1/listings/{id} | Delist a listing (optionally narrowed to specific platforms via ?platforms&#x3D;).
[**deleteListingTag**](ListingsAPI.md#deletelistingtag) | **DELETE** /v1/listings/tags/{tag} | Remove a tag (any case) from every listing.
[**deleteLiveStreamPinLaunch**](ListingsAPI.md#deletelivestreampinlaunch) | **DELETE** /v1/live-streams/{id}/pin-launch | Unpin the launch from your live show. Returns &#x60;{ ok }&#x60;.
[**deleteRentalOffer**](ListingsAPI.md#deleterentaloffer) | **DELETE** /v1/rentals/offers/{platformListingId} | Stop offering a listing for rent (existing bookings stand).
[**deleteStory**](ListingsAPI.md#deletestory) | **DELETE** /v1/stories/{id} | Take one story slide down before it expires.
[**deleteVariationGroup**](ListingsAPI.md#deletevariationgroup) | **DELETE** /v1/variation-groups/{id} | Dissolve a group. Its options stay as ordinary listings.
[**getEvent**](ListingsAPI.md#getevent) | **GET** /v1/events/{id} | One of your events.
[**getEventAnalytic**](ListingsAPI.md#geteventanalytic) | **GET** /v1/events/{id}/analytics | Views, RSVPs, and what the linked listings sold on Crossly during the event (orders, units, revenue in cents).
[**getListing**](ListingsAPI.md#getlisting) | **GET** /v1/listings/{id} | Get one listing with its platform rows.
[**getListingFacet**](ListingsAPI.md#getlistingfacet) | **GET** /v1/listings/facets | Distinct brands + categories across listings + inventory.
[**getListingSkuExist**](ListingsAPI.md#getlistingskuexist) | **GET** /v1/listings/sku-exists | Check whether a SKU is already used by one of this user&#39;s items.
[**getLiveStreamRecap**](ListingsAPI.md#getlivestreamrecap) | **GET** /v1/live-streams/{id}/recap | The show’s numbers: duration, peak viewers, items sold and gross, tips, chat messages, auctions run, lineup size and the replay URL.
[**getPassport**](ListingsAPI.md#getpassport) | **GET** /v1/passports/{id} | One passport: its item and every listing of it, the event history (created, printed, tag bound, transferred, claimed…), scans per day for 30 days, custody, grading.
[**getPassportDraft**](ListingsAPI.md#getpassportdraft) | **GET** /v1/passports/drafts/{id} | A passport draft and its passports (photos, serial, tag and label state of each).
[**getPassportPrint**](ListingsAPI.md#getpassportprint) | **GET** /v1/passports/print/{jobId} | Where a passport print job sent to your agent is: queued, sent, done, failed, expired or duplicate.
[**getPricingSetting**](ListingsAPI.md#getpricingsetting) | **GET** /v1/pricing/settings | Selling options: own-price match (Crossly sells your items at your own lower price for the same item on another marketplace; dollar-priced copies only) and layaway (buyers may put items on layaway). Both on by default.
[**getPricingSoldComp**](ListingsAPI.md#getpricingsoldcomp) | **GET** /v1/pricing/sold-comps | What one catalog product (market_sku_id, in one condition) actually sold for across Crossly in the last 180 days: median, p25/p75, p10/p90 (null under 10 sales), sale count, last sold, and days from listing to sale (median, p25, p75). Pass marketSkuId (+ optional condition) or one of your listingIds. comps is null until there are 3+ sales from 2+ sellers; holdCode says why there is nothing (no_market_sku, mixed_inventory, below_privacy_floor) — the same reasons a sold_median reprice rule holds.
[**getRentalSetting**](ListingsAPI.md#getrentalsetting) | **GET** /v1/rentals/settings | The store’s rental defaults (every item inherits them) and its payout timing.
[**getShopLimit**](ListingsAPI.md#getshoplimit) | **GET** /v1/shop-limits | Your Crossly Shop selling limit: live listings and listed value, used of limit, per store, and the next step.
[**listEventAttendees**](ListingsAPI.md#listeventattendees) | **GET** /v1/events/{id}/attendees | Who RSVPd: display name, avatar, going or interested, and when. No contact details.
[**listEvents**](ListingsAPI.md#listevents) | **GET** /v1/events | Your events (launches, sales, live shows, drops, meetups, pop-ups, workshops, parties): schedule, status, phase, and going/interested counts.
[**listListingAiDetections**](ListingsAPI.md#listlistingaidetections) | **GET** /v1/listings/{id}/ai-detections | Crossly&#39;s AI-image detections for a listing&#39;s photos.
[**listListingDiscrepancies**](ListingsAPI.md#listlistingdiscrepancies) | **GET** /v1/listings/{id}/discrepancies | List detected marketplace-drift discrepancies for a listing.
[**listListingIds**](ListingsAPI.md#listlistingids) | **GET** /v1/listings/ids | Filter listings → return matching id list (no pagination).
[**listListingTagSuggest**](ListingsAPI.md#listlistingtagsuggest) | **GET** /v1/listings/tags/suggest | Deterministic tag suggestions for one listing (brand, category, size, condition, colors, style tags, era words in the title); &#x60;known&#x60; &#x3D; you already use the tag.
[**listListingTags**](ListingsAPI.md#listlistingtags) | **GET** /v1/listings/tags | Your listing tags with how many listings carry each, most used first (case-insensitive; &#x60;q&#x60; filters).
[**listListings**](ListingsAPI.md#listlistings) | **GET** /v1/listings | List active platform listings.
[**listLiveStreams**](ListingsAPI.md#listlivestreams) | **GET** /v1/live-streams | Your live shows, newest scheduled first: status, cover, category, connection method and peak viewers.
[**listPassportEvents**](ListingsAPI.md#listpassportevents) | **GET** /v1/passports/{id}/events | A passport’s event history, newest first (never a buyer or a price).
[**listPassportPrintTargets**](ListingsAPI.md#listpassportprinttargets) | **GET** /v1/passports/print-targets | Your printer agents (online, printers, default) and the passport label templates each can print.
[**listPassports**](ListingsAPI.md#listpassports) | **GET** /v1/passports | Product passports you registered (optionally for one Crossly listing): the code and URL each tag carries.
[**listRentalOffers**](ListingsAPI.md#listrentaloffers) | **GET** /v1/rentals/offers | What you offer for rent.
[**listStories**](ListingsAPI.md#liststories) | **GET** /v1/stories | Your active story slides (newest run first, each run in play order), with their overlays: text, listing stickers, @mentions, links, emoji and drawing.
[**updateEvent**](ListingsAPI.md#updateevent) | **PATCH** /v1/events/{id} | Edit an event. Omitted fields are unchanged; null clears.
[**updateHotspot**](ListingsAPI.md#updatehotspot) | **PUT** /v1/hotspots | Tag your listings at points on a story or lookbook photo (shop the look). Replaces that photo’s tags; at most 12.
[**updateListing**](ListingsAPI.md#updatelisting) | **PATCH** /v1/listings/{id} | Edit a listing and fan out update jobs to existing platform listings.
[**updateListingCustom**](ListingsAPI.md#updatelistingcustom) | **PUT** /v1/listings/{id}/customs | Set a listing’s customs: HS code (6–10 digits), country of origin, and countries this item must not ship to on Crossly. Omitted fields are left alone; null (or [] for restrictedCountries) clears.
[**updateListingPlatformListing**](ListingsAPI.md#updatelistingplatformlisting) | **PATCH** /v1/listings/{id}/platform-listings/{plId} | Set one marketplace copy&#39;s price (e.g. the ebay.com copy of a listing also live on ebay.co.uk), in that copy&#39;s own currency.
[**updateLiveStream**](ListingsAPI.md#updatelivestream) | **PATCH** /v1/live-streams/{id} | Edit a show that has not ended: title, description, cover, category, start time (not once live) or connection method (browser | phone | encoder).
[**updateLiveStreamLineup**](ListingsAPI.md#updatelivestreamlineup) | **PUT** /v1/live-streams/{id}/lineup | Set a live show’s lineup: your Crossly listings, in the order you will sell them. Buyers see it before they join; a sale of a lineup item while the show is live is recorded at its replay moment.
[**updatePassport**](ListingsAPI.md#updatepassport) | **PATCH** /v1/passports/{id} | Change what a passport says (title, condition, maker, year, materials, notes) or add photo URLs (photos append: a passport keeps the ones it was registered with).
[**updatePassportDraft**](ListingsAPI.md#updatepassportdraft) | **PATCH** /v1/passports/drafts/{id} | Move a draft to a step, pick its label template, add items or remove draft passports.
[**updatePricingSetting**](ListingsAPI.md#updatepricingsetting) | **PUT** /v1/pricing/settings | Turn own-price match and/or layaway on or off for every one of your stores. One store: PUT /v1/storefronts/{id}/settings.
[**updateRentalOffer**](ListingsAPI.md#updaterentaloffer) | **PUT** /v1/rentals/offers/{platformListingId} | Offer a Crossly listing for rent: day rate, optional week rate, deposit, min/max days, turnaround buffer, rent-only (off sale while offered), seller approval, unavailable date ranges (blackoutRanges, inclusive YYYY-MM-DD) and a return policy. Keeps the listing’s own rental terms in step. Needs a ship-from address.
[**updateRentalSetting**](ListingsAPI.md#updaterentalsetting) | **PUT** /v1/rentals/settings | Set the store’s rental defaults and payout timing (on_start needs 3 rentals that came back).
[**updateVariationGroup**](ListingsAPI.md#updatevariationgroup) | **PATCH** /v1/variation-groups/{id} | Retitle a group, rename its axis, or change a group&#39;s purchase rule (written into every member&#39;s description).


# **createAiDetectionDispute**
```swift
    open class func createAiDetectionDispute(id: String, completion: @escaping (_ data: CreateAiDetectionDisputeResponse?, _ error: Error?) -> Void)
```

Dispute an AI-image detection on your photo (sends it to Crossly review).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Dispute an AI-image detection on your photo (sends it to Crossly review).
ListingsAPI.createAiDetectionDispute(id: id) { (response, error) in
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

**CreateAiDetectionDisputeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createEvent**
```swift
    open class func createEvent(completion: @escaping (_ data: EventResponse?, _ error: Error?) -> Void)
```

Create an event. A draft unless publish:true. Linked listings, the live show, the drop and the discount code must all be yours.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create an event. A draft unless publish:true. Linked listings, the live show, the drop and the discount code must all be yours.
ListingsAPI.createEvent() { (response, error) in
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

**EventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createEventPublish**
```swift
    open class func createEventPublish(id: String, completion: @escaping (_ data: EventResponse?, _ error: Error?) -> Void)
```

Publish an event: its page goes live, and with notifyFollowers your followers are told once.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Publish an event: its page goes live, and with notifyFollowers your followers are told once.
ListingsAPI.createEventPublish(id: id) { (response, error) in
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

**EventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListing**
```swift
    open class func createListing(completion: @escaping (_ data: CreateListingResponse?, _ error: Error?) -> Void)
```

Create a listing and fan out crosspost jobs across platforms.

Listing fields go in `data`. Channel apps can also send `categoryId` (GET /v1/categories/search), `itemSpecifics` (validated against GET /v1/categories/:id/aspects; `warnings` lists soft problems), `condition`, `brand`, per-marketplace `overrides` and `policies` (preset ids from GET /v1/policies), folded in the way the web form does: an override replaces the master value on that marketplace, anything derived only fills blanks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a listing and fan out crosspost jobs across platforms.
ListingsAPI.createListing() { (response, error) in
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

**CreateListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingBulk**
```swift
    open class func createListingBulk(completion: @escaping (_ data: CreateListingBulkResponse?, _ error: Error?) -> Void)
```

Create up to 50 listings in one call, with a result per item.

Each item is a POST /v1/listings body plus a required `clientReferenceId` (your id for it). Items run in order and independently: `data[i].status` is `created`, `existing` (that reference was already used — the listing is returned, nothing is created) or `error` with the code the single route would give. `error` means no listing exists for the item. A listing that was saved but could not be sent to a platform (e.g. no weight) is `created`, with that platform in `skipped` (reason, code, details). `meta` counts each. Retrying a batch only creates what is missing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create up to 50 listings in one call, with a result per item.
ListingsAPI.createListingBulk() { (response, error) in
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

**CreateListingBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingBulkCheckStatus**
```swift
    open class func createListingBulkCheckStatus(completion: @escaping (_ data: CreateListingBulkDeleteResponse?, _ error: Error?) -> Void)
```

Check listing status on platforms

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Check listing status on platforms
ListingsAPI.createListingBulkCheckStatus() { (response, error) in
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

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingBulkCrosspost**
```swift
    open class func createListingBulkCrosspost(completion: @escaping (_ data: CreateListingBulkDeleteResponse?, _ error: Error?) -> Void)
```

Bulk crosspost (no delist phase)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk crosspost (no delist phase)
ListingsAPI.createListingBulkCrosspost() { (response, error) in
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

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingBulkDelete**
```swift
    open class func createListingBulkDelete(completion: @escaping (_ data: CreateListingBulkDeleteResponse?, _ error: Error?) -> Void)
```

Bulk archive + delist

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk archive + delist
ListingsAPI.createListingBulkDelete() { (response, error) in
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

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingBulkDelist**
```swift
    open class func createListingBulkDelist(completion: @escaping (_ data: CreateListingBulkDeleteResponse?, _ error: Error?) -> Void)
```

Bulk delist from platforms

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk delist from platforms
ListingsAPI.createListingBulkDelist() { (response, error) in
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

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingBulkDelistPreview**
```swift
    open class func createListingBulkDelistPreview(completion: @escaping (_ data: CreateListingBulkDelistPreviewResponse?, _ error: Error?) -> Void)
```

Preview which marketplaces a delist would touch

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Preview which marketplaces a delist would touch
ListingsAPI.createListingBulkDelistPreview() { (response, error) in
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

**CreateListingBulkDelistPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingBulkHardDelete**
```swift
    open class func createListingBulkHardDelete(completion: @escaping (_ data: CreateListingBulkHardDeleteResponse?, _ error: Error?) -> Void)
```

Permanently delete listings (live ones need allowLive)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Permanently delete listings (live ones need allowLive)
ListingsAPI.createListingBulkHardDelete() { (response, error) in
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

**CreateListingBulkHardDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingBulkRelist**
```swift
    open class func createListingBulkRelist(completion: @escaping (_ data: CreateListingBulkDeleteResponse?, _ error: Error?) -> Void)
```

Bulk relist across platforms

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk relist across platforms
ListingsAPI.createListingBulkRelist() { (response, error) in
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

**CreateListingBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingBulkUpdate**
```swift
    open class func createListingBulkUpdate(completion: @escaping (_ data: CreateListingBulkUpdateResponse?, _ error: Error?) -> Void)
```

Bulk update listing fields

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk update listing fields
ListingsAPI.createListingBulkUpdate() { (response, error) in
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

**CreateListingBulkUpdateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingById**
```swift
    open class func createListingById(completion: @escaping (_ data: CreateListingByIdResponse?, _ error: Error?) -> Void)
```

Fetch hydrated listings by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Fetch hydrated listings by ID
ListingsAPI.createListingById() { (response, error) in
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

**CreateListingByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingCheckDuplicate**
```swift
    open class func createListingCheckDuplicate(completion: @escaping (_ data: CreateListingCheckDuplicateResponse?, _ error: Error?) -> Void)
```

Check whether the seller already owns something matching this title/photo, and what to do about it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Check whether the seller already owns something matching this title/photo, and what to do about it.
ListingsAPI.createListingCheckDuplicate() { (response, error) in
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

**CreateListingCheckDuplicateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingCombine**
```swift
    open class func createListingCombine(completion: @escaping (_ data: CreateListingCombineResponse?, _ error: Error?) -> Void)
```

Combine duplicate listings into one: sums their stock, delists and archives the rest.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Combine duplicate listings into one: sums their stock, delists and archives the rest.
ListingsAPI.createListingCombine() { (response, error) in
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

**CreateListingCombineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingDiscrepancyResolve**
```swift
    open class func createListingDiscrepancyResolve(id: UUID, discrepancyId: UUID, completion: @escaping (_ data: CreateListingDiscrepancyResolveResponse?, _ error: Error?) -> Void)
```

Resolve a detected marketplace-drift discrepancy: accept the platform value, push ours back, relist to apply it, or dismiss.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let discrepancyId = 987 // UUID | 

// Resolve a detected marketplace-drift discrepancy: accept the platform value, push ours back, relist to apply it, or dismiss.
ListingsAPI.createListingDiscrepancyResolve(id: id, discrepancyId: discrepancyId) { (response, error) in
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
 **discrepancyId** | **UUID** |  | 

### Return type

**CreateListingDiscrepancyResolveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingImportByUrl**
```swift
    open class func createListingImportByUrl(id: UUID, completion: @escaping (_ data: CreateListingImportByUrlResponse?, _ error: Error?) -> Void)
```

Attach a real platform listing to this listing by pasting its live URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Attach a real platform listing to this listing by pasting its live URL.
ListingsAPI.createListingImportByUrl(id: id) { (response, error) in
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

**CreateListingImportByUrlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingMagicFill**
```swift
    open class func createListingMagicFill(id: UUID, completion: @escaping (_ data: CreateListingMagicFillResponse?, _ error: Error?) -> Void)
```

Auto-fill empty fields on one platform tab from the master listing + AI/deterministic taxonomy resolution.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Auto-fill empty fields on one platform tab from the master listing + AI/deterministic taxonomy resolution.
ListingsAPI.createListingMagicFill(id: id) { (response, error) in
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

**CreateListingMagicFillResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingMerge**
```swift
    open class func createListingMerge(completion: @escaping (_ data: CreateListingMergeResponse?, _ error: Error?) -> Void)
```

Merge the same item listed on different marketplaces into one listing; all stay live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Merge the same item listed on different marketplaces into one listing; all stay live.
ListingsAPI.createListingMerge() { (response, error) in
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

**CreateListingMergeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingTagBulk**
```swift
    open class func createListingTagBulk(completion: @escaping (_ data: CreateListingTagBulkResponse?, _ error: Error?) -> Void)
```

Add and/or remove tags on many listings (yours only; max 30 tags a listing, 40 chars a tag). `dryRun` reports what would change.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Add and/or remove tags on many listings (yours only; max 30 tags a listing, 40 chars a tag). `dryRun` reports what would change.
ListingsAPI.createListingTagBulk() { (response, error) in
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

**CreateListingTagBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingTagRename**
```swift
    open class func createListingTagRename(completion: @escaping (_ data: CreateListingTagRenameResponse?, _ error: Error?) -> Void)
```

Rename a tag on every listing; merges into `to` when it already exists.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Rename a tag on every listing; merges into `to` when it already exists.
ListingsAPI.createListingTagRename() { (response, error) in
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

**CreateListingTagRenameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLiveStream**
```swift
    open class func createLiveStream(completion: @escaping (_ data: LiveStreamResponse?, _ error: Error?) -> Void)
```

Schedule a live show: title, start time, optional cover, category and the listings to feature (becomes the lineup, in order).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Schedule a live show: title, start time, optional cover, category and the listings to feature (becomes the lineup, in order).
ListingsAPI.createLiveStream() { (response, error) in
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

**LiveStreamResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLiveStreamConnection**
```swift
    open class func createLiveStreamConnection(id: String, completion: @escaping (_ data: CreateLiveStreamConnectionResponse?, _ error: Error?) -> Void)
```

The show’s video connection, minted on first call and identical after: RTMP(S) server + stream key, SRT URL, WHIP URL for browser publishing (null where the ingest has none) and the HLS playback URL. configured=false (with a reason) when the deployment has no streaming provider.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The show’s video connection, minted on first call and identical after: RTMP(S) server + stream key, SRT URL, WHIP URL for browser publishing (null where the ingest has none) and the HLS playback URL. configured=false (with a reason) when the deployment has no streaming provider.
ListingsAPI.createLiveStreamConnection(id: id) { (response, error) in
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

**CreateLiveStreamConnectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLiveStreamConnectionRotate**
```swift
    open class func createLiveStreamConnectionRotate(id: String, completion: @escaping (_ data: CreateLiveStreamConnectionResponse?, _ error: Error?) -> Void)
```

Replace the show’s stream key (e.g. after it was shown on screen). Refused while the show is live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Replace the show’s stream key (e.g. after it was shown on screen). Refused while the show is live.
ListingsAPI.createLiveStreamConnectionRotate(id: id) { (response, error) in
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

**CreateLiveStreamConnectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLiveStreamEnd**
```swift
    open class func createLiveStreamEnd(id: String, completion: @escaping (_ data: LiveStreamResponse?, _ error: Error?) -> Void)
```

End the show. Idempotent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// End the show. Idempotent.
ListingsAPI.createLiveStreamEnd(id: id) { (response, error) in
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

**LiveStreamResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLiveStreamPinLaunch**
```swift
    open class func createLiveStreamPinLaunch(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Pin one of your live NFT launches on your live show; viewers mint it from the stream. Returns `{ ok }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pin one of your live NFT launches on your live show; viewers mint it from the stream. Returns `{ ok }`.
ListingsAPI.createLiveStreamPinLaunch(id: id) { (response, error) in
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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLiveStreamStart**
```swift
    open class func createLiveStreamStart(id: String, completion: @escaping (_ data: LiveStreamResponse?, _ error: Error?) -> Void)
```

Go live: the show’s status becomes live and followers are notified once. Idempotent while live; refused once ended.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Go live: the show’s status becomes live and followers are notified once. Idempotent while live; refused once ended.
ListingsAPI.createLiveStreamStart(id: id) { (response, error) in
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

**LiveStreamResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPassport**
```swift
    open class func createPassport(completion: @escaping (_ data: PassportResponse?, _ error: Error?) -> Void)
```

Register a product passport for a Crossly listing or an inventory item you sell, optionally bound to an NFC tag UID (hex). Active at once. Returns the URL to write to the NFC tag or print as a QR; ownership then follows the item’s sales. For several items with photos and labels, use the drafts flow (POST /passports/drafts).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Register a product passport for a Crossly listing or an inventory item you sell, optionally bound to an NFC tag UID (hex). Active at once. Returns the URL to write to the NFC tag or print as a QR; ownership then follows the item’s sales. For several items with photos and labels, use the drafts flow (POST /passports/drafts).
ListingsAPI.createPassport() { (response, error) in
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

**PassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPassportDraft**
```swift
    open class func createPassportDraft(completion: @escaping (_ data: PassportDraftResponse?, _ error: Error?) -> Void)
```

Start a passport draft for up to 100 inventory items (or Crossly listings): one draft passport per item with its code reserved. Items whose every unit already has a passport come back in skipped.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start a passport draft for up to 100 inventory items (or Crossly listings): one draft passport per item with its code reserved. Items whose every unit already has a passport come back in skipped.
ListingsAPI.createPassportDraft() { (response, error) in
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

**PassportDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPassportDraftActivate**
```swift
    open class func createPassportDraftActivate(id: String, completion: @escaping (_ data: PassportDraftResponse?, _ error: Error?) -> Void)
```

Activate every passport of a draft: their pages open for anyone who scans the tag or QR. Closes the draft’s capture link.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Activate every passport of a draft: their pages open for anyone who scans the tag or QR. Closes the draft’s capture link.
ListingsAPI.createPassportDraftActivate(id: id) { (response, error) in
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

**PassportDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPassportDraftCaptureLink**
```swift
    open class func createPassportDraftCaptureLink(id: String, completion: @escaping (_ data: CreatePassportDraftCaptureLinkResponse?, _ error: Error?) -> Void)
```

A link (and its QR as SVG) any phone opens with no sign-in to add photos, serials and NFC tags to this draft. Open 30 minutes after its last use, 4 hours at most; minting a new one closes the old.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A link (and its QR as SVG) any phone opens with no sign-in to add photos, serials and NFC tags to this draft. Open 30 minutes after its last use, 4 hours at most; minting a new one closes the old.
ListingsAPI.createPassportDraftCaptureLink(id: id) { (response, error) in
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

**CreatePassportDraftCaptureLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPassportPrint**
```swift
    open class func createPassportPrint(completion: @escaping (_ data: CreatePassportPrintResponse?, _ error: Error?) -> Void)
```

Print passport labels: sent to your printer agent (the Crossly desktop app includes one) when it is online and prints the template, else a signed PDF link with the reason. Templates: sticker-2in, sticker-1in, label-4x6, hang-tag, sheet-letter, sheet-a4, transfer-card.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Print passport labels: sent to your printer agent (the Crossly desktop app includes one) when it is online and prints the template, else a signed PDF link with the reason. Templates: sticker-2in, sticker-1in, label-4x6, hang-tag, sheet-letter, sheet-a4, transfer-card.
ListingsAPI.createPassportPrint() { (response, error) in
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

**CreatePassportPrintResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPassportRevoke**
```swift
    open class func createPassportRevoke(id: String, completion: @escaping (_ data: PassportResponse?, _ error: Error?) -> Void)
```

Revoke a passport (a lost or misprinted tag). Refused once the item has sold — the passport is then part of its history.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Revoke a passport (a lost or misprinted tag). Refused once the item has sold — the passport is then part of its history.
ListingsAPI.createPassportRevoke(id: id) { (response, error) in
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

**PassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPassportTag**
```swift
    open class func createPassportTag(id: String, completion: @escaping (_ data: PassportResponse?, _ error: Error?) -> Void)
```

Bind (or re-bind) a passport to the NFC tag you wrote its nfcUrl to: the tag UID (hex), and whether you locked the tag read-only. Refused once the item has sold, for a locked tag, or a tag already on another item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Bind (or re-bind) a passport to the NFC tag you wrote its nfcUrl to: the tag UID (hex), and whether you locked the tag read-only. Refused once the item has sold, for a locked tag, or a tag already on another item.
ListingsAPI.createPassportTag(id: id) { (response, error) in
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

**PassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalBulkRentable**
```swift
    open class func createRentalBulkRentable(completion: @escaping (_ data: CreateRentalBulkRentableResponse?, _ error: Error?) -> Void)
```

Make up to 200 Crossly listings rentable with the same options (a day rate, or a share of each price).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Make up to 200 Crossly listings rentable with the same options (a day rate, or a share of each price).
ListingsAPI.createRentalBulkRentable() { (response, error) in
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

**CreateRentalBulkRentableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createShopLimitRequest**
```swift
    open class func createShopLimitRequest(createShopLimitRequestRequest: CreateShopLimitRequestRequest, completion: @escaping (_ data: CreateShopLimitRequestResponse?, _ error: Error?) -> Void)
```

Ask for a higher Crossly Shop selling limit.

One pending request at a time (409 otherwise). Approved on the spot when your last 90 days are clean (no auto-cancelled orders, disputes lost or chargebacks lost) and every number asked is at most twice your current limit; otherwise Crossly staff review it. `valueCents` is US cents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let createShopLimitRequestRequest = CreateShopLimitRequestRequest(listings: 123, valueCents: 123, reason: "reason_example") // CreateShopLimitRequestRequest | 

// Ask for a higher Crossly Shop selling limit.
ListingsAPI.createShopLimitRequest(createShopLimitRequestRequest: createShopLimitRequestRequest) { (response, error) in
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
 **createShopLimitRequestRequest** | **CreateShopLimitRequestRequest** |  | 

### Return type

**CreateShopLimitRequestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createStory**
```swift
    open class func createStory(completion: @escaping (_ data: CreateStoryResponse?, _ error: Error?) -> Void)
```

Share a story: 1–10 slides played in order. Each slide is a photo or video plus optional overlays (positions are fractions of the 9:16 frame). Listing stickers must be your own Crossly listings and also tag the slide; @mentions must be real shops. audience: everyone | followers; expiresInHours: 6, 12, 24 or 48.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Share a story: 1–10 slides played in order. Each slide is a photo or video plus optional overlays (positions are fractions of the 9:16 frame). Listing stickers must be your own Crossly listings and also tag the slide; @mentions must be real shops. audience: everyone | followers; expiresInHours: 6, 12, 24 or 48.
ListingsAPI.createStory() { (response, error) in
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

**CreateStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVariationGroup**
```swift
    open class func createVariationGroup(completion: @escaping (_ data: CreateVariationGroupResponse?, _ error: Error?) -> Void)
```

Group listings you already have: a variation (one product, an axis such as Size) or a purchase-rule group (\"buy any 3\").

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Group listings you already have: a variation (one product, an axis such as Size) or a purchase-rule group (\"buy any 3\").
ListingsAPI.createVariationGroup() { (response, error) in
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

**CreateVariationGroupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVariationGroupGenerate**
```swift
    open class func createVariationGroupGenerate(completion: @escaping (_ data: CreateVariationGroupGenerateResponse?, _ error: Error?) -> Void)
```

Turn one listing into a variation group: each new value becomes its own listing (a copy, with its own price, quantity and SKU) and all of them one group.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Turn one listing into a variation group: each new value becomes its own listing (a copy, with its own price, quantity and SKU) and all of them one group.
ListingsAPI.createVariationGroupGenerate() { (response, error) in
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

**CreateVariationGroupGenerateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVariationGroupGenerateMatrix**
```swift
    open class func createVariationGroupGenerateMatrix(completion: @escaping (_ data: CreateVariationGroupGenerateMatrixResponse?, _ error: Error?) -> Void)
```

Turn one listing into a variation group over up to three axes (Size × Color): each other cell is a listing you already have (listingId) or a new copy of this one with its own price, quantity and SKU.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Turn one listing into a variation group over up to three axes (Size × Color): each other cell is a listing you already have (listingId) or a new copy of this one with its own price, quantity and SKU.
ListingsAPI.createVariationGroupGenerateMatrix() { (response, error) in
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

**CreateVariationGroupGenerateMatrixResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVariationGroupPublish**
```swift
    open class func createVariationGroupPublish(id: String, completion: @escaping (_ data: CreateVariationGroupPublishResponse?, _ error: Error?) -> Void)
```

Publish a variation group per platform: one listing with a variation picker where the platform supports it (eBay, Shopify, Etsy), one per option elsewhere. Each platform reports its own outcome.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Publish a variation group per platform: one listing with a variation picker where the platform supports it (eBay, Shopify, Etsy), one per option elsewhere. Each platform reports its own outcome.
ListingsAPI.createVariationGroupPublish(id: id) { (response, error) in
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

**CreateVariationGroupPublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVideoStudioFinalize**
```swift
    open class func createVideoStudioFinalize(completion: @escaping (_ data: CreateVideoStudioFinalizeResponse?, _ error: Error?) -> Void)
```

Check an uploaded listing video (exists, MP4, size) and, with listingId, set it as that listing's video.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Check an uploaded listing video (exists, MP4, size) and, with listingId, set it as that listing's video.
ListingsAPI.createVideoStudioFinalize() { (response, error) in
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

**CreateVideoStudioFinalizeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createVideoStudioUploadUrl**
```swift
    open class func createVideoStudioUploadUrl(completion: @escaping (_ data: CreateVideoStudioUploadUrlResponse?, _ error: Error?) -> Void)
```

Presign an R2 PUT (video/mp4, 15 min) for a listing video; finalize it after the upload.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Presign an R2 PUT (video/mp4, 15 min) for a listing video; finalize it after the upload.
ListingsAPI.createVideoStudioUploadUrl() { (response, error) in
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

**CreateVideoStudioUploadUrlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteEvent**
```swift
    open class func deleteEvent(id: String, completion: @escaping (_ data: DeleteEventResponse?, _ error: Error?) -> Void)
```

Delete a draft, or cancel a published event (its page then says it was called off).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a draft, or cancel a published event (its page then says it was called off).
ListingsAPI.deleteEvent(id: id) { (response, error) in
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

**DeleteEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteListing**
```swift
    open class func deleteListing(id: UUID, platforms: String? = nil, platformListingIds: String? = nil, completion: @escaping (_ data: DeleteListingResponse?, _ error: Error?) -> Void)
```

Delist a listing (optionally narrowed to specific platforms via ?platforms=).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let platforms = "platforms_example" // String | Comma-separated platform slugs to limit the delist fan-out. (optional)
let platformListingIds = "platformListingIds_example" // String | Comma-separated platform listing ids — end only those copies (e.g. one eBay site's copy). (optional)

// Delist a listing (optionally narrowed to specific platforms via ?platforms=).
ListingsAPI.deleteListing(id: id, platforms: platforms, platformListingIds: platformListingIds) { (response, error) in
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
 **platforms** | **String** | Comma-separated platform slugs to limit the delist fan-out. | [optional] 
 **platformListingIds** | **String** | Comma-separated platform listing ids — end only those copies (e.g. one eBay site&#39;s copy). | [optional] 

### Return type

**DeleteListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteListingTag**
```swift
    open class func deleteListingTag(tag: String, completion: @escaping (_ data: UpdatedResponse?, _ error: Error?) -> Void)
```

Remove a tag (any case) from every listing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let tag = "tag_example" // String | 

// Remove a tag (any case) from every listing.
ListingsAPI.deleteListingTag(tag: tag) { (response, error) in
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
 **tag** | **String** |  | 

### Return type

**UpdatedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteLiveStreamPinLaunch**
```swift
    open class func deleteLiveStreamPinLaunch(id: String, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Unpin the launch from your live show. Returns `{ ok }`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Unpin the launch from your live show. Returns `{ ok }`.
ListingsAPI.deleteLiveStreamPinLaunch(id: id) { (response, error) in
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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteRentalOffer**
```swift
    open class func deleteRentalOffer(platformListingId: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Stop offering a listing for rent (existing bookings stand).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platformListingId = "platformListingId_example" // String | 

// Stop offering a listing for rent (existing bookings stand).
ListingsAPI.deleteRentalOffer(platformListingId: platformListingId) { (response, error) in
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
 **platformListingId** | **String** |  | 

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteStory**
```swift
    open class func deleteStory(id: String, completion: @escaping (_ data: DeleteStoryResponse?, _ error: Error?) -> Void)
```

Take one story slide down before it expires.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Take one story slide down before it expires.
ListingsAPI.deleteStory(id: id) { (response, error) in
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

# **deleteVariationGroup**
```swift
    open class func deleteVariationGroup(id: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Dissolve a group. Its options stay as ordinary listings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Dissolve a group. Its options stay as ordinary listings.
ListingsAPI.deleteVariationGroup(id: id) { (response, error) in
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

# **getEvent**
```swift
    open class func getEvent(id: String, completion: @escaping (_ data: EventResponse?, _ error: Error?) -> Void)
```

One of your events.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One of your events.
ListingsAPI.getEvent(id: id) { (response, error) in
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

**EventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getEventAnalytic**
```swift
    open class func getEventAnalytic(id: String, completion: @escaping (_ data: GetEventAnalyticResponse?, _ error: Error?) -> Void)
```

Views, RSVPs, and what the linked listings sold on Crossly during the event (orders, units, revenue in cents).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Views, RSVPs, and what the linked listings sold on Crossly during the event (orders, units, revenue in cents).
ListingsAPI.getEventAnalytic(id: id) { (response, error) in
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

**GetEventAnalyticResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getListing**
```swift
    open class func getListing(id: UUID, completion: @escaping (_ data: GetListingResponse?, _ error: Error?) -> Void)
```

Get one listing with its platform rows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Get one listing with its platform rows.
ListingsAPI.getListing(id: id) { (response, error) in
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

**GetListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getListingFacet**
```swift
    open class func getListingFacet(completion: @escaping (_ data: GetListingFacetResponse?, _ error: Error?) -> Void)
```

Distinct brands + categories across listings + inventory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Distinct brands + categories across listings + inventory.
ListingsAPI.getListingFacet() { (response, error) in
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

**GetListingFacetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getListingSkuExist**
```swift
    open class func getListingSkuExist(sku: String, completion: @escaping (_ data: GetListingSkuExistResponse?, _ error: Error?) -> Void)
```

Check whether a SKU is already used by one of this user's items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let sku = "sku_example" // String | 

// Check whether a SKU is already used by one of this user's items.
ListingsAPI.getListingSkuExist(sku: sku) { (response, error) in
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
 **sku** | **String** |  | 

### Return type

**GetListingSkuExistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getLiveStreamRecap**
```swift
    open class func getLiveStreamRecap(id: String, completion: @escaping (_ data: GetLiveStreamRecapResponse?, _ error: Error?) -> Void)
```

The show’s numbers: duration, peak viewers, items sold and gross, tips, chat messages, auctions run, lineup size and the replay URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The show’s numbers: duration, peak viewers, items sold and gross, tips, chat messages, auctions run, lineup size and the replay URL.
ListingsAPI.getLiveStreamRecap(id: id) { (response, error) in
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

**GetLiveStreamRecapResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPassport**
```swift
    open class func getPassport(id: String, completion: @escaping (_ data: GetPassportResponse?, _ error: Error?) -> Void)
```

One passport: its item and every listing of it, the event history (created, printed, tag bound, transferred, claimed…), scans per day for 30 days, custody, grading.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One passport: its item and every listing of it, the event history (created, printed, tag bound, transferred, claimed…), scans per day for 30 days, custody, grading.
ListingsAPI.getPassport(id: id) { (response, error) in
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

**GetPassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPassportDraft**
```swift
    open class func getPassportDraft(id: String, completion: @escaping (_ data: PassportDraftResponse?, _ error: Error?) -> Void)
```

A passport draft and its passports (photos, serial, tag and label state of each).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A passport draft and its passports (photos, serial, tag and label state of each).
ListingsAPI.getPassportDraft(id: id) { (response, error) in
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

**PassportDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPassportPrint**
```swift
    open class func getPassportPrint(jobId: String, completion: @escaping (_ data: GetPassportPrintResponse?, _ error: Error?) -> Void)
```

Where a passport print job sent to your agent is: queued, sent, done, failed, expired or duplicate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let jobId = "jobId_example" // String | 

// Where a passport print job sent to your agent is: queued, sent, done, failed, expired or duplicate.
ListingsAPI.getPassportPrint(jobId: jobId) { (response, error) in
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
 **jobId** | **String** |  | 

### Return type

**GetPassportPrintResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPricingSetting**
```swift
    open class func getPricingSetting(completion: @escaping (_ data: GetPricingSettingResponse?, _ error: Error?) -> Void)
```

Selling options: own-price match (Crossly sells your items at your own lower price for the same item on another marketplace; dollar-priced copies only) and layaway (buyers may put items on layaway). Both on by default.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Selling options: own-price match (Crossly sells your items at your own lower price for the same item on another marketplace; dollar-priced copies only) and layaway (buyers may put items on layaway). Both on by default.
ListingsAPI.getPricingSetting() { (response, error) in
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

**GetPricingSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPricingSoldComp**
```swift
    open class func getPricingSoldComp(completion: @escaping (_ data: GetPricingSoldCompResponse?, _ error: Error?) -> Void)
```

What one catalog product (market_sku_id, in one condition) actually sold for across Crossly in the last 180 days: median, p25/p75, p10/p90 (null under 10 sales), sale count, last sold, and days from listing to sale (median, p25, p75). Pass marketSkuId (+ optional condition) or one of your listingIds. comps is null until there are 3+ sales from 2+ sellers; holdCode says why there is nothing (no_market_sku, mixed_inventory, below_privacy_floor) — the same reasons a sold_median reprice rule holds.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What one catalog product (market_sku_id, in one condition) actually sold for across Crossly in the last 180 days: median, p25/p75, p10/p90 (null under 10 sales), sale count, last sold, and days from listing to sale (median, p25, p75). Pass marketSkuId (+ optional condition) or one of your listingIds. comps is null until there are 3+ sales from 2+ sellers; holdCode says why there is nothing (no_market_sku, mixed_inventory, below_privacy_floor) — the same reasons a sold_median reprice rule holds.
ListingsAPI.getPricingSoldComp() { (response, error) in
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

**GetPricingSoldCompResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getRentalSetting**
```swift
    open class func getRentalSetting(completion: @escaping (_ data: GetRentalSettingResponse?, _ error: Error?) -> Void)
```

The store’s rental defaults (every item inherits them) and its payout timing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The store’s rental defaults (every item inherits them) and its payout timing.
ListingsAPI.getRentalSetting() { (response, error) in
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

**GetRentalSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getShopLimit**
```swift
    open class func getShopLimit(completion: @escaping (_ data: GetShopLimitResponse?, _ error: Error?) -> Void)
```

Your Crossly Shop selling limit: live listings and listed value, used of limit, per store, and the next step.

Per seller account, shared by all your stores. Counts live + scheduled Crossly Shop listings once each; value is the US-dollar shop price x quantity (an auction at max(start, reserve, buy-now)). Drafts, sold/ended listings and Trade Block posts are not counted, and selling frees space at once. `unlimited` is true for sandbox sellers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Crossly Shop selling limit: live listings and listed value, used of limit, per store, and the next step.
ListingsAPI.getShopLimit() { (response, error) in
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

**GetShopLimitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listEventAttendees**
```swift
    open class func listEventAttendees(id: String, completion: @escaping (_ data: ListEventAttendeesResponse?, _ error: Error?) -> Void)
```

Who RSVPd: display name, avatar, going or interested, and when. No contact details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Who RSVPd: display name, avatar, going or interested, and when. No contact details.
ListingsAPI.listEventAttendees(id: id) { (response, error) in
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

**ListEventAttendeesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listEvents**
```swift
    open class func listEvents(completion: @escaping (_ data: ListEventsResponse?, _ error: Error?) -> Void)
```

Your events (launches, sales, live shows, drops, meetups, pop-ups, workshops, parties): schedule, status, phase, and going/interested counts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your events (launches, sales, live shows, drops, meetups, pop-ups, workshops, parties): schedule, status, phase, and going/interested counts.
ListingsAPI.listEvents() { (response, error) in
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

**ListEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listListingAiDetections**
```swift
    open class func listListingAiDetections(id: String, completion: @escaping (_ data: ListListingAiDetectionsResponse?, _ error: Error?) -> Void)
```

Crossly's AI-image detections for a listing's photos.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Crossly's AI-image detections for a listing's photos.
ListingsAPI.listListingAiDetections(id: id) { (response, error) in
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

**ListListingAiDetectionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listListingDiscrepancies**
```swift
    open class func listListingDiscrepancies(id: UUID, completion: @escaping (_ data: ListListingDiscrepanciesResponse?, _ error: Error?) -> Void)
```

List detected marketplace-drift discrepancies for a listing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// List detected marketplace-drift discrepancies for a listing.
ListingsAPI.listListingDiscrepancies(id: id) { (response, error) in
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

**ListListingDiscrepanciesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listListingIds**
```swift
    open class func listListingIds(completion: @escaping (_ data: ListListingIdsResponse?, _ error: Error?) -> Void)
```

Filter listings → return matching id list (no pagination).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Filter listings → return matching id list (no pagination).
ListingsAPI.listListingIds() { (response, error) in
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

**ListListingIdsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listListingTagSuggest**
```swift
    open class func listListingTagSuggest(listingId: UUID, completion: @escaping (_ data: ListListingTagSuggestResponse?, _ error: Error?) -> Void)
```

Deterministic tag suggestions for one listing (brand, category, size, condition, colors, style tags, era words in the title); `known` = you already use the tag.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let listingId = 987 // UUID | 

// Deterministic tag suggestions for one listing (brand, category, size, condition, colors, style tags, era words in the title); `known` = you already use the tag.
ListingsAPI.listListingTagSuggest(listingId: listingId) { (response, error) in
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
 **listingId** | **UUID** |  | 

### Return type

**ListListingTagSuggestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listListingTags**
```swift
    open class func listListingTags(q: String? = nil, limit: Int? = nil, completion: @escaping (_ data: ListListingTagsResponse?, _ error: Error?) -> Void)
```

Your listing tags with how many listings carry each, most used first (case-insensitive; `q` filters).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let q = "q_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// Your listing tags with how many listings carry each, most used first (case-insensitive; `q` filters).
ListingsAPI.listListingTags(q: q, limit: limit) { (response, error) in
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
 **q** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

**ListListingTagsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listListings**
```swift
    open class func listListings(page: Int? = nil, limit: Int? = nil, platform: String? = nil, status: String? = nil, sku: String? = nil, updatedSince: Date? = nil, kind: Kind_listListings? = nil, tag: AnyOfstringarray? = nil, stillLive: Bool? = nil, completion: @escaping (_ data: ListListingsResponse?, _ error: Error?) -> Void)
```

List active platform listings.

Each row carries `pricing`: `avgAsking` (average price across its active marketplace rows, per-platform overrides and price rules applied) and `avgSale` (average price per unit sold, refunds netted), each `{ amount, currency, count }` or null. Never averaged across currencies.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 25)
let platform = "platform_example" // String |  (optional)
let status = "status_example" // String |  (optional)
let sku = "sku_example" // String | Exact SKU match: look up the row a supplier product maps to. (optional)
let updatedSince = Date() // Date | Only rows created or changed at or after this time (ISO 8601), oldest change first. Poll with the updatedAt of the last row you saw. (optional)
let kind = "kind_example" // String | Physical goods or Web3 assets (NFT listings). Omit for both. (optional)
let tag = TODO // AnyOfstringarray | Only listings carrying ANY of these tags (case-insensitive): repeat `tag` or comma-separate. (optional)
let stillLive = true // Bool | Only listings still active on at least one marketplace. With status=sold: sold items still buyable somewhere (a delist failed, is pending or never ran). (optional)

// List active platform listings.
ListingsAPI.listListings(page: page, limit: limit, platform: platform, status: status, sku: sku, updatedSince: updatedSince, kind: kind, tag: tag, stillLive: stillLive) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 25]
 **platform** | **String** |  | [optional] 
 **status** | **String** |  | [optional] 
 **sku** | **String** | Exact SKU match: look up the row a supplier product maps to. | [optional] 
 **updatedSince** | **Date** | Only rows created or changed at or after this time (ISO 8601), oldest change first. Poll with the updatedAt of the last row you saw. | [optional] 
 **kind** | **String** | Physical goods or Web3 assets (NFT listings). Omit for both. | [optional] 
 **tag** | [**AnyOfstringarray**](.md) | Only listings carrying ANY of these tags (case-insensitive): repeat &#x60;tag&#x60; or comma-separate. | [optional] 
 **stillLive** | **Bool** | Only listings still active on at least one marketplace. With status&#x3D;sold: sold items still buyable somewhere (a delist failed, is pending or never ran). | [optional] 

### Return type

**ListListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listLiveStreams**
```swift
    open class func listLiveStreams(completion: @escaping (_ data: ListLiveStreamsResponse?, _ error: Error?) -> Void)
```

Your live shows, newest scheduled first: status, cover, category, connection method and peak viewers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your live shows, newest scheduled first: status, cover, category, connection method and peak viewers.
ListingsAPI.listLiveStreams() { (response, error) in
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

**ListLiveStreamsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listPassportEvents**
```swift
    open class func listPassportEvents(id: String, completion: @escaping (_ data: ListPassportEventsResponse?, _ error: Error?) -> Void)
```

A passport’s event history, newest first (never a buyer or a price).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A passport’s event history, newest first (never a buyer or a price).
ListingsAPI.listPassportEvents(id: id) { (response, error) in
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

**ListPassportEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listPassportPrintTargets**
```swift
    open class func listPassportPrintTargets(completion: @escaping (_ data: ListPassportPrintTargetsResponse?, _ error: Error?) -> Void)
```

Your printer agents (online, printers, default) and the passport label templates each can print.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your printer agents (online, printers, default) and the passport label templates each can print.
ListingsAPI.listPassportPrintTargets() { (response, error) in
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

**ListPassportPrintTargetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listPassports**
```swift
    open class func listPassports(completion: @escaping (_ data: ListPassportsResponse?, _ error: Error?) -> Void)
```

Product passports you registered (optionally for one Crossly listing): the code and URL each tag carries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Product passports you registered (optionally for one Crossly listing): the code and URL each tag carries.
ListingsAPI.listPassports() { (response, error) in
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

**ListPassportsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listRentalOffers**
```swift
    open class func listRentalOffers(completion: @escaping (_ data: ListRentalOffersResponse?, _ error: Error?) -> Void)
```

What you offer for rent.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What you offer for rent.
ListingsAPI.listRentalOffers() { (response, error) in
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

**ListRentalOffersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listStories**
```swift
    open class func listStories(completion: @escaping (_ data: ListStoriesResponse?, _ error: Error?) -> Void)
```

Your active story slides (newest run first, each run in play order), with their overlays: text, listing stickers, @mentions, links, emoji and drawing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your active story slides (newest run first, each run in play order), with their overlays: text, listing stickers, @mentions, links, emoji and drawing.
ListingsAPI.listStories() { (response, error) in
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

**ListStoriesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateEvent**
```swift
    open class func updateEvent(id: String, completion: @escaping (_ data: EventResponse?, _ error: Error?) -> Void)
```

Edit an event. Omitted fields are unchanged; null clears.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Edit an event. Omitted fields are unchanged; null clears.
ListingsAPI.updateEvent(id: id) { (response, error) in
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

**EventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateHotspot**
```swift
    open class func updateHotspot(completion: @escaping (_ data: UpdateHotspotResponse?, _ error: Error?) -> Void)
```

Tag your listings at points on a story or lookbook photo (shop the look). Replaces that photo’s tags; at most 12.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Tag your listings at points on a story or lookbook photo (shop the look). Replaces that photo’s tags; at most 12.
ListingsAPI.updateHotspot() { (response, error) in
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

**UpdateHotspotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateListing**
```swift
    open class func updateListing(id: UUID, completion: @escaping (_ data: UpdateListingResponse?, _ error: Error?) -> Void)
```

Edit a listing and fan out update jobs to existing platform listings.

The fields to change go in `changes` (a sparse object, e.g. `{ \"changes\": { \"price\": 24.99 } }`). `data` is accepted as an alias of `changes` (the name create and bulk create use); sending both is a 400. Omit `platforms` to push the edit everywhere the listing is live.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Edit a listing and fan out update jobs to existing platform listings.
ListingsAPI.updateListing(id: id) { (response, error) in
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

**UpdateListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateListingCustom**
```swift
    open class func updateListingCustom(id: UUID, completion: @escaping (_ data: UpdateListingCustomResponse?, _ error: Error?) -> Void)
```

Set a listing’s customs: HS code (6–10 digits), country of origin, and countries this item must not ship to on Crossly. Omitted fields are left alone; null (or [] for restrictedCountries) clears.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Set a listing’s customs: HS code (6–10 digits), country of origin, and countries this item must not ship to on Crossly. Omitted fields are left alone; null (or [] for restrictedCountries) clears.
ListingsAPI.updateListingCustom(id: id) { (response, error) in
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

**UpdateListingCustomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateListingPlatformListing**
```swift
    open class func updateListingPlatformListing(id: UUID, plId: UUID, completion: @escaping (_ data: UpdateListingPlatformListingResponse?, _ error: Error?) -> Void)
```

Set one marketplace copy's price (e.g. the ebay.com copy of a listing also live on ebay.co.uk), in that copy's own currency.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let plId = 987 // UUID | 

// Set one marketplace copy's price (e.g. the ebay.com copy of a listing also live on ebay.co.uk), in that copy's own currency.
ListingsAPI.updateListingPlatformListing(id: id, plId: plId) { (response, error) in
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
 **plId** | **UUID** |  | 

### Return type

**UpdateListingPlatformListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateLiveStream**
```swift
    open class func updateLiveStream(id: String, completion: @escaping (_ data: LiveStreamResponse?, _ error: Error?) -> Void)
```

Edit a show that has not ended: title, description, cover, category, start time (not once live) or connection method (browser | phone | encoder).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Edit a show that has not ended: title, description, cover, category, start time (not once live) or connection method (browser | phone | encoder).
ListingsAPI.updateLiveStream(id: id) { (response, error) in
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

**LiveStreamResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateLiveStreamLineup**
```swift
    open class func updateLiveStreamLineup(id: String, completion: @escaping (_ data: UpdateLiveStreamLineupResponse?, _ error: Error?) -> Void)
```

Set a live show’s lineup: your Crossly listings, in the order you will sell them. Buyers see it before they join; a sale of a lineup item while the show is live is recorded at its replay moment.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Set a live show’s lineup: your Crossly listings, in the order you will sell them. Buyers see it before they join; a sale of a lineup item while the show is live is recorded at its replay moment.
ListingsAPI.updateLiveStreamLineup(id: id) { (response, error) in
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

**UpdateLiveStreamLineupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updatePassport**
```swift
    open class func updatePassport(id: String, completion: @escaping (_ data: UpdatePassportResponse?, _ error: Error?) -> Void)
```

Change what a passport says (title, condition, maker, year, materials, notes) or add photo URLs (photos append: a passport keeps the ones it was registered with).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Change what a passport says (title, condition, maker, year, materials, notes) or add photo URLs (photos append: a passport keeps the ones it was registered with).
ListingsAPI.updatePassport(id: id) { (response, error) in
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

**UpdatePassportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updatePassportDraft**
```swift
    open class func updatePassportDraft(id: String, completion: @escaping (_ data: PassportDraftResponse?, _ error: Error?) -> Void)
```

Move a draft to a step, pick its label template, add items or remove draft passports.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Move a draft to a step, pick its label template, add items or remove draft passports.
ListingsAPI.updatePassportDraft(id: id) { (response, error) in
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

**PassportDraftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updatePricingSetting**
```swift
    open class func updatePricingSetting(completion: @escaping (_ data: GetPricingSettingResponse?, _ error: Error?) -> Void)
```

Turn own-price match and/or layaway on or off for every one of your stores. One store: PUT /v1/storefronts/{id}/settings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Turn own-price match and/or layaway on or off for every one of your stores. One store: PUT /v1/storefronts/{id}/settings.
ListingsAPI.updatePricingSetting() { (response, error) in
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

**GetPricingSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateRentalOffer**
```swift
    open class func updateRentalOffer(platformListingId: String, completion: @escaping (_ data: UpdateRentalOfferResponse?, _ error: Error?) -> Void)
```

Offer a Crossly listing for rent: day rate, optional week rate, deposit, min/max days, turnaround buffer, rent-only (off sale while offered), seller approval, unavailable date ranges (blackoutRanges, inclusive YYYY-MM-DD) and a return policy. Keeps the listing’s own rental terms in step. Needs a ship-from address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platformListingId = "platformListingId_example" // String | 

// Offer a Crossly listing for rent: day rate, optional week rate, deposit, min/max days, turnaround buffer, rent-only (off sale while offered), seller approval, unavailable date ranges (blackoutRanges, inclusive YYYY-MM-DD) and a return policy. Keeps the listing’s own rental terms in step. Needs a ship-from address.
ListingsAPI.updateRentalOffer(platformListingId: platformListingId) { (response, error) in
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
 **platformListingId** | **String** |  | 

### Return type

**UpdateRentalOfferResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateRentalSetting**
```swift
    open class func updateRentalSetting(completion: @escaping (_ data: GetRentalSettingResponse?, _ error: Error?) -> Void)
```

Set the store’s rental defaults and payout timing (on_start needs 3 rentals that came back).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set the store’s rental defaults and payout timing (on_start needs 3 rentals that came back).
ListingsAPI.updateRentalSetting() { (response, error) in
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

**GetRentalSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateVariationGroup**
```swift
    open class func updateVariationGroup(id: String, completion: @escaping (_ data: CreateVariationGroupResponse?, _ error: Error?) -> Void)
```

Retitle a group, rename its axis, or change a group's purchase rule (written into every member's description).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Retitle a group, rename its axis, or change a group's purchase rule (written into every member's description).
ListingsAPI.updateVariationGroup(id: id) { (response, error) in
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

**CreateVariationGroupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

