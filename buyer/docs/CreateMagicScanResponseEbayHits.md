# CreateMagicScanResponseEbayHits

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**itemId** | **String** |  | 
**legacyItemId** | **String** |  | [optional] 
**title** | **String** |  | 
**brand** | **String** |  | [optional] 
**priceCents** | **Double** | Normalized cents. eBay returns string + currency on &#x60;price.value&#x60;. | [optional] 
**currency** | **String** |  | [optional] 
**condition** | **String** |  | [optional] 
**categoryId** | **String** | Top-level category eBay assigned to the match (id + path). | [optional] 
**categoryPath** | **String** |  | [optional] 
**itemUrl** | **String** |  | 
**thumbnailUrl** | **String** |  | [optional] 
**aspects** | [**AnyCodable**](.md) | Loosely-typed aspect bag — Brand, Color, Material, etc. when eBay inlines them. Always inspected defensively by the synthesizer. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


