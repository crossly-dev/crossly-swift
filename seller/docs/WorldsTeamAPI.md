# WorldsTeamAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorldCollaborationAccept**](WorldsTeamAPI.md#createworldcollaborationaccept) | **POST** /v1/worlds/collaborations/{experienceId}/accept | Accept an invitation.
[**createWorldCollaborationDecline**](WorldsTeamAPI.md#createworldcollaborationdecline) | **POST** /v1/worlds/collaborations/{experienceId}/decline | Decline an invitation.
[**createWorldExperienceActivityRevert**](WorldsTeamAPI.md#createworldexperienceactivityrevert) | **POST** /v1/worlds/experiences/{experienceId}/activity/{activityId}/revert | Revert an instance change: its undo is applied as a new edit by you; anything changed since by others is left alone.
[**createWorldExperienceCollaborator**](WorldsTeamAPI.md#createworldexperiencecollaborator) | **POST** /v1/worlds/experiences/{experienceId}/collaborators | Invite a Crossly handle with a role. Owner or admin; only the owner makes admins. Counts against the owner&#39;s plan cap.
[**createWorldExperiencePlaceCollabOp**](WorldsTeamAPI.md#createworldexperienceplacecollabop) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/ops | Apply a batch of ops (insert, delete, move, prop, attr, name, tags, world) in server order. Each op is checked against your role; a retried batch id is answered, not re-applied.
[**createWorldExperiencePlaceCollabSave**](WorldsTeamAPI.md#createworldexperienceplacecollabsave) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/save | Write the session into the place draft now (publishing and cloud tests do this themselves).
[**createWorldExperiencePlaceCollabScriptCommit**](WorldsTeamAPI.md#createworldexperienceplacecollabscriptcommit) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/scripts/{nodeId}/commit | Commit your draft with a three-way merge. 409 merge_conflict carries the merged text with conflict blocks and the current source.
[**deleteWorldExperienceCollaborator**](WorldsTeamAPI.md#deleteworldexperiencecollaborator) | **DELETE** /v1/worlds/experiences/{experienceId}/collaborators/{userId} | Remove a collaborator, or leave (your own user id). Their revenue share returns to the owner from next month.
[**deleteWorldExperiencePlaceCollabScript**](WorldsTeamAPI.md#deleteworldexperienceplacecollabscript) | **DELETE** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/scripts/{nodeId} | Discard your draft of a script.
[**getWorldExperiencePlaceCollab**](WorldsTeamAPI.md#getworldexperienceplacecollab) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab | The live co-editing document of a place (node ids every editor shares), its op sequence and your role.
[**getWorldExperiencePlaceCollabOp**](WorldsTeamAPI.md#getworldexperienceplacecollabop) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/ops | Ops after a sequence number, grouped by batch. 409 resync when they are no longer kept: reload the session.
[**getWorldExperienceSplit**](WorldsTeamAPI.md#getworldexperiencesplit) | **GET** /v1/worlds/experiences/{experienceId}/splits | Revenue split of the creator share: current, scheduled, history.
[**getWorldExperienceTeam**](WorldsTeamAPI.md#getworldexperienceteam) | **GET** /v1/worlds/experiences/{experienceId}/team | The team: owner, collaborators with roles (owner, admin, editor, scripter, builder, tester, analyst), your role and permissions, the plan cap.
[**listWorldCollaborations**](WorldsTeamAPI.md#listworldcollaborations) | **GET** /v1/worlds/collaborations | Experiences you are invited to or work on, with your role.
[**listWorldExperienceActivity**](WorldsTeamAPI.md#listworldexperienceactivity) | **GET** /v1/worlds/experiences/{experienceId}/activity | Activity history, newest first: who changed what, when, from where (studio, api, mcp, cli); instance changes are revertible.
[**listWorldExperiencePlaceCollabScripts**](WorldsTeamAPI.md#listworldexperienceplacecollabscripts) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/scripts | Your script drafts in this place, with whether someone committed since you started.
[**updateWorldExperienceCollaborator**](WorldsTeamAPI.md#updateworldexperiencecollaborator) | **PATCH** /v1/worlds/experiences/{experienceId}/collaborators/{userId} | Change a collaborator&#39;s role.
[**updateWorldExperiencePlaceCollabScript**](WorldsTeamAPI.md#updateworldexperienceplacecollabscript) | **PUT** /v1/worlds/experiences/{experienceId}/places/{placeId}/collab/scripts/{nodeId} | Save your own draft of a script (needs edit scripts).
[**updateWorldExperienceSplit**](WorldsTeamAPI.md#updateworldexperiencesplit) | **PUT** /v1/worlds/experiences/{experienceId}/splits | Owner only: split the creator share (70% of net) in basis points summing to 10000. Takes effect the 1st of next month; every party is notified. The 70% total never changes.


# **createWorldCollaborationAccept**
```swift
    open class func createWorldCollaborationAccept(experienceId: String, completion: @escaping (_ data: CreateWorldCollaborationAcceptResponse?, _ error: Error?) -> Void)
```

Accept an invitation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Accept an invitation.
WorldsTeamAPI.createWorldCollaborationAccept(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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

**CreateWorldCollaborationAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldCollaborationDecline**
```swift
    open class func createWorldCollaborationDecline(experienceId: String, completion: @escaping (_ data: CreateWorldCollaborationDeclineResponse?, _ error: Error?) -> Void)
```

Decline an invitation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Decline an invitation.
WorldsTeamAPI.createWorldCollaborationDecline(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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

**CreateWorldCollaborationDeclineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceActivityRevert**
```swift
    open class func createWorldExperienceActivityRevert(experienceId: String, activityId: String, completion: @escaping (_ data: CreateWorldExperienceActivityRevertResponse?, _ error: Error?) -> Void)
```

Revert an instance change: its undo is applied as a new edit by you; anything changed since by others is left alone.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let activityId = "activityId_example" // String | 

// Revert an instance change: its undo is applied as a new edit by you; anything changed since by others is left alone.
WorldsTeamAPI.createWorldExperienceActivityRevert(experienceId: experienceId, activityId: activityId) { (response, error) in
    guard error == nil else {
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
 **activityId** | **String** |  | 

### Return type

**CreateWorldExperienceActivityRevertResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceCollaborator**
```swift
    open class func createWorldExperienceCollaborator(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceCollaboratorResponse?, _ error: Error?) -> Void)
```

Invite a Crossly handle with a role. Owner or admin; only the owner makes admins. Counts against the owner's plan cap.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Invite a Crossly handle with a role. Owner or admin; only the owner makes admins. Counts against the owner's plan cap.
WorldsTeamAPI.createWorldExperienceCollaborator(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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

**CreateWorldExperienceCollaboratorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceCollabOp**
```swift
    open class func createWorldExperiencePlaceCollabOp(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceCollabOpResponse?, _ error: Error?) -> Void)
```

Apply a batch of ops (insert, delete, move, prop, attr, name, tags, world) in server order. Each op is checked against your role; a retried batch id is answered, not re-applied.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Apply a batch of ops (insert, delete, move, prop, attr, name, tags, world) in server order. Each op is checked against your role; a retried batch id is answered, not re-applied.
WorldsTeamAPI.createWorldExperiencePlaceCollabOp(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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

**CreateWorldExperiencePlaceCollabOpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceCollabSave**
```swift
    open class func createWorldExperiencePlaceCollabSave(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceCollabSaveResponse?, _ error: Error?) -> Void)
```

Write the session into the place draft now (publishing and cloud tests do this themselves).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Write the session into the place draft now (publishing and cloud tests do this themselves).
WorldsTeamAPI.createWorldExperiencePlaceCollabSave(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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

**CreateWorldExperiencePlaceCollabSaveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlaceCollabScriptCommit**
```swift
    open class func createWorldExperiencePlaceCollabScriptCommit(experienceId: String, placeId: String, nodeId: String, completion: @escaping (_ data: CreateWorldExperiencePlaceCollabScriptCommitResponse?, _ error: Error?) -> Void)
```

Commit your draft with a three-way merge. 409 merge_conflict carries the merged text with conflict blocks and the current source.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 
let nodeId = "nodeId_example" // String | 

// Commit your draft with a three-way merge. 409 merge_conflict carries the merged text with conflict blocks and the current source.
WorldsTeamAPI.createWorldExperiencePlaceCollabScriptCommit(experienceId: experienceId, placeId: placeId, nodeId: nodeId) { (response, error) in
    guard error == nil else {
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
 **nodeId** | **String** |  | 

### Return type

**CreateWorldExperiencePlaceCollabScriptCommitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperienceCollaborator**
```swift
    open class func deleteWorldExperienceCollaborator(experienceId: String, userId: String, completion: @escaping (_ data: DeleteSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Remove a collaborator, or leave (your own user id). Their revenue share returns to the owner from next month.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let userId = "userId_example" // String | 

// Remove a collaborator, or leave (your own user id). Their revenue share returns to the owner from next month.
WorldsTeamAPI.deleteWorldExperienceCollaborator(experienceId: experienceId, userId: userId) { (response, error) in
    guard error == nil else {
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
 **userId** | **String** |  | 

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperiencePlaceCollabScript**
```swift
    open class func deleteWorldExperiencePlaceCollabScript(experienceId: String, placeId: String, nodeId: String, completion: @escaping (_ data: DeleteWorldExperiencePlaceCollabScriptResponse?, _ error: Error?) -> Void)
```

Discard your draft of a script.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 
let nodeId = "nodeId_example" // String | 

// Discard your draft of a script.
WorldsTeamAPI.deleteWorldExperiencePlaceCollabScript(experienceId: experienceId, placeId: placeId, nodeId: nodeId) { (response, error) in
    guard error == nil else {
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
 **nodeId** | **String** |  | 

### Return type

**DeleteWorldExperiencePlaceCollabScriptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperiencePlaceCollab**
```swift
    open class func getWorldExperiencePlaceCollab(experienceId: String, placeId: String, completion: @escaping (_ data: GetWorldExperiencePlaceCollabResponse?, _ error: Error?) -> Void)
```

The live co-editing document of a place (node ids every editor shares), its op sequence and your role.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// The live co-editing document of a place (node ids every editor shares), its op sequence and your role.
WorldsTeamAPI.getWorldExperiencePlaceCollab(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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

**GetWorldExperiencePlaceCollabResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperiencePlaceCollabOp**
```swift
    open class func getWorldExperiencePlaceCollabOp(experienceId: String, placeId: String, completion: @escaping (_ data: GetWorldExperiencePlaceCollabOpResponse?, _ error: Error?) -> Void)
```

Ops after a sequence number, grouped by batch. 409 resync when they are no longer kept: reload the session.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Ops after a sequence number, grouped by batch. 409 resync when they are no longer kept: reload the session.
WorldsTeamAPI.getWorldExperiencePlaceCollabOp(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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

**GetWorldExperiencePlaceCollabOpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceSplit**
```swift
    open class func getWorldExperienceSplit(experienceId: String, completion: @escaping (_ data: GetWorldExperienceSplitResponse?, _ error: Error?) -> Void)
```

Revenue split of the creator share: current, scheduled, history.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Revenue split of the creator share: current, scheduled, history.
WorldsTeamAPI.getWorldExperienceSplit(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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

**GetWorldExperienceSplitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceTeam**
```swift
    open class func getWorldExperienceTeam(experienceId: String, completion: @escaping (_ data: GetWorldExperienceTeamResponse?, _ error: Error?) -> Void)
```

The team: owner, collaborators with roles (owner, admin, editor, scripter, builder, tester, analyst), your role and permissions, the plan cap.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The team: owner, collaborators with roles (owner, admin, editor, scripter, builder, tester, analyst), your role and permissions, the plan cap.
WorldsTeamAPI.getWorldExperienceTeam(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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

**GetWorldExperienceTeamResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldCollaborations**
```swift
    open class func listWorldCollaborations(completion: @escaping (_ data: ListWorldCollaborationsResponse?, _ error: Error?) -> Void)
```

Experiences you are invited to or work on, with your role.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Experiences you are invited to or work on, with your role.
WorldsTeamAPI.listWorldCollaborations() { (response, error) in
    guard error == nil else {
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

**ListWorldCollaborationsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceActivity**
```swift
    open class func listWorldExperienceActivity(experienceId: String, completion: @escaping (_ data: ListWorldExperienceActivityResponse?, _ error: Error?) -> Void)
```

Activity history, newest first: who changed what, when, from where (studio, api, mcp, cli); instance changes are revertible.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Activity history, newest first: who changed what, when, from where (studio, api, mcp, cli); instance changes are revertible.
WorldsTeamAPI.listWorldExperienceActivity(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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

**ListWorldExperienceActivityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperiencePlaceCollabScripts**
```swift
    open class func listWorldExperiencePlaceCollabScripts(experienceId: String, placeId: String, completion: @escaping (_ data: ListWorldExperiencePlaceCollabScriptsResponse?, _ error: Error?) -> Void)
```

Your script drafts in this place, with whether someone committed since you started.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Your script drafts in this place, with whether someone committed since you started.
WorldsTeamAPI.listWorldExperiencePlaceCollabScripts(experienceId: experienceId, placeId: placeId) { (response, error) in
    guard error == nil else {
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

**ListWorldExperiencePlaceCollabScriptsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceCollaborator**
```swift
    open class func updateWorldExperienceCollaborator(experienceId: String, userId: String, completion: @escaping (_ data: CreateWorldExperienceCollaboratorResponse?, _ error: Error?) -> Void)
```

Change a collaborator's role.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let userId = "userId_example" // String | 

// Change a collaborator's role.
WorldsTeamAPI.updateWorldExperienceCollaborator(experienceId: experienceId, userId: userId) { (response, error) in
    guard error == nil else {
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
 **userId** | **String** |  | 

### Return type

**CreateWorldExperienceCollaboratorResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperiencePlaceCollabScript**
```swift
    open class func updateWorldExperiencePlaceCollabScript(experienceId: String, placeId: String, nodeId: String, completion: @escaping (_ data: UpdateWorldExperiencePlaceCollabScriptResponse?, _ error: Error?) -> Void)
```

Save your own draft of a script (needs edit scripts).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 
let nodeId = "nodeId_example" // String | 

// Save your own draft of a script (needs edit scripts).
WorldsTeamAPI.updateWorldExperiencePlaceCollabScript(experienceId: experienceId, placeId: placeId, nodeId: nodeId) { (response, error) in
    guard error == nil else {
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
 **nodeId** | **String** |  | 

### Return type

**UpdateWorldExperiencePlaceCollabScriptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceSplit**
```swift
    open class func updateWorldExperienceSplit(experienceId: String, completion: @escaping (_ data: GetWorldExperienceSplitResponse?, _ error: Error?) -> Void)
```

Owner only: split the creator share (70% of net) in basis points summing to 10000. Takes effect the 1st of next month; every party is notified. The 70% total never changes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Owner only: split the creator share (70% of net) in basis points summing to 10000. Takes effect the 1st of next month; every party is notified. The 70% total never changes.
WorldsTeamAPI.updateWorldExperienceSplit(experienceId: experienceId) { (response, error) in
    guard error == nil else {
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

**GetWorldExperienceSplitResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

