# AIAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAiCategorize**](AIAPI.md#createaicategorize) | **POST** /v1/ai/categorize | Taxonomy guess from a single image URL.
[**createAiCategorizeFromImage**](AIAPI.md#createaicategorizefromimage) | **POST** /v1/ai/categorize-from-image | Taxonomy guess from a single base64 image.
[**createAiEnhanceDescription**](AIAPI.md#createaienhancedescription) | **POST** /v1/ai/enhance-description | SEO-rewrite a listing description.
[**createAiEnhanceListing**](AIAPI.md#createaienhancelisting) | **POST** /v1/ai/enhance-listing | Rewrite title + description + tags in one call.
[**createAiEnhanceTitle**](AIAPI.md#createaienhancetitle) | **POST** /v1/ai/enhance-title | SEO-rewrite a listing title.
[**createAiExtractReceipt**](AIAPI.md#createaiextractreceipt) | **POST** /v1/ai/extract-receipt | Structured data extraction from a receipt photo.
[**createAiGenerateListing**](AIAPI.md#createaigeneratelisting) | **POST** /v1/ai/generate-listing | Generate full listing fields from up to 4 image URLs.
[**createAiHelp**](AIAPI.md#createaihelp) | **POST** /v1/ai/help | In-app help Q&amp;A grounded in supplied docs.
[**createAiMagicListing**](AIAPI.md#createaimagiclisting) | **POST** /v1/ai/magic-listing | Generate full listing fields from base64 photos.
[**createAiTestKey**](AIAPI.md#createaitestkey) | **POST** /v1/ai/test-key | Live-ping a candidate BYO-key.
[**createListingAiImage**](AIAPI.md#createlistingaiimage) | **POST** /v1/listings/ai-image | Generate a listing photo with the caller&#39;s own image-provider key; the result is marked AI-generated.
[**createListingAiImagePrompt**](AIAPI.md#createlistingaiimageprompt) | **POST** /v1/listings/ai-image/prompt | Build the AI product-photo prompt for a listing (no image is generated).
[**deleteAiKey**](AIAPI.md#deleteaikey) | **DELETE** /v1/ai/key | Remove the BYO-key for a provider.
[**getAiProvider**](AIAPI.md#getaiprovider) | **GET** /v1/ai/providers | Static catalog of supported AI providers.
[**getAiStatus**](AIAPI.md#getaistatus) | **GET** /v1/ai/status | BYO-key state for the calling user.
[**updateAiImageConfig**](AIAPI.md#updateaiimageconfig) | **PUT** /v1/ai/image-config | Choose the AI image provider/model, independently of the text provider.
[**updateAiKey**](AIAPI.md#updateaikey) | **PUT** /v1/ai/key | Save an encrypted BYO-key for an AI provider.


# **createAiCategorize**
```swift
    open class func createAiCategorize(completion: @escaping (_ data: CreateAiCategorizeResponse?, _ error: Error?) -> Void)
```

Taxonomy guess from a single image URL.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Taxonomy guess from a single image URL.
AIAPI.createAiCategorize() { (response, error) in
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

**CreateAiCategorizeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAiCategorizeFromImage**
```swift
    open class func createAiCategorizeFromImage(completion: @escaping (_ data: CreateAiCategorizeResponse?, _ error: Error?) -> Void)
```

Taxonomy guess from a single base64 image.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Taxonomy guess from a single base64 image.
AIAPI.createAiCategorizeFromImage() { (response, error) in
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

**CreateAiCategorizeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAiEnhanceDescription**
```swift
    open class func createAiEnhanceDescription(completion: @escaping (_ data: CreateAiEnhanceDescriptionResponse?, _ error: Error?) -> Void)
```

SEO-rewrite a listing description.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// SEO-rewrite a listing description.
AIAPI.createAiEnhanceDescription() { (response, error) in
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

**CreateAiEnhanceDescriptionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAiEnhanceListing**
```swift
    open class func createAiEnhanceListing(completion: @escaping (_ data: CreateAiEnhanceListingResponse?, _ error: Error?) -> Void)
```

Rewrite title + description + tags in one call.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Rewrite title + description + tags in one call.
AIAPI.createAiEnhanceListing() { (response, error) in
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

**CreateAiEnhanceListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAiEnhanceTitle**
```swift
    open class func createAiEnhanceTitle(completion: @escaping (_ data: CreateAiEnhanceTitleResponse?, _ error: Error?) -> Void)
```

SEO-rewrite a listing title.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// SEO-rewrite a listing title.
AIAPI.createAiEnhanceTitle() { (response, error) in
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

**CreateAiEnhanceTitleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAiExtractReceipt**
```swift
    open class func createAiExtractReceipt(completion: @escaping (_ data: CreateAiExtractReceiptResponse?, _ error: Error?) -> Void)
```

Structured data extraction from a receipt photo.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Structured data extraction from a receipt photo.
AIAPI.createAiExtractReceipt() { (response, error) in
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

**CreateAiExtractReceiptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAiGenerateListing**
```swift
    open class func createAiGenerateListing(completion: @escaping (_ data: CreateAiMagicListingResponse?, _ error: Error?) -> Void)
```

Generate full listing fields from up to 4 image URLs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Generate full listing fields from up to 4 image URLs.
AIAPI.createAiGenerateListing() { (response, error) in
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

**CreateAiMagicListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAiHelp**
```swift
    open class func createAiHelp(completion: @escaping (_ data: CreateAiHelpResponse?, _ error: Error?) -> Void)
```

In-app help Q&A grounded in supplied docs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// In-app help Q&A grounded in supplied docs.
AIAPI.createAiHelp() { (response, error) in
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

**CreateAiHelpResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAiMagicListing**
```swift
    open class func createAiMagicListing(completion: @escaping (_ data: CreateAiMagicListingResponse?, _ error: Error?) -> Void)
```

Generate full listing fields from base64 photos.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Generate full listing fields from base64 photos.
AIAPI.createAiMagicListing() { (response, error) in
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

**CreateAiMagicListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAiTestKey**
```swift
    open class func createAiTestKey(completion: @escaping (_ data: CreateAiTestKeyResponse?, _ error: Error?) -> Void)
```

Live-ping a candidate BYO-key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Live-ping a candidate BYO-key.
AIAPI.createAiTestKey() { (response, error) in
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

**CreateAiTestKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingAiImage**
```swift
    open class func createListingAiImage(completion: @escaping (_ data: CreateListingAiImageResponse?, _ error: Error?) -> Void)
```

Generate a listing photo with the caller's own image-provider key; the result is marked AI-generated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Generate a listing photo with the caller's own image-provider key; the result is marked AI-generated.
AIAPI.createListingAiImage() { (response, error) in
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

**CreateListingAiImageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createListingAiImagePrompt**
```swift
    open class func createListingAiImagePrompt(completion: @escaping (_ data: CreateListingAiImagePromptResponse?, _ error: Error?) -> Void)
```

Build the AI product-photo prompt for a listing (no image is generated).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Build the AI product-photo prompt for a listing (no image is generated).
AIAPI.createListingAiImagePrompt() { (response, error) in
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

**CreateListingAiImagePromptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteAiKey**
```swift
    open class func deleteAiKey(completion: @escaping (_ data: SuccessResponse?, _ error: Error?) -> Void)
```

Remove the BYO-key for a provider.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Remove the BYO-key for a provider.
AIAPI.deleteAiKey() { (response, error) in
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

**SuccessResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAiProvider**
```swift
    open class func getAiProvider(completion: @escaping (_ data: GetAiProviderResponse?, _ error: Error?) -> Void)
```

Static catalog of supported AI providers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Static catalog of supported AI providers.
AIAPI.getAiProvider() { (response, error) in
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

**GetAiProviderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAiStatus**
```swift
    open class func getAiStatus(completion: @escaping (_ data: GetAiStatusResponse?, _ error: Error?) -> Void)
```

BYO-key state for the calling user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// BYO-key state for the calling user.
AIAPI.getAiStatus() { (response, error) in
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

**GetAiStatusResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateAiImageConfig**
```swift
    open class func updateAiImageConfig(completion: @escaping (_ data: UpdateAiImageConfigResponse?, _ error: Error?) -> Void)
```

Choose the AI image provider/model, independently of the text provider.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Choose the AI image provider/model, independently of the text provider.
AIAPI.updateAiImageConfig() { (response, error) in
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

**UpdateAiImageConfigResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateAiKey**
```swift
    open class func updateAiKey(completion: @escaping (_ data: SuccessResponse?, _ error: Error?) -> Void)
```

Save an encrypted BYO-key for an AI provider.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Save an encrypted BYO-key for an AI provider.
AIAPI.updateAiKey() { (response, error) in
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

**SuccessResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

