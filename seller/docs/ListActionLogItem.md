# ListActionLogItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**createdAt** | **Date** |  | 
**userId** | **String** |  | [optional] 
**status** | **String** |  | 
**source** | **String** |  | 
**platform** | **String** |  | [optional] 
**action** | **String** |  | 
**latencyMs** | **Double** |  | [optional] 
**errorClass** | **String** |  | [optional] 
**errorMessage** | **String** |  | [optional] 
**ipAddress** | **String** |  | [optional] 
**userAgent** | **String** |  | [optional] 
**oauthAppId** | **String** |  | [optional] 
**category** | **String** |  | 
**actorUserId** | **String** |  | [optional] 
**finishedAt** | **Date** |  | [optional] 
**correlationId** | **String** |  | 
**track** | **String** |  | [optional] 
**targetType** | **String** |  | [optional] 
**targetId** | **String** |  | [optional] 
**httpStatus** | **Double** |  | [optional] 
**actorEmail** | **String** | Resolved from actorUserId so the UI can say \&quot;Jane relisted this\&quot; rather than printing a UUID. Null for worker/system actions, which genuinely had no human actor. | [optional] 
**actorDisplayName** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


