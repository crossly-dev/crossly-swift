# WorldsDataAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorldExperienceDatastoreEntryIncrement**](WorldsDataAPI.md#createworldexperiencedatastoreentryincrement) | **POST** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries/{key}/increment | Atomically add &#x60;by&#x60; to a numeric key (absent counts as 0).
[**createWorldExperienceMemoryQueueItem**](WorldsDataAPI.md#createworldexperiencememoryqueueitem) | **POST** /v1/worlds/experiences/{experienceId}/memory/queues/{queue}/items | Add an item to a MemoryStore queue (ttlSeconds ≤ 45 days, priority 0-1000).
[**createWorldExperienceMemoryQueueRead**](WorldsDataAPI.md#createworldexperiencememoryqueueread) | **POST** /v1/worlds/experiences/{experienceId}/memory/queues/{queue}/read | Read and hide up to &#x60;count&#x60; queue items for invisibilitySeconds; remove them with the readId.
[**createWorldExperienceMessaging**](WorldsDataAPI.md#createworldexperiencemessaging) | **POST** /v1/worlds/experiences/{experienceId}/messaging/{topic} | Publish a message (≤ 1 KB) to every live server of the experience subscribed to the topic.
[**createWorldExperienceOrderedEntryIncrement**](WorldsDataAPI.md#createworldexperienceorderedentryincrement) | **POST** /v1/worlds/experiences/{experienceId}/ordered/{store}/entries/{key}/increment | Atomically add &#x60;by&#x60; to an OrderedStore entry.
[**deleteWorldExperienceDatastoreEntry**](WorldsDataAPI.md#deleteworldexperiencedatastoreentry) | **DELETE** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries/{key} | Remove a key (a tombstone version; history stays readable for 30 days). Honours If-Match.
[**deleteWorldExperienceMemoryMap**](WorldsDataAPI.md#deleteworldexperiencememorymap) | **DELETE** /v1/worlds/experiences/{experienceId}/memory/maps/{map}/{key} | Remove a hash map item.
[**deleteWorldExperienceMemoryQueueRead**](WorldsDataAPI.md#deleteworldexperiencememoryqueueread) | **DELETE** /v1/worlds/experiences/{experienceId}/memory/queues/{queue}/reads/{readId} | Remove the items of one read (409 if the read lapsed).
[**deleteWorldExperienceMemorySorted**](WorldsDataAPI.md#deleteworldexperiencememorysorted) | **DELETE** /v1/worlds/experiences/{experienceId}/memory/sorted/{map}/{key} | Remove a sorted map item.
[**deleteWorldExperienceOrderedEntry**](WorldsDataAPI.md#deleteworldexperienceorderedentry) | **DELETE** /v1/worlds/experiences/{experienceId}/ordered/{store}/entries/{key} | Remove an OrderedStore entry.
[**getWorldExperienceDataUsage**](WorldsDataAPI.md#getworldexperiencedatausage) | **GET** /v1/worlds/experiences/{experienceId}/data/usage | Live quotas and usage: CCU, request budgets per minute, DataStore storage, MemoryStore memory.
[**getWorldExperienceDatastoreEntry**](WorldsDataAPI.md#getworldexperiencedatastoreentry) | **GET** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries/{key} | The current value of a key: version (ETag \&quot;v&lt;n&gt;\&quot;), userIds and attributes.
[**getWorldExperienceDatastoreEntryVersion**](WorldsDataAPI.md#getworldexperiencedatastoreentryversion) | **GET** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries/{key}/versions/{version} | One version of a key, including a removed one.
[**getWorldExperienceMemoryMap**](WorldsDataAPI.md#getworldexperiencememorymap) | **GET** /v1/worlds/experiences/{experienceId}/memory/maps/{map} | Items of a MemoryStore hash map (cursor-paged, unordered).
[**getWorldExperienceMemoryMapByKey**](WorldsDataAPI.md#getworldexperiencememorymapbykey) | **GET** /v1/worlds/experiences/{experienceId}/memory/maps/{map}/{key} | One MemoryStore hash map item with its version and expiry.
[**getWorldExperienceMemoryQueue**](WorldsDataAPI.md#getworldexperiencememoryqueue) | **GET** /v1/worlds/experiences/{experienceId}/memory/queues/{queue} | Queue length (visible, in flight) and the head, without hiding anything.
[**getWorldExperienceMemorySorted**](WorldsDataAPI.md#getworldexperiencememorysorted) | **GET** /v1/worlds/experiences/{experienceId}/memory/sorted/{map} | A MemoryStore sorted map in order (sortKey, then key); ?order&#x3D;&amp;cursor&#x3D;&amp;limit&#x3D;.
[**getWorldExperienceMemorySortedByKey**](WorldsDataAPI.md#getworldexperiencememorysortedbykey) | **GET** /v1/worlds/experiences/{experienceId}/memory/sorted/{map}/{key} | One sorted map item.
[**getWorldExperienceOrdered**](WorldsDataAPI.md#getworldexperienceordered) | **GET** /v1/worlds/experiences/{experienceId}/ordered/{store} | An OrderedStore page ranked by value; ?order&#x3D;desc|asc&amp;min&#x3D;&amp;max&#x3D;&amp;cursor&#x3D;&amp;limit&#x3D;.
[**getWorldExperienceOrderedEntry**](WorldsDataAPI.md#getworldexperienceorderedentry) | **GET** /v1/worlds/experiences/{experienceId}/ordered/{store}/entries/{key} | One OrderedStore entry.
[**listWorldExperienceDatastoreEntries**](WorldsDataAPI.md#listworldexperiencedatastoreentries) | **GET** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries | Keys of a DataStore in key order; ?prefix&#x3D;&amp;scope&#x3D;&amp;cursor&#x3D;&amp;limit&#x3D;.
[**listWorldExperienceDatastoreEntryVersions**](WorldsDataAPI.md#listworldexperiencedatastoreentryversions) | **GET** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries/{key}/versions | Versions of a key, newest first (30-day history; the current version is kept).
[**listWorldExperienceDatastores**](WorldsDataAPI.md#listworldexperiencedatastores) | **GET** /v1/worlds/experiences/{experienceId}/datastores | The DataStores of an experience, with key counts and bytes.
[**updateWorldExperienceDatastoreEntry**](WorldsDataAPI.md#updateworldexperiencedatastoreentry) | **PUT** /v1/worlds/experiences/{experienceId}/datastores/{store}/entries/{key} | Write a new version. If-Match \&quot;v&lt;n&gt;\&quot; (or ifVersion) writes only at that version; If-None-Match: * only if absent. 412 on a mismatch.
[**updateWorldExperienceMemoryMap**](WorldsDataAPI.md#updateworldexperiencememorymap) | **PUT** /v1/worlds/experiences/{experienceId}/memory/maps/{map}/{key} | Set a hash map item (ttlSeconds required; ifVersion for compare-and-set).
[**updateWorldExperienceMemorySorted**](WorldsDataAPI.md#updateworldexperiencememorysorted) | **PUT** /v1/worlds/experiences/{experienceId}/memory/sorted/{map}/{key} | Set a sorted map item (ttlSeconds, optional sortKey and ifVersion).
[**updateWorldExperienceOrderedEntry**](WorldsDataAPI.md#updateworldexperienceorderedentry) | **PUT** /v1/worlds/experiences/{experienceId}/ordered/{store}/entries/{key} | Set an OrderedStore entry to a whole number.


# **createWorldExperienceDatastoreEntryIncrement**
```swift
    open class func createWorldExperienceDatastoreEntryIncrement(experienceId: String, store: String, key: String, completion: @escaping (_ data: CreateWorldExperienceDatastoreEntryIncrementResponse?, _ error: Error?) -> Void)
```

Atomically add `by` to a numeric key (absent counts as 0).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let store = "store_example" // String | 
let key = "key_example" // String | 

// Atomically add `by` to a numeric key (absent counts as 0).
WorldsDataAPI.createWorldExperienceDatastoreEntryIncrement(experienceId: experienceId, store: store, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **store** | **String** |  | 
 **key** | **String** |  | 

### Return type

**CreateWorldExperienceDatastoreEntryIncrementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceMemoryQueueItem**
```swift
    open class func createWorldExperienceMemoryQueueItem(experienceId: String, queue: String, completion: @escaping (_ data: CreateWorldPartyInviteResponse?, _ error: Error?) -> Void)
```

Add an item to a MemoryStore queue (ttlSeconds ≤ 45 days, priority 0-1000).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let queue = "queue_example" // String | 

// Add an item to a MemoryStore queue (ttlSeconds ≤ 45 days, priority 0-1000).
WorldsDataAPI.createWorldExperienceMemoryQueueItem(experienceId: experienceId, queue: queue) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **queue** | **String** |  | 

### Return type

**CreateWorldPartyInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceMemoryQueueRead**
```swift
    open class func createWorldExperienceMemoryQueueRead(experienceId: String, queue: String, completion: @escaping (_ data: CreateWorldExperienceMemoryQueueReadResponse?, _ error: Error?) -> Void)
```

Read and hide up to `count` queue items for invisibilitySeconds; remove them with the readId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let queue = "queue_example" // String | 

// Read and hide up to `count` queue items for invisibilitySeconds; remove them with the readId.
WorldsDataAPI.createWorldExperienceMemoryQueueRead(experienceId: experienceId, queue: queue) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **queue** | **String** |  | 

### Return type

**CreateWorldExperienceMemoryQueueReadResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceMessaging**
```swift
    open class func createWorldExperienceMessaging(experienceId: String, topic: String, completion: @escaping (_ data: CreateWorldExperienceMessagingResponse?, _ error: Error?) -> Void)
```

Publish a message (≤ 1 KB) to every live server of the experience subscribed to the topic.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let topic = "topic_example" // String | 

// Publish a message (≤ 1 KB) to every live server of the experience subscribed to the topic.
WorldsDataAPI.createWorldExperienceMessaging(experienceId: experienceId, topic: topic) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **topic** | **String** |  | 

### Return type

**CreateWorldExperienceMessagingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceOrderedEntryIncrement**
```swift
    open class func createWorldExperienceOrderedEntryIncrement(experienceId: String, store: String, key: String, completion: @escaping (_ data: WorldExperienceOrderedEntryResponse?, _ error: Error?) -> Void)
```

Atomically add `by` to an OrderedStore entry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let store = "store_example" // String | 
let key = "key_example" // String | 

// Atomically add `by` to an OrderedStore entry.
WorldsDataAPI.createWorldExperienceOrderedEntryIncrement(experienceId: experienceId, store: store, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **store** | **String** |  | 
 **key** | **String** |  | 

### Return type

**WorldExperienceOrderedEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperienceDatastoreEntry**
```swift
    open class func deleteWorldExperienceDatastoreEntry(experienceId: String, store: String, key: String, completion: @escaping (_ data: DeleteWorldExperienceDatastoreEntryResponse?, _ error: Error?) -> Void)
```

Remove a key (a tombstone version; history stays readable for 30 days). Honours If-Match.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let store = "store_example" // String | 
let key = "key_example" // String | 

// Remove a key (a tombstone version; history stays readable for 30 days). Honours If-Match.
WorldsDataAPI.deleteWorldExperienceDatastoreEntry(experienceId: experienceId, store: store, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **store** | **String** |  | 
 **key** | **String** |  | 

### Return type

**DeleteWorldExperienceDatastoreEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperienceMemoryMap**
```swift
    open class func deleteWorldExperienceMemoryMap(experienceId: String, map: String, key: String, completion: @escaping (_ data: DeleteSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Remove a hash map item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let map = "map_example" // String | 
let key = "key_example" // String | 

// Remove a hash map item.
WorldsDataAPI.deleteWorldExperienceMemoryMap(experienceId: experienceId, map: map, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **map** | **String** |  | 
 **key** | **String** |  | 

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperienceMemoryQueueRead**
```swift
    open class func deleteWorldExperienceMemoryQueueRead(experienceId: String, queue: String, readId: String, completion: @escaping (_ data: DeleteSpatialSceneNodeResponse?, _ error: Error?) -> Void)
```

Remove the items of one read (409 if the read lapsed).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let queue = "queue_example" // String | 
let readId = "readId_example" // String | 

// Remove the items of one read (409 if the read lapsed).
WorldsDataAPI.deleteWorldExperienceMemoryQueueRead(experienceId: experienceId, queue: queue, readId: readId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **queue** | **String** |  | 
 **readId** | **String** |  | 

### Return type

**DeleteSpatialSceneNodeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperienceMemorySorted**
```swift
    open class func deleteWorldExperienceMemorySorted(experienceId: String, map: String, key: String, completion: @escaping (_ data: DeleteSpatialSceneGrantResponse?, _ error: Error?) -> Void)
```

Remove a sorted map item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let map = "map_example" // String | 
let key = "key_example" // String | 

// Remove a sorted map item.
WorldsDataAPI.deleteWorldExperienceMemorySorted(experienceId: experienceId, map: map, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **map** | **String** |  | 
 **key** | **String** |  | 

### Return type

**DeleteSpatialSceneGrantResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWorldExperienceOrderedEntry**
```swift
    open class func deleteWorldExperienceOrderedEntry(experienceId: String, store: String, key: String, completion: @escaping (_ data: DeleteWorldExperienceOrderedEntryResponse?, _ error: Error?) -> Void)
```

Remove an OrderedStore entry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let store = "store_example" // String | 
let key = "key_example" // String | 

// Remove an OrderedStore entry.
WorldsDataAPI.deleteWorldExperienceOrderedEntry(experienceId: experienceId, store: store, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **store** | **String** |  | 
 **key** | **String** |  | 

### Return type

**DeleteWorldExperienceOrderedEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceDataUsage**
```swift
    open class func getWorldExperienceDataUsage(experienceId: String, completion: @escaping (_ data: GetWorldExperienceDataUsageResponse?, _ error: Error?) -> Void)
```

Live quotas and usage: CCU, request budgets per minute, DataStore storage, MemoryStore memory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Live quotas and usage: CCU, request budgets per minute, DataStore storage, MemoryStore memory.
WorldsDataAPI.getWorldExperienceDataUsage(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 

### Return type

**GetWorldExperienceDataUsageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceDatastoreEntry**
```swift
    open class func getWorldExperienceDatastoreEntry(experienceId: String, store: String, key: String, completion: @escaping (_ data: GetWorldExperienceDatastoreEntryResponse?, _ error: Error?) -> Void)
```

The current value of a key: version (ETag \"v<n>\"), userIds and attributes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let store = "store_example" // String | 
let key = "key_example" // String | 

// The current value of a key: version (ETag \"v<n>\"), userIds and attributes.
WorldsDataAPI.getWorldExperienceDatastoreEntry(experienceId: experienceId, store: store, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **store** | **String** |  | 
 **key** | **String** |  | 

### Return type

**GetWorldExperienceDatastoreEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceDatastoreEntryVersion**
```swift
    open class func getWorldExperienceDatastoreEntryVersion(experienceId: String, store: String, key: String, version: String, completion: @escaping (_ data: GetWorldExperienceDatastoreEntryResponse?, _ error: Error?) -> Void)
```

One version of a key, including a removed one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let store = "store_example" // String | 
let key = "key_example" // String | 
let version = "version_example" // String | 

// One version of a key, including a removed one.
WorldsDataAPI.getWorldExperienceDatastoreEntryVersion(experienceId: experienceId, store: store, key: key, version: version) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **store** | **String** |  | 
 **key** | **String** |  | 
 **version** | **String** |  | 

### Return type

**GetWorldExperienceDatastoreEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceMemoryMap**
```swift
    open class func getWorldExperienceMemoryMap(experienceId: String, map: String, completion: @escaping (_ data: GetWorldExperienceMemoryMapResponse?, _ error: Error?) -> Void)
```

Items of a MemoryStore hash map (cursor-paged, unordered).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let map = "map_example" // String | 

// Items of a MemoryStore hash map (cursor-paged, unordered).
WorldsDataAPI.getWorldExperienceMemoryMap(experienceId: experienceId, map: map) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **map** | **String** |  | 

### Return type

**GetWorldExperienceMemoryMapResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceMemoryMapByKey**
```swift
    open class func getWorldExperienceMemoryMapByKey(experienceId: String, map: String, key: String, completion: @escaping (_ data: GetWorldExperienceMemoryMapByKeyResponse?, _ error: Error?) -> Void)
```

One MemoryStore hash map item with its version and expiry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let map = "map_example" // String | 
let key = "key_example" // String | 

// One MemoryStore hash map item with its version and expiry.
WorldsDataAPI.getWorldExperienceMemoryMapByKey(experienceId: experienceId, map: map, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **map** | **String** |  | 
 **key** | **String** |  | 

### Return type

**GetWorldExperienceMemoryMapByKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceMemoryQueue**
```swift
    open class func getWorldExperienceMemoryQueue(experienceId: String, queue: String, completion: @escaping (_ data: GetWorldExperienceMemoryQueueResponse?, _ error: Error?) -> Void)
```

Queue length (visible, in flight) and the head, without hiding anything.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let queue = "queue_example" // String | 

// Queue length (visible, in flight) and the head, without hiding anything.
WorldsDataAPI.getWorldExperienceMemoryQueue(experienceId: experienceId, queue: queue) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **queue** | **String** |  | 

### Return type

**GetWorldExperienceMemoryQueueResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceMemorySorted**
```swift
    open class func getWorldExperienceMemorySorted(experienceId: String, map: String, completion: @escaping (_ data: GetWorldExperienceMemoryMapResponse?, _ error: Error?) -> Void)
```

A MemoryStore sorted map in order (sortKey, then key); ?order=&cursor=&limit=.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let map = "map_example" // String | 

// A MemoryStore sorted map in order (sortKey, then key); ?order=&cursor=&limit=.
WorldsDataAPI.getWorldExperienceMemorySorted(experienceId: experienceId, map: map) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **map** | **String** |  | 

### Return type

**GetWorldExperienceMemoryMapResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceMemorySortedByKey**
```swift
    open class func getWorldExperienceMemorySortedByKey(experienceId: String, map: String, key: String, completion: @escaping (_ data: GetWorldExperienceMemoryMapByKeyResponse?, _ error: Error?) -> Void)
```

One sorted map item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let map = "map_example" // String | 
let key = "key_example" // String | 

// One sorted map item.
WorldsDataAPI.getWorldExperienceMemorySortedByKey(experienceId: experienceId, map: map, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **map** | **String** |  | 
 **key** | **String** |  | 

### Return type

**GetWorldExperienceMemoryMapByKeyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceOrdered**
```swift
    open class func getWorldExperienceOrdered(experienceId: String, store: String, completion: @escaping (_ data: GetWorldExperienceOrderedResponse?, _ error: Error?) -> Void)
```

An OrderedStore page ranked by value; ?order=desc|asc&min=&max=&cursor=&limit=.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let store = "store_example" // String | 

// An OrderedStore page ranked by value; ?order=desc|asc&min=&max=&cursor=&limit=.
WorldsDataAPI.getWorldExperienceOrdered(experienceId: experienceId, store: store) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **store** | **String** |  | 

### Return type

**GetWorldExperienceOrderedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceOrderedEntry**
```swift
    open class func getWorldExperienceOrderedEntry(experienceId: String, store: String, key: String, completion: @escaping (_ data: WorldExperienceOrderedEntryResponse?, _ error: Error?) -> Void)
```

One OrderedStore entry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let store = "store_example" // String | 
let key = "key_example" // String | 

// One OrderedStore entry.
WorldsDataAPI.getWorldExperienceOrderedEntry(experienceId: experienceId, store: store, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **store** | **String** |  | 
 **key** | **String** |  | 

### Return type

**WorldExperienceOrderedEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceDatastoreEntries**
```swift
    open class func listWorldExperienceDatastoreEntries(experienceId: String, store: String, completion: @escaping (_ data: ListWorldExperienceDatastoreEntriesResponse?, _ error: Error?) -> Void)
```

Keys of a DataStore in key order; ?prefix=&scope=&cursor=&limit=.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let store = "store_example" // String | 

// Keys of a DataStore in key order; ?prefix=&scope=&cursor=&limit=.
WorldsDataAPI.listWorldExperienceDatastoreEntries(experienceId: experienceId, store: store) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **store** | **String** |  | 

### Return type

**ListWorldExperienceDatastoreEntriesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceDatastoreEntryVersions**
```swift
    open class func listWorldExperienceDatastoreEntryVersions(experienceId: String, store: String, key: String, completion: @escaping (_ data: ListWorldExperienceDatastoreEntryVersionsResponse?, _ error: Error?) -> Void)
```

Versions of a key, newest first (30-day history; the current version is kept).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let store = "store_example" // String | 
let key = "key_example" // String | 

// Versions of a key, newest first (30-day history; the current version is kept).
WorldsDataAPI.listWorldExperienceDatastoreEntryVersions(experienceId: experienceId, store: store, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **store** | **String** |  | 
 **key** | **String** |  | 

### Return type

**ListWorldExperienceDatastoreEntryVersionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceDatastores**
```swift
    open class func listWorldExperienceDatastores(experienceId: String, completion: @escaping (_ data: ListWorldExperienceDatastoresResponse?, _ error: Error?) -> Void)
```

The DataStores of an experience, with key counts and bytes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// The DataStores of an experience, with key counts and bytes.
WorldsDataAPI.listWorldExperienceDatastores(experienceId: experienceId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 

### Return type

**ListWorldExperienceDatastoresResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceDatastoreEntry**
```swift
    open class func updateWorldExperienceDatastoreEntry(experienceId: String, store: String, key: String, completion: @escaping (_ data: UpdateWorldExperienceDatastoreEntryResponse?, _ error: Error?) -> Void)
```

Write a new version. If-Match \"v<n>\" (or ifVersion) writes only at that version; If-None-Match: * only if absent. 412 on a mismatch.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let store = "store_example" // String | 
let key = "key_example" // String | 

// Write a new version. If-Match \"v<n>\" (or ifVersion) writes only at that version; If-None-Match: * only if absent. 412 on a mismatch.
WorldsDataAPI.updateWorldExperienceDatastoreEntry(experienceId: experienceId, store: store, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **store** | **String** |  | 
 **key** | **String** |  | 

### Return type

**UpdateWorldExperienceDatastoreEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceMemoryMap**
```swift
    open class func updateWorldExperienceMemoryMap(experienceId: String, map: String, key: String, completion: @escaping (_ data: UpdateWorldExperienceMemoryMapResponse?, _ error: Error?) -> Void)
```

Set a hash map item (ttlSeconds required; ifVersion for compare-and-set).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let map = "map_example" // String | 
let key = "key_example" // String | 

// Set a hash map item (ttlSeconds required; ifVersion for compare-and-set).
WorldsDataAPI.updateWorldExperienceMemoryMap(experienceId: experienceId, map: map, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **map** | **String** |  | 
 **key** | **String** |  | 

### Return type

**UpdateWorldExperienceMemoryMapResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceMemorySorted**
```swift
    open class func updateWorldExperienceMemorySorted(experienceId: String, map: String, key: String, completion: @escaping (_ data: UpdateWorldExperienceMemoryMapResponse?, _ error: Error?) -> Void)
```

Set a sorted map item (ttlSeconds, optional sortKey and ifVersion).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let map = "map_example" // String | 
let key = "key_example" // String | 

// Set a sorted map item (ttlSeconds, optional sortKey and ifVersion).
WorldsDataAPI.updateWorldExperienceMemorySorted(experienceId: experienceId, map: map, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **map** | **String** |  | 
 **key** | **String** |  | 

### Return type

**UpdateWorldExperienceMemoryMapResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceOrderedEntry**
```swift
    open class func updateWorldExperienceOrderedEntry(experienceId: String, store: String, key: String, completion: @escaping (_ data: WorldExperienceOrderedEntryResponse?, _ error: Error?) -> Void)
```

Set an OrderedStore entry to a whole number.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let store = "store_example" // String | 
let key = "key_example" // String | 

// Set an OrderedStore entry to a whole number.
WorldsDataAPI.updateWorldExperienceOrderedEntry(experienceId: experienceId, store: store, key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experienceId** | **String** |  | 
 **store** | **String** |  | 
 **key** | **String** |  | 

### Return type

**WorldExperienceOrderedEntryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

