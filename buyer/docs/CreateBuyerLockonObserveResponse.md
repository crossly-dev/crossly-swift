# CreateBuyerLockonObserveResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lockonId** | **String** |  | 
**status** | **String** |  | 
**identifier** | [**CreateBuyerIdentifyResponseIdentifier**](CreateBuyerIdentifyResponseIdentifier.md) |  | [optional] 
**candidates** | [CreateBuyerLockonObserveResponseCandidates] | Present when we could not settle it alone. Show them; a pinch on one is the cheapest, strongest disambiguation available. | 
**observationCount** | **Double** |  | 
**visionCalls** | **Double** |  | 
**visionQuotaExhausted** | **Bool** |  | 
**verdict** | **String** |  | 
**crossly** | [**GetBuyerAnywhereResponseCrossly**](GetBuyerAnywhereResponseCrossly.md) |  | [optional] 
**offsite** | [**GetBuyerAnywhereResponseOffsite**](GetBuyerAnywhereResponseOffsite.md) |  | [optional] 
**alternates** | [GetBuyerAnywhereResponseAlternates] |  | 
**savingCents** | **Double** |  | [optional] 
**shippingUnknown** | **Bool** |  | 
**hud** | [**CreateBuyerIdentifyResponseHud**](CreateBuyerIdentifyResponseHud.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


