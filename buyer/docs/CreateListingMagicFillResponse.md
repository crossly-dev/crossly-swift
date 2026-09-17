# CreateListingMagicFillResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filled** | [**AnyCodable**](.md) |  | 
**count** | **Double** |  | 
**aiAvailable** | **Bool** | False when the seller has no AI provider configured — &#x60;count: 0&#x60; then means \&quot;nothing new could be resolved\&quot; rather than \&quot;already complete\&quot;, a distinction the caller (web&#39;s useMagicFill toast) needs but &#x60;count&#x60; alone can&#39;t express. True whenever a provider IS configured, even if the AI call itself failed for some other reason (network, bad key) — that&#39;s a different problem than \&quot;connect a provider.\&quot; | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


