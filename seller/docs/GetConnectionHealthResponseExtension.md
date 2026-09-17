# GetConnectionHealthResponseExtension

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**online** | **Bool** | Heartbeat within the last 15 minutes. False is NOT proof of breakage — a closed browser looks the same — so it is always paired with the durable timestamp below. | 
**lastBrowserPushAt** | **String** | Newest browser push across every account. The durable answer to \&quot;when did the extension last do anything\&quot;, surviving a Redis flush. | [optional] 
**lastBrowserPushAgo** | **String** |  | 
**reportedVersion** | **String** | Highest version any platform&#39;s browser report carried, or null when the extension has never told us (it does not send one today — see the service README notes in routes/extension-health.ts). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


