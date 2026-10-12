# AutomationAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAutomationRule**](AutomationAPI.md#createautomationrule) | **POST** /v1/automation/rules | Create an automation rule.
[**createAutomationRuleImport**](AutomationAPI.md#createautomationruleimport) | **POST** /v1/automation/rules/import | Import one or more rules from recipe JSON (single or bundle).
[**createAutomationRuleRunNow**](AutomationAPI.md#createautomationrulerunnow) | **POST** /v1/automation/rules/{id}/run-now | Fire an automation rule immediately.
[**createAutomationRuleToggle**](AutomationAPI.md#createautomationruletoggle) | **POST** /v1/automation/rules/{id}/toggle | Flip an automation rule between active and inactive.
[**createAutomationRuleValidateRecipe**](AutomationAPI.md#createautomationrulevalidaterecipe) | **POST** /v1/automation/rules/validate-recipe | Dry-run validate one or more recipes against the live catalog.
[**createRepriceEventApprove**](AutomationAPI.md#createrepriceeventapprove) | **POST** /v1/reprice-events/{id}/approve | Apply a pending reprice proposal: the recorded price goes to the recorded platform listing. Proposals older than three days expire instead.
[**createRepriceEventSkip**](AutomationAPI.md#createrepriceeventskip) | **POST** /v1/reprice-events/{id}/skip | Skip a pending reprice proposal; the price stays as it is.
[**deleteAutomationRule**](AutomationAPI.md#deleteautomationrule) | **DELETE** /v1/automation/rules/{id} | Delete an automation rule.
[**getAutomationCatalog**](AutomationAPI.md#getautomationcatalog) | **GET** /v1/automation/catalog | Supported triggerType / actionType / conditionType values for automation rules.
[**getAutomationRule**](AutomationAPI.md#getautomationrule) | **GET** /v1/automation/rules/{id} | Get a single automation rule.
[**getAutomationRuleExport**](AutomationAPI.md#getautomationruleexport) | **GET** /v1/automation/rules/export | Export the user&#39;s full rule library as a portable recipe bundle.
[**getAutomationRuleExportById**](AutomationAPI.md#getautomationruleexportbyid) | **GET** /v1/automation/rules/{id}/export | Export a single automation rule as a portable recipe.
[**listAutomationRules**](AutomationAPI.md#listautomationrules) | **GET** /v1/automation/rules | List automation rules.
[**listAutomationRuns**](AutomationAPI.md#listautomationruns) | **GET** /v1/automation/runs | Per-fire history for automation rules and workflow chain runs.
[**listRepriceEvents**](AutomationAPI.md#listrepriceevents) | **GET** /v1/reprice-events | Reprice decisions, newest first: applied, held at a floor, or pending approval (pending&#x3D;true for only those waiting).
[**updateAutomationRule**](AutomationAPI.md#updateautomationrule) | **PUT** /v1/automation/rules/{id} | Update an automation rule (full replace).


# **createAutomationRule**
```swift
    open class func createAutomationRule(completion: @escaping (_ data: ListAutomationRulesItem?, _ error: Error?) -> Void)
```

Create an automation rule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create an automation rule.
AutomationAPI.createAutomationRule() { (response, error) in
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

**ListAutomationRulesItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAutomationRuleImport**
```swift
    open class func createAutomationRuleImport(activate: Bool? = nil, completion: @escaping (_ data: CreateAutomationRuleImportResponse?, _ error: Error?) -> Void)
```

Import one or more rules from recipe JSON (single or bundle).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let activate = true // Bool |  (optional) (default to false)

// Import one or more rules from recipe JSON (single or bundle).
AutomationAPI.createAutomationRuleImport(activate: activate) { (response, error) in
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
 **activate** | **Bool** |  | [optional] [default to false]

### Return type

**CreateAutomationRuleImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAutomationRuleRunNow**
```swift
    open class func createAutomationRuleRunNow(id: UUID, completion: @escaping (_ data: CreateAutomationRuleRunNowResponse?, _ error: Error?) -> Void)
```

Fire an automation rule immediately.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Fire an automation rule immediately.
AutomationAPI.createAutomationRuleRunNow(id: id) { (response, error) in
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

**CreateAutomationRuleRunNowResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAutomationRuleToggle**
```swift
    open class func createAutomationRuleToggle(id: UUID, completion: @escaping (_ data: UpdateAutomationRuleResponse?, _ error: Error?) -> Void)
```

Flip an automation rule between active and inactive.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Flip an automation rule between active and inactive.
AutomationAPI.createAutomationRuleToggle(id: id) { (response, error) in
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

**UpdateAutomationRuleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createAutomationRuleValidateRecipe**
```swift
    open class func createAutomationRuleValidateRecipe(completion: @escaping (_ data: CreateAutomationRuleValidateRecipeResponse?, _ error: Error?) -> Void)
```

Dry-run validate one or more recipes against the live catalog.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Dry-run validate one or more recipes against the live catalog.
AutomationAPI.createAutomationRuleValidateRecipe() { (response, error) in
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

**CreateAutomationRuleValidateRecipeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRepriceEventApprove**
```swift
    open class func createRepriceEventApprove(id: String, completion: @escaping (_ data: CreateRepriceEventSkipResponse?, _ error: Error?) -> Void)
```

Apply a pending reprice proposal: the recorded price goes to the recorded platform listing. Proposals older than three days expire instead.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Apply a pending reprice proposal: the recorded price goes to the recorded platform listing. Proposals older than three days expire instead.
AutomationAPI.createRepriceEventApprove(id: id) { (response, error) in
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

**CreateRepriceEventSkipResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRepriceEventSkip**
```swift
    open class func createRepriceEventSkip(id: String, completion: @escaping (_ data: CreateRepriceEventSkipResponse?, _ error: Error?) -> Void)
```

Skip a pending reprice proposal; the price stays as it is.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Skip a pending reprice proposal; the price stays as it is.
AutomationAPI.createRepriceEventSkip(id: id) { (response, error) in
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

**CreateRepriceEventSkipResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteAutomationRule**
```swift
    open class func deleteAutomationRule(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Delete an automation rule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Delete an automation rule.
AutomationAPI.deleteAutomationRule(id: id) { (response, error) in
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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAutomationCatalog**
```swift
    open class func getAutomationCatalog(completion: @escaping (_ data: GetAutomationCatalogResponse?, _ error: Error?) -> Void)
```

Supported triggerType / actionType / conditionType values for automation rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Supported triggerType / actionType / conditionType values for automation rules.
AutomationAPI.getAutomationCatalog() { (response, error) in
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

**GetAutomationCatalogResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAutomationRule**
```swift
    open class func getAutomationRule(id: UUID, completion: @escaping (_ data: GetAutomationRuleResponse?, _ error: Error?) -> Void)
```

Get a single automation rule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Get a single automation rule.
AutomationAPI.getAutomationRule(id: id) { (response, error) in
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

**GetAutomationRuleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAutomationRuleExport**
```swift
    open class func getAutomationRuleExport(completion: @escaping (_ data: GetAutomationRuleExportResponse?, _ error: Error?) -> Void)
```

Export the user's full rule library as a portable recipe bundle.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Export the user's full rule library as a portable recipe bundle.
AutomationAPI.getAutomationRuleExport() { (response, error) in
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

**GetAutomationRuleExportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getAutomationRuleExportById**
```swift
    open class func getAutomationRuleExportById(id: UUID, completion: @escaping (_ data: GetAutomationRuleExportByIdResponse?, _ error: Error?) -> Void)
```

Export a single automation rule as a portable recipe.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Export a single automation rule as a portable recipe.
AutomationAPI.getAutomationRuleExportById(id: id) { (response, error) in
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

**GetAutomationRuleExportByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listAutomationRules**
```swift
    open class func listAutomationRules(completion: @escaping (_ data: ListAutomationRulesResponse?, _ error: Error?) -> Void)
```

List automation rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List automation rules.
AutomationAPI.listAutomationRules() { (response, error) in
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

**ListAutomationRulesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listAutomationRuns**
```swift
    open class func listAutomationRuns(ruleId: UUID? = nil, chainId: UUID? = nil, limit: Int? = nil, completion: @escaping (_ data: ListAutomationRunsResponse?, _ error: Error?) -> Void)
```

Per-fire history for automation rules and workflow chain runs.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let ruleId = 987 // UUID |  (optional)
let chainId = 987 // UUID |  (optional)
let limit = 987 // Int |  (optional) (default to 100)

// Per-fire history for automation rules and workflow chain runs.
AutomationAPI.listAutomationRuns(ruleId: ruleId, chainId: chainId, limit: limit) { (response, error) in
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
 **ruleId** | **UUID** |  | [optional] 
 **chainId** | **UUID** |  | [optional] 
 **limit** | **Int** |  | [optional] [default to 100]

### Return type

**ListAutomationRunsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listRepriceEvents**
```swift
    open class func listRepriceEvents(completion: @escaping (_ data: ListRepriceEventsResponse?, _ error: Error?) -> Void)
```

Reprice decisions, newest first: applied, held at a floor, or pending approval (pending=true for only those waiting).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Reprice decisions, newest first: applied, held at a floor, or pending approval (pending=true for only those waiting).
AutomationAPI.listRepriceEvents() { (response, error) in
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

**ListRepriceEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateAutomationRule**
```swift
    open class func updateAutomationRule(id: UUID, completion: @escaping (_ data: UpdateAutomationRuleResponse?, _ error: Error?) -> Void)
```

Update an automation rule (full replace).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Update an automation rule (full replace).
AutomationAPI.updateAutomationRule(id: id) { (response, error) in
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

**UpdateAutomationRuleResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

