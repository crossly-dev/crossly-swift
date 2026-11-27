# DeveloperAppsAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeveloperAppCertificationSubmit**](DeveloperAppsAPI.md#createdeveloperappcertificationsubmit) | **POST** /v1/developer/apps/{appId}/certification/submit | Send the application to Crossly review. Needs a passing conformance run on this client version and report-menu evidence.
[**createDeveloperAppCertificationWithdraw**](DeveloperAppsAPI.md#createdeveloperappcertificationwithdraw) | **POST** /v1/developer/apps/{appId}/certification/withdraw | Take the application out of review to edit it.
[**createDeveloperAppClientVersion**](DeveloperAppsAPI.md#createdeveloperappclientversion) | **POST** /v1/developer/apps/{appId}/client-versions | Register a new release of your certified client and start its conformance run. A pass on the same major version carries the certification automatically; a new major version goes to Crossly review; a failure keeps your previous certified version.
[**createDeveloperAppClientVersionRun**](DeveloperAppsAPI.md#createdeveloperappclientversionrun) | **POST** /v1/developer/apps/{appId}/client-versions/{versionId}/run | Start a new conformance run for a release whose run failed, expired or was aborted.
[**createDeveloperAppConformanceRun**](DeveloperAppsAPI.md#createdeveloperappconformancerun) | **POST** /v1/developer/apps/{appId}/conformance-runs | Start a conformance run: a test experience only your app, signed in as you, can join. Join it with POST /v1/worlds/experiences/{experienceId}/join and follow the instruction.
[**createDeveloperAppConformanceRunAbort**](DeveloperAppsAPI.md#createdeveloperappconformancerunabort) | **POST** /v1/developer/apps/{appId}/conformance-runs/{runId}/abort | Abort an open run.
[**createDeveloperAppVerificationCheckDomain**](DeveloperAppsAPI.md#createdeveloperappverificationcheckdomain) | **POST** /v1/developer/apps/{appId}/verification/check-domain | Look up the DNS TXT record crossly-app-verification&#x3D;&lt;token&gt; on your domain (or _crossly.&lt;domain&gt;) now.
[**createDeveloperAppVerificationSubmit**](DeveloperAppsAPI.md#createdeveloperappverificationsubmit) | **POST** /v1/developer/apps/{appId}/verification/submit | Send the verification to Crossly review (each scope is decided separately).
[**createDeveloperAppVerificationWithdraw**](DeveloperAppsAPI.md#createdeveloperappverificationwithdraw) | **POST** /v1/developer/apps/{appId}/verification/withdraw | Take the verification out of review to edit it.
[**getDeveloperAppCertification**](DeveloperAppsAPI.md#getdeveloperappcertification) | **GET** /v1/developer/apps/{appId}/certification | The Crossly Carnival client certification application (null until you create it): status, client, evidence, the passing run and what still blocks submission.
[**getDeveloperAppClientVersion**](DeveloperAppsAPI.md#getdeveloperappclientversion) | **GET** /v1/developer/apps/{appId}/client-versions/{versionId} | One client release and its re-certification.
[**getDeveloperAppConformanceRun**](DeveloperAppsAPI.md#getdeveloperappconformancerun) | **GET** /v1/developer/apps/{appId}/conformance-runs/{runId} | A run&#39;s step, instruction and every check with its verdict.
[**getDeveloperAppHealth**](DeveloperAppsAPI.md#getdeveloperapphealth) | **GET** /v1/developer/apps/{appId}/health | Your app&#39;s API health: write-request counts by status class (24 h, 7 d) across every seller using it, top error codes with advice, a retry-storm flag, the last 50 failed requests (message and correlation id only on requests made with your own account), and from Atlas: how many people authorized the app and with which scopes (counts, never who) and the token endpoint&#39;s OAuth errors by code (e.g. invalid_grant) with the latest one.
[**getDeveloperAppProfile**](DeveloperAppsAPI.md#getdeveloperappprofile) | **GET** /v1/developer/apps/{appId}/profile | Your app&#39;s public directory profile: every editable field, the listing status, what still needs review, and &#x60;preview&#x60; — the profile exactly as /seller-apps or /buyer-apps will show it.
[**getDeveloperAppReview**](DeveloperAppsAPI.md#getdeveloperappreview) | **GET** /v1/developer/apps/{appId}/review | Your app&#39;s Crossly Carnival client certification, verification and review history in one read.
[**getDeveloperAppVerification**](DeveloperAppsAPI.md#getdeveloperappverification) | **GET** /v1/developer/apps/{appId}/verification | The app verification for worlds:publish / worlds:monetize (null until created): domain proof, policies, justifications and per-scope decisions.
[**listDeveloperAppClientVersions**](DeveloperAppsAPI.md#listdeveloperappclientversions) | **GET** /v1/developer/apps/{appId}/client-versions | Releases of your certified client, newest first: the re-certification status (awaiting_run, running, carried, ops_review, approved, rejected, failed, superseded), the rule that decided it and its checks.
[**listDeveloperAppConformanceRuns**](DeveloperAppsAPI.md#listdeveloperappconformanceruns) | **GET** /v1/developer/apps/{appId}/conformance-runs | Your app&#39;s conformance runs, newest first.
[**updateDeveloperAppCertification**](DeveloperAppsAPI.md#updatedeveloperappcertification) | **PUT** /v1/developer/apps/{appId}/certification | Create or edit the application: client name, platform, version, build and source URLs, description and evidence (report menu, chat, Policy UI). Changing the client clears the passing run.
[**updateDeveloperAppListing**](DeveloperAppsAPI.md#updatedeveloperapplisting) | **PUT** /v1/developer/apps/{appId}/listing | Turn \&quot;Listed publicly\&quot; on or off. On: an app Crossly approved whose name, scopes and audience are unchanged is listed at once; anything else goes to review (pending_review). Off: unlisted immediately.
[**updateDeveloperAppProfile**](DeveloperAppsAPI.md#updatedeveloperappprofile) | **PATCH** /v1/developer/apps/{appId}/profile | Edit your app&#39;s directory profile: name, slug, tagline, description, longDescription (markdown), category, audience (auto|seller|buyer|both), logoUrl, bannerUrl (4:1, 1600×400), screenshots (≤6), demoVideoUrl, homepageUrl, installUrl, support/privacy/terms links, docsLinks [{label,url}] and pricingNote. Absent keys are kept, null clears. Images not on Crossly&#39;s CDN are copied onto it. Renaming a listed app or changing its audience sends it back to review.
[**updateDeveloperAppVerification**](DeveloperAppsAPI.md#updatedeveloperappverification) | **PUT** /v1/developer/apps/{appId}/verification | Create or edit the verification: domain, requested scopes with a justification each, privacy policy, terms, support email, demo.


# **createDeveloperAppCertificationSubmit**
```swift
    open class func createDeveloperAppCertificationSubmit(appId: String, completion: @escaping (_ data: DeveloperAppCertificationResponse?, _ error: Error?) -> Void)
```

Send the application to Crossly review. Needs a passing conformance run on this client version and report-menu evidence.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Send the application to Crossly review. Needs a passing conformance run on this client version and report-menu evidence.
DeveloperAppsAPI.createDeveloperAppCertificationSubmit(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**DeveloperAppCertificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDeveloperAppCertificationWithdraw**
```swift
    open class func createDeveloperAppCertificationWithdraw(appId: String, completion: @escaping (_ data: DeveloperAppCertificationResponse?, _ error: Error?) -> Void)
```

Take the application out of review to edit it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Take the application out of review to edit it.
DeveloperAppsAPI.createDeveloperAppCertificationWithdraw(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**DeveloperAppCertificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDeveloperAppClientVersion**
```swift
    open class func createDeveloperAppClientVersion(appId: String, completion: @escaping (_ data: CreateDeveloperAppClientVersionResponse?, _ error: Error?) -> Void)
```

Register a new release of your certified client and start its conformance run. A pass on the same major version carries the certification automatically; a new major version goes to Crossly review; a failure keeps your previous certified version.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Register a new release of your certified client and start its conformance run. A pass on the same major version carries the certification automatically; a new major version goes to Crossly review; a failure keeps your previous certified version.
DeveloperAppsAPI.createDeveloperAppClientVersion(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**CreateDeveloperAppClientVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDeveloperAppClientVersionRun**
```swift
    open class func createDeveloperAppClientVersionRun(appId: String, versionId: String, completion: @escaping (_ data: CreateDeveloperAppClientVersionResponse?, _ error: Error?) -> Void)
```

Start a new conformance run for a release whose run failed, expired or was aborted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 
let versionId = "versionId_example" // String | 

// Start a new conformance run for a release whose run failed, expired or was aborted.
DeveloperAppsAPI.createDeveloperAppClientVersionRun(appId: appId, versionId: versionId) { (response, error) in
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
 **appId** | **String** |  | 
 **versionId** | **String** |  | 

### Return type

**CreateDeveloperAppClientVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDeveloperAppConformanceRun**
```swift
    open class func createDeveloperAppConformanceRun(appId: String, completion: @escaping (_ data: GetDeveloperAppConformanceRunResponse?, _ error: Error?) -> Void)
```

Start a conformance run: a test experience only your app, signed in as you, can join. Join it with POST /v1/worlds/experiences/{experienceId}/join and follow the instruction.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Start a conformance run: a test experience only your app, signed in as you, can join. Join it with POST /v1/worlds/experiences/{experienceId}/join and follow the instruction.
DeveloperAppsAPI.createDeveloperAppConformanceRun(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**GetDeveloperAppConformanceRunResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDeveloperAppConformanceRunAbort**
```swift
    open class func createDeveloperAppConformanceRunAbort(appId: String, runId: String, completion: @escaping (_ data: CreateDeveloperAppConformanceRunAbortResponse?, _ error: Error?) -> Void)
```

Abort an open run.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 
let runId = "runId_example" // String | 

// Abort an open run.
DeveloperAppsAPI.createDeveloperAppConformanceRunAbort(appId: appId, runId: runId) { (response, error) in
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
 **appId** | **String** |  | 
 **runId** | **String** |  | 

### Return type

**CreateDeveloperAppConformanceRunAbortResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDeveloperAppVerificationCheckDomain**
```swift
    open class func createDeveloperAppVerificationCheckDomain(appId: String, completion: @escaping (_ data: DeveloperAppVerificationResponse?, _ error: Error?) -> Void)
```

Look up the DNS TXT record crossly-app-verification=<token> on your domain (or _crossly.<domain>) now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Look up the DNS TXT record crossly-app-verification=<token> on your domain (or _crossly.<domain>) now.
DeveloperAppsAPI.createDeveloperAppVerificationCheckDomain(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**DeveloperAppVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDeveloperAppVerificationSubmit**
```swift
    open class func createDeveloperAppVerificationSubmit(appId: String, completion: @escaping (_ data: DeveloperAppVerificationResponse?, _ error: Error?) -> Void)
```

Send the verification to Crossly review (each scope is decided separately).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Send the verification to Crossly review (each scope is decided separately).
DeveloperAppsAPI.createDeveloperAppVerificationSubmit(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**DeveloperAppVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createDeveloperAppVerificationWithdraw**
```swift
    open class func createDeveloperAppVerificationWithdraw(appId: String, completion: @escaping (_ data: DeveloperAppVerificationResponse?, _ error: Error?) -> Void)
```

Take the verification out of review to edit it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Take the verification out of review to edit it.
DeveloperAppsAPI.createDeveloperAppVerificationWithdraw(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**DeveloperAppVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getDeveloperAppCertification**
```swift
    open class func getDeveloperAppCertification(appId: String, completion: @escaping (_ data: GetDeveloperAppCertificationResponse?, _ error: Error?) -> Void)
```

The Crossly Carnival client certification application (null until you create it): status, client, evidence, the passing run and what still blocks submission.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// The Crossly Carnival client certification application (null until you create it): status, client, evidence, the passing run and what still blocks submission.
DeveloperAppsAPI.getDeveloperAppCertification(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**GetDeveloperAppCertificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getDeveloperAppClientVersion**
```swift
    open class func getDeveloperAppClientVersion(appId: String, versionId: String, completion: @escaping (_ data: GetDeveloperAppClientVersionResponse?, _ error: Error?) -> Void)
```

One client release and its re-certification.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 
let versionId = "versionId_example" // String | 

// One client release and its re-certification.
DeveloperAppsAPI.getDeveloperAppClientVersion(appId: appId, versionId: versionId) { (response, error) in
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
 **appId** | **String** |  | 
 **versionId** | **String** |  | 

### Return type

**GetDeveloperAppClientVersionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getDeveloperAppConformanceRun**
```swift
    open class func getDeveloperAppConformanceRun(appId: String, runId: String, completion: @escaping (_ data: GetDeveloperAppConformanceRunResponse?, _ error: Error?) -> Void)
```

A run's step, instruction and every check with its verdict.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 
let runId = "runId_example" // String | 

// A run's step, instruction and every check with its verdict.
DeveloperAppsAPI.getDeveloperAppConformanceRun(appId: appId, runId: runId) { (response, error) in
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
 **appId** | **String** |  | 
 **runId** | **String** |  | 

### Return type

**GetDeveloperAppConformanceRunResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getDeveloperAppHealth**
```swift
    open class func getDeveloperAppHealth(appId: String, completion: @escaping (_ data: GetDeveloperAppHealthResponse?, _ error: Error?) -> Void)
```

Your app's API health: write-request counts by status class (24 h, 7 d) across every seller using it, top error codes with advice, a retry-storm flag, the last 50 failed requests (message and correlation id only on requests made with your own account), and from Atlas: how many people authorized the app and with which scopes (counts, never who) and the token endpoint's OAuth errors by code (e.g. invalid_grant) with the latest one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Your app's API health: write-request counts by status class (24 h, 7 d) across every seller using it, top error codes with advice, a retry-storm flag, the last 50 failed requests (message and correlation id only on requests made with your own account), and from Atlas: how many people authorized the app and with which scopes (counts, never who) and the token endpoint's OAuth errors by code (e.g. invalid_grant) with the latest one.
DeveloperAppsAPI.getDeveloperAppHealth(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**GetDeveloperAppHealthResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getDeveloperAppProfile**
```swift
    open class func getDeveloperAppProfile(appId: String, completion: @escaping (_ data: GetDeveloperAppProfileResponse?, _ error: Error?) -> Void)
```

Your app's public directory profile: every editable field, the listing status, what still needs review, and `preview` — the profile exactly as /seller-apps or /buyer-apps will show it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Your app's public directory profile: every editable field, the listing status, what still needs review, and `preview` — the profile exactly as /seller-apps or /buyer-apps will show it.
DeveloperAppsAPI.getDeveloperAppProfile(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**GetDeveloperAppProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getDeveloperAppReview**
```swift
    open class func getDeveloperAppReview(appId: String, completion: @escaping (_ data: GetDeveloperAppReviewResponse?, _ error: Error?) -> Void)
```

Your app's Crossly Carnival client certification, verification and review history in one read.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Your app's Crossly Carnival client certification, verification and review history in one read.
DeveloperAppsAPI.getDeveloperAppReview(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**GetDeveloperAppReviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getDeveloperAppVerification**
```swift
    open class func getDeveloperAppVerification(appId: String, completion: @escaping (_ data: GetDeveloperAppVerificationResponse?, _ error: Error?) -> Void)
```

The app verification for worlds:publish / worlds:monetize (null until created): domain proof, policies, justifications and per-scope decisions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// The app verification for worlds:publish / worlds:monetize (null until created): domain proof, policies, justifications and per-scope decisions.
DeveloperAppsAPI.getDeveloperAppVerification(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**GetDeveloperAppVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listDeveloperAppClientVersions**
```swift
    open class func listDeveloperAppClientVersions(appId: String, completion: @escaping (_ data: ListDeveloperAppClientVersionsResponse?, _ error: Error?) -> Void)
```

Releases of your certified client, newest first: the re-certification status (awaiting_run, running, carried, ops_review, approved, rejected, failed, superseded), the rule that decided it and its checks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Releases of your certified client, newest first: the re-certification status (awaiting_run, running, carried, ops_review, approved, rejected, failed, superseded), the rule that decided it and its checks.
DeveloperAppsAPI.listDeveloperAppClientVersions(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**ListDeveloperAppClientVersionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listDeveloperAppConformanceRuns**
```swift
    open class func listDeveloperAppConformanceRuns(appId: String, completion: @escaping (_ data: ListDeveloperAppConformanceRunsResponse?, _ error: Error?) -> Void)
```

Your app's conformance runs, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Your app's conformance runs, newest first.
DeveloperAppsAPI.listDeveloperAppConformanceRuns(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**ListDeveloperAppConformanceRunsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateDeveloperAppCertification**
```swift
    open class func updateDeveloperAppCertification(appId: String, completion: @escaping (_ data: DeveloperAppCertificationResponse?, _ error: Error?) -> Void)
```

Create or edit the application: client name, platform, version, build and source URLs, description and evidence (report menu, chat, Policy UI). Changing the client clears the passing run.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Create or edit the application: client name, platform, version, build and source URLs, description and evidence (report menu, chat, Policy UI). Changing the client clears the passing run.
DeveloperAppsAPI.updateDeveloperAppCertification(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**DeveloperAppCertificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateDeveloperAppListing**
```swift
    open class func updateDeveloperAppListing(appId: String, completion: @escaping (_ data: UpdateDeveloperAppListingResponse?, _ error: Error?) -> Void)
```

Turn \"Listed publicly\" on or off. On: an app Crossly approved whose name, scopes and audience are unchanged is listed at once; anything else goes to review (pending_review). Off: unlisted immediately.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Turn \"Listed publicly\" on or off. On: an app Crossly approved whose name, scopes and audience are unchanged is listed at once; anything else goes to review (pending_review). Off: unlisted immediately.
DeveloperAppsAPI.updateDeveloperAppListing(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**UpdateDeveloperAppListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateDeveloperAppProfile**
```swift
    open class func updateDeveloperAppProfile(appId: String, completion: @escaping (_ data: UpdateDeveloperAppProfileResponse?, _ error: Error?) -> Void)
```

Edit your app's directory profile: name, slug, tagline, description, longDescription (markdown), category, audience (auto|seller|buyer|both), logoUrl, bannerUrl (4:1, 1600×400), screenshots (≤6), demoVideoUrl, homepageUrl, installUrl, support/privacy/terms links, docsLinks [{label,url}] and pricingNote. Absent keys are kept, null clears. Images not on Crossly's CDN are copied onto it. Renaming a listed app or changing its audience sends it back to review.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Edit your app's directory profile: name, slug, tagline, description, longDescription (markdown), category, audience (auto|seller|buyer|both), logoUrl, bannerUrl (4:1, 1600×400), screenshots (≤6), demoVideoUrl, homepageUrl, installUrl, support/privacy/terms links, docsLinks [{label,url}] and pricingNote. Absent keys are kept, null clears. Images not on Crossly's CDN are copied onto it. Renaming a listed app or changing its audience sends it back to review.
DeveloperAppsAPI.updateDeveloperAppProfile(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**UpdateDeveloperAppProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateDeveloperAppVerification**
```swift
    open class func updateDeveloperAppVerification(appId: String, completion: @escaping (_ data: DeveloperAppVerificationResponse?, _ error: Error?) -> Void)
```

Create or edit the verification: domain, requested scopes with a justification each, privacy policy, terms, support email, demo.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let appId = "appId_example" // String | 

// Create or edit the verification: domain, requested scopes with a justification each, privacy policy, terms, support email, demo.
DeveloperAppsAPI.updateDeveloperAppVerification(appId: appId) { (response, error) in
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
 **appId** | **String** |  | 

### Return type

**DeveloperAppVerificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

