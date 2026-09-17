# CreateBuyerIdentifyResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tier** | **String** |  | 
**confidence** | **Double** |  | 
**identifier** | [**CreateBuyerIdentifyResponseIdentifier**](CreateBuyerIdentifyResponseIdentifier.md) |  | [optional] 
**visionLabel** | **String** |  | [optional] 
**visionQuotaExhausted** | **Bool** | Surfaced rather than hidden: \&quot;we could not look harder\&quot; and \&quot;we looked and found nothing\&quot; are different answers, and a client that cannot tell them apart shows the wrong message on both. | 
**visualMatches** | [CreateBuyerIdentifyResponseVisualMatches] |  | 
**verdict** | **String** |  | 
**crossly** | [**GetBuyerAnywhereResponseCrossly**](GetBuyerAnywhereResponseCrossly.md) |  | [optional] 
**offsite** | [**GetBuyerAnywhereResponseOffsite**](GetBuyerAnywhereResponseOffsite.md) |  | [optional] 
**alternates** | [GetBuyerAnywhereResponseAlternates] |  | 
**savingCents** | **Double** |  | [optional] 
**shippingUnknown** | **Bool** |  | 
**hud** | [**CreateBuyerIdentifyResponseHud**](CreateBuyerIdentifyResponseHud.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


