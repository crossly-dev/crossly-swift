# WholesaleAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWholesaleBuyerInvite**](WholesaleAPI.md#createwholesalebuyerinvite) | **POST** /v1/wholesale/buyers/invite | Invite a buyer by email to one or more of your catalogs. Binds to their account now if they have one, or when they sign up.
[**createWholesaleBuyerRemove**](WholesaleAPI.md#createwholesalebuyerremove) | **POST** /v1/wholesale/buyers/remove | Revoke every catalog grant a buyer (or invited email) has with you. Their terms and invoices are kept.
[**createWholesaleCatalog**](WholesaleAPI.md#createwholesalecatalog) | **POST** /v1/wholesale/catalogs | Create a catalog. visibility public | public_prices_private (prices for approved buyers) | private_discoverable (listed, opened on approval) | link (anyone with the URL) | invite (named buyers only; \&quot;private\&quot; is accepted as invite); autoApprove never | verified | all; the cascade terms (minOrderQuantity, casePack, leadTimeDays, verifiedOnly, priceVisibility, maxPerOrder, backorder, restockEta, preset ids) default every item; listed advertises a public catalog in the wholesale directory (never its prices).
[**createWholesaleCatalogItem**](WholesaleAPI.md#createwholesalecatalogitem) | **POST** /v1/wholesale/catalogs/{id}/items | Add your Crossly listings to a catalog (up to 500), each with an optional wholesalePriceCents, minOrderQuantity and casePack. Items already in the catalog have their terms updated.
[**createWholesaleDrop**](WholesaleAPI.md#createwholesaledrop) | **POST** /v1/wholesale/drops | Create a draft trade drop: name, dropAt (ISO; when it opens), audience trade|catalog (+ audienceCatalogId), kind release|prebook. A pre-book needs depositBps (100-9900) and shipBy (YYYY-MM-DD), and takes balanceNetDays (0-90) for the balance invoice. listingIds are your listing ids, each on Crossly. A pre-book makes its listings pre-orders, so buyers pay the deposit at checkout. Schedule it with PATCH status \&quot;scheduled\&quot;.
[**createWholesaleDropRelease**](WholesaleAPI.md#createwholesaledroprelease) | **POST** /v1/wholesale/drops/{id}/release | Release a live pre-book: every reserved balance becomes an invoice on account to its buyer (due in the drop balanceNetDays), emailed, and the drop ends. Safe to retry: only balances not yet invoiced are invoiced. Returns { invoiced, balanceCents, invoiceIds }.
[**createWholesaleFreightRequestAnswer**](WholesaleAPI.md#createwholesalefreightrequestanswer) | **POST** /v1/wholesale/freight-requests/{id}/answer | Answer an open freight request with a figure in CENTS (and an optional note).
[**createWholesaleGroup**](WholesaleAPI.md#createwholesalegroup) | **POST** /v1/wholesale/groups | Create a customer group with a discount in basis points (up to 9000). A buyer in several groups gets the best rate, never a stacked one.
[**createWholesaleGroupMember**](WholesaleAPI.md#createwholesalegroupmember) | **POST** /v1/wholesale/groups/{id}/members | Add a buyer to a group by account id or by the email of an existing Crossly account.
[**createWholesaleInvoiceCreditNote**](WholesaleAPI.md#createwholesaleinvoicecreditnote) | **POST** /v1/wholesale/invoices/{id}/credit-notes | Issue a credit note on an on-account invoice (short shipment, damaged, pricing error, returned, goodwill, other): at most the balance due. Numbered &lt;invoice&gt;-CN&lt;n&gt;; settling the rest closes the invoice paid. Not a refund.
[**createWholesaleInvoiceLateFee**](WholesaleAPI.md#createwholesaleinvoicelatefee) | **POST** /v1/wholesale/invoices/{id}/late-fee | Add your late fee (invoice settings lateFeeBps) to an invoice by hand, once. The hourly sweep adds it automatically when an invoice goes overdue.
[**createWholesaleInvoiceMarkPaid**](WholesaleAPI.md#createwholesaleinvoicemarkpaid) | **POST** /v1/wholesale/invoices/{id}/mark-paid | Record a payment the buyer made to you directly: method ach | check | wire | card | other, a reference, and amountCents (omit for the whole balance). When the invoice is settled, Crossly&#39;s fee and the tax it remits are charged to your billing card.
[**createWholesaleInvoiceSend**](WholesaleAPI.md#createwholesaleinvoicesend) | **POST** /v1/wholesale/invoices/{id}/send | Email the invoice to the buyer again (an overdue one goes as an overdue notice), with the link to pay it.
[**createWholesaleInvoiceVoid**](WholesaleAPI.md#createwholesaleinvoicevoid) | **POST** /v1/wholesale/invoices/{id}/void | Void an invoice nobody has paid anything on (e.g. the order was cancelled). It stops counting against the buyer&#39;s credit limit.
[**createWholesaleInvoiceWriteOff**](WholesaleAPI.md#createwholesaleinvoicewriteoff) | **POST** /v1/wholesale/invoices/{id}/write-off | Write off what is left on an invoice (bad debt): it closes as written_off and stops counting against the buyer&#39;s credit.
[**createWholesaleProfileShipsFromValidate**](WholesaleAPI.md#createwholesaleprofileshipsfromvalidate) | **POST** /v1/wholesale/profile/ships-from/validate | Check a ships-from origin ({ postalCode, country, city?, region? }) with the shipping validator without saving it. 400 invalid_ships_from with the issues; 422 for an embargoed origin.
[**createWholesaleQuoteAnswer**](WholesaleAPI.md#createwholesalequoteanswer) | **POST** /v1/wholesale/quotes/{id}/answer | Answer (or revise) a quote: a unit price in CENTS per item you quote, an expiresAt (ISO, at most 90 days out) and an optional note. Items left out are not quoted. The buyer is notified and can accept until expiry.
[**createWholesaleQuoteDecline**](WholesaleAPI.md#createwholesalequotedecline) | **POST** /v1/wholesale/quotes/{id}/decline | Decline a quote request, with an optional reason the buyer sees.
[**createWholesaleRequestDecide**](WholesaleAPI.md#createwholesalerequestdecide) | **POST** /v1/wholesale/requests/{id}/decide | Approve (grants access to that catalog; optional groupId adds the buyer to a customer group) or decline (optional reason) an access request.
[**createWholesaleTierBulk**](WholesaleAPI.md#createwholesaletierbulk) | **POST** /v1/wholesale/tiers/bulk | One ladder for many listings: breaks as [{ minQuantity, discountBps }] off each listing&#39;s own price. Returns how many were updated and which were skipped and why.
[**deleteWholesaleBuyerTerm**](WholesaleAPI.md#deletewholesalebuyerterm) | **DELETE** /v1/wholesale/buyers/{buyerUserId}/terms | Switch a buyer&#39;s account terms off. Invoices already issued are unaffected.
[**deleteWholesaleCatalog**](WholesaleAPI.md#deletewholesalecatalog) | **DELETE** /v1/wholesale/catalogs/{id} | Delete a catalog with its items, grants and access requests. Orders and invoices are untouched.
[**deleteWholesaleCatalogItem**](WholesaleAPI.md#deletewholesalecatalogitem) | **DELETE** /v1/wholesale/catalogs/{id}/items/{platformListingId} | Take an item out of a catalog. The listing itself is untouched.
[**deleteWholesaleGroup**](WholesaleAPI.md#deletewholesalegroup) | **DELETE** /v1/wholesale/groups/{id} | Delete a customer group. Its members keep any other group or account rate.
[**deleteWholesaleGroupMember**](WholesaleAPI.md#deletewholesalegroupmember) | **DELETE** /v1/wholesale/groups/{id}/members/{buyerUserId} | Take a buyer out of a group.
[**getWholesaleCatalogLineSheet**](WholesaleAPI.md#getwholesalecataloglinesheet) | **GET** /v1/wholesale/catalogs/{id}/line-sheet | The catalog&#39;s line sheet: your company details and terms, then every item with retail and trade price, minimum, case pack and quantity breaks.
[**getWholesaleCatalogShare**](WholesaleAPI.md#getwholesalecatalogshare) | **GET** /v1/wholesale/catalogs/{id}/share | The catalog&#39;s buyer link (null until you have a shop username), to share or print as a QR code.
[**getWholesaleCategory**](WholesaleAPI.md#getwholesalecategory) | **GET** /v1/wholesale/categories | The wholesale category taxonomy (id, label, group). A catalog or trade profile takes up to 12 ids, or \&quot;other:&lt;words&gt;\&quot;.
[**getWholesaleDrop**](WholesaleAPI.md#getwholesaledrop) | **GET** /v1/wholesale/drops/{id} | One trade drop with its listings and, for a pre-book, every reservation: buyer, item, quantity, deposit, balance, status and the balance invoice once released.
[**getWholesaleInvoice**](WholesaleAPI.md#getwholesaleinvoice) | **GET** /v1/wholesale/invoices/{id} | One invoice with its lines, PO reference, payments and whether Crossly dues on it are collected.
[**getWholesaleOverview**](WholesaleAPI.md#getwholesaleoverview) | **GET** /v1/wholesale/overview | Your wholesale store at a glance: the setup checklist, 30-day wholesale revenue, open orders, outstanding invoices, active buyers and pending access requests.
[**getWholesaleProfile**](WholesaleAPI.md#getwholesaleprofile) | **GET** /v1/wholesale/profile | A store&#39;s trade profile (X-Storefront-Id; default store when omitted): company, tagline, logo and banner, contact, ships-from origin, lead time, order minimums (opening, first order, reorder), the default MOQ / case pack / max per order / backorder / price visibility, return, payment and shipping preset ids, invoicing and its settings, buyer requirements and the directory defaults.
[**getWholesaleQuote**](WholesaleAPI.md#getwholesalequote) | **GET** /v1/wholesale/quotes/{id} | One quote request.
[**getWholesaleReserve**](WholesaleAPI.md#getwholesalereserve) | **GET** /v1/wholesale/reserve/{inventoryItemId} | How many units of an inventory item are held back for wholesale, and what retail channels advertise.
[**getWholesaleTermPreview**](WholesaleAPI.md#getwholesaletermpreview) | **GET** /v1/wholesale/terms/preview | The trade terms that apply to a catalog item (?catalogId&amp;platformListingId), a catalog (?catalogId) or the trade profile alone, each with its source (item, catalog, profile, default), plus the return, payment and shipping policies they resolve to.
[**listWholesaleBuyers**](WholesaleAPI.md#listwholesalebuyers) | **GET** /v1/wholesale/buyers | Your trade buyers: catalogs they can open, customer groups, account terms, outstanding balance, wholesale spend, business verification and resale-certificate status (read-only — Crossly reviews those).
[**listWholesaleCatalogItems**](WholesaleAPI.md#listwholesalecatalogitems) | **GET** /v1/wholesale/catalogs/{id}/items | A catalog&#39;s items in merchandising order, each with its retail price, trade price, minimum order quantity, case pack and quantity breaks.
[**listWholesaleCatalogs**](WholesaleAPI.md#listwholesalecatalogs) | **GET** /v1/wholesale/catalogs | Your wholesale catalogs with item, buyer-grant and pending-request counts.
[**listWholesaleDrops**](WholesaleAPI.md#listwholesaledrops) | **GET** /v1/wholesale/drops | Your trade drops and pre-books: audience (trade &#x3D; your approved trade buyers, catalog &#x3D; whoever can open audienceCatalogId), kind (release | prebook), deposit, ship date, status, and for a pre-book its reservation totals (buyers, units, deposits taken, balances still to invoice).
[**listWholesaleFreightRequests**](WholesaleAPI.md#listwholesalefreightrequests) | **GET** /v1/wholesale/freight-requests | Freight (LTL) quote requests from buyers whose order is over your pallet threshold.
[**listWholesaleGroups**](WholesaleAPI.md#listwholesalegroups) | **GET** /v1/wholesale/groups | Your customer groups with their discount and members.
[**listWholesaleInvoices**](WholesaleAPI.md#listwholesaleinvoices) | **GET** /v1/wholesale/invoices | On-account invoices, newest first, with balance due. ?status&#x3D;unpaid for open, partial and overdue together.
[**listWholesaleOrders**](WholesaleAPI.md#listwholesaleorders) | **GET** /v1/wholesale/orders | Wholesale orders: Crossly orders priced through your trade terms (catalog price, quantity break or account rate) or placed on account. Fulfil them like any order.
[**listWholesaleQuotes**](WholesaleAPI.md#listwholesalequotes) | **GET** /v1/wholesale/quotes | Quote requests (RFQ) from trade buyers: items with quantity and target price, your quoted prices and expiry. ?status&#x3D;open lists the ones waiting on you or the buyer.
[**listWholesaleRequests**](WholesaleAPI.md#listwholesalerequests) | **GET** /v1/wholesale/requests | Requests from buyers to open your private or trade-only catalogs, with each buyer&#39;s business-verification and tax-exempt status. ?status&#x3D;all includes decided ones.
[**listWholesaleSetupSteps**](WholesaleAPI.md#listwholesalesetupsteps) | **GET** /v1/wholesale/setup-steps | The wholesale setup checklist for a store: profile, ships-from, payment, returns, a catalog with items, visibility chosen, live. Each step is done because the thing exists.
[**updateWholesaleBuyerTerm**](WholesaleAPI.md#updatewholesalebuyerterm) | **PUT** /v1/wholesale/buyers/{buyerUserId}/terms | Set a buyer&#39;s account terms: netDays (0-120) for paying on account, creditLimitCents (the most they may owe you at once; null &#x3D; no limit) and discountPercentBps (their negotiated rate).
[**updateWholesaleCatalog**](WholesaleAPI.md#updatewholesalecatalog) | **PATCH** /v1/wholesale/catalogs/{id} | Edit a catalog: name, slug, description, cover image, visibility, opening-order minimum, trade gate, directory listing, active.
[**updateWholesaleCatalogItem**](WholesaleAPI.md#updatewholesalecatalogitem) | **PATCH** /v1/wholesale/catalogs/{id}/items | Change many catalog items at once: items[] sets each row (trade price, MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids); or platformListingIds + set applies the same values to each, set.pctOffRetailBps pricing each from its retail price.
[**updateWholesaleCatalogItemByPlatformListingId**](WholesaleAPI.md#updatewholesalecatalogitembyplatformlistingid) | **PATCH** /v1/wholesale/catalogs/{id}/items/{platformListingId} | Change one item&#39;s trade price and its own trade terms in this catalog (MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids). null clears &#x3D; inherit from the catalog.
[**updateWholesaleCatalogItemOrder**](WholesaleAPI.md#updatewholesalecatalogitemorder) | **PUT** /v1/wholesale/catalogs/{id}/items/order | Set the merchandising order: platform listing ids, first to last. Items left out keep their relative order after these.
[**updateWholesaleDrop**](WholesaleAPI.md#updatewholesaledrop) | **PATCH** /v1/wholesale/drops/{id} | Edit a trade drop (any create field but kind), schedule it (status \&quot;scheduled\&quot;, with dropAt in the future) or cancel it. A live drop can only be cancelled or have endsAt / perCustomerLimit changed.
[**updateWholesaleGroup**](WholesaleAPI.md#updatewholesalegroup) | **PATCH** /v1/wholesale/groups/{id} | Rename a group, change its discount, or pause it (active&#x3D;false).
[**updateWholesaleListingTier**](WholesaleAPI.md#updatewholesalelistingtier) | **PUT** /v1/wholesale/listings/{platformListingId}/tiers | Replace one listing&#39;s quantity breaks: [{ minQuantity ≥ 2, unitPriceCents }], each cheaper than the last and than the list price. An empty list removes them. Applies to every buyer at checkout.
[**updateWholesaleProfile**](WholesaleAPI.md#updatewholesaleprofile) | **PUT** /v1/wholesale/profile | Save a store&#39;s trade profile. Omitted fields are unchanged; null clears. shipsFrom is checked by the shipping validator (400 invalid_ships_from). The profile is the bottom of the trade-terms cascade: catalogs and items that leave a term empty inherit it — saving never rewrites catalogs. Preset ids must be your own presets of that kind.
[**updateWholesaleReserve**](WholesaleAPI.md#updatewholesalereserve) | **PUT** /v1/wholesale/reserve/{inventoryItemId} | Reserve N units of an inventory item for wholesale: retail channels advertise the rest and come down when only the reserve is left. 0 clears it.


# **createWholesaleBuyerInvite**
```swift
    open class func createWholesaleBuyerInvite(completion: @escaping (_ data: CreateWholesaleBuyerInviteResponse?, _ error: Error?) -> Void)
```

Invite a buyer by email to one or more of your catalogs. Binds to their account now if they have one, or when they sign up.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Invite a buyer by email to one or more of your catalogs. Binds to their account now if they have one, or when they sign up.
WholesaleAPI.createWholesaleBuyerInvite() { (response, error) in
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

**CreateWholesaleBuyerInviteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleBuyerRemove**
```swift
    open class func createWholesaleBuyerRemove(completion: @escaping (_ data: CreateWholesaleBuyerRemoveResponse?, _ error: Error?) -> Void)
```

Revoke every catalog grant a buyer (or invited email) has with you. Their terms and invoices are kept.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Revoke every catalog grant a buyer (or invited email) has with you. Their terms and invoices are kept.
WholesaleAPI.createWholesaleBuyerRemove() { (response, error) in
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

**CreateWholesaleBuyerRemoveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleCatalog**
```swift
    open class func createWholesaleCatalog(completion: @escaping (_ data: CreateWholesaleCatalogResponse?, _ error: Error?) -> Void)
```

Create a catalog. visibility public | public_prices_private (prices for approved buyers) | private_discoverable (listed, opened on approval) | link (anyone with the URL) | invite (named buyers only; \"private\" is accepted as invite); autoApprove never | verified | all; the cascade terms (minOrderQuantity, casePack, leadTimeDays, verifiedOnly, priceVisibility, maxPerOrder, backorder, restockEta, preset ids) default every item; listed advertises a public catalog in the wholesale directory (never its prices).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a catalog. visibility public | public_prices_private (prices for approved buyers) | private_discoverable (listed, opened on approval) | link (anyone with the URL) | invite (named buyers only; \"private\" is accepted as invite); autoApprove never | verified | all; the cascade terms (minOrderQuantity, casePack, leadTimeDays, verifiedOnly, priceVisibility, maxPerOrder, backorder, restockEta, preset ids) default every item; listed advertises a public catalog in the wholesale directory (never its prices).
WholesaleAPI.createWholesaleCatalog() { (response, error) in
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

**CreateWholesaleCatalogResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleCatalogItem**
```swift
    open class func createWholesaleCatalogItem(id: String, completion: @escaping (_ data: CreateWholesaleCatalogItemResponse?, _ error: Error?) -> Void)
```

Add your Crossly listings to a catalog (up to 500), each with an optional wholesalePriceCents, minOrderQuantity and casePack. Items already in the catalog have their terms updated.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Add your Crossly listings to a catalog (up to 500), each with an optional wholesalePriceCents, minOrderQuantity and casePack. Items already in the catalog have their terms updated.
WholesaleAPI.createWholesaleCatalogItem(id: id) { (response, error) in
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

**CreateWholesaleCatalogItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleDrop**
```swift
    open class func createWholesaleDrop(completion: @escaping (_ data: CreateWholesaleDropResponse?, _ error: Error?) -> Void)
```

Create a draft trade drop: name, dropAt (ISO; when it opens), audience trade|catalog (+ audienceCatalogId), kind release|prebook. A pre-book needs depositBps (100-9900) and shipBy (YYYY-MM-DD), and takes balanceNetDays (0-90) for the balance invoice. listingIds are your listing ids, each on Crossly. A pre-book makes its listings pre-orders, so buyers pay the deposit at checkout. Schedule it with PATCH status \"scheduled\".

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a draft trade drop: name, dropAt (ISO; when it opens), audience trade|catalog (+ audienceCatalogId), kind release|prebook. A pre-book needs depositBps (100-9900) and shipBy (YYYY-MM-DD), and takes balanceNetDays (0-90) for the balance invoice. listingIds are your listing ids, each on Crossly. A pre-book makes its listings pre-orders, so buyers pay the deposit at checkout. Schedule it with PATCH status \"scheduled\".
WholesaleAPI.createWholesaleDrop() { (response, error) in
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

**CreateWholesaleDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleDropRelease**
```swift
    open class func createWholesaleDropRelease(id: String, completion: @escaping (_ data: CreateWholesaleDropReleaseResponse?, _ error: Error?) -> Void)
```

Release a live pre-book: every reserved balance becomes an invoice on account to its buyer (due in the drop balanceNetDays), emailed, and the drop ends. Safe to retry: only balances not yet invoiced are invoiced. Returns { invoiced, balanceCents, invoiceIds }.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Release a live pre-book: every reserved balance becomes an invoice on account to its buyer (due in the drop balanceNetDays), emailed, and the drop ends. Safe to retry: only balances not yet invoiced are invoiced. Returns { invoiced, balanceCents, invoiceIds }.
WholesaleAPI.createWholesaleDropRelease(id: id) { (response, error) in
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

**CreateWholesaleDropReleaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleFreightRequestAnswer**
```swift
    open class func createWholesaleFreightRequestAnswer(id: String, completion: @escaping (_ data: CreateWholesaleFreightRequestAnswerResponse?, _ error: Error?) -> Void)
```

Answer an open freight request with a figure in CENTS (and an optional note).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Answer an open freight request with a figure in CENTS (and an optional note).
WholesaleAPI.createWholesaleFreightRequestAnswer(id: id) { (response, error) in
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

**CreateWholesaleFreightRequestAnswerResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleGroup**
```swift
    open class func createWholesaleGroup(completion: @escaping (_ data: CreateWholesaleGroupResponse?, _ error: Error?) -> Void)
```

Create a customer group with a discount in basis points (up to 9000). A buyer in several groups gets the best rate, never a stacked one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a customer group with a discount in basis points (up to 9000). A buyer in several groups gets the best rate, never a stacked one.
WholesaleAPI.createWholesaleGroup() { (response, error) in
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

**CreateWholesaleGroupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleGroupMember**
```swift
    open class func createWholesaleGroupMember(id: String, completion: @escaping (_ data: CreateWholesaleGroupMemberResponse?, _ error: Error?) -> Void)
```

Add a buyer to a group by account id or by the email of an existing Crossly account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Add a buyer to a group by account id or by the email of an existing Crossly account.
WholesaleAPI.createWholesaleGroupMember(id: id) { (response, error) in
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

**CreateWholesaleGroupMemberResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleInvoiceCreditNote**
```swift
    open class func createWholesaleInvoiceCreditNote(id: String, completion: @escaping (_ data: CreateWholesaleInvoiceCreditNoteResponse?, _ error: Error?) -> Void)
```

Issue a credit note on an on-account invoice (short shipment, damaged, pricing error, returned, goodwill, other): at most the balance due. Numbered <invoice>-CN<n>; settling the rest closes the invoice paid. Not a refund.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Issue a credit note on an on-account invoice (short shipment, damaged, pricing error, returned, goodwill, other): at most the balance due. Numbered <invoice>-CN<n>; settling the rest closes the invoice paid. Not a refund.
WholesaleAPI.createWholesaleInvoiceCreditNote(id: id) { (response, error) in
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

**CreateWholesaleInvoiceCreditNoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleInvoiceLateFee**
```swift
    open class func createWholesaleInvoiceLateFee(id: String, completion: @escaping (_ data: WholesaleInvoiceResponse?, _ error: Error?) -> Void)
```

Add your late fee (invoice settings lateFeeBps) to an invoice by hand, once. The hourly sweep adds it automatically when an invoice goes overdue.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Add your late fee (invoice settings lateFeeBps) to an invoice by hand, once. The hourly sweep adds it automatically when an invoice goes overdue.
WholesaleAPI.createWholesaleInvoiceLateFee(id: id) { (response, error) in
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

**WholesaleInvoiceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleInvoiceMarkPaid**
```swift
    open class func createWholesaleInvoiceMarkPaid(id: String, completion: @escaping (_ data: WholesaleInvoiceResponse?, _ error: Error?) -> Void)
```

Record a payment the buyer made to you directly: method ach | check | wire | card | other, a reference, and amountCents (omit for the whole balance). When the invoice is settled, Crossly's fee and the tax it remits are charged to your billing card.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Record a payment the buyer made to you directly: method ach | check | wire | card | other, a reference, and amountCents (omit for the whole balance). When the invoice is settled, Crossly's fee and the tax it remits are charged to your billing card.
WholesaleAPI.createWholesaleInvoiceMarkPaid(id: id) { (response, error) in
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

**WholesaleInvoiceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleInvoiceSend**
```swift
    open class func createWholesaleInvoiceSend(id: String, completion: @escaping (_ data: CreateWholesaleInvoiceSendResponse?, _ error: Error?) -> Void)
```

Email the invoice to the buyer again (an overdue one goes as an overdue notice), with the link to pay it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Email the invoice to the buyer again (an overdue one goes as an overdue notice), with the link to pay it.
WholesaleAPI.createWholesaleInvoiceSend(id: id) { (response, error) in
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

**CreateWholesaleInvoiceSendResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleInvoiceVoid**
```swift
    open class func createWholesaleInvoiceVoid(id: String, completion: @escaping (_ data: WholesaleInvoiceResponse?, _ error: Error?) -> Void)
```

Void an invoice nobody has paid anything on (e.g. the order was cancelled). It stops counting against the buyer's credit limit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Void an invoice nobody has paid anything on (e.g. the order was cancelled). It stops counting against the buyer's credit limit.
WholesaleAPI.createWholesaleInvoiceVoid(id: id) { (response, error) in
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

**WholesaleInvoiceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleInvoiceWriteOff**
```swift
    open class func createWholesaleInvoiceWriteOff(id: String, completion: @escaping (_ data: WholesaleInvoiceResponse?, _ error: Error?) -> Void)
```

Write off what is left on an invoice (bad debt): it closes as written_off and stops counting against the buyer's credit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Write off what is left on an invoice (bad debt): it closes as written_off and stops counting against the buyer's credit.
WholesaleAPI.createWholesaleInvoiceWriteOff(id: id) { (response, error) in
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

**WholesaleInvoiceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleProfileShipsFromValidate**
```swift
    open class func createWholesaleProfileShipsFromValidate(completion: @escaping (_ data: CreateWholesaleProfileShipsFromValidateResponse?, _ error: Error?) -> Void)
```

Check a ships-from origin ({ postalCode, country, city?, region? }) with the shipping validator without saving it. 400 invalid_ships_from with the issues; 422 for an embargoed origin.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Check a ships-from origin ({ postalCode, country, city?, region? }) with the shipping validator without saving it. 400 invalid_ships_from with the issues; 422 for an embargoed origin.
WholesaleAPI.createWholesaleProfileShipsFromValidate() { (response, error) in
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

**CreateWholesaleProfileShipsFromValidateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleQuoteAnswer**
```swift
    open class func createWholesaleQuoteAnswer(id: String, completion: @escaping (_ data: WholesaleQuoteResponse?, _ error: Error?) -> Void)
```

Answer (or revise) a quote: a unit price in CENTS per item you quote, an expiresAt (ISO, at most 90 days out) and an optional note. Items left out are not quoted. The buyer is notified and can accept until expiry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Answer (or revise) a quote: a unit price in CENTS per item you quote, an expiresAt (ISO, at most 90 days out) and an optional note. Items left out are not quoted. The buyer is notified and can accept until expiry.
WholesaleAPI.createWholesaleQuoteAnswer(id: id) { (response, error) in
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

**WholesaleQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleQuoteDecline**
```swift
    open class func createWholesaleQuoteDecline(id: String, completion: @escaping (_ data: WholesaleQuoteResponse?, _ error: Error?) -> Void)
```

Decline a quote request, with an optional reason the buyer sees.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Decline a quote request, with an optional reason the buyer sees.
WholesaleAPI.createWholesaleQuoteDecline(id: id) { (response, error) in
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

**WholesaleQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleRequestDecide**
```swift
    open class func createWholesaleRequestDecide(id: String, completion: @escaping (_ data: CreateWholesaleRequestDecideResponse?, _ error: Error?) -> Void)
```

Approve (grants access to that catalog; optional groupId adds the buyer to a customer group) or decline (optional reason) an access request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Approve (grants access to that catalog; optional groupId adds the buyer to a customer group) or decline (optional reason) an access request.
WholesaleAPI.createWholesaleRequestDecide(id: id) { (response, error) in
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

**CreateWholesaleRequestDecideResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createWholesaleTierBulk**
```swift
    open class func createWholesaleTierBulk(completion: @escaping (_ data: CreateWholesaleTierBulkResponse?, _ error: Error?) -> Void)
```

One ladder for many listings: breaks as [{ minQuantity, discountBps }] off each listing's own price. Returns how many were updated and which were skipped and why.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// One ladder for many listings: breaks as [{ minQuantity, discountBps }] off each listing's own price. Returns how many were updated and which were skipped and why.
WholesaleAPI.createWholesaleTierBulk() { (response, error) in
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

**CreateWholesaleTierBulkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWholesaleBuyerTerm**
```swift
    open class func deleteWholesaleBuyerTerm(buyerUserId: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Switch a buyer's account terms off. Invoices already issued are unaffected.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let buyerUserId = "buyerUserId_example" // String | 

// Switch a buyer's account terms off. Invoices already issued are unaffected.
WholesaleAPI.deleteWholesaleBuyerTerm(buyerUserId: buyerUserId) { (response, error) in
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
 **buyerUserId** | **String** |  | 

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWholesaleCatalog**
```swift
    open class func deleteWholesaleCatalog(id: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Delete a catalog with its items, grants and access requests. Orders and invoices are untouched.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a catalog with its items, grants and access requests. Orders and invoices are untouched.
WholesaleAPI.deleteWholesaleCatalog(id: id) { (response, error) in
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

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWholesaleCatalogItem**
```swift
    open class func deleteWholesaleCatalogItem(id: String, platformListingId: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Take an item out of a catalog. The listing itself is untouched.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let platformListingId = "platformListingId_example" // String | 

// Take an item out of a catalog. The listing itself is untouched.
WholesaleAPI.deleteWholesaleCatalogItem(id: id, platformListingId: platformListingId) { (response, error) in
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
 **platformListingId** | **String** |  | 

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWholesaleGroup**
```swift
    open class func deleteWholesaleGroup(id: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Delete a customer group. Its members keep any other group or account rate.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Delete a customer group. Its members keep any other group or account rate.
WholesaleAPI.deleteWholesaleGroup(id: id) { (response, error) in
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

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteWholesaleGroupMember**
```swift
    open class func deleteWholesaleGroupMember(id: String, buyerUserId: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Take a buyer out of a group.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let buyerUserId = "buyerUserId_example" // String | 

// Take a buyer out of a group.
WholesaleAPI.deleteWholesaleGroupMember(id: id, buyerUserId: buyerUserId) { (response, error) in
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
 **buyerUserId** | **String** |  | 

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWholesaleCatalogLineSheet**
```swift
    open class func getWholesaleCatalogLineSheet(id: String, completion: @escaping (_ data: GetWholesaleCatalogLineSheetResponse?, _ error: Error?) -> Void)
```

The catalog's line sheet: your company details and terms, then every item with retail and trade price, minimum, case pack and quantity breaks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The catalog's line sheet: your company details and terms, then every item with retail and trade price, minimum, case pack and quantity breaks.
WholesaleAPI.getWholesaleCatalogLineSheet(id: id) { (response, error) in
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

**GetWholesaleCatalogLineSheetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWholesaleCatalogShare**
```swift
    open class func getWholesaleCatalogShare(id: String, completion: @escaping (_ data: GetWholesaleCatalogShareResponse?, _ error: Error?) -> Void)
```

The catalog's buyer link (null until you have a shop username), to share or print as a QR code.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The catalog's buyer link (null until you have a shop username), to share or print as a QR code.
WholesaleAPI.getWholesaleCatalogShare(id: id) { (response, error) in
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

**GetWholesaleCatalogShareResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWholesaleCategory**
```swift
    open class func getWholesaleCategory(completion: @escaping (_ data: GetWholesaleCategoryResponse?, _ error: Error?) -> Void)
```

The wholesale category taxonomy (id, label, group). A catalog or trade profile takes up to 12 ids, or \"other:<words>\".

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The wholesale category taxonomy (id, label, group). A catalog or trade profile takes up to 12 ids, or \"other:<words>\".
WholesaleAPI.getWholesaleCategory() { (response, error) in
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

**GetWholesaleCategoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWholesaleDrop**
```swift
    open class func getWholesaleDrop(id: String, completion: @escaping (_ data: GetWholesaleDropResponse?, _ error: Error?) -> Void)
```

One trade drop with its listings and, for a pre-book, every reservation: buyer, item, quantity, deposit, balance, status and the balance invoice once released.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One trade drop with its listings and, for a pre-book, every reservation: buyer, item, quantity, deposit, balance, status and the balance invoice once released.
WholesaleAPI.getWholesaleDrop(id: id) { (response, error) in
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

**GetWholesaleDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWholesaleInvoice**
```swift
    open class func getWholesaleInvoice(id: String, completion: @escaping (_ data: WholesaleInvoiceResponse?, _ error: Error?) -> Void)
```

One invoice with its lines, PO reference, payments and whether Crossly dues on it are collected.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One invoice with its lines, PO reference, payments and whether Crossly dues on it are collected.
WholesaleAPI.getWholesaleInvoice(id: id) { (response, error) in
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

**WholesaleInvoiceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWholesaleOverview**
```swift
    open class func getWholesaleOverview(completion: @escaping (_ data: GetWholesaleOverviewResponse?, _ error: Error?) -> Void)
```

Your wholesale store at a glance: the setup checklist, 30-day wholesale revenue, open orders, outstanding invoices, active buyers and pending access requests.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your wholesale store at a glance: the setup checklist, 30-day wholesale revenue, open orders, outstanding invoices, active buyers and pending access requests.
WholesaleAPI.getWholesaleOverview() { (response, error) in
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

**GetWholesaleOverviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWholesaleProfile**
```swift
    open class func getWholesaleProfile(completion: @escaping (_ data: GetWholesaleProfileResponse?, _ error: Error?) -> Void)
```

A store's trade profile (X-Storefront-Id; default store when omitted): company, tagline, logo and banner, contact, ships-from origin, lead time, order minimums (opening, first order, reorder), the default MOQ / case pack / max per order / backorder / price visibility, return, payment and shipping preset ids, invoicing and its settings, buyer requirements and the directory defaults.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// A store's trade profile (X-Storefront-Id; default store when omitted): company, tagline, logo and banner, contact, ships-from origin, lead time, order minimums (opening, first order, reorder), the default MOQ / case pack / max per order / backorder / price visibility, return, payment and shipping preset ids, invoicing and its settings, buyer requirements and the directory defaults.
WholesaleAPI.getWholesaleProfile() { (response, error) in
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

**GetWholesaleProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWholesaleQuote**
```swift
    open class func getWholesaleQuote(id: String, completion: @escaping (_ data: WholesaleQuoteResponse?, _ error: Error?) -> Void)
```

One quote request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One quote request.
WholesaleAPI.getWholesaleQuote(id: id) { (response, error) in
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

**WholesaleQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWholesaleReserve**
```swift
    open class func getWholesaleReserve(inventoryItemId: String, completion: @escaping (_ data: GetWholesaleReserveResponse?, _ error: Error?) -> Void)
```

How many units of an inventory item are held back for wholesale, and what retail channels advertise.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let inventoryItemId = "inventoryItemId_example" // String | 

// How many units of an inventory item are held back for wholesale, and what retail channels advertise.
WholesaleAPI.getWholesaleReserve(inventoryItemId: inventoryItemId) { (response, error) in
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
 **inventoryItemId** | **String** |  | 

### Return type

**GetWholesaleReserveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWholesaleTermPreview**
```swift
    open class func getWholesaleTermPreview(completion: @escaping (_ data: GetWholesaleTermPreviewResponse?, _ error: Error?) -> Void)
```

The trade terms that apply to a catalog item (?catalogId&platformListingId), a catalog (?catalogId) or the trade profile alone, each with its source (item, catalog, profile, default), plus the return, payment and shipping policies they resolve to.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The trade terms that apply to a catalog item (?catalogId&platformListingId), a catalog (?catalogId) or the trade profile alone, each with its source (item, catalog, profile, default), plus the return, payment and shipping policies they resolve to.
WholesaleAPI.getWholesaleTermPreview() { (response, error) in
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

**GetWholesaleTermPreviewResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWholesaleBuyers**
```swift
    open class func listWholesaleBuyers(completion: @escaping (_ data: ListWholesaleBuyersResponse?, _ error: Error?) -> Void)
```

Your trade buyers: catalogs they can open, customer groups, account terms, outstanding balance, wholesale spend, business verification and resale-certificate status (read-only — Crossly reviews those).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your trade buyers: catalogs they can open, customer groups, account terms, outstanding balance, wholesale spend, business verification and resale-certificate status (read-only — Crossly reviews those).
WholesaleAPI.listWholesaleBuyers() { (response, error) in
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

**ListWholesaleBuyersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWholesaleCatalogItems**
```swift
    open class func listWholesaleCatalogItems(id: String, completion: @escaping (_ data: ListWholesaleCatalogItemsResponse?, _ error: Error?) -> Void)
```

A catalog's items in merchandising order, each with its retail price, trade price, minimum order quantity, case pack and quantity breaks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A catalog's items in merchandising order, each with its retail price, trade price, minimum order quantity, case pack and quantity breaks.
WholesaleAPI.listWholesaleCatalogItems(id: id) { (response, error) in
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

**ListWholesaleCatalogItemsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWholesaleCatalogs**
```swift
    open class func listWholesaleCatalogs(completion: @escaping (_ data: ListWholesaleCatalogsResponse?, _ error: Error?) -> Void)
```

Your wholesale catalogs with item, buyer-grant and pending-request counts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your wholesale catalogs with item, buyer-grant and pending-request counts.
WholesaleAPI.listWholesaleCatalogs() { (response, error) in
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

**ListWholesaleCatalogsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWholesaleDrops**
```swift
    open class func listWholesaleDrops(completion: @escaping (_ data: ListWholesaleDropsResponse?, _ error: Error?) -> Void)
```

Your trade drops and pre-books: audience (trade = your approved trade buyers, catalog = whoever can open audienceCatalogId), kind (release | prebook), deposit, ship date, status, and for a pre-book its reservation totals (buyers, units, deposits taken, balances still to invoice).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your trade drops and pre-books: audience (trade = your approved trade buyers, catalog = whoever can open audienceCatalogId), kind (release | prebook), deposit, ship date, status, and for a pre-book its reservation totals (buyers, units, deposits taken, balances still to invoice).
WholesaleAPI.listWholesaleDrops() { (response, error) in
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

**ListWholesaleDropsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWholesaleFreightRequests**
```swift
    open class func listWholesaleFreightRequests(completion: @escaping (_ data: ListWholesaleFreightRequestsResponse?, _ error: Error?) -> Void)
```

Freight (LTL) quote requests from buyers whose order is over your pallet threshold.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Freight (LTL) quote requests from buyers whose order is over your pallet threshold.
WholesaleAPI.listWholesaleFreightRequests() { (response, error) in
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

**ListWholesaleFreightRequestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWholesaleGroups**
```swift
    open class func listWholesaleGroups(completion: @escaping (_ data: ListWholesaleGroupsResponse?, _ error: Error?) -> Void)
```

Your customer groups with their discount and members.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your customer groups with their discount and members.
WholesaleAPI.listWholesaleGroups() { (response, error) in
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

**ListWholesaleGroupsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWholesaleInvoices**
```swift
    open class func listWholesaleInvoices(completion: @escaping (_ data: ListWholesaleInvoicesResponse?, _ error: Error?) -> Void)
```

On-account invoices, newest first, with balance due. ?status=unpaid for open, partial and overdue together.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// On-account invoices, newest first, with balance due. ?status=unpaid for open, partial and overdue together.
WholesaleAPI.listWholesaleInvoices() { (response, error) in
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

**ListWholesaleInvoicesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWholesaleOrders**
```swift
    open class func listWholesaleOrders(completion: @escaping (_ data: ListWholesaleOrdersResponse?, _ error: Error?) -> Void)
```

Wholesale orders: Crossly orders priced through your trade terms (catalog price, quantity break or account rate) or placed on account. Fulfil them like any order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Wholesale orders: Crossly orders priced through your trade terms (catalog price, quantity break or account rate) or placed on account. Fulfil them like any order.
WholesaleAPI.listWholesaleOrders() { (response, error) in
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

**ListWholesaleOrdersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWholesaleQuotes**
```swift
    open class func listWholesaleQuotes(completion: @escaping (_ data: ListWholesaleQuotesResponse?, _ error: Error?) -> Void)
```

Quote requests (RFQ) from trade buyers: items with quantity and target price, your quoted prices and expiry. ?status=open lists the ones waiting on you or the buyer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Quote requests (RFQ) from trade buyers: items with quantity and target price, your quoted prices and expiry. ?status=open lists the ones waiting on you or the buyer.
WholesaleAPI.listWholesaleQuotes() { (response, error) in
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

**ListWholesaleQuotesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWholesaleRequests**
```swift
    open class func listWholesaleRequests(completion: @escaping (_ data: ListWholesaleRequestsResponse?, _ error: Error?) -> Void)
```

Requests from buyers to open your private or trade-only catalogs, with each buyer's business-verification and tax-exempt status. ?status=all includes decided ones.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Requests from buyers to open your private or trade-only catalogs, with each buyer's business-verification and tax-exempt status. ?status=all includes decided ones.
WholesaleAPI.listWholesaleRequests() { (response, error) in
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

**ListWholesaleRequestsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWholesaleSetupSteps**
```swift
    open class func listWholesaleSetupSteps(completion: @escaping (_ data: ListWholesaleSetupStepsResponse?, _ error: Error?) -> Void)
```

The wholesale setup checklist for a store: profile, ships-from, payment, returns, a catalog with items, visibility chosen, live. Each step is done because the thing exists.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The wholesale setup checklist for a store: profile, ships-from, payment, returns, a catalog with items, visibility chosen, live. Each step is done because the thing exists.
WholesaleAPI.listWholesaleSetupSteps() { (response, error) in
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

**ListWholesaleSetupStepsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWholesaleBuyerTerm**
```swift
    open class func updateWholesaleBuyerTerm(buyerUserId: String, completion: @escaping (_ data: UpdateWholesaleBuyerTermResponse?, _ error: Error?) -> Void)
```

Set a buyer's account terms: netDays (0-120) for paying on account, creditLimitCents (the most they may owe you at once; null = no limit) and discountPercentBps (their negotiated rate).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let buyerUserId = "buyerUserId_example" // String | 

// Set a buyer's account terms: netDays (0-120) for paying on account, creditLimitCents (the most they may owe you at once; null = no limit) and discountPercentBps (their negotiated rate).
WholesaleAPI.updateWholesaleBuyerTerm(buyerUserId: buyerUserId) { (response, error) in
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
 **buyerUserId** | **String** |  | 

### Return type

**UpdateWholesaleBuyerTermResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWholesaleCatalog**
```swift
    open class func updateWholesaleCatalog(id: String, completion: @escaping (_ data: CreateWholesaleCatalogResponse?, _ error: Error?) -> Void)
```

Edit a catalog: name, slug, description, cover image, visibility, opening-order minimum, trade gate, directory listing, active.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Edit a catalog: name, slug, description, cover image, visibility, opening-order minimum, trade gate, directory listing, active.
WholesaleAPI.updateWholesaleCatalog(id: id) { (response, error) in
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

**CreateWholesaleCatalogResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWholesaleCatalogItem**
```swift
    open class func updateWholesaleCatalogItem(id: String, completion: @escaping (_ data: UpdateWholesaleCatalogItemResponse?, _ error: Error?) -> Void)
```

Change many catalog items at once: items[] sets each row (trade price, MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids); or platformListingIds + set applies the same values to each, set.pctOffRetailBps pricing each from its retail price.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Change many catalog items at once: items[] sets each row (trade price, MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids); or platformListingIds + set applies the same values to each, set.pctOffRetailBps pricing each from its retail price.
WholesaleAPI.updateWholesaleCatalogItem(id: id) { (response, error) in
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

**UpdateWholesaleCatalogItemResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWholesaleCatalogItemByPlatformListingId**
```swift
    open class func updateWholesaleCatalogItemByPlatformListingId(id: String, platformListingId: String, completion: @escaping (_ data: UpdateGroupBuyResponse?, _ error: Error?) -> Void)
```

Change one item's trade price and its own trade terms in this catalog (MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids). null clears = inherit from the catalog.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let platformListingId = "platformListingId_example" // String | 

// Change one item's trade price and its own trade terms in this catalog (MOQ, case pack, lead time, max per order, backorder, restock date, verified-only, price visibility, preset ids). null clears = inherit from the catalog.
WholesaleAPI.updateWholesaleCatalogItemByPlatformListingId(id: id, platformListingId: platformListingId) { (response, error) in
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
 **platformListingId** | **String** |  | 

### Return type

**UpdateGroupBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWholesaleCatalogItemOrder**
```swift
    open class func updateWholesaleCatalogItemOrder(id: String, completion: @escaping (_ data: ListWholesaleCatalogItemsResponse?, _ error: Error?) -> Void)
```

Set the merchandising order: platform listing ids, first to last. Items left out keep their relative order after these.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Set the merchandising order: platform listing ids, first to last. Items left out keep their relative order after these.
WholesaleAPI.updateWholesaleCatalogItemOrder(id: id) { (response, error) in
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

**ListWholesaleCatalogItemsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWholesaleDrop**
```swift
    open class func updateWholesaleDrop(id: String, completion: @escaping (_ data: CreateWholesaleDropResponse?, _ error: Error?) -> Void)
```

Edit a trade drop (any create field but kind), schedule it (status \"scheduled\", with dropAt in the future) or cancel it. A live drop can only be cancelled or have endsAt / perCustomerLimit changed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Edit a trade drop (any create field but kind), schedule it (status \"scheduled\", with dropAt in the future) or cancel it. A live drop can only be cancelled or have endsAt / perCustomerLimit changed.
WholesaleAPI.updateWholesaleDrop(id: id) { (response, error) in
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

**CreateWholesaleDropResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWholesaleGroup**
```swift
    open class func updateWholesaleGroup(id: String, completion: @escaping (_ data: CreateWholesaleGroupResponse?, _ error: Error?) -> Void)
```

Rename a group, change its discount, or pause it (active=false).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Rename a group, change its discount, or pause it (active=false).
WholesaleAPI.updateWholesaleGroup(id: id) { (response, error) in
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

**CreateWholesaleGroupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWholesaleListingTier**
```swift
    open class func updateWholesaleListingTier(platformListingId: String, completion: @escaping (_ data: UpdateWholesaleListingTierResponse?, _ error: Error?) -> Void)
```

Replace one listing's quantity breaks: [{ minQuantity ≥ 2, unitPriceCents }], each cheaper than the last and than the list price. An empty list removes them. Applies to every buyer at checkout.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let platformListingId = "platformListingId_example" // String | 

// Replace one listing's quantity breaks: [{ minQuantity ≥ 2, unitPriceCents }], each cheaper than the last and than the list price. An empty list removes them. Applies to every buyer at checkout.
WholesaleAPI.updateWholesaleListingTier(platformListingId: platformListingId) { (response, error) in
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
 **platformListingId** | **String** |  | 

### Return type

**UpdateWholesaleListingTierResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWholesaleProfile**
```swift
    open class func updateWholesaleProfile(completion: @escaping (_ data: UpdateWholesaleProfileResponse?, _ error: Error?) -> Void)
```

Save a store's trade profile. Omitted fields are unchanged; null clears. shipsFrom is checked by the shipping validator (400 invalid_ships_from). The profile is the bottom of the trade-terms cascade: catalogs and items that leave a term empty inherit it — saving never rewrites catalogs. Preset ids must be your own presets of that kind.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Save a store's trade profile. Omitted fields are unchanged; null clears. shipsFrom is checked by the shipping validator (400 invalid_ships_from). The profile is the bottom of the trade-terms cascade: catalogs and items that leave a term empty inherit it — saving never rewrites catalogs. Preset ids must be your own presets of that kind.
WholesaleAPI.updateWholesaleProfile() { (response, error) in
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

**UpdateWholesaleProfileResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateWholesaleReserve**
```swift
    open class func updateWholesaleReserve(inventoryItemId: String, completion: @escaping (_ data: GetWholesaleReserveResponse?, _ error: Error?) -> Void)
```

Reserve N units of an inventory item for wholesale: retail channels advertise the rest and come down when only the reserve is left. 0 clears it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let inventoryItemId = "inventoryItemId_example" // String | 

// Reserve N units of an inventory item for wholesale: retail channels advertise the rest and come down when only the reserve is left. 0 clears it.
WholesaleAPI.updateWholesaleReserve(inventoryItemId: inventoryItemId) { (response, error) in
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
 **inventoryItemId** | **String** |  | 

### Return type

**GetWholesaleReserveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

