# CreateInventoryBulkQuantityResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**affected** | **Double** | Rows whose available stock actually changed. | 
**skipped** | **Double** | Ids that did not move. Either they were already at that number, or they  aren&#39;t this seller&#39;s. The two are deliberately not distinguished: telling  a caller \&quot;that id isn&#39;t yours\&quot; confirms the id exists. | 
**bulkJobId** | **String** | Watchable job for the marketplace fan-out, when one was started. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


