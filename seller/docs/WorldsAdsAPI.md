# WorldsAdsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWorldExperienceAd**](WorldsAdsAPI.md#getworldexperiencead) | **GET** /v1/worlds/experiences/{experienceId}/ads | The ads for a game&#39;s in-world ad surfaces (parts tagged CrosslyAdSurface), for the token&#39;s owner: Sponsored Listings labelled \&quot;Ad\&quot;, served only to signed-in adults where the game&#39;s creator turned ads on, never to its team. A click is POST /api/public/shop/ads/click { token }.
[**getWorldExperienceAdReport**](WorldsAdsAPI.md#getworldexperienceadreport) | **GET** /v1/worlds/experiences/{experienceId}/ads/report | In-game ads over the last N days (default 30, max 90): impressions, clicks, charged clicks, advertiser spend and your earned share, per day.
[**getWorldExperienceAdSetting**](WorldsAdsAPI.md#getworldexperienceadsetting) | **GET** /v1/worlds/experiences/{experienceId}/ad-settings | Whether this game shows in-game ads (opt-in, default off) and the creator&#39;s share of Crossly&#39;s ad revenue in force.
[**updateWorldExperienceAdSetting**](WorldsAdsAPI.md#updateworldexperienceadsetting) | **PUT** /v1/worlds/experiences/{experienceId}/ad-settings | Turn in-game ads on or off for this game. Ads fill the game&#39;s ad surfaces (parts tagged CrosslyAdSurface); nothing shows until it has one.


# **getWorldExperienceAd**
```swift
    open class func getWorldExperienceAd(experienceId: String, completion: @escaping (_ data: GetWorldExperienceAdResponse?, _ error: Error?) -> Void)
```

The ads for a game's in-world ad surfaces (parts tagged CrosslyAdSurface), for the token's owner: Sponsored Listings labelled \"Ad\", served only to signed-in adults where the game's creator turned ads on, never to its team. A click is POST /api/public/shop/ads/click { token }.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The ads for a game's in-world ad surfaces (parts tagged CrosslyAdSurface), for the token's owner: Sponsored Listings labelled \"Ad\", served only to signed-in adults where the game's creator turned ads on, never to its team. A click is POST /api/public/shop/ads/click { token }.
WorldsAdsAPI.getWorldExperienceAd(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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
 **experienceId** | **String** |  | 

### Return type

**GetWorldExperienceAdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceAdReport**
```swift
    open class func getWorldExperienceAdReport(experienceId: String, completion: @escaping (_ data: GetWorldExperienceAdReportResponse?, _ error: Error?) -> Void)
```

In-game ads over the last N days (default 30, max 90): impressions, clicks, charged clicks, advertiser spend and your earned share, per day.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// In-game ads over the last N days (default 30, max 90): impressions, clicks, charged clicks, advertiser spend and your earned share, per day.
WorldsAdsAPI.getWorldExperienceAdReport(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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
 **experienceId** | **String** |  | 

### Return type

**GetWorldExperienceAdReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceAdSetting**
```swift
    open class func getWorldExperienceAdSetting(experienceId: String, completion: @escaping (_ data: GetWorldExperienceAdSettingResponse?, _ error: Error?) -> Void)
```

Whether this game shows in-game ads (opt-in, default off) and the creator's share of Crossly's ad revenue in force.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Whether this game shows in-game ads (opt-in, default off) and the creator's share of Crossly's ad revenue in force.
WorldsAdsAPI.getWorldExperienceAdSetting(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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
 **experienceId** | **String** |  | 

### Return type

**GetWorldExperienceAdSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceAdSetting**
```swift
    open class func updateWorldExperienceAdSetting(experienceId: String, completion: @escaping (_ data: GetWorldExperienceAdSettingResponse?, _ error: Error?) -> Void)
```

Turn in-game ads on or off for this game. Ads fill the game's ad surfaces (parts tagged CrosslyAdSurface); nothing shows until it has one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Turn in-game ads on or off for this game. Ads fill the game's ad surfaces (parts tagged CrosslyAdSurface); nothing shows until it has one.
WorldsAdsAPI.updateWorldExperienceAdSetting(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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
 **experienceId** | **String** |  | 

### Return type

**GetWorldExperienceAdSettingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

