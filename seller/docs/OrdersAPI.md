# OrdersAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLiveShipmentLabel**](OrdersAPI.md#createliveshipmentlabel) | **POST** /v1/live-shipments/{id}/label | Buy ONE label for a show box, rated for all its orders packed together; every order takes its tracking and the buyer’s extra postage is refunded.
[**createLiveShipmentShip**](OrdersAPI.md#createliveshipmentship) | **POST** /v1/live-shipments/{id}/ship | Ship a show box with your own label: every order is marked shipped with this tracking and the buyer’s extra postage is refunded.
[**createOrderBulkDelete**](OrdersAPI.md#createorderbulkdelete) | **POST** /v1/orders/bulk-delete | Bulk soft- or hard-delete orders by id.
[**createOrderBulkExport**](OrdersAPI.md#createorderbulkexport) | **POST** /v1/orders/bulk-export | Bulk export selected orders as CSV.
[**createOrderBulkMarkDisputed**](OrdersAPI.md#createorderbulkmarkdisputed) | **POST** /v1/orders/bulk-mark-disputed | Bulk mark orders as disputed with a shared reason.
[**createOrderBulkMarkShipped**](OrdersAPI.md#createorderbulkmarkshipped) | **POST** /v1/orders/bulk-mark-shipped | Bulk flip status&#x3D;shipped, clear the reserved-stock marker, and notify each platform.
[**createOrderBulkPackingSlip**](OrdersAPI.md#createorderbulkpackingslip) | **POST** /v1/orders/bulk-packing-slips | Bulk packing slips PDF.
[**createOrderCancel**](OrdersAPI.md#createordercancel) | **POST** /v1/orders/{id}/cancel | Cancel an order before it ships. Crossly-marketplace orders refund the buyer (also needs orders:refund) and restock; crossposted orders go to the marketplace, or fail not_supported_on_platform (recordOnly: true records a cancel made on the marketplace). Fires order.cancelled.
[**createOrderCorrectTracking**](OrdersAPI.md#createordercorrecttracking) | **POST** /v1/orders/{id}/correct-tracking | Correct a wrong tracking number the marketplace already holds.
[**createOrderDispute**](OrdersAPI.md#createorderdispute) | **POST** /v1/orders/{id}/dispute | Flag an order as disputed.
[**createOrderImport**](OrdersAPI.md#createorderimport) | **POST** /v1/orders/import | Manually (re-)pull one or more connected platforms&#39; order history for a day-window.
[**createOrderLabel**](OrdersAPI.md#createorderlabel) | **POST** /v1/orders/{id}/label | Purchase a Crossly Shipping label. An order that already has a label answers 409 label_exists unless allowSecondLabel is true.
[**createOrderLabelVoid**](OrdersAPI.md#createorderlabelvoid) | **POST** /v1/orders/{id}/label/void | Void a Crossly Shipping label and refund it to the shipping wallet.
[**createOrderLinkListing**](OrdersAPI.md#createorderlinklisting) | **POST** /v1/orders/{id}/link-listing | Link an unmatched sale to one of your listings (marks it sold, delists it elsewhere).
[**createOrderMessage**](OrdersAPI.md#createordermessage) | **POST** /v1/orders/{id}/message | Message the order&#39;s buyer on the marketplace.
[**createOrderOrderChat**](OrdersAPI.md#createorderorderchat) | **POST** /v1/orders/{id}/order-chat | Send a message to the order&#39;s buyer chat on the marketplace. Mirrored into the Crossly inbox.
[**createOrderPickup**](OrdersAPI.md#createorderpickup) | **POST** /v1/orders/pickups | Book a carrier pickup for labelled orders (one carrier per pickup; window at least an hour, up to 14 days ahead).
[**createOrderPickupLabel**](OrdersAPI.md#createorderpickuplabel) | **POST** /v1/orders/{id}/pickup-label | Buy the carrier label for a Crossly order the buyer collects from a pickup point (debits your shipping wallet). 402 when the wallet is short. An order that already has a label answers 409 label_exists unless allowSecondLabel is true.
[**createOrderPlatformLabelPackage**](OrdersAPI.md#createorderplatformlabelpackage) | **POST** /v1/orders/{id}/platform-label/package | Save the package (weight oz, box inches) the marketplace prices the label from.
[**createOrderPlatformLabelPackageQuote**](OrdersAPI.md#createorderplatformlabelpackagequote) | **POST** /v1/orders/{id}/platform-label/package/quote | Quote what a change to the marketplace shipment&#39;s package costs (cents).
[**createOrderPlatformLabelPull**](OrdersAPI.md#createorderplatformlabelpull) | **POST** /v1/orders/{id}/platform-label/pull | Pull the marketplace&#39;s prepaid label into Crossly (every platform with a label descriptor).
[**createOrderPlatformLabelPurchase**](OrdersAPI.md#createorderplatformlabelpurchase) | **POST** /v1/orders/{id}/platform-label/purchase | Buy a replacement / extra marketplace label, or have the marketplace generate it, and record it.
[**createOrderPlatformLabelQuote**](OrdersAPI.md#createorderplatformlabelquote) | **POST** /v1/orders/{id}/platform-label/quote | Quote what buying a marketplace label costs, before you are charged.
[**createOrderPullPlatformLabel**](OrdersAPI.md#createorderpullplatformlabel) | **POST** /v1/orders/{id}/pull-platform-label | Pull a pre-paid label from cookie platforms (Poshmark/Mercari).
[**createOrderRate**](OrdersAPI.md#createorderrate) | **POST** /v1/orders/{id}/rates | Crossly Shipping rate quote for an order.
[**createOrderRefund**](OrdersAPI.md#createorderrefund) | **POST** /v1/orders/{id}/refund | DEPRECATED: use POST /v1/orders/{id}/refunds. Full or partial refund (amount in dollars). Same idempotency and cap as /refunds: the same request twice refunds once (Idempotency-Key, else the body), never past what the buyer paid.
[**createOrderRefundById**](OrdersAPI.md#createorderrefundbyid) | **POST** /v1/orders/{id}/refunds | Refund an order, in full or in part. &#x60;amount&#x60; is dollars; omit it for everything left (or the line items&#39; value). Crossly-marketplace orders refund the buyer&#39;s card; crossposted orders refund through the marketplace, or fail not_supported_on_platform. Never refunds past the order (refund_exceeds_remaining). The same request twice refunds once: send an Idempotency-Key (without one, the body is the key). A partial refund keeps the order&#39;s status. What the platform takes (full/partial, its own reason keys, a comment) is GET /v1/orders/{id}/refund-options; a request outside it fails partial_refund_unsupported, invalid_refund_reason or refund_exceeds_item_amount. Fires order.refunded.
[**createOrderRefundResolve**](OrdersAPI.md#createorderrefundresolve) | **POST** /v1/orders/{id}/refunds/{refundId}/resolve | Settle an &#x60;unverified&#x60; refund (one Crossly could not confirm with the marketplace after its request was interrupted) once you have checked the marketplace: succeeded (with the amount actually refunded, dollars) or failed (nothing moved; the same Idempotency-Key can then try again). Crossly-marketplace refunds are confirmed by support instead.
[**createOrderScanForm**](OrdersAPI.md#createorderscanform) | **POST** /v1/orders/scan-forms | Create SCAN forms (one per carrier account and ship-from address) for labels the carrier has not scanned yet.
[**createOrderTracking**](OrdersAPI.md#createordertracking) | **POST** /v1/orders/{id}/tracking | Submit tracking number + carrier and notify the platform.
[**createOrderWhatnotLabel**](OrdersAPI.md#createorderwhatnotlabel) | **POST** /v1/orders/{id}/whatnot/label | Generate the Whatnot shipping label and record it on the order.
[**createOrderWhatnotPackage**](OrdersAPI.md#createorderwhatnotpackage) | **POST** /v1/orders/{id}/whatnot/package | Save a Whatnot shipment package (weight oz, box inches).
[**createOrderWhatnotPackageQuote**](OrdersAPI.md#createorderwhatnotpackagequote) | **POST** /v1/orders/{id}/whatnot/package/quote | Quote what a Whatnot package change costs (cents).
[**createRentalApprove**](OrdersAPI.md#createrentalapprove) | **POST** /v1/rentals/{id}/approve | Approve a requested rental (offers with requireApproval): the renter’s held card is charged.
[**createRentalCancel**](OrdersAPI.md#createrentalcancel) | **POST** /v1/rentals/{id}/cancel | Cancel a booked rental that has not shipped: the renter is refunded in full.
[**createRentalClaim**](OrdersAPI.md#createrentalclaim) | **POST** /v1/rentals/{id}/claim | Claim part or all of the deposit (cents, a note, photo URLs): within 3 days of the return, or 14 days after the end if it never came back.
[**createRentalDecline**](OrdersAPI.md#createrentaldecline) | **POST** /v1/rentals/{id}/decline | Decline a requested rental: the hold on the renter’s card is released.
[**createRentalDelivered**](OrdersAPI.md#createrentaldelivered) | **POST** /v1/rentals/{id}/delivered | Mark a rental delivered to the renter.
[**createRentalExtensionDecide**](OrdersAPI.md#createrentalextensiondecide) | **POST** /v1/rentals/{id}/extensions/{extensionId}/decide | Approve or decline a renter’s request for more days.
[**createRentalInspect**](OrdersAPI.md#createrentalinspect) | **POST** /v1/rentals/{id}/inspect | Record the return inspection: the checklist, photos, and optionally release the deposit.
[**createRentalLabel**](OrdersAPI.md#createrentallabel) | **POST** /v1/rentals/{id}/labels | Buy both labels for a booked rental: outbound to the renter, and the return label they use.
[**createRentalNotReturned**](OrdersAPI.md#createrentalnotreturned) | **POST** /v1/rentals/{id}/not-returned | Report a rental not returned (14 days past due): the deposit goes to you.
[**createRentalReleaseDeposit**](OrdersAPI.md#createrentalreleasedeposit) | **POST** /v1/rentals/{id}/release-deposit | Release the deposit now, without a claim.
[**createRentalReturned**](OrdersAPI.md#createrentalreturned) | **POST** /v1/rentals/{id}/returned | Mark a rental back with you. You then have 3 days to claim damage before the deposit goes back.
[**createRentalShipped**](OrdersAPI.md#createrentalshipped) | **POST** /v1/rentals/{id}/shipped | Mark a booked rental shipped, with at least 2 photos of its condition as it leaves (URLs you uploaded) — the evidence any later claim is judged against.
[**getOrder**](OrdersAPI.md#getorder) | **GET** /v1/orders/{id} | Get one order, with its sale price, fees, SKU and line items.
[**getOrderCancelEligibility**](OrdersAPI.md#getordercanceleligibility) | **GET** /v1/orders/{id}/cancel-eligibility | Whether this order can be cancelled, and which reason codes the marketplace accepts.
[**getOrderCount**](OrdersAPI.md#getordercount) | **GET** /v1/orders/counts | Tab badge counts by status.
[**getOrderDeliveryPhoto**](OrdersAPI.md#getorderdeliveryphoto) | **GET** /v1/orders/{id}/delivery-photo | The courier&#39;s delivery photo for this order, pulled automatically, with where it came from.
[**getOrderEvidence**](OrdersAPI.md#getorderevidence) | **GET** /v1/orders/{id}/evidence | Everything recorded about how this order was packed and how it arrived.
[**getOrderLabelPrint**](OrdersAPI.md#getorderlabelprint) | **GET** /v1/orders/{id}/label/print | The order&#39;s shipping label as a PDF sized for printing (cropped, upright, fitted).
[**getOrderOrderChat**](OrdersAPI.md#getorderorderchat) | **GET** /v1/orders/{id}/order-chat | The order&#39;s buyer chat thread on the marketplace (separate from listing comments): { orderId, platform, messages: [{ id, sender (buyer|seller|platform), body, sentAt, attachments? }], canSend }, oldest message first.
[**getOrderPackingSlip**](OrdersAPI.md#getorderpackingslip) | **GET** /v1/orders/{id}/packing-slip | Single-order packing slip PDF.
[**getOrderPlatformLabelOption**](OrdersAPI.md#getorderplatformlabeloption) | **GET** /v1/orders/{id}/platform-label/options | What buying a marketplace label offers for this order (weight tiers, mailbox state).
[**getOrderPlatformLabelPackingSlip**](OrdersAPI.md#getorderplatformlabelpackingslip) | **GET** /v1/orders/{id}/platform-label/packing-slip | A fresh link to the marketplace&#39;s own packing slip PDF.
[**getOrderPlatformLabelState**](OrdersAPI.md#getorderplatformlabelstate) | **GET** /v1/orders/{id}/platform-label/state | The marketplace&#39;s shipment for an order (package, label, tracking). Records a label found on it.
[**getOrderPlatformLabelUrl**](OrdersAPI.md#getorderplatformlabelurl) | **GET** /v1/orders/{id}/platform-label/url | A fresh, short-lived link to the marketplace&#39;s label sheet. Never stored.
[**getOrderProofOfDelivery**](OrdersAPI.md#getorderproofofdelivery) | **GET** /v1/orders/{id}/proof-of-delivery | Proof-of-delivery evidence from the carrier&#39;s scan record (PDF, or JSON).
[**getOrderRefundOption**](OrdersAPI.md#getorderrefundoption) | **GET** /v1/orders/{id}/refund-options | What a refund on this order may be, from the platform&#39;s declared capability: whether Crossly can refund it at all, full and/or partial, what a partial is measured against (total &#x3D; what the buyer paid, item &#x3D; the item price only), whether it may precede shipment, the platform&#39;s own reason keys (when listed, a refund&#39;s reason must be one of them), whether a comment is sent, whether the refund IS cancelling the sale (cancelsSale: Mercari, full only), whether the window closes when the order completes (untilCompleted; windowClosed &#x3D; it has) and a one-line note on what the platform does not allow.
[**getOrderSalesTax**](OrdersAPI.md#getordersalestax) | **GET** /v1/orders/{id}/sales-tax | Who collected sales tax on one Crossly marketplace order, where, and the seller notice.
[**getOrderScanForm**](OrdersAPI.md#getorderscanform) | **GET** /v1/orders/scan-forms/{id} | One SCAN form; a queued form is re-read from the carrier and its PDF appears once built.
[**getOrderShipment**](OrdersAPI.md#getordershipment) | **GET** /v1/orders/{id}/shipments | List the parcels an order shipped in.
[**getOrderWhatnotPackingSlip**](OrdersAPI.md#getorderwhatnotpackingslip) | **GET** /v1/orders/{id}/whatnot/packing-slip | A fresh link to Whatnot&#39;s packing slip PDF.
[**getOrderWhatnotShipment**](OrdersAPI.md#getorderwhatnotshipment) | **GET** /v1/orders/{id}/whatnot/shipment | Whatnot shipment for an order (package, label, tracking). Records a label found on it.
[**getRental**](OrdersAPI.md#getrental) | **GET** /v1/rentals/{id} | One rental: its timeline, both sides’ condition photos, payments, extensions and what can be done next.
[**getRentalCalendar**](OrdersAPI.md#getrentalcalendar) | **GET** /v1/rentals/calendar | Every rentable item’s bookings (per unit), turnaround buffers and blackouts between two dates (≤ 93 days).
[**listLayaways**](OrdersAPI.md#listlayaways) | **GET** /v1/layaways | Your items on layaway (active and paid off). Do not ship an active one: its order moves to needs_fulfillment when paid in full.
[**listLiveShipments**](OrdersAPI.md#listliveshipments) | **GET** /v1/live-shipments | Your show boxes: every buyer’s orders from one live show, to ship together.
[**listOrderPickupReady**](OrdersAPI.md#listorderpickupready) | **GET** /v1/orders/pickup-ready | Orders with a purchased Crossly Shipping label a courier can collect or a SCAN form can cover, grouped by carrier.
[**listOrderPickups**](OrdersAPI.md#listorderpickups) | **GET** /v1/orders/pickups | Booked carrier pickups, newest first.
[**listOrderRefunds**](OrdersAPI.md#listorderrefunds) | **GET** /v1/orders/{id}/refunds | Every refund requested on this order through the API or a cancel, newest first (amounts in dollars).
[**listOrderScanForms**](OrdersAPI.md#listorderscanforms) | **GET** /v1/orders/scan-forms | SCAN forms, newest first.
[**listOrderUnits**](OrdersAPI.md#listorderunits) | **GET** /v1/orders/{id}/units | List the identified units that shipped on an order.
[**listOrders**](OrdersAPI.md#listorders) | **GET** /v1/orders | List orders, each with its sale price, fees, SKU and line items.
[**listRentalHistory**](OrdersAPI.md#listrentalhistory) | **GET** /v1/rentals/history | Active rentals and history, filtered by view, status, dates, item or a search.
[**listRentals**](OrdersAPI.md#listrentals) | **GET** /v1/rentals | Rentals of your items, with the ship-to and the outbound label.
[**updateOrder**](OrdersAPI.md#updateorder) | **PATCH** /v1/orders/{id} | Update order (status, notes, tracking).


# **createLiveShipmentLabel**
```swift
    open class func createLiveShipmentLabel(id: String, completion: @escaping (_ data: CreateLiveShipmentShipResponse?, _ error: Error?) -> Void)
```

Buy ONE label for a show box, rated for all its orders packed together; every order takes its tracking and the buyer’s extra postage is refunded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Buy ONE label for a show box, rated for all its orders packed together; every order takes its tracking and the buyer’s extra postage is refunded.
OrdersAPI.createLiveShipmentLabel(id: id) { (response, error) in
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

**CreateLiveShipmentShipResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createLiveShipmentShip**
```swift
    open class func createLiveShipmentShip(id: String, completion: @escaping (_ data: CreateLiveShipmentShipResponse?, _ error: Error?) -> Void)
```

Ship a show box with your own label: every order is marked shipped with this tracking and the buyer’s extra postage is refunded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Ship a show box with your own label: every order is marked shipped with this tracking and the buyer’s extra postage is refunded.
OrdersAPI.createLiveShipmentShip(id: id) { (response, error) in
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

**CreateLiveShipmentShipResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderBulkDelete**
```swift
    open class func createOrderBulkDelete(completion: @escaping (_ data: CreateOrderBulkDeleteResponse?, _ error: Error?) -> Void)
```

Bulk soft- or hard-delete orders by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk soft- or hard-delete orders by id.
OrdersAPI.createOrderBulkDelete() { (response, error) in
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

**CreateOrderBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderBulkExport**
```swift
    open class func createOrderBulkExport(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Bulk export selected orders as CSV.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk export selected orders as CSV.
OrdersAPI.createOrderBulkExport() { (response, error) in
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

**String**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderBulkMarkDisputed**
```swift
    open class func createOrderBulkMarkDisputed(completion: @escaping (_ data: UpdatedResponse?, _ error: Error?) -> Void)
```

Bulk mark orders as disputed with a shared reason.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk mark orders as disputed with a shared reason.
OrdersAPI.createOrderBulkMarkDisputed() { (response, error) in
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

**UpdatedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderBulkMarkShipped**
```swift
    open class func createOrderBulkMarkShipped(completion: @escaping (_ data: CreateOrderBulkMarkShippedResponse?, _ error: Error?) -> Void)
```

Bulk flip status=shipped, clear the reserved-stock marker, and notify each platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk flip status=shipped, clear the reserved-stock marker, and notify each platform.
OrdersAPI.createOrderBulkMarkShipped() { (response, error) in
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

**CreateOrderBulkMarkShippedResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderBulkPackingSlip**
```swift
    open class func createOrderBulkPackingSlip(completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Bulk packing slips PDF.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk packing slips PDF.
OrdersAPI.createOrderBulkPackingSlip() { (response, error) in
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

**URL**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderCancel**
```swift
    open class func createOrderCancel(id: UUID, completion: @escaping (_ data: CreateOrderCancelResponse?, _ error: Error?) -> Void)
```

Cancel an order before it ships. Crossly-marketplace orders refund the buyer (also needs orders:refund) and restock; crossposted orders go to the marketplace, or fail not_supported_on_platform (recordOnly: true records a cancel made on the marketplace). Fires order.cancelled.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Cancel an order before it ships. Crossly-marketplace orders refund the buyer (also needs orders:refund) and restock; crossposted orders go to the marketplace, or fail not_supported_on_platform (recordOnly: true records a cancel made on the marketplace). Fires order.cancelled.
OrdersAPI.createOrderCancel(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderCancelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderCorrectTracking**
```swift
    open class func createOrderCorrectTracking(id: UUID, completion: @escaping (_ data: CreateOrderCorrectTrackingResponse?, _ error: Error?) -> Void)
```

Correct a wrong tracking number the marketplace already holds.

Replaces the order's tracking number with `trackingNumber`, on Crossly and on the marketplace, where the platform can change tracking it already has (its trackingCorrection capability): `correction` is replace (overwritten), remove_then_submit (the old number removed, then the new one sent) or submit (the platform held none). Refused with validation_error where the platform cannot change it (update it there), when the order has no tracking, its tracking came with a label (void the label instead), or it is closed or delivered; conflict while the previous tracking update is still in flight.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Correct a wrong tracking number the marketplace already holds.
OrdersAPI.createOrderCorrectTracking(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderCorrectTrackingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderDispute**
```swift
    open class func createOrderDispute(id: UUID, completion: @escaping (_ data: CreateOrderDisputeResponse?, _ error: Error?) -> Void)
```

Flag an order as disputed.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Flag an order as disputed.
OrdersAPI.createOrderDispute(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderDisputeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderImport**
```swift
    open class func createOrderImport(completion: @escaping (_ data: CreateOrderImportResponse?, _ error: Error?) -> Void)
```

Manually (re-)pull one or more connected platforms' order history for a day-window.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Manually (re-)pull one or more connected platforms' order history for a day-window.
OrdersAPI.createOrderImport() { (response, error) in
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

**CreateOrderImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderLabel**
```swift
    open class func createOrderLabel(id: UUID, completion: @escaping (_ data: CreateOrderLabelResponse?, _ error: Error?) -> Void)
```

Purchase a Crossly Shipping label. An order that already has a label answers 409 label_exists unless allowSecondLabel is true.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Purchase a Crossly Shipping label. An order that already has a label answers 409 label_exists unless allowSecondLabel is true.
OrdersAPI.createOrderLabel(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderLabelVoid**
```swift
    open class func createOrderLabelVoid(id: UUID, completion: @escaping (_ data: CreateOrderLabelVoidResponse?, _ error: Error?) -> Void)
```

Void a Crossly Shipping label and refund it to the shipping wallet.

Voids the order's unused label, owes the wallet charge back in full (markup included) and sets the order back to needs_fulfillment. The refund is held as pending (`refundPendingCents`; `refundedCents` stays 0) and is credited to the shipping wallet when Crossly releases held credits. Only while the carrier has not scanned the parcel and within 30 days of purchase. `tracking.outcome` says what happens to tracking already sent to the marketplace: not_submitted, removal_queued, replace_on_next_label, or update_manually (with `platformOrderUrl`). Repeating the call returns the same result with `alreadyVoided: true` and refunds nothing again.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Void a Crossly Shipping label and refund it to the shipping wallet.
OrdersAPI.createOrderLabelVoid(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderLabelVoidResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderLinkListing**
```swift
    open class func createOrderLinkListing(id: UUID, completion: @escaping (_ data: CreateOrderLinkListingResponse?, _ error: Error?) -> Void)
```

Link an unmatched sale to one of your listings (marks it sold, delists it elsewhere).

For an order whose listing is an auto-created external-sale stub. Body: { listingId, platformListingId? }. Moves the sale onto the listing's row on the order's platform (or moves the stub's row under the listing when it has none), decrements its stock like a detected sale, archives the stub, and delists the item from every other marketplace once no unit is left. 409 when the order is already linked.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Link an unmatched sale to one of your listings (marks it sold, delists it elsewhere).
OrdersAPI.createOrderLinkListing(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderLinkListingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderMessage**
```swift
    open class func createOrderMessage(id: UUID, completion: @escaping (_ data: CreateOrderMessageResponse?, _ error: Error?) -> Void)
```

Message the order's buyer on the marketplace.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Message the order's buyer on the marketplace.
OrdersAPI.createOrderMessage(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderMessageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderOrderChat**
```swift
    open class func createOrderOrderChat(id: UUID, createOrderOrderChatRequest: CreateOrderOrderChatRequest, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Send a message to the order's buyer chat on the marketplace. Mirrored into the Crossly inbox.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let createOrderOrderChatRequest = CreateOrderOrderChatRequest(body: "body_example") // CreateOrderOrderChatRequest | 

// Send a message to the order's buyer chat on the marketplace. Mirrored into the Crossly inbox.
OrdersAPI.createOrderOrderChat(id: id, createOrderOrderChatRequest: createOrderOrderChatRequest) { (response, error) in
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
 **id** | **UUID** |  | 
 **createOrderOrderChatRequest** | **CreateOrderOrderChatRequest** |  | 

### Return type

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderPickup**
```swift
    open class func createOrderPickup(completion: @escaping (_ data: CreateOrderPickupResponse?, _ error: Error?) -> Void)
```

Book a carrier pickup for labelled orders (one carrier per pickup; window at least an hour, up to 14 days ahead).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Book a carrier pickup for labelled orders (one carrier per pickup; window at least an hour, up to 14 days ahead).
OrdersAPI.createOrderPickup() { (response, error) in
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

**CreateOrderPickupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderPickupLabel**
```swift
    open class func createOrderPickupLabel(id: String, completion: @escaping (_ data: CreateOrderPickupLabelResponse?, _ error: Error?) -> Void)
```

Buy the carrier label for a Crossly order the buyer collects from a pickup point (debits your shipping wallet). 402 when the wallet is short. An order that already has a label answers 409 label_exists unless allowSecondLabel is true.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Buy the carrier label for a Crossly order the buyer collects from a pickup point (debits your shipping wallet). 402 when the wallet is short. An order that already has a label answers 409 label_exists unless allowSecondLabel is true.
OrdersAPI.createOrderPickupLabel(id: id) { (response, error) in
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

**CreateOrderPickupLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderPlatformLabelPackage**
```swift
    open class func createOrderPlatformLabelPackage(id: UUID, completion: @escaping (_ data: GetOrderWhatnotShipmentResponse?, _ error: Error?) -> Void)
```

Save the package (weight oz, box inches) the marketplace prices the label from.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Save the package (weight oz, box inches) the marketplace prices the label from.
OrdersAPI.createOrderPlatformLabelPackage(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderWhatnotShipmentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderPlatformLabelPackageQuote**
```swift
    open class func createOrderPlatformLabelPackageQuote(id: UUID, completion: @escaping (_ data: CreateOrderWhatnotPackageQuoteResponse?, _ error: Error?) -> Void)
```

Quote what a change to the marketplace shipment's package costs (cents).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Quote what a change to the marketplace shipment's package costs (cents).
OrdersAPI.createOrderPlatformLabelPackageQuote(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderWhatnotPackageQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderPlatformLabelPull**
```swift
    open class func createOrderPlatformLabelPull(id: UUID, completion: @escaping (_ data: CreateOrderPlatformLabelPullResponse?, _ error: Error?) -> Void)
```

Pull the marketplace's prepaid label into Crossly (every platform with a label descriptor).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Pull the marketplace's prepaid label into Crossly (every platform with a label descriptor).
OrdersAPI.createOrderPlatformLabelPull(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderPlatformLabelPullResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderPlatformLabelPurchase**
```swift
    open class func createOrderPlatformLabelPurchase(id: UUID, completion: @escaping (_ data: CreateOrderPlatformLabelPurchaseResponse?, _ error: Error?) -> Void)
```

Buy a replacement / extra marketplace label, or have the marketplace generate it, and record it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Buy a replacement / extra marketplace label, or have the marketplace generate it, and record it.
OrdersAPI.createOrderPlatformLabelPurchase(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderPlatformLabelPurchaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderPlatformLabelQuote**
```swift
    open class func createOrderPlatformLabelQuote(id: UUID, completion: @escaping (_ data: CreateOrderPlatformLabelQuoteResponse?, _ error: Error?) -> Void)
```

Quote what buying a marketplace label costs, before you are charged.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Quote what buying a marketplace label costs, before you are charged.
OrdersAPI.createOrderPlatformLabelQuote(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderPlatformLabelQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderPullPlatformLabel**
```swift
    open class func createOrderPullPlatformLabel(id: UUID, completion: @escaping (_ data: CreateOrderPullPlatformLabelResponse?, _ error: Error?) -> Void)
```

Pull a pre-paid label from cookie platforms (Poshmark/Mercari).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Pull a pre-paid label from cookie platforms (Poshmark/Mercari).
OrdersAPI.createOrderPullPlatformLabel(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderPullPlatformLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderRate**
```swift
    open class func createOrderRate(id: UUID, completion: @escaping (_ data: CreateOrderRateResponse?, _ error: Error?) -> Void)
```

Crossly Shipping rate quote for an order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Crossly Shipping rate quote for an order.
OrdersAPI.createOrderRate(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderRateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderRefund**
```swift
    open class func createOrderRefund(id: UUID, completion: @escaping (_ data: CreateOrderRefundResponse?, _ error: Error?) -> Void)
```

DEPRECATED: use POST /v1/orders/{id}/refunds. Full or partial refund (amount in dollars). Same idempotency and cap as /refunds: the same request twice refunds once (Idempotency-Key, else the body), never past what the buyer paid.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// DEPRECATED: use POST /v1/orders/{id}/refunds. Full or partial refund (amount in dollars). Same idempotency and cap as /refunds: the same request twice refunds once (Idempotency-Key, else the body), never past what the buyer paid.
OrdersAPI.createOrderRefund(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderRefundResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderRefundById**
```swift
    open class func createOrderRefundById(id: UUID, completion: @escaping (_ data: CreateOrderRefundByIdResponse?, _ error: Error?) -> Void)
```

Refund an order, in full or in part. `amount` is dollars; omit it for everything left (or the line items' value). Crossly-marketplace orders refund the buyer's card; crossposted orders refund through the marketplace, or fail not_supported_on_platform. Never refunds past the order (refund_exceeds_remaining). The same request twice refunds once: send an Idempotency-Key (without one, the body is the key). A partial refund keeps the order's status. What the platform takes (full/partial, its own reason keys, a comment) is GET /v1/orders/{id}/refund-options; a request outside it fails partial_refund_unsupported, invalid_refund_reason or refund_exceeds_item_amount. Fires order.refunded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Refund an order, in full or in part. `amount` is dollars; omit it for everything left (or the line items' value). Crossly-marketplace orders refund the buyer's card; crossposted orders refund through the marketplace, or fail not_supported_on_platform. Never refunds past the order (refund_exceeds_remaining). The same request twice refunds once: send an Idempotency-Key (without one, the body is the key). A partial refund keeps the order's status. What the platform takes (full/partial, its own reason keys, a comment) is GET /v1/orders/{id}/refund-options; a request outside it fails partial_refund_unsupported, invalid_refund_reason or refund_exceeds_item_amount. Fires order.refunded.
OrdersAPI.createOrderRefundById(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderRefundByIdResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderRefundResolve**
```swift
    open class func createOrderRefundResolve(id: UUID, refundId: UUID, completion: @escaping (_ data: ListOrderRefundsItem?, _ error: Error?) -> Void)
```

Settle an `unverified` refund (one Crossly could not confirm with the marketplace after its request was interrupted) once you have checked the marketplace: succeeded (with the amount actually refunded, dollars) or failed (nothing moved; the same Idempotency-Key can then try again). Crossly-marketplace refunds are confirmed by support instead.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let refundId = 987 // UUID | 

// Settle an `unverified` refund (one Crossly could not confirm with the marketplace after its request was interrupted) once you have checked the marketplace: succeeded (with the amount actually refunded, dollars) or failed (nothing moved; the same Idempotency-Key can then try again). Crossly-marketplace refunds are confirmed by support instead.
OrdersAPI.createOrderRefundResolve(id: id, refundId: refundId) { (response, error) in
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
 **id** | **UUID** |  | 
 **refundId** | **UUID** |  | 

### Return type

**ListOrderRefundsItem**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderScanForm**
```swift
    open class func createOrderScanForm(completion: @escaping (_ data: CreateOrderScanFormResponse?, _ error: Error?) -> Void)
```

Create SCAN forms (one per carrier account and ship-from address) for labels the carrier has not scanned yet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create SCAN forms (one per carrier account and ship-from address) for labels the carrier has not scanned yet.
OrdersAPI.createOrderScanForm() { (response, error) in
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

**CreateOrderScanFormResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderTracking**
```swift
    open class func createOrderTracking(id: UUID, completion: @escaping (_ data: CreateOrderTrackingResponse?, _ error: Error?) -> Void)
```

Submit tracking number + carrier and notify the platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Submit tracking number + carrier and notify the platform.
OrdersAPI.createOrderTracking(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderTrackingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderWhatnotLabel**
```swift
    open class func createOrderWhatnotLabel(id: UUID, completion: @escaping (_ data: CreateOrderWhatnotLabelResponse?, _ error: Error?) -> Void)
```

Generate the Whatnot shipping label and record it on the order.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Generate the Whatnot shipping label and record it on the order.
OrdersAPI.createOrderWhatnotLabel(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderWhatnotLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderWhatnotPackage**
```swift
    open class func createOrderWhatnotPackage(id: UUID, completion: @escaping (_ data: GetOrderWhatnotShipmentResponse?, _ error: Error?) -> Void)
```

Save a Whatnot shipment package (weight oz, box inches).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Save a Whatnot shipment package (weight oz, box inches).
OrdersAPI.createOrderWhatnotPackage(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderWhatnotShipmentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createOrderWhatnotPackageQuote**
```swift
    open class func createOrderWhatnotPackageQuote(id: UUID, completion: @escaping (_ data: CreateOrderWhatnotPackageQuoteResponse?, _ error: Error?) -> Void)
```

Quote what a Whatnot package change costs (cents).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Quote what a Whatnot package change costs (cents).
OrdersAPI.createOrderWhatnotPackageQuote(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**CreateOrderWhatnotPackageQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalApprove**
```swift
    open class func createRentalApprove(id: String, completion: @escaping (_ data: RentalResponse?, _ error: Error?) -> Void)
```

Approve a requested rental (offers with requireApproval): the renter’s held card is charged.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Approve a requested rental (offers with requireApproval): the renter’s held card is charged.
OrdersAPI.createRentalApprove(id: id) { (response, error) in
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

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalCancel**
```swift
    open class func createRentalCancel(id: String, completion: @escaping (_ data: RentalResponse?, _ error: Error?) -> Void)
```

Cancel a booked rental that has not shipped: the renter is refunded in full.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Cancel a booked rental that has not shipped: the renter is refunded in full.
OrdersAPI.createRentalCancel(id: id) { (response, error) in
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

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalClaim**
```swift
    open class func createRentalClaim(id: String, completion: @escaping (_ data: RentalResponse?, _ error: Error?) -> Void)
```

Claim part or all of the deposit (cents, a note, photo URLs): within 3 days of the return, or 14 days after the end if it never came back.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Claim part or all of the deposit (cents, a note, photo URLs): within 3 days of the return, or 14 days after the end if it never came back.
OrdersAPI.createRentalClaim(id: id) { (response, error) in
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

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalDecline**
```swift
    open class func createRentalDecline(id: String, completion: @escaping (_ data: RentalResponse?, _ error: Error?) -> Void)
```

Decline a requested rental: the hold on the renter’s card is released.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Decline a requested rental: the hold on the renter’s card is released.
OrdersAPI.createRentalDecline(id: id) { (response, error) in
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

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalDelivered**
```swift
    open class func createRentalDelivered(id: String, completion: @escaping (_ data: RentalResponse?, _ error: Error?) -> Void)
```

Mark a rental delivered to the renter.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Mark a rental delivered to the renter.
OrdersAPI.createRentalDelivered(id: id) { (response, error) in
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

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalExtensionDecide**
```swift
    open class func createRentalExtensionDecide(id: String, extensionId: String, completion: @escaping (_ data: CreateRentalExtensionDecideResponse?, _ error: Error?) -> Void)
```

Approve or decline a renter’s request for more days.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 
let extensionId = "extensionId_example" // String | 

// Approve or decline a renter’s request for more days.
OrdersAPI.createRentalExtensionDecide(id: id, extensionId: extensionId) { (response, error) in
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
 **extensionId** | **String** |  | 

### Return type

**CreateRentalExtensionDecideResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalInspect**
```swift
    open class func createRentalInspect(id: String, completion: @escaping (_ data: RentalResponse?, _ error: Error?) -> Void)
```

Record the return inspection: the checklist, photos, and optionally release the deposit.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Record the return inspection: the checklist, photos, and optionally release the deposit.
OrdersAPI.createRentalInspect(id: id) { (response, error) in
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

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalLabel**
```swift
    open class func createRentalLabel(id: String, completion: @escaping (_ data: RentalResponse?, _ error: Error?) -> Void)
```

Buy both labels for a booked rental: outbound to the renter, and the return label they use.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Buy both labels for a booked rental: outbound to the renter, and the return label they use.
OrdersAPI.createRentalLabel(id: id) { (response, error) in
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

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalNotReturned**
```swift
    open class func createRentalNotReturned(id: String, completion: @escaping (_ data: RentalResponse?, _ error: Error?) -> Void)
```

Report a rental not returned (14 days past due): the deposit goes to you.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Report a rental not returned (14 days past due): the deposit goes to you.
OrdersAPI.createRentalNotReturned(id: id) { (response, error) in
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

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalReleaseDeposit**
```swift
    open class func createRentalReleaseDeposit(id: String, completion: @escaping (_ data: RentalResponse?, _ error: Error?) -> Void)
```

Release the deposit now, without a claim.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Release the deposit now, without a claim.
OrdersAPI.createRentalReleaseDeposit(id: id) { (response, error) in
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

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalReturned**
```swift
    open class func createRentalReturned(id: String, completion: @escaping (_ data: RentalResponse?, _ error: Error?) -> Void)
```

Mark a rental back with you. You then have 3 days to claim damage before the deposit goes back.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Mark a rental back with you. You then have 3 days to claim damage before the deposit goes back.
OrdersAPI.createRentalReturned(id: id) { (response, error) in
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

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createRentalShipped**
```swift
    open class func createRentalShipped(id: String, completion: @escaping (_ data: RentalResponse?, _ error: Error?) -> Void)
```

Mark a booked rental shipped, with at least 2 photos of its condition as it leaves (URLs you uploaded) — the evidence any later claim is judged against.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Mark a booked rental shipped, with at least 2 photos of its condition as it leaves (URLs you uploaded) — the evidence any later claim is judged against.
OrdersAPI.createRentalShipped(id: id) { (response, error) in
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

**RentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrder**
```swift
    open class func getOrder(id: UUID, completion: @escaping (_ data: GetOrderResponse?, _ error: Error?) -> Void)
```

Get one order, with its sale price, fees, SKU and line items.

Each order carries its sale exactly as the order.created webhook sent it: salePrice, platformFee, taxCollected and shippingCharged in DOLLARS as JSON numbers (not decimal strings), feeSource (\"exact\" = the fee the marketplace charged, \"estimated\"), sku (the SKU of the listing), quantity (units), and lineItems: one entry per order row {lineKey, listingId, inventoryItemId, platformListingId (the MARKETPLACE listing id), sku (variant SKU, else the listing SKU), variantId, quantity, unitPrice (dollars per unit, rounded to the cent), total (dollars)}. A multi-item marketplace order is one order row per line sharing platformOrderId, each with its own lineKey. detailsPending: true (the sale was recorded before its price and buyer loaded), an order with no sale, or a sale with no listing behind it has null money and lineItems [] (sku and quantity are still given when known). channel is the business channel that sold it (retail, wholesale, auction, live, world, pos), purchaseOrderRef the buyer's PO number, and trade the on-account invoice behind a wholesale order {invoiceId, invoiceNumber, invoiceStatus (open, partial, overdue, paid, void), netDays, dueAt, totalCents, amountPaidCents, balanceCents} or null.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Get one order, with its sale price, fees, SKU and line items.
OrdersAPI.getOrder(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderCancelEligibility**
```swift
    open class func getOrderCancelEligibility(id: UUID, completion: @escaping (_ data: GetOrderCancelEligibilityResponse?, _ error: Error?) -> Void)
```

Whether this order can be cancelled, and which reason codes the marketplace accepts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Whether this order can be cancelled, and which reason codes the marketplace accepts.
OrdersAPI.getOrderCancelEligibility(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderCancelEligibilityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderCount**
```swift
    open class func getOrderCount(completion: @escaping (_ data: [String: Double]?, _ error: Error?) -> Void)
```

Tab badge counts by status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Tab badge counts by status.
OrdersAPI.getOrderCount() { (response, error) in
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

**[String: Double]**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderDeliveryPhoto**
```swift
    open class func getOrderDeliveryPhoto(id: String, completion: @escaping (_ data: GetOrderDeliveryPhotoResponse?, _ error: Error?) -> Void)
```

The courier's delivery photo for this order, pulled automatically, with where it came from.

Crossly pulls the doorstep photo from whoever has it (the carrier API, e.g. UPS; Trackified when its tracking carries one; the marketplace when its payload does) and stores it on the order. state is found | none | not_delivered; source / sourceLabel say where it came from (\"From UPS\", \"Added by you\"); checked lists who was asked when there is none. Carriers often attach the photo hours after delivery.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// The courier's delivery photo for this order, pulled automatically, with where it came from.
OrdersAPI.getOrderDeliveryPhoto(id: id) { (response, error) in
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

**GetOrderDeliveryPhotoResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderEvidence**
```swift
    open class func getOrderEvidence(id: String, completion: @escaping (_ data: GetOrderEvidenceResponse?, _ error: Error?) -> Void)
```

Everything recorded about how this order was packed and how it arrived.

Returns the packing capture and its attestation verdict, the seal comparison (dispatch vs arrival), the buyer's arrival-condition state, and the identified units that shipped. Absence is reported as absence — an empty section means nothing was recorded, never that nothing happened.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Everything recorded about how this order was packed and how it arrived.
OrdersAPI.getOrderEvidence(id: id) { (response, error) in
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

**GetOrderEvidenceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderLabelPrint**
```swift
    open class func getOrderLabelPrint(id: UUID, size: Size_getOrderLabelPrint? = nil, flip: Flip_getOrderLabelPrint? = nil, parcelId: UUID? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

The order's shipping label as a PDF sized for printing (cropped, upright, fitted).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let size = "size_example" // String | Paper. Default 4x6. (optional)
let flip = "flip_example" // String | Turn the label a half turn. (optional)
let parcelId = 987 // UUID | A specific parcel's label; default the order's primary. (optional)

// The order's shipping label as a PDF sized for printing (cropped, upright, fitted).
OrdersAPI.getOrderLabelPrint(id: id, size: size, flip: flip, parcelId: parcelId) { (response, error) in
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
 **id** | **UUID** |  | 
 **size** | **String** | Paper. Default 4x6. | [optional] 
 **flip** | **String** | Turn the label a half turn. | [optional] 
 **parcelId** | **UUID** | A specific parcel&#39;s label; default the order&#39;s primary. | [optional] 

### Return type

**URL**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderOrderChat**
```swift
    open class func getOrderOrderChat(id: UUID, completion: @escaping (_ data: GetOrderOrderChatResponse?, _ error: Error?) -> Void)
```

The order's buyer chat thread on the marketplace (separate from listing comments): { orderId, platform, messages: [{ id, sender (buyer|seller|platform), body, sentAt, attachments? }], canSend }, oldest message first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// The order's buyer chat thread on the marketplace (separate from listing comments): { orderId, platform, messages: [{ id, sender (buyer|seller|platform), body, sentAt, attachments? }], canSend }, oldest message first.
OrdersAPI.getOrderOrderChat(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderOrderChatResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderPackingSlip**
```swift
    open class func getOrderPackingSlip(id: UUID, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Single-order packing slip PDF.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Single-order packing slip PDF.
OrdersAPI.getOrderPackingSlip(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**URL**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderPlatformLabelOption**
```swift
    open class func getOrderPlatformLabelOption(id: UUID, completion: @escaping (_ data: GetOrderPlatformLabelOptionResponse?, _ error: Error?) -> Void)
```

What buying a marketplace label offers for this order (weight tiers, mailbox state).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// What buying a marketplace label offers for this order (weight tiers, mailbox state).
OrdersAPI.getOrderPlatformLabelOption(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderPlatformLabelOptionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderPlatformLabelPackingSlip**
```swift
    open class func getOrderPlatformLabelPackingSlip(id: UUID, completion: @escaping (_ data: UrlExpiresInSecondsResponse?, _ error: Error?) -> Void)
```

A fresh link to the marketplace's own packing slip PDF.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// A fresh link to the marketplace's own packing slip PDF.
OrdersAPI.getOrderPlatformLabelPackingSlip(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**UrlExpiresInSecondsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderPlatformLabelState**
```swift
    open class func getOrderPlatformLabelState(id: UUID, completion: @escaping (_ data: GetOrderWhatnotShipmentResponse?, _ error: Error?) -> Void)
```

The marketplace's shipment for an order (package, label, tracking). Records a label found on it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// The marketplace's shipment for an order (package, label, tracking). Records a label found on it.
OrdersAPI.getOrderPlatformLabelState(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderWhatnotShipmentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderPlatformLabelUrl**
```swift
    open class func getOrderPlatformLabelUrl(id: UUID, completion: @escaping (_ data: UrlExpiresInSecondsResponse?, _ error: Error?) -> Void)
```

A fresh, short-lived link to the marketplace's label sheet. Never stored.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// A fresh, short-lived link to the marketplace's label sheet. Never stored.
OrdersAPI.getOrderPlatformLabelUrl(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**UrlExpiresInSecondsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderProofOfDelivery**
```swift
    open class func getOrderProofOfDelivery(id: UUID, completion: @escaping (_ data: GetOrderProofOfDeliveryResponse?, _ error: Error?) -> Void)
```

Proof-of-delivery evidence from the carrier's scan record (PDF, or JSON).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Proof-of-delivery evidence from the carrier's scan record (PDF, or JSON).
OrdersAPI.getOrderProofOfDelivery(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderProofOfDeliveryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderRefundOption**
```swift
    open class func getOrderRefundOption(id: UUID, completion: @escaping (_ data: GetOrderRefundOptionResponse?, _ error: Error?) -> Void)
```

What a refund on this order may be, from the platform's declared capability: whether Crossly can refund it at all, full and/or partial, what a partial is measured against (total = what the buyer paid, item = the item price only), whether it may precede shipment, the platform's own reason keys (when listed, a refund's reason must be one of them), whether a comment is sent, whether the refund IS cancelling the sale (cancelsSale: Mercari, full only), whether the window closes when the order completes (untilCompleted; windowClosed = it has) and a one-line note on what the platform does not allow.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// What a refund on this order may be, from the platform's declared capability: whether Crossly can refund it at all, full and/or partial, what a partial is measured against (total = what the buyer paid, item = the item price only), whether it may precede shipment, the platform's own reason keys (when listed, a refund's reason must be one of them), whether a comment is sent, whether the refund IS cancelling the sale (cancelsSale: Mercari, full only), whether the window closes when the order completes (untilCompleted; windowClosed = it has) and a one-line note on what the platform does not allow.
OrdersAPI.getOrderRefundOption(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderRefundOptionResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderSalesTax**
```swift
    open class func getOrderSalesTax(id: UUID, completion: @escaping (_ data: GetOrderSalesTaxResponse?, _ error: Error?) -> Void)
```

Who collected sales tax on one Crossly marketplace order, where, and the seller notice.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Who collected sales tax on one Crossly marketplace order, where, and the seller notice.
OrdersAPI.getOrderSalesTax(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderSalesTaxResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderScanForm**
```swift
    open class func getOrderScanForm(id: String, completion: @escaping (_ data: GetOrderScanFormResponse?, _ error: Error?) -> Void)
```

One SCAN form; a queued form is re-read from the carrier and its PDF appears once built.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One SCAN form; a queued form is re-read from the carrier and its PDF appears once built.
OrdersAPI.getOrderScanForm(id: id) { (response, error) in
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

**GetOrderScanFormResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderShipment**
```swift
    open class func getOrderShipment(id: UUID, completion: @escaping (_ data: GetOrderShipmentResponse?, _ error: Error?) -> Void)
```

List the parcels an order shipped in.

An order can ship in more than one box: eBay allows a second label, Poshmark sells up to ten additional ones, and a bundle can need two. The order record carries only the PRIMARY parcel, so this is the only place the rest are visible. totalLabelCostCents sums every non-voided parcel — reading label cost off the order understates a multi-parcel order by a whole label.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// List the parcels an order shipped in.
OrdersAPI.getOrderShipment(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderShipmentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderWhatnotPackingSlip**
```swift
    open class func getOrderWhatnotPackingSlip(id: UUID, completion: @escaping (_ data: UrlExpiresInSecondsResponse?, _ error: Error?) -> Void)
```

A fresh link to Whatnot's packing slip PDF.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// A fresh link to Whatnot's packing slip PDF.
OrdersAPI.getOrderWhatnotPackingSlip(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**UrlExpiresInSecondsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getOrderWhatnotShipment**
```swift
    open class func getOrderWhatnotShipment(id: UUID, completion: @escaping (_ data: GetOrderWhatnotShipmentResponse?, _ error: Error?) -> Void)
```

Whatnot shipment for an order (package, label, tracking). Records a label found on it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Whatnot shipment for an order (package, label, tracking). Records a label found on it.
OrdersAPI.getOrderWhatnotShipment(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**GetOrderWhatnotShipmentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getRental**
```swift
    open class func getRental(id: String, completion: @escaping (_ data: GetRentalResponse?, _ error: Error?) -> Void)
```

One rental: its timeline, both sides’ condition photos, payments, extensions and what can be done next.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// One rental: its timeline, both sides’ condition photos, payments, extensions and what can be done next.
OrdersAPI.getRental(id: id) { (response, error) in
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

**GetRentalResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getRentalCalendar**
```swift
    open class func getRentalCalendar(completion: @escaping (_ data: GetRentalCalendarResponse?, _ error: Error?) -> Void)
```

Every rentable item’s bookings (per unit), turnaround buffers and blackouts between two dates (≤ 93 days).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every rentable item’s bookings (per unit), turnaround buffers and blackouts between two dates (≤ 93 days).
OrdersAPI.getRentalCalendar() { (response, error) in
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

**GetRentalCalendarResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listLayaways**
```swift
    open class func listLayaways(completion: @escaping (_ data: ListLayawaysResponse?, _ error: Error?) -> Void)
```

Your items on layaway (active and paid off). Do not ship an active one: its order moves to needs_fulfillment when paid in full.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your items on layaway (active and paid off). Do not ship an active one: its order moves to needs_fulfillment when paid in full.
OrdersAPI.listLayaways() { (response, error) in
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

**ListLayawaysResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listLiveShipments**
```swift
    open class func listLiveShipments(completion: @escaping (_ data: ListLiveShipmentsResponse?, _ error: Error?) -> Void)
```

Your show boxes: every buyer’s orders from one live show, to ship together.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your show boxes: every buyer’s orders from one live show, to ship together.
OrdersAPI.listLiveShipments() { (response, error) in
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

**ListLiveShipmentsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listOrderPickupReady**
```swift
    open class func listOrderPickupReady(completion: @escaping (_ data: ListOrderPickupReadyResponse?, _ error: Error?) -> Void)
```

Orders with a purchased Crossly Shipping label a courier can collect or a SCAN form can cover, grouped by carrier.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Orders with a purchased Crossly Shipping label a courier can collect or a SCAN form can cover, grouped by carrier.
OrdersAPI.listOrderPickupReady() { (response, error) in
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

**ListOrderPickupReadyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listOrderPickups**
```swift
    open class func listOrderPickups(completion: @escaping (_ data: ListOrderPickupsResponse?, _ error: Error?) -> Void)
```

Booked carrier pickups, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Booked carrier pickups, newest first.
OrdersAPI.listOrderPickups() { (response, error) in
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

**ListOrderPickupsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listOrderRefunds**
```swift
    open class func listOrderRefunds(id: UUID, completion: @escaping (_ data: ListOrderRefundsResponse?, _ error: Error?) -> Void)
```

Every refund requested on this order through the API or a cancel, newest first (amounts in dollars).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Every refund requested on this order through the API or a cancel, newest first (amounts in dollars).
OrdersAPI.listOrderRefunds(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**ListOrderRefundsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listOrderScanForms**
```swift
    open class func listOrderScanForms(completion: @escaping (_ data: ListOrderScanFormsResponse?, _ error: Error?) -> Void)
```

SCAN forms, newest first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// SCAN forms, newest first.
OrdersAPI.listOrderScanForms() { (response, error) in
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

**ListOrderScanFormsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listOrderUnits**
```swift
    open class func listOrderUnits(id: String, completion: @escaping (_ data: ListOrderUnitsResponse?, _ error: Error?) -> Void)
```

List the identified units that shipped on an order.

The dispute-time read: what physically went out. An empty list means no identity was recorded, which is not the same as the order having no units.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// List the identified units that shipped on an order.
OrdersAPI.listOrderUnits(id: id) { (response, error) in
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

**ListOrderUnitsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listOrders**
```swift
    open class func listOrders(page: Int? = nil, limit: Int? = nil, status: String? = nil, platform: String? = nil, channel: Channel_listOrders? = nil, details: Details_listOrders? = nil, unlinked: Unlinked_listOrders? = nil, updatedSince: Date? = nil, completion: @escaping (_ data: ListOrdersResponse?, _ error: Error?) -> Void)
```

List orders, each with its sale price, fees, SKU and line items.

Each order carries its sale exactly as the order.created webhook sent it: salePrice, platformFee, taxCollected and shippingCharged in DOLLARS as JSON numbers (not decimal strings), feeSource (\"exact\" = the fee the marketplace charged, \"estimated\"), sku (the SKU of the listing), quantity (units), and lineItems: one entry per order row {lineKey, listingId, inventoryItemId, platformListingId (the MARKETPLACE listing id), sku (variant SKU, else the listing SKU), variantId, quantity, unitPrice (dollars per unit, rounded to the cent), total (dollars)}. A multi-item marketplace order is one order row per line sharing platformOrderId, each with its own lineKey. detailsPending: true (the sale was recorded before its price and buyer loaded), an order with no sale, or a sale with no listing behind it has null money and lineItems [] (sku and quantity are still given when known). channel is the business channel that sold it (retail, wholesale, auction, live, world, pos), purchaseOrderRef the buyer's PO number, and trade the on-account invoice behind a wholesale order {invoiceId, invoiceNumber, invoiceStatus (open, partial, overdue, paid, void), netDays, dueAt, totalCents, amountPaidCents, balanceCents} or null.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 25)
let status = "status_example" // String |  (optional)
let platform = "platform_example" // String |  (optional)
let channel = "channel_example" // String | Only orders sold through this business channel (e.g. wholesale). (optional)
let details = "details_example" // String | pending = only orders whose sale details (price, buyer) have not loaded yet. (optional)
let unlinked = "unlinked_example" // String | 1 or true = only orders whose sale is not linked to any listing (an orphan sale). (optional)
let updatedSince = Date() // Date | Only orders created or changed at or after this time (ISO 8601): poll with the time of your last call to catch new orders and status/tracking changes. (optional)

// List orders, each with its sale price, fees, SKU and line items.
OrdersAPI.listOrders(page: page, limit: limit, status: status, platform: platform, channel: channel, details: details, unlinked: unlinked, updatedSince: updatedSince) { (response, error) in
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
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 25]
 **status** | **String** |  | [optional] 
 **platform** | **String** |  | [optional] 
 **channel** | **String** | Only orders sold through this business channel (e.g. wholesale). | [optional] 
 **details** | **String** | pending &#x3D; only orders whose sale details (price, buyer) have not loaded yet. | [optional] 
 **unlinked** | **String** | 1 or true &#x3D; only orders whose sale is not linked to any listing (an orphan sale). | [optional] 
 **updatedSince** | **Date** | Only orders created or changed at or after this time (ISO 8601): poll with the time of your last call to catch new orders and status/tracking changes. | [optional] 

### Return type

**ListOrdersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listRentalHistory**
```swift
    open class func listRentalHistory(completion: @escaping (_ data: ListRentalHistoryResponse?, _ error: Error?) -> Void)
```

Active rentals and history, filtered by view, status, dates, item or a search.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Active rentals and history, filtered by view, status, dates, item or a search.
OrdersAPI.listRentalHistory() { (response, error) in
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

**ListRentalHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listRentals**
```swift
    open class func listRentals(completion: @escaping (_ data: ListRentalsResponse?, _ error: Error?) -> Void)
```

Rentals of your items, with the ship-to and the outbound label.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Rentals of your items, with the ship-to and the outbound label.
OrdersAPI.listRentals() { (response, error) in
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

**ListRentalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateOrder**
```swift
    open class func updateOrder(id: UUID, completion: @escaping (_ data: UpdateOrderResponse?, _ error: Error?) -> Void)
```

Update order (status, notes, tracking).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Update order (status, notes, tracking).
OrdersAPI.updateOrder(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

**UpdateOrderResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

