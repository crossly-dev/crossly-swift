# GetBuyerAnywhereResponseAlternates

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**storeId** | **String** |  | 
**host** | **String** | The retailer&#39;s hostname, e.g. &#x60;rei.com&#x60;. | 
**storeName** | **String** |  | 
**title** | **String** |  | 
**priceCents** | **Double** |  | 
**shippingCents** | **Double** | Null &#x3D; UNKNOWN, never free. | [optional] 
**currency** | **String** |  | 
**condition** | **String** |  | [optional] 
**url** | **String** |  | 
**imageUrl** | **String** |  | [optional] 
**buyerCashbackCents** | **Double** | What the buyer gets back, in cents, if they buy through us.  Shown because a cashback figure the buyer cannot see is a figure they have no reason to believe. Derived from the store&#39;s rate, never stored per offer — rates change and a copied one goes stale silently. | 
**deliveredCents** | **Double** | Item + shipping when known; item alone otherwise. See &#x60;shippingUnknown&#x60;. | 
**shippingUnknown** | **Bool** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


