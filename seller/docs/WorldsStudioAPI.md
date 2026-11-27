# WorldsStudioAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorldExperienceAssetMesh**](WorldsStudioAPI.md#createworldexperienceassetmesh) | **POST** /v1/worlds/experiences/{experienceId}/assets/meshes | Import a .glb (base64) as a MeshPart: safety parse + budgets, stored on the Crossly CDN, a phone LOD over 5k triangles, collision Box or convex Hull. Returns the asset and the MeshPart node; with placeId it is inserted into that place through its co-editing session.
[**createWorldExperienceAssetMeshCheck**](WorldsStudioAPI.md#createworldexperienceassetmeshcheck) | **POST** /v1/worlds/experiences/{experienceId}/assets/meshes/check | Check a .glb (base64) for import without storing it: the budget report per device, plain-English errors with a fix list, whether a phone LOD will be made, mesh bounds and hull points.
[**createWorldExperiencePlaceAssistant**](WorldsStudioAPI.md#createworldexperienceplaceassistant) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/assistant | Ask the Studio Assistant (mode explain | edit | build): returns an explanation and a proposed change set (scripts, inserts, edits) checked against your role and linted. Nothing is applied.
[**createWorldExperiencePlaceAssistantApply**](WorldsStudioAPI.md#createworldexperienceplaceassistantapply) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/assistant/apply | Apply accepted Assistant changes to the place as one co-editing batch (activity via assistant, revertible). Re-checked against the place as it is now.
[**createWorldExperiencePlaceStudioEdit**](WorldsStudioAPI.md#createworldexperienceplacestudioedit) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/edits | Apply set / insert / move / delete steps by path as ONE batch through Team Create (live in every open Studio, one revertible activity entry). All-or-nothing: any bad step refuses the batch with every problem listed.
[**createWorldExperiencePlaceStudioInsertAsset**](WorldsStudioAPI.md#createworldexperienceplacestudioinsertasset) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/insert-asset | Insert a Toolbox asset under a path (default Workspace; ServerScripts for scripts). Paid assets need the experience owner&#39;s licence.
[**createWorldExperiencePlaceStudioPlaytest**](WorldsStudioAPI.md#createworldexperienceplacestudioplaytest) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/playtest | Cloud test: flush the session, freeze a private test version and start a fleet server for it. 201 ready (ticket) or 202 starting; outputCursor reads only this test&#39;s Output.
[**createWorldExperiencePlaceStudioPlaytestStop**](WorldsStudioAPI.md#createworldexperienceplacestudioplayteststop) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/playtest/stop | Stop this place&#39;s cloud-test servers now.
[**createWorldExperiencePlaceStudioPublish**](WorldsStudioAPI.md#createworldexperienceplacestudiopublish) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/publish | Prepare a publish from the live session: checks, details, rating answers, access. Never submits and never acknowledges the money review — the person does (or submit_worlds_publish).
[**createWorldExperiencePlaceStudioScriptCommit**](WorldsStudioAPI.md#createworldexperienceplacestudioscriptcommit) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/script/commit | Commit your draft with a three-way merge onto the script as it is now (collaborators&#39; edits kept). 409 merge_conflict carries merged text with conflict blocks and theirs.
[**deleteWorldExperiencePlaceStudioScript**](WorldsStudioAPI.md#deleteworldexperienceplacestudioscript) | **DELETE** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/script | Discard your draft of a script.
[**getWorldAssistantStatus**](WorldsStudioAPI.md#getworldassistantstatus) | **GET** /v1/worlds/assistant/status | Studio Assistant status: whether Crossly&#39;s model key is configured, whether you have your own AI key, and your plan allowance (asks left today, budget left this month).
[**getWorldExperiencePlaceStudioFind**](WorldsStudioAPI.md#getworldexperienceplacestudiofind) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/find | Find instances by name (contains), exact class and/or tag.
[**getWorldExperiencePlaceStudioInstance**](WorldsStudioAPI.md#getworldexperienceplacestudioinstance) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/instance | One instance by path (or session id): class, properties, attributes, tags, children. Script source is read with …/studio/script.
[**getWorldExperiencePlaceStudioOutput**](WorldsStudioAPI.md#getworldexperienceplacestudiooutput) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/output | Server Output (print, warnings, errors) after a cursor: every line of cloud tests, errors of live servers (scope&#x3D;all). Kept 24 hours.
[**getWorldExperiencePlaceStudioProblem**](WorldsStudioAPI.md#getworldexperienceplacestudioproblem) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/problems | The publish checks on the place as the live session holds it: script lint, budgets per device, settings, shop listings, Toolbox licences. publishable &#x3D; no errors.
[**getWorldExperiencePlaceStudioScript**](WorldsStudioAPI.md#getworldexperienceplacestudioscript) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/script | A script&#39;s current source, your draft of it (if any, with whether someone committed since) and the lint of each.
[**getWorldExperiencePlaceStudioSnapshot**](WorldsStudioAPI.md#getworldexperienceplacestudiosnapshot) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/snapshot | A plan (top) or front drawing of the parts under a path as SVG, with bounds, spawns and unanchored parts that will fall.
[**getWorldExperiencePlaceStudioTree**](WorldsStudioAPI.md#getworldexperienceplacestudiotree) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/tree | The live instance tree (what every open Studio shows) by dotted path, depth levels down (default 3, max 12).
[**getWorldStudioClass**](WorldsStudioAPI.md#getworldstudioclass) | **GET** /v1/worlds/studio/classes | The engine&#39;s class table: insertable classes, services, and for ?name&#x3D; one class with every property, its type, default and the exact JSON a place (and a studio edit) takes.
[**listWorldExperienceAssets**](WorldsStudioAPI.md#listworldexperienceassets) | **GET** /v1/worlds/experiences/{experienceId}/assets | Meshes imported into this experience, newest first: paths, phone LOD, bounds, hull size, budget report, moderation (pending until a reviewed publish uses them) and a URL you can load now.
[**updateWorldExperiencePlaceStudioScript**](WorldsStudioAPI.md#updateworldexperienceplacestudioscript) | **PUT** /v1/worlds/experiences/{experienceId}/places/{placeId}/studio/script | Save your draft of a script (the place does not change until you commit). Returns lint and the diff from the current source.


# **createWorldExperienceAssetMesh**
```swift
    open class func createWorldExperienceAssetMesh(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceAssetMeshResponse?, _ error: Error?) -> Void)
```

Import a .glb (base64) as a MeshPart: safety parse + budgets, stored on the Crossly CDN, a phone LOD over 5k triangles, collision Box or convex Hull. Returns the asset and the MeshPart node; with placeId it is inserted into that place through its co-editing session.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Import a .glb (base64) as a MeshPart: safety parse + budgets, stored on the Crossly CDN, a phone LOD over 5k triangles, collision Box or convex Hull. Returns the asset and the MeshPart node; with placeId it is inserted into that place through its co-editing session.
WorldsStudioAPI.createWorldExperienceAssetMesh(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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

**CreateWorldExperienceAssetMeshResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceAssetMeshCheck**
```swift
    open class func createWorldExperienceAssetMeshCheck(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceAssetMeshCheckResponse?, _ error: Error?) -> Void)
```

Check a .glb (base64) for import without storing it: the budget report per device, plain-English errors with a fix list, whether a phone LOD will be made, mesh bounds and hull points.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Check a .glb (base64) for import without storing it: the budget report per device, plain-English errors with a fix list, whether a phone LOD will be made, mesh bounds and hull points.
WorldsStudioAPI.createWorldExperienceAssetMeshCheck(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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

**CreateWorldExperienceAssetMeshCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceAssistant**
```swift
    open class func createWorldExperiencePlaceAssistant(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceAssistantResponse?, _ error: Error?) -> Void)
```

Ask the Studio Assistant (mode explain | edit | build): returns an explanation and a proposed change set (scripts, inserts, edits) checked against your role and linted. Nothing is applied.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Ask the Studio Assistant (mode explain | edit | build): returns an explanation and a proposed change set (scripts, inserts, edits) checked against your role and linted. Nothing is applied.
WorldsStudioAPI.createWorldExperiencePlaceAssistant(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**CreateWorldExperiencePlaceAssistantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceAssistantApply**
```swift
    open class func createWorldExperiencePlaceAssistantApply(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceAssistantApplyResponse?, _ error: Error?) -> Void)
```

Apply accepted Assistant changes to the place as one co-editing batch (activity via assistant, revertible). Re-checked against the place as it is now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Apply accepted Assistant changes to the place as one co-editing batch (activity via assistant, revertible). Re-checked against the place as it is now.
WorldsStudioAPI.createWorldExperiencePlaceAssistantApply(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**CreateWorldExperiencePlaceAssistantApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceStudioEdit**
```swift
    open class func createWorldExperiencePlaceStudioEdit(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceStudioEditResponse?, _ error: Error?) -> Void)
```

Apply set / insert / move / delete steps by path as ONE batch through Team Create (live in every open Studio, one revertible activity entry). All-or-nothing: any bad step refuses the batch with every problem listed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Apply set / insert / move / delete steps by path as ONE batch through Team Create (live in every open Studio, one revertible activity entry). All-or-nothing: any bad step refuses the batch with every problem listed.
WorldsStudioAPI.createWorldExperiencePlaceStudioEdit(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**CreateWorldExperiencePlaceStudioEditResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceStudioInsertAsset**
```swift
    open class func createWorldExperiencePlaceStudioInsertAsset(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceStudioInsertAssetResponse?, _ error: Error?) -> Void)
```

Insert a Toolbox asset under a path (default Workspace; ServerScripts for scripts). Paid assets need the experience owner's licence.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Insert a Toolbox asset under a path (default Workspace; ServerScripts for scripts). Paid assets need the experience owner's licence.
WorldsStudioAPI.createWorldExperiencePlaceStudioInsertAsset(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**CreateWorldExperiencePlaceStudioInsertAssetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceStudioPlaytest**
```swift
    open class func createWorldExperiencePlaceStudioPlaytest(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceStudioPlaytestResponse?, _ error: Error?) -> Void)
```

Cloud test: flush the session, freeze a private test version and start a fleet server for it. 201 ready (ticket) or 202 starting; outputCursor reads only this test's Output.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Cloud test: flush the session, freeze a private test version and start a fleet server for it. 201 ready (ticket) or 202 starting; outputCursor reads only this test's Output.
WorldsStudioAPI.createWorldExperiencePlaceStudioPlaytest(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**CreateWorldExperiencePlaceStudioPlaytestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceStudioPlaytestStop**
```swift
    open class func createWorldExperiencePlaceStudioPlaytestStop(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceStudioPlaytestStopResponse?, _ error: Error?) -> Void)
```

Stop this place's cloud-test servers now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Stop this place's cloud-test servers now.
WorldsStudioAPI.createWorldExperiencePlaceStudioPlaytestStop(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**CreateWorldExperiencePlaceStudioPlaytestStopResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceStudioPublish**
```swift
    open class func createWorldExperiencePlaceStudioPublish(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceStudioPublishResponse?, _ error: Error?) -> Void)
```

Prepare a publish from the live session: checks, details, rating answers, access. Never submits and never acknowledges the money review — the person does (or submit_worlds_publish).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Prepare a publish from the live session: checks, details, rating answers, access. Never submits and never acknowledges the money review — the person does (or submit_worlds_publish).
WorldsStudioAPI.createWorldExperiencePlaceStudioPublish(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**CreateWorldExperiencePlaceStudioPublishResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceStudioScriptCommit**
```swift
    open class func createWorldExperiencePlaceStudioScriptCommit(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceStudioScriptCommitResponse?, _ error: Error?) -> Void)
```

Commit your draft with a three-way merge onto the script as it is now (collaborators' edits kept). 409 merge_conflict carries merged text with conflict blocks and theirs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Commit your draft with a three-way merge onto the script as it is now (collaborators' edits kept). 409 merge_conflict carries merged text with conflict blocks and theirs.
WorldsStudioAPI.createWorldExperiencePlaceStudioScriptCommit(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**CreateWorldExperiencePlaceStudioScriptCommitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperiencePlaceStudioScript**
```swift
    open class func deleteWorldExperiencePlaceStudioScript(experienceId: String, placeId: String, completion: @escaping (_ data: DeleteWorldExperiencePlaceCollabScriptResponse?, _ error: Error?) -> Void)
```

Discard your draft of a script.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Discard your draft of a script.
WorldsStudioAPI.deleteWorldExperiencePlaceStudioScript(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**DeleteWorldExperiencePlaceCollabScriptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldAssistantStatus**
```swift
    open class func getWorldAssistantStatus(completion: @escaping (_ data: GetWorldAssistantStatusResponse?, _ error: Error?) -> Void)
```

Studio Assistant status: whether Crossly's model key is configured, whether you have your own AI key, and your plan allowance (asks left today, budget left this month).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Studio Assistant status: whether Crossly's model key is configured, whether you have your own AI key, and your plan allowance (asks left today, budget left this month).
WorldsStudioAPI.getWorldAssistantStatus() { (response, error) in
    guard error == nil else {
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

**GetWorldAssistantStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperiencePlaceStudioFind**
```swift
    open class func getWorldExperiencePlaceStudioFind(experienceId: String, placeId: String, completion: @escaping (_ data: GetWorldExperiencePlaceStudioFindResponse?, _ error: Error?) -> Void)
```

Find instances by name (contains), exact class and/or tag.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Find instances by name (contains), exact class and/or tag.
WorldsStudioAPI.getWorldExperiencePlaceStudioFind(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**GetWorldExperiencePlaceStudioFindResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperiencePlaceStudioInstance**
```swift
    open class func getWorldExperiencePlaceStudioInstance(experienceId: String, placeId: String, completion: @escaping (_ data: GetWorldExperiencePlaceStudioInstanceResponse?, _ error: Error?) -> Void)
```

One instance by path (or session id): class, properties, attributes, tags, children. Script source is read with …/studio/script.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// One instance by path (or session id): class, properties, attributes, tags, children. Script source is read with …/studio/script.
WorldsStudioAPI.getWorldExperiencePlaceStudioInstance(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**GetWorldExperiencePlaceStudioInstanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperiencePlaceStudioOutput**
```swift
    open class func getWorldExperiencePlaceStudioOutput(experienceId: String, placeId: String, completion: @escaping (_ data: GetWorldExperiencePlaceStudioOutputResponse?, _ error: Error?) -> Void)
```

Server Output (print, warnings, errors) after a cursor: every line of cloud tests, errors of live servers (scope=all). Kept 24 hours.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Server Output (print, warnings, errors) after a cursor: every line of cloud tests, errors of live servers (scope=all). Kept 24 hours.
WorldsStudioAPI.getWorldExperiencePlaceStudioOutput(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**GetWorldExperiencePlaceStudioOutputResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperiencePlaceStudioProblem**
```swift
    open class func getWorldExperiencePlaceStudioProblem(experienceId: String, placeId: String, completion: @escaping (_ data: GetWorldExperiencePlaceStudioProblemResponse?, _ error: Error?) -> Void)
```

The publish checks on the place as the live session holds it: script lint, budgets per device, settings, shop listings, Toolbox licences. publishable = no errors.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// The publish checks on the place as the live session holds it: script lint, budgets per device, settings, shop listings, Toolbox licences. publishable = no errors.
WorldsStudioAPI.getWorldExperiencePlaceStudioProblem(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**GetWorldExperiencePlaceStudioProblemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperiencePlaceStudioScript**
```swift
    open class func getWorldExperiencePlaceStudioScript(experienceId: String, placeId: String, completion: @escaping (_ data: GetWorldExperiencePlaceStudioScriptResponse?, _ error: Error?) -> Void)
```

A script's current source, your draft of it (if any, with whether someone committed since) and the lint of each.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// A script's current source, your draft of it (if any, with whether someone committed since) and the lint of each.
WorldsStudioAPI.getWorldExperiencePlaceStudioScript(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**GetWorldExperiencePlaceStudioScriptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperiencePlaceStudioSnapshot**
```swift
    open class func getWorldExperiencePlaceStudioSnapshot(experienceId: String, placeId: String, completion: @escaping (_ data: GetWorldExperiencePlaceStudioSnapshotResponse?, _ error: Error?) -> Void)
```

A plan (top) or front drawing of the parts under a path as SVG, with bounds, spawns and unanchored parts that will fall.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// A plan (top) or front drawing of the parts under a path as SVG, with bounds, spawns and unanchored parts that will fall.
WorldsStudioAPI.getWorldExperiencePlaceStudioSnapshot(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**GetWorldExperiencePlaceStudioSnapshotResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperiencePlaceStudioTree**
```swift
    open class func getWorldExperiencePlaceStudioTree(experienceId: String, placeId: String, completion: @escaping (_ data: GetWorldExperiencePlaceStudioTreeResponse?, _ error: Error?) -> Void)
```

The live instance tree (what every open Studio shows) by dotted path, depth levels down (default 3, max 12).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// The live instance tree (what every open Studio shows) by dotted path, depth levels down (default 3, max 12).
WorldsStudioAPI.getWorldExperiencePlaceStudioTree(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**GetWorldExperiencePlaceStudioTreeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldStudioClass**
```swift
    open class func getWorldStudioClass(completion: @escaping (_ data: GetWorldStudioClassResponse?, _ error: Error?) -> Void)
```

The engine's class table: insertable classes, services, and for ?name= one class with every property, its type, default and the exact JSON a place (and a studio edit) takes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The engine's class table: insertable classes, services, and for ?name= one class with every property, its type, default and the exact JSON a place (and a studio edit) takes.
WorldsStudioAPI.getWorldStudioClass() { (response, error) in
    guard error == nil else {
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

**GetWorldStudioClassResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceAssets**
```swift
    open class func listWorldExperienceAssets(experienceId: String, completion: @escaping (_ data: ListWorldExperienceAssetsResponse?, _ error: Error?) -> Void)
```

Meshes imported into this experience, newest first: paths, phone LOD, bounds, hull size, budget report, moderation (pending until a reviewed publish uses them) and a URL you can load now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Meshes imported into this experience, newest first: paths, phone LOD, bounds, hull size, budget report, moderation (pending until a reviewed publish uses them) and a URL you can load now.
WorldsStudioAPI.listWorldExperienceAssets(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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

**ListWorldExperienceAssetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperiencePlaceStudioScript**
```swift
    open class func updateWorldExperiencePlaceStudioScript(experienceId: String, placeId: String, completion: @escaping (_ data: UpdateWorldExperiencePlaceStudioScriptResponse?, _ error: Error?) -> Void)
```

Save your draft of a script (the place does not change until you commit). Returns lint and the diff from the current source.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Save your draft of a script (the place does not change until you commit). Returns lint and the diff from the current source.
WorldsStudioAPI.updateWorldExperiencePlaceStudioScript(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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
 **placeId** | **String** |  | 

### Return type

**UpdateWorldExperiencePlaceStudioScriptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

