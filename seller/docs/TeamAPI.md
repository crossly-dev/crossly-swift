# TeamAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTeamAccept**](TeamAPI.md#createteamaccept) | **POST** /v1/team/accept | Accept a pending team invitation by raw token.
[**createTeamInvite**](TeamAPI.md#createteaminvite) | **POST** /v1/team/invite | Mint a team invitation; returns the one-time accept URL.
[**createTeamLeave**](TeamAPI.md#createteamleave) | **POST** /v1/team/leave | Leave every team this user is currently a member of.
[**createTeamRevoke**](TeamAPI.md#createteamrevoke) | **POST** /v1/team/revoke | Revoke a pending invite OR an active team member.
[**getTeam**](TeamAPI.md#getteam) | **GET** /v1/team | List pending team invitations + active members.
[**updateTeam**](TeamAPI.md#updateteam) | **PATCH** /v1/team/{memberId} | Update a team member&#39;s scopes (owner only).


# **createTeamAccept**
```swift
    open class func createTeamAccept(completion: @escaping (_ data: CreateTeamAcceptResponse?, _ error: Error?) -> Void)
```

Accept a pending team invitation by raw token.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Accept a pending team invitation by raw token.
TeamAPI.createTeamAccept() { (response, error) in
    guard error == nil else {
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

[**CreateTeamAcceptResponse**](CreateTeamAcceptResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTeamInvite**
```swift
    open class func createTeamInvite(completion: @escaping (_ data: CreateTeamInviteResponse?, _ error: Error?) -> Void)
```

Mint a team invitation; returns the one-time accept URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Mint a team invitation; returns the one-time accept URL.
TeamAPI.createTeamInvite() { (response, error) in
    guard error == nil else {
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

[**CreateTeamInviteResponse**](CreateTeamInviteResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTeamLeave**
```swift
    open class func createTeamLeave(completion: @escaping (_ data: CreateTeamLeaveResponse?, _ error: Error?) -> Void)
```

Leave every team this user is currently a member of.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Leave every team this user is currently a member of.
TeamAPI.createTeamLeave() { (response, error) in
    guard error == nil else {
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

[**CreateTeamLeaveResponse**](CreateTeamLeaveResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTeamRevoke**
```swift
    open class func createTeamRevoke(completion: @escaping (_ data: CreateTeamRevokeResponse?, _ error: Error?) -> Void)
```

Revoke a pending invite OR an active team member.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Revoke a pending invite OR an active team member.
TeamAPI.createTeamRevoke() { (response, error) in
    guard error == nil else {
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

[**CreateTeamRevokeResponse**](CreateTeamRevokeResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeam**
```swift
    open class func getTeam(completion: @escaping (_ data: GetTeamResponse?, _ error: Error?) -> Void)
```

List pending team invitations + active members.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List pending team invitations + active members.
TeamAPI.getTeam() { (response, error) in
    guard error == nil else {
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

[**GetTeamResponse**](GetTeamResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTeam**
```swift
    open class func updateTeam(memberId: UUID, completion: @escaping (_ data: UpdateTeamResponse?, _ error: Error?) -> Void)
```

Update a team member's scopes (owner only).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let memberId = 987 // UUID | 

// Update a team member's scopes (owner only).
TeamAPI.updateTeam(memberId: memberId) { (response, error) in
    guard error == nil else {
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
 **memberId** | **UUID** |  | 

### Return type

[**UpdateTeamResponse**](UpdateTeamResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

