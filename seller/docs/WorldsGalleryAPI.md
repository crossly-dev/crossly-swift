# WorldsGalleryAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorldExperienceGallery**](WorldsGalleryAPI.md#createworldexperiencegallery) | **POST** /v1/worlds/experiences/{experienceId}/gallery | Add an uploaded screenshot or video (your own upload&#39;s publicUrl; a video may carry a poster image). Images are scanned at once; every item waits for a person and shows on the game&#39;s page once approved.
[**createWorldExperienceGalleryUploadUrl**](WorldsGalleryAPI.md#createworldexperiencegalleryuploadurl) | **POST** /v1/worlds/experiences/{experienceId}/gallery/upload-url | A presigned upload for a gallery screenshot (JPEG/PNG/WebP/GIF, ≤ 10 MB) or video (MP4/QuickTime/WebM): PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then add publicUrl to the gallery.
[**deleteWorldExperienceGallery**](WorldsGalleryAPI.md#deleteworldexperiencegallery) | **DELETE** /v1/worlds/experiences/{experienceId}/gallery/{mediaId} | Take an item off the game&#39;s page now.
[**getWorldExperienceGallery**](WorldsGalleryAPI.md#getworldexperiencegallery) | **GET** /v1/worlds/experiences/{experienceId}/gallery | The game&#39;s gallery: every screenshot and video with its review state (pending / approved / rejected with the reviewer&#39;s note), position and caption, plus the limits.
[**updateWorldExperienceGallery**](WorldsGalleryAPI.md#updateworldexperiencegallery) | **PATCH** /v1/worlds/experiences/{experienceId}/gallery/{mediaId} | Change an item&#39;s caption (filtered; an approved item with a new caption goes back to review).
[**updateWorldExperienceGalleryOrder**](WorldsGalleryAPI.md#updateworldexperiencegalleryorder) | **PUT** /v1/worlds/experiences/{experienceId}/gallery/order | Set the order on the game&#39;s page: the ids you list first, the rest after in their current order.
[**updateWorldExperienceGalleryRole**](WorldsGalleryAPI.md#updateworldexperiencegalleryrole) | **PUT** /v1/worlds/experiences/{experienceId}/gallery/{mediaId}/role | Make an item the game&#39;s icon or thumbnail (an image), its trailer (a video), or put it back in the gallery. The previous holder of that role goes back to the gallery.
[**updateWorldExperienceGalleryTrailerUrl**](WorldsGalleryAPI.md#updateworldexperiencegallerytrailerurl) | **PUT** /v1/worlds/experiences/{experienceId}/gallery/trailer-url | Set the game&#39;s trailer to a YouTube or Vimeo video link (https; youtube.com, youtu.be, vimeo.com, player.vimeo.com only; any other host is 400 trailer_host_not_allowed). It waits for a person like any gallery item; the current trailer goes back to the gallery (an uploaded clip) or off the page (a link).


# **createWorldExperienceGallery**
```swift
    open class func createWorldExperienceGallery(experienceId: String, completion: @escaping (_ data: WorldExperienceGalleryResponse?, _ error: Error?) -> Void)
```

Add an uploaded screenshot or video (your own upload's publicUrl; a video may carry a poster image). Images are scanned at once; every item waits for a person and shows on the game's page once approved.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Add an uploaded screenshot or video (your own upload's publicUrl; a video may carry a poster image). Images are scanned at once; every item waits for a person and shows on the game's page once approved.
WorldsGalleryAPI.createWorldExperienceGallery(experienceId: experienceId) { (response, error) in
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

**WorldExperienceGalleryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceGalleryUploadUrl**
```swift
    open class func createWorldExperienceGalleryUploadUrl(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceGalleryUploadUrlResponse?, _ error: Error?) -> Void)
```

A presigned upload for a gallery screenshot (JPEG/PNG/WebP/GIF, ≤ 10 MB) or video (MP4/QuickTime/WebM): PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then add publicUrl to the gallery.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// A presigned upload for a gallery screenshot (JPEG/PNG/WebP/GIF, ≤ 10 MB) or video (MP4/QuickTime/WebM): PUT the file to uploadUrl with the same Content-Type and exact Content-Length, then add publicUrl to the gallery.
WorldsGalleryAPI.createWorldExperienceGalleryUploadUrl(experienceId: experienceId) { (response, error) in
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

**CreateWorldExperienceGalleryUploadUrlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperienceGallery**
```swift
    open class func deleteWorldExperienceGallery(experienceId: String, mediaId: String, completion: @escaping (_ data: DeleteSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Take an item off the game's page now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let mediaId = "mediaId_example" // String | 

// Take an item off the game's page now.
WorldsGalleryAPI.deleteWorldExperienceGallery(experienceId: experienceId, mediaId: mediaId) { (response, error) in
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
 **mediaId** | **String** |  | 

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceGallery**
```swift
    open class func getWorldExperienceGallery(experienceId: String, completion: @escaping (_ data: GetWorldExperienceGalleryResponse?, _ error: Error?) -> Void)
```

The game's gallery: every screenshot and video with its review state (pending / approved / rejected with the reviewer's note), position and caption, plus the limits.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The game's gallery: every screenshot and video with its review state (pending / approved / rejected with the reviewer's note), position and caption, plus the limits.
WorldsGalleryAPI.getWorldExperienceGallery(experienceId: experienceId) { (response, error) in
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

**GetWorldExperienceGalleryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceGallery**
```swift
    open class func updateWorldExperienceGallery(experienceId: String, mediaId: String, completion: @escaping (_ data: WorldExperienceGalleryResponse?, _ error: Error?) -> Void)
```

Change an item's caption (filtered; an approved item with a new caption goes back to review).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let mediaId = "mediaId_example" // String | 

// Change an item's caption (filtered; an approved item with a new caption goes back to review).
WorldsGalleryAPI.updateWorldExperienceGallery(experienceId: experienceId, mediaId: mediaId) { (response, error) in
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
 **mediaId** | **String** |  | 

### Return type

**WorldExperienceGalleryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceGalleryOrder**
```swift
    open class func updateWorldExperienceGalleryOrder(experienceId: String, completion: @escaping (_ data: UpdateWorldExperienceGalleryRoleResponse?, _ error: Error?) -> Void)
```

Set the order on the game's page: the ids you list first, the rest after in their current order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Set the order on the game's page: the ids you list first, the rest after in their current order.
WorldsGalleryAPI.updateWorldExperienceGalleryOrder(experienceId: experienceId) { (response, error) in
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

**UpdateWorldExperienceGalleryRoleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceGalleryRole**
```swift
    open class func updateWorldExperienceGalleryRole(experienceId: String, mediaId: String, completion: @escaping (_ data: UpdateWorldExperienceGalleryRoleResponse?, _ error: Error?) -> Void)
```

Make an item the game's icon or thumbnail (an image), its trailer (a video), or put it back in the gallery. The previous holder of that role goes back to the gallery.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let mediaId = "mediaId_example" // String | 

// Make an item the game's icon or thumbnail (an image), its trailer (a video), or put it back in the gallery. The previous holder of that role goes back to the gallery.
WorldsGalleryAPI.updateWorldExperienceGalleryRole(experienceId: experienceId, mediaId: mediaId) { (response, error) in
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
 **mediaId** | **String** |  | 

### Return type

**UpdateWorldExperienceGalleryRoleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceGalleryTrailerUrl**
```swift
    open class func updateWorldExperienceGalleryTrailerUrl(experienceId: String, completion: @escaping (_ data: WorldExperienceGalleryResponse?, _ error: Error?) -> Void)
```

Set the game's trailer to a YouTube or Vimeo video link (https; youtube.com, youtu.be, vimeo.com, player.vimeo.com only; any other host is 400 trailer_host_not_allowed). It waits for a person like any gallery item; the current trailer goes back to the gallery (an uploaded clip) or off the page (a link).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Set the game's trailer to a YouTube or Vimeo video link (https; youtube.com, youtu.be, vimeo.com, player.vimeo.com only; any other host is 400 trailer_host_not_allowed). It waits for a person like any gallery item; the current trailer goes back to the gallery (an uploaded clip) or off the page (a link).
WorldsGalleryAPI.updateWorldExperienceGalleryTrailerUrl(experienceId: experienceId) { (response, error) in
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

**WorldExperienceGalleryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

