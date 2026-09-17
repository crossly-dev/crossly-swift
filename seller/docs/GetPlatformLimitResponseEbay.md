# GetPlatformLimitResponseEbay

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**platform** | **String** |  | 
**used** | **Double** |  | 
**limit** | **Double** |  | 
**remaining** | **Double** |  | 
**tierConfigured** | **Bool** | False if the user hasn&#39;t picked a tier (we default to 250 but flag it so the UI can prompt). | 
**respectQuota** | **Bool** |  | 
**periodStart** | **String** |  | 
**perOverageFeeUsd** | **Double** | Approximate cost if &#x60;used&#x60; overflows &#x60;limit&#x60; — informational. | 
**sellingCap** | [**GetPlatformLimitResponseEbaySellingCap**](GetPlatformLimitResponseEbaySellingCap.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


