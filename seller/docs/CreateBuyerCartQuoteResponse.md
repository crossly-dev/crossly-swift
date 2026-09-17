# CreateBuyerCartQuoteResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | **String** |  | 
**taxCents** | **Double** |  | 
**shippingCents** | **Double** |  | 
**totalCents** | **Double** |  | 
**currency** | **String** |  | 
**itemsTotalCents** | **Double** |  | 
**pickupCartItemIds** | **[String]** | Lines being collected in person, so a summary can name what ships free. | 
**taxComplete** | **Bool** | False means there is no saved delivery address, so &#x60;taxCents&#x60; is a floor rather than a final figure — not that tax is zero. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


