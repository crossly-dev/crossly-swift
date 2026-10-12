# BuyerCatalogAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBuyerIdentify**](BuyerCatalogAPI.md#createbuyeridentify) | **POST** /v1/buyer/identify | Identify a held object and return a HUD-ready answer.
[**createBuyerLockon**](BuyerCatalogAPI.md#createbuyerlockon) | **POST** /v1/buyer/lockons | Lock on to an object the buyer is holding.
[**createBuyerLockonConfirm**](BuyerCatalogAPI.md#createbuyerlockonconfirm) | **POST** /v1/buyer/lockons/{id}/confirm | The buyer picked one of the candidates.
[**createBuyerLockonObserve**](BuyerCatalogAPI.md#createbuyerlockonobserve) | **POST** /v1/buyer/lockons/{id}/observe | Add what this frame revealed, and get the current best answer.
[**createBuyerScan**](BuyerCatalogAPI.md#createbuyerscan) | **POST** /v1/buyer/scan | Identify a physical item and find the cheapest place to buy it.
[**createBuyerScanSession**](BuyerCatalogAPI.md#createbuyerscansession) | **POST** /v1/buyer/scan/sessions | Open a Live Shop session.
[**createBuyerScanSessionEnd**](BuyerCatalogAPI.md#createbuyerscansessionend) | **POST** /v1/buyer/scan/sessions/{id}/end | Close a Live Shop session.
[**getBuyerAnywhere**](BuyerCatalogAPI.md#getbuyeranywhere) | **GET** /v1/buyer/anywhere | Cheapest source for an item — Crossly first, then other retailers.
[**getBuyerCatalogFacet**](BuyerCatalogAPI.md#getbuyercatalogfacet) | **GET** /v1/buyer/catalog/facets | Brands, categories and conditions that currently have stock.
[**getBuyerCatalogFx**](BuyerCatalogAPI.md#getbuyercatalogfx) | **GET** /v1/buyer/catalog/fx | Display-only exchange rates (units per 1 USD).
[**getBuyerCatalogListing**](BuyerCatalogAPI.md#getbuyercataloglisting) | **GET** /v1/buyer/catalog/listings/{slug} | One listing, in full.
[**getBuyerCatalogListingAvailability**](BuyerCatalogAPI.md#getbuyercataloglistingavailability) | **GET** /v1/buyer/catalog/listings/{slug}/availability | Is it still buyable, and at what price.
[**getBuyerCatalogListingShipping**](BuyerCatalogAPI.md#getbuyercataloglistingshipping) | **GET** /v1/buyer/catalog/listings/{slug}/shipping | Shipping services and prices to a destination.
[**getBuyerListingLandedCost**](BuyerCatalogAPI.md#getbuyerlistinglandedcost) | **GET** /v1/buyer/listings/{slug}/landed-cost | Import duties, taxes and fees to a country (landed cost).
[**getBuyerScanSession**](BuyerCatalogAPI.md#getbuyerscansession) | **GET** /v1/buyer/scan/sessions/{id} | One trip and everything it found.
[**listBuyerCatalogBrowse**](BuyerCatalogAPI.md#listbuyercatalogbrowse) | **GET** /v1/buyer/catalog/browse | Browse the way the shop does — buying format, returns, size, color, sold items, Best Match.
[**listBuyerCatalogListingSoldHistory**](BuyerCatalogAPI.md#listbuyercataloglistingsoldhistory) | **GET** /v1/buyer/catalog/listings/{slug}/sold-history | What THIS listing has sold for, newest first (last 50), with the median.
[**listBuyerCatalogSearch**](BuyerCatalogAPI.md#listbuyercatalogsearch) | **GET** /v1/buyer/catalog/search | Search the Crossly catalogue.
[**listBuyerCatalogSellers**](BuyerCatalogAPI.md#listbuyercatalogsellers) | **GET** /v1/buyer/catalog/sellers | Find a seller by shop handle or shop name.
[**listBuyerScanSessions**](BuyerCatalogAPI.md#listbuyerscansessions) | **GET** /v1/buyer/scan/sessions | Your scanning trips, newest first.


# **createBuyerIdentify**
```swift
    open class func createBuyerIdentify(completion: @escaping (_ data: CreateBuyerIdentifyResponse?, _ error: Error?) -> Void)
```

Identify a held object and return a HUD-ready answer.

The gesture endpoint for Live Shop. Runs a cost ladder: a decoded BARCODE resolves in ~50ms for nothing; failing that, self-hosted CLIP matches the catalogue; failing that, a vision model names it (the only rung that costs anything, capped per buyer per day). `hud` is pre-formatted for a 600×600 lens — one headline, one subline, up to three fact chips and exactly ONE action, because a pinch cannot choose between buttons. A vision label is WORDS, never an identity: it names the thing so the buyer can search, and never drives a price comparison.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Identify a held object and return a HUD-ready answer.
BuyerCatalogAPI.createBuyerIdentify() { (response, error) in
    guard error == nil else {
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

**CreateBuyerIdentifyResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerLockon**
```swift
    open class func createBuyerLockon(completion: @escaping (_ data: CreateBuyerLockonResponse?, _ error: Error?) -> Void)
```

Lock on to an object the buyer is holding.

Open this when on-device tracking acquires an object, then post observations to it as the buyer turns the thing over. The answer improves as evidence arrives — the style code inside a shoe settles what the front of it could not.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Lock on to an object the buyer is holding.
BuyerCatalogAPI.createBuyerLockon() { (response, error) in
    guard error == nil else {
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

**CreateBuyerLockonResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerLockonConfirm**
```swift
    open class func createBuyerLockonConfirm(id: UUID, completion: @escaping (_ data: CreateBuyerLockonConfirmResponse?, _ error: Error?) -> Void)
```

The buyer picked one of the candidates.

Promotes a text match to a CONFIRMED identity — the strongest evidence in the system, because a person holding the object said yes. Validated against the candidates we actually offered, so it cannot be claimed about an arbitrary product.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 

// The buyer picked one of the candidates.
BuyerCatalogAPI.createBuyerLockonConfirm(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerLockonConfirmResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerLockonObserve**
```swift
    open class func createBuyerLockonObserve(id: UUID, completion: @escaping (_ data: CreateBuyerLockonConfirmResponse?, _ error: Error?) -> Void)
```

Add what this frame revealed, and get the current best answer.

Send only what you LEARNED: a decoded barcode, newly-read OCR text, or a frame when neither settled it. Do not post every frame — tracking and decoding happen on-device for free, and this endpoint is for evidence, not video. Evidence is RANKED (confirmed > barcode > ocr > visual), so a late weak reading can never overwrite a strong early one. When text evidence finds several products, `candidates` comes back for the buyer to pick from — a vision label is words, and only a human confirmation turns it into an identity we will price against.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 

// Add what this frame revealed, and get the current best answer.
BuyerCatalogAPI.createBuyerLockonObserve(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerLockonConfirmResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerScan**
```swift
    open class func createBuyerScan(completion: @escaping (_ data: CreateBuyerScanResponse?, _ error: Error?) -> Void)
```

Identify a physical item and find the cheapest place to buy it.

Send a barcode identifier OR a photo. A BARCODE establishes identity, so the response carries a full price verdict across Crossly and other retailers. A PHOTO establishes resemblance only: you get visual matches from the Crossly catalogue, and a price verdict ONLY if the matched listing carries a real identifier. When it does not, `comparable` is false and there is no verdict — a price comparison built on a visual guess is a claim about a different product. Most second-hand items have no identifier by nature, so this is expected rather than a failure.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Identify a physical item and find the cheapest place to buy it.
BuyerCatalogAPI.createBuyerScan() { (response, error) in
    guard error == nil else {
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

**CreateBuyerScanResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerScanSession**
```swift
    open class func createBuyerScanSession(completion: @escaping (_ data: CreateBuyerScanSessionResponse?, _ error: Error?) -> Void)
```

Open a Live Shop session.

Call this when the glasses connect, then pass the returned id as `sessionId` on each scan. Opening a session CLOSES any other live one — a person is in one shop at a time, and two live sessions split a trip across both.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Open a Live Shop session.
BuyerCatalogAPI.createBuyerScanSession() { (response, error) in
    guard error == nil else {
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

**CreateBuyerScanSessionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createBuyerScanSessionEnd**
```swift
    open class func createBuyerScanSessionEnd(id: UUID, completion: @escaping (_ data: CreateBuyerScanSessionEndResponse?, _ error: Error?) -> Void)
```

Close a Live Shop session.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 

// Close a Live Shop session.
BuyerCatalogAPI.createBuyerScanSessionEnd(id: id) { (response, error) in
    guard error == nil else {
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

**CreateBuyerScanSessionEndResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerAnywhere**
```swift
    open class func getBuyerAnywhere(completion: @escaping (_ data: GetBuyerAnywhereResponse?, _ error: Error?) -> Void)
```

Cheapest source for an item — Crossly first, then other retailers.

Answers with a VERDICT, not a list: crossly_best, offsite_cheaper, offsite_only or no_match. Offsite offers come from licensed affiliate product feeds, are ranked CHEAPEST-FIRST — commission only ever breaks a sub-$1 tie — and only appear when they beat the price you passed in. `shippingUnknown: true` means a compared price omitted postage, so present the result as \"before postage\" rather than as a delivered total. Crossly wins ties within $1; beyond that the honest answer wins.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Cheapest source for an item — Crossly first, then other retailers.
BuyerCatalogAPI.getBuyerAnywhere() { (response, error) in
    guard error == nil else {
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

**GetBuyerAnywhereResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCatalogFacet**
```swift
    open class func getBuyerCatalogFacet(completion: @escaping (_ data: GetBuyerCatalogFacetResponse?, _ error: Error?) -> Void)
```

Brands, categories and conditions that currently have stock.

The vocabulary the search filters accept. Counts are live, so a filter built from this will never return an empty page for a value that has since sold out.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Brands, categories and conditions that currently have stock.
BuyerCatalogAPI.getBuyerCatalogFacet() { (response, error) in
    guard error == nil else {
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

**GetBuyerCatalogFacetResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCatalogFx**
```swift
    open class func getBuyerCatalogFx(completion: @escaping (_ data: GetBuyerCatalogFxResponse?, _ error: Error?) -> Void)
```

Display-only exchange rates (units per 1 USD).

ECB daily reference rates rebased to US dollars: `rates.EUR = 0.92` means $1 ≈ €0.92. `asOf` is the ECB publication date (null until the first refresh). For showing an approximate price only — every Crossly price and charge is in USD, and the card issuer sets the final exchange rate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Display-only exchange rates (units per 1 USD).
BuyerCatalogAPI.getBuyerCatalogFx() { (response, error) in
    guard error == nil else {
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

**GetBuyerCatalogFxResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCatalogListing**
```swift
    open class func getBuyerCatalogListing(slug: String, completion: @escaping (_ data: GetBuyerCatalogListingResponse?, _ error: Error?) -> Void)
```

One listing, in full.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// One listing, in full.
BuyerCatalogAPI.getBuyerCatalogListing(slug: slug) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** |  | 

### Return type

**GetBuyerCatalogListingResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCatalogListingAvailability**
```swift
    open class func getBuyerCatalogListingAvailability(slug: String, completion: @escaping (_ data: GetBuyerCatalogListingAvailabilityResponse?, _ error: Error?) -> Void)
```

Is it still buyable, and at what price.

The cheapest endpoint here, and the one to poll if you are going to poll — a single indexed row, no joins beyond stock, and an ETag so an unchanged answer is a 304. If you want to be TOLD instead of asking, create a monitor.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 

// Is it still buyable, and at what price.
BuyerCatalogAPI.getBuyerCatalogListingAvailability(slug: slug) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** |  | 

### Return type

**GetBuyerCatalogListingAvailabilityResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerCatalogListingShipping**
```swift
    open class func getBuyerCatalogListingShipping(slug: String, zip: String? = nil, country: String? = nil, quantity: Int? = nil, completion: @escaping (_ data: GetBuyerCatalogListingShippingResponse?, _ error: Error?) -> Void)
```

Shipping services and prices to a destination.

Lists every shipping service the seller offers to `country` (default: the seller’s own country) with its price for `quantity` units and its delivery window in business days (handling included). `zip` is required for a domestic quote. `shipsToCountry: false` means the seller does not ship there. Pass a service `id` as `shippingServiceId` to POST /api/v1/buyer/checkout, or in `shippingServiceBySeller` to POST /api/v1/buyer/cart/quote.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | 
let zip = "zip_example" // String |  (optional)
let country = "country_example" // String |  (optional)
let quantity = 987 // Int |  (optional)

// Shipping services and prices to a destination.
BuyerCatalogAPI.getBuyerCatalogListingShipping(slug: slug, zip: zip, country: country, quantity: quantity) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** |  | 
 **zip** | **String** |  | [optional] 
 **country** | **String** |  | [optional] 
 **quantity** | **Int** |  | [optional] 

### Return type

**GetBuyerCatalogListingShippingResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerListingLandedCost**
```swift
    open class func getBuyerListingLandedCost(country: String, slug: String, postalCode: String? = nil, quantity: Int? = nil, completion: @escaping (_ data: GetBuyerListingLandedCostResponse?, _ error: Error?) -> Void)
```

Import duties, taxes and fees to a country (landed cost).

Quotes the import duties, import taxes and fees for this listing shipped to `country` (ISO 3166-1 alpha-2), using the cheapest shipping service the seller offers there. `status: included` means checkout charges them now and the parcel ships DDP — no bill at the door; `unavailable` means it ships DDU and `notice` says the carrier or customs may charge on delivery; `none` means the parcel does not cross a border. Amounts are US-dollar cents. Answers 503 with `missingEnv` when landed-cost quoting is not configured on this deployment.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let country = "country_example" // String | 
let slug = "slug_example" // String | 
let postalCode = "postalCode_example" // String |  (optional)
let quantity = 987 // Int |  (optional)

// Import duties, taxes and fees to a country (landed cost).
BuyerCatalogAPI.getBuyerListingLandedCost(country: country, slug: slug, postalCode: postalCode, quantity: quantity) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** |  | 
 **postalCode** | **String** |  | [optional] 
 **quantity** | **Int** |  | [optional] 

### Return type

**GetBuyerListingLandedCostResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getBuyerScanSession**
```swift
    open class func getBuyerScanSession(id: UUID, completion: @escaping (_ data: GetBuyerScanSessionResponse?, _ error: Error?) -> Void)
```

One trip and everything it found.

Verdicts are returned EXACTLY as they were given at the time, not re-priced. A history screen that silently refreshes old prices shows a saving that was never actually on offer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let id = 987 // UUID | 

// One trip and everything it found.
BuyerCatalogAPI.getBuyerScanSession(id: id) { (response, error) in
    guard error == nil else {
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

**GetBuyerScanSessionResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerCatalogBrowse**
```swift
    open class func listBuyerCatalogBrowse(q: String? = nil, format: Format_listBuyerCatalogBrowse? = nil, returns: Returns_listBuyerCatalogBrowse? = nil, sold: Sold_listBuyerCatalogBrowse? = nil, size: String? = nil, color: String? = nil, shipsTo: String? = nil, sort: Sort_listBuyerCatalogBrowse? = nil, minPriceCents: Int? = nil, maxPriceCents: Int? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: ListBuyerCatalogBrowseResponse?, _ error: Error?) -> Void)
```

Browse the way the shop does — buying format, returns, size, color, sold items, Best Match.

Page-numbered and capped at 50 pages of up to 60, like the storefront. For walking the whole catalogue use /v1/buyer/catalog/search, which pages by cursor. Prices are integer CENTS (`minPriceCents=2500` is $25.00). `sold=true` returns recent sales of matching listings (last 90 days) with `soldPriceCents` and `soldAt`, instead of live stock.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let q = "q_example" // String | Free text; every word must appear in the title or brand. (optional)
let format = "format_example" // String | auction, buy_it_now, or offers (accepts offers). (optional)
let returns = "returns_example" // String | true = only listings that accept returns. (optional)
let sold = "sold_example" // String | true = recent sales instead of live listings. (optional)
let size = "size_example" // String | Exact size, case-insensitive (M does not match XL). (optional)
let color = "color_example" // String | Exact colour, case-insensitive. (optional)
let shipsTo = "shipsTo_example" // String | ISO 3166-1 alpha-2 destination (e.g. GB): only listings whose seller ships there, decided as checkout decides it (the listing's shipping policy and its own restricted countries). An embargoed destination matches nothing. Omitted, or `any`, means no destination filter — the storefront grid defaults to the buyer's country, this endpoint does not. (optional)
let sort = "sort_example" // String | Default best_match with q, newest without. (optional)
let minPriceCents = 987 // Int | Lowest price, in cents. (optional)
let maxPriceCents = 987 // Int | Highest price, in cents. (optional)
let page = 987 // Int | 1-indexed page. (optional) (default to 1)
let limit = 987 // Int | Rows per page. (optional) (default to 24)

// Browse the way the shop does — buying format, returns, size, color, sold items, Best Match.
BuyerCatalogAPI.listBuyerCatalogBrowse(q: q, format: format, returns: returns, sold: sold, size: size, color: color, shipsTo: shipsTo, sort: sort, minPriceCents: minPriceCents, maxPriceCents: maxPriceCents, page: page, limit: limit) { (response, error) in
    guard error == nil else {
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
 **q** | **String** | Free text; every word must appear in the title or brand. | [optional] 
 **format** | **String** | auction, buy_it_now, or offers (accepts offers). | [optional] 
 **returns** | **String** | true &#x3D; only listings that accept returns. | [optional] 
 **sold** | **String** | true &#x3D; recent sales instead of live listings. | [optional] 
 **size** | **String** | Exact size, case-insensitive (M does not match XL). | [optional] 
 **color** | **String** | Exact colour, case-insensitive. | [optional] 
 **shipsTo** | **String** | ISO 3166-1 alpha-2 destination (e.g. GB): only listings whose seller ships there, decided as checkout decides it (the listing&#39;s shipping policy and its own restricted countries). An embargoed destination matches nothing. Omitted, or &#x60;any&#x60;, means no destination filter — the storefront grid defaults to the buyer&#39;s country, this endpoint does not. | [optional] 
 **sort** | **String** | Default best_match with q, newest without. | [optional] 
 **minPriceCents** | **Int** | Lowest price, in cents. | [optional] 
 **maxPriceCents** | **Int** | Highest price, in cents. | [optional] 
 **page** | **Int** | 1-indexed page. | [optional] [default to 1]
 **limit** | **Int** | Rows per page. | [optional] [default to 24]

### Return type

**ListBuyerCatalogBrowseResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerCatalogListingSoldHistory**
```swift
    open class func listBuyerCatalogListingSoldHistory(slug: String, completion: @escaping (_ data: ListBuyerCatalogListingSoldHistoryResponse?, _ error: Error?) -> Void)
```

What THIS listing has sold for, newest first (last 50), with the median.

This listing only — never \"similar items\", which would mean matching other listings by resemblance. Prices are per unit, in cents, excluding shipping and tax.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let slug = "slug_example" // String | The listing slug.

// What THIS listing has sold for, newest first (last 50), with the median.
BuyerCatalogAPI.listBuyerCatalogListingSoldHistory(slug: slug) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** | The listing slug. | 

### Return type

**ListBuyerCatalogListingSoldHistoryResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerCatalogSearch**
```swift
    open class func listBuyerCatalogSearch(completion: @escaping (_ data: ListBuyerCatalogSearchResponse?, _ error: Error?) -> Void)
```

Search the Crossly catalogue.

Keyset-paginated. Pass the `nextCursor` you were given back as `cursor`; page 500 costs the same as page 1. Cursors are opaque — do not parse them. Responses carry an ETag: send it back as If-None-Match and an unchanged page answers 304, which is free. `sort=popular` is deliberately unavailable, because a cursor into a continuously-reordering list silently skips rows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Search the Crossly catalogue.
BuyerCatalogAPI.listBuyerCatalogSearch() { (response, error) in
    guard error == nil else {
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

**ListBuyerCatalogSearchResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerCatalogSellers**
```swift
    open class func listBuyerCatalogSellers(q: String, limit: Int? = nil, completion: @escaping (_ data: ListBuyerCatalogSellersResponse?, _ error: Error?) -> Void)
```

Find a seller by shop handle or shop name.

Only shops that have listed on Crossly. Exact matches first, then prefix, then by live listing count.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer

let q = "q_example" // String | At least two characters of a handle or shop name.
let limit = 987 // Int | How many shops to return. (optional) (default to 12)

// Find a seller by shop handle or shop name.
BuyerCatalogAPI.listBuyerCatalogSellers(q: q, limit: limit) { (response, error) in
    guard error == nil else {
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
 **q** | **String** | At least two characters of a handle or shop name. | 
 **limit** | **Int** | How many shops to return. | [optional] [default to 12]

### Return type

**ListBuyerCatalogSellersResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listBuyerScanSessions**
```swift
    open class func listBuyerScanSessions(completion: @escaping (_ data: ListBuyerScanSessionsResponse?, _ error: Error?) -> Void)
```

Your scanning trips, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CrosslyBuyer


// Your scanning trips, newest first.
BuyerCatalogAPI.listBuyerScanSessions() { (response, error) in
    guard error == nil else {
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

**ListBuyerScanSessionsResponse**

### Authorization

[BuyerOAuth](../README.md#BuyerOAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

