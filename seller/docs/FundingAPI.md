# FundingAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFundingApply**](FundingAPI.md#createfundingapply) | **POST** /v1/funding/apply | Apply for Crossly Funding. Decided at once on the checklist rules: approved opens your line (limit &#x3D; 25% of 90 days of settled Crossly payouts), declined lists why, needs_review goes to a person.
[**createFundingDraw**](FundingAPI.md#createfundingdraw) | **POST** /v1/funding/draws | Draw on your line for a supplier order. Send the supplier, the invoice (an uploaded invoiceFileId from POST /v1/funding/invoice-files, a reference, or a URL) and the APR from the quote you accepted (acceptedAprBps); refused if your rate changed. The advance is held as in-platform Crossly balance, never cash. Idempotent on idempotencyKey.
[**createFundingDrawApprove**](FundingAPI.md#createfundingdrawapprove) | **POST** /v1/funding/draws/{id}/approve | Approve a held draw. The two-person rule needs two distinct approvers; the requester never approves their own.
[**createFundingDrawQuote**](FundingAPI.md#createfundingdrawquote) | **POST** /v1/funding/draws/quote | The disclosure for a draw of amountCents: APR, the simple-interest fee for the full term, the total and the due date, plus your available headroom. Nothing is drawn.
[**createFundingDrawReject**](FundingAPI.md#createfundingdrawreject) | **POST** /v1/funding/draws/{id}/reject | Reject a held draw. Nothing was drawn, so nothing is owed.
[**createFundingDrawUse**](FundingAPI.md#createfundingdrawuse) | **POST** /v1/funding/draws/use | Request a draw for an approved use. Refused by the spend controls, held for approval (stage requested — no debt until disbursed), or disbursed at once as restricted funding CBX. A DEBT with interest: show the disclosure first.
[**createFundingInvoiceFile**](FundingAPI.md#createfundinginvoicefile) | **POST** /v1/funding/invoice-files | Sign an upload for a supplier invoice: a PDF or image (application/pdf, image/jpeg, image/png, image/webp, image/heic) of at most 15 MB. PUT the bytes to uploadUrl with the same Content-Type and exactly contentLength bytes, then draw with invoiceFileId &#x3D; file.id. Stored privately; one draw per file.
[**createFundingPayCrosslyFee**](FundingAPI.md#createfundingpaycrosslyfee) | **POST** /v1/funding/pay/crossly-fees | Pay an open invoice of your Crossly plan with restricted funding CBX (no card is charged; the invoice is marked paid). Idempotent per invoice.
[**createFundingPayShippingLabel**](FundingAPI.md#createfundingpayshippinglabel) | **POST** /v1/funding/pay/shipping-labels | Top up your shipping wallet with restricted funding CBX; labels you buy are then debited from it. Idempotent on idempotencyKey. Refused when the spend controls forbid shipping labels or it is over your approval threshold with no approved draw.
[**createFundingPayVaultFee**](FundingAPI.md#createfundingpayvaultfee) | **POST** /v1/funding/pay/vault-fees | Ship a stored Vault unit home and pay its fee (shipping, storage owed, early withdrawal) with restricted funding CBX instead of your card.
[**createFundingPoolStake**](FundingAPI.md#createfundingpoolstake) | **POST** /v1/funding/pool/stake | Stake earned CBX into the funding pool. Refused, with the reason, until the pool is live and staking is open.
[**createFundingPoolUnstake**](FundingAPI.md#createfundingpoolunstake) | **POST** /v1/funding/pool/unstake | Queue an unstake. Paid first-in first-out once your lockup has passed.
[**createFundingPoolUnstakeCancel**](FundingAPI.md#createfundingpoolunstakecancel) | **POST** /v1/funding/pool/unstake/{id}/cancel | Cancel a queued unstake that has not been paid yet.
[**createFundingPoolWaitlist**](FundingAPI.md#createfundingpoolwaitlist) | **POST** /v1/funding/pool/waitlist | Join the staker waitlist: told the moment staking into the funding pool opens.
[**createFundingRepay**](FundingAPI.md#createfundingrepay) | **POST** /v1/funding/repay | Repay. source \&quot;balance\&quot; (default) takes it from your available Stripe payout balance and applies it at once. source \&quot;card\&quot; returns a PaymentIntent client secret to confirm with Stripe; source \&quot;checkout\&quot; returns checkoutUrl, a hosted Stripe Checkout page the seller pays on (no Stripe SDK needed). source \&quot;cbx\&quot; pays early from your EARNED CBX at the obligation rate (granted and funding CBX never repay a line) and applies at once. Card and checkout apply when the payment succeeds. Never more than you owe; idempotent on idempotencyKey.
[**deleteFundingMember**](FundingAPI.md#deletefundingmember) | **DELETE** /v1/funding/members/{memberUserId} | Remove a team member’s funding limit: they can no longer draw.
[**getFundingControl**](FundingAPI.md#getfundingcontrol) | **GET** /v1/funding/controls | Your funding spend controls: approved uses, supplier allow/block lists, the approval threshold, the two-person rule and each team member’s funding limit.
[**getFundingDraw**](FundingAPI.md#getfundingdraw) | **GET** /v1/funding/draws/{id} | One draw: amount, use, supplier, stage and its timeline (requested → approved → disbursed → spent → repaid).
[**getFundingDrawInvoice**](FundingAPI.md#getfundingdrawinvoice) | **GET** /v1/funding/draws/{id}/invoice | A 15-minute signed link to a draw&#39;s uploaded supplier invoice, with the file&#39;s name, type and size. 404 when the draw has no uploaded file.
[**getFundingLine**](FundingAPI.md#getfundingline) | **GET** /v1/funding/line | Your line: limit, available, outstanding (principal + interest), APR, interest accrued since the last posting, the payoff figure, next due date, anything overdue, the per-draw schedule and your auto-repay share.
[**getFundingOffer**](FundingAPI.md#getfundingoffer) | **GET** /v1/funding/offer | Your pre-qualified Crossly Funding limit and the eligibility checklist: each rule, whether you pass it, and what to do if not. Works with or without a line.
[**getFundingPool**](FundingAPI.md#getfundingpool) | **GET** /v1/funding/pool | The Crossly Funding pool: live or not and why (no token yet, no pool, no price, no capacity), capacity, utilisation, the reserve, and the uses and suppliers it allows.
[**getFundingPoolStake**](FundingAPI.md#getfundingpoolstake) | **GET** /v1/funding/pool/stake | Your position in the funding pool, the trailing APY reading (never a promise), lockup, unstake queue, history and the risk disclosure.
[**getFundingSpendable**](FundingAPI.md#getfundingspendable) | **GET** /v1/funding/spendable | What your restricted funding CBX can pay right now, in cents, for each Crossly use (shipping labels, Crossly fees, ads, Vault fees). 0 &#x3D; none, or your spend controls refuse that use.
[**getFundingStatement**](FundingAPI.md#getfundingstatement) | **GET** /v1/funding/statements | A monthly statement (?month&#x3D;YYYY-MM, default the latest): opening balance, every draw, interest posting and payment, and the closing balance; plus the months available.
[**listFundingApprovals**](FundingAPI.md#listfundingapprovals) | **GET** /v1/funding/approvals | Draws your spend controls hold for approval, with the approvals so far and how many are needed.
[**listFundingDraws**](FundingAPI.md#listfundingdraws) | **GET** /v1/funding/draws | Every draw on your line: what it paid for (a supplier order, or a Crossly checkout), its APR, estimated fee and due date.
[**listFundingReceipts**](FundingAPI.md#listfundingreceipts) | **GET** /v1/funding/receipts | Your funding payments to Crossly, newest first: the use, what it paid for, cents, status (pending, paid, failed) and the draw it was stamped against.
[**listFundingRepayments**](FundingAPI.md#listfundingrepayments) | **GET** /v1/funding/repayments | Manual repayments (card / bank, or from your payout balance), newest first.
[**updateFundingAutorepay**](FundingAPI.md#updatefundingautorepay) | **PUT** /v1/funding/autorepay | Set the share of each Crossly payout applied to what you owe: a whole percent from 10 to 100 (default 20). Never more than you owe is taken.
[**updateFundingControl**](FundingAPI.md#updatefundingcontrol) | **PUT** /v1/funding/controls | Change your funding spend controls. Enforced at every spend: wholesale checkout, labels, ads, Crossly and Vault fees.
[**updateFundingMember**](FundingAPI.md#updatefundingmember) | **PUT** /v1/funding/members/{memberUserId} | Set a team member’s funding limit (per draw or per month).


# **createFundingApply**
```swift
    open class func createFundingApply(completion: @escaping (_ data: CreateFundingApplyResponse?, _ error: Error?) -> Void)
```

Apply for Crossly Funding. Decided at once on the checklist rules: approved opens your line (limit = 25% of 90 days of settled Crossly payouts), declined lists why, needs_review goes to a person.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Apply for Crossly Funding. Decided at once on the checklist rules: approved opens your line (limit = 25% of 90 days of settled Crossly payouts), declined lists why, needs_review goes to a person.
FundingAPI.createFundingApply() { (response, error) in
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

**CreateFundingApplyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingDraw**
```swift
    open class func createFundingDraw(completion: @escaping (_ data: CreateFundingDrawResponse?, _ error: Error?) -> Void)
```

Draw on your line for a supplier order. Send the supplier, the invoice (an uploaded invoiceFileId from POST /v1/funding/invoice-files, a reference, or a URL) and the APR from the quote you accepted (acceptedAprBps); refused if your rate changed. The advance is held as in-platform Crossly balance, never cash. Idempotent on idempotencyKey.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Draw on your line for a supplier order. Send the supplier, the invoice (an uploaded invoiceFileId from POST /v1/funding/invoice-files, a reference, or a URL) and the APR from the quote you accepted (acceptedAprBps); refused if your rate changed. The advance is held as in-platform Crossly balance, never cash. Idempotent on idempotencyKey.
FundingAPI.createFundingDraw() { (response, error) in
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

**CreateFundingDrawResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingDrawApprove**
```swift
    open class func createFundingDrawApprove(id: String, completion: @escaping (_ data: CreateFundingDrawRejectResponse?, _ error: Error?) -> Void)
```

Approve a held draw. The two-person rule needs two distinct approvers; the requester never approves their own.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Approve a held draw. The two-person rule needs two distinct approvers; the requester never approves their own.
FundingAPI.createFundingDrawApprove(id: id) { (response, error) in
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

**CreateFundingDrawRejectResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingDrawQuote**
```swift
    open class func createFundingDrawQuote(completion: @escaping (_ data: CreateFundingDrawQuoteResponse?, _ error: Error?) -> Void)
```

The disclosure for a draw of amountCents: APR, the simple-interest fee for the full term, the total and the due date, plus your available headroom. Nothing is drawn.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The disclosure for a draw of amountCents: APR, the simple-interest fee for the full term, the total and the due date, plus your available headroom. Nothing is drawn.
FundingAPI.createFundingDrawQuote() { (response, error) in
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

**CreateFundingDrawQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingDrawReject**
```swift
    open class func createFundingDrawReject(id: String, completion: @escaping (_ data: CreateFundingDrawRejectResponse?, _ error: Error?) -> Void)
```

Reject a held draw. Nothing was drawn, so nothing is owed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Reject a held draw. Nothing was drawn, so nothing is owed.
FundingAPI.createFundingDrawReject(id: id) { (response, error) in
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

**CreateFundingDrawRejectResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingDrawUse**
```swift
    open class func createFundingDrawUse(completion: @escaping (_ data: CreateFundingDrawUseResponse?, _ error: Error?) -> Void)
```

Request a draw for an approved use. Refused by the spend controls, held for approval (stage requested — no debt until disbursed), or disbursed at once as restricted funding CBX. A DEBT with interest: show the disclosure first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Request a draw for an approved use. Refused by the spend controls, held for approval (stage requested — no debt until disbursed), or disbursed at once as restricted funding CBX. A DEBT with interest: show the disclosure first.
FundingAPI.createFundingDrawUse() { (response, error) in
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

**CreateFundingDrawUseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingInvoiceFile**
```swift
    open class func createFundingInvoiceFile(completion: @escaping (_ data: CreateFundingInvoiceFileResponse?, _ error: Error?) -> Void)
```

Sign an upload for a supplier invoice: a PDF or image (application/pdf, image/jpeg, image/png, image/webp, image/heic) of at most 15 MB. PUT the bytes to uploadUrl with the same Content-Type and exactly contentLength bytes, then draw with invoiceFileId = file.id. Stored privately; one draw per file.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Sign an upload for a supplier invoice: a PDF or image (application/pdf, image/jpeg, image/png, image/webp, image/heic) of at most 15 MB. PUT the bytes to uploadUrl with the same Content-Type and exactly contentLength bytes, then draw with invoiceFileId = file.id. Stored privately; one draw per file.
FundingAPI.createFundingInvoiceFile() { (response, error) in
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

**CreateFundingInvoiceFileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingPayCrosslyFee**
```swift
    open class func createFundingPayCrosslyFee(completion: @escaping (_ data: CreateFundingPayCrosslyFeeResponse?, _ error: Error?) -> Void)
```

Pay an open invoice of your Crossly plan with restricted funding CBX (no card is charged; the invoice is marked paid). Idempotent per invoice.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Pay an open invoice of your Crossly plan with restricted funding CBX (no card is charged; the invoice is marked paid). Idempotent per invoice.
FundingAPI.createFundingPayCrosslyFee() { (response, error) in
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

**CreateFundingPayCrosslyFeeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingPayShippingLabel**
```swift
    open class func createFundingPayShippingLabel(completion: @escaping (_ data: CreateFundingPayShippingLabelResponse?, _ error: Error?) -> Void)
```

Top up your shipping wallet with restricted funding CBX; labels you buy are then debited from it. Idempotent on idempotencyKey. Refused when the spend controls forbid shipping labels or it is over your approval threshold with no approved draw.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Top up your shipping wallet with restricted funding CBX; labels you buy are then debited from it. Idempotent on idempotencyKey. Refused when the spend controls forbid shipping labels or it is over your approval threshold with no approved draw.
FundingAPI.createFundingPayShippingLabel() { (response, error) in
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

**CreateFundingPayShippingLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingPayVaultFee**
```swift
    open class func createFundingPayVaultFee(completion: @escaping (_ data: CreateFundingPayVaultFeeResponse?, _ error: Error?) -> Void)
```

Ship a stored Vault unit home and pay its fee (shipping, storage owed, early withdrawal) with restricted funding CBX instead of your card.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Ship a stored Vault unit home and pay its fee (shipping, storage owed, early withdrawal) with restricted funding CBX instead of your card.
FundingAPI.createFundingPayVaultFee() { (response, error) in
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

**CreateFundingPayVaultFeeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingPoolStake**
```swift
    open class func createFundingPoolStake(completion: @escaping (_ data: CreateFundingPoolStakeResponse?, _ error: Error?) -> Void)
```

Stake earned CBX into the funding pool. Refused, with the reason, until the pool is live and staking is open.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Stake earned CBX into the funding pool. Refused, with the reason, until the pool is live and staking is open.
FundingAPI.createFundingPoolStake() { (response, error) in
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

**CreateFundingPoolStakeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingPoolUnstake**
```swift
    open class func createFundingPoolUnstake(completion: @escaping (_ data: FundingPoolResponse?, _ error: Error?) -> Void)
```

Queue an unstake. Paid first-in first-out once your lockup has passed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Queue an unstake. Paid first-in first-out once your lockup has passed.
FundingAPI.createFundingPoolUnstake() { (response, error) in
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

**FundingPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingPoolUnstakeCancel**
```swift
    open class func createFundingPoolUnstakeCancel(id: String, completion: @escaping (_ data: FundingPoolResponse?, _ error: Error?) -> Void)
```

Cancel a queued unstake that has not been paid yet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a queued unstake that has not been paid yet.
FundingAPI.createFundingPoolUnstakeCancel(id: id) { (response, error) in
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

**FundingPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingPoolWaitlist**
```swift
    open class func createFundingPoolWaitlist(completion: @escaping (_ data: FundingPoolResponse?, _ error: Error?) -> Void)
```

Join the staker waitlist: told the moment staking into the funding pool opens.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Join the staker waitlist: told the moment staking into the funding pool opens.
FundingAPI.createFundingPoolWaitlist() { (response, error) in
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

**FundingPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createFundingRepay**
```swift
    open class func createFundingRepay(completion: @escaping (_ data: CreateFundingRepayResponse?, _ error: Error?) -> Void)
```

Repay. source \"balance\" (default) takes it from your available Stripe payout balance and applies it at once. source \"card\" returns a PaymentIntent client secret to confirm with Stripe; source \"checkout\" returns checkoutUrl, a hosted Stripe Checkout page the seller pays on (no Stripe SDK needed). source \"cbx\" pays early from your EARNED CBX at the obligation rate (granted and funding CBX never repay a line) and applies at once. Card and checkout apply when the payment succeeds. Never more than you owe; idempotent on idempotencyKey.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Repay. source \"balance\" (default) takes it from your available Stripe payout balance and applies it at once. source \"card\" returns a PaymentIntent client secret to confirm with Stripe; source \"checkout\" returns checkoutUrl, a hosted Stripe Checkout page the seller pays on (no Stripe SDK needed). source \"cbx\" pays early from your EARNED CBX at the obligation rate (granted and funding CBX never repay a line) and applies at once. Card and checkout apply when the payment succeeds. Never more than you owe; idempotent on idempotencyKey.
FundingAPI.createFundingRepay() { (response, error) in
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

**CreateFundingRepayResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteFundingMember**
```swift
    open class func deleteFundingMember(memberUserId: String, completion: @escaping (_ data: DeleteFundingMemberResponse?, _ error: Error?) -> Void)
```

Remove a team member’s funding limit: they can no longer draw.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let memberUserId = "memberUserId_example" // String | 

// Remove a team member’s funding limit: they can no longer draw.
FundingAPI.deleteFundingMember(memberUserId: memberUserId) { (response, error) in
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
 **memberUserId** | **String** |  | 

### Return type

**DeleteFundingMemberResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getFundingControl**
```swift
    open class func getFundingControl(completion: @escaping (_ data: GetFundingControlResponse?, _ error: Error?) -> Void)
```

Your funding spend controls: approved uses, supplier allow/block lists, the approval threshold, the two-person rule and each team member’s funding limit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your funding spend controls: approved uses, supplier allow/block lists, the approval threshold, the two-person rule and each team member’s funding limit.
FundingAPI.getFundingControl() { (response, error) in
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

**GetFundingControlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getFundingDraw**
```swift
    open class func getFundingDraw(id: String, completion: @escaping (_ data: GetFundingDrawResponse?, _ error: Error?) -> Void)
```

One draw: amount, use, supplier, stage and its timeline (requested → approved → disbursed → spent → repaid).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One draw: amount, use, supplier, stage and its timeline (requested → approved → disbursed → spent → repaid).
FundingAPI.getFundingDraw(id: id) { (response, error) in
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

**GetFundingDrawResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getFundingDrawInvoice**
```swift
    open class func getFundingDrawInvoice(id: String, completion: @escaping (_ data: GetFundingDrawInvoiceResponse?, _ error: Error?) -> Void)
```

A 15-minute signed link to a draw's uploaded supplier invoice, with the file's name, type and size. 404 when the draw has no uploaded file.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A 15-minute signed link to a draw's uploaded supplier invoice, with the file's name, type and size. 404 when the draw has no uploaded file.
FundingAPI.getFundingDrawInvoice(id: id) { (response, error) in
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

**GetFundingDrawInvoiceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getFundingLine**
```swift
    open class func getFundingLine(completion: @escaping (_ data: GetFundingLineResponse?, _ error: Error?) -> Void)
```

Your line: limit, available, outstanding (principal + interest), APR, interest accrued since the last posting, the payoff figure, next due date, anything overdue, the per-draw schedule and your auto-repay share.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your line: limit, available, outstanding (principal + interest), APR, interest accrued since the last posting, the payoff figure, next due date, anything overdue, the per-draw schedule and your auto-repay share.
FundingAPI.getFundingLine() { (response, error) in
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

**GetFundingLineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getFundingOffer**
```swift
    open class func getFundingOffer(completion: @escaping (_ data: GetFundingOfferResponse?, _ error: Error?) -> Void)
```

Your pre-qualified Crossly Funding limit and the eligibility checklist: each rule, whether you pass it, and what to do if not. Works with or without a line.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your pre-qualified Crossly Funding limit and the eligibility checklist: each rule, whether you pass it, and what to do if not. Works with or without a line.
FundingAPI.getFundingOffer() { (response, error) in
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

**GetFundingOfferResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getFundingPool**
```swift
    open class func getFundingPool(completion: @escaping (_ data: GetFundingPoolResponse?, _ error: Error?) -> Void)
```

The Crossly Funding pool: live or not and why (no token yet, no pool, no price, no capacity), capacity, utilisation, the reserve, and the uses and suppliers it allows.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Crossly Funding pool: live or not and why (no token yet, no pool, no price, no capacity), capacity, utilisation, the reserve, and the uses and suppliers it allows.
FundingAPI.getFundingPool() { (response, error) in
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

**GetFundingPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getFundingPoolStake**
```swift
    open class func getFundingPoolStake(completion: @escaping (_ data: FundingPoolResponse?, _ error: Error?) -> Void)
```

Your position in the funding pool, the trailing APY reading (never a promise), lockup, unstake queue, history and the risk disclosure.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your position in the funding pool, the trailing APY reading (never a promise), lockup, unstake queue, history and the risk disclosure.
FundingAPI.getFundingPoolStake() { (response, error) in
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

**FundingPoolResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getFundingSpendable**
```swift
    open class func getFundingSpendable(completion: @escaping (_ data: GetFundingSpendableResponse?, _ error: Error?) -> Void)
```

What your restricted funding CBX can pay right now, in cents, for each Crossly use (shipping labels, Crossly fees, ads, Vault fees). 0 = none, or your spend controls refuse that use.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What your restricted funding CBX can pay right now, in cents, for each Crossly use (shipping labels, Crossly fees, ads, Vault fees). 0 = none, or your spend controls refuse that use.
FundingAPI.getFundingSpendable() { (response, error) in
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

**GetFundingSpendableResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getFundingStatement**
```swift
    open class func getFundingStatement(completion: @escaping (_ data: GetFundingStatementResponse?, _ error: Error?) -> Void)
```

A monthly statement (?month=YYYY-MM, default the latest): opening balance, every draw, interest posting and payment, and the closing balance; plus the months available.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A monthly statement (?month=YYYY-MM, default the latest): opening balance, every draw, interest posting and payment, and the closing balance; plus the months available.
FundingAPI.getFundingStatement() { (response, error) in
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

**GetFundingStatementResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listFundingApprovals**
```swift
    open class func listFundingApprovals(completion: @escaping (_ data: ListFundingApprovalsResponse?, _ error: Error?) -> Void)
```

Draws your spend controls hold for approval, with the approvals so far and how many are needed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Draws your spend controls hold for approval, with the approvals so far and how many are needed.
FundingAPI.listFundingApprovals() { (response, error) in
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

**ListFundingApprovalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listFundingDraws**
```swift
    open class func listFundingDraws(completion: @escaping (_ data: ListFundingDrawsResponse?, _ error: Error?) -> Void)
```

Every draw on your line: what it paid for (a supplier order, or a Crossly checkout), its APR, estimated fee and due date.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every draw on your line: what it paid for (a supplier order, or a Crossly checkout), its APR, estimated fee and due date.
FundingAPI.listFundingDraws() { (response, error) in
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

**ListFundingDrawsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listFundingReceipts**
```swift
    open class func listFundingReceipts(completion: @escaping (_ data: ListFundingReceiptsResponse?, _ error: Error?) -> Void)
```

Your funding payments to Crossly, newest first: the use, what it paid for, cents, status (pending, paid, failed) and the draw it was stamped against.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your funding payments to Crossly, newest first: the use, what it paid for, cents, status (pending, paid, failed) and the draw it was stamped against.
FundingAPI.listFundingReceipts() { (response, error) in
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

**ListFundingReceiptsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listFundingRepayments**
```swift
    open class func listFundingRepayments(completion: @escaping (_ data: ListFundingRepaymentsResponse?, _ error: Error?) -> Void)
```

Manual repayments (card / bank, or from your payout balance), newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Manual repayments (card / bank, or from your payout balance), newest first.
FundingAPI.listFundingRepayments() { (response, error) in
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

**ListFundingRepaymentsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateFundingAutorepay**
```swift
    open class func updateFundingAutorepay(completion: @escaping (_ data: UpdateFundingAutorepayResponse?, _ error: Error?) -> Void)
```

Set the share of each Crossly payout applied to what you owe: a whole percent from 10 to 100 (default 20). Never more than you owe is taken.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set the share of each Crossly payout applied to what you owe: a whole percent from 10 to 100 (default 20). Never more than you owe is taken.
FundingAPI.updateFundingAutorepay() { (response, error) in
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

**UpdateFundingAutorepayResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateFundingControl**
```swift
    open class func updateFundingControl(completion: @escaping (_ data: UpdateFundingControlResponse?, _ error: Error?) -> Void)
```

Change your funding spend controls. Enforced at every spend: wholesale checkout, labels, ads, Crossly and Vault fees.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Change your funding spend controls. Enforced at every spend: wholesale checkout, labels, ads, Crossly and Vault fees.
FundingAPI.updateFundingControl() { (response, error) in
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

**UpdateFundingControlResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateFundingMember**
```swift
    open class func updateFundingMember(memberUserId: String, completion: @escaping (_ data: UpdateFundingMemberResponse?, _ error: Error?) -> Void)
```

Set a team member’s funding limit (per draw or per month).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let memberUserId = "memberUserId_example" // String | 

// Set a team member’s funding limit (per draw or per month).
FundingAPI.updateFundingMember(memberUserId: memberUserId) { (response, error) in
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
 **memberUserId** | **String** |  | 

### Return type

**UpdateFundingMemberResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

