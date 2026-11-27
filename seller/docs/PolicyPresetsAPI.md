# PolicyPresetsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGeoLocationCheck**](PolicyPresetsAPI.md#creategeolocationcheck) | **POST** /v1/geo/location-check | Check whether a shipping policy ships to an address.
[**createPolicyPreset**](PolicyPresetsAPI.md#createpolicypreset) | **POST** /v1/policy-presets | Create a return / shipping / payment policy preset.
[**deletePolicyPreset**](PolicyPresetsAPI.md#deletepolicypreset) | **DELETE** /v1/policy-presets/{id} | Delete a policy preset. Listings that used it switch to the default preset of its kind.
[**getPolicy**](PolicyPresetsAPI.md#getpolicy) | **GET** /v1/policies | The seller&#39;s shipping / return / payment policy presets by kind, with each kind&#39;s default.
[**listPolicyPresets**](PolicyPresetsAPI.md#listpolicypresets) | **GET** /v1/policy-presets | List the seller&#39;s return / shipping / payment policy presets. meta.migrationNotices lists defaults the policy migration demoted (kind still has no default).
[**updatePolicyPreset**](PolicyPresetsAPI.md#updatepolicypreset) | **PATCH** /v1/policy-presets/{id} | Update a policy preset.


# **createGeoLocationCheck**
```swift
    open class func createGeoLocationCheck(completion: @escaping (_ data: CreateGeoLocationCheckResponse?, _ error: Error?) -> Void)
```

Check whether a shipping policy ships to an address.

Pass an unsaved `policy` draft or a `presetId` (neither = your default shipping policy), an `address`, and optionally `consolidateVia` (a ship-together hub). Returns `ships`, and when it does not: `reason`, `stage` (buyer | hub), `message` and the deciding `rule`. `partial` means a fuller address (state, ZIP) could change the answer. A draft that is not a valid shipping policy is a 422; a presetId that is not yours is a 404.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Check whether a shipping policy ships to an address.
PolicyPresetsAPI.createGeoLocationCheck() { (response, error) in
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

**CreateGeoLocationCheckResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPolicyPreset**
```swift
    open class func createPolicyPreset(completion: @escaping (_ data: CreatePolicyPresetResponse?, _ error: Error?) -> Void)
```

Create a return / shipping / payment policy preset.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a return / shipping / payment policy preset.
PolicyPresetsAPI.createPolicyPreset() { (response, error) in
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

**CreatePolicyPresetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deletePolicyPreset**
```swift
    open class func deletePolicyPreset(id: UUID, completion: @escaping (_ data: DeletePolicyPresetResponse?, _ error: Error?) -> Void)
```

Delete a policy preset. Listings that used it switch to the default preset of its kind.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete a policy preset. Listings that used it switch to the default preset of its kind.
PolicyPresetsAPI.deletePolicyPreset(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**DeletePolicyPresetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPolicy**
```swift
    open class func getPolicy(completion: @escaping (_ data: GetPolicyResponse?, _ error: Error?) -> Void)
```

The seller's shipping / return / payment policy presets by kind, with each kind's default.

Pass a preset `id` as `policies.shippingPresetId` / `returnPresetId` / `paymentPresetId` on POST or PATCH /v1/listings (null = the marketplace's own default). A kind you omit uses `defaultPresetId`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The seller's shipping / return / payment policy presets by kind, with each kind's default.
PolicyPresetsAPI.getPolicy() { (response, error) in
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

**GetPolicyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listPolicyPresets**
```swift
    open class func listPolicyPresets(kind: Kind_listPolicyPresets? = nil, completion: @escaping (_ data: ListPolicyPresetsResponse?, _ error: Error?) -> Void)
```

List the seller's return / shipping / payment policy presets. meta.migrationNotices lists defaults the policy migration demoted (kind still has no default).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let kind = "kind_example" // String |  (optional)

// List the seller's return / shipping / payment policy presets. meta.migrationNotices lists defaults the policy migration demoted (kind still has no default).
PolicyPresetsAPI.listPolicyPresets(kind: kind) { (response, error) in
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

### Return type

**ListPolicyPresetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updatePolicyPreset**
```swift
    open class func updatePolicyPreset(id: UUID, completion: @escaping (_ data: CreatePolicyPresetResponse?, _ error: Error?) -> Void)
```

Update a policy preset.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Update a policy preset.
PolicyPresetsAPI.updatePolicyPreset(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreatePolicyPresetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

