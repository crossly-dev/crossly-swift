# TCGCreatorsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTcgCreatorGame**](TCGCreatorsAPI.md#createtcgcreatorgame) | **POST** /v1/tcg/creator/games | Submit a card-game package version for review: game.json, cards.json, rules/game.js, thumb.png, art/_*.png as { path, base64 }. Checked, conformance-run, art quarantined, then reviewed by a person.
[**createTcgCreatorGameCheck**](TCGCreatorsAPI.md#createtcgcreatorgamecheck) | **POST** /v1/tcg/creator/games/check | Check a card-game package exactly as a submission is checked -- the static report and bot games played against your rules in the sandbox -- storing nothing. Files as { path, base64 }.
[**createTcgCreatorGamePackOpen**](TCGCreatorsAPI.md#createtcgcreatorgamepackopen) | **POST** /v1/tcg/creator/games/{id}/packs/{packId}/open | Open a booster you hold: the game&#39;s rules pick the pulls, the pack is used up, and one COSM copy per card joins your collection (logged with its seed).
[**createTcgCreatorGameStarter**](TCGCreatorsAPI.md#createtcgcreatorgamestarter) | **POST** /v1/tcg/creator/games/{id}/starter | Claim a creator game&#39;s free starter deck by its key (once per account; account-bound, never tradeable).
[**createTcgCreatorGameVersionWithdraw**](TCGCreatorsAPI.md#createtcgcreatorgameversionwithdraw) | **POST** /v1/tcg/creator/games/{id}/versions/{v}/withdraw | Withdraw one of your versions that is still waiting for review.
[**getTcgCreatorGame**](TCGCreatorsAPI.md#gettcgcreatorgame) | **GET** /v1/tcg/creator/games/{id} | One live creator card game: its set, every card (rules text, rarity, art URL, game data) and its COSM prices.
[**getTcgCreatorGameCollection**](TCGCreatorsAPI.md#gettcgcreatorgamecollection) | **GET** /v1/tcg/creator/games/{id}/collection | Your playable copies of a creator game: card id -&gt; copies (free starter plus every COSM copy you hold).
[**getTcgCreatorGamePopularity**](TCGCreatorsAPI.md#gettcgcreatorgamepopularity) | **GET** /v1/tcg/creator/games/{id}/popularity | The set&#39;s progress toward going on chain: distinct collectors, packs opened and resales against the bar; when it passes, every holder may mint their cards as NFTs.
[**getTcgCreatorGameShelf**](TCGCreatorsAPI.md#gettcgcreatorgameshelf) | **GET** /v1/tcg/creator/games/{id}/shelf | The game&#39;s COSM shelf: the booster and every single, each with its COSM design id (buy via /api/v1/cosm/cosmetics/:id/buy), price, edition cap and copies issued.
[**listTcgCreatorGamePacks**](TCGCreatorsAPI.md#listtcgcreatorgamepacks) | **GET** /v1/tcg/creator/games/{id}/packs | Your unopened boosters of a creator game.
[**listTcgCreatorGames**](TCGCreatorsAPI.md#listtcgcreatorgames) | **GET** /v1/tcg/creator/games | Live creator card games: name, set, description, typical match length, frame colours, thumbnail.
[**listTcgCreatorMine**](TCGCreatorsAPI.md#listtcgcreatormine) | **GET** /v1/tcg/creator/mine | Your creator card games and every version with its review state and note.


# **createTcgCreatorGame**
```swift
    open class func createTcgCreatorGame(completion: @escaping (_ data: CreateTcgCreatorGameResponse?, _ error: Error?) -> Void)
```

Submit a card-game package version for review: game.json, cards.json, rules/game.js, thumb.png, art/_*.png as { path, base64 }. Checked, conformance-run, art quarantined, then reviewed by a person.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Submit a card-game package version for review: game.json, cards.json, rules/game.js, thumb.png, art/_*.png as { path, base64 }. Checked, conformance-run, art quarantined, then reviewed by a person.
TCGCreatorsAPI.createTcgCreatorGame() { (response, error) in
    guard error == nil else {
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

**CreateTcgCreatorGameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgCreatorGameCheck**
```swift
    open class func createTcgCreatorGameCheck(completion: @escaping (_ data: CreateTcgCreatorGameCheckResponse?, _ error: Error?) -> Void)
```

Check a card-game package exactly as a submission is checked -- the static report and bot games played against your rules in the sandbox -- storing nothing. Files as { path, base64 }.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Check a card-game package exactly as a submission is checked -- the static report and bot games played against your rules in the sandbox -- storing nothing. Files as { path, base64 }.
TCGCreatorsAPI.createTcgCreatorGameCheck() { (response, error) in
    guard error == nil else {
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

**CreateTcgCreatorGameCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgCreatorGamePackOpen**
```swift
    open class func createTcgCreatorGamePackOpen(id: String, packId: String, completion: @escaping (_ data: CreateTcgCreatorGamePackOpenResponse?, _ error: Error?) -> Void)
```

Open a booster you hold: the game's rules pick the pulls, the pack is used up, and one COSM copy per card joins your collection (logged with its seed).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let packId = "packId_example" // String | 

// Open a booster you hold: the game's rules pick the pulls, the pack is used up, and one COSM copy per card joins your collection (logged with its seed).
TCGCreatorsAPI.createTcgCreatorGamePackOpen(id: id, packId: packId) { (response, error) in
    guard error == nil else {
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
 **packId** | **String** |  | 

### Return type

**CreateTcgCreatorGamePackOpenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgCreatorGameStarter**
```swift
    open class func createTcgCreatorGameStarter(id: String, completion: @escaping (_ data: CreateTcgStarterResponse?, _ error: Error?) -> Void)
```

Claim a creator game's free starter deck by its key (once per account; account-bound, never tradeable).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Claim a creator game's free starter deck by its key (once per account; account-bound, never tradeable).
TCGCreatorsAPI.createTcgCreatorGameStarter(id: id) { (response, error) in
    guard error == nil else {
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

**CreateTcgStarterResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgCreatorGameVersionWithdraw**
```swift
    open class func createTcgCreatorGameVersionWithdraw(id: String, v: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Withdraw one of your versions that is still waiting for review.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let v = "v_example" // String | 

// Withdraw one of your versions that is still waiting for review.
TCGCreatorsAPI.createTcgCreatorGameVersionWithdraw(id: id, v: v) { (response, error) in
    guard error == nil else {
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
 **v** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgCreatorGame**
```swift
    open class func getTcgCreatorGame(id: String, completion: @escaping (_ data: GetTcgCreatorGameResponse?, _ error: Error?) -> Void)
```

One live creator card game: its set, every card (rules text, rarity, art URL, game data) and its COSM prices.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One live creator card game: its set, every card (rules text, rarity, art URL, game data) and its COSM prices.
TCGCreatorsAPI.getTcgCreatorGame(id: id) { (response, error) in
    guard error == nil else {
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

**GetTcgCreatorGameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgCreatorGameCollection**
```swift
    open class func getTcgCreatorGameCollection(id: String, completion: @escaping (_ data: GetTcgCreatorGameCollectionResponse?, _ error: Error?) -> Void)
```

Your playable copies of a creator game: card id -> copies (free starter plus every COSM copy you hold).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Your playable copies of a creator game: card id -> copies (free starter plus every COSM copy you hold).
TCGCreatorsAPI.getTcgCreatorGameCollection(id: id) { (response, error) in
    guard error == nil else {
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

**GetTcgCreatorGameCollectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgCreatorGamePopularity**
```swift
    open class func getTcgCreatorGamePopularity(id: String, completion: @escaping (_ data: GetTcgCreatorGamePopularityResponse?, _ error: Error?) -> Void)
```

The set's progress toward going on chain: distinct collectors, packs opened and resales against the bar; when it passes, every holder may mint their cards as NFTs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The set's progress toward going on chain: distinct collectors, packs opened and resales against the bar; when it passes, every holder may mint their cards as NFTs.
TCGCreatorsAPI.getTcgCreatorGamePopularity(id: id) { (response, error) in
    guard error == nil else {
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

**GetTcgCreatorGamePopularityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgCreatorGameShelf**
```swift
    open class func getTcgCreatorGameShelf(id: String, completion: @escaping (_ data: GetTcgCreatorGameShelfResponse?, _ error: Error?) -> Void)
```

The game's COSM shelf: the booster and every single, each with its COSM design id (buy via /api/v1/cosm/cosmetics/:id/buy), price, edition cap and copies issued.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The game's COSM shelf: the booster and every single, each with its COSM design id (buy via /api/v1/cosm/cosmetics/:id/buy), price, edition cap and copies issued.
TCGCreatorsAPI.getTcgCreatorGameShelf(id: id) { (response, error) in
    guard error == nil else {
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

**GetTcgCreatorGameShelfResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listTcgCreatorGamePacks**
```swift
    open class func listTcgCreatorGamePacks(id: String, completion: @escaping (_ data: ListTcgCreatorGamePacksResponse?, _ error: Error?) -> Void)
```

Your unopened boosters of a creator game.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Your unopened boosters of a creator game.
TCGCreatorsAPI.listTcgCreatorGamePacks(id: id) { (response, error) in
    guard error == nil else {
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

**ListTcgCreatorGamePacksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listTcgCreatorGames**
```swift
    open class func listTcgCreatorGames(completion: @escaping (_ data: ListTcgCreatorGamesResponse?, _ error: Error?) -> Void)
```

Live creator card games: name, set, description, typical match length, frame colours, thumbnail.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Live creator card games: name, set, description, typical match length, frame colours, thumbnail.
TCGCreatorsAPI.listTcgCreatorGames() { (response, error) in
    guard error == nil else {
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

**ListTcgCreatorGamesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listTcgCreatorMine**
```swift
    open class func listTcgCreatorMine(completion: @escaping (_ data: ListTcgCreatorMineResponse?, _ error: Error?) -> Void)
```

Your creator card games and every version with its review state and note.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your creator card games and every version with its review state and note.
TCGCreatorsAPI.listTcgCreatorMine() { (response, error) in
    guard error == nil else {
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

**ListTcgCreatorMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

