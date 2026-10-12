# InventoryAPI

All URIs are relative to *https://crossly.net/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCatalogMatchConfirm**](InventoryAPI.md#createcatalogmatchconfirm) | **POST** /v1/catalog-matches/{id}/confirm | Confirm a catalog-match suggestion: links the item to the catalog product (sets its market_sku_id), so sold comps and market pricing apply to it.
[**createCatalogMatchDismiss**](InventoryAPI.md#createcatalogmatchdismiss) | **POST** /v1/catalog-matches/{id}/dismiss | Dismiss a catalog-match suggestion. That product is never suggested for this item again.
[**createInventory**](InventoryAPI.md#createinventory) | **POST** /v1/inventory | Create a new inventory item.
[**createInventoryBulkArchive**](InventoryAPI.md#createinventorybulkarchive) | **POST** /v1/inventory/bulk-archive | Bulk archive inventory items (soft).
[**createInventoryBulkDelete**](InventoryAPI.md#createinventorybulkdelete) | **POST** /v1/inventory/bulk-delete | Bulk delete inventory items (delinks listings).
[**createInventoryBulkLabel**](InventoryAPI.md#createinventorybulklabel) | **POST** /v1/inventory/bulk-labels | Bulk add/remove labels on inventory items.
[**createInventoryBulkQuantity**](InventoryAPI.md#createinventorybulkquantity) | **POST** /v1/inventory/bulk-quantity | Set / add / subtract stock across many items, syncing live listings.
[**createInventoryCatalogMatchRefresh**](InventoryAPI.md#createinventorycatalogmatchrefresh) | **POST** /v1/inventory/{id}/catalog-matches/refresh | Run catalog matching for one item now. An identifier (UPC, style code, catalogue number) that resolves to exactly one product links it; otherwise likely products are returned as suggestions to confirm.
[**createInventoryCsvExport**](InventoryAPI.md#createinventorycsvexport) | **POST** /v1/inventory/csv/export | Export inventory as CSV. Round-trips back through csv/import.
[**createInventoryCsvImport**](InventoryAPI.md#createinventorycsvimport) | **POST** /v1/inventory/csv/import | Import a CSV. Rows whose sku matches an existing item update it; others are added. Pass dryRun to preview.
[**createInventoryLabelRename**](InventoryAPI.md#createinventorylabelrename) | **POST** /v1/inventory/labels/rename | Rename a label across every inventory item.
[**createInventoryMerge**](InventoryAPI.md#createinventorymerge) | **POST** /v1/inventory/merge | Merge inventory items that are the same physical item into one (stock is not summed).
[**createInventoryUnitIdentifier**](InventoryAPI.md#createinventoryunitidentifier) | **POST** /v1/inventory/{id}/units/identifiers | Record a serial, IMEI, or licence key against an inventory item.
[**createInventoryUnitLookup**](InventoryAPI.md#createinventoryunitlookup) | **POST** /v1/inventory/units/lookup | Find a unit by identifier.
[**createSpatialPropertyDeedLease**](InventoryAPI.md#createspatialpropertydeedlease) | **POST** /v1/spatial/property/deeds/{id}/lease | Offer your plot for lease.
[**createSpatialPropertyDeedList**](InventoryAPI.md#createspatialpropertydeedlist) | **POST** /v1/spatial/property/deeds/{id}/list | List your plot for resale.
[**createSpatialPropertyDeedMaintenance**](InventoryAPI.md#createspatialpropertydeedmaintenance) | **POST** /v1/spatial/property/deeds/{id}/maintenance | Pay a plot&#39;s maintenance forward.
[**createSpatialPropertyLeaseAccept**](InventoryAPI.md#createspatialpropertyleaseaccept) | **POST** /v1/spatial/property/leases/{id}/accept | Take a plot on lease.
[**createSpatialPropertyLeaseEnd**](InventoryAPI.md#createspatialpropertyleaseend) | **POST** /v1/spatial/property/leases/{id}/end | End a lease (owner or tenant).
[**createSpatialPropertyLeaseRent**](InventoryAPI.md#createspatialpropertyleaserent) | **POST** /v1/spatial/property/leases/{id}/rent | Pay rent forward.
[**createSpatialPropertyListingBuy**](InventoryAPI.md#createspatialpropertylistingbuy) | **POST** /v1/spatial/property/listings/{id}/buy | Buy a plot on the resale market, in CBX.
[**createSpatialPropertyListingCancel**](InventoryAPI.md#createspatialpropertylistingcancel) | **POST** /v1/spatial/property/listings/{id}/cancel | Take your plot off the market.
[**createSpatialShopStaffPay**](InventoryAPI.md#createspatialshopstaffpay) | **POST** /v1/spatial/shop/staff/{grantId}/pay | Pay a staff member&#39;s wage forward.
[**createSpatialStreetClaim**](InventoryAPI.md#createspatialstreetclaim) | **POST** /v1/spatial/streets/{slug}/claim | Put your shop on a street.
[**createSpatialStreetOwnedUpkeep**](InventoryAPI.md#createspatialstreetownedupkeep) | **POST** /v1/spatial/streets/owned/{id}/upkeep | Pay a street&#39;s upkeep forward.
[**createSpatialStreetPlotBuy**](InventoryAPI.md#createspatialstreetplotbuy) | **POST** /v1/spatial/streets/{slug}/plots/{number}/buy | Buy a vacant plot from Crossly, in CBX.
[**createSpatialStreetRequest**](InventoryAPI.md#createspatialstreetrequest) | **POST** /v1/spatial/streets/requests | Ask to found a street.
[**createSpatialStreetRequestFound**](InventoryAPI.md#createspatialstreetrequestfound) | **POST** /v1/spatial/streets/requests/{id}/found | Found an approved street, in CBX.
[**deleteInventory**](InventoryAPI.md#deleteinventory) | **DELETE** /v1/inventory/{id} | Soft-archive an inventory item.
[**deleteSpatialStreetPlot**](InventoryAPI.md#deletespatialstreetplot) | **DELETE** /v1/spatial/streets/{slug}/plot | Take your shop off a street.
[**getGameLeaderboard**](InventoryAPI.md#getgameleaderboard) | **GET** /v1/games/leaderboards | Game leaderboards: for each of Price Guess (wins, then points), scavenger hunts (finished) and speed trades (won), the top ten this week (Monday 00:00 UTC on) under week and of all time under all -- rank, name, named, value and, for Price Guess, score. A name appears only for somebody who chose to be seen by name in Crossly World; everyone else is \&quot;A player\&quot; in their place.
[**getHome**](InventoryAPI.md#gethome) | **GET** /v1/homes/{slug} | A home by its address, as you may see it: open homes to anybody, friends-only homes to mutual follows, locked homes to their owner. 404 when you may not enter.
[**getHomeMine**](InventoryAPI.md#gethomemine) | **GET** /v1/homes/mine | Your Crossly World home: its address, privacy (open / friends / locked), theme, the room, the layout (each piece with what it shows -- things you no longer own are left out at read time) and the guestbook. Made on first read.
[**getInventory**](InventoryAPI.md#getinventory) | **GET** /v1/inventory/{id} | Get one inventory item with platform listings.
[**getInventoryAging**](InventoryAPI.md#getinventoryaging) | **GET** /v1/inventory/aging | Unsold stock by age (0-7, 7-30, 30-90, 90+ days, unlisted), each bucket with a recommendation.
[**getInventoryCatalogMatch**](InventoryAPI.md#getinventorycatalogmatch) | **GET** /v1/inventory/{id}/catalog-matches | One inventory item&#39;s catalog binding (if confirmed) and its pending match suggestions.
[**getInventoryFacet**](InventoryAPI.md#getinventoryfacet) | **GET** /v1/inventory/facets | Distinct brands + categories across this user&#39;s inventory.
[**getInventoryLabel**](InventoryAPI.md#getinventorylabel) | **GET** /v1/inventory/labels | List every distinct label across this user&#39;s inventory.
[**getInventoryLabelStat**](InventoryAPI.md#getinventorylabelstat) | **GET** /v1/inventory/labels/stats | List distinct labels with usage counts + colors.
[**getInventorySellThrough**](InventoryAPI.md#getinventorysellthrough) | **GET** /v1/inventory/sell-through | Cohort sell-through for a window (default: the 30 days ending 30 days ago) against the previous window of the same length.
[**getInventorySkuExist**](InventoryAPI.md#getinventoryskuexist) | **GET** /v1/inventory/sku-exists | Check whether a SKU is already in use on this user&#39;s inventory.
[**getInventoryValueHistory**](InventoryAPI.md#getinventoryvaluehistory) | **GET** /v1/inventory/value-history | Portfolio value of unsold stock over time, oldest first (one point per nightly snapshot).
[**getMainStage**](InventoryAPI.md#getmainstage) | **GET** /v1/main-stage | The Crossly World Main Stage right now: the live show (title, kind, host lineup), the stream on its big screen while a lineup host is on air, how many people are there (it holds 64 per copy and opens copies as it fills) and what is on next.
[**getPetMine**](InventoryAPI.md#getpetmine) | **GET** /v1/pets/mine | Your Crossly World pets: every kind (cat, dog, slab bot) with whether you own it, when it was earned and the ways to earn it (a quest or a reputation level -- pets are never sold), plus the pet walking beside you and the one greeting visitors at your shop door.
[**getReputation**](InventoryAPI.md#getreputation) | **GET** /v1/reputation/{profile} | Somebody&#39;s public reputation levels by their storefront handle: the level on each track and their nameplate badge. 404 for an unknown handle.
[**getReputationMine**](InventoryAPI.md#getreputationmine) | **GET** /v1/reputation/mine | Your Crossly World reputation: four tracks (trader, collector, seller, host) with points, level, what each level has unlocked and the next unlock, and how the points were earned (recency-weighted; a lost dispute or a failed authentication costs points). Earned from real activity only; nothing buys a level.
[**getSpatialAddress**](InventoryAPI.md#getspatialaddress) | **GET** /v1/spatial/address/{street}/{number} | The shop at an address.
[**getSpatialAuctionPublic**](InventoryAPI.md#getspatialauctionpublic) | **GET** /v1/spatial/auction/public/{slug} | A shared saleroom, opened by its public share handle.
[**getSpatialAuctionRoom**](InventoryAPI.md#getspatialauctionroom) | **GET** /v1/spatial/auction/rooms/{sceneId} | What the rostrum says in this room, right now.
[**getSpatialEmote**](InventoryAPI.md#getspatialemote) | **GET** /v1/spatial/emotes | Your Crossly World emotes: every emote pack (unlocked or not, with the quest that unlocks it), your 8-slot emote wheel as stored and as it shows (labels, locks, ready dots), and the moments earned and not yet played.
[**getSpatialEmployeeConfig**](InventoryAPI.md#getspatialemployeeconfig) | **GET** /v1/spatial/employee/config | How the shop employee in one of your rooms is configured.
[**getSpatialParty**](InventoryAPI.md#getspatialparty) | **GET** /v1/spatial/party | Your Crossly World party: party is null when you are in none, else its id, leader and up to 8 members (each with the place and copy they are in right now, or null), plus the invites it has out. invites lists the invites waiting for you.
[**getSpatialProperty**](InventoryAPI.md#getspatialproperty) | **GET** /v1/spatial/property | Your plots and tenancies.
[**getSpatialPublic**](InventoryAPI.md#getspatialpublic) | **GET** /v1/spatial/public/{slug} | A shared room, as a visitor sees it.
[**getSpatialScene**](InventoryAPI.md#getspatialscene) | **GET** /v1/spatial/scenes/{id} | A solved room: every item, where it sits, and why.
[**getSpatialSceneWarehouse**](InventoryAPI.md#getspatialscenewarehouse) | **GET** /v1/spatial/scenes/{id}/warehouse | A warehouse room: your racks, where they stand, and what is on each.
[**getSpatialShopStaff**](InventoryAPI.md#getspatialshopstaff) | **GET** /v1/spatial/shop/staff | Your shop&#39;s staff and their wages.
[**getSpatialStreet**](InventoryAPI.md#getspatialstreet) | **GET** /v1/spatial/streets/{slug} | A street: every plot and the shop open on each.
[**getSpatialStreetFounding**](InventoryAPI.md#getspatialstreetfounding) | **GET** /v1/spatial/streets/founding | What founding a street costs.
[**getSpatialStreetPlotQuote**](InventoryAPI.md#getspatialstreetplotquote) | **GET** /v1/spatial/streets/{slug}/plots/{number}/quote | What a plot costs.
[**getWorldRoomFunnel**](InventoryAPI.md#getworldroomfunnel) | **GET** /v1/world/rooms/{sceneId}/funnel | Your room&#39;s funnel over the last &#x60;days&#x60; (1-35, default 30): visitors (people, once a day), looks, items opened, checkouts started from the room, paid sales and revenueCents. Sales count only lines the room itself put in a cart.
[**getWorldShelf**](InventoryAPI.md#getworldshelf) | **GET** /v1/world/shelf/{listingSlug} | Where a Crossly listing sits on a shelf in a public room right now (roomSlug, roomName, itemId), or data:null when it is in no room.
[**getWorldSkusCheapest**](InventoryAPI.md#getworldskuscheapest) | **GET** /v1/world/skus/{skuId}/cheapest | The cheapest copy of a catalogue piece for sale on Crossly now, matched by the catalogue id (listingSlug, priceCents, and the room and item when it stands on a shelf), or data:null.
[**listCatalogMatches**](InventoryAPI.md#listcatalogmatches) | **GET** /v1/catalog-matches | Pending catalog-match suggestions: inventory items that look like a catalog product, awaiting your confirm.
[**listFestivals**](InventoryAPI.md#listfestivals) | **GET** /v1/festivals | Live and upcoming Crossly World festivals, soonest first: a weekend when every street wears one decor and the festival quest line (limited pins) counts. meta.live is the festival on now, if any.
[**listGameBreakUpcoming**](InventoryAPI.md#listgamebreakupcoming) | **GET** /v1/games/breaks/upcoming | Pack breaks staged on shop stages in Crossly World, live first then soonest: the break, its shop, start time, spots (taken or not, buyer masked), hits revealed so far, and buyUrl -- the break&#39;s page on crossly.net, the only place a spot is bought (null once every spot has sold).
[**listGameHunts**](InventoryAPI.md#listgamehunts) | **GET** /v1/games/hunts | Scavenger hunts running now in Crossly World shops and pop-up stalls, ending soonest first: title, shop (name and slug -- for a hunt at a stall, the street slug, with stall.bookingId set), how many tokens, what finishing unlocks (\&quot;10% off\&quot; -- never the code), when it ends and how many people have finished. Optional place filters to one shop or street slug.
[**listGameResultMine**](InventoryAPI.md#listgameresultmine) | **GET** /v1/games/results/mine | Your market-game results, newest first: game (price_guess, price_guess_solo, hunt, speed_trade, break_host), the round/hunt/trade/break id, score, whether you won, Bucks prize in cents (0 while prizes are pins only) and detail. meta.unlocks lists the hunt coupons you earned (with their codes); meta.hits the break hits pulled for spots you bought, with the order each ships with.
[**listHomeMineBuilders**](InventoryAPI.md#listhomeminebuilders) | **GET** /v1/homes/mine/builders | Your co-builders: friends you let rearrange your home in the world (move, turn, take out your things, add free furniture; never your bought pieces). Each: userId, name, friends (false once the friendship ended: listed but powerless).
[**listHomeOfTheWeek**](InventoryAPI.md#listhomeoftheweek) | **GET** /v1/homes/of-the-week | Home of the week: open homes by how many different people signed their guestbook in the last 7 days, most first.
[**listInventory**](InventoryAPI.md#listinventory) | **GET** /v1/inventory | List inventory items.
[**listInventoryActivity**](InventoryAPI.md#listinventoryactivity) | **GET** /v1/inventory/{id}/activity | Activity log for an inventory item (created/sold/edited/etc.).
[**listInventoryIds**](InventoryAPI.md#listinventoryids) | **GET** /v1/inventory/ids | Filter inventory → return matching id list.
[**listInventoryUnits**](InventoryAPI.md#listinventoryunits) | **GET** /v1/inventory/{id}/units | List the individually identified units of an inventory item.
[**listJobAppraisals**](InventoryAPI.md#listjobappraisals) | **GET** /v1/jobs/appraisals | Open price checks appraisers can answer (Collector level 3+ holding 3+ pieces in the category), newest first, optionally one market category. Each has its bounty; meta.payOn says whether bounties are paid yet.
[**listJobShifts**](InventoryAPI.md#listjobshifts) | **GET** /v1/jobs/shifts | Open shifts on the Crossly World Jobs board, soonest first: shop staff shifts in boutiques and grading-desk helper shifts, each with its window, place and pay. meta.payOn says whether Crossly is paying jobs yet.
[**listMainStageEvents**](InventoryAPI.md#listmainstageevents) | **GET** /v1/main-stage/events | Live and upcoming Main Stage events, soonest first: brand launches, creator meetups, talks, live sales and festival shows, each with its window and host lineup.
[**listSpatialAuctionRoomLots**](InventoryAPI.md#listspatialauctionroomlots) | **GET** /v1/spatial/auction/rooms/{sceneId}/lots | The catalogue: every lot in the session this room is hosting.
[**listSpatialAuctionRooms**](InventoryAPI.md#listspatialauctionrooms) | **GET** /v1/spatial/auction/rooms | Rooms of yours that are hosting an auction.
[**listSpatialDeedListings**](InventoryAPI.md#listspatialdeedlistings) | **GET** /v1/spatial/deeds/listings | Plots for resale.
[**listSpatialEmployeeSessions**](InventoryAPI.md#listspatialemployeesessions) | **GET** /v1/spatial/employee/sessions | The itemised bill: one row per customer-conversation.
[**listSpatialEmployeeUsage**](InventoryAPI.md#listspatialemployeeusage) | **GET** /v1/spatial/employee/usage | What your shop employees cost over a period, per room.
[**listSpatialMoments**](InventoryAPI.md#listspatialmoments) | **GET** /v1/spatial/moments | Your moment emotes, newest first: unbox (a Crossly purchase delivered), slab_flip (a card graded through Crossly Grading), handshake (a trade-table shake settled). Each plays once in a room; playedAt is null until then. ready&#x3D;true lists only the unplayed ones.
[**listSpatialPartyWishlist**](InventoryAPI.md#listspatialpartywishlist) | **GET** /v1/spatial/party/wishlist | Your party&#39;s shared wishlist, newest first: each listing (title, price in cents, image, shop slug while it is live), who added it, and every member&#39;s thumb up or down with the totals. Empty when you are in no party.
[**listSpatialPublic**](InventoryAPI.md#listspatialpublic) | **GET** /v1/spatial/public | Public rooms anyone can walk into.
[**listSpatialPublicOffers**](InventoryAPI.md#listspatialpublicoffers) | **GET** /v1/spatial/public/{slug}/offers | What is for sale in a shared room.
[**listSpatialSceneMovements**](InventoryAPI.md#listspatialscenemovements) | **GET** /v1/spatial/scenes/{id}/movements | Stock movements in a room over a time window.
[**listSpatialScenes**](InventoryAPI.md#listspatialscenes) | **GET** /v1/spatial/scenes | The rooms this account has.
[**listSpatialShopAddresses**](InventoryAPI.md#listspatialshopaddresses) | **GET** /v1/spatial/shop/addresses | Your shop&#39;s addresses.
[**listSpatialStaffing**](InventoryAPI.md#listspatialstaffing) | **GET** /v1/spatial/staffing | Shops you work in.
[**listSpatialStreetMine**](InventoryAPI.md#listspatialstreetmine) | **GET** /v1/spatial/streets/mine | Your streets.
[**listSpatialStreets**](InventoryAPI.md#listspatialstreets) | **GET** /v1/spatial/streets | Every street in the world.
[**listWorldBlocks**](InventoryAPI.md#listworldblocks) | **GET** /v1/world/blocks | The people you blocked in Crossly World, as you saw them (label, never the account behind a pseudonym), oldest first. Blocks are made in a room, on the person.
[**listWorldItemSearch**](InventoryAPI.md#listworlditemsearch) | **GET** /v1/world/items/search | Find an item on a shelf anywhere in Crossly World: what public rooms have for sale now, by title or catalogue name (q, 2+ characters). Each hit names the room (roomSlug) and the item (itemId); /c/&lt;roomSlug&gt;?item&#x3D;&lt;itemId&gt; opens it there.
[**listWorldRoomWants**](InventoryAPI.md#listworldroomwants) | **GET** /v1/world/rooms/{sceneId}/wants | Items your room shows but does not sell that visitors said they would buy (\&quot;I&#39;d buy this\&quot;), most wanted first: itemId and how many people.
[**updateInventory**](InventoryAPI.md#updateinventory) | **PATCH** /v1/inventory/{id} | Update an inventory item (partial).
[**updateSpatialEmployeeConfig**](InventoryAPI.md#updatespatialemployeeconfig) | **PUT** /v1/spatial/employee/config | Create or replace the shop employee in one of your rooms.
[**updateSpatialShopStaffWage**](InventoryAPI.md#updatespatialshopstaffwage) | **PUT** /v1/spatial/shop/staff/{grantId}/wage | Set a staff member&#39;s weekly wage.


# **createCatalogMatchConfirm**
```swift
    open class func createCatalogMatchConfirm(id: UUID, completion: @escaping (_ data: CreateCatalogMatchConfirmResponse?, _ error: Error?) -> Void)
```

Confirm a catalog-match suggestion: links the item to the catalog product (sets its market_sku_id), so sold comps and market pricing apply to it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Confirm a catalog-match suggestion: links the item to the catalog product (sets its market_sku_id), so sold comps and market pricing apply to it.
InventoryAPI.createCatalogMatchConfirm(id: id) { (response, error) in
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

**CreateCatalogMatchConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createCatalogMatchDismiss**
```swift
    open class func createCatalogMatchDismiss(id: UUID, completion: @escaping (_ data: CreateCatalogMatchConfirmResponse?, _ error: Error?) -> Void)
```

Dismiss a catalog-match suggestion. That product is never suggested for this item again.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Dismiss a catalog-match suggestion. That product is never suggested for this item again.
InventoryAPI.createCatalogMatchDismiss(id: id) { (response, error) in
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

**CreateCatalogMatchConfirmResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInventory**
```swift
    open class func createInventory(completion: @escaping (_ data: CreateInventoryResponse?, _ error: Error?) -> Void)
```

Create a new inventory item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create a new inventory item.
InventoryAPI.createInventory() { (response, error) in
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

**CreateInventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInventoryBulkArchive**
```swift
    open class func createInventoryBulkArchive(completion: @escaping (_ data: CreateInventoryBulkArchiveResponse?, _ error: Error?) -> Void)
```

Bulk archive inventory items (soft).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk archive inventory items (soft).
InventoryAPI.createInventoryBulkArchive() { (response, error) in
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

**CreateInventoryBulkArchiveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInventoryBulkDelete**
```swift
    open class func createInventoryBulkDelete(completion: @escaping (_ data: CreateInventoryBulkDeleteResponse?, _ error: Error?) -> Void)
```

Bulk delete inventory items (delinks listings).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk delete inventory items (delinks listings).
InventoryAPI.createInventoryBulkDelete() { (response, error) in
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

**CreateInventoryBulkDeleteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInventoryBulkLabel**
```swift
    open class func createInventoryBulkLabel(completion: @escaping (_ data: CreateListingBulkUpdateResponse?, _ error: Error?) -> Void)
```

Bulk add/remove labels on inventory items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Bulk add/remove labels on inventory items.
InventoryAPI.createInventoryBulkLabel() { (response, error) in
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

**CreateListingBulkUpdateResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInventoryBulkQuantity**
```swift
    open class func createInventoryBulkQuantity(completion: @escaping (_ data: CreateInventoryBulkQuantityResponse?, _ error: Error?) -> Void)
```

Set / add / subtract stock across many items, syncing live listings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Set / add / subtract stock across many items, syncing live listings.
InventoryAPI.createInventoryBulkQuantity() { (response, error) in
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

**CreateInventoryBulkQuantityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInventoryCatalogMatchRefresh**
```swift
    open class func createInventoryCatalogMatchRefresh(id: UUID, completion: @escaping (_ data: CreateInventoryCatalogMatchRefreshResponse?, _ error: Error?) -> Void)
```

Run catalog matching for one item now. An identifier (UPC, style code, catalogue number) that resolves to exactly one product links it; otherwise likely products are returned as suggestions to confirm.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Run catalog matching for one item now. An identifier (UPC, style code, catalogue number) that resolves to exactly one product links it; otherwise likely products are returned as suggestions to confirm.
InventoryAPI.createInventoryCatalogMatchRefresh(id: id) { (response, error) in
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

**CreateInventoryCatalogMatchRefreshResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInventoryCsvExport**
```swift
    open class func createInventoryCsvExport(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Export inventory as CSV. Round-trips back through csv/import.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Export inventory as CSV. Round-trips back through csv/import.
InventoryAPI.createInventoryCsvExport() { (response, error) in
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

# **createInventoryCsvImport**
```swift
    open class func createInventoryCsvImport(completion: @escaping (_ data: CreateInventoryCsvImportResponse?, _ error: Error?) -> Void)
```

Import a CSV. Rows whose sku matches an existing item update it; others are added. Pass dryRun to preview.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Import a CSV. Rows whose sku matches an existing item update it; others are added. Pass dryRun to preview.
InventoryAPI.createInventoryCsvImport() { (response, error) in
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

**CreateInventoryCsvImportResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInventoryLabelRename**
```swift
    open class func createInventoryLabelRename(completion: @escaping (_ data: CreateInventoryLabelRenameResponse?, _ error: Error?) -> Void)
```

Rename a label across every inventory item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Rename a label across every inventory item.
InventoryAPI.createInventoryLabelRename() { (response, error) in
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

**CreateInventoryLabelRenameResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInventoryMerge**
```swift
    open class func createInventoryMerge(completion: @escaping (_ data: CreateInventoryMergeResponse?, _ error: Error?) -> Void)
```

Merge inventory items that are the same physical item into one (stock is not summed).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Merge inventory items that are the same physical item into one (stock is not summed).
InventoryAPI.createInventoryMerge() { (response, error) in
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

**CreateInventoryMergeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInventoryUnitIdentifier**
```swift
    open class func createInventoryUnitIdentifier(id: String, completion: @escaping (_ data: CreateInventoryUnitIdentifierResponse?, _ error: Error?) -> Void)
```

Record a serial, IMEI, or licence key against an inventory item.

Creates the unit lazily if no `unitId` is given. Recording BEFORE the item sells is what makes the identifier usable as evidence on a return — one first recorded after a dispute opens is graded `weak` and says so.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Record a serial, IMEI, or licence key against an inventory item.
InventoryAPI.createInventoryUnitIdentifier(id: id) { (response, error) in
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

**CreateInventoryUnitIdentifierResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createInventoryUnitLookup**
```swift
    open class func createInventoryUnitLookup(completion: @escaping (_ data: CreateInventoryUnitLookupResponse?, _ error: Error?) -> Void)
```

Find a unit by identifier.

\"Have I ever seen this serial?\" — for when something arrives back and nobody knows which order it belongs to. Scoped to the caller, so it can never be used to probe another seller's stock.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Find a unit by identifier.
InventoryAPI.createInventoryUnitLookup() { (response, error) in
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

**CreateInventoryUnitLookupResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialPropertyDeedLease**
```swift
    open class func createSpatialPropertyDeedLease(id: String, completion: @escaping (_ data: CreateSpatialPropertyDeedLeaseResponse?, _ error: Error?) -> Void)
```

Offer your plot for lease.

Body `{ rentWeeklyCents }` ($1-$5,000). The plot must be vacant and its maintenance current. Terms freeze when a tenant accepts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Offer your plot for lease.
InventoryAPI.createSpatialPropertyDeedLease(id: id) { (response, error) in
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

**CreateSpatialPropertyDeedLeaseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialPropertyDeedList**
```swift
    open class func createSpatialPropertyDeedList(id: String, completion: @escaping (_ data: CreateSpatialPropertyDeedListResponse?, _ error: Error?) -> Void)
```

List your plot for resale.

Body `{ priceCents }` ($1-$100,000). The deed's maintenance must be current. A lease on it carries on with the buyer.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// List your plot for resale.
InventoryAPI.createSpatialPropertyDeedList(id: id) { (response, error) in
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

**CreateSpatialPropertyDeedListResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialPropertyDeedMaintenance**
```swift
    open class func createSpatialPropertyDeedMaintenance(id: String, completion: @escaping (_ data: CreateSpatialPropertyDeedMaintenanceResponse?, _ error: Error?) -> Void)
```

Pay a plot's maintenance forward.

Body `{ weeks }` (1-12). Extends `paidThrough` from the later of now and the current date.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pay a plot's maintenance forward.
InventoryAPI.createSpatialPropertyDeedMaintenance(id: id) { (response, error) in
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

**CreateSpatialPropertyDeedMaintenanceResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialPropertyLeaseAccept**
```swift
    open class func createSpatialPropertyLeaseAccept(id: String, completion: @escaping (_ data: CreateSpatialPropertyLeaseAcceptResponse?, _ error: Error?) -> Void)
```

Take a plot on lease.

Pays the first week to the owner from your EARNED CBX and moves your (public) shop onto the plot.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Take a plot on lease.
InventoryAPI.createSpatialPropertyLeaseAccept(id: id) { (response, error) in
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

**CreateSpatialPropertyLeaseAcceptResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialPropertyLeaseEnd**
```swift
    open class func createSpatialPropertyLeaseEnd(id: String, completion: @escaping (_ data: CreateSpatialPropertyLeaseEndResponse?, _ error: Error?) -> Void)
```

End a lease (owner or tenant).

The tenant's shop gets a free Main Street address again.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// End a lease (owner or tenant).
InventoryAPI.createSpatialPropertyLeaseEnd(id: id) { (response, error) in
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

**CreateSpatialPropertyLeaseEndResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialPropertyLeaseRent**
```swift
    open class func createSpatialPropertyLeaseRent(id: String, completion: @escaping (_ data: CreateSpatialPropertyLeaseRentResponse?, _ error: Error?) -> Void)
```

Pay rent forward.

Body `{ weeks }` (1-12). While the owner's deed is delinquent rent is WAIVED (`waived: true`), never collected.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Pay rent forward.
InventoryAPI.createSpatialPropertyLeaseRent(id: id) { (response, error) in
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

**CreateSpatialPropertyLeaseRentResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialPropertyListingBuy**
```swift
    open class func createSpatialPropertyListingBuy(id: String, completion: @escaping (_ data: CreateSpatialPropertyListingBuyResponse?, _ error: Error?) -> Void)
```

Buy a plot on the resale market, in CBX.

Pays the asking price from your EARNED CBX to the seller (Crossly takes the 2% skim). The deed, its maintenance clock and any lease pass to you; your shop moves onto the plot if it is vacant. 409 if it has just sold.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Buy a plot on the resale market, in CBX.
InventoryAPI.createSpatialPropertyListingBuy(id: id) { (response, error) in
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

**CreateSpatialPropertyListingBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialPropertyListingCancel**
```swift
    open class func createSpatialPropertyListingCancel(id: String, completion: @escaping (_ data: DeleteWorldJobShiftResponse?, _ error: Error?) -> Void)
```

Take your plot off the market.

Only a listing nobody is buying right now.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Take your plot off the market.
InventoryAPI.createSpatialPropertyListingCancel(id: id) { (response, error) in
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

**DeleteWorldJobShiftResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialShopStaffPay**
```swift
    open class func createSpatialShopStaffPay(grantId: String, completion: @escaping (_ data: CreateSpatialShopStaffPayResponse?, _ error: Error?) -> Void)
```

Pay a staff member's wage forward.

Body `{ weeks }` (1-4). Paid from your EARNED CBX to theirs. 403 while paying staff is not open.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let grantId = "grantId_example" // String | 

// Pay a staff member's wage forward.
InventoryAPI.createSpatialShopStaffPay(grantId: grantId) { (response, error) in
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
 **grantId** | **String** |  | 

### Return type

**CreateSpatialShopStaffPayResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialStreetClaim**
```swift
    open class func createSpatialStreetClaim(slug: String, completion: @escaping (_ data: CreateSpatialStreetClaimResponse?, _ error: Error?) -> Void)
```

Put your shop on a street.

Seats your shop on the lowest vacant plot of an OPEN street and returns its `index` and `address`; calling it again returns the plot you already have. Your shop must be public (400 otherwise). A street that takes shops by application or invitation answers 400; a full street you do not own answers 409. Main Street grows instead of filling.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Put your shop on a street.
InventoryAPI.createSpatialStreetClaim(slug: slug) { (response, error) in
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
 **slug** | **String** |  | 

### Return type

**CreateSpatialStreetClaimResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialStreetOwnedUpkeep**
```swift
    open class func createSpatialStreetOwnedUpkeep(id: UUID, completion: @escaping (_ data: CreateSpatialStreetOwnedUpkeepResponse?, _ error: Error?) -> Void)
```

Pay a street's upkeep forward.

Body `{ weeks }` (1-12). Extends `paidThrough` from the later of now and the current date.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Pay a street's upkeep forward.
InventoryAPI.createSpatialStreetOwnedUpkeep(id: id) { (response, error) in
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

**CreateSpatialStreetOwnedUpkeepResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialStreetPlotBuy**
```swift
    open class func createSpatialStreetPlotBuy(slug: String, number: String, completion: @escaping (_ data: CreateSpatialStreetPlotBuyResponse?, _ error: Error?) -> Void)
```

Buy a vacant plot from Crossly, in CBX.

Pays the quoted price from your EARNED CBX at spot and moves your shop onto the plot. Includes the first weeks of maintenance. 409 if the plot is taken or was just bought; 403 while property is not open.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 
let number = "number_example" // String | 

// Buy a vacant plot from Crossly, in CBX.
InventoryAPI.createSpatialStreetPlotBuy(slug: slug, number: number) { (response, error) in
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
 **slug** | **String** |  | 
 **number** | **String** |  | 

### Return type

**CreateSpatialStreetPlotBuyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialStreetRequest**
```swift
    open class func createSpatialStreetRequest(completion: @escaping (_ data: SpatialStreetResponse?, _ error: Error?) -> Void)
```

Ask to found a street.

Body `{ name, slug?, admission? }`. Free: the name (3-32 letters, numbers, spaces and ' & . -) and its web address (derived from the name when omitted) are held for Crossly's review. Crossly's own streets and room addresses are never available. You need a public shop, and hold one street at most. 409 when the address is taken or you already hold one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Ask to found a street.
InventoryAPI.createSpatialStreetRequest() { (response, error) in
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

**SpatialStreetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **createSpatialStreetRequestFound**
```swift
    open class func createSpatialStreetRequestFound(id: UUID, completion: @escaping (_ data: SpatialStreetResponse?, _ error: Error?) -> Void)
```

Found an approved street, in CBX.

Pays the founding premium from your EARNED CBX at spot and opens the street: its plots exist, the first weeks of upkeep are included, and your shop stands on it. 403 \"CBX opens at mint\" until the token is live; 409 before approval.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Found an approved street, in CBX.
InventoryAPI.createSpatialStreetRequestFound(id: id) { (response, error) in
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

**SpatialStreetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteInventory**
```swift
    open class func deleteInventory(id: UUID, completion: @escaping (_ data: OkResponse?, _ error: Error?) -> Void)
```

Soft-archive an inventory item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Soft-archive an inventory item.
InventoryAPI.deleteInventory(id: id) { (response, error) in
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

**OkResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **deleteSpatialStreetPlot**
```swift
    open class func deleteSpatialStreetPlot(slug: String, completion: @escaping (_ data: CreateWorldCrewLeaveResponse?, _ error: Error?) -> Void)
```

Take your shop off a street.

The plot goes vacant and its address may be taken by another shop. `left: false` when your shop was not on it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// Take your shop off a street.
InventoryAPI.deleteSpatialStreetPlot(slug: slug) { (response, error) in
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
 **slug** | **String** |  | 

### Return type

**CreateWorldCrewLeaveResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getGameLeaderboard**
```swift
    open class func getGameLeaderboard(completion: @escaping (_ data: GetGameLeaderboardResponse?, _ error: Error?) -> Void)
```

Game leaderboards: for each of Price Guess (wins, then points), scavenger hunts (finished) and speed trades (won), the top ten this week (Monday 00:00 UTC on) under week and of all time under all -- rank, name, named, value and, for Price Guess, score. A name appears only for somebody who chose to be seen by name in Crossly World; everyone else is \"A player\" in their place.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Game leaderboards: for each of Price Guess (wins, then points), scavenger hunts (finished) and speed trades (won), the top ten this week (Monday 00:00 UTC on) under week and of all time under all -- rank, name, named, value and, for Price Guess, score. A name appears only for somebody who chose to be seen by name in Crossly World; everyone else is \"A player\" in their place.
InventoryAPI.getGameLeaderboard() { (response, error) in
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

**GetGameLeaderboardResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getHome**
```swift
    open class func getHome(slug: String, completion: @escaping (_ data: GetHomeResponse?, _ error: Error?) -> Void)
```

A home by its address, as you may see it: open homes to anybody, friends-only homes to mutual follows, locked homes to their owner. 404 when you may not enter.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// A home by its address, as you may see it: open homes to anybody, friends-only homes to mutual follows, locked homes to their owner. 404 when you may not enter.
InventoryAPI.getHome(slug: slug) { (response, error) in
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
 **slug** | **String** |  | 

### Return type

**GetHomeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getHomeMine**
```swift
    open class func getHomeMine(completion: @escaping (_ data: GetHomeResponse?, _ error: Error?) -> Void)
```

Your Crossly World home: its address, privacy (open / friends / locked), theme, the room, the layout (each piece with what it shows -- things you no longer own are left out at read time) and the guestbook. Made on first read.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Crossly World home: its address, privacy (open / friends / locked), theme, the room, the layout (each piece with what it shows -- things you no longer own are left out at read time) and the guestbook. Made on first read.
InventoryAPI.getHomeMine() { (response, error) in
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

**GetHomeResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInventory**
```swift
    open class func getInventory(id: UUID, completion: @escaping (_ data: GetInventoryResponse?, _ error: Error?) -> Void)
```

Get one inventory item with platform listings.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Get one inventory item with platform listings.
InventoryAPI.getInventory(id: id) { (response, error) in
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

**GetInventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInventoryAging**
```swift
    open class func getInventoryAging(completion: @escaping (_ data: GetInventoryAgingResponse?, _ error: Error?) -> Void)
```

Unsold stock by age (0-7, 7-30, 30-90, 90+ days, unlisted), each bucket with a recommendation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Unsold stock by age (0-7, 7-30, 30-90, 90+ days, unlisted), each bucket with a recommendation.
InventoryAPI.getInventoryAging() { (response, error) in
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

**GetInventoryAgingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInventoryCatalogMatch**
```swift
    open class func getInventoryCatalogMatch(id: UUID, completion: @escaping (_ data: GetInventoryCatalogMatchResponse?, _ error: Error?) -> Void)
```

One inventory item's catalog binding (if confirmed) and its pending match suggestions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// One inventory item's catalog binding (if confirmed) and its pending match suggestions.
InventoryAPI.getInventoryCatalogMatch(id: id) { (response, error) in
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

**GetInventoryCatalogMatchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInventoryFacet**
```swift
    open class func getInventoryFacet(completion: @escaping (_ data: GetListingFacetResponse?, _ error: Error?) -> Void)
```

Distinct brands + categories across this user's inventory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Distinct brands + categories across this user's inventory.
InventoryAPI.getInventoryFacet() { (response, error) in
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

**GetListingFacetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInventoryLabel**
```swift
    open class func getInventoryLabel(completion: @escaping (_ data: GetInventoryLabelResponse?, _ error: Error?) -> Void)
```

List every distinct label across this user's inventory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List every distinct label across this user's inventory.
InventoryAPI.getInventoryLabel() { (response, error) in
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

**GetInventoryLabelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInventoryLabelStat**
```swift
    open class func getInventoryLabelStat(completion: @escaping (_ data: GetInventoryLabelStatResponse?, _ error: Error?) -> Void)
```

List distinct labels with usage counts + colors.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// List distinct labels with usage counts + colors.
InventoryAPI.getInventoryLabelStat() { (response, error) in
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

**GetInventoryLabelStatResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInventorySellThrough**
```swift
    open class func getInventorySellThrough(completion: @escaping (_ data: GetInventorySellThroughResponse?, _ error: Error?) -> Void)
```

Cohort sell-through for a window (default: the 30 days ending 30 days ago) against the previous window of the same length.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Cohort sell-through for a window (default: the 30 days ending 30 days ago) against the previous window of the same length.
InventoryAPI.getInventorySellThrough() { (response, error) in
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

**GetInventorySellThroughResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInventorySkuExist**
```swift
    open class func getInventorySkuExist(sku: String, completion: @escaping (_ data: GetListingSkuExistResponse?, _ error: Error?) -> Void)
```

Check whether a SKU is already in use on this user's inventory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let sku = "sku_example" // String | 

// Check whether a SKU is already in use on this user's inventory.
InventoryAPI.getInventorySkuExist(sku: sku) { (response, error) in
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
 **sku** | **String** |  | 

### Return type

**GetListingSkuExistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getInventoryValueHistory**
```swift
    open class func getInventoryValueHistory(completion: @escaping (_ data: GetInventoryValueHistoryResponse?, _ error: Error?) -> Void)
```

Portfolio value of unsold stock over time, oldest first (one point per nightly snapshot).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Portfolio value of unsold stock over time, oldest first (one point per nightly snapshot).
InventoryAPI.getInventoryValueHistory() { (response, error) in
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

**GetInventoryValueHistoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getMainStage**
```swift
    open class func getMainStage(completion: @escaping (_ data: GetMainStageResponse?, _ error: Error?) -> Void)
```

The Crossly World Main Stage right now: the live show (title, kind, host lineup), the stream on its big screen while a lineup host is on air, how many people are there (it holds 64 per copy and opens copies as it fills) and what is on next.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The Crossly World Main Stage right now: the live show (title, kind, host lineup), the stream on its big screen while a lineup host is on air, how many people are there (it holds 64 per copy and opens copies as it fills) and what is on next.
InventoryAPI.getMainStage() { (response, error) in
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

**GetMainStageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getPetMine**
```swift
    open class func getPetMine(completion: @escaping (_ data: GetPetMineResponse?, _ error: Error?) -> Void)
```

Your Crossly World pets: every kind (cat, dog, slab bot) with whether you own it, when it was earned and the ways to earn it (a quest or a reputation level -- pets are never sold), plus the pet walking beside you and the one greeting visitors at your shop door.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Crossly World pets: every kind (cat, dog, slab bot) with whether you own it, when it was earned and the ways to earn it (a quest or a reputation level -- pets are never sold), plus the pet walking beside you and the one greeting visitors at your shop door.
InventoryAPI.getPetMine() { (response, error) in
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

**GetPetMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getReputation**
```swift
    open class func getReputation(profile: String, completion: @escaping (_ data: GetReputationResponse?, _ error: Error?) -> Void)
```

Somebody's public reputation levels by their storefront handle: the level on each track and their nameplate badge. 404 for an unknown handle.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let profile = "profile_example" // String | 

// Somebody's public reputation levels by their storefront handle: the level on each track and their nameplate badge. 404 for an unknown handle.
InventoryAPI.getReputation(profile: profile) { (response, error) in
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
 **profile** | **String** |  | 

### Return type

**GetReputationResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getReputationMine**
```swift
    open class func getReputationMine(completion: @escaping (_ data: GetReputationMineResponse?, _ error: Error?) -> Void)
```

Your Crossly World reputation: four tracks (trader, collector, seller, host) with points, level, what each level has unlocked and the next unlock, and how the points were earned (recency-weighted; a lost dispute or a failed authentication costs points). Earned from real activity only; nothing buys a level.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Crossly World reputation: four tracks (trader, collector, seller, host) with points, level, what each level has unlocked and the next unlock, and how the points were earned (recency-weighted; a lost dispute or a failed authentication costs points). Earned from real activity only; nothing buys a level.
InventoryAPI.getReputationMine() { (response, error) in
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

**GetReputationMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialAddress**
```swift
    open class func getSpatialAddress(street: String, number: String, completion: @escaping (_ data: GetSpatialAddressResponse?, _ error: Error?) -> Void)
```

The shop at an address.

Resolves `<street>/<number>` to the shop's `publicSlug` and `name`. 404 when the plot is vacant or its shop is not public.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let street = "street_example" // String | 
let number = "number_example" // String | 

// The shop at an address.
InventoryAPI.getSpatialAddress(street: street, number: number) { (response, error) in
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
 **street** | **String** |  | 
 **number** | **String** |  | 

### Return type

**GetSpatialAddressResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialAuctionPublic**
```swift
    open class func getSpatialAuctionPublic(slug: String, completion: @escaping (_ data: GetSpatialAuctionPublicResponse?, _ error: Error?) -> Void)
```

A shared saleroom, opened by its public share handle.

The bridge between the public room directory and this auction surface: /api/v1/spatial/public hands out SLUGS, while everything else here is keyed by scene id, and the two are deliberately not interchangeable. Resolves `public` rooms ONLY — an `unlisted` room is a bearer link, and crowd-shaped features stay off in those — so a slug that works on /api/v1/spatial/public/{slug} may still answer 404 here. The reply carries the `sceneId` you then pass to the room state, lots and bid endpoints. Same reading rules as the room state: amounts in CENTS, `minimumNextBidCents` rather than your own arithmetic, no reserve amount.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// A shared saleroom, opened by its public share handle.
InventoryAPI.getSpatialAuctionPublic(slug: slug) { (response, error) in
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
 **slug** | **String** |  | 

### Return type

**GetSpatialAuctionPublicResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialAuctionRoom**
```swift
    open class func getSpatialAuctionRoom(sceneId: UUID, completion: @escaping (_ data: GetSpatialAuctionRoomResponse?, _ error: Error?) -> Void)
```

What the rostrum says in this room, right now.

Serves whoever may ENTER the room, not only its owner — a saleroom restricted to the host would leave every visitor polling a 404 while standing in it. `hosting: false` with a null `auction` is a described empty answer, not an error. READ `currentLot.minimumNextBidCents`, never `currentBidCents + bidIncrementCents`: the first bid on a lot is floored at the START price rather than start + step, so deriving it locally raises the entry price on any lot with a real increment. All amounts are CENTS. `reserveMet` says whether the seller's floor has been cleared; the floor ITSELF is never published, because a crowd that can read it bids to it and stops. `serverTime` is this server's clock, handed over so you can age the session without trusting your own — there is no per-lot deadline to report, because a lot closes when a human drops the hammer and not when a timer expires. A room you may not enter answers 404, the same as one that does not exist.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let sceneId = 987 // UUID | 

// What the rostrum says in this room, right now.
InventoryAPI.getSpatialAuctionRoom(sceneId: sceneId) { (response, error) in
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
 **sceneId** | **UUID** |  | 

### Return type

**GetSpatialAuctionRoomResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialEmote**
```swift
    open class func getSpatialEmote(completion: @escaping (_ data: GetSpatialEmoteResponse?, _ error: Error?) -> Void)
```

Your Crossly World emotes: every emote pack (unlocked or not, with the quest that unlocks it), your 8-slot emote wheel as stored and as it shows (labels, locks, ready dots), and the moments earned and not yet played.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Crossly World emotes: every emote pack (unlocked or not, with the quest that unlocks it), your 8-slot emote wheel as stored and as it shows (labels, locks, ready dots), and the moments earned and not yet played.
InventoryAPI.getSpatialEmote() { (response, error) in
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

**GetSpatialEmoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialEmployeeConfig**
```swift
    open class func getSpatialEmployeeConfig(sceneId: UUID, completion: @escaping (_ data: GetSpatialEmployeeConfigResponse?, _ error: Error?) -> Void)
```

How the shop employee in one of your rooms is configured.

Owner-only, and 404 for a room this account does not own — the same answer a room that does not exist gives, so this cannot be used to discover scene ids. `config: null` means the room has never had an employee configured, which is different from one that exists and is switched off (`enabled: false`). THE SIGNING SECRET IS NEVER RETURNED, here or anywhere else. It is encrypted at rest and handed back in plaintext exactly once, in the response to the PUT that minted it; `hasAgentSecret` is the only thing any read path will say about it, and re-reading it is impossible by construction rather than by omission. `suspendedAt` non-null means the employee is off the floor because a charge was refused — `suspendedReason` says which — and saving the config again clears it. `brainKind` is idle (stands there), rules (the list in `rules`, evaluated in order, first match wins) or agent (your own endpoint decides).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let sceneId = 987 // UUID | 

// How the shop employee in one of your rooms is configured.
InventoryAPI.getSpatialEmployeeConfig(sceneId: sceneId) { (response, error) in
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
 **sceneId** | **UUID** |  | 

### Return type

**GetSpatialEmployeeConfigResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialParty**
```swift
    open class func getSpatialParty(completion: @escaping (_ data: GetSpatialPartyResponse?, _ error: Error?) -> Void)
```

Your Crossly World party: party is null when you are in none, else its id, leader and up to 8 members (each with the place and copy they are in right now, or null), plus the invites it has out. invites lists the invites waiting for you.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your Crossly World party: party is null when you are in none, else its id, leader and up to 8 members (each with the place and copy they are in right now, or null), plus the invites it has out. invites lists the invites waiting for you.
InventoryAPI.getSpatialParty() { (response, error) in
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

**GetSpatialPartyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialProperty**
```swift
    open class func getSpatialProperty(completion: @escaping (_ data: GetSpatialPropertyResponse?, _ error: Error?) -> Void)
```

Your plots and tenancies.

Each deed with its address, price, weekly maintenance, `paidThrough`, `status` (active, grace, delinquent — a delinquent owner cannot collect rent; past three weeks late a deed is foreclosed) and any lease; plus the leases you rent as a tenant.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your plots and tenancies.
InventoryAPI.getSpatialProperty() { (response, error) in
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

**GetSpatialPropertyResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialPublic**
```swift
    open class func getSpatialPublic(slug: String, completion: @escaping (_ data: GetSpatialPublicResponse?, _ error: Error?) -> Void)
```

A shared room, as a visitor sees it.

The room behind a share link: container geometry in METRES matching the real physical object, the solved arrangement, and one row per object on the shelves. REDACTED relative to the owner's view — no cost, no storage location, no listing status — so do not expect the fields /v1/spatial/scenes/{id} returns. Each placement carries `pinned`: true means a HUMAN put it there and it will not move; false means a layout SOLVER chose, and it may choose differently once the stock changes, so an unpinned placement is never a statement about where something physically is. `solved.overflow` lists what did not fit — a non-empty array means the room is INCOMPLETE and `stats.itemCount` exceeds what is on screen. Resolves rooms shared as `unlisted` as well as `public`: holding the link is the permission.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// A shared room, as a visitor sees it.
InventoryAPI.getSpatialPublic(slug: slug) { (response, error) in
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
 **slug** | **String** |  | 

### Return type

**GetSpatialPublicResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialScene**
```swift
    open class func getSpatialScene(id: String, completion: @escaping (_ data: GetSpatialSceneResponse?, _ error: Error?) -> Void)
```

A solved room: every item, where it sits, and why.

Returns the space profile (container geometry in METRES, matching the real physical object), the solved placements, and the items. Placements carry a `pinned` flag: true means a human put it there and the layout solver will not move it; false means the solver chose, and it may choose differently once the stock changes. `overflow` lists anything that did not fit — it is reported, never silently dropped.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A solved room: every item, where it sits, and why.
InventoryAPI.getSpatialScene(id: id) { (response, error) in
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

**GetSpatialSceneResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialSceneWarehouse**
```swift
    open class func getSpatialSceneWarehouse(id: String, completion: @escaping (_ data: GetSpatialSceneWarehouseResponse?, _ error: Error?) -> Void)
```

A warehouse room: your racks, where they stand, and what is on each.

For a room of kind `warehouse`. Racks are your own storage units (pallet racks, shelving, garment rails, floor totes) with their location `code` (the one written to each item's storage location when stock is placed), a floor position in METRES, and `capacity` / `stocked` / `fill`. `positioned: false` means you never stood the rack anywhere and it was laid out for you. Each rack lists the items on it with the full code of the level or bin they sit in. A non-warehouse room is a 400.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// A warehouse room: your racks, where they stand, and what is on each.
InventoryAPI.getSpatialSceneWarehouse(id: id) { (response, error) in
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

**GetSpatialSceneWarehouseResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialShopStaff**
```swift
    open class func getSpatialShopStaff(completion: @escaping (_ data: GetSpatialShopStaffResponse?, _ error: Error?) -> Void)
```

Your shop's staff and their wages.

Staff are people holding a `staff` grant on your shop (invite them through the room-sharing flow). They may arrange the shop and move its stock, nothing else. `wageWeeklyCents` is paid by you in CBX; `pending` is an invite not yet accepted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your shop's staff and their wages.
InventoryAPI.getSpatialShopStaff() { (response, error) in
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

**GetSpatialShopStaffResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialStreet**
```swift
    open class func getSpatialStreet(slug: String, completion: @escaping (_ data: GetSpatialStreetResponse?, _ error: Error?) -> Void)
```

A street: every plot and the shop open on each.

Plots in order from the entrance. Each has its `index` (0-based), house `number` (1-based), `address` (`<street>/<number>`, stable for as long as the shop stands there) and `label` (\"12 Main Street\"). `shop` is the open shop's directory entry, or null for a vacant plot; `shuttered: true` is a plot whose shop is not public right now — it keeps its address. `reserved` plots are newcomer plots: occupiable, never sold or leased. Each open shop's plot carries `life`: `soldToday` (the seller's sales today, America/New_York) and `window` (up to three live listings: listingId, slug, title, priceCents, imageUrl). The street carries `life.billboards` (promoted listings, paid per sale, then Crossly house ads) and `life.buskers` (shop owners on it who are live now).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// A street: every plot and the shop open on each.
InventoryAPI.getSpatialStreet(slug: slug) { (response, error) in
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
 **slug** | **String** |  | 

### Return type

**GetSpatialStreetResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialStreetFounding**
```swift
    open class func getSpatialStreetFounding(completion: @escaping (_ data: GetSpatialStreetFoundingResponse?, _ error: Error?) -> Void)
```

What founding a street costs.

The founding premium `priceCents` (paid in CBX at spot, from EARNED balance), weekly upkeep `maintenanceWeeklyCents`, `includedWeeks` of upkeep included, `plots` on a founded street, `maxPerOwner`, the `admissions` an owner may pick (open | apply | invite), `cbx` {open, reason} -- closed until mint -- and, for the token owner, `refusal`: why they cannot ask yet (no public shop, already holding a street), or null.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// What founding a street costs.
InventoryAPI.getSpatialStreetFounding() { (response, error) in
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

**GetSpatialStreetFoundingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getSpatialStreetPlotQuote**
```swift
    open class func getSpatialStreetPlotQuote(slug: String, number: String, completion: @escaping (_ data: GetSpatialStreetPlotQuoteResponse?, _ error: Error?) -> Void)
```

What a plot costs.

Price in CENTS (paid in CBX at spot), weekly maintenance in cents, weeks included with a purchase, and whether it can be bought now. Newcomer plots (1-2) are never sold.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 
let number = "number_example" // String | 

// What a plot costs.
InventoryAPI.getSpatialStreetPlotQuote(slug: slug, number: number) { (response, error) in
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
 **slug** | **String** |  | 
 **number** | **String** |  | 

### Return type

**GetSpatialStreetPlotQuoteResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldRoomFunnel**
```swift
    open class func getWorldRoomFunnel(sceneId: UUID, days: Int? = nil, completion: @escaping (_ data: GetWorldRoomFunnelResponse?, _ error: Error?) -> Void)
```

Your room's funnel over the last `days` (1-35, default 30): visitors (people, once a day), looks, items opened, checkouts started from the room, paid sales and revenueCents. Sales count only lines the room itself put in a cart.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let sceneId = 987 // UUID | 
let days = 987 // Int |  (optional)

// Your room's funnel over the last `days` (1-35, default 30): visitors (people, once a day), looks, items opened, checkouts started from the room, paid sales and revenueCents. Sales count only lines the room itself put in a cart.
InventoryAPI.getWorldRoomFunnel(sceneId: sceneId, days: days) { (response, error) in
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
 **sceneId** | **UUID** |  | 
 **days** | **Int** |  | [optional] 

### Return type

**GetWorldRoomFunnelResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldShelf**
```swift
    open class func getWorldShelf(listingSlug: String, completion: @escaping (_ data: GetWorldShelfResponse?, _ error: Error?) -> Void)
```

Where a Crossly listing sits on a shelf in a public room right now (roomSlug, roomName, itemId), or data:null when it is in no room.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let listingSlug = "listingSlug_example" // String | 

// Where a Crossly listing sits on a shelf in a public room right now (roomSlug, roomName, itemId), or data:null when it is in no room.
InventoryAPI.getWorldShelf(listingSlug: listingSlug) { (response, error) in
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
 **listingSlug** | **String** |  | 

### Return type

**GetWorldShelfResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **getWorldSkusCheapest**
```swift
    open class func getWorldSkusCheapest(skuId: UUID, completion: @escaping (_ data: GetWorldSkusCheapestResponse?, _ error: Error?) -> Void)
```

The cheapest copy of a catalogue piece for sale on Crossly now, matched by the catalogue id (listingSlug, priceCents, and the room and item when it stands on a shelf), or data:null.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let skuId = 987 // UUID | 

// The cheapest copy of a catalogue piece for sale on Crossly now, matched by the catalogue id (listingSlug, priceCents, and the room and item when it stands on a shelf), or data:null.
InventoryAPI.getWorldSkusCheapest(skuId: skuId) { (response, error) in
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
 **skuId** | **UUID** |  | 

### Return type

**GetWorldSkusCheapestResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listCatalogMatches**
```swift
    open class func listCatalogMatches(limit: Int? = nil, before: Date? = nil, completion: @escaping (_ data: ListCatalogMatchesResponse?, _ error: Error?) -> Void)
```

Pending catalog-match suggestions: inventory items that look like a catalog product, awaiting your confirm.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let limit = 987 // Int |  (optional)
let before = Date() // Date | Keyset cursor: createdAt of the last row seen. (optional)

// Pending catalog-match suggestions: inventory items that look like a catalog product, awaiting your confirm.
InventoryAPI.listCatalogMatches(limit: limit, before: before) { (response, error) in
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
 **limit** | **Int** |  | [optional] 
 **before** | **Date** | Keyset cursor: createdAt of the last row seen. | [optional] 

### Return type

**ListCatalogMatchesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listFestivals**
```swift
    open class func listFestivals(completion: @escaping (_ data: ListFestivalsResponse?, _ error: Error?) -> Void)
```

Live and upcoming Crossly World festivals, soonest first: a weekend when every street wears one decor and the festival quest line (limited pins) counts. meta.live is the festival on now, if any.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Live and upcoming Crossly World festivals, soonest first: a weekend when every street wears one decor and the festival quest line (limited pins) counts. meta.live is the festival on now, if any.
InventoryAPI.listFestivals() { (response, error) in
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

**ListFestivalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listGameBreakUpcoming**
```swift
    open class func listGameBreakUpcoming(completion: @escaping (_ data: ListGameBreakUpcomingResponse?, _ error: Error?) -> Void)
```

Pack breaks staged on shop stages in Crossly World, live first then soonest: the break, its shop, start time, spots (taken or not, buyer masked), hits revealed so far, and buyUrl -- the break's page on crossly.net, the only place a spot is bought (null once every spot has sold).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Pack breaks staged on shop stages in Crossly World, live first then soonest: the break, its shop, start time, spots (taken or not, buyer masked), hits revealed so far, and buyUrl -- the break's page on crossly.net, the only place a spot is bought (null once every spot has sold).
InventoryAPI.listGameBreakUpcoming() { (response, error) in
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

**ListGameBreakUpcomingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listGameHunts**
```swift
    open class func listGameHunts(place: String? = nil, completion: @escaping (_ data: ListGameHuntsResponse?, _ error: Error?) -> Void)
```

Scavenger hunts running now in Crossly World shops and pop-up stalls, ending soonest first: title, shop (name and slug -- for a hunt at a stall, the street slug, with stall.bookingId set), how many tokens, what finishing unlocks (\"10% off\" -- never the code), when it ends and how many people have finished. Optional place filters to one shop or street slug.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let place = "place_example" // String |  (optional)

// Scavenger hunts running now in Crossly World shops and pop-up stalls, ending soonest first: title, shop (name and slug -- for a hunt at a stall, the street slug, with stall.bookingId set), how many tokens, what finishing unlocks (\"10% off\" -- never the code), when it ends and how many people have finished. Optional place filters to one shop or street slug.
InventoryAPI.listGameHunts(place: place) { (response, error) in
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
 **place** | **String** |  | [optional] 

### Return type

**ListGameHuntsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listGameResultMine**
```swift
    open class func listGameResultMine(completion: @escaping (_ data: ListGameResultMineResponse?, _ error: Error?) -> Void)
```

Your market-game results, newest first: game (price_guess, price_guess_solo, hunt, speed_trade, break_host), the round/hunt/trade/break id, score, whether you won, Bucks prize in cents (0 while prizes are pins only) and detail. meta.unlocks lists the hunt coupons you earned (with their codes); meta.hits the break hits pulled for spots you bought, with the order each ships with.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your market-game results, newest first: game (price_guess, price_guess_solo, hunt, speed_trade, break_host), the round/hunt/trade/break id, score, whether you won, Bucks prize in cents (0 while prizes are pins only) and detail. meta.unlocks lists the hunt coupons you earned (with their codes); meta.hits the break hits pulled for spots you bought, with the order each ships with.
InventoryAPI.listGameResultMine() { (response, error) in
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

**ListGameResultMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listHomeMineBuilders**
```swift
    open class func listHomeMineBuilders(completion: @escaping (_ data: ListHomeMineBuildersResponse?, _ error: Error?) -> Void)
```

Your co-builders: friends you let rearrange your home in the world (move, turn, take out your things, add free furniture; never your bought pieces). Each: userId, name, friends (false once the friendship ended: listed but powerless).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your co-builders: friends you let rearrange your home in the world (move, turn, take out your things, add free furniture; never your bought pieces). Each: userId, name, friends (false once the friendship ended: listed but powerless).
InventoryAPI.listHomeMineBuilders() { (response, error) in
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

**ListHomeMineBuildersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listHomeOfTheWeek**
```swift
    open class func listHomeOfTheWeek(completion: @escaping (_ data: ListHomeOfTheWeekResponse?, _ error: Error?) -> Void)
```

Home of the week: open homes by how many different people signed their guestbook in the last 7 days, most first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Home of the week: open homes by how many different people signed their guestbook in the last 7 days, most first.
InventoryAPI.listHomeOfTheWeek() { (response, error) in
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

**ListHomeOfTheWeekResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listInventory**
```swift
    open class func listInventory(page: Int? = nil, limit: Int? = nil, search: String? = nil, status: String? = nil, kind: Kind_listInventory? = nil, platforms: String? = nil, platformMode: PlatformMode_listInventory? = nil, completion: @escaping (_ data: ListInventoryResponse?, _ error: Error?) -> Void)
```

List inventory items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 25)
let search = "search_example" // String |  (optional)
let status = "status_example" // String |  (optional)
let kind = "kind_example" // String | Physical goods or Web3 assets (NFTs). Omit for both. (optional)
let platforms = "platforms_example" // String | Comma-separated marketplaces, e.g. \"ebay,vinted\". Items live (an active listing) on any of them. (optional)
let platformMode = "platformMode_example" // String | \"not_listed\" inverts `platforms`: items live on none of them. Default \"listed\". (optional)

// List inventory items.
InventoryAPI.listInventory(page: page, limit: limit, search: search, status: status, kind: kind, platforms: platforms, platformMode: platformMode) { (response, error) in
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
 **search** | **String** |  | [optional] 
 **status** | **String** |  | [optional] 
 **kind** | **String** | Physical goods or Web3 assets (NFTs). Omit for both. | [optional] 
 **platforms** | **String** | Comma-separated marketplaces, e.g. \&quot;ebay,vinted\&quot;. Items live (an active listing) on any of them. | [optional] 
 **platformMode** | **String** | \&quot;not_listed\&quot; inverts &#x60;platforms&#x60;: items live on none of them. Default \&quot;listed\&quot;. | [optional] 

### Return type

**ListInventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listInventoryActivity**
```swift
    open class func listInventoryActivity(id: UUID, limit: Int? = nil, completion: @escaping (_ data: ListInventoryActivityResponse?, _ error: Error?) -> Void)
```

Activity log for an inventory item (created/sold/edited/etc.).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 
let limit = 987 // Int |  (optional) (default to 50)

// Activity log for an inventory item (created/sold/edited/etc.).
InventoryAPI.listInventoryActivity(id: id, limit: limit) { (response, error) in
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
 **limit** | **Int** |  | [optional] [default to 50]

### Return type

**ListInventoryActivityResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listInventoryIds**
```swift
    open class func listInventoryIds(completion: @escaping (_ data: ListListingIdsResponse?, _ error: Error?) -> Void)
```

Filter inventory → return matching id list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Filter inventory → return matching id list.
InventoryAPI.listInventoryIds() { (response, error) in
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

**ListListingIdsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listInventoryUnits**
```swift
    open class func listInventoryUnits(id: String, completion: @escaping (_ data: ListInventoryUnitsResponse?, _ error: Error?) -> Void)
```

List the individually identified units of an inventory item.

Each identifier carries a `strength` describing what it proves: `strong` was recorded before the item sold, `good` at packing, `weak` only after it shipped. The grade is derived from when it was recorded, never from the value itself.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// List the individually identified units of an inventory item.
InventoryAPI.listInventoryUnits(id: id) { (response, error) in
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

**ListInventoryUnitsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listJobAppraisals**
```swift
    open class func listJobAppraisals(category: String? = nil, limit: Int? = nil, completion: @escaping (_ data: ListJobAppraisalsResponse?, _ error: Error?) -> Void)
```

Open price checks appraisers can answer (Collector level 3+ holding 3+ pieces in the category), newest first, optionally one market category. Each has its bounty; meta.payOn says whether bounties are paid yet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let category = "category_example" // String |  (optional)
let limit = 987 // Int |  (optional)

// Open price checks appraisers can answer (Collector level 3+ holding 3+ pieces in the category), newest first, optionally one market category. Each has its bounty; meta.payOn says whether bounties are paid yet.
InventoryAPI.listJobAppraisals(category: category, limit: limit) { (response, error) in
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
 **category** | **String** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

**ListJobAppraisalsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listJobShifts**
```swift
    open class func listJobShifts(limit: Int? = nil, completion: @escaping (_ data: ListJobShiftsResponse?, _ error: Error?) -> Void)
```

Open shifts on the Crossly World Jobs board, soonest first: shop staff shifts in boutiques and grading-desk helper shifts, each with its window, place and pay. meta.payOn says whether Crossly is paying jobs yet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let limit = 987 // Int |  (optional)

// Open shifts on the Crossly World Jobs board, soonest first: shop staff shifts in boutiques and grading-desk helper shifts, each with its window, place and pay. meta.payOn says whether Crossly is paying jobs yet.
InventoryAPI.listJobShifts(limit: limit) { (response, error) in
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
 **limit** | **Int** |  | [optional] 

### Return type

**ListJobShiftsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listMainStageEvents**
```swift
    open class func listMainStageEvents(completion: @escaping (_ data: ListMainStageEventsResponse?, _ error: Error?) -> Void)
```

Live and upcoming Main Stage events, soonest first: brand launches, creator meetups, talks, live sales and festival shows, each with its window and host lineup.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Live and upcoming Main Stage events, soonest first: brand launches, creator meetups, talks, live sales and festival shows, each with its window and host lineup.
InventoryAPI.listMainStageEvents() { (response, error) in
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

**ListMainStageEventsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialAuctionRoomLots**
```swift
    open class func listSpatialAuctionRoomLots(sceneId: UUID, completion: @escaping (_ data: ListSpatialAuctionRoomLotsResponse?, _ error: Error?) -> Void)
```

The catalogue: every lot in the session this room is hosting.

In lot-number order, which is the order the auctioneer reaches them. Each row carries the same fields as the current lot — `minimumNextBidCents` is the figure the bid transaction evaluates against, and every amount is CENTS. A lot with a `hammerAt` has been sold and one with `skipped: true` failed its reserve; neither takes further bids. The reserve AMOUNT is absent by design and `reserveMet` is the only thing said about it. Which lot is UP is not derivable from this list — the auctioneer is the authority and may skip ahead — so take that from the room state endpoint rather than from the lowest open lot number. A room hosting nothing answers an empty list, not a 404: 404 here means the room does not exist or you may not enter it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let sceneId = 987 // UUID | 

// The catalogue: every lot in the session this room is hosting.
InventoryAPI.listSpatialAuctionRoomLots(sceneId: sceneId) { (response, error) in
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
 **sceneId** | **UUID** |  | 

### Return type

**ListSpatialAuctionRoomLotsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialAuctionRooms**
```swift
    open class func listSpatialAuctionRooms(completion: @escaping (_ data: ListSpatialAuctionRoomsResponse?, _ error: Error?) -> Void)
```

Rooms of yours that are hosting an auction.

One row per room you OWN that currently has a live-auction session bound into it, with that session's title, status and schedule joined in so you do not have to fetch each one to find out whether anything is running. Empty is the ordinary answer: hosting nothing is the normal state of every room on the platform. This is deliberately not \"rooms I could bid in\" — that is the public directory at /api/v1/spatial/public, and enumerating every stranger's saleroom here would be a different endpoint wearing this one's name. `topics.auction` is the WebSocket topic the price moves on; `topics.room` is null until the room has been shared.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Rooms of yours that are hosting an auction.
InventoryAPI.listSpatialAuctionRooms() { (response, error) in
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

**ListSpatialAuctionRoomsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialDeedListings**
```swift
    open class func listSpatialDeedListings(completion: @escaping (_ data: ListSpatialDeedListingsResponse?, _ error: Error?) -> Void)
```

Plots for resale.

Live resale listings, cheapest first: address, `priceCents` (paid in CBX at spot), Crossly's `feeCents` (the 2% CBX skim), weekly maintenance, and the deed's `status` and `paidThrough` — a buyer inherits the maintenance clock. `?street=` narrows to one street.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Plots for resale.
InventoryAPI.listSpatialDeedListings() { (response, error) in
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

**ListSpatialDeedListingsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialEmployeeSessions**
```swift
    open class func listSpatialEmployeeSessions(since: String? = nil, until: String? = nil, sceneId: UUID? = nil, unpaidOnly: Bool? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: ListSpatialEmployeeSessionsResponse?, _ error: Error?) -> Void)
```

The itemised bill: one row per customer-conversation.

Newest first, filtered by `since`/`until` (ISO 8601, default 30 days, max 366) and optionally by `sceneId`. `unpaidOnly` narrows to the conversations that settled without payment. This is what makes a usage total checkable by hand: each row carries the interval it was priced from. `engagedMs` is SERVER-measured, from two timestamps this server wrote — no client reports its own duration anywhere in this feature — and it is null, not zero, while the conversation is still running. `settledAt` null with an `endedAt` set means billing has not yet run; `unpaidReason` set means it ran and moved nothing. Base units are STRINGS (64-bit integers). THE CUSTOMER IS NOT NAMED. Billing is per customer, but no row here carries a visitor identity — a bill is an account of what was spent, not a list of who walked in, and publishing the user ids of strangers through a seller API key is a different feature with a different consent question.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let since = "since_example" // String |  (optional)
let until = "until_example" // String |  (optional)
let sceneId = 987 // UUID |  (optional)
let unpaidOnly = true // Bool |  (optional) (default to false)
let page = 987 // Int |  (optional) (default to 1)
let limit = 987 // Int |  (optional) (default to 25)

// The itemised bill: one row per customer-conversation.
InventoryAPI.listSpatialEmployeeSessions(since: since, until: until, sceneId: sceneId, unpaidOnly: unpaidOnly, page: page, limit: limit) { (response, error) in
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
 **since** | **String** |  | [optional] 
 **until** | **String** |  | [optional] 
 **sceneId** | **UUID** |  | [optional] 
 **unpaidOnly** | **Bool** |  | [optional] [default to false]
 **page** | **Int** |  | [optional] [default to 1]
 **limit** | **Int** |  | [optional] [default to 25]

### Return type

**ListSpatialEmployeeSessionsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialEmployeeUsage**
```swift
    open class func listSpatialEmployeeUsage(since: String? = nil, until: String? = nil, sceneId: UUID? = nil, completion: @escaping (_ data: ListSpatialEmployeeUsageResponse?, _ error: Error?) -> Void)
```

What your shop employees cost over a period, per room.

One row per room that had at least one conversation in the window; rooms with none are ABSENT rather than reported as zero. `since`/`until` are ISO 8601 and default to the last 30 days, and a window may span at most 366 days — longer is a 400, not a silently shortened period. Money: `billedCents` is COSM cents that were actually charged, and it is the figure to report. `burnBaseUnits` and `poolBaseUnits` are COSM base units as STRINGS because they are 64-bit integers — half the fee is destroyed and half moves to the employee-tax pool. `openConversations` are running right now: measured, not yet billed, and contributing 0 to every money field until they settle, so a total read mid-conversation is a floor rather than a final figure. `unpaidConversations` were settled WITHOUT payment — the seller was short of COSM or COSM is not live on this deployment — and each of those also suspended the employee in that room; they are not a debt and will never be retried. `meta.totals` is the same window summed in the database, not the sum of the rows. `meta.rate` restates the price so a figure can be checked by hand: billing is per STARTED minute, per CUSTOMER, only while somebody is engaged. An employee standing in an empty shop costs nothing.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let since = "since_example" // String |  (optional)
let until = "until_example" // String |  (optional)
let sceneId = 987 // UUID |  (optional)

// What your shop employees cost over a period, per room.
InventoryAPI.listSpatialEmployeeUsage(since: since, until: until, sceneId: sceneId) { (response, error) in
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
 **since** | **String** |  | [optional] 
 **until** | **String** |  | [optional] 
 **sceneId** | **UUID** |  | [optional] 

### Return type

**ListSpatialEmployeeUsageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialMoments**
```swift
    open class func listSpatialMoments(limit: Int? = nil, ready: Ready_listSpatialMoments? = nil, completion: @escaping (_ data: ListSpatialMomentsResponse?, _ error: Error?) -> Void)
```

Your moment emotes, newest first: unbox (a Crossly purchase delivered), slab_flip (a card graded through Crossly Grading), handshake (a trade-table shake settled). Each plays once in a room; playedAt is null until then. ready=true lists only the unplayed ones.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let limit = 987 // Int |  (optional)
let ready = "ready_example" // String |  (optional)

// Your moment emotes, newest first: unbox (a Crossly purchase delivered), slab_flip (a card graded through Crossly Grading), handshake (a trade-table shake settled). Each plays once in a room; playedAt is null until then. ready=true lists only the unplayed ones.
InventoryAPI.listSpatialMoments(limit: limit, ready: ready) { (response, error) in
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
 **limit** | **Int** |  | [optional] 
 **ready** | **String** |  | [optional] 

### Return type

**ListSpatialMomentsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialPartyWishlist**
```swift
    open class func listSpatialPartyWishlist(completion: @escaping (_ data: CreateWorldPartyWishlistResponse?, _ error: Error?) -> Void)
```

Your party's shared wishlist, newest first: each listing (title, price in cents, image, shop slug while it is live), who added it, and every member's thumb up or down with the totals. Empty when you are in no party.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your party's shared wishlist, newest first: each listing (title, price in cents, image, shop slug while it is live), who added it, and every member's thumb up or down with the totals. Empty when you are in no party.
InventoryAPI.listSpatialPartyWishlist() { (response, error) in
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

**CreateWorldPartyWishlistResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialPublic**
```swift
    open class func listSpatialPublic(completion: @escaping (_ data: ListSpatialPublicResponse?, _ error: Error?) -> Void)
```

Public rooms anyone can walk into.

The directory behind world-hopping. A room becomes public when its owner shares it; this lists those, newest first, with enough to draw a doorway AND enough to choose one — name, slug, category, itemCount, up to four previewImages, forSaleCount, a priceFromCents/priceToCents band and updatedAt. The band is the cheapest and dearest thing for sale in the room, never a quote for one object: /api/public/spatial/{slug}/offers is the authority on that. Fetch the room itself from /api/public/spatial/{slug}. Rooms with no items are omitted: an empty room is not a destination.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Public rooms anyone can walk into.
InventoryAPI.listSpatialPublic() { (response, error) in
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

**ListSpatialPublicResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialPublicOffers**
```swift
    open class func listSpatialPublicOffers(slug: String, completion: @escaping (_ data: ListSpatialPublicOffersResponse?, _ error: Error?) -> Void)
```

What is for sale in a shared room.

Price, stock, condition and grade for everything in the room its owner is actually selling. Correlate to the room by `itemId`, which is the SAME id the scene payload publishes per item — never by title. An item in the room with no row here is not for sale; an empty array means the owner is showing the collection rather than selling it, which is a different answer from a 404 (no such shared room). SEPARATE CALL ON PURPOSE: the room's geometry is stable for minutes, a price is not — it changes whenever the seller edits a listing. Re-read this before quoting, and do not cache a price alongside a cached room. `priceCents` is CENTS. `available` is remaining stock, or null when the listing declares none; null is unknown, not zero. Where an item sits inside more than one active listing, the offer quoted is the one for that item alone rather than a bundle it belongs to.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let slug = "slug_example" // String | 

// What is for sale in a shared room.
InventoryAPI.listSpatialPublicOffers(slug: slug) { (response, error) in
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
 **slug** | **String** |  | 

### Return type

**ListSpatialPublicOffersResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialSceneMovements**
```swift
    open class func listSpatialSceneMovements(id: String, completion: @escaping (_ data: ListSpatialSceneMovementsResponse?, _ error: Error?) -> Void)
```

Stock movements in a room over a time window.

One row per physical transition: which item, from which node, to which node, when, and of what kind (placed/moved/picked/shipped/received/removed). Nodes are referenced by id; the `fromCode`/`toCode` strings are display snapshots of the location code AT THE TIME and are not stable identifiers — correlate on the node ids. `since`/`until` are ISO timestamps, defaulting to the last seven days and clamped to 90. Movements are NOT attributed to individual team members on this surface: a token has no team role, so there is no honest way to decide whether its holder may see who did the work.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = "id_example" // String | 

// Stock movements in a room over a time window.
InventoryAPI.listSpatialSceneMovements(id: id) { (response, error) in
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

**ListSpatialSceneMovementsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialScenes**
```swift
    open class func listSpatialScenes(completion: @escaping (_ data: ListSpatialScenesResponse?, _ error: Error?) -> Void)
```

The rooms this account has.

The seller's ONE shop (kind `shop`, every display in one boutique) and their warehouse. Both are created on first read rather than requiring setup, so this call is safe to treat as the entry point. Older per-category rooms may also be listed as kind `collection`; they are no longer created or shown to visitors.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The rooms this account has.
InventoryAPI.listSpatialScenes() { (response, error) in
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

**ListSpatialScenesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialShopAddresses**
```swift
    open class func listSpatialShopAddresses(completion: @escaping (_ data: ListSpatialShopAddressesResponse?, _ error: Error?) -> Void)
```

Your shop's addresses.

One per street your shop stands on, Main Street first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your shop's addresses.
InventoryAPI.listSpatialShopAddresses() { (response, error) in
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

**ListSpatialShopAddressesResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialStaffing**
```swift
    open class func listSpatialStaffing(completion: @escaping (_ data: ListSpatialStaffingResponse?, _ error: Error?) -> Void)
```

Shops you work in.

Each shop you hold a live staff grant on, with your wage.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Shops you work in.
InventoryAPI.listSpatialStaffing() { (response, error) in
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

**ListSpatialStaffingResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialStreetMine**
```swift
    open class func listSpatialStreetMine(completion: @escaping (_ data: ListSpatialStreetMineResponse?, _ error: Error?) -> Void)
```

Your streets.

Streets you hold or asked to found, newest first: `status` (pending review, approved, founding, active, dormant, rejected, released), `upkeep` (active, grace, delinquent -- a delinquent owner collects no stall rent; three weeks late the street is foreclosed and closed), `paidThrough`, `admission`, `occupied` of `plotCount`, `pendingApplications`, and Crossly's `reviewNote`.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Your streets.
InventoryAPI.listSpatialStreetMine() { (response, error) in
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

**ListSpatialStreetMineResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listSpatialStreets**
```swift
    open class func listSpatialStreets(completion: @escaping (_ data: ListSpatialStreetsResponse?, _ error: Error?) -> Void)
```

Every street in the world.

Active streets with `plotCount` and how many plots are `occupied`. `platform: true` is Crossly's own street (Main Street), where every public shop has a plot.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Every street in the world.
InventoryAPI.listSpatialStreets() { (response, error) in
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

**ListSpatialStreetsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldBlocks**
```swift
    open class func listWorldBlocks(completion: @escaping (_ data: ListWorldBlocksResponse?, _ error: Error?) -> Void)
```

The people you blocked in Crossly World, as you saw them (label, never the account behind a pseudonym), oldest first. Blocks are made in a room, on the person.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// The people you blocked in Crossly World, as you saw them (label, never the account behind a pseudonym), oldest first. Blocks are made in a room, on the person.
InventoryAPI.listWorldBlocks() { (response, error) in
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

**ListWorldBlocksResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldItemSearch**
```swift
    open class func listWorldItemSearch(q: String? = nil, completion: @escaping (_ data: ListWorldItemSearchResponse?, _ error: Error?) -> Void)
```

Find an item on a shelf anywhere in Crossly World: what public rooms have for sale now, by title or catalogue name (q, 2+ characters). Each hit names the room (roomSlug) and the item (itemId); /c/<roomSlug>?item=<itemId> opens it there.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let q = "q_example" // String |  (optional)

// Find an item on a shelf anywhere in Crossly World: what public rooms have for sale now, by title or catalogue name (q, 2+ characters). Each hit names the room (roomSlug) and the item (itemId); /c/<roomSlug>?item=<itemId> opens it there.
InventoryAPI.listWorldItemSearch(q: q) { (response, error) in
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
 **q** | **String** |  | [optional] 

### Return type

**ListWorldItemSearchResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **listWorldRoomWants**
```swift
    open class func listWorldRoomWants(sceneId: UUID, completion: @escaping (_ data: ListWorldRoomWantsResponse?, _ error: Error?) -> Void)
```

Items your room shows but does not sell that visitors said they would buy (\"I'd buy this\"), most wanted first: itemId and how many people.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let sceneId = 987 // UUID | 

// Items your room shows but does not sell that visitors said they would buy (\"I'd buy this\"), most wanted first: itemId and how many people.
InventoryAPI.listWorldRoomWants(sceneId: sceneId) { (response, error) in
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
 **sceneId** | **UUID** |  | 

### Return type

**ListWorldRoomWantsResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateInventory**
```swift
    open class func updateInventory(id: UUID, completion: @escaping (_ data: CreateInventoryResponse?, _ error: Error?) -> Void)
```

Update an inventory item (partial).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let id = 987 // UUID | 

// Update an inventory item (partial).
InventoryAPI.updateInventory(id: id) { (response, error) in
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

**CreateInventoryResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSpatialEmployeeConfig**
```swift
    open class func updateSpatialEmployeeConfig(completion: @escaping (_ data: UpdateSpatialEmployeeConfigResponse?, _ error: Error?) -> Void)
```

Create or replace the shop employee in one of your rooms.

A full replace, not a patch: every field is written from this body, so read GET /api/v1/spatial/employee/config first and send it back changed. Owner-only — a room this account does not own answers 404, the same as one that does not exist. `brainKind` is idle (stands there), rules (`rules` evaluated in order, first match wins, max 12) or agent (your endpoint decides, and an endpoint URL is then required). A rule is `{ when, afterSeconds?, do: { act, line?, offerId?, itemId? } }`; `when` and `do.act` must come from the published vocabularies and anything else is a 400. NOTHING IN A RULE CARRIES A PRICE — `do.offerId` is a key into your own offers and the server prices it, so an employee can propose a discount it cannot grant. `displayName` and `do.line` must be printable ASCII: they are drawn in the room from a fixed glyph atlas and anything else renders as a floating box, so they are refused rather than silently rewritten. `agentEndpointUrl` is resolved and validated before it is stored — a public-looking hostname that answers with a private address is refused here rather than accepted and then never called. THE SIGNING SECRET IS RETURNED AT MOST ONCE, in the response that MINTS it: when you pass `rotateSecret: true`, or when you set an agent endpoint on a room that had no secret. Store it then — there is no read path that will ever return it again, and `hasAgentSecret` is all any GET will say. Send an Idempotency-Key if you might retry a rotation: without one, a retried rotate mints a SECOND secret and invalidates the one you just received. Saving anything also CLEARS a suspension — if the employee was paused for want of COSM it is back on the floor, and will be paused again by the next refused charge. Note what this endpoint cannot do: it cannot start a conversation. Engagements are emitted by the room as it is drawn, and they are what costs money.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly


// Create or replace the shop employee in one of your rooms.
InventoryAPI.updateSpatialEmployeeConfig() { (response, error) in
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

**UpdateSpatialEmployeeConfigResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

# **updateSpatialShopStaffWage**
```swift
    open class func updateSpatialShopStaffWage(grantId: String, completion: @escaping (_ data: UpdateSpatialShopStaffWageResponse?, _ error: Error?) -> Void)
```

Set a staff member's weekly wage.

Body `{ wageWeeklyCents }` ($1-$2,000), or null to clear it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Crossly

let grantId = "grantId_example" // String | 

// Set a staff member's weekly wage.
InventoryAPI.updateSpatialShopStaffWage(grantId: grantId) { (response, error) in
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
 **grantId** | **String** |  | 

### Return type

**UpdateSpatialShopStaffWageResponse**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

