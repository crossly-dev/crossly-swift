# TCGAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTcgChallenge**](TCGAPI.md#createtcgchallenge) | **POST** /v1/tcg/{game}/challenges | Open a 1v1 challenge with one of your decks; another player joins it.
[**createTcgDeck**](TCGAPI.md#createtcgdeck) | **POST** /v1/tcg/{game}/decks | Create (no id) or update a deck: its lead (Crew Boss, Mastermind or Keeper) and 40 cards you own, checked against the deck rules of its game.
[**createTcgMatchAct**](TCGAPI.md#createtcgmatchact) | **POST** /v1/tcg/matches/{id}/act | Make one move: { action } as listed in the match&#39;s legal moves. The engine checks it.
[**createTcgMatchJoin**](TCGAPI.md#createtcgmatchjoin) | **POST** /v1/tcg/matches/{id}/join | Join an open 1v1 challenge with one of your decks.
[**createTcgPackOpen**](TCGAPI.md#createtcgpackopen) | **POST** /v1/tcg/packs/{id}/open | Open one of your earned packs: its eight cards join your collection.
[**createTcgPractice**](TCGAPI.md#createtcgpractice) | **POST** /v1/tcg/{game}/practice | Start a practice match against the house bot with one of your decks.
[**createTcgQueue**](TCGAPI.md#createtcgqueue) | **POST** /v1/tcg/{game}/queue | Join the ranked queue with an owned, legal deck (free). Returns the match at once when an opponent fits.
[**createTcgStarter**](TCGAPI.md#createtcgstarter) | **POST** /v1/tcg/{game}/starter | Claim the free starter deck for a game, choosing its faction (once per account; account-bound, untradeable).
[**createTcgTable**](TCGAPI.md#createtcgtable) | **POST** /v1/tcg/{game}/table | Sit at a table with your free starter deck (claimed now if you never did: starter names it, else one is picked for you): joins the oldest open 1v1 challenge, or opens one; already waiting, your own seat back.
[**createTcgTournament**](TCGAPI.md#createtcgtournament) | **POST** /v1/tcg/{game}/tournaments | Host a Swiss tournament: name, optional top cut (4 or 8), round length, player cap and start time.
[**createTcgTournamentDrop**](TCGAPI.md#createtcgtournamentdrop) | **POST** /v1/tcg/tournaments/{id}/drop | Leave a tournament before it starts, or drop from it (your results stand).
[**createTcgTournamentRegister**](TCGAPI.md#createtcgtournamentregister) | **POST** /v1/tcg/tournaments/{id}/register | Enter a tournament with an owned, legal deck before it starts.
[**createTcgTournamentStart**](TCGAPI.md#createtcgtournamentstart) | **POST** /v1/tcg/tournaments/{id}/start | As the host, start the tournament: Swiss rounds are sized to the field and round 1 is dealt.
[**deleteTcgDeck**](TCGAPI.md#deletetcgdeck) | **DELETE** /v1/tcg/decks/{id} | Delete one of your decks.
[**deleteTcgQueue**](TCGAPI.md#deletetcgqueue) | **DELETE** /v1/tcg/{game}/queue | Leave the ranked queue.
[**getTcgCreatorGamePrint**](TCGAPI.md#gettcgcreatorgameprint) | **GET** /v1/tcg/creator/games/{id}/print | Print file links for your own creator card game (owner only): the set&#39;s print file, home sheets and a proof, for its newest version.
[**getTcgCreatorGamePrintByKind**](TCGAPI.md#gettcgcreatorgameprintbykind) | **GET** /v1/tcg/creator/games/{id}/print/{kind} | A PDF of your own creator card game (owner only): kind set | sheet | proof; ?version&#x3D;, ?paper&#x3D;letter|a4, ?card&#x3D; for a proof. Binary (application/pdf).
[**getTcgLadder**](TCGAPI.md#gettcgladder) | **GET** /v1/tcg/{game}/ladder | The season&#39;s ranked leaderboard for a game: place, rating, tier and record (named only where the player chose to be).
[**getTcgLadderMe**](TCGAPI.md#gettcgladderme) | **GET** /v1/tcg/{game}/ladder/me | Your ranked rating, tier, place and record this season, and whether you are queued.
[**getTcgMatch**](TCGAPI.md#gettcgmatch) | **GET** /v1/tcg/{game}/matches | Your recent matches, and open challenges you could join.
[**getTcgMatchById**](TCGAPI.md#gettcgmatchbyid) | **GET** /v1/tcg/matches/{id} | Your view of a match (no hidden information) and, on your turn, every legal move.
[**getTcgMe**](TCGAPI.md#gettcgme) | **GET** /v1/tcg/{game}/me | Your starter faction, collection (card id -&gt; copies), decks and earned packs.
[**getTcgPrint**](TCGAPI.md#gettcgprint) | **GET** /v1/tcg/{game}/print | Print files for one of Crossly&#39;s own card games: a card proof (template), 3 x 3 Letter/A4 home sheets with crop marks, and the set&#39;s print file (63 x 88 mm, 3 mm bleed).
[**getTcgTournament**](TCGAPI.md#gettcgtournament) | **GET** /v1/tcg/tournaments/{id} | A tournament&#39;s standings (points, opponents&#39; and game win %), this round&#39;s pairings and your seat.
[**listTcgCards**](TCGAPI.md#listtcgcards) | **GET** /v1/tcg/{game}/cards | The game&#39;s card pool: every card with its rules text, stats, rarity and collector number.
[**listTcgGames**](TCGAPI.md#listtcggames) | **GET** /v1/tcg/games | Crossly&#39;s own card games: id, name, seats and card count.
[**listTcgTournaments**](TCGAPI.md#listtcgtournaments) | **GET** /v1/tcg/{game}/tournaments | A game&#39;s recent and upcoming Swiss tournaments (free to enter; prizes are earned packs).


# **createTcgChallenge**
```swift
    open class func createTcgChallenge(game: String, completion: @escaping (_ data: TcgResponse?, _ error: Error?) -> Void)
```

Open a 1v1 challenge with one of your decks; another player joins it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Open a 1v1 challenge with one of your decks; another player joins it.
TCGAPI.createTcgChallenge(game: game) { (response, error) in
    guard error == nil else {
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

**TcgResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgDeck**
```swift
    open class func createTcgDeck(game: String, completion: @escaping (_ data: CreateTcgDeckResponse?, _ error: Error?) -> Void)
```

Create (no id) or update a deck: its lead (Crew Boss, Mastermind or Keeper) and 40 cards you own, checked against the deck rules of its game.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Create (no id) or update a deck: its lead (Crew Boss, Mastermind or Keeper) and 40 cards you own, checked against the deck rules of its game.
TCGAPI.createTcgDeck(game: game) { (response, error) in
    guard error == nil else {
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

**CreateTcgDeckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgMatchAct**
```swift
    open class func createTcgMatchAct(id: String, completion: @escaping (_ data: TcgResponse?, _ error: Error?) -> Void)
```

Make one move: { action } as listed in the match's legal moves. The engine checks it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Make one move: { action } as listed in the match's legal moves. The engine checks it.
TCGAPI.createTcgMatchAct(id: id) { (response, error) in
    guard error == nil else {
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

**TcgResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgMatchJoin**
```swift
    open class func createTcgMatchJoin(id: String, completion: @escaping (_ data: TcgResponse?, _ error: Error?) -> Void)
```

Join an open 1v1 challenge with one of your decks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Join an open 1v1 challenge with one of your decks.
TCGAPI.createTcgMatchJoin(id: id) { (response, error) in
    guard error == nil else {
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

**TcgResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgPackOpen**
```swift
    open class func createTcgPackOpen(id: String, completion: @escaping (_ data: CreateTcgPackOpenResponse?, _ error: Error?) -> Void)
```

Open one of your earned packs: its eight cards join your collection.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Open one of your earned packs: its eight cards join your collection.
TCGAPI.createTcgPackOpen(id: id) { (response, error) in
    guard error == nil else {
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

**CreateTcgPackOpenResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgPractice**
```swift
    open class func createTcgPractice(game: String, completion: @escaping (_ data: TcgResponse?, _ error: Error?) -> Void)
```

Start a practice match against the house bot with one of your decks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Start a practice match against the house bot with one of your decks.
TCGAPI.createTcgPractice(game: game) { (response, error) in
    guard error == nil else {
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

**TcgResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgQueue**
```swift
    open class func createTcgQueue(game: String, completion: @escaping (_ data: CreateTcgQueueResponse?, _ error: Error?) -> Void)
```

Join the ranked queue with an owned, legal deck (free). Returns the match at once when an opponent fits.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Join the ranked queue with an owned, legal deck (free). Returns the match at once when an opponent fits.
TCGAPI.createTcgQueue(game: game) { (response, error) in
    guard error == nil else {
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

**CreateTcgQueueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgStarter**
```swift
    open class func createTcgStarter(game: String, completion: @escaping (_ data: CreateTcgStarterResponse?, _ error: Error?) -> Void)
```

Claim the free starter deck for a game, choosing its faction (once per account; account-bound, untradeable).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Claim the free starter deck for a game, choosing its faction (once per account; account-bound, untradeable).
TCGAPI.createTcgStarter(game: game) { (response, error) in
    guard error == nil else {
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

**CreateTcgStarterResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgTable**
```swift
    open class func createTcgTable(game: String, completion: @escaping (_ data: TcgResponse?, _ error: Error?) -> Void)
```

Sit at a table with your free starter deck (claimed now if you never did: starter names it, else one is picked for you): joins the oldest open 1v1 challenge, or opens one; already waiting, your own seat back.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Sit at a table with your free starter deck (claimed now if you never did: starter names it, else one is picked for you): joins the oldest open 1v1 challenge, or opens one; already waiting, your own seat back.
TCGAPI.createTcgTable(game: game) { (response, error) in
    guard error == nil else {
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

**TcgResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgTournament**
```swift
    open class func createTcgTournament(game: String, completion: @escaping (_ data: CreateTcgTournamentResponse?, _ error: Error?) -> Void)
```

Host a Swiss tournament: name, optional top cut (4 or 8), round length, player cap and start time.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Host a Swiss tournament: name, optional top cut (4 or 8), round length, player cap and start time.
TCGAPI.createTcgTournament(game: game) { (response, error) in
    guard error == nil else {
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

**CreateTcgTournamentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgTournamentDrop**
```swift
    open class func createTcgTournamentDrop(id: String, completion: @escaping (_ data: TcgTournamentResponse?, _ error: Error?) -> Void)
```

Leave a tournament before it starts, or drop from it (your results stand).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Leave a tournament before it starts, or drop from it (your results stand).
TCGAPI.createTcgTournamentDrop(id: id) { (response, error) in
    guard error == nil else {
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

**TcgTournamentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgTournamentRegister**
```swift
    open class func createTcgTournamentRegister(id: String, completion: @escaping (_ data: TcgTournamentResponse?, _ error: Error?) -> Void)
```

Enter a tournament with an owned, legal deck before it starts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Enter a tournament with an owned, legal deck before it starts.
TCGAPI.createTcgTournamentRegister(id: id) { (response, error) in
    guard error == nil else {
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

**TcgTournamentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createTcgTournamentStart**
```swift
    open class func createTcgTournamentStart(id: String, completion: @escaping (_ data: TcgTournamentResponse?, _ error: Error?) -> Void)
```

As the host, start the tournament: Swiss rounds are sized to the field and round 1 is dealt.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// As the host, start the tournament: Swiss rounds are sized to the field and round 1 is dealt.
TCGAPI.createTcgTournamentStart(id: id) { (response, error) in
    guard error == nil else {
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

**TcgTournamentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteTcgDeck**
```swift
    open class func deleteTcgDeck(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete one of your decks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete one of your decks.
TCGAPI.deleteTcgDeck(id: id) { (response, error) in
    guard error == nil else {
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

Void (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteTcgQueue**
```swift
    open class func deleteTcgQueue(game: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Leave the ranked queue.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Leave the ranked queue.
TCGAPI.deleteTcgQueue(game: game) { (response, error) in
    guard error == nil else {
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

Void (empty response body)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgCreatorGamePrint**
```swift
    open class func getTcgCreatorGamePrint(id: String, completion: @escaping (_ data: GetTcgCreatorGamePrintResponse?, _ error: Error?) -> Void)
```

Print file links for your own creator card game (owner only): the set's print file, home sheets and a proof, for its newest version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Print file links for your own creator card game (owner only): the set's print file, home sheets and a proof, for its newest version.
TCGAPI.getTcgCreatorGamePrint(id: id) { (response, error) in
    guard error == nil else {
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

**GetTcgCreatorGamePrintResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgCreatorGamePrintByKind**
```swift
    open class func getTcgCreatorGamePrintByKind(id: String, kind: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

A PDF of your own creator card game (owner only): kind set | sheet | proof; ?version=, ?paper=letter|a4, ?card= for a proof. Binary (application/pdf).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let kind = "kind_example" // String | 

// A PDF of your own creator card game (owner only): kind set | sheet | proof; ?version=, ?paper=letter|a4, ?card= for a proof. Binary (application/pdf).
TCGAPI.getTcgCreatorGamePrintByKind(id: id, kind: kind) { (response, error) in
    guard error == nil else {
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
 **kind** | **String** |  | 

### Return type

**URL**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgLadder**
```swift
    open class func getTcgLadder(game: String, completion: @escaping (_ data: GetTcgLadderResponse?, _ error: Error?) -> Void)
```

The season's ranked leaderboard for a game: place, rating, tier and record (named only where the player chose to be).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// The season's ranked leaderboard for a game: place, rating, tier and record (named only where the player chose to be).
TCGAPI.getTcgLadder(game: game) { (response, error) in
    guard error == nil else {
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

**GetTcgLadderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgLadderMe**
```swift
    open class func getTcgLadderMe(game: String, completion: @escaping (_ data: GetTcgLadderMeResponse?, _ error: Error?) -> Void)
```

Your ranked rating, tier, place and record this season, and whether you are queued.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Your ranked rating, tier, place and record this season, and whether you are queued.
TCGAPI.getTcgLadderMe(game: game) { (response, error) in
    guard error == nil else {
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

**GetTcgLadderMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgMatch**
```swift
    open class func getTcgMatch(game: String, completion: @escaping (_ data: GetTcgMatchResponse?, _ error: Error?) -> Void)
```

Your recent matches, and open challenges you could join.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Your recent matches, and open challenges you could join.
TCGAPI.getTcgMatch(game: game) { (response, error) in
    guard error == nil else {
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

**GetTcgMatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgMatchById**
```swift
    open class func getTcgMatchById(id: String, completion: @escaping (_ data: TcgResponse?, _ error: Error?) -> Void)
```

Your view of a match (no hidden information) and, on your turn, every legal move.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Your view of a match (no hidden information) and, on your turn, every legal move.
TCGAPI.getTcgMatchById(id: id) { (response, error) in
    guard error == nil else {
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

**TcgResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgMe**
```swift
    open class func getTcgMe(game: String, completion: @escaping (_ data: GetTcgMeResponse?, _ error: Error?) -> Void)
```

Your starter faction, collection (card id -> copies), decks and earned packs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Your starter faction, collection (card id -> copies), decks and earned packs.
TCGAPI.getTcgMe(game: game) { (response, error) in
    guard error == nil else {
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

**GetTcgMeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgPrint**
```swift
    open class func getTcgPrint(game: String, completion: @escaping (_ data: GetTcgPrintResponse?, _ error: Error?) -> Void)
```

Print files for one of Crossly's own card games: a card proof (template), 3 x 3 Letter/A4 home sheets with crop marks, and the set's print file (63 x 88 mm, 3 mm bleed).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// Print files for one of Crossly's own card games: a card proof (template), 3 x 3 Letter/A4 home sheets with crop marks, and the set's print file (63 x 88 mm, 3 mm bleed).
TCGAPI.getTcgPrint(game: game) { (response, error) in
    guard error == nil else {
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

**GetTcgPrintResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getTcgTournament**
```swift
    open class func getTcgTournament(id: String, completion: @escaping (_ data: TcgTournamentResponse?, _ error: Error?) -> Void)
```

A tournament's standings (points, opponents' and game win %), this round's pairings and your seat.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A tournament's standings (points, opponents' and game win %), this round's pairings and your seat.
TCGAPI.getTcgTournament(id: id) { (response, error) in
    guard error == nil else {
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

**TcgTournamentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listTcgCards**
```swift
    open class func listTcgCards(game: String, completion: @escaping (_ data: ListTcgCardsResponse?, _ error: Error?) -> Void)
```

The game's card pool: every card with its rules text, stats, rarity and collector number.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// The game's card pool: every card with its rules text, stats, rarity and collector number.
TCGAPI.listTcgCards(game: game) { (response, error) in
    guard error == nil else {
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

**ListTcgCardsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listTcgGames**
```swift
    open class func listTcgGames(completion: @escaping (_ data: ListTcgGamesResponse?, _ error: Error?) -> Void)
```

Crossly's own card games: id, name, seats and card count.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Crossly's own card games: id, name, seats and card count.
TCGAPI.listTcgGames() { (response, error) in
    guard error == nil else {
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

**ListTcgGamesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listTcgTournaments**
```swift
    open class func listTcgTournaments(game: String, completion: @escaping (_ data: ListTcgTournamentsResponse?, _ error: Error?) -> Void)
```

A game's recent and upcoming Swiss tournaments (free to enter; prizes are earned packs).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let game = "game_example" // String | 

// A game's recent and upcoming Swiss tournaments (free to enter; prizes are earned packs).
TCGAPI.listTcgTournaments(game: game) { (response, error) in
    guard error == nil else {
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

**ListTcgTournamentsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

