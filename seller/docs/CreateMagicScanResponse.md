# CreateMagicScanResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**runId** | **String** |  | 
**ebayMatch** | [**CreateMagicScanResponseEbayMatch**](CreateMagicScanResponseEbayMatch.md) |  | [optional] 
**topHits** | [CreateMagicScanResponseTopHits] | Unified top-10-globally list, ranked by CLIP visual similarity to  the seller&#39;s source photo. Each hit carries its origin platform. | 
**ebayHits** | [CreateMagicScanResponseEbayHits] | Legacy compat — UI&#39;s existing render. ebayHits now &#x3D;&#x3D; visually-  validated eBay subset; otherMatches is re-grouped from topHits. | 
**otherMatches** | [**AnyCodable**](.md) |  | 
**imageUrls** | **[String]** | Every photo the seller uploaded for this scan, primary first. | 
**visionAspects** | [**AnyCodable**](.md) | Vision-LLM aspects extracted across all photos. Populated only  when the seller has magic-list-vision-aspects enabled + a vision  provider configured. Empty otherwise. | 
**possibleDuplicates** | [CreateMagicScanResponsePossibleDuplicates] | The seller&#39;s OWN listings/inventory that this scan probably duplicates  (image + fuzzy-title self-dedup). Empty when nothing matched. Drives the  \&quot;you may already have this\&quot; prompt. | 
**cached** | **Bool** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


