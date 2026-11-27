# WorldsPackagesAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorldExperiencePlacePackage**](WorldsPackagesAPI.md#createworldexperienceplacepackage) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/packages | Insert a copy of a package (default: the newest version, auto-update on).
[**createWorldExperiencePlacePackageUpdate**](WorldsPackagesAPI.md#createworldexperienceplacepackageupdate) | **POST** /v1/worlds/experiences/{experienceId}/places/{placeId}/packages/{nodeId}/update | Update a copy to a version (default newest). A copy edited in the place needs force: true (its edits are replaced).
[**createWorldPackage**](WorldsPackagesAPI.md#createworldpackage) | **POST** /v1/worlds/packages | Create a package (v1) from one node (place JSON) or from a node in a place — which then becomes copy v1, auto-updating.
[**createWorldPackageToolbox**](WorldsPackagesAPI.md#createworldpackagetoolbox) | **POST** /v1/worlds/packages/{packageId}/toolbox | List the latest version in the Toolbox as an asset of kind package (Toolbox review and pricing rules apply).
[**createWorldPackageVersion**](WorldsPackagesAPI.md#createworldpackageversion) | **POST** /v1/worlds/packages/{packageId}/versions | Publish a new version; every auto-updating, unmodified copy in your places is updated through its co-editing session. Returns what happened per place.
[**deleteWorldPackage**](WorldsPackagesAPI.md#deleteworldpackage) | **DELETE** /v1/worlds/packages/{packageId} | Archive a package. Copies in places keep working; they just stop receiving updates.
[**getWorldPackage**](WorldsPackagesAPI.md#getworldpackage) | **GET** /v1/worlds/packages/{packageId} | A package with its versions.
[**getWorldPackageVersion**](WorldsPackagesAPI.md#getworldpackageversion) | **GET** /v1/worlds/packages/{packageId}/versions/{number} | One version, with its payload (one root node in place JSON).
[**listWorldExperiencePlacePackages**](WorldsPackagesAPI.md#listworldexperienceplacepackages) | **GET** /v1/worlds/experiences/{experienceId}/places/{placeId}/packages | Package copies in a place: version, newest version, modified, auto-update.
[**listWorldPackages**](WorldsPackagesAPI.md#listworldpackages) | **GET** /v1/worlds/packages | Your package library: reusable models and modules, newest first, with how many places hold copies.
[**updateWorldExperiencePlacePackage**](WorldsPackagesAPI.md#updateworldexperienceplacepackage) | **PATCH** /v1/worlds/experiences/{experienceId}/places/{placeId}/packages/{nodeId} | Turn auto-update on or off for one copy.
[**updateWorldPackage**](WorldsPackagesAPI.md#updateworldpackage) | **PATCH** /v1/worlds/packages/{packageId} | Rename a package or change its description.


# **createWorldExperiencePlacePackage**
```swift
    open class func createWorldExperiencePlacePackage(experienceId: String, placeId: String, completion: @escaping (_ data: CreateWorldExperiencePlacePackageResponse?, _ error: Error?) -> Void)
```

Insert a copy of a package (default: the newest version, auto-update on).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Insert a copy of a package (default: the newest version, auto-update on).
WorldsPackagesAPI.createWorldExperiencePlacePackage(experienceId: experienceId, placeId: placeId) { (response, error) in
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

**CreateWorldExperiencePlacePackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperiencePlacePackageUpdate**
```swift
    open class func createWorldExperiencePlacePackageUpdate(experienceId: String, placeId: String, nodeId: String, completion: @escaping (_ data: CreateWorldExperiencePlacePackageUpdateResponse?, _ error: Error?) -> Void)
```

Update a copy to a version (default newest). A copy edited in the place needs force: true (its edits are replaced).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 
let nodeId = "nodeId_example" // String | 

// Update a copy to a version (default newest). A copy edited in the place needs force: true (its edits are replaced).
WorldsPackagesAPI.createWorldExperiencePlacePackageUpdate(experienceId: experienceId, placeId: placeId, nodeId: nodeId) { (response, error) in
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

**CreateWorldExperiencePlacePackageUpdateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPackage**
```swift
    open class func createWorldPackage(completion: @escaping (_ data: GetWorldPackageResponse?, _ error: Error?) -> Void)
```

Create a package (v1) from one node (place JSON) or from a node in a place — which then becomes copy v1, auto-updating.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a package (v1) from one node (place JSON) or from a node in a place — which then becomes copy v1, auto-updating.
WorldsPackagesAPI.createWorldPackage() { (response, error) in
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

**GetWorldPackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPackageToolbox**
```swift
    open class func createWorldPackageToolbox(packageId: String, completion: @escaping (_ data: CreateWorldPackageToolboxResponse?, _ error: Error?) -> Void)
```

List the latest version in the Toolbox as an asset of kind package (Toolbox review and pricing rules apply).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let packageId = "packageId_example" // String | 

// List the latest version in the Toolbox as an asset of kind package (Toolbox review and pricing rules apply).
WorldsPackagesAPI.createWorldPackageToolbox(packageId: packageId) { (response, error) in
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
 **packageId** | **String** |  | 

### Return type

**CreateWorldPackageToolboxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldPackageVersion**
```swift
    open class func createWorldPackageVersion(packageId: String, completion: @escaping (_ data: CreateWorldPackageVersionResponse?, _ error: Error?) -> Void)
```

Publish a new version; every auto-updating, unmodified copy in your places is updated through its co-editing session. Returns what happened per place.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let packageId = "packageId_example" // String | 

// Publish a new version; every auto-updating, unmodified copy in your places is updated through its co-editing session. Returns what happened per place.
WorldsPackagesAPI.createWorldPackageVersion(packageId: packageId) { (response, error) in
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
 **packageId** | **String** |  | 

### Return type

**CreateWorldPackageVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldPackage**
```swift
    open class func deleteWorldPackage(packageId: String, completion: @escaping (_ data: DeleteWorldPackageResponse?, _ error: Error?) -> Void)
```

Archive a package. Copies in places keep working; they just stop receiving updates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let packageId = "packageId_example" // String | 

// Archive a package. Copies in places keep working; they just stop receiving updates.
WorldsPackagesAPI.deleteWorldPackage(packageId: packageId) { (response, error) in
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
 **packageId** | **String** |  | 

### Return type

**DeleteWorldPackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPackage**
```swift
    open class func getWorldPackage(packageId: String, completion: @escaping (_ data: GetWorldPackageResponse?, _ error: Error?) -> Void)
```

A package with its versions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let packageId = "packageId_example" // String | 

// A package with its versions.
WorldsPackagesAPI.getWorldPackage(packageId: packageId) { (response, error) in
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
 **packageId** | **String** |  | 

### Return type

**GetWorldPackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldPackageVersion**
```swift
    open class func getWorldPackageVersion(packageId: String, number: String, completion: @escaping (_ data: GetWorldPackageVersionResponse?, _ error: Error?) -> Void)
```

One version, with its payload (one root node in place JSON).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let packageId = "packageId_example" // String | 
let number = "number_example" // String | 

// One version, with its payload (one root node in place JSON).
WorldsPackagesAPI.getWorldPackageVersion(packageId: packageId, number: number) { (response, error) in
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
 **packageId** | **String** |  | 
 **number** | **String** |  | 

### Return type

**GetWorldPackageVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperiencePlacePackages**
```swift
    open class func listWorldExperiencePlacePackages(experienceId: String, placeId: String, completion: @escaping (_ data: ListWorldExperiencePlacePackagesResponse?, _ error: Error?) -> Void)
```

Package copies in a place: version, newest version, modified, auto-update.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 

// Package copies in a place: version, newest version, modified, auto-update.
WorldsPackagesAPI.listWorldExperiencePlacePackages(experienceId: experienceId, placeId: placeId) { (response, error) in
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

**ListWorldExperiencePlacePackagesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldPackages**
```swift
    open class func listWorldPackages(completion: @escaping (_ data: ListWorldPackagesResponse?, _ error: Error?) -> Void)
```

Your package library: reusable models and modules, newest first, with how many places hold copies.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your package library: reusable models and modules, newest first, with how many places hold copies.
WorldsPackagesAPI.listWorldPackages() { (response, error) in
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

**ListWorldPackagesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperiencePlacePackage**
```swift
    open class func updateWorldExperiencePlacePackage(experienceId: String, placeId: String, nodeId: String, completion: @escaping (_ data: UpdateWorldExperiencePlacePackageResponse?, _ error: Error?) -> Void)
```

Turn auto-update on or off for one copy.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let placeId = "placeId_example" // String | 
let nodeId = "nodeId_example" // String | 

// Turn auto-update on or off for one copy.
WorldsPackagesAPI.updateWorldExperiencePlacePackage(experienceId: experienceId, placeId: placeId, nodeId: nodeId) { (response, error) in
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

**UpdateWorldExperiencePlacePackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldPackage**
```swift
    open class func updateWorldPackage(packageId: String, completion: @escaping (_ data: DeleteWorldPackageResponse?, _ error: Error?) -> Void)
```

Rename a package or change its description.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let packageId = "packageId_example" // String | 

// Rename a package or change its description.
WorldsPackagesAPI.updateWorldPackage(packageId: packageId) { (response, error) in
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
 **packageId** | **String** |  | 

### Return type

**DeleteWorldPackageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

