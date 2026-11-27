# WorldsEngagementAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWorldExperienceExperienceEvent**](WorldsEngagementAPI.md#createworldexperienceexperienceevent) | **POST** /v1/worlds/experiences/{experienceId}/experience-events | Schedule an Experience Event shown on the game&#39;s card: title, description, start/end (5 min–14 days, ≤ 180 days ahead), thumbnail, place. With liveEventId it follows that live-ops event&#39;s schedule.
[**createWorldExperienceExperienceEventCancel**](WorldsEngagementAPI.md#createworldexperienceexperienceeventcancel) | **POST** /v1/worlds/experiences/{experienceId}/experience-events/{eventId}/cancel | Cancel an event (it disappears from the game&#39;s card; no reminder goes out).
[**createWorldExperienceExperienceEventRsvp**](WorldsEngagementAPI.md#createworldexperienceexperienceeventrsvp) | **POST** /v1/worlds/experiences/{experienceId}/experience-events/{eventId}/rsvp | RSVP (going: true) or take it back. remind: true also turns the experience&#39;s notifications on, so the 15-minute reminder can reach you.
[**createWorldExperienceNotification**](WorldsEngagementAPI.md#createworldexperiencenotification) | **POST** /v1/worlds/experiences/{experienceId}/notifications | Send an approved template to one player (sub) or up to 100 (subs). Only players who turned notifications on, 13+, not banned, at most 2 a day per player and outside their quiet hours receive it; every other send is logged as suppressed with its reason.
[**createWorldExperienceNotificationTemplateRetire**](WorldsEngagementAPI.md#createworldexperiencenotificationtemplateretire) | **POST** /v1/worlds/experiences/{experienceId}/notification-templates/{key}/retire | Retire a template: sends by its key stop.
[**getWorldExperienceNotificationOptIn**](WorldsEngagementAPI.md#getworldexperiencenotificationoptin) | **GET** /v1/worlds/experiences/{experienceId}/notifications/opt-in | Whether you turned this experience&#39;s notifications on.
[**getWorldExperienceNotificationReport**](WorldsEngagementAPI.md#getworldexperiencenotificationreport) | **GET** /v1/worlds/experiences/{experienceId}/notifications/report | Sends over the last N days (default 7, max 90): delivered, suppressed by reason, per template, and how many players turned notifications on.
[**listWorldExperienceEventUpcoming**](WorldsEngagementAPI.md#listworldexperienceeventupcoming) | **GET** /v1/worlds/experience-events/upcoming | Events across public experiences in the next 7 days (and live now), soonest first — the Carnival Plaza&#39;s \&quot;Coming up\&quot; board.
[**listWorldExperienceExperienceEventUpcoming**](WorldsEngagementAPI.md#listworldexperienceexperienceeventupcoming) | **GET** /v1/worlds/experiences/{experienceId}/experience-events/upcoming | An experience&#39;s upcoming and live events as players see them, with whether you are going.
[**listWorldExperienceExperienceEvents**](WorldsEngagementAPI.md#listworldexperienceexperienceevents) | **GET** /v1/worlds/experiences/{experienceId}/experience-events | Your scheduled Experience Events (upcoming, live and the last 30 days) with RSVP counts.
[**listWorldExperienceNotificationTemplates**](WorldsEngagementAPI.md#listworldexperiencenotificationtemplates) | **GET** /v1/worlds/experiences/{experienceId}/notification-templates | Notification templates: key, title and body with {placeholders}, review status (approved ones can be sent).
[**listWorldMeExperienceEvents**](WorldsEngagementAPI.md#listworldmeexperienceevents) | **GET** /v1/worlds/me/experience-events | Events you are going to that have not ended.
[**listWorldMeNotificationOptIns**](WorldsEngagementAPI.md#listworldmenotificationoptins) | **GET** /v1/worlds/me/notification-opt-ins | Every experience whose notifications you turned on.
[**updateWorldExperienceExperienceEvent**](WorldsEngagementAPI.md#updateworldexperienceexperienceevent) | **PATCH** /v1/worlds/experiences/{experienceId}/experience-events/{eventId} | Change an event. A started event keeps its start; a new start time earns RSVPs a new reminder.
[**updateWorldExperienceNotificationOptIn**](WorldsEngagementAPI.md#updateworldexperiencenotificationoptin) | **PUT** /v1/worlds/experiences/{experienceId}/notifications/opt-in | Turn this experience&#39;s notifications on or off for you. timeZone (IANA) keeps them out of your night.
[**updateWorldExperienceNotificationTemplate**](WorldsEngagementAPI.md#updateworldexperiencenotificationtemplate) | **PUT** /v1/worlds/experiences/{experienceId}/notification-templates/{key} | Create or reword a template. Clean words with no link are approved at once; anything the text filter flags, or any link, waits for Crossly review (24 h). Rewording re-reviews.


# **createWorldExperienceExperienceEvent**
```swift
    open class func createWorldExperienceExperienceEvent(experienceId: String, completion: @escaping (_ data: WorldExperienceExperienceEventResponse?, _ error: Error?) -> Void)
```

Schedule an Experience Event shown on the game's card: title, description, start/end (5 min–14 days, ≤ 180 days ahead), thumbnail, place. With liveEventId it follows that live-ops event's schedule.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Schedule an Experience Event shown on the game's card: title, description, start/end (5 min–14 days, ≤ 180 days ahead), thumbnail, place. With liveEventId it follows that live-ops event's schedule.
WorldsEngagementAPI.createWorldExperienceExperienceEvent(experienceId: experienceId) { (response, error) in
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

**WorldExperienceExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceExperienceEventCancel**
```swift
    open class func createWorldExperienceExperienceEventCancel(experienceId: String, eventId: String, completion: @escaping (_ data: WorldExperienceExperienceEventResponse?, _ error: Error?) -> Void)
```

Cancel an event (it disappears from the game's card; no reminder goes out).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let eventId = "eventId_example" // String | 

// Cancel an event (it disappears from the game's card; no reminder goes out).
WorldsEngagementAPI.createWorldExperienceExperienceEventCancel(experienceId: experienceId, eventId: eventId) { (response, error) in
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
 **eventId** | **String** |  | 

### Return type

**WorldExperienceExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceExperienceEventRsvp**
```swift
    open class func createWorldExperienceExperienceEventRsvp(experienceId: String, eventId: String, completion: @escaping (_ data: WorldExperienceExperienceEventResponse?, _ error: Error?) -> Void)
```

RSVP (going: true) or take it back. remind: true also turns the experience's notifications on, so the 15-minute reminder can reach you.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let eventId = "eventId_example" // String | 

// RSVP (going: true) or take it back. remind: true also turns the experience's notifications on, so the 15-minute reminder can reach you.
WorldsEngagementAPI.createWorldExperienceExperienceEventRsvp(experienceId: experienceId, eventId: eventId) { (response, error) in
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
 **eventId** | **String** |  | 

### Return type

**WorldExperienceExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceNotification**
```swift
    open class func createWorldExperienceNotification(experienceId: String, completion: @escaping (_ data: CreateWorldExperienceNotificationResponse?, _ error: Error?) -> Void)
```

Send an approved template to one player (sub) or up to 100 (subs). Only players who turned notifications on, 13+, not banned, at most 2 a day per player and outside their quiet hours receive it; every other send is logged as suppressed with its reason.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Send an approved template to one player (sub) or up to 100 (subs). Only players who turned notifications on, 13+, not banned, at most 2 a day per player and outside their quiet hours receive it; every other send is logged as suppressed with its reason.
WorldsEngagementAPI.createWorldExperienceNotification(experienceId: experienceId) { (response, error) in
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

**CreateWorldExperienceNotificationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWorldExperienceNotificationTemplateRetire**
```swift
    open class func createWorldExperienceNotificationTemplateRetire(experienceId: String, key: String, completion: @escaping (_ data: UpdateWorldExperienceNotificationTemplateResponse?, _ error: Error?) -> Void)
```

Retire a template: sends by its key stop.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let key = "key_example" // String | 

// Retire a template: sends by its key stop.
WorldsEngagementAPI.createWorldExperienceNotificationTemplateRetire(experienceId: experienceId, key: key) { (response, error) in
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
 **key** | **String** |  | 

### Return type

**UpdateWorldExperienceNotificationTemplateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceNotificationOptIn**
```swift
    open class func getWorldExperienceNotificationOptIn(experienceId: String, completion: @escaping (_ data: GetWorldExperienceNotificationOptInResponse?, _ error: Error?) -> Void)
```

Whether you turned this experience's notifications on.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Whether you turned this experience's notifications on.
WorldsEngagementAPI.getWorldExperienceNotificationOptIn(experienceId: experienceId) { (response, error) in
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

**GetWorldExperienceNotificationOptInResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldExperienceNotificationReport**
```swift
    open class func getWorldExperienceNotificationReport(experienceId: String, completion: @escaping (_ data: GetWorldExperienceNotificationReportResponse?, _ error: Error?) -> Void)
```

Sends over the last N days (default 7, max 90): delivered, suppressed by reason, per template, and how many players turned notifications on.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Sends over the last N days (default 7, max 90): delivered, suppressed by reason, per template, and how many players turned notifications on.
WorldsEngagementAPI.getWorldExperienceNotificationReport(experienceId: experienceId) { (response, error) in
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

**GetWorldExperienceNotificationReportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceEventUpcoming**
```swift
    open class func listWorldExperienceEventUpcoming(completion: @escaping (_ data: ListWorldExperienceEventUpcomingResponse?, _ error: Error?) -> Void)
```

Events across public experiences in the next 7 days (and live now), soonest first — the Carnival Plaza's \"Coming up\" board.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Events across public experiences in the next 7 days (and live now), soonest first — the Carnival Plaza's \"Coming up\" board.
WorldsEngagementAPI.listWorldExperienceEventUpcoming() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**ListWorldExperienceEventUpcomingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceExperienceEventUpcoming**
```swift
    open class func listWorldExperienceExperienceEventUpcoming(experienceId: String, completion: @escaping (_ data: ListWorldExperienceExperienceEventsResponse?, _ error: Error?) -> Void)
```

An experience's upcoming and live events as players see them, with whether you are going.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// An experience's upcoming and live events as players see them, with whether you are going.
WorldsEngagementAPI.listWorldExperienceExperienceEventUpcoming(experienceId: experienceId) { (response, error) in
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

**ListWorldExperienceExperienceEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceExperienceEvents**
```swift
    open class func listWorldExperienceExperienceEvents(experienceId: String, completion: @escaping (_ data: ListWorldExperienceExperienceEventsResponse?, _ error: Error?) -> Void)
```

Your scheduled Experience Events (upcoming, live and the last 30 days) with RSVP counts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Your scheduled Experience Events (upcoming, live and the last 30 days) with RSVP counts.
WorldsEngagementAPI.listWorldExperienceExperienceEvents(experienceId: experienceId) { (response, error) in
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

**ListWorldExperienceExperienceEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldExperienceNotificationTemplates**
```swift
    open class func listWorldExperienceNotificationTemplates(experienceId: String, completion: @escaping (_ data: ListWorldExperienceNotificationTemplatesResponse?, _ error: Error?) -> Void)
```

Notification templates: key, title and body with {placeholders}, review status (approved ones can be sent).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Notification templates: key, title and body with {placeholders}, review status (approved ones can be sent).
WorldsEngagementAPI.listWorldExperienceNotificationTemplates(experienceId: experienceId) { (response, error) in
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

**ListWorldExperienceNotificationTemplatesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldMeExperienceEvents**
```swift
    open class func listWorldMeExperienceEvents(completion: @escaping (_ data: ListWorldMeExperienceEventsResponse?, _ error: Error?) -> Void)
```

Events you are going to that have not ended.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Events you are going to that have not ended.
WorldsEngagementAPI.listWorldMeExperienceEvents() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**ListWorldMeExperienceEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldMeNotificationOptIns**
```swift
    open class func listWorldMeNotificationOptIns(completion: @escaping (_ data: ListWorldMeNotificationOptInsResponse?, _ error: Error?) -> Void)
```

Every experience whose notifications you turned on.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every experience whose notifications you turned on.
WorldsEngagementAPI.listWorldMeNotificationOptIns() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**ListWorldMeNotificationOptInsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceExperienceEvent**
```swift
    open class func updateWorldExperienceExperienceEvent(experienceId: String, eventId: String, completion: @escaping (_ data: WorldExperienceExperienceEventResponse?, _ error: Error?) -> Void)
```

Change an event. A started event keeps its start; a new start time earns RSVPs a new reminder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let eventId = "eventId_example" // String | 

// Change an event. A started event keeps its start; a new start time earns RSVPs a new reminder.
WorldsEngagementAPI.updateWorldExperienceExperienceEvent(experienceId: experienceId, eventId: eventId) { (response, error) in
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
 **eventId** | **String** |  | 

### Return type

**WorldExperienceExperienceEventResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceNotificationOptIn**
```swift
    open class func updateWorldExperienceNotificationOptIn(experienceId: String, completion: @escaping (_ data: GetWorldExperienceNotificationOptInResponse?, _ error: Error?) -> Void)
```

Turn this experience's notifications on or off for you. timeZone (IANA) keeps them out of your night.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 

// Turn this experience's notifications on or off for you. timeZone (IANA) keeps them out of your night.
WorldsEngagementAPI.updateWorldExperienceNotificationOptIn(experienceId: experienceId) { (response, error) in
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

**GetWorldExperienceNotificationOptInResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWorldExperienceNotificationTemplate**
```swift
    open class func updateWorldExperienceNotificationTemplate(experienceId: String, key: String, completion: @escaping (_ data: UpdateWorldExperienceNotificationTemplateResponse?, _ error: Error?) -> Void)
```

Create or reword a template. Clean words with no link are approved at once; anything the text filter flags, or any link, waits for Crossly review (24 h). Rewording re-reviews.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let experienceId = "experienceId_example" // String | 
let key = "key_example" // String | 

// Create or reword a template. Clean words with no link are approved at once; anything the text filter flags, or any link, waits for Crossly review (24 h). Rewording re-reviews.
WorldsEngagementAPI.updateWorldExperienceNotificationTemplate(experienceId: experienceId, key: key) { (response, error) in
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
 **key** | **String** |  | 

### Return type

**UpdateWorldExperienceNotificationTemplateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

