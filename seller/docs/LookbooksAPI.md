# LookbooksAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLookbook**](LookbooksAPI.md#createlookbook) | **POST** /v1/lookbooks | Create a lookbook. Pass templateId (classic, editorial, hero, magazine, drop, sale, postcard) to start it from a template styled with your storefront brand kit.
[**createLookbookCampaign**](LookbooksAPI.md#createlookbookcampaign) | **POST** /v1/lookbook-campaigns | Email a lookbook to customers now or at scheduledAt. Audience kind subscribers | all | repeat | segment {filters} | handles {handles}; only people with marketing consent who have not unsubscribed receive it.
[**createLookbookCampaignCancel**](LookbooksAPI.md#createlookbookcampaigncancel) | **POST** /v1/lookbook-campaigns/{id}/cancel | Cancel a scheduled campaign or stop one that is sending (emails already sent stay sent).
[**createLookbookCampaignPreview**](LookbooksAPI.md#createlookbookcampaignpreview) | **POST** /v1/lookbook-campaigns/preview | Preview a lookbook email campaign without sending: how many of the audience can receive it (opted in, not suppressed) and the rendered HTML/text.
[**createLookbookShareLink**](LookbooksAPI.md#createlookbooksharelink) | **POST** /v1/lookbooks/{id}/share-links | Make a share link for someone without a Crossly login: role view, comment or edit; expires after ttlHours (1 to 2160, default 168). The url is shown once.
[**createPrintMailJob**](LookbooksAPI.md#createprintmailjob) | **POST** /v1/print-mail/jobs | Draft a printed lookbook mailing (beta): renders the print-ready PDF with bleed and estimates the cost from your per-piece price. Mails nothing until confirmed.
[**createPrintMailJobConfirm**](LookbooksAPI.md#createprintmailjobconfirm) | **POST** /v1/print-mail/jobs/{id}/confirm | Confirm a drafted print job: acknowledgeCharges must be true and pieces must equal the job&#39;s piece count. Your Lob or PostGrid account is billed.
[**getLookbookCampaign**](LookbooksAPI.md#getlookbookcampaign) | **GET** /v1/lookbook-campaigns/{id} | One lookbook campaign and its counts.
[**getLookbookDesign**](LookbooksAPI.md#getlookbookdesign) | **GET** /v1/lookbooks/{id}/design | A lookbook design document (pages of text, photo, listing, shape and sticker elements) with live listing title/price/photo, your brand kit and rendered page images.
[**listEmailProviders**](LookbooksAPI.md#listemailproviders) | **GET** /v1/email-providers | Your BYOK email providers (SMTP, Mailgun, SendGrid, SES, Resend, Postmark, Brevo, Mailjet, SparkPost, MailerSend, Mandrill, Plunk and more): label, from address, default, last test. Secrets are never returned.
[**listLookbookCampaignRecipients**](LookbooksAPI.md#listlookbookcampaignrecipients) | **GET** /v1/lookbook-campaigns/{id}/recipients | Per-recipient results for a campaign: status (queued, sent, failed, skipped + reason), provider message id, opens, clicks, bounce, unsubscribe.
[**listLookbookCampaigns**](LookbooksAPI.md#listlookbookcampaigns) | **GET** /v1/lookbook-campaigns | Your lookbook campaigns, newest first, with sent / failed / skipped / opened / clicked / bounced / unsubscribed counts.
[**listLookbooks**](LookbooksAPI.md#listlookbooks) | **GET** /v1/lookbooks | Your lookbooks: id, slug, title, published, current design version and item count.
[**listPrintMailJobs**](LookbooksAPI.md#listprintmailjobs) | **GET** /v1/print-mail/jobs | Print-and-mail jobs (beta): provider, format, pieces, estimate, status and per-piece results.
[**updateLookbookDesign**](LookbooksAPI.md#updatelookbookdesign) | **PUT** /v1/lookbooks/{id}/design | Save a new design version. Images must already be on the Crossly CDN; listings must be your own Crossly listings. Pass baseVersion to get a 409 instead of overwriting a newer save.


# **createLookbook**
```swift
    open class func createLookbook(completion: @escaping (_ data: CreateLookbookResponse?, _ error: Error?) -> Void)
```

Create a lookbook. Pass templateId (classic, editorial, hero, magazine, drop, sale, postcard) to start it from a template styled with your storefront brand kit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a lookbook. Pass templateId (classic, editorial, hero, magazine, drop, sale, postcard) to start it from a template styled with your storefront brand kit.
LookbooksAPI.createLookbook() { (response, error) in
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

**CreateLookbookResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLookbookCampaign**
```swift
    open class func createLookbookCampaign(completion: @escaping (_ data: LookbookCampaignResponse?, _ error: Error?) -> Void)
```

Email a lookbook to customers now or at scheduledAt. Audience kind subscribers | all | repeat | segment {filters} | handles {handles}; only people with marketing consent who have not unsubscribed receive it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Email a lookbook to customers now or at scheduledAt. Audience kind subscribers | all | repeat | segment {filters} | handles {handles}; only people with marketing consent who have not unsubscribed receive it.
LookbooksAPI.createLookbookCampaign() { (response, error) in
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

**LookbookCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLookbookCampaignCancel**
```swift
    open class func createLookbookCampaignCancel(id: String, completion: @escaping (_ data: LookbookCampaignResponse?, _ error: Error?) -> Void)
```

Cancel a scheduled campaign or stop one that is sending (emails already sent stay sent).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a scheduled campaign or stop one that is sending (emails already sent stay sent).
LookbooksAPI.createLookbookCampaignCancel(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

**LookbookCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLookbookCampaignPreview**
```swift
    open class func createLookbookCampaignPreview(completion: @escaping (_ data: CreateLookbookCampaignPreviewResponse?, _ error: Error?) -> Void)
```

Preview a lookbook email campaign without sending: how many of the audience can receive it (opted in, not suppressed) and the rendered HTML/text.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Preview a lookbook email campaign without sending: how many of the audience can receive it (opted in, not suppressed) and the rendered HTML/text.
LookbooksAPI.createLookbookCampaignPreview() { (response, error) in
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

**CreateLookbookCampaignPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLookbookShareLink**
```swift
    open class func createLookbookShareLink(id: String, completion: @escaping (_ data: CreateLookbookShareLinkResponse?, _ error: Error?) -> Void)
```

Make a share link for someone without a Crossly login: role view, comment or edit; expires after ttlHours (1 to 2160, default 168). The url is shown once.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Make a share link for someone without a Crossly login: role view, comment or edit; expires after ttlHours (1 to 2160, default 168). The url is shown once.
LookbooksAPI.createLookbookShareLink(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

**CreateLookbookShareLinkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPrintMailJob**
```swift
    open class func createPrintMailJob(completion: @escaping (_ data: CreatePrintMailJobResponse?, _ error: Error?) -> Void)
```

Draft a printed lookbook mailing (beta): renders the print-ready PDF with bleed and estimates the cost from your per-piece price. Mails nothing until confirmed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Draft a printed lookbook mailing (beta): renders the print-ready PDF with bleed and estimates the cost from your per-piece price. Mails nothing until confirmed.
LookbooksAPI.createPrintMailJob() { (response, error) in
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

**CreatePrintMailJobResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createPrintMailJobConfirm**
```swift
    open class func createPrintMailJobConfirm(id: String, completion: @escaping (_ data: CreatePrintMailJobConfirmResponse?, _ error: Error?) -> Void)
```

Confirm a drafted print job: acknowledgeCharges must be true and pieces must equal the job's piece count. Your Lob or PostGrid account is billed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Confirm a drafted print job: acknowledgeCharges must be true and pieces must equal the job's piece count. Your Lob or PostGrid account is billed.
LookbooksAPI.createPrintMailJobConfirm(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

**CreatePrintMailJobConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getLookbookCampaign**
```swift
    open class func getLookbookCampaign(id: String, completion: @escaping (_ data: LookbookCampaignResponse?, _ error: Error?) -> Void)
```

One lookbook campaign and its counts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One lookbook campaign and its counts.
LookbooksAPI.getLookbookCampaign(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

**LookbookCampaignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getLookbookDesign**
```swift
    open class func getLookbookDesign(id: String, completion: @escaping (_ data: GetLookbookDesignResponse?, _ error: Error?) -> Void)
```

A lookbook design document (pages of text, photo, listing, shape and sticker elements) with live listing title/price/photo, your brand kit and rendered page images.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A lookbook design document (pages of text, photo, listing, shape and sticker elements) with live listing title/price/photo, your brand kit and rendered page images.
LookbooksAPI.getLookbookDesign(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

**GetLookbookDesignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listEmailProviders**
```swift
    open class func listEmailProviders(completion: @escaping (_ data: ListEmailProvidersResponse?, _ error: Error?) -> Void)
```

Your BYOK email providers (SMTP, Mailgun, SendGrid, SES, Resend, Postmark, Brevo, Mailjet, SparkPost, MailerSend, Mandrill, Plunk and more): label, from address, default, last test. Secrets are never returned.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your BYOK email providers (SMTP, Mailgun, SendGrid, SES, Resend, Postmark, Brevo, Mailjet, SparkPost, MailerSend, Mandrill, Plunk and more): label, from address, default, last test. Secrets are never returned.
LookbooksAPI.listEmailProviders() { (response, error) in
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

**ListEmailProvidersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listLookbookCampaignRecipients**
```swift
    open class func listLookbookCampaignRecipients(id: String, completion: @escaping (_ data: ListLookbookCampaignRecipientsResponse?, _ error: Error?) -> Void)
```

Per-recipient results for a campaign: status (queued, sent, failed, skipped + reason), provider message id, opens, clicks, bounce, unsubscribe.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Per-recipient results for a campaign: status (queued, sent, failed, skipped + reason), provider message id, opens, clicks, bounce, unsubscribe.
LookbooksAPI.listLookbookCampaignRecipients(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

**ListLookbookCampaignRecipientsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listLookbookCampaigns**
```swift
    open class func listLookbookCampaigns(completion: @escaping (_ data: ListLookbookCampaignsResponse?, _ error: Error?) -> Void)
```

Your lookbook campaigns, newest first, with sent / failed / skipped / opened / clicked / bounced / unsubscribed counts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your lookbook campaigns, newest first, with sent / failed / skipped / opened / clicked / bounced / unsubscribed counts.
LookbooksAPI.listLookbookCampaigns() { (response, error) in
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

**ListLookbookCampaignsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listLookbooks**
```swift
    open class func listLookbooks(completion: @escaping (_ data: ListLookbooksResponse?, _ error: Error?) -> Void)
```

Your lookbooks: id, slug, title, published, current design version and item count.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your lookbooks: id, slug, title, published, current design version and item count.
LookbooksAPI.listLookbooks() { (response, error) in
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

**ListLookbooksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listPrintMailJobs**
```swift
    open class func listPrintMailJobs(completion: @escaping (_ data: ListPrintMailJobsResponse?, _ error: Error?) -> Void)
```

Print-and-mail jobs (beta): provider, format, pieces, estimate, status and per-piece results.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Print-and-mail jobs (beta): provider, format, pieces, estimate, status and per-piece results.
LookbooksAPI.listPrintMailJobs() { (response, error) in
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

**ListPrintMailJobsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateLookbookDesign**
```swift
    open class func updateLookbookDesign(id: String, completion: @escaping (_ data: UpdateLookbookDesignResponse?, _ error: Error?) -> Void)
```

Save a new design version. Images must already be on the Crossly CDN; listings must be your own Crossly listings. Pass baseVersion to get a 409 instead of overwriting a newer save.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Save a new design version. Images must already be on the Crossly CDN; listings must be your own Crossly listings. Pass baseVersion to get a 409 instead of overwriting a newer save.
LookbooksAPI.updateLookbookDesign(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

**UpdateLookbookDesignResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

