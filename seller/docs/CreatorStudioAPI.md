# CreatorStudioAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCreatorCardSet**](CreatorStudioAPI.md#createcreatorcardset) | **POST** /v1/creator/cards/sets | Start a card set: a game id (3-24 of a-z, 0-9, -), a set code (MG1) and a name. Answers a starter draft that already passes conformance. Paid seller plans only.
[**createCreatorCardSetArt**](CreatorStudioAPI.md#createcreatorcardsetart) | **POST** /v1/creator/cards/sets/{id}/art/{slug} | One card&#39;s art: a PNG (base64, at most 1 MB and 2048 px), scanned and stored until the version is approved.
[**createCreatorCardSetCheck**](CreatorStudioAPI.md#createcreatorcardsetcheck) | **POST** /v1/creator/cards/sets/{id}/check | The full check publish runs: draft issues, tcgStaticConformance and bot-vs-bot games of the set.
[**createCreatorCardSetPublish**](CreatorStudioAPI.md#createcreatorcardsetpublish) | **POST** /v1/creator/cards/sets/{id}/publish | Publish: the set must pass its check; it is packaged (game.json, cards.json, the designer rules, art) and submitted as a new immutable version for review, through the same intake as a hand-made card game.
[**createCreatorCreationSubmit**](CreatorStudioAPI.md#createcreatorcreationsubmit) | **POST** /v1/creator/creations/{format}/{id}/submit | Send one creation to review through its format&#39;s own submit (wearable, model, decor, interactive, card: its whole set). Games are published from world-kit.
[**createCreatorImport**](CreatorStudioAPI.md#createcreatorimport) | **POST** /v1/creator/imports | Validate a filled-in template (manifest text, CSV text, every path in the upload): issues with file, line and column, and a preview. Creates nothing.
[**createCreatorImportCommit**](CreatorStudioAPI.md#createcreatorimportcommit) | **POST** /v1/creator/imports/{id}/commit | Create the drafts of a validated template upload (drafts only; nothing is submitted to review).
[**createCreatorItemModel**](CreatorStudioAPI.md#createcreatoritemmodel) | **POST** /v1/creator/items/models | Upload a .glb (base64, 4 MB): validated, measured and stored (quarantined until approved). An over-budget model is refused with every failing number.
[**createCreatorItemModelCheck**](CreatorStudioAPI.md#createcreatoritemmodelcheck) | **POST** /v1/creator/items/models/check | The budget report for a .glb (base64), storing nothing: every limit (triangles, draw calls, texture edge per phone/desktop; size, nodes, meshes, images, animations; bones for wearables) with pass/fail, problems and LOD suggestions.
[**createCreatorItemModelSubmit**](CreatorStudioAPI.md#createcreatoritemmodelsubmit) | **POST** /v1/creator/items/models/{id}/submit | Send an uploaded model to art review.
[**createCreatorItemPreview**](CreatorStudioAPI.md#createcreatoritempreview) | **POST** /v1/creator/items/previews | Upload a preview PNG (base64, at most 1 MB and 2048 px): parsed, scanned and stored on the Crossly CDN; answers its https URL.
[**createCreatorItemWearable**](CreatorStudioAPI.md#createcreatoritemwearable) | **POST** /v1/creator/items/wearables | Start a wearable from a template: slug, name, colourways (panel -&gt; #rrggbb), a COSM price and optional edition size. Text is filtered; answers the automated checks. Paid seller plans only.
[**createCreatorItemWearableSubmit**](CreatorStudioAPI.md#createcreatoritemwearablesubmit) | **POST** /v1/creator/items/wearables/{id}/submit | Submit a wearable whose checks pass: each colourway becomes a COSM design (inactive) filed for review. Needs an https preview image (POST /v1/creator/items/previews).
[**createCreatorReviewHide**](CreatorStudioAPI.md#createcreatorreviewhide) | **POST** /v1/creator/reviews/{reviewId}/hide | Hide a buyer review from your public page (it is kept, and its rating still counts).
[**createCreatorReviewReply**](CreatorStudioAPI.md#createcreatorreviewreply) | **POST** /v1/creator/reviews/{reviewId}/reply | Reply to a buyer review of your creation (or change your reply).
[**createCreatorReviewReport**](CreatorStudioAPI.md#createcreatorreviewreport) | **POST** /v1/creator/reviews/{reviewId}/report | Report a buyer review to Crossly (abuse, spam, not a real buyer).
[**createCreatorReviewUnhide**](CreatorStudioAPI.md#createcreatorreviewunhide) | **POST** /v1/creator/reviews/{reviewId}/unhide | Show a hidden buyer review on your page again.
[**deleteCreatorCardSet**](CreatorStudioAPI.md#deletecreatorcardset) | **DELETE** /v1/creator/cards/sets/{id} | Delete a set draft that was never published.
[**deleteCreatorItemModel**](CreatorStudioAPI.md#deletecreatoritemmodel) | **DELETE** /v1/creator/items/models/{id} | Delete a draft or rejected model.
[**deleteCreatorItemWearable**](CreatorStudioAPI.md#deletecreatoritemwearable) | **DELETE** /v1/creator/items/wearables/{id} | Delete a draft wearable.
[**getCreatorCardSet**](CreatorStudioAPI.md#getcreatorcardset) | **GET** /v1/creator/cards/sets/{id} | One set draft with its check: draft issues by field and tcgStaticConformance problems.
[**getCreatorCardSetProgress**](CreatorStudioAPI.md#getcreatorcardsetprogress) | **GET** /v1/creator/cards/sets/{id}/progress | A set&#39;s three steps: live on COSM, the mint threshold toward NFTs, and the print-run cost (trading_cards estimate) against production funding banked.
[**getCreatorCollection**](CreatorStudioAPI.md#getcreatorcollection) | **GET** /v1/creator/collections/{collectionId} | One collection (a card set, a launch or a claimed contract): its six-stage road to the chain, the launch (phase timeline, proceeds, recent mints), sales by marketplace, royalty estimate, holders, its cards or creations with their earnings, holder perks set at mint, and which actions apply.
[**getCreatorCollectionPerk**](CreatorStudioAPI.md#getcreatorcollectionperk) | **GET** /v1/creator/collections/{collectionId}/perks | A collection&#39;s holder perks (percent off at your shop, early access, a World item, a loyalty tier), whether they can be edited, and why not (a card set not started yet, a contract claimed from elsewhere).
[**getCreatorCreation**](CreatorStudioAPI.md#getcreatorcreation) | **GET** /v1/creator/creations/{format}/{id} | One creation: its status timeline and review history, the files it uses, where it sells, its sales, its buyer reviews and its mint status.
[**getCreatorCreationStatus**](CreatorStudioAPI.md#getcreatorcreationstatus) | **GET** /v1/creator/creations/{format}/{id}/status | Where one creation stands: its status, the reviewer&#39;s last note and its status timeline.
[**getCreatorEarningExport**](CreatorStudioAPI.md#getcreatorearningexport) | **GET** /v1/creator/earnings/export | Download your creator earnings: format&#x3D;csv (every ledger row for the filter) or format&#x3D;pdf (a statement with per-rail totals for the same filter: rail, source, group, gameId, state; period defaults to this month).
[**getCreatorEarningReconcile**](CreatorStudioAPI.md#getcreatorearningreconcile) | **GET** /v1/creator/earnings/reconcile | Reconcile your creator earnings: every source recomputed directly from its own ledger, side by side with the earnings view. ok is true when every source matches.
[**getCreatorImport**](CreatorStudioAPI.md#getcreatorimport) | **GET** /v1/creator/imports/{id} | A stored template validation.
[**getCreatorItemModel**](CreatorStudioAPI.md#getcreatoritemmodel) | **GET** /v1/creator/items/models/{id} | One of your models with its budget report.
[**getCreatorItemTemplate**](CreatorStudioAPI.md#getcreatoritemtemplate) | **GET** /v1/creator/items/templates | Wearable templates: each garment the Crossly avatar wears, its recolourable panels, default colours and measured cost (triangles, draw calls, bones, bytes, phone LOD), plus the per-wearable budget.
[**getCreatorItemWearable**](CreatorStudioAPI.md#getcreatoritemwearable) | **GET** /v1/creator/items/wearables/{id} | One of your wearables with its checks, review state and note.
[**getCreatorMinting**](CreatorStudioAPI.md#getcreatorminting) | **GET** /v1/creator/minting | Everything you take on chain as collection rows with a six-stage status (designed, eligible, drafted, deploying, live, ended): gettingReady and launched. Game items (source game_item: tradeable game products, NFT declarations for your games) carry href and gameId.
[**getCreatorOverview**](CreatorStudioAPI.md#getcreatoroverview) | **GET** /v1/creator/overview | Creator Studio overview: earnings this month and last by rail, live creations, review queue, publish lock and next steps.
[**getCreatorTemplate**](CreatorStudioAPI.md#getcreatortemplate) | **GET** /v1/creator/templates/{format} | The template files for a format (wearable, model, decor, interactive, card_set): crossly-creation.json, creations.csv where it applies, and a README.
[**getCreatorTemplateZip**](CreatorStudioAPI.md#getcreatortemplatezip) | **GET** /v1/creator/templates/{format}/zip | A format&#39;s template as a .zip download (the same files as GET /templates/:format, plus its empty folders).
[**listCreatorCardSets**](CreatorStudioAPI.md#listcreatorcardsets) | **GET** /v1/creator/cards/sets | Your card set drafts, each with its road from COSM to print: live on COSM, the mint threshold (collectors, packs opened, resales) and the print-run cost against what NFT sales have banked.
[**listCreatorCreationReviews**](CreatorStudioAPI.md#listcreatorcreationreviews) | **GET** /v1/creator/creations/{format}/{id}/reviews | Buyer reviews of one creation, newest first (hidden ones included).
[**listCreatorCreations**](CreatorStudioAPI.md#listcreatorcreations) | **GET** /v1/creator/creations | Every creation of your shop in one list: wearables, 3D objects, decor, interactive objects, each card of your card sets, Classic games and card games, with status, collection, rating, earnings and mint status.
[**listCreatorEarningTrend**](CreatorStudioAPI.md#listcreatorearningtrend) | **GET** /v1/creator/earnings/trend | Your creator earnings over time: net (available + paid) per day, week or month (UTC) and rail, for the same filter as the ledger. meta.totals holds the per-rail and per-source totals of that filter.
[**listCreatorEarnings**](CreatorStudioAPI.md#listcreatorearnings) | **GET** /v1/creator/earnings | Your creator earnings ledger across every rail (cash, COSM, CBX), newest first. Each row names the source ledger row it is. meta.totals holds per-rail and per-source totals for the same filter; meta.nextCursor pages.
[**listCreatorItemModels**](CreatorStudioAPI.md#listcreatoritemmodels) | **GET** /v1/creator/items/models | Your uploaded 3D models with their budget reports and review state.
[**listCreatorItemWearables**](CreatorStudioAPI.md#listcreatoritemwearables) | **GET** /v1/creator/items/wearables | Your wearables: drafts, in review, live or with changes requested, each with its automated checks and per-colourway designs.
[**listCreatorItems**](CreatorStudioAPI.md#listcreatoritems) | **GET** /v1/creator/items | Every creation of your shop — wearables, decor, uploaded 3D models, interactive objects, Classic games, card games (incl. unpublished designer sets), physical runs — with status, price and earnings.
[**listCreatorReviews**](CreatorStudioAPI.md#listcreatorreviews) | **GET** /v1/creator/reviews | Every creator submission (items, interactive objects, Classic games, card games) and its review decision with the reviewer note.
[**updateCreatorCardSet**](CreatorStudioAPI.md#updatecreatorcardset) | **PUT** /v1/creator/cards/sets/{id} | Save the whole draft: cards (name, type, rarity, rules text, flavour, power/draw/guard), COSM prices and supply, frame colours, print plan. Every word goes through the text filter. Art is merged: a card without &#x60;art&#x60; (or with art as read) keeps its stored art, &#x60;art: null&#x60; clears it; only the art upload sets art. Answers the check.
[**updateCreatorCollectionPerk**](CreatorStudioAPI.md#updatecreatorcollectionperk) | **PUT** /v1/creator/collections/{collectionId}/perks | Replace a collection&#39;s holder perks: &#x60;{ perks: [...] }&#x60;, at most one of each type: percent_off { percent 1-50 }, early_access { hours 1-720 }, world_item { creationRef, name }, loyalty_tier { tierId, tierName } (one of your loyalty tiers), each with an optional note. 409 when the collection has no launch yet.
[**updateCreatorItemWearable**](CreatorStudioAPI.md#updatecreatoritemwearable) | **PATCH** /v1/creator/items/wearables/{id} | Edit a draft wearable (name, description, colourways, price, edition). Submitted wearables are frozen.


# **createCreatorCardSet**
```swift
    open class func createCreatorCardSet(completion: @escaping (_ data: CreatorCardSetResponse?, _ error: Error?) -> Void)
```

Start a card set: a game id (3-24 of a-z, 0-9, -), a set code (MG1) and a name. Answers a starter draft that already passes conformance. Paid seller plans only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start a card set: a game id (3-24 of a-z, 0-9, -), a set code (MG1) and a name. Answers a starter draft that already passes conformance. Paid seller plans only.
CreatorStudioAPI.createCreatorCardSet() { (response, error) in
    guard error == nil else {
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

**CreatorCardSetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorCardSetArt**
```swift
    open class func createCreatorCardSetArt(id: String, slug: String, completion: @escaping (_ data: CreatorCardSetResponse?, _ error: Error?) -> Void)
```

One card's art: a PNG (base64, at most 1 MB and 2048 px), scanned and stored until the version is approved.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let slug = "slug_example" // String | 

// One card's art: a PNG (base64, at most 1 MB and 2048 px), scanned and stored until the version is approved.
CreatorStudioAPI.createCreatorCardSetArt(id: id, slug: slug) { (response, error) in
    guard error == nil else {
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
 **slug** | **String** |  | 

### Return type

**CreatorCardSetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorCardSetCheck**
```swift
    open class func createCreatorCardSetCheck(id: String, completion: @escaping (_ data: CreatorCardSetResponse?, _ error: Error?) -> Void)
```

The full check publish runs: draft issues, tcgStaticConformance and bot-vs-bot games of the set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The full check publish runs: draft issues, tcgStaticConformance and bot-vs-bot games of the set.
CreatorStudioAPI.createCreatorCardSetCheck(id: id) { (response, error) in
    guard error == nil else {
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

**CreatorCardSetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorCardSetPublish**
```swift
    open class func createCreatorCardSetPublish(id: String, completion: @escaping (_ data: CreateCreatorCardSetPublishResponse?, _ error: Error?) -> Void)
```

Publish: the set must pass its check; it is packaged (game.json, cards.json, the designer rules, art) and submitted as a new immutable version for review, through the same intake as a hand-made card game.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Publish: the set must pass its check; it is packaged (game.json, cards.json, the designer rules, art) and submitted as a new immutable version for review, through the same intake as a hand-made card game.
CreatorStudioAPI.createCreatorCardSetPublish(id: id) { (response, error) in
    guard error == nil else {
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

**CreateCreatorCardSetPublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorCreationSubmit**
```swift
    open class func createCreatorCreationSubmit(format: String, id: String, completion: @escaping (_ data: CreateCreatorCreationSubmitResponse?, _ error: Error?) -> Void)
```

Send one creation to review through its format's own submit (wearable, model, decor, interactive, card: its whole set). Games are published from world-kit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let format = "format_example" // String | 
let id = "id_example" // String | 

// Send one creation to review through its format's own submit (wearable, model, decor, interactive, card: its whole set). Games are published from world-kit.
CreatorStudioAPI.createCreatorCreationSubmit(format: format, id: id) { (response, error) in
    guard error == nil else {
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
 **format** | **String** |  | 
 **id** | **String** |  | 

### Return type

**CreateCreatorCreationSubmitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorImport**
```swift
    open class func createCreatorImport(completion: @escaping (_ data: GetCreatorImportResponse?, _ error: Error?) -> Void)
```

Validate a filled-in template (manifest text, CSV text, every path in the upload): issues with file, line and column, and a preview. Creates nothing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Validate a filled-in template (manifest text, CSV text, every path in the upload): issues with file, line and column, and a preview. Creates nothing.
CreatorStudioAPI.createCreatorImport() { (response, error) in
    guard error == nil else {
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

**GetCreatorImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorImportCommit**
```swift
    open class func createCreatorImportCommit(id: String, completion: @escaping (_ data: CreateCreatorImportCommitResponse?, _ error: Error?) -> Void)
```

Create the drafts of a validated template upload (drafts only; nothing is submitted to review).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Create the drafts of a validated template upload (drafts only; nothing is submitted to review).
CreatorStudioAPI.createCreatorImportCommit(id: id) { (response, error) in
    guard error == nil else {
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

**CreateCreatorImportCommitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorItemModel**
```swift
    open class func createCreatorItemModel(completion: @escaping (_ data: CreatorItemModelResponse?, _ error: Error?) -> Void)
```

Upload a .glb (base64, 4 MB): validated, measured and stored (quarantined until approved). An over-budget model is refused with every failing number.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Upload a .glb (base64, 4 MB): validated, measured and stored (quarantined until approved). An over-budget model is refused with every failing number.
CreatorStudioAPI.createCreatorItemModel() { (response, error) in
    guard error == nil else {
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

**CreatorItemModelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorItemModelCheck**
```swift
    open class func createCreatorItemModelCheck(completion: @escaping (_ data: CreateCreatorItemModelCheckResponse?, _ error: Error?) -> Void)
```

The budget report for a .glb (base64), storing nothing: every limit (triangles, draw calls, texture edge per phone/desktop; size, nodes, meshes, images, animations; bones for wearables) with pass/fail, problems and LOD suggestions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The budget report for a .glb (base64), storing nothing: every limit (triangles, draw calls, texture edge per phone/desktop; size, nodes, meshes, images, animations; bones for wearables) with pass/fail, problems and LOD suggestions.
CreatorStudioAPI.createCreatorItemModelCheck() { (response, error) in
    guard error == nil else {
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

**CreateCreatorItemModelCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorItemModelSubmit**
```swift
    open class func createCreatorItemModelSubmit(id: String, completion: @escaping (_ data: CreatorItemModelResponse?, _ error: Error?) -> Void)
```

Send an uploaded model to art review.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Send an uploaded model to art review.
CreatorStudioAPI.createCreatorItemModelSubmit(id: id) { (response, error) in
    guard error == nil else {
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

**CreatorItemModelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorItemPreview**
```swift
    open class func createCreatorItemPreview(completion: @escaping (_ data: CreateCreatorItemPreviewResponse?, _ error: Error?) -> Void)
```

Upload a preview PNG (base64, at most 1 MB and 2048 px): parsed, scanned and stored on the Crossly CDN; answers its https URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Upload a preview PNG (base64, at most 1 MB and 2048 px): parsed, scanned and stored on the Crossly CDN; answers its https URL.
CreatorStudioAPI.createCreatorItemPreview() { (response, error) in
    guard error == nil else {
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

**CreateCreatorItemPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorItemWearable**
```swift
    open class func createCreatorItemWearable(completion: @escaping (_ data: CreatorItemWearableResponse?, _ error: Error?) -> Void)
```

Start a wearable from a template: slug, name, colourways (panel -> #rrggbb), a COSM price and optional edition size. Text is filtered; answers the automated checks. Paid seller plans only.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Start a wearable from a template: slug, name, colourways (panel -> #rrggbb), a COSM price and optional edition size. Text is filtered; answers the automated checks. Paid seller plans only.
CreatorStudioAPI.createCreatorItemWearable() { (response, error) in
    guard error == nil else {
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

**CreatorItemWearableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorItemWearableSubmit**
```swift
    open class func createCreatorItemWearableSubmit(id: String, completion: @escaping (_ data: CreatorItemWearableResponse?, _ error: Error?) -> Void)
```

Submit a wearable whose checks pass: each colourway becomes a COSM design (inactive) filed for review. Needs an https preview image (POST /v1/creator/items/previews).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Submit a wearable whose checks pass: each colourway becomes a COSM design (inactive) filed for review. Needs an https preview image (POST /v1/creator/items/previews).
CreatorStudioAPI.createCreatorItemWearableSubmit(id: id) { (response, error) in
    guard error == nil else {
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

**CreatorItemWearableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorReviewHide**
```swift
    open class func createCreatorReviewHide(reviewId: String, completion: @escaping (_ data: CreatorReviewResponse?, _ error: Error?) -> Void)
```

Hide a buyer review from your public page (it is kept, and its rating still counts).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let reviewId = "reviewId_example" // String | 

// Hide a buyer review from your public page (it is kept, and its rating still counts).
CreatorStudioAPI.createCreatorReviewHide(reviewId: reviewId) { (response, error) in
    guard error == nil else {
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
 **reviewId** | **String** |  | 

### Return type

**CreatorReviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorReviewReply**
```swift
    open class func createCreatorReviewReply(reviewId: String, completion: @escaping (_ data: CreatorReviewResponse?, _ error: Error?) -> Void)
```

Reply to a buyer review of your creation (or change your reply).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let reviewId = "reviewId_example" // String | 

// Reply to a buyer review of your creation (or change your reply).
CreatorStudioAPI.createCreatorReviewReply(reviewId: reviewId) { (response, error) in
    guard error == nil else {
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
 **reviewId** | **String** |  | 

### Return type

**CreatorReviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorReviewReport**
```swift
    open class func createCreatorReviewReport(reviewId: String, completion: @escaping (_ data: CreatorReviewResponse?, _ error: Error?) -> Void)
```

Report a buyer review to Crossly (abuse, spam, not a real buyer).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let reviewId = "reviewId_example" // String | 

// Report a buyer review to Crossly (abuse, spam, not a real buyer).
CreatorStudioAPI.createCreatorReviewReport(reviewId: reviewId) { (response, error) in
    guard error == nil else {
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
 **reviewId** | **String** |  | 

### Return type

**CreatorReviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCreatorReviewUnhide**
```swift
    open class func createCreatorReviewUnhide(reviewId: String, completion: @escaping (_ data: CreatorReviewResponse?, _ error: Error?) -> Void)
```

Show a hidden buyer review on your page again.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let reviewId = "reviewId_example" // String | 

// Show a hidden buyer review on your page again.
CreatorStudioAPI.createCreatorReviewUnhide(reviewId: reviewId) { (response, error) in
    guard error == nil else {
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
 **reviewId** | **String** |  | 

### Return type

**CreatorReviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteCreatorCardSet**
```swift
    open class func deleteCreatorCardSet(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a set draft that was never published.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a set draft that was never published.
CreatorStudioAPI.deleteCreatorCardSet(id: id) { (response, error) in
    guard error == nil else {
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

# **deleteCreatorItemModel**
```swift
    open class func deleteCreatorItemModel(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a draft or rejected model.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a draft or rejected model.
CreatorStudioAPI.deleteCreatorItemModel(id: id) { (response, error) in
    guard error == nil else {
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

# **deleteCreatorItemWearable**
```swift
    open class func deleteCreatorItemWearable(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a draft wearable.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a draft wearable.
CreatorStudioAPI.deleteCreatorItemWearable(id: id) { (response, error) in
    guard error == nil else {
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

# **getCreatorCardSet**
```swift
    open class func getCreatorCardSet(id: String, completion: @escaping (_ data: CreatorCardSetResponse?, _ error: Error?) -> Void)
```

One set draft with its check: draft issues by field and tcgStaticConformance problems.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One set draft with its check: draft issues by field and tcgStaticConformance problems.
CreatorStudioAPI.getCreatorCardSet(id: id) { (response, error) in
    guard error == nil else {
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

**CreatorCardSetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorCardSetProgress**
```swift
    open class func getCreatorCardSetProgress(id: String, completion: @escaping (_ data: GetCreatorCardSetProgressResponse?, _ error: Error?) -> Void)
```

A set's three steps: live on COSM, the mint threshold toward NFTs, and the print-run cost (trading_cards estimate) against production funding banked.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A set's three steps: live on COSM, the mint threshold toward NFTs, and the print-run cost (trading_cards estimate) against production funding banked.
CreatorStudioAPI.getCreatorCardSetProgress(id: id) { (response, error) in
    guard error == nil else {
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

**GetCreatorCardSetProgressResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorCollection**
```swift
    open class func getCreatorCollection(collectionId: String, completion: @escaping (_ data: GetCreatorCollectionResponse?, _ error: Error?) -> Void)
```

One collection (a card set, a launch or a claimed contract): its six-stage road to the chain, the launch (phase timeline, proceeds, recent mints), sales by marketplace, royalty estimate, holders, its cards or creations with their earnings, holder perks set at mint, and which actions apply.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let collectionId = "collectionId_example" // String | 

// One collection (a card set, a launch or a claimed contract): its six-stage road to the chain, the launch (phase timeline, proceeds, recent mints), sales by marketplace, royalty estimate, holders, its cards or creations with their earnings, holder perks set at mint, and which actions apply.
CreatorStudioAPI.getCreatorCollection(collectionId: collectionId) { (response, error) in
    guard error == nil else {
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
 **collectionId** | **String** |  | 

### Return type

**GetCreatorCollectionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorCollectionPerk**
```swift
    open class func getCreatorCollectionPerk(collectionId: String, completion: @escaping (_ data: GetCreatorCollectionPerkResponse?, _ error: Error?) -> Void)
```

A collection's holder perks (percent off at your shop, early access, a World item, a loyalty tier), whether they can be edited, and why not (a card set not started yet, a contract claimed from elsewhere).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let collectionId = "collectionId_example" // String | 

// A collection's holder perks (percent off at your shop, early access, a World item, a loyalty tier), whether they can be edited, and why not (a card set not started yet, a contract claimed from elsewhere).
CreatorStudioAPI.getCreatorCollectionPerk(collectionId: collectionId) { (response, error) in
    guard error == nil else {
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
 **collectionId** | **String** |  | 

### Return type

**GetCreatorCollectionPerkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorCreation**
```swift
    open class func getCreatorCreation(format: String, id: String, completion: @escaping (_ data: GetCreatorCreationResponse?, _ error: Error?) -> Void)
```

One creation: its status timeline and review history, the files it uses, where it sells, its sales, its buyer reviews and its mint status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let format = "format_example" // String | 
let id = "id_example" // String | 

// One creation: its status timeline and review history, the files it uses, where it sells, its sales, its buyer reviews and its mint status.
CreatorStudioAPI.getCreatorCreation(format: format, id: id) { (response, error) in
    guard error == nil else {
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
 **format** | **String** |  | 
 **id** | **String** |  | 

### Return type

**GetCreatorCreationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorCreationStatus**
```swift
    open class func getCreatorCreationStatus(format: String, id: String, completion: @escaping (_ data: GetCreatorCreationStatusResponse?, _ error: Error?) -> Void)
```

Where one creation stands: its status, the reviewer's last note and its status timeline.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let format = "format_example" // String | 
let id = "id_example" // String | 

// Where one creation stands: its status, the reviewer's last note and its status timeline.
CreatorStudioAPI.getCreatorCreationStatus(format: format, id: id) { (response, error) in
    guard error == nil else {
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
 **format** | **String** |  | 
 **id** | **String** |  | 

### Return type

**GetCreatorCreationStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorEarningExport**
```swift
    open class func getCreatorEarningExport(format: Format_getCreatorEarningExport? = nil, rail: Rail_getCreatorEarningExport? = nil, source: Source_getCreatorEarningExport? = nil, state: State_getCreatorEarningExport? = nil, group: Group_getCreatorEarningExport? = nil, gameId: UUID? = nil, from: Date? = nil, to: Date? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Download your creator earnings: format=csv (every ledger row for the filter) or format=pdf (a statement with per-rail totals for the same filter: rail, source, group, gameId, state; period defaults to this month).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let format = "format_example" // String |  (optional)
let rail = "rail_example" // String |  (optional)
let source = "source_example" // String |  (optional)
let state = "state_example" // String |  (optional)
let group = "group_example" // String |  (optional)
let gameId = 987 // UUID |  (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)

// Download your creator earnings: format=csv (every ledger row for the filter) or format=pdf (a statement with per-rail totals for the same filter: rail, source, group, gameId, state; period defaults to this month).
CreatorStudioAPI.getCreatorEarningExport(format: format, rail: rail, source: source, state: state, group: group, gameId: gameId, from: from, to: to) { (response, error) in
    guard error == nil else {
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
 **format** | **String** |  | [optional] 
 **rail** | **String** |  | [optional] 
 **source** | **String** |  | [optional] 
 **state** | **String** |  | [optional] 
 **group** | **String** |  | [optional] 
 **gameId** | **UUID** |  | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 

### Return type

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorEarningReconcile**
```swift
    open class func getCreatorEarningReconcile(completion: @escaping (_ data: GetCreatorEarningReconcileResponse?, _ error: Error?) -> Void)
```

Reconcile your creator earnings: every source recomputed directly from its own ledger, side by side with the earnings view. ok is true when every source matches.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Reconcile your creator earnings: every source recomputed directly from its own ledger, side by side with the earnings view. ok is true when every source matches.
CreatorStudioAPI.getCreatorEarningReconcile() { (response, error) in
    guard error == nil else {
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

**GetCreatorEarningReconcileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorImport**
```swift
    open class func getCreatorImport(id: String, completion: @escaping (_ data: GetCreatorImportResponse?, _ error: Error?) -> Void)
```

A stored template validation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A stored template validation.
CreatorStudioAPI.getCreatorImport(id: id) { (response, error) in
    guard error == nil else {
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

**GetCreatorImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorItemModel**
```swift
    open class func getCreatorItemModel(id: String, completion: @escaping (_ data: CreatorItemModelResponse?, _ error: Error?) -> Void)
```

One of your models with its budget report.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One of your models with its budget report.
CreatorStudioAPI.getCreatorItemModel(id: id) { (response, error) in
    guard error == nil else {
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

**CreatorItemModelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorItemTemplate**
```swift
    open class func getCreatorItemTemplate(completion: @escaping (_ data: GetCreatorItemTemplateResponse?, _ error: Error?) -> Void)
```

Wearable templates: each garment the Crossly avatar wears, its recolourable panels, default colours and measured cost (triangles, draw calls, bones, bytes, phone LOD), plus the per-wearable budget.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Wearable templates: each garment the Crossly avatar wears, its recolourable panels, default colours and measured cost (triangles, draw calls, bones, bytes, phone LOD), plus the per-wearable budget.
CreatorStudioAPI.getCreatorItemTemplate() { (response, error) in
    guard error == nil else {
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

**GetCreatorItemTemplateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorItemWearable**
```swift
    open class func getCreatorItemWearable(id: String, completion: @escaping (_ data: CreatorItemWearableResponse?, _ error: Error?) -> Void)
```

One of your wearables with its checks, review state and note.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One of your wearables with its checks, review state and note.
CreatorStudioAPI.getCreatorItemWearable(id: id) { (response, error) in
    guard error == nil else {
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

**CreatorItemWearableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorMinting**
```swift
    open class func getCreatorMinting(completion: @escaping (_ data: GetCreatorMintingResponse?, _ error: Error?) -> Void)
```

Everything you take on chain as collection rows with a six-stage status (designed, eligible, drafted, deploying, live, ended): gettingReady and launched. Game items (source game_item: tradeable game products, NFT declarations for your games) carry href and gameId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Everything you take on chain as collection rows with a six-stage status (designed, eligible, drafted, deploying, live, ended): gettingReady and launched. Game items (source game_item: tradeable game products, NFT declarations for your games) carry href and gameId.
CreatorStudioAPI.getCreatorMinting() { (response, error) in
    guard error == nil else {
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

**GetCreatorMintingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorOverview**
```swift
    open class func getCreatorOverview(completion: @escaping (_ data: GetCreatorOverviewResponse?, _ error: Error?) -> Void)
```

Creator Studio overview: earnings this month and last by rail, live creations, review queue, publish lock and next steps.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Creator Studio overview: earnings this month and last by rail, live creations, review queue, publish lock and next steps.
CreatorStudioAPI.getCreatorOverview() { (response, error) in
    guard error == nil else {
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

**GetCreatorOverviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorTemplate**
```swift
    open class func getCreatorTemplate(format: String, completion: @escaping (_ data: GetCreatorTemplateResponse?, _ error: Error?) -> Void)
```

The template files for a format (wearable, model, decor, interactive, card_set): crossly-creation.json, creations.csv where it applies, and a README.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let format = "format_example" // String | 

// The template files for a format (wearable, model, decor, interactive, card_set): crossly-creation.json, creations.csv where it applies, and a README.
CreatorStudioAPI.getCreatorTemplate(format: format) { (response, error) in
    guard error == nil else {
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
 **format** | **String** |  | 

### Return type

**GetCreatorTemplateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getCreatorTemplateZip**
```swift
    open class func getCreatorTemplateZip(format: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

A format's template as a .zip download (the same files as GET /templates/:format, plus its empty folders).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let format = "format_example" // String | 

// A format's template as a .zip download (the same files as GET /templates/:format, plus its empty folders).
CreatorStudioAPI.getCreatorTemplateZip(format: format) { (response, error) in
    guard error == nil else {
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
 **format** | **String** |  | 

### Return type

**URL**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCreatorCardSets**
```swift
    open class func listCreatorCardSets(completion: @escaping (_ data: ListCreatorCardSetsResponse?, _ error: Error?) -> Void)
```

Your card set drafts, each with its road from COSM to print: live on COSM, the mint threshold (collectors, packs opened, resales) and the print-run cost against what NFT sales have banked.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your card set drafts, each with its road from COSM to print: live on COSM, the mint threshold (collectors, packs opened, resales) and the print-run cost against what NFT sales have banked.
CreatorStudioAPI.listCreatorCardSets() { (response, error) in
    guard error == nil else {
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

**ListCreatorCardSetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCreatorCreationReviews**
```swift
    open class func listCreatorCreationReviews(format: String, id: String, completion: @escaping (_ data: ListCreatorCreationReviewsResponse?, _ error: Error?) -> Void)
```

Buyer reviews of one creation, newest first (hidden ones included).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let format = "format_example" // String | 
let id = "id_example" // String | 

// Buyer reviews of one creation, newest first (hidden ones included).
CreatorStudioAPI.listCreatorCreationReviews(format: format, id: id) { (response, error) in
    guard error == nil else {
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
 **format** | **String** |  | 
 **id** | **String** |  | 

### Return type

**ListCreatorCreationReviewsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCreatorCreations**
```swift
    open class func listCreatorCreations(completion: @escaping (_ data: ListCreatorCreationsResponse?, _ error: Error?) -> Void)
```

Every creation of your shop in one list: wearables, 3D objects, decor, interactive objects, each card of your card sets, Classic games and card games, with status, collection, rating, earnings and mint status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every creation of your shop in one list: wearables, 3D objects, decor, interactive objects, each card of your card sets, Classic games and card games, with status, collection, rating, earnings and mint status.
CreatorStudioAPI.listCreatorCreations() { (response, error) in
    guard error == nil else {
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

**ListCreatorCreationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCreatorEarningTrend**
```swift
    open class func listCreatorEarningTrend(bucket: Bucket_listCreatorEarningTrend? = nil, rail: Rail_listCreatorEarningTrend? = nil, group: Group_listCreatorEarningTrend? = nil, gameId: UUID? = nil, from: Date? = nil, to: Date? = nil, completion: @escaping (_ data: ListCreatorEarningTrendResponse?, _ error: Error?) -> Void)
```

Your creator earnings over time: net (available + paid) per day, week or month (UTC) and rail, for the same filter as the ledger. meta.totals holds the per-rail and per-source totals of that filter.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let bucket = "bucket_example" // String |  (optional)
let rail = "rail_example" // String |  (optional)
let group = "group_example" // String |  (optional)
let gameId = 987 // UUID |  (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)

// Your creator earnings over time: net (available + paid) per day, week or month (UTC) and rail, for the same filter as the ledger. meta.totals holds the per-rail and per-source totals of that filter.
CreatorStudioAPI.listCreatorEarningTrend(bucket: bucket, rail: rail, group: group, gameId: gameId, from: from, to: to) { (response, error) in
    guard error == nil else {
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
 **bucket** | **String** |  | [optional] 
 **rail** | **String** |  | [optional] 
 **group** | **String** |  | [optional] 
 **gameId** | **UUID** |  | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 

### Return type

**ListCreatorEarningTrendResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCreatorEarnings**
```swift
    open class func listCreatorEarnings(rail: Rail_listCreatorEarnings? = nil, source: Source_listCreatorEarnings? = nil, group: Group_listCreatorEarnings? = nil, gameId: UUID? = nil, state: State_listCreatorEarnings? = nil, from: Date? = nil, to: Date? = nil, cursor: String? = nil, limit: Int? = nil, completion: @escaping (_ data: ListCreatorEarningsResponse?, _ error: Error?) -> Void)
```

Your creator earnings ledger across every rail (cash, COSM, CBX), newest first. Each row names the source ledger row it is. meta.totals holds per-rail and per-source totals for the same filter; meta.nextCursor pages.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let rail = "rail_example" // String |  (optional)
let source = "source_example" // String |  (optional)
let group = "group_example" // String |  (optional)
let gameId = 987 // UUID |  (optional)
let state = "state_example" // String |  (optional)
let from = Date() // Date |  (optional)
let to = Date() // Date |  (optional)
let cursor = "cursor_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// Your creator earnings ledger across every rail (cash, COSM, CBX), newest first. Each row names the source ledger row it is. meta.totals holds per-rail and per-source totals for the same filter; meta.nextCursor pages.
CreatorStudioAPI.listCreatorEarnings(rail: rail, source: source, group: group, gameId: gameId, state: state, from: from, to: to, cursor: cursor, limit: limit) { (response, error) in
    guard error == nil else {
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
 **rail** | **String** |  | [optional] 
 **source** | **String** |  | [optional] 
 **group** | **String** |  | [optional] 
 **gameId** | **UUID** |  | [optional] 
 **state** | **String** |  | [optional] 
 **from** | **Date** |  | [optional] 
 **to** | **Date** |  | [optional] 
 **cursor** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

**ListCreatorEarningsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCreatorItemModels**
```swift
    open class func listCreatorItemModels(completion: @escaping (_ data: ListCreatorItemModelsResponse?, _ error: Error?) -> Void)
```

Your uploaded 3D models with their budget reports and review state.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your uploaded 3D models with their budget reports and review state.
CreatorStudioAPI.listCreatorItemModels() { (response, error) in
    guard error == nil else {
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

**ListCreatorItemModelsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCreatorItemWearables**
```swift
    open class func listCreatorItemWearables(completion: @escaping (_ data: ListCreatorItemWearablesResponse?, _ error: Error?) -> Void)
```

Your wearables: drafts, in review, live or with changes requested, each with its automated checks and per-colourway designs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your wearables: drafts, in review, live or with changes requested, each with its automated checks and per-colourway designs.
CreatorStudioAPI.listCreatorItemWearables() { (response, error) in
    guard error == nil else {
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

**ListCreatorItemWearablesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCreatorItems**
```swift
    open class func listCreatorItems(kind: Kind_listCreatorItems? = nil, status: Status_listCreatorItems? = nil, rail: Rail_listCreatorItems? = nil, completion: @escaping (_ data: ListCreatorItemsResponse?, _ error: Error?) -> Void)
```

Every creation of your shop — wearables, decor, uploaded 3D models, interactive objects, Classic games, card games (incl. unpublished designer sets), physical runs — with status, price and earnings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let kind = "kind_example" // String |  (optional)
let status = "status_example" // String |  (optional)
let rail = "rail_example" // String |  (optional)

// Every creation of your shop — wearables, decor, uploaded 3D models, interactive objects, Classic games, card games (incl. unpublished designer sets), physical runs — with status, price and earnings.
CreatorStudioAPI.listCreatorItems(kind: kind, status: status, rail: rail) { (response, error) in
    guard error == nil else {
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
 **kind** | **String** |  | [optional] 
 **status** | **String** |  | [optional] 
 **rail** | **String** |  | [optional] 

### Return type

**ListCreatorItemsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCreatorReviews**
```swift
    open class func listCreatorReviews(kind: Kind_listCreatorReviews? = nil, state: State_listCreatorReviews? = nil, limit: Int? = nil, completion: @escaping (_ data: ListCreatorReviewsResponse?, _ error: Error?) -> Void)
```

Every creator submission (items, interactive objects, Classic games, card games) and its review decision with the reviewer note.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let kind = "kind_example" // String |  (optional)
let state = "state_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// Every creator submission (items, interactive objects, Classic games, card games) and its review decision with the reviewer note.
CreatorStudioAPI.listCreatorReviews(kind: kind, state: state, limit: limit) { (response, error) in
    guard error == nil else {
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
 **kind** | **String** |  | [optional] 
 **state** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

**ListCreatorReviewsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateCreatorCardSet**
```swift
    open class func updateCreatorCardSet(id: String, completion: @escaping (_ data: CreatorCardSetResponse?, _ error: Error?) -> Void)
```

Save the whole draft: cards (name, type, rarity, rules text, flavour, power/draw/guard), COSM prices and supply, frame colours, print plan. Every word goes through the text filter. Art is merged: a card without `art` (or with art as read) keeps its stored art, `art: null` clears it; only the art upload sets art. Answers the check.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Save the whole draft: cards (name, type, rarity, rules text, flavour, power/draw/guard), COSM prices and supply, frame colours, print plan. Every word goes through the text filter. Art is merged: a card without `art` (or with art as read) keeps its stored art, `art: null` clears it; only the art upload sets art. Answers the check.
CreatorStudioAPI.updateCreatorCardSet(id: id) { (response, error) in
    guard error == nil else {
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

**CreatorCardSetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateCreatorCollectionPerk**
```swift
    open class func updateCreatorCollectionPerk(collectionId: String, completion: @escaping (_ data: GetCreatorCollectionPerkResponse?, _ error: Error?) -> Void)
```

Replace a collection's holder perks: `{ perks: [...] }`, at most one of each type: percent_off { percent 1-50 }, early_access { hours 1-720 }, world_item { creationRef, name }, loyalty_tier { tierId, tierName } (one of your loyalty tiers), each with an optional note. 409 when the collection has no launch yet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let collectionId = "collectionId_example" // String | 

// Replace a collection's holder perks: `{ perks: [...] }`, at most one of each type: percent_off { percent 1-50 }, early_access { hours 1-720 }, world_item { creationRef, name }, loyalty_tier { tierId, tierName } (one of your loyalty tiers), each with an optional note. 409 when the collection has no launch yet.
CreatorStudioAPI.updateCreatorCollectionPerk(collectionId: collectionId) { (response, error) in
    guard error == nil else {
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
 **collectionId** | **String** |  | 

### Return type

**GetCreatorCollectionPerkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateCreatorItemWearable**
```swift
    open class func updateCreatorItemWearable(id: String, completion: @escaping (_ data: CreatorItemWearableResponse?, _ error: Error?) -> Void)
```

Edit a draft wearable (name, description, colourways, price, edition). Submitted wearables are frozen.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Edit a draft wearable (name, description, colourways, price, edition). Submitted wearables are frozen.
CreatorStudioAPI.updateCreatorItemWearable(id: id) { (response, error) in
    guard error == nil else {
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

**CreatorItemWearableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

