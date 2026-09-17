# CreateBuyerActivityResponseMatch

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**verdict** | **String** |  | 
**offer** | [**CreateBuyerActivityResponseMatchOffer**](CreateBuyerActivityResponseMatchOffer.md) |  | 
**savingCents** | **Double** | Positive when cheaper. Null when no page price was supplied. | [optional] 
**conditionComparable** | **Bool** | TRUE means the offer&#39;s condition and the page&#39;s are comparable. False means we matched the item but not its state — a used Crossly copy against a retailer&#39;s new one — and the UI must say so rather than claim a saving. | 
**shippingKnown** | **Bool** | Always false today. Crossly shipping is computed at checkout from the buyer&#39;s address, which Scout does not have and should not send. Present so the surface that renders \&quot;before shipping\&quot; is reading a fact rather than hard-coding an assumption that stops being true when we add it. | 
**catalog** | [**GetCatalogLookupResponseCatalog**](GetCatalogLookupResponseCatalog.md) |  | [optional] 
**alternates** | [CreateBuyerActivityResponseMatchOffer] | Other buyable offers for the SAME item, cheapest first, best excluded.  Deliberately not \&quot;you might also like\&quot;. We have no behavioural data to build that from, and inventing it would put unrelated items under a badge whose entire value is that it only ever appears when we have the thing the buyer is actually looking at.  What these ARE is the same product from other sellers, in other conditions, at other prices — which is the choice a buyer on a product page genuinely wants, and the one a single \&quot;cheapest\&quot; result hides. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


