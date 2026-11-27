# AnalyticsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAnalyticExperiment**](AnalyticsAPI.md#createanalyticexperiment) | **POST** /v1/analytics/experiments | Start a listing experiment. split: 2-4 live platform listings observed over the same window; sequential: one platform listing, before vs after changeAt (optionally applying a new price).
[**createAnalyticExperimentDeclare**](AnalyticsAPI.md#createanalyticexperimentdeclare) | **POST** /v1/analytics/experiments/{id}/declare | Record the outcome: a winning arm, no difference, or inconclusive. Concludes the experiment.
[**createAnalyticExperimentStop**](AnalyticsAPI.md#createanalyticexperimentstop) | **POST** /v1/analytics/experiments/{id}/stop | Stop an experiment: no more data is counted after now.
[**deleteAnalyticExperiment**](AnalyticsAPI.md#deleteanalyticexperiment) | **DELETE** /v1/analytics/experiments/{id} | Delete an experiment. The listings are untouched.
[**getAnalyticBookkeeping**](AnalyticsAPI.md#getanalyticbookkeeping) | **GET** /v1/analytics/bookkeeping | Monthly P&amp;L + per-platform breakdown for a calendar year.
[**getAnalyticByPlatform**](AnalyticsAPI.md#getanalyticbyplatform) | **GET** /v1/analytics/by-platform | Sales, net sales, fees and net profit by platform for the last N days.
[**getAnalyticCompare**](AnalyticsAPI.md#getanalyticcompare) | **GET** /v1/analytics/compare | Compare 2-4 of your listings: columns of price, quality, channels, views, favorites, offers and outcome, engagement curves, the fields that differ, and observational tests of favorite rate, view-to-offer rate and views per day.
[**getAnalyticDashboard**](AnalyticsAPI.md#getanalyticdashboard) | **GET** /v1/analytics/dashboard | Composite dashboard: KPIs + breakdowns + recent activity.
[**getAnalyticExperiment**](AnalyticsAPI.md#getanalyticexperiment) | **GET** /v1/analytics/experiments | Your listing A/B experiments, newest first, with status, days running and the current verdict.
[**getAnalyticExperimentById**](AnalyticsAPI.md#getanalyticexperimentbyid) | **GET** /v1/analytics/experiments/{id} | One experiment: arms with their windows, exposure and rates, the primary-metric test per arm against A, guardrail tests, the daily series and what to do next.
[**getAnalyticInventory**](AnalyticsAPI.md#getanalyticinventory) | **GET** /v1/analytics/inventory | Unsold stock: aging buckets with cost, listed value and market value, the 20 listings most in need of attention, shelf value over time, cohort sell-through at the chosen maturity, listed vs sold velocity and data health.
[**getAnalyticItem**](AnalyticsAPI.md#getanalyticitem) | **GET** /v1/analytics/items | Per-item P&amp;L for sold inventory.
[**getAnalyticItemByListingId**](AnalyticsAPI.md#getanalyticitembylistingid) | **GET** /v1/analytics/items/{listingId} | One listing in depth: channels with views, favorites and offers, the merged timeline, engagement series, price history, comps, money waterfall, days on market, offers, messages, experiments and suggestions.
[**getAnalyticMarketplace**](AnalyticsAPI.md#getanalyticmarketplace) | **GET** /v1/analytics/marketplaces | Every marketplace side by side: net sales and profit, units, ASP, take rate, margin, shipping subsidy, days to sell, sell-through, cancel and return rates, offers and engagement; with vs&#x3D;2-3 platforms, a head-to-head over listings live on all of them.
[**getAnalyticMarketplaceByPlatform**](AnalyticsAPI.md#getanalyticmarketplacebyplatform) | **GET** /v1/analytics/marketplaces/{platform} | One marketplace in depth: its row, the money series, fee breakdown, days-to-sell and price-realization histograms, categories, top items, at-risk listings, a day-by-hour sales heatmap and offer stats.
[**getAnalyticOverview**](AnalyticsAPI.md#getanalyticoverview) | **GET** /v1/analytics/overview | KPIs with deltas (net sales, net profit, units, ASP, margin, sell-through, median days to sell, active listings, take rate), the trend series, by-marketplace split, top categories, brands and items, sell-through cohort, data health and insights.
[**getAnalyticPerformance**](AnalyticsAPI.md#getanalyticperformance) | **GET** /v1/analytics/performance | Per-listing performance: channels, views, favorites, offers and conversations in the period, units sold, net sales and profit, margin, days to sell and a 0-100 health score, paged and sortable.
[**getAnalyticProgram**](AnalyticsAPI.md#getanalyticprogram) | **GET** /v1/analytics/programs/{program} | One program&#39;s report over a date range (default the last 30 days, at most 366): KPIs, a daily trend and a breakdown table. Money in integer cents.
[**getAnalyticSegment**](AnalyticsAPI.md#getanalyticsegment) | **GET** /v1/analytics/segments | Niches along one dimension: listed and active counts, units sold, cohort sell-through, median days to sell, net sales and profit, margin, ROI, ASP and discount from ask; rows under minN are flagged lowSample.
[**getAnalyticSegmentByKey**](AnalyticsAPI.md#getanalyticsegmentbykey) | **GET** /v1/analytics/segments/{dim}/{key} | One niche in depth: its row, series, by-marketplace split, days-to-sell histogram, price bands, top items and the 10 oldest unsold listings in it.
[**getAnalyticSummary**](AnalyticsAPI.md#getanalyticsummary) | **GET** /v1/analytics/summary | Headline KPIs for the last N days (the same numbers as the analytics overview).
[**getAnalyticTimesery**](AnalyticsAPI.md#getanalytictimesery) | **GET** /v1/analytics/timeseries | Sales and net sales over the last N days, zero-filled, one row per calendar day.
[**getAnalyticToday**](AnalyticsAPI.md#getanalytictoday) | **GET** /v1/analytics/today | Today&#39;s checklist + 14-day activity streak.
[**listInsightByPlatform**](AnalyticsAPI.md#listinsightbyplatform) | **GET** /v1/insights/by-platform | Platform velocity + margin insight (90-day window): units, net sales, median days to sell, ASP and net after the real marketplace fees.
[**updateAnalyticExperiment**](AnalyticsAPI.md#updateanalyticexperiment) | **PATCH** /v1/analytics/experiments/{id} | Rename an experiment or change its hypothesis, notes or planned end.


# **createAnalyticExperiment**
```swift
    open class func createAnalyticExperiment(completion: @escaping (_ data: AnalyticExperimentResponse?, _ error: Error?) -> Void)
```

Start a listing experiment. split: 2-4 live platform listings observed over the same window; sequential: one platform listing, before vs after changeAt (optionally applying a new price).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start a listing experiment. split: 2-4 live platform listings observed over the same window; sequential: one platform listing, before vs after changeAt (optionally applying a new price).
AnalyticsAPI.createAnalyticExperiment() { (response, error) in
    guard error == nil else {
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

**AnalyticExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAnalyticExperimentDeclare**
```swift
    open class func createAnalyticExperimentDeclare(id: String, completion: @escaping (_ data: AnalyticExperimentResponse?, _ error: Error?) -> Void)
```

Record the outcome: a winning arm, no difference, or inconclusive. Concludes the experiment.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | The experiment id (a uuid; any other id is a 404).

// Record the outcome: a winning arm, no difference, or inconclusive. Concludes the experiment.
AnalyticsAPI.createAnalyticExperimentDeclare(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **String** | The experiment id (a uuid; any other id is a 404). | 

### Return type

**AnalyticExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAnalyticExperimentStop**
```swift
    open class func createAnalyticExperimentStop(id: String, completion: @escaping (_ data: AnalyticExperimentResponse?, _ error: Error?) -> Void)
```

Stop an experiment: no more data is counted after now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | The experiment id (a uuid; any other id is a 404).

// Stop an experiment: no more data is counted after now.
AnalyticsAPI.createAnalyticExperimentStop(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **String** | The experiment id (a uuid; any other id is a 404). | 

### Return type

**AnalyticExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteAnalyticExperiment**
```swift
    open class func deleteAnalyticExperiment(id: String, completion: @escaping (_ data: DeleteStoryResponse?, _ error: Error?) -> Void)
```

Delete an experiment. The listings are untouched.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | The experiment id (a uuid; any other id is a 404).

// Delete an experiment. The listings are untouched.
AnalyticsAPI.deleteAnalyticExperiment(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **String** | The experiment id (a uuid; any other id is a 404). | 

### Return type

**DeleteStoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticBookkeeping**
```swift
    open class func getAnalyticBookkeeping(completion: @escaping (_ data: GetAnalyticBookkeepingResponse?, _ error: Error?) -> Void)
```

Monthly P&L + per-platform breakdown for a calendar year.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Monthly P&L + per-platform breakdown for a calendar year.
AnalyticsAPI.getAnalyticBookkeeping() { (response, error) in
    guard error == nil else {
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

**GetAnalyticBookkeepingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticByPlatform**
```swift
    open class func getAnalyticByPlatform(days: Int? = nil, tz: String? = nil, completion: @escaping (_ data: GetAnalyticByPlatformResponse?, _ error: Error?) -> Void)
```

Sales, net sales, fees and net profit by platform for the last N days.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let days = 987 // Int | Calendar days back, today included. Larger values are clamped to 365. (optional) (default to 30)
let tz = "tz_example" // String | IANA time zone for day boundaries. Default UTC. (optional)

// Sales, net sales, fees and net profit by platform for the last N days.
AnalyticsAPI.getAnalyticByPlatform(days: days, tz: tz) { (response, error) in
    guard error == nil else {
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
 **days** | **Int** | Calendar days back, today included. Larger values are clamped to 365. | [optional] [default to 30]
 **tz** | **String** | IANA time zone for day boundaries. Default UTC. | [optional] 

### Return type

**GetAnalyticByPlatformResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticCompare**
```swift
    open class func getAnalyticCompare(ids: String, align: Align_getAnalyticCompare? = nil, platform: String? = nil, tz: String? = nil, completion: @escaping (_ data: GetAnalyticCompareResponse?, _ error: Error?) -> Void)
```

Compare 2-4 of your listings: columns of price, quality, channels, views, favorites, offers and outcome, engagement curves, the fields that differ, and observational tests of favorite rate, view-to-offer rate and views per day.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let ids = "ids_example" // String | Comma-separated listing ids, 2 to 4. The first is arm A.
let align = "align_example" // String | age = x is days since first listed (default); calendar = x is the date. (optional)
let platform = "platform_example" // String | Restrict engagement to one channel (platform id). (optional)
let tz = "tz_example" // String | IANA time zone. Default UTC. (optional)

// Compare 2-4 of your listings: columns of price, quality, channels, views, favorites, offers and outcome, engagement curves, the fields that differ, and observational tests of favorite rate, view-to-offer rate and views per day.
AnalyticsAPI.getAnalyticCompare(ids: ids, align: align, platform: platform, tz: tz) { (response, error) in
    guard error == nil else {
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
 **ids** | **String** | Comma-separated listing ids, 2 to 4. The first is arm A. | 
 **align** | **String** | age &#x3D; x is days since first listed (default); calendar &#x3D; x is the date. | [optional] 
 **platform** | **String** | Restrict engagement to one channel (platform id). | [optional] 
 **tz** | **String** | IANA time zone. Default UTC. | [optional] 

### Return type

**GetAnalyticCompareResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticDashboard**
```swift
    open class func getAnalyticDashboard(completion: @escaping (_ data: GetAnalyticDashboardResponse?, _ error: Error?) -> Void)
```

Composite dashboard: KPIs + breakdowns + recent activity.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Composite dashboard: KPIs + breakdowns + recent activity.
AnalyticsAPI.getAnalyticDashboard() { (response, error) in
    guard error == nil else {
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

**GetAnalyticDashboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticExperiment**
```swift
    open class func getAnalyticExperiment(status: Status_getAnalyticExperiment? = nil, page: Int? = nil, size: Int? = nil, completion: @escaping (_ data: GetAnalyticExperimentResponse?, _ error: Error?) -> Void)
```

Your listing A/B experiments, newest first, with status, days running and the current verdict.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let status = "status_example" // String | Default all. (optional)
let page = 987 // Int | 1-indexed page. Default 1. (optional)
let size = 987 // Int | Rows per page. Default 20. (optional)

// Your listing A/B experiments, newest first, with status, days running and the current verdict.
AnalyticsAPI.getAnalyticExperiment(status: status, page: page, size: size) { (response, error) in
    guard error == nil else {
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
 **status** | **String** | Default all. | [optional] 
 **page** | **Int** | 1-indexed page. Default 1. | [optional] 
 **size** | **Int** | Rows per page. Default 20. | [optional] 

### Return type

**GetAnalyticExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticExperimentById**
```swift
    open class func getAnalyticExperimentById(id: String, completion: @escaping (_ data: GetAnalyticExperimentByIdResponse?, _ error: Error?) -> Void)
```

One experiment: arms with their windows, exposure and rates, the primary-metric test per arm against A, guardrail tests, the daily series and what to do next.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | The experiment id (a uuid).

// One experiment: arms with their windows, exposure and rates, the primary-metric test per arm against A, guardrail tests, the daily series and what to do next.
AnalyticsAPI.getAnalyticExperimentById(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **String** | The experiment id (a uuid). | 

### Return type

**GetAnalyticExperimentByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticInventory**
```swift
    open class func getAnalyticInventory(range: ModelRange_getAnalyticInventory? = nil, from: String? = nil, to: String? = nil, compare: Compare_getAnalyticInventory? = nil, cmpFrom: String? = nil, cmpTo: String? = nil, labels: String? = nil, platforms: String? = nil, category: String? = nil, brand: String? = nil, tz: String? = nil, maturity: Maturity_getAnalyticInventory? = nil, completion: @escaping (_ data: GetAnalyticInventoryResponse?, _ error: Error?) -> Void)
```

Unsold stock: aging buckets with cost, listed value and market value, the 20 listings most in need of attention, shelf value over time, cohort sell-through at the chosen maturity, listed vs sold velocity and data health.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let range = "range_example" // String | Reporting window. Default 30d. custom needs from and to. (optional)
let from = "from_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let to = "to_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let compare = "compare_example" // String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). (optional)
let cmpFrom = "cmpFrom_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let cmpTo = "cmpTo_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let labels = "labels_example" // String | Comma-separated inventory labels (any of them). (optional)
let platforms = "platforms_example" // String | Comma-separated platform ids. (optional)
let category = "category_example" // String | Canonical main-category key. (optional)
let brand = "brand_example" // String | Brand name. (optional)
let tz = "tz_example" // String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. (optional)
let maturity = 987 // Int | Days an item has to sell within to count as sold in the cohort. Default 30. (optional)

// Unsold stock: aging buckets with cost, listed value and market value, the 20 listings most in need of attention, shelf value over time, cohort sell-through at the chosen maturity, listed vs sold velocity and data health.
AnalyticsAPI.getAnalyticInventory(range: range, from: from, to: to, compare: compare, cmpFrom: cmpFrom, cmpTo: cmpTo, labels: labels, platforms: platforms, category: category, brand: brand, tz: tz, maturity: maturity) { (response, error) in
    guard error == nil else {
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
 **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] 
 **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] 
 **cmpFrom** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **cmpTo** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] 
 **platforms** | **String** | Comma-separated platform ids. | [optional] 
 **category** | **String** | Canonical main-category key. | [optional] 
 **brand** | **String** | Brand name. | [optional] 
 **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] 
 **maturity** | **Int** | Days an item has to sell within to count as sold in the cohort. Default 30. | [optional] 

### Return type

**GetAnalyticInventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticItem**
```swift
    open class func getAnalyticItem(completion: @escaping (_ data: GetAnalyticItemResponse?, _ error: Error?) -> Void)
```

Per-item P&L for sold inventory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Per-item P&L for sold inventory.
AnalyticsAPI.getAnalyticItem() { (response, error) in
    guard error == nil else {
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

**GetAnalyticItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticItemByListingId**
```swift
    open class func getAnalyticItemByListingId(listingId: String, by: By_getAnalyticItemByListingId? = nil, tz: String? = nil, completion: @escaping (_ data: GetAnalyticItemByListingIdResponse?, _ error: Error?) -> Void)
```

One listing in depth: channels with views, favorites and offers, the merged timeline, engagement series, price history, comps, money waterfall, days on market, offers, messages, experiments and suggestions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let listingId = "listingId_example" // String | A listings.id you own (or an inventory item id with by=inventory).
let by = "by_example" // String | inventory = the id is an inventory item id; the answer is { redirectListingId }. Default listing. (optional)
let tz = "tz_example" // String | IANA time zone for day boundaries. Default UTC. (optional)

// One listing in depth: channels with views, favorites and offers, the merged timeline, engagement series, price history, comps, money waterfall, days on market, offers, messages, experiments and suggestions.
AnalyticsAPI.getAnalyticItemByListingId(listingId: listingId, by: by, tz: tz) { (response, error) in
    guard error == nil else {
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
 **listingId** | **String** | A listings.id you own (or an inventory item id with by&#x3D;inventory). | 
 **by** | **String** | inventory &#x3D; the id is an inventory item id; the answer is { redirectListingId }. Default listing. | [optional] 
 **tz** | **String** | IANA time zone for day boundaries. Default UTC. | [optional] 

### Return type

**GetAnalyticItemByListingIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticMarketplace**
```swift
    open class func getAnalyticMarketplace(range: ModelRange_getAnalyticMarketplace? = nil, from: String? = nil, to: String? = nil, compare: Compare_getAnalyticMarketplace? = nil, cmpFrom: String? = nil, cmpTo: String? = nil, labels: String? = nil, platforms: String? = nil, category: String? = nil, brand: String? = nil, tz: String? = nil, vs: String? = nil, sort: Sort_getAnalyticMarketplace? = nil, dir: Dir_getAnalyticMarketplace? = nil, completion: @escaping (_ data: GetAnalyticMarketplaceResponse?, _ error: Error?) -> Void)
```

Every marketplace side by side: net sales and profit, units, ASP, take rate, margin, shipping subsidy, days to sell, sell-through, cancel and return rates, offers and engagement; with vs=2-3 platforms, a head-to-head over listings live on all of them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let range = "range_example" // String | Reporting window. Default 30d. custom needs from and to. (optional)
let from = "from_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let to = "to_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let compare = "compare_example" // String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). (optional)
let cmpFrom = "cmpFrom_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let cmpTo = "cmpTo_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let labels = "labels_example" // String | Comma-separated inventory labels (any of them). (optional)
let platforms = "platforms_example" // String | Comma-separated platform ids. (optional)
let category = "category_example" // String | Canonical main-category key. (optional)
let brand = "brand_example" // String | Brand name. (optional)
let tz = "tz_example" // String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. (optional)
let vs = "vs_example" // String | Comma-separated 2-3 platform ids for the head-to-head. (optional)
let sort = "sort_example" // String | Default netSales. (optional)
let dir = "dir_example" // String | Default desc. (optional)

// Every marketplace side by side: net sales and profit, units, ASP, take rate, margin, shipping subsidy, days to sell, sell-through, cancel and return rates, offers and engagement; with vs=2-3 platforms, a head-to-head over listings live on all of them.
AnalyticsAPI.getAnalyticMarketplace(range: range, from: from, to: to, compare: compare, cmpFrom: cmpFrom, cmpTo: cmpTo, labels: labels, platforms: platforms, category: category, brand: brand, tz: tz, vs: vs, sort: sort, dir: dir) { (response, error) in
    guard error == nil else {
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
 **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] 
 **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] 
 **cmpFrom** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **cmpTo** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] 
 **platforms** | **String** | Comma-separated platform ids. | [optional] 
 **category** | **String** | Canonical main-category key. | [optional] 
 **brand** | **String** | Brand name. | [optional] 
 **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] 
 **vs** | **String** | Comma-separated 2-3 platform ids for the head-to-head. | [optional] 
 **sort** | **String** | Default netSales. | [optional] 
 **dir** | **String** | Default desc. | [optional] 

### Return type

**GetAnalyticMarketplaceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticMarketplaceByPlatform**
```swift
    open class func getAnalyticMarketplaceByPlatform(platform: String, range: ModelRange_getAnalyticMarketplaceByPlatform? = nil, from: String? = nil, to: String? = nil, compare: Compare_getAnalyticMarketplaceByPlatform? = nil, cmpFrom: String? = nil, cmpTo: String? = nil, labels: String? = nil, platforms: String? = nil, category: String? = nil, brand: String? = nil, tz: String? = nil, completion: @escaping (_ data: GetAnalyticMarketplaceByPlatformResponse?, _ error: Error?) -> Void)
```

One marketplace in depth: its row, the money series, fee breakdown, days-to-sell and price-realization histograms, categories, top items, at-risk listings, a day-by-hour sales heatmap and offer stats.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platform = "platform_example" // String | A platform id, e.g. ebay, poshmark.
let range = "range_example" // String | Reporting window. Default 30d. custom needs from and to. (optional)
let from = "from_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let to = "to_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let compare = "compare_example" // String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). (optional)
let cmpFrom = "cmpFrom_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let cmpTo = "cmpTo_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let labels = "labels_example" // String | Comma-separated inventory labels (any of them). (optional)
let platforms = "platforms_example" // String | Comma-separated platform ids. (optional)
let category = "category_example" // String | Canonical main-category key. (optional)
let brand = "brand_example" // String | Brand name. (optional)
let tz = "tz_example" // String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. (optional)

// One marketplace in depth: its row, the money series, fee breakdown, days-to-sell and price-realization histograms, categories, top items, at-risk listings, a day-by-hour sales heatmap and offer stats.
AnalyticsAPI.getAnalyticMarketplaceByPlatform(platform: platform, range: range, from: from, to: to, compare: compare, cmpFrom: cmpFrom, cmpTo: cmpTo, labels: labels, platforms: platforms, category: category, brand: brand, tz: tz) { (response, error) in
    guard error == nil else {
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
 **platform** | **String** | A platform id, e.g. ebay, poshmark. | 
 **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] 
 **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] 
 **cmpFrom** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **cmpTo** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] 
 **platforms** | **String** | Comma-separated platform ids. | [optional] 
 **category** | **String** | Canonical main-category key. | [optional] 
 **brand** | **String** | Brand name. | [optional] 
 **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] 

### Return type

**GetAnalyticMarketplaceByPlatformResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticOverview**
```swift
    open class func getAnalyticOverview(range: ModelRange_getAnalyticOverview? = nil, from: String? = nil, to: String? = nil, compare: Compare_getAnalyticOverview? = nil, cmpFrom: String? = nil, cmpTo: String? = nil, labels: String? = nil, platforms: String? = nil, category: String? = nil, brand: String? = nil, tz: String? = nil, stores: String? = nil, completion: @escaping (_ data: GetAnalyticOverviewResponse?, _ error: Error?) -> Void)
```

KPIs with deltas (net sales, net profit, units, ASP, margin, sell-through, median days to sell, active listings, take rate), the trend series, by-marketplace split, top categories, brands and items, sell-through cohort, data health and insights.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let range = "range_example" // String | Reporting window. Default 30d. custom needs from and to. (optional)
let from = "from_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let to = "to_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let compare = "compare_example" // String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). (optional)
let cmpFrom = "cmpFrom_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let cmpTo = "cmpTo_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let labels = "labels_example" // String | Comma-separated inventory labels (any of them). (optional)
let platforms = "platforms_example" // String | Comma-separated platform ids. (optional)
let category = "category_example" // String | Canonical main-category key. (optional)
let brand = "brand_example" // String | Brand name. (optional)
let tz = "tz_example" // String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. (optional)
let stores = "stores_example" // String | Comma-separated store ids. (optional)

// KPIs with deltas (net sales, net profit, units, ASP, margin, sell-through, median days to sell, active listings, take rate), the trend series, by-marketplace split, top categories, brands and items, sell-through cohort, data health and insights.
AnalyticsAPI.getAnalyticOverview(range: range, from: from, to: to, compare: compare, cmpFrom: cmpFrom, cmpTo: cmpTo, labels: labels, platforms: platforms, category: category, brand: brand, tz: tz, stores: stores) { (response, error) in
    guard error == nil else {
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
 **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] 
 **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] 
 **cmpFrom** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **cmpTo** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] 
 **platforms** | **String** | Comma-separated platform ids. | [optional] 
 **category** | **String** | Canonical main-category key. | [optional] 
 **brand** | **String** | Brand name. | [optional] 
 **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] 
 **stores** | **String** | Comma-separated store ids. | [optional] 

### Return type

**GetAnalyticOverviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticPerformance**
```swift
    open class func getAnalyticPerformance(range: ModelRange_getAnalyticPerformance? = nil, from: String? = nil, to: String? = nil, compare: Compare_getAnalyticPerformance? = nil, cmpFrom: String? = nil, cmpTo: String? = nil, labels: String? = nil, platforms: String? = nil, category: String? = nil, brand: String? = nil, tz: String? = nil, status: Status_getAnalyticPerformance? = nil, q: String? = nil, sort: Sort_getAnalyticPerformance? = nil, dir: Dir_getAnalyticPerformance? = nil, page: Int? = nil, size: Size_getAnalyticPerformance? = nil, minDays: Int? = nil, completion: @escaping (_ data: GetAnalyticPerformanceResponse?, _ error: Error?) -> Void)
```

Per-listing performance: channels, views, favorites, offers and conversations in the period, units sold, net sales and profit, margin, days to sell and a 0-100 health score, paged and sortable.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let range = "range_example" // String | Reporting window. Default 30d. custom needs from and to. (optional)
let from = "from_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let to = "to_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let compare = "compare_example" // String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). (optional)
let cmpFrom = "cmpFrom_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let cmpTo = "cmpTo_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let labels = "labels_example" // String | Comma-separated inventory labels (any of them). (optional)
let platforms = "platforms_example" // String | Comma-separated platform ids. (optional)
let category = "category_example" // String | Canonical main-category key. (optional)
let brand = "brand_example" // String | Brand name. (optional)
let tz = "tz_example" // String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. (optional)
let status = "status_example" // String | unsold = listed at least minDays with no completed sale. (optional)
let q = "q_example" // String | Title, SKU or brand contains. (optional)
let sort = "sort_example" // String | Default lastActivity. (optional)
let dir = "dir_example" // String | Default desc. (optional)
let page = 987 // Int | 1-indexed page. Default 1. (optional)
let size = 987 // Int | Rows per page. Default 50. (optional)
let minDays = 987 // Int | Minimum days listed (for status=unsold). Default 0. (optional)

// Per-listing performance: channels, views, favorites, offers and conversations in the period, units sold, net sales and profit, margin, days to sell and a 0-100 health score, paged and sortable.
AnalyticsAPI.getAnalyticPerformance(range: range, from: from, to: to, compare: compare, cmpFrom: cmpFrom, cmpTo: cmpTo, labels: labels, platforms: platforms, category: category, brand: brand, tz: tz, status: status, q: q, sort: sort, dir: dir, page: page, size: size, minDays: minDays) { (response, error) in
    guard error == nil else {
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
 **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] 
 **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] 
 **cmpFrom** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **cmpTo** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] 
 **platforms** | **String** | Comma-separated platform ids. | [optional] 
 **category** | **String** | Canonical main-category key. | [optional] 
 **brand** | **String** | Brand name. | [optional] 
 **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] 
 **status** | **String** | unsold &#x3D; listed at least minDays with no completed sale. | [optional] 
 **q** | **String** | Title, SKU or brand contains. | [optional] 
 **sort** | **String** | Default lastActivity. | [optional] 
 **dir** | **String** | Default desc. | [optional] 
 **page** | **Int** | 1-indexed page. Default 1. | [optional] 
 **size** | **Int** | Rows per page. Default 50. | [optional] 
 **minDays** | **Int** | Minimum days listed (for status&#x3D;unsold). Default 0. | [optional] 

### Return type

**GetAnalyticPerformanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticProgram**
```swift
    open class func getAnalyticProgram(program: Program_getAnalyticProgram, from: Date? = nil, to: Date? = nil, by: String? = nil, completion: @escaping (_ data: GetAnalyticProgramResponse?, _ error: Error?) -> Void)
```

One program's report over a date range (default the last 30 days, at most 366): KPIs, a daily trend and a breakdown table. Money in integer cents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let program = "program_example" // String | 
let from = Date() // Date | First UTC day (YYYY-MM-DD), inclusive. (optional)
let to = Date() // Date | Last UTC day (YYYY-MM-DD), inclusive. Default today. (optional)
let by = "by_example" // String | Breakdown dimension, when the program offers one (worlds: showroom, property, event). (optional)

// One program's report over a date range (default the last 30 days, at most 366): KPIs, a daily trend and a breakdown table. Money in integer cents.
AnalyticsAPI.getAnalyticProgram(program: program, from: from, to: to, by: by) { (response, error) in
    guard error == nil else {
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
 **program** | **String** |  | 
 **from** | **Date** | First UTC day (YYYY-MM-DD), inclusive. | [optional] 
 **to** | **Date** | Last UTC day (YYYY-MM-DD), inclusive. Default today. | [optional] 
 **by** | **String** | Breakdown dimension, when the program offers one (worlds: showroom, property, event). | [optional] 

### Return type

**GetAnalyticProgramResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticSegment**
```swift
    open class func getAnalyticSegment(range: ModelRange_getAnalyticSegment? = nil, from: String? = nil, to: String? = nil, compare: Compare_getAnalyticSegment? = nil, cmpFrom: String? = nil, cmpTo: String? = nil, labels: String? = nil, platforms: String? = nil, category: String? = nil, brand: String? = nil, tz: String? = nil, dim: Dim_getAnalyticSegment? = nil, sort: Sort_getAnalyticSegment? = nil, dir: Dir_getAnalyticSegment? = nil, minN: Int? = nil, q: String? = nil, completion: @escaping (_ data: GetAnalyticSegmentResponse?, _ error: Error?) -> Void)
```

Niches along one dimension: listed and active counts, units sold, cohort sell-through, median days to sell, net sales and profit, margin, ROI, ASP and discount from ask; rows under minN are flagged lowSample.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let range = "range_example" // String | Reporting window. Default 30d. custom needs from and to. (optional)
let from = "from_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let to = "to_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let compare = "compare_example" // String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). (optional)
let cmpFrom = "cmpFrom_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let cmpTo = "cmpTo_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let labels = "labels_example" // String | Comma-separated inventory labels (any of them). (optional)
let platforms = "platforms_example" // String | Comma-separated platform ids. (optional)
let category = "category_example" // String | Canonical main-category key. (optional)
let brand = "brand_example" // String | Brand name. (optional)
let tz = "tz_example" // String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. (optional)
let dim = "dim_example" // String | category = main category; subcategory = main > sub; brand; condition; size; source = where you acquired it; department; priceBand = ask in <$10, $10-25, $25-50, $50-100, $100-250, $250+; ageBand = days live at sale or now (<7, 7-30, 30-90, 90+). (optional)
let sort = "sort_example" // String | Default netSales. (optional)
let dir = "dir_example" // String | Default desc. (optional)
let minN = 987 // Int | Minimum sample for a row to count as a winner or loser. Default 3. (optional)
let q = "q_example" // String | Segment label contains. (optional)

// Niches along one dimension: listed and active counts, units sold, cohort sell-through, median days to sell, net sales and profit, margin, ROI, ASP and discount from ask; rows under minN are flagged lowSample.
AnalyticsAPI.getAnalyticSegment(range: range, from: from, to: to, compare: compare, cmpFrom: cmpFrom, cmpTo: cmpTo, labels: labels, platforms: platforms, category: category, brand: brand, tz: tz, dim: dim, sort: sort, dir: dir, minN: minN, q: q) { (response, error) in
    guard error == nil else {
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
 **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] 
 **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] 
 **cmpFrom** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **cmpTo** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] 
 **platforms** | **String** | Comma-separated platform ids. | [optional] 
 **category** | **String** | Canonical main-category key. | [optional] 
 **brand** | **String** | Brand name. | [optional] 
 **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] 
 **dim** | **String** | category &#x3D; main category; subcategory &#x3D; main &gt; sub; brand; condition; size; source &#x3D; where you acquired it; department; priceBand &#x3D; ask in &lt;$10, $10-25, $25-50, $50-100, $100-250, $250+; ageBand &#x3D; days live at sale or now (&lt;7, 7-30, 30-90, 90+). | [optional] 
 **sort** | **String** | Default netSales. | [optional] 
 **dir** | **String** | Default desc. | [optional] 
 **minN** | **Int** | Minimum sample for a row to count as a winner or loser. Default 3. | [optional] 
 **q** | **String** | Segment label contains. | [optional] 

### Return type

**GetAnalyticSegmentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticSegmentByKey**
```swift
    open class func getAnalyticSegmentByKey(dim: String, key: String, range: ModelRange_getAnalyticSegmentByKey? = nil, from: String? = nil, to: String? = nil, compare: Compare_getAnalyticSegmentByKey? = nil, cmpFrom: String? = nil, cmpTo: String? = nil, labels: String? = nil, platforms: String? = nil, category: String? = nil, brand: String? = nil, tz: String? = nil, completion: @escaping (_ data: GetAnalyticSegmentByKeyResponse?, _ error: Error?) -> Void)
```

One niche in depth: its row, series, by-marketplace split, days-to-sell histogram, price bands, top items and the 10 oldest unsold listings in it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let dim = "dim_example" // String | One of category, subcategory, brand, condition, size, source, department, priceBand, ageBand. category = main category; subcategory = main > sub; brand; condition; size; source = where you acquired it; department; priceBand = ask in <$10, $10-25, $25-50, $50-100, $100-250, $250+; ageBand = days live at sale or now (<7, 7-30, 30-90, 90+).
let key = "key_example" // String | The segment key from a segments row (URL-encoded). A key with no data in scope is a 404.
let range = "range_example" // String | Reporting window. Default 30d. custom needs from and to. (optional)
let from = "from_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let to = "to_example" // String | YYYY-MM-DD, inclusive, in tz. Only with range=custom. (optional)
let compare = "compare_example" // String | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). (optional)
let cmpFrom = "cmpFrom_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let cmpTo = "cmpTo_example" // String | YYYY-MM-DD. Only with compare=custom. (optional)
let labels = "labels_example" // String | Comma-separated inventory labels (any of them). (optional)
let platforms = "platforms_example" // String | Comma-separated platform ids. (optional)
let category = "category_example" // String | Canonical main-category key. (optional)
let brand = "brand_example" // String | Brand name. (optional)
let tz = "tz_example" // String | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. (optional)

// One niche in depth: its row, series, by-marketplace split, days-to-sell histogram, price bands, top items and the 10 oldest unsold listings in it.
AnalyticsAPI.getAnalyticSegmentByKey(dim: dim, key: key, range: range, from: from, to: to, compare: compare, cmpFrom: cmpFrom, cmpTo: cmpTo, labels: labels, platforms: platforms, category: category, brand: brand, tz: tz) { (response, error) in
    guard error == nil else {
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
 **dim** | **String** | One of category, subcategory, brand, condition, size, source, department, priceBand, ageBand. category &#x3D; main category; subcategory &#x3D; main &gt; sub; brand; condition; size; source &#x3D; where you acquired it; department; priceBand &#x3D; ask in &lt;$10, $10-25, $25-50, $50-100, $100-250, $250+; ageBand &#x3D; days live at sale or now (&lt;7, 7-30, 30-90, 90+). | 
 **key** | **String** | The segment key from a segments row (URL-encoded). A key with no data in scope is a 404. | 
 **range** | **String** | Reporting window. Default 30d. custom needs from and to. | [optional] 
 **from** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **to** | **String** | YYYY-MM-DD, inclusive, in tz. Only with range&#x3D;custom. | [optional] 
 **compare** | **String** | Comparison window for deltas: prev (same length just before), yoy, none, custom (cmpFrom/cmpTo). | [optional] 
 **cmpFrom** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **cmpTo** | **String** | YYYY-MM-DD. Only with compare&#x3D;custom. | [optional] 
 **labels** | **String** | Comma-separated inventory labels (any of them). | [optional] 
 **platforms** | **String** | Comma-separated platform ids. | [optional] 
 **category** | **String** | Canonical main-category key. | [optional] 
 **brand** | **String** | Brand name. | [optional] 
 **tz** | **String** | IANA time zone for day boundaries. Default UTC. An invalid name is a 400. | [optional] 

### Return type

**GetAnalyticSegmentByKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticSummary**
```swift
    open class func getAnalyticSummary(days: Int? = nil, tz: String? = nil, completion: @escaping (_ data: GetAnalyticSummaryResponse?, _ error: Error?) -> Void)
```

Headline KPIs for the last N days (the same numbers as the analytics overview).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let days = 987 // Int | Calendar days back, today included. Larger values are clamped to 365. (optional) (default to 30)
let tz = "tz_example" // String | IANA time zone for day boundaries. Default UTC. (optional)

// Headline KPIs for the last N days (the same numbers as the analytics overview).
AnalyticsAPI.getAnalyticSummary(days: days, tz: tz) { (response, error) in
    guard error == nil else {
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
 **days** | **Int** | Calendar days back, today included. Larger values are clamped to 365. | [optional] [default to 30]
 **tz** | **String** | IANA time zone for day boundaries. Default UTC. | [optional] 

### Return type

**GetAnalyticSummaryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticTimesery**
```swift
    open class func getAnalyticTimesery(days: Int? = nil, tz: String? = nil, completion: @escaping (_ data: GetAnalyticTimeseryResponse?, _ error: Error?) -> Void)
```

Sales and net sales over the last N days, zero-filled, one row per calendar day.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let days = 987 // Int | Calendar days back, today included. Larger values are clamped to 365. (optional) (default to 30)
let tz = "tz_example" // String | IANA time zone for day boundaries. Default UTC. (optional)

// Sales and net sales over the last N days, zero-filled, one row per calendar day.
AnalyticsAPI.getAnalyticTimesery(days: days, tz: tz) { (response, error) in
    guard error == nil else {
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
 **days** | **Int** | Calendar days back, today included. Larger values are clamped to 365. | [optional] [default to 30]
 **tz** | **String** | IANA time zone for day boundaries. Default UTC. | [optional] 

### Return type

**GetAnalyticTimeseryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAnalyticToday**
```swift
    open class func getAnalyticToday(completion: @escaping (_ data: GetAnalyticTodayResponse?, _ error: Error?) -> Void)
```

Today's checklist + 14-day activity streak.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Today's checklist + 14-day activity streak.
AnalyticsAPI.getAnalyticToday() { (response, error) in
    guard error == nil else {
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

**GetAnalyticTodayResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listInsightByPlatform**
```swift
    open class func listInsightByPlatform(tz: String? = nil, completion: @escaping (_ data: ListInsightByPlatformResponse?, _ error: Error?) -> Void)
```

Platform velocity + margin insight (90-day window): units, net sales, median days to sell, ASP and net after the real marketplace fees.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let tz = "tz_example" // String | IANA time zone for day boundaries. Default UTC. (optional)

// Platform velocity + margin insight (90-day window): units, net sales, median days to sell, ASP and net after the real marketplace fees.
AnalyticsAPI.listInsightByPlatform(tz: tz) { (response, error) in
    guard error == nil else {
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
 **tz** | **String** | IANA time zone for day boundaries. Default UTC. | [optional] 

### Return type

**ListInsightByPlatformResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateAnalyticExperiment**
```swift
    open class func updateAnalyticExperiment(id: String, completion: @escaping (_ data: AnalyticExperimentResponse?, _ error: Error?) -> Void)
```

Rename an experiment or change its hypothesis, notes or planned end.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | The experiment id (a uuid; any other id is a 404).

// Rename an experiment or change its hypothesis, notes or planned end.
AnalyticsAPI.updateAnalyticExperiment(id: id) { (response, error) in
    guard error == nil else {
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
 **id** | **String** | The experiment id (a uuid; any other id is a 404). | 

### Return type

**AnalyticExperimentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

