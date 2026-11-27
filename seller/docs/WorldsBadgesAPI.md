# WorldsBadgesAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorldExperienceBadge**](WorldsBadgesAPI.md#createworldexperiencebadge) | **POST** /v1/worlds/experiences/{experienceId}/badges | Add a badge (at most 100 per game). name 1-50 characters, description up to 1000, iconSha256 &#x3D; the sha256 a png upload answered (POST /v1/world/interactive/assets, kind png); a new icon is shown once a person approved it.
[**getWorldBadgeMine**](WorldsBadgesAPI.md#getworldbadgemine) | **GET** /v1/worlds/badges/mine | Every game badge you hold, newest first, and whether your person page shows them.
[**getWorldExperienceBadge**](WorldsBadgesAPI.md#getworldexperiencebadge) | **GET** /v1/worlds/experiences/{experienceId}/badges | A game&#39;s badges, oldest first: name, description, icon and its review state, on/off, how many players hold each; plus the player count (the rarity denominator) and the limits. Scripts award them with BadgeService.AwardBadge(player, badgeId).
[**getWorldGameBadge**](WorldsBadgesAPI.md#getworldgamebadge) | **GET** /v1/worlds/games/{game}/badges | A Crossly Carnival game&#39;s badges as players see them: name, description, approved icon, how many hold it, rarity (% of the game&#39;s players) and, for you, when you earned it. :game is a Worlds experience id or key.
[**getWorldPlayerBadge**](WorldsBadgesAPI.md#getworldplayerbadge) | **GET** /v1/worlds/players/{username}/badges | The game badges a person shows on their person page (only when they switched it on; Mature and non-public games never appear).
[**updateWorldBadgeProfile**](WorldsBadgesAPI.md#updateworldbadgeprofile) | **PUT** /v1/worlds/badges/profile | Show (or hide) the game badges you hold on your person page. Off by default.
[**updateWorldExperienceBadge**](WorldsBadgesAPI.md#updateworldexperiencebadge) | **PATCH** /v1/worlds/experiences/{experienceId}/badges/{badgeId} | Edit a badge: name, description, icon (null removes it), enabled. Badges are never deleted (players keep what they earned); turn one off to hide it and stop AwardBadge.


# **createWorldExperienceBadge**
```swift
    open class func createWorldExperienceBadge(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceBadgeResponse?, _ error: Error?) -> Void)
```

Add a badge (at most 100 per game). name 1-50 characters, description up to 1000, iconSha256 = the sha256 a png upload answered (POST /v1/world/interactive/assets, kind png); a new icon is shown once a person approved it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Add a badge (at most 100 per game). name 1-50 characters, description up to 1000, iconSha256 = the sha256 a png upload answered (POST /v1/world/interactive/assets, kind png); a new icon is shown once a person approved it.
WorldsBadgesAPI.createWorldExperienceBadge(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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

**CreateWorldExperienceBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldBadgeMine**
```swift
    open class func getWorldBadgeMine(completion: @escaping (_ data: GetWorldBadgeMineResponse?, _ error: Error?) -> Void)
```

Every game badge you hold, newest first, and whether your person page shows them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every game badge you hold, newest first, and whether your person page shows them.
WorldsBadgesAPI.getWorldBadgeMine() { (response, error) in
    guard error == nil else {
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

**GetWorldBadgeMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceBadge**
```swift
    open class func getWorldExperienceBadge(experienceId: String, completion: @escaping (_ data: GetWorldExperienceBadgeResponse?, _ error: Error?) -> Void)
```

A game's badges, oldest first: name, description, icon and its review state, on/off, how many players hold each; plus the player count (the rarity denominator) and the limits. Scripts award them with BadgeService.AwardBadge(player, badgeId).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// A game's badges, oldest first: name, description, icon and its review state, on/off, how many players hold each; plus the player count (the rarity denominator) and the limits. Scripts award them with BadgeService.AwardBadge(player, badgeId).
WorldsBadgesAPI.getWorldExperienceBadge(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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

**GetWorldExperienceBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldGameBadge**
```swift
    open class func getWorldGameBadge(game: String, completion: @escaping (_ data: GetWorldGameBadgeResponse?, _ error: Error?) -> Void)
```

A Crossly Carnival game's badges as players see them: name, description, approved icon, how many hold it, rarity (% of the game's players) and, for you, when you earned it. :game is a Worlds experience id or key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// A Crossly Carnival game's badges as players see them: name, description, approved icon, how many hold it, rarity (% of the game's players) and, for you, when you earned it. :game is a Worlds experience id or key.
WorldsBadgesAPI.getWorldGameBadge(game: game) { (response, error) in
    guard error == nil else {
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
 **game** | **String** |  | 

### Return type

**GetWorldGameBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPlayerBadge**
```swift
    open class func getWorldPlayerBadge(username: String, completion: @escaping (_ data: GetWorldPlayerBadgeResponse?, _ error: Error?) -> Void)
```

The game badges a person shows on their person page (only when they switched it on; Mature and non-public games never appear).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let username = "username_example" // String | 

// The game badges a person shows on their person page (only when they switched it on; Mature and non-public games never appear).
WorldsBadgesAPI.getWorldPlayerBadge(username: username) { (response, error) in
    guard error == nil else {
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
 **username** | **String** |  | 

### Return type

**GetWorldPlayerBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldBadgeProfile**
```swift
    open class func updateWorldBadgeProfile(completion: @escaping (_ data: UpdateWorldBadgeProfileResponse?, _ error: Error?) -> Void)
```

Show (or hide) the game badges you hold on your person page. Off by default.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Show (or hide) the game badges you hold on your person page. Off by default.
WorldsBadgesAPI.updateWorldBadgeProfile() { (response, error) in
    guard error == nil else {
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

**UpdateWorldBadgeProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceBadge**
```swift
    open class func updateWorldExperienceBadge(experienceId: String, badgeId: String, completion: @escaping (_ data: CreateWorldExperienceBadgeResponse?, _ error: Error?) -> Void)
```

Edit a badge: name, description, icon (null removes it), enabled. Badges are never deleted (players keep what they earned); turn one off to hide it and stop AwardBadge.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let badgeId = "badgeId_example" // String | 

// Edit a badge: name, description, icon (null removes it), enabled. Badges are never deleted (players keep what they earned); turn one off to hide it and stop AwardBadge.
WorldsBadgesAPI.updateWorldExperienceBadge(experienceId: experienceId, badgeId: badgeId) { (response, error) in
    guard error == nil else {
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
 **badgeId** | **String** |  | 

### Return type

**CreateWorldExperienceBadgeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

